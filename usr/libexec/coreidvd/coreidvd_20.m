uint64_t sub_1001F2FE0()
{
  sub_10000B90C(v0[360], v0[361]);
  sub_10000BB78(v0 + 104);
  v1 = v0[363];
  v2 = v0[212];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "(Non terminal error): Failed to store PII hash on watch with error: %@", v5, 0xCu);
    sub_10000BE18(v6, &unk_100833B50, &unk_1006D8FB0);
  }

  v25 = v0[351];
  v26 = v0[352];
  v27 = v0[339];
  v8 = v0[253];
  v9 = v0[237];
  v10 = v0[212];
  v11 = v0[210];
  v24 = v0[232];
  v12 = v0[209];
  v13 = v0[208];
  v14 = v0[207];
  v15 = v3;
  v16 = v0[162];
  v22 = v0[163];
  v23 = v0[161];

  v9(v10, v11);
  (*(v13 + 104))(v12, enum case for DIPError.Code.internalError(_:), v14);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v16 + 16))(v17, v22, v23);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  sub_10000B90C(v25, v26);

  v9(v24, v11);
  (*(v16 + 8))(v22, v23);

  v18 = *(*(v0[160] + 120) + 128);
  v0[364] = v18;
  v19 = async function pointer to OS_dispatch_group.wait()[1];
  v18;
  v20 = swift_task_alloc();
  v0[365] = v20;
  *v20 = v0;
  v20[1] = sub_1001EE834;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001F3388()
{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1592);
  v5 = *(v0 + 1584);
  v6 = *(v0 + 1576);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1512);
  v9 = *(v0 + 1240);

  sub_10000BE18(v7, &qword_100835E40, &qword_1006C49F8);
  (*(v5 + 8))(v4, v6);
  sub_10021EA28(v8, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();
  v74 = *(v0 + 3008);
  v10 = *(v0 + 1888);
  v11 = *(v0 + 1880);
  v12 = *(v0 + 1872);
  v13 = *(v0 + 1864);
  v14 = *(v0 + 1856);
  v15 = *(v0 + 1848);
  v16 = *(v0 + 1840);
  v17 = *(v0 + 1832);
  v18 = *(v0 + 1824);
  v19 = *(v0 + 1816);
  v22 = *(v0 + 1808);
  v23 = *(v0 + 1800);
  v24 = *(v0 + 1792);
  v25 = *(v0 + 1784);
  v26 = *(v0 + 1776);
  v27 = *(v0 + 1768);
  v28 = *(v0 + 1760);
  v29 = *(v0 + 1752);
  v30 = *(v0 + 1744);
  v31 = *(v0 + 1736);
  v32 = *(v0 + 1728);
  v33 = *(v0 + 1720);
  v34 = *(v0 + 1712);
  v35 = *(v0 + 1704);
  v36 = *(v0 + 1696);
  v37 = *(v0 + 1672);
  v38 = *(v0 + 1648);
  v39 = *(v0 + 1640);
  v40 = *(v0 + 1632);
  v41 = *(v0 + 1624);
  v42 = *(v0 + 1600);
  v43 = *(v0 + 1592);
  v44 = *(v0 + 1568);
  v45 = *(v0 + 1560);
  v46 = *(v0 + 1552);
  v47 = *(v0 + 1544);
  v48 = *(v0 + 1536);
  v49 = *(v0 + 1528);
  v50 = *(v0 + 1520);
  v51 = *(v0 + 1512);
  v52 = *(v0 + 1504);
  v53 = *(v0 + 1480);
  v54 = *(v0 + 1472);
  v55 = *(v0 + 1464);
  v56 = *(v0 + 1456);
  v57 = *(v0 + 1448);
  v58 = *(v0 + 1440);
  v59 = *(v0 + 1432);
  v60 = *(v0 + 1424);
  v61 = *(v0 + 1416);
  v62 = *(v0 + 1408);
  v63 = *(v0 + 1400);
  v64 = *(v0 + 1392);
  v65 = *(v0 + 1384);
  v66 = *(v0 + 1376);
  v67 = *(v0 + 1368);
  v68 = *(v0 + 1344);
  v69 = *(v0 + 1336);
  v70 = *(v0 + 1328);
  v71 = *(v0 + 1320);
  v72 = *(v0 + 1312);
  v73 = *(v0 + 1304);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001F3808()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000069, 0x8000000100706280, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s end", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1001F3C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v9 = *(v8 + 64) + 15;
  v6[26] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v12 = *(v11 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v13 = type metadata accessor for Milestone();
  v6[33] = v13;
  v14 = *(v13 - 8);
  v6[34] = v14;
  v15 = *(v14 + 64) + 15;
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_1001F3E14, 0, 0);
}

uint64_t sub_1001F3E14()
{
  v1 = *(v0 + 144);
  *(v0 + 288) = IdentityProofingConfiguration.accountKeyIdentifier.getter();
  *(v0 + 296) = v2;
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = IdentityProofingConfiguration.accountKeyIdentifier.getter();
    v6 = v5;
    type metadata accessor for DIPAccountManager();
    static DIPAccountManager.sharedInstance.getter();
    type metadata accessor for IdentityProofingDeviceMigrationManager();
    inited = swift_initStackObject();
    *(v0 + 304) = inited;
    inited[2] = 0;
    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v8 = qword_100882228;
    *(v0 + 312) = qword_100882228;
    v9 = *(v8 + 16);
    inited[3] = v9;
    inited[4] = v4;
    inited[5] = v6;
    sub_10001F358((v0 + 104), (inited + 6));
    v10 = v9;
    v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v12 = swift_task_alloc();
    *(v0 + 320) = v12;
    *v12 = v0;
    v12[1] = sub_1001F40BC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 464, 0, 0, 0xD00000000000001FLL, 0x8000000100703A20, sub_100189A00, inited, &type metadata for Bool);
  }

  else
  {
    v13 = *(v0 + 232);
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 216);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "accountKeyIdentifier doesn't exist. Will not generate AccountKAK based authorizations", v20, 2u);
    }

    (*(v18 + 8))(v17, v19);
    v21 = *(v0 + 280);
    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    v26 = *(v0 + 208);

    v27 = *(v0 + 8);

    return v27(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001F40BC()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 296);

    v5 = sub_1001F43B0;
  }

  else
  {
    v5 = sub_1001F41D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001F41D8()
{
  if (*(v0 + 464) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 336) = v1;
    *v1 = v0;
    v1[1] = sub_1001F4460;
    v2 = *(v0 + 304);

    return sub_100188990();
  }

  else
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 240);

    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "isAccountKeySigningKeyAvailable -> False. Will not generate AccountKAK based authorizations", v8, 2u);
    }

    v9 = *(v0 + 304);
    v10 = *(v0 + 240);
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);

    (*(v12 + 8))(v10, v11);

    v13 = *(v0 + 280);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 232);
    v16 = *(v0 + 240);
    v18 = *(v0 + 208);

    v19 = *(v0 + 8);

    return v19(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001F43B0()
{
  v1 = v0[38];

  v2 = v0[41];
  v3 = v0[35];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001F4460(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v8 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = v3[37];

    v6 = sub_1001F5204;
  }

  else
  {
    v6 = sub_1001F457C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001F457C()
{
  object = v0[21]._object;
  countAndFlagsBits = v0[17]._countAndFlagsBits;
  v2 = v0[17]._object;
  v4 = v0[16]._object;
  static DeviceMigrationMilestone.accountKAKRetrieved.getter();
  Milestone.log()();
  (*(countAndFlagsBits + 8))(v2, v4);
  v5 = [object casdAttestation];
  if (!v5)
  {
    v22 = v0[21]._object;
    v23 = v0[18]._object;
    v24 = v0[19]._countAndFlagsBits;
    v26 = v0[12]._object;
    v25 = v0[13]._countAndFlagsBits;
    v27 = v0[12]._countAndFlagsBits;

    v26[13](v25, enum case for DIPError.Code.invalidAccountKeySigningKey(_:), v27);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_5:

    goto LABEL_6;
  }

  v6 = v0[21]._object;
  v7 = v0[22]._countAndFlagsBits;
  v8 = v0[11]._object;
  v9 = v0[9]._object;
  v10 = v5;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = Data.base64EncodedString(options:)(0);
  sub_10000B90C(v11, v13);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v15 = swift_allocObject();
  v0[22]._object = v15;
  *(v15 + 16) = xmmword_1006BF520;
  *(v15 + 32) = v14;
  v16 = v8[9];

  v17 = sub_1002ABFE0(v6, v9);
  v0[23]._countAndFlagsBits = v17;
  v0[23]._object = v18;
  if (v7)
  {
    v19 = v0[21]._object;
    v21 = v0[18]._object;
    v20 = v0[19]._countAndFlagsBits;

LABEL_6:
    v28 = v0[17]._object;
    v30 = v0[15]._object;
    v29 = v0[16]._countAndFlagsBits;
    v32 = v0[14]._object;
    v31 = v0[15]._countAndFlagsBits;
    v33 = v0[13]._countAndFlagsBits;

    v34 = v0->_object;

    return v34();
  }

  v36 = v17;
  v37 = v18;
  v38 = v0[16]._countAndFlagsBits;
  v39 = v0[9]._object;

  v0[24] = Data.base64EncodedString(options:)(0);
  v0[25]._countAndFlagsBits = v39[5];

  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;

    _os_log_impl(&_mh_execute_header, v40, v41, "Proofing Key signing account key signing key authorization generated", v42, 2u);
  }

  else
  {
  }

  v43 = v0[16]._countAndFlagsBits;
  v45 = v0[13]._object;
  v44 = v0[14]._countAndFlagsBits;
  v46 = v0[10]._object;

  v47 = *(v44 + 8);
  v0[25]._object = v47;
  v47(v43, v45);
  if (!v46)
  {
    v56 = v0[21]._object;
    v57 = v0[18]._object;
    v61 = v0[19]._countAndFlagsBits;
    v58 = v0[12]._object;
    v59 = v0[13]._countAndFlagsBits;
    v60 = v0[12]._countAndFlagsBits;
    swift_bridgeObjectRelease_n();

    v58[13](v59, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v60);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v36, v37);

    goto LABEL_5;
  }

  v48 = v0[19]._object;
  v49 = v0[18]._object;
  v50 = v0[10]._object;
  v0[26]._countAndFlagsBits = v8[9];
  v51 = v48[2];
  v0[26]._object = v51;

  v52 = v51;
  v53 = swift_task_alloc();
  v0[27]._countAndFlagsBits = v53;
  *v53 = v0;
  v53[1] = sub_1001F4B78;
  v54 = v0[18]._countAndFlagsBits;
  v55 = v0[10]._countAndFlagsBits;

  return sub_1002AC6F0(v55, v50, v54, v49, v52);
}

uint64_t sub_1001F4B78(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 432);
  v7 = *v3;
  v5[55] = a1;
  v5[56] = a2;
  v5[57] = v2;

  v8 = v4[53];
  v9 = v4[52];
  if (v2)
  {
    v11 = v5[49];
    v10 = v5[50];
    v12 = v5[45];
    v13 = v5[37];
    swift_bridgeObjectRelease_n();

    v14 = sub_1001F5140;
  }

  else
  {
    v15 = v5[37];

    v14 = sub_1001F4D20;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_1001F4D20()
{
  v1 = v0[22];
  v3 = v0[55];
  v2 = v0[56];
  if (v1)
  {
    v4 = v0[31];
    v5 = v0[55];
    v6 = v0[56];
    v7 = Data.base64EncodedString(options:)(0);

    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Account Key signing key signing device key signing key authorization generated", v10, 2u);
    }

    v11 = v0[51];
    v12 = v0[48];
    v42 = v0[49];
    v43 = v0[50];
    v46 = v0[47];
    v47 = v0[56];
    v44 = v0[46];
    v45 = v0[55];
    v13 = v0[45];
    v48 = v0[43];
    v14 = v0[38];
    v15 = v0[31];
    v16 = v0[27];
    v17 = v0[28];

    v11(v15, v16);
    sub_100007224(&qword_10083DC20, &qword_1006DB730);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006BF740;
    *(v18 + 32) = v12;
    *(v18 + 40) = v42;
    *(v18 + 48) = v13;
    *(v18 + 56) = v43;
    *(v18 + 64) = v7;
    *(v18 + 80) = v1;
    *(v18 + 88) = v13;
    sub_10000B90C(v45, v47);
    sub_10000B90C(v44, v46);

    swift_setDeallocating();
    v19 = *(v14 + 40);

    sub_10000BB78((v14 + 48));
    v20 = v0[35];
    v22 = v0[31];
    v21 = v0[32];
    v24 = v0[29];
    v23 = v0[30];
    v25 = v0[26];

    v26 = v0[1];

    return v26(v18);
  }

  else
  {
    v29 = v0[49];
    v28 = v0[50];
    v30 = v0[46];
    v31 = v0[45];
    v49 = v0[47];
    v50 = v0[43];
    v51 = v0[38];
    v33 = v0[25];
    v32 = v0[26];
    v34 = v0[24];
    swift_bridgeObjectRelease_n();

    (*(v33 + 104))(v32, enum case for DIPError.Code.invalidDeviceKeySigningKeyAttestation(_:), v34);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v3, v2);
    sub_10000B90C(v30, v49);

    v35 = v0[35];
    v36 = v0[31];
    v37 = v0[32];
    v39 = v0[29];
    v38 = v0[30];
    v40 = v0[26];

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_1001F5140()
{
  v1 = v0[43];
  v2 = v0[38];
  sub_10000B90C(v0[46], v0[47]);

  v3 = v0[57];
  v4 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001F5204()
{
  v1 = v0[38];

  v2 = v0[44];
  v3 = v0[35];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001F52B4(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();
  v10 = type metadata accessor for PDF417Data();
  v3[32] = v10;
  v11 = *(v10 - 8);
  v3[33] = v11;
  v12 = *(v11 + 64) + 15;
  v3[34] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_10083D6A8, &qword_1006DB710) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v14 = *(*(sub_100007224(&qword_10083D6A0, &unk_1006DB700) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v15 = type metadata accessor for PDF417ParsedData();
  v3[38] = v15;
  v16 = *(v15 - 8);
  v3[39] = v16;
  v17 = *(v16 + 64) + 15;
  v3[40] = swift_task_alloc();
  v18 = *(*(sub_100007224(&qword_10083DC10, &qword_1006DB718) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v19 = *(*(sub_100007224(&qword_10083DC18, &unk_1006DB720) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v20 = type metadata accessor for ProofingSession();
  v3[44] = v20;
  v21 = *(v20 - 8);
  v3[45] = v21;
  v22 = *(v21 + 64) + 15;
  v3[46] = swift_task_alloc();
  v23 = type metadata accessor for Logger();
  v3[47] = v23;
  v24 = *(v23 - 8);
  v3[48] = v24;
  v25 = *(v24 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return _swift_task_switch(sub_1001F566C, 0, 0);
}

uint64_t sub_1001F566C()
{
  v1 = v0[53];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "saveBiomeMetadata called", v4, 2u);
  }

  v5 = v0[53];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[25];

  v9 = *(v7 + 8);
  v0[54] = v9;
  v9(v5, v6);
  v10 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments;
  v0[55] = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments;
  v11 = *(v8 + v10);
  v0[56] = v11;
  if (v11)
  {
    v0[57] = *(v0[25] + 56);
    v12 = v11;

    v13 = swift_task_alloc();
    v0[58] = v13;
    *v13 = v0;
    v13[1] = sub_1001F5AB4;
    v14 = v0[43];
    v15 = v0[23];

    return sub_1002D7508(v14, v15);
  }

  else
  {
    v17 = v0[49];
    v33 = v0[48];
    v35 = v0[47];
    v18 = v0[33];
    v37 = v0[35];
    v39 = v0[32];
    v41 = v0[25];
    (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.missingProofingDocuments(_:), v0[26]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v17, v35);

    v19 = *(v8 + v10);
    *(v8 + v10) = 0;

    (*(v18 + 56))(v37, 1, 1, v39);
    v20 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
    swift_beginAccess();
    sub_1000B2764(v37, v41 + v20, &qword_10083D6A8, &qword_1006DB710);
    swift_endAccess();
    v22 = v0[52];
    v21 = v0[53];
    v24 = v0[50];
    v23 = v0[51];
    v25 = v0[49];
    v26 = v0[46];
    v28 = v0[42];
    v27 = v0[43];
    v29 = v0[40];
    v30 = v0[41];
    v32 = v0[37];
    v34 = v0[36];
    v36 = v0[35];
    v38 = v0[34];
    v40 = v0[31];
    v42 = v0[28];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1001F5AB4()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v4 = *v0;

  return _swift_task_switch(sub_1001F5BCC, 0, 0);
}

unint64_t sub_1001F5BCC()
{
  v186 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[46], v3, v1);
    v16 = ProofingSession.proofingSessionID.getter();
    v0[59] = v17;
    if (!v17)
    {
      v191 = (v0 + 8);
      v33 = v0[49];
      v145 = v0[48];
      v148 = v0[47];
      v152 = v0[56];
      v34 = v0[45];
      v165 = v0[46];
      v171 = v0[55];
      v156 = v0[44];
      v160 = v0[54];
      v35 = v0[33];
      v176 = v0[35];
      v182 = v0[32];
      v36 = v0[25];
      (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.proofingSessionDoesntExist(_:), v0[26]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v160(v33, v148);
      (*(v34 + 8))(v165, v156);

      v37 = *(v36 + v171);
      *(v36 + v171) = 0;

      (*(v35 + 56))(v176, 1, 1, v182);
      v38 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
      swift_beginAccess();
      v14 = v36 + v38;
      v15 = v176;
      goto LABEL_33;
    }

    v18 = v17;
    v19 = v0[25];
    v21 = *(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
    v20 = *(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
    v0[60] = v20;
    v22 = v0[56];
    if (!v20)
    {
      v191 = (v0 + 11);
      v39 = v0[49];
      v149 = v0[48];
      v153 = v0[47];
      v40 = v0[45];
      v166 = v0[46];
      v172 = v0[55];
      v157 = v0[44];
      v161 = v0[54];
      v41 = v0[33];
      v177 = v0[35];
      v183 = v0[32];
      v42 = v0[27];
      v43 = v0[28];
      v44 = v0[26];

      (*(v42 + 104))(v43, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v44);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v161(v39, v153);
      (*(v40 + 8))(v166, v157);

      v45 = *(v19 + v172);
      *(v19 + v172) = 0;

      v46 = v177;
      (*(v41 + 56))(v177, 1, 1, v183);
      v47 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
      swift_beginAccess();
      v14 = v19 + v47;
LABEL_32:
      v15 = v46;
      goto LABEL_33;
    }

    v23 = v16;

    v24 = IdentityProofingDocuments.selfie.getter();
    v181 = v20;
    v170 = v21;
    if (v24)
    {
      v25 = v24;
      v26 = IdentityDocument.imageMetrics.getter();

      if (v26)
      {
        v27 = IdentityImageQualityMetrics.captureMetrics.getter();

        if (v27 >> 62)
        {
          v28 = _CocoaArrayWrapper.endIndex.getter();
          if (v28)
          {
LABEL_9:
            v29 = __OFSUB__(v28, 1);
            result = v28 - 1;
            if (v29)
            {
              __break(1u);
            }

            else if ((v27 & 0xC000000000000001) == 0)
            {
              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (result < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v31 = *(v27 + 8 * result + 32);
LABEL_14:
                v32 = v31;

                dispatch thunk of ImageQualityMetrics.skinTone.getter();

                goto LABEL_19;
              }

              __break(1u);
              return result;
            }

            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_14;
          }
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v28)
          {
            goto LABEL_9;
          }
        }
      }
    }

LABEL_19:
    v48 = v0[52];
    defaultLogger()();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[54];
    v53 = v0[52];
    v55 = v0[47];
    v54 = v0[48];
    if (v51)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v23;
      v59 = v57;
      v185[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_100141FE4(v58, v18, v185);
      _os_log_impl(&_mh_execute_header, v49, v50, "Trying to persist biome metadata for proofingSessionID: %s", v56, 0xCu);
      sub_10000BB78(v59);
    }

    v52(v53, v55);
    v60 = v0[51];
    v61 = v0[25];
    defaultLogger()();

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v0[25];
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 67109120;
      *(v66 + 4) = *(*(v65 + 112) + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect) != 0;

      _os_log_impl(&_mh_execute_header, v62, v63, "fetchedAssetManager.biomeFedStatsFieldsToCollect -> %{BOOL}d", v66, 8u);
    }

    else
    {
      v67 = v0[25];
    }

    v68 = v0[42];
    v69 = v0[36];
    v70 = v0[32];
    v71 = v0[33];
    v73 = v0[29];
    v72 = v0[30];
    v74 = v0[25];
    v178 = v0[48] + 8;
    (v0[54])(v0[51], v0[47]);
    v191 = *(v72 + 56);
    (v191)(v68, 1, 1, v73);
    v75 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
    v0[61] = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
    swift_beginAccess();
    v150 = v75;
    v154 = v74;
    sub_10000BBC4(v74 + v75, v69, &qword_10083D6A8, &qword_1006DB710);
    v76 = (*(v71 + 48))(v69, 1, v70);
    v77 = v0[38];
    v78 = v0[39];
    v79 = v0[37];
    if (v76)
    {
      sub_10000BE18(v0[36], &qword_10083D6A8, &qword_1006DB710);
      (*(v78 + 56))(v79, 1, 1, v77);
    }

    else
    {
      v81 = v0[33];
      v80 = v0[34];
      v82 = v0[32];
      v83 = v0[36];
      (*(v81 + 16))(v80, v83, v82);
      sub_10000BE18(v83, &qword_10083D6A8, &qword_1006DB710);
      PDF417Data.parsedData.getter();
      (*(v81 + 8))(v80, v82);
      if ((*(v78 + 48))(v79, 1, v77) != 1)
      {
        v133 = v0[42];
        v134 = v0[39];
        v135 = v0[40];
        v137 = v0[37];
        v136 = v0[38];
        v138 = v0[29];
        sub_10000BE18(v133, &qword_10083DC10, &qword_1006DB718);
        v139 = *(v134 + 32);
        v139(v135, v137, v136);
        v139(v133, v135, v136);
        swift_storeEnumTagMultiPayload();
        (v191)(v133, 0, 1, v138);
        goto LABEL_28;
      }
    }

    sub_10000BE18(v0[37], &qword_10083D6A0, &unk_1006DB700);
LABEL_28:
    v84 = *(v0[25] + 120);
    v85 = *(v84 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);
    if (v85)
    {
      v86 = v0[42];
      v87 = v0[29];
      v88 = *(v84 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);

      sub_10000BE18(v86, &qword_10083DC10, &qword_1006DB718);
      *v86 = v85;
      swift_storeEnumTagMultiPayload();
      (v191)(v86, 0, 1, v87);
    }

    v89 = v0[41];
    v91 = v0[29];
    v90 = v0[30];
    sub_10000BBC4(v0[42], v89, &qword_10083DC10, &qword_1006DB718);
    if ((*(v90 + 48))(v89, 1, v91) != 1)
    {
      v111 = v0[50];
      sub_10021E9C0(v0[41], v0[31], type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource);
      defaultLogger()();
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();
      v114 = os_log_type_enabled(v112, v113);
      v115 = v0[54];
      v116 = v0[50];
      v117 = v0[47];
      if (v114)
      {
        v118 = v0[23];
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v191 = v115;
        v121 = v120;
        v185[0] = v120;
        *v119 = 136315138;
        v122 = IdentityDocumentType.description.getter();
        v124 = sub_100141FE4(v122, v123, v185);

        *(v119 + 4) = v124;
        _os_log_impl(&_mh_execute_header, v112, v113, "The documentType being saved to donate to biome is %s", v119, 0xCu);
        sub_10000BB78(v121);

        (v191)(v116, v117);
      }

      else
      {

        (v115)(v116, v117);
      }

      v126 = v0[24];
      v125 = v0[25];
      v0[62] = *(v125 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_biomeManager);
      v127 = *(*(v125 + 112) + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect);
      v0[63] = v127;
      v191 = sub_100301468;
      if (v127)
      {
        v128 = v127;
      }

      else
      {
        v128 = &_swiftEmptySetSingleton;
      }

      v129 = swift_task_alloc();
      v0[64] = v129;
      *v129 = v0;
      v129[1] = sub_1001F6E0C;
      v130 = v0[31];
      v131 = v0[23];
      v189 = v181;
      v190 = v128;
      v188 = v170;
      v132 = v191;

      __asm { BR              X8 }
    }

    v191 = (v0 + 17);
    v142 = v0[56];
    v143 = v0[54];
    v92 = v0[49];
    v158 = v0[46];
    v162 = v0[55];
    v93 = v0[45];
    v94 = v0[41];
    v140 = v0[42];
    v141 = v0[47];
    v95 = v0[33];
    v167 = v0[35];
    v173 = v0[32];
    v96 = v0[27];
    v97 = v0[28];
    v98 = v0[26];
    v144 = v0[25];
    v146 = v0[44];

    sub_10000BE18(v94, &qword_10083DC10, &qword_1006DB718);
    (*(v96 + 104))(v97, enum case for DIPError.Code.proofingBiomeDataDoesntExist(_:), v98);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v143(v92, v141);
    sub_10000BE18(v140, &qword_10083DC10, &qword_1006DB718);
    (*(v93 + 8))(v158, v146);

    v99 = *(v144 + v162);
    *(v144 + v162) = 0;

    v46 = v167;
    (*(v95 + 56))(v167, 1, 1, v173);
    swift_beginAccess();
    v14 = v154 + v150;
    goto LABEL_32;
  }

  v191 = (v0 + 5);
  v169 = v0[55];
  v159 = v0[56];
  v164 = v0[54];
  v4 = v0[49];
  v151 = v0[48];
  v155 = v0[47];
  v175 = v0[35];
  v147 = v0[33];
  v180 = v0[32];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[26];
  v9 = v0[23];
  sub_10000BE18(v3, &qword_10083DC18, &unk_1006DB720);
  v185[0] = 0;
  v185[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v10._countAndFlagsBits = 0xD000000000000037;
  v10._object = 0x8000000100706020;
  String.append(_:)(v10);
  v11._countAndFlagsBits = IdentityDocumentType.description.getter();
  String.append(_:)(v11);

  (*(v5 + 104))(v6, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v164(v4, v155);

  v12 = *(v7 + v169);
  *(v7 + v169) = 0;

  (*(v147 + 56))(v175, 1, 1, v180);
  v13 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
  swift_beginAccess();
  v14 = v7 + v13;
  v15 = v175;
LABEL_33:
  sub_1000B2764(v15, v14, &qword_10083D6A8, &qword_1006DB710);
  swift_endAccess();
  v101 = v0[52];
  v100 = v0[53];
  v103 = v0[50];
  v102 = v0[51];
  v104 = v0[49];
  v105 = v0[46];
  v107 = v0[42];
  v106 = v0[43];
  v108 = v0[40];
  v109 = v0[41];
  v163 = v0[37];
  v168 = v0[36];
  v174 = v0[35];
  v179 = v0[34];
  v184 = v0[31];
  v191 = v0[28];

  v110 = v0[1];

  return v110();
}

uint64_t sub_1001F6E0C()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 480);
  v4 = *(*v0 + 472);
  *(*v0 + 504);
  v6 = *v0;

  return _swift_task_switch(sub_1001F6F90, 0, 0);
}

uint64_t sub_1001F6F90()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v27 = *(v0 + 256);
  v29 = *(v0 + 488);
  v8 = *(v0 + 248);
  v9 = *(v0 + 200);

  sub_10021EA28(v8, type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource);
  sub_10000BE18(v5, &qword_10083DC10, &qword_1006DB718);
  (*(v3 + 8))(v2, v4);
  v10 = *(v9 + v1);
  *(v9 + v1) = 0;

  (*(v7 + 56))(v6, 1, 1, v27);
  swift_beginAccess();
  sub_1000B2764(v6, v9 + v29, &qword_10083D6A8, &qword_1006DB710);
  swift_endAccess();
  v12 = *(v0 + 416);
  v11 = *(v0 + 424);
  v14 = *(v0 + 400);
  v13 = *(v0 + 408);
  v15 = *(v0 + 392);
  v16 = *(v0 + 368);
  v18 = *(v0 + 336);
  v17 = *(v0 + 344);
  v19 = *(v0 + 320);
  v20 = *(v0 + 328);
  v23 = *(v0 + 296);
  v24 = *(v0 + 288);
  v25 = *(v0 + 280);
  v26 = *(v0 + 272);
  v28 = *(v0 + 248);
  v30 = *(v0 + 224);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1001F7198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[118] = v4;
  v5[117] = a4;
  v5[116] = a3;
  v5[115] = a2;
  v5[114] = a1;
  v6 = type metadata accessor for DIPError();
  v5[119] = v6;
  v7 = *(v6 - 8);
  v5[120] = v7;
  v8 = *(v7 + 64) + 15;
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v5[123] = v9;
  v10 = *(v9 - 8);
  v5[124] = v10;
  v11 = *(v10 + 64) + 15;
  v5[125] = swift_task_alloc();
  v12 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v5[126] = v12;
  v13 = *(v12 - 8);
  v5[127] = v13;
  v14 = *(v13 + 64) + 15;
  v5[128] = swift_task_alloc();
  v15 = *(*(type metadata accessor for IdentityProofingStaticWorkflow(0) - 8) + 64) + 15;
  v5[129] = swift_task_alloc();
  v16 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  v5[130] = v16;
  v17 = *(v16 - 8);
  v5[131] = v17;
  v18 = *(v17 + 64) + 15;
  v5[132] = swift_task_alloc();
  v19 = type metadata accessor for DeviceInformationProvider();
  v5[133] = v19;
  v20 = *(v19 - 8);
  v5[134] = v20;
  v21 = *(v20 + 64) + 15;
  v5[135] = swift_task_alloc();
  v22 = type metadata accessor for IdentityProofingRequestV2(0);
  v5[136] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  v24 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v5[139] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v5[140] = swift_task_alloc();
  v26 = type metadata accessor for UUID();
  v5[141] = v26;
  v27 = *(v26 - 8);
  v5[142] = v27;
  v28 = *(v27 + 64) + 15;
  v5[143] = swift_task_alloc();
  v29 = type metadata accessor for Logger();
  v5[144] = v29;
  v30 = *(v29 - 8);
  v5[145] = v30;
  v31 = *(v30 + 64) + 15;
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();
  v5[150] = swift_task_alloc();
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();

  return _swift_task_switch(sub_1001F7588, 0, 0);
}

uint64_t sub_1001F7588()
{
  v64 = v0;
  v1 = *(v0 + 1216);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "----STARTING EXTENDED REVIEW PROOFING REQUEST----", v4, 2u);
  }

  v5 = *(v0 + 1216);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1152);
  v8 = *(v0 + 1144);
  v9 = *(v0 + 1136);
  v10 = *(v0 + 1128);

  v11 = *(v6 + 8);
  *(v0 + 1224) = v11;
  v11(v5, v7);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = *(v9 + 8);
  *(v0 + 1232) = v15;
  *(v0 + 1240) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v8, v10);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  if (qword_100832D08 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 1120);
  v17 = *(v0 + 944);
  v18 = sub_10003170C(*(v0 + 1112), qword_100882448);
  sub_10021E958(v18, v16, type metadata accessor for DIPHTTPSession.Configuration);
  v19 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService());
  v20 = sub_1005D7D88(v12, v14, v63, v16);
  v21 = *(v17 + 16);
  *(v17 + 16) = v20;

  v22 = *(v17 + 112);
  swift_beginAccess();
  sub_10000BBC4(v22 + 144, v0 + 648, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 672))
  {
    v23 = *(v0 + 1208);
    sub_10001F358((v0 + 648), v0 + 608);
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Workflow exists, going forward with proofing", v26, 2u);
    }

    v27 = *(v0 + 1208);
    v28 = *(v0 + 1200);
    v29 = *(v0 + 1160);
    v30 = *(v0 + 1152);

    v11(v27, v30);
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "encrypting authcode idv data for issuer", v33, 2u);
    }

    v34 = *(v0 + 1200);
    v35 = *(v0 + 1160);
    v36 = *(v0 + 1152);

    v11(v34, v36);
    *(v0 + 1248) = *(v17 + 112);

    v37 = swift_task_alloc();
    *(v0 + 1256) = v37;
    *v37 = v0;
    v37[1] = sub_1001F7BC0;
    v38 = *(v0 + 912);

    return sub_1001AAAAC(v0 + 560, v0 + 608, v38);
  }

  else
  {
    v40 = *(v0 + 1000);
    v41 = *(v0 + 992);
    v42 = *(v0 + 984);
    v43 = *(v0 + 952);
    sub_10000BE18(v0 + 648, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v41 + 104))(v40, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v42);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v44 = *(v0 + 1216);
    v45 = *(v0 + 1208);
    v46 = *(v0 + 1200);
    v47 = *(v0 + 1192);
    v48 = *(v0 + 1184);
    v49 = *(v0 + 1176);
    v50 = *(v0 + 1168);
    v51 = *(v0 + 1144);
    v52 = *(v0 + 1120);
    v53 = *(v0 + 1104);
    v55 = *(v0 + 1096);
    v56 = *(v0 + 1080);
    v57 = *(v0 + 1056);
    v58 = *(v0 + 1032);
    v59 = *(v0 + 1024);
    v60 = *(v0 + 1000);
    v61 = *(v0 + 976);
    v62 = *(v0 + 968);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_1001F7BC0()
{
  v2 = *v1;
  v3 = *(*v1 + 1256);
  v7 = *v1;
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v4 = sub_1001FB3D0;
  }

  else
  {
    v5 = *(v2 + 1248);

    v4 = sub_1001F7CDC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1001F7CDC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = v0[158];
  v2 = qword_100881E78;
  v0[159] = qword_100881E78;
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_100031B5C(&v3[4], (v0 + 2));
  os_unfair_lock_unlock(v3 + 54);
  if (!v1)
  {
    v4 = v0[117];
    v5 = v0[114];
    v6 = v0[9];
    v0[160] = v6;

    sub_100031918((v0 + 2));
    v7 = swift_allocObject();
    v0[161] = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = *(v6 + 16);
    v9 = swift_allocObject();
    v0[162] = v9;
    *(v9 + 16) = sub_10021C248;
    *(v9 + 24) = v7;
    v10 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
    v11 = v5;

    v12 = swift_task_alloc();
    v0[163] = v12;
    v13 = sub_100007224(&qword_10083DC08, &qword_1006DB6E8);
    *v12 = v0;
    v12[1] = sub_1001F7EB4;

    AsyncCoreDataContainer.performRead<A>(_:)(v0 + 91, sub_10021C264, v9, v13);
  }
}

