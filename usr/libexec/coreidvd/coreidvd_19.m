uint64_t sub_1001D705C()
{
  v1 = *(*v0 + 1152);
  v2 = *(*v0 + 1144);
  v3 = *(*v0 + 1136);
  v4 = *(*v0 + 1128);
  v6 = *v0;

  return _swift_task_switch(sub_1001D71B4, 0, 0);
}

uint64_t sub_1001D71B4()
{
  v1 = v0[74];
  v0[145] = *(v0[78] + 112);

  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[146] = v3;
  *v3 = v0;
  v3[1] = sub_1001D7270;
  v4 = v0[85];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_1001D7270()
{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v7 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v4 = sub_1001D9378;
  }

  else
  {
    v5 = *(v2 + 1160);

    v4 = sub_1001D738C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001D738C()
{
  v1 = v0[85];
  v2 = v0[74];
  v0[148] = *(v0[78] + 32);
  v3 = *(v1 + 64);

  v4 = IdentityProofingConfiguration.documentType.getter();
  v5 = swift_task_alloc();
  v0[149] = v5;
  *v5 = v0;
  v5[1] = sub_1001D745C;
  v6 = v0[84];

  return sub_1002A77FC(v6, v3, v4);
}

uint64_t sub_1001D745C()
{
  v2 = *(*v1 + 1192);
  v5 = *v1;
  *(*v1 + 1200) = v0;

  if (v0)
  {
    v3 = sub_1001D7D80;
  }

  else
  {
    v3 = sub_1001D7570;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001D7570()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 672);
  v3 = *(v0 + 656);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10021E908(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v9 = *(v0 + 1184);
    v10 = *(v0 + 672);
    v11 = *(v0 + 664);
    v12 = *(v0 + 656);

    (*(v11 + 8))(v10, v12);
    sub_10021EA28(*(v0 + 680), type metadata accessor for IdentityProofingStaticWorkflow);
    v51 = *(v0 + 1120);
    v52 = *(v0 + 1112);
    v53 = *(v0 + 880);
    v54 = *(v0 + 872);
    v55 = *(v0 + 864);
    v56 = *(v0 + 856);
    v57 = *(v0 + 848);
    v58 = *(v0 + 840);
    v59 = *(v0 + 832);
    v60 = *(v0 + 824);
    v61 = *(v0 + 816);
    v63 = *(v0 + 808);
    v65 = *(v0 + 800);
    v67 = *(v0 + 792);
    v79 = *(v0 + 784);
    v49 = *(v0 + 776);
    v50 = *(v0 + 768);
    v69 = *(v0 + 760);
    v71 = *(v0 + 736);
    v73 = *(v0 + 712);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v48 = *(v0 + 688);
    v75 = *(v0 + 680);
    v77 = *(v0 + 672);
    v15 = *(v0 + 648);
    v81 = *(v0 + 640);
    v16 = *(v0 + 632);
    v17 = *(v0 + 624);
    *(v0 + 392) = 0;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    swift_errorRetain();
    sub_100203358(v0 + 360);
    sub_10000BE18(v0 + 360, &qword_10083D0A0, &qword_1006DAFC0);
    v47 = enum case for DIPError.Code.internalError(_:);
    v45 = v13;
    v46 = *(v14 + 104);
    v46(v13);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v18 = *(v81 + 16);
    v18(v19, v15, v16);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v51(v79, v50);

    swift_allocError();
    v18(v20, v15, v16);
    (v46)(v45, v47, v48);
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v81 + 8))(v15, v16);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 1184);
    v24 = *(v0 + 1112);
    v82 = *(v0 + 680);
    v25 = *(v0 + 672);
    v26 = *(v0 + 664);
    v27 = *(v0 + 656);
    v28 = *(v0 + 592);
    v29 = v7;
    v30 = v8;

    (*(v26 + 8))(v25, v27);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1006DAE90;
    v32 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v31 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_10000B8B8(v29, v30);
    IdentityProofingConfiguration.documentType.getter();
    v33 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v80 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v29, v30);
    sub_10021EA28(v82, type metadata accessor for IdentityProofingStaticWorkflow);
    v34 = *(v0 + 880);
    v35 = *(v0 + 872);
    v36 = *(v0 + 864);
    v37 = *(v0 + 856);
    v38 = *(v0 + 848);
    v39 = *(v0 + 840);
    v40 = *(v0 + 832);
    v41 = *(v0 + 824);
    v42 = *(v0 + 816);
    v43 = *(v0 + 808);
    v62 = *(v0 + 800);
    v64 = *(v0 + 792);
    v66 = *(v0 + 784);
    v68 = *(v0 + 760);
    v70 = *(v0 + 736);
    v72 = *(v0 + 712);
    v74 = *(v0 + 704);
    v76 = *(v0 + 680);
    v78 = *(v0 + 672);
    v83 = *(v0 + 648);

    v44 = *(v0 + 8);

    return v44(v80);
  }
}

uint64_t sub_1001D7D80()
{
  v1 = *(v0 + 1184);

  v2 = *(v0 + 1200);
  sub_10021EA28(*(v0 + 680), type metadata accessor for IdentityProofingStaticWorkflow);
  v19 = *(v0 + 1120);
  v20 = *(v0 + 1112);
  v21 = *(v0 + 880);
  v22 = *(v0 + 872);
  v23 = *(v0 + 864);
  v24 = *(v0 + 856);
  v25 = *(v0 + 848);
  v26 = *(v0 + 840);
  v27 = *(v0 + 832);
  v28 = *(v0 + 824);
  v29 = *(v0 + 816);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);
  v32 = *(v0 + 792);
  v38 = *(v0 + 784);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v33 = *(v0 + 760);
  v34 = *(v0 + 736);
  v35 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v16 = *(v0 + 688);
  v36 = *(v0 + 680);
  v37 = *(v0 + 672);
  v5 = *(v0 + 648);
  v39 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  *(v0 + 392) = 0;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 360);
  sub_10000BE18(v0 + 360, &qword_10083D0A0, &qword_1006DAFC0);
  v15 = enum case for DIPError.Code.internalError(_:);
  v13 = v3;
  v14 = *(v4 + 104);
  v14(v3);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v8 = *(v39 + 16);
  v8(v9, v5, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v19(v38, v18);

  swift_allocError();
  v8(v10, v5, v6);
  (v14)(v13, v15, v16);
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v39 + 8))(v5, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001D81F8()
{
  v37 = v0;
  v1 = v0[111];

  v2._object = 0x8000000100707000;
  v2._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v2);
  v0[139] = v0[113];
  v3 = v0[101];
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[101];
    v7 = v0[97];
    v8 = v0[96];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[60];
    v11 = v0[61];
    v13 = v0[62];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v36);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received an error during the proofing flow %s", v9, 0xCu);
    sub_10000BB78(v10);

    v17 = *(v7 + 8);
    v17(v6, v8);
  }

  else
  {
    v18 = v0[101];
    v19 = v0[97];
    v20 = v0[96];

    v17 = *(v19 + 8);
    v17(v18, v20);
  }

  v0[140] = v17;
  v21 = v0[99];
  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Cleaning up orphaned credentials after proofing", v24, 2u);
  }

  v25 = v0[99];
  v26 = v0[97];
  v27 = v0[96];
  v28 = v0[78];

  v17(v25, v27);
  v0[141] = *(v28 + 48);
  v29 = *(v28 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
  v30 = *(v28 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
  v0[142] = v30;
  v31 = *(v28 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
  v32 = *(v28 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
  v0[143] = v32;

  v33 = swift_task_alloc();
  v0[144] = v33;
  *v33 = v0;
  v33[1] = sub_1001D705C;
  v34 = v0[76];

  return sub_10028B1CC(v34, v29, v30, v31, v32);
}

uint64_t sub_1001D851C()
{
  v36 = v0;
  (*(v0[91] + 8))(v0[92], v0[90]);
  sub_10000BB78(v0 + 50);
  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[118];
  v2 = v0[101];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[101];
    v6 = v0[97];
    v7 = v0[96];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[60];
    v10 = v0[61];
    v12 = v0[62];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v35);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received an error during the proofing flow %s", v8, 0xCu);
    sub_10000BB78(v9);

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  else
  {
    v17 = v0[101];
    v18 = v0[97];
    v19 = v0[96];

    v16 = *(v18 + 8);
    v16(v17, v19);
  }

  v0[140] = v16;
  v20 = v0[99];
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Cleaning up orphaned credentials after proofing", v23, 2u);
  }

  v24 = v0[99];
  v25 = v0[97];
  v26 = v0[96];
  v27 = v0[78];

  v16(v24, v26);
  v0[141] = *(v27 + 48);
  v28 = *(v27 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
  v29 = *(v27 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
  v0[142] = v29;
  v30 = *(v27 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
  v31 = *(v27 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
  v0[143] = v31;

  v32 = swift_task_alloc();
  v0[144] = v32;
  *v32 = v0;
  v32[1] = sub_1001D705C;
  v33 = v0[76];

  return sub_10028B1CC(v33, v28, v29, v30, v31);
}

uint64_t sub_1001D885C()
{
  v40 = v0;
  (*(v0[91] + 8))(v0[92], v0[90]);
  sub_10000BB78(v0 + 50);
  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[123];
  v2 = v0[101];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[101];
    v6 = v0[97];
    v7 = v0[96];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[60];
    v10 = v0[61];
    v12 = v0[62];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v39);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received an error during the proofing flow %s", v8, 0xCu);
    sub_10000BB78(v9);

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  else
  {
    v17 = v0[101];
    v18 = v0[97];
    v19 = v0[96];

    v16 = *(v18 + 8);
    v16(v17, v19);
  }

  v0[140] = v16;
  v20 = v0[100];
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Calling proofing cancelled to cleanup state due to failure during proofing", v23, 2u);
  }

  v24 = v0[100];
  v25 = v0[97];
  v26 = v0[96];
  v27 = v0[89];
  v28 = v0[78];
  v29 = v0[76];
  v30 = v0[74];

  v16(v24, v26);
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v28;
  v32[5] = v30;
  v32[6] = v29;
  v33 = v30;

  sub_1003E653C(0, 0, v27, &unk_1006DB7E8, v32);

  v34 = v0[74];
  v0[145] = *(v0[78] + 112);

  v35 = IdentityProofingConfiguration.documentType.getter();
  v36 = swift_task_alloc();
  v0[146] = v36;
  *v36 = v0;
  v36[1] = sub_1001D7270;
  v37 = v0[85];

  return sub_1001AA1E4(v37, v35);
}

uint64_t sub_1001D8C10()
{
  v40 = v0;
  (*(v0[91] + 8))(v0[92], v0[90]);
  sub_10000BB78(v0 + 50);
  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[130];
  v2 = v0[101];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[101];
    v6 = v0[97];
    v7 = v0[96];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[60];
    v10 = v0[61];
    v12 = v0[62];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v39);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received an error during the proofing flow %s", v8, 0xCu);
    sub_10000BB78(v9);

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  else
  {
    v17 = v0[101];
    v18 = v0[97];
    v19 = v0[96];

    v16 = *(v18 + 8);
    v16(v17, v19);
  }

  v0[140] = v16;
  v20 = v0[100];
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Calling proofing cancelled to cleanup state due to failure during proofing", v23, 2u);
  }

  v24 = v0[100];
  v25 = v0[97];
  v26 = v0[96];
  v27 = v0[89];
  v28 = v0[78];
  v29 = v0[76];
  v30 = v0[74];

  v16(v24, v26);
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v28;
  v32[5] = v30;
  v32[6] = v29;
  v33 = v30;

  sub_1003E653C(0, 0, v27, &unk_1006DB7E8, v32);

  v34 = v0[74];
  v0[145] = *(v0[78] + 112);

  v35 = IdentityProofingConfiguration.documentType.getter();
  v36 = swift_task_alloc();
  v0[146] = v36;
  *v36 = v0;
  v36[1] = sub_1001D7270;
  v37 = v0[85];

  return sub_1001AA1E4(v37, v35);
}

uint64_t sub_1001D8FC4()
{
  v40 = v0;
  (*(v0[91] + 8))(v0[92], v0[90]);
  sub_10000BB78(v0 + 50);
  v1._object = 0x8000000100707000;
  v1._countAndFlagsBits = 0xD000000000000010;
  debugLogFootprint(_:)(v1);
  v0[139] = v0[138];
  v2 = v0[101];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[101];
    v6 = v0[97];
    v7 = v0[96];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[60];
    v10 = v0[61];
    v12 = v0[62];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v39);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received an error during the proofing flow %s", v8, 0xCu);
    sub_10000BB78(v9);

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  else
  {
    v17 = v0[101];
    v18 = v0[97];
    v19 = v0[96];

    v16 = *(v18 + 8);
    v16(v17, v19);
  }

  v0[140] = v16;
  v20 = v0[100];
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Calling proofing cancelled to cleanup state due to failure during proofing", v23, 2u);
  }

  v24 = v0[100];
  v25 = v0[97];
  v26 = v0[96];
  v27 = v0[89];
  v28 = v0[78];
  v29 = v0[76];
  v30 = v0[74];

  v16(v24, v26);
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v28;
  v32[5] = v30;
  v32[6] = v29;
  v33 = v30;

  sub_1003E653C(0, 0, v27, &unk_1006DB7E8, v32);

  v34 = v0[74];
  v0[145] = *(v0[78] + 112);

  v35 = IdentityProofingConfiguration.documentType.getter();
  v36 = swift_task_alloc();
  v0[146] = v36;
  *v36 = v0;
  v36[1] = sub_1001D7270;
  v37 = v0[85];

  return sub_1001AA1E4(v37, v35);
}

uint64_t sub_1001D9378()
{
  v1 = *(v0 + 1160);

  v2 = *(v0 + 1176);
  v19 = *(v0 + 1120);
  v20 = *(v0 + 1112);
  v21 = *(v0 + 880);
  v22 = *(v0 + 872);
  v23 = *(v0 + 864);
  v24 = *(v0 + 856);
  v25 = *(v0 + 848);
  v26 = *(v0 + 840);
  v27 = *(v0 + 832);
  v28 = *(v0 + 824);
  v29 = *(v0 + 816);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);
  v32 = *(v0 + 792);
  v38 = *(v0 + 784);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v33 = *(v0 + 760);
  v34 = *(v0 + 736);
  v35 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v16 = *(v0 + 688);
  v36 = *(v0 + 680);
  v37 = *(v0 + 672);
  v5 = *(v0 + 648);
  v39 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  *(v0 + 392) = 0;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 360);
  sub_10000BE18(v0 + 360, &qword_10083D0A0, &qword_1006DAFC0);
  v15 = enum case for DIPError.Code.internalError(_:);
  v14 = *(v4 + 104);
  v14(v3);
  v8 = v3;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v9 = *(v39 + 16);
  v9(v10, v5, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v19(v38, v18);

  swift_allocError();
  v9(v11, v5, v6);
  (v14)(v8, v15, v16);
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v39 + 8))(v5, v6);

  v12 = *(v0 + 8);

  return v12();
}

void sub_1001D97E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v44 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  if (a2 == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = IdentityProofingConfiguration.documentType.getter();
  v18 = sub_10057A388(v16, v17, 0);
  if (v4)
  {
    return;
  }

  v19 = v15;
  v42 = v13;
  v43 = a4;
  v20 = v44;
  if (!v18)
  {
LABEL_19:
    v37 = 0;
    goto LABEL_20;
  }

  v21 = v18 & 0xFFFFFFFFFFFFFF8;
  if (!(v18 >> 62))
  {
    v22 = v9;
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v38 = v18;
  v39 = _CocoaArrayWrapper.endIndex.getter();
  v18 = v38;
  v22 = v9;
  if (!v39)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_8:
  v40 = a1;
  v41 = 0;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v23 = v8;
  }

  else
  {
    if (!*(v21 + 16))
    {
      __break(1u);
      return;
    }

    v23 = v8;
    v24 = *(v18 + 32);
  }

  v26 = *(v20 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage);
  v25 = *(v20 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage + 8);
  sub_1000363B4(v26, v25);
  sub_10057F454(v26, v25);
  sub_10000BD94(v26, v25);
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Successfully stored the liveness manual review encrypted message", v29, 2u);
  }

  v30 = *(v22 + 8);
  v30(v19, v23);
  v31 = IdentityProofingActionStatus.rawValue.getter();
  sub_10057F148(v31, 0);
  v32 = v42;
  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "livenessStepUp proofing session updated to IdentityProofingActionStatus.statusPending", v35, 2u);
  }

  v30(v32, v23);
  v36 = v41;
  sub_1005783D4();

  if (!v36)
  {
    v37 = 1;
LABEL_20:
    *v43 = v37;
  }
}

uint64_t sub_1001D9B4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a8;
  *(v8 + 128) = v14;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 96) = a5;
  *(v8 + 224) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1001D9C38, 0, 0);
}

uint64_t sub_1001D9C38()
{
  if (*(v0 + 224) == 1)
  {
    v1 = *(v0 + 168);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "shouldScheduleUploads is set to true, will schedule the uploads in the background waiting for an inexpensive network.", v4, 2u);
    }

    v5 = *(v0 + 168);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);

    (*(v7 + 8))(v5, v6);
    if (qword_100832C28 != -1)
    {
      swift_once();
    }

    v8 = *(qword_100882238 + 16);

    sub_10027DDA8();

    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v14 = *(v0 + 96);
    v15 = *(*(v14 + 120) + 16);
    swift_beginAccess();
    v16 = *(v15 + 16);
    *(v15 + 16) = &_swiftEmptyDictionarySingleton;

    v17 = *(v14 + 56);

    sub_1002E1B4C(v12, v13, 9);

    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 152);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v9 = *(*(*(v0 + 96) + 120) + 120);
    *(v0 + 176) = v9;
    v10 = async function pointer to OS_dispatch_group.wait()[1];
    v9;
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_1001D9ED4;

    return OS_dispatch_group.wait()();
  }
}

uint64_t sub_1001D9ED4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_1001D9FE8, 0, 0);
}

uint64_t sub_1001D9FE8()
{
  v34 = v0;
  v1 = v0[12];
  if (*(*(*(v1 + 120) + 16) + 40))
  {
    v2 = v0[20];
    v3 = *(*(*(v1 + 120) + 16) + 40);
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[20];
    v9 = v0[17];
    v8 = v0[18];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v32 = v7;
      v13 = v0[5];
      v12 = v0[6];
      v14 = v0[7];
      v15 = Error.localizedDescription.getter();
      v17 = sub_100141FE4(v15, v16, &v33);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cloudkit uploads have failed. Will not trigger action notification %s", v10, 0xCu);
      sub_10000BB78(v11);

      (*(v8 + 8))(v32, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    sub_10021C2BC(v0[15], v0[13], v0[14]);

    v29 = v0[20];
    v28 = v0[21];
    v30 = v0[19];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v18 = v0[16];
    v0[24] = *(v1 + 96);

    v19 = IdentityProofingConfiguration.country.getter();
    v0[25] = v20;
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = IdentityProofingConfiguration.documentType.getter();
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_1001DA298;
    v26 = v0[13];
    v25 = v0[14];

    return sub_10026E970(v26, v25, v21, v22, v23);
  }
}

uint64_t sub_1001DA298()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  v6 = *(v2 + 192);

  if (v0)
  {
    v7 = sub_1001DA4E0;
  }

  else
  {
    v7 = sub_1001DA3F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001DA3F0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = *(v0[12] + 56);

  sub_1002E1B4C(v3, v1, 1);

  sub_10021C2BC(v2, v3, v1);
  v5 = *(*(v0[12] + 120) + 16);
  swift_beginAccess();
  v6 = *(v5 + 16);
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;

  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001DA4E0()
{
  v1 = v0[27];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);
  v5 = *(*(v0[12] + 120) + 16);
  swift_beginAccess();
  v6 = *(v5 + 16);
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;

  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001DA5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001DA6C0, 0, 0);
}

uint64_t sub_1001DA6C0()
{
  v0[12] = *(v0[6] + 80);

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1001DA784;
  v2 = v0[7];

  return (sub_100289E58)(v2);
}

uint64_t sub_1001DA784()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1001DA9B0;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1001DA8A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DA8A0()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully cancelled proofing", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001DA9B0()
{
  v27 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = v0[9];
    v25 = v0[10];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v26);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "received an error during proofing cancellation %s. Ignore the error.", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v7 + 8))(v25, v8);
  }

  else
  {
    v17 = v0[14];
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];

    (*(v19 + 8))(v18, v20);
  }

  v22 = v0[10];
  v21 = v0[11];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001DAB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[63] = a4;
  v5[64] = v4;
  v5[61] = a2;
  v5[62] = a3;
  v5[60] = a1;
  v6 = type metadata accessor for DeviceInformationProvider();
  v5[65] = v6;
  v7 = *(v6 - 8);
  v5[66] = v7;
  v8 = *(v7 + 64) + 15;
  v5[67] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[68] = v9;
  v10 = *(v9 - 8);
  v5[69] = v10;
  v11 = *(v10 + 64) + 15;
  v5[70] = swift_task_alloc();
  v12 = type metadata accessor for IdentityProofingRequestV2(0);
  v5[71] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v14 = *(*(sub_100007224(&qword_100835E40, &qword_1006C49F8) - 8) + 64) + 15;
  v5[74] = swift_task_alloc();
  v15 = *(*(sub_100007224(&qword_100835E38, &qword_1006C49F0) - 8) + 64) + 15;
  v5[75] = swift_task_alloc();
  v16 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  v5[76] = v16;
  v17 = *(v16 - 8);
  v5[77] = v17;
  v5[78] = *(v17 + 64);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v18 = *(*(sub_100007224(&qword_10083D6A8, &qword_1006DB710) - 8) + 64) + 15;
  v5[82] = swift_task_alloc();
  v19 = type metadata accessor for HPKESuiteKwV1();
  v5[83] = v19;
  v20 = *(v19 - 8);
  v5[84] = v20;
  v21 = *(v20 + 64) + 15;
  v5[85] = swift_task_alloc();
  v22 = type metadata accessor for DIPError.Code();
  v5[86] = v22;
  v23 = *(v22 - 8);
  v5[87] = v23;
  v24 = *(v23 + 64) + 15;
  v5[88] = swift_task_alloc();
  v25 = type metadata accessor for Logger();
  v5[89] = v25;
  v26 = *(v25 - 8);
  v5[90] = v26;
  v27 = *(v26 + 64) + 15;
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();

  return _swift_task_switch(sub_1001DAF48, 0, 0);
}

uint64_t sub_1001DAF48()
{
  v1 = *(*(v0[64] + 112) + 104);
  v0[93] = v1;
  v2 = async function pointer to OS_dispatch_group.wait()[1];
  v1;
  v3 = swift_task_alloc();
  v0[94] = v3;
  *v3 = v0;
  v3[1] = sub_1001DAFF8;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001DAFF8()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 744);
  v4 = *v0;

  return _swift_task_switch(sub_1001DB10C, 0, 0);
}

