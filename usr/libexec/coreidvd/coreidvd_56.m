uint64_t sub_1005E53C0()
{
  sub_10000BB78((v0 + 288));
  v38 = *(v0 + 424);
  v28 = *(v0 + 400);
  v33 = *(v0 + 384);
  v34 = *(v0 + 376);
  v35 = *(v0 + 392);
  v36 = *(v0 + 368);
  v37 = *(v0 + 360);
  v30 = *(v0 + 344);
  v31 = *(v0 + 352);
  v32 = *(v0 + 336);
  v1 = "config-overrides";
  v25 = *(v0 + 328);
  v26 = *(v0 + 320);
  if (*(v0 + 432) == 2)
  {
    v1 = "nNotificationRequest";
  }

  v29 = v1 | 0x8000000000000000;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v27 = 2 * v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BFF90;
  v6 = v5 + v4;
  v7 = v2;
  v24 = v2;
  v8 = (v5 + v4 + *(v2 + 48));
  v9 = enum case for DIPError.PropertyKey.conversationID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v6, v9, v10);
  v12 = *(v25 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v13 = *(v25 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v12;
  v8[1] = v13;
  v14 = (v6 + v3 + *(v7 + 48));
  v11();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v15 = *(v0 + 168);
  v16 = *(v0 + 232);
  v17 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v17;
  *(v0 + 144) = *(v0 + 280);
  v18 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v18;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v16;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v15;
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);

  sub_1000AE6AC(v0 + 16);
  v14[3] = &type metadata for String;
  v14[4] = &protocol witness table for String;
  *v14 = v19;
  v14[1] = v20;
  v21 = (v6 + v27 + *(v24 + 48));
  v11();
  v21[3] = &type metadata for String;
  v21[4] = &protocol witness table for String;
  *v21 = 0xD000000000000018;
  v21[1] = v29;
  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v30 + 104))(v31, enum case for DIPError.Code.internalError(_:), v32);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v33 + 8))(v35, v34);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1005E5868(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v4 = type metadata accessor for ContinuousClock();
  v3[45] = v4;
  v5 = *(v4 - 8);
  v3[46] = v5;
  v6 = *(v5 + 64) + 15;
  v3[47] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[48] = v7;
  v8 = *(v7 - 8);
  v3[49] = v8;
  v9 = *(v8 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v3[52] = v10;
  v11 = *(v10 - 8);
  v3[53] = v11;
  v12 = *(v11 + 64) + 15;
  v3[54] = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v14 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  v3[57] = v15;
  v16 = *(v15 - 8);
  v3[58] = v16;
  v17 = *(v16 + 64) + 15;
  v3[59] = swift_task_alloc();

  return _swift_task_switch(sub_1005E5AB0, 0, 0);
}

uint64_t sub_1005E5AB0()
{
  v1 = v0[59];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[43];
  static DaemonSignposts.identityLivenessConfigRequest.getter();
  DIPSignpost.init(_:)();
  v5 = sub_1005FBCE8();
  v0[60] = v5;
  v0[37] = &type metadata for IdentityProofingLivenessConfigRequest;
  v6 = swift_allocObject();
  v0[34] = v6;
  v7 = v4[1];
  v6[1] = *v4;
  v6[2] = v7;
  v8 = v4[5];
  v10 = v4[2];
  v9 = v4[3];
  v6[5] = v4[4];
  v6[6] = v8;
  v6[3] = v10;
  v6[4] = v9;
  v11 = v4[9];
  v13 = v4[6];
  v12 = v4[7];
  v6[9] = v4[8];
  v6[10] = v11;
  v6[7] = v13;
  v6[8] = v12;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  sub_1000B16B4(v4, (v0 + 2));
  v15 = swift_task_alloc();
  v0[61] = v15;
  *v15 = v0;
  v15[1] = sub_1005E5C40;
  v16 = v0[55];
  v17 = v0[44];

  return sub_1005F4FEC((v0 + 34), 0xD000000000000014, 0x8000000100725080, v5, 0, v16);
}

uint64_t sub_1005E5C40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[61];
  v8 = (*v4)[60];
  v11 = *v4;
  v6[62] = a1;
  v6[63] = a2;
  v6[64] = v3;

  sub_10000BE18(v6[55], &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v9 = sub_1005E7700;
  }

  else
  {
    sub_10000BB78(v6 + 34);

    v9 = sub_1005E5DC8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005E5DC8()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 496);
  v4 = *(v0 + 336);
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  sub_1005FEAD4(&qword_1008369C0, type metadata accessor for IdentityProofingLivenessConfigResponseV2);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {

    v9 = *(v0 + 496);
    v8 = *(v0 + 504);
    v10 = *(v0 + 416);
    v53 = enum case for DIPError.Code.internalError(_:);
    (*(*(v0 + 424) + 104))(*(v0 + 432));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v9, v8);
    v45 = *(v0 + 464);
    v46 = *(v0 + 456);
    v47 = *(v0 + 472);
    v48 = *(v0 + 448);
    v49 = *(v0 + 440);
    v42 = *(v0 + 424);
    v43 = *(v0 + 432);
    v44 = *(v0 + 416);
    v50 = *(v0 + 408);
    v51 = *(v0 + 376);
    v52 = *(v0 + 400);
    v40 = *(v0 + 352);
    v41 = *(v0 + 344);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v11 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v12 = *(*(v11 - 8) + 72);
    v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006BFF90;
    v15 = v14 + v13;
    v16 = (v14 + v13 + *(v11 + 48));
    v17 = enum case for DIPError.PropertyKey.conversationID(_:);
    v18 = type metadata accessor for DIPError.PropertyKey();
    v19 = *(*(v18 - 8) + 104);
    v19(v15, v17, v18);
    v20 = *(v40 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v21 = *(v40 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    *v16 = v20;
    v16[1] = v21;
    v22 = v15 + v12 + *(v11 + 48);
    v19(v15 + v12, enum case for DIPError.PropertyKey.requestID(_:), v18);
    *(v0 + 304) = *(v41 + 16);
    *(v22 + 24) = &type metadata for String;
    *(v22 + 32) = &protocol witness table for String;
    *v22 = *(v41 + 16);
    v23 = (v15 + 2 * v12 + *(v11 + 48));
    v19(v15 + 2 * v12, enum case for DIPError.PropertyKey.serverURL(_:), v18);
    v23[3] = &type metadata for String;
    v23[4] = &protocol witness table for String;
    *v23 = 0xD000000000000014;
    v23[1] = 0x8000000100725080;
    swift_errorRetain();

    sub_10004D7A0(v0 + 304, v0 + 320);
    sub_10003C9C0(v14);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v42 + 104))(v43, v53, v44);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v45 + 8))(v47, v46);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 336);
    v27 = *(v0 + 344);

    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = v26[1];
    *(v0 + 176) = *v26;
    *(v0 + 192) = v32;
    v33 = v26[2];
    v34 = v26[3];
    v35 = v26[5];
    *(v0 + 240) = v26[4];
    *(v0 + 256) = v35;
    *(v0 + 208) = v33;
    *(v0 + 224) = v34;
    v36 = v27[10];
    v37 = v27[11];
    v38 = swift_task_alloc();
    *(v0 + 520) = v38;
    *v38 = v0;
    v38[1] = sub_1005E6460;
    v39 = *(v0 + 352);

    return sub_1005F7D7C(v29, v28, v30, v31, v0 + 176, v36, v37);
  }
}

uint64_t sub_1005E6460(uint64_t a1)
{
  v2 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = a1;

  return _swift_task_switch(sub_1005E6560, 0, 0);
}

uint64_t sub_1005E6DEC()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  (*(v2[46] + 8))(v2[47], v2[45]);
  if (v0)
  {
    v5 = sub_1005E71A4;
  }

  else
  {
    v5 = sub_1005E6F54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005E6F54()
{
  v33 = v0;
  v1 = v0[50];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[68];
  if (v4)
  {
    v6 = v0[67];
    v8 = v0[62];
    v7 = v0[63];
    v9 = v0[58];
    v30 = v0[57];
    v31 = v0[59];
    v27 = v0[49];
    v28 = v0[48];
    v29 = v0[50];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0xD000000000000026, 0x80000001007250D0, &v32);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s force delay %fs - end", v10, 0x16u);
    sub_10000BB78(v11);

    sub_10000B90C(v8, v7);

    v5(v29, v28);
    (*(v9 + 8))(v31, v30);
  }

  else
  {
    v13 = v0[58];
    v12 = v0[59];
    v14 = v0[57];
    v16 = v0[49];
    v15 = v0[50];
    v17 = v0[48];
    sub_10000B90C(v0[62], v0[63]);

    v5(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v18 = v0[59];
  v19 = v0[55];
  v20 = v0[56];
  v21 = v0[54];
  v23 = v0[50];
  v22 = v0[51];
  v24 = v0[47];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1005E71A4()
{
  sub_1005FEB84(*(v0 + 336), type metadata accessor for IdentityProofingLivenessConfigResponseV2);
  v1 = *(v0 + 560);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 416);
  v33 = enum case for DIPError.Code.internalError(_:);
  (*(*(v0 + 424) + 104))(*(v0 + 432));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000B90C(v3, v2);
  v25 = *(v0 + 464);
  v26 = *(v0 + 456);
  v27 = *(v0 + 472);
  v28 = *(v0 + 448);
  v29 = *(v0 + 440);
  v22 = *(v0 + 424);
  v23 = *(v0 + 432);
  v24 = *(v0 + 416);
  v30 = *(v0 + 408);
  v31 = *(v0 + 376);
  v32 = *(v0 + 400);
  v20 = *(v0 + 352);
  v21 = *(v0 + 344);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BFF90;
  v9 = v8 + v7;
  v10 = (v8 + v7 + *(v5 + 48));
  v11 = enum case for DIPError.PropertyKey.conversationID(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  v13 = *(*(v12 - 8) + 104);
  v13(v9, v11, v12);
  v14 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v15 = *(v20 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = v14;
  v10[1] = v15;
  v16 = v9 + v6 + *(v5 + 48);
  v13(v9 + v6, enum case for DIPError.PropertyKey.requestID(_:), v12);
  *(v0 + 304) = *(v21 + 16);
  *(v16 + 24) = &type metadata for String;
  *(v16 + 32) = &protocol witness table for String;
  *v16 = *(v21 + 16);
  v17 = (v9 + 2 * v6 + *(v5 + 48));
  v13(v9 + 2 * v6, enum case for DIPError.PropertyKey.serverURL(_:), v12);
  v17[3] = &type metadata for String;
  v17[4] = &protocol witness table for String;
  *v17 = 0xD000000000000014;
  v17[1] = 0x8000000100725080;
  swift_errorRetain();

  sub_10004D7A0(v0 + 304, v0 + 320);
  sub_10003C9C0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v22 + 104))(v23, v33, v24);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v25 + 8))(v27, v26);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1005E7700()
{
  sub_10000BB78((v0 + 272));
  v18 = *(v0 + 512);
  v22 = *(v0 + 464);
  v23 = *(v0 + 456);
  v24 = *(v0 + 472);
  v25 = *(v0 + 448);
  v26 = *(v0 + 440);
  v19 = *(v0 + 424);
  v20 = *(v0 + 432);
  v21 = *(v0 + 416);
  v27 = *(v0 + 408);
  v28 = *(v0 + 376);
  v29 = *(v0 + 400);
  v16 = *(v0 + 352);
  v17 = *(v0 + 344);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v15 = 2 * v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BFF90;
  v5 = (v4 + v3 + *(v1 + 48));
  v6 = enum case for DIPError.PropertyKey.conversationID(_:);
  v7 = type metadata accessor for DIPError.PropertyKey();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v4 + v3, v6, v7);
  v9 = *(v16 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v10 = *(v16 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v5[3] = &type metadata for String;
  v5[4] = &protocol witness table for String;
  *v5 = v9;
  v5[1] = v10;
  v11 = v4 + v3 + v2 + *(v1 + 48);
  v8();
  *(v0 + 304) = *(v17 + 16);
  *(v11 + 24) = &type metadata for String;
  *(v11 + 32) = &protocol witness table for String;
  *v11 = *(v17 + 16);
  v12 = (v4 + v3 + v15 + *(v1 + 48));
  v8();
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = 0xD000000000000014;
  v12[1] = 0x8000000100725080;
  swift_errorRetain();

  sub_10004D7A0(v0 + 304, v0 + 320);
  sub_10003C9C0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v19 + 104))(v20, enum case for DIPError.Code.internalError(_:), v21);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v22 + 8))(v24, v23);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1005E7B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 872) = v8;
  *(v9 + 864) = a8;
  *(v9 + 856) = a7;
  *(v9 + 1056) = a6;
  *(v9 + 848) = a5;
  *(v9 + 840) = a4;
  *(v9 + 832) = a3;
  *(v9 + 824) = a2;
  *(v9 + 816) = a1;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 880) = v10;
  v11 = *(v10 - 8);
  *(v9 + 888) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 896) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v9 + 904) = v13;
  v14 = *(v13 - 8);
  *(v9 + 912) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 920) = swift_task_alloc();
  v16 = *(*(type metadata accessor for IdentityProofingRequestV2(0) - 8) + 64) + 15;
  *(v9 + 928) = swift_task_alloc();
  v17 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v9 + 936) = swift_task_alloc();
  v18 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v9 + 944) = swift_task_alloc();
  v19 = type metadata accessor for DIPSignpost();
  *(v9 + 952) = v19;
  v20 = *(v19 - 8);
  *(v9 + 960) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 968) = swift_task_alloc();

  return _swift_task_switch(sub_1005E7D84, 0, 0);
}

uint64_t sub_1005E7D84()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 824);
  static DaemonSignposts.identityProofingRequestV2.getter();
  DIPSignpost.init(_:)();
  if (v4 == 2)
  {
    v6 = "entity proofing response";
  }

  else
  {
    v6 = "/1/getPendingCommands/ready";
  }

  v7 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  *(v0 + 976) = v7;
  *(v0 + 808) = v7;
  v8 = sub_100032DBC((v0 + 784));
  (*(*(v7 - 8) + 16))(v8, v5, v7);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = swift_task_alloc();
  *(v0 + 984) = v10;
  *v10 = v0;
  v10[1] = sub_1005E7F24;
  v11 = *(v0 + 936);
  v12 = *(v0 + 872);
  v13 = *(v0 + 848);

  return sub_1005F4FEC(v0 + 784, 0xD000000000000016, v6 | 0x8000000000000000, v13, 0, v11);
}

uint64_t sub_1005E7F24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *(*v4 + 984);
  v10 = *v4;
  *(v6 + 992) = a1;
  *(v6 + 1000) = a2;
  *(v6 + 1008) = v3;

  *(v6 + 1056);
  sub_10000BE18(*(v6 + 936), &unk_100844540, &unk_1006BFBC0);

  if (v3)
  {
    v8 = sub_1005E9290;
  }

  else
  {
    sub_10000BB78((v6 + 784));

    v8 = sub_1005E80E0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005E80E0()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 816);
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  *(v0 + 1016) = sub_100007224(&qword_10083DBF8, &unk_1006DB6A0);
  sub_1000BA30C(&qword_1008496E0, &qword_10083DBF8, &unk_1006DB6A0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v8 = *(v0 + 888);

    v67 = enum case for DIPError.Code.internalError(_:);
    v9 = *(v0 + 1000);
    v10 = *(v0 + 992);
    v11 = *(v0 + 880);
    (*(v8 + 104))(*(v0 + 896));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v10, v9);
    v56 = *(v0 + 976);
    v61 = *(v0 + 960);
    v62 = *(v0 + 952);
    v63 = *(v0 + 968);
    v64 = *(v0 + 944);
    v65 = *(v0 + 936);
    v68 = *(v0 + 928);
    v66 = *(v0 + 920);
    v59 = *(v0 + 888);
    v60 = *(v0 + 896);
    v58 = *(v0 + 880);
    v53 = *(v0 + 872);
    v12 = "/1/getPendingCommands/ready";
    v55 = *(v0 + 824);
    if (*(v0 + 1056) == 2)
    {
      v12 = "entity proofing response";
    }

    v57 = v12 | 0x8000000000000000;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v13 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v14 = *(*(v13 - 8) + 72);
    v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
    v54 = 2 * v14;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006BFF90;
    v17 = v16 + v15;
    v18 = (v17 + *(v13 + 48));
    v19 = enum case for DIPError.PropertyKey.conversationID(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    v21 = *(*(v20 - 8) + 104);
    v21(v17, v19, v20);
    v22 = *(v53 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v23 = *(v53 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v18[3] = &type metadata for String;
    v18[4] = &protocol witness table for String;
    *v18 = v22;
    v18[1] = v23;
    v24 = (v17 + v14 + *(v13 + 48));
    v21(v17 + v14, enum case for DIPError.PropertyKey.requestID(_:), v20);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v26 = *(v68 + 16);
    v25 = *(v68 + 24);

    sub_1005FEB84(v68, type metadata accessor for IdentityProofingRequestV2);
    v24[3] = &type metadata for String;
    v24[4] = &protocol witness table for String;
    *v24 = v26;
    v24[1] = v25;
    v27 = (v17 + v54 + *(v13 + 48));
    v21(v17 + v54, enum case for DIPError.PropertyKey.serverURL(_:), v20);
    v27[3] = &type metadata for String;
    v27[4] = &protocol witness table for String;
    *v27 = 0xD000000000000016;
    v27[1] = v57;
    sub_10003C9C0(v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v59 + 104))(v60, v67, v58);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v61 + 8))(v63, v62);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v30 = *(v0 + 976);
    v31 = *(v0 + 928);
    v32 = *(v0 + 864);
    v33 = *(v0 + 824);
    v34 = *(v0 + 816);

    JWSSignedJSON.payload.getter();
    v35 = *v31;
    v36 = v31[1];
    *(v0 + 1024) = v36;
    v37 = v31[2];
    v38 = v31[3];
    *(v0 + 1032) = v38;

    sub_1005FEB84(v31, type metadata accessor for IdentityProofingRequestV2);
    JWSSignedJSON.payload.getter();
    v39 = *(v0 + 272);
    v40 = *(v0 + 288);
    v41 = *(v0 + 240);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v39;
    *(v0 + 144) = v40;
    v43 = *(v0 + 192);
    v42 = *(v0 + 208);
    v44 = *(v0 + 176);
    *(v0 + 48) = v43;
    *(v0 + 64) = v42;
    v45 = *(v0 + 208);
    v47 = *(v0 + 224);
    v46 = *(v0 + 240);
    *(v0 + 80) = v47;
    *(v0 + 96) = v46;
    v48 = *(v0 + 176);
    v49 = *(v0 + 160);
    *(v0 + 16) = v49;
    *(v0 + 32) = v48;
    *(v0 + 624) = v43;
    *(v0 + 640) = v45;
    *(v0 + 656) = v47;
    *(v0 + 672) = v41;
    *(v0 + 592) = v49;
    *(v0 + 608) = v44;
    sub_1000B1478(v0 + 16, v0 + 688);
    sub_1000B1F44(v0 + 16);
    v50 = swift_task_alloc();
    *(v0 + 1040) = v50;
    *v50 = v0;
    v50[1] = sub_1005E8870;
    v51 = *(v0 + 872);
    v52 = *(v0 + 856);

    return sub_1005F7D7C(v35, v36, v37, v38, v0 + 592, v52, v32);
  }
}

uint64_t sub_1005E8870(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1040);
  v4 = *(*v1 + 1032);
  v5 = *(*v1 + 1024);
  v7 = *v1;
  *(v2 + 1048) = a1;

  sub_1000ACC70(v2 + 16);

  return _swift_task_switch(sub_1005E89BC, 0, 0);
}

uint64_t sub_1005E89BC()
{
  v75 = v0;
  if (*(v0 + 1048))
  {
    v1 = *(v0 + 1016);
    v2 = *(v0 + 816);
    JWSSignedJSON.payload.getter();
    v3 = *(v0 + 560);
    *(v0 + 400) = *(v0 + 544);
    *(v0 + 416) = v3;
    *(v0 + 432) = *(v0 + 576);
    v4 = *(v0 + 496);
    *(v0 + 336) = *(v0 + 480);
    *(v0 + 352) = v4;
    v5 = *(v0 + 528);
    *(v0 + 368) = *(v0 + 512);
    *(v0 + 384) = v5;
    v6 = *(v0 + 464);
    *(v0 + 304) = *(v0 + 448);
    *(v0 + 320) = v6;
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);

    sub_1000B1F44(v0 + 304);
    if (v7)
    {
      v9 = *(v0 + 920);
      defaultLogger()();

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 920);
      v14 = *(v0 + 912);
      v15 = *(v0 + 904);
      if (v12)
      {
        v71 = *(v0 + 920);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v74 = v17;
        *v16 = 136315138;
        v18 = sub_100141FE4(v8, v7, &v74);

        *(v16 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v10, v11, "server runtime error : %s", v16, 0xCu);
        sub_10000BB78(v17);

        (*(v14 + 8))(v71, v15);
      }

      else
      {

        (*(v14 + 8))(v13, v15);
      }
    }

    v62 = *(v0 + 1048);
    v64 = *(v0 + 1016);
    v30 = *(v0 + 880);
    v68 = *(v0 + 816);
    v73 = enum case for DIPError.Code.internalError(_:);
    v31 = *(*(v0 + 888) + 104);
    v31(*(v0 + 896));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v64 - 8) + 8))(v68);
    v32 = *(v0 + 1000);
    v65 = *(v0 + 992);
    (v31)(*(v0 + 896), v73, *(v0 + 880));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v65, v32);
    v53 = *(v0 + 976);
    v58 = *(v0 + 960);
    v59 = *(v0 + 952);
    v60 = *(v0 + 968);
    v61 = *(v0 + 944);
    v67 = *(v0 + 928);
    v63 = *(v0 + 936);
    v66 = *(v0 + 920);
    v56 = *(v0 + 888);
    v57 = *(v0 + 896);
    v55 = *(v0 + 880);
    v50 = *(v0 + 872);
    v33 = "/1/getPendingCommands/ready";
    v52 = *(v0 + 824);
    if (*(v0 + 1056) == 2)
    {
      v33 = "entity proofing response";
    }

    v54 = v33 | 0x8000000000000000;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v34 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v35 = *(*(v34 - 8) + 72);
    v36 = (*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80);
    v51 = 2 * v35;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1006BFF90;
    v38 = v37 + v36;
    v39 = (v38 + *(v34 + 48));
    v40 = enum case for DIPError.PropertyKey.conversationID(_:);
    v41 = type metadata accessor for DIPError.PropertyKey();
    v42 = *(*(v41 - 8) + 104);
    v42(v38, v40, v41);
    v43 = *(v50 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v44 = *(v50 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v39[3] = &type metadata for String;
    v39[4] = &protocol witness table for String;
    *v39 = v43;
    v39[1] = v44;
    v45 = (v38 + v35 + *(v34 + 48));
    v42(v38 + v35, enum case for DIPError.PropertyKey.requestID(_:), v41);
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v47 = *(v67 + 16);
    v46 = *(v67 + 24);

    sub_1005FEB84(v67, type metadata accessor for IdentityProofingRequestV2);
    v45[3] = &type metadata for String;
    v45[4] = &protocol witness table for String;
    *v45 = v47;
    v45[1] = v46;
    v48 = (v38 + v51 + *(v34 + 48));
    v42(v38 + v51, enum case for DIPError.PropertyKey.serverURL(_:), v41);
    v48[3] = &type metadata for String;
    v48[4] = &protocol witness table for String;
    *v48 = 0xD000000000000016;
    v48[1] = v54;
    sub_10003C9C0(v37);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v56 + 104))(v57, v73, v55);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v58 + 8))(v60, v59);

    v29 = *(v0 + 8);
  }

  else
  {
    v19 = *(v0 + 1000);
    v20 = *(v0 + 992);
    v21 = *(v0 + 968);
    v22 = *(v0 + 960);
    v23 = *(v0 + 952);
    v24 = *(v0 + 944);
    v25 = *(v0 + 936);
    v69 = *(v0 + 928);
    v70 = *(v0 + 920);
    v72 = *(v0 + 896);
    v26 = *(v0 + 840);
    *(v0 + 1056);
    v27 = *(v0 + 832);

    v28.value._countAndFlagsBits = v27;
    v28.value._object = v26;
    DIPSignpost.end(workflowID:isBackground:)(v28, 2);
    sub_10000B90C(v20, v19);
    (*(v22 + 8))(v21, v23);

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_1005E9290()
{
  sub_10000BB78((v0 + 784));
  v34 = *(v0 + 1008);
  v22 = *(v0 + 976);
  v29 = *(v0 + 968);
  v27 = *(v0 + 960);
  v28 = *(v0 + 952);
  v30 = *(v0 + 944);
  v31 = *(v0 + 936);
  v32 = *(v0 + 920);
  v33 = *(v0 + 928);
  v1 = "/1/getPendingCommands/ready";
  v25 = *(v0 + 888);
  v26 = *(v0 + 896);
  v19 = *(v0 + 872);
  if (*(v0 + 1056) == 2)
  {
    v1 = "entity proofing response";
  }

  v23 = v1 | 0x8000000000000000;
  v24 = *(v0 + 880);
  v21 = *(v0 + 824);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v20 = 2 * v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BFF90;
  v6 = v5 + v4;
  v7 = (v5 + v4 + *(v2 + 48));
  v8 = enum case for DIPError.PropertyKey.conversationID(_:);
  v9 = type metadata accessor for DIPError.PropertyKey();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v6, v8, v9);
  v11 = *(v19 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v12 = *(v19 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v7[3] = &type metadata for String;
  v7[4] = &protocol witness table for String;
  *v7 = v11;
  v7[1] = v12;
  v13 = (v6 + v3 + *(v2 + 48));
  v10();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v14 = *(v33 + 16);
  v15 = *(v33 + 24);

  sub_1005FEB84(v33, type metadata accessor for IdentityProofingRequestV2);
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v14;
  v13[1] = v15;
  v16 = (v6 + v20 + *(v2 + 48));
  v10();
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = 0xD000000000000016;
  v16[1] = v23;
  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v25 + 104))(v26, enum case for DIPError.Code.internalError(_:), v24);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v27 + 8))(v29, v28);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1005E9738(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v3[30] = v11;
  v12 = *(v11 - 8);
  v3[31] = v12;
  v13 = *(v12 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v14 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  v3[37] = v15;
  v16 = *(v15 - 8);
  v3[38] = v16;
  v17 = *(v16 + 64) + 15;
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1005E99BC, 0, 0);
}

uint64_t sub_1005E99BC()
{
  v1 = v0[39];
  v2 = v0[36];
  static DaemonSignposts.getPendingCommandsReadyRequest.getter();
  DIPSignpost.init(_:)();
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_1005E9A70;
  v4 = v0[29];

  return sub_1005F8A6C(v4, 3);
}

uint64_t sub_1005E9A70()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_1005E9B6C, 0, 0);
}

