uint64_t sub_1004BF22C()
{
  v42 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);

  defaultLogger()();
  v5 = v3;
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  if (v9)
  {
    v37 = *(v0 + 160);
    v40 = *(v0 + 208);
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = [v6 credentialKeyBlob];
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v10;
    v18 = v17;

    v19 = Data.base64EncodedString(options:)(0);
    v38 = v11;
    sub_10000B90C(v16, v18);
    v20 = sub_100141FE4(v19._countAndFlagsBits, v19._object, &v41);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v6 credentialBAACertificate];
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v22, v24);
    v26 = sub_100141FE4(v25._countAndFlagsBits, v25._object, &v41);

    *(v14 + 14) = v26;
    *(v14 + 22) = 2080;
    v27 = [v37 deviceID];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_100141FE4(v28, v30, &v41);

    *(v14 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v7, v8, "Successfully generated prearm trust key: %s and certificate: %s on phone for watch with pairingID: %s", v14, 0x20u);
    swift_arrayDestroy();

    v39(v38, v40);
  }

  else
  {

    v10(v11, v13);
  }

  v33 = *(v0 + 224);
  v32 = *(v0 + 232);
  v34 = *(v0 + 200);
  **(v0 + 152) = v6;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1004BF54C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  swift_willThrow();

  (*(v7 + 104))(v6, enum case for DIPError.Code.unableToGeneratePrearmTrustKeyOnPhone(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004BF704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1004BF728, 0, 0);
}

uint64_t sub_1004BF728()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004BF850;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100845E58, &qword_1006E63D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100814198;
  v0[14] = v3;
  [v2 establishPrearmTrustV2:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BF850()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1004CF428;
  }

  else
  {
    v3 = sub_1004CF3B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004BF960(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004BFA20, 0, 0);
}

uint64_t sub_1004BFA20()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004BFB3C;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_100814170;
  v0[14] = v2;
  [v1 getCASDCertificateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004BFB3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1004BFCBC;
  }

  else
  {
    v3 = sub_1004BFC4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004BFC4C()
{
  v1 = *(v0 + 192);
  **(v0 + 160) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004BFCBC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  swift_willThrow();
  (*(v4 + 104))(v2, enum case for DIPError.Code.unableToGetCASDCertificateWithWatch(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004BFE48(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004BFF08, 0, 0);
}

uint64_t sub_1004BFF08()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004C0024;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_100814148;
  v0[14] = v2;
  [v1 pairedWatchSEIDWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C0024()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1004C01A4;
  }

  else
  {
    v3 = sub_1004C0134;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C0134()
{
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  *v2 = v0[18];
  v2[1] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004C01A4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  swift_willThrow();
  (*(v4 + 104))(v2, enum case for DIPError.Code.unableToGetSEIDWithWatch(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004C0330(uint64_t a1, uint64_t a2)
{
  v3[90] = v2;
  v3[89] = a2;
  v3[88] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[91] = v4;
  v5 = *(v4 - 8);
  v3[92] = v5;
  v6 = *(v5 + 64) + 15;
  v3[93] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[94] = v7;
  v8 = *(v7 - 8);
  v3[95] = v8;
  v9 = *(v8 + 64) + 15;
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();

  return _swift_task_switch(sub_1004C0478, 0, 0);
}

uint64_t sub_1004C0478()
{
  v1 = *(*(v0 + 720) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v2 = swift_task_alloc();
  *(v0 + 800) = v2;
  *v2 = v0;
  v2[1] = sub_1004C0514;

  return sub_1006738C8();
}

uint64_t sub_1004C0514(uint64_t a1)
{
  v2 = *(*v1 + 800);
  v4 = *v1;
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_1004C0614, 0, 0);
}

uint64_t sub_1004C0614()
{
  v30 = v0;
  v1 = v0[101];
  if (v1)
  {
    v2 = v0[99];
    v0[102] = *(v0[90] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore);
    defaultLogger()();
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[99];
    v8 = v0[95];
    v9 = v0[94];
    if (v6)
    {
      v28 = v0[99];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      v12 = [v3 deviceID];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100141FE4(v13, v15, &v29);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Trying to prearm the watch with pairingID: %s", v10, 0xCu);
      sub_10000BB78(v11);

      v17 = *(v8 + 8);
      v17(v28, v9);
    }

    else
    {

      v17 = *(v8 + 8);
      v17(v7, v9);
    }

    v0[103] = v17;
    v25 = swift_task_alloc();
    v0[104] = v25;
    *v25 = v0;
    v25[1] = sub_1004C09BC;
    v26 = v0[89];
    v27 = v0[88];

    return sub_1004C9820((v0 + 23), v27, v26);
  }

  else
  {
    (*(v0[92] + 104))(v0[93], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[91]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v18 = v0[99];
    v19 = v0[98];
    v20 = v0[97];
    v21 = v0[96];
    v22 = v0[93];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1004C09BC()
{
  v1 = *v0;
  v2 = *(*v0 + 832);
  v5 = *v0;

  *(v1 + 840) = *(v1 + 184);
  *(v1 + 856) = *(v1 + 200);
  *(v1 + 872) = *(v1 + 216);
  v3 = *(v1 + 232);
  *(v1 + 70) = *(v1 + 234);
  *(v1 + 68) = v3;

  return _swift_task_switch(sub_1004C0AEC, 0, 0);
}

uint64_t sub_1004C0AEC()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 68);
    v3 = v0 + 72;
    v4 = *(v0 + 70);
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 784);
    v8 = *(v0 + 200);
    *(v0 + 72) = *(v0 + 184);
    *(v0 + 88) = v8;
    *(v0 + 104) = *(v0 + 216);
    *(v0 + 112) = v1;
    *(v0 + 122) = *(v0 + 234);
    *(v0 + 120) = *(v0 + 232);
    v68 = *(v0 + 840);
    v70 = *(v0 + 856);
    defaultLogger()();
    *(v0 + 240) = v68;
    *(v0 + 256) = v70;
    *(v0 + 272) = v6;
    *(v0 + 280) = v5;
    *(v0 + 290) = v4;
    *(v0 + 288) = v2;
    sub_1004CDE10(v0 + 240, v0 + 296);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 33554688;
      *(v11 + 4) = *(v0 + 120);
      sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
      _os_log_impl(&_mh_execute_header, v9, v10, "existing prearmtrust version = %hd", v11, 6u);
    }

    else
    {
      sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
    }

    v27 = *(v0 + 824);
    v28 = *(v0 + 784);
    v29 = *(v0 + 760);
    v30 = *(v0 + 752);

    *(v0 + 888) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v28, v30);
    v31 = *(v0 + 120);
    if (v31 == 1)
    {
      v32 = *(v0 + 824);
      v33 = *(v0 + 776);
      v34 = *(v0 + 752);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v3;
      Logger.sensitive(_:)();

      v32(v33, v34);
      v35 = swift_task_alloc();
      *(v0 + 896) = v35;
      *v35 = v0;
      v35[1] = sub_1004C11E0;
      v36 = *(v0 + 720);

      return sub_1004C404C(v0 + 128, v3);
    }

    else
    {
      v37 = *(v0 + 68);
      v38 = *(v0 + 70);
      v39 = *(v0 + 880);
      v40 = *(v0 + 872);
      v41 = *(v0 + 768);
      v71 = *(v0 + 840);
      v63 = *(v0 + 856);
      defaultLogger()();
      *(v0 + 352) = v71;
      *(v0 + 368) = v63;
      *(v0 + 384) = v40;
      *(v0 + 392) = v39;
      *(v0 + 402) = v38;
      *(v0 + 400) = v37;
      sub_1004CDE10(v0 + 352, v0 + 408);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      v69 = v31;
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 33554688;
        *(v44 + 4) = v31;
        sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
        _os_log_impl(&_mh_execute_header, v42, v43, "using existing prearmtrust version = %hd", v44, 6u);
      }

      else
      {
        sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
      }

      v45 = v42;
      v46 = *(v0 + 68);
      v47 = *(v0 + 70);
      v48 = *(v0 + 880);
      v49 = *(v0 + 872);
      v50 = *(v0 + 824);
      v51 = *(v0 + 768);
      v52 = *(v0 + 752);
      v64 = *(v0 + 856);
      v66 = *(v0 + 840);

      v50(v51, v52);
      LOBYTE(v51) = *(v0 + 122);
      v53 = *(v0 + 104);
      v54 = *(v0 + 112);
      *(v0 + 464) = v66;
      *(v0 + 480) = v64;
      *(v0 + 496) = v49;
      *(v0 + 504) = v48;
      *(v0 + 514) = v47;
      *(v0 + 512) = v46;
      v65 = *(v0 + 72);
      v67 = *(v0 + 88);
      sub_1004CDE10(v0 + 464, v0 + 520);
      v55 = *(v0 + 808);
      *(v0 + 576) = v65;
      *(v0 + 592) = v67;
      *(v0 + 608) = v53;
      *(v0 + 616) = v54;
      *(v0 + 624) = v69;
      *(v0 + 626) = v51;
      v56 = *(v0 + 592);
      *(v0 + 16) = *(v0 + 576);
      *(v0 + 32) = v56;
      *(v0 + 48) = *(v0 + 608);
      *(v0 + 63) = *(v0 + 623);
      v57 = swift_allocObject();
      *(v0 + 912) = v57;
      *(v57 + 16) = v55;
      v58 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
      v59 = v55;
      v60 = swift_task_alloc();
      *(v0 + 920) = v60;
      v61 = sub_10001F8D4(0, &qword_100845E18, DCCredentialNonce_ptr);
      *v60 = v0;
      v60[1] = sub_1004C14A4;
      v62.n128_u64[0] = 30.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 688, &unk_1006E6328, v57, v61, v62);
    }
  }

  else
  {
    v12 = *(v0 + 808);
    v13 = *(v0 + 744);
    v14 = *(v0 + 736);
    v15 = *(v0 + 728);
    v16 = *(v0 + 712);
    v17 = *(v0 + 704);
    _StringGuts.grow(_:)(88);
    v18._countAndFlagsBits = 0xD000000000000056;
    v18._object = 0x800000010071AE60;
    String.append(_:)(v18);
    v19._countAndFlagsBits = v17;
    v19._object = v16;
    String.append(_:)(v19);
    (*(v14 + 104))(v13, enum case for DIPError.Code.missingWatchPrearmTrustWhenPhonePrearming(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v20 = *(v0 + 792);
    v21 = *(v0 + 784);
    v22 = *(v0 + 776);
    v23 = *(v0 + 768);
    v24 = *(v0 + 744);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1004C11E0()
{
  v2 = *(*v1 + 896);
  v5 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v3 = sub_1004C1B80;
  }

  else
  {
    v3 = sub_1004C12F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C12F4()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 824);
  v3 = *(v0 + 776);
  v4 = *(v0 + 752);
  defaultLogger()();
  *(swift_task_alloc() + 16) = v0 + 128;
  Logger.sensitive(_:)();

  v2(v3, v4);
  v5 = *(v0 + 178);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v0 + 808);
  v10 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v10;
  *(v0 + 608) = v7;
  *(v0 + 616) = v8;
  *(v0 + 624) = v6;
  *(v0 + 626) = v5;
  v11 = *(v0 + 592);
  *(v0 + 16) = *(v0 + 576);
  *(v0 + 32) = v11;
  *(v0 + 48) = *(v0 + 608);
  *(v0 + 63) = *(v0 + 623);
  v12 = swift_allocObject();
  *(v0 + 912) = v12;
  *(v12 + 16) = v9;
  v13 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v14 = v9;
  v15 = swift_task_alloc();
  *(v0 + 920) = v15;
  v16 = sub_10001F8D4(0, &qword_100845E18, DCCredentialNonce_ptr);
  *v15 = v0;
  v15[1] = sub_1004C14A4;
  v17.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 688, &unk_1006E6328, v12, v16, v17);
}

uint64_t sub_1004C14A4()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;
  *(*v1 + 928) = v0;

  v5 = *(v2 + 912);

  if (v0)
  {
    v6 = sub_1004C1D68;
  }

  else
  {
    v6 = sub_1004C15D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004C15D8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 688);
  *(v0 + 936) = v5;
  v6 = swift_allocObject();
  v7 = *(v0 + 32);
  *(v6 + 40) = *(v0 + 16);
  *(v0 + 944) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v5;
  *(v6 + 56) = v7;
  *(v6 + 72) = *(v0 + 48);
  *(v6 + 87) = *(v0 + 63);
  *(v6 + 96) = v4;
  *(v6 + 104) = v3;
  v8 = v2;
  v9 = v1;
  v10 = v5;
  sub_1004CDE10(v0 + 576, v0 + 632);
  v11 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];

  v12 = swift_task_alloc();
  *(v0 + 952) = v12;
  v13 = sub_10001F8D4(0, &qword_100845E20, DCCredentialAuthorizationToken_ptr);
  *v12 = v0;
  v12[1] = sub_1004C1738;
  v14.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 696, &unk_1006E6338, v6, v13, v14);
}

uint64_t sub_1004C1738()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;
  *(*v1 + 960) = v0;

  v5 = *(v2 + 944);

  if (v0)
  {
    v6 = sub_1004C1E34;
  }

  else
  {
    v6 = sub_1004C186C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004C186C()
{
  v1 = v0[101];
  v2 = v0[87];
  v0[121] = v2;
  v3 = swift_allocObject();
  v0[122] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v5 = v1;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[123] = v7;
  *v7 = v0;
  v7[1] = sub_1004C1964;
  v8.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v7, &unk_1006E6348, v3, &type metadata for () + 8, v8);
}

uint64_t sub_1004C1964()
{
  v2 = *v1;
  v3 = *(*v1 + 984);
  v4 = *v1;
  *(*v1 + 992) = v0;

  v5 = *(v2 + 976);

  if (v0)
  {
    v6 = sub_1004C1F08;
  }

  else
  {
    v6 = sub_1004C1A98;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004C1A98()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 808);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 744);

  sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
  sub_1004CDFC0(v0 + 576);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004C1B80()
{
  v1 = v0[113];
  v2 = v0[101];
  (*(v0[92] + 104))(v0[93], enum case for DIPError.Code.watchPrearmTrustMigrationError(_:), v0[91]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BE18((v0 + 23), &qword_100845E10, &qword_1006DCDA8);

  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[93];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004C1D68()
{
  sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
  sub_1004CDFC0(v0 + 576);
  v1 = *(v0 + 928);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 744);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004C1E34()
{
  v1 = *(v0 + 808);

  sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
  sub_1004CDFC0(v0 + 576);
  v2 = *(v0 + 960);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 744);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004C1F08()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 808);

  sub_10000BE18(v0 + 184, &qword_100845E10, &qword_1006DCDA8);
  sub_1004CDFC0(v0 + 576);
  v3 = *(v0 + 992);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v8 = *(v0 + 744);

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1004C1FE4(uint64_t *a1)
{
  _StringGuts.grow(_:)(26);

  v2 = *a1;
  v3 = a1[1];
  v4 = Data.base16EncodedString()();
  String.append(_:)(v4);

  return 0xD000000000000018;
}

uint64_t sub_1004C2064(uint64_t *a1)
{
  v6[7] = 0;
  v6[8] = 0xE000000000000000;
  sub_1004CDE10(a1, v6);
  _StringGuts.grow(_:)(25);

  v6[0] = 0xD000000000000017;
  v6[1] = 0x800000010071AEF0;
  v2 = *a1;
  v3 = a1[1];
  v4 = Data.base16EncodedString()();
  String.append(_:)(v4);

  sub_1004CDFC0(a1);
  return v6[0];
}

uint64_t sub_1004C20FC(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004C2224, 0, 0);
}