uint64_t sub_1001DB10C()
{
  v63 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 504);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 736);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);
  if (v5)
  {
    v10 = *(v0 + 496);
    v9 = *(v0 + 504);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v62 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v62);
    _os_log_impl(&_mh_execute_header, v3, v4, "initiatePartialProofing: proofingSessionID %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v7 + 8);
  v13(v6, v8);
  *(v0 + 760) = v13;
  v14 = *(*(v0 + 512) + 112);
  if (*(v14 + 112))
  {
    (*(*(v0 + 696) + 104))(*(v0 + 704), enum case for DIPError.Code.internalError(_:), *(v0 + 688));
    swift_errorRetain();
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_5:
    v15 = *(v0 + 736);
    v16 = *(v0 + 728);
    v17 = *(v0 + 704);
    v18 = *(v0 + 680);
    v19 = *(v0 + 656);
    v20 = *(v0 + 648);
    v21 = *(v0 + 640);
    v22 = *(v0 + 632);
    v23 = *(v0 + 600);
    v24 = *(v0 + 592);
    v58 = *(v0 + 584);
    v59 = *(v0 + 576);
    v60 = *(v0 + 560);
    v61 = *(v0 + 536);

    v25 = *(v0 + 8);

    return v25();
  }

  swift_beginAccess();
  sub_10000BBC4(v14 + 144, v0 + 248, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 272))
  {
    v31 = *(v0 + 704);
    v32 = *(v0 + 696);
    v33 = *(v0 + 688);
    sub_10000BE18(v0 + 248, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v32 + 104))(v31, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_10001F358((v0 + 248), v0 + 208);
  v27 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
  swift_beginAccess();
  sub_10000BBC4(v14 + v27, v0 + 64, &qword_10083D4B8, &qword_1006DB470);
  if (!*(v0 + 88))
  {
    v34 = *(v0 + 704);
    v35 = *(v0 + 696);
    v36 = *(v0 + 688);
    sub_10000BE18(v0 + 64, &qword_10083D4B8, &qword_1006DB470);
    (*(v35 + 104))(v34, enum case for DIPError.Code.baaCertificateDoesntExist(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_15:
    sub_10000BB78((v0 + 208));
    goto LABEL_5;
  }

  v28 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v28;
  *(v0 + 48) = *(v0 + 96);
  v29 = *(v14 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);
  *(v0 + 768) = v29;
  if (!v29)
  {
    (*(*(v0 + 696) + 104))(*(v0 + 704), enum case for DIPError.Code.cannotBuildDeviceDataForAssessor(_:), *(v0 + 688));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001B7154(v0 + 16);
    goto LABEL_15;
  }

  v30 = *(v0 + 48);
  sub_10000BA08((v0 + 16), *(v0 + 40));

  dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  v37 = *(v0 + 680);
  v38 = *(v0 + 512);
  v39 = *(v0 + 488);
  HPKESuiteKwV1.init(pkISm:info:)();
  v40 = *(v38 + 120);

  v41 = IdentityProofingDocuments.nfc.getter();
  if (v41)
  {
    v42 = v41;
    v43 = IdentityDocument.mrz.getter();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = *(v0 + 680);
  v47 = *(v0 + 672);
  v48 = *(v0 + 664);
  v49 = *(v0 + 656);
  v50 = (v40 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ);
  v51 = *(v40 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ + 8);
  *v50 = v43;
  v50[1] = v45;

  v52 = type metadata accessor for PDF417Data();
  (*(*(v52 - 8) + 56))(v49, 1, 1, v52);
  *(v0 + 312) = v48;
  *(v0 + 320) = &protocol witness table for HPKESuiteKwV1;
  v53 = sub_100032DBC((v0 + 288));
  (*(v47 + 16))(v53, v46, v48);
  v54 = swift_task_alloc();
  *(v0 + 776) = v54;
  *v54 = v0;
  v54[1] = sub_1001DBA74;
  v55 = *(v0 + 656);
  v56 = *(v0 + 512);
  v57 = *(v0 + 480);

  return sub_100212598(v55, v57, v0 + 16, v0 + 208, v29, v0 + 288, 1, 0);
}

uint64_t sub_1001DBA74(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[97];
  v7 = *v2;
  v3[98] = a1;
  v3[99] = v1;

  sub_10000BE18(v3[82], &qword_10083D6A8, &qword_1006DB710);
  if (v1)
  {
    v5 = sub_1001DC5A8;
  }

  else
  {
    sub_10000BB78(v3 + 36);
    v5 = sub_1001DBBC4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001DBBC4()
{
  v101 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v95 = *(v0 + 504);
  v4 = *(v0 + 480);
  v5 = sub_10000BA08((v0 + 208), *(v0 + 232));
  v7 = *v5;
  v6 = v5[1];
  v8 = type metadata accessor for TiberiusWrappedAssessment(0);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);

  v89 = IdentityProofingConfiguration.productIdentifier.getter();
  v98 = v9;
  v10 = type metadata accessor for LivenessDataV2(0);
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  defaultLogger()();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 760);
  v15 = *(v0 + 728);
  v16 = *(v0 + 720);
  v17 = *(v0 + 712);
  v92 = v7;
  if (v13)
  {
    v86 = *(v0 + 760);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v100 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_100141FE4(v7, v6, &v100);
    _os_log_impl(&_mh_execute_header, v11, v12, "Building and signing proofing request for workflow ID %{public}s", v18, 0xCu);
    sub_10000BB78(v19);

    v86(v15, v17);
  }

  else
  {

    v14(v15, v17);
  }

  v20 = *(*(v0 + 512) + 112);
  v21 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
  swift_beginAccess();
  sub_10000BBC4(v20 + v21, v0 + 160, &qword_10083D4B8, &qword_1006DB470);
  v22 = *(v0 + 784);
  if (!*(v0 + 184))
  {
    v54 = *(v0 + 704);
    v55 = *(v0 + 696);
    v56 = *(v0 + 688);
    v57 = *(v0 + 600);
    v58 = *(v0 + 592);
    v59 = *(v0 + 784);

    sub_10000BE18(v0 + 160, &qword_10083D4B8, &qword_1006DB470);
    (*(v55 + 104))(v54, enum case for DIPError.Code.internalError(_:), v56);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v58, &qword_100835E40, &qword_1006C49F8);
    sub_10000BE18(v57, &qword_100835E38, &qword_1006C49F0);
    goto LABEL_11;
  }

  v23 = *(v0 + 600);
  v24 = *(v0 + 592);
  v25 = *(v0 + 584);
  v26 = *(v0 + 568);
  v27 = *(v0 + 560);
  v28 = *(v0 + 552);
  v29 = *(v0 + 544);
  v84 = *(v0 + 536);
  v85 = *(v0 + 528);
  v87 = *(v0 + 520);
  v30 = *(v0 + 504);
  v81 = *(v0 + 496);
  v82 = *(v0 + 512);
  v31 = *(v0 + 176);
  *(v0 + 112) = *(v0 + 160);
  *(v0 + 128) = v31;
  *(v0 + 144) = *(v0 + 192);
  sub_10000BBC4(v23, v25 + v26[9], &qword_100835E38, &qword_1006C49F0);
  sub_10000BBC4(v24, v25 + v26[15], &qword_100835E40, &qword_1006C49F8);

  UUID.init()();
  v32 = UUID.uuidString.getter();
  v34 = v33;
  (*(v28 + 8))(v27, v29);
  *v25 = 0;
  *(v25 + 8) = 0xE000000000000000;
  *(v25 + 16) = v32;
  *(v25 + 24) = v34;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = v92;
  *(v25 + 88) = v6;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 112) = v22;
  *(v25 + v26[10]) = 0;
  *(v25 + v26[11]) = 0;
  *(v25 + v26[12]) = _swiftEmptyArrayStorage;
  v35 = (v25 + v26[13]);
  *v35 = v81;
  v35[1] = v95;
  v36 = (v25 + v26[14]);
  *v36 = v89;
  v36[1] = v98;
  *(v25 + v26[16]) = 0;
  v37 = (v25 + v26[17]);
  *v37 = 0;
  v37[1] = 0;
  *(v25 + v26[18]) = xmmword_1006DB4E0;
  v38 = *(v82 + 16);
  v39 = *&v38[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
  *v25 = *&v38[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *(v25 + 8) = v39;
  sub_100020260(*&v38[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 328);
  v40 = *(v0 + 360);
  sub_10000BA08((v0 + 328), *(v0 + 352));
  v99 = v38;

  v90 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v83 = v41;
  sub_10000BB78((v0 + 328));
  DeviceInformationProvider.init()();
  v42 = DeviceInformationProvider.uniqueDeviceID.getter();
  v44 = v43;
  (*(v85 + 8))(v84, v87);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 640);
  v93 = *(v0 + 608);
  v96 = *(v0 + 792);
  v46 = *(v0 + 584);
  v47 = *(v0 + 576);
  v48 = *(v0 + 568);
  v49 = xmmword_100882478;

  *(v25 + 32) = v90;
  *(v25 + 40) = v83;
  *(v25 + 48) = v42;
  *(v25 + 56) = v44;
  *(v25 + 64) = v49;
  sub_10021E958(v46, v47, type metadata accessor for IdentityProofingRequestV2);
  sub_10021E908(&qword_100836910, type metadata accessor for IdentityProofingRequestV2);
  sub_10021E908(&qword_100836918, type metadata accessor for IdentityProofingRequestV2);
  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(*(v0 + 152));
  if (v50)
  {
    v51 = *(v0 + 600);
    v52 = *(v0 + 592);
    v53 = *(v0 + 584);
    (*(*(v0 + 616) + 8))(*(v0 + 640), *(v0 + 608));
    sub_10000BE18(v52, &qword_100835E40, &qword_1006C49F8);
    sub_10000BE18(v51, &qword_100835E38, &qword_1006C49F0);
    sub_10021EA28(v53, type metadata accessor for IdentityProofingRequestV2);
    sub_1001B7154(v0 + 112);
LABEL_11:
    v61 = *(v0 + 768);
    v62 = *(v0 + 680);
    v63 = *(v0 + 672);
    v64 = *(v0 + 664);

    (*(v63 + 8))(v62, v64);
    sub_1001B7154(v0 + 16);
    sub_10000BB78((v0 + 208));
    v65 = *(v0 + 736);
    v66 = *(v0 + 728);
    v67 = *(v0 + 704);
    v68 = *(v0 + 680);
    v69 = *(v0 + 656);
    v70 = *(v0 + 648);
    v71 = *(v0 + 640);
    v72 = *(v0 + 632);
    v73 = *(v0 + 600);
    v74 = *(v0 + 592);
    v88 = *(v0 + 584);
    v91 = *(v0 + 576);
    v94 = *(v0 + 560);
    v97 = *(v0 + 536);

    v75 = *(v0 + 8);

    return v75();
  }

  v60 = *(v0 + 608);
  JWSSignedJSON.setKid(_:)();
  v77 = async function pointer to JWSSignedJSON.sign(_:)[1];
  v78 = swift_task_alloc();
  *(v0 + 800) = v78;
  *v78 = v0;
  v78[1] = sub_1001DC71C;
  v79 = *(v0 + 640);
  v80 = *(v0 + 608);

  return JWSSignedJSON.sign(_:)(v0 + 112, v80);
}

uint64_t sub_1001DC5A8()
{
  v1 = v0[96];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];

  (*(v3 + 8))(v2, v4);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 36);
  sub_10000BB78(v0 + 26);
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[88];
  v8 = v0[85];
  v9 = v0[82];
  v10 = v0[81];
  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[75];
  v14 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[70];
  v20 = v0[67];
  v21 = v0[99];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001DC71C()
{
  v2 = *(*v1 + 800);
  v5 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = sub_1001DCBB8;
  }

  else
  {
    v3 = sub_1001DC830;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001DC830()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v22 = *(v0 + 632);
  v23 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 584);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 488);
  v21 = *(v0 + 496);
  sub_10000BE18(*(v0 + 592), &qword_100835E40, &qword_1006C49F8);
  sub_10000BE18(v5, &qword_100835E38, &qword_1006C49F0);
  sub_10021EA28(v6, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 112);
  v10 = *(v3 + 32);
  v10(v1, v2, v4);
  v11 = *(v7 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments);
  *(v7 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments) = v9;
  v12 = v9;

  v13 = (v7 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
  v14 = *(v7 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID + 8);
  *v13 = v21;
  v13[1] = v8;

  (*(v3 + 16))(v22, v1, v4);
  sub_100020260(v0 + 208, v0 + 368);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v0 + 816) = v16;
  *(v16 + 16) = v7;
  v10(v16 + v15, v22, v4);
  sub_10001F358((v0 + 368), v16 + ((v23 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];

  v18 = swift_task_alloc();
  *(v0 + 824) = v18;
  *v18 = v0;
  v18[1] = sub_1001DCA84;
  v19.n128_u64[0] = 20.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v18, &unk_1006DB7D8, v16, &type metadata for () + 8, v19);
}

uint64_t sub_1001DCA84()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = *(v2 + 816);

  if (v0)
  {
    v6 = sub_1001DCF30;
  }

  else
  {
    v6 = sub_1001DCDA0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001DCBB8()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  (*(v0[77] + 8))(v0[80], v0[76]);
  sub_10000BE18(v2, &qword_100835E40, &qword_1006C49F8);
  sub_10000BE18(v1, &qword_100835E38, &qword_1006C49F0);
  sub_10021EA28(v3, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154((v0 + 14));
  v24 = v0[101];
  v4 = v0[96];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];

  (*(v6 + 8))(v5, v7);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 26);
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[88];
  v11 = v0[85];
  v12 = v0[82];
  v13 = v0[81];
  v14 = v0[80];
  v15 = v0[79];
  v16 = v0[75];
  v17 = v0[74];
  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[70];
  v23 = v0[67];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001DCDA0()
{
  v1 = v0[96];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[88];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[81];
  v13 = v0[82];
  v14 = v0[80];
  v9 = v0[77];
  v10 = v0[76];
  v15 = v0[79];
  v16 = v0[75];
  v17 = v0[74];
  v18 = v0[73];
  v19 = v0[72];
  v20 = v0[70];
  v21 = v0[67];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 26);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001DCF30()
{
  v1 = v0[96];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[77];
  v7 = v0[76];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 26);
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[88];
  v11 = v0[85];
  v12 = v0[82];
  v13 = v0[81];
  v14 = v0[80];
  v15 = v0[79];
  v16 = v0[75];
  v17 = v0[74];
  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[70];
  v23 = v0[67];
  v24 = v0[104];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001DD0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_100007224(&qword_10083DBF8, &unk_1006DB6A0);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001DD190, 0, 0);
}

uint64_t sub_1001DD190()
{
  v1 = v0[4];
  v2 = *(v0[2] + 16);
  v0[8] = v2;
  v3 = sub_10000BA08(v1, v1[3]);
  v5 = *v3;
  v4 = v3[1];
  v0[9] = v4;
  v2;

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1001DD28C;
  v7 = v0[7];
  v8 = v0[3];

  return sub_1005E7B5C(v7, v8, v5, v4, 0, 2, 0x6E6F736D697263, 0xE700000000000000);
}

uint64_t sub_1001DD28C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1001DD434;
  }

  else
  {
    v6 = v2[8];
    v5 = v2[9];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = sub_1001DD3D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DD3D0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DD434()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1001DD4A8()
{
  v1[9] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001DD568, 0, 0);
}

uint64_t sub_1001DD568()
{
  v1 = v0[9];
  v2 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
    v4 = swift_allocObject();
    v0[13] = v4;
    v4[2] = v3;
    v4[3] = v2;
    v4[4] = v1;
    v5 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_1001DD7D4;
    v7.n128_u64[0] = 20.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 2, &unk_1006DB7C8, v4, &type metadata for GetPendingCommandsReadyResponse, v7);
  }

  else
  {
    (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v0[10]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8 = v0[12];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001DD7D4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1001DD9B8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1001DD8F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DD8F0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  v7 = objc_allocWithZone(type metadata accessor for NFCPendingCommandsStatus());
  v8 = NFCPendingCommandsStatus.init(isReady:retryInterval:)();

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1001DD9B8()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001DDA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for UUID();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001DDAE8, 0, 0);
}

uint64_t sub_1001DDAE8()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];

  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  v10 = *(v4 + 16);
  v0[23] = v10;
  v11 = *&v10[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
  v0[2] = *&v10[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  v0[3] = v11;
  v0[4] = v7;
  v0[5] = v9;
  v0[6] = 1;
  v0[7] = v6;
  v0[8] = v5;

  v10;
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_1001DDC20;

  return sub_1005E9738((v0 + 9), (v0 + 2));
}

uint64_t sub_1001DDC20()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1001DDDC4;
  }

  else
  {
    v5 = *(v2 + 184);
    sub_10021ECE4(v2 + 16);

    v4 = sub_1001DDD44;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DDD44()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 128);
  *(v5 + 48) = *(v0 + 120);
  *(v5 + 16) = v3;
  *(v5 + 32) = v4;
  *v5 = v2;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001DDDC4()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_10021ECE4((v0 + 2));

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

uint64_t sub_1001DDE38(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1001DDF60, 0, 0);
}

uint64_t sub_1001DDF60()
{
  v1 = v0[24];
  v2 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID + 8);
  if (v2)
  {
    v25 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
    if (v0[23])
    {

      v3 = NFCPendingCommands.commandAPDUs.getter();
      v1 = v0[24];
    }

    else
    {

      v3 = 0;
    }

    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[28];
    v12 = v0[29];
    UUID.init()();
    v13 = UUID.uuidString.getter();
    v23 = v14;
    v24 = v13;
    v15 = *(v12 + 8);
    v15(v9, v11);
    if (v3)
    {
      v16 = v3;
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    v15(v10, v11);
    v20 = *(v1 + 16);
    v0[32] = v20;
    v21 = *&v20[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
    v0[13] = *&v20[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
    v0[14] = v21;
    v0[15] = v17;
    v0[16] = v19;
    v0[17] = 1;
    v0[18] = v25;
    v0[19] = v2;
    v0[20] = v24;
    v0[21] = v23;
    v0[22] = v16;

    v20;
    v22 = swift_task_alloc();
    v0[33] = v22;
    *v22 = v0;
    v22[1] = sub_1001DE288;

    return sub_1005EB62C((v0 + 2), (v0 + 13));
  }

  else
  {
    (*(v0[26] + 104))(v0[27], enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v0[25]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[27];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1001DE288()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_1001DE4B8;
  }

  else
  {
    v5 = *(v2 + 256);
    sub_1000B1684(v2 + 104);

    v4 = sub_1001DE3AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001DE3AC()
{
  v1 = *(v0 + 248);
  v13 = *(v0 + 240);
  v14 = *(v0 + 216);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = objc_allocWithZone(type metadata accessor for NFCPendingCommands());

  v10 = NFCPendingCommands.init(batchId:taskId:commandAPDUs:maxReadSize:)();
  sub_1000ACF44(v0 + 16);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1001DE4B8()
{
  v1 = v0[32];
  sub_1000B1684((v0 + 13));

  v2 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001DE548()
{
  v1[2190] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[2191] = v2;
  v3 = *(v2 - 8);
  v1[2192] = v3;
  v4 = *(v3 + 64) + 15;
  v1[2193] = swift_task_alloc();
  v5 = type metadata accessor for Locale.Language();
  v1[2194] = v5;
  v6 = *(v5 - 8);
  v1[2195] = v6;
  v7 = *(v6 + 64) + 15;
  v1[2196] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_10083DC48, &unk_1006DB7B0) - 8) + 64) + 15;
  v1[2197] = swift_task_alloc();
  v9 = type metadata accessor for Locale();
  v1[2198] = v9;
  v10 = *(v9 - 8);
  v1[2199] = v10;
  v11 = *(v10 + 64) + 15;
  v1[2200] = swift_task_alloc();
  v1[2201] = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_100849BA0, &qword_1006D95F0) - 8) + 64) + 15;
  v1[2202] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v1[2203] = v13;
  v14 = *(v13 - 8);
  v1[2204] = v14;
  v15 = *(v14 + 64) + 15;
  v1[2205] = swift_task_alloc();
  v1[2206] = swift_task_alloc();
  v1[2207] = swift_task_alloc();
  v1[2208] = swift_task_alloc();

  return _swift_task_switch(sub_1001DE7BC, 0, 0);
}

uint64_t sub_1001DE7BC()
{
  v132 = v0;
  type metadata accessor for IdentityProofingImageQualitySettingsProvider();
  v1 = swift_allocObject();
  *(v0 + 17672) = v1;
  *(v1 + 16) = vdupq_n_s64(5uLL);
  *(v1 + 32) = 5;
  *(v1 + 40) = 1036831949;
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v1 + 48) = JSONEncoder.init()();
  *(v1 + 56) = xmmword_1006DAFF0;
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideImageQualitySettings.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    v9 = *(v0 + 17664);
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Overriding workflow image quality settings, using internal settings.", v12, 2u);
    }

    v13 = *(v0 + 17664);
    v14 = *(v0 + 17632);
    v15 = *(v0 + 17624);

    (*(v14 + 8))(v13, v15);
    v129 = sub_1002BC714();

    v16 = *(v0 + 17664);
    v17 = *(v0 + 17656);
    v18 = *(v0 + 17648);
    v19 = *(v0 + 17640);
    v20 = *(v0 + 17616);
    v21 = *(v0 + 17608);
    v22 = *(v0 + 17600);
    v23 = *(v0 + 17576);
    v24 = *(v0 + 17568);
    v25 = *(v0 + 17544);

    v26 = *(v0 + 8);

    return v26(v129);
  }

  v28 = *(*(v0 + 17520) + 112);
  swift_beginAccess();
  sub_10000BBC4(v28 + 144, v0 + 17360, &qword_10083D0A0, &qword_1006DAFC0);
  v29 = *(v0 + 17384);
  if (v29)
  {
    v122 = v5;
    v30 = sub_10000BA08((v0 + 17360), v29);
    v31 = *(v29 - 8);
    v32 = *(v31 + 64) + 15;
    v33 = swift_task_alloc();
    (*(v31 + 16))(v33, v30, v29);
    sub_10000BE18(v0 + 17360, &qword_10083D0A0, &qword_1006DAFC0);
    v128 = *v33;
    v34 = *(v31 + 8);
    v130 = v33[1];

    v34(v33, v29);

    v35 = [objc_opt_self() mainBundle];
    v36 = [v35 infoDictionary];

    if (!v36 || (v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v36, !v37))
    {
      v41 = 0xE700000000000000;
      v126 = 0x6E776F6E6B6E75;
      v127 = 0xE700000000000000;
      v124 = 0x6E776F6E6B6E75;
LABEL_15:
      v125 = v41;
      goto LABEL_27;
    }

    if (*(v37 + 16))
    {

      v38 = sub_10003ADCC(0xD000000000000011, 0x8000000100706F10);
      if (v39)
      {
        sub_10001F2EC(*(v37 + 56) + 32 * v38, v0 + 17400);

        if (swift_dynamicCast())
        {
          v40 = *(v0 + 17504);
          v126 = v40;
          v127 = *(v0 + 17512);
LABEL_21:
          if (*(v37 + 16) && (v56 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v57 & 1) != 0))
          {
            sub_10001F2EC(*(v37 + 56) + 32 * v56, v0 + 17432);

            if (swift_dynamicCast())
            {
              v124 = *(v0 + 17488);
              v41 = *(v0 + 17496);
              goto LABEL_15;
            }
          }

          else
          {
          }

          v124 = 0x6E776F6E6B6E75;
          v125 = 0xE700000000000000;
LABEL_27:
          v58 = *(v0 + 17616);
          v59 = *(v0 + 17608);
          v60 = *(v0 + 17592);
          v61 = *(v0 + 17584);
          static Locale.current.getter();
          Locale.region.getter();
          v62 = *(v60 + 8);
          v62(v59, v61);
          v63 = type metadata accessor for Locale.Region();
          v64 = *(v63 - 8);
          v65 = (*(v64 + 48))(v58, 1, v63);
          v66 = *(v0 + 17616);
          if (v65 == 1)
          {
            sub_10000BE18(*(v0 + 17616), &unk_100849BA0, &qword_1006D95F0);
            v120 = 0x6E776F6E6B6E75;
            v121 = 0xE700000000000000;
          }

          else
          {
            v120 = Locale.Region.identifier.getter();
            v121 = v67;
            (*(v64 + 8))(v66, v63);
          }

          v68 = (v0 + 17184);
          v69 = *(v0 + 17600);
          v70 = *(v0 + 17584);
          v71 = *(v0 + 17576);
          v72 = *(v0 + 17568);
          v73 = *(v0 + 17560);
          v74 = *(v0 + 17552);
          static Locale.current.getter();
          Locale.language.getter();
          v62(v69, v70);
          Locale.Language.languageCode.getter();
          (*(v73 + 8))(v72, v74);
          v75 = type metadata accessor for Locale.LanguageCode();
          v76 = *(v75 - 8);
          v77 = (*(v76 + 48))(v71, 1, v75);
          v78 = *(v0 + 17576);
          if (v77 == 1)
          {
            sub_10000BE18(*(v0 + 17576), &qword_10083DC48, &unk_1006DB7B0);
            v79 = 0xE700000000000000;
            v80 = 0x6E776F6E6B6E75;
          }

          else
          {
            v80 = Locale.LanguageCode.identifier.getter();
            v79 = v81;
            (*(v76 + 8))(v78, v75);
          }

          v82 = [v122 standardUserDefaults];
          v83._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceIMQModelBucket.getter();
          v84 = NSUserDefaults.internalString(forKey:)(v83);

          if (v84.value._object)
          {

            v85 = sub_100082140(v84.value);
            if (v85 != 4)
            {
              v94 = v85;
              v123 = v80;
              v103 = *(v0 + 17656);
              defaultLogger()();

              v104 = Logger.logObject.getter();
              v105 = static os_log_type_t.debug.getter();

              v106 = os_log_type_enabled(v104, v105);
              v107 = *(v0 + 17656);
              v108 = *(v0 + 17632);
              v119 = *(v0 + 17624);
              if (v106)
              {
                v117 = *(v0 + 17656);
                v109 = swift_slowAlloc();
                v118 = v79;
                v110 = swift_slowAlloc();
                v131 = v110;
                *v109 = 136315138;
                v111 = sub_100141FE4(v84.value._countAndFlagsBits, v84.value._object, &v131);

                *(v109 + 4) = v111;
                _os_log_impl(&_mh_execute_header, v104, v105, "Forcing imq profile bucket %s from internal settings", v109, 0xCu);
                sub_10000BB78(v110);
                v79 = v118;

                (*(v108 + 8))(v117, v119);
              }

              else
              {

                (*(v108 + 8))(v107, v119);
              }

              v80 = v123;
LABEL_47:
              v112 = *(v0 + 17520);
              *(v0 + 17272) = v128;
              *(v0 + 17280) = v130;
              *(v0 + 17288) = v126;
              *(v0 + 17296) = v127;
              *(v0 + 17304) = v124;
              *(v0 + 17312) = v125;
              *(v0 + 17320) = v120;
              *(v0 + 17328) = v121;
              *(v0 + 17336) = v80;
              *(v0 + 17344) = v79;
              *(v0 + 17352) = v94;
              *(v0 + 17264) = v94;
              v113 = *(v0 + 17320);
              *(v0 + 17216) = *(v0 + 17304);
              *(v0 + 17232) = v113;
              *(v0 + 17248) = *(v0 + 17336);
              v114 = *(v0 + 17288);
              *v68 = *(v0 + 17272);
              *(v0 + 17200) = v114;
              v115 = *(v112 + 16);
              *(v0 + 17680) = v115;
              v115;
              v116 = swift_task_alloc();
              *(v0 + 17688) = v116;
              *v116 = v0;
              v116[1] = sub_1001DF4B8;

              return sub_1005ECD74(v0 + 8600, v68);
            }
          }

          if (isInternalBuild()())
          {
            v86 = *(v0 + 17648);
            defaultLogger()();
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.debug.getter();
            v89 = os_log_type_enabled(v87, v88);
            v90 = *(v0 + 17648);
            v91 = *(v0 + 17632);
            v92 = *(v0 + 17624);
            if (v89)
            {
              v93 = swift_slowAlloc();
              *v93 = 0;
              _os_log_impl(&_mh_execute_header, v87, v88, "Using internal build imq bucket", v93, 2u);
            }

            (*(v91 + 8))(v90, v92);
            v94 = 3;
          }

          else
          {
            v95 = *(v0 + 17640);
            defaultLogger()();
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.debug.getter();
            v98 = os_log_type_enabled(v96, v97);
            v99 = *(v0 + 17640);
            v100 = *(v0 + 17632);
            v101 = *(v0 + 17624);
            if (v98)
            {
              v102 = swift_slowAlloc();
              *v102 = 0;
              _os_log_impl(&_mh_execute_header, v96, v97, "Using production imq bucket", v102, 2u);
            }

            (*(v100 + 8))(v99, v101);
            v94 = 1;
          }

          goto LABEL_47;
        }
      }

      else
      {
      }
    }

    v126 = 0x6E776F6E6B6E75;
    v127 = 0xE700000000000000;
    goto LABEL_21;
  }

  v42 = *(v0 + 17544);
  v43 = *(v0 + 17536);
  v44 = *(v0 + 17528);
  sub_10000BE18(v0 + 17360, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v43 + 104))(v42, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v44);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v45 = *(v0 + 17664);
  v46 = *(v0 + 17656);
  v47 = *(v0 + 17648);
  v48 = *(v0 + 17640);
  v49 = *(v0 + 17616);
  v50 = *(v0 + 17608);
  v51 = *(v0 + 17600);
  v52 = *(v0 + 17576);
  v53 = *(v0 + 17568);
  v54 = *(v0 + 17544);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1001DF4B8()
{
  v2 = *v1;
  v3 = *(*v1 + 17688);
  v4 = *v1;
  *(v2 + 17696) = v0;

  v5 = *(v2 + 17680);
  if (v0)
  {

    sub_1000AFF90(v2 + 17272);
    v6 = sub_1001DF738;
  }

  else
  {
    sub_1000AFF90(v2 + 17272);

    v6 = sub_1001DF60C;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1001DF60C()
{
  v1 = v0[2209];
  memcpy(v0 + 2, v0 + 1075, 0x2181uLL);
  sub_1002B34A4((v0 + 2));
}

uint64_t sub_1001DF738()
{
  v1 = v0[2209];

  v14 = v0[2212];
  v2 = v0[2208];
  v3 = v0[2207];
  v4 = v0[2206];
  v5 = v0[2205];
  v6 = v0[2202];
  v7 = v0[2201];
  v8 = v0[2200];
  v9 = v0[2197];
  v10 = v0[2196];
  v11 = v0[2193];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001DF838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1280) = v7;
  *(v8 + 1272) = a7;
  *(v8 + 1264) = a6;
  *(v8 + 458) = a5;
  *(v8 + 1256) = a4;
  *(v8 + 1248) = a3;
  *(v8 + 1240) = a2;
  *(v8 + 1232) = a1;
  v9 = type metadata accessor for DIPError();
  *(v8 + 1288) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1296) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_100835E38, &qword_1006C49F0) - 8) + 64) + 15;
  *(v8 + 1320) = swift_task_alloc();
  *(v8 + 1328) = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_100836328, &unk_1006C51B0) - 8) + 64) + 15;
  *(v8 + 1336) = swift_task_alloc();
  *(v8 + 1344) = swift_task_alloc();
  v14 = type metadata accessor for PDF417Data();
  *(v8 + 1352) = v14;
  v15 = *(v14 - 8);
  *(v8 + 1360) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 1368) = swift_task_alloc();
  v17 = *(*(sub_100007224(&qword_10083D6A0, &unk_1006DB700) - 8) + 64) + 15;
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  v18 = *(*(sub_100007224(&unk_10084A140, &unk_1006DB430) - 8) + 64) + 15;
  *(v8 + 1392) = swift_task_alloc();
  *(v8 + 1400) = swift_task_alloc();
  *(v8 + 1408) = swift_task_alloc();
  *(v8 + 1416) = swift_task_alloc();
  *(v8 + 1424) = swift_task_alloc();
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  *(v8 + 1472) = swift_task_alloc();
  *(v8 + 1480) = swift_task_alloc();
  v19 = type metadata accessor for TiberiusWrappedAssessment(0);
  *(v8 + 1488) = v19;
  v20 = *(v19 - 8);
  *(v8 + 1496) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = swift_task_alloc();
  *(v8 + 1520) = swift_task_alloc();
  v22 = *(*(sub_100007224(&qword_100835E40, &qword_1006C49F8) - 8) + 64) + 15;
  *(v8 + 1528) = swift_task_alloc();
  v23 = *(*(sub_100007224(&qword_10083D6A8, &qword_1006DB710) - 8) + 64) + 15;
  *(v8 + 1536) = swift_task_alloc();
  *(v8 + 1544) = swift_task_alloc();
  *(v8 + 1552) = swift_task_alloc();
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  v24 = type metadata accessor for HPKESuiteKwV1();
  *(v8 + 1576) = v24;
  v25 = *(v24 - 8);
  *(v8 + 1584) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 1592) = swift_task_alloc();
  v27 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v8 + 1600) = swift_task_alloc();
  v28 = type metadata accessor for IdentityDocumentType.Category();
  *(v8 + 1608) = v28;
  v29 = *(v28 - 8);
  *(v8 + 1616) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 1624) = swift_task_alloc();
  *(v8 + 1632) = swift_task_alloc();
  *(v8 + 1640) = swift_task_alloc();
  *(v8 + 1648) = swift_task_alloc();
  v31 = type metadata accessor for DIPError.Code();
  *(v8 + 1656) = v31;
  v32 = *(v31 - 8);
  *(v8 + 1664) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 1672) = swift_task_alloc();
  v34 = type metadata accessor for Logger();
  *(v8 + 1680) = v34;
  v35 = *(v34 - 8);
  *(v8 + 1688) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 1696) = swift_task_alloc();
  *(v8 + 1704) = swift_task_alloc();
  *(v8 + 1712) = swift_task_alloc();
  *(v8 + 1720) = swift_task_alloc();
  *(v8 + 1728) = swift_task_alloc();
  *(v8 + 1736) = swift_task_alloc();
  *(v8 + 1744) = swift_task_alloc();
  *(v8 + 1752) = swift_task_alloc();
  *(v8 + 1760) = swift_task_alloc();
  *(v8 + 1768) = swift_task_alloc();
  *(v8 + 1776) = swift_task_alloc();
  *(v8 + 1784) = swift_task_alloc();
  *(v8 + 1792) = swift_task_alloc();
  *(v8 + 1800) = swift_task_alloc();
  *(v8 + 1808) = swift_task_alloc();
  *(v8 + 1816) = swift_task_alloc();
  *(v8 + 1824) = swift_task_alloc();
  *(v8 + 1832) = swift_task_alloc();
  *(v8 + 1840) = swift_task_alloc();
  *(v8 + 1848) = swift_task_alloc();
  *(v8 + 1856) = swift_task_alloc();
  *(v8 + 1864) = swift_task_alloc();
  *(v8 + 1872) = swift_task_alloc();
  *(v8 + 1880) = swift_task_alloc();
  *(v8 + 1888) = swift_task_alloc();

  return _swift_task_switch(sub_1001DFF04, 0, 0);
}