uint64_t sub_1001F7EB4()
{
  v2 = *v1;
  v3 = *(*v1 + 1304);
  v9 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v4 = sub_1001F8B54;
  }

  else
  {
    v5 = *(v2 + 1296);
    v6 = *(v2 + 1288);
    v7 = *(v2 + 1280);

    *(v2 + 1320) = *(v2 + 728);
    *(v2 + 1328) = *(v2 + 736);
    *(v2 + 1336) = *(v2 + 744);
    *(v2 + 1352) = *(v2 + 760);
    v4 = sub_1001F8018;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F8018()
{
  v133 = v0;
  v1 = *(v0 + 1312);
  v2 = sub_10021C9B0(*(v0 + 920), *(v0 + 928), (v0 + 560), (v0 + 608));
  if (v1)
  {
    v3 = *(v0 + 1352);
    v4 = *(v0 + 1344);
    v5 = *(v0 + 1328);
    sub_1001B7154(v0 + 560);

LABEL_10:
    v114 = *(v0 + 1168);
    v119 = *(v0 + 1176);
    v50 = *(v0 + 1160);
    v51 = *(v0 + 1000);
    v52 = *(v0 + 992);
    v101 = *(v0 + 976);
    v124 = *(v0 + 1152);
    v126 = *(v0 + 968);
    v53 = *(v0 + 960);
    v105 = *(v0 + 952);
    v109 = *(v0 + 984);
    v130 = *(v0 + 944);
    _StringGuts.grow(_:)(34);

    v132[0] = 0xD000000000000020;
    v132[1] = 0x8000000100705EA0;
    swift_getErrorValue();
    v54 = *(v0 + 872);
    v55 = *(v0 + 880);
    v56 = *(v0 + 888);
    v57._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v57);

    (*(v52 + 104))(v51, enum case for DIPError.Code.extendedReviewProofingError(_:), v109);
    *(v0 + 720) = 0;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    swift_errorRetain();
    sub_100203358(v0 + 688);
    sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v58 = *(v53 + 16);
    v58(v59, v101, v105);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v110 = *(v50 + 8);
    v110(v119, v124);

    defaultLogger()();
    v120 = v58;
    v58(v126, v101, v105);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 1168);
    v64 = *(v0 + 1152);
    v65 = *(v0 + 968);
    v66 = *(v0 + 960);
    v67 = *(v0 + 952);
    if (v62)
    {
      v115 = *(v0 + 1152);
      v68 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v132[0] = v102;
      *v68 = 136315138;
      v97 = Error.localizedDescription.getter();
      v70 = v69;
      v106 = v63;
      v71 = *(v66 + 8);
      v71(v65, v67);
      v72 = v71;
      v73 = sub_100141FE4(v97, v70, v132);

      *(v68 + 4) = v73;
      sub_10000BB78(v102);

      v110(v106, v115);
    }

    else
    {

      v74 = *(v66 + 8);
      v74(v65, v67);
      v72 = v74;
      v110(v63, v64);
    }

    v75 = *(v0 + 976);
    v76 = *(v0 + 952);
    v77 = *(*(v0 + 944) + 56);

    sub_1002E1B4C(0, 0, 10);

    swift_allocError();
    v120(v78, v75, v76);
    swift_willThrow();

    v72(v75, v76);
    sub_10000BB78((v0 + 608));
    v79 = *(v0 + 1216);
    v80 = *(v0 + 1208);
    v81 = *(v0 + 1200);
    v82 = *(v0 + 1192);
    v83 = *(v0 + 1184);
    v84 = *(v0 + 1176);
    v85 = *(v0 + 1168);
    v86 = *(v0 + 1144);
    v87 = *(v0 + 1120);
    v88 = *(v0 + 1104);
    v99 = *(v0 + 1096);
    v103 = *(v0 + 1080);
    v107 = *(v0 + 1056);
    v111 = *(v0 + 1032);
    v116 = *(v0 + 1024);
    v121 = *(v0 + 1000);
    v127 = *(v0 + 976);
    v131 = *(v0 + 968);

    v89 = *(v0 + 8);

    return v89();
  }

  v122 = v2;
  v6 = *(v0 + 1192);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "encrypting authcode idv data for issuer complete.", v9, 2u);
  }

  v112 = *(v0 + 1336);
  v117 = *(v0 + 1344);
  v108 = *(v0 + 1328);
  v98 = *(v0 + 1240);
  v100 = *(v0 + 1320);
  v10 = *(v0 + 1224);
  v11 = *(v0 + 1192);
  v12 = *(v0 + 1160);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1144);
  v95 = *(v0 + 1128);
  v96 = *(v0 + 1232);
  v15 = *(v0 + 1104);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 1080);
  v125 = *(v0 + 1072);
  v128 = *(v0 + 1064);
  v104 = *(v0 + 944);

  v10(v11, v13);
  v18 = sub_10000BA08((v0 + 608), *(v0 + 632));
  v20 = *v18;
  v19 = v18[1];
  v21 = v16[9];
  v22 = type metadata accessor for TiberiusWrappedAssessment(0);
  (*(*(v22 - 8) + 56))(v15 + v21, 1, 1, v22);
  v23 = v16[15];
  v24 = type metadata accessor for LivenessDataV2(0);
  (*(*(v24 - 8) + 56))(v15 + v23, 1, 1, v24);

  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v96(v14, v95);
  *v15 = 0;
  *(v15 + 8) = 0xE000000000000000;
  *(v15 + 16) = v25;
  *(v15 + 24) = v27;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = v20;
  *(v15 + 88) = v19;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 112) = v122;
  *(v15 + v16[10]) = 0;
  *(v15 + v16[11]) = 0;
  *(v15 + v16[12]) = _swiftEmptyArrayStorage;
  v28 = (v15 + v16[13]);
  *v28 = v100;
  v28[1] = v108;
  v29 = (v15 + v16[14]);
  *v29 = v112;
  v29[1] = v117;
  *(v15 + v16[16]) = 0;
  v30 = (v15 + v16[17]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v15 + v16[18]);
  *v31 = 0;
  v31[1] = 0;
  v32 = *(v104 + 16);
  v33 = *&v32[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
  *v15 = *&v32[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *(v15 + 8) = v33;
  sub_100020260(*&v32[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 768);
  v34 = *(v0 + 800);
  sub_10000BA08((v0 + 768), *(v0 + 792));
  v123 = v32;

  v35 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v113 = v36;
  v118 = v35;
  sub_10000BB78((v0 + 768));
  DeviceInformationProvider.init()();
  v37 = DeviceInformationProvider.uniqueDeviceID.getter();
  v39 = v38;
  (*(v125 + 8))(v17, v128);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 1104);
  v41 = *(v0 + 1096);
  v42 = *(v0 + 1088);
  v43 = *(v0 + 1056);
  v129 = *(v0 + 1040);
  v44 = xmmword_100882478;

  *(v15 + 32) = v118;
  *(v15 + 40) = v113;
  *(v15 + 48) = v37;
  *(v15 + 56) = v39;
  *(v15 + 64) = v44;
  sub_10021E958(v40, v41, type metadata accessor for IdentityProofingRequestV2);
  sub_10021E908(&qword_100836910, type metadata accessor for IdentityProofingRequestV2);
  sub_10021E908(&qword_100836918, type metadata accessor for IdentityProofingRequestV2);
  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(*(v0 + 600));
  if (v45)
  {
    v48 = *(v0 + 1352);
    v49 = *(v0 + 1104);
    (*(*(v0 + 1048) + 8))(*(v0 + 1056), *(v0 + 1040));

    sub_10021EA28(v49, type metadata accessor for IdentityProofingRequestV2);
    sub_1001B7154(v0 + 560);
    goto LABEL_10;
  }

  v46 = *(v0 + 1056);
  v47 = *(v0 + 1040);
  JWSSignedJSON.setKid(_:)();
  v91 = async function pointer to JWSSignedJSON.sign(_:)[1];
  v92 = swift_task_alloc();
  *(v0 + 1360) = v92;
  *v92 = v0;
  v92[1] = sub_1001F9158;
  v93 = *(v0 + 1056);
  v94 = *(v0 + 1040);

  return JWSSignedJSON.sign(_:)(v0 + 560, v94);
}

uint64_t sub_1001F8B54()
{
  v69 = v0;
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1288);
  v3 = *(v0 + 1280);

  sub_1001B7154(v0 + 560);
  v4 = *(v0 + 1312);
  v57 = *(v0 + 1168);
  v60 = *(v0 + 1176);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1000);
  v7 = *(v0 + 992);
  v8 = *(v0 + 984);
  v63 = *(v0 + 1152);
  v64 = *(v0 + 968);
  v9 = *(v0 + 960);
  v49 = *(v0 + 976);
  v52 = *(v0 + 952);
  v66 = *(v0 + 944);
  _StringGuts.grow(_:)(34);

  v68[0] = 0xD000000000000020;
  v68[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v10 = *(v0 + 872);
  v11 = *(v0 + 880);
  v12 = *(v0 + 888);
  v13._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v13);

  (*(v7 + 104))(v6, enum case for DIPError.Code.extendedReviewProofingError(_:), v8);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v14 = *(v9 + 16);
  v14(v15, v49, v52);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v55 = *(v5 + 8);
  v55(v60, v63);

  defaultLogger()();
  v61 = v14;
  v14(v64, v49, v52);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 1168);
  v20 = *(v0 + 1152);
  v21 = *(v0 + 968);
  v22 = *(v0 + 960);
  v23 = *(v0 + 952);
  if (v18)
  {
    v58 = *(v0 + 1152);
    v24 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v68[0] = v50;
    *v24 = 136315138;
    v47 = Error.localizedDescription.getter();
    v26 = v25;
    v53 = v19;
    v27 = *(v22 + 8);
    v27(v21, v23);
    v28 = v27;
    v29 = sub_100141FE4(v47, v26, v68);

    *(v24 + 4) = v29;
    sub_10000BB78(v50);

    v55(v53, v58);
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v21, v23);
    v28 = v30;
    v55(v19, v20);
  }

  v31 = *(v0 + 976);
  v32 = *(v0 + 952);
  v33 = *(*(v0 + 944) + 56);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v61(v34, v31, v32);
  swift_willThrow();

  v28(v31, v32);
  sub_10000BB78((v0 + 608));
  v35 = *(v0 + 1216);
  v36 = *(v0 + 1208);
  v37 = *(v0 + 1200);
  v38 = *(v0 + 1192);
  v39 = *(v0 + 1184);
  v40 = *(v0 + 1176);
  v41 = *(v0 + 1168);
  v42 = *(v0 + 1144);
  v43 = *(v0 + 1120);
  v44 = *(v0 + 1104);
  v48 = *(v0 + 1096);
  v51 = *(v0 + 1080);
  v54 = *(v0 + 1056);
  v56 = *(v0 + 1032);
  v59 = *(v0 + 1024);
  v62 = *(v0 + 1000);
  v65 = *(v0 + 976);
  v67 = *(v0 + 968);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1001F9158()
{
  v2 = *(*v1 + 1360);
  v5 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v3 = sub_1001FB9B4;
  }

  else
  {
    v3 = sub_1001F926C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F926C()
{
  v1 = sub_10000BA08(v0 + 76, v0[79]);
  v3 = *v1;
  v2 = v1[1];
  v0[172] = v2;
  v4 = sub_10000BA08(v0 + 76, v0[79]);
  v5 = v4[6];
  v6 = v4[7];
  v0[173] = v6;

  v7 = swift_task_alloc();
  v0[174] = v7;
  *v7 = v0;
  v7[1] = sub_1001F936C;
  v8 = v0[132];
  v9 = v0[118];
  v10 = v0[117];

  return sub_1001FF1C8((v0 + 52), v3, v2, v8, 1, v10, v5, v6);
}

uint64_t sub_1001F936C()
{
  v2 = *v1;
  v3 = *(*v1 + 1392);
  v4 = *v1;
  *(*v1 + 1400) = v0;

  v5 = *(v2 + 1384);
  v6 = *(v2 + 1376);

  if (v0)
  {
    v7 = sub_1001FBFE4;
  }

  else
  {
    v7 = sub_1001F94BC;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1001F94BC()
{
  v1 = *(v0 + 1400);
  v2 = *(*(v0 + 1272) + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 216);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 54);
  }

  else
  {
    v3 = *(v0 + 1352);
    os_unfair_lock_unlock(v2 + 54);
    v4 = *(v0 + 272);
    *(v0 + 1408) = v4;

    sub_100031918(v0 + 216);
    sub_100020260(v0 + 608, v0 + 808);
    v5 = swift_allocObject();
    *(v0 + 1416) = v5;
    v6 = *(v0 + 528);
    *(v5 + 112) = *(v0 + 512);
    *(v5 + 128) = v6;
    *(v5 + 144) = *(v0 + 544);
    v7 = *(v0 + 464);
    *(v5 + 48) = *(v0 + 448);
    *(v5 + 64) = v7;
    v8 = *(v0 + 496);
    *(v5 + 80) = *(v0 + 480);
    *(v5 + 96) = v8;
    v9 = *(v0 + 432);
    *(v5 + 16) = *(v0 + 416);
    *(v5 + 32) = v9;
    *(v5 + 160) = v3;
    sub_10001F358((v0 + 808), v5 + 168);
    v10 = *(v4 + 16);
    v11 = swift_allocObject();
    *(v0 + 1424) = v11;
    *(v11 + 16) = sub_10021E70C;
    *(v11 + 24) = v5;
    v12 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
    v13 = v3;

    v14 = swift_task_alloc();
    *(v0 + 1432) = v14;
    *v14 = v0;
    v14[1] = sub_1001F9698;

    AsyncCoreDataContainer.performWrite<A>(_:)(v14, sub_10021F3D0, v11, &type metadata for () + 8);
  }
}

uint64_t sub_1001F9698()
{
  v2 = *v1;
  v3 = *(*v1 + 1432);
  v9 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v4 = sub_1001F99D4;
  }

  else
  {
    v5 = v2[178];
    v6 = v2[177];
    v7 = v2[176];

    v4 = sub_1001F97CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F97CC()
{
  v1 = v0[148];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "----EXTENDED REVIEW PROOFING REQUEST SUCCESSFULLY COMPLETED----", v4, 2u);
  }

  v5 = v0[148];
  v6 = v0[145];
  v7 = v0[144];
  v8 = v0[118];
  v9 = v0[114];

  (*(v6 + 8))(v5, v7);
  v10 = type metadata accessor for IdentityManagementSessionDelegate();
  v11 = [objc_opt_self() defaultCenter];
  v12 = String._bridgeToObjectiveC()();
  v0[113] = v10;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v11 postNotificationName:v12 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v0[181] = *(v8 + 112);

  v13 = IdentityProofingConfiguration.documentType.getter();
  v14 = swift_task_alloc();
  v0[182] = v14;
  *v14 = v0;
  v14[1] = sub_1001FA024;
  v15 = v0[129];

  return sub_1001AA1E4(v15, v13);
}

uint64_t sub_1001F99D4()
{
  v74 = v0;
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1416);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1352);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 1048);
  v8 = *(v0 + 1040);

  (*(v7 + 8))(v6, v8);
  sub_10021EA28(v5, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 560);
  v9 = *(v0 + 1440);
  v62 = *(v0 + 1168);
  v65 = *(v0 + 1176);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1000);
  v12 = *(v0 + 992);
  v13 = *(v0 + 984);
  v68 = *(v0 + 1152);
  v69 = *(v0 + 968);
  v14 = *(v0 + 960);
  v54 = *(v0 + 976);
  v57 = *(v0 + 952);
  v71 = *(v0 + 944);
  _StringGuts.grow(_:)(34);

  v73[0] = 0xD000000000000020;
  v73[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v15 = *(v0 + 872);
  v16 = *(v0 + 880);
  v17 = *(v0 + 888);
  v18._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v18);

  (*(v12 + 104))(v11, enum case for DIPError.Code.extendedReviewProofingError(_:), v13);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v19 = *(v14 + 16);
  v19(v20, v54, v57);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v60 = *(v10 + 8);
  v60(v65, v68);

  defaultLogger()();
  v66 = v19;
  v19(v69, v54, v57);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 1168);
  v25 = *(v0 + 1152);
  v26 = *(v0 + 968);
  v27 = *(v0 + 960);
  v28 = *(v0 + 952);
  if (v23)
  {
    v63 = *(v0 + 1152);
    v29 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v73[0] = v55;
    *v29 = 136315138;
    v52 = Error.localizedDescription.getter();
    v31 = v30;
    v58 = v24;
    v32 = *(v27 + 8);
    v32(v26, v28);
    v33 = v32;
    v34 = sub_100141FE4(v52, v31, v73);

    *(v29 + 4) = v34;
    sub_10000BB78(v55);

    v60(v58, v63);
  }

  else
  {

    v35 = *(v27 + 8);
    v35(v26, v28);
    v33 = v35;
    v60(v24, v25);
  }

  v36 = *(v0 + 976);
  v37 = *(v0 + 952);
  v38 = *(*(v0 + 944) + 56);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v66(v39, v36, v37);
  swift_willThrow();

  v33(v36, v37);
  sub_10000BB78((v0 + 608));
  v40 = *(v0 + 1216);
  v41 = *(v0 + 1208);
  v42 = *(v0 + 1200);
  v43 = *(v0 + 1192);
  v44 = *(v0 + 1184);
  v45 = *(v0 + 1176);
  v46 = *(v0 + 1168);
  v47 = *(v0 + 1144);
  v48 = *(v0 + 1120);
  v49 = *(v0 + 1104);
  v53 = *(v0 + 1096);
  v56 = *(v0 + 1080);
  v59 = *(v0 + 1056);
  v61 = *(v0 + 1032);
  v64 = *(v0 + 1024);
  v67 = *(v0 + 1000);
  v70 = *(v0 + 976);
  v72 = *(v0 + 968);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1001FA024()
{
  v2 = *v1;
  v3 = *(*v1 + 1456);
  v4 = *v1;
  *(*v1 + 1464) = v0;

  v5 = *(v2 + 1448);

  if (v0)
  {
    v6 = sub_1001FC614;
  }

  else
  {
    v6 = sub_1001FA158;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001FA158()
{
  v1 = v0[129];
  v2 = v0[114];
  v0[184] = *(v0[118] + 32);
  v3 = *(v1 + 64);

  v4 = IdentityProofingConfiguration.documentType.getter();
  v5 = swift_task_alloc();
  v0[185] = v5;
  *v5 = v0;
  v5[1] = sub_1001FA228;
  v6 = v0[128];

  return sub_1002A77FC(v6, v3, v4);
}

uint64_t sub_1001FA228()
{
  v2 = *(*v1 + 1480);
  v5 = *v1;
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v3 = sub_1001FAD78;
  }

  else
  {
    v3 = sub_1001FA33C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FA33C()
{
  v114 = v0;
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1008);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10021E908(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v9 = *(v0 + 1472);
    v10 = *(v0 + 1024);
    v11 = *(v0 + 1016);
    v12 = *(v0 + 1008);

    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 1104);
    v14 = *(v0 + 1056);
    v15 = *(v0 + 1048);
    v16 = *(v0 + 1040);
    v17 = *(v0 + 1032);

    (*(v15 + 8))(v14, v16);
    sub_10021EA28(v13, type metadata accessor for IdentityProofingRequestV2);
    sub_10021EA28(v17, type metadata accessor for IdentityProofingStaticWorkflow);
    sub_1001B7154(v0 + 560);
    v97 = *(v0 + 1168);
    v101 = *(v0 + 1176);
    v18 = *(v0 + 1160);
    v19 = *(v0 + 1000);
    v20 = *(v0 + 992);
    v21 = *(v0 + 984);
    v105 = *(v0 + 1152);
    v107 = *(v0 + 968);
    v22 = *(v0 + 960);
    v87 = *(v0 + 976);
    v91 = *(v0 + 952);
    v110 = *(v0 + 944);
    _StringGuts.grow(_:)(34);

    v113[0] = 0xD000000000000020;
    v113[1] = 0x8000000100705EA0;
    swift_getErrorValue();
    v23 = *(v0 + 872);
    v24 = *(v0 + 880);
    v25 = *(v0 + 888);
    v26._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v26);

    (*(v20 + 104))(v19, enum case for DIPError.Code.extendedReviewProofingError(_:), v21);
    *(v0 + 720) = 0;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    swift_errorRetain();
    sub_100203358(v0 + 688);
    sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v27 = *(v22 + 16);
    v27(v28, v87, v91);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v94 = *(v18 + 8);
    v94(v101, v105);

    defaultLogger()();
    v102 = v27;
    v27(v107, v87, v91);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 1168);
    v33 = *(v0 + 1152);
    v34 = *(v0 + 968);
    v35 = *(v0 + 960);
    v36 = *(v0 + 952);
    if (v31)
    {
      v98 = *(v0 + 1152);
      v37 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v113[0] = v88;
      *v37 = 136315138;
      v83 = Error.localizedDescription.getter();
      v39 = v38;
      v92 = v32;
      v40 = *(v35 + 8);
      v40(v34, v36);
      v41 = v40;
      v42 = sub_100141FE4(v83, v39, v113);

      *(v37 + 4) = v42;
      sub_10000BB78(v88);

      v94(v92, v98);
    }

    else
    {

      v57 = *(v35 + 8);
      v57(v34, v36);
      v41 = v57;
      v94(v32, v33);
    }

    v58 = *(v0 + 976);
    v59 = *(v0 + 952);
    v60 = *(*(v0 + 944) + 56);

    sub_1002E1B4C(0, 0, 10);

    swift_allocError();
    v102(v61, v58, v59);
    swift_willThrow();

    v41(v58, v59);
    sub_10000BB78((v0 + 608));
    v62 = *(v0 + 1216);
    v63 = *(v0 + 1208);
    v64 = *(v0 + 1200);
    v65 = *(v0 + 1192);
    v66 = *(v0 + 1184);
    v67 = *(v0 + 1176);
    v68 = *(v0 + 1168);
    v69 = *(v0 + 1144);
    v70 = *(v0 + 1120);
    v71 = *(v0 + 1104);
    v86 = *(v0 + 1096);
    v90 = *(v0 + 1080);
    v93 = *(v0 + 1056);
    v96 = *(v0 + 1032);
    v100 = *(v0 + 1024);
    v104 = *(v0 + 1000);
    v109 = *(v0 + 976);
    v112 = *(v0 + 968);

    v72 = *(v0 + 8);

    return v72();
  }

  else
  {
    v43 = v7;
    v44 = v8;
    v45 = *(v0 + 1472);
    v75 = *(v0 + 1352);
    v78 = *(v0 + 1216);
    v79 = *(v0 + 1208);
    v80 = *(v0 + 1200);
    v81 = *(v0 + 1192);
    v82 = *(v0 + 1184);
    v84 = *(v0 + 1176);
    v85 = *(v0 + 1168);
    v89 = *(v0 + 1144);
    v95 = *(v0 + 1120);
    v76 = *(v0 + 1104);
    v99 = *(v0 + 1096);
    v103 = *(v0 + 1080);
    v46 = *(v0 + 1048);
    v73 = *(v0 + 1040);
    v74 = *(v0 + 1056);
    v77 = *(v0 + 1032);
    v47 = *(v0 + 1024);
    v48 = *(v0 + 1016);
    v49 = *(v0 + 1008);
    v106 = *(v0 + 1000);
    v108 = *(v0 + 976);
    v111 = *(v0 + 968);
    v50 = *(v0 + 912);

    (*(v48 + 8))(v47, v49);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1006DAE90;
    v52 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v51 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_10000B8B8(v43, v44);
    IdentityProofingConfiguration.documentType.getter();
    v53 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v54 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    sub_10000B90C(v43, v44);

    (*(v46 + 8))(v74, v73);
    sub_10021EA28(v76, type metadata accessor for IdentityProofingRequestV2);
    sub_10021EA28(v77, type metadata accessor for IdentityProofingStaticWorkflow);
    sub_1001B7154(v0 + 560);
    sub_10000BB78((v0 + 608));

    v55 = *(v0 + 8);

    return v55(v54);
  }
}

uint64_t sub_1001FAD78()
{
  v72 = v0;
  v1 = *(v0 + 1472);

  v2 = *(v0 + 1488);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1032);

  (*(v5 + 8))(v4, v6);
  sub_10021EA28(v3, type metadata accessor for IdentityProofingRequestV2);
  sub_10021EA28(v7, type metadata accessor for IdentityProofingStaticWorkflow);
  sub_1001B7154(v0 + 560);
  v60 = *(v0 + 1168);
  v63 = *(v0 + 1176);
  v8 = *(v0 + 1160);
  v9 = *(v0 + 1000);
  v10 = *(v0 + 992);
  v11 = *(v0 + 984);
  v66 = *(v0 + 1152);
  v67 = *(v0 + 968);
  v12 = *(v0 + 960);
  v52 = *(v0 + 976);
  v55 = *(v0 + 952);
  v69 = *(v0 + 944);
  _StringGuts.grow(_:)(34);

  v71[0] = 0xD000000000000020;
  v71[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v13 = *(v0 + 872);
  v14 = *(v0 + 880);
  v15 = *(v0 + 888);
  v16._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v16);

  (*(v10 + 104))(v9, enum case for DIPError.Code.extendedReviewProofingError(_:), v11);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v17 = *(v12 + 16);
  v17(v18, v52, v55);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v58 = *(v8 + 8);
  v58(v63, v66);

  defaultLogger()();
  v64 = v17;
  v17(v67, v52, v55);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 1168);
  v23 = *(v0 + 1152);
  v24 = *(v0 + 968);
  v25 = *(v0 + 960);
  v26 = *(v0 + 952);
  if (v21)
  {
    v61 = *(v0 + 1152);
    v27 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v71[0] = v53;
    *v27 = 136315138;
    v50 = Error.localizedDescription.getter();
    v29 = v28;
    v56 = v22;
    v30 = *(v25 + 8);
    v30(v24, v26);
    v31 = v30;
    v32 = sub_100141FE4(v50, v29, v71);

    *(v27 + 4) = v32;
    sub_10000BB78(v53);

    v58(v56, v61);
  }

  else
  {

    v33 = *(v25 + 8);
    v33(v24, v26);
    v31 = v33;
    v58(v22, v23);
  }

  v34 = *(v0 + 976);
  v35 = *(v0 + 952);
  v36 = *(*(v0 + 944) + 56);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v64(v37, v34, v35);
  swift_willThrow();

  v31(v34, v35);
  sub_10000BB78((v0 + 608));
  v38 = *(v0 + 1216);
  v39 = *(v0 + 1208);
  v40 = *(v0 + 1200);
  v41 = *(v0 + 1192);
  v42 = *(v0 + 1184);
  v43 = *(v0 + 1176);
  v44 = *(v0 + 1168);
  v45 = *(v0 + 1144);
  v46 = *(v0 + 1120);
  v47 = *(v0 + 1104);
  v51 = *(v0 + 1096);
  v54 = *(v0 + 1080);
  v57 = *(v0 + 1056);
  v59 = *(v0 + 1032);
  v62 = *(v0 + 1024);
  v65 = *(v0 + 1000);
  v68 = *(v0 + 976);
  v70 = *(v0 + 968);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1001FB3D0()
{
  v67 = v0;
  v1 = *(v0 + 1248);

  v2 = *(v0 + 1264);
  v55 = *(v0 + 1168);
  v58 = *(v0 + 1176);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  v61 = *(v0 + 1152);
  v62 = *(v0 + 968);
  v7 = *(v0 + 960);
  v47 = *(v0 + 976);
  v50 = *(v0 + 952);
  v64 = *(v0 + 944);
  _StringGuts.grow(_:)(34);

  v66[0] = 0xD000000000000020;
  v66[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v8 = *(v0 + 872);
  v9 = *(v0 + 880);
  v10 = *(v0 + 888);
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  (*(v5 + 104))(v4, enum case for DIPError.Code.extendedReviewProofingError(_:), v6);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v12 = *(v7 + 16);
  v12(v13, v47, v50);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v53 = *(v3 + 8);
  v53(v58, v61);

  defaultLogger()();
  v59 = v12;
  v12(v62, v47, v50);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 968);
  v20 = *(v0 + 960);
  v21 = *(v0 + 952);
  if (v16)
  {
    v56 = *(v0 + 1152);
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v66[0] = v48;
    *v22 = 136315138;
    v45 = Error.localizedDescription.getter();
    v24 = v23;
    v51 = v17;
    v25 = *(v20 + 8);
    v25(v19, v21);
    v26 = v25;
    v27 = sub_100141FE4(v45, v24, v66);

    *(v22 + 4) = v27;
    sub_10000BB78(v48);

    v53(v51, v56);
  }

  else
  {

    v28 = *(v20 + 8);
    v28(v19, v21);
    v26 = v28;
    v53(v17, v18);
  }

  v29 = *(v0 + 976);
  v30 = *(v0 + 952);
  v31 = *(*(v0 + 944) + 56);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v59(v32, v29, v30);
  swift_willThrow();

  v26(v29, v30);
  sub_10000BB78((v0 + 608));
  v33 = *(v0 + 1216);
  v34 = *(v0 + 1208);
  v35 = *(v0 + 1200);
  v36 = *(v0 + 1192);
  v37 = *(v0 + 1184);
  v38 = *(v0 + 1176);
  v39 = *(v0 + 1168);
  v40 = *(v0 + 1144);
  v41 = *(v0 + 1120);
  v42 = *(v0 + 1104);
  v46 = *(v0 + 1096);
  v49 = *(v0 + 1080);
  v52 = *(v0 + 1056);
  v54 = *(v0 + 1032);
  v57 = *(v0 + 1024);
  v60 = *(v0 + 1000);
  v63 = *(v0 + 976);
  v65 = *(v0 + 968);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1001FB9B4()
{
  v70 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 560);
  v5 = *(v0 + 1368);
  v58 = *(v0 + 1168);
  v61 = *(v0 + 1176);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v64 = *(v0 + 1152);
  v65 = *(v0 + 968);
  v10 = *(v0 + 960);
  v50 = *(v0 + 976);
  v53 = *(v0 + 952);
  v67 = *(v0 + 944);
  _StringGuts.grow(_:)(34);

  v69[0] = 0xD000000000000020;
  v69[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v11 = *(v0 + 872);
  v12 = *(v0 + 880);
  v13 = *(v0 + 888);
  v14._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v14);

  (*(v8 + 104))(v7, enum case for DIPError.Code.extendedReviewProofingError(_:), v9);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v15 = *(v10 + 16);
  v15(v16, v50, v53);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v56 = *(v6 + 8);
  v56(v61, v64);

  defaultLogger()();
  v62 = v15;
  v15(v65, v50, v53);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1168);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  if (v19)
  {
    v59 = *(v0 + 1152);
    v25 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v69[0] = v51;
    *v25 = 136315138;
    v48 = Error.localizedDescription.getter();
    v27 = v26;
    v54 = v20;
    v28 = *(v23 + 8);
    v28(v22, v24);
    v29 = v28;
    v30 = sub_100141FE4(v48, v27, v69);

    *(v25 + 4) = v30;
    sub_10000BB78(v51);

    v56(v54, v59);
  }

  else
  {

    v31 = *(v23 + 8);
    v31(v22, v24);
    v29 = v31;
    v56(v20, v21);
  }

  v32 = *(v0 + 976);
  v33 = *(v0 + 952);
  v34 = *(*(v0 + 944) + 56);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v62(v35, v32, v33);
  swift_willThrow();

  v29(v32, v33);
  sub_10000BB78((v0 + 608));
  v36 = *(v0 + 1216);
  v37 = *(v0 + 1208);
  v38 = *(v0 + 1200);
  v39 = *(v0 + 1192);
  v40 = *(v0 + 1184);
  v41 = *(v0 + 1176);
  v42 = *(v0 + 1168);
  v43 = *(v0 + 1144);
  v44 = *(v0 + 1120);
  v45 = *(v0 + 1104);
  v49 = *(v0 + 1096);
  v52 = *(v0 + 1080);
  v55 = *(v0 + 1056);
  v57 = *(v0 + 1032);
  v60 = *(v0 + 1024);
  v63 = *(v0 + 1000);
  v66 = *(v0 + 976);
  v68 = *(v0 + 968);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1001FBFE4()
{
  v70 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 560);
  v5 = *(v0 + 1400);
  v58 = *(v0 + 1168);
  v61 = *(v0 + 1176);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v64 = *(v0 + 1152);
  v65 = *(v0 + 968);
  v10 = *(v0 + 960);
  v50 = *(v0 + 976);
  v53 = *(v0 + 952);
  v67 = *(v0 + 944);
  _StringGuts.grow(_:)(34);

  v69[0] = 0xD000000000000020;
  v69[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v11 = *(v0 + 872);
  v12 = *(v0 + 880);
  v13 = *(v0 + 888);
  v14._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v14);

  (*(v8 + 104))(v7, enum case for DIPError.Code.extendedReviewProofingError(_:), v9);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v15 = *(v10 + 16);
  v15(v16, v50, v53);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v56 = *(v6 + 8);
  v56(v61, v64);

  defaultLogger()();
  v62 = v15;
  v15(v65, v50, v53);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1168);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  if (v19)
  {
    v59 = *(v0 + 1152);
    v25 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v69[0] = v51;
    *v25 = 136315138;
    v48 = Error.localizedDescription.getter();
    v27 = v26;
    v54 = v20;
    v28 = *(v23 + 8);
    v28(v22, v24);
    v29 = v28;
    v30 = sub_100141FE4(v48, v27, v69);

    *(v25 + 4) = v30;
    sub_10000BB78(v51);

    v56(v54, v59);
  }

  else
  {

    v31 = *(v23 + 8);
    v31(v22, v24);
    v29 = v31;
    v56(v20, v21);
  }

  v32 = *(v0 + 976);
  v33 = *(v0 + 952);
  v34 = *(*(v0 + 944) + 56);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v62(v35, v32, v33);
  swift_willThrow();

  v29(v32, v33);
  sub_10000BB78((v0 + 608));
  v36 = *(v0 + 1216);
  v37 = *(v0 + 1208);
  v38 = *(v0 + 1200);
  v39 = *(v0 + 1192);
  v40 = *(v0 + 1184);
  v41 = *(v0 + 1176);
  v42 = *(v0 + 1168);
  v43 = *(v0 + 1144);
  v44 = *(v0 + 1120);
  v45 = *(v0 + 1104);
  v49 = *(v0 + 1096);
  v52 = *(v0 + 1080);
  v55 = *(v0 + 1056);
  v57 = *(v0 + 1032);
  v60 = *(v0 + 1024);
  v63 = *(v0 + 1000);
  v66 = *(v0 + 976);
  v68 = *(v0 + 968);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1001FC614()
{
  v70 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 560);
  v5 = *(v0 + 1464);
  v58 = *(v0 + 1168);
  v61 = *(v0 + 1176);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v64 = *(v0 + 1152);
  v65 = *(v0 + 968);
  v10 = *(v0 + 960);
  v50 = *(v0 + 976);
  v53 = *(v0 + 952);
  v67 = *(v0 + 944);
  _StringGuts.grow(_:)(34);

  v69[0] = 0xD000000000000020;
  v69[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v11 = *(v0 + 872);
  v12 = *(v0 + 880);
  v13 = *(v0 + 888);
  v14._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v14);

  (*(v8 + 104))(v7, enum case for DIPError.Code.extendedReviewProofingError(_:), v9);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v15 = *(v10 + 16);
  v15(v16, v50, v53);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v56 = *(v6 + 8);
  v56(v61, v64);

  defaultLogger()();
  v62 = v15;
  v15(v65, v50, v53);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1168);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  if (v19)
  {
    v59 = *(v0 + 1152);
    v25 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v69[0] = v51;
    *v25 = 136315138;
    v48 = Error.localizedDescription.getter();
    v27 = v26;
    v54 = v20;
    v28 = *(v23 + 8);
    v28(v22, v24);
    v29 = v28;
    v30 = sub_100141FE4(v48, v27, v69);

    *(v25 + 4) = v30;
    sub_10000BB78(v51);

    v56(v54, v59);
  }

  else
  {

    v31 = *(v23 + 8);
    v31(v22, v24);
    v29 = v31;
    v56(v20, v21);
  }

  v32 = *(v0 + 976);
  v33 = *(v0 + 952);
  v34 = *(*(v0 + 944) + 56);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v62(v35, v32, v33);
  swift_willThrow();

  v29(v32, v33);
  sub_10000BB78((v0 + 608));
  v36 = *(v0 + 1216);
  v37 = *(v0 + 1208);
  v38 = *(v0 + 1200);
  v39 = *(v0 + 1192);
  v40 = *(v0 + 1184);
  v41 = *(v0 + 1176);
  v42 = *(v0 + 1168);
  v43 = *(v0 + 1144);
  v44 = *(v0 + 1120);
  v45 = *(v0 + 1104);
  v49 = *(v0 + 1096);
  v52 = *(v0 + 1080);
  v55 = *(v0 + 1056);
  v57 = *(v0 + 1032);
  v60 = *(v0 + 1024);
  v63 = *(v0 + 1000);
  v66 = *(v0 + 976);
  v68 = *(v0 + 968);

  v46 = *(v0 + 8);

  return v46();
}