uint64_t sub_1004C2224()
{
  v24 = v0;
  v1 = v0[27];
  v2 = v0[20];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  if (v6)
  {
    v10 = v0[20];
    v22 = v0[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = [v10 deviceID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v23);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Trying to generate nonce in watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);

    v18 = *(v8 + 8);
    v18(v22, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v0[28] = v18;
  v19 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004C2498;
  v20 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100845E30, &qword_1006E6358);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100813FE0;
  v0[14] = v20;
  [v19 nonceForAuthorizationTokenWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C2498()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1004C2840;
  }

  else
  {
    v3 = sub_1004C25A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C25A8()
{
  v37 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 192);
  if (v8)
  {
    v32 = *(v0 + 160);
    v35 = *(v0 + 192);
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = [v5 credentialNonce];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v9;
    v17 = v16;

    v18 = Data.description.getter();
    v33 = v10;
    v20 = v19;
    sub_10000B90C(v15, v17);
    v21 = sub_100141FE4(v18, v20, &v36);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    v22 = [v32 deviceID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100141FE4(v23, v25, &v36);

    *(v13 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully generated nonce in watch: %s with pairingID: %s", v13, 0x16u);
    swift_arrayDestroy();

    v34(v33, v35);
  }

  else
  {

    v9(v10, v12);
  }

  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 184);
  **(v0 + 152) = v5;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1004C2840()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  swift_willThrow();
  (*(v5 + 104))(v4, enum case for DIPError.Code.unableToGenerateNonceOnWatch(_:), v6);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004C29EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v7[26] = a1;
  v9 = type metadata accessor for DIPError.Code();
  v7[33] = v9;
  v10 = *(v9 - 8);
  v7[34] = v10;
  v11 = *(v10 + 64) + 15;
  v7[35] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v7[36] = v12;
  v13 = *(v12 - 8);
  v7[37] = v13;
  v14 = *(v13 + 64) + 15;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  sub_1004CDE10(a5, (v7 + 18));

  return _swift_task_switch(sub_1004C2B30, 0, 0);
}

uint64_t sub_1004C2B30()
{
  v32 = v0;
  v1 = v0[39];
  v2 = v0[27];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[39];
  v9 = v0[36];
  v8 = v0[37];
  if (v6)
  {
    v10 = v0[27];
    v30 = v0[39];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    v13 = [v10 deviceID];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v31);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Trying to generate credential authorization token in phone for watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);

    v18 = *(v8 + 8);
    v18(v30, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v0[40] = v18;
  v20 = v0[31];
  v19 = v0[32];
  v22 = v0[29];
  v21 = v0[30];
  v23 = v0[28];
  v24 = *v21;
  v25 = v21[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[41] = isa;
  v27 = String._bridgeToObjectiveC()();
  v0[42] = v27;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_1004C2DDC;
  v28 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100845E28, &qword_1006E6350);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100813FB8;
  v0[14] = v28;
  [v23 generatePhoneTokenWithNonce:v22 keyBlob:isa pairingID:v27 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C2DDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_1004C31A0;
  }

  else
  {
    v3 = sub_1004C2EEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C2EEC()
{
  v41 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);

  defaultLogger()();
  v5 = v3;
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 320);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v13 = *(v0 + 288);
  v14 = *(v0 + 240);
  if (v9)
  {
    v35 = *(v0 + 216);
    v39 = *(v0 + 288);
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = [v6 credentialAuthorizationToken];
    v37 = v10;
    v38 = v14;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = Data.description.getter();
    v36 = v11;
    v22 = v21;
    sub_10000B90C(v17, v19);
    v23 = sub_100141FE4(v20, v22, &v40);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    v24 = [v35 deviceID];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_100141FE4(v25, v27, &v40);

    *(v15 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v7, v8, "Successfully generated credential authorization token in phone: %s for watch with pairingID: %s", v15, 0x16u);
    swift_arrayDestroy();

    v37(v36, v39);
    v29 = v38;
  }

  else
  {

    v10(v11, v13);
    v29 = v14;
  }

  sub_1004CDFC0(v29);
  v31 = *(v0 + 304);
  v30 = *(v0 + 312);
  v32 = *(v0 + 280);
  **(v0 + 208) = v6;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1004C31A0()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[39];
  v11 = v0[38];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v0[30];
  swift_willThrow();

  (*(v5 + 104))(v6, enum case for DIPError.Code.unableToGenerateAuthorizationTokenOnPhone(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_1004CDFC0(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004C3368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v4 = type metadata accessor for Logger();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_1004C3434, 0, 0);
}

uint64_t sub_1004C3434()
{
  v31 = v0;
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  if (v8)
  {
    v29 = v0[23];
    v12 = v0[18];
    v13 = v0[19];
    v28 = v0[20];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v12;
    *v15 = v12;
    *(v14 + 12) = 2080;
    v17 = v12;
    v18 = [v13 deviceID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_100141FE4(v19, v21, &v30);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Trying to prearm watch with authorization token: %@ with pairingID: %s", v14, 0x16u);
    sub_10000BE18(v15, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v16);

    v23 = *(v10 + 8);
    v23(v29, v28);
  }

  else
  {

    v23 = *(v10 + 8);
    v23(v9, v11);
  }

  v0[24] = v23;
  v25 = v0[18];
  v24 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1004C3700;
  v26 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100813F90;
  v0[14] = v26;
  [v24 prearmCredentialWithAuthorizationToken:v25 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C3700()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1004C3A50;
  }

  else
  {
    v3 = sub_1004C3810;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C3810()
{
  v32 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  defaultLogger()();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[20];
  if (v8)
  {
    v30 = v0[24];
    v13 = v0[18];
    v14 = v0[19];
    v29 = v0[22];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v12;
    v17 = swift_slowAlloc();
    v31 = v17;
    *v15 = 138412546;
    *(v15 + 4) = v13;
    *v16 = v13;
    *(v15 + 12) = 2080;
    v18 = v13;
    v19 = [v14 deviceID];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_100141FE4(v20, v22, &v31);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully prearmed watch with token: %@ with pairingID: %s", v15, 0x16u);
    sub_10000BE18(v16, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v17);

    v30(v29, v28);
  }

  else
  {

    v9(v11, v12);
  }

  v25 = v0[22];
  v24 = v0[23];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1004C3A50()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

void sub_1004C3AD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10057DC18(a2, a3);
  if (!v4)
  {
    v7 = v6;
    if (v6)
    {
      v8 = [v6 keyBlob];
      if (v8)
      {
        v9 = v8;
        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = [v7 baaCertificate];
        if (v13)
        {
          v14 = v13;
          v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = [v7 pairingID];
          if (v18)
          {
            v19 = v18;
            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v20;

            LOWORD(v19) = [v7 version];
            v21 = [v7 requiresDeletion];

            swift_beginAccess();
            v23 = *(a4 + 64);
            v22 = a4 + 64;
            v24 = *(v22 - 48);
            v25 = *(v22 - 40);
            v26 = *(v22 - 32);
            v27 = *(v22 - 24);
            v28 = *(v22 - 16);
            v29 = *(v22 - 8);
            v30 = v23 | (*(v22 + 2) << 16);
            *(v22 - 48) = v10;
            *(v22 - 40) = v12;
            *(v22 - 32) = v15;
            *(v22 - 24) = v17;
            *(v22 - 16) = v32;
            *(v22 - 8) = v31;
            *v22 = v19;
            *(v22 + 2) = v21 != 0;
            sub_1004CE398(v24, v25, v26, v27, v28, v29);
            return;
          }

          sub_10000B90C(v15, v17);
        }

        sub_10000B90C(v10, v12);
      }
    }
  }
}

uint64_t sub_1004C3C74()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1004C3D34, 0, 0);
}

uint64_t sub_1004C3D34()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to delete global auth acl in watch", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v0[6] = *(*(v8 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService) + OBJC_IVAR____TtC8coreidvd8DIPWatch_currentSession);

  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_1004C3E98;

  return sub_100672D6C(30.0);
}

uint64_t sub_1004C3E98()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004C3FE0, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1004C3FE0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1004C404C(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Logger();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1004C4110, 0, 0);
}

uint64_t sub_1004C4110()
{
  v22 = v0;
  v1 = v0[21];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x800000010071AE00, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s called", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[17];
  v11 = *(v0[18] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_biometricStore);
  v12 = swift_allocObject();
  v0[22] = v12;
  *(v12 + 16) = v11;
  v13 = *v10;
  v14 = *(v10 + 16);
  v15 = *(v10 + 32);
  *(v12 + 71) = *(v10 + 47);
  *(v12 + 56) = v15;
  *(v12 + 40) = v14;
  *(v12 + 24) = v13;
  v16 = v11;
  sub_1004CDE10(v10, (v0 + 9));
  v17 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v18 = swift_task_alloc();
  v0[23] = v18;
  *v18 = v0;
  v18[1] = sub_1004C4330;
  v19.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 2, &unk_1006E6308, v12, &type metadata for PrearmTrustWrapper, v19);
}

uint64_t sub_1004C4330()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1004C44CC;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1004C444C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004C444C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v2 + 47) = *(v0 + 63);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004C44CC()
{
  v2 = v0[21];
  v1 = v0[22];

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_1004C4538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004C45FC, 0, 0);
}

uint64_t sub_1004C45FC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = *v1;
  v4 = v1[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[33] = isa;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_1004C4734;
  v6 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_100813EA0;
  v0[14] = v6;
  [v2 migratePrearmTrustBlob:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C4734()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_1004C4D5C;
  }

  else
  {
    v3 = sub_1004C4844;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C4844()
{
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[26];
  v0[35] = v2;
  v0[36] = v3;

  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[37] = v4;
  v5 = v4;
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = swift_allocObject();
  v0[38] = v10;
  *(v10 + 16) = v5;
  v11 = *v9;
  v12 = *(v9 + 16);
  v13 = *(v9 + 32);
  *(v10 + 71) = *(v9 + 47);
  *(v10 + 56) = v13;
  *(v10 + 40) = v12;
  *(v10 + 24) = v11;
  *(v10 + 80) = v2;
  *(v10 + 88) = v3;

  sub_1004CDE10(v9, (v0 + 18));
  sub_10000B8B8(v2, v3);
  v14 = *(v5 + 16);
  v15 = swift_allocObject();
  v0[39] = v15;
  *(v15 + 16) = sub_1004CDEC4;
  *(v15 + 24) = v10;
  (*(v7 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v8);
  v16 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v17 = swift_task_alloc();
  v0[40] = v17;
  *v17 = v0;
  v17[1] = sub_1004C4A7C;
  v18 = v0[32];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v18, sub_100306A5C, v15, &type metadata for () + 8);
}

uint64_t sub_1004C4A7C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  v2[41] = v0;

  v5 = v2[39];
  if (v0)
  {
    (*(v2[31] + 8))(v2[32], v2[30]);

    v6 = sub_1004C4CD0;
  }

  else
  {
    v7 = v2[38];
    v9 = v2[31];
    v8 = v2[32];
    v10 = v2[30];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1004C4C08;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004C4C08()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[27];

  v7 = *(v5 + 16);
  v8 = *(v5 + 40);
  v9 = *(v5 + 50);
  v10 = *(v5 + 24);
  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v7;
  *(v6 + 24) = v10;
  *(v6 + 40) = v8;
  *(v6 + 48) = 2;
  *(v6 + 50) = v9;
  sub_10000B8B8(v7, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004C4CD0()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];

  sub_10000B90C(v4, v3);
  v5 = v0[41];
  v6 = v0[32];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004C4D5C()
{
  v1 = v0[33];
  v2 = v0[34];
  swift_willThrow();

  v3 = v0[34];
  v4 = v0[32];

  v5 = v0[1];

  return v5();
}

void sub_1004C4DD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v6 = type metadata accessor for Logger();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for DIPError.Code();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10057DC18(*(a2 + 32), *(a2 + 40));
  if (v4)
  {
    return;
  }

  v45 = v12;
  v19 = v47;
  v20 = v48;
  v42 = v10;
  if (!v18)
  {
    (*(v14 + 104))(v17, enum case for DIPError.Code.migrationMissingWatchPrearmTrust(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v43 = 0;
  v44 = v18;
  v21 = v45;
  defaultLogger()();
  v22 = v19;
  sub_10000B8B8(v19, v20);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v23, v24))
  {
    sub_10000B90C(v22, v20);

    v29 = *(v46 + 8);
    v30 = v21;
    goto LABEL_17;
  }

  v25 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v49 = v41;
  *v25 = 136315394;
  *(v25 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x800000010071AE00, &v49);
  *(v25 + 12) = 2048;
  v26 = v20 >> 62;
  v27 = v46;
  if ((v20 >> 62) > 1)
  {
    if (v26 != 2)
    {
      v28 = 0;
      goto LABEL_16;
    }

    v32 = *(v22 + 16);
    v31 = *(v22 + 24);
    v33 = __OFSUB__(v31, v32);
    v28 = v31 - v32;
    if (!v33)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    LODWORD(v28) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      __break(1u);
      return;
    }

    v28 = v28;
    goto LABEL_16;
  }

  if (v26)
  {
    goto LABEL_13;
  }

  v28 = BYTE6(v20);
LABEL_16:
  *(v25 + 14) = v28;
  sub_10000B90C(v22, v20);
  _os_log_impl(&_mh_execute_header, v23, v24, "%s updated blob size = %ld", v25, 0x16u);
  sub_10000BB78(v41);

  v29 = *(v27 + 8);
  v30 = v45;
LABEL_17:
  v29(v30, v6);
  v34 = v44;
  sub_1005806A0(v22, v20, 2);
  v35 = v43;
  sub_10057BA64();
  if (v35)
  {
  }

  else
  {
    v36 = v42;
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100141FE4(0xD00000000000001CLL, 0x800000010071AE00, &v49);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s updated blob saved", v39, 0xCu);
      sub_10000BB78(v40);
    }

    v29(v36, v6);
  }
}

uint64_t sub_1004C532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004C53F4, 0, 0);
}

uint64_t sub_1004C53F4()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_1004C5490;

  return sub_1006738C8();
}

uint64_t sub_1004C5490(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1004C5590, 0, 0);
}

uint64_t sub_1004C5590()
{
  v1 = v0[27];
  if (v1)
  {
    v2 = v0[20];
    v3 = v0[21];
    v5 = v0[18];
    v4 = v0[19];
    v6 = String._bridgeToObjectiveC()();
    v0[28] = v6;
    v0[2] = v0;
    v0[3] = sub_1004C5820;
    v7 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100429100;
    v0[13] = &unk_100813E50;
    v0[14] = v7;
    [v1 addNotificationWithType:v5 documentType:v4 issuerName:v6 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[23]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8 = v0[25];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1004C5820()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1004C59A4;
  }

  else
  {
    v3 = sub_1004C5930;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C5930()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004C59A4()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  swift_willThrow();

  v4 = v0[29];
  v5 = v0[25];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004C5A24()
{
  v1[4] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004C5AE4, 0, 0);
}

uint64_t sub_1004C5AE4()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1004C5B80;

  return sub_1006738C8();
}

uint64_t sub_1004C5B80(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1004C5C80, 0, 0);
}

uint64_t sub_1004C5C80()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = swift_allocObject();
    v0[10] = v2;
    *(v2 + 16) = v1;
    v3 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
    v4 = v1;
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_1004C5ECC;
    v6.n128_u64[0] = 30.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 2, &unk_1006E62F8, v2, &type metadata for String, v6);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v0[5]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v7 = v0[7];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1004C5ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1004C606C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1004C5FE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004C5FE8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1004C606C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[12];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004C60DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_1004C60FC, 0, 0);
}

uint64_t sub_1004C60FC()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004C6218;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_100813E28;
  v0[14] = v2;
  [v1 pairedWatchSEIDWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004C6218()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1001799D4;
  }

  else
  {
    v3 = sub_1004C6328;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C6328()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  *v1 = *(v0 + 144);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1004C6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100041F04;

  return sub_1004C6718(a5);
}

uint64_t sub_1004C6718(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v16 = sub_100007224(&unk_100845DD0, &unk_1006E62C8);
  v2[22] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v18 = *(*(sub_100007224(&unk_100849F90, &qword_1006DEAA0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004C69C8, 0, 0);
}

uint64_t sub_1004C70F4(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_1004C71F4, 0, 0);
}

uint64_t sub_1004C7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100027B9C;

  return sub_1004C7B4C(a5, a6);
}

uint64_t sub_1004C7B4C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v3[20] = v8;
  v9 = *(v8 - 8);
  v3[21] = v9;
  v10 = *(v9 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[25] = v11;
  v12 = *(v11 - 8);
  v3[26] = v12;
  v13 = *(v12 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v3[29] = v14;
  v15 = *(v14 - 8);
  v3[30] = v15;
  v16 = *(v15 + 64) + 15;
  v3[31] = swift_task_alloc();
  v17 = sub_100007224(&unk_100845DD0, &unk_1006E62C8);
  v3[32] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v19 = *(*(sub_100007224(&unk_100849F90, &qword_1006DEAA0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_1004C7E0C, 0, 0);
}

uint64_t sub_1004C854C(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_1004C864C, 0, 0);
}

void sub_1004C93DC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10057B404(a2, a3);
  if (!v3)
  {
    sub_1005783D4();
  }
}

id sub_1004C9440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityWatchSessionManagementListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IdentityWatchSessionManagementListener()
{
  result = qword_100845DB8;
  if (!qword_100845DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C9588()
{
  sub_1004C9654();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1004C9654()
{
  if (!qword_100845DC8)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100845DC8);
    }
  }
}

void *sub_1004C96D4@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  result = a2(&v6, *a1);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1004C971C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100027B9C;

  return v9(a1, v5);
}

uint64_t sub_1004C9820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004C994C, 0, 0);
}

uint64_t sub_1004C994C()
{
  v32 = v0;
  v1 = v0[14];
  v2 = v0[7];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  if (v5)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v31);
    _os_log_impl(&_mh_execute_header, v3, v4, "Trying to retrieve prearm trust key for watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[15] = v13;
  v14 = swift_allocObject();
  v0[16] = v14;
  type metadata accessor for IdentityProofingDataContext();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 63) = 0;
  swift_allocObject();
  sub_10057E28C();
  v0[17] = v15;
  v16 = v0[9];
  v29 = v0[10];
  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  v20 = v15;
  v21 = swift_allocObject();
  v0[18] = v21;
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v18;
  v21[5] = v14;
  v30 = *(v20 + 16);
  v22 = swift_allocObject();
  v0[19] = v22;
  *(v22 + 16) = sub_1004CE340;
  *(v22 + 24) = v21;
  v23 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v24 = *(v16 + 104);

  v24(v29, v23, v17);
  v25 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v26 = swift_task_alloc();
  v0[20] = v26;
  *v26 = v0;
  v26[1] = sub_1004C9D5C;
  v27 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v26, v27, sub_1004CF3BC, v22, &type metadata for () + 8);
}

uint64_t sub_1004C9D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  v2[21] = v0;

  v5 = v2[19];
  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v6 = sub_1004CA004;
  }

  else
  {
    v7 = v2[18];
    v9 = v2[9];
    v8 = v2[10];
    v10 = v2[8];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1004C9EE8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004C9EE8()
{
  v1 = v0[17];

  v2 = v0[16];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[10];
  v3 = v0[5];
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 48);
  v8 = *(v2 + 56);
  v10 = *(v2 + 66);
  v13 = *(v2 + 64);
  sub_1004CE29C(v4, v5, v6, v7, v9, v8);

  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  *(v3 + 32) = v9;
  *(v3 + 40) = v8;
  *(v3 + 50) = v10;
  *(v3 + 48) = v13;
  v11 = v0[1];

  return v11();
}

uint64_t sub_1004CA004()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[21];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v4(v5, v7);
  v8 = v0[16];
  v19 = v0[14];
  v20 = v0[13];
  v21 = v0[10];
  v9 = v0[5];
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  v15 = *(v8 + 48);
  v14 = *(v8 + 56);
  LOBYTE(v5) = *(v8 + 66);
  v18 = *(v8 + 64);
  sub_1004CE29C(v10, v11, v12, v13, v15, v14);

  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12;
  *(v9 + 24) = v13;
  *(v9 + 32) = v15;
  *(v9 + 40) = v14;
  *(v9 + 50) = v5;
  *(v9 + 48) = v18;
  v16 = v0[1];

  return v16();
}