uint64_t sub_1001DFF04()
{
  v90 = v0;
  v1 = v0[236];
  v2 = v0[155];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[155];
    v7 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100141FE4(0xD000000000000069, 0x8000000100706280, v89);
    *(v7 + 12) = 2080;
    if (v6 && (v8 = IdentityProofingConfiguration.credentialIdentifier.getter(), v9))
    {
      v10 = v9;
    }

    else
    {

      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v15 = v0[236];
    v16 = v0[211];
    v17 = v0[210];
    v18 = sub_100141FE4(v8, v10, v89);

    *(v7 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s , credentialIdentifier = %s", v7, 0x16u);
    swift_arrayDestroy();

    v14 = *(v16 + 8);
    v14(v15, v17);
  }

  else
  {
    v11 = v0[236];
    v12 = v0[211];
    v13 = v0[210];

    v14 = *(v12 + 8);
    v14(v11, v13);
  }

  v0[237] = v14;
  v19 = objc_opt_self();
  v0[238] = v19;
  v20 = [v19 standardUserDefaults];
  v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceProofingFailure.getter();
  v22 = NSUserDefaults.internalBool(forKey:)(v21);

  if (v22)
  {
    v23 = v0[161];
    (*(v0[208] + 104))(v0[209], enum case for DIPError.Code.unableToAddID(_:), v0[207]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001F3808();
    v24 = v0[236];
    v25 = v0[235];
    v26 = v0[234];
    v27 = v0[233];
    v28 = v0[232];
    v29 = v0[231];
    v30 = v0[230];
    v31 = v0[229];
    v32 = v0[228];
    v33 = v0[227];
    v37 = v0[226];
    v38 = v0[225];
    v39 = v0[224];
    v40 = v0[223];
    v41 = v0[222];
    v42 = v0[221];
    v43 = v0[220];
    v44 = v0[219];
    v45 = v0[218];
    v46 = v0[217];
    v47 = v0[216];
    v48 = v0[215];
    v49 = v0[214];
    v50 = v0[213];
    v51 = v0[212];
    v52 = v0[209];
    v53 = v0[206];
    v54 = v0[205];
    v55 = v0[204];
    v56 = v0[203];
    v57 = v0[200];
    v58 = v0[199];
    v59 = v0[196];
    v60 = v0[195];
    v61 = v0[194];
    v62 = v0[193];
    v63 = v0[192];
    v64 = v0[191];
    v65 = v0[190];
    v66 = v0[189];
    v67 = v0[188];
    v68 = v0[185];
    v69 = v0[184];
    v70 = v0[183];
    v71 = v0[182];
    v72 = v0[181];
    v73 = v0[180];
    v74 = v0[179];
    v75 = v0[178];
    v76 = v0[177];
    v77 = v0[176];
    v78 = v0[175];
    v79 = v0[174];
    v80 = v0[173];
    v81 = v0[172];
    v82 = v0[171];
    v83 = v0[168];
    v84 = v0[167];
    v85 = v0[166];
    v86 = v0[165];
    v87 = v0[164];
    v88 = v0[163];

    v34 = v0[1];

    return v34();
  }

  else
  {
    v36 = swift_task_alloc();
    v0[239] = v36;
    *v36 = v0;
    v36[1] = sub_1001E0638;

    return sub_10020861C();
  }
}

uint64_t sub_1001E0638()
{
  v2 = *(*v1 + 1912);
  v5 = *v1;
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v3 = sub_1001E1040;
  }

  else
  {
    v3 = sub_1001E074C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E074C()
{
  v110 = v0;
  v1 = *(v0 + 1240);
  v2._object = 0x8000000100706230;
  v2._countAndFlagsBits = 0xD000000000000012;
  debugLogFootprint(_:)(v2);
  if (v1)
  {
    v3 = *(v0 + 1880);
    v4 = *(v0 + 1240);
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 1256);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v109 = v9;
      *v8 = 136446210;
      v10 = stringsArrayFromIdentityProofingOptions();
      if (!v10)
      {
        __break(1u);
        return OS_dispatch_group.wait()();
      }

      v11 = v10;
      v106 = *(v0 + 1880);
      v108 = *(v0 + 1896);
      v12 = *(v0 + 1688);
      v13 = *(v0 + 1680);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = Array.description.getter();
      v16 = v15;

      v17 = sub_100141FE4(v14, v16, &v109);

      *(v8 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Proof identity called with proofing options: %{public}s", v8, 0xCu);
      sub_10000BB78(v9);

      v108(v106, v13);
    }

    else
    {
      v31 = *(v0 + 1896);
      v32 = *(v0 + 1880);
      v33 = *(v0 + 1688);
      v34 = *(v0 + 1680);

      v31(v32, v34);
    }

    v35 = *(v0 + 1280);
    v36 = *(v35 + 112);
    swift_beginAccess();
    sub_10000BBC4(v36 + 144, v0 + 752, &qword_10083D0A0, &qword_1006DAFC0);
    v37 = *(v0 + 776);
    sub_10000BE18(v0 + 752, &qword_10083D0A0, &qword_1006DAFC0);
    if (v37)
    {
      v38 = *(v0 + 1240);
      v39 = *(v35 + 112);
      v40 = *(v39 + 112);
      swift_beginAccess();
      sub_10000BBC4(v39 + 144, v0 + 1032, &qword_10083D0A0, &qword_1006DAFC0);
      v41 = *(v0 + 1056);
      sub_10000BE18(v0 + 1032, &qword_10083D0A0, &qword_1006DAFC0);
      IdentityProofingConfiguration.documentType.getter();
      type metadata accessor for DaemonAnalytics();
      static DaemonAnalytics.sendDynamicWorkflowNeededEvent(providerID:wasFetchedInTime:didError:)();
    }

    else
    {
      v42 = *(v0 + 1872);
      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "The dynamic workflow is nil. Will attempt to refetch workflow", v45, 2u);
      }

      v46 = *(v0 + 1896);
      v47 = *(v0 + 1872);
      v48 = *(v0 + 1688);
      v49 = *(v0 + 1680);
      v50 = *(v0 + 1240);

      v46(v47, v49);
      v51 = *(v35 + 112);

      sub_1001A6ED4(v50);
    }

    v52 = *(*(v35 + 112) + 104);
    *(v0 + 1928) = v52;
    v53 = async function pointer to OS_dispatch_group.wait()[1];
    v52;
    v54 = swift_task_alloc();
    *(v0 + 1936) = v54;
    *v54 = v0;
    v54[1] = sub_1001E141C;

    return OS_dispatch_group.wait()();
  }

  v18 = *(v0 + 1288);
  (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.proofingConfigurationUnavailable(_:), *(v0 + 1656));
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1001F3808();
  v19 = *(v0 + 1888);
  v20 = *(v0 + 1880);
  v21 = *(v0 + 1872);
  v22 = *(v0 + 1864);
  v23 = *(v0 + 1856);
  v24 = *(v0 + 1848);
  v25 = *(v0 + 1840);
  v26 = *(v0 + 1832);
  v27 = *(v0 + 1824);
  v28 = *(v0 + 1816);
  v55 = *(v0 + 1808);
  v56 = *(v0 + 1800);
  v57 = *(v0 + 1792);
  v58 = *(v0 + 1784);
  v59 = *(v0 + 1776);
  v60 = *(v0 + 1768);
  v61 = *(v0 + 1760);
  v62 = *(v0 + 1752);
  v63 = *(v0 + 1744);
  v64 = *(v0 + 1736);
  v65 = *(v0 + 1728);
  v66 = *(v0 + 1720);
  v67 = *(v0 + 1712);
  v68 = *(v0 + 1704);
  v69 = *(v0 + 1696);
  v70 = *(v0 + 1672);
  v71 = *(v0 + 1648);
  v72 = *(v0 + 1640);
  v73 = *(v0 + 1632);
  v74 = *(v0 + 1624);
  v75 = *(v0 + 1600);
  v76 = *(v0 + 1592);
  v77 = *(v0 + 1568);
  v78 = *(v0 + 1560);
  v79 = *(v0 + 1552);
  v80 = *(v0 + 1544);
  v81 = *(v0 + 1536);
  v82 = *(v0 + 1528);
  v83 = *(v0 + 1520);
  v84 = *(v0 + 1512);
  v85 = *(v0 + 1504);
  v86 = *(v0 + 1480);
  v87 = *(v0 + 1472);
  v88 = *(v0 + 1464);
  v89 = *(v0 + 1456);
  v90 = *(v0 + 1448);
  v91 = *(v0 + 1440);
  v92 = *(v0 + 1432);
  v93 = *(v0 + 1424);
  v94 = *(v0 + 1416);
  v95 = *(v0 + 1408);
  v96 = *(v0 + 1400);
  v97 = *(v0 + 1392);
  v98 = *(v0 + 1384);
  v99 = *(v0 + 1376);
  v100 = *(v0 + 1368);
  v101 = *(v0 + 1344);
  v102 = *(v0 + 1336);
  v103 = *(v0 + 1328);
  v104 = *(v0 + 1320);
  v105 = *(v0 + 1312);
  v107 = *(v0 + 1304);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1001E1040()
{
  sub_1001F3808();
  v65 = v0[240];
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[234];
  v4 = v0[233];
  v5 = v0[232];
  v6 = v0[231];
  v7 = v0[230];
  v8 = v0[229];
  v9 = v0[228];
  v10 = v0[227];
  v13 = v0[226];
  v14 = v0[225];
  v15 = v0[224];
  v16 = v0[223];
  v17 = v0[222];
  v18 = v0[221];
  v19 = v0[220];
  v20 = v0[219];
  v21 = v0[218];
  v22 = v0[217];
  v23 = v0[216];
  v24 = v0[215];
  v25 = v0[214];
  v26 = v0[213];
  v27 = v0[212];
  v28 = v0[209];
  v29 = v0[206];
  v30 = v0[205];
  v31 = v0[204];
  v32 = v0[203];
  v33 = v0[200];
  v34 = v0[199];
  v35 = v0[196];
  v36 = v0[195];
  v37 = v0[194];
  v38 = v0[193];
  v39 = v0[192];
  v40 = v0[191];
  v41 = v0[190];
  v42 = v0[189];
  v43 = v0[188];
  v44 = v0[185];
  v45 = v0[184];
  v46 = v0[183];
  v47 = v0[182];
  v48 = v0[181];
  v49 = v0[180];
  v50 = v0[179];
  v51 = v0[178];
  v52 = v0[177];
  v53 = v0[176];
  v54 = v0[175];
  v55 = v0[174];
  v56 = v0[173];
  v57 = v0[172];
  v58 = v0[171];
  v59 = v0[168];
  v60 = v0[167];
  v61 = v0[166];
  v62 = v0[165];
  v63 = v0[164];
  v64 = v0[163];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001E141C()
{
  v1 = *(*v0 + 1936);
  v2 = *(*v0 + 1928);
  v4 = *v0;

  return _swift_task_switch(sub_1001E1530, 0, 0);
}

uint64_t sub_1001E1530()
{
  v270 = v0;
  v1 = *(*(v0 + 1280) + 112);
  if (*(v1 + 112))
  {
    v2 = *(v0 + 1288);
    v3 = *(v0 + 1240);
    (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.internalError(_:), *(v0 + 1656));
    swift_errorRetain();
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_20:
    sub_1001F3808();
    v38 = *(v0 + 1888);
    v39 = *(v0 + 1880);
    v40 = *(v0 + 1872);
    v41 = *(v0 + 1864);
    v42 = *(v0 + 1856);
    v43 = *(v0 + 1848);
    v44 = *(v0 + 1840);
    v45 = *(v0 + 1832);
    v46 = *(v0 + 1824);
    v47 = *(v0 + 1816);
    v205 = *(v0 + 1808);
    v206 = *(v0 + 1800);
    v207 = *(v0 + 1792);
    v208 = *(v0 + 1784);
    v209 = *(v0 + 1776);
    v210 = *(v0 + 1768);
    v211 = *(v0 + 1760);
    v212 = *(v0 + 1752);
    v213 = *(v0 + 1744);
    v214 = *(v0 + 1736);
    v215 = *(v0 + 1728);
    v216 = *(v0 + 1720);
    v217 = *(v0 + 1712);
    v218 = *(v0 + 1704);
    v219 = *(v0 + 1696);
    v220 = *(v0 + 1672);
    v221 = *(v0 + 1648);
    v222 = *(v0 + 1640);
    v223 = *(v0 + 1632);
    v224 = *(v0 + 1624);
    v225 = *(v0 + 1600);
    v226 = *(v0 + 1592);
    v227 = *(v0 + 1568);
    v228 = *(v0 + 1560);
    v229 = *(v0 + 1552);
    v230 = *(v0 + 1544);
    v231 = *(v0 + 1536);
    v232 = *(v0 + 1528);
    v233 = *(v0 + 1520);
    v234 = *(v0 + 1512);
    v235 = *(v0 + 1504);
    v236 = *(v0 + 1480);
    v237 = *(v0 + 1472);
    v238 = *(v0 + 1464);
    v239 = *(v0 + 1456);
    v240 = *(v0 + 1448);
    v241 = *(v0 + 1440);
    v242 = *(v0 + 1432);
    v243 = *(v0 + 1424);
    v244 = *(v0 + 1416);
    v245 = *(v0 + 1408);
    v246 = *(v0 + 1400);
    v247 = *(v0 + 1392);
    v248 = *(v0 + 1384);
    v250 = *(v0 + 1376);
    v252 = *(v0 + 1368);
    v254 = *(v0 + 1344);
    v256 = *(v0 + 1336);
    v258 = *(v0 + 1328);
    v260 = *(v0 + 1320);
    v262 = *(v0 + 1312);
    v265 = *(v0 + 1304);

    v48 = *(v0 + 8);

    return v48();
  }

  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 952, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 976))
  {
    v18 = *(v0 + 1672);
    v19 = *(v0 + 1664);
    v20 = *(v0 + 1656);
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1240);
    sub_10000BE18(v0 + 952, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v19 + 104))(v18, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_20;
  }

  sub_10001F358((v0 + 952), v0 + 992);
  v4 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
  swift_beginAccess();
  sub_10000BBC4(v1 + v4, v0 + 704, &qword_10083D4B8, &qword_1006DB470);
  if (!*(v0 + 728))
  {
    v23 = *(v0 + 1672);
    v24 = *(v0 + 1664);
    v25 = *(v0 + 1656);
    v26 = *(v0 + 1288);
    v27 = *(v0 + 1240);
    sub_10000BE18(v0 + 704, &qword_10083D4B8, &qword_1006DB470);
    (*(v24 + 104))(v23, enum case for DIPError.Code.baaCertificateDoesntExist(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_19:
    sub_10000BB78((v0 + 992));
    goto LABEL_20;
  }

  v5 = *(v0 + 720);
  *(v0 + 656) = *(v0 + 704);
  *(v0 + 672) = v5;
  *(v0 + 688) = *(v0 + 736);
  v6 = *(v1 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);
  *(v0 + 1944) = v6;
  if (!v6)
  {
    v28 = *(v0 + 1288);
    v29 = *(v0 + 1240);
    (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.cannotBuildDeviceDataForAssessor(_:), *(v0 + 1656));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_18:
    sub_1001B7154(v0 + 656);
    goto LABEL_19;
  }

  v7 = *(v0 + 1648);
  v8 = *(v0 + 1640);
  v9 = *(v0 + 1616);
  v10 = *(v0 + 1608);
  v11 = *(v0 + 1280);
  v12 = *(v0 + 1240);
  v13 = *(*(v11 + 120) + 144);
  *(v0 + 1952) = v13;

  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  *(v0 + 460) = enum case for IdentityDocumentType.Category.mDL(_:);
  v14 = *(v9 + 104);
  *(v0 + 1960) = v14;
  *(v0 + 1968) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v8);
  LOBYTE(v12) = static IdentityDocumentType.Category.== infix(_:_:)();
  v15 = *(v9 + 8);
  *(v0 + 1976) = v15;
  *(v0 + 1984) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v8, v10);
  v15(v7, v10);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v13)
  {
    v30 = *(v0 + 1288);
    v31 = *(v0 + 1240);
    (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.odnNotInitialized(_:), *(v0 + 1656));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_18;
  }

  if (v13[13])
  {
    v16 = v13[12];
    v17 = v13[13];
  }

  else
  {
    v16 = v13[14];
    v17 = v13[15];
  }

  v32 = *(v0 + 1600);
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v13;
  v34[5] = v16;
  v34[6] = v17;

  sub_1003E653C(0, 0, v32, &unk_1006E9F00, v34);

LABEL_16:
  v35 = *(v0 + 1920);
  v36 = *(v0 + 688);
  sub_10000BA08((v0 + 656), *(v0 + 680));
  dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  if (v35)
  {
    v37 = *(v0 + 1240);

    goto LABEL_18;
  }

  v50 = *(v0 + 1592);
  v51 = *(v0 + 1584);
  v52 = *(v0 + 1576);
  v53 = *(v0 + 458);
  v54 = *(v0 + 1248);
  HPKESuiteKwV1.init(pkISm:info:)();
  v55 = *(v11 + 120);
  *(v0 + 936) = v52;
  *(v0 + 944) = &protocol witness table for HPKESuiteKwV1;
  v56 = sub_100032DBC((v0 + 912));
  v57 = *(v51 + 16);
  *(v0 + 1992) = v57;
  *(v0 + 2000) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57(v56, v50, v52);

  sub_1001CABFC(v54, v0 + 912, v53);
  *(v0 + 2008) = 0;
  v58 = *(v0 + 1568);
  v59 = *(v0 + 1280);

  sub_10000BB78((v0 + 912));
  v60 = *(v11 + 120);
  v61 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_pdf417Data;
  swift_beginAccess();
  sub_10000BBC4(v60 + v61, v58, &qword_10083D6A8, &qword_1006DB710);
  v62 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
  *(v0 + 2016) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
  swift_beginAccess();
  sub_1000B2764(v58, v59 + v62, &qword_10083D6A8, &qword_1006DB710);
  swift_endAccess();
  sub_10000BBC4(v59 + v62, v58, &qword_10083D6A8, &qword_1006DB710);
  IdentityDocumentType.init(pdf417Data:)();
  if (v63)
  {
    v64 = *(v0 + 1240);
    IdentityProofingConfiguration.state.getter();
    if (v65)
    {
      v66 = *(v0 + 1240);
      IdentityProofingConfiguration.country.getter();
      if (v67)
      {
        v68 = sub_1005127B4();

        if (v68 != 6)
        {
          sub_10050E574(v68);
        }

        v69 = *(v0 + 1864);
        defaultLogger()();
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.debug.getter();
        v72 = os_log_type_enabled(v70, v71);
        v73 = *(v0 + 1896);
        v74 = *(v0 + 1864);
        v75 = *(v0 + 1688);
        v76 = *(v0 + 1680);
        if (v72)
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v269[0] = v78;
          *v77 = 136315138;
          *(v77 + 4) = sub_100141FE4(0x3E6C696E3CLL, 0xE500000000000000, v269);
          _os_log_impl(&_mh_execute_header, v70, v71, "IdentityProofingRequestManager got docSubType: %s from existing device pass", v77, 0xCu);
          sub_10000BB78(v78);
        }

        v73(v74, v76);
      }

      else
      {
      }
    }
  }

  v79 = *(v0 + 1896);
  v80 = *(v0 + 1856);
  v81 = *(v0 + 1688);
  v82 = *(v0 + 1680);
  v83 = *(v0 + 1280);
  v84 = *(v0 + 1256);
  v85 = *(v0 + 1240);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.rawValue.getter();
  IdentityDocumentType.rawValue.getter();
  defaultLogger()();
  Logger.sensitive(_:)();
  *(v0 + 2024) = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v79(v80, v82);
  v86 = sub_1005A0FE0(&off_1007FB6E8);
  if ((v84 & 1) != 0 || (v86 & v84) != v86)
  {
    v88 = *(v0 + 1240);
    IdentityProofingConfiguration.accountKeyIdentifier.getter();
    if (v89)
    {

      v87 = 3;
    }

    else
    {
      v87 = 0;
    }
  }

  else
  {
    v87 = 2;
  }

  *(v0 + 459) = v87;
  v90 = *(v0 + 1240);
  IdentityProofingConfiguration.documentType.getter();
  v91 = IdentityDocumentType.rawValue.getter();
  if (v91 == IdentityDocumentType.rawValue.getter())
  {
    v92 = *(v0 + 1240);
    IdentityProofingConfiguration.piiTokenIdentifier.getter();
    if (v93)
    {
      if (qword_100832C20 != -1)
      {
        swift_once();
      }

      v94 = *(qword_100882228 + 16);
      *(v0 + 2032) = v94;
      v95 = v94;
      v96 = String._bridgeToObjectiveC()();
      *(v0 + 2040) = v96;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 457;
      *(v0 + 24) = sub_1001E306C;
      v97 = swift_continuation_init();
      *(v0 + 136) = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10058DEE8;
      *(v0 + 104) = &unk_10080AA98;
      *(v0 + 112) = v97;
      [v95 isPIITokenAvailableForIdentifier:v96 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v87 = 0;
  }

  *(v0 + 521) = v87;
  v98 = *(v0 + 1248);
  v99 = IdentityProofingDocuments.frontID.getter();
  if (v99)
  {
    v100 = v99;
    v268 = IdentityDocument.scanMetrics.getter();
  }

  else
  {
    v268 = 0;
  }

  v101 = *(v0 + 1248);
  v102 = IdentityProofingDocuments.backID.getter();
  if (v102)
  {
    v103 = v102;
    v263 = IdentityDocument.scanMetrics.getter();
  }

  else
  {
    v263 = 0;
  }

  v104 = *(v0 + 1248);
  v105 = IdentityProofingDocuments.frontID.getter();
  if (v105)
  {
    v106 = v105;
    v107 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v107 = 0;
  }

  v108 = *(v0 + 1248);
  v109 = IdentityProofingDocuments.backID.getter();
  if (v109)
  {
    v110 = v109;
    v266 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v266 = 0;
  }

  v111 = *(v0 + 1248);
  v112 = IdentityProofingDocuments.selfie.getter();
  if (v112)
  {
    v113 = v112;
    v261 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v261 = 0;
  }

  v114 = *(v0 + 1248);
  v115 = IdentityProofingDocuments.liveness.getter();
  if (v115)
  {
    v116 = v115;
    v259 = IdentityLivenessResults.activeMetrics.getter();
  }

  else
  {
    v259 = 0;
  }

  v117 = *(v0 + 1248);
  v118 = IdentityProofingDocuments.liveness.getter();
  if (v118)
  {
    v119 = v118;
    v120 = IdentityLivenessResults.passiveMetrics.getter();
  }

  else
  {
    v120 = 0;
  }

  v121 = *(v0 + 1248);
  v122 = IdentityProofingDocuments.nfc.getter();
  if (v122)
  {
    v123 = v122;
    v124 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v124 = 0;
  }

  v125 = *(v0 + 2008);
  v249 = *(v0 + 1280);
  v251 = *(v0 + 1248);
  v253 = *(v0 + 1528);
  v255 = *(v0 + 1240);
  v257 = *(v0 + 1256);
  *(v0 + 2056) = sub_1002B0020(v268, v263, v107, v266, v261, v259, v120, v124);

  v126 = *(v249 + 88);

  v127 = IdentityProofingDocuments.liveness.getter();
  sub_1002BFF90(v127, v253);

  v128 = sub_10020442C(v255, v257);
  if (v125)
  {
    v129 = *(v0 + 1952);
    v130 = *(v0 + 1944);
    v131 = *(v0 + 1592);
    v132 = *(v0 + 1584);
    v133 = *(v0 + 1576);
    v134 = *(v0 + 1528);
    v135 = *(v0 + 1240);

    sub_10000BE18(v134, &qword_100835E40, &qword_1006C49F8);
    (*(v132 + 8))(v131, v133);
    sub_1001B7154(v0 + 656);
    sub_10000BB78((v0 + 992));
    goto LABEL_20;
  }

  if (v128)
  {
    v136 = *(v0 + 1848);
    defaultLogger()();
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&_mh_execute_header, v137, v138, "Preparing proofing request for Async Step Up.", v139, 2u);
    }

    v140 = *(v0 + 2024);
    v141 = *(v0 + 1896);
    v142 = *(v0 + 1848);
    v143 = *(v0 + 1680);
    v144 = *(v0 + 1256);
    v145 = *(v0 + 1240);

    v141(v142, v143);
    sub_1002094C0(v145, v144);
    *(v0 + 2064) = v146;
    *(v0 + 2072) = v147;
    v160 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2080) = v160;
    v161 = async function pointer to OS_dispatch_group.wait()[1];
    v160;
    v162 = swift_task_alloc();
    *(v0 + 2088) = v162;
    *v162 = v0;
    v162[1] = sub_1001E3E74;

    return OS_dispatch_group.wait()();
  }

  v148 = *(v0 + 1984);
  v149 = *(v0 + 1976);
  v150 = *(v0 + 1968);
  v151 = *(v0 + 1960);
  v152 = *(v0 + 460);
  v153 = *(v0 + 1648);
  v154 = *(v0 + 1640);
  v155 = *(v0 + 1608);
  v156 = *(v0 + 1240);
  *(v0 + 1224) = &_swiftEmptyDictionarySingleton;
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v151(v154, v152, v155);
  LOBYTE(v156) = static IdentityDocumentType.Category.== infix(_:_:)();
  v149(v154, v155);
  v149(v153, v155);
  v157 = _swiftEmptyArrayStorage;
  if (v156)
  {
    v158 = *(v0 + 1944);
    v159 = sub_1005A0C74();
    v163 = *(v0 + 1816);
    if (v159)
    {
      v164 = v159;
    }

    else
    {
      v164 = _swiftEmptyArrayStorage;
    }

    v157 = sub_1001D2AC4(v164);

    defaultLogger()();
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.debug.getter();
    v167 = os_log_type_enabled(v165, v166);
    v168 = *(v0 + 2024);
    v169 = *(v0 + 1896);
    v170 = *(v0 + 1816);
    v171 = *(v0 + 1680);
    if (v167)
    {
      v172 = swift_slowAlloc();
      v267 = v169;
      v173 = swift_slowAlloc();
      v269[0] = v173;
      *v172 = 136315138;

      v264 = v170;
      v174 = Array.description.getter();
      v176 = v175;

      v177 = sub_100141FE4(v174, v176, v269);

      *(v172 + 4) = v177;
      _os_log_impl(&_mh_execute_header, v165, v166, "PAC Signatures: %s", v172, 0xCu);
      sub_10000BB78(v173);

      v267(v264, v171);
    }

    else
    {

      v169(v170, v171);
    }
  }

  *(v0 + 2200) = v157;
  v178 = *(v0 + 1240);
  *(v0 + 1216) = _swiftEmptyArrayStorage;
  v179 = IdentityProofingConfiguration.credentialIdentifier.getter();
  if (v180)
  {
    v181 = v179;
    v182 = v180;
    v183 = HIBYTE(v180) & 0xF;
    if ((v180 & 0x2000000000000000) == 0)
    {
      v183 = v179 & 0xFFFFFFFFFFFFLL;
    }

    if (v183)
    {
      v184 = *(v0 + 1672);
      v185 = *(v0 + 1664);
      v186 = *(v0 + 1656);
      v187 = *(v0 + 1512);
      v188 = *(v0 + 1488);
      (*(v185 + 104))(v184, enum case for DIPError.Code.odnNoAssessmentAvailableForWatch(_:), v186);
      v189 = DIPError.Code.rawValue.getter();
      (*(v185 + 8))(v184, v186);
      LOBYTE(v269[0]) = 1;
      v190 = *(v188 + 32);
      v191 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v191 - 8) + 56))(v187 + v190, 1, 1, v191);
      *(v187 + 48) = 0u;
      *(v187 + 64) = 0u;
      *(v187 + 16) = 0u;
      *(v187 + 32) = 0u;
      *v187 = 0u;
      *(v187 + 80) = v189;
      *(v187 + 88) = 0;
      *(v187 + 96) = 1;
      *(v187 + 104) = 0u;
      *(v187 + 120) = 0u;
      *(v187 + 136) = 2;
      *(v187 + 144) = 0;
      *(v187 + 152) = 0;
      *(v0 + 2304) = v182;
      *(v0 + 2296) = v181;
      v192 = *(v0 + 1280);
      v193 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
      *(v0 + 2312) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
      v194 = (v192 + v193);
      v195 = v194[1];
      *v194 = v181;
      v194[1] = v182;

      *(v0 + 2320) = *(v192 + 72);
      v196 = qword_100832C20;

      if (v196 != -1)
      {
        swift_once();
      }

      v197 = qword_100882228;
      *(v0 + 2328) = qword_100882228;
      v198 = *(v197 + 16);
      *(v0 + 2336) = v198;
      v199 = v198;
      v200 = swift_task_alloc();
      *(v0 + 2344) = v200;
      *v200 = v0;
      v200[1] = sub_1001E7310;

      return sub_10021A4D8(v181, v182, v199);
    }
  }

  *(v0 + 2208) = *(*(v0 + 1280) + 72);
  v201 = qword_100832C20;

  if (v201 != -1)
  {
    swift_once();
  }

  v202 = *(qword_100882228 + 16);
  *(v0 + 2216) = v202;
  v203 = v202;
  v204 = swift_task_alloc();
  *(v0 + 2224) = v204;
  *v204 = v0;
  v204[1] = sub_1001E61AC;

  return sub_100206178(1, v203);
}