uint64_t sub_1005EA914()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 360);

  if (v0)
  {
    v6 = sub_1005EB144;
  }

  else
  {
    v6 = sub_1005EAA48;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005EAA48()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);

  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);

  v9 = *(v0 + 376);
  v10 = type metadata accessor for JSONDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FE7C0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v9)
  {
    v75 = v6;
    v13 = v7;
    v14 = *(v0 + 328);
    v15 = *(v0 + 336);
    v78 = *(v0 + 280);
    v16 = *(v0 + 240);
    v69 = *(v0 + 224);
    v72 = *(v0 + 272);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);

    sub_10000B90C(v13, v8);
    v75(v69, v18);
    v14(v72, v16);
    v14(v78, v16);
    v51 = *(v0 + 304);
    v53 = *(v0 + 296);
    v55 = *(v0 + 312);
    v57 = *(v0 + 288);
    v59 = *(v0 + 280);
    v61 = *(v0 + 272);
    v63 = *(v0 + 264);
    v65 = *(v0 + 256);
    v67 = *(v0 + 232);
    v70 = *(v0 + 224);
    v73 = *(v0 + 216);
    v76 = *(v0 + 208);
    v79 = *(v0 + 200);
    v44 = *(v0 + 168);
    v46 = *(v0 + 176);
    v48 = *(v0 + 160);
    v39 = *(v0 + 152);
    v40 = *(v0 + 144);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v19 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v20 = *(*(v19 - 8) + 72);
    v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
    v38 = 2 * v20;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006BFF90;
    v23 = (v22 + v21 + *(v19 + 48));
    v24 = enum case for DIPError.PropertyKey.conversationID(_:);
    v25 = type metadata accessor for DIPError.PropertyKey();
    v26 = *(*(v25 - 8) + 104);
    (v26)(v22 + v21, v24, v25);
    v27 = *(v39 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v28 = *(v39 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v23[3] = &type metadata for String;
    v23[4] = &protocol witness table for String;
    *v23 = v27;
    v23[1] = v28;
    v29 = v22 + v21 + v20 + *(v19 + 48);
    v26();
    *(v0 + 104) = *(v40 + 16);
    *(v29 + 24) = &type metadata for String;
    *(v29 + 32) = &protocol witness table for String;
    *v29 = *(v40 + 16);
    v30 = (v22 + v21 + v38 + *(v19 + 48));
    v26();
    v30[3] = &type metadata for String;
    v30[4] = &protocol witness table for String;
    *v30 = 0xD00000000000001BLL;
    v30[1] = 0x8000000100724F80;
    swift_errorRetain();

    sub_10004D7A0(v0 + 104, v0 + 120);
    sub_10003C9C0(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v44 + 104))(v46, enum case for DIPError.Code.internalError(_:), v48);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v51 + 8))(v55, v53);
  }

  else
  {
    v47 = *(v0 + 328);
    v49 = *(v0 + 336);
    v33 = *(v0 + 304);
    v32 = *(v0 + 312);
    v50 = *(v0 + 296);
    v52 = *(v0 + 288);
    v43 = *(v0 + 272);
    v45 = *(v0 + 280);
    v54 = *(v0 + 264);
    v56 = *(v0 + 256);
    v34 = *(v0 + 240);
    v42 = *(v0 + 224);
    v58 = *(v0 + 232);
    v60 = *(v0 + 216);
    v64 = *(v0 + 208);
    v77 = *(v0 + 200);
    v35 = *(v0 + 192);
    v41 = *(v0 + 184);
    v80 = *(v0 + 176);
    v36 = *(v0 + 136);

    v74 = *(v0 + 16);
    v71 = *(v0 + 24);
    v68 = *(v0 + 32);
    v66 = *(v0 + 40);
    v62 = *(v0 + 56);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v7, v8);
    v6(v42, v41);
    v47(v43, v34);
    v47(v45, v34);
    (*(v33 + 8))(v32, v50);

    *v36 = v74;
    *(v36 + 8) = v71;
    *(v36 + 16) = v68;
    *(v36 + 40) = v62;
    *(v36 + 24) = v66;
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1005EB144()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 272);
  v46 = *(v0 + 280);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);

  v11 = *(v9 + 8);
  v11(v8, v10);
  v11(v7, v10);
  v4(v5, v6);
  v4(v46, v6);
  v30 = *(v0 + 376);
  v34 = *(v0 + 304);
  v35 = *(v0 + 296);
  v36 = *(v0 + 312);
  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 272);
  v40 = *(v0 + 264);
  v41 = *(v0 + 256);
  v42 = *(v0 + 232);
  v43 = *(v0 + 224);
  v44 = *(v0 + 216);
  v45 = *(v0 + 208);
  v47 = *(v0 + 200);
  v31 = *(v0 + 168);
  v32 = *(v0 + 176);
  v33 = *(v0 + 160);
  v28 = *(v0 + 152);
  v29 = *(v0 + 144);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v12 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v27 = 2 * v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006BFF90;
  v16 = v15 + v14;
  v17 = (v16 + *(v12 + 48));
  v18 = enum case for DIPError.PropertyKey.conversationID(_:);
  v19 = type metadata accessor for DIPError.PropertyKey();
  v20 = *(*(v19 - 8) + 104);
  (v20)(v16, v18, v19);
  v21 = *(v28 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v22 = *(v28 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v17[3] = &type metadata for String;
  v17[4] = &protocol witness table for String;
  *v17 = v21;
  v17[1] = v22;
  v23 = v16 + v13 + *(v12 + 48);
  v20();
  *(v0 + 104) = *(v29 + 16);
  *(v23 + 24) = &type metadata for String;
  *(v23 + 32) = &protocol witness table for String;
  *v23 = *(v29 + 16);
  v24 = (v16 + v27 + *(v12 + 48));
  v20();
  v24[3] = &type metadata for String;
  v24[4] = &protocol witness table for String;
  *v24 = 0xD00000000000001BLL;
  v24[1] = 0x8000000100724F80;
  swift_errorRetain();

  sub_10004D7A0(v0 + 104, v0 + 120);
  sub_10003C9C0(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v31 + 104))(v32, enum case for DIPError.Code.internalError(_:), v33);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v34 + 8))(v36, v35);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1005EB62C(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[34] = v4;
  v5 = *(v4 - 8);
  v3[35] = v5;
  v6 = *(v5 + 64) + 15;
  v3[36] = swift_task_alloc();
  v7 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[39] = v8;
  v9 = *(v8 - 8);
  v3[40] = v9;
  v10 = *(v9 + 64) + 15;
  v3[41] = swift_task_alloc();
  v11 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v3[43] = v12;
  v13 = *(v12 - 8);
  v3[44] = v13;
  v14 = *(v13 + 64) + 15;
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_1005EB818, 0, 0);
}

uint64_t sub_1005EB818()
{
  v1 = v0[45];
  v2 = v0[42];
  static DaemonSignposts.getPendingCommandsRequest.getter();
  DIPSignpost.init(_:)();
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_1005EB8CC;
  v4 = v0[38];

  return sub_1005F8A6C(v4, 3);
}

uint64_t sub_1005EB8CC()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return _swift_task_switch(sub_1005EB9C8, 0, 0);
}

uint64_t sub_1005EB9C8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v6 = *(v0 + 272);
    sub_10000BE18(v3, &unk_100844540, &unk_1006BFBC0);
    (*(v5 + 104))(v4, enum case for DIPError.Code.passportFailedToGetPendingCommands(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v41 = *(v0 + 360);
    v39 = *(v0 + 352);
    v40 = *(v0 + 344);
    v42 = *(v0 + 336);
    v43 = *(v0 + 328);
    v44 = *(v0 + 304);
    v45 = *(v0 + 296);
    v36 = *(v0 + 280);
    v37 = *(v0 + 288);
    v38 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 256);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v7 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v8 = *(*(v7 - 8) + 72);
    v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
    v33 = 2 * v8;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1006BFF90;
    v11 = v10 + v9;
    v12 = (v10 + v9 + *(v7 + 48));
    v13 = enum case for DIPError.PropertyKey.conversationID(_:);
    v14 = type metadata accessor for DIPError.PropertyKey();
    v15 = *(*(v14 - 8) + 104);
    v15(v11, v13, v14);
    v16 = *(v34 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v17 = *(v34 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v12[3] = &type metadata for String;
    v12[4] = &protocol witness table for String;
    *v12 = v16;
    v12[1] = v17;
    v18 = v11 + v8;
    v19 = v11 + v8 + *(v7 + 48);
    v15(v18, enum case for DIPError.PropertyKey.requestID(_:), v14);
    *(v0 + 216) = *(v35 + 16);
    *(v19 + 24) = &type metadata for String;
    *(v19 + 32) = &protocol witness table for String;
    *v19 = *(v35 + 16);
    v20 = (v11 + v33 + *(v7 + 48));
    v15(v11 + v33, enum case for DIPError.PropertyKey.serverURL(_:), v14);
    v20[3] = &type metadata for String;
    v20[4] = &protocol witness table for String;
    *v20 = 0xD000000000000015;
    v20[1] = 0x8000000100724EB0;
    swift_errorRetain();

    sub_10004D7A0(v0 + 216, v0 + 232);
    sub_10003C9C0(v10);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v36 + 104))(v37, enum case for DIPError.Code.internalError(_:), v38);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v39 + 8))(v41, v40);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 328);
    v24 = *(v0 + 296);
    v25 = *(v0 + 256);
    (*(v2 + 32))(v23, v3, v1);
    *(v0 + 208) = &type metadata for GetPendingCommandsRequest;
    v26 = swift_allocObject();
    *(v0 + 184) = v26;
    v26[1] = *v25;
    v27 = v25[4];
    v29 = v25[1];
    v28 = v25[2];
    v26[4] = v25[3];
    v26[5] = v27;
    v26[2] = v29;
    v26[3] = v28;
    (*(v2 + 16))(v24, v23, v1);
    (*(v2 + 56))(v24, 0, 1, v1);
    sub_1000B164C(v25, v0 + 104);
    v30 = swift_task_alloc();
    *(v0 + 376) = v30;
    *v30 = v0;
    v30[1] = sub_1005EC068;
    v31 = *(v0 + 296);
    v32 = *(v0 + 264);

    return sub_1005F4FEC(v0 + 184, 0xD000000000000015, 0x8000000100724EB0, 0, 0, v31);
  }
}

uint64_t sub_1005EC068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = (*v4)[47];
  v9 = *v4;
  v5[48] = a1;
  v5[49] = a2;
  v5[50] = a3;
  v5[51] = v3;

  sub_10000BE18(v5[37], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v7 = sub_1005EC908;
  }

  else
  {
    sub_10000BB78(v5 + 23);
    v7 = sub_1005EC1B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005EC1B8()
{
  v1 = *(v0 + 400);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && [v2 statusCode] == 204)
  {
    v3 = *(v0 + 392);
    v4 = *(v0 + 384);

    sub_10000B90C(v4, v3);
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v64 = 0;
    v68 = 0u;
    v67 = _swiftEmptyArrayStorage;
    v5 = 1;
    v61 = 0u;
    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 408);
    v9 = *(v0 + 384);
    v8 = *(v0 + 392);
    v10 = type metadata accessor for JSONDecoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005FE76C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v7)
    {
      v57 = *(v0 + 392);
      v59 = *(v0 + 400);
      v13 = *(v0 + 384);
      v14 = *(v0 + 320);
      v65 = *(v0 + 328);
      v62 = *(v0 + 312);
      v16 = *(v0 + 280);
      v15 = *(v0 + 288);
      v17 = *(v0 + 272);

      v72 = enum case for DIPError.Code.internalError(_:);
      (*(v16 + 104))(v15);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000B90C(v13, v57);

      (*(v14 + 8))(v65, v62);
      v55 = *(v0 + 344);
      v56 = *(v0 + 360);
      v58 = *(v0 + 336);
      v60 = *(v0 + 328);
      v63 = *(v0 + 304);
      v66 = *(v0 + 296);
      v51 = *(v0 + 280);
      v52 = *(v0 + 288);
      v53 = *(v0 + 272);
      v54 = *(v0 + 352);
      v49 = *(v0 + 264);
      v50 = *(v0 + 256);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v18 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v19 = *(*(v18 - 8) + 72);
      v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
      v48 = 2 * v19;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1006BFF90;
      v22 = v21 + v20;
      v23 = (v21 + v20 + *(v18 + 48));
      v24 = enum case for DIPError.PropertyKey.conversationID(_:);
      v25 = type metadata accessor for DIPError.PropertyKey();
      v26 = *(*(v25 - 8) + 104);
      v26(v22, v24, v25);
      v27 = *(v49 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
      v28 = *(v49 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
      v23[3] = &type metadata for String;
      v23[4] = &protocol witness table for String;
      *v23 = v27;
      v23[1] = v28;
      v29 = v22 + v19;
      v30 = v22 + v19 + *(v18 + 48);
      v26(v29, enum case for DIPError.PropertyKey.requestID(_:), v25);
      *(v0 + 216) = *(v50 + 16);
      *(v30 + 24) = &type metadata for String;
      *(v30 + 32) = &protocol witness table for String;
      *v30 = *(v50 + 16);
      v31 = (v22 + v48 + *(v18 + 48));
      v26(v22 + v48, enum case for DIPError.PropertyKey.serverURL(_:), v25);
      v31[3] = &type metadata for String;
      v31[4] = &protocol witness table for String;
      *v31 = 0xD000000000000015;
      v31[1] = 0x8000000100724EB0;
      swift_errorRetain();

      sub_10004D7A0(v0 + 216, v0 + 232);
      sub_10003C9C0(v21);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v51 + 104))(v52, v72, v53);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*(v54 + 8))(v56, v55);

      v32 = *(v0 + 8);
      goto LABEL_8;
    }

    v33 = *(v0 + 392);
    v34 = *(v0 + 400);
    v35 = *(v0 + 384);
    v36 = *(v0 + 360);

    v71 = *(v0 + 16);
    v37 = *(v0 + 24);
    v61 = *(v0 + 48);
    v68 = *(v0 + 32);
    v67 = *(v0 + 64);
    v69 = *(v0 + 80);
    v70 = *(v0 + 72);
    v64 = *(v0 + 88);
    v38 = *(v0 + 96);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v35, v33);

    v6 = v38;
    v5 = v37;
  }

  v40 = *(v0 + 352);
  v39 = *(v0 + 360);
  v42 = *(v0 + 336);
  v41 = *(v0 + 344);
  v43 = *(v0 + 304);
  v45 = *(v0 + 288);
  v44 = *(v0 + 296);
  v46 = *(v0 + 248);
  v73 = v5;
  v74 = v6;
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  (*(v40 + 8))(v39, v41);
  *v46 = v71;
  *(v46 + 8) = v73;
  *(v46 + 16) = v68;
  *(v46 + 32) = v61;
  *(v46 + 48) = v67;
  *(v46 + 56) = v70;
  *(v46 + 64) = v69;
  *(v46 + 72) = v64;
  *(v46 + 80) = v74;

  v32 = *(v0 + 8);
LABEL_8:

  return v32();
}

uint64_t sub_1005EC908()
{
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  sub_10000BB78((v0 + 184));
  v19 = *(v0 + 408);
  v25 = *(v0 + 360);
  v23 = *(v0 + 352);
  v24 = *(v0 + 344);
  v26 = *(v0 + 336);
  v27 = *(v0 + 328);
  v28 = *(v0 + 304);
  v29 = *(v0 + 296);
  v20 = *(v0 + 280);
  v21 = *(v0 + 288);
  v22 = *(v0 + 272);
  v17 = *(v0 + 264);
  v18 = *(v0 + 256);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v16 = 2 * v2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BFF90;
  v5 = v4 + v3;
  v6 = (v5 + *(v1 + 48));
  v7 = enum case for DIPError.PropertyKey.conversationID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v5, v7, v8);
  v10 = *(v17 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v11 = *(v17 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v6[3] = &type metadata for String;
  v6[4] = &protocol witness table for String;
  *v6 = v10;
  v6[1] = v11;
  v12 = v5 + v2 + *(v1 + 48);
  v9();
  *(v0 + 216) = *(v18 + 16);
  *(v12 + 24) = &type metadata for String;
  *(v12 + 32) = &protocol witness table for String;
  *v12 = *(v18 + 16);
  v13 = (v5 + v16 + *(v1 + 48));
  v9();
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = 0xD000000000000015;
  v13[1] = 0x8000000100724EB0;
  swift_errorRetain();

  sub_10004D7A0(v0 + 216, v0 + 232);
  sub_10003C9C0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v20 + 104))(v21, enum case for DIPError.Code.internalError(_:), v22);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v23 + 8))(v25, v24);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1005ECD74(uint64_t a1, uint64_t a2)
{
  v3[1081] = v2;
  v3[1080] = a2;
  v3[1079] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[1082] = v4;
  v5 = *(v4 - 8);
  v3[1083] = v5;
  v6 = *(v5 + 64) + 15;
  v3[1084] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v3[1085] = v7;
  v8 = *(v7 - 8);
  v3[1086] = v8;
  v9 = *(v8 + 64) + 15;
  v3[1087] = swift_task_alloc();
  v3[1088] = swift_task_alloc();
  v3[1089] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_100848FA0, &qword_1006E94D0) - 8) + 64) + 15;
  v3[1090] = swift_task_alloc();
  v11 = type metadata accessor for URLComponents();
  v3[1091] = v11;
  v12 = *(v11 - 8);
  v3[1092] = v12;
  v13 = *(v12 + 64) + 15;
  v3[1093] = swift_task_alloc();
  v14 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v3[1094] = swift_task_alloc();
  v3[1095] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v3[1096] = v15;
  v16 = *(v15 - 8);
  v3[1097] = v16;
  v17 = *(v16 + 64) + 15;
  v3[1098] = swift_task_alloc();
  v3[1099] = swift_task_alloc();
  v3[1100] = swift_task_alloc();
  v3[1101] = swift_task_alloc();
  v18 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[1102] = swift_task_alloc();
  v19 = type metadata accessor for DIPSignpost();
  v3[1103] = v19;
  v20 = *(v19 - 8);
  v3[1104] = v20;
  v21 = *(v20 + 64) + 15;
  v3[1105] = swift_task_alloc();

  return _swift_task_switch(sub_1005ED090, 0, 0);
}

uint64_t sub_1005ED090()
{
  v1 = v0[1105];
  v2 = v0[1102];
  static DaemonSignposts.getPassportIMQModelRequest.getter();
  DIPSignpost.init(_:)();
  v3 = swift_task_alloc();
  v0[1106] = v3;
  *v3 = v0;
  v3[1] = sub_1005ED144;
  v4 = v0[1095];

  return sub_1005F8A6C(v4, 4);
}

uint64_t sub_1005ED144()
{
  v1 = *(*v0 + 8848);
  v3 = *v0;

  return _swift_task_switch(sub_1005ED240, 0, 0);
}

uint64_t sub_1005EE2C4()
{
  v2 = *v1;
  v3 = *(*v1 + 8880);
  v4 = *v1;
  *(*v1 + 8888) = v0;

  v5 = *(v2 + 8872);

  if (v0)
  {
    v6 = sub_1005EEB98;
  }

  else
  {
    v6 = sub_1005EE3F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005EE3F8(uint64_t a1)
{
  v85 = v1;
  __chkstk_darwin(a1);
  v2 = *(v1 + 8864);
  v3 = *(v1 + 8856);
  v4 = *(v1 + 8704);
  v5 = *(v1 + 8688);
  v6 = *(v1 + 8680);

  v7 = *(v5 + 8);
  v7(v4, v6);
  v8 = *(v1 + 8600);
  v9 = *(v1 + 8608);

  v10 = *(v1 + 8888);
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FE6C0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v10)
  {
    sub_10000B90C(v8, v9);

    v78 = *(v1 + 8824);
    v81 = *(v1 + 8840);
    v72 = *(v1 + 8808);
    v75 = *(v1 + 8832);
    v60 = *(v1 + 8768);
    v62 = *(v1 + 8792);
    v68 = *(v1 + 8744);
    v70 = *(v1 + 8800);
    v64 = *(v1 + 8736);
    v66 = *(v1 + 8728);
    v56 = *(v1 + 8712);
    v58 = *(v1 + 8776);
    v52 = *(v1 + 8688);
    v54 = *(v1 + 8680);
    v45 = *(v1 + 8664);
    v47 = *(v1 + 8672);
    v49 = *(v1 + 8656);
    v44 = *(v1 + 8648);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v14 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v15 = *(*(v14 - 8) + 72);
    v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006BF740;
    v18 = (v17 + v16 + *(v14 + 48));
    v19 = enum case for DIPError.PropertyKey.conversationID(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    v21 = *(*(v20 - 8) + 104);
    (v21)(v17 + v16, v19, v20);
    v22 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v23 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v18[3] = &type metadata for String;
    v18[4] = &protocol witness table for String;
    *v18 = v22;
    v18[1] = v23;
    v24 = (v17 + v16 + v15 + *(v14 + 48));
    v21();
    v24[3] = &type metadata for String;
    v24[4] = &protocol witness table for String;
    *v24 = 0x7269612F716D692FLL;
    v24[1] = 0xE800000000000000;
    swift_errorRetain();

    sub_10003C9C0(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v45 + 104))(v47, enum case for DIPError.Code.internalError(_:), v49);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v52 + 8))(v56, v54);
    v25 = *(v58 + 8);
    v25(v62, v60);
    (*(v64 + 8))(v68, v66);
    v25(v70, v60);
    v25(v72, v60);
    (*(v75 + 8))(v81, v78);
    v26 = *(v1 + 8840);
    v27 = *(v1 + 8816);
    v28 = *(v1 + 8808);
    v29 = *(v1 + 8800);
    v30 = *(v1 + 8792);
    v31 = *(v1 + 8784);
    v32 = *(v1 + 8760);
    v33 = *(v1 + 8752);
    v34 = *(v1 + 8744);
    v35 = *(v1 + 8720);
    v73 = *(v1 + 8712);
    v76 = *(v1 + 8704);
    v79 = *(v1 + 8696);
    v82 = *(v1 + 8672);
  }

  else
  {
    v37 = *(v1 + 8840);
    v38 = *(v1 + 8832);
    v61 = *(v1 + 8824);
    v63 = *(v1 + 8816);
    v59 = *(v1 + 8808);
    v39 = *(v1 + 8776);
    v40 = *(v1 + 8768);
    v65 = *(v1 + 8784);
    v67 = *(v1 + 8760);
    v53 = *(v1 + 8744);
    v55 = *(v1 + 8800);
    v41 = *(v1 + 8736);
    v50 = *(v1 + 8792);
    v51 = *(v1 + 8728);
    v69 = *(v1 + 8752);
    v71 = *(v1 + 8720);
    v74 = *(v1 + 8704);
    v77 = *(v1 + 8696);
    v46 = *(v1 + 8688);
    v48 = *(v1 + 8680);
    v80 = *(v1 + 8672);
    v83 = *(v1 + 8712);
    v57 = *(v1 + 8632);

    memcpy(__dst, (v1 + 16), sizeof(__dst));
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10000B90C(v8, v9);
    v7(v83, v48);
    v42 = *(v39 + 8);
    v42(v50, v40);
    (*(v41 + 8))(v53, v51);
    v42(v55, v40);
    v42(v59, v40);
    (*(v38 + 8))(v37, v61);
    memcpy(v57, __dst, 0x2181uLL);
  }

  v36 = *(v1 + 8);

  return v36();
}

uint64_t sub_1005EEB98()
{
  v1 = v0[1108];
  v2 = v0[1107];
  v3 = v0[1088];
  v4 = v0[1086];
  v5 = v0[1085];

  (*(v4 + 8))(v3, v5);
  v31 = v0[1111];
  v49 = v0[1103];
  v51 = v0[1105];
  v45 = v0[1101];
  v47 = v0[1104];
  v44 = v0[1100];
  v38 = v0[1097];
  v39 = v0[1096];
  v40 = v0[1099];
  v43 = v0[1093];
  v41 = v0[1092];
  v42 = v0[1091];
  v36 = v0[1085];
  v37 = v0[1089];
  v32 = v0[1083];
  v33 = v0[1084];
  v34 = v0[1082];
  v35 = v0[1086];
  v30 = v0[1081];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v6 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF740;
  v10 = (v9 + v8 + *(v6 + 48));
  v11 = enum case for DIPError.PropertyKey.conversationID(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  v13 = *(*(v12 - 8) + 104);
  (v13)(v9 + v8, v11, v12);
  v14 = *(v30 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v15 = *(v30 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  *v10 = v14;
  v10[1] = v15;
  v16 = (v9 + v8 + v7 + *(v6 + 48));
  v13();
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = 0x7269612F716D692FLL;
  v16[1] = 0xE800000000000000;
  swift_errorRetain();

  sub_10003C9C0(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v32 + 104))(v33, enum case for DIPError.Code.internalError(_:), v34);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v35 + 8))(v37, v36);
  v17 = *(v38 + 8);
  v17(v40, v39);
  (*(v41 + 8))(v43, v42);
  v17(v44, v39);
  v17(v45, v39);
  (*(v47 + 8))(v51, v49);
  v18 = v0[1105];
  v19 = v0[1102];
  v20 = v0[1101];
  v21 = v0[1100];
  v22 = v0[1099];
  v23 = v0[1098];
  v24 = v0[1095];
  v25 = v0[1094];
  v26 = v0[1093];
  v27 = v0[1090];
  v46 = v0[1089];
  v48 = v0[1088];
  v50 = v0[1087];
  v52 = v0[1084];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005EF0D0(uint64_t a1, uint64_t a2)
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
  v7 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[55] = v8;
  v9 = *(v8 - 8);
  v3[56] = v9;
  v10 = *(v9 + 64) + 15;
  v3[57] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[58] = v11;
  v12 = *(v11 - 8);
  v3[59] = v12;
  v13 = *(v12 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v14 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  v3[63] = v15;
  v16 = *(v15 - 8);
  v3[64] = v16;
  v17 = *(v16 + 64) + 15;
  v3[65] = swift_task_alloc();

  return _swift_task_switch(sub_1005EF318, 0, 0);
}

uint64_t sub_1005EF318()
{
  v1 = v0[65];
  v2 = v0[62];
  static DaemonSignposts.getRPEncryptionCertificateRequest.getter();
  DIPSignpost.init(_:)();
  v3 = [objc_opt_self() standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceHardcodedRPEncryptionCert.getter();
  v5 = NSUserDefaults.internalBool(forKey:)(v4);

  if (v5)
  {
    v6 = v0[61];
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[61];
    v11 = v0[58];
    v12 = v0[59];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Internal Settings returning hardcoded test encryption certificate", v13, 2u);
    }

    (*(v12 + 8))(v10, v11);
    v15 = v0[61];
    v14 = v0[62];
    v16 = v0[60];
    v17 = v0[57];
    v19 = v0[53];
    v18 = v0[54];
    (*(v0[64] + 8))(v0[65], v0[63]);

    v20 = v0[1];

    return v20(&off_1007FB1C0);
  }

  else
  {
    v23 = v0[56];
    v22 = v0[57];
    v24 = v0[54];
    v25 = v0[55];
    v27 = v0[48];
    v26 = v0[49];

    UUID.init()();
    v28 = UUID.uuidString.getter();
    v30 = v29;
    v0[66] = v28;
    v0[67] = v29;
    (*(v23 + 8))(v22, v25);
    v0[47] = &type metadata for GetRPEncryptionCertificateRequest;
    v31 = swift_allocObject();
    v0[44] = v31;
    v31[2] = 0;
    v31[3] = 0xE000000000000000;
    v31[4] = v28;
    v31[5] = v30;
    v31[6] = v27;
    v31[7] = v26;
    v31[8] = 0x61746E6567616DLL;
    v31[9] = 0xE700000000000000;
    v32 = type metadata accessor for URL();
    (*(*(v32 - 8) + 56))(v24, 1, 1, v32);

    v33 = swift_task_alloc();
    v0[68] = v33;
    *v33 = v0;
    v33[1] = sub_1005EF674;
    v34 = v0[54];
    v35 = v0[50];

    return sub_1005F4FEC((v0 + 44), 0xD000000000000019, 0x8000000100724C80, 0, 1, v34);
  }
}

uint64_t sub_1005EF674(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[68];
  v11 = *v4;
  v6[69] = a1;
  v6[70] = a2;
  v6[71] = v3;

  if (v3)
  {
    v8 = v6[67];
    sub_10000BE18(v6[54], &unk_100844540, &unk_1006BFBC0);

    v9 = sub_1005F0598;
  }

  else
  {
    sub_10000BE18(v6[54], &unk_100844540, &unk_1006BFBC0);
    sub_10000BB78(v6 + 44);

    v9 = sub_1005EF7E4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005EF7E4()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A86D8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v7 = *(v0 + 536);

    v8 = enum case for DIPError.PropertyKey.serverURL(_:);
    v40 = enum case for DIPError.Code.internalError(_:);
    v41 = *(v0 + 552);
    v42 = *(v0 + 560);
    v10 = *(v0 + 416);
    v9 = *(v0 + 424);
    v39 = *(v0 + 408);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v12 = *(*v11 + 72);
    v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006BF520;
    v15 = v14 + v13;
    v16 = (v15 + v11[14]);
    v17 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v17 - 8) + 104))(v15, v8, v17);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    *v16 = 0xD000000000000019;
    v16[1] = 0x8000000100724C80;
    swift_errorRetain();
    sub_10003C9C0(v14);
    swift_setDeallocating();
    sub_10000BE18(v15, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v10 + 104))(v9, v40, v39);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v41, v42);
    v18 = *(v0 + 520);
    v19 = *(v0 + 504);
    v20 = *(v0 + 512);
    v22 = *(v0 + 488);
    v21 = *(v0 + 496);
    v23 = *(v0 + 480);
    v24 = *(v0 + 456);
    v26 = *(v0 + 424);
    v25 = *(v0 + 432);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v20 + 8))(v18, v19);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {

    v29 = *(v0 + 80);
    v30 = *(v0 + 96);
    *(v0 + 200) = v29;
    *(v0 + 216) = v30;
    *(v0 + 232) = *(v0 + 112);
    *(v0 + 248) = *(v0 + 128);
    v31 = *(v0 + 16);
    v32 = *(v0 + 32);
    *(v0 + 136) = v31;
    *(v0 + 152) = v32;
    v33 = *(v0 + 48);
    v34 = *(v0 + 64);
    *(v0 + 168) = v33;
    *(v0 + 184) = v34;
    *(v0 + 256) = v31;
    *(v0 + 272) = v32;
    *(v0 + 288) = v33;
    *(v0 + 304) = v34;
    *(v0 + 320) = v29;
    *(v0 + 336) = v30;
    v35 = swift_task_alloc();
    *(v0 + 576) = v35;
    *v35 = v0;
    v35[1] = sub_1005EFCBC;
    v36 = *(v0 + 536);
    v37 = *(v0 + 528);
    v38 = *(v0 + 400);

    return sub_1005F7D7C(0, 0xE000000000000000, v37, v36, v0 + 256, 0x61746E6567616DLL, 0xE700000000000000);
  }
}