uint64_t sub_1004CA194()
{
  v1 = v0[6];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1004CA284;
  v6.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 2, &unk_1006E63B8, v2, &type metadata for Data, v6);
}

uint64_t sub_1004CA284()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1004CA658;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1004CA3A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004CA3A0()
{
  v1 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 96) = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1004CA498;
  v6.n128_u64[0] = 30.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 32, &unk_1006E63C8, v2, &type metadata for String, v6);
}

uint64_t sub_1004CA498()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1004CA6BC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1004CA5B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004CA5B4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];
  v4 = v0[5];
  v5 = Data.base16EncodedString()();
  sub_10000B90C(v1, v2);
  v6 = v0[1];

  return v6(v5._countAndFlagsBits, v5._object, v3, v4);
}

uint64_t sub_1004CA658()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1004CA6BC()
{
  v1 = v0[12];
  sub_10000B90C(v0[10], v0[11]);

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1004CA72C(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for Logger();
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004CA7F8, 0, 0);
}

uint64_t sub_1004CA7F8()
{
  v25 = v0;
  v1 = v0[32];
  v2 = v0[28];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  if (v5)
  {
    v10 = v0[27];
    v9 = v0[28];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "Trying to remove proofing session for watch with pairingID: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[33] = v13;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v14 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v14 + 54);
  sub_100031B5C(&v14[4], (v0 + 2));
  os_unfair_lock_unlock(v14 + 54);
  v15 = v0[27];
  v16 = v0[28];
  v17 = v0[9];
  v0[34] = v17;

  sub_100031918((v0 + 2));
  v18 = swift_allocObject();
  v0[35] = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  v19 = *(v17 + 16);
  v20 = swift_allocObject();
  v0[36] = v20;
  *(v20 + 16) = sub_1004CDB48;
  *(v20 + 24) = v18;
  v21 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v22 = swift_task_alloc();
  v0[37] = v22;
  *v22 = v0;
  v22[1] = sub_1004CAACC;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v22, sub_10021F3D0, v20, &type metadata for () + 8);
}

uint64_t sub_1004CAACC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_1004CAC68;
  }

  else
  {
    v6 = v2[35];
    v5 = v2[36];
    v7 = v2[34];

    v4 = sub_1004CABFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004CABFC()
{
  v2 = v0[31];
  v1 = v0[32];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004CAC68()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v5(v6, v8);
  v10 = v0[31];
  v9 = v0[32];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004CAD60(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v6 = type metadata accessor for Logger();
  v3[31] = v6;
  v7 = *(v6 - 8);
  v3[32] = v7;
  v8 = *(v7 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[35] = v9;
  *v9 = v3;
  v9[1] = sub_1004CAE74;

  return sub_1004B2600(a1, a2);
}

uint64_t sub_1004CAE74()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1004CB754;
  }

  else
  {
    v3 = sub_1004CAF88;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1004CAF88()
{
  v1 = v0[36];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 2));
  os_unfair_lock_unlock(v2 + 54);
  if (!v1)
  {
    v4 = v0[28];
    v3 = v0[29];
    v5 = v0[9];
    v0[37] = v5;

    sub_100031918((v0 + 2));
    v6 = swift_allocObject();
    v0[38] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = *(v5 + 16);
    v8 = swift_allocObject();
    v0[39] = v8;
    *(v8 + 16) = sub_1004CDB64;
    *(v8 + 24) = v6;
    v9 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

    v10 = swift_task_alloc();
    v0[40] = v10;
    v11 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
    *v10 = v0;
    v10[1] = sub_1004CB15C;

    AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_10017F748, v8, v11);
  }
}

uint64_t sub_1004CB15C()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004CB5A4, 0, 0);
  }

  else
  {
    v4 = v3[38];
    v5 = v3[39];
    v6 = v3[37];

    v7 = v3[27];
    v3[42] = v7;
    v8 = swift_task_alloc();
    v3[43] = v8;
    *v8 = v3;
    v8[1] = sub_1004CB2FC;
    v9 = v3[30];

    return sub_1004B4398(v7);
  }
}

uint64_t sub_1004CB2FC()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[44] = v4;
  *v4 = v3;
  v4[1] = sub_1004CB454;
  v5 = v1[42];
  v6 = v1[30];

  return sub_1004B68C0(v5);
}

uint64_t sub_1004CB454()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 336);
  v8 = *v0;

  v4 = *(v1 + 272);
  v5 = *(v1 + 264);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1004CB5A4()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[34];

  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "IdentityWatchSessionManagementListener failed to fetch proofing sessions: %@", v10, 0xCu);
    sub_10000BE18(v11, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v13 = v0[41];
  }

  (*(v0[32] + 8))(v0[34], v0[31]);
  v15 = v0[33];
  v14 = v0[34];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004CB754()
{
  v1 = v0[36];
  v2 = v0[33];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[36];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityWatchSessionManagementListener failed to validate stored prearm trust: %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v10 = v0[36];
  }

  (*(v0[32] + 8))(v0[33], v0[31]);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v11 + 54);
  sub_100031B5C(&v11[4], (v0 + 2));
  os_unfair_lock_unlock(v11 + 54);
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[9];
  v0[37] = v14;

  sub_100031918((v0 + 2));
  v15 = swift_allocObject();
  v0[38] = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v16 = *(v14 + 16);
  v17 = swift_allocObject();
  v0[39] = v17;
  *(v17 + 16) = sub_1004CDB64;
  *(v17 + 24) = v15;
  v18 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v19 = swift_task_alloc();
  v0[40] = v19;
  v20 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v19 = v0;
  v19[1] = sub_1004CB15C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_10017F748, v17, v20);
}

uint64_t sub_1004CBA40(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1004CBB10, 0, 0);
}

uint64_t sub_1004CBB10()
{
  v17 = v0;
  v1 = v0[8];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000042, 0x800000010071AA00, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s called", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[9] = v10;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1004CBCB4;
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  return sub_1004B2600(v14, v12);
}

uint64_t sub_1004CBCB4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1004CBF24;
  }

  else
  {
    v3 = sub_1004CBDC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004CBDC8()
{
  v1 = v0[11];
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v1)
  {
    v9 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v9(v10, v12);
  }

  else
  {
    v3 = v2;
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v3;
    v7[5] = v5;

    v8 = v5;
    sub_10057C18C(sub_1004CC030, v7);
  }

  v14 = v0[7];
  v13 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1004CBF24()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v5);
  v7 = v0[7];
  v6 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004CBFE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004CC050(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v42 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v10);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36 = v16;
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Trying to check if secure ranging is supported for watch", v24, 2u);
    v16 = v36;
  }

  (*(v18 + 8))(v21, v17);
  v25 = v42;
  v26 = *(v42 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingManager);
  if ([v26 isSupportedForType:2] && objc_msgSend(v26, "isEnabledForType:", 2))
  {
    v27 = [v26 authenticateForType:2];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(v16, 0, 1, v28);
    v29 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_rangingSessionID;
    swift_beginAccess();
    sub_1000B2764(v16, v25 + v29, &unk_100849F90, &qword_1006DEAA0);
    swift_endAccess();
    sub_10000BBC4(v25 + v29, v16, &unk_100849F90, &qword_1006DEAA0);
    sub_1004B9158(v16, 0, a2, a3, a4);
    return sub_10000BE18(v16, &unk_100849F90, &qword_1006DEAA0);
  }

  else
  {
    (*(v37 + 104))(v39, enum case for DIPError.Code.rangingNotSupported(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v31 = v40;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v32 = type metadata accessor for UUID();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    sub_1004CF2E4(&qword_100834130, &type metadata accessor for DIPError);
    v33 = swift_allocError();
    v34 = v41;
    (*(v41 + 16))(v35, v31, v10);
    sub_1004B9158(v16, v33, a2, a3, a4);

    sub_10000BE18(v16, &unk_100849F90, &qword_1006DEAA0);
    return (*(v34 + 8))(v31, v10);
  }
}

void sub_1004CC5E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v34 = &v34 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  defaultLogger()();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v35 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100141FE4(a1, a2, &v37);
    _os_log_impl(&_mh_execute_header, v15, v16, "Received unlock event from phone, trying to prearm watch with pairingID: %s", v18, 0xCu);
    sub_10000BB78(v19);
  }

  v20 = *(v8 + 8);
  v20(v14, v7);
  v21 = [objc_opt_self() standardUserDefaults];
  v22._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableSecureRangingWithWatch.getter();
  v23 = NSUserDefaults.internalBool(forKey:)(v22);

  if (v23)
  {
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Secure ranging with watch is not enabled through IDV internal settings, will continue to prearm the watch without it", v26, 2u);
    }

    v20(v12, v7);
    v27 = type metadata accessor for TaskPriority();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v30 = v35;
    v31 = v36;
    v29[4] = v36;
    v29[5] = v30;
    v29[6] = a2;

    v32 = v31;
    sub_1003E653C(0, 0, v28, &unk_1006E6490, v29);
  }

  else
  {

    v33 = v36;
    sub_1004CC050(v33, v35, a2, v33);
  }
}

uint64_t sub_1004CD400(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "Trying to unregister for phone lock notifications for watch with pairingID: %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_deviceLockStateMonitor);
  return sub_1004857EC(a1, a2);
}

uint64_t sub_1004CD5C4(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for Logger();
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004CD684, 0, 0);
}

uint64_t sub_1004CD684()
{
  v1 = v0[31];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "deletePrearmTrustKey called", v4, 2u);
  }

  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];

  (*(v6 + 8))(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], (v0 + 2));
  os_unfair_lock_unlock(v8 + 54);
  v9 = v0[27];
  v10 = v0[28];
  v11 = v0[9];
  v0[32] = v11;

  sub_100031918((v0 + 2));
  v12 = swift_allocObject();
  v0[33] = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  v13 = *(v11 + 16);
  v14 = swift_allocObject();
  v0[34] = v14;
  *(v14 + 16) = sub_1004CDB2C;
  *(v14 + 24) = v12;
  v15 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v16 = swift_task_alloc();
  v0[35] = v16;
  *v16 = v0;
  v16[1] = sub_1004CD8DC;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v16, sub_10017F710, v14, &type metadata for () + 8);
}

uint64_t sub_1004CD8DC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_1004CDA6C;
  }

  else
  {
    v6 = *(v2 + 264);
    v5 = *(v2 + 272);

    v4 = sub_1004CDA00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004CDA00()
{
  v2 = v0[31];
  v1 = v0[32];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004CDA6C()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];

  v5 = v0[1];
  v6 = v0[36];

  return v5();
}

uint64_t sub_1004CDAF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004CDB80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1004B97D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CDC48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004C60DC(a1, v4);
}

uint64_t sub_1004CDD14()
{
  sub_10000B90C(*(v0 + 24), *(v0 + 32));
  sub_10000B90C(*(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 75, 7);
}

uint64_t sub_1004CDD64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004C4538(a1, v4, v1 + 24);
}

uint64_t sub_1004CDE6C()
{
  v1 = v0[2];

  sub_10000B90C(v0[3], v0[4]);
  sub_10000B90C(v0[5], v0[6]);
  v2 = v0[8];

  sub_10000B90C(v0[10], v0[11]);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1004CDEE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004CDF20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004C20FC(a1, v4);
}

uint64_t sub_1004CE014()
{
  sub_10000B90C(*(v0 + 40), *(v0 + 48));
  sub_10000B90C(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 80);

  v2 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1004CE07C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[12];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1004C29EC(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_1004CE150()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004CE190(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1004C3368(a1, v5, v4);
}

uint64_t sub_1004CE24C()
{
  if (v0[7])
  {
    sub_10000B90C(v0[2], v0[3]);
    sub_10000B90C(v0[4], v0[5]);
    v1 = v0[7];
  }

  return _swift_deallocObject(v0, 67, 7);
}

uint64_t sub_1004CE29C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_10000B8B8(result, a2);
    sub_10000B8B8(a3, a4);
  }

  return result;
}

uint64_t sub_1004CE2F8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004CE360()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004CE398(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_10000B90C(result, a2);
    sub_10000B90C(a3, a4);
  }

  return result;
}

uint64_t sub_1004CE3F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004BE37C(a1, v4);
}

uint64_t sub_1004CE494()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004CE4DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004BECE4(a1, v4, v5, v6);
}

uint64_t sub_1004CE590(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1004BF704(a1, v5, v4);
}

uint64_t sub_1004CE63C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004BF960(a1, v4);
}

uint64_t sub_1004CE6DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004BFE48(a1, v4);
}

uint64_t sub_1004CE77C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1004BB664(a1, v4);
}

uint64_t sub_1004CE81C()
{
  sub_10000B90C(*(v0 + 32), *(v0 + 40));
  sub_10000B90C(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1004CE87C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004BC040(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1004CE93C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1004BCB04(a1, v5, v4);
}

uint64_t sub_1004CE9EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004B8978(a1, v4, v5, v6);
}

uint64_t sub_1004CEAA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004CEAE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004B7CD4(a1, v4, v5, v6);
}

uint64_t sub_1004CEB9C()
{
  v1 = v0[3];

  if (v0[9])
  {
    sub_10000B90C(v0[4], v0[5]);
    sub_10000B90C(v0[6], v0[7]);
    v2 = v0[9];
  }

  v3 = v0[11];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1004CEBFC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 11);
  v9 = v2[12];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_1004B2D6C(v9, a1, a2, v6, v7, (v2 + 4), v8);
}

uint64_t sub_1004CECD4(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100027B9C;

  return sub_1004C971C(a1, a2, v7);
}

uint64_t sub_1004CED9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004CEDFC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1004CEEDC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_1004C7838(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1004CF00C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004CF0D8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1004C6444(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004CF1D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_1004B97D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CF29C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004CF2E4(unint64_t *a1, void (*a2)(uint64_t))
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

NSObject *sub_1004CF42C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithMachServiceName:v7];

  *&v0[OBJC_IVAR____TtC8coreidvd18IDVServiceListener_listener] = v8;
  v9 = type metadata accessor for IDVServiceListener();
  v19.receiver = v0;
  v19.super_class = v9;
  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = OBJC_IVAR____TtC8coreidvd18IDVServiceListener_listener;
  v12 = *&v10[OBJC_IVAR____TtC8coreidvd18IDVServiceListener_listener];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] resume];
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "IDV service listener is started", v16, 2u);

    v17 = v13;
  }

  else
  {
    v17 = v14;
    v14 = v13;
  }

  (*(v2 + 8))(v5, v1);
  return v13;
}

id sub_1004CF654()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "IDV service listener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd18IDVServiceListener_listener] invalidate];
  v10 = type metadata accessor for IDVServiceListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1004CF800(uint64_t a1, const char *a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    defaultLogger()();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v5;
      v35 = v19;
      v20 = v19;
      *v18 = 136446466;
      v21 = v15;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = a2;
      v25 = v24;

      v26 = sub_100141FE4(v23, v25, &v35);

      *(v18 + 4) = v26;
      *(v18 + 12) = 1026;
      LODWORD(v25) = [v21 processIdentifier];

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, v33, v18, 0x12u);
      sub_10000BB78(v20);

      return (*(v6 + 8))(v10, v34);
    }

    v31 = *(v6 + 8);
    v32 = v10;
  }

  else
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, a3, v30, 2u);
    }

    v31 = *(v6 + 8);
    v32 = v12;
  }

  return v31(v32, v5);
}

uint64_t sub_1004CFBA8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007224(a1, a2);
  if (swift_isClassType() && v6)
  {
    v7 = &unk_100845FD0;
    v8 = &qword_1006DB190;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return sub_100007224(v7, v8);
}