uint64_t sub_1001E306C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 2048) = v2;
  if (v2)
  {
    v3 = sub_1001EF978;
  }

  else
  {
    v3 = sub_1001E317C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001E317C()
{
  v189 = v0;
  v1 = *(v0 + 2040);
  v2 = *(v0 + 459);

  v3 = *(v0 + 457);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 521) = v4;
  v5 = *(v0 + 1248);
  v6 = IdentityProofingDocuments.frontID.getter();
  if (v6)
  {
    v7 = v6;
    v8 = IdentityDocument.scanMetrics.getter();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 1248);
  v10 = IdentityProofingDocuments.backID.getter();
  if (v10)
  {
    v11 = v10;
    v187 = IdentityDocument.scanMetrics.getter();
  }

  else
  {
    v187 = 0;
  }

  v12 = *(v0 + 1248);
  v13 = IdentityProofingDocuments.frontID.getter();
  if (v13)
  {
    v14 = v13;
    v184 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v184 = 0;
  }

  v15 = *(v0 + 1248);
  v16 = IdentityProofingDocuments.backID.getter();
  if (v16)
  {
    v17 = v16;
    v181 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v181 = 0;
  }

  v18 = *(v0 + 1248);
  v19 = IdentityProofingDocuments.selfie.getter();
  if (v19)
  {
    v20 = v19;
    v179 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v179 = 0;
  }

  v21 = *(v0 + 1248);
  v22 = IdentityProofingDocuments.liveness.getter();
  if (v22)
  {
    v23 = v22;
    v177 = IdentityLivenessResults.activeMetrics.getter();
  }

  else
  {
    v177 = 0;
  }

  v24 = *(v0 + 1248);
  v25 = IdentityProofingDocuments.liveness.getter();
  if (v25)
  {
    v26 = v25;
    v27 = IdentityLivenessResults.passiveMetrics.getter();
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v0 + 1248);
  v29 = IdentityProofingDocuments.nfc.getter();
  if (v29)
  {
    v30 = v29;
    v31 = IdentityDocument.imageMetrics.getter();
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v0 + 2008);
  v167 = *(v0 + 1280);
  v169 = *(v0 + 1248);
  v171 = *(v0 + 1528);
  v173 = *(v0 + 1240);
  v175 = *(v0 + 1256);
  *(v0 + 2056) = sub_1002B0020(v8, v187, v184, v181, v179, v177, v27, v31);

  v33 = *(v167 + 88);

  v34 = IdentityProofingDocuments.liveness.getter();
  sub_1002BFF90(v34, v171);

  v35 = sub_10020442C(v173, v175);
  if (v32)
  {
    v36 = *(v0 + 1952);
    v37 = *(v0 + 1944);
    v38 = *(v0 + 1592);
    v39 = *(v0 + 1584);
    v40 = *(v0 + 1576);
    v41 = *(v0 + 1528);
    v42 = *(v0 + 1240);

    sub_10000BE18(v41, &qword_100835E40, &qword_1006C49F8);
    (*(v39 + 8))(v38, v40);
    sub_1001B7154(v0 + 656);
    sub_10000BB78((v0 + 992));
    sub_1001F3808();
    v43 = *(v0 + 1888);
    v44 = *(v0 + 1880);
    v45 = *(v0 + 1872);
    v46 = *(v0 + 1864);
    v47 = *(v0 + 1856);
    v48 = *(v0 + 1848);
    v49 = *(v0 + 1840);
    v50 = *(v0 + 1832);
    v51 = *(v0 + 1824);
    v52 = *(v0 + 1816);
    v124 = *(v0 + 1808);
    v125 = *(v0 + 1800);
    v126 = *(v0 + 1792);
    v127 = *(v0 + 1784);
    v128 = *(v0 + 1776);
    v129 = *(v0 + 1768);
    v130 = *(v0 + 1760);
    v131 = *(v0 + 1752);
    v132 = *(v0 + 1744);
    v133 = *(v0 + 1736);
    v134 = *(v0 + 1728);
    v135 = *(v0 + 1720);
    v136 = *(v0 + 1712);
    v137 = *(v0 + 1704);
    v138 = *(v0 + 1696);
    v139 = *(v0 + 1672);
    v140 = *(v0 + 1648);
    v141 = *(v0 + 1640);
    v142 = *(v0 + 1632);
    v143 = *(v0 + 1624);
    v144 = *(v0 + 1600);
    v145 = *(v0 + 1592);
    v146 = *(v0 + 1568);
    v147 = *(v0 + 1560);
    v148 = *(v0 + 1552);
    v149 = *(v0 + 1544);
    v150 = *(v0 + 1536);
    v151 = *(v0 + 1528);
    v152 = *(v0 + 1520);
    v153 = *(v0 + 1512);
    v154 = *(v0 + 1504);
    v155 = *(v0 + 1480);
    v156 = *(v0 + 1472);
    v157 = *(v0 + 1464);
    v158 = *(v0 + 1456);
    v159 = *(v0 + 1448);
    v160 = *(v0 + 1440);
    v161 = *(v0 + 1432);
    v162 = *(v0 + 1424);
    v163 = *(v0 + 1416);
    v164 = *(v0 + 1408);
    v165 = *(v0 + 1400);
    v166 = *(v0 + 1392);
    v168 = *(v0 + 1384);
    v170 = *(v0 + 1376);
    v172 = *(v0 + 1368);
    v174 = *(v0 + 1344);
    v176 = *(v0 + 1336);
    v178 = *(v0 + 1328);
    v180 = *(v0 + 1320);
    v182 = *(v0 + 1312);
    v185 = *(v0 + 1304);

    v53 = *(v0 + 8);

    return v53();
  }

  if (v35)
  {
    v55 = *(v0 + 1848);
    defaultLogger()();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Preparing proofing request for Async Step Up.", v58, 2u);
    }

    v59 = *(v0 + 2024);
    v60 = *(v0 + 1896);
    v61 = *(v0 + 1848);
    v62 = *(v0 + 1680);
    v63 = *(v0 + 1256);
    v64 = *(v0 + 1240);

    v60(v61, v62);
    sub_1002094C0(v64, v63);
    *(v0 + 2064) = v65;
    *(v0 + 2072) = v66;
    v79 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2080) = v79;
    v80 = async function pointer to OS_dispatch_group.wait()[1];
    v79;
    v81 = swift_task_alloc();
    *(v0 + 2088) = v81;
    *v81 = v0;
    v81[1] = sub_1001E3E74;

    return OS_dispatch_group.wait()();
  }

  v67 = *(v0 + 1984);
  v68 = *(v0 + 1976);
  v69 = *(v0 + 1968);
  v70 = *(v0 + 1960);
  v71 = *(v0 + 460);
  v72 = *(v0 + 1648);
  v73 = *(v0 + 1640);
  v74 = *(v0 + 1608);
  v75 = *(v0 + 1240);
  *(v0 + 1224) = &_swiftEmptyDictionarySingleton;
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v70(v73, v71, v74);
  LOBYTE(v75) = static IdentityDocumentType.Category.== infix(_:_:)();
  v68(v73, v74);
  v68(v72, v74);
  v76 = _swiftEmptyArrayStorage;
  if (v75)
  {
    v77 = *(v0 + 1944);
    v78 = sub_1005A0C74();
    v82 = *(v0 + 1816);
    if (v78)
    {
      v83 = v78;
    }

    else
    {
      v83 = _swiftEmptyArrayStorage;
    }

    v76 = sub_1001D2AC4(v83);

    defaultLogger()();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 2024);
    v88 = *(v0 + 1896);
    v89 = *(v0 + 1816);
    v90 = *(v0 + 1680);
    if (v86)
    {
      v91 = swift_slowAlloc();
      v186 = v88;
      v92 = swift_slowAlloc();
      v188 = v92;
      *v91 = 136315138;

      v183 = v89;
      v93 = Array.description.getter();
      v95 = v94;

      v96 = sub_100141FE4(v93, v95, &v188);

      *(v91 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v84, v85, "PAC Signatures: %s", v91, 0xCu);
      sub_10000BB78(v92);

      v186(v183, v90);
    }

    else
    {

      v88(v89, v90);
    }
  }

  *(v0 + 2200) = v76;
  v97 = *(v0 + 1240);
  *(v0 + 1216) = _swiftEmptyArrayStorage;
  v98 = IdentityProofingConfiguration.credentialIdentifier.getter();
  if (v99)
  {
    v100 = v98;
    v101 = v99;
    v102 = HIBYTE(v99) & 0xF;
    if ((v99 & 0x2000000000000000) == 0)
    {
      v102 = v98 & 0xFFFFFFFFFFFFLL;
    }

    if (v102)
    {
      v103 = *(v0 + 1672);
      v104 = *(v0 + 1664);
      v105 = *(v0 + 1656);
      v106 = *(v0 + 1512);
      v107 = *(v0 + 1488);
      (*(v104 + 104))(v103, enum case for DIPError.Code.odnNoAssessmentAvailableForWatch(_:), v105);
      v108 = DIPError.Code.rawValue.getter();
      (*(v104 + 8))(v103, v105);
      LOBYTE(v188) = 1;
      v109 = *(v107 + 32);
      v110 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v110 - 8) + 56))(v106 + v109, 1, 1, v110);
      *(v106 + 48) = 0u;
      *(v106 + 64) = 0u;
      *(v106 + 16) = 0u;
      *(v106 + 32) = 0u;
      *v106 = 0u;
      *(v106 + 80) = v108;
      *(v106 + 88) = 0;
      *(v106 + 96) = 1;
      *(v106 + 104) = 0u;
      *(v106 + 120) = 0u;
      *(v106 + 136) = 2;
      *(v106 + 144) = 0;
      *(v106 + 152) = 0;
      *(v0 + 2304) = v101;
      *(v0 + 2296) = v100;
      v111 = *(v0 + 1280);
      v112 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
      *(v0 + 2312) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
      v113 = (v111 + v112);
      v114 = v113[1];
      *v113 = v100;
      v113[1] = v101;

      *(v0 + 2320) = *(v111 + 72);
      v115 = qword_100832C20;

      if (v115 != -1)
      {
        swift_once();
      }

      v116 = qword_100882228;
      *(v0 + 2328) = qword_100882228;
      v117 = *(v116 + 16);
      *(v0 + 2336) = v117;
      v118 = v117;
      v119 = swift_task_alloc();
      *(v0 + 2344) = v119;
      *v119 = v0;
      v119[1] = sub_1001E7310;

      return sub_10021A4D8(v100, v101, v118);
    }
  }

  *(v0 + 2208) = *(*(v0 + 1280) + 72);
  v120 = qword_100832C20;

  if (v120 != -1)
  {
    swift_once();
  }

  v121 = *(qword_100882228 + 16);
  *(v0 + 2216) = v121;
  v122 = v121;
  v123 = swift_task_alloc();
  *(v0 + 2224) = v123;
  *v123 = v0;
  v123[1] = sub_1001E61AC;

  return sub_100206178(1, v122);
}

uint64_t sub_1001E3E74()
{
  v1 = *(*v0 + 2088);
  v2 = *(*v0 + 2080);
  v4 = *v0;

  return _swift_task_switch(sub_1001E3F88, 0, 0);
}

uint64_t sub_1001E3F88()
{
  v1 = v0[250];
  v2 = v0[249];
  v3 = v0[243];
  v4 = v0[199];
  v5 = v0[197];
  v6 = v0[155];
  (*(v0[170] + 56))(v0[195], 1, 1, v0[169]);
  v0[112] = v5;
  v0[113] = &protocol witness table for HPKESuiteKwV1;
  v7 = sub_100032DBC(v0 + 109);
  v2(v7, v4, v5);
  v8 = swift_task_alloc();
  v0[262] = v8;
  *v8 = v0;
  v8[1] = sub_1001E40AC;
  v9 = v0[195];
  v10 = v0[160];
  v11 = v0[157];

  return sub_100212598(v9, v6, (v0 + 82), (v0 + 124), v3, (v0 + 109), 4, v11);
}

uint64_t sub_1001E40AC(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[262];
  v9 = *v2;
  v3[263] = a1;
  v3[264] = v1;

  if (v1)
  {
    v5 = v3[259];
    v6 = v3[257];
    sub_10000BE18(v3[195], &qword_10083D6A8, &qword_1006DB710);

    v7 = sub_1001E529C;
  }

  else
  {
    sub_10000BE18(v3[195], &qword_10083D6A8, &qword_1006DB710);
    sub_10000BB78(v3 + 109);
    v7 = sub_1001E421C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001E421C()
{
  v1 = *(v0 + 460);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1240);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == v1)
  {
    if (*(v0 + 1952))
    {
      v7 = *(v0 + 1552);
      v8 = *(v0 + 1360);
      v9 = *(v0 + 1352);
      sub_10000BBC4(*(v0 + 1280) + *(v0 + 2016), v7, &qword_10083D6A8, &qword_1006DB710);
      v10 = (*(v8 + 48))(v7, 1, v9);
      v11 = *(v0 + 1952);
      v12 = *(v0 + 1552);
      v13 = *(v0 + 1384);
      if (v10)
      {
        v14 = *(v0 + 1952);

        sub_10000BE18(v12, &qword_10083D6A8, &qword_1006DB710);
        v15 = type metadata accessor for PDF417ParsedData();
        (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      }

      else
      {
        v64 = *(v0 + 1368);
        v65 = *(v0 + 1360);
        v66 = *(v0 + 1352);
        (*(v65 + 16))(v64, *(v0 + 1552), v66);

        sub_10000BE18(v12, &qword_10083D6A8, &qword_1006DB710);
        PDF417Data.parsedData.getter();
        (*(v65 + 8))(v64, v66);
      }

      v67 = *(v0 + 1952);
      v68 = *(v0 + 1944);
      v69 = *(v0 + 1480);
      v70 = *(v0 + 1384);
      v71 = *(v0 + 1240);
      v72 = IdentityProofingConfiguration.country.getter();
      v74 = v73;

      sub_100531168(v70, v72, v74, v68, v69);

      sub_10000BE18(v70, &qword_10083D6A0, &unk_1006DB700);
      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v75 = *(v0 + 1480);
    v76 = *(v0 + 1472);
    v77 = type metadata accessor for ODNAssessmentResult(0);
    v78 = *(v77 - 8);
    (*(v78 + 56))(v75, v48, 1, v77);
    sub_10000BBC4(v75, v76, &unk_10084A140, &unk_1006DB430);
    v79 = *(v78 + 48);
    v80 = v79(v76, 1, v77);
    v81 = *(v0 + 1472);
    if (v80 == 1)
    {
      sub_10000BE18(*(v0 + 1472), &unk_10084A140, &unk_1006DB430);
      v196 = 0;
      v198 = 0;
    }

    else
    {
      v196 = *(v81 + 64);
      v198 = *(v81 + 56);

      sub_10021EA28(v81, type metadata accessor for ODNAssessmentResult);
    }

    v82 = *(v0 + 1464);
    sub_10000BBC4(*(v0 + 1480), v82, &unk_10084A140, &unk_1006DB430);
    v83 = v79(v82, 1, v77);
    v84 = *(v0 + 1464);
    if (v83 == 1)
    {
      sub_10000BE18(*(v0 + 1464), &unk_10084A140, &unk_1006DB430);
      v188 = 0u;
      v192 = 0u;
      v180 = 0u;
      v184 = 0u;
    }

    else
    {
      v85 = *(v84 + 152);
      v86 = *(v84 + 168);
      v87 = *(v84 + 200);
      *(v0 + 240) = *(v84 + 184);
      *(v0 + 256) = v87;
      *(v0 + 208) = v85;
      *(v0 + 224) = v86;
      sub_10000BBC4(v0 + 208, v0 + 144, &qword_100835770, &qword_1006C1AD0);
      sub_10021EA28(v84, type metadata accessor for ODNAssessmentResult);
      v188 = *(v0 + 224);
      v192 = *(v0 + 208);
      v180 = *(v0 + 256);
      v184 = *(v0 + 240);
    }

    v88 = *(v0 + 1456);
    sub_10000BBC4(*(v0 + 1480), v88, &unk_10084A140, &unk_1006DB430);
    v89 = v79(v88, 1, v77);
    v90 = *(v0 + 1456);
    if (v89 == 1)
    {
      sub_10000BE18(*(v0 + 1456), &unk_10084A140, &unk_1006DB430);
      v178 = 0;
      v91 = 0;
      v92 = 0;
      v174 = 0u;
      v176 = 0u;
      v93 = 1;
    }

    else
    {
      v94 = *(v90 + 88);
      v95 = *(v90 + 104);
      v96 = *(v90 + 120);
      *(v0 + 569) = *(v90 + 129);
      *(v0 + 544) = v95;
      *(v0 + 560) = v96;
      *(v0 + 528) = v94;
      sub_10000BBC4(v0 + 528, v0 + 464, &qword_100835768, &qword_1006DB770);
      sub_10021EA28(v90, type metadata accessor for ODNAssessmentResult);
      v174 = *(v0 + 544);
      v176 = *(v0 + 528);
      v93 = *(v0 + 560);
      v91 = *(v0 + 568);
      v178 = *(v0 + 576);
      v92 = *(v0 + 584);
    }

    v97 = *(v0 + 1448);
    sub_10000BBC4(*(v0 + 1480), v97, &unk_10084A140, &unk_1006DB430);
    v98 = v79(v97, 1, v77);
    v99 = *(v0 + 1448);
    if (v98 == 1)
    {
      sub_10000BE18(*(v0 + 1448), &unk_10084A140, &unk_1006DB430);
      v100 = 0;
      v101 = 0;
    }

    else
    {
      v100 = *(v99 + 216);
      v101 = *(v99 + 224);

      sub_10021EA28(v99, type metadata accessor for ODNAssessmentResult);
    }

    v102 = *(v0 + 1440);
    sub_1000B1FC8(*(v0 + 1480), v102, &unk_10084A140, &unk_1006DB430);
    v103 = v79(v102, 1, v77);
    v104 = *(v0 + 1440);
    v105 = *(v0 + 1344);
    if (v103 == 1)
    {
      sub_10000BE18(v104, &unk_10084A140, &unk_1006DB430);
      v106 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v106 - 8) + 56))(v105, 1, 1, v106);
    }

    else
    {
      v107 = *(v77 + 44);
      v108 = *(v0 + 1440);
      sub_10000BBC4(v104 + v107, *(v0 + 1344), &qword_100836328, &unk_1006C51B0);
      sub_10021EA28(v108, type metadata accessor for ODNAssessmentResult);
    }

    v109 = *(v0 + 1520);
    v110 = *(v0 + 1488);
    v111 = *(v0 + 1344);
    *v109 = v198;
    *(v109 + 8) = v196;
    *(v109 + 16) = v192;
    *(v109 + 32) = v188;
    *(v109 + 48) = v184;
    *(v109 + 64) = v180;
    *(v109 + 80) = v176;
    *(v109 + 96) = v174;
    *(v109 + 112) = v93;
    *(v109 + 120) = v91;
    *(v109 + 128) = v178;
    *(v109 + 136) = v92;
    *(v109 + 144) = v100;
    *(v109 + 152) = v101;
    sub_1000B1FC8(v111, v109 + *(v110 + 32), &qword_100836328, &unk_1006C51B0);
LABEL_37:
    v112 = *(v0 + 2072);
    v113 = *(v0 + 2056);
    v114 = *(v0 + 1520);
    v115 = *(v0 + 1496);
    v116 = *(v0 + 1488);
    v117 = *(v0 + 1328);
    v118 = *(v0 + 1240);
    v119 = sub_10000BA08((v0 + 992), *(v0 + 1016));
    v120 = *v119;
    v121 = v119[1];
    *(v0 + 2160) = v121;
    sub_10021E958(v114, v117, type metadata accessor for TiberiusWrappedAssessment);
    (*(v115 + 56))(v117, 0, 1, v116);

    IdentityProofingConfiguration.productIdentifier.getter();
    *(v0 + 2168) = v122;
    IdentityProofingConfiguration.accountKeyIdentifier.getter();
    *(v0 + 2176) = v123;
    v124 = swift_task_alloc();
    *(v0 + 2184) = v124;
    *v124 = v0;
    v124[1] = sub_1001E5B40;
    v125 = *(v0 + 2104);
    v126 = *(v0 + 1328);
    v127 = *(v0 + 1280);
    v128 = *(v0 + 1232);
    v201 = *(v0 + 1528);
    v200 = *(v0 + 2064);

    return sub_1001FD70C(v128, v120, v121, v125, v126, 0, v113, _swiftEmptyArrayStorage);
  }

  if (v6 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v16 = *(v0 + 1840);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "deviceConfidenceAssessment: Crimson ILSU", v19, 2u);
    }

    v20 = *(v0 + 2024);
    v21 = *(v0 + 1896);
    v22 = *(v0 + 1840);
    v23 = *(v0 + 1680);
    v24 = *(v0 + 1280);

    v21(v22, v23);
    *(v0 + 2120) = *(v24 + 120);

    v25 = swift_task_alloc();
    *(v0 + 2128) = v25;
    *v25 = v0;
    v25[1] = sub_1001E56EC;

    return sub_1001CFA4C();
  }

  else
  {
    if (v6 != enum case for IdentityDocumentType.Category.unknown(_:))
    {
      v49 = *(v0 + 1824);
      defaultLogger()();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "deviceConfidenceAssessment: unknown", v52, 2u);
      }

      v53 = *(v0 + 2024);
      v195 = *(v0 + 1976);
      v197 = *(v0 + 1984);
      v54 = *(v0 + 1896);
      v55 = *(v0 + 1824);
      v56 = *(v0 + 1680);
      v57 = *(v0 + 1672);
      v58 = *(v0 + 1664);
      v59 = *(v0 + 1656);
      v191 = *(v0 + 1632);
      v187 = *(v0 + 1608);
      v60 = *(v0 + 1520);
      v183 = *(v0 + 1488);

      v54(v55, v56);
      (*(v58 + 104))(v57, enum case for DIPError.Code.odnErrorUnsupportedDocType(_:), v59);
      v61 = DIPError.Code.rawValue.getter();
      (*(v58 + 8))(v57, v59);
      v62 = *(v183 + 32);
      v63 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v63 - 8) + 56))(v60 + v62, 1, 1, v63);
      *(v60 + 48) = 0u;
      *(v60 + 64) = 0u;
      *(v60 + 16) = 0u;
      *(v60 + 32) = 0u;
      *v60 = 0u;
      *(v60 + 80) = v61;
      *(v60 + 88) = 0;
      *(v60 + 96) = 1;
      *(v60 + 104) = 0u;
      *(v60 + 120) = 0u;
      *(v60 + 136) = 2;
      *(v60 + 144) = 0;
      *(v60 + 152) = 0;
      v195(v191, v187);
      goto LABEL_37;
    }

    v27 = *(v0 + 2104);
    v28 = *(v0 + 2072);
    v29 = *(v0 + 2056);
    v185 = *(v0 + 1952);
    v30 = *(v0 + 1944);
    v31 = *(v0 + 1672);
    v32 = *(v0 + 1664);
    v33 = *(v0 + 1656);
    v193 = *(v0 + 1592);
    v34 = *(v0 + 1584);
    v189 = *(v0 + 1576);
    v181 = *(v0 + 1528);
    v35 = *(v0 + 1288);
    v36 = *(v0 + 1240);

    (*(v32 + 104))(v31, enum case for DIPError.Code.unexpectedIDType(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v181, &qword_100835E40, &qword_1006C49F8);
    (*(v34 + 8))(v193, v189);
    sub_1001B7154(v0 + 656);
    sub_10000BB78((v0 + 992));
    sub_1001F3808();
    v37 = *(v0 + 1888);
    v38 = *(v0 + 1880);
    v39 = *(v0 + 1872);
    v40 = *(v0 + 1864);
    v41 = *(v0 + 1856);
    v42 = *(v0 + 1848);
    v43 = *(v0 + 1840);
    v44 = *(v0 + 1832);
    v45 = *(v0 + 1824);
    v46 = *(v0 + 1816);
    v129 = *(v0 + 1808);
    v130 = *(v0 + 1800);
    v131 = *(v0 + 1792);
    v132 = *(v0 + 1784);
    v133 = *(v0 + 1776);
    v134 = *(v0 + 1768);
    v135 = *(v0 + 1760);
    v136 = *(v0 + 1752);
    v137 = *(v0 + 1744);
    v138 = *(v0 + 1736);
    v139 = *(v0 + 1728);
    v140 = *(v0 + 1720);
    v141 = *(v0 + 1712);
    v142 = *(v0 + 1704);
    v143 = *(v0 + 1696);
    v144 = *(v0 + 1672);
    v145 = *(v0 + 1648);
    v146 = *(v0 + 1640);
    v147 = *(v0 + 1632);
    v148 = *(v0 + 1624);
    v149 = *(v0 + 1600);
    v150 = *(v0 + 1592);
    v151 = *(v0 + 1568);
    v152 = *(v0 + 1560);
    v153 = *(v0 + 1552);
    v154 = *(v0 + 1544);
    v155 = *(v0 + 1536);
    v156 = *(v0 + 1528);
    v157 = *(v0 + 1520);
    v158 = *(v0 + 1512);
    v159 = *(v0 + 1504);
    v160 = *(v0 + 1480);
    v161 = *(v0 + 1472);
    v162 = *(v0 + 1464);
    v163 = *(v0 + 1456);
    v164 = *(v0 + 1448);
    v165 = *(v0 + 1440);
    v166 = *(v0 + 1432);
    v167 = *(v0 + 1424);
    v168 = *(v0 + 1416);
    v169 = *(v0 + 1408);
    v170 = *(v0 + 1400);
    v171 = *(v0 + 1392);
    v172 = *(v0 + 1384);
    v173 = *(v0 + 1376);
    v175 = *(v0 + 1368);
    v177 = *(v0 + 1344);
    v179 = *(v0 + 1336);
    v182 = *(v0 + 1328);
    v186 = *(v0 + 1320);
    v190 = *(v0 + 1312);
    v194 = *(v0 + 1304);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1001E529C()
{
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[199];
  v4 = v0[198];
  v5 = v0[197];
  v6 = v0[191];
  v7 = v0[155];

  sub_10000BE18(v6, &qword_100835E40, &qword_1006C49F8);
  (*(v4 + 8))(v3, v5);
  sub_1001B7154((v0 + 82));
  sub_10000BB78(v0 + 109);
  sub_10000BB78(v0 + 124);
  sub_1001F3808();
  v72 = v0[264];
  v8 = v0[236];
  v9 = v0[235];
  v10 = v0[234];
  v11 = v0[233];
  v12 = v0[232];
  v13 = v0[231];
  v14 = v0[230];
  v15 = v0[229];
  v16 = v0[228];
  v17 = v0[227];
  v20 = v0[226];
  v21 = v0[225];
  v22 = v0[224];
  v23 = v0[223];
  v24 = v0[222];
  v25 = v0[221];
  v26 = v0[220];
  v27 = v0[219];
  v28 = v0[218];
  v29 = v0[217];
  v30 = v0[216];
  v31 = v0[215];
  v32 = v0[214];
  v33 = v0[213];
  v34 = v0[212];
  v35 = v0[209];
  v36 = v0[206];
  v37 = v0[205];
  v38 = v0[204];
  v39 = v0[203];
  v40 = v0[200];
  v41 = v0[199];
  v42 = v0[196];
  v43 = v0[195];
  v44 = v0[194];
  v45 = v0[193];
  v46 = v0[192];
  v47 = v0[191];
  v48 = v0[190];
  v49 = v0[189];
  v50 = v0[188];
  v51 = v0[185];
  v52 = v0[184];
  v53 = v0[183];
  v54 = v0[182];
  v55 = v0[181];
  v56 = v0[180];
  v57 = v0[179];
  v58 = v0[178];
  v59 = v0[177];
  v60 = v0[176];
  v61 = v0[175];
  v62 = v0[174];
  v63 = v0[173];
  v64 = v0[172];
  v65 = v0[171];
  v66 = v0[168];
  v67 = v0[167];
  v68 = v0[166];
  v69 = v0[165];
  v70 = v0[164];
  v71 = v0[163];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001E56EC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 2128);
  v8 = *v3;
  v6[267] = a1;
  v6[268] = v2;

  v9 = v5[265];
  if (v2)
  {
    v10 = v6[263];
    v11 = v6[259];
    v12 = v6[257];

    v13 = sub_1001EFDC0;
  }

  else
  {

    v6[269] = a2;
    v13 = sub_1001E5864;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1001E5864()
{
  v1 = v0[269];
  v2 = v0[267];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[229];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "deviceConfidenceAssessment: <present>", v7, 2u);
    }

    v8 = v0[253];
    v9 = v0[237];
    v10 = v0[229];
    v11 = v0[210];

    v9(v10, v11);
    v2 = v0[267];
  }

  v12 = v0[190];
  v13 = *(v0[186] + 32);
  v14 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *v12 = v2;
  *(v12 + 8) = v1;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  *(v12 + 112) = 1;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0;
  v15 = v0[259];
  v16 = v0[257];
  v17 = v0[190];
  v18 = v0[187];
  v19 = v0[186];
  v20 = v0[166];
  v21 = v0[155];
  v22 = sub_10000BA08(v0 + 124, v0[127]);
  v23 = *v22;
  v24 = v22[1];
  v0[270] = v24;
  sub_10021E958(v17, v20, type metadata accessor for TiberiusWrappedAssessment);
  (*(v18 + 56))(v20, 0, 1, v19);

  IdentityProofingConfiguration.productIdentifier.getter();
  v0[271] = v25;
  IdentityProofingConfiguration.accountKeyIdentifier.getter();
  v0[272] = v26;
  v27 = swift_task_alloc();
  v0[273] = v27;
  *v27 = v0;
  v27[1] = sub_1001E5B40;
  v28 = v0[263];
  v29 = v0[166];
  v30 = v0[160];
  v31 = v0[154];
  v35 = v0[191];
  v34 = v0[258];

  return sub_1001FD70C(v31, v23, v24, v28, v29, 0, v16, _swiftEmptyArrayStorage);
}