uint64_t sub_1005EFCBC(uint64_t a1)
{
  v2 = *(*v1 + 576);
  v3 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 584) = a1;

  return _swift_task_switch(sub_1005EFDDC, 0, 0);
}

uint64_t sub_1005EFDDC()
{
  v61 = v0;
  if (v0[73])
  {
    v1 = v0[30];
    if (v1)
    {
      v2 = v0[29];
      v3 = v0[60];
      v4 = v0[30];

      sub_1000ACD80((v0 + 17));
      defaultLogger()();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      v7 = os_log_type_enabled(v5, v6);
      v9 = v0[59];
      v8 = v0[60];
      v10 = v0[58];
      if (v7)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v60 = v12;
        *v11 = 136315138;
        v13 = sub_100141FE4(v2, v1, &v60);

        *(v11 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v5, v6, "Server runtime error : %s", v11, 0xCu);
        sub_10000BB78(v12);
      }

      else
      {
      }

      (*(v9 + 8))(v8, v10);
    }

    else
    {
      sub_1000ACD80((v0 + 17));
    }

    v57 = v0[73];
    v24 = v0[52];
    v52 = v0[53];
    v53 = v0[51];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v25 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v26 = *(*v25 + 72);
    v27 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1006BF520;
    v29 = v28 + v27;
    v30 = (v29 + v25[14]);
    v31 = enum case for DIPError.PropertyKey.serverURL(_:);
    v56 = enum case for DIPError.PropertyKey.serverURL(_:);
    v32 = type metadata accessor for DIPError.PropertyKey();
    v55 = *(*(v32 - 8) + 104);
    v55(v29, v31, v32);
    v30[3] = &type metadata for String;
    v30[4] = &protocol witness table for String;
    *v30 = 0xD000000000000019;
    v30[1] = 0x8000000100724C80;
    swift_errorRetain();
    sub_10003C9C0(v28);
    swift_setDeallocating();
    sub_10000BE18(v29, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v54 = enum case for DIPError.Code.internalError(_:);
    (*(v24 + 104))(v52);
    type metadata accessor for DIPError();
    sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v59 = v0[70];
    v58 = v0[69];
    v33 = v0[52];
    v34 = v0[53];
    v35 = v0[51];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v36 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v37 = *(*v36 + 72);
    v38 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1006BF520;
    v40 = v39 + v38;
    v41 = (v40 + v36[14]);
    v55(v40, v56, v32);
    v41[3] = &type metadata for String;
    v41[4] = &protocol witness table for String;
    *v41 = 0xD000000000000019;
    v41[1] = 0x8000000100724C80;
    swift_errorRetain();
    sub_10003C9C0(v39);
    swift_setDeallocating();
    sub_10000BE18(v40, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v33 + 104))(v34, v54, v35);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v58, v59);
    v42 = v0[65];
    v43 = v0[63];
    v44 = v0[64];
    v46 = v0[61];
    v45 = v0[62];
    v47 = v0[60];
    v48 = v0[57];
    v50 = v0[53];
    v49 = v0[54];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v44 + 8))(v42, v43);

    v51 = v0[1];

    return v51();
  }

  else
  {
    v14 = v0[65];
    sub_10000B90C(v0[69], v0[70]);
    v15 = v0[31];

    sub_1000ACD80((v0 + 17));
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v17 = v0[61];
    v16 = v0[62];
    v18 = v0[60];
    v19 = v0[57];
    v21 = v0[53];
    v20 = v0[54];
    (*(v0[64] + 8))(v0[65], v0[63]);

    v22 = v0[1];

    return v22(v15);
  }
}

uint64_t sub_1005F0598()
{
  v1 = v0[71];
  v3 = v0[52];
  v2 = v0[53];
  v23 = v0[51];
  sub_10000BB78(v0 + 44);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  v8 = v7 + v6;
  v9 = (v8 + v4[14]);
  v10 = enum case for DIPError.PropertyKey.serverURL(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  *v9 = 0xD000000000000019;
  v9[1] = 0x8000000100724C80;
  swift_errorRetain();
  sub_10003C9C0(v7);
  swift_setDeallocating();
  sub_10000BE18(v8, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v23);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[65];
  v13 = v0[63];
  v14 = v0[64];
  v16 = v0[61];
  v15 = v0[62];
  v17 = v0[60];
  v18 = v0[57];
  v20 = v0[53];
  v19 = v0[54];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v14 + 8))(v12, v13);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005F08FC(uint64_t a1, uint64_t a2)
{
  v3[85] = v2;
  v3[84] = a2;
  v3[83] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[86] = v4;
  v5 = *(v4 - 8);
  v3[87] = v5;
  v6 = *(v5 + 64) + 15;
  v3[88] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v3[89] = v7;
  v8 = *(v7 - 8);
  v3[90] = v8;
  v9 = *(v8 + 64) + 15;
  v3[91] = swift_task_alloc();
  v10 = type metadata accessor for RegisterTerminalResponse(0);
  v3[92] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[93] = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v3[94] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v3[95] = v13;
  v14 = *(v13 - 8);
  v3[96] = v14;
  v15 = *(v14 + 64) + 15;
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();

  return _swift_task_switch(sub_1005F0AFC, 0, 0);
}

uint64_t sub_1005F0AFC()
{
  v42 = v0;
  v1 = sub_10003D21C(_swiftEmptyArrayStorage);
  v0[82] = v1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.terminalRegistrationTestHeaders.getter();
  v4 = NSUserDefaults.internalString(forKey:)(v3);

  if (v4.value._object)
  {
    v5 = v0 + 80;
    v6 = v0[99];
    defaultLogger()();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[99];
    v11 = v0[96];
    v12 = v0[95];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v14 = v41;
      *v13 = 136315138;
      *(v13 + 4) = sub_100141FE4(v4.value._countAndFlagsBits, v4.value._object, &v41);
      _os_log_impl(&_mh_execute_header, v7, v8, "DIPTopekaWebService registerTerminal using the following test headers: %s", v13, 0xCu);
      sub_10000BB78(v14);
      v5 = v0 + 80;
    }

    (*(v11 + 8))(v10, v12);
    v15 = (v0 + 82);
    v0[80] = 44;
    v0[81] = 0xE100000000000000;
    v16 = swift_task_alloc();
    *(v16 + 16) = v5;
    v18 = sub_1005FFB68(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000307C0, v16, v4.value._countAndFlagsBits, v4.value._object, v17);

    v19 = v18[2];
    if (v19)
    {
      v41 = _swiftEmptyArrayStorage;
      sub_100172D4C(0, v19, 0);
      v20 = v41;
      v21 = v18 + 7;
      do
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 2);
        v24 = *(v21 - 1);
        v25 = *v21;

        v26 = static String._fromSubstring(_:)();
        v28 = v27;

        v41 = v20;
        v30 = v20[2];
        v29 = v20[3];
        if (v30 >= v29 >> 1)
        {
          sub_100172D4C((v29 > 1), v30 + 1, 1);
          v20 = v41;
        }

        v20[2] = v30 + 1;
        v31 = &v20[2 * v30];
        v31[4] = v26;
        v31[5] = v28;
        v21 += 4;
        --v19;
      }

      while (v19);

      v15 = (v0 + 82);
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
    }

    sub_1005D7BD0(v20, v15);

    v1 = *v15;
  }

  v0[100] = v1;
  v32 = v0[94];
  v33 = v0[84];
  v34 = sub_100007224(&qword_100842078, &unk_1006E9660);
  v0[101] = v34;
  v0[75] = v34;
  v35 = sub_100032DBC(v0 + 72);
  (*(*(v34 - 8) + 16))(v35, v33, v34);
  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
  v37 = swift_task_alloc();
  v0[102] = v37;
  *v37 = v0;
  v37[1] = sub_1005F0F24;
  v38 = v0[94];
  v39 = v0[85];

  return sub_1005F4FEC((v0 + 72), 0xD00000000000001ALL, 0x8000000100724B70, v1, 0, v38);
}

uint64_t sub_1005F0F24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = (*v4)[102];
  v10 = *v4;
  v6[103] = a1;
  v6[104] = a2;
  v6[105] = v3;

  sub_10000BE18(v6[94], &unk_100844540, &unk_1006BFBC0);
  if (v3)
  {
    v8 = sub_1005F2114;
  }

  else
  {
    sub_10000BB78(v6 + 72);

    v8 = sub_1005F1088;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005F1088()
{
  v67 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005FEAD4(&qword_1008369A0, type metadata accessor for RegisterTerminalResponse);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    v9 = *(v0 + 832);
    v10 = *(v0 + 824);
    v11 = *(v0 + 776);
    defaultLogger()();
    sub_10000B8B8(v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_10000B90C(v10, v9);
    if (!os_log_type_enabled(v12, v13))
    {
      v43 = *(v0 + 776);
      v44 = *(v0 + 768);
      v45 = *(v0 + 760);

      (*(v44 + 8))(v43, v45);
LABEL_16:
      v53 = *(v0 + 832);
      v54 = *(v0 + 824);
      v55 = *(v0 + 712);
      (*(*(v0 + 696) + 104))(*(v0 + 704), enum case for DIPError.Code.jsonDecodingFailed(_:), *(v0 + 688));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000B90C(v54, v53);
      v56 = *(v0 + 800);
      v57 = *(v0 + 792);
      v58 = *(v0 + 784);
      v59 = *(v0 + 776);
      v60 = *(v0 + 752);
      v61 = *(v0 + 744);
      v62 = *(v0 + 728);
      v63 = *(v0 + 704);

      v64 = *(v0 + 8);

      return v64();
    }

    v14 = *(v0 + 832);
    v15 = *(v0 + 824);
    v16 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = v65;
    *v16 = 136315138;
    sub_10000B8B8(v15, v14);
    v17 = sub_1005FB2B0(v15, v14);
    v19 = v18;
    v20 = *(v0 + 832);
    v21 = *(v0 + 824);
    if (!v19)
    {
      *(v0 + 608) = v21;
      *(v0 + 616) = v20;
      sub_10000B8B8(v21, v20);
      sub_100007224(&qword_1008496B8, &qword_1006E96D8);
      if (swift_dynamicCast())
      {
        sub_10001F358((v0 + 536), v0 + 496);
        v22 = *(v0 + 528);
        sub_10000BA08((v0 + 496), *(v0 + 520));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000B90C(*(v0 + 824), *(v0 + 832));
          v23 = *(v0 + 528);
          sub_10000BA08((v0 + 496), *(v0 + 520));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v17 = *(v0 + 624);
          v19 = *(v0 + 632);
          sub_10000BB78((v0 + 496));
LABEL_15:
          v49 = *(v0 + 776);
          v50 = *(v0 + 768);
          v51 = *(v0 + 760);
          v52 = sub_100141FE4(v17, v19, &v66);

          *(v16 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v12, v13, "There was an error while parsing the response from registerTerminal. Response: %s", v16, 0xCu);
          sub_10000BB78(v65);

          (*(v50 + 8))(v49, v51);
          goto LABEL_16;
        }

        sub_10000BB78((v0 + 496));
      }

      else
      {
        *(v0 + 568) = 0;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        sub_10000BE18(v0 + 536, &qword_1008496C0, &unk_1006E96E0);
      }

      v46 = *(v0 + 832);
      v47 = *(v0 + 824);
      v17 = sub_1005FB1C0(v47, v46);
      v19 = v48;
      v21 = v47;
      v20 = v46;
    }

    sub_10000B90C(v21, v20);
    goto LABEL_15;
  }

  v24 = *(v0 + 808);
  v25 = *(v0 + 744);
  v26 = *(v0 + 672);

  JWSSignedJSON.payload.getter();
  v27 = *(v0 + 352);
  *(v0 + 144) = *(v0 + 336);
  *(v0 + 160) = v27;
  *(v0 + 176) = *(v0 + 368);
  *(v0 + 185) = *(v0 + 377);
  v28 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v28;
  v29 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v29;
  v30 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v30;
  v31 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v31;
  v33 = *(v0 + 16);
  v32 = *(v0 + 24);
  *(v0 + 848) = v32;
  v34 = *(v0 + 32);
  v35 = *(v0 + 40);
  *(v0 + 856) = v35;

  sub_1000AE408(v0 + 16);
  v36 = v25[1];
  *(v0 + 400) = *v25;
  *(v0 + 416) = v36;
  v37 = v25[5];
  v39 = v25[2];
  v38 = v25[3];
  *(v0 + 464) = v25[4];
  *(v0 + 480) = v37;
  *(v0 + 432) = v39;
  *(v0 + 448) = v38;
  v40 = swift_task_alloc();
  *(v0 + 864) = v40;
  *v40 = v0;
  v40[1] = sub_1005F16FC;
  v41 = *(v0 + 680);

  return sub_1005F7D7C(v33, v32, v34, v35, v0 + 400, 0x61746E6567616DLL, 0xE700000000000000);
}

uint64_t sub_1005F16FC(uint64_t a1)
{
  v2 = *(*v1 + 864);
  v3 = *(*v1 + 856);
  v4 = *(*v1 + 848);
  v6 = *v1;
  *(*v1 + 872) = a1;

  return _swift_task_switch(sub_1005F1838, 0, 0);
}

uint64_t sub_1005F1838()
{
  v80 = v0;
  if (!*(v0 + 872))
  {
    v41 = *(v0 + 800);
    v42 = *(v0 + 792);
    v43 = *(v0 + 784);
    v44 = *(v0 + 776);
    v45 = *(v0 + 752);
    v46 = *(v0 + 744);
    v47 = *(v0 + 728);
    v48 = *(v0 + 704);
    v49 = *(v0 + 664);
    sub_10000B90C(*(v0 + 824), *(v0 + 832));
    sub_1005FE60C(v46, v49);

    v50 = *(v0 + 8);
    goto LABEL_19;
  }

  v77 = *(v0 + 872);
  v1 = *(v0 + 744);
  v2 = *(v1 + 104);
  if (v2)
  {
    v3 = *(v1 + 96);
    v4 = *(v0 + 784);
    defaultLogger()();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 784);
    v9 = *(v0 + 768);
    v10 = *(v0 + 760);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v79[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100141FE4(v3, v2, v79);
      _os_log_impl(&_mh_execute_header, v5, v6, "Server runtime error : %s", v11, 0xCu);
      sub_10000BB78(v12);
    }

    (*(v9 + 8))(v8, v10);
  }

  v74 = *(v0 + 872);
  v75 = *(v0 + 744);
  v13 = *(v0 + 728);
  v14 = *(v0 + 720);
  v15 = *(v0 + 712);
  v16 = *(v0 + 696);
  v78 = *(v0 + 688);
  v73 = *(v0 + 704);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v17 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v18 = *(*v17 + 72);
  v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006BF520;
  v21 = v20 + v19;
  v22 = (v21 + v17[14]);
  v23 = enum case for DIPError.PropertyKey.serverURL(_:);
  v24 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v24 - 8) + 104))(v21, v23, v24);
  v22[3] = &type metadata for String;
  v22[4] = &protocol witness table for String;
  *v22 = 0xD00000000000001ALL;
  v22[1] = 0x8000000100724B70;
  swift_errorRetain();
  sub_10003C9C0(v20);
  swift_setDeallocating();
  sub_10000BE18(v21, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v16 + 104))(v73, enum case for DIPError.Code.internalError(_:), v78);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v14 + 16))(v25, v13, v15);
  swift_willThrow();

  (*(v14 + 8))(v13, v15);
  sub_1005FEB84(v75, type metadata accessor for RegisterTerminalResponse);
  v26 = *(v0 + 832);
  v27 = *(v0 + 824);
  v28 = *(v0 + 776);
  defaultLogger()();
  sub_10000B8B8(v27, v26);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  sub_10000B90C(v27, v26);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 832);
    v32 = *(v0 + 824);
    v33 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v79[0] = v76;
    *v33 = 136315138;
    sub_10000B8B8(v32, v31);
    v34 = sub_1005FB2B0(v32, v31);
    v36 = v35;
    v37 = *(v0 + 832);
    v38 = *(v0 + 824);
    if (!v36)
    {
      *(v0 + 608) = v38;
      *(v0 + 616) = v37;
      sub_10000B8B8(v38, v37);
      sub_100007224(&qword_1008496B8, &qword_1006E96D8);
      if (swift_dynamicCast())
      {
        sub_10001F358((v0 + 536), v0 + 496);
        v39 = *(v0 + 528);
        sub_10000BA08((v0 + 496), *(v0 + 520));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000B90C(*(v0 + 824), *(v0 + 832));
          v40 = *(v0 + 528);
          sub_10000BA08((v0 + 496), *(v0 + 520));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v34 = *(v0 + 624);
          v36 = *(v0 + 632);
          sub_10000BB78((v0 + 496));
LABEL_17:
          v57 = *(v0 + 776);
          v58 = *(v0 + 768);
          v59 = *(v0 + 760);
          v60 = sub_100141FE4(v34, v36, v79);

          *(v33 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v29, v30, "There was an error while parsing the response from registerTerminal. Response: %s", v33, 0xCu);
          sub_10000BB78(v76);

          (*(v58 + 8))(v57, v59);
          goto LABEL_18;
        }

        sub_10000BB78((v0 + 496));
      }

      else
      {
        *(v0 + 568) = 0;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        sub_10000BE18(v0 + 536, &qword_1008496C0, &unk_1006E96E0);
      }

      v54 = *(v0 + 832);
      v55 = *(v0 + 824);
      v34 = sub_1005FB1C0(v55, v54);
      v36 = v56;
      v38 = v55;
      v37 = v54;
    }

    sub_10000B90C(v38, v37);
    goto LABEL_17;
  }

  v51 = *(v0 + 776);
  v52 = *(v0 + 768);
  v53 = *(v0 + 760);

  (*(v52 + 8))(v51, v53);
LABEL_18:
  v61 = *(v0 + 832);
  v62 = *(v0 + 824);
  v63 = *(v0 + 712);
  (*(*(v0 + 696) + 104))(*(v0 + 704), enum case for DIPError.Code.jsonDecodingFailed(_:), *(v0 + 688));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000B90C(v62, v61);
  v64 = *(v0 + 800);
  v65 = *(v0 + 792);
  v66 = *(v0 + 784);
  v67 = *(v0 + 776);
  v68 = *(v0 + 752);
  v69 = *(v0 + 744);
  v70 = *(v0 + 728);
  v71 = *(v0 + 704);

  v50 = *(v0 + 8);
LABEL_19:

  return v50();
}

uint64_t sub_1005F2114()
{
  v1 = v0[105];
  v2 = v0[88];
  v3 = v0[87];
  v22 = v0[86];
  v23 = v0[89];
  sub_10000BB78(v0 + 72);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  v8 = v7 + v6;
  v9 = (v8 + v4[14]);
  v10 = enum case for DIPError.PropertyKey.serverURL(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  *v9 = 0xD00000000000001ALL;
  v9[1] = 0x8000000100724B70;
  swift_errorRetain();
  sub_10003C9C0(v7);
  swift_setDeallocating();
  sub_10000BE18(v8, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v22);
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[94];
  v17 = v0[93];
  v18 = v0[91];
  v19 = v0[88];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005F2458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 4264) = v6;
  *(v7 + 4256) = a5;
  *(v7 + 4248) = a4;
  *(v7 + 4209) = a6;
  *(v7 + 4240) = a3;
  *(v7 + 4232) = a2;
  *(v7 + 4224) = a1;
  v8 = type metadata accessor for URLRequest();
  *(v7 + 4272) = v8;
  v9 = *(v8 - 8);
  *(v7 + 4280) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 4288) = swift_task_alloc();
  *(v7 + 4296) = swift_task_alloc();
  *(v7 + 4304) = swift_task_alloc();
  *(v7 + 4312) = swift_task_alloc();
  *(v7 + 4320) = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v7 + 4328) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v7 + 4336) = v12;
  v13 = *(v12 - 8);
  *(v7 + 4344) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 4352) = swift_task_alloc();
  *(v7 + 4360) = swift_task_alloc();
  v15 = type metadata accessor for DIPError.Code();
  *(v7 + 4368) = v15;
  v16 = *(v15 - 8);
  *(v7 + 4376) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 4384) = swift_task_alloc();
  v18 = sub_100007224(&qword_100842078, &unk_1006E9660);
  *(v7 + 4392) = v18;
  v19 = *(v18 - 8);
  *(v7 + 4400) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 4408) = swift_task_alloc();
  *(v7 + 4416) = swift_task_alloc();
  v21 = sub_100007224(&qword_100841070, &unk_1006DDAB0);
  *(v7 + 4424) = v21;
  v22 = *(v21 - 8);
  *(v7 + 4432) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 4440) = swift_task_alloc();
  *(v7 + 4448) = swift_task_alloc();
  v24 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  *(v7 + 4456) = v24;
  v25 = *(v24 - 8);
  *(v7 + 4464) = v25;
  v26 = *(v25 + 64) + 15;
  *(v7 + 4472) = swift_task_alloc();
  *(v7 + 4480) = swift_task_alloc();
  v27 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  *(v7 + 4488) = v27;
  v28 = *(v27 - 8);
  *(v7 + 4496) = v28;
  v29 = *(v28 + 64) + 15;
  *(v7 + 4504) = swift_task_alloc();
  *(v7 + 4512) = swift_task_alloc();
  v30 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  *(v7 + 4520) = v30;
  v31 = *(v30 - 8);
  *(v7 + 4528) = v31;
  v32 = *(v31 + 64) + 15;
  *(v7 + 4536) = swift_task_alloc();
  *(v7 + 4544) = swift_task_alloc();
  v33 = sub_100007224(&unk_10084A100, &qword_1006E9EA0);
  *(v7 + 4552) = v33;
  v34 = *(v33 - 8);
  *(v7 + 4560) = v34;
  v35 = *(v34 + 64) + 15;
  *(v7 + 4568) = swift_task_alloc();
  *(v7 + 4576) = swift_task_alloc();
  v36 = sub_100007224(&qword_100849640, &qword_1006E9670);
  *(v7 + 4584) = v36;
  v37 = *(v36 - 8);
  *(v7 + 4592) = v37;
  v38 = *(v37 + 64) + 15;
  *(v7 + 4600) = swift_task_alloc();
  *(v7 + 4608) = swift_task_alloc();
  v39 = type metadata accessor for Logger();
  *(v7 + 4616) = v39;
  v40 = *(v39 - 8);
  *(v7 + 4624) = v40;
  v41 = *(v40 + 64) + 15;
  *(v7 + 4632) = swift_task_alloc();

  return _swift_task_switch(sub_1005F29E8, 0, 0);
}

uint64_t sub_1005F4A00()
{
  v2 = *v1;
  v3 = *(*v1 + 4680);
  v4 = *v1;
  *(*v1 + 4688) = v0;

  v5 = *(v2 + 4672);

  if (v0)
  {
    v6 = sub_1005F4DA0;
  }

  else
  {
    v6 = sub_1005F4B34;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005F4B34()
{
  v1 = *(v0 + 4664);
  v2 = *(v0 + 4656);
  v3 = *(v0 + 4296);
  v4 = *(v0 + 4280);
  v5 = *(v0 + 4272);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v38 = *(v0 + 4192);
  v39 = *(v0 + 4184);
  v37 = *(v0 + 4208);
  v36 = *(v0 + 4200);
  v7 = *(v0 + 4632);
  v8 = *(v0 + 4608);
  v16 = *(v0 + 4600);
  v17 = *(v0 + 4576);
  v18 = *(v0 + 4568);
  v19 = *(v0 + 4544);
  v20 = *(v0 + 4536);
  v21 = *(v0 + 4512);
  v22 = *(v0 + 4504);
  v23 = *(v0 + 4480);
  v24 = *(v0 + 4472);
  v25 = *(v0 + 4448);
  v26 = *(v0 + 4440);
  v27 = *(v0 + 4416);
  v9 = *(v0 + 4360);
  v29 = *(v0 + 4384);
  v30 = *(v0 + 4352);
  v10 = *(v0 + 4344);
  v11 = *(v0 + 4336);
  v12 = *(v0 + 4320);
  v28 = *(v0 + 4408);
  v31 = *(v0 + 4328);
  v32 = *(v0 + 4312);
  v33 = *(v0 + 4304);
  v34 = *(v0 + 4296);
  v35 = *(v0 + 4288);
  v13 = *(v0 + 4272);
  sub_10000B90C(*(v0 + 4648), *(v0 + 4640));
  v6(v12, v13);
  (*(v10 + 8))(v9, v11);

  v14 = *(v0 + 8);

  return v14(v39, v38, v36, v37);
}

uint64_t sub_1005F4DA0()
{
  v1 = v0[583];
  v2 = v0[582];
  v3 = v0[581];
  v4 = v0[580];
  v38 = v0[545];
  v5 = v0[543];
  v6 = v0[542];
  v7 = v0[540];
  v8 = v0[537];
  v9 = v0[535];
  v10 = v0[534];

  v11 = *(v9 + 8);
  v11(v8, v10);
  sub_10000B90C(v3, v4);
  v11(v7, v10);
  (*(v5 + 8))(v38, v6);
  v39 = v0[586];
  v12 = v0[579];
  v13 = v0[576];
  v14 = v0[575];
  v15 = v0[572];
  v16 = v0[571];
  v17 = v0[568];
  v18 = v0[567];
  v19 = v0[564];
  v20 = v0[563];
  v21 = v0[560];
  v24 = v0[559];
  v25 = v0[556];
  v26 = v0[555];
  v27 = v0[552];
  v28 = v0[551];
  v29 = v0[548];
  v30 = v0[545];
  v31 = v0[544];
  v32 = v0[541];
  v33 = v0[540];
  v34 = v0[539];
  v35 = v0[538];
  v36 = v0[537];
  v37 = v0[536];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005F4FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 2472) = v6;
  *(v7 + 2464) = a6;
  *(v7 + 201) = a5;
  *(v7 + 2456) = a4;
  *(v7 + 2448) = a3;
  *(v7 + 2440) = a2;
  *(v7 + 2432) = a1;
  v8 = type metadata accessor for DIPError.Code();
  *(v7 + 2480) = v8;
  v9 = *(v8 - 8);
  *(v7 + 2488) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 2496) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v7 + 2504) = v11;
  v12 = *(v11 - 8);
  *(v7 + 2512) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 2520) = swift_task_alloc();
  v14 = sub_100007224(&qword_100842078, &unk_1006E9660);
  *(v7 + 2528) = v14;
  v15 = *(v14 - 8);
  *(v7 + 2536) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 2544) = swift_task_alloc();
  *(v7 + 2552) = swift_task_alloc();
  v17 = sub_100007224(&qword_100841070, &unk_1006DDAB0);
  *(v7 + 2560) = v17;
  v18 = *(v17 - 8);
  *(v7 + 2568) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 2576) = swift_task_alloc();
  *(v7 + 2584) = swift_task_alloc();
  v20 = *(*(type metadata accessor for IdentityProofingRequestV2(0) - 8) + 64) + 15;
  *(v7 + 2592) = swift_task_alloc();
  v21 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  *(v7 + 2600) = v21;
  v22 = *(v21 - 8);
  *(v7 + 2608) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 2616) = swift_task_alloc();
  *(v7 + 2624) = swift_task_alloc();
  v24 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  *(v7 + 2632) = v24;
  v25 = *(v24 - 8);
  *(v7 + 2640) = v25;
  v26 = *(v25 + 64) + 15;
  *(v7 + 2648) = swift_task_alloc();
  *(v7 + 2656) = swift_task_alloc();
  v27 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  *(v7 + 2664) = v27;
  v28 = *(v27 - 8);
  *(v7 + 2672) = v28;
  v29 = *(v28 + 64) + 15;
  *(v7 + 2680) = swift_task_alloc();
  *(v7 + 2688) = swift_task_alloc();
  v30 = *(*(type metadata accessor for SharingRegistrationRequest(0) - 8) + 64) + 15;
  *(v7 + 2696) = swift_task_alloc();
  v31 = sub_100007224(&unk_10084A100, &qword_1006E9EA0);
  *(v7 + 2704) = v31;
  v32 = *(v31 - 8);
  *(v7 + 2712) = v32;
  v33 = *(v32 + 64) + 15;
  *(v7 + 2720) = swift_task_alloc();
  *(v7 + 2728) = swift_task_alloc();
  v34 = *(*(type metadata accessor for IdentityProofingRequest(0) - 8) + 64) + 15;
  *(v7 + 2736) = swift_task_alloc();
  v35 = sub_100007224(&qword_100849640, &qword_1006E9670);
  *(v7 + 2744) = v35;
  v36 = *(v35 - 8);
  *(v7 + 2752) = v36;
  v37 = *(v36 + 64) + 15;
  *(v7 + 2760) = swift_task_alloc();
  *(v7 + 2768) = swift_task_alloc();

  return _swift_task_switch(sub_1005F54D0, 0, 0);
}