void sub_1001FCC44(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v4 = type metadata accessor for Logger();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = IdentityProofingConfiguration.documentType.getter();
  v15 = sub_10057A388(v13, v14, 0);
  if (v2)
  {
    return;
  }

  v16 = v9;
  v17 = v8;
  v18 = v46;
  if (!v15)
  {
LABEL_21:
    (*(v16 + 104))(v12, enum case for DIPError.Code.extendedReviewProofingError(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v19 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v40 = v15;
    v41 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v40;
    v20 = v4;
    if (v41)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v20 = v4;
  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_8:
  v44 = 0;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v21 = v7;
  }

  else
  {
    if (!*(v19 + 16))
    {
      __break(1u);
      return;
    }

    v21 = v7;
    v22 = *(v15 + 32);
  }

  v23 = v22;

  v24 = [v23 proofingSessionID];
  if (v24)
  {
    v43 = v23;
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "ProofingSessionID from the previous proofing attempt exists. Continuing the proofing flow", v31, 2u);
      v20 = v4;
    }

    (*(v18 + 8))(v21, v20);
    v32 = v45;
    *v45 = v26;
    v32[1] = v28;
    v33 = v43;
    v34 = [v43 productIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v32[2] = v36;
    v32[3] = v38;
    v39 = [v33 objectID];

    v32[4] = v39;
  }

  else
  {
    (*(v16 + 104))(v12, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

void sub_1001FD1C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v43 = a4;
  v47 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v15 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = *(a2 + 128);
  v18 = *(&v46 + 1);
  if (!*(&v46 + 1) || (*(a2 + 120) & 1) != 0)
  {
    (*(v8 + 104))(v11, enum case for DIPError.Code.serverResponseInconsistent(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v42 = v17;
  isEscapingClosureAtFileLocation = &v40 - v16;
  v20 = v46;
  v21 = *(a2 + 112);
  v22 = sub_10057886C(a3);
  if (!v4)
  {
    v23 = v22;
    v41 = v20;
    v24 = sub_10000BA08(v43, v43[3]);
    v26 = *v24;
    v25 = v24[1];

    Date.init()();
    v27 = type metadata accessor for Date();
    (*(*(v27 - 8) + 56))(isEscapingClosureAtFileLocation, 0, 1, v27);
    v28 = [v23 managedObjectContext];
    if (v28)
    {
      v40 = v28;
      sub_10000BBC4(isEscapingClosureAtFileLocation, v15, &unk_100849400, &unk_1006BFBB0);
      v29 = *(v42 + 80);
      v43 = v23;
      v30 = (v29 + 64) & ~v29;
      v31 = swift_allocObject();
      v31[2] = v43;
      v31[3] = v26;
      v32 = v41;
      v31[4] = v25;
      v31[5] = v32;
      v31[6] = v18;
      v31[7] = v21;
      sub_1000B1FC8(v15, v31 + v30, &unk_100849400, &unk_1006BFBB0);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_10021E860;
      *(v33 + 24) = v31;
      aBlock[4] = sub_10021E8E8;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10057E264;
      aBlock[3] = &unk_10080AA70;
      v34 = isEscapingClosureAtFileLocation;
      v35 = _Block_copy(aBlock);
      v36 = v43;
      sub_10000BBC4(&v46, v44, &qword_10084A1D0, &qword_1006DB410);

      v37 = v40;
      [v40 performBlockAndWait:v35];

      _Block_release(v35);
      v38 = v34;
      v23 = v43;
      sub_10000BE18(v38, &unk_100849400, &unk_1006BFBB0);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_9:
        v39 = IdentityProofingActionStatus.rawValue.getter();
        sub_10057F148(v39, 0);
        sub_1005783D4();

        return;
      }

      __break(1u);
    }

    sub_10000BE18(isEscapingClosureAtFileLocation, &unk_100849400, &unk_1006BFBB0);
    goto LABEL_9;
  }
}

uint64_t sub_1001FD70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 312) = v31;
  *(v9 + 320) = v8;
  *(v9 + 304) = v30;
  *(v9 + 272) = v28;
  *(v9 + 288) = v29;
  *(v9 + 240) = v26;
  *(v9 + 256) = v27;
  *(v9 + 224) = a7;
  *(v9 + 232) = a8;
  *(v9 + 208) = a5;
  *(v9 + 216) = a6;
  *(v9 + 192) = a3;
  *(v9 + 200) = a4;
  *(v9 + 176) = a1;
  *(v9 + 184) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 328) = v10;
  v11 = *(v10 - 8);
  *(v9 + 336) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 344) = swift_task_alloc();
  v13 = type metadata accessor for DeviceInformationProvider();
  *(v9 + 352) = v13;
  v14 = *(v13 - 8);
  *(v9 + 360) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 368) = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  *(v9 + 376) = v16;
  v17 = *(v16 - 8);
  *(v9 + 384) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 392) = swift_task_alloc();
  v19 = type metadata accessor for IdentityProofingRequestV2(0);
  *(v9 + 400) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  v21 = type metadata accessor for Logger();
  *(v9 + 424) = v21;
  v22 = *(v21 - 8);
  *(v9 + 432) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_1001FD948, 0, 0);
}

uint64_t sub_1001FD948()
{
  v84 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 192);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 432);
  v6 = *(v0 + 440);
  v8 = *(v0 + 424);
  if (v5)
  {
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v83 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v83);
    _os_log_impl(&_mh_execute_header, v3, v4, "Building and signing proofing request for workflow ID %{public}s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);
  v13 = *(*(v0 + 320) + 112);
  v14 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
  swift_beginAccess();
  sub_10000BBC4(v13 + v14, v0 + 64, &qword_10083D4B8, &qword_1006DB470);
  if (*(v0 + 88))
  {
    v15 = *(v0 + 416);
    v16 = *(v0 + 400);
    v65 = *(v0 + 392);
    v68 = *(v0 + 384);
    v69 = *(v0 + 376);
    v76 = *(v0 + 368);
    v77 = *(v0 + 360);
    v78 = *(v0 + 352);
    v66 = *(v0 + 312);
    v73 = *(v0 + 304);
    v74 = *(v0 + 320);
    v64 = *(v0 + 296);
    v72 = *(v0 + 288);
    v81 = *(v0 + 280);
    v61 = *(v0 + 272);
    v79 = *(v0 + 264);
    v17 = *(v0 + 232);
    v70 = *(v0 + 240);
    v71 = *(v0 + 256);
    v62 = *(v0 + 248);
    v18 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v63 = *(v0 + 192);
    v67 = *(v0 + 184);
    v22 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v22;
    *(v0 + 48) = *(v0 + 96);
    sub_10000BBC4(v20, v15 + v16[9], &qword_100835E38, &qword_1006C49F0);
    sub_10000BBC4(v61, v15 + v16[15], &qword_100835E40, &qword_1006C49F8);

    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v68 + 8))(v65, v69);
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = v23;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 80) = v67;
    *(v15 + 88) = v63;
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    *(v15 + 112) = v21;
    *(v15 + v16[10]) = v18;
    *(v15 + v16[11]) = v19;
    *(v15 + v16[12]) = v17;
    v26 = (v15 + v16[13]);
    *v26 = v70;
    v26[1] = v62;
    v27 = (v15 + v16[14]);
    *v27 = v71;
    v27[1] = v79;
    *(v15 + v16[16]) = v81;
    v28 = (v15 + v16[17]);
    *v28 = v72;
    v28[1] = v64;
    v29 = (v15 + v16[18]);
    *v29 = v73;
    v29[1] = v66;
    v30 = *(v74 + 16);
    v31 = *&v30[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
    *v15 = *&v30[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
    *(v15 + 8) = v31;
    sub_100020260(*&v30[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 112);
    v32 = *(v0 + 144);
    sub_10000BA08((v0 + 112), *(v0 + 136));
    v82 = v30;

    v80 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
    v75 = v33;
    sub_10000BB78((v0 + 112));
    DeviceInformationProvider.init()();
    v34 = DeviceInformationProvider.uniqueDeviceID.getter();
    v36 = v35;
    (*(v77 + 8))(v76, v78);
    if (qword_100832D18 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 408);
    v37 = *(v0 + 416);
    v39 = *(v0 + 400);
    v40 = *(v0 + 176);
    v41 = xmmword_100882478;

    *(v15 + 32) = v80;
    *(v15 + 40) = v75;
    *(v15 + 48) = v34;
    *(v15 + 56) = v36;
    *(v15 + 64) = v41;
    sub_10021E958(v37, v38, type metadata accessor for IdentityProofingRequestV2);
    sub_10021E908(&qword_100836910, type metadata accessor for IdentityProofingRequestV2);
    sub_10021E908(&qword_100836918, type metadata accessor for IdentityProofingRequestV2);
    JWSSignedJSON.init(payload:)();
    v42._rawValue = *(v0 + 56);
    v43 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
    *(v0 + 448) = v43;
    JWSSignedJSON.setCertificateChain(_:)(v42);
    if (!v44)
    {
      v45 = *(v0 + 176);
      JWSSignedJSON.setKid(_:)();
      v58 = async function pointer to JWSSignedJSON.sign(_:)[1];
      v59 = swift_task_alloc();
      *(v0 + 456) = v59;
      *v59 = v0;
      v59[1] = sub_1001FE148;
      v60 = *(v0 + 176);

      return JWSSignedJSON.sign(_:)(v0 + 16, v43);
    }

    v46 = *(v0 + 416);
    (*(*(v43 - 8) + 8))(*(v0 + 176), v43);
    sub_10021EA28(v46, type metadata accessor for IdentityProofingRequestV2);
    sub_1001B7154(v0 + 16);
  }

  else
  {
    v48 = *(v0 + 336);
    v47 = *(v0 + 344);
    v49 = *(v0 + 328);
    sub_10000BE18(v0 + 64, &qword_10083D4B8, &qword_1006DB470);
    (*(v48 + 104))(v47, enum case for DIPError.Code.internalError(_:), v49);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v50 = *(v0 + 440);
  v51 = *(v0 + 408);
  v52 = *(v0 + 416);
  v53 = *(v0 + 392);
  v54 = *(v0 + 368);
  v55 = *(v0 + 344);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1001FE148()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1001FE330;
  }

  else
  {
    v3 = sub_1001FE25C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FE25C()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[49];
  v4 = v0[46];
  v5 = v0[43];
  sub_10021EA28(v0[52], type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FE330()
{
  v1 = v0[52];
  (*(*(v0[56] - 8) + 8))(v0[22]);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154((v0 + 2));
  v2 = v0[58];
  v3 = v0[55];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[49];
  v7 = v0[46];
  v8 = v0[43];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001FE434(char a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for DaemonAnalytics.PIITokenOrigin();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DaemonAnalytics.PIITokenUseCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007224(&qword_10083DC40, &unk_1006DB7A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  v22 = *(v8 + 56);
  v22(&v33 - v20, 1, 1, v7);
  if (a1 == 2)
  {
    sub_10000BE18(v21, &qword_10083DC40, &unk_1006DB7A0);
    v23 = &enum case for DaemonAnalytics.PIITokenUseCase.giftWatch(_:);
    goto LABEL_5;
  }

  if (a1 == 3)
  {
    sub_10000BE18(v21, &qword_10083DC40, &unk_1006DB7A0);
    v23 = &enum case for DaemonAnalytics.PIITokenUseCase.deviceMigration(_:);
LABEL_5:
    (*(v8 + 104))(v21, *v23, v7);
    v24 = 0;
    goto LABEL_9;
  }

  v35 = a2;
  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v34 = v4;
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Invalid token usecase", v27, 2u);
    v4 = v34;
  }

  (*(v36 + 8))(v14, v37);
  sub_10000BE18(v21, &qword_10083DC40, &unk_1006DB7A0);
  v24 = 1;
  a2 = v35;
LABEL_9:
  v22(v21, v24, 1, v7);
  sub_10000BBC4(v21, v19, &qword_10083DC40, &unk_1006DB7A0);
  if ((*(v8 + 48))(v19, 1, v7) == 1)
  {
    sub_10000BE18(v21, &qword_10083DC40, &unk_1006DB7A0);
  }

  else
  {
    v28 = v38;
    (*(v8 + 32))(v38, v19, v7);
    type metadata accessor for DaemonAnalytics();
    v30 = v39;
    v29 = v40;
    (*(v40 + 104))(v39, enum case for DaemonAnalytics.PIITokenOrigin.keychain(_:), v4);
    v31 = *a2;
    static DaemonAnalytics.sendPIITokenRetrievalEvent(origin:didRetreivePIIToken:usecase:)();
    (*(v29 + 8))(v30, v4);
    (*(v8 + 8))(v28, v7);
    v19 = v21;
  }

  return sub_10000BE18(v19, &qword_10083DC40, &unk_1006DB7A0);
}

uint64_t sub_1001FE8EC(char *a1, uint64_t a2)
{
  v50 = a2;
  v51 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  __chkstk_darwin(v3);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Logger();
  v53 = *(v65 - 8);
  v6 = *(v53 + 64);
  v7 = __chkstk_darwin(v65);
  v47 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v54 = &v42 - v10;
  __chkstk_darwin(v9);
  v52 = &v42 - v11;
  v12 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v42 - v14;
  v16 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v49 = v2;
  v21 = *(*(v2 + 88) + 16);
  v22 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  swift_beginAccess();
  sub_10000BBC4(v21 + v22, v15, &qword_100835970, &unk_1006C1EA0);
  if ((*(v17 + 6))(v15, 1, v16) == 1)
  {
    sub_10000BE18(v15, &qword_100835970, &unk_1006C1EA0);
    (*(v45 + 104))(v48, enum case for DIPError.Code.livenessConfigFetchError(_:), v46);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v23 = v47;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v53 + 8))(v23, v65);

    return 0;
  }

  else
  {
    v47 = v17;
    (*(v17 + 4))(v20, v15, v16);
    JWSSignedJSON.payload.getter();
    memcpy(v62, v61, 0x10AuLL);
    sub_10000BBC4(v62, v58, &qword_100835828, &qword_1006C1B18);
    sub_10009F310(v62);
    v63[8] = v62[8];
    v64[0] = v62[9];
    *(v64 + 14) = *(&v62[9] + 14);
    v63[4] = v62[4];
    v63[5] = v62[5];
    v63[7] = v62[7];
    v63[6] = v62[6];
    v63[0] = v62[0];
    v63[1] = v62[1];
    v63[3] = v62[3];
    v63[2] = v62[2];
    v25 = sub_10021C1F8(v63);
    v26 = v53;
    if (v25 == 1)
    {
      LODWORD(v48) = 0;
      v27 = v65;
      v28 = v52;
    }

    else
    {
      sub_10000BE18(v62, &qword_100835828, &qword_1006C1B18);
      JWSSignedJSON.payload.getter();
      memcpy(v58, v57, 0x10AuLL);
      sub_10000BBC4(&v58[22], v56, &qword_100835840, &unk_1006DB6D0);
      sub_10009F310(v58);
      LODWORD(v48) = v58[25] != 0;
      v27 = v65;
      v28 = v52;
      if (v58[25])
      {
        sub_10000BE18(&v58[22], &qword_100835840, &unk_1006DB6D0);
      }
    }

    JWSSignedJSON.payload.getter();
    memcpy(v61, v58, 0x10AuLL);
    sub_10000BBC4(v61, v57, &qword_100835828, &qword_1006C1B18);
    sub_10009F310(v61);
    v59[8] = v61[8];
    v60[0] = v61[9];
    *(v60 + 14) = *(&v61[9] + 14);
    v59[4] = v61[4];
    v59[5] = v61[5];
    v59[7] = v61[7];
    v59[6] = v61[6];
    v59[0] = v61[0];
    v59[1] = v61[1];
    v59[3] = v61[3];
    v59[2] = v61[2];
    v29 = sub_10021C1F8(v59);
    v43 = v20;
    v44 = v16;
    if (v29 == 1)
    {
      LODWORD(v52) = 0;
    }

    else
    {
      sub_10000BE18(v61, &qword_100835828, &qword_1006C1B18);
      JWSSignedJSON.payload.getter();
      memcpy(v57, v56, 0x10AuLL);
      sub_10000BBC4(&v57[22], &v55, &qword_100835840, &unk_1006DB6D0);
      sub_10009F310(v57);
      LODWORD(v52) = v57[25] == 0;
      if (v57[25])
      {
        sub_10000BE18(&v57[22], &qword_100835840, &unk_1006DB6D0);
      }
    }

    v30 = *(v49 + 56);
    if (v50 == 2)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v32 = *(v49 + 56);

    sub_1002E22CC(v31, v51);

    v33 = IdentityProofingActionStatus.rawValue.getter();
    v34 = IdentityProofingActionStatus.rawValue.getter();
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = v33 == v34;
      v27 = v65;
      _os_log_impl(&_mh_execute_header, v35, v36, "isPerformingLivenessStepUp -> %{BOOL}d", v37, 8u);
    }

    v38 = *(v26 + 8);
    v38(v28, v27);
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 67109632;
      *(v41 + 4) = v48;
      *(v41 + 8) = 1024;
      *(v41 + 10) = v52;
      *(v41 + 14) = 1024;
      *(v41 + 16) = v33 == v34;
      v27 = v65;
      _os_log_impl(&_mh_execute_header, v39, v40, "Liveness type isInlineStepUp: %{BOOL}d activeLiveness: %{BOOL}d isPushNotificationStepup: %{BOOL}d", v41, 0x14u);
    }

    v38(v54, v27);
    v47[1](v43, v44);
    if (v33 == v34)
    {
      return 1;
    }

    else
    {
      return v48 | v52;
    }
  }
}

uint64_t sub_1001FF1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 416) = a8;
  *(v9 + 424) = v8;
  *(v9 + 400) = a6;
  *(v9 + 408) = a7;
  *(v9 + 544) = a5;
  *(v9 + 384) = a3;
  *(v9 + 392) = a4;
  *(v9 + 368) = a1;
  *(v9 + 376) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 432) = v10;
  v11 = *(v10 - 8);
  *(v9 + 440) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 448) = swift_task_alloc();
  v13 = sub_100007224(&qword_10083DBF8, &unk_1006DB6A0);
  *(v9 + 456) = v13;
  v14 = *(v13 - 8);
  *(v9 + 464) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 472) = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  *(v9 + 480) = v16;
  v17 = *(v16 - 8);
  *(v9 + 488) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 496) = swift_task_alloc();
  *(v9 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_1001FF368, 0, 0);
}

uint64_t sub_1001FF368()
{
  v1 = *(v0 + 504);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing identity proofing request", v4, 2u);
  }

  v5 = *(v0 + 504);
  v6 = *(v0 + 480);
  v7 = *(v0 + 488);
  v8 = *(v0 + 400);

  v9 = *(v7 + 8);
  v9(v5, v6);
  if ((v8 & 2) != 0 && (v10 = (*(*(*(v0 + 424) + 40) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService) + OBJC_IVAR____TtC8coreidvd8DIPWatch_bridgedClientInfo), (v11 = v10[1]) != 0))
  {
    v12 = *v10;
    v13 = *(v0 + 496);
    v14 = v10[1];

    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Adding Bridge-Client-Info headers to proofing request", v17, 2u);
    }

    v19 = *(v0 + 488);
    v18 = *(v0 + 496);
    v20 = *(v0 + 480);

    v9(v18, v20);
    sub_100007224(&qword_100838818, &unk_1006D0F90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF520;
    *(inited + 32) = 0xD00000000000001BLL;
    v22 = inited + 32;
    *(inited + 40) = 0x8000000100705C70;
    *(inited + 48) = v12;
    *(inited + 56) = v11;
    v23 = sub_10003D21C(inited);
    swift_setDeallocating();
    sub_10000BE18(v22, &qword_100838820, &unk_1006DB6B0);
  }

  else
  {
    v23 = 0;
  }

  *(v0 + 512) = v23;
  v24 = *(*(v0 + 424) + 16);
  *(v0 + 520) = v24;
  v24;
  v25 = swift_task_alloc();
  *(v0 + 528) = v25;
  *v25 = v0;
  v25[1] = sub_1001FF640;
  v26 = *(v0 + 472);
  v27 = *(v0 + 408);
  v28 = *(v0 + 416);
  v30 = *(v0 + 384);
  v29 = *(v0 + 392);
  v31 = *(v0 + 376);
  v32 = *(v0 + 544);

  return sub_1005E7B5C(v26, v29, v31, v30, v23, v32, v27, v28);
}

uint64_t sub_1001FF640()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v7 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = sub_1001FF874;
  }

  else
  {
    v5 = *(v2 + 512);

    v4 = sub_1001FF768;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001FF768()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  v7 = *(v0 + 368);
  JWSSignedJSON.payload.getter();
  (*(v4 + 8))(v3, v6);
  v8 = *(v0 + 256);
  v9 = *(v0 + 272);
  *(v0 + 112) = v8;
  *(v0 + 128) = v9;
  v10 = *(v0 + 288);
  *(v0 + 144) = v10;
  v11 = *(v0 + 208);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v11;
  v13 = *(v0 + 224);
  v12 = *(v0 + 240);
  *(v0 + 80) = v13;
  *(v0 + 96) = v12;
  v14 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v14;
  v7[7] = v9;
  v7[8] = v10;
  v7[5] = v12;
  v7[6] = v8;
  *v7 = *(v0 + 16);
  v15 = *(v0 + 48);
  v7[3] = *(v0 + 64);
  v7[4] = v13;
  v7[1] = v14;
  v7[2] = v15;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001FF874()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v9 = *(v0 + 496);
  v10 = *(v0 + 472);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 432);

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001FFA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 672) = v8;
  *(v9 + 1009) = v25;
  *(v9 + 664) = v24;
  *(v9 + 1008) = v23;
  *(v9 + 656) = a8;
  *(v9 + 648) = a7;
  *(v9 + 640) = a6;
  *(v9 + 632) = a5;
  *(v9 + 624) = a4;
  *(v9 + 616) = a3;
  *(v9 + 608) = a2;
  *(v9 + 600) = a1;
  v10 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v9 + 680) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v9 + 688) = v11;
  v12 = *(v11 - 8);
  *(v9 + 696) = v12;
  *(v9 + 704) = *(v12 + 64);
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  v13 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v9 + 728) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v9 + 736) = swift_task_alloc();
  v15 = type metadata accessor for DIPError.Code();
  *(v9 + 744) = v15;
  v16 = *(v15 - 8);
  *(v9 + 752) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 760) = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  *(v9 + 768) = v18;
  v19 = *(v18 - 8);
  *(v9 + 776) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = swift_task_alloc();
  *(v9 + 808) = swift_task_alloc();

  return _swift_task_switch(sub_1001FFCA4, 0, 0);
}