uint64_t sub_1004CFC14(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 valueForEntitlement:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  aBlock = v63;
  v60 = v64;
  if (*(&v64 + 1))
  {
    if (swift_dynamicCast())
    {
      v13 = v57;
      v12 = v58;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1004D05E0(&aBlock);
  }

  defaultLogger()();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67240192;
    *(v17 + 4) = [v14 processIdentifier];

    _os_log_impl(&_mh_execute_header, v15, v16, "coreidvd: could not find caller's application identifier, pid %{public}d", v17, 8u);
  }

  else
  {

    v15 = v14;
  }

  (*(v3 + 8))(v9, v2);
  v13 = 0;
  v12 = 0;
LABEL_12:
  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&aBlock = v21;
    *v20 = 136446210;
    v56 = v2;
    v22 = a1;
    v23 = v13;
    if (!v12)
    {
      v13 = 0;
    }

    v55 = v7;
    v24 = v3;
    if (v12)
    {
      v25 = v12;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = sub_100141FE4(v13, v25, &aBlock);

    *(v20 + 4) = v26;
    v13 = v23;
    a1 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "IDV service listener received connection from application id = [%{public}s]", v20, 0xCu);
    sub_10000BB78(v21);

    (*(v24 + 8))(v55, v56);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  v27 = sub_1004CFBA8(qword_100842CC8, &qword_1006E02D0, &unk_100845FE0, &unk_1006E6510);
  v28 = *(v27 + 52);
  v29 = (*(v27 + 48) + 7) & 0x1FFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1006E64D0;
  v31 = sub_10001F8D4(0, &qword_100845408, NSArray_ptr);
  *(v30 + 32) = v31;
  v32 = sub_10001F8D4(0, &qword_100845EE0, NSString_ptr);
  *(v30 + 40) = v32;
  *(v30 + 48) = sub_10001F8D4(0, &unk_100845EE8, NSData_ptr);
  *(v30 + 56) = sub_10001F8D4(0, &unk_1008399D0, DIAttribute_ptr);
  *(v30 + 64) = sub_10001F8D4(0, &qword_100845EF8, DIAttributeText_ptr);
  *(v30 + 72) = sub_10001F8D4(0, &qword_100845F00, DIAttributeDate_ptr);
  *(v30 + 80) = sub_10001F8D4(0, &unk_100845F08, DIAttributeImage_ptr);
  *(v30 + 88) = sub_10001F8D4(0, &qword_100839BE0, DIAttributeDocument_ptr);
  *(v30 + 96) = sub_10001F8D4(0, &qword_10084A2B0, DIAttributeDocumentScanRequirements_ptr);
  *(v30 + 104) = sub_10001F8D4(0, &qword_100839C30, DIAttributePickerItem_ptr);
  *(v30 + 112) = sub_10001F8D4(0, &qword_100845F18, DIAttributePicker_ptr);
  *(v30 + 120) = sub_10001F8D4(0, &qword_100845F20, DIAttributeCamera_ptr);
  *(v30 + 128) = sub_10001F8D4(0, &qword_100845F28, DIAttributeSMSOTP_ptr);
  *(v30 + 136) = sub_10001F8D4(0, &unk_100845F30, DIAttributeImageCaptureRequirements_ptr);
  *(v30 + 144) = sub_10001F8D4(0, &qword_100839BC8, DIPage_ptr);
  *(v30 + 152) = sub_10001F8D4(0, &qword_100845F40, DIAttributeCustom_ptr);
  v33 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DIVerificationServerSideProtocol];
  [a1 setExportedInterface:v33];

  v34 = [a1 exportedInterface];
  if (v34)
  {
    v35 = v34;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  v36 = sub_1004CFBA8(qword_100842CC8, &qword_1006E02D0, &unk_100845FE0, &unk_1006E6510);
  v37 = *(v36 + 52);
  v38 = (*(v36 + 48) + 7) & 0x1FFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1006BFE10;
  *(v39 + 32) = v32;
  *(v39 + 40) = sub_10001F8D4(0, &qword_100833A58, NSDictionary_ptr);
  *(v39 + 48) = v31;
  *(v39 + 56) = sub_10001F8D4(0, &qword_100845FB0, DIVerificationSessionContext_ptr);
  v40 = [a1 exportedInterface];
  if (v40)
  {
    v41 = v40;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  sub_1004CFBA8(&qword_100845FC0, &qword_1006E6500, &qword_100845FC8, &qword_1006E6508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = sub_10001F8D4(0, &qword_100845FB8, DIExecutionFeedback_ptr);
  v43 = [a1 exportedInterface];
  if (v43)
  {
    v44 = v43;
    sub_1003D6E8C(inited);
    swift_setDeallocating();
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  else
  {
    swift_setDeallocating();
  }

  if (v12)
  {
    v45 = v13;
  }

  else
  {
    v45 = 0x414C494156414E55;
  }

  if (v12)
  {
    v46 = v12;
  }

  else
  {
    v46 = 0xEB00000000454C42;
  }

  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v47 = objc_allocWithZone(type metadata accessor for IDVSessionProxy(0));
  v48 = a1;
  v49 = sub_10065BC60(a1, v45, v46, &aBlock);

  [v48 setExportedObject:v49];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = sub_1004D0680;
  v62 = v50;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_100503A7C;
  *(&v60 + 1) = &unk_100814558;
  v51 = _Block_copy(&aBlock);

  [v48 setInvalidationHandler:v51];
  _Block_release(v51);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = sub_1004D06C4;
  v62 = v52;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_100503A7C;
  *(&v60 + 1) = &unk_100814580;
  v53 = _Block_copy(&aBlock);

  [v48 setInterruptionHandler:v53];
  _Block_release(v53);
  [v48 resume];
  return 1;
}

uint64_t sub_1004D05E0(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004D0648()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004D06AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1004D06F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8coreidvd42MobileDocumentProviderRegistrationListener_listener;
  type metadata accessor for MobileDocumentProviderRegistrationSession();
  static MobileDocumentProviderRegistrationSession.machServiceName.getter();
  v9 = objc_allocWithZone(NSXPCListener);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithMachServiceName:v10];

  *&v1[v8] = v11;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v20, "init");
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100141FE4(0x292874696E69, 0xE600000000000000, &v19);
    _os_log_impl(&_mh_execute_header, v13, v14, "MobileDocumentProviderRegistrationListener %s", v15, 0xCu);
    sub_10000BB78(v16);
  }

  (*(v4 + 8))(v7, v3);
  [*&v12[OBJC_IVAR____TtC8coreidvd42MobileDocumentProviderRegistrationListener_listener] setDelegate:v12];

  return v12;
}

id sub_1004D0970()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "MobileDocumentProviderRegistrationListener %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v4 + 8))(v7, v3);
  [*&v1[OBJC_IVAR____TtC8coreidvd42MobileDocumentProviderRegistrationListener_listener] invalidate];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "dealloc");
}

id sub_1004D0B7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Logger();
  v27 = *(v30 - 8);
  v10 = *(v27 + 64);
  v11 = __chkstk_darwin(v30);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  if (sub_1004D1F24())
  {
    [a1 auditToken];
    result = sub_1004D1290(v28, *(&v28 + 1), v29, *(&v29 + 1), a2);
    if (!v2)
    {
      return result;
    }

    if (sub_1004D26A4())
    {
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v28 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100141FE4(0xD000000000000023, 0x800000010071B6F0, &v28);
        _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentProviderRegistrationListener %s unable to retrieve calling app's configuration, but privileged testing entitlement present. Proceeding with connection.", v19, 0xCu);
        sub_10000BB78(v20);
      }

      result = (*(v27 + 8))(v13, v30);
      *a2 = 1;
      *(a2 + 104) = 2;
      return result;
    }
  }

  else if (sub_1004D22E4())
  {
    result = [a1 auditToken];
    v21 = v29;
    *a2 = v28;
    *(a2 + 16) = v21;
    *(a2 + 104) = 1;
    return result;
  }

  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v28 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_100141FE4(0xD000000000000023, 0x800000010071B6F0, &v28);
    _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentProviderRegistrationListener %s could not initialize an applicationConfiguration and privileged testing entitlement not present. Rejecting connection.", v24, 0xCu);
    sub_10000BB78(v25);
  }

  (*(v27 + 8))(v15, v30);
  (*(v6 + 104))(v9, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1004D1074(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
    sub_10000BB78(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1004D1290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v80 = a5;
  v92 = type metadata accessor for DIPError.Code();
  v87 = *(v92 - 8);
  v9 = *(v87 + 64);
  __chkstk_darwin(v92);
  v89 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v77 = &v67 - v13;
  v14 = type metadata accessor for BundleRecord.RecordType();
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = *(v83 + 64);
  v16 = __chkstk_darwin(v14);
  v76 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v75 = &v67 - v19;
  __chkstk_darwin(v18);
  v82 = &v67 - v20;
  v21 = type metadata accessor for BundleRecord();
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = *(v85 + 64);
  v23 = __chkstk_darwin(v21);
  v79 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v78 = &v67 - v26;
  v27 = __chkstk_darwin(v25);
  v81 = &v67 - v28;
  __chkstk_darwin(v27);
  v30 = &v67 - v29;
  v31 = type metadata accessor for BundleRecordFetcher();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  BundleRecordFetcher.init()();
  v36 = v88;
  BundleRecordFetcher.record(withAuditToken:)();
  if (!v36)
  {
    v67 = 0;
    v69 = a1;
    v70 = a2;
    v71 = a3;
    v68 = a4;
    v73 = v35;
    v88 = v32;
    v74 = v31;
    v37 = v82;
    BundleRecord.recordType.getter();
    v39 = v83;
    v38 = v84;
    v40 = (*(v83 + 88))(v37, v84);
    v41 = enum case for BundleRecord.RecordType.application(_:);
    v72 = v30;
    if (v40 == enum case for BundleRecord.RecordType.application(_:))
    {
      v43 = v85;
      v42 = v86;
      v44 = *(v85 + 16);
      v45 = v81;
      v44();
LABEL_5:
      v46 = v89;
      v47 = v74;
      v48 = v79;
      (v44)(v79, v45, v42);
      v49 = sub_100330E58(v69, v70, v71, v68, v48, v90);
      v50 = v80;
      if (v91[24] != 255)
      {
        v51 = *(v43 + 8);
        v51(v45, v42, v49);
        (v51)(v72, v42);
        result = (*(v88 + 8))(v73, v47);
        v53 = *v91;
        v50[4] = v90[4];
        v50[5] = v53;
        *(v50 + 89) = *&v91[9];
        v54 = v90[1];
        *v50 = v90[0];
        v50[1] = v54;
        v55 = v90[3];
        v50[2] = v90[2];
        v50[3] = v55;
        return result;
      }

      sub_10000BE18(v90, &unk_100846020, &qword_1006E6568);
      v86 = " not application";
      v89 = *(v87 + 104);
      (v89)(v46, enum case for DIPError.Code.webPresentmentRegistrationIdentifiersMissing(_:), v92);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v61 = *(v43 + 8);
      v61(v81, v42);
      v58 = v89;
      v61(v72, v42);
      goto LABEL_13;
    }

    v56 = v37;
    v57 = v87;
    if (v40 != enum case for BundleRecord.RecordType.appClip(_:))
    {
      if (v40 == enum case for BundleRecord.RecordType.applicationExtension(_:))
      {
        v59 = v77;
        BundleRecord.containingBundleRecord.getter();
        v60 = v85;
        if ((*(v85 + 48))(v59, 1, v86) == 1)
        {
          sub_10000BE18(v59, &qword_10083ACF8, &qword_1006D8FC0);
          v84 = "ine bundle record type";
          v58 = *(v57 + 104);
          v46 = v89;
          (v58)(v89, enum case for DIPError.Code.webPresentmentRegistrationUnsupportedBundleType(_:), v92);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (*(v60 + 8))(v72, v86);
        }

        else
        {
          v82 = *(v60 + 32);
          (v82)(v78, v59, v86);
          v62 = v75;
          BundleRecord.recordType.getter();
          v63 = v76;
          (*(v39 + 104))(v76, v41, v38);
          v64 = static BundleRecord.RecordType.== infix(_:_:)();
          v65 = *(v39 + 8);
          v65(v63, v38);
          v65(v62, v38);
          if (v64)
          {
            v45 = v81;
            v42 = v86;
            (v82)(v81, v78, v86);
            v43 = v85;
            v44 = *(v85 + 16);
            goto LABEL_5;
          }

          v58 = *(v57 + 104);
          v46 = v89;
          (v58)(v89, enum case for DIPError.Code.unexpectedDeviceState(_:), v92);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          v66 = v86;
          v87 = *(v85 + 8);
          (v87)(v78, v86);
          (v87)(v72, v66);
        }

LABEL_13:
        (*(v88 + 8))(v73, v74);
        (v58)(v46, enum case for DIPError.Code.internalError(_:), v92);
        goto LABEL_14;
      }

      if (v40 != enum case for BundleRecord.RecordType.unknown(_:))
      {
        (*(v39 + 8))(v56, v38);
      }
    }

    v58 = *(v57 + 104);
    v46 = v89;
    (v58)(v89, enum case for DIPError.Code.webPresentmentRegistrationUnsupportedBundleType(_:), v92);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v85 + 8))(v72, v86);
    goto LABEL_13;
  }

  (*(v32 + 8))(v35, v31);
  (*(v87 + 104))(v89, enum case for DIPError.Code.internalError(_:), v92);
LABEL_14:
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_1004D1F24()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentProviderRegistrationListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v1 + 8);
  v15(v10, v0);
  v16 = static MobileDocumentProviderRegistrationEntitlementChecker.checkEntitlement(connection:)();
  if (v16)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentProviderRegistrationListener %s mobile document provider registration entitlement present", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v21 = v8;
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
      _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentProviderRegistrationListener %s No valid entitlements present", v24, 0xCu);
      sub_10000BB78(v25);
    }

    v21 = v5;
  }

  v15(v21, v0);
  return v16 & 1;
}

uint64_t sub_1004D22E4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010071B790, &v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentProviderRegistrationListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v1 + 8);
  v15(v10, v0);
  v16 = static MobileDocumentProviderRegistrationEntitlementChecker.checkSettingsEntitlement(connection:)();
  if (v16)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010071B790, &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentProviderRegistrationListener %s mobile document provider registration settings entitlement present", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v21 = v8;
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010071B790, &v28);
      _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentProviderRegistrationListener %s No valid settings entitlements present", v24, 0xCu);
      sub_10000BB78(v25);
    }

    v21 = v5;
  }

  v15(v21, v0);
  return v16 & 1;
}

uint64_t sub_1004D26A4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000028, 0x800000010071B720, &v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentProviderRegistrationListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v1 + 8);
  v15(v10, v0);
  v16 = static MobileDocumentProviderRegistrationEntitlementChecker.checkPrivilegedTestingRegistrationEntitlement(connection:)();
  if (v16)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(0xD000000000000028, 0x800000010071B720, &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentProviderRegistrationListener %s mobile document provider registration privileged testing entitlement present", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v21 = v8;
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(0xD000000000000028, 0x800000010071B720, &v28);
      _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentProviderRegistrationListener %s No valid privileged testing entitlements present", v24, 0xCu);
      sub_10000BB78(v25);
    }

    v21 = v5;
  }

  v15(v21, v0);
  return v16 & 1;
}

uint64_t sub_1004D2A64(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = v32 - v9;
  __chkstk_darwin(v8);
  v12 = v32 - v11;
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32[0] = v2;
    v16 = a1;
    v17 = v10;
    v18 = v4;
    v19 = v5;
    v20 = v15;
    v21 = swift_slowAlloc();
    *&v39[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, v39);
    _os_log_impl(&_mh_execute_header, v13, v14, "MobileDocumentProviderRegistrationListener %s", v20, 0xCu);
    sub_10000BB78(v21);

    v5 = v19;
    v4 = v18;
    v10 = v17;
    a1 = v16;
  }

  v22 = *(v5 + 8);
  v22(v12, v4);
  sub_1004D0B7C(a1, &aBlock);
  v39[3] = v36;
  v39[4] = v37;
  v40[0] = v38[0];
  *(v40 + 9) = *(v38 + 9);
  v39[0] = aBlock;
  v39[1] = v34;
  v39[2] = v35;
  sub_1003311DC(v39, &aBlock);
  type metadata accessor for MobileDocumentProviderRegistrationSessionProxy();
  swift_allocObject();
  v23 = sub_1004D30CC(&aBlock);
  v24 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7CoreIDV43MobileDocumentProviderRegistrationInterface_];
  [a1 setExportedInterface:v24];

  [a1 setExportedObject:v23];
  *&v35 = sub_1004D105C;
  *(&v35 + 1) = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v34 = sub_100503A7C;
  *(&v34 + 1) = &unk_1008145B8;
  v25 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler:v25];
  _Block_release(v25);
  *&v35 = sub_1004D1068;
  *(&v35 + 1) = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v34 = sub_100503A7C;
  *(&v34 + 1) = &unk_1008145E0;
  v26 = _Block_copy(&aBlock);
  [a1 setInvalidationHandler:v26];
  _Block_release(v26);
  [a1 activate];
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&aBlock = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &aBlock);
    _os_log_impl(&_mh_execute_header, v27, v28, "MobileDocumentProviderRegistrationListener %s Activating new connection", v29, 0xCu);
    sub_10000BB78(v30);
  }

  v22(v10, v4);
  sub_10033A9D0(v39);
  return 1;
}

uint64_t sub_1004D30AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1004D30CC(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v38 = v2;
  sub_1003311DC(a1, (v2 + 14));
  v39 = a1;
  sub_1003311DC(a1, v64);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v4 + 54);
  sub_1000318FC(&v4[4], &v57);
  os_unfair_lock_unlock(v4 + 54);
  v5 = v60;

  sub_100031918(&v57);
  v62 = type metadata accessor for MobileDocumentRegistrationDataContainer();
  v63 = sub_1004DB36C(&qword_100843228, type metadata accessor for MobileDocumentRegistrationDataContainer);
  *&v61 = v5;
  v58 = type metadata accessor for MobileDocumentProviderRegistrationValidator();
  v59 = &protocol witness table for MobileDocumentProviderRegistrationValidator;
  sub_100032DBC(&v57);
  MobileDocumentProviderRegistrationValidator.init()();
  v6 = type metadata accessor for MobileDocumentProviderRegistrationStorage();
  v7 = swift_allocObject();
  sub_10001F358(&v61, v7 + 16);
  sub_10001F358(&v57, v7 + 56);
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v8 = type metadata accessor for ExtensionPointManager();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = ExtensionPointManager.init(extensionPointIdentifier:)();
  v58 = v8;
  v59 = &protocol witness table for ExtensionPointManager;
  *&v57 = v11;
  v62 = type metadata accessor for BundleRecordFetcher();
  v63 = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(&v61);
  BundleRecordFetcher.init()();
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v12 = *(v8 + 48);
  v13 = *(v8 + 52);
  swift_allocObject();
  v55 = v8;
  v56 = &protocol witness table for ExtensionPointManager;
  *&v54 = ExtensionPointManager.init(extensionPointIdentifier:)();
  v14 = type metadata accessor for IdentityDocumentProviderExtensionConnectionManager();
  v15 = swift_allocObject();
  sub_10001F358(&v54, v15 + 16);
  v55 = type metadata accessor for DeviceInformationProvider();
  v56 = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(&v54);
  DeviceInformationProvider.init()();
  v52 = type metadata accessor for ProcessVisibilityMonitor();
  v53 = &protocol witness table for ProcessVisibilityMonitor;
  sub_100032DBC(&v51);
  ProcessVisibilityMonitor.init()();
  v50[3] = v6;
  v50[4] = &off_10080DE08;
  v50[0] = v7;
  v48 = v14;
  v49 = &off_10080DBC0;
  v47[0] = v15;
  type metadata accessor for MobileDocumentProviderRegistrationFlow();
  v16 = swift_allocObject();
  v17 = sub_10001F370(v50, v6);
  v37[1] = v37;
  v18 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v48;
  v23 = sub_10001F370(v47, v48);
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v20;
  v29 = *v26;
  v45 = v6;
  v46 = &off_10080DE08;
  v43 = &off_10080DBC0;
  *&v44 = v28;
  v42 = v14;
  *&v41 = v29;
  swift_defaultActor_initialize();
  v30 = v65[0];
  *(v16 + 176) = v64[4];
  *(v16 + 192) = v30;
  *(v16 + 201) = *(v65 + 9);
  v31 = v64[1];
  *(v16 + 112) = v64[0];
  *(v16 + 128) = v31;
  v32 = v64[3];
  *(v16 + 144) = v64[2];
  *(v16 + 160) = v32;
  sub_10001F358(&v44, v16 + 224);
  sub_10001F358(&v57, v16 + 264);
  sub_10001F358(&v61, v16 + 304);
  *(v16 + 344) = &type metadata for WebPresentmentProviderOptInAlertPresenter;
  *(v16 + 352) = &off_100811C28;
  sub_10001F358(&v41, v16 + 360);
  sub_10001F358(&v54, v16 + 400);
  sub_10001F358(&v51, v16 + 440);
  *(v16 + 480) = sub_1003336A8;
  *(v16 + 488) = 0;
  sub_10000BB78(v47);
  sub_10000BB78(v50);
  v33 = v38;
  v38[28] = v16;
  v34 = type metadata accessor for MobileDocumentProviderRegistrationSessionProxy();
  v40.receiver = v33;
  v40.super_class = v34;
  v35 = objc_msgSendSuper2(&v40, "init");
  sub_10033A9D0(v39);
  return v35;
}