uint64_t sub_1005F54D0()
{
  v131 = v0;
  v1 = (v0 + 2424);
  v2 = *(v0 + 201);
  *(v0 + 2424) = &_swiftEmptyDictionarySingleton;
  if ((v2 & 1) == 0)
  {
    if (qword_100832CC0 != -1)
    {
      swift_once();
    }

    v3 = qword_1008823E0;
    v4 = sub_100592810();
    if (v5 == 1)
    {
      sub_1005946FC();
    }

    else
    {
      sub_10003477C(v4, v5);
    }

    v6 = sub_100592810();
    v8 = v7;

    if (v8 >= 2)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10014BC18(v6, v8, v9, v10);
    }
  }

  v11 = *(v0 + 2456);
  if (v11)
  {
    v12 = *(v0 + 2456);

    v13 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = v13;
    sub_1005FBF5C(v11, sub_1005FB268, 0, isUniquelyReferenced_nonNull_native, &v130);

    *v1 = v130;
  }

  sub_10001F2EC(*(v0 + 2432), v0 + 2272);
  sub_100007224(&qword_100849648, &qword_1006E9678);
  sub_100007224(&qword_100849650, &qword_1006E9680);
  if (swift_dynamicCast())
  {
    sub_10001F2EC(*(v0 + 2432), v0 + 2368);
    swift_dynamicCast();
    v15 = *(v0 + 1992);
    v16 = *(v0 + 2000);
    sub_10000BA08((v0 + 1968), v15);
    v17 = (*(v16 + 24))(v15, v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_10000BB78((v0 + 1968));
    sub_10000BB78((v0 + 2008));
    goto LABEL_18;
  }

  v24 = *(v0 + 2768);
  v25 = *(v0 + 2744);
  if (swift_dynamicCast())
  {
    v26 = *(v0 + 2768);
    v27 = *(v0 + 2760);
    v28 = *(v0 + 2752);
    v29 = *(v0 + 2744);
    v30 = *(v0 + 2736);
    sub_10001F2EC(*(v0 + 2432), v0 + 2336);
    swift_dynamicCast();
    JWSSignedJSON.payload.getter();
    v31 = *(v28 + 8);
    v31(v27, v29);
    v17 = *v30;
    v19 = v30[1];
    v21 = v30[2];
    v23 = v30[3];

    v32 = type metadata accessor for IdentityProofingRequest;
LABEL_17:
    sub_1005FEB84(v30, v32);
    v31(v26, v29);
    goto LABEL_18;
  }

  v33 = *(v0 + 2728);
  v34 = *(v0 + 2704);
  if (swift_dynamicCast())
  {
    v26 = *(v0 + 2728);
    v35 = *(v0 + 2720);
    v36 = *(v0 + 2712);
    v29 = *(v0 + 2704);
    v30 = *(v0 + 2696);
    sub_10001F2EC(*(v0 + 2432), v0 + 2304);
    swift_dynamicCast();
    JWSSignedJSON.payload.getter();
    v31 = *(v36 + 8);
    v31(v35, v29);
    v17 = *v30;
    v19 = v30[1];
    v21 = v30[2];
    v23 = v30[3];

    v32 = type metadata accessor for SharingRegistrationRequest;
    goto LABEL_17;
  }

  v53 = *(v0 + 2688);
  v54 = *(v0 + 2664);
  if (swift_dynamicCast())
  {
    v55 = *(v0 + 2688);
    v56 = *(v0 + 2680);
    v57 = *(v0 + 2672);
    v58 = *(v0 + 2664);
    sub_10001F2EC(*(v0 + 2432), v0 + 2240);
    swift_dynamicCast();
    JWSSignedJSON.payload.getter();
    v59 = *(v0 + 1152);
    *(v0 + 1280) = *(v0 + 1136);
    *(v0 + 1296) = v59;
    *(v0 + 1312) = *(v0 + 1168);
    v60 = *(v0 + 1088);
    *(v0 + 1216) = *(v0 + 1072);
    *(v0 + 1232) = v60;
    v61 = *(v0 + 1120);
    *(v0 + 1248) = *(v0 + 1104);
    *(v0 + 1264) = v61;
    v62 = *(v0 + 1056);
    *(v0 + 1184) = *(v0 + 1040);
    *(v0 + 1200) = v62;
    v63 = *(v57 + 8);
    v63(v56, v58);
    v17 = *(v0 + 1184);
    v19 = *(v0 + 1192);
    v21 = *(v0 + 1200);
    v23 = *(v0 + 1208);

    sub_1000AE518(v0 + 1184);
    v63(v55, v58);
  }

  else
  {
    v64 = *(v0 + 2656);
    v65 = *(v0 + 2632);
    if (swift_dynamicCast())
    {
      v66 = *(v0 + 2656);
      v67 = *(v0 + 2648);
      v68 = *(v0 + 2640);
      v69 = *(v0 + 2632);
      sub_10001F2EC(*(v0 + 2432), v0 + 2176);
      swift_dynamicCast();
      JWSSignedJSON.payload.getter();
      v70 = *(v0 + 1440);
      *(v0 + 1560) = *(v0 + 1424);
      *(v0 + 1576) = v70;
      *(v0 + 1592) = *(v0 + 1456);
      v71 = *(v0 + 1376);
      *(v0 + 1496) = *(v0 + 1360);
      *(v0 + 1512) = v71;
      v72 = *(v0 + 1408);
      *(v0 + 1528) = *(v0 + 1392);
      *(v0 + 1544) = v72;
      v73 = *(v0 + 1344);
      *(v0 + 1464) = *(v0 + 1328);
      *(v0 + 1480) = v73;
      v74 = *(v68 + 8);
      v74(v67, v69);
      v17 = *(v0 + 1464);
      v19 = *(v0 + 1472);
      v21 = *(v0 + 1480);
      v23 = *(v0 + 1488);

      sub_1000AE6AC(v0 + 1464);
      v74(v66, v69);
    }

    else
    {
      v75 = *(v0 + 2624);
      v76 = *(v0 + 2600);
      if (swift_dynamicCast())
      {
        v26 = *(v0 + 2624);
        v77 = *(v0 + 2616);
        v78 = *(v0 + 2608);
        v29 = *(v0 + 2600);
        v30 = *(v0 + 2592);
        sub_10001F2EC(*(v0 + 2432), v0 + 2144);
        swift_dynamicCast();
        JWSSignedJSON.payload.getter();
        v31 = *(v78 + 8);
        v31(v77, v29);
        v17 = *v30;
        v19 = v30[1];
        v21 = v30[2];
        v23 = v30[3];

        v32 = type metadata accessor for IdentityProofingRequestV2;
        goto LABEL_17;
      }

      v79 = *(v0 + 2584);
      v80 = *(v0 + 2560);
      if (swift_dynamicCast())
      {
        v81 = *(v0 + 2584);
        v82 = *(v0 + 2576);
        v83 = *(v0 + 2568);
        v84 = *(v0 + 2560);
        sub_10001F2EC(*(v0 + 2432), v0 + 2080);
        swift_dynamicCast();
        JWSSignedJSON.payload.getter();
        v85 = *(v0 + 1680);
        *(v0 + 1768) = *(v0 + 1664);
        *(v0 + 1784) = v85;
        *(v0 + 1800) = *(v0 + 1696);
        v86 = *(v0 + 1616);
        *(v0 + 1704) = *(v0 + 1600);
        *(v0 + 1720) = v86;
        v87 = *(v0 + 1648);
        *(v0 + 1736) = *(v0 + 1632);
        *(v0 + 1752) = v87;
        v88 = *(v83 + 8);
        v88(v82, v84);
        v17 = *(v0 + 1704);
        v19 = *(v0 + 1712);
        v21 = *(v0 + 1720);
        v23 = *(v0 + 1728);

        sub_1000F978C(v0 + 1704);
        v88(v81, v84);
      }

      else if (swift_dynamicCast())
      {
        v89 = *(v0 + 2432);
        v90 = *(v0 + 672);
        *(v0 + 976) = *(v0 + 656);
        *(v0 + 992) = v90;
        v91 = *(v0 + 704);
        *(v0 + 1008) = *(v0 + 688);
        *(v0 + 1024) = v91;
        v92 = *(v0 + 608);
        *(v0 + 912) = *(v0 + 592);
        *(v0 + 928) = v92;
        v93 = *(v0 + 640);
        *(v0 + 944) = *(v0 + 624);
        *(v0 + 960) = v93;
        v94 = *(v0 + 576);
        *(v0 + 880) = *(v0 + 560);
        *(v0 + 896) = v94;
        sub_1000B16EC(v0 + 880);
        sub_10001F2EC(v89, v0 + 2048);
        swift_dynamicCast();
        v95 = *(v0 + 480);
        *(v0 + 784) = *(v0 + 464);
        *(v0 + 800) = v95;
        v96 = *(v0 + 448);
        *(v0 + 752) = *(v0 + 432);
        *(v0 + 768) = v96;
        v97 = *(v0 + 544);
        *(v0 + 848) = *(v0 + 528);
        *(v0 + 864) = v97;
        v98 = *(v0 + 512);
        *(v0 + 816) = *(v0 + 496);
        *(v0 + 832) = v98;
        v99 = *(v0 + 416);
        *(v0 + 720) = *(v0 + 400);
        *(v0 + 736) = v99;
        v17 = *(v0 + 720);
        v19 = *(v0 + 728);
        v21 = *(v0 + 736);
        v23 = *(v0 + 744);

        sub_1000B16EC(v0 + 720);
      }

      else
      {
        v100 = *(v0 + 2552);
        v101 = *(v0 + 2528);
        if (swift_dynamicCast())
        {
          v102 = *(v0 + 2544);
          v103 = *(v0 + 2536);
          v104 = *(v0 + 2528);
          (*(v103 + 32))(v102, *(v0 + 2552), v104);
          JWSSignedJSON.payload.getter();
          (*(v103 + 8))(v102, v104);
          v105 = *(v0 + 320);
          *(v0 + 112) = *(v0 + 304);
          *(v0 + 128) = v105;
          v106 = *(v0 + 288);
          *(v0 + 80) = *(v0 + 272);
          *(v0 + 96) = v106;
          *(v0 + 185) = *(v0 + 377);
          v107 = *(v0 + 368);
          *(v0 + 160) = *(v0 + 352);
          *(v0 + 176) = v107;
          *(v0 + 144) = *(v0 + 336);
          v108 = *(v0 + 256);
          *(v0 + 48) = *(v0 + 240);
          *(v0 + 64) = v108;
          v109 = *(v0 + 224);
          *(v0 + 16) = *(v0 + 208);
          *(v0 + 32) = v109;
          v17 = *(v0 + 16);
          v19 = *(v0 + 24);
          v21 = *(v0 + 32);
          v23 = *(v0 + 40);

          sub_1000AE408(v0 + 16);
        }

        else if (swift_dynamicCast())
        {
          v110 = *(v0 + 2432);
          v111 = *(v0 + 1816);
          v112 = *(v0 + 1832);
          v113 = *(v0 + 1856);
          v114 = *(v0 + 1872);
          v115 = *(v0 + 1880);

          sub_10001F2EC(v110, v0 + 2112);
          swift_dynamicCast();
          v17 = *(v0 + 1888);
          v19 = *(v0 + 1896);
          v21 = *(v0 + 1904);
          v23 = *(v0 + 1912);
          v116 = *(v0 + 1936);
          v117 = *(v0 + 1952);
          v118 = *(v0 + 1960);
        }

        else
        {
          v119 = *(v0 + 2520);
          defaultLogger()();
          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();
          v122 = os_log_type_enabled(v120, v121);
          v123 = *(v0 + 2520);
          v124 = *(v0 + 2512);
          v125 = *(v0 + 2504);
          if (v122)
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            _os_log_impl(&_mh_execute_header, v120, v121, "unknown topeka request, conversation/request id not added to http header", v126, 2u);
          }

          (*(v124 + 8))(v123, v125);
          v17 = 0;
          v19 = 0;
          v21 = 0;
          v23 = 0;
        }
      }
    }
  }

LABEL_18:
  v37 = *(v0 + 2432);
  sub_10000BB78((v0 + 2272));
  v129 = sub_1005FC224(v17, v19, v21, v23, *(v0 + 2424));
  *(v0 + 2776) = v129;

  sub_1000B00AC(v17, v19);
  v38 = v37[3];
  v39 = sub_10000BA08(v37, v38);
  *(v0 + 2232) = v38;
  v40 = sub_100032DBC((v0 + 2208));
  (*(*(v38 - 8) + 16))(v40, v39, v38);
  LOBYTE(v38) = sub_1005FD704(v0 + 2208);
  sub_10000BB78((v0 + 2208));
  v128 = v38;
  if (v38)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v41 = v42 ^ 1;
  }

  else
  {

    v41 = 0;
  }

  v43 = *(v0 + 2472);
  v44 = *(v0 + 2464);
  v45 = *(v0 + 201);
  v46 = *(v0 + 2448);
  v47 = *(v0 + 2440);
  v48 = *(v0 + 2432);
  v49 = swift_task_alloc();
  *(v0 + 2784) = v49;
  *(v49 + 16) = v47;
  *(v49 + 24) = v46;
  *(v49 + 32) = v43;
  *(v49 + 40) = v128;
  *(v49 + 48) = v44;
  *(v49 + 56) = v48;
  *(v49 + 64) = v129;
  *(v49 + 72) = v45;
  *(v49 + 73) = v41 & 1;
  v50 = async function pointer to DIPRetrier.retry<A>(operation:)[1];
  v51 = swift_task_alloc();
  *(v0 + 2792) = v51;
  v52 = sub_100007224(&qword_100849658, &qword_1006E9698);
  *v51 = v0;
  v51[1] = sub_1005F6110;

  return DIPRetrier.retry<A>(operation:)(v0 + 2400, &unk_1006E9690, v49, v52);
}

uint64_t sub_1005F6110()
{
  v2 = *v1;
  v3 = *(*v1 + 2792);
  v8 = *v1;
  *(*v1 + 2800) = v0;

  if (v0)
  {
    v4 = sub_1005F63C4;
  }

  else
  {
    v5 = *(v2 + 2784);
    v6 = *(v2 + 2776);

    v4 = sub_1005F6238;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005F6238()
{
  v1 = v0[346];
  v2 = v0[345];
  v3 = v0[342];
  v4 = v0[341];
  v5 = v0[340];
  v6 = v0[337];
  v7 = v0[336];
  v8 = v0[335];
  v9 = v0[332];
  v10 = v0[331];
  v13 = v0[328];
  v14 = v0[327];
  v15 = v0[324];
  v16 = v0[323];
  v17 = v0[322];
  v18 = v0[319];
  v19 = v0[318];
  v20 = v0[315];
  v21 = v0[312];
  v24 = v0[300];
  v22 = v0[302];
  v23 = v0[301];

  v11 = v0[1];

  return v11(v24, v23, v22);
}

uint64_t sub_1005F63C4()
{
  v20 = v0[350];
  v1 = v0[348];
  v2 = v0[347];
  v24 = v0[346];
  v25 = v0[345];
  v26 = v0[342];
  v27 = v0[341];
  v28 = v0[340];
  v29 = v0[337];
  v30 = v0[336];
  v31 = v0[335];
  v32 = v0[332];
  v33 = v0[331];
  v34 = v0[328];
  v35 = v0[327];
  v36 = v0[324];
  v37 = v0[323];
  v38 = v0[322];
  v39 = v0[319];
  v40 = v0[318];
  v41 = v0[315];
  v21 = v0[311];
  v22 = v0[312];
  v23 = v0[310];
  v19 = v0[306];
  v17 = v0[309];
  v18 = v0[305];

  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v3 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF740;
  v7 = v6 + v5;
  v8 = (v7 + *(v3 + 48));
  v9 = enum case for DIPError.PropertyKey.conversationID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v7, v9, v10);
  v12 = *(v17 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v13 = *(v17 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v12;
  v8[1] = v13;
  v14 = (v7 + v4 + *(v3 + 48));
  v11();
  v14[3] = &type metadata for String;
  v14[4] = &protocol witness table for String;
  *v14 = v18;
  v14[1] = v19;
  swift_errorRetain();

  sub_10003C9C0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v21 + 104))(v22, enum case for DIPError.Code.internalError(_:), v23);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005F6850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 377) = v21;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a4;
  *(v8 + 144) = a6;
  *(v8 + 376) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v15 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  *(v8 + 248) = v16;
  v17 = *(v16 - 8);
  *(v8 + 256) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1005F6A84, 0, 0);
}

uint64_t sub_1005F6A84()
{
  v19 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 128);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 304);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  if (v5)
  {
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending topeka post request to %{public}s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  *(v0 + 312) = v13;
  v14 = swift_task_alloc();
  *(v0 + 320) = v14;
  *v14 = v0;
  v14[1] = sub_1005F6C38;
  v15 = *(v0 + 240);
  v16 = *(v0 + 376);

  return sub_1005F8A6C(v15, v16);
}

uint64_t sub_1005F6C38()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_1005F6D34, 0, 0);
}

uint64_t sub_1005F6D34()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  sub_10000BBC4(*(v0 + 144), v1, &unk_100844540, &unk_1006BFBC0);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 192);
    sub_10000BBC4(*(v0 + 240), *(v0 + 232), &unk_100844540, &unk_1006BFBC0);
    if (v4(v5, 1, v6) != 1)
    {
      sub_10000BE18(*(v0 + 224), &unk_100844540, &unk_1006BFBC0);
    }
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 192);
    v9 = *(v0 + 200);
    (*(v9 + 32))(v7, *(v0 + 224), v8);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 192);
  if (v4(v10, 1, v11) == 1)
  {
    v12 = *(v0 + 128);
    sub_10000BE18(v10, &unk_100844540, &unk_1006BFBC0);

    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
  }

  else
  {
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 200);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    (*(v17 + 32))(v15, v10, v11);
    URL.appendingPathComponent(_:)();
    v13 = URL.absoluteString.getter();
    v14 = v20;
    v21 = *(v17 + 8);
    v21(v16, v11);
    v21(v15, v11);
  }

  *(v0 + 328) = v14;
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v24 = v22[3];
  v25 = sub_10000BA08(v22, v24);
  *(v0 + 40) = v24;
  v26 = sub_100032DBC((v0 + 16));
  (*(*(v24 - 8) + 16))(v26, v25, v24);
  v27 = swift_task_alloc();
  *(v0 + 336) = v27;
  *v27 = v0;
  v27[1] = sub_1005F7008;
  v28 = *(v0 + 377);
  v29 = *(v0 + 136);

  return sub_1005F2458(v0 + 16, v13, v14, v23, &off_1007FC2F8, v28);
}

uint64_t sub_1005F7008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = (*v4)[42];
  v7 = (*v4)[41];
  v10 = *v4;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = a3;
  v5[46] = v3;

  if (v3)
  {
    v8 = sub_1005F7BF8;
  }

  else
  {
    sub_10000BB78(v5 + 2);
    v8 = sub_1005F7150;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005F7150()
{
  v111 = v0;
  v1 = *(v0 + 360);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v32 = *(v0 + 240);
    goto LABEL_25;
  }

  v3 = v2;
  v4 = *(v0 + 360);
  v5 = [v3 statusCode];
  if (v5 != 428)
  {
    if (v5 == 301)
    {
      v6 = *(v0 + 296);

      defaultLogger()();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Received 301 from server", v9, 2u);
      }

      v10 = *(v0 + 312);
      v11 = *(v0 + 296);
      v12 = *(v0 + 248);
      v13 = *(v0 + 256);

      v10(v11, v12);
      v14 = String._bridgeToObjectiveC()();
      v15 = [v3 valueForHTTPHeaderField:v14];

      if (v15)
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        *(v0 + 80) = v16;
        *(v0 + 88) = v18;
        sub_1000ACCA0();
        Collection.nilIfEmpty.getter();

        v19 = *(v0 + 104);
        if (v19)
        {
          v20 = *(v0 + 96);
          v21 = *(v0 + 288);
          defaultLogger()();

          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.debug.getter();

          v24 = os_log_type_enabled(v22, v23);
          v25 = *(v0 + 312);
          v26 = *(v0 + 288);
          v28 = *(v0 + 248);
          v27 = *(v0 + 256);
          if (v24)
          {
            v105 = *(v0 + 312);
            v29 = v20;
            v30 = swift_slowAlloc();
            v100 = v26;
            v31 = swift_slowAlloc();
            v110 = v31;
            *v30 = 136446210;
            *(v30 + 4) = sub_100141FE4(v29, v19, &v110);
            _os_log_impl(&_mh_execute_header, v22, v23, "Received 301 server response with location header %{public}s", v30, 0xCu);
            sub_10000BB78(v31);

            v20 = v29;

            v105(v100, v28);
          }

          else
          {

            v25(v26, v28);
          }

          sub_1005FDFA8(v20, v19, *(v0 + 378));
        }
      }

      v81 = *(v0 + 360);
      v82 = *(v0 + 344);
      v103 = *(v0 + 352);
      v108 = *(v0 + 240);
      v83 = *(v0 + 112);
      (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for DIPError.Code.httpMovedPermanently(_:), *(v0 + 168));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
      v84 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

      sub_10000B90C(v82, v103);
      sub_10000BE18(v108, &unk_100844540, &unk_1006BFBC0);
      *v83 = v84;
      *(v83 + 8) = 0;
      *(v83 + 16) = 1;
      v59 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
      goto LABEL_30;
    }

    v60 = String._bridgeToObjectiveC()();
    v61 = [v3 valueForHTTPHeaderField:v60];

    if (!v61)
    {
      v76 = *(v0 + 360);
      sub_10000BE18(*(v0 + 240), &unk_100844540, &unk_1006BFBC0);

LABEL_26:
      v79 = *(v0 + 360);
      v80 = *(v0 + 112);
      *v80 = *(v0 + 344);
      *(v80 + 16) = v79;
      v59 = &enum case for DIPRetrier.RetryResult.success<A>(_:);
      goto LABEL_30;
    }

    v62 = *(v0 + 264);
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    defaultLogger()();

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 312);
    v70 = *(v0 + 256);
    v71 = *(v0 + 264);
    v72 = *(v0 + 248);
    if (v68)
    {
      v107 = *(v0 + 312);
      v73 = v63;
      v74 = swift_slowAlloc();
      v102 = v71;
      v75 = swift_slowAlloc();
      v110 = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_100141FE4(v73, v65, &v110);
      _os_log_impl(&_mh_execute_header, v66, v67, "Content-Location header set to %{public}s", v74, 0xCu);
      sub_10000BB78(v75);

      v63 = v73;

      v107(v102, v72);
    }

    else
    {

      v69(v71, v72);
    }

    v77 = *(v0 + 360);
    v78 = *(v0 + 240);
    sub_1005FDFA8(v63, v65, *(v0 + 378));

    v32 = v78;
LABEL_25:
    sub_10000BE18(v32, &unk_100844540, &unk_1006BFBC0);
    goto LABEL_26;
  }

  v33 = *(v0 + 280);

  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Received 428 from server", v36, 2u);
  }

  v37 = *(v0 + 312);
  v38 = *(v0 + 280);
  v39 = *(v0 + 248);
  v40 = *(v0 + 256);

  v37(v38, v39);
  v41 = String._bridgeToObjectiveC()();
  v42 = [v3 valueForHTTPHeaderField:v41];

  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    *(v0 + 48) = v43;
    *(v0 + 56) = v45;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    if (*(v0 + 72))
    {
      v46 = *(v0 + 272);

      defaultLogger()();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Server indiciated registration is required", v49, 2u);
      }

      v50 = *(v0 + 312);
      v51 = *(v0 + 272);
      v52 = *(v0 + 248);
      v53 = *(v0 + 256);

      v50(v51, v52);
      type metadata accessor for DaemonAnalytics();
      static DaemonAnalytics.sendPasskitRegistrationEvent(success:preconditionFailed:)();
    }
  }

  v54 = *(v0 + 352);
  v55 = *(v0 + 360);
  v56 = *(v0 + 344);
  v57 = *(v0 + 240);
  v101 = v57;
  v106 = *(v0 + 112);
  (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for DIPError.Code.httpPreconditionRequired(_:), *(v0 + 168));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError);
  v58 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  sub_10000B90C(v56, v54);
  sub_10000BE18(v101, &unk_100844540, &unk_1006BFBC0);
  *v106 = v58;
  v59 = &enum case for DIPRetrier.RetryResult.failure<A>(_:);
LABEL_30:
  v86 = *(v0 + 296);
  v85 = *(v0 + 304);
  v88 = *(v0 + 280);
  v87 = *(v0 + 288);
  v89 = *(v0 + 264);
  v90 = *(v0 + 272);
  v91 = *(v0 + 240);
  v97 = *(v0 + 232);
  v98 = *(v0 + 224);
  v99 = *(v0 + 216);
  v104 = *(v0 + 208);
  v109 = *(v0 + 184);
  v92 = *(v0 + 112);
  v93 = *v59;
  v94 = sub_100007224(&qword_100849660, &qword_1006E96A0);
  (*(*(v94 - 8) + 104))(v92, v93, v94);

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_1005F7BF8()
{
  v1 = v0[46];
  v2 = v0[14];
  sub_10000BE18(v0[30], &unk_100844540, &unk_1006BFBC0);
  sub_10000BB78(v0 + 2);
  *v2 = v1;
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[30];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[23];
  v10 = v0[14];
  v11 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
  v12 = sub_100007224(&qword_100849660, &qword_1006E96A0);
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005F7D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = type metadata accessor for Logger();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_1005F7EA4, 0, 0);
}