uint64_t sub_1001E5B40()
{
  v2 = *v1;
  v3 = (*v1)[273];
  v4 = *v1;
  (*v1)[274] = v0;

  v5 = v2[272];
  v6 = v2[271];
  v7 = v2[270];
  v8 = v2[263];
  v9 = v2[259];
  v10 = v2[257];
  sub_10000BE18(v2[166], &qword_100835E38, &qword_1006C49F0);

  if (v0)
  {
    v11 = sub_1001F0208;
  }

  else
  {
    v11 = sub_1001E5D44;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1001E5D44()
{
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[199];
  v4 = v0[198];
  v5 = v0[197];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[155];

  sub_10021EA28(v7, type metadata accessor for TiberiusWrappedAssessment);
  sub_10000BE18(v6, &qword_100835E40, &qword_1006C49F8);
  (*(v4 + 8))(v3, v5);
  sub_1001B7154((v0 + 82));
  sub_10000BB78(v0 + 124);
  v9 = v0[236];
  v10 = v0[235];
  v11 = v0[234];
  v12 = v0[233];
  v13 = v0[232];
  v14 = v0[231];
  v15 = v0[230];
  v16 = v0[229];
  v17 = v0[228];
  v20 = v0[227];
  v21 = v0[226];
  v22 = v0[225];
  v23 = v0[224];
  v24 = v0[223];
  v25 = v0[222];
  v26 = v0[221];
  v27 = v0[220];
  v28 = v0[219];
  v29 = v0[218];
  v30 = v0[217];
  v31 = v0[216];
  v32 = v0[215];
  v33 = v0[214];
  v34 = v0[213];
  v35 = v0[212];
  v36 = v0[209];
  v37 = v0[206];
  v38 = v0[205];
  v39 = v0[204];
  v40 = v0[203];
  v41 = v0[200];
  v42 = v0[199];
  v43 = v0[196];
  v44 = v0[195];
  v45 = v0[194];
  v46 = v0[193];
  v47 = v0[192];
  v48 = v0[191];
  v49 = v0[190];
  v50 = v0[189];
  v51 = v0[188];
  v52 = v0[185];
  v53 = v0[184];
  v54 = v0[183];
  v55 = v0[182];
  v56 = v0[181];
  v57 = v0[180];
  v58 = v0[179];
  v59 = v0[178];
  v60 = v0[177];
  v61 = v0[176];
  v62 = v0[175];
  v63 = v0[174];
  v64 = v0[173];
  v65 = v0[172];
  v66 = v0[171];
  v67 = v0[168];
  v68 = v0[167];
  v69 = v0[166];
  v70 = v0[165];
  v71 = v0[164];
  v72 = v0[163];
  sub_1001F3808();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001E61AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2224);
  v7 = *v3;
  v5[279] = a1;
  v5[280] = a2;
  v5[281] = v2;

  v8 = v4[277];
  v9 = v4[276];
  if (v2)
  {
    v10 = v5[257];

    v11 = sub_1001F0670;
  }

  else
  {

    v11 = sub_1001E6328;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1001E6328()
{
  v1 = *(v0 + 2240);
  v2 = *(v0 + 460);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1240);
  v7 = (*(v0 + 1280) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
  v8 = v7[1];
  *v7 = *(v0 + 2232);
  v7[1] = v1;

  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v9 = (*(v4 + 88))(v3, v5);
  if (v9 == v2)
  {
    if (*(v0 + 1952))
    {
      v10 = *(v0 + 1544);
      v11 = *(v0 + 1360);
      v12 = *(v0 + 1352);
      sub_10000BBC4(*(v0 + 1280) + *(v0 + 2016), v10, &qword_10083D6A8, &qword_1006DB710);
      v13 = (*(v11 + 48))(v10, 1, v12);
      v14 = *(v0 + 1952);
      v15 = *(v0 + 1544);
      v16 = *(v0 + 1376);
      if (v13)
      {
        v17 = *(v0 + 1952);

        sub_10000BE18(v15, &qword_10083D6A8, &qword_1006DB710);
        v18 = type metadata accessor for PDF417ParsedData();
        (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
      }

      else
      {
        v46 = *(v0 + 1368);
        v47 = *(v0 + 1360);
        v48 = *(v0 + 1352);
        (*(v47 + 16))(v46, *(v0 + 1544), v48);

        sub_10000BE18(v15, &qword_10083D6A8, &qword_1006DB710);
        PDF417Data.parsedData.getter();
        (*(v47 + 8))(v46, v48);
      }

      v49 = *(v0 + 1952);
      v50 = *(v0 + 1944);
      v51 = *(v0 + 1432);
      v52 = *(v0 + 1376);
      v53 = *(v0 + 1240);
      v54 = IdentityProofingConfiguration.country.getter();
      v56 = v55;

      sub_100531168(v52, v54, v56, v50, v51);

      sub_10000BE18(v52, &qword_10083D6A0, &unk_1006DB700);
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v57 = *(v0 + 1432);
    v58 = *(v0 + 1424);
    v59 = type metadata accessor for ODNAssessmentResult(0);
    v60 = *(v59 - 8);
    (*(v60 + 56))(v57, v45, 1, v59);
    sub_10000BBC4(v57, v58, &unk_10084A140, &unk_1006DB430);
    v61 = *(v60 + 48);
    v62 = v61(v58, 1, v59);
    v63 = *(v0 + 1424);
    if (v62 == 1)
    {
      sub_10000BE18(*(v0 + 1424), &unk_10084A140, &unk_1006DB430);
      v128 = 0;
      v130 = 0;
    }

    else
    {
      v128 = *(v63 + 64);
      v130 = *(v63 + 56);

      sub_10021EA28(v63, type metadata accessor for ODNAssessmentResult);
    }

    v64 = *(v0 + 1416);
    sub_10000BBC4(*(v0 + 1432), v64, &unk_10084A140, &unk_1006DB430);
    v65 = v61(v64, 1, v59);
    v66 = *(v0 + 1416);
    if (v65 == 1)
    {
      sub_10000BE18(*(v0 + 1416), &unk_10084A140, &unk_1006DB430);
      v124 = 0u;
      v126 = 0u;
      v120 = 0u;
      v122 = 0u;
    }

    else
    {
      v67 = *(v66 + 152);
      v68 = *(v66 + 168);
      v69 = *(v66 + 200);
      *(v0 + 368) = *(v66 + 184);
      *(v0 + 384) = v69;
      *(v0 + 336) = v67;
      *(v0 + 352) = v68;
      sub_10000BBC4(v0 + 336, v0 + 272, &qword_100835770, &qword_1006C1AD0);
      sub_10021EA28(v66, type metadata accessor for ODNAssessmentResult);
      v124 = *(v0 + 352);
      v126 = *(v0 + 336);
      v120 = *(v0 + 384);
      v122 = *(v0 + 368);
    }

    v70 = *(v0 + 1408);
    sub_10000BBC4(*(v0 + 1432), v70, &unk_10084A140, &unk_1006DB430);
    v71 = v61(v70, 1, v59);
    v72 = *(v0 + 1408);
    if (v71 == 1)
    {
      sub_10000BE18(*(v0 + 1408), &unk_10084A140, &unk_1006DB430);
      v119 = 0;
      v73 = 0;
      v74 = 0;
      v117 = 0u;
      v118 = 0u;
      v75 = 1;
    }

    else
    {
      v76 = *(v72 + 88);
      v77 = *(v72 + 104);
      v78 = *(v72 + 120);
      *(v0 + 441) = *(v72 + 129);
      *(v0 + 416) = v77;
      *(v0 + 432) = v78;
      *(v0 + 400) = v76;
      sub_10000BBC4(v0 + 400, v0 + 592, &qword_100835768, &qword_1006DB770);
      sub_10021EA28(v72, type metadata accessor for ODNAssessmentResult);
      v117 = *(v0 + 416);
      v118 = *(v0 + 400);
      v75 = *(v0 + 432);
      v119 = *(v0 + 440);
      v73 = *(v0 + 448);
      v74 = *(v0 + 456);
    }

    v131 = v1;
    v79 = *(v0 + 1400);
    sub_10000BBC4(*(v0 + 1432), v79, &unk_10084A140, &unk_1006DB430);
    v80 = v61(v79, 1, v59);
    v81 = *(v0 + 1400);
    if (v80 == 1)
    {
      sub_10000BE18(*(v0 + 1400), &unk_10084A140, &unk_1006DB430);
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v82 = *(v81 + 216);
      v83 = *(v81 + 224);

      sub_10021EA28(v81, type metadata accessor for ODNAssessmentResult);
    }

    v84 = *(v0 + 1392);
    sub_10000BBC4(*(v0 + 1432), v84, &unk_10084A140, &unk_1006DB430);
    v85 = v61(v84, 1, v59);
    v86 = *(v0 + 1392);
    v87 = *(v0 + 1336);
    if (v85 == 1)
    {
      sub_10000BE18(v86, &unk_10084A140, &unk_1006DB430);
      v88 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
    }

    else
    {
      v89 = *(v59 + 44);
      v90 = *(v0 + 1392);
      sub_10000BBC4(v86 + v89, *(v0 + 1336), &qword_100836328, &unk_1006C51B0);
      sub_10021EA28(v90, type metadata accessor for ODNAssessmentResult);
    }

    v91 = *(v0 + 1512);
    v92 = *(v0 + 1504);
    v93 = *(v0 + 1488);
    v94 = *(v0 + 1336);
    *v92 = v130;
    *(v92 + 8) = v128;
    *(v92 + 16) = v126;
    *(v92 + 32) = v124;
    *(v92 + 48) = v122;
    *(v92 + 64) = v120;
    *(v92 + 80) = v118;
    *(v92 + 96) = v117;
    *(v92 + 112) = v75;
    *(v92 + 120) = v119;
    *(v92 + 128) = v73;
    *(v92 + 136) = v74;
    *(v92 + 144) = v82;
    *(v92 + 152) = v83;
    sub_1000B1FC8(v94, v92 + *(v93 + 32), &qword_100836328, &unk_1006C51B0);
    sub_10021E9C0(v92, v91, type metadata accessor for TiberiusWrappedAssessment);
    if (*(v91 + 8))
    {
      v95 = *(v0 + 1808);
      defaultLogger()();
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v0 + 2024);
      v100 = *(v0 + 1896);
      v101 = *(v0 + 1808);
      v102 = *(v0 + 1680);
      v103 = *(v0 + 1432);
      v104 = v131;
      if (v98)
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "deviceConfidenceAssessment: <present>", v105, 2u);
      }

      v100(v101, v102);
      sub_10000BE18(v103, &unk_10084A140, &unk_1006DB430);
      goto LABEL_38;
    }

    sub_10000BE18(*(v0 + 1432), &unk_10084A140, &unk_1006DB430);
LABEL_37:
    v104 = v131;
LABEL_38:
    v106 = *(v0 + 2240);
    v107 = *(v0 + 2232);
    *(v0 + 2304) = v106;
    *(v0 + 2296) = v107;
    v108 = *(v0 + 1280);
    v109 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
    *(v0 + 2312) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
    v110 = (v108 + v109);
    v111 = v110[1];
    *v110 = v107;
    v110[1] = v104;

    *(v0 + 2320) = *(v108 + 72);
    v112 = qword_100832C20;

    if (v112 != -1)
    {
      swift_once();
    }

    v113 = qword_100882228;
    *(v0 + 2328) = qword_100882228;
    v114 = *(v113 + 16);
    *(v0 + 2336) = v114;
    v115 = v114;
    v116 = swift_task_alloc();
    *(v0 + 2344) = v116;
    *v116 = v0;
    v116[1] = sub_1001E7310;

    return sub_10021A4D8(v107, v106, v115);
  }

  if (v9 != enum case for IdentityDocumentType.Category.passport(_:))
  {
    v131 = v1;
    v30 = *(v0 + 1784);
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "deviceConfidenceAssessment: unknown", v33, 2u);
    }

    v34 = *(v0 + 2024);
    v127 = *(v0 + 1976);
    v129 = *(v0 + 1984);
    v35 = *(v0 + 1896);
    v36 = *(v0 + 1784);
    v37 = *(v0 + 1680);
    v38 = *(v0 + 1672);
    v39 = *(v0 + 1664);
    v40 = *(v0 + 1656);
    v125 = *(v0 + 1624);
    v123 = *(v0 + 1608);
    v41 = *(v0 + 1512);
    v121 = *(v0 + 1488);

    v35(v36, v37);
    (*(v39 + 104))(v38, enum case for DIPError.Code.odnErrorUnsupportedDocType(_:), v40);
    v42 = DIPError.Code.rawValue.getter();
    (*(v39 + 8))(v38, v40);
    v43 = *(v121 + 32);
    v44 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
    *(v41 + 48) = 0u;
    *(v41 + 64) = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    *v41 = 0u;
    *(v41 + 80) = v42;
    *(v41 + 88) = 0;
    *(v41 + 96) = 1;
    *(v41 + 104) = 0u;
    *(v41 + 120) = 0u;
    *(v41 + 136) = 2;
    *(v41 + 144) = 0;
    *(v41 + 152) = 0;
    v127(v125, v123);
    goto LABEL_37;
  }

  v19 = *(v0 + 1800);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "deviceConfidenceAssessment: Crimson", v22, 2u);
  }

  v23 = *(v0 + 2024);
  v24 = *(v0 + 1896);
  v25 = *(v0 + 1800);
  v26 = *(v0 + 1680);
  v27 = *(v0 + 1280);

  v24(v25, v26);
  *(v0 + 2256) = *(v27 + 120);

  v28 = swift_task_alloc();
  *(v0 + 2264) = v28;
  *v28 = v0;
  v28[1] = sub_1001E6F20;

  return sub_1001CFA4C();
}

uint64_t sub_1001E6F20(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 2264);
  v8 = *v3;
  v6[284] = a1;
  v6[285] = v2;

  v9 = v5[282];
  if (v2)
  {
    v10 = v6[280];
    v11 = v6[257];

    v12 = sub_1001F0AC4;
  }

  else
  {

    v6[286] = a2;
    v12 = sub_1001E7090;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1001E7090()
{
  v1 = v0[286];
  v2 = v0[284];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[224];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "deviceConfidenceAssessment: <present>", v7, 2u);
    }

    v8 = v0[253];
    v9 = v0[237];
    v10 = v0[224];
    v11 = v0[210];

    v9(v10, v11);
    v2 = v0[284];
  }

  v12 = v0[189];
  v13 = *(v0[186] + 32);
  v14 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *v12 = v2;
  *(v12 + 8) = v1;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  *(v12 + 112) = 1;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0;
  v15 = v0[280];
  v16 = v0[279];
  v0[288] = v15;
  v0[287] = v16;
  v17 = v0[160];
  v18 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
  v0[289] = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier;
  v19 = (v17 + v18);
  v20 = v19[1];
  *v19 = v16;
  v19[1] = v15;

  v0[290] = *(v17 + 72);
  v21 = qword_100832C20;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_100882228;
  v0[291] = qword_100882228;
  v23 = *(v22 + 16);
  v0[292] = v23;
  v24 = v23;
  v25 = swift_task_alloc();
  v0[293] = v25;
  *v25 = v0;
  v25[1] = sub_1001E7310;

  return sub_10021A4D8(v16, v15, v24);
}