uint64_t sub_1004D35D4()
{
  v1[2] = v0;
  v2 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1004D36FC, v0, 0);
}

uint64_t sub_1004D36FC()
{
  v15 = v0;
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010071BD00, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = *(v0[2] + 224);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1004D38A0;
  v12 = v0[6];

  return sub_100332768(v12);
}

uint64_t sub_1004D38A0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1004D39B0, v2, 0);
}

uint64_t sub_1004D39B0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  (*(v4 + 16))(v0[5], v2, v3);
  v5 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderStatusResponse());
  v6 = XPCMobileDocumentProviderStatusResponse.init(value:)();
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1004D3C0C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004D3CB4;

  return sub_1004D35D4();
}

uint64_t sub_1004D3CB4(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1004D3E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(type metadata accessor for DIPError() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentRegistration();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v15 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v17 = *(v16 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v4[22] = v18;
  v19 = *(v18 - 8);
  v4[23] = v19;
  v20 = *(v19 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004D40A0, v3, 0);
}

uint64_t sub_1004D40A0()
{
  v38 = v0;
  v1 = v0[5];
  v2 = sub_1004D931C(v0[3], v0[4]);
  v0[27] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[26];
  v7 = v0[2];
  defaultLogger()();
  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[26];
  v13 = v0[22];
  v14 = v0[23];
  if (v11)
  {
    v35 = v0[22];
    v36 = v4;
    v15 = v0[21];
    v33 = v10;
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    v31 = v0[18];
    v32 = v0[15];
    v34 = v0[26];
    v19 = v0[2];
    v20 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071BCC0, v37);
    *(v20 + 12) = 2080;
    XPCMobileDocumentProviderRegistrationRequest.value.getter();
    MobileDocumentProviderRegistrationRequest.registration.getter();
    (*(v16 + 8))(v15, v31);
    v21 = MobileDocumentRegistration.documentIdentifier.getter();
    v23 = v22;
    (*(v18 + 8))(v17, v32);
    v24 = sub_100141FE4(v21, v23, v37);
    v4 = v36;

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v33, "MobileDocumentProviderRegistrationSessionProxy %s document identifier %s", v20, 0x16u);
    swift_arrayDestroy();

    (*(v14 + 8))(v34, v35);
  }

  else
  {

    (*(v14 + 8))(v12, v13);
  }

  v25 = v0[20];
  v26 = v0[2];
  v27 = *(v0[5] + 224);
  XPCMobileDocumentProviderRegistrationRequest.value.getter();
  v28 = swift_task_alloc();
  v0[28] = v28;
  *v28 = v0;
  v28[1] = sub_1004D48C0;
  v29 = v0[20];

  return sub_100333700(v29, v4, v5);
}

uint64_t sub_1004D48C0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  v2[29] = v0;

  v5 = v2[27];
  if (v0)
  {
    v6 = v2[5];
    (*(v2[19] + 8))(v2[20], v2[18]);

    return _swift_task_switch(sub_1004D4B00, v6, 0);
  }

  else
  {
    v8 = v2[25];
    v7 = v2[26];
    v9 = v2[24];
    v11 = v2[20];
    v10 = v2[21];
    v12 = v2[18];
    v13 = v2[19];
    v14 = v2[17];
    v15 = v2[13];
    v20 = v2[12];
    v17 = v2 + 8;
    v16 = v2[8];
    v21 = v17[1];
    (*(v13 + 8))(v11, v12);

    v18 = *(v4 + 8);

    return v18();
  }
}

uint64_t sub_1004D4B00()
{
  v64 = v0;
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[14];
  v55 = v0[13];
  v5 = v0[11];
  v59 = v0[22];
  v61 = v0[12];
  v52 = v0[24];
  v53 = v0[10];
  v6 = v0[7];
  v47 = v0[8];
  v50 = v0[9];
  v62 = v0[6];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x800000010071BB40;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x800000010071BCC0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v57 = *(v3 + 8);
  v57(v2, v59);
  (*(v6 + 104))(v47, enum case for DIPError.Code.internalError(_:), v62);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v50);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v55, v4, v53);
  v56 = v10;
  v10(v61, v4, v53);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[24];
  v15 = v0[22];
  v17 = v0[12];
  v16 = v0[13];
  v19 = v0[10];
  v18 = v0[11];
  if (v13)
  {
    v48 = v12;
    v20 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010071BCC0, v63);
    *(v20 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
    v44 = v14;
    v45 = v15;
    v21 = Error.localizedDescription.getter();
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v16, v19);
    v25 = sub_100141FE4(v21, v23, v63);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    v26 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 7104878;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v54 = v24;
    v24(v17, v19);
    v30 = sub_100141FE4(v28, v29, v63);

    *(v20 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v11, v48, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v20, 0x20u);
    swift_arrayDestroy();

    v31 = v44;
    v32 = v45;
  }

  else
  {

    v33 = *(v18 + 8);
    v33(v17, v19);
    v54 = v33;
    v33(v16, v19);
    v31 = v14;
    v32 = v15;
  }

  v57(v31, v32);
  v34 = v0[25];
  v35 = v0[26];
  v36 = v0[24];
  v38 = v0[20];
  v37 = v0[21];
  v39 = v0[14];
  v46 = v0[17];
  v49 = v0[13];
  v51 = v0[12];
  v40 = v0[10];
  v58 = v0[9];
  v60 = v0[8];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v56(v41, v39, v40);
  swift_willThrow();

  v54(v39, v40);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1004D5234(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a1;

  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1004DB3B4;

  return sub_1004D3E04(v9, a2, v8);
}

uint64_t sub_1004D532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(type metadata accessor for DIPError() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentProviderUnregisterRequest();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v4[19] = v15;
  v16 = *(v15 - 8);
  v4[20] = v16;
  v17 = *(v16 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_1004D556C, v3, 0);
}

uint64_t sub_1004D556C()
{
  v35 = v0;
  v1 = v0[5];
  v2 = sub_1004D931C(v0[3], v0[4]);
  v0[24] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[23];
  v7 = v0[2];
  defaultLogger()();
  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[23];
  v13 = v0[19];
  v14 = v0[20];
  if (v11)
  {
    v32 = v0[23];
    v33 = v0[19];
    v15 = v0[18];
    v16 = v0[16];
    v31 = v0[15];
    v17 = v0[2];
    v18 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_100141FE4(0xD000000000000032, 0x800000010071BC80, v34);
    *(v18 + 12) = 2080;
    XPCMobileDocumentProviderUnregisterRequest.value.getter();
    v19 = MobileDocumentProviderUnregisterRequest.documentIdentifier.getter();
    v30 = v10;
    v20 = v4;
    v22 = v21;
    (*(v16 + 8))(v15, v31);
    v23 = sub_100141FE4(v19, v22, v34);
    v4 = v20;

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v9, v30, "MobileDocumentProviderRegistrationSessionProxy %s document with identifier %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v14 + 8))(v32, v33);
  }

  else
  {

    (*(v14 + 8))(v12, v13);
  }

  v24 = v0[17];
  v25 = v0[2];
  v26 = *(v0[5] + 224);
  XPCMobileDocumentProviderUnregisterRequest.value.getter();
  v27 = swift_task_alloc();
  v0[25] = v27;
  *v27 = v0;
  v27[1] = sub_1004D5D4C;
  v28 = v0[17];

  return sub_10033493C(v28, v4, v5);
}

uint64_t sub_1004D5D4C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v6 = v2[5];
    (*(v2[16] + 8))(v2[17], v2[15]);

    return _swift_task_switch(sub_1004D5F7C, v6, 0);
  }

  else
  {
    v8 = v2[22];
    v7 = v2[23];
    v9 = v2[21];
    v11 = v2[17];
    v10 = v2[18];
    v12 = v2[15];
    v13 = v2[16];
    v15 = v2[13];
    v14 = v2[14];
    v16 = v2[12];
    v18 = v2 + 8;
    v17 = v2[8];
    v21 = v18[1];
    (*(v13 + 8))(v11, v12);

    v19 = *(v4 + 8);

    return v19();
  }
}

uint64_t sub_1004D5F7C()
{
  v63 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[14];
  v54 = v0[13];
  v5 = v0[11];
  v58 = v0[19];
  v60 = v0[12];
  v51 = v0[21];
  v52 = v0[10];
  v6 = v0[7];
  v46 = v0[8];
  v49 = v0[9];
  v61 = v0[6];
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x800000010071BB40;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000032;
  v8._object = 0x800000010071BC80;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v56 = *(v3 + 8);
  v56(v2, v58);
  (*(v6 + 104))(v46, enum case for DIPError.Code.internalError(_:), v61);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v49);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v54, v4, v52);
  v55 = v10;
  v10(v60, v4, v52);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[21];
  v15 = v0[19];
  v16 = v0[12];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[11];
  if (v13)
  {
    v47 = v12;
    v20 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_100141FE4(0xD000000000000032, 0x800000010071BC80, v62);
    *(v20 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
    v44 = v14;
    v45 = v15;
    v21 = Error.localizedDescription.getter();
    v23 = v22;
    v24 = *(v19 + 8);
    v24(v17, v18);
    v25 = sub_100141FE4(v21, v23, v62);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    v26 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 7104878;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v53 = v24;
    v24(v16, v18);
    v30 = sub_100141FE4(v28, v29, v62);

    *(v20 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v11, v47, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v20, 0x20u);
    swift_arrayDestroy();

    v31 = v44;
    v32 = v45;
  }

  else
  {

    v33 = *(v19 + 8);
    v33(v16, v18);
    v53 = v33;
    v33(v17, v18);
    v31 = v14;
    v32 = v15;
  }

  v56(v31, v32);
  v34 = v0[22];
  v35 = v0[23];
  v36 = v0[21];
  v37 = v0[17];
  v38 = v0[18];
  v39 = v0[14];
  v48 = v0[13];
  v50 = v0[12];
  v40 = v0[10];
  v57 = v0[9];
  v59 = v0[8];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v55(v41, v39, v40);
  swift_willThrow();

  v53(v39, v40);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1004D669C(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a1;

  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10048F500;

  return sub_1004D532C(v9, a2, v8);
}

uint64_t sub_1004D6794(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DIPError() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  RegistrationsResponse = type metadata accessor for MobileDocumentProviderQueryRegistrationsResponse();
  v3[14] = RegistrationsResponse;
  v12 = *(RegistrationsResponse - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1004D69D4, v2, 0);
}

uint64_t sub_1004D69D4()
{
  v20 = v0;
  v1 = v0[4];
  v2 = sub_1004D931C(v0[2], v0[3]);
  v0[23] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[22];
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v11 = v0[18];
  v12 = v0[19];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD00000000000002DLL, 0x800000010071BC50, &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentProviderRegistrationSessionProxy %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  (*(v12 + 8))(v10, v11);
  v15 = *(v0[4] + 224);
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_1004D7110;
  v17 = v0[17];

  return sub_100335794(v17, v4, v5);
}

uint64_t sub_1004D7110()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 32);

  if (v0)
  {
    v7 = sub_1004D73A0;
  }

  else
  {
    v7 = sub_1004D7258;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004D7258()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v14 = v0[8];
  v15 = v0[7];
  (*(v6 + 16))(v0[16], v4, v5);
  v8 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderQueryRegistrationsResponse());
  v9 = XPCMobileDocumentProviderQueryRegistrationsResponse.init(value:)();
  (*(v6 + 8))(v4, v5);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1004D73A0()
{
  v61 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[13];
  v54 = v0[12];
  v56 = v0[18];
  v5 = v0[10];
  v51 = v0[20];
  v52 = v0[9];
  v48 = v0[8];
  v6 = v0[6];
  v45 = v0[7];
  v58 = v0[11];
  v59 = v0[5];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x800000010071BB40;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD00000000000002DLL;
  v8._object = 0x800000010071BC50;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v10 = *(v3 + 8);
  v10(v2, v56);
  (*(v6 + 104))(v45, enum case for DIPError.Code.internalError(_:), v59);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v48);
  defaultLogger()();
  v11 = *(v5 + 16);
  v11(v54, v4, v52);
  v55 = v11;
  v11(v58, v4, v52);
  v12 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v12, v49);
  v14 = v0[20];
  v15 = v0[18];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[9];
  v19 = v0[10];
  if (v13)
  {
    v46 = v0[18];
    v20 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_100141FE4(0xD00000000000002DLL, 0x800000010071BC50, v60);
    *(v20 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
    v42 = v14;
    v43 = v10;
    v21 = Error.localizedDescription.getter();
    v23 = v22;
    v24 = *(v19 + 8);
    v24(v17, v18);
    v25 = sub_100141FE4(v21, v23, v60);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    v26 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 7104878;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v53 = v24;
    v24(v16, v18);
    v30 = sub_100141FE4(v28, v29, v60);

    *(v20 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v12, v49, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v20, 0x20u);
    swift_arrayDestroy();

    v43(v42, v46);
  }

  else
  {

    v31 = *(v19 + 8);
    v31(v16, v18);
    v53 = v31;
    v31(v17, v18);
    v10(v14, v15);
  }

  v32 = v0[21];
  v33 = v0[22];
  v34 = v0[20];
  v35 = v0[16];
  v36 = v0[17];
  v37 = v0[13];
  v44 = v0[12];
  v47 = v0[11];
  v38 = v0[9];
  v50 = v0[8];
  v57 = v0[7];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v55(v39, v37, v38);
  swift_willThrow();

  v53(v37, v38);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1004D7ACC(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1004D7BAC;

  return sub_1004D6794(a1, v6);
}

uint64_t sub_1004D7BAC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  v10 = *(v5 + 24);

  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1004D7D68()
{
  v1[16] = v0;
  v2 = type metadata accessor for DIPError();
  v1[17] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  v1[19] = v4;
  v5 = *(v4 - 8);
  v1[20] = v5;
  v6 = *(v5 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v1[24] = v7;
  v8 = *(v7 - 8);
  v1[25] = v8;
  v9 = *(v8 + 64) + 15;
  v1[26] = swift_task_alloc();
  AllApplicationsResponse = type metadata accessor for MobileDocumentProviderQueryAllApplicationsResponse();
  v1[27] = AllApplicationsResponse;
  v11 = *(AllApplicationsResponse - 8);
  v1[28] = v11;
  v12 = *(v11 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v1[31] = v13;
  v14 = *(v13 - 8);
  v1[32] = v14;
  v15 = *(v14 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_1004D7FB4, v0, 0);
}

uint64_t sub_1004D7FB4()
{
  v88 = v0;
  v1 = *(v0 + 288);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v87[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, v87);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 296) = v10;
  if (isInternalBuild()())
  {
    sub_1003311DC(*(v0 + 128) + 112, v0 + 16);
    if (*(v0 + 120))
    {
      if (*(v0 + 120) != 1 && (*(v0 + 16) & 1) != 0)
      {
        v11 = *(*(v0 + 128) + 224);
        v12 = swift_task_alloc();
        *(v0 + 304) = v12;
        *v12 = v0;
        v12[1] = sub_1004D8898;

        return sub_100336554();
      }
    }

    else
    {
      v14 = *(v0 + 56);

      v15 = *(v0 + 72);

      sub_10000BB78((v0 + 80));
    }
  }

  v16 = *(v0 + 280);
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Privileged testing entitlement is missing.", v19, 2u);
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 248);
  v22 = *(v0 + 256);
  v24 = *(v0 + 200);
  v23 = *(v0 + 208);
  v25 = *(v0 + 192);
  v26 = *(v0 + 136);

  v10(v20, v21);
  (*(v24 + 104))(v23, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v25);
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_1004DB36C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v27 = *(v0 + 272);
  v66 = *(v0 + 256);
  v68 = *(v0 + 296);
  v84 = *(v0 + 248);
  v28 = *(v0 + 200);
  v29 = *(v0 + 184);
  v71 = *(v0 + 208);
  v73 = *(v0 + 192);
  v80 = *(v0 + 264);
  v82 = *(v0 + 176);
  v86 = *(v0 + 168);
  v30 = *(v0 + 160);
  v76 = *(v0 + 144);
  v79 = *(v0 + 152);
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v31._countAndFlagsBits = 0xD00000000000002FLL;
  v31._object = 0x800000010071BB40;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD000000000000011;
  v32._object = 0x800000010070EAD0;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000015;
  v33._object = 0x800000010071BB70;
  String.append(_:)(v33);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v68(v27, v84);
  (*(v28 + 104))(v71, enum case for DIPError.Code.internalError(_:), v73);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v76);
  defaultLogger()();
  v34 = *(v30 + 16);
  v34(v82, v29, v79);
  v83 = v34;
  v34(v86, v29, v79);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 296);
  v39 = *(v0 + 264);
  v40 = *(v0 + 248);
  v42 = *(v0 + 168);
  v41 = *(v0 + 176);
  v43 = *(v0 + 152);
  v44 = *(v0 + 160);
  if (v37)
  {
    v77 = *(v0 + 248);
    v45 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v45 = 136315650;
    *(v45 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, v87);
    *(v45 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
    v74 = v38;
    v46 = Error.localizedDescription.getter();
    v69 = v39;
    v48 = v47;
    v67 = v36;
    v49 = *(v44 + 8);
    v49(v41, v43);
    v50 = sub_100141FE4(v46, v48, v87);

    *(v45 + 14) = v50;
    *(v45 + 22) = 2080;
    v51 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v52)
    {
      v53 = v51;
    }

    else
    {
      v53 = 7104878;
    }

    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0xE300000000000000;
    }

    v81 = v49;
    v49(v42, v43);
    v55 = sub_100141FE4(v53, v54, v87);

    *(v45 + 24) = v55;
    _os_log_impl(&_mh_execute_header, v35, v67, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v45, 0x20u);
    swift_arrayDestroy();

    v74(v69, v77);
  }

  else
  {

    v56 = *(v44 + 8);
    v56(v42, v43);
    v81 = v56;
    v56(v41, v43);
    v38(v39, v40);
  }

  v57 = *(v0 + 280);
  v58 = *(v0 + 288);
  v60 = *(v0 + 264);
  v59 = *(v0 + 272);
  v61 = *(v0 + 240);
  v70 = *(v0 + 232);
  v72 = *(v0 + 208);
  v62 = *(v0 + 184);
  v75 = *(v0 + 176);
  v78 = *(v0 + 168);
  v63 = *(v0 + 152);
  v85 = *(v0 + 144);
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v83(v64, v62, v63);
  swift_willThrow();

  v81(v62, v63);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1004D8898(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[39] = v1;

  v7 = v4[16];
  if (v1)
  {
    v8 = sub_1004D8B38;
  }

  else
  {
    v4[40] = a1;
    v8 = sub_1004D89D4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1004D89D4()
{
  v1 = v0[40];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[28];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v18 = v0[18];
  MobileDocumentProviderQueryAllApplicationsResponse.init(providerApplications:)();
  (*(v9 + 16))(v6, v7, v8);
  v10 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentProviderQueryAllApplicationsResponse());
  v11 = XPCMobileDocumentProviderQueryAllApplicationsResponse.init(value:)();
  (*(v9 + 8))(v7, v8);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1004D8B38()
{
  v63 = v0;
  v1 = v0[39];
  v2 = v0[34];
  v43 = v0[32];
  v56 = v0[33];
  v59 = v0[31];
  v3 = v0[25];
  v45 = v0[26];
  v4 = v0[23];
  v47 = v0[24];
  v50 = v0[37];
  v61 = v0[21];
  v5 = v0[20];
  v53 = v0[19];
  v54 = v0[22];
  v6 = v0[18];
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x800000010071BB40;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000011;
  v8._object = 0x800000010070EAD0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v50(v2, v59);
  (*(v3 + 104))(v45, enum case for DIPError.Code.internalError(_:), v47);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v6);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v54, v4, v53);
  v10(v61, v4, v53);
  v11 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v11, v51);
  v13 = v0[37];
  v14 = v0[33];
  v57 = v0[31];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[19];
  v18 = v0[20];
  if (v12)
  {
    v48 = v0[33];
    v19 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, v62);
    *(v19 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
    log = v11;
    v44 = v13;
    v20 = Error.localizedDescription.getter();
    v21 = v10;
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v15, v17);
    v25 = sub_100141FE4(v20, v23, v62);
    v10 = v21;

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    v26 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 7104878;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v55 = v24;
    v24(v16, v17);
    v30 = sub_100141FE4(v28, v29, v62);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, log, v51, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v19, 0x20u);
    swift_arrayDestroy();

    v44(v48, v57);
  }

  else
  {

    v31 = *(v18 + 8);
    v31(v16, v17);
    v55 = v31;
    v31(v15, v17);
    v13(v14, v57);
  }

  v32 = v0[35];
  v33 = v0[36];
  v35 = v0[33];
  v34 = v0[34];
  v36 = v0[30];
  v46 = v0[29];
  v49 = v0[26];
  v37 = v0[23];
  v52 = v0[22];
  v38 = v0[19];
  v58 = v0[21];
  v60 = v0[18];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v10(v39, v37, v38);
  swift_willThrow();

  v55(v37, v38);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1004D9274(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_1004D7D68();
}