uint64_t sub_1005F7EA4()
{
  v1 = *(v0 + 104);
  v2 = sub_10060A770(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), 1);
  *(v0 + 168) = v2;
  if (!v2)
  {
LABEL_4:
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 128);

    v14 = *(v0 + 8);
    v15 = *(v0 + 168);

    return v14(v15);
  }

  v3 = *(v0 + 160);
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  Error.dipErrorCode.getter();
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
LABEL_3:
    sub_10000BE18(*(v0 + 160), &qword_10083B020, &unk_1006D8ED0);
    goto LABEL_4;
  }

  v17 = *(v0 + 152);
  sub_10000BBC4(*(v0 + 160), v17, &qword_10083B020, &unk_1006D8ED0);
  v18 = (*(v8 + 88))(v17, v7);
  if (v18 == enum case for DIPError.Code.topekaSharedVerifiedClaimNeedsRefresh(_:) || v18 == enum case for DIPError.Code.topekaSharedVerifiedClaimExpired(_:))
  {
    goto LABEL_12;
  }

  if (v18 == enum case for DIPError.Code.topekaSelfHealDeleteCurrentClaim(_:))
  {
    v40 = *(v0 + 144);
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Received self heal delete current claim response code from server", v43, 2u);
    }

    v44 = *(v0 + 144);
    v45 = *(v0 + 112);
    v46 = *(v0 + 120);
    v47 = *(v0 + 104);

    (*(v46 + 8))(v44, v45);
    v48 = v47 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 176) = Strong;
    if (!Strong)
    {
      goto LABEL_3;
    }

    v50 = *(v48 + 8);
    ObjectType = swift_getObjectType();
    v52 = *(v50 + 8);
    v71 = (v52 + *v52);
    v53 = v52[1];
    v54 = swift_task_alloc();
    *(v0 + 184) = v54;
    *v54 = v0;
    v54[1] = sub_1005F85DC;
    v35 = *(v0 + 96);
    v36 = *(v0 + 88);
    v37 = ObjectType;
    v38 = v50;
    v39 = v71;

    return v39(v36, v35, v37, v38);
  }

  if (v18 == enum case for DIPError.Code.topekaSelfHealDeleteAllClaimsForCurrentProvider(_:))
  {
LABEL_12:
    v20 = *(v0 + 136);
    sub_10000BE18(*(v0 + 160), &qword_10083B020, &unk_1006D8ED0);
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Received self heal delete all claims for current provider response code from server", v23, 2u);
    }

    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 120);
    v27 = *(v0 + 104);

    (*(v26 + 8))(v24, v25);
    v28 = v27 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer;
    v29 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 192) = v29;
    if (!v29)
    {
      goto LABEL_4;
    }

    v30 = *(v28 + 8);
    v31 = swift_getObjectType();
    v32 = *(v30 + 16);
    v70 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    *(v0 + 200) = v34;
    *v34 = v0;
    v34[1] = sub_1005F879C;
    v35 = *(v0 + 96);
    v36 = *(v0 + 88);
    v37 = v31;
    v38 = v30;
    v39 = v70;

    return v39(v36, v35, v37, v38);
  }

  if (v18 != enum case for DIPError.Code.topekaSelfHealDeleteEverything(_:))
  {
    (*(v8 + 8))(*(v0 + 152), v7);
    goto LABEL_3;
  }

  v55 = *(v0 + 128);
  defaultLogger()();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Received self heal delete everything response code from server", v58, 2u);
  }

  v60 = *(v0 + 120);
  v59 = *(v0 + 128);
  v62 = *(v0 + 104);
  v61 = *(v0 + 112);

  (*(v60 + 8))(v59, v61);
  v63 = v62 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer;
  v64 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 208) = v64;
  if (!v64)
  {
    goto LABEL_3;
  }

  v65 = *(v63 + 8);
  v66 = swift_getObjectType();
  v67 = *(v65 + 24);
  v72 = (v67 + *v67);
  v68 = v67[1];
  v69 = swift_task_alloc();
  *(v0 + 216) = v69;
  *v69 = v0;
  v69[1] = sub_1005F8958;

  return v72(v66, v65);
}

uint64_t sub_1005F85DC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_1005F86F0, 0, 0);
}

uint64_t sub_1005F86F0()
{
  sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  v6 = v0[1];
  v7 = v0[21];

  return v6(v7);
}

uint64_t sub_1005F879C()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v12 = *v0;

  v4 = v1[20];
  v5 = v1[19];
  v6 = v1[18];
  v7 = v1[17];
  v8 = v1[16];

  v9 = *(v12 + 8);
  v10 = v1[21];

  return v9(v10);
}

uint64_t sub_1005F8958()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_1005FEBE4, 0, 0);
}

uint64_t sub_1005F8A6C(uint64_t a1, char a2)
{
  *(v2 + 2873) = a2;
  *(v2 + 7896) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 7904) = v3;
  v4 = *(v3 - 8);
  *(v2 + 7912) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 7920) = swift_task_alloc();
  *(v2 + 7928) = swift_task_alloc();
  *(v2 + 7936) = swift_task_alloc();
  v6 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v2 + 7944) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v2 + 7952) = v7;
  v8 = *(v7 - 8);
  *(v2 + 7960) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 7968) = swift_task_alloc();
  *(v2 + 7976) = swift_task_alloc();

  return _swift_task_switch(sub_1005F8BE8, 0, 0);
}