uint64_t sub_1001E7310(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2344);
  v6 = *v2;
  v4[294] = a1;
  v4[295] = v1;

  v7 = v3[292];
  v8 = v3[290];
  if (v1)
  {
    v9 = v4[288];
    v10 = v4[257];

    v11 = sub_1001E8010;
  }

  else
  {

    v11 = sub_1001E7494;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1001E7494()
{
  v145 = v0;
  v1 = v0[294];
  v2 = v0[222];
  defaultLogger()();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[294];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully generated key signing key for phone : %@.", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = v0[294];
  v11 = v0[253];
  v12 = v0[237];
  v13 = v0[222];
  v14 = v0[210];

  v12(v13, v14);
  v15._countAndFlagsBits = 0x6266346138663430;
  v16._object = 0x8000000100706360;
  v15._object = 0xE800000000000000;
  v16._countAndFlagsBits = 0xD000000000000020;
  logMilestone(tag:description:)(v15, v16);
  v17 = [v10 attestation];
  if (!v17)
  {
    v45 = v0[288];
    v46 = v0[257];
    v123 = v0[243];
    v125 = v0[244];
    v47 = v0[209];
    v48 = v0[208];
    v49 = v0[207];
    v135 = v0[199];
    v50 = v0[198];
    v129 = v0[294];
    v132 = v0[197];
    v127 = v0[191];
    v137 = v0[189];
    v141 = v0[275];
    v51 = v0[161];
    v121 = v0[155];

    (*(v48 + 104))(v47, enum case for DIPError.Code.internalError(_:), v49);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v127, &qword_100835E40, &qword_1006C49F8);
    (*(v50 + 8))(v135, v132);
    goto LABEL_9;
  }

  v18 = v0[221];
  v19 = v17;
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[296] = v20;

  defaultLogger()();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[237];
  v25 = v0[221];
  v26 = v0[210];
  if (!v23)
  {

    v24(v25, v26);
    v32 = v0[157];
    if (v32)
    {
      goto LABEL_6;
    }

LABEL_13:
    if ((v32 & 2) != 0)
    {
      v0[321] = *(v0[160] + 40);
      v69 = swift_task_alloc();
      v0[322] = v69;
      *v69 = v0;
      v69[1] = sub_1001EAAB4;

      return sub_1004B1A60();
    }

    else
    {
      v64 = v0[296];
      v65 = v0[288];

      v66 = *(*(v0[160] + 120) + 128);
      v0[364] = v66;
      v67 = async function pointer to OS_dispatch_group.wait()[1];
      v66;
      v68 = swift_task_alloc();
      v0[365] = v68;
      *v68 = v0;
      v68[1] = sub_1001EE834;

      return OS_dispatch_group.wait()();
    }
  }

  v143 = v0[253];
  v27 = swift_slowAlloc();
  v139 = v24;
  v28 = swift_slowAlloc();
  v144 = v28;
  *v27 = 136315138;
  v29 = Array.description.getter();
  v31 = sub_100141FE4(v29, v30, &v144);

  *(v27 + 4) = v31;
  _os_log_impl(&_mh_execute_header, v21, v22, "kakCertificates created for phone : %s", v27, 0xCu);
  sub_10000BB78(v28);

  v139(v25, v26);
  v32 = v0[157];
  if ((v32 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v33 = v0[295];
  v34 = v0[294];
  v35 = *(v0[160] + 72);

  v0[297] = sub_1002AB8D4(v34, v0 + 82);
  v0[298] = v36;
  if (v33)
  {
    v37 = v0[294];
    v38 = v0[288];
    v39 = v0[257];
    v40 = v0[244];
    v41 = v0[243];
    v42 = v0[198];
    v131 = v0[197];
    v134 = v0[199];
    v43 = v0[191];
    v137 = v0[189];
    v140 = v0[275];
    v44 = v0[155];

    sub_10000BE18(v43, &qword_100835E40, &qword_1006C49F8);
    (*(v42 + 8))(v134, v131);
LABEL_9:
    sub_10021EA28(v137, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154((v0 + 82));

    sub_10000BB78(v0 + 124);
    sub_1001F3808();
    v52 = v0[236];
    v53 = v0[235];
    v54 = v0[234];
    v55 = v0[233];
    v56 = v0[232];
    v57 = v0[231];
    v58 = v0[230];
    v59 = v0[229];
    v60 = v0[228];
    v61 = v0[227];
    v78 = v0[226];
    v79 = v0[225];
    v80 = v0[224];
    v81 = v0[223];
    v82 = v0[222];
    v83 = v0[221];
    v84 = v0[220];
    v85 = v0[219];
    v86 = v0[218];
    v87 = v0[217];
    v88 = v0[216];
    v89 = v0[215];
    v90 = v0[214];
    v91 = v0[213];
    v92 = v0[212];
    v93 = v0[209];
    v94 = v0[206];
    v95 = v0[205];
    v96 = v0[204];
    v97 = v0[203];
    v98 = v0[200];
    v99 = v0[199];
    v100 = v0[196];
    v101 = v0[195];
    v102 = v0[194];
    v103 = v0[193];
    v104 = v0[192];
    v105 = v0[191];
    v106 = v0[190];
    v107 = v0[189];
    v108 = v0[188];
    v109 = v0[185];
    v110 = v0[184];
    v111 = v0[183];
    v112 = v0[182];
    v113 = v0[181];
    v114 = v0[180];
    v115 = v0[179];
    v116 = v0[178];
    v117 = v0[177];
    v118 = v0[176];
    v119 = v0[175];
    v120 = v0[174];
    v122 = v0[173];
    v124 = v0[172];
    v126 = v0[171];
    v128 = v0[168];
    v130 = v0[167];
    v133 = v0[166];
    v136 = v0[165];
    v138 = v0[164];
    v142 = v0[163];

    v62 = v0[1];

    return v62();
  }

  v70 = Data.base64EncodedString(options:)(0);
  v71 = v0[87];

  v72 = sub_1003C5E7C(0, 1, 1, _swiftEmptyArrayStorage);
  v74 = *(v72 + 2);
  v73 = *(v72 + 3);
  if (v74 >= v73 >> 1)
  {
    v72 = sub_1003C5E7C((v73 > 1), v74 + 1, 1, v72);
  }

  v0[299] = v72;
  v75 = v0[160];
  *(v72 + 2) = v74 + 1;
  v76 = &v72[32 * v74];
  v76[2] = v70;
  v76[3]._countAndFlagsBits = v20;
  v76[3]._object = v71;
  v0[152] = v72;
  v0[300] = *(v75 + 72);

  v77 = swift_task_alloc();
  v0[301] = v77;
  *v77 = v0;
  v77[1] = sub_1001E8484;

  return sub_1002A9EAC();
}

uint64_t sub_1001E8010()
{
  v1 = v0[275];
  v2 = v0[244];
  v3 = v0[243];
  v4 = v0[199];
  v5 = v0[198];
  v6 = v0[197];
  v7 = v0[191];
  v8 = v0[189];
  v9 = v0[155];

  sub_10000BE18(v7, &qword_100835E40, &qword_1006C49F8);
  (*(v5 + 8))(v4, v6);
  sub_10021EA28(v8, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154((v0 + 82));

  sub_10000BB78(v0 + 124);
  sub_1001F3808();
  v74 = v0[295];
  v10 = v0[236];
  v11 = v0[235];
  v12 = v0[234];
  v13 = v0[233];
  v14 = v0[232];
  v15 = v0[231];
  v16 = v0[230];
  v17 = v0[229];
  v18 = v0[228];
  v19 = v0[227];
  v22 = v0[226];
  v23 = v0[225];
  v24 = v0[224];
  v25 = v0[223];
  v26 = v0[222];
  v27 = v0[221];
  v28 = v0[220];
  v29 = v0[219];
  v30 = v0[218];
  v31 = v0[217];
  v32 = v0[216];
  v33 = v0[215];
  v34 = v0[214];
  v35 = v0[213];
  v36 = v0[212];
  v37 = v0[209];
  v38 = v0[206];
  v39 = v0[205];
  v40 = v0[204];
  v41 = v0[203];
  v42 = v0[200];
  v43 = v0[199];
  v44 = v0[196];
  v45 = v0[195];
  v46 = v0[194];
  v47 = v0[193];
  v48 = v0[192];
  v49 = v0[191];
  v50 = v0[190];
  v51 = v0[189];
  v52 = v0[188];
  v53 = v0[185];
  v54 = v0[184];
  v55 = v0[183];
  v56 = v0[182];
  v57 = v0[181];
  v58 = v0[180];
  v59 = v0[179];
  v60 = v0[178];
  v61 = v0[177];
  v62 = v0[176];
  v63 = v0[175];
  v64 = v0[174];
  v65 = v0[173];
  v66 = v0[172];
  v67 = v0[171];
  v68 = v0[168];
  v69 = v0[167];
  v70 = v0[166];
  v71 = v0[165];
  v72 = v0[164];
  v73 = v0[163];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001E8484(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2408);
  v7 = *v3;
  v5[302] = a1;
  v5[303] = a2;
  v5[304] = v2;

  v8 = v4[300];
  if (v2)
  {
    v9 = v5[299];
    v10 = v5[296];
    v11 = v5[288];
    v12 = v5[257];

    v13 = sub_1001F0F18;
  }

  else
  {

    v13 = sub_1001E8608;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1001E8608()
{
  v0[305] = *(v0[160] + 72);

  v1 = swift_task_alloc();
  v0[306] = v1;
  *v1 = v0;
  v1[1] = sub_1001E86AC;

  return sub_1002AA438();
}

uint64_t sub_1001E86AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2448);
  v7 = *v3;
  v5[307] = a1;
  v5[308] = a2;
  v5[309] = v2;

  v8 = v4[305];
  if (v2)
  {
    v9 = v5[299];
    v10 = v5[296];
    v11 = v5[288];
    v12 = v5[257];

    v13 = sub_1001F13B0;
  }

  else
  {

    v13 = sub_1001E8830;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1001E8830()
{
  v1 = v0[243];
  v2 = v1[2];
  OS_dispatch_group.wait()();
  v3 = v1[16];
  if (v3)
  {
    v4 = v1[15];
    v5 = v0[308];
    v6 = v0[303];
    v7 = v0[302];

    v10 = Data.base16EncodedString()();
    object = v10._object;
    countAndFlagsBits = v10._countAndFlagsBits;
    if (v5 >> 60 == 15)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      v35 = v0[308];
      v36 = v0[307];
      sub_10000B8B8(v36, v35);
      v37 = Data.base16EncodedString()();
      v11 = v37._countAndFlagsBits;
      v12 = v37._object;
      sub_10000BD94(v36, v35);
      object = v10._object;
      countAndFlagsBits = v10._countAndFlagsBits;
    }

    v38 = v0[296];
    v39 = v0[155];
    v40 = (v0[160] + v0[289]);
    sub_10014C730(countAndFlagsBits, object, v11, v12, v4, v3);
    v42 = *v40;
    v41 = v40[1];
    v0[310] = v41;

    v43 = swift_task_alloc();
    v0[311] = v43;
    *v43 = v0;
    v43[1] = sub_1001E8FAC;
    v44 = v0[160];

    return sub_1001F3C70(v39, (v0 + 82), v42, v41, v38);
  }

  else
  {
    v103 = v0[308];
    v13 = v0[299];
    v89 = v0[303];
    v91 = v0[298];
    v85 = v0[302];
    v87 = v0[297];
    v14 = v0[296];
    v97 = v0[294];
    v99 = v0[307];
    v15 = v0[288];
    v16 = v0[257];
    v83 = v0[243];
    v17 = v0[209];
    v18 = v0[208];
    v19 = v0[207];
    v105 = v0[199];
    v20 = v0[198];
    v101 = v0[197];
    v93 = v0[244];
    v95 = v0[191];
    v107 = v0[189];
    v109 = v0[275];
    v21 = v0[161];
    v22 = v0[155];

    (*(v18 + 104))(v17, enum case for DIPError.Code.unexpectedDeviceState(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v85, v89);
    sub_10000B90C(v87, v91);

    sub_10000BD94(v99, v103);

    sub_10000BE18(v95, &qword_100835E40, &qword_1006C49F8);
    (*(v20 + 8))(v105, v101);
    sub_10021EA28(v107, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154((v0 + 82));

    sub_10000BB78(v0 + 124);
    sub_1001F3808();
    v23 = v0[236];
    v24 = v0[235];
    v25 = v0[234];
    v26 = v0[233];
    v27 = v0[232];
    v28 = v0[231];
    v29 = v0[230];
    v30 = v0[229];
    v31 = v0[228];
    v32 = v0[227];
    v45 = v0[226];
    v46 = v0[225];
    v47 = v0[224];
    v48 = v0[223];
    v49 = v0[222];
    v50 = v0[221];
    v51 = v0[220];
    v52 = v0[219];
    v53 = v0[218];
    v54 = v0[217];
    v55 = v0[216];
    v56 = v0[215];
    v57 = v0[214];
    v58 = v0[213];
    v59 = v0[212];
    v60 = v0[209];
    v61 = v0[206];
    v62 = v0[205];
    v63 = v0[204];
    v64 = v0[203];
    v65 = v0[200];
    v66 = v0[199];
    v67 = v0[196];
    v68 = v0[195];
    v69 = v0[194];
    v70 = v0[193];
    v71 = v0[192];
    v72 = v0[191];
    v73 = v0[190];
    v74 = v0[189];
    v75 = v0[188];
    v76 = v0[185];
    v77 = v0[184];
    v78 = v0[183];
    v79 = v0[182];
    v80 = v0[181];
    v81 = v0[180];
    v82 = v0[179];
    v84 = v0[178];
    v86 = v0[177];
    v88 = v0[176];
    v90 = v0[175];
    v92 = v0[174];
    v94 = v0[173];
    v96 = v0[172];
    v98 = v0[171];
    v100 = v0[168];
    v102 = v0[167];
    v104 = v0[166];
    v106 = v0[165];
    v108 = v0[164];
    v110 = v0[163];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1001E8FAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2488);
  v16 = *v2;
  *(*v2 + 2496) = v1;

  if (v1)
  {
    v6 = v4[310];
    v7 = v4[299];
    v8 = v4[296];
    v9 = v4[288];
    v10 = v4[257];
    v11 = v4[153];

    swift_bridgeObjectRelease_n();

    v12 = sub_1001F185C;
  }

  else
  {
    v13 = v4[310];
    v14 = v4[296];

    v4[313] = a1;
    v12 = sub_1001E9134;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1001E9134()
{
  sub_10031CAA4(*(v0 + 2504));
  v1 = sub_10000BA08((v0 + 992), *(v0 + 1016));
  v2 = type metadata accessor for Workflow();
  *(v0 + 2512) = v2;
  v3 = *(v1 + *(v2 + 176));
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v50 = *(v0 + 2424);
    v51 = *(v0 + 2416);
    v52 = *(v0 + 2384);
    v53 = *(v0 + 2376);
    sub_10000BD94(*(v0 + 2456), *(v0 + 2464));
    sub_10000B90C(v51, v50);
    sub_10000B90C(v53, v52);
    if ((*(v0 + 1256) & 2) != 0)
    {
LABEL_20:
      *(v0 + 2568) = *(*(v0 + 1280) + 40);
      v74 = swift_task_alloc();
      *(v0 + 2576) = v74;
      *v74 = v0;
      v74[1] = sub_1001EAAB4;

      return sub_1004B1A60();
    }

    goto LABEL_13;
  }

  v4 = *(v0 + 1280);
  v5 = (*(v4 + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash);
  v6 = *v5;
  *(v0 + 2520) = *v5;
  v7 = v5[1];
  *(v0 + 2528) = v7;
  if (v7 >> 60 == 15)
  {
    v8 = *(v0 + 1288);
    (*(*(v0 + 1664) + 104))(*(v0 + 1672), enum case for DIPError.Code.failedToStoreHashIsNil(_:), *(v0 + 1656));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = *(v0 + 1712);
    defaultLogger()();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "(Non terminal error): Failed to store PII hash on phone with error: %@", v12, 0xCu);
      sub_10000BE18(v13, &unk_100833B50, &unk_1006D8FB0);
    }

    v15 = *(v0 + 2024);
    v16 = *(v0 + 1896);
    v17 = *(v0 + 1712);
    v18 = *(v0 + 1680);
    v19 = *(v0 + 1672);
    v20 = *(v0 + 1664);
    v21 = *(v0 + 1656);
    v131 = *(v0 + 1312);
    v135 = *(v0 + 2512);

    v16(v17, v18);
    (*(v20 + 104))(v19, enum case for DIPError.Code.internalError(_:), v21);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v22 = *(sub_10000BA08((v0 + 992), *(v0 + 1016)) + *(v135 + 180));
    if (v22 != 2 && (v22 & 1) != 0 || (v23 = [*(v0 + 1904) standardUserDefaults], v24._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v25 = NSUserDefaults.internalBool(forKey:)(v24), , v23, v25))
    {
      v26 = *(v0 + 2416);
      v120 = *(v0 + 2384);
      v116 = *(v0 + 2424);
      v118 = *(v0 + 2376);
      v27 = *(v0 + 2368);
      v126 = *(v0 + 2352);
      v128 = *(v0 + 2464);
      v28 = *(v0 + 2304);
      v29 = *(v0 + 2056);
      v122 = *(v0 + 1952);
      v124 = *(v0 + 2456);
      v114 = *(v0 + 1944);
      v30 = *(v0 + 1584);
      v136 = *(v0 + 1576);
      v139 = *(v0 + 1592);
      v132 = *(v0 + 1528);
      v142 = *(v0 + 1512);
      v145 = *(v0 + 2200);
      v31 = *(v0 + 1312);
      v32 = *(v0 + 1296);
      v33 = *(v0 + 1288);
      v34 = *(v0 + 1240);

      v35 = *(v0 + 1224);

      v36 = *(v0 + 1216);

      swift_allocError();
      (*(v32 + 16))(v37, v31, v33);
      swift_willThrow();

      sub_10000B90C(v26, v116);
      sub_10000B90C(v118, v120);

      sub_10000BD94(v124, v128);

      (*(v32 + 8))(v31, v33);
      sub_10000BE18(v132, &qword_100835E40, &qword_1006C49F8);
      (*(v30 + 8))(v139, v136);
      sub_10021EA28(v142, type metadata accessor for TiberiusWrappedAssessment);
      sub_1001B7154(v0 + 656);

      sub_10000BB78((v0 + 992));
      sub_1001F3808();
      v38 = *(v0 + 1888);
      v39 = *(v0 + 1880);
      v40 = *(v0 + 1872);
      v41 = *(v0 + 1864);
      v42 = *(v0 + 1856);
      v43 = *(v0 + 1848);
      v44 = *(v0 + 1840);
      v45 = *(v0 + 1832);
      v46 = *(v0 + 1824);
      v47 = *(v0 + 1816);
      v75 = *(v0 + 1808);
      v76 = *(v0 + 1800);
      v77 = *(v0 + 1792);
      v78 = *(v0 + 1784);
      v79 = *(v0 + 1776);
      v80 = *(v0 + 1768);
      v81 = *(v0 + 1760);
      v82 = *(v0 + 1752);
      v83 = *(v0 + 1744);
      v84 = *(v0 + 1736);
      v85 = *(v0 + 1728);
      v86 = *(v0 + 1720);
      v87 = *(v0 + 1712);
      v88 = *(v0 + 1704);
      v89 = *(v0 + 1696);
      v90 = *(v0 + 1672);
      v91 = *(v0 + 1648);
      v92 = *(v0 + 1640);
      v93 = *(v0 + 1632);
      v94 = *(v0 + 1624);
      v95 = *(v0 + 1600);
      v96 = *(v0 + 1592);
      v97 = *(v0 + 1568);
      v98 = *(v0 + 1560);
      v99 = *(v0 + 1552);
      v100 = *(v0 + 1544);
      v101 = *(v0 + 1536);
      v102 = *(v0 + 1528);
      v103 = *(v0 + 1520);
      v104 = *(v0 + 1512);
      v105 = *(v0 + 1504);
      v106 = *(v0 + 1480);
      v107 = *(v0 + 1472);
      v108 = *(v0 + 1464);
      v109 = *(v0 + 1456);
      v110 = *(v0 + 1448);
      v111 = *(v0 + 1440);
      v112 = *(v0 + 1432);
      v113 = *(v0 + 1424);
      v115 = *(v0 + 1416);
      v117 = *(v0 + 1408);
      v119 = *(v0 + 1400);
      v121 = *(v0 + 1392);
      v123 = *(v0 + 1384);
      v125 = *(v0 + 1376);
      v127 = *(v0 + 1368);
      v129 = *(v0 + 1344);
      v133 = *(v0 + 1336);
      v137 = *(v0 + 1328);
      v140 = *(v0 + 1320);
      v143 = *(v0 + 1312);
      v146 = *(v0 + 1304);

      v48 = *(v0 + 8);

      return v48();
    }

    v66 = *(v0 + 2424);
    v67 = *(v0 + 2416);
    v68 = *(v0 + 2376);
    v144 = *(v0 + 2024);
    v147 = *(v0 + 2464);
    v138 = *(v0 + 2456);
    v141 = *(v0 + 1896);
    v69 = *(v0 + 1856);
    v130 = *(v0 + 2384);
    v134 = *(v0 + 1680);
    v70 = *(v0 + 1312);
    v71 = *(v0 + 1296);
    v72 = *(v0 + 1288);
    swift_allocError();
    (*(v71 + 16))(v73, v70, v72);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    sub_10000B90C(v67, v66);
    sub_10000B90C(v68, v130);

    sub_10000BD94(v138, v147);
    v141(v69, v134);
    (*(v71 + 8))(v70, v72);

    if ((*(v0 + 1256) & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_13:
    v54 = *(v0 + 2368);
    v55 = *(v0 + 2304);

    v56 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v56;
    v57 = async function pointer to OS_dispatch_group.wait()[1];
    v56;
    v58 = swift_task_alloc();
    *(v0 + 2920) = v58;
    *v58 = v0;
    v58[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  v59 = *(v0 + 2328);
  v60 = *(v0 + 2304);
  *(v0 + 2536) = *(v4 + 72);
  v61 = *(v59 + 16);
  *(v0 + 2544) = v61;

  sub_1000363B4(v6, v7);

  v62 = v61;
  v63 = swift_task_alloc();
  *(v0 + 2552) = v63;
  *v63 = v0;
  v63[1] = sub_1001E9D80;
  v64 = *(v0 + 2304);
  v65 = *(v0 + 2296);

  return sub_10021AC40(1, v62, v65, v64, v6, v7);
}

uint64_t sub_1001E9D80()
{
  v2 = *v1;
  v3 = *(*v1 + 2552);
  v4 = *v1;
  *(*v1 + 2560) = v0;

  v5 = v2[318];
  v6 = v2[317];
  v7 = v2[288];

  if (v0)
  {
    v8 = sub_1001EA084;
  }

  else
  {
    v8 = sub_1001E9EE8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001E9EE8()
{
  v1 = *(v0 + 2528);
  v2 = *(v0 + 2520);
  v3 = *(v0 + 2424);
  v4 = *(v0 + 2416);
  v5 = *(v0 + 2384);
  v6 = *(v0 + 2376);
  sub_10000BD94(*(v0 + 2456), *(v0 + 2464));
  sub_10000B90C(v4, v3);
  sub_10000B90C(v6, v5);
  sub_10000BD94(v2, v1);
  if ((*(v0 + 1256) & 2) != 0)
  {
    *(v0 + 2568) = *(*(v0 + 1280) + 40);
    v12 = swift_task_alloc();
    *(v0 + 2576) = v12;
    *v12 = v0;
    v12[1] = sub_1001EAAB4;

    return sub_1004B1A60();
  }

  else
  {
    v7 = *(v0 + 2368);
    v8 = *(v0 + 2304);

    v9 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v9;
    v10 = async function pointer to OS_dispatch_group.wait()[1];
    v9;
    v11 = swift_task_alloc();
    *(v0 + 2920) = v11;
    *v11 = v0;
    v11[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }
}

uint64_t sub_1001EA084()
{
  sub_10000BD94(*(v0 + 2520), *(v0 + 2528));
  v1 = *(v0 + 2560);
  v2 = *(v0 + 1712);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "(Non terminal error): Failed to store PII hash on phone with error: %@", v5, 0xCu);
    sub_10000BE18(v6, &unk_100833B50, &unk_1006D8FB0);
  }

  v8 = *(v0 + 2024);
  v9 = *(v0 + 1896);
  v10 = *(v0 + 1712);
  v11 = *(v0 + 1680);
  v12 = *(v0 + 1672);
  v13 = *(v0 + 1664);
  v14 = *(v0 + 1656);
  v124 = *(v0 + 1312);
  v128 = *(v0 + 2512);

  v9(v10, v11);
  (*(v13 + 104))(v12, enum case for DIPError.Code.internalError(_:), v14);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v15 = *(sub_10000BA08((v0 + 992), *(v0 + 1016)) + *(v128 + 180));
  if (v15 != 2 && (v15 & 1) != 0 || (v16 = [*(v0 + 1904) standardUserDefaults], v17._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v18 = NSUserDefaults.internalBool(forKey:)(v17), , v16, v18))
  {
    v19 = *(v0 + 2416);
    v102 = *(v0 + 2384);
    v98 = *(v0 + 2424);
    v100 = *(v0 + 2376);
    v20 = *(v0 + 2368);
    v108 = *(v0 + 2352);
    v110 = *(v0 + 2464);
    v21 = *(v0 + 2304);
    v22 = *(v0 + 2056);
    v104 = *(v0 + 1952);
    v106 = *(v0 + 2456);
    v96 = *(v0 + 1944);
    v23 = *(v0 + 1584);
    v115 = *(v0 + 1576);
    v118 = *(v0 + 1592);
    v112 = *(v0 + 1528);
    v121 = *(v0 + 1512);
    v125 = *(v0 + 2200);
    v24 = *(v0 + 1312);
    v25 = *(v0 + 1296);
    v26 = *(v0 + 1288);
    v27 = *(v0 + 1240);

    v28 = *(v0 + 1224);

    v29 = *(v0 + 1216);

    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v25 + 16))(v30, v24, v26);
    swift_willThrow();

    sub_10000B90C(v19, v98);
    sub_10000B90C(v100, v102);

    sub_10000BD94(v106, v110);

    (*(v25 + 8))(v24, v26);
    sub_10000BE18(v112, &qword_100835E40, &qword_1006C49F8);
    (*(v23 + 8))(v118, v115);
    sub_10021EA28(v121, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();
    v31 = *(v0 + 1888);
    v32 = *(v0 + 1880);
    v33 = *(v0 + 1872);
    v34 = *(v0 + 1864);
    v35 = *(v0 + 1856);
    v36 = *(v0 + 1848);
    v37 = *(v0 + 1840);
    v38 = *(v0 + 1832);
    v39 = *(v0 + 1824);
    v40 = *(v0 + 1816);
    v57 = *(v0 + 1808);
    v58 = *(v0 + 1800);
    v59 = *(v0 + 1792);
    v60 = *(v0 + 1784);
    v61 = *(v0 + 1776);
    v62 = *(v0 + 1768);
    v63 = *(v0 + 1760);
    v64 = *(v0 + 1752);
    v65 = *(v0 + 1744);
    v66 = *(v0 + 1736);
    v67 = *(v0 + 1728);
    v68 = *(v0 + 1720);
    v69 = *(v0 + 1712);
    v70 = *(v0 + 1704);
    v71 = *(v0 + 1696);
    v72 = *(v0 + 1672);
    v73 = *(v0 + 1648);
    v74 = *(v0 + 1640);
    v75 = *(v0 + 1632);
    v76 = *(v0 + 1624);
    v77 = *(v0 + 1600);
    v78 = *(v0 + 1592);
    v79 = *(v0 + 1568);
    v80 = *(v0 + 1560);
    v81 = *(v0 + 1552);
    v82 = *(v0 + 1544);
    v83 = *(v0 + 1536);
    v84 = *(v0 + 1528);
    v85 = *(v0 + 1520);
    v86 = *(v0 + 1512);
    v87 = *(v0 + 1504);
    v88 = *(v0 + 1480);
    v89 = *(v0 + 1472);
    v90 = *(v0 + 1464);
    v91 = *(v0 + 1456);
    v92 = *(v0 + 1448);
    v93 = *(v0 + 1440);
    v94 = *(v0 + 1432);
    v95 = *(v0 + 1424);
    v97 = *(v0 + 1416);
    v99 = *(v0 + 1408);
    v101 = *(v0 + 1400);
    v103 = *(v0 + 1392);
    v105 = *(v0 + 1384);
    v107 = *(v0 + 1376);
    v109 = *(v0 + 1368);
    v111 = *(v0 + 1344);
    v113 = *(v0 + 1336);
    v116 = *(v0 + 1328);
    v119 = *(v0 + 1320);
    v122 = *(v0 + 1312);
    v126 = *(v0 + 1304);

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    v43 = *(v0 + 2424);
    v44 = *(v0 + 2416);
    v45 = *(v0 + 2376);
    v127 = *(v0 + 2024);
    v129 = *(v0 + 2464);
    v120 = *(v0 + 2456);
    v123 = *(v0 + 1896);
    v46 = *(v0 + 1856);
    v114 = *(v0 + 2384);
    v117 = *(v0 + 1680);
    v47 = *(v0 + 1312);
    v48 = *(v0 + 1296);
    v49 = *(v0 + 1288);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v48 + 16))(v50, v47, v49);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    sub_10000B90C(v44, v43);
    sub_10000B90C(v45, v114);

    sub_10000BD94(v120, v129);
    v123(v46, v117);
    (*(v48 + 8))(v47, v49);

    if ((*(v0 + 1256) & 2) != 0)
    {
      *(v0 + 2568) = *(*(v0 + 1280) + 40);
      v56 = swift_task_alloc();
      *(v0 + 2576) = v56;
      *v56 = v0;
      v56[1] = sub_1001EAAB4;

      return sub_1004B1A60();
    }

    else
    {
      v51 = *(v0 + 2368);
      v52 = *(v0 + 2304);

      v53 = *(*(*(v0 + 1280) + 120) + 128);
      *(v0 + 2912) = v53;
      v54 = async function pointer to OS_dispatch_group.wait()[1];
      v53;
      v55 = swift_task_alloc();
      *(v0 + 2920) = v55;
      *v55 = v0;
      v55[1] = sub_1001EE834;

      return OS_dispatch_group.wait()();
    }
  }
}

uint64_t sub_1001EAAB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2576);
  v6 = *v2;
  *(v3 + 2584) = a1;
  *(v3 + 2592) = a2;

  return _swift_task_switch(sub_1001EABB8, 0, 0);
}

uint64_t sub_1001EABB8()
{
  v24 = v0;
  v1 = v0[324];
  if (v1)
  {
    v2 = v0[220];
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[323];
      v22 = v0[253];
      v6 = v0[237];
      v7 = v0[220];
      v8 = v0[210];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100141FE4(v5, v1, &v23);
      _os_log_impl(&_mh_execute_header, v3, v4, "Trying to register for watch events with pairingID : %s", v9, 0xCu);
      sub_10000BB78(v10);

      v6(v7, v8);
    }

    else
    {
      v16 = v0[253];
      v17 = v0[237];
      v18 = v0[220];
      v19 = v0[210];

      v17(v18, v19);
    }

    v0[325] = *(v0[160] + 64);

    v20 = swift_task_alloc();
    v0[326] = v20;
    *v20 = v0;
    v20[1] = sub_1001EAE4C;

    return sub_1002D515C();
  }

  else
  {
    v11 = v0[296];
    v12 = v0[288];

    v13 = *(*(v0[160] + 120) + 128);
    v0[364] = v13;
    v14 = async function pointer to OS_dispatch_group.wait()[1];
    v13;
    v15 = swift_task_alloc();
    v0[365] = v15;
    *v15 = v0;
    v15[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }
}

uint64_t sub_1001EAE4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2608);
  v6 = *v2;
  v4[327] = a1;
  v4[328] = v1;

  v7 = v3[325];
  if (v1)
  {
    v8 = v4[324];
    v9 = v4[296];
    v10 = v4[288];

    v11 = sub_1001F1D24;
  }

  else
  {

    v11 = sub_1001EAFB8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1001EAFB8()
{
  v26 = v0;
  v1 = v0[327];
  v2 = v0[219];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[327];
  v7 = v0[237];
  v8 = v0[219];
  v9 = v0[210];
  if (v5)
  {
    v24 = v0[253];
    v10 = swift_slowAlloc();
    v23 = v7;
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = Array.description.getter();
    v14 = v13;

    v15 = sub_100141FE4(v12, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully registered for watch events : %s", v10, 0xCu);
    sub_10000BB78(v11);

    v23(v8, v9);
  }

  else
  {
    v16 = v0[327];

    v7(v8, v9);
  }

  v17 = v0[321];
  v0[329] = *(v0[160] + 72);
  v18 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService;
  v0[330] = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService;
  v19 = *(v17 + v18);
  v0[331] = v19;

  v20 = v19;
  v21 = swift_task_alloc();
  v0[332] = v21;
  *v21 = v0;
  v21[1] = sub_1001EB204;

  return sub_100207100(2, v20);
}

uint64_t sub_1001EB204(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2656);
  v7 = *v3;
  v5[333] = a1;
  v5[334] = a2;
  v5[335] = v2;

  v8 = v4[331];
  v9 = v4[329];
  if (v2)
  {
    v10 = v5[324];
    v11 = v5[296];
    v12 = v5[288];

    v13 = sub_1001F2360;
  }

  else
  {

    v13 = sub_1001EB394;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1001EB394()
{
  v1 = v0[334];
  v2 = v0[330];
  v3 = v0[321];
  v4 = v0[160];
  v5 = (v4 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
  v6 = *(v4 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier + 8);
  *v5 = v0[333];
  v5[1] = v1;

  v0[336] = *(v4 + 72);
  v7 = *(v3 + v2);
  v0[337] = v7;

  v8 = v7;
  v9 = swift_task_alloc();
  v0[338] = v9;
  *v9 = v0;
  v9[1] = sub_1001EB4A4;
  v10 = v0[334];
  v11 = v0[333];

  return sub_10021B130(v11, v10, v8);
}

uint64_t sub_1001EB4A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2704);
  v6 = *v2;
  v4[339] = a1;
  v4[340] = v1;

  v7 = v3[337];
  v8 = v3[336];
  if (v1)
  {
    v9 = v4[334];
    v10 = v4[324];
    v11 = v4[296];
    v12 = v4[288];

    v13 = sub_1001EC0D4;
  }

  else
  {

    v13 = sub_1001EB63C;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1001EB63C()
{
  v137 = v0;
  v1 = *(v0 + 2712);
  v2 = *(v0 + 1744);
  defaultLogger()();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2712);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully generated key signing key for watch : %@.", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = *(v0 + 2712);
  v11 = *(v0 + 2024);
  v12 = *(v0 + 1896);
  v13 = *(v0 + 1744);
  v14 = *(v0 + 1680);

  v12(v13, v14);
  v15._countAndFlagsBits = 0x3333386162633964;
  v16._object = 0x8000000100706400;
  v15._object = 0xE800000000000000;
  v16._countAndFlagsBits = 0xD000000000000020;
  logMilestone(tag:description:)(v15, v16);
  v17 = [v10 attestation];
  if (v17)
  {
    v18 = *(v0 + 1736);
    v19 = v17;
    *(v0 + 2728) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    defaultLogger()();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 1896);
    v24 = *(v0 + 1736);
    v25 = *(v0 + 1680);
    if (v22)
    {
      v132 = *(v0 + 2024);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v136 = v27;
      *v26 = 136315138;
      v28 = Array.description.getter();
      v30 = sub_100141FE4(v28, v29, &v136);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "kakCertificates created for watch : %s", v26, 0xCu);
      sub_10000BB78(v27);

      v23(v24, v25);
    }

    else
    {

      v23(v24, v25);
    }

    v62 = *(v0 + 2592);
    *(v0 + 2736) = *(*(v0 + 1280) + 64);

    v63 = swift_task_alloc();
    *(v0 + 2744) = v63;
    *v63 = v0;
    v63[1] = sub_1001EC710;
    v64 = *(v0 + 2584);

    return sub_1002D3138(v64, v62);
  }

  else
  {
    v133 = *(v0 + 2712);
    v31 = *(v0 + 2672);
    v32 = *(v0 + 2592);
    v33 = *(v0 + 2368);
    v34 = *(v0 + 2304);
    v35 = *(v0 + 1672);
    v36 = *(v0 + 1664);
    v37 = *(v0 + 1656);
    v38 = *(v0 + 1288);

    (*(v36 + 104))(v35, enum case for DIPError.Code.internalError(_:), v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    v39 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    if (*(v0 + 1256))
    {
      v65 = *(v0 + 1704);
      defaultLogger()();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v68, 2u);
      }

      v69 = *(v0 + 2024);
      v70 = *(v0 + 1896);
      v71 = *(v0 + 1856);
      v72 = *(v0 + 1704);
      v73 = *(v0 + 1680);
      v74 = *(v0 + 1280);

      v70(v72, v73);
      v75 = *(v74 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure);
      *(v74 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v39;
      swift_errorRetain();

      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v70(v71, v73);
      v76 = *(*(*(v0 + 1280) + 120) + 128);
      *(v0 + 2912) = v76;
      v77 = async function pointer to OS_dispatch_group.wait()[1];
      v76;
      v78 = swift_task_alloc();
      *(v0 + 2920) = v78;
      *v78 = v0;
      v78[1] = sub_1001EE834;

      return OS_dispatch_group.wait()();
    }

    else
    {
      v40 = *(v0 + 2352);
      v134 = *(v0 + 2200);
      v41 = *(v0 + 2056);
      v42 = *(v0 + 1952);
      v43 = *(v0 + 1944);
      v44 = *(v0 + 1584);
      v45 = *(v0 + 1576);
      v46 = *(v0 + 1528);
      v128 = *(v0 + 1592);
      v130 = *(v0 + 1512);
      v47 = *(v0 + 1240);
      v48 = *(v0 + 1224);

      v49 = *(v0 + 1216);

      swift_willThrow();

      sub_10000BE18(v46, &qword_100835E40, &qword_1006C49F8);
      (*(v44 + 8))(v128, v45);
      sub_10021EA28(v130, type metadata accessor for TiberiusWrappedAssessment);
      sub_1001B7154(v0 + 656);

      sub_10000BB78((v0 + 992));
      sub_1001F3808();
      v50 = *(v0 + 1888);
      v51 = *(v0 + 1880);
      v52 = *(v0 + 1872);
      v53 = *(v0 + 1864);
      v54 = *(v0 + 1856);
      v55 = *(v0 + 1848);
      v56 = *(v0 + 1840);
      v57 = *(v0 + 1832);
      v58 = *(v0 + 1824);
      v79 = *(v0 + 1816);
      v80 = *(v0 + 1808);
      v81 = *(v0 + 1800);
      v82 = *(v0 + 1792);
      v83 = *(v0 + 1784);
      v84 = *(v0 + 1776);
      v85 = *(v0 + 1768);
      v86 = *(v0 + 1760);
      v87 = *(v0 + 1752);
      v88 = *(v0 + 1744);
      v89 = *(v0 + 1736);
      v90 = *(v0 + 1728);
      v91 = *(v0 + 1720);
      v92 = *(v0 + 1712);
      v93 = *(v0 + 1704);
      v94 = *(v0 + 1696);
      v95 = *(v0 + 1672);
      v96 = *(v0 + 1648);
      v97 = *(v0 + 1640);
      v98 = *(v0 + 1632);
      v99 = *(v0 + 1624);
      v100 = *(v0 + 1600);
      v101 = *(v0 + 1592);
      v102 = *(v0 + 1568);
      v103 = *(v0 + 1560);
      v104 = *(v0 + 1552);
      v105 = *(v0 + 1544);
      v106 = *(v0 + 1536);
      v107 = *(v0 + 1528);
      v108 = *(v0 + 1520);
      v109 = *(v0 + 1512);
      v110 = *(v0 + 1504);
      v111 = *(v0 + 1480);
      v112 = *(v0 + 1472);
      v113 = *(v0 + 1464);
      v114 = *(v0 + 1456);
      v115 = *(v0 + 1448);
      v116 = *(v0 + 1440);
      v117 = *(v0 + 1432);
      v118 = *(v0 + 1424);
      v119 = *(v0 + 1416);
      v120 = *(v0 + 1408);
      v121 = *(v0 + 1400);
      v122 = *(v0 + 1392);
      v123 = *(v0 + 1384);
      v124 = *(v0 + 1376);
      v125 = *(v0 + 1368);
      v126 = *(v0 + 1344);
      v127 = *(v0 + 1336);
      v129 = *(v0 + 1328);
      v131 = *(v0 + 1320);
      v135 = *(v0 + 1312);
      v59 = *(v0 + 1304);

      v60 = *(v0 + 8);

      return v60();
    }
  }
}

uint64_t sub_1001EC0D4()
{
  v1 = *(v0 + 2720);
  if (*(v0 + 1256))
  {
    v24 = *(v0 + 1704);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v27, 2u);
    }

    v28 = *(v0 + 2024);
    v29 = *(v0 + 1896);
    v30 = *(v0 + 1856);
    v31 = *(v0 + 1704);
    v32 = *(v0 + 1680);
    v33 = *(v0 + 1280);

    v29(v31, v32);
    v34 = *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure);
    *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v1;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v29(v30, v32);
    v35 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v35;
    v36 = async function pointer to OS_dispatch_group.wait()[1];
    v35;
    v37 = swift_task_alloc();
    *(v0 + 2920) = v37;
    *v37 = v0;
    v37[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v2 = *(v0 + 2352);
    v91 = *(v0 + 2200);
    v93 = *(v0 + 2720);
    v3 = *(v0 + 2056);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1944);
    v6 = *(v0 + 1584);
    v7 = *(v0 + 1576);
    v8 = *(v0 + 1528);
    v87 = *(v0 + 1592);
    v89 = *(v0 + 1512);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1224);

    v11 = *(v0 + 1216);

    swift_willThrow();

    sub_10000BE18(v8, &qword_100835E40, &qword_1006C49F8);
    (*(v6 + 8))(v87, v7);
    sub_10021EA28(v89, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();
    v12 = *(v0 + 1888);
    v13 = *(v0 + 1880);
    v14 = *(v0 + 1872);
    v15 = *(v0 + 1864);
    v16 = *(v0 + 1856);
    v17 = *(v0 + 1848);
    v18 = *(v0 + 1840);
    v19 = *(v0 + 1832);
    v20 = *(v0 + 1824);
    v21 = *(v0 + 1816);
    v38 = *(v0 + 1808);
    v39 = *(v0 + 1800);
    v40 = *(v0 + 1792);
    v41 = *(v0 + 1784);
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1768);
    v44 = *(v0 + 1760);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1744);
    v47 = *(v0 + 1736);
    v48 = *(v0 + 1728);
    v49 = *(v0 + 1720);
    v50 = *(v0 + 1712);
    v51 = *(v0 + 1704);
    v52 = *(v0 + 1696);
    v53 = *(v0 + 1672);
    v54 = *(v0 + 1648);
    v55 = *(v0 + 1640);
    v56 = *(v0 + 1632);
    v57 = *(v0 + 1624);
    v58 = *(v0 + 1600);
    v59 = *(v0 + 1592);
    v60 = *(v0 + 1568);
    v61 = *(v0 + 1560);
    v62 = *(v0 + 1552);
    v63 = *(v0 + 1544);
    v64 = *(v0 + 1536);
    v65 = *(v0 + 1528);
    v66 = *(v0 + 1520);
    v67 = *(v0 + 1512);
    v68 = *(v0 + 1504);
    v69 = *(v0 + 1480);
    v70 = *(v0 + 1472);
    v71 = *(v0 + 1464);
    v72 = *(v0 + 1456);
    v73 = *(v0 + 1448);
    v74 = *(v0 + 1440);
    v75 = *(v0 + 1432);
    v76 = *(v0 + 1424);
    v77 = *(v0 + 1416);
    v78 = *(v0 + 1408);
    v79 = *(v0 + 1400);
    v80 = *(v0 + 1392);
    v81 = *(v0 + 1384);
    v82 = *(v0 + 1376);
    v83 = *(v0 + 1368);
    v84 = *(v0 + 1344);
    v85 = *(v0 + 1336);
    v86 = *(v0 + 1328);
    v88 = *(v0 + 1320);
    v90 = *(v0 + 1312);
    v92 = *(v0 + 1304);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1001EC710(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2744);
  v6 = *v2;
  v4[344] = a1;
  v4[345] = v1;

  v7 = v3[342];
  if (v1)
  {
    v8 = v4[341];
    v9 = v4[334];
    v10 = v4[324];
    v11 = v4[296];
    v12 = v4[288];

    v13 = sub_1001F299C;
  }

  else
  {
    v14 = v4[324];

    v13 = sub_1001EC8A8;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1001EC8A8()
{
  v26 = v0;
  v1 = v0[344];
  if (v1)
  {
    v2 = v0[216];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "watch attestations present, adding in to keyAttestations", v5, 2u);
    }

    v6 = v0[345];
    v7 = v0[253];
    v8 = v0[237];
    v9 = v0[216];
    v10 = v0[210];

    v8(v9, v10);
    v11 = v0[153];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v11;
    sub_10021B768(v1, sub_1002083B4, 0, isUniquelyReferenced_nonNull_native, &v25);

    v0[153] = v25;
  }

  v13 = v0[339];
  v14 = v0[291];
  v0[346] = *(v0[160] + 72);

  v15 = [v13 publicKeyCOSEKey];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v0[347] = v16;
  v0[348] = v18;
  v19 = *(v14 + 16);
  v0[349] = v19;
  v20 = v19;
  v21 = swift_task_alloc();
  v0[350] = v21;
  *v21 = v0;
  v21[1] = sub_1001ECAC0;
  v22 = v0[288];
  v23 = v0[287];

  return sub_1002ACF14(v23, v22, v16, v18, v20);
}

uint64_t sub_1001ECAC0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 2800);
  v7 = *v3;
  v5[351] = a1;
  v5[352] = a2;
  v5[353] = v2;

  v8 = v4[349];
  v9 = v4[348];
  v10 = v4[347];
  v11 = v4[346];
  if (v2)
  {
    v12 = v5[341];
    v13 = v5[334];
    v14 = v5[296];
    v15 = v5[288];

    sub_10000B90C(v10, v9);

    v16 = sub_1001ED580;
  }

  else
  {
    v17 = v5[288];

    sub_10000B90C(v10, v9);

    v16 = sub_1001ECCB0;
  }

  return _swift_task_switch(v16, 0, 0);
}

uint64_t sub_1001ECCB0()
{
  v88 = v0;
  v1 = *(v0 + 2816);
  v2 = *(v0 + 2808);
  v3 = *(v0 + 1720);
  defaultLogger()();
  sub_10000B8B8(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10000B90C(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2816);
    v7 = *(v0 + 2808);
    v84 = *(v0 + 1896);
    v85 = *(v0 + 2024);
    v83 = *(v0 + 1720);
    v8 = *(v0 + 1680);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v86 = v10;
    *v9 = 136315138;
    sub_10000B8B8(v7, v6);
    v11 = Data.description.getter();
    v13 = v12;
    sub_10000B90C(v7, v6);
    v14 = sub_100141FE4(v11, v13, &v86);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Key signing data generated for watch : %s", v9, 0xCu);
    sub_10000BB78(v10);

    v84(v83, v8);
  }

  else
  {
    v15 = *(v0 + 2024);
    v16 = *(v0 + 1896);
    v17 = *(v0 + 1720);
    v18 = *(v0 + 1680);

    v16(v17, v18);
  }

  v19 = *(v0 + 2816);
  v20 = *(v0 + 2808);
  v21 = Data.base64EncodedString(options:)(0);
  v22 = *(v0 + 1216);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1003C5E7C(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1003C5E7C((v23 > 1), v24 + 1, 1, v22);
  }

  v25 = *(v0 + 2728);
  v26 = *(v0 + 2368);
  v27 = *(v0 + 1240);
  *(v22 + 2) = v24 + 1;
  v28 = &v22[32 * v24];
  v28[2] = v21;
  v28[3]._countAndFlagsBits = v25;
  v28[3]._object = v26;
  *(v0 + 1216) = v22;
  IdentityProofingConfiguration.documentType.getter();
  v29 = IdentityDocumentType.rawValue.getter();
  if (v29 != IdentityDocumentType.rawValue.getter())
  {
    v34 = *(v0 + 2816);
    v35 = *(v0 + 2808);
    v36 = *(v0 + 2672);

    sub_10000B90C(v35, v34);

LABEL_24:
    v74 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v74;
    v75 = async function pointer to OS_dispatch_group.wait()[1];
    v74;
    v76 = swift_task_alloc();
    *(v0 + 2920) = v76;
    *v76 = v0;
    v76[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  v30 = *(v0 + 1256);
  if (((sub_1005A0FE0(&off_1007FB710) | 1) & ~v30) != 0)
  {
    v37 = *(v0 + 1240);
    v38 = IdentityProofingConfiguration.piiTokenIdentifier.getter();
    if (!v39)
    {
      v33 = &enum case for DIPError.Code.piiHashIdentifierUnavailable(_:);
      goto LABEL_21;
    }

    *(v0 + 2832) = *(*(v0 + 1280) + 72);
    v86 = v38;
    v87 = v39;

    v40._countAndFlagsBits = 0x7361682D6969702DLL;
    v40._object = 0xE900000000000068;
    String.append(_:)(v40);
    v42 = v86;
    v41 = v87;
    *(v0 + 2840) = v87;
    v43 = swift_task_alloc();
    *(v0 + 2848) = v43;
    *v43 = v0;
    v43[1] = sub_1001EDBC4;

    return sub_1002AD55C(v42, v41);
  }

  else
  {
    v31 = *(*(v0 + 1280) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash;
    v32 = *(v31 + 8);
    if (v32 >> 60 == 15)
    {
      v33 = &enum case for DIPError.Code.failedToStoreHashIsNil(_:);
LABEL_21:
      v53 = *(v0 + 2672);
      v54 = *(v0 + 1672);
      v55 = *(v0 + 1664);
      v56 = *(v0 + 1656);
      v57 = *(v0 + 1288);

      (*(v55 + 104))(v54, *v33, v56);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v58 = *(v0 + 1696);
      defaultLogger()();
      swift_errorRetain();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        swift_errorRetain();
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 4) = v63;
        *v62 = v63;
        _os_log_impl(&_mh_execute_header, v59, v60, "(Non terminal error): Failed to store PII hash on watch with error: %@", v61, 0xCu);
        sub_10000BE18(v62, &unk_100833B50, &unk_1006D8FB0);
      }

      v80 = *(v0 + 2808);
      v81 = *(v0 + 2816);
      v82 = *(v0 + 2712);
      v64 = *(v0 + 2024);
      v65 = *(v0 + 1896);
      v66 = *(v0 + 1696);
      v67 = *(v0 + 1680);
      v79 = *(v0 + 1856);
      v68 = *(v0 + 1672);
      v69 = *(v0 + 1664);
      v70 = *(v0 + 1656);
      v71 = v59;
      v72 = *(v0 + 1296);
      v77 = *(v0 + 1304);
      v78 = *(v0 + 1288);

      v65(v66, v67);
      (*(v69 + 104))(v68, enum case for DIPError.Code.internalError(_:), v70);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      (*(v72 + 16))(v73, v77, v78);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      sub_10000B90C(v80, v81);

      v65(v79, v67);
      (*(v72 + 8))(v77, v78);

      goto LABEL_24;
    }

    v45 = *v31;
    sub_10000B8B8(*v31, *(v31 + 8));
    *(v0 + 2888) = v32;
    *(v0 + 2880) = v45;
    v46 = *(*(v0 + 2568) + *(v0 + 2640));
    *(v0 + 856) = type metadata accessor for DIPWatch();
    *(v0 + 864) = &off_10080D850;
    *(v0 + 832) = v46;
    v47 = v46;
    v48 = swift_task_alloc();
    *(v0 + 2896) = v48;
    *v48 = v0;
    v48[1] = sub_1001EE620;
    v50 = *(v0 + 2672);
    v51 = *(v0 + 2664);
    v52 = *(v0 + 1280);

    return sub_100205870(v51, v50, v49, v45, v32);
  }
}

uint64_t sub_1001ED580()
{
  v1 = *(v0 + 2824);
  if (*(v0 + 1256))
  {
    v24 = *(v0 + 1704);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v27, 2u);
    }

    v28 = *(v0 + 2024);
    v29 = *(v0 + 1896);
    v30 = *(v0 + 1856);
    v31 = *(v0 + 1704);
    v32 = *(v0 + 1680);
    v33 = *(v0 + 1280);

    v29(v31, v32);
    v34 = *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure);
    *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v1;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v29(v30, v32);
    v35 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v35;
    v36 = async function pointer to OS_dispatch_group.wait()[1];
    v35;
    v37 = swift_task_alloc();
    *(v0 + 2920) = v37;
    *v37 = v0;
    v37[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v2 = *(v0 + 2352);
    v91 = *(v0 + 2200);
    v93 = *(v0 + 2824);
    v3 = *(v0 + 2056);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1944);
    v6 = *(v0 + 1584);
    v7 = *(v0 + 1576);
    v8 = *(v0 + 1528);
    v87 = *(v0 + 1592);
    v89 = *(v0 + 1512);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1224);

    v11 = *(v0 + 1216);

    swift_willThrow();

    sub_10000BE18(v8, &qword_100835E40, &qword_1006C49F8);
    (*(v6 + 8))(v87, v7);
    sub_10021EA28(v89, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();
    v12 = *(v0 + 1888);
    v13 = *(v0 + 1880);
    v14 = *(v0 + 1872);
    v15 = *(v0 + 1864);
    v16 = *(v0 + 1856);
    v17 = *(v0 + 1848);
    v18 = *(v0 + 1840);
    v19 = *(v0 + 1832);
    v20 = *(v0 + 1824);
    v21 = *(v0 + 1816);
    v38 = *(v0 + 1808);
    v39 = *(v0 + 1800);
    v40 = *(v0 + 1792);
    v41 = *(v0 + 1784);
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1768);
    v44 = *(v0 + 1760);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1744);
    v47 = *(v0 + 1736);
    v48 = *(v0 + 1728);
    v49 = *(v0 + 1720);
    v50 = *(v0 + 1712);
    v51 = *(v0 + 1704);
    v52 = *(v0 + 1696);
    v53 = *(v0 + 1672);
    v54 = *(v0 + 1648);
    v55 = *(v0 + 1640);
    v56 = *(v0 + 1632);
    v57 = *(v0 + 1624);
    v58 = *(v0 + 1600);
    v59 = *(v0 + 1592);
    v60 = *(v0 + 1568);
    v61 = *(v0 + 1560);
    v62 = *(v0 + 1552);
    v63 = *(v0 + 1544);
    v64 = *(v0 + 1536);
    v65 = *(v0 + 1528);
    v66 = *(v0 + 1520);
    v67 = *(v0 + 1512);
    v68 = *(v0 + 1504);
    v69 = *(v0 + 1480);
    v70 = *(v0 + 1472);
    v71 = *(v0 + 1464);
    v72 = *(v0 + 1456);
    v73 = *(v0 + 1448);
    v74 = *(v0 + 1440);
    v75 = *(v0 + 1432);
    v76 = *(v0 + 1424);
    v77 = *(v0 + 1416);
    v78 = *(v0 + 1408);
    v79 = *(v0 + 1400);
    v80 = *(v0 + 1392);
    v81 = *(v0 + 1384);
    v82 = *(v0 + 1376);
    v83 = *(v0 + 1368);
    v84 = *(v0 + 1344);
    v85 = *(v0 + 1336);
    v86 = *(v0 + 1328);
    v88 = *(v0 + 1320);
    v90 = *(v0 + 1312);
    v92 = *(v0 + 1304);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1001EDBC4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 2848);
  v8 = *v3;
  v6[357] = v2;

  v9 = v6[355];
  v10 = v6[354];
  if (v2)
  {
    v11 = v6[334];

    v12 = sub_1001EE28C;
  }

  else
  {

    v6[358] = a2;
    v6[359] = a1;
    v12 = sub_1001EDD50;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1001EDD50()
{
  v1 = v0[359];
  v2 = v0[358];
  v3 = Data.init(base16Encoded:)();
  if (v4 >> 60 == 15)
  {
    v5 = v0[334];
    v6 = v0[209];
    v7 = v0[208];
    v8 = v0[207];
    v9 = v0[161];

    (*(v7 + 104))(v6, enum case for DIPError.Code.failedToStoreHashIsNil(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = v0[212];
    defaultLogger()();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "(Non terminal error): Failed to store PII hash on watch with error: %@", v13, 0xCu);
      sub_10000BE18(v14, &unk_100833B50, &unk_1006D8FB0);
    }

    v42 = v0[351];
    v43 = v0[352];
    v44 = v0[339];
    v16 = v0[253];
    v17 = v0[237];
    v18 = v11;
    v19 = v0[212];
    v20 = v0[210];
    v41 = v0[232];
    v21 = v0[209];
    v22 = v0[208];
    v23 = v0[207];
    v24 = v0[162];
    v39 = v0[163];
    v40 = v0[161];

    v17(v19, v20);
    (*(v22 + 104))(v21, enum case for DIPError.Code.internalError(_:), v23);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_allocError();
    (*(v24 + 16))(v25, v39, v40);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    sub_10000B90C(v42, v43);

    v17(v41, v20);
    (*(v24 + 8))(v39, v40);

    v26 = *(*(v0[160] + 120) + 128);
    v0[364] = v26;
    v27 = async function pointer to OS_dispatch_group.wait()[1];
    v26;
    v28 = swift_task_alloc();
    v0[365] = v28;
    *v28 = v0;
    v28[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v0[361] = v4;
    v0[360] = v3;
    v29 = *(v0[321] + v0[330]);
    v30 = v3;
    v31 = v4;
    v0[107] = type metadata accessor for DIPWatch();
    v0[108] = &off_10080D850;
    v0[104] = v29;
    v32 = v29;
    v33 = swift_task_alloc();
    v0[362] = v33;
    *v33 = v0;
    v33[1] = sub_1001EE620;
    v35 = v0[334];
    v36 = v0[333];
    v37 = v0[160];

    return sub_100205870(v36, v35, v34, v30, v31);
  }
}

uint64_t sub_1001EE28C()
{
  v1 = v0[357];
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

uint64_t sub_1001EE620()
{
  v2 = *v1;
  v3 = *(*v1 + 2896);
  v7 = *v1;
  *(*v1 + 2904) = v0;

  v4 = *(v2 + 2672);

  if (v0)
  {
    v5 = sub_1001F2FE0;
  }

  else
  {
    sub_10000BB78((v2 + 832));
    v5 = sub_1001EE74C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001EE74C()
{
  v1 = *(v0 + 2888);
  v2 = *(v0 + 2880);
  v3 = *(v0 + 2816);
  v4 = *(v0 + 2808);

  sub_10000B90C(v4, v3);
  sub_10000B90C(v2, v1);
  v5 = *(*(*(v0 + 1280) + 120) + 128);
  *(v0 + 2912) = v5;
  v6 = async function pointer to OS_dispatch_group.wait()[1];
  v5;
  v7 = swift_task_alloc();
  *(v0 + 2920) = v7;
  *v7 = v0;
  v7[1] = sub_1001EE834;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001EE834()
{
  v1 = *(*v0 + 2920);
  v2 = *(*v0 + 2912);
  v4 = *v0;

  return _swift_task_switch(sub_1001EE948, 0, 0);
}

uint64_t sub_1001EE948()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1592);
  v5 = *(v0 + 1576);
  v6 = *(v0 + 1240);
  sub_10000BBC4(*(v0 + 1280) + *(v0 + 2016), *(v0 + 1536), &qword_10083D6A8, &qword_1006DB710);
  *(v0 + 816) = v5;
  *(v0 + 824) = &protocol witness table for HPKESuiteKwV1;
  v7 = sub_100032DBC((v0 + 792));
  v2(v7, v4, v5);
  v8 = swift_task_alloc();
  *(v0 + 2928) = v8;
  *v8 = v0;
  v8[1] = sub_1001EEA6C;
  v9 = *(v0 + 1536);
  v10 = *(v0 + 1280);
  v11 = *(v0 + 1256);
  v12 = *(v0 + 521);

  return sub_100212598(v9, v6, v0 + 656, v0 + 992, v3, v0 + 792, v12, v11);
}

uint64_t sub_1001EEA6C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[366];
  v10 = *v2;
  v3[367] = a1;
  v3[368] = v1;

  if (v1)
  {
    v5 = v3[257];
    sub_10000BE18(v3[192], &qword_10083D6A8, &qword_1006DB710);

    v6 = v3[153];

    v7 = v3[152];

    v8 = sub_1001EEE0C;
  }

  else
  {
    sub_10000BE18(v3[192], &qword_10083D6A8, &qword_1006DB710);
    sub_10000BB78(v3 + 99);
    v8 = sub_1001EEBD8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001EEBD8()
{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 521);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1496);
  v5 = *(v0 + 1488);
  v6 = *(v0 + 1320);
  v7 = *(v0 + 1240);
  v8 = sub_10000BA08((v0 + 992), *(v0 + 1016));
  v9 = v8[1];
  v22 = *v8;
  *(v0 + 2952) = v9;
  sub_10021E958(v3, v6, type metadata accessor for TiberiusWrappedAssessment);
  (*(v4 + 56))(v6, 0, 1, v5);
  v21 = *(v0 + 1216);
  *(v0 + 2960) = v21;

  IdentityProofingConfiguration.productIdentifier.getter();
  *(v0 + 2968) = v10;
  *(v0 + 2976) = *(v0 + 1224);
  IdentityProofingConfiguration.accountKeyIdentifier.getter();
  *(v0 + 2984) = v11;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v12 = 0xEA00000000004543;
    }

    else
    {
      v12 = 0x80000001007063E0;
    }
  }

  else if (v2)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  *(v0 + 2992) = v12;
  v13 = *(v0 + 2200);
  v14 = *(v0 + 2056);
  v15 = swift_task_alloc();
  *(v0 + 3000) = v15;
  *v15 = v0;
  v15[1] = sub_1001EF294;
  v16 = *(v0 + 2936);
  v17 = *(v0 + 1320);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1232);
  v26 = *(v0 + 1528);
  v25 = *(v0 + 1272);
  v24 = *(v0 + 1264);

  return sub_1001FD70C(v19, v22, v9, v16, v17, v13, v14, v21);
}