uint64_t sub_1004D931C(uint64_t a1, unint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Logger();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v34);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - v14;
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  if (!a2)
  {
    sub_1003311DC(v2 + 112, v31);
    if (!v33)
    {
      v12 = v31[4];

      sub_10000BB78(v32);
      return v12;
    }

    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Application identifier is undefined. Neither override nor appConfig provided.", v27, 2u);
    }

    (*(v8 + 8))(v12, v34);
    (*(v5 + 104))(v30, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004DB36C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_16;
  }

  if (!isInternalBuild()())
  {
    goto LABEL_8;
  }

  v12 = v31;
  sub_1003311DC(v2 + 112, v31);
  if (!v33)
  {

    sub_10000BB78(v32);
    goto LABEL_9;
  }

  if (v33 == 1 || (v31[0] & 1) == 0)
  {
LABEL_8:

LABEL_9:
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to override application identifier: privileged testing entitlement is missing.", v24, 2u);
    }

    (*(v8 + 8))(v15, v34);
    (*(v5 + 104))(v30, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004DB36C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_16:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v12;
  }

  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136315138;
    v12 = v29;
    *(v20 + 4) = sub_100141FE4(v29, a2, v31);
    _os_log_impl(&_mh_execute_header, v18, v19, "Overriding application identifier with passed parameter: %s", v20, 0xCu);
    sub_10000BB78(v21);

    (*(v8 + 8))(v17, v34);
  }

  else
  {

    (*(v8 + 8))(v17, v34);
    return v29;
  }

  return v12;
}

uint64_t sub_1004D9968(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a2;
  *(v4 + 121) = a1;
  v5 = type metadata accessor for DIPError();
  *(v4 + 152) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error();
  *(v4 + 168) = v7;
  v8 = *(v7 - 8);
  *(v4 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v4 + 208) = v10;
  v11 = *(v10 - 8);
  *(v4 + 216) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v4 + 232) = v13;
  v14 = *(v13 - 8);
  *(v4 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_1004D9B54, v3, 0);
}

uint64_t sub_1004D9B54()
{
  v87 = v0;
  v1 = *(v0 + 272);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 272);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v86[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070EA60, v86);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 280) = v10;
  sub_1003311DC(*(v0 + 144) + 112, v0 + 16);
  if (*(v0 + 120) == 1)
  {
    v11 = *(*(v0 + 144) + 224);
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = sub_1004DA408;
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 121);

    return sub_100336C7C(v15, v13, v14);
  }

  else
  {
    v17 = *(v0 + 264);
    sub_10033A9D0(v0 + 16);
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "MobileDocumentProviderRegistrationSessionProxy privileged setting entitlement is missing.", v20, 2u);
    }

    v21 = *(v0 + 264);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v26 = *(v0 + 208);
    v27 = *(v0 + 152);

    v10(v21, v22);
    (*(v25 + 104))(v24, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004DB36C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v28 = *(v0 + 256);
    v67 = *(v0 + 240);
    v69 = *(v0 + 280);
    v83 = *(v0 + 232);
    v29 = *(v0 + 216);
    v30 = *(v0 + 200);
    v71 = *(v0 + 224);
    v72 = *(v0 + 208);
    v79 = *(v0 + 248);
    v81 = *(v0 + 192);
    v85 = *(v0 + 184);
    v31 = *(v0 + 176);
    v75 = *(v0 + 160);
    v78 = *(v0 + 168);
    v86[0] = 0;
    v86[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v32._countAndFlagsBits = 0xD00000000000002FLL;
    v32._object = 0x800000010071BB40;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0xD00000000000001FLL;
    v33._object = 0x800000010070EA60;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0xD000000000000015;
    v34._object = 0x800000010071BB70;
    String.append(_:)(v34);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v69(v28, v83);
    (*(v29 + 104))(v71, enum case for DIPError.Code.internalError(_:), v72);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100343124(v75);
    defaultLogger()();
    v35 = *(v31 + 16);
    v35(v81, v30, v78);
    v82 = v35;
    v35(v85, v30, v78);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 280);
    v40 = *(v0 + 248);
    v41 = *(v0 + 232);
    v43 = *(v0 + 184);
    v42 = *(v0 + 192);
    v44 = *(v0 + 168);
    v45 = *(v0 + 176);
    if (v38)
    {
      v76 = *(v0 + 232);
      v46 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v46 = 136315650;
      *(v46 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070EA60, v86);
      *(v46 + 12) = 2080;
      sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
      v73 = v39;
      v47 = Error.localizedDescription.getter();
      v70 = v40;
      v49 = v48;
      v68 = v37;
      v50 = *(v45 + 8);
      v50(v42, v44);
      v51 = sub_100141FE4(v47, v49, v86);

      *(v46 + 14) = v51;
      *(v46 + 22) = 2080;
      v52 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
      if (v53)
      {
        v54 = v52;
      }

      else
      {
        v54 = 7104878;
      }

      if (v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = 0xE300000000000000;
      }

      v80 = v50;
      v50(v43, v44);
      v56 = sub_100141FE4(v54, v55, v86);

      *(v46 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v36, v68, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v46, 0x20u);
      swift_arrayDestroy();

      v73(v70, v76);
    }

    else
    {

      v57 = *(v45 + 8);
      v57(v43, v44);
      v80 = v57;
      v57(v42, v44);
      v39(v40, v41);
    }

    v59 = *(v0 + 264);
    v58 = *(v0 + 272);
    v60 = *(v0 + 248);
    v61 = *(v0 + 256);
    v62 = *(v0 + 224);
    v63 = *(v0 + 200);
    v74 = *(v0 + 192);
    v77 = *(v0 + 184);
    v64 = *(v0 + 168);
    v84 = *(v0 + 160);
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
    swift_allocError();
    v82(v65, v63, v64);
    swift_willThrow();

    v80(v63, v64);

    v66 = *(v0 + 8);

    return v66();
  }
}

uint64_t sub_1004DA408()
{
  v2 = *(*v1 + 288);
  v3 = *v1;
  v3[37] = v0;

  if (v0)
  {
    v4 = v3[18];

    return _swift_task_switch(sub_1004DA5C0, v4, 0);
  }

  else
  {
    v6 = v3[33];
    v5 = v3[34];
    v8 = v3[31];
    v7 = v3[32];
    v9 = v3[28];
    v11 = v3[24];
    v10 = v3[25];
    v12 = v3[23];
    v13 = v3[20];

    v14 = v3[1];

    return v14();
  }
}

uint64_t sub_1004DA5C0()
{
  v61 = v0;
  v1 = v0[37];
  v2 = v0[32];
  v43 = v0[30];
  v57 = v0[29];
  v3 = v0[27];
  v45 = v0[28];
  v4 = v0[25];
  v46 = v0[26];
  v48 = v0[35];
  v52 = v0[31];
  v54 = v0[24];
  v59 = v0[23];
  v5 = v0[22];
  v51 = v0[21];
  v6 = v0[20];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x800000010071BB40;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x800000010070EA60;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v48(v2, v57);
  (*(v3 + 104))(v45, enum case for DIPError.Code.internalError(_:), v46);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100343124(v6);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v54, v4, v51);
  v10(v59, v4, v51);
  v11 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v11, v49);
  v13 = v0[35];
  v14 = v0[31];
  v55 = v0[29];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[21];
  v18 = v0[22];
  if (v12)
  {
    v47 = v0[31];
    v19 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070EA60, v60);
    *(v19 + 12) = 2080;
    sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
    log = v11;
    v44 = v13;
    v20 = Error.localizedDescription.getter();
    v21 = v10;
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v15, v17);
    v25 = sub_100141FE4(v20, v23, v60);
    v10 = v21;

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    v26 = MobileDocumentProviderRegistrationSession.Error.debugDescription.getter();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 7104878;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v53 = v24;
    v24(v16, v17);
    v30 = sub_100141FE4(v28, v29, v60);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, log, v49, "MobileDocumentProviderRegistrationSessionProxy %s finished with error: %s. Debug description: %s", v19, 0x20u);
    swift_arrayDestroy();

    v44(v47, v55);
  }

  else
  {

    v31 = *(v18 + 8);
    v31(v16, v17);
    v53 = v31;
    v31(v15, v17);
    v13(v14, v55);
  }

  v33 = v0[33];
  v32 = v0[34];
  v34 = v0[31];
  v35 = v0[32];
  v36 = v0[28];
  v37 = v0[25];
  v50 = v0[24];
  v38 = v0[21];
  v56 = v0[23];
  v58 = v0[20];
  sub_1004DB36C(&qword_100846058, &type metadata accessor for MobileDocumentProviderRegistrationSession.Error);
  swift_allocError();
  v10(v39, v37, v38);
  swift_willThrow();

  v53(v37, v38);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1004DAD04(char a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_10049F7E8;

  return sub_1004D9968(a1, v6, v8);
}

uint64_t sub_1004DAE1C()
{
  sub_10033A9D0(v0 + 112);
  v1 = *(v0 + 224);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004DAE80()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004DAEC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004DAD04(v2, v3, v4, v5);
}

uint64_t sub_1004DAF94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004D9274(v2, v3);
}

uint64_t sub_1004DB040()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004DB088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004D7ACC(v2, v3, v4);
}

uint64_t sub_1004DB140()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_1004D669C(v2, v3, v5, v4);
}

uint64_t sub_1004DB200()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004D5234(v2, v3, v5, v4);
}

uint64_t sub_1004DB2C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004D3C0C(v2, v3);
}

uint64_t sub_1004DB36C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004DB3EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *sub_1004DB454()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8coreidvd28MobileDocumentReaderListener_listener;
  type metadata accessor for MobileDocumentReaderSession();
  static MobileDocumentReaderSession.machServiceName.getter();
  v9 = objc_allocWithZone(NSXPCListener);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithMachServiceName:v10];

  *&v1[v8] = v11;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v21, "init");
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100141FE4(0x292874696E69, 0xE600000000000000, &v20);
    _os_log_impl(&_mh_execute_header, v13, v14, "MobileDocumentReaderListener %s", v15, 0xCu);
    sub_10000BB78(v16);
  }

  (*(v4 + 8))(v7, v3);
  v17 = OBJC_IVAR____TtC8coreidvd28MobileDocumentReaderListener_listener;
  [*&v12[OBJC_IVAR____TtC8coreidvd28MobileDocumentReaderListener_listener] setDelegate:v12];
  [*&v12[v17] activate];

  return v12;
}

id sub_1004DB6DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "MobileDocumentReaderListener %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v4 + 8))(v7, v3);
  [*&v1[OBJC_IVAR____TtC8coreidvd28MobileDocumentReaderListener_listener] invalidate];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_1004DB8E8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderListener Remote proxy delegate did fail with error: %s", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1004DBAB4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderListener %s Connection interrupted", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1004DBC4C(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentReaderListener %s Connection invalidated", v13, 0xCu);
    sub_10000BB78(v14);
  }

  (*(v7 + 8))(v10, v6);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;

  sub_1003E653C(0, 0, v5, &unk_1006E6708, v16);
}

uint64_t sub_1004DBED0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_1004E780C();
}

BOOL sub_1004DBFE4(objc_class *a1)
{
  v2 = type metadata accessor for MobileDocumentReaderEntitlementChecker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = v14;
    v42 = v2;
    v20 = v8;
    v21 = v7;
    v22 = v19;
    v23 = a1;
    v24 = swift_slowAlloc();
    v44[0] = v24;
    *v22 = 136315138;
    *(v22 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, v44);
    _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentReaderListener %s", v22, 0xCu);
    sub_10000BB78(v24);
    a1 = v23;

    v7 = v21;
    v8 = v20;
    v14 = v41;
    v2 = v42;
  }

  v25 = *(v8 + 8);
  v25(v16, v7);
  v44[3] = type metadata accessor for BundleRecordFetcher();
  v44[4] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v44);
  BundleRecordFetcher.init()();
  MobileDocumentReaderEntitlementChecker.init(bundleRecordFetcher:)();
  v45.value.super.isa = a1;
  v26 = MobileDocumentReaderEntitlementChecker.checkInternalEntitlement(connection:)(v45);
  (*(v3 + 8))(v6, v2);
  if (!v26)
  {
    v34 = v43;
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v7;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, v44);
      _os_log_impl(&_mh_execute_header, v35, v36, "MobileDocumentReaderListener %s No valid entitlements present", v38, 0xCu);
      sub_10000BB78(v39);

      v32 = v34;
      v33 = v37;
      goto LABEL_11;
    }

    v32 = v34;
LABEL_10:
    v33 = v7;
    goto LABEL_11;
  }

  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v27, v28))
  {

    v32 = v14;
    goto LABEL_10;
  }

  v29 = v7;
  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v44[0] = v31;
  *v30 = 136315138;
  *(v30 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, v44);
  _os_log_impl(&_mh_execute_header, v27, v28, "MobileDocumentReaderListener %s Internal entitlement present", v30, 0xCu);
  sub_10000BB78(v31);

  v32 = v14;
  v33 = v29;
LABEL_11:
  v25(v32, v33);
  return v26;
}