uint64_t sub_1005F8BE8()
{
  v73 = v0;
  if (*(v0 + 2873) > 1u || *(v0 + 2873))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      v1 = static DaemonDefaultsKeys.topekaBaseURL.getter();
    }

    else
    {
      v1 = static DaemonDefaultsKeys.topekaBaseURLV2.getter();
    }
  }

  else
  {

    v1 = static DaemonDefaultsKeys.topekaBaseURL.getter();
  }

  v4 = v1;
  v5 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 stringForKey:v7];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = *(v0 + 7960);
  v10 = *(v0 + 7952);
  v11 = *(v0 + 7944);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_1005A2220(v12, v14, v11);
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    v15 = *(v0 + 7928);
    sub_10000BE18(*(v0 + 7944), &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 7928);
    v20 = *(v0 + 7912);
    v21 = *(v0 + 7904);
    if (v18)
    {
      v70 = *(v0 + 7928);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v72[0] = v23;
      *v22 = 136446210;
      v24 = sub_100141FE4(v12, v14, v72);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not using Topeka base url %{public}s from user defaults because it is not valid", v22, 0xCu);
      sub_10000BB78(v23);

      (*(v20 + 8))(v70, v21);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

LABEL_14:
    v44 = *(v0 + 2873);
    if (v44 <= 1)
    {
      if (*(v0 + 2873))
      {
        if (qword_100832B60 != -1)
        {
          swift_once();
        }

        v65 = *(qword_100881E78 + 16);
        os_unfair_lock_lock(v65 + 54);
        sub_100031B5C(&v65[4], v0 + 7296);
        os_unfair_lock_unlock(v65 + 54);

        sub_100020260(v0 + 7296, v0 + 7816);
        sub_100031918(v0 + 7296);
        *(v0 + 8008) = *sub_10000BA08((v0 + 7816), *(v0 + 7840));
        v66 = swift_task_alloc();
        *(v0 + 8016) = v66;
        *v66 = v0;
        v66[1] = sub_1005F9B28;
        v47 = v0 + 992;
      }

      else
      {
        if (qword_100832B60 != -1)
        {
          swift_once();
        }

        v48 = *(qword_100881E78 + 16);
        os_unfair_lock_lock(v48 + 54);
        sub_100031B5C(&v48[4], v0 + 7496);
        os_unfair_lock_unlock(v48 + 54);

        sub_100020260(v0 + 7496, v0 + 7856);
        sub_100031918(v0 + 7496);
        *(v0 + 7984) = *sub_10000BA08((v0 + 7856), *(v0 + 7880));
        v49 = swift_task_alloc();
        *(v0 + 7992) = v49;
        *v49 = v0;
        v49[1] = sub_1005F96B4;
        v47 = v0 + 504;
      }
    }

    else if (v44 == 2)
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v61 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v61 + 54);
      sub_100031B5C(&v61[4], v0 + 7096);
      os_unfair_lock_unlock(v61 + 54);

      sub_100020260(v0 + 7096, v0 + 7776);
      sub_100031918(v0 + 7096);
      *(v0 + 8032) = *sub_10000BA08((v0 + 7776), *(v0 + 7800));
      v62 = swift_task_alloc();
      *(v0 + 8040) = v62;
      *v62 = v0;
      v62[1] = sub_1005F9FC8;
      v47 = v0 + 1480;
    }

    else if (v44 == 3)
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v45 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v45 + 54);
      sub_100031B5C(&v45[4], v0 + 6896);
      os_unfair_lock_unlock(v45 + 54);

      sub_100020260(v0 + 6896, v0 + 7736);
      sub_100031918(v0 + 6896);
      *(v0 + 8056) = *sub_10000BA08((v0 + 7736), *(v0 + 7760));
      v46 = swift_task_alloc();
      *(v0 + 8064) = v46;
      *v46 = v0;
      v46[1] = sub_1005FA468;
      v47 = v0 + 1968;
    }

    else
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v63 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v63 + 54);
      sub_1000318FC(&v63[4], v0 + 6696);
      os_unfair_lock_unlock(v63 + 54);

      sub_100020260(v0 + 6696, v0 + 7696);
      sub_100031918(v0 + 6696);
      *(v0 + 8080) = *sub_10000BA08((v0 + 7696), *(v0 + 7720));
      v64 = swift_task_alloc();
      *(v0 + 8088) = v64;
      *v64 = v0;
      v64[1] = sub_1005FA90C;
      v47 = v0 + 16;
    }

    return sub_10050886C(v47);
  }

  v25 = *(v0 + 7976);
  v26 = *(v0 + 7968);
  v27 = *(v0 + 7960);
  v28 = *(v0 + 7952);
  v29 = *(v0 + 7944);
  v30 = *(v0 + 7936);

  v71 = *(v27 + 32);
  v71(v25, v29, v28);
  defaultLogger()();
  (*(v27 + 16))(v26, v25, v28);

  v31 = Logger.logObject.getter();
  LOBYTE(v25) = static os_log_type_t.debug.getter();

  v68 = v25;
  v32 = os_log_type_enabled(v31, v25);
  v33 = *(v0 + 7968);
  v34 = *(v0 + 7960);
  v35 = *(v0 + 7952);
  v36 = *(v0 + 7936);
  v37 = *(v0 + 7912);
  v69 = *(v0 + 7904);
  if (v32)
  {
    v67 = *(v0 + 7936);
    v38 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v38 = 136315394;
    v39 = sub_100141FE4(v4, v5, v72);

    *(v38 + 4) = v39;
    *(v38 + 12) = 2082;
    v40 = URL.absoluteString.getter();
    v42 = v41;
    (*(v34 + 8))(v33, v35);
    v43 = sub_100141FE4(v40, v42, v72);

    *(v38 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v31, v68, "Using Topeka base url from defaults %s: %{public}s", v38, 0x16u);
    swift_arrayDestroy();

    (*(v37 + 8))(v67, v69);
  }

  else
  {

    (*(v34 + 8))(v33, v35);
    (*(v37 + 8))(v36, v69);
  }

  v50 = *(v0 + 7960);
  v51 = *(v0 + 7952);
  v52 = *(v0 + 7896);
  v71(v52, *(v0 + 7976), v51);
  (*(v50 + 56))(v52, 0, 1, v51);
  v53 = *(v0 + 7976);
  v54 = *(v0 + 7968);
  v55 = *(v0 + 7944);
  v56 = *(v0 + 7936);
  v57 = *(v0 + 7928);
  v58 = *(v0 + 7920);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1005F96B4()
{
  v2 = *v1;
  v3 = *(*v1 + 7992);
  v7 = *v1;
  *(*v1 + 8000) = v0;

  if (v0)
  {
    v4 = *(v2 + 7984);
    v5 = sub_1005F99E4;
  }

  else
  {
    v5 = sub_1005F97D0;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005F97D0()
{
  v22 = v0;
  memcpy(v0 + 360, v0 + 67, 0x1A1uLL);
  sub_1000AA624((v0 + 360), (v0 + 784));
  sub_1000F2758((v0 + 63));
  v1 = v0[364];
  v2 = v0[365];

  sub_1000AA65C((v0 + 360));
  sub_10000BB78(v0 + 982);
  v3 = v0[990];
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[990];
  v8 = v0[989];
  v9 = v0[988];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_100141FE4(v1, v2, &v21);
    _os_log_impl(&_mh_execute_header, v4, v5, "Using Topeka base url from config: %{public}s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v8 + 8))(v7, v9);
  v12 = v0[987];
  URL.init(string:)();

  v13 = v0[997];
  v14 = v0[996];
  v15 = v0[993];
  v16 = v0[992];
  v17 = v0[991];
  v18 = v0[990];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005F99E4()
{
  v1 = *(v0 + 8000);

  return _swift_task_switch(sub_1005F9A4C, 0, 0);
}

uint64_t sub_1005F9A4C()
{
  sub_10000BB78(v0 + 982);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  v1 = v0[997];
  v2 = v0[996];
  v3 = v0[993];
  v4 = v0[992];
  v5 = v0[991];
  v6 = v0[990];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005F9B28()
{
  v2 = *v1;
  v3 = *(*v1 + 8016);
  v7 = *v1;
  *(*v1 + 8024) = v0;

  if (v0)
  {
    v4 = *(v2 + 8008);
    v5 = sub_1005F9E84;
  }

  else
  {
    v5 = sub_1005F9C44;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005F9C44()
{
  v22 = v0;
  memcpy(v0 + 413, v0 + 128, 0x1A1uLL);
  sub_1000AA624((v0 + 413), (v0 + 731));
  sub_1000F2758((v0 + 124));
  v1 = v0[419];
  v2 = v0[420];

  sub_1000AA65C((v0 + 413));
  sub_10000BB78(v0 + 977);
  if (v2)
  {
    v3 = v0[990];
    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[990];
    v8 = v0[989];
    v9 = v0[988];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100141FE4(v1, v2, &v21);
      _os_log_impl(&_mh_execute_header, v4, v5, "Using Topeka base url from config: %{public}s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    (*(v8 + 8))(v7, v9);
    v12 = v0[987];
    URL.init(string:)();
  }

  else
  {
    (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  }

  v13 = v0[997];
  v14 = v0[996];
  v15 = v0[993];
  v16 = v0[992];
  v17 = v0[991];
  v18 = v0[990];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005F9E84()
{
  v1 = *(v0 + 8024);

  return _swift_task_switch(sub_1005F9EEC, 0, 0);
}

uint64_t sub_1005F9EEC()
{
  sub_10000BB78(v0 + 977);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  v1 = v0[997];
  v2 = v0[996];
  v3 = v0[993];
  v4 = v0[992];
  v5 = v0[991];
  v6 = v0[990];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005F9FC8()
{
  v2 = *v1;
  v3 = *(*v1 + 8040);
  v7 = *v1;
  *(*v1 + 8048) = v0;

  if (v0)
  {
    v4 = *(v2 + 8032);
    v5 = sub_1005FA324;
  }

  else
  {
    v5 = sub_1005FA0E4;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005FA0E4()
{
  v22 = v0;
  memcpy(v0 + 466, v0 + 189, 0x1A1uLL);
  sub_1000AA624((v0 + 466), (v0 + 678));
  sub_1000F2758((v0 + 185));
  v1 = v0[474];
  v2 = v0[475];

  sub_1000AA65C((v0 + 466));
  sub_10000BB78(v0 + 972);
  if (v2)
  {
    v3 = v0[990];
    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[990];
    v8 = v0[989];
    v9 = v0[988];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100141FE4(v1, v2, &v21);
      _os_log_impl(&_mh_execute_header, v4, v5, "Using Topeka base url from config: %{public}s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    (*(v8 + 8))(v7, v9);
    v12 = v0[987];
    URL.init(string:)();
  }

  else
  {
    (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  }

  v13 = v0[997];
  v14 = v0[996];
  v15 = v0[993];
  v16 = v0[992];
  v17 = v0[991];
  v18 = v0[990];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005FA324()
{
  v1 = *(v0 + 8048);

  return _swift_task_switch(sub_1005FA38C, 0, 0);
}

uint64_t sub_1005FA38C()
{
  sub_10000BB78(v0 + 972);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  v1 = v0[997];
  v2 = v0[996];
  v3 = v0[993];
  v4 = v0[992];
  v5 = v0[991];
  v6 = v0[990];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005FA468()
{
  v2 = *v1;
  v3 = *(*v1 + 8064);
  v7 = *v1;
  *(*v1 + 8072) = v0;

  if (v0)
  {
    v4 = *(v2 + 8056);
    v5 = sub_1005FA7C8;
  }

  else
  {
    v5 = sub_1005FA584;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005FA584()
{
  v22 = v0;
  memcpy(v0 + 519, v0 + 250, 0x1A1uLL);
  sub_1000AA624((v0 + 519), (v0 + 625));
  sub_1000F2758((v0 + 246));
  v1 = v0[567];
  v2 = v0[568];

  sub_1000AA65C((v0 + 519));
  sub_10000BB78(v0 + 967);
  if (v2)
  {
    v3 = v0[990];
    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[990];
    v8 = v0[989];
    v9 = v0[988];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100141FE4(v1, v2, &v21);
      _os_log_impl(&_mh_execute_header, v4, v5, "Using Topeka base url from config: %{public}s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    (*(v8 + 8))(v7, v9);
    v12 = v0[987];
    URL.init(string:)();
  }

  else
  {
    (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  }

  v13 = v0[997];
  v14 = v0[996];
  v15 = v0[993];
  v16 = v0[992];
  v17 = v0[991];
  v18 = v0[990];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005FA7C8()
{
  v1 = *(v0 + 8072);

  return _swift_task_switch(sub_1005FA830, 0, 0);
}

uint64_t sub_1005FA830()
{
  sub_10000BB78(v0 + 967);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  v1 = v0[997];
  v2 = v0[996];
  v3 = v0[993];
  v4 = v0[992];
  v5 = v0[991];
  v6 = v0[990];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005FA90C()
{
  v2 = *v1;
  v3 = *(*v1 + 8088);
  v7 = *v1;
  *(*v1 + 8096) = v0;

  if (v0)
  {
    v4 = *(v2 + 8080);
    v5 = sub_1005FAC68;
  }

  else
  {
    v5 = sub_1005FAA28;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005FAA28()
{
  v22 = v0;
  memcpy(v0 + 307, v0 + 6, 0x1A1uLL);
  sub_1000AA624((v0 + 307), (v0 + 572));
  sub_1000F2758((v0 + 2));
  v1 = v0[357];
  v2 = v0[358];

  sub_1000AA65C((v0 + 307));
  sub_10000BB78(v0 + 962);
  if (v2)
  {
    v3 = v0[990];
    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[990];
    v8 = v0[989];
    v9 = v0[988];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100141FE4(v1, v2, &v21);
      _os_log_impl(&_mh_execute_header, v4, v5, "Using Topeka base url from config: %{public}s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    (*(v8 + 8))(v7, v9);
    v12 = v0[987];
    URL.init(string:)();
  }

  else
  {
    (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  }

  v13 = v0[997];
  v14 = v0[996];
  v15 = v0[993];
  v16 = v0[992];
  v17 = v0[991];
  v18 = v0[990];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005FAC68()
{
  v1 = *(v0 + 8096);

  return _swift_task_switch(sub_1005FACD0, 0, 0);
}

uint64_t sub_1005FACD0()
{
  sub_10000BB78(v0 + 962);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  v1 = v0[997];
  v2 = v0[996];
  v3 = v0[993];
  v4 = v0[992];
  v5 = v0[991];
  v6 = v0[990];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005FADAC()
{
  v1 = OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_redirectRetrier;
  v2 = type metadata accessor for DIPRetrier();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_authRetrier, v2);
  v3(v0 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_retrier, v2);
  v4 = v0 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer;

  return sub_100485E80(v4);
}

id sub_1005FAE70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIPTopekaWebService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DIPTopekaWebService()
{
  result = qword_100849630;
  if (!qword_100849630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005FAFC4()
{
  result = type metadata accessor for DIPRetrier();
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

uint64_t sub_1005FB060(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002A8B20(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1002A8CFC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1005FB1C0(uint64_t a1, unint64_t a2)
{
  sub_10000B8B8(a1, a2);
  v4 = sub_10034D244(a1, a2)[2];
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_1005FB22C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005FB268@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1005FB2B0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_1005FB45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[127] = a5;
  v5[126] = a4;
  v5[125] = a3;
  v5[124] = a2;
  v5[123] = a1;
  v6 = type metadata accessor for UUID();
  v5[128] = v6;
  v7 = *(v6 - 8);
  v5[129] = v7;
  v8 = *(v7 + 64) + 15;
  v5[130] = swift_task_alloc();
  v9 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v5[131] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();

  return _swift_task_switch(sub_1005FB568, 0, 0);
}

uint64_t sub_1005FB568()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 63));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[86];
  v4 = v0[87];
  sub_10001F640(v3);
  v5 = sub_100031918((v0 + 63));
  if (v3)
  {
    v6 = v3(v5);
    sub_10001FE8C(v3);
    v7 = v0[133];
    v8 = v0[132];
    v9 = v0[130];

    v10 = v0[1];

    return v10(v6);
  }

  else
  {
    v12 = *(v1 + 16);
    os_unfair_lock_lock(v12 + 54);
    sub_100031B5C(&v12[4], (v0 + 88));
    os_unfair_lock_unlock(v12 + 54);
    sub_100020260((v0 + 88), (v0 + 113));
    sub_100031918((v0 + 88));
    v0[134] = *sub_10000BA08(v0 + 113, v0[116]);
    v13 = swift_task_alloc();
    v0[135] = v13;
    *v13 = v0;
    v13[1] = sub_1005FB768;

    return sub_10050886C((v0 + 2));
  }
}

uint64_t sub_1005FB768()
{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v7 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v4 = *(v2 + 1072);
    v5 = sub_1005FBAB8;
  }

  else
  {
    v5 = sub_1005FB884;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005FB884()
{
  v1 = v0[133];
  v2 = v0[131];
  v3 = v0[127];
  v4 = v0[126];
  sub_10000BB78(v0 + 113);
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v2[6];
  sub_1000F2758((v0 + 2));
  *&v1[v8] = v7;
  v9 = enum case for DIPBackoffStrategy.exponential(_:);
  v10 = type metadata accessor for DIPBackoffStrategy();
  (*(*(v10 - 8) + 104))(&v1[v8], v9, v10);
  *v1 = v5;
  *(v1 + 1) = v6;
  v1[v2[7]] = 0;
  v1[v2[8]] = 1;
  v1[v2[9]] = 0;
  v11 = &v1[v2[10]];
  *v11 = v4;
  *(v11 + 1) = v3;
  v12 = v0[133];
  v13 = v0[132];
  v14 = v0[130];
  v15 = v0[129];
  v16 = v0[128];
  v17 = v0[125];
  v18 = v0[124];
  v19 = v0[123];

  sub_100020260(v19, (v0 + 118));
  sub_1005FEB1C(v12, v13, type metadata accessor for DIPHTTPSession.Configuration);
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v15 + 8))(v14, v16);
  v23 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService());
  v24 = sub_1005D7D88(v20, v22, (v0 + 118), v13);
  sub_1005FEB84(v12, type metadata accessor for DIPHTTPSession.Configuration);
  *&v24[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = v17;
  swift_unknownObjectWeakAssign();
  v25 = v0[133];
  v26 = v0[132];
  v27 = v0[130];

  v28 = v0[1];

  return v28(v24);
}

uint64_t sub_1005FBAB8()
{
  v1 = *(v0 + 1088);

  return _swift_task_switch(sub_1005FBB20, 0, 0);
}

uint64_t sub_1005FBB20()
{
  sub_10000BB78(v0 + 113);
  if (qword_100832D08 != -1)
  {
    swift_once();
  }

  v1 = v0[133];
  v2 = sub_10003170C(v0[131], qword_100882448);
  sub_1005FEB1C(v2, v1, type metadata accessor for DIPHTTPSession.Configuration);
  v3 = v0[133];
  v4 = v0[132];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[125];
  v9 = v0[124];
  sub_100020260(v0[123], (v0 + 118));
  sub_1005FEB1C(v3, v4, type metadata accessor for DIPHTTPSession.Configuration);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v6 + 8))(v5, v7);
  v13 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService());
  v14 = sub_1005D7D88(v10, v12, (v0 + 118), v4);
  sub_1005FEB84(v3, type metadata accessor for DIPHTTPSession.Configuration);
  *&v14[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = v8;
  swift_unknownObjectWeakAssign();
  v15 = v0[133];
  v16 = v0[132];
  v17 = v0[130];

  v18 = v0[1];

  return v18(v14);
}

unint64_t sub_1005FBCE8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  v6._countAndFlagsBits = static DaemonInternalDefaultsKeys.livenessTestHeader.getter();
  v7 = NSUserDefaults.internalString(forKey:)(v6);

  if (!v7.value._object)
  {
    return 0;
  }

  defaultLogger()();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v7.value._countAndFlagsBits, v7.value._object, &v17);
    _os_log_impl(&_mh_execute_header, v8, v9, "Using Liveness-Config test header: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v1 + 8))(v4, v0);
  sub_100007224(&qword_100838818, &unk_1006D0F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = 0xD000000000000020;
  v13 = inited + 32;
  *(inited + 40) = 0x8000000100725150;
  *(inited + 48) = v7;
  v14 = sub_10003D21C(inited);
  swift_setDeallocating();
  sub_10000BE18(v13, &qword_100838820, &unk_1006DB6B0);
  return v14;
}

uint64_t sub_1005FBF5C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v48 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v50 = a5;
  v51 = v7;
  v49 = v11;
  while (v10)
  {
    v60 = a4;
    v19 = v12;
LABEL_14:
    v21 = (v19 << 10) | (16 * __clz(__rbit64(v10)));
    v22 = (*(a1 + 48) + v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = (*(a1 + 56) + v21);
    v26 = *v25;
    v27 = v25[1];
    v59[0] = v23;
    v59[1] = v24;
    v59[2] = v26;
    v59[3] = v27;

    a2(&v55, v59);

    v29 = v55;
    v28 = v56;
    v30 = v58;
    v54 = v57;
    v31 = *a5;
    v33 = sub_10003ADCC(v55, v56);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_25;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((v60 & 1) == 0)
      {
        sub_10016F53C();
      }
    }

    else
    {
      sub_100165FC0(v36, v60 & 1);
      v38 = *a5;
      v39 = sub_10003ADCC(v29, v28);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_27;
      }

      v33 = v39;
    }

    v10 &= v10 - 1;
    v41 = *a5;
    if (v37)
    {
      v13 = 16 * v33;
      v14 = (v41[7] + 16 * v33);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v41[7] + v13);
      v18 = v17[1];
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v41[(v33 >> 6) + 8] |= 1 << v33;
      v42 = (v41[6] + 16 * v33);
      *v42 = v29;
      v42[1] = v28;
      v43 = (v41[7] + 16 * v33);
      *v43 = v54;
      v43[1] = v30;
      v44 = v41[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_26;
      }

      v41[2] = v46;
    }

    a4 = 1;
    v12 = v19;
    a5 = v50;
    v7 = v51;
    v11 = v49;
  }

  v20 = v12;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v11)
    {
      sub_10001FA6C();
    }

    v10 = *(v7 + 8 * v19);
    ++v20;
    if (v10)
    {
      v60 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005FC224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v208 = *(v10 - 8);
  v11 = v208[8];
  v12 = __chkstk_darwin(v10);
  v205 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v32 = &v197 - v31;
  if (a5)
  {
    v33 = a5;
  }

  else
  {
    v33 = &_swiftEmptyDictionarySingleton;
  }

  if (!a2)
  {

    return v33;
  }

  v199 = v27;
  v200 = v26;
  v201 = v25;
  v197 = v24;
  v198 = v23;
  v202 = v30;
  v203 = v29;
  v204 = v28;
  v206 = v22;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v33[2])
  {
    v37 = v34;

    v38 = v37;
    v39 = v33;
    sub_10003ADCC(v38, v36);
    v41 = v40;

    if (v41)
    {
      v42 = v39;
      goto LABEL_11;
    }
  }

  else
  {
    v39 = v33;
  }

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v212[0] = v39;
  sub_10016CAB8(a1, a2, v43, v45, isUniquelyReferenced_nonNull_native);

  v42 = v212[0];
LABEL_11:
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v42[2])
  {

    goto LABEL_15;
  }

  sub_10003ADCC(v47, v48);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_15:
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = v42;
    sub_10016CAB8(a3, a4, v51, v53, v54);

    v42 = v212[0];
  }

  v55 = v208;
  p_align = &stru_10082BFE8.align;
  v207 = objc_opt_self();
  v57 = [v207 standardUserDefaults];
  v58._countAndFlagsBits = static DaemonInternalDefaultsKeys.idvServerShortcutResponse.getter();
  v59 = NSUserDefaults.internalString(forKey:)(v58);

  if (v59.value._object)
  {
    v60 = v42;
    defaultLogger()();

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v212[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_100141FE4(v59.value._countAndFlagsBits, v59.value._object, v212);
      _os_log_impl(&_mh_execute_header, v61, v62, "Using shortcut response header: %s", v63, 0xCu);
      sub_10000BB78(v64);
      p_align = &stru_10082BFE8.align;
    }

    (v208[1])(v32, v206);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = v60;
    sub_10016CAB8(v59.value._countAndFlagsBits, v59.value._object, 0xD00000000000001DLL, 0x8000000100724B00, v65);
    v42 = v212[0];
    v55 = v208;
  }

  v66 = v207;
  v67 = [v207 standardUserDefaults];
  v68._countAndFlagsBits = static DaemonInternalDefaultsKeys.ivsTestHeader.getter();
  v69 = NSUserDefaults.internalString(forKey:)(v68);

  if (v69.value._object)
  {
    v70 = v199;
    defaultLogger()();

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v212[0] = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_100141FE4(v69.value._countAndFlagsBits, v69.value._object, v212);
      _os_log_impl(&_mh_execute_header, v71, v72, "Using IVS-Test header: %s", v73, 0xCu);
      sub_10000BB78(v74);
      p_align = (&stru_10082BFE8 + 24);
    }

    v75 = v206;
    (v55[1])(v70);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = v42;
    sub_10016CAB8(v69.value._countAndFlagsBits, v69.value._object, 0xD000000000000014, 0x8000000100724AE0, v76);
    v42 = v212[0];
    v66 = v207;
    v77 = v75;
  }

  else
  {
    v77 = v206;
  }

  v78 = [v66 *(p_align + 416)];
  v79._countAndFlagsBits = static DaemonInternalDefaultsKeys.magentaTestHeader.getter();
  v80 = NSUserDefaults.internalString(forKey:)(v79);

  if (v80.value._object)
  {
    v81 = v55;
    v82 = v77;
    v83 = v200;
    defaultLogger()();

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v212[0] = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_100141FE4(v80.value._countAndFlagsBits, v80.value._object, v212);
      _os_log_impl(&_mh_execute_header, v84, v85, "Using Magenta-Test header: %s", v86, 0xCu);
      sub_10000BB78(v87);
      p_align = &stru_10082BFE8.align;
    }

    v77 = v82;
    (v81[1])(v83, v82);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = v42;
    sub_10016CAB8(v80.value._countAndFlagsBits, v80.value._object, 0xD000000000000018, 0x8000000100724AC0, v88);
    v42 = v212[0];
    v55 = v81;
    v66 = v207;
  }

  v89 = [v66 *(p_align + 416)];
  v90._countAndFlagsBits = static DaemonInternalDefaultsKeys.mockPassportClaim.getter();
  v91 = NSUserDefaults.internalBool(forKey:)(v90);

  if (v91)
  {
    v92 = v201;
    defaultLogger()();
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Mocking Digital ID claim", v95, 2u);
      v92 = v201;
    }

    (v55[1])(v92, v77);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = v42;
    sub_10016CAB8(1702195828, 0xE400000000000000, 0xD000000000000017, 0x8000000100724AA0, v96);
    v42 = v212[0];
  }

  v97 = [v66 *(p_align + 416)];
  v98._countAndFlagsBits = static DaemonInternalDefaultsKeys.mockLivenessVerification.getter();
  v99 = NSUserDefaults.internalString(forKey:)(v98);

  if (!v99.value._object)
  {
    goto LABEL_40;
  }

  v100 = (v99.value._object >> 56) & 0xF;
  if ((v99.value._object & 0x2000000000000000) == 0)
  {
    v100 = v99.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v100)
  {

LABEL_40:
    v107 = (&stru_10082BFE8 + 24);
    goto LABEL_43;
  }

  v101 = v197;
  defaultLogger()();

  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = v77;
    v106 = swift_slowAlloc();
    v212[0] = v106;
    *v104 = 136315138;
    *(v104 + 4) = sub_100141FE4(v99.value._countAndFlagsBits, v99.value._object, v212);
    _os_log_impl(&_mh_execute_header, v102, v103, "Mocking Digital ID liveness verification with value: %s", v104, 0xCu);
    sub_10000BB78(v106);
    v77 = v105;

    (v208[1])(v101, v105);
  }

  else
  {

    (v208[1])(v101, v77);
  }

  v107 = &stru_10082BFE8.align;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v212[0] = v42;
  sub_10016CAB8(v99.value._countAndFlagsBits, v99.value._object, 0xD000000000000022, 0x8000000100724A70, v108);
  v42 = v212[0];
  v55 = v208;
LABEL_43:
  v109 = [v66 *(v107 + 416)];
  v110._countAndFlagsBits = static DaemonInternalDefaultsKeys.mockSelfieMatchVerification.getter();
  v111 = NSUserDefaults.internalString(forKey:)(v110);

  if (!v111.value._object)
  {
LABEL_50:
    v119 = (&stru_10082BFE8 + 24);
    goto LABEL_53;
  }

  v112 = (v111.value._object >> 56) & 0xF;
  if ((v111.value._object & 0x2000000000000000) == 0)
  {
    v112 = v111.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v112)
  {

    goto LABEL_50;
  }

  v113 = v198;
  defaultLogger()();

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = v77;
    v118 = swift_slowAlloc();
    v212[0] = v118;
    *v116 = 136315138;
    *(v116 + 4) = sub_100141FE4(v111.value._countAndFlagsBits, v111.value._object, v212);
    _os_log_impl(&_mh_execute_header, v114, v115, "Mocking Digital ID selfie match verification with value: %s", v116, 0xCu);
    sub_10000BB78(v118);
    v77 = v117;

    (v208[1])(v113, v117);
  }

  else
  {

    (v208[1])(v113, v77);
  }

  v119 = &stru_10082BFE8.align;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v212[0] = v42;
  sub_10016CAB8(v111.value._countAndFlagsBits, v111.value._object, 0xD000000000000020, 0x8000000100724A40, v120);
  v42 = v212[0];
  v55 = v208;
LABEL_53:
  v121 = [v66 *(v119 + 416)];
  v122._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipPKDValidation.getter();
  v123 = NSUserDefaults.internalBool(forKey:)(v122);

  if (v123)
  {
    v124 = v202;
    defaultLogger()();
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "Skipping Digital ID PKD validation", v127, 2u);
      v124 = v202;
    }

    (v55[1])(v124, v77);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = v42;
    sub_10016CAB8(1702195828, 0xE400000000000000, 0xD000000000000015, 0x8000000100724A20, v128);
    v42 = v212[0];
  }

  v129 = [v66 *(v119 + 416)];
  v130._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceServerDrivenNFC.getter();
  v131 = NSUserDefaults.internalBool(forKey:)(v130);

  if (v131)
  {
    v132 = v203;
    defaultLogger()();
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "Force server driven nfc", v135, 2u);
      v132 = v203;
    }

    (v55[1])(v132, v77);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = v42;
    sub_10016CAB8(1702195828, 0xE400000000000000, 0xD000000000000018, 0x8000000100724A00, v136);
    v42 = v212[0];
  }

  v137 = [v66 *(v119 + 416)];
  v138._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipAppleCredentialVerification.getter();
  v139 = NSUserDefaults.internalBool(forKey:)(v138);

  if (v139)
  {
    v140 = v204;
    defaultLogger()();
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&_mh_execute_header, v141, v142, "Skip Apple Credential Verification", v143, 2u);
      v140 = v204;
    }

    (v55[1])(v140, v77);
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v212[0] = v42;
    sub_10016CAB8(1702195828, 0xE400000000000000, 0xD00000000000002FLL, 0x80000001007249D0, v144);
    v42 = v212[0];
  }

  v145 = [v66 *(v119 + 416)];
  v146._countAndFlagsBits = static DaemonInternalDefaultsKeys.debugHeaders.getter();
  v147 = NSUserDefaults.internalDictionary(forKey:)(v146);

  if (!v147)
  {
    return v42;
  }

  v148 = v205;
  defaultLogger()();

  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v212[0] = v152;
    *v151 = 134218242;
    *(v151 + 4) = *(v147 + 16);

    *(v151 + 12) = 2080;
    sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
    v153 = Dictionary.description.getter();
    v155 = v77;
    v156 = sub_100141FE4(v153, v154, v212);

    *(v151 + 14) = v156;
    _os_log_impl(&_mh_execute_header, v149, v150, "DIPTopekaWebService Adding %ld headers: %s", v151, 0x16u);
    sub_10000BB78(v152);

    (v55[1])(v205, v155);
  }

  else
  {

    (v55[1])(v148, v77);
  }

  v157 = sub_1005FB060(v147);

  v158 = v157 + 64;
  v159 = 1 << *(v157 + 32);
  v160 = -1;
  if (v159 < 64)
  {
    v160 = ~(-1 << v159);
  }

  v161 = v160 & *(v157 + 64);
  v162 = (v159 + 63) >> 6;

  v163 = 0;
  v205 = v157;
  while (v161)
  {
    v208 = v42;
LABEL_81:
    v168 = __clz(__rbit64(v161)) | (v163 << 6);
    v169 = (*(v157 + 48) + 16 * v168);
    v171 = *v169;
    v170 = v169[1];
    sub_10000BBC4(*(v157 + 56) + 32 * v168, v213, &unk_100845ED0, &qword_1006DA1D0);
    v212[0] = v171;
    v212[1] = v170;
    sub_10000BBC4(v213, v211, &unk_100845ED0, &qword_1006DA1D0);
    if (v211[3])
    {

      if (swift_dynamicCast())
      {
        v206 = v209;
        v207 = v210;

        v172 = v208;
        v173 = swift_isUniquelyReferenced_nonNull_native();
        v211[0] = v172;
        v175 = sub_10003ADCC(v171, v170);
        v176 = v172[2];
        v177 = (v174 & 1) == 0;
        v178 = v176 + v177;
        if (__OFADD__(v176, v177))
        {
          goto LABEL_102;
        }

        v179 = v174;
        if (v172[3] >= v178)
        {
          if (v173)
          {
            v182 = v211[0];
            if ((v174 & 1) == 0)
            {
              goto LABEL_95;
            }
          }

          else
          {
            sub_10016F53C();
            v182 = v211[0];
            if ((v179 & 1) == 0)
            {
              goto LABEL_95;
            }
          }
        }

        else
        {
          sub_100165FC0(v178, v173);
          v180 = sub_10003ADCC(v171, v170);
          if ((v179 & 1) != (v181 & 1))
          {
            goto LABEL_104;
          }

          v175 = v180;
          v182 = v211[0];
          if ((v179 & 1) == 0)
          {
LABEL_95:
            v182[(v175 >> 6) + 8] |= 1 << v175;
            v190 = (v182[6] + 16 * v175);
            *v190 = v171;
            v190[1] = v170;
            v191 = (v182[7] + 16 * v175);
            v192 = v207;
            *v191 = v206;
            v191[1] = v192;
            v193 = v182[2];
            v194 = __OFADD__(v193, 1);
            v195 = v193 + 1;
            if (v194)
            {
              goto LABEL_103;
            }

            v42 = v182;
            v182[2] = v195;
            goto LABEL_73;
          }
        }

        v164 = (v182[7] + 16 * v175);
        v165 = v164[1];
        v166 = v207;
        *v164 = v206;
        v164[1] = v166;

        v42 = v182;
LABEL_73:
        v157 = v205;
        goto LABEL_74;
      }
    }

    else
    {

      sub_10000BE18(v211, &unk_100845ED0, &qword_1006DA1D0);
    }

    v183 = v171;
    v42 = v208;
    v184 = sub_10003ADCC(v183, v170);
    v186 = v185;

    if (v186)
    {
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v211[0] = v42;
      if (!v187)
      {
        sub_10016F53C();
        v42 = v211[0];
      }

      v188 = *(v42[6] + 16 * v184 + 8);

      v189 = *(v42[7] + 16 * v184 + 8);

      sub_10015000C(v184, v42);
    }

LABEL_74:
    v161 &= v161 - 1;
    sub_10000BE18(v212, &qword_10083F048, &qword_1006DC5B8);
  }

  while (1)
  {
    v167 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      break;
    }

    if (v167 >= v162)
    {

      return v42;
    }

    v161 = *(v158 + 8 * v167);
    ++v163;
    if (v161)
    {
      v208 = v42;
      v163 = v167;
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005FD704(uint64_t a1)
{
  v2 = sub_100007224(&qword_100849668, &qword_1006E96A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v49 = &v46 - v4;
  v5 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v47 = &v46 - v7;
  v8 = sub_100007224(&qword_100849670, &qword_1006E96B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v52 = &v46 - v10;
  v11 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  __chkstk_darwin(v11);
  v48 = &v46 - v13;
  v14 = type metadata accessor for IdentityProofingRequestV2(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007224(&qword_100849678, &qword_1006E96B8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v46 - v20;
  v22 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  v55 = *(v22 - 8);
  v23 = *(v55 + 64);
  __chkstk_darwin(v22);
  v25 = &v46 - v24;
  v26 = sub_100007224(&qword_100842078, &unk_1006E9660);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v46 - v29;
  v31 = a1;
  sub_10001F2EC(a1, &v69);
  if (swift_dynamicCast())
  {
    (*(v27 + 8))(v30, v26);
    return 1;
  }

  sub_10001F2EC(a1, &v69);
  v33 = swift_dynamicCast();
  v34 = v55;
  v35 = *(v55 + 56);
  if (v33)
  {
    v35(v21, 0, 1, v22);
    (*(v34 + 32))(v25, v21, v22);
    JWSSignedJSON.payload.getter();
    v36 = *(v17 + 10);
    v37 = *(v17 + 11);

    sub_1005FEB84(v17, type metadata accessor for IdentityProofingRequestV2);
    *&v69 = v36;
    *(&v69 + 1) = v37;
    *&v60 = 0xD000000000000018;
    *(&v60 + 1) = 0x8000000100705380;
    sub_1000348A0();
    sub_1000348F4();
    v38 = BidirectionalCollection<>.starts<A>(with:)();
    (*(v34 + 8))(v25, v22);
  }

  else
  {
    v35(v21, 1, 1, v22);
    sub_10000BE18(v21, &qword_100849678, &qword_1006E96B8);
    sub_10001F2EC(v31, v78);
    v39 = v52;
    v40 = v54;
    if (swift_dynamicCast())
    {
      v41 = v53;
      (*(v53 + 56))(v39, 0, 1, v40);
      v42 = v48;
      (*(v41 + 32))(v48, v39, v40);
      JWSSignedJSON.payload.getter();
      v75 = v66;
      v76 = v67;
      *&v77 = v68;
      v71 = v62;
      v72 = v63;
      v73 = v64;
      v74 = v65;
      v69 = v60;
      v70 = v61;
      v44 = *(&v66 + 1);
      v43 = v66;

      sub_1000AE6AC(&v69);
    }

    else
    {
      (*(v53 + 56))(v39, 1, 1, v40);
      sub_10000BE18(v39, &qword_100849670, &qword_1006E96B0);
      sub_10001F2EC(v31, v78);
      v45 = v49;
      v40 = v51;
      if (!swift_dynamicCast())
      {
        (*(v50 + 56))(v45, 1, 1, v40);
        sub_10000BE18(v45, &qword_100849668, &qword_1006E96A8);
        return 0;
      }

      v41 = v50;
      (*(v50 + 56))(v45, 0, 1, v40);
      v42 = v47;
      (*(v41 + 32))(v47, v45, v40);
      JWSSignedJSON.payload.getter();
      v75 = v66;
      v76 = v67;
      v77 = v68;
      v71 = v62;
      v72 = v63;
      v73 = v64;
      v74 = v65;
      v69 = v60;
      v70 = v61;
      v44 = *(&v66 + 1);
      v43 = v66;

      sub_1000AE518(&v69);
    }

    v58 = v43;
    v59 = v44;
    v56 = 0xD000000000000018;
    v57 = 0x8000000100705380;
    sub_1000348A0();
    sub_1000348F4();
    v38 = BidirectionalCollection<>.starts<A>(with:)();
    (*(v41 + 8))(v42, v40);
  }

  if (v38)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005FDEA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v15 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 73);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100041F04;

  return sub_1005F6850(a1, v4, v5, v6, v11, v15, v7, v8);
}

void sub_1005FDFA8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v59 = &v54 - v14;
  v15 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v54 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v54 - v25;
  if (a3)
  {
    v27 = static DaemonDefaultsKeys.topekaBaseURLV2.getter();
  }

  else
  {
    v27 = static DaemonDefaultsKeys.topekaBaseURL.getter();
  }

  v60 = v27;
  v29 = v28;
  if (a2)
  {
    sub_1005A2220(a1, a2, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      sub_10000BE18(v18, &unk_100844540, &unk_1006BFBC0);
      defaultLogger()();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v63 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_100141FE4(a1, a2, &v63);
        _os_log_impl(&_mh_execute_header, v30, v31, "Not setting Topeka base URL to %{public}s because it is not a valid HTTPS url", v32, 0xCu);
        sub_10000BB78(v33);
      }

      (*(v61 + 8))(v13, v62);
    }

    else
    {
      v58 = v29;
      (*(v20 + 32))(v26, v18, v19);
      v39 = v59;
      defaultLogger()();
      v40 = *(v20 + 16);
      v57 = v26;
      v40(v24, v26, v19);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v63 = v56;
        *v43 = 136446210;
        v55 = URL.absoluteString.getter();
        v45 = v44;
        v46 = *(v20 + 8);
        v46(v24, v19);
        v47 = v46;
        v48 = sub_100141FE4(v55, v45, &v63);

        *(v43 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v41, v42, "Setting Topeka base URL to %{public}s", v43, 0xCu);
        sub_10000BB78(v56);

        v49 = v47;
      }

      else
      {

        v49 = *(v20 + 8);
        v49(v24, v19);
      }

      (*(v61 + 8))(v39, v62);
      v50 = [objc_opt_self() standardUserDefaults];
      v51 = v57;
      URL.absoluteString.getter();
      v52 = String._bridgeToObjectiveC()();

      v53 = String._bridgeToObjectiveC()();

      [v50 setObject:v52 forKey:v53];

      v49(v51, v19);
    }
  }

  else
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Clearing Topeka base URL", v36, 2u);
    }

    (*(v61 + 8))(v10, v62);
    v37 = [objc_opt_self() standardUserDefaults];
    v38 = String._bridgeToObjectiveC()();

    [v37 removeObjectForKey:v38];
  }
}

uint64_t sub_1005FE60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterTerminalResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FE670()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_1005FE6C0()
{
  result = qword_1008496C8;
  if (!qword_1008496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008496C8);
  }

  return result;
}

uint64_t sub_1005FE714()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_1005FE76C()
{
  result = qword_1008496D0;
  if (!qword_1008496D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008496D0);
  }

  return result;
}

unint64_t sub_1005FE7C0()
{
  result = qword_1008496D8;
  if (!qword_1008496D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008496D8);
  }

  return result;
}

uint64_t sub_1005FE814()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7])
  {

    v3 = v0[9];

    v4 = v0[11];
  }

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1005FE898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1005FE8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1005FE8C0(uint64_t a1)
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

  return sub_1005DD3D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005FE988()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  if (v0[10])
  {

    v4 = v0[12];

    v5 = v0[14];
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1005FE9EC()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7])
  {

    v3 = v0[9];

    v4 = v0[11];
  }

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[18];

  v9 = v0[21];

  v10 = v0[22];

  v11 = v0[24];

  return _swift_deallocObject(v0, 200, 7);
}

unint64_t sub_1005FEA80()
{
  result = qword_100849730;
  if (!qword_100849730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100849730);
  }

  return result;
}

uint64_t sub_1005FEAD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005FEB1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005FEB84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005FEBE8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Date();
  v91 = *(v2 - 8);
  v3 = *(v91 + 64);
  __chkstk_darwin(v2);
  v90 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v96 = v5;
  v97 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v92 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v95 = &v81 - v10;
  v11 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v81 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v93 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v81 - v21;
  __chkstk_darwin(v20);
  v98 = &v81 - v23;
  v24 = [objc_opt_self() standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.networkCacheOverride.getter();
  v26 = NSUserDefaults.internalDictionary(forKey:)(v25);

  if (!v26)
  {
    goto LABEL_20;
  }

  v94 = a1;
  URLRequest.url.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    v27 = &unk_100844540;
    v28 = &unk_1006BFBC0;
    v29 = v14;
LABEL_4:
    sub_10000BE18(v29, v27, v28);
LABEL_20:
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v106.receiver = v100;
    v106.super_class = ObjectType;
    v61 = objc_msgSendSuper2(&v106, "cachedResponseForRequest:", isa);

    return v61;
  }

  v30 = v15;
  v86 = v2;
  v31 = v98;
  (*(v16 + 32))(v98, v14, v30);
  v32 = v95;
  defaultLogger()();
  v87 = *(v16 + 16);
  v88 = v16 + 16;
  v87(v22, v31, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v89 = v16;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v84 = v36;
    v85 = swift_slowAlloc();
    *&v105[0] = v85;
    *v36 = 136315138;
    URL.absoluteString.getter();
    v37 = String.lowercased()();
    countAndFlagsBits = v37._countAndFlagsBits;

    v38 = *(v16 + 8);
    v39 = v22;
    v40 = v30;
    v38(v39, v30);
    v41 = sub_100141FE4(countAndFlagsBits, v37._object, v105);

    v42 = v84;
    *(v84 + 1) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "DIPURLCache checking overriden cache for %s", v42, 0xCu);
    sub_10000BB78(v85);

    v31 = v98;
  }

  else
  {

    v38 = *(v16 + 8);
    v43 = v22;
    v40 = v30;
    v38(v43, v30);
  }

  v44 = v96;
  v45 = *(v97 + 8);
  v45(v32, v96);
  URL.absoluteString.getter();
  v46 = String.lowercased()();

  if (!*(v26 + 16))
  {

    goto LABEL_18;
  }

  v47 = sub_10003ADCC(v46._countAndFlagsBits, v46._object);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_10000BBC4(*(v26 + 56) + 32 * v47, &v103, &unk_100845ED0, &qword_1006DA1D0);

  v105[0] = v103;
  v105[1] = v104;
  if (!*(&v104 + 1))
  {
    v38(v31, v40);
    v27 = &unk_100845ED0;
    v28 = &qword_1006DA1D0;
    v29 = v105;
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v38(v31, v40);
    goto LABEL_20;
  }

  v50 = v102;
  ObjectType = v101;
  v51 = v92;
  defaultLogger()();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v54 = os_log_type_enabled(v52, v53);
  v100 = v50;
  if (v54)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "DIPURLCache matched cache override via internal settings; returning overriden response", v55, 2u);
    v50 = v100;
  }

  v45(v51, v44);
  v56 = v93;
  result = (v87)(v93, v31, v40);
  v58 = v50 >> 62;
  if ((v50 >> 62) > 1)
  {
    if (v58 != 2)
    {
      v59 = 0;
      goto LABEL_30;
    }

    v63 = *(ObjectType + 2);
    v62 = *(ObjectType + 3);
    v59 = v62 - v63;
    if (!__OFSUB__(v62, v63))
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  else if (!v58)
  {
    v59 = BYTE6(v50);
LABEL_30:
    v64 = objc_allocWithZone(NSURLResponse);
    URL._bridgeToObjectiveC()(v65);
    v67 = v66;
    v68 = String._bridgeToObjectiveC()();
    v95 = [v64 initWithURL:v67 MIMEType:v68 expectedContentLength:v59 textEncodingName:0];

    v97 = v89 + 8;
    v82 = v40;
    v38(v56, v40);
    v96 = v38;
    v69 = v90;
    Date.init()();
    sub_100007224(&qword_10083C010, &qword_1006DA4E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF740;
    *&v105[0] = 0x74416465726F7473;
    *(&v105[0] + 1) = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    v71 = v86;
    *(inited + 96) = v86;
    v72 = sub_100032DBC((inited + 72));
    v73 = v91;
    (*(v91 + 16))(v72, v69, v71);
    *&v105[0] = 0x4173657269707865;
    *(&v105[0] + 1) = 0xE900000000000074;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = v71;
    sub_100032DBC((inited + 144));
    Date.addingTimeInterval(_:)();
    sub_10003DB20(inited);
    swift_setDeallocating();
    sub_100007224(&qword_100834720, &qword_1006DA4F0);
    swift_arrayDestroy();
    v74 = objc_allocWithZone(NSCachedURLResponse);
    v75 = ObjectType;
    v76 = v100;
    v77 = Data._bridgeToObjectiveC()().super.isa;
    v78 = Dictionary._bridgeToObjectiveC()().super.isa;

    v79 = v74;
    v80 = v95;
    v61 = [v79 initWithResponse:v95 data:v77 userInfo:v78 storagePolicy:0];

    sub_10000B90C(v75, v76);
    (*(v73 + 8))(v69, v71);
    v96(v98, v82);
    return v61;
  }

  if (!__OFSUB__(HIDWORD(ObjectType), ObjectType))
  {
    v59 = HIDWORD(ObjectType) - ObjectType;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void sub_1005FF5A4()
{
  v0 = type metadata accessor for DIPURLCache();
  v1 = objc_allocWithZone(v0);
  v2 = objc_opt_self();
  v3 = [v2 sharedURLCache];
  v4 = [v3 memoryCapacity];

  v5 = [v2 sharedURLCache];
  v6 = [v5 diskCapacity];

  v7 = String._bridgeToObjectiveC()();
  v9.receiver = v1;
  v9.super_class = v0;
  v8 = objc_msgSendSuper2(&v9, "initWithMemoryCapacity:diskCapacity:diskPath:", v4, v6, v7);

  qword_100882498 = v8;
}

void *sub_1005FFB68@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1003C5388(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1003C5388((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1003C5388(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1003C5388(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1003C5388((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005FFF28(void *a1)
{
  v2 = sub_100007224(&qword_100834EA8, &qword_1006C06C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v36 - v4;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v36 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 userInfo];
  if (!v20)
  {
    goto LABEL_10;
  }

  v36[0] = v7;
  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v36[1] = 0x74416465726F7473;
  v36[2] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v23 = sub_10003AECC(v37), (v24 & 1) == 0))
  {

    sub_1000279C8(v37);
LABEL_10:
    v38 = 0u;
    v39 = 0u;
    goto LABEL_11;
  }

  sub_10001F2EC(*(v22 + 56) + 32 * v23, &v38);
  sub_1000279C8(v37);

  if (!*(&v39 + 1))
  {
LABEL_11:
    sub_10000BE18(&v38, &unk_100845ED0, &qword_1006DA1D0);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_12;
  }

  v25 = swift_dynamicCast();
  (*(v16 + 56))(v14, v25 ^ 1u, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_12:
    sub_10000BE18(v14, &unk_100849400, &unk_1006BFBB0);
    return 0;
  }

  (*(v16 + 32))(v19, v14, v15);
  v26 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v36[0] + 8))(v10, v6);
  [v26 setLocale:isa];

  TimeZone.init(secondsFromGMT:)();
  v28 = type metadata accessor for TimeZone();
  v29 = *(v28 - 8);
  v30 = 0;
  if ((*(v29 + 48))(v5, 1, v28) != 1)
  {
    v30 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v29 + 8))(v5, v28);
  }

  [v26 setTimeZone:v30];

  v31 = String._bridgeToObjectiveC()();
  [v26 setDateFormat:v31];

  v32 = Date._bridgeToObjectiveC()().super.isa;
  v33 = [v26 stringFromDate:v32];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v16 + 8))(v19, v15);
  return v34;
}

uint64_t sub_100600474(void *a1)
{
  v2 = 3;
  v3 = &off_1007F8938;
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;

    v6 = [a1 allHeaderFields];
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v7 + 16) && (v8 = sub_10003AECC(v11), (v9 & 1) != 0))
    {
      sub_10001F2EC(*(v7 + 56) + 32 * v8, v12);
      sub_1000279C8(v11);

      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {

      sub_1000279C8(v11);
    }

    v3 += 2;
    --v2;
  }

  while (v2);
  return 0;
}