uint64_t sub_1001FFCA4()
{
  v72 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 656);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 808);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  if (v5)
  {
    v70 = *(v0 + 808);
    v9 = *(v0 + 656);
    v68 = *(v0 + 648);
    v10 = *(v0 + 608);
    v69 = *(v0 + 768);
    v11 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v11 = 136446466;
    v12 = IdentityTarget.debugDescription.getter();
    v14 = sub_100141FE4(v12, v13, v71);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    if (v9)
    {
      v15 = v68;
    }

    else
    {
      v15 = 7104878;
    }

    if (v9)
    {
      v16 = v2;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_100141FE4(v15, v16, v71);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityProofingRequestManager trying to save proofing session for target : %{public}s with pairingID : %{public}s", v11, 0x16u);
    swift_arrayDestroy();

    v18 = *(v7 + 8);
    v18(v70, v69);
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  *(v0 + 816) = v18;
  v19 = *(v0 + 600);
  IdentityProofingConfiguration.state.getter();
  if (!v20)
  {
    v36 = *(v0 + 672);
    (*(*(v0 + 752) + 104))(*(v0 + 760), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 744));
    *(v0 + 248) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    sub_100203358(v0 + 216);
    sub_10000BE18(v0 + 216, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_20:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_25:
    v53 = *(v0 + 808);
    v54 = *(v0 + 800);
    v55 = *(v0 + 792);
    v56 = *(v0 + 784);
    v57 = *(v0 + 760);
    v58 = *(v0 + 736);
    v59 = *(v0 + 720);
    v60 = *(v0 + 712);
    v61 = *(v0 + 680);

    v62 = *(v0 + 8);

    return v62();
  }

  v21 = *(v0 + 600);
  v22 = String.lowercased()();

  *(v0 + 824) = v22;
  IdentityProofingConfiguration.country.getter();
  if (!v23)
  {
    v37 = *(v0 + 760);
    v38 = *(v0 + 752);
    v39 = *(v0 + 744);
    v40 = *(v0 + 672);

    (*(v38 + 104))(v37, enum case for DIPError.Code.idCountryUnavailable(_:), v39);
    *(v0 + 288) = 0;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_100203358(v0 + 256);
    sub_10000BE18(v0 + 256, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_20;
  }

  v24 = *(v0 + 672);
  v25 = String.lowercased()();

  *(v0 + 840) = v25;
  v26 = *(v24 + 112);
  swift_beginAccess();
  sub_10000BBC4(v26 + 144, v0 + 336, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 360))
  {
    v41 = *(v0 + 760);
    v42 = *(v0 + 752);
    v43 = *(v0 + 744);
    v44 = *(v0 + 672);

    sub_10000BE18(v0 + 336, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v42 + 104))(v41, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v43);
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    sub_100203358(v0 + 376);
    sub_10000BE18(v0 + 376, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_20;
  }

  v27 = *(v0 + 640);
  sub_10001F358((v0 + 336), v0 + 296);
  if (!v27)
  {
    v45 = *(v0 + 760);
    v46 = *(v0 + 752);
    v47 = *(v0 + 744);
    v48 = *(v0 + 672);

    (*(v46 + 104))(v45, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v47);
    *(v0 + 448) = 0;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    sub_100203358(v0 + 416);
    sub_10000BE18(v0 + 416, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_24;
  }

  v28 = *(v0 + 656);
  v29 = *(v0 + 640);
  v30 = *(v0 + 608);

  v31 = IdentityTarget.rawValue.getter();
  if (v31 == IdentityTarget.rawValue.getter() && !v28)
  {
    v32 = *(v0 + 760);
    v33 = *(v0 + 752);
    v34 = *(v0 + 744);
    v35 = *(v0 + 672);

    (*(v33 + 104))(v32, enum case for DIPError.Code.watchPairingIDDoesNotExist(_:), v34);
    *(v0 + 568) = 0;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    sub_100203358(v0 + 536);
    sub_10000BE18(v0 + 536, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_24:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BB78((v0 + 296));
    goto LABEL_25;
  }

  v49 = *(v0 + 672) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_manualCheckInterval;
  *(v0 + 856) = *v49;
  if (*(v49 + 8))
  {
    v50 = *(v0 + 760);
    v51 = *(v0 + 752);
    v52 = *(v0 + 744);

    *(v0 + 488) = 0;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_100203358(v0 + 456);
    sub_10000BE18(v0 + 456, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v51 + 104))(v50, enum case for DIPError.Code.internalError(_:), v52);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_24;
  }

  v64 = *(v0 + 600);
  *(v0 + 864) = *(v24 + 112);

  v65 = IdentityProofingConfiguration.documentType.getter();
  v66 = swift_task_alloc();
  *(v0 + 872) = v66;
  *v66 = v0;
  v66[1] = sub_1002007D4;
  v67 = *(v0 + 736);

  return sub_1001AA1E4(v67, v65);
}

uint64_t sub_1002007D4()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  v2[110] = v0;

  v5 = v2[108];
  if (v0)
  {
    v6 = v2[106];
    v7 = v2[104];
    v8 = v2[80];

    v9 = sub_100201FF8;
  }

  else
  {

    v9 = sub_100200930;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100200930()
{
  v70 = v0;
  v1 = v0[92];
  v2 = (v1 + *(v0[91] + 44));
  v0[111] = *v2;
  v3 = v2[1];
  v0[112] = v3;
  if (v3)
  {
    v4 = v0[100];
    v5 = v0[78];
    defaultLogger()();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[102];
    v10 = v0[100];
    v11 = v0[97];
    v12 = v0[96];
    if (v8)
    {
      v67 = v0[102];
      v13 = v0[78];
      v14 = v0[77];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v69[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100141FE4(v14, v13, v69);
      _os_log_impl(&_mh_execute_header, v6, v7, "----- PROOFING SESSION IDENTIFIER -----> %s", v15, 0xCu);
      sub_10000BB78(v16);

      v67(v10, v12);
    }

    else
    {

      v9(v10, v12);
    }

    v34 = v0[99];
    v35 = v0[80];
    defaultLogger()();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[102];
    v40 = v0[99];
    v41 = v0[97];
    v42 = v0[96];
    if (v38)
    {
      v68 = v0[102];
      v43 = v0[80];
      v44 = v0[79];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v69[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_100141FE4(v44, v43, v69);
      _os_log_impl(&_mh_execute_header, v36, v37, "----- CREDENTIAL IDENTIFIER -----> %s", v45, 0xCu);
      sub_10000BB78(v46);

      v68(v40, v42);
    }

    else
    {

      v39(v40, v42);
    }

    v47 = v0[98];
    v48 = v0[75];
    defaultLogger()();
    v49 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v0[75];
      v53 = swift_slowAlloc();
      *v53 = 67109120;
      v54 = IdentityProofingConfiguration.supplementalProvisioningData.getter();
      if (v55 >> 60 == 15)
      {
        v56 = 0;
      }

      else
      {
        sub_10000BD94(v54, v55);
        v56 = 1;
      }

      v57 = v0[75];
      *(v53 + 4) = v56;

      _os_log_impl(&_mh_execute_header, v50, v51, "supplementalProvisioningData exists in configuration %{BOOL}d", v53, 8u);

      v58 = v0[75];
    }

    else
    {

      v50 = v0[75];
    }

    v59 = v0[102];
    v60 = v0[98];
    v61 = v0[97];
    v62 = v0[96];
    v63 = v0[84];

    v59(v60, v62);
    v0[113] = *(v63 + 56);

    v64 = IdentityProofingConfiguration.documentType.getter();
    v65 = swift_task_alloc();
    v0[114] = v65;
    *v65 = v0;
    v65[1] = sub_100200F84;
    v66 = v0[76];

    return sub_1002E0570(v66, v64, 0);
  }

  else
  {
    v17 = v0[106];
    v18 = v0[104];
    v19 = v0[95];
    v20 = v0[94];
    v21 = v0[93];
    v22 = v0[80];

    (*(v20 + 104))(v19, enum case for DIPError.Code.learnMoreURLDoesntExist(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10021EA28(v1, type metadata accessor for IdentityProofingStaticWorkflow);
    sub_10000BB78(v0 + 37);
    v23 = v0[101];
    v24 = v0[100];
    v25 = v0[99];
    v26 = v0[98];
    v27 = v0[95];
    v28 = v0[92];
    v29 = v0[90];
    v30 = v0[89];
    v31 = v0[85];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_100200F84()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v4 = *v1;
  v2[115] = v0;

  v5 = v2[113];
  if (v0)
  {
    v6 = v2[106];
    v7 = v2[104];
    v8 = v2[80];

    v9 = sub_100201648;
  }

  else
  {

    v9 = sub_1002010E0;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_1002010E0()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 672);
  v3 = *(v0 + 600);
  v4 = sub_10000BA08((v0 + 296), *(v0 + 320));
  v77 = *v4;
  v79 = *(*(v2 + 112) + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_cloudKitUploadsMaxRetryCount);
  v76 = v4[1];

  v78 = IdentityProofingConfiguration.documentType.getter();
  v5 = sub_10000BA08((v0 + 296), *(v0 + 320));
  v6 = type metadata accessor for Workflow();
  v7 = v5 + *(v6 + 128);
  v70 = *v7;
  v68 = v7[8];
  v8 = sub_10000BA08((v0 + 296), *(v0 + 320)) + *(v6 + 132);
  v9 = *v8;
  v10 = v8[8];
  v11 = IdentityProofingConfiguration.productIdentifier.getter();
  v74 = v12;
  v75 = v11;
  v13 = IdentityProofingConfiguration.supplementalProvisioningData.getter();
  v15 = v14;
  *(v0 + 928) = v13;
  *(v0 + 936) = v14;
  v72 = *(v2 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);
  v73 = *(v2 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  v16 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage;
  *(v0 + 944) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage;
  v17 = (v2 + v16);
  v18 = *v17;
  *(v0 + 952) = *v17;
  v19 = v17[1];
  *(v0 + 960) = v19;

  sub_1000363B4(v18, v19);
  Date.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 920);
  v21 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v21 + 54);
  sub_100031B5C(&v21[4], v0 + 16);
  os_unfair_lock_unlock(v21 + 54);
  if (!v20)
  {
    v22 = 2;
    if (!v10)
    {
      v22 = v9;
    }

    v65 = *(v0 + 896);
    v66 = v22;
    v23 = v70;
    if (v68)
    {
      v23 = 0;
    }

    v63 = *(v0 + 888);
    v64 = v23;
    v59 = *(v0 + 856);
    v71 = *(v0 + 848);
    v58 = *(v0 + 840);
    v69 = *(v0 + 832);
    v55 = *(v0 + 824);
    v24 = *(v0 + 720);
    v25 = *(v0 + 712);
    v26 = *(v0 + 704);
    v27 = *(v0 + 696);
    v28 = *(v0 + 688);
    v49 = v25;
    v62 = *(v0 + 1009);
    v61 = *(v0 + 664);
    v60 = *(v0 + 1008);
    v56 = *(v0 + 648);
    v57 = *(v0 + 656);
    v51 = *(v0 + 632);
    v52 = *(v0 + 640);
    v53 = *(v0 + 616);
    v54 = *(v0 + 624);
    v50 = *(v0 + 608);
    v67 = *(v0 + 72);
    *(v0 + 968) = v67;

    sub_100031918(v0 + 16);
    (*(v27 + 16))(v25, v24, v28);
    v41 = (*(v27 + 80) + 128) & ~*(v27 + 80);
    v47 = (v26 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v29 + 39) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v48 = v13;
    v30 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v30 + 39) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v0 + 976) = v31;
    *(v31 + 2) = v55;
    *(v31 + 3) = v69;
    *(v31 + 4) = v58;
    *(v31 + 5) = v71;
    *(v31 + 6) = v51;
    *(v31 + 7) = v52;
    *(v31 + 8) = v50;
    *(v31 + 9) = v77;
    *(v31 + 10) = v76;
    *(v31 + 11) = v53;
    *(v31 + 12) = v54;
    *(v31 + 13) = v56;
    *(v31 + 14) = v57;
    *(v31 + 15) = v59;
    (*(v27 + 32))(&v31[v41], v49, v28);
    *&v31[v47] = 1;
    *&v31[v46] = v79;
    *&v31[v29] = v78;
    v32 = &v31[(v29 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v32 = v63;
    *(v32 + 1) = v65;
    v32[16] = v60;
    *&v31[v45] = v64;
    *&v31[v43] = v61;
    *&v31[v30] = v66;
    v33 = &v31[(v30 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v33 = v75;
    *(v33 + 1) = v74;
    v33[16] = v62;
    v34 = &v31[v42];
    *v34 = v48;
    v34[1] = v15;
    v35 = &v31[v44];
    *v35 = v73;
    *(v35 + 1) = v72;
    v36 = &v31[(v44 + 23) & 0xFFFFFFFFFFFFFFF8];
    *v36 = v18;
    v36[1] = v19;

    sub_1000363B4(v18, v19);

    sub_1000363B4(v48, v15);
    v37 = *(v67 + 16);
    v38 = swift_allocObject();
    *(v0 + 984) = v38;
    *(v38 + 16) = sub_10021BEB4;
    *(v38 + 24) = v31;
    v39 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v40 = swift_task_alloc();
    *(v0 + 992) = v40;
    *v40 = v0;
    v40[1] = sub_100201890;

    AsyncCoreDataContainer.performWrite<A>(_:)(v40, sub_10017F710, v38, &type metadata for () + 8);
  }
}

uint64_t sub_100201648()
{
  v1 = enum case for DIPError.Code.internalError(_:);
  v2 = *(v0 + 920);
  v3 = *(v0 + 760);
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);
  v18 = *(v0 + 736);
  v6 = *(v0 + 672);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 528) = 0;
  swift_errorRetain();
  sub_100203358(v0 + 496);
  sub_10000BE18(v0 + 496, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v4 + 104))(v3, v1, v5);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10021EA28(v18, type metadata accessor for IdentityProofingStaticWorkflow);
  sub_10000BB78((v0 + 296));
  v7 = *(v0 + 808);
  v8 = *(v0 + 800);
  v9 = *(v0 + 792);
  v10 = *(v0 + 784);
  v11 = *(v0 + 760);
  v12 = *(v0 + 736);
  v13 = *(v0 + 720);
  v14 = *(v0 + 712);
  v15 = *(v0 + 680);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100201890()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v12 = *v1;
  *(*v1 + 1000) = v0;

  v4 = v2[123];
  if (v0)
  {
    v5 = v2[106];
    v6 = v2[104];
    v7 = v2[80];

    v8 = sub_100201C7C;
  }

  else
  {
    v9 = v2[122];
    v10 = v2[121];

    v8 = sub_1002019F8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002019F8()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 928);
  v3 = *(v0 + 720);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 608);
  v7 = (*(v0 + 672) + *(v0 + 944));
  sub_10000BD94(*(v0 + 952), *(v0 + 960));
  sub_10000BD94(v2, v1);
  (*(v4 + 8))(v3, v5);
  v8 = *v7;
  v9 = v7[1];
  *v7 = xmmword_1006BF650;
  sub_10000BD94(v8, v9);
  v10 = IdentityTarget.rawValue.getter();
  v11 = IdentityTarget.rawValue.getter();
  v12 = *(v0 + 848);
  if (v10 == v11)
  {
    v13 = *(v0 + 840);
    v34 = *(v0 + 824);
    v14 = *(v0 + 680);
    v15 = *(v0 + 672);
    v16 = *(v0 + 640);
    v17 = *(v0 + 632);
    v18 = *(v0 + 600);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = v15;
    *(v20 + 40) = v34;
    *(v20 + 56) = v13;
    *(v20 + 64) = v12;
    *(v20 + 72) = v18;
    *(v20 + 80) = v17;
    *(v20 + 88) = v16;
    v21 = v18;

    sub_1003E653C(0, 0, v14, &unk_1006DB690, v20);
  }

  else
  {
    v22 = *(v0 + 832);
    v23 = *(v0 + 640);
  }

  v24 = *(v0 + 808);
  v25 = *(v0 + 800);
  v26 = *(v0 + 792);
  v27 = *(v0 + 784);
  v28 = *(v0 + 760);
  v29 = *(v0 + 720);
  v30 = *(v0 + 712);
  v31 = *(v0 + 680);
  sub_10021EA28(*(v0 + 736), type metadata accessor for IdentityProofingStaticWorkflow);
  sub_10000BB78((v0 + 296));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100201C7C()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  v23 = *(v0 + 952);
  v24 = *(v0 + 960);
  v25 = *(v0 + 928);
  v26 = *(v0 + 936);
  v4 = *(v0 + 760);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 696);
  v27 = *(v0 + 688);
  v28 = *(v0 + 720);

  v30 = enum case for DIPError.Code.internalError(_:);
  (*(v5 + 104))(v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000BD94(v23, v24);
  sub_10000BD94(v25, v26);

  (*(v7 + 8))(v28, v27);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);
  v10 = *(v0 + 744);
  v29 = *(v0 + 736);
  v11 = *(v0 + 672);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 528) = 0;
  swift_errorRetain();
  sub_100203358(v0 + 496);
  sub_10000BE18(v0 + 496, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v9 + 104))(v8, v30, v10);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10021EA28(v29, type metadata accessor for IdentityProofingStaticWorkflow);
  sub_10000BB78((v0 + 296));
  v12 = *(v0 + 808);
  v13 = *(v0 + 800);
  v14 = *(v0 + 792);
  v15 = *(v0 + 784);
  v16 = *(v0 + 760);
  v17 = *(v0 + 736);
  v18 = *(v0 + 720);
  v19 = *(v0 + 712);
  v20 = *(v0 + 680);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100201FF8()
{
  sub_10000BB78(v0 + 37);
  v1 = v0[110];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[95];
  v7 = v0[92];
  v8 = v0[90];
  v9 = v0[89];
  v10 = v0[85];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002020E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v19;
  *(v8 + 184) = v18;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 144) = a4;
  v9 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v8 + 216) = v10;
  v11 = *(v10 - 8);
  *(v8 + 224) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v8 + 240) = v13;
  v14 = *(v13 - 8);
  *(v8 + 248) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_10020226C, 0, 0);
}

uint64_t sub_10020226C()
{
  v1 = v0[23];
  v2 = *(v0[18] + 40);
  v0[35] = IdentityProofingConfiguration.documentType.getter();
  v3 = IdentityProofingConfiguration.productIdentifier.getter();
  v0[36] = v4;
  v0[37] = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_100202324;

  return sub_1006738C8();
}

uint64_t sub_100202324(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100202424, 0, 0);
}

uint64_t sub_100202424()
{
  v56 = v0;
  if (v0[39])
  {
    v54 = v0[39];
    v1 = v0[34];
    v2 = v0[22];
    v3 = v0[20];
    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[34];
    v9 = v0[30];
    v8 = v0[31];
    if (v6)
    {
      v10 = v0[21];
      v51 = v0[22];
      v12 = v0[19];
      v11 = v0[20];
      v13 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100141FE4(v12, v11, v55);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100141FE4(v10, v51, v55);
      _os_log_impl(&_mh_execute_header, v4, v5, "IdentityWatchSessionManagementListener saving initial watch proofing session for state: '%s', country: '%s'", v13, 0x16u);
      swift_arrayDestroy();

      v14 = *(v8 + 8);
      v14(v7, v9);
    }

    else
    {

      v14 = *(v8 + 8);
      v14(v7, v9);
    }

    v0[40] = v14;
    v23 = v0[35];
    if (v23 > 3)
    {
      v53 = 0;
    }

    else
    {
      v53 = qword_1006DB8F8[v23];
    }

    v24 = v0[37];
    v25 = v0[26];
    v26 = v0[24];
    v28 = v0[21];
    v27 = v0[22];
    v29 = v0[19];
    v30 = v0[20];
    v0[36];
    v50 = v0[25];
    String.lowercased()();
    String.lowercased()();
    v31 = type metadata accessor for URL();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v25, 1, 1, v31);
    v52 = String._bridgeToObjectiveC()();

    v33 = String._bridgeToObjectiveC()();

    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = String._bridgeToObjectiveC()();
    v38 = 0;
    if ((*(v32 + 48))(v25, 1, v31) != 1)
    {
      v39 = v0[26];
      URL._bridgeToObjectiveC()(v37);
      v38 = v40;
      (*(v32 + 8))(v39, v31);
    }

    v41 = [objc_allocWithZone(PKIdentityProofingConfiguration) initWithState:v52 country:v33 target:2 credentialIdentifier:v34 status:2 productIdentifier:v35 accountKeyIdentifier:v36 idType:v53 learnMoreURL:v38 proofingErrorMessage:0];
    v0[41] = v41;

    v0[2] = v0;
    v0[3] = sub_100202B24;
    v42 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100429100;
    v0[13] = &unk_10080A958;
    v0[14] = v42;
    [v54 updateProofingConfiguration:v41 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v15 = v0[29];
    if (v0[36])
    {
      v16 = v0[36];
    }

    (*(v0[28] + 104))(v0[29], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[27]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = v0[32];
    defaultLogger()();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "IdentityProofingRequestManager failed to store proofing session to watch database: %@", v20, 0xCu);
      sub_10000BE18(v21, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(v0[31] + 8))(v0[32], v0[30]);
    v44 = v0[33];
    v43 = v0[34];
    v45 = v0[32];
    v46 = v0[29];
    v47 = v0[26];

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_100202B24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_100202E6C;
  }

  else
  {
    v3 = sub_100202C34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100202C34()
{
  v26 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 160);

  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 312);
  v9 = *(v0 + 264);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  if (*(v0 + 288))
  {
    v12 = *(v0 + 288);
  }

  if (v5)
  {
    v24 = *(v0 + 264);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v23 = *(v0 + 320);
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100141FE4(v14, v13, &v25);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100141FE4(v14, v13, &v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityWatchSessionManagementListener saved watch proofing session for state: '%s', country: '%s'", v15, 0x16u);
    swift_arrayDestroy();

    v23(v24, v11);
  }

  else
  {

    v7(v9, v11);
  }

  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v18 = *(v0 + 256);
  v19 = *(v0 + 232);
  v20 = *(v0 + 208);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100202E6C()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  if (v0[36])
  {
    v4 = v0[36];
  }

  swift_willThrow();

  v5 = v0[42];
  v6 = v0[32];
  defaultLogger()();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "IdentityProofingRequestManager failed to store proofing session to watch database: %@", v9, 0xCu);
    sub_10000BE18(v10, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0[31] + 8))(v0[32], v0[30]);
  v13 = v0[33];
  v12 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[26];

  v17 = v0[1];

  return v17();
}

void sub_10020304C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v34[-v16];
  v18 = swift_projectBox();
  if (a1)
  {
    sub_10057BE48(a3, a4);
    if (!v6 && v24)
    {
      v25 = v24;
      v26 = [v24 createdAt];
      if (v26)
      {
        v27 = v26;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = type metadata accessor for Date();
        (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
      }

      else
      {
        v29 = type metadata accessor for Date();
        (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
      }

      swift_beginAccess();
      sub_1000B2764(v17, v18, &unk_100849400, &unk_1006BFBB0);
      v30 = v25;
      v31 = [v25 manualCheckInterval];
      goto LABEL_15;
    }
  }

  else if ((a1 & 2) != 0)
  {
    sub_10057BE48(a3, a4);
    if (!v6)
    {
      if (v19)
      {
        v20 = v19;
        v21 = [v19 createdAt];
        if (v21)
        {
          v22 = v21;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v23 = type metadata accessor for Date();
          (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
        }

        else
        {
          v32 = type metadata accessor for Date();
          (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
        }

        swift_beginAccess();
        sub_1000B2764(v15, v18, &unk_100849400, &unk_1006BFBB0);
        v30 = v20;
        v31 = [v20 manualCheckInterval];
LABEL_15:
        v33 = v31;

        swift_beginAccess();
        *(a6 + 16) = v33;
        *(a6 + 24) = 0;
      }
    }
  }
}

uint64_t sub_100203358(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.PropertyKey();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v50[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C9C0(_swiftEmptyArrayStorage);
  sub_10000BBC4(a1, &v53, &qword_10083D0A0, &qword_1006DAFC0);
  if (v54)
  {
    sub_10001F358(&v53, &v56);
    v9 = v4[13];
    v9(v7, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
    v10 = sub_10000BA08(&v56, v57);
    v11 = *v10;
    v12 = v10[1];
    v54 = &type metadata for String;
    v55 = &protocol witness table for String;
    *&v53 = v11;
    *(&v53 + 1) = v12;
    sub_10001F358(&v53, v50);

    LOBYTE(v12) = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v8;
    v13 = v51;
    v14 = sub_10001F370(v50, v51);
    v15 = *(*(v13 - 8) + 64);
    __chkstk_darwin(v14);
    v17 = (&v50[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    sub_100658FF4(*v17, v17[1], v7, v12, v52);
    v19 = v4[1];
    v19(v7, v3);
    sub_10000BB78(v50);
    v20 = v52[0];
    v9(v7, enum case for DIPError.PropertyKey.inoProviderID(_:), v3);
    v21 = sub_10000BA08(&v56, v57);
    v22 = v21[6];
    v23 = v21[7];
    v54 = &type metadata for String;
    v55 = &protocol witness table for String;
    *&v53 = v22;
    *(&v53 + 1) = v23;
    sub_10001F358(&v53, v50);

    LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v20;
    v24 = v51;
    v25 = sub_10001F370(v50, v51);
    v26 = *(*(v24 - 8) + 64);
    __chkstk_darwin(v25);
    v28 = (&v50[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    sub_100658FF4(*v28, v28[1], v7, v23, v52);
    v19(v7, v3);
    sub_10000BB78(v50);
    v8 = v52[0];
  }

  else
  {
    sub_10000BE18(&v53, &qword_10083D0A0, &qword_1006DAFC0);
    v30 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_workflowId + 8);
    if (v30)
    {
      v31 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_workflowId);
      (v4[13])(v7, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
      v57 = &type metadata for String;
      v58 = &protocol witness table for String;
      *&v56 = v31;
      *(&v56 + 1) = v30;
      sub_10001F358(&v56, &v53);

      LOBYTE(v31) = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = v8;
      v32 = v54;
      v33 = sub_10001F370(&v53, v54);
      v34 = *(*(v32 - 1) + 64);
      __chkstk_darwin(v33);
      v36 = (&v50[-1] - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v37 + 16))(v36);
      sub_100658FF4(*v36, v36[1], v7, v31, v50);
      (v4[1])(v7, v3);
      sub_10000BB78(&v53);
      return v50[0];
    }

    v39 = *(v1 + 112);
    swift_beginAccess();
    sub_10000BBC4(v39 + 144, &v53, &qword_10083D0A0, &qword_1006DAFC0);
    if (!v54)
    {
      sub_10000BE18(&v53, &qword_10083D0A0, &qword_1006DAFC0);
      return v8;
    }

    sub_10001F358(&v53, &v56);
    (v4[13])(v7, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
    v40 = sub_10000BA08(&v56, v57);
    v41 = *v40;
    v42 = v40[1];
    v54 = &type metadata for String;
    v55 = &protocol witness table for String;
    *&v53 = v41;
    *(&v53 + 1) = v42;
    sub_10001F358(&v53, v50);

    LOBYTE(v42) = swift_isUniquelyReferenced_nonNull_native();
    v49 = v8;
    v43 = v51;
    v44 = sub_10001F370(v50, v51);
    v45 = *(*(v43 - 8) + 64);
    __chkstk_darwin(v44);
    v47 = (&v50[-1] - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47);
    sub_100658FF4(*v47, v47[1], v7, v42, &v49);
    (v4[1])(v7, v3);
    sub_10000BB78(v50);
    v8 = v49;
  }

  sub_10000BB78(&v56);
  return v8;
}

uint64_t sub_100203A18(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = type metadata accessor for IdentityProofingAttributeConfiguration();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v10 = *(*(type metadata accessor for IdentityProofingStaticWorkflow(0) - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100203B64, 0, 0);
}

uint64_t sub_100203B64()
{
  v1 = v0[2];
  v0[11] = *(v0[3] + 112);

  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100203C1C;
  v4 = v0[10];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_100203C1C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1002043A4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100203D38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100203D38()
{
  v1 = v0[10];
  v2 = v0[2];
  v0[14] = *(v0[3] + 32);
  v3 = *(v1 + 64);

  v4 = IdentityProofingConfiguration.documentType.getter();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_100203E04;
  v6 = v0[9];

  return sub_1002A77FC(v6, v3, v4);
}

uint64_t sub_100203E04()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100204300;
  }

  else
  {
    v3 = sub_100203F18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100203F18()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10021E908(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;

  (*(v4 + 8))(v3, v5);
  if (v1)
  {
    sub_10021EA28(*(v0 + 80), type metadata accessor for IdentityProofingStaticWorkflow);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    if (*(v0 + 136))
    {
      v17 = *(v0 + 48);
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "User has opted to wait for wifi. Show Waiting for Wifi UI", v20, 2u);
      }

      v22 = *(v0 + 40);
      v21 = *(v0 + 48);
      v23 = *(v0 + 32);

      (*(v22 + 8))(v21, v23);
    }

    v24 = *(v0 + 72);
    v25 = *(v0 + 80);
    v32 = *(v0 + 48);
    v26 = *(v0 + 16);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006DAE90;
    v28 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v27 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_10000B8B8(v9, v11);
    IdentityProofingConfiguration.documentType.getter();
    v29 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v30 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    sub_10000B90C(v9, v11);
    sub_10021EA28(v25, type metadata accessor for IdentityProofingStaticWorkflow);

    v31 = *(v0 + 8);

    return v31(v30);
  }
}

uint64_t sub_100204300()
{
  v1 = v0[14];

  v2 = v0[16];
  sub_10021EA28(v0[10], type metadata accessor for IdentityProofingStaticWorkflow);
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002043A4()
{
  v1 = v0[11];

  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

BOOL sub_10020442C(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 56);
  if (a2 == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  sub_1002E22CC(v11, a1);

  v12 = IdentityProofingActionStatus.rawValue.getter();
  v13 = IdentityProofingActionStatus.rawValue.getter();
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v19 = v5;
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v12 == v13;
    v5 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "isPerformingLivenessStepUp -> %{BOOL}d", v16, 8u);
  }

  (*(v6 + 8))(v9, v5);
  return v12 == v13;
}

void sub_1002045FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = IdentityProofingConfiguration.documentType.getter();
  v14 = String.lowercased()();
  swift_beginAccess();
  if (*(a5 + 16) == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  sub_10057C320(v13, v14._countAndFlagsBits, v14._object, v15, 0, 0);
  if (v6)
  {
LABEL_5:

    return;
  }

  v17 = v16;

  if (v17)
  {
    v18 = [v17 proofingSessionID];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      LOBYTE(v19) = [v17 didAttemptComboProofing];
      if ((v19 & 1) == 0)
      {
        swift_beginAccess();
        *(a5 + 16) = 1;
      }

      v23 = v26;
      swift_beginAccess();
      v24 = *(v23 + 24);
      *(v23 + 16) = v20;
      *(v23 + 24) = v22;
      goto LABEL_5;
    }

    (*(v9 + 104))(v12, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v9 + 104))(v12, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_100204A00(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = type metadata accessor for Logger();
  v3[32] = v4;
  v5 = *(v4 - 8);
  v3[33] = v5;
  v6 = *(v5 + 64) + 15;
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100204AC4, 0, 0);
}

uint64_t sub_100204AC4()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[9];
  v0[35] = v5;

  sub_100031918((v0 + 2));
  v6 = swift_allocObject();
  v0[36] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[37] = v8;
  *(v8 + 16) = &unk_1006DB670;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];
  v10 = v4;

  v11 = swift_task_alloc();
  v0[38] = v11;
  v12 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v11 = v0;
  v11[1] = sub_100204CB0;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 27, &unk_1006DB680, v8, v12);
}

uint64_t sub_100204CB0()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100204E20, 0, 0);
  }

  else
  {
    v4 = v3[36];
    v5 = v3[37];
    v6 = v3[35];

    v7 = v3[27];
    v8 = v3[28];
    v9 = v3[34];

    v10 = v3[1];

    return v10(v7, v8);
  }
}

uint64_t sub_100204E20()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[31];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v5, v6);
  v10 = *(v8 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  v9 = *(v8 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);

  v11 = v0[34];

  v12 = v0[1];

  return v12(v10, v9);
}

uint64_t sub_100204F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100204FF4, 0, 0);
}

uint64_t sub_100204FF4()
{
  v1 = v0[10];
  v2 = v0[8];
  v17 = v0[9];
  v18 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = swift_allocObject();
  v0[12] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  v6[5] = v2;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_10021BC64;
  *(v8 + 24) = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);
  v11 = v4;

  v10(v18, v9, v17);
  v12 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v13 = v0;
  v13[1] = sub_100205190;
  v15 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v15, sub_10021BCBC, v8, v14);
}

uint64_t sub_100205190()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 120) = v0;

  if (v0)
  {
    v4 = *(v3 + 104);
    (*(*(v3 + 80) + 8))(*(v3 + 88), *(v3 + 72));

    return _swift_task_switch(sub_100205348, 0, 0);
  }

  else
  {
    v6 = *(v3 + 96);
    v5 = *(v3 + 104);
    v8 = *(v3 + 80);
    v7 = *(v3 + 88);
    v9 = *(v3 + 72);
    v10 = *(v3 + 32);

    (*(v8 + 8))(v7, v9);
    *v10 = *(v3 + 16);

    v11 = *(v3 + 8);

    return v11();
  }
}

uint64_t sub_100205348()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1002053B4@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v45 = a1;
  v4 = type metadata accessor for Logger();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = IdentityProofingConfiguration.state.getter();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v42 = v10;
    v15 = IdentityProofingConfiguration.country.getter();
    if (v16)
    {
      v17 = sub_100578AD0(v13, v14, v15, v16);
      if (v2)
      {
      }

      v26 = v17;

      if (v26 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = v45;
      v27 = v42;
      if (!result)
      {

        goto LABEL_7;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v28 = *(v26 + 32);
      }

      v29 = v28;

      v30 = [v29 analyticsSessionID];

      if (v30)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        defaultLogger()();

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v46 = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_100141FE4(v31, v33, &v46);
          _os_log_impl(&_mh_execute_header, v34, v35, "fetchAnalyticsSessionID returning EXISTING id %s", v36, 0xCu);
          sub_10000BB78(v37);
        }

        (*(v43 + 8))(v27, v44);
        v38 = (v45 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
        v39 = *(v45 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);
        *v38 = v31;
        v38[1] = v33;

        *a2 = v31;
        a2[1] = v33;
        return result;
      }
    }

    else
    {
    }
  }

  v19 = v45;
LABEL_7:
  defaultLogger()();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46 = v23;
    *v22 = 136315138;
    if (*(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8))
    {
      v24 = *(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
      v25 = *(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);
    }

    else
    {
      v25 = 0xE300000000000000;
      v24 = 7104878;
    }

    v40 = sub_100141FE4(v24, v25, &v46);

    *(v22 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v20, v21, "fetchAnalyticsSessionID returning NEW id %s", v22, 0xCu);
    sub_10000BB78(v23);

    (*(v43 + 8))(v8, v44);
    v19 = v45;
  }

  else
  {

    (*(v43 + 8))(v8, v44);
  }

  v41 = *(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);
  *a2 = *(v19 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  a2[1] = v41;
}

uint64_t sub_100205870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  v7 = type metadata accessor for Logger();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100205938, 0, 0);
}

uint64_t sub_100205938()
{
  v28 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v26 = v0[2];
  v27 = v3;

  v4._countAndFlagsBits = 0x632D73736F72632DLL;
  v4._object = 0xEC0000006B636568;
  String.append(_:)(v4);
  v5 = v26;
  v6 = v27;
  v0[10] = v27;
  v7 = *(*(v2 + 40) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v0[11] = v7;
  v7;
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[7];
  if (v10)
  {
    v25 = v6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136446210;
    v16 = IdentityTarget.debugDescription.getter();
    v24 = v12;
    v18 = v5;
    v19 = sub_100141FE4(v16, v17, &v26);

    *(v14 + 4) = v19;
    v5 = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "storePIIHash called for %{public}s", v14, 0xCu);
    sub_10000BB78(v15);

    v6 = v25;

    (*(v11 + 8))(v24, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_100205B88;
  v21 = v0[4];
  v22 = v0[5];

  return sub_10067EF30(v5, v6, v21, v22);
}

uint64_t sub_100205B88()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100205CD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 112);

  v10 = *(v0 + 120);

  v11 = *(v0 + 128);

  v12 = *(v0 + 136);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data, &qword_10083D6A8, &qword_1006DB710);

  v13 = *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_biomeManager);

  sub_10000BD94(*(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage), *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage + 8));
  v14 = *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);

  v15 = *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_workflowId + 8);

  v16 = *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID + 8);

  v17 = *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);

  v18 = *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_termsAndConditions + 8);

  v19 = *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);

  v20 = *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure);

  return v0;
}