uint64_t sub_1004DC4C4(objc_class *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v60 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v60 - v12;
  __chkstk_darwin(v11);
  v15 = &v60 - v14;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v60 = v7;
    v20 = a1;
    v21 = v10;
    v22 = v2;
    v23 = v13;
    v24 = v3;
    v25 = v19;
    aBlock = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "MobileDocumentReaderListener %s", v18, 0xCu);
    sub_10000BB78(v25);
    v3 = v24;
    v13 = v23;
    v2 = v22;
    v10 = v21;
    a1 = v20;
    v7 = v60;
  }

  v26 = *(v3 + 8);
  v26(v15, v2);
  if (!sub_1004DBFE4(a1))
  {
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &aBlock);
      _os_log_impl(&_mh_execute_header, v47, v48, "MobileDocumentReaderListener %s Insufficient entitlements, rejecting new connection", v49, 0xCu);
      sub_10000BB78(v50);
    }

    v51 = v7;
    goto LABEL_13;
  }

  v27 = objc_opt_self();
  v28 = [v27 interfaceWithProtocol:&OBJC_PROTOCOL____TtP7CoreIDV29MobileDocumentReaderInterface_];
  [(objc_class *)a1 setExportedInterface:v28];

  v29 = [v27 interfaceWithProtocol:&OBJC_PROTOCOL____TtP7CoreIDV37MobileDocumentReaderDelegateInterface_];
  [(objc_class *)a1 setRemoteObjectInterface:v29];

  v67 = sub_1004DB8E8;
  v68 = 0;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_1004DB3EC;
  v66 = &unk_1008148D8;
  v30 = _Block_copy(&aBlock);
  v31 = [(objc_class *)a1 remoteObjectProxyWithErrorHandler:v30];
  _Block_release(v30);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v32 = sub_100007224(&qword_100846090, &qword_1006E66E8);
  if (!swift_dynamicCast())
  {
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v54 = 136315138;
      v62[0] = v32;
      sub_100007224(&qword_100846098, &unk_1006E66F0);
      v56 = String.init<A>(describing:)();
      v58 = sub_100141FE4(v56, v57, &aBlock);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "MobileDocumentReaderListener Remote proxy could not be cast to %s", v54, 0xCu);
      sub_10000BB78(v55);
    }

    v51 = v10;
LABEL_13:
    v26(v51, v2);
    return 0;
  }

  v33 = v62[0];
  swift_unknownObjectRetain();
  v34._countAndFlagsBits = 0xD00000000000003ALL;
  v34._object = 0x800000010071BD90;
  v35 = NSXPCConnection.isEntitled(_:)(v34);
  v62[3] = type metadata accessor for BundleRecordFetcher();
  v62[4] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v62);
  BundleRecordFetcher.init()();
  v66 = type metadata accessor for MobileDocumentReaderEntitlementChecker();
  v67 = &protocol witness table for MobileDocumentReaderEntitlementChecker;
  sub_100032DBC(&aBlock);
  MobileDocumentReaderEntitlementChecker.init(bundleRecordFetcher:)();
  v36 = type metadata accessor for MobileDocumentReaderFlow();
  v37 = type metadata accessor for MobileDocumentReaderSessionProxy();
  v38 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v38 + 160) = 0u;
  *(v38 + 176) = 0u;
  *(v38 + 128) = 0u;
  *(v38 + 144) = 0u;
  *(v38 + 112) = 0u;
  *(v38 + 192) = v33;
  sub_100020260(&aBlock, v38 + 200);
  *(v38 + 240) = v36;
  *(v38 + 248) = &off_10080E610;
  *(v38 + 256) = v35;
  v61.receiver = v38;
  v61.super_class = v37;
  v39 = [(objc_class *)&v61 init];
  sub_10000BB78(&aBlock);
  [(objc_class *)a1 setExportedObject:v39];
  v67 = sub_1004DBAB4;
  v68 = 0;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_100503A7C;
  v66 = &unk_100814900;
  v40 = _Block_copy(&aBlock);
  [(objc_class *)a1 setInterruptionHandler:v40];
  _Block_release(v40);
  v67 = sub_1004DCD9C;
  v68 = v39;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_100503A7C;
  v66 = &unk_100814928;
  v41 = _Block_copy(&aBlock);
  v42 = v39;

  [(objc_class *)a1 setInvalidationHandler:v41];
  _Block_release(v41);
  [(objc_class *)a1 activate];
  defaultLogger()();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &aBlock);
    _os_log_impl(&_mh_execute_header, v43, v44, "MobileDocumentReaderListener %s Activating new connection", v45, 0xCu);
    sub_10000BB78(v46);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v3 + 8))(v13, v2);
  return 1;
}

uint64_t sub_1004DCD84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004DCDA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004DCDE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100027B9C;

  return sub_1004DBED0();
}

void sub_1004DCEA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_10017314C(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v2 + 56;
    v5 = -1 << *(v2 + 32);
    v6 = _HashTable.startBucket.getter();
    v7 = 0;
    v33 = v2;
    v30 = v2 + 64;
    v31 = v1;
    v32 = v2 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      v11 = v3;
      v34 = v7;
      v35 = *(v2 + 36);
      v12 = (*(v2 + 48) + 24 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      sub_10000B8B8(*v12, v14);

      sub_10000B8B8(v13, v14);

      isa = Data._bridgeToObjectiveC()().super.isa;
      v17 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

      if (!v17)
      {
        goto LABEL_27;
      }

      v36 = SecCertificateRef.derRepresentation.getter();
      v19 = v18;

      sub_10000B90C(v13, v14);

      sub_10000B90C(v13, v14);

      v3 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_10017314C((v20 > 1), v21 + 1, 1);
        v3 = v11;
      }

      v3[2] = v21 + 1;
      v22 = &v3[2 * v21];
      v22[4] = v36;
      v22[5] = v19;
      v4 = v32;
      v2 = v33;
      v8 = 1 << *(v33 + 32);
      if (v6 >= v8)
      {
        goto LABEL_24;
      }

      v23 = *(v32 + 8 * v10);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v35 != *(v33 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v9 = v34;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v30 + 8 * v10);
        while (v26 < (v8 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_100316220(v6, v35, 0);
            v8 = __clz(__rbit64(v28)) + v25;
            goto LABEL_20;
          }
        }

        sub_100316220(v6, v35, 0);
LABEL_20:
        v9 = v34;
      }

      v7 = v9 + 1;
      v6 = v8;
      if (v7 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1004DD174@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  if (*(v1 + 256) == 1)
  {
    swift_beginAccess();
    sub_10000BBC4(v1 + 152, &v12, &unk_1008460F0, &unk_1006E6848);
    if (v13)
    {
      sub_10001F358(&v12, &v14);
      return sub_10001F358(&v14, a1);
    }

    else
    {
      sub_10000BE18(&v12, &unk_1008460F0, &unk_1006E6848);
      v8 = type metadata accessor for MobileDocumentReaderStorageFlow();
      swift_allocObject();
      v9 = v1;
      v10 = sub_10035C568();
      v15 = v8;
      v16 = &off_10080E2C0;
      *&v14 = v10;
      swift_beginAccess();

      sub_1000B2764(&v14, v9 + 152, &unk_1008460F0, &unk_1006E6848);
      result = swift_endAccess();
      a1[3] = v8;
      a1[4] = &off_10080E2C0;
      *a1 = v10;
    }
  }

  else
  {
    (*(v6 + 104))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.missingEntitlement(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1004DD43C(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for DIPError();
  v2[25] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderSession.Error();
  v2[27] = v5;
  v6 = *(v5 - 8);
  v2[28] = v6;
  v7 = *(v6 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v2[31] = v8;
  v9 = *(v8 - 8);
  v2[32] = v9;
  v10 = *(v9 + 64) + 15;
  v2[33] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v2[34] = v11;
  v12 = *(v11 - 8);
  v2[35] = v12;
  v13 = *(v12 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1004DD614, v1, 0);
}

uint64_t sub_1004DD614()
{
  v98 = v0;
  v1 = *(v0 + 312);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 312);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v96 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C630, &v96);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v93 = v10;
  *(v0 + 320) = v10;
  v11 = *(v0 + 192);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v0 + 16, &qword_1008460D8, &qword_1006E6838);
  v12 = *(v0 + 40);
  sub_10000BE18(v0 + 16, &qword_1008460D8, &qword_1006E6838);
  if (v12)
  {
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 248);
    v16 = *(v0 + 200);
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v17._countAndFlagsBits = 0xD00000000000001ELL;
    v17._object = 0x800000010071C650;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0xD000000000000016;
    v18._object = 0x800000010071C630;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0xD00000000000001BLL;
    v19._object = 0x800000010071C670;
    String.append(_:)(v19);
    (*(v14 + 104))(v13, enum case for DIPError.Code.unexpectedDaemonState(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_8:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v33 = *(v0 + 296);
    v78 = *(v0 + 280);
    v79 = *(v0 + 272);
    v34 = *(v0 + 256);
    v35 = *(v0 + 264);
    v81 = *(v0 + 288);
    v82 = *(v0 + 240);
    v36 = *(v0 + 224);
    v85 = *(v0 + 248);
    v86 = *(v0 + 232);
    v84 = *(v0 + 216);
    v80 = *(v0 + 208);
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v37._countAndFlagsBits = 0xD000000000000021;
    v37._object = 0x800000010071C470;
    String.append(_:)(v37);
    v38._countAndFlagsBits = 0xD000000000000016;
    v38._object = 0x800000010071C630;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 0xD000000000000015;
    v39._object = 0x800000010071BB70;
    String.append(_:)(v39);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v93(v33, v79);
    (*(v34 + 104))(v35, enum case for DIPError.Code.internalError(_:), v85);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v40 = v82;
    sub_1003C94CC(v80, v82);
    defaultLogger()();
    v83 = *(v36 + 16);
    v83(v86, v40, v84);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 272);
    v87 = v44;
    v89 = *(v0 + 288);
    v46 = *(v0 + 224);
    v45 = *(v0 + 232);
    v47 = *(v0 + 216);
    if (v43)
    {
      v48 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C630, &v96);
      *(v48 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
      v49 = Error.localizedDescription.getter();
      v51 = v50;
      v92 = *(v46 + 8);
      v92(v45, v47);
      v52 = sub_100141FE4(v49, v51, &v96);

      *(v48 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "MobileDocumentReaderSessionProxy %s finished with error: %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v92 = *(v46 + 8);
      v92(v45, v47);
    }

    v93(v89, v87);
    v54 = *(v0 + 304);
    v53 = *(v0 + 312);
    v55 = *(v0 + 288);
    v56 = *(v0 + 296);
    v57 = *(v0 + 240);
    v88 = *(v0 + 264);
    v90 = *(v0 + 232);
    v58 = *(v0 + 216);
    v94 = *(v0 + 208);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v83(v59, v57, v58);
    swift_willThrow();

    v92(v57, v58);

    v60 = *(v0 + 8);

    return v60();
  }

  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = v20[29];
  sub_10000BA08(v20 + 25, v20[28]);
  *(v0 + 344) = XPCAuditToken.value.getter();
  *(v0 + 352) = v23;
  *(v0 + 360) = v24;
  *(v0 + 368) = v25;
  *(v0 + 376) = 0;
  if ((dispatch thunk of MobileDocumentReaderEntitlementChecking.checkPublicEntitlements(auditToken:)() & 1) == 0)
  {
    v32 = *(v0 + 200);
    (*(*(v0 + 256) + 104))(*(v0 + 264), enum case for DIPError.Code.missingEntitlement(_:), *(v0 + 248));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_8;
  }

  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = XPCAuditToken.value.getter();
  sub_1004F3BE8(v28, v29, v30, v31);
  v62 = *(v0 + 184);
  v95 = *(v0 + 192);
  v64 = v95[30];
  v63 = v95[31];
  v65 = XPCAuditToken.value.getter();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = *(v63 + 8);
  *(v0 + 80) = v64;
  *(v0 + 88) = v63;
  sub_100032DBC((v0 + 56));
  v72(v65, v67, v69, v71, v64, v63);
  sub_100020260(v0 + 56, v0 + 96);
  swift_beginAccess();
  sub_1000B2764(v0 + 96, v11 + 112, &qword_1008460D8, &qword_1006E6838);
  swift_endAccess();
  v73 = swift_allocObject();
  *(v0 + 328) = v73;
  v74 = v95[24];
  swift_unknownObjectWeakInit();
  v75 = *(v63 + 16);

  v91 = (v75 + *v75);
  v76 = v75[1];
  v77 = swift_task_alloc();
  *(v0 + 336) = v77;
  *v77 = v0;
  v77[1] = sub_1004DE0B4;

  return v91(sub_1004F4104, v73, v64, v63);
}

uint64_t sub_1004DE0B4()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return _swift_task_switch(sub_1004DE1E4, v3, 0);
}

uint64_t sub_1004DE1E4()
{
  v22 = v0;
  v1 = v0[38];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[40];
  v6 = v0[38];
  v7 = v0[34];
  v8 = v0[35];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C630, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s returning successfully", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v11 = v0[38];
  v12 = v0[39];
  v14 = v0[36];
  v13 = v0[37];
  v15 = v0[33];
  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[26];
  sub_10000BB78(v0 + 7);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004DE3B0(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderSession.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v3 + 16))(v6, a1, v2);
    v9 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderSessionState());
    v10 = XPCMobileDocumentReaderSessionState.init(value:)();
    [v8 mobileDocumentReaderStateDidChange:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004DE66C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A857C;

  return sub_1004DD43C(v5);
}

uint64_t sub_1004DE730()
{
  v1[19] = v0;
  v2 = type metadata accessor for DIPError();
  v1[20] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentReaderSession.Error();
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v1[27] = v7;
  v8 = *(v7 - 8);
  v1[28] = v8;
  v9 = *(v8 + 64) + 15;
  v1[29] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v1[30] = v10;
  v11 = *(v10 - 8);
  v1[31] = v11;
  v12 = *(v11 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return _swift_task_switch(sub_1004DE914, v0, 0);
}

uint64_t sub_1004DE914()
{
  v77 = v0;
  v1 = *(v0 + 280);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 280);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v76[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, v76);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 288) = v10;
  v11 = *(v0 + 152);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v0 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    v12 = *sub_10000BA08((v0 + 16), *(v0 + 40));
    v13 = swift_task_alloc();
    *(v0 + 296) = v13;
    *v13 = v0;
    v13[1] = sub_1004DF180;

    return sub_100398600();
  }

  else
  {
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 216);
    v18 = *(v0 + 160);
    sub_10000BE18(v0 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v16 + 104))(v15, enum case for DIPError.Code.unexpectedDaemonState(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = *(v0 + 264);
    v59 = *(v0 + 248);
    v60 = *(v0 + 240);
    v62 = *(v0 + 288);
    v20 = *(v0 + 224);
    v21 = *(v0 + 208);
    v64 = *(v0 + 232);
    v67 = *(v0 + 216);
    v70 = *(v0 + 256);
    v73 = *(v0 + 200);
    v75 = *(v0 + 192);
    v22 = *(v0 + 184);
    v68 = *(v0 + 176);
    v23 = *(v0 + 168);
    v76[0] = 0;
    v76[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v24._countAndFlagsBits = 0xD000000000000021;
    v24._object = 0x800000010071C470;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0xD00000000000001ALL;
    v25._object = 0x8000000100711E70;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0xD000000000000015;
    v26._object = 0x800000010071BB70;
    String.append(_:)(v26);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v62(v19, v60);
    (*(v20 + 104))(v64, enum case for DIPError.Code.internalError(_:), v67);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v23, v21);
    defaultLogger()();
    v27 = *(v22 + 16);
    v27(v73, v21, v68);
    v74 = v27;
    v27(v75, v21, v68);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 288);
    v32 = *(v0 + 256);
    v71 = *(v0 + 240);
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    if (v30)
    {
      v65 = *(v0 + 256);
      v37 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v37 = 136315650;
      *(v37 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, v76);
      *(v37 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
      v61 = v31;
      v38 = Error.localizedDescription.getter();
      v40 = v39;
      v58 = v29;
      v41 = *(v36 + 8);
      v41(v33, v35);
      v42 = sub_100141FE4(v38, v40, v76);

      *(v37 + 14) = v42;
      *(v37 + 22) = 2080;
      v43 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v44)
      {
        v45 = v43;
      }

      else
      {
        v45 = 7104878;
      }

      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0xE300000000000000;
      }

      v69 = v41;
      v41(v34, v35);
      v47 = sub_100141FE4(v45, v46, v76);

      *(v37 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v28, v58, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v37, 0x20u);
      swift_arrayDestroy();

      v61(v65, v71);
    }

    else
    {

      v48 = *(v36 + 8);
      v48(v34, v35);
      v69 = v48;
      v48(v33, v35);
      v31(v32, v71);
    }

    v50 = *(v0 + 272);
    v49 = *(v0 + 280);
    v51 = *(v0 + 256);
    v52 = *(v0 + 264);
    v53 = *(v0 + 232);
    v54 = *(v0 + 208);
    v63 = *(v0 + 200);
    v66 = *(v0 + 192);
    v55 = *(v0 + 176);
    v72 = *(v0 + 168);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v74(v56, v54, v55);
    swift_willThrow();

    v69(v54, v55);

    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_1004DF180(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[12] = v3;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = v2;
  v6 = v4[37];
  v7 = *v3;
  v5[38] = v2;

  v8 = v4[19];
  if (v2)
  {
    v9 = sub_1004DF498;
  }

  else
  {
    v9 = sub_1004DF2B4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004DF2B4()
{
  v25 = v0;
  v1 = v0[34];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[36];
  v6 = v0[34];
  v7 = v0[30];
  v8 = v0[31];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s returning successfully", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v11 = v0[14];
  v23 = v0[13];
  v13 = v0[34];
  v12 = v0[35];
  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[29];
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[24];
  v20 = v0[21];

  v21 = v0[1];

  return v21(v23, v11);
}

uint64_t sub_1004DF498()
{
  v60 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[38];
  v2 = v0[33];
  v42 = v0[31];
  v43 = v0[30];
  v44 = v0[36];
  v3 = v0[28];
  v4 = v0[26];
  v47 = v0[29];
  v50 = v0[27];
  v53 = v0[32];
  v56 = v0[25];
  v58 = v0[24];
  v5 = v0[23];
  v51 = v0[22];
  v6 = v0[21];
  v59[0] = 0;
  v59[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v8._object = 0x8000000100711E70;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v44(v2, v43);
  (*(v3 + 104))(v47, enum case for DIPError.Code.internalError(_:), v50);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v6, v4);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v56, v4, v51);
  v57 = v10;
  v10(v58, v4, v51);
  v11 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v11, v48);
  v13 = v0[36];
  v14 = v0[32];
  v54 = v0[30];
  v15 = v0[24];
  v16 = v0[25];
  v17 = v0[22];
  v18 = v0[23];
  if (v12)
  {
    v45 = v0[32];
    v19 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, v59);
    *(v19 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    v41 = v13;
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    v23 = *(v18 + 8);
    v23(v16, v17);
    v24 = sub_100141FE4(v20, v22, v59);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    v25 = MobileDocumentReaderSession.Error.debugDescription.getter();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 7104878;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v52 = v23;
    v23(v15, v17);
    v29 = sub_100141FE4(v27, v28, v59);

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v11, v48, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v19, 0x20u);
    swift_arrayDestroy();

    v41(v45, v54);
  }

  else
  {

    v30 = *(v18 + 8);
    v30(v15, v17);
    v52 = v30;
    v30(v16, v17);
    v13(v14, v54);
  }

  v32 = v0[34];
  v31 = v0[35];
  v33 = v0[32];
  v34 = v0[33];
  v35 = v0[29];
  v36 = v0[26];
  v46 = v0[25];
  v49 = v0[24];
  v37 = v0[22];
  v55 = v0[21];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v57(v38, v36, v37);
  swift_willThrow();

  v52(v36, v37);

  v39 = v0[1];

  return v39();
}