uint64_t sub_1006005C0(uint64_t a1, unint64_t a2)
{
  v30 = type metadata accessor for CharacterSet();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v35 = 44;
  *(&v35 + 1) = 0xE100000000000000;
  v32 = &v35;

  result = sub_1005FFB68(0x7FFFFFFFFFFFFFFFLL, 1, sub_10036024C, v31, a1, a2, v8);
  v10 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v11 = 0;
    v28 = (v4 + 8);
    v12 = (result + 56);
    while (1)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v13 = *(v12 - 1);
      v14 = *v12;
      v35 = *(v12 - 3);
      v36 = v13;
      v37 = v14;

      static CharacterSet.whitespacesAndNewlines.getter();
      sub_1000F2814();
      v15 = StringProtocol.trimmingCharacters(in:)();
      v17 = v16;
      (*v28)(v7, v30);

      *&v35 = 61;
      *(&v35 + 1) = 0xE100000000000000;
      __chkstk_darwin(v18);
      *(&v27 - 2) = &v35;
      v19 = sub_1005FFB68(0x7FFFFFFFFFFFFFFFLL, 1, sub_100360690, (&v27 - 4), v15, v17, &v27);
      if (v19[2] == 2)
      {
        v20 = v19[6];
        v21 = v19[7];
        v35 = *(v19 + 2);
        v36 = v20;
        v37 = v21;
        v33 = 0x6567612D78616DLL;
        v34 = 0xE700000000000000;
        v22 = v19;
        sub_10001F298();
        if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
        {
          break;
        }
      }

      ++v11;

      v12 += 4;
      if (v29 == v11)
      {
        goto LABEL_9;
      }
    }

    if (v22[2] >= 2uLL)
    {
      v23 = v22[8];
      v24 = v22[9];
      v25 = v22[10];
      v26 = v22[11];

      return Double.init(_:)();
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

uint64_t sub_1006008BC(void *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    if (a3)
    {
      v42 = v14;
      v19 = result;
      v20 = a1;
      v21 = sub_100600474(v19);
      if (v22 && (v41 = sub_1006005C0(v21, v22), v24 = v23, , (v24 & 1) == 0))
      {
        Date.init()();
        sub_100007224(&qword_100834440, &qword_1006BFEC8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1006BF740;
        *(inited + 32) = 0x74416465726F7473;
        *(inited + 40) = 0xE800000000000000;
        *(inited + 72) = v13;
        v35 = sub_100032DBC((inited + 48));
        v36 = v42;
        (*(v42 + 16))(v35, v17, v13);
        *(inited + 80) = 0x4173657269707865;
        *(inited + 88) = 0xE900000000000074;
        *(inited + 120) = v13;
        sub_100032DBC((inited + 96));
        Date.addingTimeInterval(_:)();
        v37 = sub_10003D8DC(inited);
        swift_setDeallocating();
        sub_100007224(&qword_100834450, &unk_1006BFED0);
        swift_arrayDestroy();

        (*(v36 + 8))(v17, v13);
        return v37;
      }

      else if (a2)
      {
        defaultLogger()();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "DIPURLCache force cache flag received, returning user info with an immediate expiration date for caching.", v27, 2u);
        }

        (*(v43 + 8))(v12, v6);
        sub_100007224(&qword_100834440, &qword_1006BFEC8);
        v28 = swift_initStackObject();
        *(v28 + 16) = xmmword_1006BF740;
        *(v28 + 32) = 0x74416465726F7473;
        *(v28 + 40) = 0xE800000000000000;
        *(v28 + 72) = v13;
        sub_100032DBC((v28 + 48));
        static Date.now.getter();
        *(v28 + 80) = 0x4173657269707865;
        *(v28 + 88) = 0xE900000000000074;
        *(v28 + 120) = v13;
        sub_100032DBC((v28 + 96));
        static Date.now.getter();
        v29 = sub_10003D8DC(v28);
        swift_setDeallocating();
        sub_100007224(&qword_100834450, &unk_1006BFED0);
        swift_arrayDestroy();

        return v29;
      }

      else
      {
        defaultLogger()();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "DIPURLCache no max age was specified in the cache-control header, so don't cache this", v40, 2u);
        }

        (*(v43 + 8))(v10, v6);
        return 0;
      }
    }

    else
    {
      v30 = a1;
      Date.init()();
      sub_100007224(&qword_100834440, &qword_1006BFEC8);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_1006BF740;
      *(v31 + 32) = 0x74416465726F7473;
      *(v31 + 40) = 0xE800000000000000;
      *(v31 + 72) = v13;
      v32 = sub_100032DBC((v31 + 48));
      (*(v14 + 16))(v32, v17, v13);
      *(v31 + 80) = 0x4173657269707865;
      *(v31 + 88) = 0xE900000000000074;
      *(v31 + 120) = v13;
      sub_100032DBC((v31 + 96));
      Date.addingTimeInterval(_:)();
      v33 = sub_10003D8DC(v31);
      swift_setDeallocating();
      sub_100007224(&qword_100834450, &unk_1006BFED0);
      swift_arrayDestroy();

      (*(v14 + 8))(v17, v13);
      return v33;
    }
  }

  return result;
}

id sub_100600EC4(void *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v58 - v11;
  v12 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  v19 = [objc_opt_self() standardUserDefaults];
  v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.alwaysUseCache.getter();
  v21 = NSUserDefaults.internalBool(forKey:)(v20);

  if (v21)
  {
    v22 = a1;
    return a1;
  }

  else
  {
    v60 = v6;
    v24 = [a1 response];
    v25 = sub_1006008BC(v24, a2, a3 & 1);

    if (v25)
    {
      v58 = [a1 response];
      v26 = [a1 data];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v59 = v25;
      sub_10054C46C(v25);
      v30 = [a1 storagePolicy];
      v31 = objc_allocWithZone(NSCachedURLResponse);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v33 = Dictionary._bridgeToObjectiveC()().super.isa;

      v34 = v58;
      v35 = [v31 initWithResponse:v58 data:isa userInfo:v33 storagePolicy:v30];

      sub_10000B90C(v27, v29);
      v36 = [a1 response];
      v37 = [v36 URL];

      if (v37)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = type metadata accessor for URL();
        (*(*(v38 - 8) + 56))(v16, 0, 1, v38);
      }

      else
      {
        v38 = type metadata accessor for URL();
        (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
      }

      v42 = v61;
      sub_10034CEB4(v16, v18);
      type metadata accessor for URL();
      v43 = *(v38 - 8);
      if ((*(v43 + 48))(v18, 1, v38) == 1)
      {
        sub_10000BE18(v18, &unk_100844540, &unk_1006BFBC0);
        v44 = 0xE300000000000000;
        v45 = 7104878;
      }

      else
      {
        v45 = URL.absoluteString.getter();
        v44 = v46;
        (*(v43 + 8))(v18, v38);
      }

      v47 = v59;
      if (*(v59 + 16) && (v48 = sub_10003ADCC(0x4173657269707865, 0xE900000000000074), (v49 & 1) != 0))
      {
        sub_10001F2EC(*(v47 + 56) + 32 * v48, v65);

        sub_10001F348(v65, &v66);
      }

      else
      {

        v67 = &type metadata for String;
        *&v66 = 7104878;
        *(&v66 + 1) = 0xE300000000000000;
      }

      defaultLogger()();
      sub_10001F2EC(&v66, v65);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v52 = 136446466;
        v53 = sub_100141FE4(v45, v44, &v64);

        *(v52 + 4) = v53;
        *(v52 + 12) = 2082;
        sub_10001F2EC(v65, v63);
        v54 = String.init<A>(describing:)();
        v56 = v55;
        sub_10000BB78(v65);
        v57 = sub_100141FE4(v54, v56, &v64);

        *(v52 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "Caching response from %{public}s until %{public}s", v52, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000BB78(v65);
      }

      (*(v62 + 8))(v42, v60);
      sub_10000BB78(&v66);
      return v35;
    }

    else
    {
      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "No user info present in the header", v41, 2u);
      }

      (*(v62 + 8))(v10, v60);
      return 0;
    }
  }
}

uint64_t sub_1006015BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v24;
  *(v8 + 256) = v25;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 200) = a3;
  *(v8 + 208) = a4;
  *(v8 + 552) = a2;
  *(v8 + 192) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 264) = v9;
  v10 = *(v9 - 8);
  *(v8 + 272) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v13 = type metadata accessor for URLRequest();
  *(v8 + 360) = v13;
  v14 = *(v13 - 8);
  *(v8 + 368) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v16 = type metadata accessor for URL();
  *(v8 + 384) = v16;
  v17 = *(v16 - 8);
  *(v8 + 392) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  *(v8 + 456) = v19;
  v20 = *(v19 - 8);
  *(v8 + 464) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_1006018C8, 0, 0);
}

uint64_t sub_1006018C8()
{
  v225 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 512);
    v6 = *(v0 + 448);
    v7 = *(v0 + 384);
    v8 = *(v0 + 392);
    v9 = *(v0 + 192);
    defaultLogger()();
    (*(v8 + 16))(v6, v9, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 512);
    v15 = *(v0 + 456);
    v14 = *(v0 + 464);
    v16 = *(v0 + 448);
    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    if (v12)
    {
      v218 = *(v0 + 456);
      v19 = swift_slowAlloc();
      logb = v11;
      v20 = swift_slowAlloc();
      v224 = v20;
      *v19 = 136446210;
      sub_100607F5C();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v213 = v13;
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_100141FE4(v21, v23, &v224);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v10, logb, "Refreshing cache for %{public}s due to user defaults setting", v19, 0xCu);
      sub_10000BB78(v20);

      (*(v14 + 8))(v213, v218);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
    }

    v49 = swift_task_alloc();
    *(v0 + 520) = v49;
    *v49 = v0;
    v50 = sub_100609EDC;
    goto LABEL_10;
  }

  v25 = [v1 standardUserDefaults];
  v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v27 = NSUserDefaults.internalBool(forKey:)(v26);

  if (!v27)
  {
    v58 = *(v0 + 368);
    v57 = *(v0 + 376);
    v59 = *(v0 + 360);
    v60 = *(v0 + 216);
    v61 = *(*(v0 + 392) + 16);
    v61(*(v0 + 432), *(v0 + 192), *(v0 + 384));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v62 = sub_1005FEBE8(v57);
    *(v0 + 528) = v62;
    (*(v58 + 8))(v57, v59);
    if (!v62)
    {
      v73 = *(v0 + 384);
      v74 = *(v0 + 192);
      if ((*(v0 + 552) & 1) == 0)
      {
        v135 = *(v0 + 472);
        v136 = *(v0 + 400);
        defaultLogger()();
        v61(v136, v74, v73);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.debug.getter();
        v139 = os_log_type_enabled(v137, v138);
        v141 = *(v0 + 464);
        v140 = *(v0 + 472);
        v142 = *(v0 + 456);
        v144 = *(v0 + 392);
        v143 = *(v0 + 400);
        v145 = *(v0 + 384);
        if (v139)
        {
          v222 = *(v0 + 456);
          v146 = swift_slowAlloc();
          logd = v138;
          v147 = swift_slowAlloc();
          v224 = v147;
          *v146 = 136446210;
          sub_100607F5C();
          v148 = dispatch thunk of CustomStringConvertible.description.getter();
          v216 = v140;
          v150 = v149;
          (*(v144 + 8))(v143, v145);
          v151 = sub_100141FE4(v148, v150, &v224);

          *(v146 + 4) = v151;
          _os_log_impl(&_mh_execute_header, v137, logd, "Refreshing cache for %{public}s because no response exists in cache", v146, 0xCu);
          sub_10000BB78(v147);

          (*(v141 + 8))(v216, v222);
        }

        else
        {

          (*(v144 + 8))(v143, v145);
          (*(v141 + 8))(v140, v142);
        }

        v49 = swift_task_alloc();
        *(v0 + 544) = v49;
        *v49 = v0;
        v50 = sub_100609EE0;
        goto LABEL_10;
      }

      v75 = *(v0 + 480);
      v76 = *(v0 + 408);
      defaultLogger()();
      v61(v76, v74, v73);
      v33 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      v78 = os_log_type_enabled(v33, v77);
      v36 = *(v0 + 480);
      v38 = *(v0 + 456);
      v37 = *(v0 + 464);
      v39 = *(v0 + 408);
      v41 = *(v0 + 384);
      v40 = *(v0 + 392);
      if (v78)
      {
        v219 = *(v0 + 456);
        v42 = swift_slowAlloc();
        log = v77;
        v43 = swift_slowAlloc();
        v224 = v43;
        *v42 = 136446210;
        sub_100607F5C();
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v214 = v36;
        v81 = v80;
        (*(v40 + 8))(v39, v41);
        v82 = sub_100141FE4(v79, v81, &v224);

        *(v42 + 4) = v82;
        v48 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v36, v38);
      goto LABEL_23;
    }

    v63 = [v62 userInfo];
    v220 = v61;
    if (v63)
    {
      v64 = v63;
      v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v65 + 16))
      {
        v66 = sub_10003AECC(v0 + 56);
        if (v67)
        {
          sub_10001F2EC(*(v65 + 56) + 32 * v66, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v68 = *(v0 + 352);
            v69 = *(v0 + 264);
            v70 = *(v0 + 272);
            v71 = swift_dynamicCast();
            v72 = *(v70 + 56);
            v72(v68, v71 ^ 1u, 1, v69);
            goto LABEL_29;
          }

LABEL_28:
          v94 = *(v0 + 352);
          v95 = *(v0 + 264);
          v96 = *(v0 + 272);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v72 = *(v96 + 56);
          v72(v94, 1, 1, v95);
LABEL_29:
          v97 = [v62 userInfo];
          if (v97)
          {
            v98 = v97;
            v99 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v99 + 16))
            {
              v100 = sub_10003AECC(v0 + 16);
              if (v101)
              {
                sub_10001F2EC(*(v99 + 56) + 32 * v100, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v102 = *(v0 + 344);
                  v103 = *(v0 + 264);
                  v104 = *(v0 + 272);
                  v105 = swift_dynamicCast() ^ 1;
                  v106 = v102;
                  goto LABEL_37;
                }

LABEL_36:
                v107 = *(v0 + 344);
                v103 = *(v0 + 264);
                v108 = *(v0 + 272);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v106 = v107;
                v105 = 1;
LABEL_37:
                v72(v106, v105, 1, v103);
                v109 = *(v0 + 336);
                v110 = *(v0 + 264);
                v111 = *(v0 + 272);
                sub_10000BBC4(*(v0 + 352), v109, &unk_100849400, &unk_1006BFBB0);
                v112 = *(v111 + 48);
                v113 = v112(v109, 1, v110);
                v114 = *(v0 + 336);
                if (v113 == 1)
                {
                  v115 = *(v0 + 336);
                }

                else
                {
                  v116 = *(v0 + 328);
                  v117 = *(v0 + 264);
                  v118 = *(v0 + 200);
                  v119 = *(*(v0 + 272) + 32);
                  v119(*(v0 + 304), *(v0 + 336), v117);
                  sub_10000BBC4(v118, v116, &unk_100849400, &unk_1006BFBB0);
                  v120 = v112(v116, 1, v117);
                  v121 = *(v0 + 328);
                  v122 = *(v0 + 304);
                  if (v120 != 1)
                  {
                    v119(*(v0 + 296), *(v0 + 328), *(v0 + 264));
                    if (static Date.> infix(_:_:)())
                    {
                      v152 = *(v0 + 496);
                      v153 = *(v0 + 424);
                      v154 = *(v0 + 384);
                      v155 = *(v0 + 192);
                      defaultLogger()();
                      v220(v153, v155, v154);
                      v156 = Logger.logObject.getter();
                      v207 = static os_log_type_t.debug.getter();
                      loga = v156;
                      v157 = os_log_type_enabled(v156, v207);
                      v158 = *(v0 + 496);
                      v159 = *(v0 + 464);
                      v217 = *(v0 + 456);
                      v160 = *(v0 + 424);
                      v161 = *(v0 + 384);
                      v162 = *(v0 + 392);
                      v163 = *(v0 + 304);
                      v223 = *(v0 + 296);
                      v164 = *(v0 + 264);
                      v165 = *(v0 + 272);
                      if (v157)
                      {
                        v205 = *(v0 + 304);
                        v166 = swift_slowAlloc();
                        v199 = swift_slowAlloc();
                        v224 = v199;
                        *v166 = 136446210;
                        sub_100607F5C();
                        v201 = v158;
                        v203 = v164;
                        v167 = dispatch thunk of CustomStringConvertible.description.getter();
                        v169 = v168;
                        (*(v162 + 8))(v160, v161);
                        v170 = sub_100141FE4(v167, v169, &v224);

                        *(v166 + 4) = v170;
                        v171 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v207, v171, v166, 0xCu);
                        sub_10000BB78(v199);

                        (*(v159 + 8))(v201, v217);
                        v182 = *(v165 + 8);
                        v182(v223, v203);
                        v183 = v205;
                        v184 = v203;
LABEL_61:
                        v182(v183, v184);
                        v188 = *(v0 + 352);
                        sub_10000BE18(*(v0 + 344), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v188, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v162 + 8))(v160, v161);
                      (*(v159 + 8))(v158, v217);
                      v182 = *(v165 + 8);
                      v182(v223, v164);
                      v183 = v163;
                      v184 = v164;
                      goto LABEL_61;
                    }

                    v185 = *(v0 + 304);
                    v186 = *(v0 + 264);
                    v187 = *(*(v0 + 272) + 8);
                    v187(*(v0 + 296), v186);
                    v187(v185, v186);
LABEL_42:
                    v123 = *(v0 + 320);
                    v124 = *(v0 + 264);
                    sub_10000BBC4(*(v0 + 344), v123, &unk_100849400, &unk_1006BFBB0);
                    v125 = v112(v123, 1, v124);
                    v126 = *(v0 + 320);
                    if (v125 == 1)
                    {
                      v127 = *(v0 + 320);
LABEL_46:
                      sub_10000BE18(v127, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v49 = swift_task_alloc();
                      *(v0 + 536) = v49;
                      *v49 = v0;
                      v50 = sub_100602A68;
LABEL_10:
                      v49[1] = v50;
                      v51 = *(v0 + 248);
                      v52 = *(v0 + 256);
                      v53 = *(v0 + 232);
                      v54 = *(v0 + 240);
                      v55 = *(v0 + 224);

                      return sub_1005D21EC(v55, v53, v54, v51, v52);
                    }

                    v128 = *(v0 + 312);
                    v129 = *(v0 + 264);
                    v130 = *(v0 + 208);
                    v131 = *(*(v0 + 272) + 32);
                    v131(*(v0 + 288), *(v0 + 320), v129);
                    sub_10000BBC4(v130, v128, &unk_100849400, &unk_1006BFBB0);
                    v132 = v112(v128, 1, v129);
                    v133 = *(v0 + 312);
                    v134 = *(v0 + 288);
                    if (v132 == 1)
                    {
                      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
                      v127 = v133;
                      goto LABEL_46;
                    }

                    v131(*(v0 + 280), *(v0 + 312), *(v0 + 264));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v189 = *(v0 + 288);
                      v190 = *(v0 + 264);
                      v191 = *(*(v0 + 272) + 8);
                      v191(*(v0 + 280), v190);
                      v191(v189, v190);
                      goto LABEL_47;
                    }

                    v172 = *(v0 + 488);
                    v173 = *(v0 + 416);
                    v174 = *(v0 + 384);
                    v175 = *(v0 + 192);
                    defaultLogger()();
                    v220(v173, v175, v174);
                    v176 = Logger.logObject.getter();
                    v207 = static os_log_type_t.debug.getter();
                    loga = v176;
                    v177 = os_log_type_enabled(v176, v207);
                    v158 = *(v0 + 488);
                    v159 = *(v0 + 464);
                    v217 = *(v0 + 456);
                    v160 = *(v0 + 416);
                    v161 = *(v0 + 384);
                    v162 = *(v0 + 392);
                    v163 = *(v0 + 288);
                    v223 = *(v0 + 280);
                    v164 = *(v0 + 264);
                    v165 = *(v0 + 272);
                    if (v177)
                    {
                      v205 = *(v0 + 288);
                      v166 = swift_slowAlloc();
                      v199 = swift_slowAlloc();
                      v224 = v199;
                      *v166 = 136446210;
                      sub_100607F5C();
                      v201 = v158;
                      v203 = v164;
                      v178 = dispatch thunk of CustomStringConvertible.description.getter();
                      v180 = v179;
                      (*(v162 + 8))(v160, v161);
                      v181 = sub_100141FE4(v178, v180, &v224);

                      *(v166 + 4) = v181;
                      v171 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 272) + 8))(*(v0 + 304), *(v0 + 264));
                  v115 = v121;
                }

                sub_10000BE18(v115, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v28 = *(v0 + 504);
  v29 = *(v0 + 440);
  v30 = *(v0 + 384);
  v31 = *(v0 + 392);
  v32 = *(v0 + 192);
  defaultLogger()();
  (*(v31 + 16))(v29, v32, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 504);
  v38 = *(v0 + 456);
  v37 = *(v0 + 464);
  v39 = *(v0 + 440);
  v41 = *(v0 + 384);
  v40 = *(v0 + 392);
  if (!v35)
  {
    goto LABEL_22;
  }

  v219 = *(v0 + 456);
  v42 = swift_slowAlloc();
  log = v34;
  v43 = swift_slowAlloc();
  v224 = v43;
  *v42 = 136446210;
  sub_100607F5C();
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v214 = v36;
  v46 = v45;
  (*(v40 + 8))(v39, v41);
  v47 = sub_100141FE4(v44, v46, &v224);

  *(v42 + 4) = v47;
  v48 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v33, log, v48, v42, 0xCu);
  sub_10000BB78(v43);

  (*(v37 + 8))(v214, v219);
LABEL_23:
  v84 = *(v0 + 504);
  v83 = *(v0 + 512);
  v86 = *(v0 + 488);
  v85 = *(v0 + 496);
  v88 = *(v0 + 472);
  v87 = *(v0 + 480);
  v89 = *(v0 + 440);
  v90 = *(v0 + 448);
  v92 = *(v0 + 424);
  v91 = *(v0 + 432);
  v192 = *(v0 + 416);
  v193 = *(v0 + 408);
  v194 = *(v0 + 400);
  v195 = *(v0 + 376);
  v196 = *(v0 + 352);
  v197 = *(v0 + 344);
  v198 = *(v0 + 336);
  v200 = *(v0 + 328);
  v202 = *(v0 + 320);
  v204 = *(v0 + 312);
  v206 = *(v0 + 304);
  logc = *(v0 + 296);
  v215 = *(v0 + 288);
  v221 = *(v0 + 280);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_100602A68()
{
  v1 = *(*v0 + 536);
  v3 = *v0;

  return _swift_task_switch(sub_100609EEC, 0, 0);
}

uint64_t sub_100602B64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v24;
  *(v8 + 256) = v25;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 200) = a3;
  *(v8 + 208) = a4;
  *(v8 + 552) = a2;
  *(v8 + 192) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 264) = v9;
  v10 = *(v9 - 8);
  *(v8 + 272) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v13 = type metadata accessor for URLRequest();
  *(v8 + 360) = v13;
  v14 = *(v13 - 8);
  *(v8 + 368) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v16 = type metadata accessor for URL();
  *(v8 + 384) = v16;
  v17 = *(v16 - 8);
  *(v8 + 392) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  *(v8 + 456) = v19;
  v20 = *(v19 - 8);
  *(v8 + 464) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_100602E70, 0, 0);
}