uint64_t sub_1001EEE0C()
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
  sub_10000BB78((v0 + 792));

  sub_10000BB78((v0 + 992));
  sub_1001F3808();
  v74 = *(v0 + 2944);
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

uint64_t sub_1001EF294()
{
  v2 = *v1;
  v3 = (*v1)[375];
  v16 = *v1;
  (*v1)[376] = v0;

  v4 = v2[374];
  v14 = v2[373];
  v5 = v2[372];
  v6 = v2[371];
  v7 = v2[370];
  v8 = v2[369];
  v9 = v2[367];
  v10 = v2[275];
  v11 = v2[257];
  sub_10000BE18(v2[165], &qword_100835E38, &qword_1006C49F0);

  if (v15)
  {
    v12 = sub_1001F3388;
  }

  else
  {
    v12 = sub_1001EF4F8;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1001EF4F8()
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
  v10 = *(v0 + 1888);
  v11 = *(v0 + 1880);
  v12 = *(v0 + 1872);
  v13 = *(v0 + 1864);
  v14 = *(v0 + 1856);
  v15 = *(v0 + 1848);
  v16 = *(v0 + 1840);
  v17 = *(v0 + 1832);
  v18 = *(v0 + 1824);
  v21 = *(v0 + 1816);
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
  sub_1001F3808();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1001EF978()
{
  v1 = v0[256];
  v2 = v0[255];
  v3 = v0[254];
  v4 = v0[244];
  v5 = v0[243];
  v6 = v0[199];
  v7 = v0[198];
  v8 = v0[197];
  v9 = v0[155];
  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  sub_1001B7154((v0 + 82));

  sub_10000BB78(v0 + 124);
  sub_1001F3808();
  v74 = v0[256];
  v10 = v0[236];
  v11 = v0[235];
  v12 = v0[234];
  v13 = v0[233];
  v14 = v0[232];
  v15 = v0[231];
  v16 = v0[230];
  v17 = v0[229];
  v18 = v0[228];
  v19 = v0[227];
  v22 = v0[226];
  v23 = v0[225];
  v24 = v0[224];
  v25 = v0[223];
  v26 = v0[222];
  v27 = v0[221];
  v28 = v0[220];
  v29 = v0[219];
  v30 = v0[218];
  v31 = v0[217];
  v32 = v0[216];
  v33 = v0[215];
  v34 = v0[214];
  v35 = v0[213];
  v36 = v0[212];
  v37 = v0[209];
  v38 = v0[206];
  v39 = v0[205];
  v40 = v0[204];
  v41 = v0[203];
  v42 = v0[200];
  v43 = v0[199];
  v44 = v0[196];
  v45 = v0[195];
  v46 = v0[194];
  v47 = v0[193];
  v48 = v0[192];
  v49 = v0[191];
  v50 = v0[190];
  v51 = v0[189];
  v52 = v0[188];
  v53 = v0[185];
  v54 = v0[184];
  v55 = v0[183];
  v56 = v0[182];
  v57 = v0[181];
  v58 = v0[180];
  v59 = v0[179];
  v60 = v0[178];
  v61 = v0[177];
  v62 = v0[176];
  v63 = v0[175];
  v64 = v0[174];
  v65 = v0[173];
  v66 = v0[172];
  v67 = v0[171];
  v68 = v0[168];
  v69 = v0[167];
  v70 = v0[166];
  v71 = v0[165];
  v72 = v0[164];
  v73 = v0[163];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001EFDC0()
{
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[199];
  v4 = v0[198];
  v5 = v0[197];
  v6 = v0[191];
  v7 = v0[155];

  sub_10000BE18(v6, &qword_100835E40, &qword_1006C49F8);
  (*(v4 + 8))(v3, v5);
  sub_1001B7154((v0 + 82));
  sub_10000BB78(v0 + 124);
  sub_1001F3808();
  v72 = v0[268];
  v8 = v0[236];
  v9 = v0[235];
  v10 = v0[234];
  v11 = v0[233];
  v12 = v0[232];
  v13 = v0[231];
  v14 = v0[230];
  v15 = v0[229];
  v16 = v0[228];
  v17 = v0[227];
  v20 = v0[226];
  v21 = v0[225];
  v22 = v0[224];
  v23 = v0[223];
  v24 = v0[222];
  v25 = v0[221];
  v26 = v0[220];
  v27 = v0[219];
  v28 = v0[218];
  v29 = v0[217];
  v30 = v0[216];
  v31 = v0[215];
  v32 = v0[214];
  v33 = v0[213];
  v34 = v0[212];
  v35 = v0[209];
  v36 = v0[206];
  v37 = v0[205];
  v38 = v0[204];
  v39 = v0[203];
  v40 = v0[200];
  v41 = v0[199];
  v42 = v0[196];
  v43 = v0[195];
  v44 = v0[194];
  v45 = v0[193];
  v46 = v0[192];
  v47 = v0[191];
  v48 = v0[190];
  v49 = v0[189];
  v50 = v0[188];
  v51 = v0[185];
  v52 = v0[184];
  v53 = v0[183];
  v54 = v0[182];
  v55 = v0[181];
  v56 = v0[180];
  v57 = v0[179];
  v58 = v0[178];
  v59 = v0[177];
  v60 = v0[176];
  v61 = v0[175];
  v62 = v0[174];
  v63 = v0[173];
  v64 = v0[172];
  v65 = v0[171];
  v66 = v0[168];
  v67 = v0[167];
  v68 = v0[166];
  v69 = v0[165];
  v70 = v0[164];
  v71 = v0[163];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001F0208()
{
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[199];
  v4 = v0[198];
  v5 = v0[197];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[155];

  sub_10021EA28(v7, type metadata accessor for TiberiusWrappedAssessment);
  sub_10000BE18(v6, &qword_100835E40, &qword_1006C49F8);
  (*(v4 + 8))(v3, v5);
  sub_1001B7154((v0 + 82));
  sub_10000BB78(v0 + 124);
  sub_1001F3808();
  v73 = v0[274];
  v9 = v0[236];
  v10 = v0[235];
  v11 = v0[234];
  v12 = v0[233];
  v13 = v0[232];
  v14 = v0[231];
  v15 = v0[230];
  v16 = v0[229];
  v17 = v0[228];
  v18 = v0[227];
  v21 = v0[226];
  v22 = v0[225];
  v23 = v0[224];
  v24 = v0[223];
  v25 = v0[222];
  v26 = v0[221];
  v27 = v0[220];
  v28 = v0[219];
  v29 = v0[218];
  v30 = v0[217];
  v31 = v0[216];
  v32 = v0[215];
  v33 = v0[214];
  v34 = v0[213];
  v35 = v0[212];
  v36 = v0[209];
  v37 = v0[206];
  v38 = v0[205];
  v39 = v0[204];
  v40 = v0[203];
  v41 = v0[200];
  v42 = v0[199];
  v43 = v0[196];
  v44 = v0[195];
  v45 = v0[194];
  v46 = v0[193];
  v47 = v0[192];
  v48 = v0[191];
  v49 = v0[190];
  v50 = v0[189];
  v51 = v0[188];
  v52 = v0[185];
  v53 = v0[184];
  v54 = v0[183];
  v55 = v0[182];
  v56 = v0[181];
  v57 = v0[180];
  v58 = v0[179];
  v59 = v0[178];
  v60 = v0[177];
  v61 = v0[176];
  v62 = v0[175];
  v63 = v0[174];
  v64 = v0[173];
  v65 = v0[172];
  v66 = v0[171];
  v67 = v0[168];
  v68 = v0[167];
  v69 = v0[166];
  v70 = v0[165];
  v71 = v0[164];
  v72 = v0[163];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001F0670()
{
  v1 = v0[275];
  v2 = v0[244];
  v3 = v0[243];
  v4 = v0[199];
  v5 = v0[198];
  v6 = v0[197];
  v7 = v0[191];
  v8 = v0[155];

  sub_10000BE18(v7, &qword_100835E40, &qword_1006C49F8);
  (*(v5 + 8))(v4, v6);
  sub_1001B7154((v0 + 82));

  sub_10000BB78(v0 + 124);
  sub_1001F3808();
  v73 = v0[281];
  v9 = v0[236];
  v10 = v0[235];
  v11 = v0[234];
  v12 = v0[233];
  v13 = v0[232];
  v14 = v0[231];
  v15 = v0[230];
  v16 = v0[229];
  v17 = v0[228];
  v18 = v0[227];
  v21 = v0[226];
  v22 = v0[225];
  v23 = v0[224];
  v24 = v0[223];
  v25 = v0[222];
  v26 = v0[221];
  v27 = v0[220];
  v28 = v0[219];
  v29 = v0[218];
  v30 = v0[217];
  v31 = v0[216];
  v32 = v0[215];
  v33 = v0[214];
  v34 = v0[213];
  v35 = v0[212];
  v36 = v0[209];
  v37 = v0[206];
  v38 = v0[205];
  v39 = v0[204];
  v40 = v0[203];
  v41 = v0[200];
  v42 = v0[199];
  v43 = v0[196];
  v44 = v0[195];
  v45 = v0[194];
  v46 = v0[193];
  v47 = v0[192];
  v48 = v0[191];
  v49 = v0[190];
  v50 = v0[189];
  v51 = v0[188];
  v52 = v0[185];
  v53 = v0[184];
  v54 = v0[183];
  v55 = v0[182];
  v56 = v0[181];
  v57 = v0[180];
  v58 = v0[179];
  v59 = v0[178];
  v60 = v0[177];
  v61 = v0[176];
  v62 = v0[175];
  v63 = v0[174];
  v64 = v0[173];
  v65 = v0[172];
  v66 = v0[171];
  v67 = v0[168];
  v68 = v0[167];
  v69 = v0[166];
  v70 = v0[165];
  v71 = v0[164];
  v72 = v0[163];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001F0AC4()
{
  v1 = v0[275];
  v2 = v0[244];
  v3 = v0[243];
  v4 = v0[199];
  v5 = v0[198];
  v6 = v0[197];
  v7 = v0[191];
  v8 = v0[155];

  sub_10000BE18(v7, &qword_100835E40, &qword_1006C49F8);
  (*(v5 + 8))(v4, v6);
  sub_1001B7154((v0 + 82));

  sub_10000BB78(v0 + 124);
  sub_1001F3808();
  v73 = v0[285];
  v9 = v0[236];
  v10 = v0[235];
  v11 = v0[234];
  v12 = v0[233];
  v13 = v0[232];
  v14 = v0[231];
  v15 = v0[230];
  v16 = v0[229];
  v17 = v0[228];
  v18 = v0[227];
  v21 = v0[226];
  v22 = v0[225];
  v23 = v0[224];
  v24 = v0[223];
  v25 = v0[222];
  v26 = v0[221];
  v27 = v0[220];
  v28 = v0[219];
  v29 = v0[218];
  v30 = v0[217];
  v31 = v0[216];
  v32 = v0[215];
  v33 = v0[214];
  v34 = v0[213];
  v35 = v0[212];
  v36 = v0[209];
  v37 = v0[206];
  v38 = v0[205];
  v39 = v0[204];
  v40 = v0[203];
  v41 = v0[200];
  v42 = v0[199];
  v43 = v0[196];
  v44 = v0[195];
  v45 = v0[194];
  v46 = v0[193];
  v47 = v0[192];
  v48 = v0[191];
  v49 = v0[190];
  v50 = v0[189];
  v51 = v0[188];
  v52 = v0[185];
  v53 = v0[184];
  v54 = v0[183];
  v55 = v0[182];
  v56 = v0[181];
  v57 = v0[180];
  v58 = v0[179];
  v59 = v0[178];
  v60 = v0[177];
  v61 = v0[176];
  v62 = v0[175];
  v63 = v0[174];
  v64 = v0[173];
  v65 = v0[172];
  v66 = v0[171];
  v67 = v0[168];
  v68 = v0[167];
  v69 = v0[166];
  v70 = v0[165];
  v71 = v0[164];
  v72 = v0[163];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001F0F18()
{
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2352);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1944);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);
  v8 = *(v0 + 1576);
  v9 = *(v0 + 1528);
  v73 = *(v0 + 1512);
  v75 = *(v0 + 2200);

  sub_10000B90C(v2, v1);

  sub_10000BE18(v9, &qword_100835E40, &qword_1006C49F8);
  (*(v7 + 8))(v6, v8);
  sub_10021EA28(v73, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();
  v76 = *(v0 + 2432);
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
  v74 = *(v0 + 1304);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001F13B0()
{
  v1 = *(v0 + 2424);
  v2 = *(v0 + 2416);
  v3 = *(v0 + 2384);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2352);
  v6 = *(v0 + 1952);
  v7 = *(v0 + 1944);
  v8 = *(v0 + 1584);
  v71 = *(v0 + 1576);
  v73 = *(v0 + 1592);
  v9 = *(v0 + 1528);
  v75 = *(v0 + 1512);
  v77 = *(v0 + 2200);

  sub_10000B90C(v2, v1);
  sub_10000B90C(v4, v3);

  sub_10000BE18(v9, &qword_100835E40, &qword_1006C49F8);
  (*(v8 + 8))(v73, v71);
  sub_10021EA28(v75, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();
  v78 = *(v0 + 2472);
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
  v72 = *(v0 + 1320);
  v74 = *(v0 + 1312);
  v76 = *(v0 + 1304);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001F185C()
{
  v1 = *(v0 + 2456);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2416);
  v4 = *(v0 + 2384);
  v5 = *(v0 + 2376);
  v69 = *(v0 + 2352);
  v71 = *(v0 + 2464);
  v6 = *(v0 + 1952);
  v7 = *(v0 + 1944);
  v8 = *(v0 + 1584);
  v73 = *(v0 + 1576);
  v75 = *(v0 + 1592);
  v9 = *(v0 + 1528);
  v77 = *(v0 + 1512);
  v79 = *(v0 + 2200);

  sub_10000B90C(v3, v2);
  sub_10000B90C(v5, v4);

  sub_10000BD94(v1, v71);

  sub_10000BE18(v9, &qword_100835E40, &qword_1006C49F8);
  (*(v8 + 8))(v75, v73);
  sub_10021EA28(v77, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();
  v80 = *(v0 + 2496);
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
  v70 = *(v0 + 1336);
  v72 = *(v0 + 1328);
  v74 = *(v0 + 1320);
  v76 = *(v0 + 1312);
  v78 = *(v0 + 1304);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001F1D24()
{
  v1 = *(v0 + 2624);
  if (*(v0 + 1256))
  {
    v24 = *(v0 + 1704);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v27, 2u);
    }

    v28 = *(v0 + 2024);
    v29 = *(v0 + 1896);
    v30 = *(v0 + 1856);
    v31 = *(v0 + 1704);
    v32 = *(v0 + 1680);
    v33 = *(v0 + 1280);

    v29(v31, v32);
    v34 = *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure);
    *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v1;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v29(v30, v32);
    v35 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v35;
    v36 = async function pointer to OS_dispatch_group.wait()[1];
    v35;
    v37 = swift_task_alloc();
    *(v0 + 2920) = v37;
    *v37 = v0;
    v37[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v2 = *(v0 + 2352);
    v91 = *(v0 + 2200);
    v93 = *(v0 + 2624);
    v3 = *(v0 + 2056);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1944);
    v6 = *(v0 + 1584);
    v7 = *(v0 + 1576);
    v8 = *(v0 + 1528);
    v87 = *(v0 + 1592);
    v89 = *(v0 + 1512);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1224);

    v11 = *(v0 + 1216);

    swift_willThrow();

    sub_10000BE18(v8, &qword_100835E40, &qword_1006C49F8);
    (*(v6 + 8))(v87, v7);
    sub_10021EA28(v89, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();
    v12 = *(v0 + 1888);
    v13 = *(v0 + 1880);
    v14 = *(v0 + 1872);
    v15 = *(v0 + 1864);
    v16 = *(v0 + 1856);
    v17 = *(v0 + 1848);
    v18 = *(v0 + 1840);
    v19 = *(v0 + 1832);
    v20 = *(v0 + 1824);
    v21 = *(v0 + 1816);
    v38 = *(v0 + 1808);
    v39 = *(v0 + 1800);
    v40 = *(v0 + 1792);
    v41 = *(v0 + 1784);
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1768);
    v44 = *(v0 + 1760);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1744);
    v47 = *(v0 + 1736);
    v48 = *(v0 + 1728);
    v49 = *(v0 + 1720);
    v50 = *(v0 + 1712);
    v51 = *(v0 + 1704);
    v52 = *(v0 + 1696);
    v53 = *(v0 + 1672);
    v54 = *(v0 + 1648);
    v55 = *(v0 + 1640);
    v56 = *(v0 + 1632);
    v57 = *(v0 + 1624);
    v58 = *(v0 + 1600);
    v59 = *(v0 + 1592);
    v60 = *(v0 + 1568);
    v61 = *(v0 + 1560);
    v62 = *(v0 + 1552);
    v63 = *(v0 + 1544);
    v64 = *(v0 + 1536);
    v65 = *(v0 + 1528);
    v66 = *(v0 + 1520);
    v67 = *(v0 + 1512);
    v68 = *(v0 + 1504);
    v69 = *(v0 + 1480);
    v70 = *(v0 + 1472);
    v71 = *(v0 + 1464);
    v72 = *(v0 + 1456);
    v73 = *(v0 + 1448);
    v74 = *(v0 + 1440);
    v75 = *(v0 + 1432);
    v76 = *(v0 + 1424);
    v77 = *(v0 + 1416);
    v78 = *(v0 + 1408);
    v79 = *(v0 + 1400);
    v80 = *(v0 + 1392);
    v81 = *(v0 + 1384);
    v82 = *(v0 + 1376);
    v83 = *(v0 + 1368);
    v84 = *(v0 + 1344);
    v85 = *(v0 + 1336);
    v86 = *(v0 + 1328);
    v88 = *(v0 + 1320);
    v90 = *(v0 + 1312);
    v92 = *(v0 + 1304);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1001F2360()
{
  v1 = *(v0 + 2680);
  if (*(v0 + 1256))
  {
    v24 = *(v0 + 1704);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v27, 2u);
    }

    v28 = *(v0 + 2024);
    v29 = *(v0 + 1896);
    v30 = *(v0 + 1856);
    v31 = *(v0 + 1704);
    v32 = *(v0 + 1680);
    v33 = *(v0 + 1280);

    v29(v31, v32);
    v34 = *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure);
    *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v1;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v29(v30, v32);
    v35 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v35;
    v36 = async function pointer to OS_dispatch_group.wait()[1];
    v35;
    v37 = swift_task_alloc();
    *(v0 + 2920) = v37;
    *v37 = v0;
    v37[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v2 = *(v0 + 2352);
    v91 = *(v0 + 2200);
    v93 = *(v0 + 2680);
    v3 = *(v0 + 2056);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1944);
    v6 = *(v0 + 1584);
    v7 = *(v0 + 1576);
    v8 = *(v0 + 1528);
    v87 = *(v0 + 1592);
    v89 = *(v0 + 1512);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1224);

    v11 = *(v0 + 1216);

    swift_willThrow();

    sub_10000BE18(v8, &qword_100835E40, &qword_1006C49F8);
    (*(v6 + 8))(v87, v7);
    sub_10021EA28(v89, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();
    v12 = *(v0 + 1888);
    v13 = *(v0 + 1880);
    v14 = *(v0 + 1872);
    v15 = *(v0 + 1864);
    v16 = *(v0 + 1856);
    v17 = *(v0 + 1848);
    v18 = *(v0 + 1840);
    v19 = *(v0 + 1832);
    v20 = *(v0 + 1824);
    v21 = *(v0 + 1816);
    v38 = *(v0 + 1808);
    v39 = *(v0 + 1800);
    v40 = *(v0 + 1792);
    v41 = *(v0 + 1784);
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1768);
    v44 = *(v0 + 1760);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1744);
    v47 = *(v0 + 1736);
    v48 = *(v0 + 1728);
    v49 = *(v0 + 1720);
    v50 = *(v0 + 1712);
    v51 = *(v0 + 1704);
    v52 = *(v0 + 1696);
    v53 = *(v0 + 1672);
    v54 = *(v0 + 1648);
    v55 = *(v0 + 1640);
    v56 = *(v0 + 1632);
    v57 = *(v0 + 1624);
    v58 = *(v0 + 1600);
    v59 = *(v0 + 1592);
    v60 = *(v0 + 1568);
    v61 = *(v0 + 1560);
    v62 = *(v0 + 1552);
    v63 = *(v0 + 1544);
    v64 = *(v0 + 1536);
    v65 = *(v0 + 1528);
    v66 = *(v0 + 1520);
    v67 = *(v0 + 1512);
    v68 = *(v0 + 1504);
    v69 = *(v0 + 1480);
    v70 = *(v0 + 1472);
    v71 = *(v0 + 1464);
    v72 = *(v0 + 1456);
    v73 = *(v0 + 1448);
    v74 = *(v0 + 1440);
    v75 = *(v0 + 1432);
    v76 = *(v0 + 1424);
    v77 = *(v0 + 1416);
    v78 = *(v0 + 1408);
    v79 = *(v0 + 1400);
    v80 = *(v0 + 1392);
    v81 = *(v0 + 1384);
    v82 = *(v0 + 1376);
    v83 = *(v0 + 1368);
    v84 = *(v0 + 1344);
    v85 = *(v0 + 1336);
    v86 = *(v0 + 1328);
    v88 = *(v0 + 1320);
    v90 = *(v0 + 1312);
    v92 = *(v0 + 1304);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1001F299C()
{
  v1 = *(v0 + 2760);
  if (*(v0 + 1256))
  {
    v24 = *(v0 + 1704);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v27, 2u);
    }

    v28 = *(v0 + 2024);
    v29 = *(v0 + 1896);
    v30 = *(v0 + 1856);
    v31 = *(v0 + 1704);
    v32 = *(v0 + 1680);
    v33 = *(v0 + 1280);

    v29(v31, v32);
    v34 = *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure);
    *(v33 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v1;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v29(v30, v32);
    v35 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v35;
    v36 = async function pointer to OS_dispatch_group.wait()[1];
    v35;
    v37 = swift_task_alloc();
    *(v0 + 2920) = v37;
    *v37 = v0;
    v37[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v2 = *(v0 + 2352);
    v91 = *(v0 + 2200);
    v93 = *(v0 + 2760);
    v3 = *(v0 + 2056);
    v4 = *(v0 + 1952);
    v5 = *(v0 + 1944);
    v6 = *(v0 + 1584);
    v7 = *(v0 + 1576);
    v8 = *(v0 + 1528);
    v87 = *(v0 + 1592);
    v89 = *(v0 + 1512);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1224);

    v11 = *(v0 + 1216);

    swift_willThrow();

    sub_10000BE18(v8, &qword_100835E40, &qword_1006C49F8);
    (*(v6 + 8))(v87, v7);
    sub_10021EA28(v89, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();
    v12 = *(v0 + 1888);
    v13 = *(v0 + 1880);
    v14 = *(v0 + 1872);
    v15 = *(v0 + 1864);
    v16 = *(v0 + 1856);
    v17 = *(v0 + 1848);
    v18 = *(v0 + 1840);
    v19 = *(v0 + 1832);
    v20 = *(v0 + 1824);
    v21 = *(v0 + 1816);
    v38 = *(v0 + 1808);
    v39 = *(v0 + 1800);
    v40 = *(v0 + 1792);
    v41 = *(v0 + 1784);
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1768);
    v44 = *(v0 + 1760);
    v45 = *(v0 + 1752);
    v46 = *(v0 + 1744);
    v47 = *(v0 + 1736);
    v48 = *(v0 + 1728);
    v49 = *(v0 + 1720);
    v50 = *(v0 + 1712);
    v51 = *(v0 + 1704);
    v52 = *(v0 + 1696);
    v53 = *(v0 + 1672);
    v54 = *(v0 + 1648);
    v55 = *(v0 + 1640);
    v56 = *(v0 + 1632);
    v57 = *(v0 + 1624);
    v58 = *(v0 + 1600);
    v59 = *(v0 + 1592);
    v60 = *(v0 + 1568);
    v61 = *(v0 + 1560);
    v62 = *(v0 + 1552);
    v63 = *(v0 + 1544);
    v64 = *(v0 + 1536);
    v65 = *(v0 + 1528);
    v66 = *(v0 + 1520);
    v67 = *(v0 + 1512);
    v68 = *(v0 + 1504);
    v69 = *(v0 + 1480);
    v70 = *(v0 + 1472);
    v71 = *(v0 + 1464);
    v72 = *(v0 + 1456);
    v73 = *(v0 + 1448);
    v74 = *(v0 + 1440);
    v75 = *(v0 + 1432);
    v76 = *(v0 + 1424);
    v77 = *(v0 + 1416);
    v78 = *(v0 + 1408);
    v79 = *(v0 + 1400);
    v80 = *(v0 + 1392);
    v81 = *(v0 + 1384);
    v82 = *(v0 + 1376);
    v83 = *(v0 + 1368);
    v84 = *(v0 + 1344);
    v85 = *(v0 + 1336);
    v86 = *(v0 + 1328);
    v88 = *(v0 + 1320);
    v90 = *(v0 + 1312);
    v92 = *(v0 + 1304);

    v22 = *(v0 + 8);

    return v22();
  }
}