uint64_t sub_1004DFBB0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004938F4;

  return sub_1004DE730();
}

uint64_t sub_1004DFC58(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for DIPError();
  v2[17] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderSession.Error();
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v7 = *(v6 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v2[24] = v8;
  v9 = *(v8 - 8);
  v2[25] = v9;
  v10 = *(v9 + 64) + 15;
  v2[26] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderConfiguration();
  v2[27] = v11;
  v12 = *(v11 - 8);
  v2[28] = v12;
  v13 = *(v12 + 64) + 15;
  v2[29] = swift_task_alloc();
  v14 = type metadata accessor for MobileDocumentReaderConfigurationResponse();
  v2[30] = v14;
  v15 = *(v14 - 8);
  v2[31] = v15;
  v16 = *(v15 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v2[35] = v17;
  v18 = *(v17 - 8);
  v2[36] = v18;
  v19 = *(v18 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_1004DFF0C, v1, 0);
}

uint64_t sub_1004DFF0C()
{
  v86 = v0;
  v1 = *(v0 + 320);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 320);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v85[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, v85);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 328) = v10;
  v11 = *(v0 + 128);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v0 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v0 + 80))
  {
    v12 = *(v0 + 232);
    v13 = *(v0 + 120);
    sub_10001F358((v0 + 56), v0 + 16);
    v14 = sub_10000BA08((v0 + 16), *(v0 + 40));
    XPCMobileDocumentReaderConfiguration.value.getter();
    v15 = *v14;
    v16 = swift_task_alloc();
    *(v0 + 336) = v16;
    *v16 = v0;
    v16[1] = sub_1004E0800;
    v17 = *(v0 + 272);
    v18 = *(v0 + 232);

    return sub_100398EF0(v17, v18);
  }

  else
  {
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 192);
    v23 = *(v0 + 136);
    sub_10000BE18(v0 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v21 + 104))(v20, enum case for DIPError.Code.unexpectedDaemonState(_:), v22);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v24 = *(v0 + 304);
    v63 = *(v0 + 288);
    v66 = *(v0 + 328);
    v82 = *(v0 + 280);
    v25 = *(v0 + 200);
    v26 = *(v0 + 184);
    v69 = *(v0 + 208);
    v71 = *(v0 + 192);
    v77 = *(v0 + 296);
    v80 = *(v0 + 176);
    v84 = *(v0 + 168);
    v27 = *(v0 + 160);
    v74 = *(v0 + 144);
    v75 = *(v0 + 152);
    v85[0] = 0;
    v85[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v28._countAndFlagsBits = 0xD000000000000021;
    v28._object = 0x800000010071C470;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 0x2865726170657270;
    v29._object = 0xEE00293A68746977;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0xD000000000000015;
    v30._object = 0x800000010071BB70;
    String.append(_:)(v30);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v66(v24, v82);
    (*(v25 + 104))(v69, enum case for DIPError.Code.internalError(_:), v71);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v74, v26);
    defaultLogger()();
    v31 = *(v27 + 16);
    v31(v80, v26, v75);
    v81 = v31;
    v31(v84, v26, v75);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 328);
    v36 = *(v0 + 296);
    v78 = *(v0 + 280);
    v38 = *(v0 + 168);
    v37 = *(v0 + 176);
    v40 = *(v0 + 152);
    v39 = *(v0 + 160);
    if (v34)
    {
      v72 = *(v0 + 296);
      v41 = swift_slowAlloc();
      v85[0] = swift_slowAlloc();
      *v41 = 136315650;
      *(v41 + 4) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, v85);
      *(v41 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
      v42 = Error.localizedDescription.getter();
      v67 = v35;
      v44 = v43;
      v64 = v33;
      v45 = *(v39 + 8);
      v45(v37, v40);
      v46 = sub_100141FE4(v42, v44, v85);

      *(v41 + 14) = v46;
      *(v41 + 22) = 2080;
      v47 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v48)
      {
        v49 = v47;
      }

      else
      {
        v49 = 7104878;
      }

      if (v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = 0xE300000000000000;
      }

      v76 = v45;
      v45(v38, v40);
      v51 = sub_100141FE4(v49, v50, v85);

      *(v41 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v32, v64, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v41, 0x20u);
      swift_arrayDestroy();

      v67(v72, v78);
    }

    else
    {

      v52 = *(v39 + 8);
      v52(v38, v40);
      v76 = v52;
      v52(v37, v40);
      v35(v36, v78);
    }

    v53 = *(v0 + 312);
    v54 = *(v0 + 320);
    v55 = *(v0 + 296);
    v56 = *(v0 + 304);
    v57 = *(v0 + 272);
    v62 = *(v0 + 264);
    v65 = *(v0 + 256);
    v68 = *(v0 + 232);
    v70 = *(v0 + 208);
    v58 = *(v0 + 184);
    v73 = *(v0 + 176);
    v79 = *(v0 + 168);
    v59 = *(v0 + 152);
    v83 = *(v0 + 144);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v81(v60, v58, v59);
    swift_willThrow();

    v76(v58, v59);

    v61 = *(v0 + 8);

    return v61();
  }
}

uint64_t sub_1004E0800()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  v8 = v2[16];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_1004E0D0C;
  }

  else
  {
    v9 = sub_1004E097C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004E097C()
{
  v45 = v0;
  v1 = v0[39];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[30];
  v5 = v0[31];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v43 = *(v5 + 16);
  v43(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  v10 = v0[39];
  v11 = v0[35];
  v41 = v0[36];
  v12 = v0[33];
  if (v8)
  {
    v37 = v0[35];
    v13 = v0[31];
    v14 = v0[32];
    v35 = v0[39];
    v15 = v0[30];
    v34 = v0[41];
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, &v44);
    *(v16 + 12) = 2080;
    v43(v14, v12, v15);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v40 = *(v13 + 8);
    v40(v12, v15);
    v20 = sub_100141FE4(v17, v19, &v44);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentReaderSessionProxy %s returning successfully with response: %s", v16, 0x16u);
    swift_arrayDestroy();

    v34(v35, v37);
  }

  else
  {
    v22 = v0[30];
    v21 = v0[31];

    v40 = *(v21 + 8);
    v40(v12, v22);
    v9(v10, v11);
  }

  v23 = v0[39];
  v24 = v0[40];
  v26 = v0[37];
  v25 = v0[38];
  v27 = v0[34];
  v28 = v0[30];
  v29 = v0[26];
  v36 = v0[23];
  v38 = v0[22];
  v39 = v0[21];
  v42 = v0[18];
  v43(v0[32], v27, v28);
  v30 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderConfigurationResponse());
  v31 = XPCMobileDocumentReaderConfigurationResponse.init(value:)();
  v40(v27, v28);

  v32 = v0[1];

  return v32(v31);
}

uint64_t sub_1004E0D0C()
{
  v66 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[43];
  v2 = v0[38];
  v49 = v0[36];
  v52 = v0[41];
  v62 = v0[35];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v58 = v0[37];
  v60 = v0[22];
  v64 = v0[21];
  v6 = v0[20];
  v54 = v0[24];
  v57 = v0[19];
  v7 = v0[18];
  v65[0] = 0;
  v65[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x800000010071C470;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x2865726170657270;
  v9._object = 0xEE00293A68746977;
  String.append(_:)(v9);
  v10._object = 0x800000010071BB70;
  v10._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v10);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v52(v2, v62);
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v54);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v7, v5);
  defaultLogger()();
  v11 = *(v6 + 16);
  v11(v60, v5, v57);
  v61 = v11;
  v11(v64, v5, v57);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[41];
  v16 = v0[37];
  v17 = v0[35];
  v19 = v0[21];
  v18 = v0[22];
  v21 = v0[19];
  v20 = v0[20];
  if (v14)
  {
    v55 = v0[35];
    v22 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, v65);
    *(v22 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    v47 = v16;
    v50 = v15;
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    v45 = v13;
    v26 = *(v20 + 8);
    v26(v18, v21);
    v27 = sub_100141FE4(v23, v25, v65);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2080;
    v28 = MobileDocumentReaderSession.Error.debugDescription.getter();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = 7104878;
    }

    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v59 = v26;
    v26(v19, v21);
    v32 = sub_100141FE4(v30, v31, v65);

    *(v22 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v12, v45, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v22, 0x20u);
    swift_arrayDestroy();

    v50(v47, v55);
  }

  else
  {

    v33 = *(v20 + 8);
    v33(v19, v21);
    v59 = v33;
    v33(v18, v21);
    v15(v16, v17);
  }

  v34 = v0[39];
  v35 = v0[40];
  v36 = v0[37];
  v37 = v0[38];
  v38 = v0[34];
  v44 = v0[33];
  v46 = v0[32];
  v48 = v0[29];
  v51 = v0[26];
  v39 = v0[23];
  v53 = v0[22];
  v56 = v0[21];
  v40 = v0[19];
  v63 = v0[18];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v61(v41, v39, v40);
  swift_willThrow();

  v59(v39, v40);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1004E14BC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_1004DFC58(v5);
}

uint64_t sub_1004E1580(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for DIPError();
  v3[18] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderSession.Error();
  v3[20] = v6;
  v7 = *(v6 - 8);
  v3[21] = v7;
  v8 = *(v7 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentReaderMerchant();
  v3[25] = v9;
  v10 = *(v9 - 8);
  v3[26] = v10;
  v11 = *(v10 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  v3[29] = v12;
  v13 = *(v12 - 8);
  v3[30] = v13;
  v14 = *(v13 + 64) + 15;
  v3[31] = swift_task_alloc();
  v15 = sub_100007224(&qword_1008460E8, &qword_1006E6840);
  v3[32] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v3[37] = v17;
  v18 = *(v17 - 8);
  v3[38] = v18;
  v19 = *(v18 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return _swift_task_switch(sub_1004E1830, v2, 0);
}

uint64_t sub_1004E1830()
{
  v87 = v0;
  v1 = *(v0 + 336);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 336);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v86[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, v86);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 344) = v10;
  v11 = *(v0 + 136);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v0 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    v12 = *sub_10000BA08((v0 + 16), *(v0 + 40));
    v13 = swift_task_alloc();
    *(v0 + 352) = v13;
    *v13 = v0;
    v13[1] = sub_1004E2134;
    v14 = *(v0 + 288);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);

    return sub_100399E00(v14, v15, v16);
  }

  else
  {
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);
    v21 = *(v0 + 144);
    sub_10000BE18(v0 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v19 + 104))(v18, enum case for DIPError.Code.unexpectedDaemonState(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v22 = *(v0 + 320);
    v70 = *(v0 + 304);
    v73 = *(v0 + 344);
    v83 = *(v0 + 296);
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    v75 = *(v0 + 232);
    v25 = *(v0 + 192);
    v79 = *(v0 + 312);
    v81 = *(v0 + 184);
    v26 = *(v0 + 168);
    v85 = *(v0 + 176);
    v27 = *(v0 + 152);
    v78 = *(v0 + 160);
    v86[0] = 0;
    v86[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v28._countAndFlagsBits = 0xD000000000000021;
    v28._object = 0x800000010071C470;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 0x746E61686372656DLL;
    v29._object = 0xEE00293A726F6628;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0xD000000000000015;
    v30._object = 0x800000010071BB70;
    String.append(_:)(v30);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v73(v22, v83);
    (*(v24 + 104))(v23, enum case for DIPError.Code.internalError(_:), v75);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v27, v25);
    defaultLogger()();
    v31 = *(v26 + 16);
    v31(v81, v25, v78);
    v82 = v31;
    v31(v85, v25, v78);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 344);
    v36 = *(v0 + 312);
    v37 = *(v0 + 296);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v41 = *(v0 + 160);
    v40 = *(v0 + 168);
    if (v34)
    {
      v76 = *(v0 + 296);
      v42 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v42 = 136315650;
      *(v42 + 4) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, v86);
      *(v42 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
      v68 = v36;
      v71 = v35;
      v43 = Error.localizedDescription.getter();
      v45 = v44;
      v66 = v33;
      v46 = *(v40 + 8);
      v46(v38, v41);
      v47 = sub_100141FE4(v43, v45, v86);

      *(v42 + 14) = v47;
      *(v42 + 22) = 2080;
      v48 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v49)
      {
        v50 = v48;
      }

      else
      {
        v50 = 7104878;
      }

      if (v49)
      {
        v51 = v49;
      }

      else
      {
        v51 = 0xE300000000000000;
      }

      v80 = v46;
      v46(v39, v41);
      v52 = sub_100141FE4(v50, v51, v86);

      *(v42 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v32, v66, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v42, 0x20u);
      swift_arrayDestroy();

      v71(v68, v76);
    }

    else
    {

      v53 = *(v40 + 8);
      v53(v39, v41);
      v80 = v53;
      v53(v38, v41);
      v35(v36, v37);
    }

    v54 = *(v0 + 328);
    v55 = *(v0 + 336);
    v57 = *(v0 + 312);
    v56 = *(v0 + 320);
    v58 = *(v0 + 288);
    v63 = *(v0 + 280);
    v64 = *(v0 + 272);
    v65 = *(v0 + 264);
    v67 = *(v0 + 248);
    v69 = *(v0 + 224);
    v72 = *(v0 + 216);
    v59 = *(v0 + 192);
    v74 = *(v0 + 184);
    v77 = *(v0 + 176);
    v60 = *(v0 + 160);
    v84 = *(v0 + 152);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v82(v61, v59, v60);
    swift_willThrow();

    v80(v59, v60);

    v62 = *(v0 + 8);

    return v62();
  }
}

uint64_t sub_1004E2134()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_1004E267C;
  }

  else
  {
    v6 = sub_1004E2260;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004E2260()
{
  v50 = v0;
  v1 = v0[41];
  v3 = v0[35];
  v2 = v0[36];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  sub_10000BBC4(v2, v3, &qword_1008460E8, &qword_1006E6840);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  v8 = v0[41];
  v9 = v0[37];
  v10 = v0[38];
  v11 = v0[35];
  if (v6)
  {
    v12 = v0[34];
    v13 = v0[32];
    v47 = v0[37];
    v14 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, &v49);
    *(v14 + 12) = 2080;
    v44 = v7;
    sub_10000BBC4(v11, v12, &qword_1008460E8, &qword_1006E6840);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_10000BE18(v11, &qword_1008460E8, &qword_1006E6840);
    v18 = sub_100141FE4(v15, v17, &v49);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentReaderSessionProxy %s returning successfully with response: %s", v14, 0x16u);
    swift_arrayDestroy();

    v44(v8, v47);
  }

  else
  {

    sub_10000BE18(v11, &qword_1008460E8, &qword_1006E6840);
    v7(v8, v9);
  }

  v19 = v0[33];
  v20 = v0[25];
  v21 = v0[26];
  sub_10000BBC4(v0[36], v19, &qword_1008460E8, &qword_1006E6840);
  v22 = (*(v21 + 48))(v19, 1, v20);
  v23 = v0[36];
  if (v22 == 1)
  {
    sub_10000BE18(v0[36], &qword_1008460E8, &qword_1006E6840);
    v48 = 0;
  }

  else
  {
    v24 = v0[27];
    v25 = v0[28];
    v26 = v0[25];
    v27 = v0[26];
    (*(v27 + 32))(v25, v0[33], v26);
    (*(v27 + 16))(v24, v25, v26);
    v28 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderMerchant());
    v48 = XPCMobileDocumentReaderMerchant.init(value:)();
    (*(v27 + 8))(v25, v26);
    sub_10000BE18(v23, &qword_1008460E8, &qword_1006E6840);
  }

  v30 = v0[41];
  v29 = v0[42];
  v32 = v0[39];
  v31 = v0[40];
  v34 = v0[35];
  v33 = v0[36];
  v36 = v0[33];
  v35 = v0[34];
  v37 = v0[31];
  v38 = v0[28];
  v41 = v0[27];
  v42 = v0[24];
  v43 = v0[23];
  v45 = v0[22];
  v46 = v0[19];

  v39 = v0[1];

  return v39(v48);
}