uint64_t sub_100602E70()
{
  v225 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 512);
    v6 = *(v0 + 448);
    v7 = *(v0 + 384);
    v8 = *(v0 + 392);
    v9 = *(v0 + 192);
    defaultLogger()();
    (*(v8 + 16))(v6, v9, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 512);
    v15 = *(v0 + 456);
    v14 = *(v0 + 464);
    v16 = *(v0 + 448);
    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    if (v12)
    {
      v218 = *(v0 + 456);
      v19 = swift_slowAlloc();
      logb = v11;
      v20 = swift_slowAlloc();
      v224 = v20;
      *v19 = 136446210;
      sub_100607F5C();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v213 = v13;
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_100141FE4(v21, v23, &v224);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v10, logb, "Refreshing cache for %{public}s due to user defaults setting", v19, 0xCu);
      sub_10000BB78(v20);

      (*(v14 + 8))(v213, v218);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
    }

    v49 = swift_task_alloc();
    *(v0 + 520) = v49;
    *v49 = v0;
    v50 = sub_100604010;
    goto LABEL_10;
  }

  v25 = [v1 standardUserDefaults];
  v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v27 = NSUserDefaults.internalBool(forKey:)(v26);

  if (!v27)
  {
    v58 = *(v0 + 368);
    v57 = *(v0 + 376);
    v59 = *(v0 + 360);
    v60 = *(v0 + 216);
    v61 = *(*(v0 + 392) + 16);
    v61(*(v0 + 432), *(v0 + 192), *(v0 + 384));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v62 = sub_1005FEBE8(v57);
    *(v0 + 528) = v62;
    (*(v58 + 8))(v57, v59);
    if (!v62)
    {
      v73 = *(v0 + 384);
      v74 = *(v0 + 192);
      if ((*(v0 + 552) & 1) == 0)
      {
        v135 = *(v0 + 472);
        v136 = *(v0 + 400);
        defaultLogger()();
        v61(v136, v74, v73);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.debug.getter();
        v139 = os_log_type_enabled(v137, v138);
        v141 = *(v0 + 464);
        v140 = *(v0 + 472);
        v142 = *(v0 + 456);
        v144 = *(v0 + 392);
        v143 = *(v0 + 400);
        v145 = *(v0 + 384);
        if (v139)
        {
          v222 = *(v0 + 456);
          v146 = swift_slowAlloc();
          logd = v138;
          v147 = swift_slowAlloc();
          v224 = v147;
          *v146 = 136446210;
          sub_100607F5C();
          v148 = dispatch thunk of CustomStringConvertible.description.getter();
          v216 = v140;
          v150 = v149;
          (*(v144 + 8))(v143, v145);
          v151 = sub_100141FE4(v148, v150, &v224);

          *(v146 + 4) = v151;
          _os_log_impl(&_mh_execute_header, v137, logd, "Refreshing cache for %{public}s because no response exists in cache", v146, 0xCu);
          sub_10000BB78(v147);

          (*(v141 + 8))(v216, v222);
        }

        else
        {

          (*(v144 + 8))(v143, v145);
          (*(v141 + 8))(v140, v142);
        }

        v49 = swift_task_alloc();
        *(v0 + 544) = v49;
        *v49 = v0;
        v50 = sub_1006046B8;
        goto LABEL_10;
      }

      v75 = *(v0 + 480);
      v76 = *(v0 + 408);
      defaultLogger()();
      v61(v76, v74, v73);
      v33 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      v78 = os_log_type_enabled(v33, v77);
      v36 = *(v0 + 480);
      v38 = *(v0 + 456);
      v37 = *(v0 + 464);
      v39 = *(v0 + 408);
      v41 = *(v0 + 384);
      v40 = *(v0 + 392);
      if (v78)
      {
        v219 = *(v0 + 456);
        v42 = swift_slowAlloc();
        log = v77;
        v43 = swift_slowAlloc();
        v224 = v43;
        *v42 = 136446210;
        sub_100607F5C();
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v214 = v36;
        v81 = v80;
        (*(v40 + 8))(v39, v41);
        v82 = sub_100141FE4(v79, v81, &v224);

        *(v42 + 4) = v82;
        v48 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v36, v38);
      goto LABEL_23;
    }

    v63 = [v62 userInfo];
    v220 = v61;
    if (v63)
    {
      v64 = v63;
      v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v65 + 16))
      {
        v66 = sub_10003AECC(v0 + 56);
        if (v67)
        {
          sub_10001F2EC(*(v65 + 56) + 32 * v66, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v68 = *(v0 + 352);
            v69 = *(v0 + 264);
            v70 = *(v0 + 272);
            v71 = swift_dynamicCast();
            v72 = *(v70 + 56);
            v72(v68, v71 ^ 1u, 1, v69);
            goto LABEL_29;
          }

LABEL_28:
          v94 = *(v0 + 352);
          v95 = *(v0 + 264);
          v96 = *(v0 + 272);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v72 = *(v96 + 56);
          v72(v94, 1, 1, v95);
LABEL_29:
          v97 = [v62 userInfo];
          if (v97)
          {
            v98 = v97;
            v99 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v99 + 16))
            {
              v100 = sub_10003AECC(v0 + 16);
              if (v101)
              {
                sub_10001F2EC(*(v99 + 56) + 32 * v100, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v102 = *(v0 + 344);
                  v103 = *(v0 + 264);
                  v104 = *(v0 + 272);
                  v105 = swift_dynamicCast() ^ 1;
                  v106 = v102;
                  goto LABEL_37;
                }

LABEL_36:
                v107 = *(v0 + 344);
                v103 = *(v0 + 264);
                v108 = *(v0 + 272);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v106 = v107;
                v105 = 1;
LABEL_37:
                v72(v106, v105, 1, v103);
                v109 = *(v0 + 336);
                v110 = *(v0 + 264);
                v111 = *(v0 + 272);
                sub_10000BBC4(*(v0 + 352), v109, &unk_100849400, &unk_1006BFBB0);
                v112 = *(v111 + 48);
                v113 = v112(v109, 1, v110);
                v114 = *(v0 + 336);
                if (v113 == 1)
                {
                  v115 = *(v0 + 336);
                }

                else
                {
                  v116 = *(v0 + 328);
                  v117 = *(v0 + 264);
                  v118 = *(v0 + 200);
                  v119 = *(*(v0 + 272) + 32);
                  v119(*(v0 + 304), *(v0 + 336), v117);
                  sub_10000BBC4(v118, v116, &unk_100849400, &unk_1006BFBB0);
                  v120 = v112(v116, 1, v117);
                  v121 = *(v0 + 328);
                  v122 = *(v0 + 304);
                  if (v120 != 1)
                  {
                    v119(*(v0 + 296), *(v0 + 328), *(v0 + 264));
                    if (static Date.> infix(_:_:)())
                    {
                      v152 = *(v0 + 496);
                      v153 = *(v0 + 424);
                      v154 = *(v0 + 384);
                      v155 = *(v0 + 192);
                      defaultLogger()();
                      v220(v153, v155, v154);
                      v156 = Logger.logObject.getter();
                      v207 = static os_log_type_t.debug.getter();
                      loga = v156;
                      v157 = os_log_type_enabled(v156, v207);
                      v158 = *(v0 + 496);
                      v159 = *(v0 + 464);
                      v217 = *(v0 + 456);
                      v160 = *(v0 + 424);
                      v161 = *(v0 + 384);
                      v162 = *(v0 + 392);
                      v163 = *(v0 + 304);
                      v223 = *(v0 + 296);
                      v164 = *(v0 + 264);
                      v165 = *(v0 + 272);
                      if (v157)
                      {
                        v205 = *(v0 + 304);
                        v166 = swift_slowAlloc();
                        v199 = swift_slowAlloc();
                        v224 = v199;
                        *v166 = 136446210;
                        sub_100607F5C();
                        v201 = v158;
                        v203 = v164;
                        v167 = dispatch thunk of CustomStringConvertible.description.getter();
                        v169 = v168;
                        (*(v162 + 8))(v160, v161);
                        v170 = sub_100141FE4(v167, v169, &v224);

                        *(v166 + 4) = v170;
                        v171 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v207, v171, v166, 0xCu);
                        sub_10000BB78(v199);

                        (*(v159 + 8))(v201, v217);
                        v182 = *(v165 + 8);
                        v182(v223, v203);
                        v183 = v205;
                        v184 = v203;
LABEL_61:
                        v182(v183, v184);
                        v188 = *(v0 + 352);
                        sub_10000BE18(*(v0 + 344), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v188, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v162 + 8))(v160, v161);
                      (*(v159 + 8))(v158, v217);
                      v182 = *(v165 + 8);
                      v182(v223, v164);
                      v183 = v163;
                      v184 = v164;
                      goto LABEL_61;
                    }

                    v185 = *(v0 + 304);
                    v186 = *(v0 + 264);
                    v187 = *(*(v0 + 272) + 8);
                    v187(*(v0 + 296), v186);
                    v187(v185, v186);
LABEL_42:
                    v123 = *(v0 + 320);
                    v124 = *(v0 + 264);
                    sub_10000BBC4(*(v0 + 344), v123, &unk_100849400, &unk_1006BFBB0);
                    v125 = v112(v123, 1, v124);
                    v126 = *(v0 + 320);
                    if (v125 == 1)
                    {
                      v127 = *(v0 + 320);
LABEL_46:
                      sub_10000BE18(v127, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v49 = swift_task_alloc();
                      *(v0 + 536) = v49;
                      *v49 = v0;
                      v50 = sub_1006043FC;
LABEL_10:
                      v49[1] = v50;
                      v51 = *(v0 + 248);
                      v52 = *(v0 + 256);
                      v53 = *(v0 + 232);
                      v54 = *(v0 + 240);
                      v55 = *(v0 + 224);

                      return sub_1005D2BCC(v55, v53, v54, v51, v52);
                    }

                    v128 = *(v0 + 312);
                    v129 = *(v0 + 264);
                    v130 = *(v0 + 208);
                    v131 = *(*(v0 + 272) + 32);
                    v131(*(v0 + 288), *(v0 + 320), v129);
                    sub_10000BBC4(v130, v128, &unk_100849400, &unk_1006BFBB0);
                    v132 = v112(v128, 1, v129);
                    v133 = *(v0 + 312);
                    v134 = *(v0 + 288);
                    if (v132 == 1)
                    {
                      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
                      v127 = v133;
                      goto LABEL_46;
                    }

                    v131(*(v0 + 280), *(v0 + 312), *(v0 + 264));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v189 = *(v0 + 288);
                      v190 = *(v0 + 264);
                      v191 = *(*(v0 + 272) + 8);
                      v191(*(v0 + 280), v190);
                      v191(v189, v190);
                      goto LABEL_47;
                    }

                    v172 = *(v0 + 488);
                    v173 = *(v0 + 416);
                    v174 = *(v0 + 384);
                    v175 = *(v0 + 192);
                    defaultLogger()();
                    v220(v173, v175, v174);
                    v176 = Logger.logObject.getter();
                    v207 = static os_log_type_t.debug.getter();
                    loga = v176;
                    v177 = os_log_type_enabled(v176, v207);
                    v158 = *(v0 + 488);
                    v159 = *(v0 + 464);
                    v217 = *(v0 + 456);
                    v160 = *(v0 + 416);
                    v161 = *(v0 + 384);
                    v162 = *(v0 + 392);
                    v163 = *(v0 + 288);
                    v223 = *(v0 + 280);
                    v164 = *(v0 + 264);
                    v165 = *(v0 + 272);
                    if (v177)
                    {
                      v205 = *(v0 + 288);
                      v166 = swift_slowAlloc();
                      v199 = swift_slowAlloc();
                      v224 = v199;
                      *v166 = 136446210;
                      sub_100607F5C();
                      v201 = v158;
                      v203 = v164;
                      v178 = dispatch thunk of CustomStringConvertible.description.getter();
                      v180 = v179;
                      (*(v162 + 8))(v160, v161);
                      v181 = sub_100141FE4(v178, v180, &v224);

                      *(v166 + 4) = v181;
                      v171 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 272) + 8))(*(v0 + 304), *(v0 + 264));
                  v115 = v121;
                }

                sub_10000BE18(v115, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v28 = *(v0 + 504);
  v29 = *(v0 + 440);
  v30 = *(v0 + 384);
  v31 = *(v0 + 392);
  v32 = *(v0 + 192);
  defaultLogger()();
  (*(v31 + 16))(v29, v32, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 504);
  v38 = *(v0 + 456);
  v37 = *(v0 + 464);
  v39 = *(v0 + 440);
  v41 = *(v0 + 384);
  v40 = *(v0 + 392);
  if (!v35)
  {
    goto LABEL_22;
  }

  v219 = *(v0 + 456);
  v42 = swift_slowAlloc();
  log = v34;
  v43 = swift_slowAlloc();
  v224 = v43;
  *v42 = 136446210;
  sub_100607F5C();
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v214 = v36;
  v46 = v45;
  (*(v40 + 8))(v39, v41);
  v47 = sub_100141FE4(v44, v46, &v224);

  *(v42 + 4) = v47;
  v48 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v33, log, v48, v42, 0xCu);
  sub_10000BB78(v43);

  (*(v37 + 8))(v214, v219);
LABEL_23:
  v84 = *(v0 + 504);
  v83 = *(v0 + 512);
  v86 = *(v0 + 488);
  v85 = *(v0 + 496);
  v88 = *(v0 + 472);
  v87 = *(v0 + 480);
  v89 = *(v0 + 440);
  v90 = *(v0 + 448);
  v92 = *(v0 + 424);
  v91 = *(v0 + 432);
  v192 = *(v0 + 416);
  v193 = *(v0 + 408);
  v194 = *(v0 + 400);
  v195 = *(v0 + 376);
  v196 = *(v0 + 352);
  v197 = *(v0 + 344);
  v198 = *(v0 + 336);
  v200 = *(v0 + 328);
  v202 = *(v0 + 320);
  v204 = *(v0 + 312);
  v206 = *(v0 + 304);
  logc = *(v0 + 296);
  v215 = *(v0 + 288);
  v221 = *(v0 + 280);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_100604010()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v29 = *v0;

  v3 = v1[64];
  v4 = v1[63];
  v5 = v1[62];
  v6 = v1[61];
  v7 = v1[60];
  v8 = v1[59];
  v9 = v1[56];
  v10 = v1[55];
  v11 = v1[54];
  v15 = v1[53];
  v16 = v1[52];
  v17 = v1[51];
  v18 = v1[50];
  v19 = v1[47];
  v20 = v1[44];
  v21 = v1[43];
  v22 = v1[42];
  v23 = v1[41];
  v24 = v1[40];
  v25 = v1[39];
  v26 = v1[38];
  v27 = v1[37];
  v28 = v1[36];
  v12 = v1[35];

  v13 = *(v29 + 8);

  return v13();
}

uint64_t sub_1006043FC()
{
  v1 = *(*v0 + 536);
  v3 = *v0;

  return _swift_task_switch(sub_1006044F8, 0, 0);
}

uint64_t sub_1006044F8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v8 = *(v0 + 472);
  v7 = *(v0 + 480);
  v9 = *(v0 + 440);
  v10 = *(v0 + 448);
  v12 = *(v0 + 424);
  v11 = *(v0 + 432);
  v15 = *(v0 + 416);
  v16 = *(v0 + 408);
  v17 = *(v0 + 400);
  v18 = *(v0 + 376);
  v19 = *(v0 + 352);
  v20 = *(v0 + 344);
  v21 = *(v0 + 336);
  v22 = *(v0 + 328);
  v23 = *(v0 + 320);
  v24 = *(v0 + 312);
  v25 = *(v0 + 304);
  v26 = *(v0 + 296);
  v27 = *(v0 + 288);
  v28 = *(v0 + 280);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1006046B8()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v29 = *v0;

  v3 = v1[64];
  v4 = v1[63];
  v5 = v1[62];
  v6 = v1[61];
  v7 = v1[60];
  v8 = v1[59];
  v9 = v1[56];
  v10 = v1[55];
  v11 = v1[54];
  v15 = v1[53];
  v16 = v1[52];
  v17 = v1[51];
  v18 = v1[50];
  v19 = v1[47];
  v20 = v1[44];
  v21 = v1[43];
  v22 = v1[42];
  v23 = v1[41];
  v24 = v1[40];
  v25 = v1[39];
  v26 = v1[38];
  v27 = v1[37];
  v28 = v1[36];
  v12 = v1[35];

  v13 = *(v29 + 8);

  return v13();
}

uint64_t sub_100604AA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 224) = a6;
  *(v7 + 232) = a7;
  *(v7 + 208) = a4;
  *(v7 + 216) = a5;
  *(v7 + 528) = a2;
  *(v7 + 192) = a1;
  *(v7 + 200) = a3;
  v8 = type metadata accessor for Date();
  *(v7 + 240) = v8;
  v9 = *(v8 - 8);
  *(v7 + 248) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  v12 = type metadata accessor for URLRequest();
  *(v7 + 336) = v12;
  v13 = *(v12 - 8);
  *(v7 + 344) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v15 = type metadata accessor for URL();
  *(v7 + 360) = v15;
  v16 = *(v15 - 8);
  *(v7 + 368) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();
  *(v7 + 424) = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  *(v7 + 432) = v18;
  v19 = *(v18 - 8);
  *(v7 + 440) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();

  return _swift_task_switch(sub_100604DA0, 0, 0);
}

uint64_t sub_100604DA0()
{
  v222 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 488);
    v6 = *(v0 + 424);
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);
    v9 = *(v0 + 192);
    defaultLogger()();
    (*(v8 + 16))(v6, v9, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 488);
    v15 = *(v0 + 432);
    v14 = *(v0 + 440);
    v16 = *(v0 + 424);
    v18 = *(v0 + 360);
    v17 = *(v0 + 368);
    if (v12)
    {
      v215 = *(v0 + 432);
      v19 = swift_slowAlloc();
      logb = v11;
      v20 = swift_slowAlloc();
      v221 = v20;
      *v19 = 136446210;
      sub_100607F5C();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v210 = v13;
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_100141FE4(v21, v23, &v221);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v10, logb, "Refreshing cache for %{public}s due to user defaults setting", v19, 0xCu);
      sub_10000BB78(v20);

      (*(v14 + 8))(v210, v215);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
    }

    v49 = swift_task_alloc();
    *(v0 + 496) = v49;
    *v49 = v0;
    v50 = sub_100605F38;
    goto LABEL_10;
  }

  v25 = [v1 standardUserDefaults];
  v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v27 = NSUserDefaults.internalBool(forKey:)(v26);

  if (!v27)
  {
    v55 = *(v0 + 344);
    v54 = *(v0 + 352);
    v56 = *(v0 + 336);
    v57 = *(v0 + 216);
    v58 = *(*(v0 + 368) + 16);
    v58(*(v0 + 408), *(v0 + 192), *(v0 + 360));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v59 = sub_1005FEBE8(v54);
    *(v0 + 504) = v59;
    (*(v55 + 8))(v54, v56);
    if (!v59)
    {
      v70 = *(v0 + 360);
      v71 = *(v0 + 192);
      if ((*(v0 + 528) & 1) == 0)
      {
        v132 = *(v0 + 448);
        v133 = *(v0 + 376);
        defaultLogger()();
        v58(v133, v71, v70);
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.debug.getter();
        v136 = os_log_type_enabled(v134, v135);
        v138 = *(v0 + 440);
        v137 = *(v0 + 448);
        v139 = *(v0 + 432);
        v141 = *(v0 + 368);
        v140 = *(v0 + 376);
        v142 = *(v0 + 360);
        if (v136)
        {
          v219 = *(v0 + 432);
          v143 = swift_slowAlloc();
          logd = v135;
          v144 = swift_slowAlloc();
          v221 = v144;
          *v143 = 136446210;
          sub_100607F5C();
          v145 = dispatch thunk of CustomStringConvertible.description.getter();
          v213 = v137;
          v147 = v146;
          (*(v141 + 8))(v140, v142);
          v148 = sub_100141FE4(v145, v147, &v221);

          *(v143 + 4) = v148;
          _os_log_impl(&_mh_execute_header, v134, logd, "Refreshing cache for %{public}s because no response exists in cache", v143, 0xCu);
          sub_10000BB78(v144);

          (*(v138 + 8))(v213, v219);
        }

        else
        {

          (*(v141 + 8))(v140, v142);
          (*(v138 + 8))(v137, v139);
        }

        v49 = swift_task_alloc();
        *(v0 + 520) = v49;
        *v49 = v0;
        v50 = sub_1006065E0;
        goto LABEL_10;
      }

      v72 = *(v0 + 456);
      v73 = *(v0 + 384);
      defaultLogger()();
      v58(v73, v71, v70);
      v33 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      v75 = os_log_type_enabled(v33, v74);
      v36 = *(v0 + 456);
      v38 = *(v0 + 432);
      v37 = *(v0 + 440);
      v39 = *(v0 + 384);
      v41 = *(v0 + 360);
      v40 = *(v0 + 368);
      if (v75)
      {
        v216 = *(v0 + 432);
        v42 = swift_slowAlloc();
        log = v74;
        v43 = swift_slowAlloc();
        v221 = v43;
        *v42 = 136446210;
        sub_100607F5C();
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v211 = v36;
        v78 = v77;
        (*(v40 + 8))(v39, v41);
        v79 = sub_100141FE4(v76, v78, &v221);

        *(v42 + 4) = v79;
        v48 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v36, v38);
      goto LABEL_23;
    }

    v60 = [v59 userInfo];
    v217 = v58;
    if (v60)
    {
      v61 = v60;
      v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v62 + 16))
      {
        v63 = sub_10003AECC(v0 + 56);
        if (v64)
        {
          sub_10001F2EC(*(v62 + 56) + 32 * v63, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v65 = *(v0 + 328);
            v66 = *(v0 + 240);
            v67 = *(v0 + 248);
            v68 = swift_dynamicCast();
            v69 = *(v67 + 56);
            v69(v65, v68 ^ 1u, 1, v66);
            goto LABEL_29;
          }

LABEL_28:
          v91 = *(v0 + 328);
          v92 = *(v0 + 240);
          v93 = *(v0 + 248);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v69 = *(v93 + 56);
          v69(v91, 1, 1, v92);
LABEL_29:
          v94 = [v59 userInfo];
          if (v94)
          {
            v95 = v94;
            v96 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v96 + 16))
            {
              v97 = sub_10003AECC(v0 + 16);
              if (v98)
              {
                sub_10001F2EC(*(v96 + 56) + 32 * v97, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v99 = *(v0 + 320);
                  v100 = *(v0 + 240);
                  v101 = *(v0 + 248);
                  v102 = swift_dynamicCast() ^ 1;
                  v103 = v99;
                  goto LABEL_37;
                }

LABEL_36:
                v104 = *(v0 + 320);
                v100 = *(v0 + 240);
                v105 = *(v0 + 248);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v103 = v104;
                v102 = 1;
LABEL_37:
                v69(v103, v102, 1, v100);
                v106 = *(v0 + 312);
                v107 = *(v0 + 240);
                v108 = *(v0 + 248);
                sub_10000BBC4(*(v0 + 328), v106, &unk_100849400, &unk_1006BFBB0);
                v109 = *(v108 + 48);
                v110 = v109(v106, 1, v107);
                v111 = *(v0 + 312);
                if (v110 == 1)
                {
                  v112 = *(v0 + 312);
                }

                else
                {
                  v113 = *(v0 + 304);
                  v114 = *(v0 + 240);
                  v115 = *(v0 + 200);
                  v116 = *(*(v0 + 248) + 32);
                  v116(*(v0 + 280), *(v0 + 312), v114);
                  sub_10000BBC4(v115, v113, &unk_100849400, &unk_1006BFBB0);
                  v117 = v109(v113, 1, v114);
                  v118 = *(v0 + 304);
                  v119 = *(v0 + 280);
                  if (v117 != 1)
                  {
                    v116(*(v0 + 272), *(v0 + 304), *(v0 + 240));
                    if (static Date.> infix(_:_:)())
                    {
                      v149 = *(v0 + 472);
                      v150 = *(v0 + 400);
                      v151 = *(v0 + 360);
                      v152 = *(v0 + 192);
                      defaultLogger()();
                      v217(v150, v152, v151);
                      v153 = Logger.logObject.getter();
                      v204 = static os_log_type_t.debug.getter();
                      loga = v153;
                      v154 = os_log_type_enabled(v153, v204);
                      v155 = *(v0 + 472);
                      v156 = *(v0 + 440);
                      v214 = *(v0 + 432);
                      v157 = *(v0 + 400);
                      v158 = *(v0 + 360);
                      v159 = *(v0 + 368);
                      v160 = *(v0 + 280);
                      v220 = *(v0 + 272);
                      v161 = *(v0 + 240);
                      v162 = *(v0 + 248);
                      if (v154)
                      {
                        v202 = *(v0 + 280);
                        v163 = swift_slowAlloc();
                        v196 = swift_slowAlloc();
                        v221 = v196;
                        *v163 = 136446210;
                        sub_100607F5C();
                        v198 = v155;
                        v200 = v161;
                        v164 = dispatch thunk of CustomStringConvertible.description.getter();
                        v166 = v165;
                        (*(v159 + 8))(v157, v158);
                        v167 = sub_100141FE4(v164, v166, &v221);

                        *(v163 + 4) = v167;
                        v168 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v204, v168, v163, 0xCu);
                        sub_10000BB78(v196);

                        (*(v156 + 8))(v198, v214);
                        v179 = *(v162 + 8);
                        v179(v220, v200);
                        v180 = v202;
                        v181 = v200;
LABEL_61:
                        v179(v180, v181);
                        v185 = *(v0 + 328);
                        sub_10000BE18(*(v0 + 320), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v185, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v159 + 8))(v157, v158);
                      (*(v156 + 8))(v155, v214);
                      v179 = *(v162 + 8);
                      v179(v220, v161);
                      v180 = v160;
                      v181 = v161;
                      goto LABEL_61;
                    }

                    v182 = *(v0 + 280);
                    v183 = *(v0 + 240);
                    v184 = *(*(v0 + 248) + 8);
                    v184(*(v0 + 272), v183);
                    v184(v182, v183);
LABEL_42:
                    v120 = *(v0 + 296);
                    v121 = *(v0 + 240);
                    sub_10000BBC4(*(v0 + 320), v120, &unk_100849400, &unk_1006BFBB0);
                    v122 = v109(v120, 1, v121);
                    v123 = *(v0 + 296);
                    if (v122 == 1)
                    {
                      v124 = *(v0 + 296);
LABEL_46:
                      sub_10000BE18(v124, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v49 = swift_task_alloc();
                      *(v0 + 512) = v49;
                      *v49 = v0;
                      v50 = sub_100606324;
LABEL_10:
                      v49[1] = v50;
                      v52 = *(v0 + 224);
                      v51 = *(v0 + 232);

                      return sub_1005AE88C(v52, v51);
                    }

                    v125 = *(v0 + 288);
                    v126 = *(v0 + 240);
                    v127 = *(v0 + 208);
                    v128 = *(*(v0 + 248) + 32);
                    v128(*(v0 + 264), *(v0 + 296), v126);
                    sub_10000BBC4(v127, v125, &unk_100849400, &unk_1006BFBB0);
                    v129 = v109(v125, 1, v126);
                    v130 = *(v0 + 288);
                    v131 = *(v0 + 264);
                    if (v129 == 1)
                    {
                      (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
                      v124 = v130;
                      goto LABEL_46;
                    }

                    v128(*(v0 + 256), *(v0 + 288), *(v0 + 240));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v186 = *(v0 + 264);
                      v187 = *(v0 + 240);
                      v188 = *(*(v0 + 248) + 8);
                      v188(*(v0 + 256), v187);
                      v188(v186, v187);
                      goto LABEL_47;
                    }

                    v169 = *(v0 + 464);
                    v170 = *(v0 + 392);
                    v171 = *(v0 + 360);
                    v172 = *(v0 + 192);
                    defaultLogger()();
                    v217(v170, v172, v171);
                    v173 = Logger.logObject.getter();
                    v204 = static os_log_type_t.debug.getter();
                    loga = v173;
                    v174 = os_log_type_enabled(v173, v204);
                    v155 = *(v0 + 464);
                    v156 = *(v0 + 440);
                    v214 = *(v0 + 432);
                    v157 = *(v0 + 392);
                    v158 = *(v0 + 360);
                    v159 = *(v0 + 368);
                    v160 = *(v0 + 264);
                    v220 = *(v0 + 256);
                    v161 = *(v0 + 240);
                    v162 = *(v0 + 248);
                    if (v174)
                    {
                      v202 = *(v0 + 264);
                      v163 = swift_slowAlloc();
                      v196 = swift_slowAlloc();
                      v221 = v196;
                      *v163 = 136446210;
                      sub_100607F5C();
                      v198 = v155;
                      v200 = v161;
                      v175 = dispatch thunk of CustomStringConvertible.description.getter();
                      v177 = v176;
                      (*(v159 + 8))(v157, v158);
                      v178 = sub_100141FE4(v175, v177, &v221);

                      *(v163 + 4) = v178;
                      v168 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 248) + 8))(*(v0 + 280), *(v0 + 240));
                  v112 = v118;
                }

                sub_10000BE18(v112, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v28 = *(v0 + 480);
  v29 = *(v0 + 416);
  v30 = *(v0 + 360);
  v31 = *(v0 + 368);
  v32 = *(v0 + 192);
  defaultLogger()();
  (*(v31 + 16))(v29, v32, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 480);
  v38 = *(v0 + 432);
  v37 = *(v0 + 440);
  v39 = *(v0 + 416);
  v41 = *(v0 + 360);
  v40 = *(v0 + 368);
  if (!v35)
  {
    goto LABEL_22;
  }

  v216 = *(v0 + 432);
  v42 = swift_slowAlloc();
  log = v34;
  v43 = swift_slowAlloc();
  v221 = v43;
  *v42 = 136446210;
  sub_100607F5C();
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v211 = v36;
  v46 = v45;
  (*(v40 + 8))(v39, v41);
  v47 = sub_100141FE4(v44, v46, &v221);

  *(v42 + 4) = v47;
  v48 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v33, log, v48, v42, 0xCu);
  sub_10000BB78(v43);

  (*(v37 + 8))(v211, v216);
LABEL_23:
  v81 = *(v0 + 480);
  v80 = *(v0 + 488);
  v83 = *(v0 + 464);
  v82 = *(v0 + 472);
  v85 = *(v0 + 448);
  v84 = *(v0 + 456);
  v86 = *(v0 + 416);
  v87 = *(v0 + 424);
  v89 = *(v0 + 400);
  v88 = *(v0 + 408);
  v189 = *(v0 + 392);
  v190 = *(v0 + 384);
  v191 = *(v0 + 376);
  v192 = *(v0 + 352);
  v193 = *(v0 + 328);
  v194 = *(v0 + 320);
  v195 = *(v0 + 312);
  v197 = *(v0 + 304);
  v199 = *(v0 + 296);
  v201 = *(v0 + 288);
  v203 = *(v0 + 280);
  logc = *(v0 + 272);
  v212 = *(v0 + 264);
  v218 = *(v0 + 256);

  v90 = *(v0 + 8);

  return v90();
}