uint64_t sub_100205E48()
{
  sub_100205CD4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingRequestManager()
{
  result = qword_10083D740;
  if (!qword_10083D740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100205EF4()
{
  sub_1001D07C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10020601C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021F344(*a1);
  *a2 = result;
  return result;
}

void sub_10020604C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656369766564;
  v5 = 0xEB0000000043464ELL;
  v6 = 0x74726F7073736170;
  if (v2 != 6)
  {
    v6 = 0x6E656B6F54696970;
    v5 = 0xE800000000000000;
  }

  v7 = 0x80000001006FA3E0;
  v8 = 0x74726F7073736170;
  if (v2 == 4)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xEB000000005A524DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000064657372;
  v10 = 0xD000000000000017;
  if (v2 == 2)
  {
    v10 = 0x6150373134666470;
  }

  else
  {
    v9 = 0x80000001006FA3C0;
  }

  if (*v1)
  {
    v4 = 0x6152373134666470;
    v3 = 0xE900000000000077;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100206178(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[51] = v4;
  v5 = *(v4 - 8);
  v3[52] = v5;
  v6 = *(v5 + 64) + 15;
  v3[53] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[54] = v7;
  v8 = *(v7 - 8);
  v3[55] = v8;
  v9 = *(v8 + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();

  return _swift_task_switch(sub_1002062A4, 0, 0);
}

uint64_t sub_1002062A4()
{
  v45 = v0;
  v1 = v0[57];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[57];
  v6 = v0[54];
  v7 = v0[55];
  if (v4)
  {
    v8 = v0[48];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136446210;
    v11 = IdentityTarget.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v44);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "createCredentialIdentifier called for %{public}s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v0[58] = v14;
  v15 = v0[50];
  v16 = [objc_allocWithZone(DCCredentialOptions) init];
  v17 = v16;
  v0[59] = v16;
  v18 = *(v15 + 16);
  if (!v18)
  {
    [v16 setDeleteInactiveKeysAfterDays:60];
LABEL_12:
    v35 = 60;
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_10000BBC4(v18 + 144, (v0 + 28), &qword_10083D0A0, &qword_1006DAFC0);
  v19 = v0[31];
  if (!v19)
  {
    sub_10000BE18((v0 + 28), &qword_10083D0A0, &qword_1006DAFC0);
    goto LABEL_9;
  }

  v20 = sub_10000BA08(v0 + 28, v0[31]);
  v21 = *(v19 - 8);
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  (*(v21 + 16))(v23, v20, v19);
  sub_10000BE18((v0 + 28), &qword_10083D0A0, &qword_1006DAFC0);
  v24 = v23 + *(type metadata accessor for Workflow() + 140);
  v25 = *v24;
  v26 = *(v24 + 8);
  (*(v21 + 8))(v23, v19);

  if (v26)
  {
LABEL_9:
    v25 = 60;
  }

  [v17 setDeleteInactiveKeysAfterDays:{v25, v44}];
  swift_beginAccess();
  sub_10000BBC4(v18 + 144, (v0 + 23), &qword_10083D0A0, &qword_1006DAFC0);
  v27 = v0[26];
  if (v27)
  {
    v28 = sub_10000BA08(v0 + 23, v0[26]);
    v29 = *(v27 - 8);
    v30 = *(v29 + 64) + 15;
    v31 = swift_task_alloc();
    (*(v29 + 16))(v31, v28, v27);
    sub_10000BE18((v0 + 23), &qword_10083D0A0, &qword_1006DAFC0);
    v32 = v31 + *(type metadata accessor for Workflow() + 136);
    v33 = *v32;
    v34 = *(v32 + 8);
    (*(v29 + 8))(v31, v27);

    if (v34)
    {
      goto LABEL_12;
    }

    v35 = v33;
  }

  else
  {
    sub_10000BE18((v0 + 23), &qword_10083D0A0, &qword_1006DAFC0);
    v35 = 60;
  }

LABEL_15:
  [v17 setDeleteIncompleteCredentialAfterDays:{v35, v44}];
  [v17 setReaderAuthenticationPolicy:1];
  [v17 setPresentmentAuthPolicy:2];
  [v17 setPayloadProtectionPolicy:1];
  if (v18)
  {
    swift_beginAccess();
    sub_10000BBC4(v18 + 144, (v0 + 18), &qword_10083D0A0, &qword_1006DAFC0);
    v36 = v0[21];
    if (v36)
    {
      v37 = sub_10000BA08(v0 + 18, v0[21]);
      v38 = *(v36 - 8);
      v39 = *(v38 + 64) + 15;
      v40 = swift_task_alloc();
      (*(v38 + 16))(v40, v37, v36);
      sub_10000BE18((v0 + 18), &qword_10083D0A0, &qword_1006DAFC0);
      v41 = *(v40 + *(type metadata accessor for Workflow() + 180));
      (*(v38 + 8))(v40, v36);

      goto LABEL_20;
    }

    sub_10000BE18((v0 + 18), &qword_10083D0A0, &qword_1006DAFC0);
  }

  v41 = 0;
LABEL_20:
  [v17 setIsPIIHashMismatchTerminal:v41 & 1];
  v42 = v17;

  return _swift_task_switch(sub_100206864, 0, 0);
}

uint64_t sub_100206864()
{
  v1 = v0[59];
  v2 = v0[49];
  v3 = String._bridgeToObjectiveC()();
  v0[60] = v3;
  v0[2] = v0;
  v0[7] = v0 + 45;
  v0[3] = sub_1002069B4;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_10080ABD8;
  v0[14] = v4;
  [v2 createCredentialInPartition:v3 options:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002069B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 48);
  *(*v0 + 488) = v4;
  v5 = v1[60];
  v6 = v1[59];
  if (v4)
  {
    swift_willThrow();

    v7 = sub_100206E30;
  }

  else
  {
    v8 = v2[46];
    v2[62] = v2[45];
    v2[63] = v8;

    v7 = sub_100206B10;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100206E30()
{
  v1 = v0[61];
  v13 = v0[59];
  v14 = v0[57];
  v15 = v0[56];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  _StringGuts.grow(_:)(59);
  v5._countAndFlagsBits = 0xD000000000000039;
  v5._object = 0x8000000100706900;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[35];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10 = *(v3 + 104);
  v10(v2, enum case for DIPError.Code.unableToGenerateCredentialIdentifier(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10(v2, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100207100(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[33] = v4;
  v5 = *(v4 - 8);
  v3[34] = v5;
  v6 = *(v5 + 64) + 15;
  v3[35] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[36] = v7;
  v8 = *(v7 - 8);
  v3[37] = v8;
  v9 = *(v8 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_10020722C, 0, 0);
}

uint64_t sub_10020722C()
{
  v46 = v0;
  v1 = v0[39];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[37];
  if (v4)
  {
    v8 = v0[30];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45 = v10;
    *v9 = 136446210;
    v11 = IdentityTarget.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v45);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "createCredentialIdentifier called for %{public}s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v0[40] = v14;
  v15 = v0[32];
  v16 = [objc_allocWithZone(DCCredentialOptions) init];
  v17 = v16;
  v0[41] = v16;
  v18 = *(v15 + 16);
  if (!v18)
  {
    [v16 setDeleteInactiveKeysAfterDays:60];
LABEL_12:
    v35 = 60;
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_10000BBC4(v18 + 144, (v0 + 12), &qword_10083D0A0, &qword_1006DAFC0);
  v19 = v0[15];
  if (!v19)
  {
    sub_10000BE18((v0 + 12), &qword_10083D0A0, &qword_1006DAFC0);
    goto LABEL_9;
  }

  v20 = sub_10000BA08(v0 + 12, v0[15]);
  v21 = *(v19 - 8);
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  (*(v21 + 16))(v23, v20, v19);
  sub_10000BE18((v0 + 12), &qword_10083D0A0, &qword_1006DAFC0);
  v24 = v23 + *(type metadata accessor for Workflow() + 140);
  v25 = *v24;
  v26 = *(v24 + 8);
  (*(v21 + 8))(v23, v19);

  if (v26)
  {
LABEL_9:
    v25 = 60;
  }

  [v17 setDeleteInactiveKeysAfterDays:{v25, v45}];
  swift_beginAccess();
  sub_10000BBC4(v18 + 144, (v0 + 7), &qword_10083D0A0, &qword_1006DAFC0);
  v27 = v0[10];
  if (v27)
  {
    v28 = sub_10000BA08(v0 + 7, v0[10]);
    v29 = *(v27 - 8);
    v30 = *(v29 + 64) + 15;
    v31 = swift_task_alloc();
    (*(v29 + 16))(v31, v28, v27);
    sub_10000BE18((v0 + 7), &qword_10083D0A0, &qword_1006DAFC0);
    v32 = v31 + *(type metadata accessor for Workflow() + 136);
    v33 = *v32;
    v34 = *(v32 + 8);
    (*(v29 + 8))(v31, v27);

    if (v34)
    {
      goto LABEL_12;
    }

    v35 = v33;
  }

  else
  {
    sub_10000BE18((v0 + 7), &qword_10083D0A0, &qword_1006DAFC0);
    v35 = 60;
  }

LABEL_15:
  [v17 setDeleteIncompleteCredentialAfterDays:{v35, v45}];
  [v17 setReaderAuthenticationPolicy:1];
  [v17 setPresentmentAuthPolicy:2];
  [v17 setPayloadProtectionPolicy:1];
  if (v18)
  {
    swift_beginAccess();
    sub_10000BBC4(v18 + 144, (v0 + 2), &qword_10083D0A0, &qword_1006DAFC0);
    v36 = v0[5];
    if (v36)
    {
      v37 = sub_10000BA08(v0 + 2, v0[5]);
      v38 = *(v36 - 8);
      v39 = *(v38 + 64) + 15;
      v40 = swift_task_alloc();
      (*(v38 + 16))(v40, v37, v36);
      sub_10000BE18((v0 + 2), &qword_10083D0A0, &qword_1006DAFC0);
      LOBYTE(v18) = *(v40 + *(type metadata accessor for Workflow() + 180));
      (*(v38 + 8))(v40, v36);
    }

    else
    {
      sub_10000BE18((v0 + 2), &qword_10083D0A0, &qword_1006DAFC0);
      LOBYTE(v18) = 0;
    }
  }

  [v17 setIsPIIHashMismatchTerminal:v18 & 1];
  v41 = v17;
  v42 = swift_task_alloc();
  v0[42] = v42;
  *v42 = v0;
  v42[1] = sub_100207838;
  v43 = v0[31];

  return sub_10067B0EC(0x797469746E656469, 0xE800000000000000, v17);
}

uint64_t sub_100207838(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 336);
  v7 = *v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = v2;

  if (v2)
  {
    v8 = sub_100207C98;
  }

  else
  {
    v8 = sub_100207978;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100207C98()
{
  v1 = v0[45];
  v13 = v0[41];
  v14 = v0[39];
  v15 = v0[38];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  _StringGuts.grow(_:)(59);
  v5._countAndFlagsBits = 0xD000000000000039;
  v5._object = 0x8000000100706900;
  String.append(_:)(v5);
  swift_getErrorValue();
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[19];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  v10 = *(v3 + 104);
  v10(v2, enum case for DIPError.Code.unableToGenerateCredentialIdentifier(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10(v2, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

unint64_t *sub_100207F68(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100209B00(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100208004(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10003ADCC(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100165FC0(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_10003ADCC(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_10016F53C();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x8000000100706DA0;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v42 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_10003ADCC(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_100165FC0(v32, 1);
        v33 = *a3;
        v28 = sub_10003ADCC(v6, v5);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v6;
      v36[1] = v5;
      v37 = (v35[7] + 16 * v28);
      *v37 = v26;
      v37[1] = v8;
      v38 = v35[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v39;
      v4 += 4;
      if (v42 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1002083B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
}

uint64_t sub_10020840C(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 32) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_10020850C;

  return v8(v3 + 16, v4);
}

uint64_t sub_10020850C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (!v0)
  {
    **(v2 + 32) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_10020861C()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_10020874C, 0, 0);
}

uint64_t sub_10020874C()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.simulateRecoverableError.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = v0[9];
    static Clock<>.continuous.getter();
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_100208A04;
    v7 = v0[9];
LABEL_7:

    return sub_1003DA1A4(5000000000000000000, 0, 0, 0, 1);
  }

  v8 = [v1 standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.simulateProvisioningError.getter();
  v10 = NSUserDefaults.internalBool(forKey:)(v9);

  if (v10)
  {
    v11 = v0[8];
    static Clock<>.continuous.getter();
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_100208D98;
    v13 = v0[8];
    goto LABEL_7;
  }

  v14 = [v1 standardUserDefaults];
  v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.simulateIdAlreadyAddedOnTheICloudAccount.getter();
  v16 = NSUserDefaults.internalBool(forKey:)(v15);

  if (v16)
  {
    v17 = v0[7];
    static Clock<>.continuous.getter();
    v18 = swift_task_alloc();
    v0[14] = v18;
    *v18 = v0;
    v18[1] = sub_10020912C;
    v19 = v0[7];
    goto LABEL_7;
  }

  v22 = v0[8];
  v21 = v0[9];
  v23 = v0[7];
  v24 = v0[4];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100208A04()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100208D0C;
  }

  else
  {
    v6 = sub_100208B74;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100208B74()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.topekaInternalServerError(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100208D0C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100208D98()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1002090A0;
  }

  else
  {
    v6 = sub_100208F08;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100208F08()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.provisioningIdentityFailed(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002090A0()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10020912C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100209434;
  }

  else
  {
    v6 = sub_10020929C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10020929C()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.idAlreadyProvisionedOnTheICloudAccount(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100209434()
{
  v1 = v0[15];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

unint64_t sub_1002094C0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for IdentityDocumentType.Category();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v15 = IdentityProofingConfiguration.state.getter();
    if (!v16)
    {
      (*(v5 + 104))(v8, enum case for DIPError.Code.idStateUnavailable(_:), v4);
      v17 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_11:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v17;
    }
  }

  else
  {
    if (v14 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      (*(v5 + 104))(v8, enum case for DIPError.Code.idTypeUnavailable(_:), v4);
      v17 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v10 + 8))(v13, v9);
      return v17;
    }

    v15 = IdentityProofingConfiguration.country.getter();
    if (!v16)
    {
      (*(v5 + 104))(v8, enum case for DIPError.Code.idCountryUnavailable(_:), v4);
      v17 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_11;
    }
  }

  v18 = v15;
  v19 = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0xE000000000000000;
  type metadata accessor for IdentityProofingDataContext();
  v17 = swift_allocObject();
  v22 = v33;
  sub_10057E28C();
  if (v22)
  {
  }

  else
  {
    v24 = v23;
    v25 = swift_allocObject();
    v26 = v18;
    v27 = v25;
    v25[2] = v24;
    v25[3] = a1;
    v25[4] = v26;
    v25[5] = v19;
    v25[6] = v20;
    v25[7] = v21;

    v28 = a1;

    sub_10057C18C(sub_10021EB70, v27);

    swift_beginAccess();
    v17 = *(v20 + 16);
    swift_beginAccess();
    v30 = *(v21 + 16);
    v31 = *(v21 + 24);
  }

  return v17;
}

unint64_t *sub_100209B00(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = a4;
  v21 = a2;
  v22 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v25 + 56) + 16 * v13 + 8);
    v26[0] = *v14;
    v26[1] = v15;
    __chkstk_darwin(result);
    v20[2] = v26;

    v17 = v27;
    v18 = sub_10035C8E4(sub_1000307C0, v20, v24);
    v27 = v17;

    if (v18)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1003D3DCC(v22, v21, v23, v25);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1003D3DCC(v22, v21, v23, v25);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100209CC4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_100207F68(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100209B00((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_100209E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 224) = a4;
  *(v6 + 232) = v5;
  *(v6 + 983) = a5;
  *(v6 + 208) = a2;
  *(v6 + 216) = a3;
  *(v6 + 200) = a1;
  v7 = *(*(sub_100007224(&qword_10083DC38, &unk_1006DB790) - 8) + 64) + 15;
  *(v6 + 240) = swift_task_alloc();
  v8 = type metadata accessor for PassportFields();
  *(v6 + 248) = v8;
  v9 = *(v8 - 8);
  *(v6 + 256) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  *(v6 + 296) = v11;
  v12 = *(v11 - 8);
  *(v6 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  v14 = *(*(sub_100007224(&qword_10083D6A8, &qword_1006DB710) - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v15 = *(*(sub_100007224(&qword_10083D6A0, &unk_1006DB700) - 8) + 64) + 15;
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = swift_task_alloc();
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  *(v6 + 800) = swift_task_alloc();
  *(v6 + 808) = swift_task_alloc();
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();

  return _swift_task_switch(sub_10020A404, 0, 0);
}

uint64_t sub_10020A404()
{
  v1 = *(*(v0 + 200) + 16);
  *(v0 + 912) = v1;
  v2 = sub_1003C5D2C(0, v1, 0, _swiftEmptyArrayStorage);
  if (!v1)
  {
LABEL_225:
    v729 = v2;
    v413 = *(v0 + 904);
    v414 = *(v0 + 896);
    v415 = *(v0 + 888);
    v416 = *(v0 + 880);
    v417 = *(v0 + 872);
    v418 = *(v0 + 864);
    v419 = *(v0 + 856);
    v420 = *(v0 + 848);
    v421 = *(v0 + 840);
    v422 = *(v0 + 832);
    v461 = *(v0 + 824);
    v462 = *(v0 + 816);
    v464 = *(v0 + 808);
    v466 = *(v0 + 800);
    v468 = *(v0 + 792);
    v470 = *(v0 + 784);
    v472 = *(v0 + 776);
    v474 = *(v0 + 768);
    v476 = *(v0 + 760);
    v478 = *(v0 + 752);
    v480 = *(v0 + 744);
    v482 = *(v0 + 736);
    v484 = *(v0 + 728);
    v486 = *(v0 + 720);
    v488 = *(v0 + 712);
    v490 = *(v0 + 704);
    v492 = *(v0 + 696);
    v494 = *(v0 + 688);
    v496 = *(v0 + 680);
    v498 = *(v0 + 672);
    v500 = *(v0 + 664);
    v502 = *(v0 + 656);
    v504 = *(v0 + 648);
    v506 = *(v0 + 640);
    v508 = *(v0 + 632);
    v510 = *(v0 + 624);
    v512 = *(v0 + 616);
    v514 = *(v0 + 608);
    v516 = *(v0 + 600);
    v518 = *(v0 + 592);
    v520 = *(v0 + 584);
    v522 = *(v0 + 576);
    v524 = *(v0 + 568);
    v526 = *(v0 + 560);
    v528 = *(v0 + 552);
    v531 = *(v0 + 544);
    v533 = *(v0 + 536);
    v536 = *(v0 + 528);
    v539 = *(v0 + 520);
    v542 = *(v0 + 512);
    v545 = *(v0 + 504);
    v548 = *(v0 + 496);
    v551 = *(v0 + 488);
    v554 = *(v0 + 480);
    v557 = *(v0 + 472);
    v560 = *(v0 + 464);
    v564 = *(v0 + 456);
    v570 = *(v0 + 448);
    v576 = *(v0 + 440);
    v582 = *(v0 + 432);
    v589 = *(v0 + 424);
    v596 = *(v0 + 416);
    v603 = *(v0 + 408);
    v610 = *(v0 + 400);
    v617 = *(v0 + 392);
    v624 = *(v0 + 384);
    v631 = *(v0 + 376);
    v638 = *(v0 + 368);
    v645 = *(v0 + 360);
    v652 = *(v0 + 352);
    v659 = *(v0 + 344);
    v667 = *(v0 + 336);
    v675 = *(v0 + 328);
    v682 = *(v0 + 320);
    v689 = *(v0 + 312);
    v697 = *(v0 + 288);
    v706 = *(v0 + 280);
    v714 = *(v0 + 272);
    v723 = *(v0 + 264);
    v732 = *(v0 + 240);

    v423 = *(v0 + 8);

    return v423(v729);
  }

  v3 = 0;
  v530 = (v0 + 968);
  v541 = (v0 + 992);
  v544 = (v0 + 984);
  v535 = (v0 + 976);
  v538 = (v0 + 1000);
  *(v0 + 1008) = enum case for PassportFields.firstName(_:);
  *(v0 + 1012) = enum case for PassportFields.lastName(_:);
  *(v0 + 1016) = enum case for PassportFields.issuer(_:);
  v731 = v0;
  while (1)
  {
    *(v0 + 936) = v2;
    *(v0 + 928) = v3;
    *(v0 + 920) = 0;
    v11 = *(*(v0 + 200) + v3 + 32);
    if (v11 > 4)
    {
      break;
    }

    if (v11)
    {
      if (v11 == 1)
      {
        v32 = *(v0 + 328);
        sub_10000BBC4(*(v0 + 208), v32, &qword_10083D6A8, &qword_1006DB710);
        v33 = type metadata accessor for PDF417Data();
        v34 = v0;
        v35 = *(v33 - 8);
        v36 = (*(v35 + 48))(v32, 1, v33);
        v37 = *(v34 + 328);
        if (v36 == 1)
        {
          sub_10000BE18(*(v34 + 328), &qword_10083D6A8, &qword_1006DB710);
          v709 = 0;
          v717 = 0;
        }

        else
        {
          v98 = PDF417Data.rawData.getter();
          v709 = v99;
          v717 = v98;
          (*(v35 + 8))(v37, v33);
        }

        v100 = *(v731 + 808);
        v101 = *(v731 + 800);
        v102 = type metadata accessor for PDF417ParsedData();
        v103 = *(v102 - 8);
        (*(v103 + 56))(v100, 1, 1, v102);
        sub_10000BBC4(v100, v101, &qword_10083D6A0, &unk_1006DB700);
        v104 = *(v103 + 48);
        v105 = v104(v101, 1, v102);
        v106 = *(v731 + 800);
        if (v105 == 1)
        {
          sub_10000BE18(*(v731 + 800), &qword_10083D6A0, &unk_1006DB700);
          v693 = 0;
          v701 = 0;
        }

        else
        {
          v107 = PDF417ParsedData.firstName.getter();
          v693 = v108;
          v701 = v107;
          (*(v103 + 8))(v106, v102);
        }

        v109 = *(v731 + 792);
        sub_10000BBC4(*(v731 + 808), v109, &qword_10083D6A0, &unk_1006DB700);
        v110 = v104(v109, 1, v102);
        v111 = *(v731 + 792);
        if (v110 == 1)
        {
          sub_10000BE18(*(v731 + 792), &qword_10083D6A0, &unk_1006DB700);
          v678 = 0;
          v685 = 0;
        }

        else
        {
          v112 = PDF417ParsedData.middleName.getter();
          v678 = v113;
          v685 = v112;
          (*(v103 + 8))(v111, v102);
        }

        v114 = *(v731 + 784);
        sub_10000BBC4(*(v731 + 808), v114, &qword_10083D6A0, &unk_1006DB700);
        v115 = v104(v114, 1, v102);
        v116 = *(v731 + 784);
        if (v115 == 1)
        {
          sub_10000BE18(*(v731 + 784), &qword_10083D6A0, &unk_1006DB700);
          v662 = 0;
          v670 = 0;
        }

        else
        {
          v117 = PDF417ParsedData.lastName.getter();
          v662 = v118;
          v670 = v117;
          (*(v103 + 8))(v116, v102);
        }

        v119 = *(v731 + 776);
        sub_10000BBC4(*(v731 + 808), v119, &qword_10083D6A0, &unk_1006DB700);
        v120 = v104(v119, 1, v102);
        v121 = *(v731 + 776);
        if (v120 == 1)
        {
          sub_10000BE18(*(v731 + 776), &qword_10083D6A0, &unk_1006DB700);
          v648 = 0;
          v655 = 0;
        }

        else
        {
          v122 = PDF417ParsedData.street1.getter();
          v648 = v123;
          v655 = v122;
          (*(v103 + 8))(v121, v102);
        }

        v124 = *(v731 + 768);
        sub_10000BBC4(*(v731 + 808), v124, &qword_10083D6A0, &unk_1006DB700);
        v125 = v104(v124, 1, v102);
        v126 = *(v731 + 768);
        if (v125 == 1)
        {
          sub_10000BE18(*(v731 + 768), &qword_10083D6A0, &unk_1006DB700);
          v634 = 0;
          v641 = 0;
        }

        else
        {
          v127 = PDF417ParsedData.street2.getter();
          v634 = v128;
          v641 = v127;
          (*(v103 + 8))(v126, v102);
        }

        v129 = *(v731 + 760);
        sub_10000BBC4(*(v731 + 808), v129, &qword_10083D6A0, &unk_1006DB700);
        v130 = v104(v129, 1, v102);
        v131 = *(v731 + 760);
        if (v130 == 1)
        {
          sub_10000BE18(*(v731 + 760), &qword_10083D6A0, &unk_1006DB700);
          v620 = 0;
          v627 = 0;
        }

        else
        {
          v132 = PDF417ParsedData.city.getter();
          v620 = v133;
          v627 = v132;
          (*(v103 + 8))(v131, v102);
        }

        v134 = *(v731 + 752);
        sub_10000BBC4(*(v731 + 808), v134, &qword_10083D6A0, &unk_1006DB700);
        v135 = v104(v134, 1, v102);
        v136 = *(v731 + 752);
        if (v135 == 1)
        {
          sub_10000BE18(*(v731 + 752), &qword_10083D6A0, &unk_1006DB700);
          v606 = 0;
          v613 = 0;
        }

        else
        {
          v137 = PDF417ParsedData.state.getter();
          v606 = v138;
          v613 = v137;
          (*(v103 + 8))(v136, v102);
        }

        v139 = *(v731 + 744);
        sub_10000BBC4(*(v731 + 808), v139, &qword_10083D6A0, &unk_1006DB700);
        v140 = v104(v139, 1, v102);
        v141 = *(v731 + 744);
        if (v140 == 1)
        {
          sub_10000BE18(*(v731 + 744), &qword_10083D6A0, &unk_1006DB700);
          v592 = 0;
          v599 = 0;
        }

        else
        {
          v142 = PDF417ParsedData.postalCode.getter();
          v592 = v143;
          v599 = v142;
          (*(v103 + 8))(v141, v102);
        }

        v144 = *(v731 + 736);
        sub_10000BBC4(*(v731 + 808), v144, &qword_10083D6A0, &unk_1006DB700);
        v145 = v104(v144, 1, v102);
        v146 = *(v731 + 736);
        if (v145 == 1)
        {
          sub_10000BE18(*(v731 + 736), &qword_10083D6A0, &unk_1006DB700);
          v579 = 0;
          v585 = 0;
        }

        else
        {
          v147 = PDF417ParsedData.country.getter();
          v579 = v148;
          v585 = v147;
          (*(v103 + 8))(v146, v102);
        }

        v149 = *(v731 + 728);
        sub_10000BBC4(*(v731 + 808), v149, &qword_10083D6A0, &unk_1006DB700);
        v150 = v104(v149, 1, v102);
        v151 = *(v731 + 728);
        v152 = v2;
        if (v150 == 1)
        {
          sub_10000BE18(*(v731 + 728), &qword_10083D6A0, &unk_1006DB700);
          v567 = 0;
          v573 = 0;
        }

        else
        {
          v153 = PDF417ParsedData.dob.getter();
          v567 = v154;
          v573 = v153;
          (*(v103 + 8))(v151, v102);
        }

        v155 = *(v731 + 720);
        sub_10000BBC4(*(v731 + 808), v155, &qword_10083D6A0, &unk_1006DB700);
        v156 = v104(v155, 1, v102);
        v157 = *(v731 + 808);
        v158 = *(v731 + 720);
        if (v156 == 1)
        {
          sub_10000BE18(*(v731 + 808), &qword_10083D6A0, &unk_1006DB700);
          sub_10000BE18(v158, &qword_10083D6A0, &unk_1006DB700);
          v159 = 0;
          v160 = 0;
        }

        else
        {
          v161 = *(v731 + 720);
          v159 = PDF417ParsedData.issuer.getter();
          v160 = v162;
          sub_10000BE18(v157, &qword_10083D6A0, &unk_1006DB700);
          (*(v103 + 8))(v158, v102);
        }

        v2 = v152;
        v164 = *(v152 + 2);
        v163 = *(v152 + 3);
        if (v164 >= v163 >> 1)
        {
          v2 = sub_1003C5D2C((v163 > 1), v164 + 1, 1, v152);
        }

        *(v2 + 2) = v164 + 1;
        v8 = &v2[336 * v164];
        v8[32] = 0;
        v165 = *v541;
        *(v8 + 9) = *(v541 + 3);
        *(v8 + 33) = v165;
        *(v8 + 5) = v717;
        *(v8 + 6) = v709;
        v10 = 0uLL;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0u;
        *(v8 + 15) = 0;
        *(v8 + 16) = v701;
        *(v8 + 17) = v693;
        *(v8 + 18) = v685;
        *(v8 + 19) = v678;
        *(v8 + 20) = v670;
        *(v8 + 21) = v662;
        *(v8 + 22) = v655;
        *(v8 + 23) = v648;
        *(v8 + 24) = v641;
        *(v8 + 25) = v634;
        *(v8 + 26) = v627;
        *(v8 + 27) = v620;
        *(v8 + 28) = v613;
        *(v8 + 29) = v606;
        *(v8 + 30) = v599;
        *(v8 + 31) = v592;
        *(v8 + 32) = v585;
        *(v8 + 33) = v579;
        *(v8 + 34) = v573;
        *(v8 + 35) = v567;
        *(v8 + 36) = v159;
        *(v8 + 37) = v160;
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_9;
        }

        v12 = *(v0 + 320);
        sub_10000BBC4(*(v0 + 208), v12, &qword_10083D6A8, &qword_1006DB710);
        v13 = type metadata accessor for PDF417Data();
        v14 = v0;
        v15 = *(v13 - 8);
        v16 = (*(v15 + 48))(v12, 1, v13);
        v17 = *(v14 + 712);
        v18 = *(v14 + 320);
        v725 = v2;
        if (v16 == 1)
        {
          sub_10000BE18(v18, &qword_10083D6A8, &qword_1006DB710);
          v19 = type metadata accessor for PDF417ParsedData();
          (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
        }

        else
        {
          PDF417Data.parsedData.getter();
          (*(v15 + 8))(v18, v13);
        }

        v166 = *(v731 + 704);
        sub_10000BBC4(*(v731 + 712), v166, &qword_10083D6A0, &unk_1006DB700);
        v167 = type metadata accessor for PDF417ParsedData();
        v168 = *(v167 - 8);
        v169 = *(v168 + 48);
        v170 = v169(v166, 1, v167);
        v171 = *(v731 + 704);
        if (v170 == 1)
        {
          sub_10000BE18(*(v731 + 704), &qword_10083D6A0, &unk_1006DB700);
          v711 = 0;
          v719 = 0;
        }

        else
        {
          v172 = PDF417ParsedData.firstName.getter();
          v711 = v173;
          v719 = v172;
          (*(v168 + 8))(v171, v167);
        }

        v174 = *(v731 + 696);
        sub_10000BBC4(*(v731 + 712), v174, &qword_10083D6A0, &unk_1006DB700);
        v175 = v169(v174, 1, v167);
        v176 = *(v731 + 696);
        if (v175 == 1)
        {
          sub_10000BE18(*(v731 + 696), &qword_10083D6A0, &unk_1006DB700);
          v694 = 0;
          v702 = 0;
        }

        else
        {
          v177 = PDF417ParsedData.middleName.getter();
          v694 = v178;
          v702 = v177;
          (*(v168 + 8))(v176, v167);
        }

        v179 = *(v731 + 688);
        sub_10000BBC4(*(v731 + 712), v179, &qword_10083D6A0, &unk_1006DB700);
        v180 = v169(v179, 1, v167);
        v181 = *(v731 + 688);
        if (v180 == 1)
        {
          sub_10000BE18(*(v731 + 688), &qword_10083D6A0, &unk_1006DB700);
          v679 = 0;
          v686 = 0;
        }

        else
        {
          v182 = PDF417ParsedData.lastName.getter();
          v679 = v183;
          v686 = v182;
          (*(v168 + 8))(v181, v167);
        }

        v184 = *(v731 + 680);
        sub_10000BBC4(*(v731 + 712), v184, &qword_10083D6A0, &unk_1006DB700);
        v185 = v169(v184, 1, v167);
        v186 = *(v731 + 680);
        if (v185 == 1)
        {
          sub_10000BE18(*(v731 + 680), &qword_10083D6A0, &unk_1006DB700);
          v663 = 0;
          v671 = 0;
        }

        else
        {
          v187 = PDF417ParsedData.street1.getter();
          v663 = v188;
          v671 = v187;
          (*(v168 + 8))(v186, v167);
        }

        v189 = *(v731 + 672);
        sub_10000BBC4(*(v731 + 712), v189, &qword_10083D6A0, &unk_1006DB700);
        v190 = v169(v189, 1, v167);
        v191 = *(v731 + 672);
        if (v190 == 1)
        {
          sub_10000BE18(*(v731 + 672), &qword_10083D6A0, &unk_1006DB700);
          v649 = 0;
          v656 = 0;
        }

        else
        {
          v192 = PDF417ParsedData.street2.getter();
          v649 = v193;
          v656 = v192;
          (*(v168 + 8))(v191, v167);
        }

        v194 = *(v731 + 664);
        sub_10000BBC4(*(v731 + 712), v194, &qword_10083D6A0, &unk_1006DB700);
        v195 = v169(v194, 1, v167);
        v196 = *(v731 + 664);
        if (v195 == 1)
        {
          sub_10000BE18(*(v731 + 664), &qword_10083D6A0, &unk_1006DB700);
          v635 = 0;
          v642 = 0;
        }

        else
        {
          v197 = PDF417ParsedData.city.getter();
          v635 = v198;
          v642 = v197;
          (*(v168 + 8))(v196, v167);
        }

        v199 = *(v731 + 656);
        sub_10000BBC4(*(v731 + 712), v199, &qword_10083D6A0, &unk_1006DB700);
        v200 = v169(v199, 1, v167);
        v201 = *(v731 + 656);
        if (v200 == 1)
        {
          sub_10000BE18(*(v731 + 656), &qword_10083D6A0, &unk_1006DB700);
          v621 = 0;
          v628 = 0;
        }

        else
        {
          v202 = PDF417ParsedData.state.getter();
          v621 = v203;
          v628 = v202;
          (*(v168 + 8))(v201, v167);
        }

        v204 = *(v731 + 648);
        sub_10000BBC4(*(v731 + 712), v204, &qword_10083D6A0, &unk_1006DB700);
        v205 = v169(v204, 1, v167);
        v206 = *(v731 + 648);
        if (v205 == 1)
        {
          sub_10000BE18(*(v731 + 648), &qword_10083D6A0, &unk_1006DB700);
          v607 = 0;
          v614 = 0;
        }

        else
        {
          v207 = PDF417ParsedData.postalCode.getter();
          v607 = v208;
          v614 = v207;
          (*(v168 + 8))(v206, v167);
        }

        v209 = *(v731 + 640);
        sub_10000BBC4(*(v731 + 712), v209, &qword_10083D6A0, &unk_1006DB700);
        v210 = v169(v209, 1, v167);
        v211 = *(v731 + 640);
        if (v210 == 1)
        {
          sub_10000BE18(*(v731 + 640), &qword_10083D6A0, &unk_1006DB700);
          v593 = 0;
          v600 = 0;
        }

        else
        {
          v212 = PDF417ParsedData.country.getter();
          v593 = v213;
          v600 = v212;
          (*(v168 + 8))(v211, v167);
        }

        v214 = *(v731 + 632);
        sub_10000BBC4(*(v731 + 712), v214, &qword_10083D6A0, &unk_1006DB700);
        v215 = v169(v214, 1, v167);
        v216 = *(v731 + 632);
        if (v215 == 1)
        {
          sub_10000BE18(*(v731 + 632), &qword_10083D6A0, &unk_1006DB700);
          v586 = 0;
          v217 = 0;
        }

        else
        {
          v586 = PDF417ParsedData.dob.getter();
          v217 = v218;
          (*(v168 + 8))(v216, v167);
        }

        v219 = *(v731 + 624);
        sub_10000BBC4(*(v731 + 712), v219, &qword_10083D6A0, &unk_1006DB700);
        v220 = v169(v219, 1, v167);
        v221 = *(v731 + 712);
        v222 = *(v731 + 624);
        if (v220 == 1)
        {
          sub_10000BE18(*(v731 + 712), &qword_10083D6A0, &unk_1006DB700);
          sub_10000BE18(v222, &qword_10083D6A0, &unk_1006DB700);
          v223 = 0;
          v224 = 0;
        }

        else
        {
          v225 = *(v731 + 624);
          v223 = PDF417ParsedData.issuer.getter();
          v224 = v226;
          sub_10000BE18(v221, &qword_10083D6A0, &unk_1006DB700);
          (*(v168 + 8))(v222, v167);
        }

        v2 = v725;
        v228 = *(v725 + 2);
        v227 = *(v725 + 3);
        if (v228 >= v227 >> 1)
        {
          v2 = sub_1003C5D2C((v227 > 1), v228 + 1, 1, v725);
        }

        *(v2 + 2) = v228 + 1;
        v8 = &v2[336 * v228];
        v8[32] = 0;
        v229 = *v544;
        *(v8 + 9) = *(v544 + 3);
        *(v8 + 33) = v229;
        v10 = 0uLL;
        *(v8 + 40) = 0u;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0u;
        *(v8 + 15) = 0;
        *(v8 + 16) = v719;
        *(v8 + 17) = v711;
        *(v8 + 18) = v702;
        *(v8 + 19) = v694;
        *(v8 + 20) = v686;
        *(v8 + 21) = v679;
        *(v8 + 22) = v671;
        *(v8 + 23) = v663;
        *(v8 + 24) = v656;
        *(v8 + 25) = v649;
        *(v8 + 26) = v642;
        *(v8 + 27) = v635;
        *(v8 + 28) = v628;
        *(v8 + 29) = v621;
        *(v8 + 30) = v614;
        *(v8 + 31) = v607;
        *(v8 + 32) = v600;
        *(v8 + 33) = v593;
        *(v8 + 34) = v586;
        *(v8 + 35) = v217;
        *(v8 + 36) = v223;
        *(v8 + 37) = v224;
      }
    }

    else
    {
      v726 = v2;
      v23 = *(v0 + 904);
      v24 = *(v0 + 896);
      v25 = *(v731 + 224);
      v26 = type metadata accessor for PDF417ParsedData();
      v27 = *(v26 - 8);
      (*(v27 + 56))(v23, 1, 1, v26);
      v28 = v25[2];
      OS_dispatch_group.wait()();
      v716 = v25[14];

      OS_dispatch_group.wait()();
      v699 = v25[10];
      v708 = v25[11];

      OS_dispatch_group.wait()();
      v684 = v25[15];
      v691 = v25[16];

      OS_dispatch_group.wait()();
      v669 = v25[17];
      v677 = v25[18];

      OS_dispatch_group.wait()();
      v29 = v25[13];
      v654 = v25[12];
      sub_10000BBC4(v23, v24, &qword_10083D6A0, &unk_1006DB700);
      v30 = *(v27 + 48);
      LODWORD(v24) = v30(v24, 1, v26);
      v661 = v29;

      v31 = *(v731 + 896);
      if (v24 == 1)
      {
        sub_10000BE18(*(v731 + 896), &qword_10083D6A0, &unk_1006DB700);
        v640 = 0;
        v647 = 0;
      }

      else
      {
        v46 = PDF417ParsedData.firstName.getter();
        v640 = v47;
        v647 = v46;
        (*(v27 + 8))(v31, v26);
      }

      v48 = *(v731 + 888);
      sub_10000BBC4(*(v731 + 904), v48, &qword_10083D6A0, &unk_1006DB700);
      v49 = v30(v48, 1, v26);
      v50 = *(v731 + 888);
      if (v49 == 1)
      {
        sub_10000BE18(*(v731 + 888), &qword_10083D6A0, &unk_1006DB700);
        v626 = 0;
        v633 = 0;
      }

      else
      {
        v51 = PDF417ParsedData.middleName.getter();
        v626 = v52;
        v633 = v51;
        (*(v27 + 8))(v50, v26);
      }

      v53 = *(v731 + 880);
      sub_10000BBC4(*(v731 + 904), v53, &qword_10083D6A0, &unk_1006DB700);
      v54 = v30(v53, 1, v26);
      v55 = *(v731 + 880);
      if (v54 == 1)
      {
        sub_10000BE18(*(v731 + 880), &qword_10083D6A0, &unk_1006DB700);
        v612 = 0;
        v619 = 0;
      }

      else
      {
        v56 = PDF417ParsedData.lastName.getter();
        v612 = v57;
        v619 = v56;
        (*(v27 + 8))(v55, v26);
      }

      v58 = *(v731 + 872);
      sub_10000BBC4(*(v731 + 904), v58, &qword_10083D6A0, &unk_1006DB700);
      v59 = v30(v58, 1, v26);
      v60 = *(v731 + 872);
      if (v59 == 1)
      {
        sub_10000BE18(*(v731 + 872), &qword_10083D6A0, &unk_1006DB700);
        v605 = 0;
        v598 = 0;
      }

      else
      {
        v605 = PDF417ParsedData.street1.getter();
        v598 = v61;
        (*(v27 + 8))(v60, v26);
      }

      v62 = *(v731 + 864);
      sub_10000BBC4(*(v731 + 904), v62, &qword_10083D6A0, &unk_1006DB700);
      v63 = v30(v62, 1, v26);
      v64 = *(v731 + 864);
      if (v63 == 1)
      {
        sub_10000BE18(*(v731 + 864), &qword_10083D6A0, &unk_1006DB700);
        v584 = 0;
        v591 = 0;
      }

      else
      {
        v65 = PDF417ParsedData.street2.getter();
        v584 = v66;
        v591 = v65;
        (*(v27 + 8))(v64, v26);
      }

      v67 = *(v731 + 856);
      sub_10000BBC4(*(v731 + 904), v67, &qword_10083D6A0, &unk_1006DB700);
      v68 = v30(v67, 1, v26);
      v69 = *(v731 + 856);
      if (v68 == 1)
      {
        sub_10000BE18(*(v731 + 856), &qword_10083D6A0, &unk_1006DB700);
        v572 = 0;
        v578 = 0;
      }

      else
      {
        v70 = PDF417ParsedData.city.getter();
        v572 = v71;
        v578 = v70;
        (*(v27 + 8))(v69, v26);
      }

      v72 = *(v731 + 848);
      sub_10000BBC4(*(v731 + 904), v72, &qword_10083D6A0, &unk_1006DB700);
      v73 = v30(v72, 1, v26);
      v74 = *(v731 + 848);
      if (v73 == 1)
      {
        sub_10000BE18(*(v731 + 848), &qword_10083D6A0, &unk_1006DB700);
        v562 = 0;
        v566 = 0;
      }

      else
      {
        v75 = PDF417ParsedData.state.getter();
        v562 = v76;
        v566 = v75;
        (*(v27 + 8))(v74, v26);
      }

      v77 = *(v731 + 840);
      sub_10000BBC4(*(v731 + 904), v77, &qword_10083D6A0, &unk_1006DB700);
      v78 = v30(v77, 1, v26);
      v79 = *(v731 + 840);
      if (v78 == 1)
      {
        sub_10000BE18(*(v731 + 840), &qword_10083D6A0, &unk_1006DB700);
        v556 = 0;
        v559 = 0;
      }

      else
      {
        v80 = PDF417ParsedData.postalCode.getter();
        v556 = v81;
        v559 = v80;
        (*(v27 + 8))(v79, v26);
      }

      v82 = *(v731 + 832);
      sub_10000BBC4(*(v731 + 904), v82, &qword_10083D6A0, &unk_1006DB700);
      v83 = v30(v82, 1, v26);
      v84 = *(v731 + 832);
      if (v83 == 1)
      {
        sub_10000BE18(*(v731 + 832), &qword_10083D6A0, &unk_1006DB700);
        v550 = 0;
        v553 = 0;
      }

      else
      {
        v85 = PDF417ParsedData.country.getter();
        v550 = v86;
        v553 = v85;
        (*(v27 + 8))(v84, v26);
      }

      v87 = *(v731 + 824);
      sub_10000BBC4(*(v731 + 904), v87, &qword_10083D6A0, &unk_1006DB700);
      v88 = v30(v87, 1, v26);
      v89 = *(v731 + 824);
      if (v88 == 1)
      {
        sub_10000BE18(*(v731 + 824), &qword_10083D6A0, &unk_1006DB700);
        v547 = 0;
        v90 = 0;
      }

      else
      {
        v547 = PDF417ParsedData.dob.getter();
        v90 = v91;
        (*(v27 + 8))(v89, v26);
      }

      v92 = *(v731 + 816);
      sub_10000BBC4(*(v731 + 904), v92, &qword_10083D6A0, &unk_1006DB700);
      v93 = v30(v92, 1, v26);
      v94 = *(v731 + 904);
      v95 = *(v731 + 816);
      if (v93 == 1)
      {
        sub_10000BE18(*(v731 + 904), &qword_10083D6A0, &unk_1006DB700);
        sub_10000BE18(v95, &qword_10083D6A0, &unk_1006DB700);
        v4 = 0;
        v5 = 0;
      }

      else
      {
        v96 = *(v731 + 816);
        v4 = PDF417ParsedData.issuer.getter();
        v5 = v97;
        sub_10000BE18(v94, &qword_10083D6A0, &unk_1006DB700);
        (*(v27 + 8))(v95, v26);
      }

      v2 = v726;
      v7 = *(v726 + 2);
      v6 = *(v726 + 3);
      if (v7 >= v6 >> 1)
      {
        v2 = sub_1003C5D2C((v6 > 1), v7 + 1, 1, v726);
      }

      *(v2 + 2) = v7 + 1;
      v8 = &v2[336 * v7];
      v8[32] = 2;
      v9 = *v538;
      *(v8 + 9) = *(v538 + 3);
      *(v8 + 33) = v9;
      *(v8 + 6) = 0;
      *(v8 + 7) = v716;
      *(v8 + 5) = 0;
      *(v8 + 8) = v699;
      *(v8 + 9) = v708;
      *(v8 + 10) = v684;
      *(v8 + 11) = v691;
      *(v8 + 12) = v669;
      *(v8 + 13) = v677;
      *(v8 + 14) = v654;
      *(v8 + 15) = v661;
      *(v8 + 16) = v647;
      *(v8 + 17) = v640;
      *(v8 + 18) = v633;
      *(v8 + 19) = v626;
      *(v8 + 20) = v619;
      *(v8 + 21) = v612;
      *(v8 + 22) = v605;
      *(v8 + 23) = v598;
      *(v8 + 24) = v591;
      *(v8 + 25) = v584;
      *(v8 + 26) = v578;
      *(v8 + 27) = v572;
      *(v8 + 28) = v566;
      *(v8 + 29) = v562;
      *(v8 + 30) = v559;
      *(v8 + 31) = v556;
      *(v8 + 32) = v553;
      *(v8 + 33) = v550;
      *(v8 + 34) = v547;
      *(v8 + 35) = v90;
      *(v8 + 36) = v4;
      *(v8 + 37) = v5;
      v10 = 0uLL;
    }

    *(v8 + 21) = v10;
    *(v8 + 22) = v10;
    *(v8 + 19) = v10;
    *(v8 + 20) = v10;
LABEL_8:
    v0 = v731;
LABEL_9:
    v3 = *(v0 + 928) + 1;
    if (v3 == *(v0 + 912))
    {
      goto LABEL_225;
    }
  }

  if (v11 == 5)
  {
    v38 = (*(*(v0 + 232) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ);
    v39 = v38[1];
    if (!v39)
    {
      v432 = *(v0 + 304);
      v431 = *(v0 + 312);
      v433 = *(v0 + 296);

      (*(v432 + 104))(v431, enum case for DIPError.Code.passportFailedToGetIDVServerData(_:), v433);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_235;
    }

    v727 = v2;
    v710 = *v38;
    v40 = *(v0 + 616);
    v41 = *(v0 + 608);
    v42 = type metadata accessor for PDF417ParsedData();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v40, 1, 1, v42);
    sub_10000BBC4(v40, v41, &qword_10083D6A0, &unk_1006DB700);
    v44 = *(v43 + 48);
    LODWORD(v41) = v44(v41, 1, v42);
    v718 = v39;

    v45 = *(v0 + 608);
    if (v41 == 1)
    {
      sub_10000BE18(*(v0 + 608), &qword_10083D6A0, &unk_1006DB700);
      v692 = 0;
      v700 = 0;
    }

    else
    {
      v275 = PDF417ParsedData.firstName.getter();
      v692 = v276;
      v700 = v275;
      (*(v43 + 8))(v45, v42);
    }

    v277 = v43;
    v278 = *(v0 + 600);
    sub_10000BBC4(*(v0 + 616), v278, &qword_10083D6A0, &unk_1006DB700);
    v279 = v44(v278, 1, v42);
    v280 = *(v0 + 600);
    if (v279 == 1)
    {
      sub_10000BE18(*(v0 + 600), &qword_10083D6A0, &unk_1006DB700);
      v680 = 0;
      v687 = 0;
    }

    else
    {
      v281 = PDF417ParsedData.middleName.getter();
      v680 = v282;
      v687 = v281;
      (*(v43 + 8))(v280, v42);
    }

    v283 = *(v0 + 592);
    sub_10000BBC4(*(v0 + 616), v283, &qword_10083D6A0, &unk_1006DB700);
    v284 = v44(v283, 1, v42);
    v285 = *(v0 + 592);
    if (v284 == 1)
    {
      sub_10000BE18(*(v0 + 592), &qword_10083D6A0, &unk_1006DB700);
      v665 = 0;
      v673 = 0;
    }

    else
    {
      v286 = PDF417ParsedData.lastName.getter();
      v665 = v287;
      v673 = v286;
      (*(v43 + 8))(v285, v42);
    }

    v288 = *(v0 + 584);
    sub_10000BBC4(*(v0 + 616), v288, &qword_10083D6A0, &unk_1006DB700);
    v289 = v44(v288, 1, v42);
    v290 = *(v0 + 584);
    if (v289 == 1)
    {
      sub_10000BE18(*(v0 + 584), &qword_10083D6A0, &unk_1006DB700);
      v650 = 0;
      v657 = 0;
    }

    else
    {
      v291 = PDF417ParsedData.street1.getter();
      v650 = v292;
      v657 = v291;
      (*(v43 + 8))(v290, v42);
    }

    v293 = *(v0 + 576);
    sub_10000BBC4(*(v0 + 616), v293, &qword_10083D6A0, &unk_1006DB700);
    v294 = v44(v293, 1, v42);
    v295 = *(v0 + 576);
    if (v294 == 1)
    {
      sub_10000BE18(*(v0 + 576), &qword_10083D6A0, &unk_1006DB700);
      v636 = 0;
      v643 = 0;
    }

    else
    {
      v296 = PDF417ParsedData.street2.getter();
      v636 = v297;
      v643 = v296;
      (*(v43 + 8))(v295, v42);
    }

    v298 = *(v0 + 568);
    sub_10000BBC4(*(v0 + 616), v298, &qword_10083D6A0, &unk_1006DB700);
    v299 = v44(v298, 1, v42);
    v300 = *(v0 + 568);
    if (v299 == 1)
    {
      sub_10000BE18(*(v0 + 568), &qword_10083D6A0, &unk_1006DB700);
      v622 = 0;
      v629 = 0;
    }

    else
    {
      v301 = PDF417ParsedData.city.getter();
      v622 = v302;
      v629 = v301;
      (*(v43 + 8))(v300, v42);
    }

    v303 = *(v0 + 560);
    sub_10000BBC4(*(v0 + 616), v303, &qword_10083D6A0, &unk_1006DB700);
    v304 = v44(v303, 1, v42);
    v305 = *(v0 + 560);
    if (v304 == 1)
    {
      sub_10000BE18(*(v0 + 560), &qword_10083D6A0, &unk_1006DB700);
      v608 = 0;
      v615 = 0;
    }

    else
    {
      v306 = PDF417ParsedData.state.getter();
      v608 = v307;
      v615 = v306;
      (*(v43 + 8))(v305, v42);
    }

    v308 = *(v0 + 552);
    sub_10000BBC4(*(v0 + 616), v308, &qword_10083D6A0, &unk_1006DB700);
    v309 = v44(v308, 1, v42);
    v310 = *(v0 + 552);
    if (v309 == 1)
    {
      sub_10000BE18(*(v0 + 552), &qword_10083D6A0, &unk_1006DB700);
      v594 = 0;
      v601 = 0;
    }

    else
    {
      v311 = PDF417ParsedData.postalCode.getter();
      v594 = v312;
      v601 = v311;
      (*(v43 + 8))(v310, v42);
    }

    v313 = *(v0 + 544);
    sub_10000BBC4(*(v0 + 616), v313, &qword_10083D6A0, &unk_1006DB700);
    v314 = v44(v313, 1, v42);
    v315 = *(v0 + 544);
    if (v314 == 1)
    {
      sub_10000BE18(*(v0 + 544), &qword_10083D6A0, &unk_1006DB700);
      v580 = 0;
      v587 = 0;
    }

    else
    {
      v316 = PDF417ParsedData.country.getter();
      v580 = v317;
      v587 = v316;
      (*(v43 + 8))(v315, v42);
    }

    v318 = *(v0 + 536);
    sub_10000BBC4(*(v0 + 616), v318, &qword_10083D6A0, &unk_1006DB700);
    v319 = v44(v318, 1, v42);
    v320 = *(v0 + 536);
    if (v319 == 1)
    {
      sub_10000BE18(*(v0 + 536), &qword_10083D6A0, &unk_1006DB700);
      v568 = 0;
      v574 = 0;
    }

    else
    {
      v321 = PDF417ParsedData.dob.getter();
      v568 = v322;
      v574 = v321;
      (*(v43 + 8))(v320, v42);
    }

    v323 = *(v0 + 528);
    sub_10000BBC4(*(v0 + 616), v323, &qword_10083D6A0, &unk_1006DB700);
    v324 = v44(v323, 1, v42);
    v325 = *(v0 + 616);
    v326 = *(v0 + 528);
    if (v324 == 1)
    {
      sub_10000BE18(*(v0 + 616), &qword_10083D6A0, &unk_1006DB700);
      sub_10000BE18(v326, &qword_10083D6A0, &unk_1006DB700);
      v327 = 0;
      v328 = 0;
    }

    else
    {
      v329 = *(v0 + 528);
      v327 = PDF417ParsedData.issuer.getter();
      v328 = v330;
      sub_10000BE18(v325, &qword_10083D6A0, &unk_1006DB700);
      (*(v277 + 8))(v326, v42);
    }

    v2 = v727;
    v332 = *(v727 + 2);
    v331 = *(v727 + 3);
    if (v332 >= v331 >> 1)
    {
      v2 = sub_1003C5D2C((v331 > 1), v332 + 1, 1, v727);
    }

    *(v2 + 2) = v332 + 1;
    v333 = &v2[336 * v332];
    v333[32] = 0;
    v334 = *v535;
    *(v333 + 9) = *(v535 + 3);
    *(v333 + 33) = v334;
    *(v333 + 40) = 0u;
    *(v333 + 56) = 0u;
    *(v333 + 72) = 0u;
    *(v333 + 88) = 0u;
    *(v333 + 104) = 0u;
    *(v333 + 15) = 0;
    *(v333 + 16) = v700;
    *(v333 + 17) = v692;
    *(v333 + 18) = v687;
    *(v333 + 19) = v680;
    *(v333 + 20) = v673;
    *(v333 + 21) = v665;
    *(v333 + 22) = v657;
    *(v333 + 23) = v650;
    *(v333 + 24) = v643;
    *(v333 + 25) = v636;
    *(v333 + 26) = v629;
    *(v333 + 27) = v622;
    *(v333 + 28) = v615;
    *(v333 + 29) = v608;
    *(v333 + 30) = v601;
    *(v333 + 31) = v594;
    *(v333 + 32) = v587;
    *(v333 + 33) = v580;
    *(v333 + 34) = v574;
    *(v333 + 35) = v568;
    *(v333 + 36) = v327;
    *(v333 + 37) = v328;
    *(v333 + 38) = 0;
    *(v333 + 39) = 0;
    *(v333 + 40) = v710;
    *(v333 + 41) = v718;
    *(v333 + 21) = 0u;
    *(v333 + 22) = 0u;
    goto LABEL_8;
  }

  if (v11 == 6)
  {
    v20 = [objc_opt_self() standardUserDefaults];
    v21._countAndFlagsBits = static SharedInternalDefaultsKeys.skipNFC.getter();
    v22 = NSUserDefaults.internalBool(forKey:)(v21);

    if (v22)
    {
      goto LABEL_9;
    }

    v230 = *(*(*(v0 + 232) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);
    if (!v230)
    {
      v435 = *(v0 + 304);
      v434 = *(v0 + 312);
      v436 = *(v0 + 296);

      (*(v435 + 104))(v434, enum case for DIPError.Code.passportFailedToGetNFCData(_:), v436);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_235:
      v437 = v731;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_238:
      v450 = v437[113];
      v451 = v437[112];
      v452 = v437[111];
      v453 = v437[110];
      v454 = v437[109];
      v455 = v437[108];
      v456 = v437[107];
      v457 = v437[106];
      v458 = v437[105];
      v459 = v437[104];
      v463 = v437[103];
      v465 = v437[102];
      v467 = v437[101];
      v469 = v437[100];
      v471 = v437[99];
      v473 = v437[98];
      v475 = v437[97];
      v477 = v437[96];
      v479 = v437[95];
      v481 = v437[94];
      v483 = v437[93];
      v485 = v437[92];
      v487 = v437[91];
      v489 = v437[90];
      v491 = v437[89];
      v493 = v437[88];
      v495 = v437[87];
      v497 = v437[86];
      v499 = v437[85];
      v501 = v437[84];
      v503 = v437[83];
      v505 = v437[82];
      v507 = v437[81];
      v509 = v437[80];
      v511 = v437[79];
      v513 = v437[78];
      v515 = v437[77];
      v517 = v437[76];
      v519 = v437[75];
      v521 = v437[74];
      v523 = v437[73];
      v525 = v437[72];
      v527 = v437[71];
      v529 = v437[70];
      v532 = v437[69];
      v534 = v437[68];
      v537 = v437[67];
      v540 = v437[66];
      v543 = v437[65];
      v546 = v437[64];
      v549 = v437[63];
      v552 = v437[62];
      v555 = v437[61];
      v558 = v437[60];
      v561 = v437[59];
      v565 = v437[58];
      v571 = v437[57];
      v577 = v437[56];
      v583 = v437[55];
      v590 = v437[54];
      v597 = v437[53];
      v604 = v437[52];
      v611 = v437[51];
      v618 = v437[50];
      v625 = v437[49];
      v632 = v437[48];
      v639 = v437[47];
      v646 = v437[46];
      v653 = v437[45];
      v660 = v437[44];
      v668 = v437[43];
      v676 = v437[42];
      v683 = v437[41];
      v690 = v437[40];
      v698 = v437[39];
      v707 = v437[36];
      v715 = v437[35];
      v724 = v437[34];
      v730 = v437[33];
      v733 = v437[30];

      v460 = v437[1];

      return v460();
    }

    v728 = v2;
    v720 = *(v0 + 1016);
    v703 = *(v0 + 1012);
    v231 = *(v0 + 1008);
    v232 = *(v0 + 280);
    v233 = *(v0 + 288);
    v712 = *(v0 + 272);
    v235 = *(v0 + 248);
    v234 = *(v0 + 256);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v236 = swift_allocObject();
    *(v236 + 16) = xmmword_1006BFF90;
    v237 = *(v234 + 104);
    v237(v233, v231, v235);

    v238 = PassportFields.rawValue.getter();
    v240 = v239;
    v241 = *(v234 + 8);
    v241(v233, v235);
    *(v236 + 32) = v238;
    *(v236 + 40) = v240;
    v237(v232, v703, v235);
    v242 = v232;
    v243 = PassportFields.rawValue.getter();
    v245 = v244;
    v241(v242, v235);
    *(v236 + 48) = v243;
    *(v236 + 56) = v245;
    v237(v712, v720, v235);
    v0 = v731;
    v246 = PassportFields.rawValue.getter();
    v248 = v247;
    v672 = v241;
    v241(v712, v235);
    *(v236 + 64) = v246;
    *(v236 + 72) = v248;
    v249 = sub_100209CC4(v230, v236);

    swift_setDeallocating();
    v250 = *(v236 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v251 = v249 + 8;
    v252 = -1 << *(v249 + 32);
    if (-v252 < 64)
    {
      v253 = ~(-1 << -v252);
    }

    else
    {
      v253 = -1;
    }

    v254 = v253 & v249[8];
    v255 = (63 - v252) >> 6;
    v713 = v249;

    v256 = 0;
    v695 = _swiftEmptyArrayStorage;
    v704 = v249 + 8;
LABEL_138:
    v257 = v256;
    if (!v254)
    {
      goto LABEL_140;
    }

    do
    {
      v256 = v257;
LABEL_143:
      v258 = *(v731 + 256);
      v721 = *(v731 + 248);
      v259 = *(v731 + 240);
      v260 = __clz(__rbit64(v254));
      v254 &= v254 - 1;
      v261 = (v256 << 10) | (16 * v260);
      v262 = (v713[6] + v261);
      v263 = *v262;
      v264 = v262[1];
      v265 = (v713[7] + v261);
      v266 = *v265;
      v267 = v265[1];
      swift_bridgeObjectRetain_n();

      PassportFields.init(rawValue:)();
      if ((*(v258 + 48))(v259, 1, v721) != 1)
      {
        v722 = v266;
        v268 = *(v731 + 264);
        v269 = *(v731 + 248);
        (*(*(v731 + 256) + 32))(v268, *(v731 + 240), v269);
        v270 = PassportFields.assessorFieldName.getter();
        v664 = v271;
        v672(v268, v269);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v695 = sub_1003C5D08(0, v695[2] + 1, 1, v695);
        }

        v251 = v704;
        v273 = v695[2];
        v272 = v695[3];
        if (v273 >= v272 >> 1)
        {
          v695 = sub_1003C5D08((v272 > 1), v273 + 1, 1, v695);
        }

        v695[2] = v273 + 1;
        v274 = &v695[4 * v273];
        v274[4] = v270;
        v274[5] = v664;
        v274[6] = v722;
        v274[7] = v267;
        goto LABEL_138;
      }

      sub_10000BE18(*(v731 + 240), &qword_10083DC38, &unk_1006DB790);

      v257 = v256;
      v251 = v704;
    }

    while (v254);
    while (1)
    {
LABEL_140:
      v256 = v257 + 1;
      if (__OFADD__(v257, 1))
      {
        __break(1u);
        goto LABEL_242;
      }

      if (v256 >= v255)
      {
        break;
      }

      v254 = v251[v256];
      ++v257;
      if (v254)
      {
        goto LABEL_143;
      }
    }

    if (v695[2])
    {
      sub_100007224(&qword_100849420, &qword_1006DA510);
      v335 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v335 = &_swiftEmptyDictionarySingleton;
    }

    *(v731 + 176) = v335;

    sub_100208004(v336, 1, (v731 + 176));

    v337 = *(v731 + 176);
    v338 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v731 + 184) = 0;
    v340 = [v338 dataWithJSONObject:isa options:0 error:v731 + 184];

    v341 = *(v731 + 184);
    if (!v340)
    {
      v438 = *(v731 + 312);
      v439 = *(v731 + 304);
      v440 = *(v731 + 296);
      v441 = v341;

      v442 = _convertNSErrorToError(_:)();

      swift_willThrow();
      _StringGuts.grow(_:)(32);
      *(v731 + 160) = 0;
      *(v731 + 168) = 0xE000000000000000;
      v443._countAndFlagsBits = 0xD00000000000001ELL;
      v443._object = 0x8000000100706D40;
      String.append(_:)(v443);
      *(v731 + 192) = v442;
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      _print_unlocked<A, B>(_:_:)();
      v444 = *(v731 + 160);
      v445 = *(v731 + 168);
      (*(v439 + 104))(v438, enum case for DIPError.Code.passportFailedToGetIDVServerData(_:), v440);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v437 = v731;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      goto LABEL_238;
    }

    v342 = *(v731 + 520);
    v343 = *(v731 + 512);
    v344 = v341;
    v345 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v347 = v346;

    v696 = v347;
    v705 = v345;
    v348 = Data.base64EncodedString(options:)(0);
    v349 = type metadata accessor for PDF417ParsedData();
    v350 = *(v349 - 8);
    (*(v350 + 56))(v342, 1, 1, v349);
    sub_10000BBC4(v342, v343, &qword_10083D6A0, &unk_1006DB700);
    v351 = *(v350 + 48);
    v352 = v351(v343, 1, v349);
    v353 = *(v731 + 512);
    if (v352 == 1)
    {
      sub_10000BE18(*(v731 + 512), &qword_10083D6A0, &unk_1006DB700);
      v681 = 0;
      v688 = 0;
    }

    else
    {
      v354 = PDF417ParsedData.firstName.getter();
      v681 = v355;
      v688 = v354;
      (*(v350 + 8))(v353, v349);
    }

    v356 = *(v731 + 504);
    sub_10000BBC4(*(v731 + 520), v356, &qword_10083D6A0, &unk_1006DB700);
    v357 = v351(v356, 1, v349);
    v358 = *(v731 + 504);
    if (v357 == 1)
    {
      sub_10000BE18(*(v731 + 504), &qword_10083D6A0, &unk_1006DB700);
      v666 = 0;
      v674 = 0;
    }

    else
    {
      v359 = PDF417ParsedData.middleName.getter();
      v666 = v360;
      v674 = v359;
      (*(v350 + 8))(v358, v349);
    }

    v361 = *(v731 + 496);
    sub_10000BBC4(*(v731 + 520), v361, &qword_10083D6A0, &unk_1006DB700);
    v362 = v351(v361, 1, v349);
    v363 = *(v731 + 496);
    if (v362 == 1)
    {
      sub_10000BE18(*(v731 + 496), &qword_10083D6A0, &unk_1006DB700);
      v651 = 0;
      v658 = 0;
    }

    else
    {
      v364 = PDF417ParsedData.lastName.getter();
      v651 = v365;
      v658 = v364;
      (*(v350 + 8))(v363, v349);
    }

    v366 = *(v731 + 488);
    sub_10000BBC4(*(v731 + 520), v366, &qword_10083D6A0, &unk_1006DB700);
    v367 = v351(v366, 1, v349);
    v368 = *(v731 + 488);
    if (v367 == 1)
    {
      sub_10000BE18(*(v731 + 488), &qword_10083D6A0, &unk_1006DB700);
      v637 = 0;
      v644 = 0;
    }

    else
    {
      v369 = PDF417ParsedData.street1.getter();
      v637 = v370;
      v644 = v369;
      (*(v350 + 8))(v368, v349);
    }

    v371 = *(v731 + 480);
    sub_10000BBC4(*(v731 + 520), v371, &qword_10083D6A0, &unk_1006DB700);
    v372 = v351(v371, 1, v349);
    v373 = *(v731 + 480);
    if (v372 == 1)
    {
      sub_10000BE18(*(v731 + 480), &qword_10083D6A0, &unk_1006DB700);
      v623 = 0;
      v630 = 0;
    }

    else
    {
      v374 = PDF417ParsedData.street2.getter();
      v623 = v375;
      v630 = v374;
      (*(v350 + 8))(v373, v349);
    }

    v376 = *(v731 + 472);
    sub_10000BBC4(*(v731 + 520), v376, &qword_10083D6A0, &unk_1006DB700);
    v377 = v351(v376, 1, v349);
    v378 = *(v731 + 472);
    if (v377 == 1)
    {
      sub_10000BE18(*(v731 + 472), &qword_10083D6A0, &unk_1006DB700);
      v609 = 0;
      v616 = 0;
    }

    else
    {
      v379 = PDF417ParsedData.city.getter();
      v609 = v380;
      v616 = v379;
      (*(v350 + 8))(v378, v349);
    }

    v381 = *(v731 + 464);
    sub_10000BBC4(*(v731 + 520), v381, &qword_10083D6A0, &unk_1006DB700);
    v382 = v351(v381, 1, v349);
    v383 = *(v731 + 464);
    if (v382 == 1)
    {
      sub_10000BE18(*(v731 + 464), &qword_10083D6A0, &unk_1006DB700);
      v595 = 0;
      v602 = 0;
    }

    else
    {
      v384 = PDF417ParsedData.state.getter();
      v595 = v385;
      v602 = v384;
      (*(v350 + 8))(v383, v349);
    }

    v386 = *(v731 + 456);
    sub_10000BBC4(*(v731 + 520), v386, &qword_10083D6A0, &unk_1006DB700);
    v387 = v351(v386, 1, v349);
    v388 = *(v731 + 456);
    if (v387 == 1)
    {
      sub_10000BE18(*(v731 + 456), &qword_10083D6A0, &unk_1006DB700);
      v581 = 0;
      v588 = 0;
    }

    else
    {
      v389 = PDF417ParsedData.postalCode.getter();
      v581 = v390;
      v588 = v389;
      (*(v350 + 8))(v388, v349);
    }

    v391 = *(v731 + 448);
    sub_10000BBC4(*(v731 + 520), v391, &qword_10083D6A0, &unk_1006DB700);
    v392 = v351(v391, 1, v349);
    v393 = *(v731 + 448);
    if (v392 == 1)
    {
      sub_10000BE18(*(v731 + 448), &qword_10083D6A0, &unk_1006DB700);
      v569 = 0;
      v575 = 0;
    }

    else
    {
      v394 = PDF417ParsedData.country.getter();
      v569 = v395;
      v575 = v394;
      (*(v350 + 8))(v393, v349);
    }

    v396 = *(v731 + 440);
    sub_10000BBC4(*(v731 + 520), v396, &qword_10083D6A0, &unk_1006DB700);
    v397 = v351(v396, 1, v349);
    v398 = *(v731 + 440);
    if (v397 == 1)
    {
      sub_10000BE18(*(v731 + 440), &qword_10083D6A0, &unk_1006DB700);
      v563 = 0;
      v399 = 0;
    }

    else
    {
      v563 = PDF417ParsedData.dob.getter();
      v399 = v400;
      (*(v350 + 8))(v398, v349);
    }

    v401 = *(v731 + 432);
    sub_10000BBC4(*(v731 + 520), v401, &qword_10083D6A0, &unk_1006DB700);
    v402 = v351(v401, 1, v349);
    v403 = *(v731 + 520);
    v404 = *(v731 + 432);
    if (v402 == 1)
    {
      sub_10000BE18(*(v731 + 520), &qword_10083D6A0, &unk_1006DB700);
      sub_10000BE18(v404, &qword_10083D6A0, &unk_1006DB700);
      v405 = 0;
      v406 = 0;
    }

    else
    {
      v407 = *(v731 + 432);
      v405 = PDF417ParsedData.issuer.getter();
      v406 = v408;
      sub_10000BE18(v403, &qword_10083D6A0, &unk_1006DB700);
      (*(v350 + 8))(v404, v349);
    }

    v2 = v728;
    v410 = *(v728 + 2);
    v409 = *(v728 + 3);
    if (v410 >= v409 >> 1)
    {
      v2 = sub_1003C5D2C((v409 > 1), v410 + 1, 1, v728);
    }

    sub_10000B90C(v705, v696);
    *(v2 + 2) = v410 + 1;
    v411 = &v2[336 * v410];
    v411[32] = 5;
    v412 = *v530;
    *(v411 + 9) = *(v530 + 3);
    *(v411 + 33) = v412;
    *(v411 + 40) = 0u;
    *(v411 + 56) = 0u;
    *(v411 + 72) = 0u;
    *(v411 + 88) = 0u;
    *(v411 + 104) = 0u;
    *(v411 + 15) = 0;
    *(v411 + 16) = v688;
    *(v411 + 17) = v681;
    *(v411 + 18) = v674;
    *(v411 + 19) = v666;
    *(v411 + 20) = v658;
    *(v411 + 21) = v651;
    *(v411 + 22) = v644;
    *(v411 + 23) = v637;
    *(v411 + 24) = v630;
    *(v411 + 25) = v623;
    *(v411 + 26) = v616;
    *(v411 + 27) = v609;
    *(v411 + 28) = v602;
    *(v411 + 29) = v595;
    *(v411 + 30) = v588;
    *(v411 + 31) = v581;
    *(v411 + 32) = v575;
    *(v411 + 33) = v569;
    *(v411 + 34) = v563;
    *(v411 + 35) = v399;
    *(v411 + 36) = v405;
    *(v411 + 37) = v406;
    *(v411 + 19) = 0u;
    *(v411 + 20) = 0u;
    *(v411 + 21) = v348;
    *(v411 + 44) = 0;
    *(v411 + 45) = 0;
    goto LABEL_8;
  }

  if (v11 != 7)
  {
    goto LABEL_9;
  }

  v425 = *(v0 + 216);
  *(v0 + 975) = 0;
  IdentityProofingConfiguration.piiTokenIdentifier.getter();
  if (!v426)
  {
    v447 = *(v0 + 304);
    v446 = *(v0 + 312);
    v448 = *(v0 + 296);
    v449 = *(v0 + 983);

    (*(v447 + 104))(v446, enum case for DIPError.Code.piiTokenIdentifierDoesntExist(_:), v448);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v437 = v731;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001FE434(v449, (v731 + 975));
    goto LABEL_238;
  }

  if (qword_100832C20 != -1)
  {
LABEL_242:
    swift_once();
  }

  v427 = *(qword_100882228 + 16);
  *(v0 + 944) = v427;
  v428 = v427;
  v429 = String._bridgeToObjectiveC()();
  *(v0 + 952) = v429;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10020DE68;
  v430 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100672A4C;
  *(v0 + 104) = &unk_10080AB88;
  *(v0 + 112) = v430;
  [v428 retrievePIITokenFromSyncableKeyStoreForIdentifier:v429 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10020DE68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 960) = v2;
  if (v2)
  {
    v3 = sub_100212094;
  }

  else
  {
    v3 = sub_10020DFA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020DFA4()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);

  v770 = *(v0 + 144);
  v760 = *(v0 + 152);

  *(v0 + 975) = 1;
  v4 = type metadata accessor for PDF417ParsedData();
  v5 = *(v4 - 8);
  v654 = *(v5 + 56);
  v654(v3, 1, 1, v4);
  sub_10000BBC4(v3, v2, &qword_10083D6A0, &unk_1006DB700);
  v6 = *(v5 + 48);
  v7 = v6(v2, 1, v4);
  v8 = *(v0 + 416);
  if (v7 == 1)
  {
    sub_10000BE18(*(v0 + 416), &qword_10083D6A0, &unk_1006DB700);
    v745 = 0;
    v754 = 0;
  }

  else
  {
    v9 = PDF417ParsedData.firstName.getter();
    v745 = v10;
    v754 = v9;
    (*(v5 + 8))(v8, v4);
  }

  v11 = *(v0 + 408);
  sub_10000BBC4(*(v0 + 424), v11, &qword_10083D6A0, &unk_1006DB700);
  v12 = v6(v11, 1, v4);
  v13 = *(v0 + 408);
  if (v12 == 1)
  {
    sub_10000BE18(*(v0 + 408), &qword_10083D6A0, &unk_1006DB700);
    v733 = 0;
    v736 = 0;
  }

  else
  {
    v14 = PDF417ParsedData.middleName.getter();
    v733 = v15;
    v736 = v14;
    (*(v5 + 8))(v13, v4);
  }

  v16 = *(v0 + 400);
  sub_10000BBC4(*(v0 + 424), v16, &qword_10083D6A0, &unk_1006DB700);
  v17 = v6(v16, 1, v4);
  v18 = *(v0 + 400);
  if (v17 == 1)
  {
    sub_10000BE18(*(v0 + 400), &qword_10083D6A0, &unk_1006DB700);
    v727 = 0;
    v730 = 0;
  }

  else
  {
    v19 = PDF417ParsedData.lastName.getter();
    v727 = v20;
    v730 = v19;
    (*(v5 + 8))(v18, v4);
  }

  v21 = *(v0 + 392);
  sub_10000BBC4(*(v0 + 424), v21, &qword_10083D6A0, &unk_1006DB700);
  v22 = v6(v21, 1, v4);
  v23 = *(v0 + 392);
  if (v22 == 1)
  {
    sub_10000BE18(*(v0 + 392), &qword_10083D6A0, &unk_1006DB700);
    v724 = 0;
    v721 = 0;
  }

  else
  {
    v724 = PDF417ParsedData.street1.getter();
    v721 = v24;
    (*(v5 + 8))(v23, v4);
  }

  v25 = *(v0 + 384);
  sub_10000BBC4(*(v0 + 424), v25, &qword_10083D6A0, &unk_1006DB700);
  v26 = v6(v25, 1, v4);
  v27 = *(v0 + 384);
  if (v26 == 1)
  {
    sub_10000BE18(*(v0 + 384), &qword_10083D6A0, &unk_1006DB700);
    v709 = 0;
    v718 = 0;
  }

  else
  {
    v28 = PDF417ParsedData.street2.getter();
    v709 = v29;
    v718 = v28;
    (*(v5 + 8))(v27, v4);
  }

  v30 = *(v0 + 376);
  sub_10000BBC4(*(v0 + 424), v30, &qword_10083D6A0, &unk_1006DB700);
  v31 = v6(v30, 1, v4);
  v32 = *(v0 + 376);
  if (v31 == 1)
  {
    sub_10000BE18(*(v0 + 376), &qword_10083D6A0, &unk_1006DB700);
    v693 = 0;
    v701 = 0;
  }

  else
  {
    v33 = PDF417ParsedData.city.getter();
    v693 = v34;
    v701 = v33;
    (*(v5 + 8))(v32, v4);
  }

  v35 = *(v0 + 368);
  sub_10000BBC4(*(v0 + 424), v35, &qword_10083D6A0, &unk_1006DB700);
  v36 = v6(v35, 1, v4);
  v37 = *(v0 + 368);
  if (v36 == 1)
  {
    sub_10000BE18(*(v0 + 368), &qword_10083D6A0, &unk_1006DB700);
    v676 = 0;
    v684 = 0;
  }

  else
  {
    v38 = PDF417ParsedData.state.getter();
    v676 = v39;
    v684 = v38;
    (*(v5 + 8))(v37, v4);
  }

  v40 = *(v0 + 360);
  sub_10000BBC4(*(v0 + 424), v40, &qword_10083D6A0, &unk_1006DB700);
  v41 = v6(v40, 1, v4);
  v42 = *(v0 + 360);
  if (v41 == 1)
  {
    sub_10000BE18(*(v0 + 360), &qword_10083D6A0, &unk_1006DB700);
    v665 = 0;
    v668 = 0;
  }

  else
  {
    v43 = PDF417ParsedData.postalCode.getter();
    v665 = v44;
    v668 = v43;
    (*(v5 + 8))(v42, v4);
  }

  v45 = *(v0 + 352);
  sub_10000BBC4(*(v0 + 424), v45, &qword_10083D6A0, &unk_1006DB700);
  v46 = v6(v45, 1, v4);
  v47 = *(v0 + 352);
  if (v46 == 1)
  {
    sub_10000BE18(*(v0 + 352), &qword_10083D6A0, &unk_1006DB700);
    v662 = 0;
    v48 = 0;
  }

  else
  {
    v662 = PDF417ParsedData.country.getter();
    v48 = v49;
    (*(v5 + 8))(v47, v4);
  }

  v50 = *(v0 + 344);
  sub_10000BBC4(*(v0 + 424), v50, &qword_10083D6A0, &unk_1006DB700);
  v51 = v6(v50, 1, v4);
  v52 = *(v0 + 344);
  if (v51 == 1)
  {
    sub_10000BE18(v52, &qword_10083D6A0, &unk_1006DB700);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v53 = PDF417ParsedData.dob.getter();
    v54 = v55;
    (*(v5 + 8))(v52, v4);
  }

  v56 = *(v0 + 336);
  sub_10000BBC4(*(v0 + 424), v56, &qword_10083D6A0, &unk_1006DB700);
  v767 = v6;
  v57 = v6(v56, 1, v4);
  v58 = *(v0 + 424);
  v59 = *(v0 + 336);
  v659 = v4;
  if (v57 == 1)
  {
    sub_10000BE18(v58, &qword_10083D6A0, &unk_1006DB700);
    sub_10000BE18(v59, &qword_10083D6A0, &unk_1006DB700);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v62 = v4;
    v60 = PDF417ParsedData.issuer.getter();
    v61 = v63;
    sub_10000BE18(v58, &qword_10083D6A0, &unk_1006DB700);
    (*(v5 + 8))(v59, v62);
  }

  v64 = *(v0 + 936);
  v66 = *(v64 + 2);
  v65 = *(v64 + 3);
  v67 = v66 + 1;
  if (v66 >= v65 >> 1)
  {
LABEL_285:
    v64 = sub_1003C5D2C((v65 > 1), v67, 1, v64);
  }

  v68 = *(v0 + 983);
  *(v64 + 2) = v67;
  v69 = &v64[336 * v66];
  v69[32] = 6;
  *(v69 + 40) = 0u;
  *(v69 + 56) = 0u;
  *(v69 + 72) = 0u;
  *(v69 + 88) = 0u;
  *(v69 + 104) = 0u;
  *(v69 + 15) = 0;
  *(v69 + 16) = v754;
  *(v69 + 17) = v745;
  *(v69 + 18) = v736;
  *(v69 + 19) = v733;
  *(v69 + 20) = v730;
  *(v69 + 21) = v727;
  *(v69 + 22) = v724;
  *(v69 + 23) = v721;
  *(v69 + 24) = v718;
  *(v69 + 25) = v709;
  *(v69 + 26) = v701;
  *(v69 + 27) = v693;
  *(v69 + 28) = v684;
  *(v69 + 29) = v676;
  *(v69 + 30) = v668;
  *(v69 + 31) = v665;
  *(v69 + 32) = v662;
  *(v69 + 33) = v48;
  *(v69 + 34) = v53;
  *(v69 + 35) = v54;
  *(v69 + 36) = v60;
  *(v69 + 37) = v61;
  *(v69 + 20) = 0u;
  *(v69 + 21) = 0u;
  *(v69 + 19) = 0u;
  *(v69 + 44) = v770;
  *(v69 + 45) = v760;
  v70 = v0 + 144;
  sub_1001FE434(v68, (v0 + 975));
  v71 = *(v0 + 912);
  v72 = *(v0 + 928) + 1;
  if (v72 == v71)
  {
    v73 = v64;
LABEL_37:
    v755 = v73;
    v74 = *(v0 + 904);
    v75 = *(v0 + 896);
    v76 = *(v0 + 888);
    v77 = *(v0 + 880);
    v78 = *(v0 + 872);
    v79 = *(v0 + 864);
    v80 = *(v0 + 856);
    v81 = *(v0 + 848);
    v82 = *(v0 + 840);
    v83 = *(v0 + 832);
    v508 = *(v0 + 824);
    v509 = *(v0 + 816);
    v511 = *(v0 + 808);
    v513 = *(v0 + 800);
    v515 = *(v0 + 792);
    v517 = *(v0 + 784);
    v519 = *(v0 + 776);
    v521 = *(v0 + 768);
    v523 = *(v0 + 760);
    v525 = *(v0 + 752);
    v527 = *(v0 + 744);
    v529 = *(v0 + 736);
    v531 = *(v0 + 728);
    v533 = *(v0 + 720);
    v535 = *(v0 + 712);
    v537 = *(v0 + 704);
    v539 = *(v0 + 696);
    v541 = *(v0 + 688);
    v543 = *(v0 + 680);
    v545 = *(v0 + 672);
    v547 = *(v0 + 664);
    v549 = *(v0 + 656);
    v551 = *(v0 + 648);
    v553 = *(v0 + 640);
    v555 = *(v0 + 632);
    v557 = *(v0 + 624);
    v559 = *(v0 + 616);
    v561 = *(v0 + 608);
    v563 = *(v0 + 600);
    v565 = *(v0 + 592);
    v568 = *(v0 + 584);
    v571 = *(v0 + 576);
    v574 = *(v0 + 568);
    v577 = *(v0 + 560);
    v580 = *(v0 + 552);
    v583 = *(v0 + 544);
    v587 = *(v0 + 536);
    v592 = *(v0 + 528);
    v598 = *(v0 + 520);
    v605 = *(v0 + 512);
    v612 = *(v0 + 504);
    v619 = *(v0 + 496);
    v626 = *(v0 + 488);
    v633 = *(v0 + 480);
    v640 = *(v0 + 472);
    v647 = *(v0 + 464);
    v655 = *(v0 + 456);
    v657 = *(v0 + 448);
    v660 = *(v0 + 440);
    v663 = *(v0 + 432);
    v666 = *(v0 + 424);
    v669 = *(v0 + 416);
    v677 = *(v0 + 408);
    v685 = *(v0 + 400);
    v694 = *(v0 + 392);
    v702 = *(v0 + 384);
    v710 = *(v0 + 376);
    v719 = *(v0 + 368);
    v722 = *(v0 + 360);
    v725 = *(v0 + 352);
    v728 = *(v0 + 344);
    v731 = *(v0 + 336);
    v734 = *(v0 + 328);
    v737 = *(v0 + 320);
    v746 = *(v0 + 312);
    v761 = *(v0 + 288);
    v763 = *(v0 + 280);
    v765 = *(v0 + 272);
    v768 = *(v0 + 264);
    v771 = *(v0 + 240);

    v84 = *(v0 + 8);

    return v84(v755);
  }

  v718 = (v0 + 968);
  v733 = (v0 + 984);
  v730 = (v0 + 992);
  v724 = (v0 + 976);
  v727 = (v0 + 1000);
  v86 = *(v0 + 920);
  v87 = (v5 + 8);
  v88 = &_s7CoreIDV49ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifierO20domesticVehicleClassyA2CmFWC_ptr;
  v721 = 3;
  v89 = v767;
  v73 = v64;
  v760 = v87;
LABEL_41:
  v770 = v86;
  while (1)
  {
    while (1)
    {
      *(v0 + 936) = v73;
      *(v0 + 928) = v72;
      *(v0 + 920) = v86;
      v90 = *(*(v0 + 200) + v72 + 32);
      if (v90 > 4)
      {
        break;
      }

      if (*(*(v0 + 200) + v72 + 32))
      {
        if (v90 == 1)
        {
          v107 = *(v0 + 328);
          sub_10000BBC4(*(v0 + 208), v107, &qword_10083D6A8, &qword_1006DB710);
          v108 = type metadata accessor for PDF417Data();
          v109 = *(v108 - 8);
          v110 = (*(v109 + 48))(v107, 1, v108);
          v111 = *(v0 + 328);
          if (v110 == 1)
          {
            sub_10000BE18(*(v0 + 328), &qword_10083D6A8, &qword_1006DB710);
            v748 = 0;
            v757 = 0;
          }

          else
          {
            v242 = PDF417Data.rawData.getter();
            v748 = v243;
            v757 = v242;
            (*(v109 + 8))(v111, v108);
          }

          v244 = *(v0 + 808);
          v245 = *(v0 + 800);
          v654(v244, 1, 1, v659);
          sub_10000BBC4(v244, v245, &qword_10083D6A0, &unk_1006DB700);
          v246 = v89(v245, 1, v659);
          v247 = *(v0 + 800);
          if (v246 == 1)
          {
            sub_10000BE18(*(v0 + 800), &qword_10083D6A0, &unk_1006DB700);
            v741 = 0;
            v714 = 0;
          }

          else
          {
            v741 = PDF417ParsedData.firstName.getter();
            v714 = v248;
            (*v87)(v247, v659);
          }

          v249 = *(v0 + 792);
          sub_10000BBC4(*(v0 + 808), v249, &qword_10083D6A0, &unk_1006DB700);
          v250 = v89(v249, 1, v659);
          v251 = *(v0 + 792);
          if (v250 == 1)
          {
            sub_10000BE18(*(v0 + 792), &qword_10083D6A0, &unk_1006DB700);
            v697 = 0;
            v705 = 0;
          }

          else
          {
            v252 = PDF417ParsedData.middleName.getter();
            v697 = v253;
            v705 = v252;
            (*v87)(v251, v659);
          }

          v254 = *(v0 + 784);
          sub_10000BBC4(*(v0 + 808), v254, &qword_10083D6A0, &unk_1006DB700);
          v255 = v89(v254, 1, v659);
          v256 = *(v0 + 784);
          if (v255 == 1)
          {
            sub_10000BE18(*(v0 + 784), &qword_10083D6A0, &unk_1006DB700);
            v680 = 0;
            v688 = 0;
          }

          else
          {
            v257 = PDF417ParsedData.lastName.getter();
            v680 = v258;
            v688 = v257;
            (*v87)(v256, v659);
          }

          v259 = *(v0 + 776);
          sub_10000BBC4(*(v0 + 808), v259, &qword_10083D6A0, &unk_1006DB700);
          v260 = v89(v259, 1, v659);
          v261 = *(v0 + 776);
          if (v260 == 1)
          {
            sub_10000BE18(*(v0 + 776), &qword_10083D6A0, &unk_1006DB700);
            v665 = 0;
            v672 = 0;
          }

          else
          {
            v262 = PDF417ParsedData.street1.getter();
            v665 = v263;
            v672 = v262;
            (*v87)(v261, v659);
          }

          v264 = *(v0 + 768);
          sub_10000BBC4(*(v0 + 808), v264, &qword_10083D6A0, &unk_1006DB700);
          v265 = v89(v264, 1, v659);
          v266 = *(v0 + 768);
          if (v265 == 1)
          {
            sub_10000BE18(*(v0 + 768), &qword_10083D6A0, &unk_1006DB700);
            v662 = 0;
            v650 = 0;
          }

          else
          {
            v662 = PDF417ParsedData.street2.getter();
            v650 = v267;
            (*v87)(v266, v659);
          }

          v268 = *(v0 + 760);
          sub_10000BBC4(*(v0 + 808), v268, &qword_10083D6A0, &unk_1006DB700);
          v269 = v89(v268, 1, v659);
          v270 = *(v0 + 760);
          if (v269 == 1)
          {
            sub_10000BE18(*(v0 + 760), &qword_10083D6A0, &unk_1006DB700);
            v636 = 0;
            v643 = 0;
          }

          else
          {
            v271 = PDF417ParsedData.city.getter();
            v636 = v272;
            v643 = v271;
            (*v87)(v270, v659);
          }

          v273 = *(v0 + 752);
          sub_10000BBC4(*(v0 + 808), v273, &qword_10083D6A0, &unk_1006DB700);
          v274 = v89(v273, 1, v659);
          v275 = *(v0 + 752);
          if (v274 == 1)
          {
            sub_10000BE18(*(v0 + 752), &qword_10083D6A0, &unk_1006DB700);
            v622 = 0;
            v629 = 0;
          }

          else
          {
            v276 = PDF417ParsedData.state.getter();
            v622 = v277;
            v629 = v276;
            (*v87)(v275, v659);
          }

          v278 = *(v0 + 744);
          sub_10000BBC4(*(v0 + 808), v278, &qword_10083D6A0, &unk_1006DB700);
          v279 = v89(v278, 1, v659);
          v280 = *(v0 + 744);
          if (v279 == 1)
          {
            sub_10000BE18(*(v0 + 744), &qword_10083D6A0, &unk_1006DB700);
            v608 = 0;
            v615 = 0;
          }

          else
          {
            v281 = PDF417ParsedData.postalCode.getter();
            v608 = v282;
            v615 = v281;
            (*v87)(v280, v659);
          }

          v283 = *(v0 + 736);
          sub_10000BBC4(*(v0 + 808), v283, &qword_10083D6A0, &unk_1006DB700);
          v284 = v89(v283, 1, v659);
          v285 = *(v0 + 736);
          if (v284 == 1)
          {
            sub_10000BE18(*(v0 + 736), &qword_10083D6A0, &unk_1006DB700);
            v594 = 0;
            v601 = 0;
          }

          else
          {
            v286 = PDF417ParsedData.country.getter();
            v594 = v287;
            v601 = v286;
            (*v87)(v285, v659);
          }

          v288 = *(v0 + 728);
          sub_10000BBC4(*(v0 + 808), v288, &qword_10083D6A0, &unk_1006DB700);
          v289 = v767(v288, 1, v659);
          v290 = *(v0 + 728);
          v291 = v73;
          if (v289 == 1)
          {
            sub_10000BE18(*(v0 + 728), &qword_10083D6A0, &unk_1006DB700);
            v589 = 0;
            v292 = 0;
          }

          else
          {
            v589 = PDF417ParsedData.dob.getter();
            v292 = v293;
            (*v760)(v290, v659);
          }

          v294 = *(v0 + 720);
          sub_10000BBC4(*(v0 + 808), v294, &qword_10083D6A0, &unk_1006DB700);
          v295 = v767(v294, 1, v659);
          v296 = *(v0 + 808);
          v297 = *(v0 + 720);
          if (v295 == 1)
          {
            sub_10000BE18(*(v0 + 808), &qword_10083D6A0, &unk_1006DB700);
            sub_10000BE18(v297, &qword_10083D6A0, &unk_1006DB700);
            v298 = 0;
            v299 = 0;
          }

          else
          {
            v300 = *(v0 + 720);
            v298 = PDF417ParsedData.issuer.getter();
            v299 = v301;
            sub_10000BE18(v296, &qword_10083D6A0, &unk_1006DB700);
            (*v760)(v297, v659);
          }

          v73 = v291;
          v303 = *(v291 + 2);
          v302 = *(v291 + 3);
          v86 = v770;
          if (v303 >= v302 >> 1)
          {
            v368 = sub_1003C5D2C((v302 > 1), v303 + 1, 1, v291);
            v86 = v770;
            v73 = v368;
          }

          *(v73 + 2) = v303 + 1;
          v239 = &v73[336 * v303];
          v239[32] = 0;
          v304 = *v730;
          *(v239 + 9) = *(v0 + 995);
          *(v239 + 33) = v304;
          *(v239 + 5) = v757;
          *(v239 + 6) = v748;
          v241 = 0uLL;
          *(v239 + 56) = 0u;
          *(v239 + 72) = 0u;
          *(v239 + 88) = 0u;
          *(v239 + 104) = 0u;
          *(v239 + 15) = 0;
          *(v239 + 16) = v741;
          *(v239 + 17) = v714;
          *(v239 + 18) = v705;
          *(v239 + 19) = v697;
          *(v239 + 20) = v688;
          *(v239 + 21) = v680;
          *(v239 + 22) = v672;
          *(v239 + 23) = v665;
          *(v239 + 24) = v662;
          *(v239 + 25) = v650;
          *(v239 + 26) = v643;
          *(v239 + 27) = v636;
          *(v239 + 28) = v629;
          *(v239 + 29) = v622;
          *(v239 + 30) = v615;
          *(v239 + 31) = v608;
          *(v239 + 32) = v601;
          *(v239 + 33) = v594;
          *(v239 + 34) = v589;
          *(v239 + 35) = v292;
          *(v239 + 36) = v298;
          *(v239 + 37) = v299;
        }

        else
        {
          if (v90 != 2)
          {
            goto LABEL_42;
          }

          v95 = *(v0 + 320);
          sub_10000BBC4(*(v0 + 208), v95, &qword_10083D6A8, &qword_1006DB710);
          v96 = type metadata accessor for PDF417Data();
          v97 = *(v96 - 8);
          v98 = (*(v97 + 48))(v95, 1, v96);
          v99 = *(v0 + 712);
          if (v98 == 1)
          {
            sub_10000BE18(*(v0 + 320), &qword_10083D6A8, &qword_1006DB710);
            v100 = v659;
            v654(v99, 1, 1, v659);
          }

          else
          {
            v177 = *(v0 + 712);
            v178 = *(v0 + 320);
            PDF417Data.parsedData.getter();
            (*(v97 + 8))(v178, v96);
            v100 = v659;
          }

          v179 = *(v0 + 704);
          sub_10000BBC4(*(v0 + 712), v179, &qword_10083D6A0, &unk_1006DB700);
          v180 = v89(v179, 1, v100);
          v181 = *(v0 + 704);
          if (v180 == 1)
          {
            sub_10000BE18(*(v0 + 704), &qword_10083D6A0, &unk_1006DB700);
            v750 = 0;
            v758 = 0;
          }

          else
          {
            v182 = PDF417ParsedData.firstName.getter();
            v750 = v183;
            v758 = v182;
            (*v87)(v181, v100);
          }

          v184 = *(v0 + 696);
          sub_10000BBC4(*(v0 + 712), v184, &qword_10083D6A0, &unk_1006DB700);
          v185 = v89(v184, 1, v100);
          v186 = *(v0 + 696);
          if (v185 == 1)
          {
            sub_10000BE18(*(v0 + 696), &qword_10083D6A0, &unk_1006DB700);
            v740 = 0;
            v713 = 0;
          }

          else
          {
            v740 = PDF417ParsedData.middleName.getter();
            v713 = v187;
            (*v87)(v186, v100);
          }

          v188 = *(v0 + 688);
          sub_10000BBC4(*(v0 + 712), v188, &qword_10083D6A0, &unk_1006DB700);
          v189 = v89(v188, 1, v100);
          v190 = *(v0 + 688);
          if (v189 == 1)
          {
            sub_10000BE18(*(v0 + 688), &qword_10083D6A0, &unk_1006DB700);
            v696 = 0;
            v704 = 0;
          }

          else
          {
            v191 = PDF417ParsedData.lastName.getter();
            v696 = v192;
            v704 = v191;
            (*v87)(v190, v100);
          }

          v193 = *(v0 + 680);
          sub_10000BBC4(*(v0 + 712), v193, &qword_10083D6A0, &unk_1006DB700);
          v194 = v89(v193, 1, v100);
          v195 = *(v0 + 680);
          if (v194 == 1)
          {
            sub_10000BE18(*(v0 + 680), &qword_10083D6A0, &unk_1006DB700);
            v679 = 0;
            v687 = 0;
          }

          else
          {
            v196 = PDF417ParsedData.street1.getter();
            v679 = v197;
            v687 = v196;
            (*v87)(v195, v100);
          }

          v198 = *(v0 + 672);
          sub_10000BBC4(*(v0 + 712), v198, &qword_10083D6A0, &unk_1006DB700);
          v199 = v89(v198, 1, v100);
          v200 = *(v0 + 672);
          if (v199 == 1)
          {
            sub_10000BE18(*(v0 + 672), &qword_10083D6A0, &unk_1006DB700);
            v665 = 0;
            v671 = 0;
          }

          else
          {
            v201 = PDF417ParsedData.street2.getter();
            v665 = v202;
            v671 = v201;
            (*v87)(v200, v100);
          }

          v203 = *(v0 + 664);
          sub_10000BBC4(*(v0 + 712), v203, &qword_10083D6A0, &unk_1006DB700);
          v204 = v89(v203, 1, v100);
          v205 = *(v0 + 664);
          if (v204 == 1)
          {
            sub_10000BE18(*(v0 + 664), &qword_10083D6A0, &unk_1006DB700);
            v662 = 0;
            v649 = 0;
          }

          else
          {
            v662 = PDF417ParsedData.city.getter();
            v649 = v206;
            (*v87)(v205, v100);
          }

          v207 = *(v0 + 656);
          sub_10000BBC4(*(v0 + 712), v207, &qword_10083D6A0, &unk_1006DB700);
          v208 = v89(v207, 1, v100);
          v209 = *(v0 + 656);
          if (v208 == 1)
          {
            sub_10000BE18(*(v0 + 656), &qword_10083D6A0, &unk_1006DB700);
            v635 = 0;
            v642 = 0;
          }

          else
          {
            v210 = PDF417ParsedData.state.getter();
            v635 = v211;
            v642 = v210;
            (*v87)(v209, v100);
          }

          v212 = *(v0 + 648);
          sub_10000BBC4(*(v0 + 712), v212, &qword_10083D6A0, &unk_1006DB700);
          v213 = v89(v212, 1, v100);
          v214 = *(v0 + 648);
          if (v213 == 1)
          {
            sub_10000BE18(*(v0 + 648), &qword_10083D6A0, &unk_1006DB700);
            v621 = 0;
            v628 = 0;
          }

          else
          {
            v215 = PDF417ParsedData.postalCode.getter();
            v621 = v216;
            v628 = v215;
            (*v87)(v214, v100);
          }

          v217 = *(v0 + 640);
          sub_10000BBC4(*(v0 + 712), v217, &qword_10083D6A0, &unk_1006DB700);
          v218 = v89(v217, 1, v100);
          v219 = *(v0 + 640);
          if (v218 == 1)
          {
            sub_10000BE18(*(v0 + 640), &qword_10083D6A0, &unk_1006DB700);
            v607 = 0;
            v614 = 0;
          }

          else
          {
            v220 = PDF417ParsedData.country.getter();
            v607 = v221;
            v614 = v220;
            (*v87)(v219, v100);
          }

          v222 = *(v0 + 632);
          sub_10000BBC4(*(v0 + 712), v222, &qword_10083D6A0, &unk_1006DB700);
          v223 = v89(v222, 1, v100);
          v224 = *(v0 + 632);
          v225 = v73;
          if (v223 == 1)
          {
            sub_10000BE18(*(v0 + 632), &qword_10083D6A0, &unk_1006DB700);
            v600 = 0;
            v226 = 0;
          }

          else
          {
            v600 = PDF417ParsedData.dob.getter();
            v226 = v227;
            (*v760)(v224, v100);
          }

          v228 = *(v0 + 624);
          sub_10000BBC4(*(v0 + 712), v228, &qword_10083D6A0, &unk_1006DB700);
          v229 = v767(v228, 1, v100);
          v230 = *(v0 + 712);
          v231 = *(v0 + 624);
          if (v229 == 1)
          {
            sub_10000BE18(*(v0 + 712), &qword_10083D6A0, &unk_1006DB700);
            sub_10000BE18(v231, &qword_10083D6A0, &unk_1006DB700);
            v232 = 0;
            v233 = 0;
          }

          else
          {
            v234 = v100;
            v235 = *(v0 + 624);
            v232 = PDF417ParsedData.issuer.getter();
            v233 = v236;
            sub_10000BE18(v230, &qword_10083D6A0, &unk_1006DB700);
            (*v760)(v231, v234);
          }

          v73 = v225;
          v238 = *(v225 + 2);
          v237 = *(v225 + 3);
          v86 = v770;
          if (v238 >= v237 >> 1)
          {
            v367 = sub_1003C5D2C((v237 > 1), v238 + 1, 1, v225);
            v86 = v770;
            v73 = v367;
          }

          *(v73 + 2) = v238 + 1;
          v239 = &v73[336 * v238];
          v239[32] = 0;
          v240 = *v733;
          *(v239 + 9) = *(v0 + 987);
          *(v239 + 33) = v240;
          v241 = 0uLL;
          *(v239 + 40) = 0u;
          *(v239 + 56) = 0u;
          *(v239 + 72) = 0u;
          *(v239 + 88) = 0u;
          *(v239 + 104) = 0u;
          *(v239 + 15) = 0;
          *(v239 + 16) = v758;
          *(v239 + 17) = v750;
          *(v239 + 18) = v740;
          *(v239 + 19) = v713;
          *(v239 + 20) = v704;
          *(v239 + 21) = v696;
          *(v239 + 22) = v687;
          *(v239 + 23) = v679;
          *(v239 + 24) = v671;
          *(v239 + 25) = v665;
          *(v239 + 26) = v662;
          *(v239 + 27) = v649;
          *(v239 + 28) = v642;
          *(v239 + 29) = v635;
          *(v239 + 30) = v628;
          *(v239 + 31) = v621;
          *(v239 + 32) = v614;
          *(v239 + 33) = v607;
          *(v239 + 34) = v600;
          *(v239 + 35) = v226;
          *(v239 + 36) = v232;
          *(v239 + 37) = v233;
        }

        *(v239 + 21) = v241;
        *(v239 + 22) = v241;
        *(v239 + 19) = v241;
        *(v239 + 20) = v241;
        v87 = v760;
      }

      else
      {
        v756 = v73;
        v101 = *(v0 + 904);
        v102 = *(v0 + 896);
        v103 = *(v0 + 224);
        v654(v101, 1, 1, v659);
        v104 = v103[2];
        OS_dispatch_group.wait()();
        v747 = v103[14];

        OS_dispatch_group.wait()();
        v711 = v103[10];
        v738 = v103[11];

        OS_dispatch_group.wait()();
        v695 = v103[15];
        v703 = v103[16];

        OS_dispatch_group.wait()();
        v678 = v103[17];
        v686 = v103[18];

        OS_dispatch_group.wait()();
        v105 = v103[13];
        v665 = v103[12];
        sub_10000BBC4(v101, v102, &qword_10083D6A0, &unk_1006DB700);
        LODWORD(v102) = v89(v102, 1, v659);
        v670 = v105;

        v106 = *(v0 + 896);
        if (v102 == 1)
        {
          sub_10000BE18(*(v0 + 896), &qword_10083D6A0, &unk_1006DB700);
          v662 = 0;
          v648 = 0;
        }

        else
        {
          v662 = PDF417ParsedData.firstName.getter();
          v648 = v117;
          (*v760)(v106, v659);
        }

        v118 = *(v0 + 888);
        sub_10000BBC4(*(v0 + 904), v118, &qword_10083D6A0, &unk_1006DB700);
        v119 = v89(v118, 1, v659);
        v120 = *(v0 + 888);
        if (v119 == 1)
        {
          sub_10000BE18(*(v0 + 888), &qword_10083D6A0, &unk_1006DB700);
          v634 = 0;
          v641 = 0;
          v121 = v760;
        }

        else
        {
          v122 = PDF417ParsedData.middleName.getter();
          v634 = v123;
          v641 = v122;
          v121 = v760;
          (*v760)(v120, v659);
        }

        v124 = *(v0 + 880);
        sub_10000BBC4(*(v0 + 904), v124, &qword_10083D6A0, &unk_1006DB700);
        v125 = v89(v124, 1, v659);
        v126 = *(v0 + 880);
        if (v125 == 1)
        {
          sub_10000BE18(*(v0 + 880), &qword_10083D6A0, &unk_1006DB700);
          v620 = 0;
          v627 = 0;
        }

        else
        {
          v127 = PDF417ParsedData.lastName.getter();
          v620 = v128;
          v627 = v127;
          (*v121)(v126, v659);
        }

        v129 = *(v0 + 872);
        sub_10000BBC4(*(v0 + 904), v129, &qword_10083D6A0, &unk_1006DB700);
        v130 = v89(v129, 1, v659);
        v131 = *(v0 + 872);
        if (v130 == 1)
        {
          sub_10000BE18(*(v0 + 872), &qword_10083D6A0, &unk_1006DB700);
          v606 = 0;
          v613 = 0;
        }

        else
        {
          v132 = PDF417ParsedData.street1.getter();
          v606 = v133;
          v613 = v132;
          (*v121)(v131, v659);
        }

        v134 = *(v0 + 864);
        sub_10000BBC4(*(v0 + 904), v134, &qword_10083D6A0, &unk_1006DB700);
        v135 = v89(v134, 1, v659);
        v136 = *(v0 + 864);
        if (v135 == 1)
        {
          sub_10000BE18(*(v0 + 864), &qword_10083D6A0, &unk_1006DB700);
          v593 = 0;
          v599 = 0;
        }

        else
        {
          v137 = PDF417ParsedData.street2.getter();
          v593 = v138;
          v599 = v137;
          (*v121)(v136, v659);
        }

        v139 = *(v0 + 856);
        sub_10000BBC4(*(v0 + 904), v139, &qword_10083D6A0, &unk_1006DB700);
        v140 = v89(v139, 1, v659);
        v141 = *(v0 + 856);
        if (v140 == 1)
        {
          sub_10000BE18(*(v0 + 856), &qword_10083D6A0, &unk_1006DB700);
          v584 = 0;
          v588 = 0;
        }

        else
        {
          v142 = PDF417ParsedData.city.getter();
          v584 = v143;
          v588 = v142;
          (*v121)(v141, v659);
        }

        v144 = *(v0 + 848);
        sub_10000BBC4(*(v0 + 904), v144, &qword_10083D6A0, &unk_1006DB700);
        v145 = v89(v144, 1, v659);
        v146 = *(v0 + 848);
        if (v145 == 1)
        {
          sub_10000BE18(*(v0 + 848), &qword_10083D6A0, &unk_1006DB700);
          v578 = 0;
          v581 = 0;
        }

        else
        {
          v147 = PDF417ParsedData.state.getter();
          v578 = v148;
          v581 = v147;
          (*v121)(v146, v659);
        }

        v149 = *(v0 + 840);
        sub_10000BBC4(*(v0 + 904), v149, &qword_10083D6A0, &unk_1006DB700);
        v150 = v89(v149, 1, v659);
        v151 = *(v0 + 840);
        if (v150 == 1)
        {
          sub_10000BE18(*(v0 + 840), &qword_10083D6A0, &unk_1006DB700);
          v572 = 0;
          v575 = 0;
        }

        else
        {
          v152 = PDF417ParsedData.postalCode.getter();
          v572 = v153;
          v575 = v152;
          (*v121)(v151, v659);
        }

        v154 = *(v0 + 832);
        sub_10000BBC4(*(v0 + 904), v154, &qword_10083D6A0, &unk_1006DB700);
        v155 = v89(v154, 1, v659);
        v156 = *(v0 + 832);
        if (v155 == 1)
        {
          sub_10000BE18(*(v0 + 832), &qword_10083D6A0, &unk_1006DB700);
          v566 = 0;
          v569 = 0;
        }

        else
        {
          v157 = PDF417ParsedData.country.getter();
          v566 = v158;
          v569 = v157;
          (*v121)(v156, v659);
        }

        v159 = *(v0 + 824);
        sub_10000BBC4(*(v0 + 904), v159, &qword_10083D6A0, &unk_1006DB700);
        v160 = v767(v159, 1, v659);
        v161 = *(v0 + 824);
        if (v160 == 1)
        {
          sub_10000BE18(*(v0 + 824), &qword_10083D6A0, &unk_1006DB700);
          v162 = 0;
          v163 = 0;
        }

        else
        {
          v162 = PDF417ParsedData.dob.getter();
          v163 = v164;
          (*v760)(v161, v659);
        }

        v165 = *(v0 + 816);
        sub_10000BBC4(*(v0 + 904), v165, &qword_10083D6A0, &unk_1006DB700);
        v166 = v767(v165, 1, v659);
        v167 = *(v0 + 904);
        v168 = *(v0 + 816);
        if (v166 == 1)
        {
          sub_10000BE18(*(v0 + 904), &qword_10083D6A0, &unk_1006DB700);
          sub_10000BE18(v168, &qword_10083D6A0, &unk_1006DB700);
          v169 = 0;
          v170 = 0;
        }

        else
        {
          v171 = *(v0 + 816);
          v169 = PDF417ParsedData.issuer.getter();
          v170 = v172;
          sub_10000BE18(v167, &qword_10083D6A0, &unk_1006DB700);
          (*v760)(v168, v659);
        }

        v174 = *(v73 + 2);
        v173 = *(v73 + 3);
        v86 = v770;
        if (v174 >= v173 >> 1)
        {
          v366 = sub_1003C5D2C((v173 > 1), v174 + 1, 1, v73);
          v86 = v770;
          v756 = v366;
        }

        v73 = v756;
        *(v756 + 2) = v174 + 1;
        v175 = &v756[336 * v174];
        v175[32] = 2;
        v176 = *v727;
        *(v175 + 9) = *(v0 + 1003);
        *(v175 + 33) = v176;
        *(v175 + 6) = 0;
        *(v175 + 7) = v747;
        *(v175 + 5) = 0;
        *(v175 + 8) = v711;
        *(v175 + 9) = v738;
        *(v175 + 10) = v695;
        *(v175 + 11) = v703;
        *(v175 + 12) = v678;
        *(v175 + 13) = v686;
        *(v175 + 14) = v665;
        *(v175 + 15) = v670;
        *(v175 + 16) = v662;
        *(v175 + 17) = v648;
        *(v175 + 18) = v641;
        *(v175 + 19) = v634;
        *(v175 + 20) = v627;
        *(v175 + 21) = v620;
        *(v175 + 22) = v613;
        *(v175 + 23) = v606;
        *(v175 + 24) = v599;
        *(v175 + 25) = v593;
        *(v175 + 26) = v588;
        *(v175 + 27) = v584;
        *(v175 + 28) = v581;
        *(v175 + 29) = v578;
        *(v175 + 30) = v575;
        *(v175 + 31) = v572;
        *(v175 + 32) = v569;
        *(v175 + 33) = v566;
        *(v175 + 34) = v162;
        *(v175 + 35) = v163;
        *(v175 + 36) = v169;
        *(v175 + 37) = v170;
        *(v175 + 21) = 0u;
        *(v175 + 22) = 0u;
        *(v175 + 19) = 0u;
        *(v175 + 20) = 0u;
        v87 = v760;
      }

LABEL_205:
      v71 = *(v0 + 912);
      v72 = *(v0 + 928) + 1;
      v70 = v0 + 144;
      v89 = v767;
      v88 = &_s7CoreIDV49ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifierO20domesticVehicleClassyA2CmFWC_ptr;
      if (v72 == v71)
      {
        goto LABEL_37;
      }
    }

    if (v90 != 6)
    {
      break;
    }

    v91 = v88[208];
    v92 = [objc_opt_self() standardUserDefaults];
    v93._countAndFlagsBits = static SharedInternalDefaultsKeys.skipNFC.getter();
    v94 = NSUserDefaults.internalBool(forKey:)(v93);

    if (!v94)
    {
      v369 = *(*(*(v0 + 232) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);
      if (!v369)
      {
        v498 = *(v0 + 304);
        v497 = *(v0 + 312);
        v499 = *(v0 + 296);

        (*(v498 + 104))(v497, enum case for DIPError.Code.passportFailedToGetNFCData(_:), v499);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
LABEL_279:
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
LABEL_274:
        v483 = *(v0 + 904);
        v484 = *(v0 + 896);
        v485 = *(v0 + 888);
        v486 = *(v0 + 880);
        v487 = *(v0 + 872);
        v488 = *(v0 + 864);
        v489 = *(v0 + 856);
        v490 = *(v0 + 848);
        v491 = *(v0 + 840);
        v492 = *(v0 + 832);
        v510 = *(v0 + 824);
        v512 = *(v0 + 816);
        v514 = *(v0 + 808);
        v516 = *(v0 + 800);
        v518 = *(v0 + 792);
        v520 = *(v0 + 784);
        v522 = *(v0 + 776);
        v524 = *(v0 + 768);
        v526 = *(v0 + 760);
        v528 = *(v0 + 752);
        v530 = *(v0 + 744);
        v532 = *(v0 + 736);
        v534 = *(v0 + 728);
        v536 = *(v0 + 720);
        v538 = *(v0 + 712);
        v540 = *(v0 + 704);
        v542 = *(v0 + 696);
        v544 = *(v0 + 688);
        v546 = *(v0 + 680);
        v548 = *(v0 + 672);
        v550 = *(v0 + 664);
        v552 = *(v0 + 656);
        v554 = *(v0 + 648);
        v556 = *(v0 + 640);
        v558 = *(v0 + 632);
        v560 = *(v0 + 624);
        v562 = *(v0 + 616);
        v564 = *(v0 + 608);
        v567 = *(v0 + 600);
        v570 = *(v0 + 592);
        v573 = *(v0 + 584);
        v576 = *(v0 + 576);
        v579 = *(v0 + 568);
        v582 = *(v0 + 560);
        v586 = *(v0 + 552);
        v591 = *(v0 + 544);
        v597 = *(v0 + 536);
        v604 = *(v0 + 528);
        v611 = *(v0 + 520);
        v618 = *(v0 + 512);
        v625 = *(v0 + 504);
        v632 = *(v0 + 496);
        v639 = *(v0 + 488);
        v646 = *(v0 + 480);
        v653 = *(v0 + 472);
        v656 = *(v0 + 464);
        v658 = *(v0 + 456);
        v661 = *(v0 + 448);
        v664 = *(v0 + 440);
        v667 = *(v0 + 432);
        v675 = *(v0 + 424);
        v683 = *(v0 + 416);
        v692 = *(v0 + 408);
        v700 = *(v0 + 400);
        v708 = *(v0 + 392);
        v717 = *(v0 + 384);
        v720 = *(v0 + 376);
        v723 = *(v0 + 368);
        v726 = *(v0 + 360);
        v729 = *(v0 + 352);
        v732 = *(v0 + 344);
        v735 = *(v0 + 336);
        v744 = *(v0 + 328);
        v753 = *(v0 + 320);
        v759 = *(v0 + 312);
        v762 = *(v0 + 288);
        v764 = *(v0 + 280);
        v766 = *(v0 + 272);
        v769 = *(v0 + 264);
        v772 = *(v0 + 240);

        v493 = *(v0 + 8);

        return v493();
      }

      v754 = v73;
      v751 = *(v0 + 1016);
      v715 = *(v0 + 1012);
      v370 = *(v0 + 1008);
      v371 = *(v0 + 288);
      v690 = *(v0 + 280);
      v742 = *(v0 + 272);
      v372 = *(v0 + 248);
      v373 = *(v0 + 256);
      sub_100007224(&qword_100833B78, &unk_1006D9F00);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1006BFF90;
      v374 = *(v373 + 104);
      v374(v371, v370, v372);

      v375 = PassportFields.rawValue.getter();
      v377 = v376;
      v701 = v369;
      v378 = *(v373 + 8);
      v5 = v373 + 8;
      v378(v371, v372);
      *(v60 + 32) = v375;
      v693 = v60 + 32;
      *(v60 + 40) = v377;
      v374(v690, v715, v372);
      v48 = v374;
      v379 = PassportFields.rawValue.getter();
      v381 = v380;
      v378(v690, v372);
      *(v60 + 48) = v379;
      *(v60 + 56) = v381;
      v374(v742, v751, v372);
      v382 = PassportFields.rawValue.getter();
      v384 = v383;
      v668 = v378;
      v676 = v5;
      v378(v742, v372);
      *(v60 + 64) = v382;
      *(v60 + 72) = v384;
      v64 = v369;
      v67 = sub_100209CC4(v369, v60);
      v684 = v770;

      swift_setDeallocating();
      v385 = *(v60 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v61 = v67 + 64;
      v386 = -1 << *(v67 + 32);
      if (-v386 < 64)
      {
        v387 = ~(-1 << -v386);
      }

      else
      {
        v387 = -1;
      }

      v66 = v387 & *(v67 + 64);
      v53 = (63 - v386) >> 6;
      v745 = v67;

      v54 = 0;
      v709 = _swiftEmptyArrayStorage;
      v736 = v67 + 64;
LABEL_212:
      v65 = v54;
      if (!v66)
      {
        goto LABEL_214;
      }

      do
      {
        v54 = v65;
LABEL_217:
        v388 = *(v0 + 256);
        v770 = *(v0 + 248);
        v48 = *(v0 + 240);
        v389 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v390 = (v54 << 10) | (16 * v389);
        v391 = (*(v745 + 48) + v390);
        v5 = *v391;
        v64 = v391[1];
        v392 = (*(v745 + 56) + v390);
        v393 = *v392;
        v60 = v392[1];
        swift_bridgeObjectRetain_n();

        PassportFields.init(rawValue:)();
        v394 = *(v388 + 48);
        v67 = v388 + 48;
        if (v394(v48, 1, v770) != 1)
        {
          v770 = v393;
          v395 = *(v0 + 264);
          v396 = *(v0 + 248);
          (*(*(v0 + 256) + 32))(v395, *(v0 + 240), v396);
          v67 = PassportFields.assessorFieldName.getter();
          v701 = v397;
          v668(v395, v396);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v709 = sub_1003C5D08(0, v709[2] + 1, 1, v709);
          }

          v5 = v393;
          v61 = v736;
          v48 = v709[2];
          v398 = v709[3];
          v64 = (v48 + 1);
          if (v48 >= v398 >> 1)
          {
            v709 = sub_1003C5D08((v398 > 1), v48 + 1, 1, v709);
          }

          v709[2] = v64;
          v399 = &v709[4 * v48];
          v399[4] = v67;
          v399[5] = v701;
          v399[6] = v770;
          v399[7] = v60;
          goto LABEL_212;
        }

        sub_10000BE18(*(v0 + 240), &qword_10083DC38, &unk_1006DB790);

        v65 = v54;
        v61 = v736;
      }

      while (v66);
      while (1)
      {
LABEL_214:
        v54 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_285;
        }

        if (v54 >= v53)
        {
          break;
        }

        v66 = *(v61 + 8 * v54);
        ++v65;
        if (v66)
        {
          goto LABEL_217;
        }
      }

      if (v709[2])
      {
        sub_100007224(&qword_100849420, &qword_1006DA510);
        v400 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v400 = &_swiftEmptyDictionarySingleton;
      }

      *(v0 + 176) = v400;

      sub_100208004(v401, 1, (v0 + 176));
      if (v684)
      {

        return _swift_unexpectedError(v684, "Swift/Dictionary.swift", 22, 1, 490);
      }

      v402 = *(v0 + 176);
      v403 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 184) = 0;
      v405 = [v403 dataWithJSONObject:isa options:0 error:v0 + 184];

      v406 = *(v0 + 184);
      if (!v405)
      {
        v501 = *(v0 + 304);
        v500 = *(v0 + 312);
        v502 = *(v0 + 296);
        v503 = v406;

        v504 = _convertNSErrorToError(_:)();

        swift_willThrow();
        _StringGuts.grow(_:)(32);
        *(v0 + 160) = 0;
        *(v0 + 168) = 0xE000000000000000;
        v505._countAndFlagsBits = 0xD00000000000001ELL;
        v505._object = 0x8000000100706D40;
        String.append(_:)(v505);
        *(v0 + 192) = v504;
        sub_100007224(&qword_100833B90, &qword_1006D95C0);
        _print_unlocked<A, B>(_:_:)();
        v506 = *(v0 + 160);
        v507 = *(v0 + 168);
        (*(v501 + 104))(v500, enum case for DIPError.Code.passportFailedToGetIDVServerData(_:), v502);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        goto LABEL_274;
      }

      v407 = *(v0 + 520);
      v408 = *(v0 + 512);
      v409 = v406;
      v410 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v412 = v411;

      v752 = v412;
      v413 = Data.base64EncodedString(options:)(0);
      v654(v407, 1, 1, v659);
      sub_10000BBC4(v407, v408, &qword_10083D6A0, &unk_1006DB700);
      v414 = v767(v408, 1, v659);
      v415 = *(v0 + 512);
      if (v414 == 1)
      {
        sub_10000BE18(*(v0 + 512), &qword_10083D6A0, &unk_1006DB700);
        v743 = 0;
        v716 = 0;
      }

      else
      {
        v743 = PDF417ParsedData.firstName.getter();
        v716 = v416;
        (*v760)(v415, v659);
      }

      v417 = *(v0 + 504);
      sub_10000BBC4(*(v0 + 520), v417, &qword_10083D6A0, &unk_1006DB700);
      v418 = v767(v417, 1, v659);
      v419 = *(v0 + 504);
      if (v418 == 1)
      {
        sub_10000BE18(*(v0 + 504), &qword_10083D6A0, &unk_1006DB700);
        v699 = 0;
        v707 = 0;
      }

      else
      {
        v420 = PDF417ParsedData.middleName.getter();
        v699 = v421;
        v707 = v420;
        (*v760)(v419, v659);
      }

      v422 = *(v0 + 496);
      sub_10000BBC4(*(v0 + 520), v422, &qword_10083D6A0, &unk_1006DB700);
      v423 = v767(v422, 1, v659);
      v424 = *(v0 + 496);
      if (v423 == 1)
      {
        sub_10000BE18(*(v0 + 496), &qword_10083D6A0, &unk_1006DB700);
        v682 = 0;
        v691 = 0;
      }

      else
      {
        v425 = PDF417ParsedData.lastName.getter();
        v682 = v426;
        v691 = v425;
        (*v760)(v424, v659);
      }

      v427 = *(v0 + 488);
      sub_10000BBC4(*(v0 + 520), v427, &qword_10083D6A0, &unk_1006DB700);
      v428 = v767(v427, 1, v659);
      v429 = *(v0 + 488);
      if (v428 == 1)
      {
        sub_10000BE18(*(v0 + 488), &qword_10083D6A0, &unk_1006DB700);
        v665 = 0;
        v674 = 0;
      }

      else
      {
        v430 = PDF417ParsedData.street1.getter();
        v665 = v431;
        v674 = v430;
        (*v760)(v429, v659);
      }

      v432 = *(v0 + 480);
      sub_10000BBC4(*(v0 + 520), v432, &qword_10083D6A0, &unk_1006DB700);
      v433 = v767(v432, 1, v659);
      v434 = *(v0 + 480);
      if (v433 == 1)
      {
        sub_10000BE18(*(v0 + 480), &qword_10083D6A0, &unk_1006DB700);
        v662 = 0;
        v652 = 0;
      }

      else
      {
        v662 = PDF417ParsedData.street2.getter();
        v652 = v435;
        (*v760)(v434, v659);
      }

      v436 = *(v0 + 472);
      sub_10000BBC4(*(v0 + 520), v436, &qword_10083D6A0, &unk_1006DB700);
      v437 = v767(v436, 1, v659);
      v438 = *(v0 + 472);
      if (v437 == 1)
      {
        sub_10000BE18(*(v0 + 472), &qword_10083D6A0, &unk_1006DB700);
        v638 = 0;
        v645 = 0;
      }

      else
      {
        v439 = PDF417ParsedData.city.getter();
        v638 = v440;
        v645 = v439;
        (*v760)(v438, v659);
      }

      v441 = *(v0 + 464);
      sub_10000BBC4(*(v0 + 520), v441, &qword_10083D6A0, &unk_1006DB700);
      v442 = v767(v441, 1, v659);
      v443 = *(v0 + 464);
      if (v442 == 1)
      {
        sub_10000BE18(*(v0 + 464), &qword_10083D6A0, &unk_1006DB700);
        v624 = 0;
        v631 = 0;
      }

      else
      {
        v444 = PDF417ParsedData.state.getter();
        v624 = v445;
        v631 = v444;
        (*v760)(v443, v659);
      }

      v446 = *(v0 + 456);
      sub_10000BBC4(*(v0 + 520), v446, &qword_10083D6A0, &unk_1006DB700);
      v447 = v767(v446, 1, v659);
      v448 = *(v0 + 456);
      if (v447 == 1)
      {
        sub_10000BE18(*(v0 + 456), &qword_10083D6A0, &unk_1006DB700);
        v610 = 0;
        v617 = 0;
      }

      else
      {
        v449 = PDF417ParsedData.postalCode.getter();
        v610 = v450;
        v617 = v449;
        (*v760)(v448, v659);
      }

      v451 = *(v0 + 448);
      sub_10000BBC4(*(v0 + 520), v451, &qword_10083D6A0, &unk_1006DB700);
      v452 = v767(v451, 1, v659);
      v453 = *(v0 + 448);
      if (v452 == 1)
      {
        sub_10000BE18(*(v0 + 448), &qword_10083D6A0, &unk_1006DB700);
        v596 = 0;
        v603 = 0;
      }

      else
      {
        v454 = PDF417ParsedData.country.getter();
        v596 = v455;
        v603 = v454;
        (*v760)(v453, v659);
      }

      v456 = *(v0 + 440);
      sub_10000BBC4(*(v0 + 520), v456, &qword_10083D6A0, &unk_1006DB700);
      v457 = v767(v456, 1, v659);
      v458 = *(v0 + 440);
      if (v457 == 1)
      {
        sub_10000BE18(*(v0 + 440), &qword_10083D6A0, &unk_1006DB700);
        v585 = 0;
        v590 = 0;
      }

      else
      {
        v459 = PDF417ParsedData.dob.getter();
        v585 = v460;
        v590 = v459;
        (*v760)(v458, v659);
      }

      v461 = *(v0 + 432);
      sub_10000BBC4(*(v0 + 520), v461, &qword_10083D6A0, &unk_1006DB700);
      v462 = v767(v461, 1, v659);
      v463 = *(v0 + 520);
      v464 = *(v0 + 432);
      if (v462 == 1)
      {
        sub_10000BE18(*(v0 + 520), &qword_10083D6A0, &unk_1006DB700);
        sub_10000BE18(v464, &qword_10083D6A0, &unk_1006DB700);
        v465 = 0;
        v466 = 0;
      }

      else
      {
        v467 = *(v0 + 432);
        v465 = PDF417ParsedData.issuer.getter();
        v466 = v468;
        sub_10000BE18(v463, &qword_10083D6A0, &unk_1006DB700);
        (*v760)(v464, v659);
      }

      v73 = v754;
      v470 = *(v754 + 16);
      v469 = *(v754 + 24);
      if (v470 >= v469 >> 1)
      {
        v73 = sub_1003C5D2C((v469 > 1), v470 + 1, 1, v754);
      }

      sub_10000B90C(v410, v752);
      v86 = 0;
      *(v73 + 2) = v470 + 1;
      v471 = &v73[336 * v470];
      v471[32] = 5;
      v472 = *v718;
      *(v471 + 9) = *(v0 + 971);
      *(v471 + 33) = v472;
      *(v471 + 40) = 0u;
      *(v471 + 56) = 0u;
      *(v471 + 72) = 0u;
      *(v471 + 88) = 0u;
      *(v471 + 104) = 0u;
      *(v471 + 15) = 0;
      *(v471 + 16) = v743;
      *(v471 + 17) = v716;
      *(v471 + 18) = v707;
      *(v471 + 19) = v699;
      *(v471 + 20) = v691;
      *(v471 + 21) = v682;
      *(v471 + 22) = v674;
      *(v471 + 23) = v665;
      *(v471 + 24) = v662;
      *(v471 + 25) = v652;
      *(v471 + 26) = v645;
      *(v471 + 27) = v638;
      *(v471 + 28) = v631;
      *(v471 + 29) = v624;
      *(v471 + 30) = v617;
      *(v471 + 31) = v610;
      *(v471 + 32) = v603;
      *(v471 + 33) = v596;
      *(v471 + 34) = v590;
      *(v471 + 35) = v585;
      *(v471 + 36) = v465;
      *(v471 + 37) = v466;
      *(v471 + 19) = 0u;
      *(v471 + 20) = 0u;
      *(v471 + 21) = v413;
      *(v471 + 44) = 0;
      *(v471 + 45) = 0;
      v72 = *(v0 + 928) + 1;
      v71 = *(v0 + 912);
      v70 = v0 + 144;
      v89 = v767;
      v87 = v760;
      v88 = &_s7CoreIDV49ISO18013_AAMVA_DomesticDrivingPrivilegeIdentifierO20domesticVehicleClassyA2CmFWC_ptr;
      if (v72 == v71)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }

    v72 = *(v0 + 928);
    v71 = *(v0 + 912);
    v86 = v770;
LABEL_42:
    if (++v72 == v71)
    {
      goto LABEL_37;
    }
  }

  if (v90 == 5)
  {
    v112 = (*(*(v0 + 232) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ);
    v113 = v112[1];
    if (!v113)
    {
      v495 = *(v0 + 304);
      v494 = *(v0 + 312);
      v496 = *(v0 + 296);

      (*(v495 + 104))(v494, enum case for DIPError.Code.passportFailedToGetIDVServerData(_:), v496);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_279;
    }

    v749 = *v112;
    v114 = *(v0 + 616);
    v115 = *(v0 + 608);
    v654(v114, 1, 1, v659);
    sub_10000BBC4(v114, v115, &qword_10083D6A0, &unk_1006DB700);
    LODWORD(v115) = v89(v115, 1, v659);

    v116 = *(v0 + 608);
    if (v115 == 1)
    {
      sub_10000BE18(*(v0 + 608), &qword_10083D6A0, &unk_1006DB700);
      v739 = 0;
      v712 = 0;
    }

    else
    {
      v739 = PDF417ParsedData.firstName.getter();
      v712 = v305;
      (*v760)(v116, v659);
    }

    v306 = *(v0 + 600);
    sub_10000BBC4(*(v0 + 616), v306, &qword_10083D6A0, &unk_1006DB700);
    v307 = v89(v306, 1, v659);
    v308 = *(v0 + 600);
    if (v307 == 1)
    {
      sub_10000BE18(*(v0 + 600), &qword_10083D6A0, &unk_1006DB700);
      v698 = 0;
      v706 = 0;
      v309 = v760;
    }

    else
    {
      v310 = PDF417ParsedData.middleName.getter();
      v698 = v311;
      v706 = v310;
      v309 = v760;
      (*v760)(v308, v659);
    }

    v312 = *(v0 + 592);
    sub_10000BBC4(*(v0 + 616), v312, &qword_10083D6A0, &unk_1006DB700);
    v313 = v89(v312, 1, v659);
    v314 = *(v0 + 592);
    if (v313 == 1)
    {
      sub_10000BE18(*(v0 + 592), &qword_10083D6A0, &unk_1006DB700);
      v681 = 0;
      v689 = 0;
    }

    else
    {
      v315 = PDF417ParsedData.lastName.getter();
      v681 = v316;
      v689 = v315;
      (*v309)(v314, v659);
    }

    v317 = *(v0 + 584);
    sub_10000BBC4(*(v0 + 616), v317, &qword_10083D6A0, &unk_1006DB700);
    v318 = v89(v317, 1, v659);
    v319 = *(v0 + 584);
    if (v318 == 1)
    {
      sub_10000BE18(*(v0 + 584), &qword_10083D6A0, &unk_1006DB700);
      v665 = 0;
      v673 = 0;
    }

    else
    {
      v320 = PDF417ParsedData.street1.getter();
      v665 = v321;
      v673 = v320;
      (*v309)(v319, v659);
    }

    v322 = *(v0 + 576);
    sub_10000BBC4(*(v0 + 616), v322, &qword_10083D6A0, &unk_1006DB700);
    v323 = v89(v322, 1, v659);
    v324 = *(v0 + 576);
    if (v323 == 1)
    {
      sub_10000BE18(*(v0 + 576), &qword_10083D6A0, &unk_1006DB700);
      v662 = 0;
      v651 = 0;
    }

    else
    {
      v662 = PDF417ParsedData.street2.getter();
      v651 = v325;
      (*v309)(v324, v659);
    }

    v326 = *(v0 + 568);
    sub_10000BBC4(*(v0 + 616), v326, &qword_10083D6A0, &unk_1006DB700);
    v327 = v89(v326, 1, v659);
    v328 = *(v0 + 568);
    if (v327 == 1)
    {
      sub_10000BE18(*(v0 + 568), &qword_10083D6A0, &unk_1006DB700);
      v637 = 0;
      v644 = 0;
    }

    else
    {
      v329 = PDF417ParsedData.city.getter();
      v637 = v330;
      v644 = v329;
      (*v309)(v328, v659);
    }

    v331 = *(v0 + 560);
    sub_10000BBC4(*(v0 + 616), v331, &qword_10083D6A0, &unk_1006DB700);
    v332 = v89(v331, 1, v659);
    v333 = *(v0 + 560);
    if (v332 == 1)
    {
      sub_10000BE18(*(v0 + 560), &qword_10083D6A0, &unk_1006DB700);
      v623 = 0;
      v630 = 0;
    }

    else
    {
      v334 = PDF417ParsedData.state.getter();
      v623 = v335;
      v630 = v334;
      (*v309)(v333, v659);
    }

    v336 = *(v0 + 552);
    sub_10000BBC4(*(v0 + 616), v336, &qword_10083D6A0, &unk_1006DB700);
    v337 = v89(v336, 1, v659);
    v338 = *(v0 + 552);
    if (v337 == 1)
    {
      sub_10000BE18(*(v0 + 552), &qword_10083D6A0, &unk_1006DB700);
      v609 = 0;
      v616 = 0;
    }

    else
    {
      v339 = PDF417ParsedData.postalCode.getter();
      v609 = v340;
      v616 = v339;
      (*v309)(v338, v659);
    }

    v341 = *(v0 + 544);
    sub_10000BBC4(*(v0 + 616), v341, &qword_10083D6A0, &unk_1006DB700);
    v342 = v89(v341, 1, v659);
    v343 = *(v0 + 544);
    if (v342 == 1)
    {
      sub_10000BE18(*(v0 + 544), &qword_10083D6A0, &unk_1006DB700);
      v595 = 0;
      v602 = 0;
    }

    else
    {
      v344 = PDF417ParsedData.country.getter();
      v595 = v345;
      v602 = v344;
      (*v309)(v343, v659);
    }

    v346 = *(v0 + 536);
    sub_10000BBC4(*(v0 + 616), v346, &qword_10083D6A0, &unk_1006DB700);
    v347 = v89(v346, 1, v659);
    v348 = *(v0 + 536);
    v349 = v73;
    if (v347 == 1)
    {
      sub_10000BE18(*(v0 + 536), &qword_10083D6A0, &unk_1006DB700);
      v350 = 0;
      v351 = 0;
    }

    else
    {
      v350 = PDF417ParsedData.dob.getter();
      v351 = v352;
      (*v760)(v348, v659);
    }

    v353 = *(v0 + 528);
    sub_10000BBC4(*(v0 + 616), v353, &qword_10083D6A0, &unk_1006DB700);
    v354 = v767(v353, 1, v659);
    v355 = *(v0 + 616);
    v356 = *(v0 + 528);
    if (v354 == 1)
    {
      sub_10000BE18(*(v0 + 616), &qword_10083D6A0, &unk_1006DB700);
      sub_10000BE18(v356, &qword_10083D6A0, &unk_1006DB700);
      v357 = 0;
      v358 = 0;
    }

    else
    {
      v359 = *(v0 + 528);
      v357 = PDF417ParsedData.issuer.getter();
      v358 = v360;
      sub_10000BE18(v355, &qword_10083D6A0, &unk_1006DB700);
      (*v760)(v356, v659);
    }

    v362 = *(v349 + 2);
    v361 = *(v349 + 3);
    v363 = v349;
    if (v362 >= v361 >> 1)
    {
      v363 = sub_1003C5D2C((v361 > 1), v362 + 1, 1, v349);
    }

    v87 = v760;
    *(v363 + 2) = v362 + 1;
    v364 = &v363[336 * v362];
    v73 = v363;
    v364[32] = 0;
    v365 = *v724;
    *(v364 + 9) = *(v0 + 979);
    *(v364 + 33) = v365;
    *(v364 + 40) = 0u;
    *(v364 + 56) = 0u;
    *(v364 + 72) = 0u;
    *(v364 + 88) = 0u;
    *(v364 + 104) = 0u;
    *(v364 + 15) = 0;
    *(v364 + 16) = v739;
    *(v364 + 17) = v712;
    *(v364 + 18) = v706;
    *(v364 + 19) = v698;
    *(v364 + 20) = v689;
    *(v364 + 21) = v681;
    *(v364 + 22) = v673;
    *(v364 + 23) = v665;
    *(v364 + 24) = v662;
    *(v364 + 25) = v651;
    *(v364 + 26) = v644;
    *(v364 + 27) = v637;
    *(v364 + 28) = v630;
    *(v364 + 29) = v623;
    *(v364 + 30) = v616;
    *(v364 + 31) = v609;
    *(v364 + 32) = v602;
    *(v364 + 33) = v595;
    *(v364 + 34) = v350;
    *(v364 + 35) = v351;
    *(v364 + 36) = v357;
    *(v364 + 37) = v358;
    *(v364 + 38) = 0;
    *(v364 + 39) = 0;
    *(v364 + 40) = v749;
    *(v364 + 41) = v113;
    *(v364 + 21) = 0u;
    *(v364 + 22) = 0u;
    v86 = v770;
    goto LABEL_205;
  }

  if (v90 != 7)
  {
    goto LABEL_42;
  }

  v473 = *(v0 + 216);
  *(v0 + 975) = 0;
  IdentityProofingConfiguration.piiTokenIdentifier.getter();
  if (!v474)
  {
    v480 = *(v0 + 304);
    v479 = *(v0 + 312);
    v481 = *(v0 + 296);
    v482 = *(v0 + 983);

    (*(v480 + 104))(v479, enum case for DIPError.Code.piiTokenIdentifierDoesntExist(_:), v481);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001FE434(v482, (v70 + 831));
    goto LABEL_274;
  }

  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v475 = *(qword_100882228 + 16);
  *(v0 + 944) = v475;
  v476 = v475;
  v477 = String._bridgeToObjectiveC()();
  *(v0 + 952) = v477;

  *(v0 + 16) = v0;
  *(v0 + 56) = v70;
  *(v0 + 24) = sub_10020DE68;
  v478 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100672A4C;
  *(v0 + 104) = &unk_10080AB88;
  *(v0 + 112) = v478;
  [v476 retrievePIITokenFromSyncableKeyStoreForIdentifier:v477 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}