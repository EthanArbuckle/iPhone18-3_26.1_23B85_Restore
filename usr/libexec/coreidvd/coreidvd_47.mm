uint64_t sub_1004E267C()
{
  v68 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[45];
  v2 = v0[40];
  v51 = v0[38];
  v54 = v0[43];
  v64 = v0[37];
  v4 = v0[30];
  v3 = v0[31];
  v56 = v0[29];
  v5 = v0[24];
  v60 = v0[39];
  v62 = v0[23];
  v6 = v0[21];
  v66 = v0[22];
  v7 = v0[19];
  v59 = v0[20];
  v67[0] = 0;
  v67[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x800000010071C470;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x746E61686372656DLL;
  v9._object = 0xEE00293A726F6628;
  String.append(_:)(v9);
  v10._object = 0x800000010071BB70;
  v10._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v10);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v54(v2, v64);
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v56);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v7, v5);
  defaultLogger()();
  v11 = *(v6 + 16);
  v11(v62, v5, v59);
  v63 = v11;
  v11(v66, v5, v59);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[43];
  v16 = v0[39];
  v17 = v0[37];
  v19 = v0[22];
  v18 = v0[23];
  v21 = v0[20];
  v20 = v0[21];
  if (v14)
  {
    v57 = v0[37];
    v22 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, v67);
    *(v22 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    v49 = v16;
    v52 = v15;
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    v47 = v13;
    v26 = *(v20 + 8);
    v26(v18, v21);
    v27 = sub_100141FE4(v23, v25, v67);

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

    v61 = v26;
    v26(v19, v21);
    v32 = sub_100141FE4(v30, v31, v67);

    *(v22 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v12, v47, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v22, 0x20u);
    swift_arrayDestroy();

    v52(v49, v57);
  }

  else
  {

    v33 = *(v20 + 8);
    v33(v19, v21);
    v61 = v33;
    v33(v18, v21);
    v15(v16, v17);
  }

  v34 = v0[41];
  v35 = v0[42];
  v37 = v0[39];
  v36 = v0[40];
  v38 = v0[36];
  v44 = v0[35];
  v45 = v0[34];
  v46 = v0[33];
  v48 = v0[31];
  v50 = v0[28];
  v53 = v0[27];
  v39 = v0[24];
  v55 = v0[23];
  v58 = v0[22];
  v40 = v0[20];
  v65 = v0[19];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v63(v41, v39, v40);
  swift_willThrow();

  v61(v39, v40);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1004E2E44(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1004E2F18;

  return sub_1004E1580(v4, v6);
}

uint64_t sub_1004E2F18(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1004E30D8(uint64_t a1)
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
  v11 = type metadata accessor for Milestone();
  v2[27] = v11;
  v12 = *(v11 - 8);
  v2[28] = v12;
  v13 = *(v12 + 64) + 15;
  v2[29] = swift_task_alloc();
  v14 = type metadata accessor for MobileDocumentReaderRequest();
  v2[30] = v14;
  v15 = *(v14 - 8);
  v2[31] = v15;
  v16 = *(v15 + 64) + 15;
  v2[32] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v2[33] = v17;
  v18 = *(v17 - 8);
  v2[34] = v18;
  v19 = *(v18 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_1004E3374, v1, 0);
}

uint64_t sub_1004E3374()
{
  v82 = v0;
  v1 = *(v0 + 304);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 304);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v81[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C5D0, v81);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 312) = v10;
  v11 = *(v0 + 128);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v0 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v0 + 80))
  {
    v12 = *(v0 + 256);
    v13 = *(v0 + 120);
    sub_10001F358((v0 + 56), v0 + 16);
    v14 = sub_10000BA08((v0 + 16), *(v0 + 40));
    XPCMobileDocumentReaderRequest.value.getter();
    v15 = *v14;
    *(v0 + 320) = *v14;

    return _swift_task_switch(sub_1004E3BF0, v15, 0);
  }

  else
  {
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);
    v19 = *(v0 + 136);
    sub_10000BE18(v0 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v17 + 104))(v16, enum case for DIPError.Code.unexpectedDaemonState(_:), v18);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v20 = *(v0 + 288);
    v78 = *(v0 + 264);
    v21 = *(v0 + 200);
    v62 = *(v0 + 272);
    v65 = *(v0 + 208);
    v22 = *(v0 + 184);
    v67 = *(v0 + 192);
    v70 = *(v0 + 312);
    v74 = *(v0 + 280);
    v76 = *(v0 + 176);
    v80 = *(v0 + 168);
    v23 = *(v0 + 160);
    v73 = *(v0 + 152);
    v24 = *(v0 + 144);
    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v25._countAndFlagsBits = 0xD000000000000021;
    v25._object = 0x800000010071C470;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0xD000000000000016;
    v26._object = 0x800000010071C5D0;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0xD000000000000015;
    v27._object = 0x800000010071BB70;
    String.append(_:)(v27);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v70(v20, v78);
    (*(v21 + 104))(v65, enum case for DIPError.Code.internalError(_:), v67);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v24, v22);
    defaultLogger()();
    v28 = *(v23 + 16);
    v28(v76, v22, v73);
    v77 = v28;
    v28(v80, v22, v73);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 312);
    v33 = *(v0 + 280);
    v34 = *(v0 + 264);
    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v37 = *(v0 + 152);
    v38 = *(v0 + 160);
    if (v31)
    {
      v68 = *(v0 + 264);
      v39 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v39 = 136315650;
      *(v39 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C5D0, v81);
      *(v39 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
      v71 = v32;
      v40 = Error.localizedDescription.getter();
      v63 = v33;
      v42 = v41;
      v61 = v30;
      v43 = *(v38 + 8);
      v43(v35, v37);
      v44 = sub_100141FE4(v40, v42, v81);

      *(v39 + 14) = v44;
      *(v39 + 22) = 2080;
      v45 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v46)
      {
        v47 = v45;
      }

      else
      {
        v47 = 7104878;
      }

      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      v75 = v43;
      v43(v36, v37);
      v49 = sub_100141FE4(v47, v48, v81);

      *(v39 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v29, v61, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v39, 0x20u);
      swift_arrayDestroy();

      v71(v63, v68);
    }

    else
    {

      v50 = *(v38 + 8);
      v50(v36, v37);
      v75 = v50;
      v50(v35, v37);
      v32(v33, v34);
    }

    v51 = *(v0 + 296);
    v52 = *(v0 + 304);
    v54 = *(v0 + 280);
    v53 = *(v0 + 288);
    v55 = *(v0 + 256);
    v64 = *(v0 + 232);
    v66 = *(v0 + 208);
    v56 = *(v0 + 184);
    v69 = *(v0 + 176);
    v72 = *(v0 + 168);
    v57 = *(v0 + 152);
    v79 = *(v0 + 144);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v77(v58, v56, v57);
    swift_willThrow();

    v75(v56, v57);

    v59 = *(v0 + 8);

    return v59();
  }
}

uint64_t sub_1004E3BF0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  static MobileDocumentReaderMilestone.canRequestDocumentCalled.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_1004E3CD0;
  v5 = v0[40];

  return sub_10039C498(0xD000000000000016, 0x800000010071C5D0, 230);
}

uint64_t sub_1004E3CD0()
{
  v2 = *(*v1 + 328);
  v3 = *v1;
  v3[42] = v0;

  if (v0)
  {
    v4 = v3[40];

    return _swift_task_switch(sub_1004E3F90, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[43] = v5;
    *v5 = v3;
    v5[1] = sub_1004E3E44;
    v6 = v3[40];
    v7 = v3[32];

    return sub_10039DEC4(v7);
  }
}

uint64_t sub_1004E3E44()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;

  if (v0)
  {
    v2[44] = v0;
    v4 = v2[16];
    (*(v2[31] + 8))(v2[32], v2[30]);
    v5 = sub_1004E4204;
  }

  else
  {
    v4 = v2[16];
    (*(v2[31] + 8))(v2[32], v2[30]);
    v5 = sub_1004E4014;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004E3F90()
{
  v0[44] = v0[42];
  v1 = v0[16];
  (*(v0[31] + 8))(v0[32], v0[30]);

  return _swift_task_switch(sub_1004E4204, v1, 0);
}

uint64_t sub_1004E4014()
{
  v25 = v0;
  v1 = v0[37];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[39];
  v6 = v0[37];
  v7 = v0[33];
  v8 = v0[34];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C5D0, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s returning successfully", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[37];
  v11 = v0[38];
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[32];
  v16 = v0[29];
  v17 = v0[26];
  v19 = v0[22];
  v18 = v0[23];
  v20 = v0[21];
  v23 = v0[18];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004E4204()
{
  v63 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[44];
  v2 = v0[36];
  v59 = v0[33];
  v3 = v0[25];
  v43 = v0[34];
  v45 = v0[26];
  v4 = v0[23];
  v47 = v0[24];
  v50 = v0[39];
  v54 = v0[35];
  v56 = v0[22];
  v61 = v0[21];
  v5 = v0[20];
  v53 = v0[19];
  v6 = v0[18];
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000016;
  v8._object = 0x800000010071C5D0;
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
  sub_1003C94CC(v6, v4);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v56, v4, v53);
  v10(v61, v4, v53);
  v11 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v11, v51);
  v13 = v0[39];
  v14 = v0[35];
  v57 = v0[33];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[19];
  v18 = v0[20];
  if (v12)
  {
    v48 = v0[35];
    v19 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C5D0, v62);
    *(v19 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
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
    v26 = MobileDocumentReaderSession.Error.debugDescription.getter();
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
    _os_log_impl(&_mh_execute_header, log, v51, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v19, 0x20u);
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

  v32 = v0[37];
  v33 = v0[38];
  v35 = v0[35];
  v34 = v0[36];
  v36 = v0[32];
  v46 = v0[29];
  v49 = v0[26];
  v37 = v0[23];
  v52 = v0[22];
  v38 = v0[19];
  v58 = v0[21];
  v60 = v0[18];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v10(v39, v37, v38);
  swift_willThrow();

  v55(v37, v38);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1004E4960(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100494C3C;

  return sub_1004E30D8(v5);
}

uint64_t sub_1004E4A24(uint64_t a1, uint64_t a2)
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
  v9 = type metadata accessor for DIPError.Code();
  v3[25] = v9;
  v10 = *(v9 - 8);
  v3[26] = v10;
  v11 = *(v10 + 64) + 15;
  v3[27] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v3[28] = v12;
  v13 = *(v12 - 8);
  v3[29] = v13;
  v14 = *(v13 + 64) + 15;
  v3[30] = swift_task_alloc();
  v15 = type metadata accessor for MobileDocumentReaderRequest();
  v3[31] = v15;
  v16 = *(v15 - 8);
  v3[32] = v16;
  v17 = *(v16 + 64) + 15;
  v3[33] = swift_task_alloc();
  v18 = type metadata accessor for MobileDocumentReaderResponse();
  v3[34] = v18;
  v19 = *(v18 - 8);
  v3[35] = v19;
  v20 = *(v19 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v21 = type metadata accessor for Logger();
  v3[38] = v21;
  v22 = *(v21 - 8);
  v3[39] = v22;
  v23 = *(v22 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1004E4D2C, v2, 0);
}

uint64_t sub_1004E4D2C()
{
  v89 = v0;
  v1 = *(v0 + 344);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 344);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v88[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000022, 0x80000001007120E0, v88);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 352) = v10;
  v11 = *(v0 + 136);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v0 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v0 + 80))
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    sub_10001F358((v0 + 56), v0 + 16);
    v16 = sub_10000BA08((v0 + 16), *(v0 + 40));
    XPCMobileDocumentReaderRequest.value.getter();
    XPCMobileDocumentReaderDeviceEngagementType.value.getter();
    v17 = *v16;
    v18 = swift_task_alloc();
    *(v0 + 360) = v18;
    *v18 = v0;
    v18[1] = sub_1004E5600;
    v19 = *(v0 + 296);
    v20 = *(v0 + 264);
    v21 = *(v0 + 240);

    return sub_10039AD9C(v19, v20, v21);
  }

  else
  {
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v25 = *(v0 + 200);
    v26 = *(v0 + 144);
    sub_10000BE18(v0 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v24 + 104))(v23, enum case for DIPError.Code.unexpectedDaemonState(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v27 = *(v0 + 328);
    v69 = *(v0 + 312);
    v71 = *(v0 + 304);
    v74 = *(v0 + 352);
    v28 = *(v0 + 208);
    v29 = *(v0 + 192);
    v76 = *(v0 + 216);
    v79 = *(v0 + 200);
    v82 = *(v0 + 320);
    v85 = *(v0 + 184);
    v87 = *(v0 + 176);
    v30 = *(v0 + 168);
    v80 = *(v0 + 160);
    v31 = *(v0 + 152);
    v88[0] = 0;
    v88[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v32._countAndFlagsBits = 0xD000000000000021;
    v32._object = 0x800000010071C470;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0xD000000000000022;
    v33._object = 0x80000001007120E0;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0xD000000000000015;
    v34._object = 0x800000010071BB70;
    String.append(_:)(v34);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v74(v27, v71);
    (*(v28 + 104))(v76, enum case for DIPError.Code.internalError(_:), v79);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v31, v29);
    defaultLogger()();
    v35 = *(v30 + 16);
    v35(v85, v29, v80);
    v86 = v35;
    v35(v87, v29, v80);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 352);
    v40 = *(v0 + 320);
    v83 = *(v0 + 304);
    v42 = *(v0 + 176);
    v41 = *(v0 + 184);
    v43 = *(v0 + 160);
    v44 = *(v0 + 168);
    if (v38)
    {
      v77 = *(v0 + 320);
      v45 = swift_slowAlloc();
      v88[0] = swift_slowAlloc();
      *v45 = 136315650;
      *(v45 + 4) = sub_100141FE4(0xD000000000000022, 0x80000001007120E0, v88);
      *(v45 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
      v72 = v39;
      v46 = Error.localizedDescription.getter();
      v48 = v47;
      v67 = v37;
      v49 = *(v44 + 8);
      v49(v41, v43);
      v50 = sub_100141FE4(v46, v48, v88);

      *(v45 + 14) = v50;
      *(v45 + 22) = 2080;
      v51 = MobileDocumentReaderSession.Error.debugDescription.getter();
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
      v55 = sub_100141FE4(v53, v54, v88);

      *(v45 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v36, v67, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v45, 0x20u);
      swift_arrayDestroy();

      v72(v77, v83);
    }

    else
    {

      v56 = *(v44 + 8);
      v56(v42, v43);
      v81 = v56;
      v56(v41, v43);
      v39(v40, v83);
    }

    v57 = *(v0 + 336);
    v58 = *(v0 + 344);
    v59 = *(v0 + 320);
    v60 = *(v0 + 328);
    v61 = *(v0 + 296);
    v66 = *(v0 + 288);
    v68 = *(v0 + 264);
    v70 = *(v0 + 240);
    v73 = *(v0 + 216);
    v62 = *(v0 + 192);
    v75 = *(v0 + 184);
    v78 = *(v0 + 176);
    v63 = *(v0 + 160);
    v84 = *(v0 + 152);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v86(v64, v62, v63);
    swift_willThrow();

    v81(v62, v63);

    v65 = *(v0 + 8);

    return v65();
  }
}

uint64_t sub_1004E5600()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = v2[33];
  v6 = v2[32];
  v7 = v2[31];
  v8 = v2[30];
  v9 = v2[29];
  v10 = v2[28];
  v11 = v2[17];
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v12 = sub_1004E5A48;
  }

  else
  {
    v12 = sub_1004E57D8;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_1004E57D8()
{
  v30 = v0;
  v1 = v0[42];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[44];
  v6 = v0[42];
  v7 = v0[38];
  v8 = v0[39];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000022, 0x80000001007120E0, &v29);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s returning successfully", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[40];
  v13 = v0[41];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[35];
  v22 = v0[33];
  v23 = v0[30];
  v24 = v0[27];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];
  v28 = v0[19];
  (*(v17 + 16))(v0[36], v15, v16);
  v18 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderResponse());
  v19 = XPCMobileDocumentReaderResponse.init(value:)();
  (*(v17 + 8))(v15, v16);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1004E5A48()
{
  v64 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[46];
  v2 = v0[41];
  v44 = v0[39];
  v46 = v0[38];
  v48 = v0[44];
  v3 = v0[26];
  v4 = v0[24];
  v51 = v0[27];
  v54 = v0[25];
  v57 = v0[40];
  v60 = v0[23];
  v62 = v0[22];
  v5 = v0[21];
  v55 = v0[20];
  v6 = v0[19];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x80000001007120E0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v48(v2, v46);
  (*(v3 + 104))(v51, enum case for DIPError.Code.internalError(_:), v54);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v6, v4);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v60, v4, v55);
  v61 = v10;
  v10(v62, v4, v55);
  v11 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v11, v52);
  v13 = v0[44];
  v14 = v0[40];
  v58 = v0[38];
  v16 = v0[22];
  v15 = v0[23];
  v18 = v0[20];
  v17 = v0[21];
  if (v12)
  {
    v49 = v0[40];
    v19 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100141FE4(0xD000000000000022, 0x80000001007120E0, v63);
    *(v19 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    v42 = v13;
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100141FE4(v20, v22, v63);

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

    v56 = v23;
    v23(v16, v18);
    v29 = sub_100141FE4(v27, v28, v63);

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v11, v52, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v19, 0x20u);
    swift_arrayDestroy();

    v42(v49, v58);
  }

  else
  {

    v30 = *(v17 + 8);
    v30(v16, v18);
    v56 = v30;
    v30(v15, v18);
    v13(v14, v58);
  }

  v31 = v0[42];
  v32 = v0[43];
  v33 = v0[40];
  v34 = v0[41];
  v35 = v0[37];
  v41 = v0[36];
  v43 = v0[33];
  v45 = v0[30];
  v47 = v0[27];
  v36 = v0[24];
  v50 = v0[23];
  v53 = v0[22];
  v37 = v0[20];
  v59 = v0[19];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v61(v38, v36, v37);
  swift_willThrow();

  v56(v36, v37);

  v39 = v0[1];

  return v39();
}

uint64_t sub_1004E61B4(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100490474;

  return sub_1004E4A24(v7, v8);
}

uint64_t sub_1004E628C()
{
  v1[15] = v0;
  v2 = type metadata accessor for DIPError();
  v1[16] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentReaderSession.Error();
  v1[18] = v4;
  v5 = *(v4 - 8);
  v1[19] = v5;
  v6 = *(v5 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v1[23] = v7;
  v8 = *(v7 - 8);
  v1[24] = v8;
  v9 = *(v8 + 64) + 15;
  v1[25] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v1[26] = v10;
  v11 = *(v10 - 8);
  v1[27] = v11;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004E6470, v0, 0);
}

uint64_t sub_1004E6470()
{
  v77 = v0;
  v1 = *(v0 + 248);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 248);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v76[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEC00000029286461, v76);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 256) = v10;
  v11 = *(v0 + 120);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v0 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v0 + 80))
  {
    sub_10001F358((v0 + 56), v0 + 16);
    v12 = *sub_10000BA08((v0 + 16), *(v0 + 40));
    v13 = swift_task_alloc();
    *(v0 + 264) = v13;
    *v13 = v0;
    v13[1] = sub_1004E6D08;

    return sub_10039BEEC();
  }

  else
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 184);
    v18 = *(v0 + 128);
    sub_10000BE18(v0 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v16 + 104))(v15, enum case for DIPError.Code.unexpectedDaemonState(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = *(v0 + 232);
    v57 = *(v0 + 216);
    v59 = *(v0 + 256);
    v73 = *(v0 + 208);
    v20 = *(v0 + 192);
    v21 = *(v0 + 176);
    v61 = *(v0 + 200);
    v62 = *(v0 + 184);
    v68 = *(v0 + 224);
    v71 = *(v0 + 168);
    v75 = *(v0 + 160);
    v22 = *(v0 + 152);
    v65 = *(v0 + 136);
    v66 = *(v0 + 144);
    v76[0] = 0;
    v76[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v23._countAndFlagsBits = 0xD000000000000021;
    v23._object = 0x800000010071C470;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 0x65526C65636E6163;
    v24._object = 0xEC00000029286461;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0xD000000000000015;
    v25._object = 0x800000010071BB70;
    String.append(_:)(v25);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v59(v19, v73);
    (*(v20 + 104))(v61, enum case for DIPError.Code.internalError(_:), v62);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v65, v21);
    defaultLogger()();
    v26 = *(v22 + 16);
    v26(v71, v21, v66);
    v72 = v26;
    v26(v75, v21, v66);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 256);
    v31 = *(v0 + 224);
    v69 = *(v0 + 208);
    v33 = *(v0 + 160);
    v32 = *(v0 + 168);
    v35 = *(v0 + 144);
    v34 = *(v0 + 152);
    if (v29)
    {
      v63 = *(v0 + 224);
      v36 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v36 = 136315650;
      *(v36 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEC00000029286461, v76);
      *(v36 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
      v37 = Error.localizedDescription.getter();
      v60 = v30;
      v39 = v38;
      v58 = v28;
      v40 = *(v34 + 8);
      v40(v32, v35);
      v41 = sub_100141FE4(v37, v39, v76);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2080;
      v42 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = 7104878;
      }

      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0xE300000000000000;
      }

      v67 = v40;
      v40(v33, v35);
      v46 = sub_100141FE4(v44, v45, v76);

      *(v36 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v27, v58, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v36, 0x20u);
      swift_arrayDestroy();

      v60(v63, v69);
    }

    else
    {

      v47 = *(v34 + 8);
      v47(v33, v35);
      v67 = v47;
      v47(v32, v35);
      v30(v31, v69);
    }

    v49 = *(v0 + 240);
    v48 = *(v0 + 248);
    v50 = *(v0 + 224);
    v51 = *(v0 + 232);
    v52 = *(v0 + 200);
    v53 = *(v0 + 176);
    v64 = *(v0 + 168);
    v70 = *(v0 + 160);
    v54 = *(v0 + 144);
    v74 = *(v0 + 136);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v72(v55, v53, v54);
    swift_willThrow();

    v67(v53, v54);

    v56 = *(v0 + 8);

    return v56();
  }
}

uint64_t sub_1004E6D08()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1004E700C;
  }

  else
  {
    v6 = sub_1004E6E34;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004E6E34()
{
  v23 = v0;
  v1 = v0[30];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[26];
  v8 = v0[27];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEC00000029286461, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s returning successfully", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[30];
  v11 = v0[31];
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[20];
  v19 = v0[17];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004E700C()
{
  v62 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[34];
  v2 = v0[29];
  v46 = v0[27];
  v48 = v0[32];
  v3 = v0[25];
  v58 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
  v54 = v0[28];
  v56 = v0[21];
  v6 = v0[19];
  v60 = v0[20];
  v7 = v0[17];
  v50 = v0[23];
  v53 = v0[18];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x800000010071C470;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x65526C65636E6163;
  v9._object = 0xEC00000029286461;
  String.append(_:)(v9);
  v10._object = 0x800000010071BB70;
  v10._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v10);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v48(v2, v58);
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v50);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v7, v5);
  defaultLogger()();
  v11 = *(v6 + 16);
  v11(v56, v5, v53);
  v57 = v11;
  v11(v60, v5, v53);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[32];
  v16 = v0[28];
  v17 = v0[26];
  v19 = v0[20];
  v18 = v0[21];
  v21 = v0[18];
  v20 = v0[19];
  if (v14)
  {
    v51 = v0[26];
    v22 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEC00000029286461, v61);
    *(v22 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
    v45 = v16;
    v47 = v15;
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    v44 = v13;
    v26 = *(v20 + 8);
    v26(v18, v21);
    v27 = sub_100141FE4(v23, v25, v61);

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

    v55 = v26;
    v26(v19, v21);
    v32 = sub_100141FE4(v30, v31, v61);

    *(v22 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v12, v44, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v22, 0x20u);
    swift_arrayDestroy();

    v47(v45, v51);
  }

  else
  {

    v33 = *(v20 + 8);
    v33(v19, v21);
    v55 = v33;
    v33(v18, v21);
    v15(v16, v17);
  }

  v35 = v0[30];
  v34 = v0[31];
  v36 = v0[28];
  v37 = v0[29];
  v38 = v0[25];
  v39 = v0[22];
  v49 = v0[21];
  v52 = v0[20];
  v40 = v0[18];
  v59 = v0[17];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v57(v41, v39, v40);
  swift_willThrow();

  v55(v39, v40);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1004E7764(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10049CF48;

  return sub_1004E628C();
}

uint64_t sub_1004E780C()
{
  v1[20] = v0;
  v2 = type metadata accessor for DIPError();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[28] = v8;
  v9 = *(v8 - 8);
  v1[29] = v9;
  v10 = *(v9 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1004E79B4, v0, 0);
}

uint64_t sub_1004E79B4()
{
  v64 = v0;
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_10000BBC4(v1 + 112, v0 + 16, &qword_1008460D8, &qword_1006E6838);
  v2 = *(v0 + 40);
  sub_10000BE18(v0 + 16, &qword_1008460D8, &qword_1006E6838);
  if (v2)
  {
    v3 = *(v0 + 264);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 264);
    v8 = *(v0 + 224);
    v9 = *(v0 + 232);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v63[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100141FE4(0x6164696C61766E69, 0xEC00000029286574, v63);
      _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentReaderSessionProxy %s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    v12 = *(v9 + 8);
    v12(v7, v8);
    *(v0 + 272) = v12;
    sub_10000BBC4(v1 + 112, v0 + 96, &qword_1008460D8, &qword_1006E6838);
    if (*(v0 + 120))
    {
      sub_10001F358((v0 + 96), v0 + 56);
      sub_10000BA08((v0 + 56), *(v0 + 80));
      v13 = type metadata accessor for MobileDocumentReaderFlow();
      v14 = swift_task_alloc();
      *(v0 + 280) = v14;
      *v14 = v0;
      v14[1] = sub_1004E819C;

      return (sub_1003A0584)(v13, &off_10080E610);
    }

    v24 = *(v0 + 208);
    v25 = *(v0 + 216);
    v26 = *(v0 + 200);
    v60 = *(v0 + 184);
    v62 = v12;
    v56 = *(v0 + 176);
    v58 = *(v0 + 248);
    v27 = *(v0 + 168);
    v54 = *(v0 + 192);
    sub_10000BE18(v0 + 96, &qword_1008460D8, &qword_1006E6838);
    v28 = *(v24 + 104);
    v28(v25, enum case for DIPError.Code.unexpectedDaemonState(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v28(v25, enum case for DIPError.Code.internalError(_:), v26);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    v29 = *(v56 + 16);
    v29(v60, v54, v27);
    v30 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v30, v59);
    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    v61 = *(v0 + 232);
    v34 = *(v0 + 184);
    v35 = *(v0 + 192);
    v37 = *(v0 + 168);
    v36 = *(v0 + 176);
    if (v31)
    {
      v57 = *(v0 + 192);
      v38 = swift_slowAlloc();
      v55 = v33;
      v39 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63[0] = v53;
      *v38 = 136315394;
      *(v38 + 4) = sub_100141FE4(0x6164696C61766E69, 0xEC00000029286574, v63);
      *(v38 + 12) = 2112;
      swift_allocError();
      v52 = v32;
      v29(v40, v34, v37);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v36 + 8);
      v42(v34, v37);
      *(v38 + 14) = v41;
      *v39 = v41;
      _os_log_impl(&_mh_execute_header, v30, v59, "MobileDocumentReaderSessionProxy %s finished with error: %@", v38, 0x16u);
      sub_10000BE18(v39, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v53);

      v62(v52, v55);
      v42(v57, v37);
    }

    else
    {

      v43 = *(v36 + 8);
      v43(v34, v37);
      v62(v32, v33);
      v43(v35, v37);
    }
  }

  else
  {
    v16 = *(v0 + 240);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Invalidate called when mobileDocumentReaderFlow is nil, nothing to invalidate.", v23, 2u);
    }

    (*(v21 + 8))(v20, v22);
  }

  v45 = *(v0 + 256);
  v44 = *(v0 + 264);
  v47 = *(v0 + 240);
  v46 = *(v0 + 248);
  v48 = *(v0 + 216);
  v50 = *(v0 + 184);
  v49 = *(v0 + 192);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1004E819C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_1004E82AC, v2, 0);
}

uint64_t sub_1004E82AC()
{
  v21 = v0;
  v1 = v0[32];
  sub_10000BB78(v0 + 7);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[34];
  v6 = v0[32];
  v7 = v0[28];
  v8 = v0[29];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x6164696C61766E69, 0xEC00000029286574, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[27];
  v17 = v0[23];
  v16 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1004E8468(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v15 = *(*(sub_100007224(&qword_100841BC8, &qword_1006E6830) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v16 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse();
  v2[23] = v16;
  v17 = *(v16 - 8);
  v2[24] = v17;
  v18 = *(v17 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  v2[27] = v19;
  v20 = *(v19 - 8);
  v2[28] = v20;
  v21 = *(v20 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004E8768, v1, 0);
}

uint64_t sub_1004E8768()
{
  v25 = v0;
  v1 = v0[32];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  v6 = v0[27];
  v7 = v0[28];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x797469746E656469, 0xEF293A5F2879654BLL, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[33] = v10;
  v11 = v0[8];
  sub_1004DD174(v0 + 2);
  v12 = v0[7];
  v13 = sub_10000BA08(v0 + 2, v0[5]);
  if (v12)
  {
    v14 = v0[22];
    v15 = v0[7];
    XPCMobileDocumentReaderIdentityKeyRequest.value.getter();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v0[22];
  v18 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  (*(*(v18 - 8) + 56))(v17, v16, 1, v18);
  v19 = *v13;
  v20 = swift_task_alloc();
  v0[34] = v20;
  *v20 = v0;
  v20[1] = sub_1004E9018;
  v21 = v0[26];
  v22 = v0[22];

  return sub_100356C74(v21, v22);
}

uint64_t sub_1004E9018()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 64);
  sub_10000BE18(v5, &qword_100841BC8, &qword_1006E6830);
  if (v0)
  {
    v7 = sub_1004E93D8;
  }

  else
  {
    v7 = sub_1004E9170;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004E9170()
{
  v29 = v0;
  v1 = v0[31];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[33];
  v6 = v0[31];
  v7 = v0[27];
  v8 = v0[28];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x797469746E656469, 0xEF293A5F2879654BLL, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[24];
  v22 = v0[22];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[11];
  (*(v17 + 16))(v0[25], v15, v16);
  v18 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderIdentityKeyResponse());
  v19 = XPCMobileDocumentReaderIdentityKeyResponse.init(value:)();
  (*(v17 + 8))(v15, v16);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1004E93D8()
{
  v60 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[35];
  v2 = v0[30];
  v49 = v0[29];
  v35 = v0[28];
  v54 = v0[27];
  v56 = v0[33];
  v44 = v0[21];
  v57 = v0[20];
  v59[0] = 0;
  v34 = v0[19];
  v52 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  v47 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
  v36 = v0[12];
  v38 = v0[11];
  v41 = v0[9];
  v59[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x800000010071C470;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x797469746E656469;
  v9._object = 0xEF293A5F2879654BLL;
  String.append(_:)(v9);
  v10._object = 0x800000010071BB70;
  v10._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v10);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v56(v2, v54);
  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v36);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v6 + 8))(v5, v36);
  (*(v7 + 104))(v38, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v41);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v11, v4, v47);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v3 + 8))(v4, v47);
  defaultLogger()();
  v12 = v57;
  v58 = *(v34 + 16);
  v58(v12, v44, v52);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[33];
  v17 = v0[29];
  v18 = v0[27];
  v19 = v0[19];
  v20 = v0[20];
  v21 = v0[18];
  if (v15)
  {
    v50 = v0[29];
    v22 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59[0] = v45;
    *v22 = 136315394;
    *(v22 + 4) = sub_100141FE4(0x797469746E656469, 0xEF293A5F2879654BLL, v59);
    *(v22 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v42 = v16;
    v58(v23, v20, v21);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    v53 = *(v19 + 8);
    v53(v20, v21);
    *(v22 + 14) = v24;
    *v39 = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "MobileDocumentReaderSessionProxy %s finished with error: %@", v22, 0x16u);
    sub_10000BE18(v39, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v45);

    v42(v50, v18);
  }

  else
  {

    v53 = *(v19 + 8);
    v53(v20, v21);
    v16(v17, v18);
  }

  v25 = v0[31];
  v26 = v0[32];
  v27 = v0[29];
  v28 = v0[30];
  v37 = v0[26];
  v40 = v0[25];
  v29 = v0[21];
  v43 = v0[22];
  v46 = v0[20];
  v30 = v0[18];
  v48 = v0[17];
  v51 = v0[14];
  v55 = v0[11];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v58(v31, v29, v30);
  swift_willThrow();

  v53(v29, v30);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1004E9C28(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A8580;

  return sub_1004E8468(a1);
}

uint64_t sub_1004E9CE8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v15 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  v2[22] = v15;
  v16 = *(v15 - 8);
  v2[23] = v16;
  v17 = *(v16 + 64) + 15;
  v2[24] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v2[25] = v18;
  v19 = *(v18 - 8);
  v2[26] = v19;
  v20 = *(v19 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004E9FA4, v1, 0);
}

uint64_t sub_1004E9FA4()
{
  v20 = v0;
  v1 = v0[30];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[26];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010070FFE0, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[31] = v10;
  v11 = v0[8];
  sub_1004DD174(v0 + 2);
  v12 = v0[24];
  v13 = v0[7];
  v14 = sub_10000BA08(v0 + 2, v0[5]);
  XPCMobileDocumentReaderIdentityKeyRequest.value.getter();
  v15 = *v14;
  v16 = swift_task_alloc();
  v0[32] = v16;
  *v16 = v0;
  v16[1] = sub_1004EA7B0;
  v17 = v0[24];

  return sub_100357CC4(v17);
}

uint64_t sub_1004EA7B0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = v2[24];
  v6 = v2[23];
  v7 = v2[22];
  v8 = v2[8];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_1004EAB0C;
  }

  else
  {
    v9 = sub_1004EA92C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004EA92C()
{
  v24 = v0;
  v1 = v0[29];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[31];
  v6 = v0[29];
  v7 = v0[25];
  v8 = v0[26];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010070FFE0, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[24];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[17];
  v19 = v0[14];
  v20 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004EAB0C()
{
  v56 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[33];
  v54 = v0[31];
  v2 = v0[28];
  v38 = v0[21];
  v49 = v0[20];
  v52 = v0[25];
  v44 = v0[27];
  v47 = v0[18];
  v3 = v0[17];
  v4 = v0[14];
  v40 = v0[15];
  v43 = v0[16];
  v5 = v0[13];
  v32 = v0[26];
  v33 = v0[12];
  v6 = v0[10];
  v34 = v0[11];
  v35 = v0[9];
  v36 = v0[19];
  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010070FFE0;
  String.append(_:)(v8);
  v9._object = 0x800000010071BB70;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v54(v2, v52);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v33);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v5 + 8))(v4, v33);
  (*(v6 + 104))(v34, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v35);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v43 + 16))(v10, v3, v40);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v43 + 8))(v3, v40);
  defaultLogger()();
  v11 = *(v36 + 16);
  v11(v49, v38, v47);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[31];
  v16 = v0[27];
  v50 = v0[25];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[18];
  if (v14)
  {
    v45 = v0[27];
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v55[0] = v41;
    *v20 = 136315394;
    *(v20 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010070FFE0, v55);
    *(v20 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v11(v21, v17, v19);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v48 = *(v18 + 8);
    v48(v17, v19);
    *(v20 + 14) = v22;
    *v37 = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderSessionProxy %s finished with error: %@", v20, 0x16u);
    sub_10000BE18(v37, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v41);

    v15(v45, v50);
  }

  else
  {

    v48 = *(v18 + 8);
    v48(v17, v19);
    v15(v16, v50);
  }

  v23 = v0[29];
  v24 = v0[30];
  v26 = v0[27];
  v25 = v0[28];
  v27 = v0[21];
  v39 = v0[24];
  v42 = v0[20];
  v28 = v0[18];
  v46 = v0[17];
  v51 = v0[14];
  v53 = v0[11];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v11(v29, v27, v28);
  swift_willThrow();

  v48(v27, v28);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1004EB2FC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A857C;

  return sub_1004E9CE8(v5);
}

uint64_t sub_1004EB3C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v15 = *(*(sub_100007224(&qword_100841BB8, &qword_1006DEAB8) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v16 = type metadata accessor for MobileDocumentReaderCertificateResponse();
  v2[23] = v16;
  v17 = *(v16 - 8);
  v2[24] = v17;
  v18 = *(v17 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  v2[27] = v19;
  v20 = *(v19 - 8);
  v2[28] = v20;
  v21 = *(v20 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004EB6C0, v1, 0);
}

uint64_t sub_1004EB6C0()
{
  v25 = v0;
  v1 = v0[32];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  v6 = v0[27];
  v7 = v0[28];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x6369666974726563, 0xEF293A5F28657461, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[33] = v10;
  v11 = v0[8];
  sub_1004DD174(v0 + 2);
  v12 = v0[7];
  v13 = sub_10000BA08(v0 + 2, v0[5]);
  if (v12)
  {
    v14 = v0[22];
    v15 = v0[7];
    XPCMobileDocumentReaderCertificateRequest.value.getter();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v0[22];
  v18 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  (*(*(v18 - 8) + 56))(v17, v16, 1, v18);
  v19 = *v13;
  v20 = swift_task_alloc();
  v0[34] = v20;
  *v20 = v0;
  v20[1] = sub_1004EBF70;
  v21 = v0[26];
  v22 = v0[22];

  return sub_100358224(v21, v22);
}

uint64_t sub_1004EBF70()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 64);
  sub_10000BE18(v5, &qword_100841BB8, &qword_1006DEAB8);
  if (v0)
  {
    v7 = sub_1004EC330;
  }

  else
  {
    v7 = sub_1004EC0C8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004EC0C8()
{
  v29 = v0;
  v1 = v0[31];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[33];
  v6 = v0[31];
  v7 = v0[27];
  v8 = v0[28];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x6369666974726563, 0xEF293A5F28657461, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[24];
  v22 = v0[22];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[11];
  (*(v17 + 16))(v0[25], v15, v16);
  v18 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderCertificateResponse());
  v19 = XPCMobileDocumentReaderCertificateResponse.init(value:)();
  (*(v17 + 8))(v15, v16);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1004EC330()
{
  v60 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[35];
  v2 = v0[30];
  v49 = v0[29];
  v35 = v0[28];
  v54 = v0[27];
  v56 = v0[33];
  v44 = v0[21];
  v57 = v0[20];
  v59[0] = 0;
  v34 = v0[19];
  v52 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  v47 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
  v36 = v0[12];
  v38 = v0[11];
  v41 = v0[9];
  v59[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x800000010071C470;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6369666974726563;
  v9._object = 0xEF293A5F28657461;
  String.append(_:)(v9);
  v10._object = 0x800000010071BB70;
  v10._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v10);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v56(v2, v54);
  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v36);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v6 + 8))(v5, v36);
  (*(v7 + 104))(v38, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v41);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v11, v4, v47);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v3 + 8))(v4, v47);
  defaultLogger()();
  v12 = v57;
  v58 = *(v34 + 16);
  v58(v12, v44, v52);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[33];
  v17 = v0[29];
  v18 = v0[27];
  v19 = v0[19];
  v20 = v0[20];
  v21 = v0[18];
  if (v15)
  {
    v50 = v0[29];
    v22 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59[0] = v45;
    *v22 = 136315394;
    *(v22 + 4) = sub_100141FE4(0x6369666974726563, 0xEF293A5F28657461, v59);
    *(v22 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v42 = v16;
    v58(v23, v20, v21);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    v53 = *(v19 + 8);
    v53(v20, v21);
    *(v22 + 14) = v24;
    *v39 = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "MobileDocumentReaderSessionProxy %s finished with error: %@", v22, 0x16u);
    sub_10000BE18(v39, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v45);

    v42(v50, v18);
  }

  else
  {

    v53 = *(v19 + 8);
    v53(v20, v21);
    v16(v17, v18);
  }

  v25 = v0[31];
  v26 = v0[32];
  v27 = v0[29];
  v28 = v0[30];
  v37 = v0[26];
  v40 = v0[25];
  v29 = v0[21];
  v43 = v0[22];
  v46 = v0[20];
  v30 = v0[18];
  v48 = v0[17];
  v51 = v0[14];
  v55 = v0[11];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v58(v31, v29, v30);
  swift_willThrow();

  v53(v29, v30);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1004ECB80(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_1004EB3C0(a1);
}

uint64_t sub_1004ECC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v13 = type metadata accessor for DIPError();
  v6[19] = v13;
  v14 = *(v13 - 8);
  v6[20] = v14;
  v15 = *(v14 + 64) + 15;
  v6[21] = swift_task_alloc();
  v16 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v6[22] = v16;
  v17 = *(v16 - 8);
  v6[23] = v17;
  v18 = *(v17 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v19 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v6[26] = v19;
  v20 = *(v19 - 8);
  v6[27] = v20;
  v21 = *(v20 + 64) + 15;
  v6[28] = swift_task_alloc();
  v22 = type metadata accessor for Logger();
  v6[29] = v22;
  v23 = *(v22 - 8);
  v6[30] = v23;
  v24 = *(v23 + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_1004ECF04, v5, 0);
}

uint64_t sub_1004ECF04()
{
  v24 = v0;
  v1 = v0[34];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[30];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010070FE50, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[35] = v10;
  v11 = v0[12];
  sub_1004DD174(v0 + 2);
  v12 = v0[28];
  v13 = v0[7];
  v14 = sub_10000BA08(v0 + 2, v0[5]);
  XPCMobileDocumentReaderCertificateRequest.value.getter();
  v15 = *v14;
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = sub_1004ED714;
  v17 = v0[28];
  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[9];

  return sub_1003596C8(v17, v20, v21, v18, v19);
}

uint64_t sub_1004ED714()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[12];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_1004EDA70;
  }

  else
  {
    v9 = sub_1004ED890;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004ED890()
{
  v24 = v0;
  v1 = v0[33];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[35];
  v6 = v0[33];
  v7 = v0[29];
  v8 = v0[30];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010070FE50, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[33];
  v11 = v0[34];
  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[28];
  v17 = v0[24];
  v16 = v0[25];
  v18 = v0[21];
  v19 = v0[18];
  v20 = v0[15];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004EDA70()
{
  v56 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[37];
  v54 = v0[35];
  v2 = v0[32];
  v38 = v0[25];
  v49 = v0[24];
  v52 = v0[29];
  v44 = v0[31];
  v47 = v0[22];
  v3 = v0[21];
  v4 = v0[18];
  v40 = v0[19];
  v43 = v0[20];
  v5 = v0[17];
  v32 = v0[30];
  v33 = v0[16];
  v6 = v0[14];
  v34 = v0[15];
  v35 = v0[13];
  v36 = v0[23];
  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x800000010070FE50;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v54(v2, v52);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v33);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v5 + 8))(v4, v33);
  (*(v6 + 104))(v34, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v35);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v43 + 16))(v10, v3, v40);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v43 + 8))(v3, v40);
  defaultLogger()();
  v11 = *(v36 + 16);
  v11(v49, v38, v47);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[35];
  v16 = v0[31];
  v50 = v0[29];
  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[22];
  if (v14)
  {
    v45 = v0[31];
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v55[0] = v41;
    *v20 = 136315394;
    *(v20 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010070FE50, v55);
    *(v20 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v11(v21, v17, v19);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v48 = *(v18 + 8);
    v48(v17, v19);
    *(v20 + 14) = v22;
    *v37 = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderSessionProxy %s finished with error: %@", v20, 0x16u);
    sub_10000BE18(v37, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v41);

    v15(v45, v50);
  }

  else
  {

    v48 = *(v18 + 8);
    v48(v17, v19);
    v15(v16, v50);
  }

  v23 = v0[33];
  v24 = v0[34];
  v26 = v0[31];
  v25 = v0[32];
  v27 = v0[25];
  v39 = v0[28];
  v42 = v0[24];
  v28 = v0[22];
  v46 = v0[21];
  v51 = v0[18];
  v53 = v0[15];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v11(v29, v27, v28);
  swift_willThrow();

  v48(v27, v28);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1004EE278(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  if (a3)
  {
    v11 = a3;
    v12 = a1;

    a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v15 = a1;

    v14 = 0xF000000000000000;
  }

  v5[6] = a3;
  v5[7] = v14;
  v16 = swift_task_alloc();
  v5[8] = v16;
  *v16 = v5;
  v16[1] = sub_1004EE3A8;

  return sub_1004ECC40(a1, v8, v10, a3, v14);
}

uint64_t sub_1004EE3A8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 16);
  v11 = *v1;

  sub_10000BD94(v7, v6);

  v12 = *(v3 + 32);
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_1004EE5A8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v15 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v2[22] = v15;
  v16 = *(v15 - 8);
  v2[23] = v16;
  v17 = *(v16 + 64) + 15;
  v2[24] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v2[25] = v18;
  v19 = *(v18 - 8);
  v2[26] = v19;
  v20 = *(v19 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004EE864, v1, 0);
}

uint64_t sub_1004EE864()
{
  v17 = v0;
  v1 = v0[30];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[26];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010071C500, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[31] = v10;
  v11 = v0[8];
  sub_1004DD174(v0 + 2);
  v12 = v0[24];
  v13 = v0[7];
  v14 = sub_10000BA08(v0 + 2, v0[5]);
  XPCMobileDocumentReaderCertificateRequest.value.getter();
  v0[32] = *v14;

  return _swift_task_switch(sub_1004EF008, 0, 0);
}

uint64_t sub_1004EF008()
{
  v1 = v0[24];
  v2 = *(v0[32] + 16);
  v3 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
  v5 = v4;
  v0[33] = v4;
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_1004EF0C4;

  return sub_100352FB4(v3, v5);
}

uint64_t sub_1004EF0C4()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 176);
  v6 = *(*v0 + 64);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1004EF254, v6, 0);
}

uint64_t sub_1004EF254()
{
  v24 = v0;
  v1 = v0[29];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[31];
  v6 = v0[29];
  v7 = v0[25];
  v8 = v0[26];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010071C500, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[24];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[17];
  v19 = v0[14];
  v20 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004EF5C0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A857C;

  return sub_1004EE5A8(v5);
}

uint64_t sub_1004EF684()
{
  v1[7] = v0;
  v2 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v1[17] = v11;
  v12 = *(v11 - 8);
  v1[18] = v12;
  v13 = *(v12 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v14 = type metadata accessor for MobileDocumentReaderIssuerRootCertificateList();
  v1[21] = v14;
  v15 = *(v14 - 8);
  v1[22] = v15;
  v16 = *(v15 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v17 = *(*(sub_100007224(&qword_1008460D0, &unk_1006E6820) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v1[27] = v18;
  v19 = *(v18 - 8);
  v1[28] = v19;
  v20 = *(v19 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004EF990, v0, 0);
}

uint64_t sub_1004EF990()
{
  v14 = v0;
  v1 = v0[32];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  v6 = v0[27];
  v7 = v0[28];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010071C4E0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[33] = v10;
  v11 = v0[7];
  sub_1004DD174(v0 + 2);
  v0[34] = *sub_10000BA08(v0 + 2, v0[5]);

  return _swift_task_switch(sub_1004F016C, 0, 0);
}

uint64_t sub_1004F016C()
{
  v1 = *(*(v0 + 272) + 32);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = sub_1004F0200;

  return sub_100345F94();
}

uint64_t sub_1004F0200(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = *(v4 + 56);
    v8 = sub_1004F0704;
  }

  else
  {
    *(v4 + 296) = a1;
    v8 = sub_1004F0334;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1004F0334()
{
  v1 = v0[36];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[7];
  sub_1004DCEA8(v0[37]);

  MobileDocumentReaderIssuerRootCertificateList.init(certificateData:)();
  (*(v4 + 56))(v2, 0, 1, v3);

  return _swift_task_switch(sub_1004F03FC, v5, 0);
}

uint64_t sub_1004F03FC()
{
  v38 = v0;
  v1 = v0[31];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[33];
  v6 = v0[31];
  v7 = v0[27];
  v8 = v0[28];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010071C4E0, &v37);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v11 = v0[25];
  v12 = v0[21];
  v13 = v0[22];
  sub_10000BBC4(v0[26], v11, &qword_1008460D0, &unk_1006E6820);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = v0[26];
  if (v14 == 1)
  {
    sub_10000BE18(v0[26], &qword_1008460D0, &unk_1006E6820);
    v36 = 0;
  }

  else
  {
    v16 = v0[24];
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];
    (*(v18 + 32))(v16, v0[25], v19);
    (*(v18 + 16))(v17, v16, v19);
    v20 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderIssuerRootCertificateList());
    v36 = XPCMobileDocumentReaderIssuerRootCertificateList.init(value:)();
    (*(v18 + 8))(v16, v19);
    sub_10000BE18(v15, &qword_1008460D0, &unk_1006E6820);
  }

  v22 = v0[31];
  v21 = v0[32];
  v24 = v0[29];
  v23 = v0[30];
  v26 = v0[25];
  v25 = v0[26];
  v28 = v0[23];
  v27 = v0[24];
  v29 = v0[19];
  v30 = v0[20];
  v33 = v0[16];
  v34 = v0[13];
  v35 = v0[10];

  v31 = v0[1];

  return v31(v36);
}

uint64_t sub_1004F0704()
{
  v59 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[36];
  v57 = v0[33];
  v2 = v0[30];
  v41 = v0[20];
  v52 = v0[19];
  v55 = v0[27];
  v47 = v0[29];
  v50 = v0[17];
  v3 = v0[16];
  v4 = v0[13];
  v43 = v0[14];
  v46 = v0[15];
  v5 = v0[12];
  v32 = v0[28];
  v33 = v0[11];
  v6 = v0[9];
  v34 = v0[10];
  v36 = v0[8];
  v38 = v0[18];
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000013;
  v8._object = 0x800000010071C4E0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v57(v2, v55);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v33);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v5 + 8))(v4, v33);
  (*(v6 + 104))(v34, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v36);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v46 + 16))(v10, v3, v43);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v46 + 8))(v3, v43);
  defaultLogger()();
  v11 = *(v38 + 16);
  v11(v52, v41, v50);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[33];
  v16 = v0[29];
  v53 = v0[27];
  v17 = v0[18];
  v18 = v0[19];
  v19 = v0[17];
  if (v14)
  {
    v48 = v0[29];
    v20 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v58[0] = v44;
    *v20 = 136315394;
    *(v20 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010071C4E0, v58);
    *(v20 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v11(v21, v18, v19);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v51 = *(v17 + 8);
    v51(v18, v19);
    *(v20 + 14) = v22;
    *v39 = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderSessionProxy %s finished with error: %@", v20, 0x16u);
    sub_10000BE18(v39, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v44);

    v15(v48, v53);
  }

  else
  {

    v51 = *(v17 + 8);
    v51(v18, v19);
    v15(v16, v53);
  }

  v23 = v0[31];
  v24 = v0[32];
  v25 = v0[29];
  v26 = v0[30];
  v35 = v0[26];
  v37 = v0[25];
  v40 = v0[24];
  v42 = v0[23];
  v27 = v0[20];
  v45 = v0[19];
  v28 = v0[17];
  v49 = v0[16];
  v54 = v0[13];
  v56 = v0[10];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v11(v29, v27, v28);
  swift_willThrow();

  v51(v27, v28);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1004F0F00(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_1004EF684();
}

uint64_t sub_1004F0FA8()
{
  v1[7] = v0;
  v2 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v1[17] = v11;
  v12 = *(v11 - 8);
  v1[18] = v12;
  v13 = *(v12 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v1[21] = v14;
  v15 = *(v14 - 8);
  v1[22] = v15;
  v16 = *(v15 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004F1208, v0, 0);
}

uint64_t sub_1004F1208()
{
  v14 = v0;
  v1 = v0[26];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  v6 = v0[21];
  v7 = v0[22];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010071C4C0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[27] = v10;
  v11 = v0[7];
  sub_1004DD174(v0 + 2);
  v0[28] = *sub_10000BA08(v0 + 2, v0[5]);

  return _swift_task_switch(sub_1004F19C0, 0, 0);
}

uint64_t sub_1004F19C0()
{
  v1 = *(*(v0 + 224) + 32);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_1004F1A54;

  return sub_10034AA50();
}

uint64_t sub_1004F1A54()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1004F1D54;
  }

  else
  {
    v6 = sub_1004F1B80;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004F1B80()
{
  v23 = v0;
  v1 = v0[25];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[21];
  v8 = v0[22];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010071C4C0, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[25];
  v11 = v0[26];
  v14 = v0[23];
  v13 = v0[24];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004F1D54()
{
  v55 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[30];
  v53 = v0[27];
  v2 = v0[24];
  v38 = v0[20];
  v48 = v0[19];
  v51 = v0[21];
  v43 = v0[23];
  v46 = v0[17];
  v3 = v0[16];
  v4 = v0[13];
  v39 = v0[14];
  v42 = v0[15];
  v5 = v0[12];
  v32 = v0[22];
  v33 = v0[11];
  v6 = v0[9];
  v34 = v0[10];
  v35 = v0[8];
  v36 = v0[18];
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x800000010071C4C0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v53(v2, v51);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v33);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v5 + 8))(v4, v33);
  (*(v6 + 104))(v34, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v35);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v42 + 16))(v10, v3, v39);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v42 + 8))(v3, v39);
  defaultLogger()();
  v11 = *(v36 + 16);
  v11(v48, v38, v46);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[27];
  v16 = v0[23];
  v49 = v0[21];
  v17 = v0[18];
  v18 = v0[19];
  v19 = v0[17];
  if (v14)
  {
    v44 = v0[23];
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54[0] = v40;
    *v20 = 136315394;
    *(v20 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010071C4C0, v54);
    *(v20 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v11(v21, v18, v19);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v47 = *(v17 + 8);
    v47(v18, v19);
    *(v20 + 14) = v22;
    *v37 = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderSessionProxy %s finished with error: %@", v20, 0x16u);
    sub_10000BE18(v37, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v40);

    v15(v44, v49);
  }

  else
  {

    v47 = *(v17 + 8);
    v47(v18, v19);
    v15(v16, v49);
  }

  v24 = v0[25];
  v23 = v0[26];
  v25 = v0[23];
  v26 = v0[24];
  v27 = v0[20];
  v41 = v0[19];
  v28 = v0[17];
  v45 = v0[16];
  v50 = v0[13];
  v52 = v0[10];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v11(v29, v27, v28);
  swift_willThrow();

  v47(v27, v28);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1004F2520(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86EC;

  return sub_1004F0FA8();
}

uint64_t sub_1004F25C8()
{
  v1[7] = v0;
  v2 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v1[17] = v11;
  v12 = *(v11 - 8);
  v1[18] = v12;
  v13 = *(v12 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v1[21] = v14;
  v15 = *(v14 - 8);
  v1[22] = v15;
  v16 = *(v15 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004F2828, v0, 0);
}

uint64_t sub_1004F2828()
{
  v14 = v0;
  v1 = v0[26];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  v6 = v0[21];
  v7 = v0[22];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010071C4A0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[27] = v10;
  v11 = v0[7];
  sub_1004DD174(v0 + 2);
  v0[28] = *sub_10000BA08(v0 + 2, v0[5]);

  return _swift_task_switch(sub_1004F2FE0, 0, 0);
}

uint64_t sub_1004F2FE0()
{
  v1 = *(*(v0 + 224) + 32);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_1004F3074;

  return sub_10034979C();
}

uint64_t sub_1004F3074()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1004F3374;
  }

  else
  {
    v6 = sub_1004F31A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004F31A0()
{
  v23 = v0;
  v1 = v0[25];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[21];
  v8 = v0[22];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010071C4A0, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s completed", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v5(v6, v7);
  v12 = v0[25];
  v11 = v0[26];
  v14 = v0[23];
  v13 = v0[24];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004F3374()
{
  v55 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[30];
  v53 = v0[27];
  v2 = v0[24];
  v38 = v0[20];
  v48 = v0[19];
  v51 = v0[21];
  v43 = v0[23];
  v46 = v0[17];
  v3 = v0[16];
  v4 = v0[13];
  v39 = v0[14];
  v42 = v0[15];
  v5 = v0[12];
  v32 = v0[22];
  v33 = v0[11];
  v6 = v0[9];
  v34 = v0[10];
  v35 = v0[8];
  v36 = v0[18];
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000011;
  v8._object = 0x800000010071C4A0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010071BB70;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v53(v2, v51);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v33);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v5 + 8))(v4, v33);
  (*(v6 + 104))(v34, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v35);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v42 + 16))(v10, v3, v39);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v42 + 8))(v3, v39);
  defaultLogger()();
  v11 = *(v36 + 16);
  v11(v48, v38, v46);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[27];
  v16 = v0[23];
  v49 = v0[21];
  v17 = v0[18];
  v18 = v0[19];
  v19 = v0[17];
  if (v14)
  {
    v44 = v0[23];
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54[0] = v40;
    *v20 = 136315394;
    *(v20 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010071C4A0, v54);
    *(v20 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v11(v21, v18, v19);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v47 = *(v17 + 8);
    v47(v18, v19);
    *(v20 + 14) = v22;
    *v37 = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderSessionProxy %s finished with error: %@", v20, 0x16u);
    sub_10000BE18(v37, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v40);

    v15(v44, v49);
  }

  else
  {

    v47 = *(v17 + 8);
    v47(v18, v19);
    v15(v16, v49);
  }

  v24 = v0[25];
  v23 = v0[26];
  v25 = v0[23];
  v26 = v0[24];
  v27 = v0[20];
  v41 = v0[19];
  v28 = v0[17];
  v45 = v0[16];
  v50 = v0[13];
  v52 = v0[10];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v11(v29, v27, v28);
  swift_willThrow();

  v47(v27, v28);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1004F3B40(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86EC;

  return sub_1004F25C8();
}

uint64_t sub_1004F3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v8 = type metadata accessor for DIPError.Code();
  v19 = *(v8 - 8);
  v20 = v8;
  v9 = *(v19 + 64);
  __chkstk_darwin(v8);
  v21 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MobileDocumentReaderBundleTypeCheckOutcome();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[29];
  sub_10000BA08(v4 + 25, v4[28]);
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = v27;
  v26 = 0;
  dispatch thunk of MobileDocumentReaderEntitlementChecking.checkBundleTypeSupported(auditToken:)();
  result = (*(v12 + 88))(v15, v11);
  if (result != enum case for MobileDocumentReaderBundleTypeCheckOutcome.supported(_:))
  {
    if (result == enum case for MobileDocumentReaderBundleTypeCheckOutcome.unsupportedApplicationExtension(_:))
    {
      (*(v19 + 104))(v21, enum case for DIPError.Code.documentReaderApplicationExtensionsNotPermitted(_:), v20);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    else
    {
      if (result != enum case for MobileDocumentReaderBundleTypeCheckOutcome.unknownBundleType(_:))
      {
        (*(v12 + 8))(v15, v11);
      }

      (*(v19 + 104))(v21, enum case for DIPError.Code.documentReaderUnsupportedBundleType(_:), v20);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1004F3FF0()
{
  sub_10000BE18(v0 + 112, &qword_1008460D8, &qword_1006E6838);
  sub_10000BE18(v0 + 152, &unk_1008460F0, &unk_1006E6848);
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  sub_10000BB78((v0 + 200));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004F4084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F40CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F410C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004F3B40(v2, v3);
}

uint64_t sub_1004F41B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004F2520(v2, v3);
}

uint64_t sub_1004F4264()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004F0F00(v2, v3);
}

uint64_t sub_1004F4310()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004EF5C0(v2, v3, v4);
}

uint64_t sub_1004F43C4()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004F441C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_1004EE278(v2, v3, v4, v5, v6);
}

uint64_t sub_1004F44EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004ECB80(v2, v3, v4);
}

uint64_t sub_1004F45A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004EB2FC(v2, v3, v4);
}

uint64_t sub_1004F4654()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004E9C28(v2, v3, v4);
}

uint64_t sub_1004F470C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004E7764(v2, v3);
}

uint64_t sub_1004F47B8()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004F4808()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004E61B4(v2, v3, v5, v4);
}

uint64_t sub_1004F48C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100027B9C;

  return sub_1004E4960(v2, v3, v4);
}

uint64_t sub_1004F497C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004E2E44(v2, v3, v4);
}

uint64_t sub_1004F4A30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004E14BC(v2, v3, v4);
}

uint64_t sub_1004F4AE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004DFBB0(v2, v3);
}

uint64_t sub_1004F4B90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004DE66C(v2, v3, v4);
}

id sub_1004F4CE4()
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
    _os_log_impl(&_mh_execute_header, v8, v9, "WebPresentmentListener %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v4 + 8))(v7, v3);
  [*&v1[OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_listener] invalidate];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_1004F4F80(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1004F5040, 0, 0);
}

uint64_t sub_1004F5040()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = sub_100007224(&unk_100846140, &qword_1006E6A80);
    v4 = async function pointer to NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)[1];
    v5 = swift_task_alloc();
    v0[11] = v5;
    v6 = type metadata accessor for WebPresentmentRequest();
    *v5 = v0;
    v5[1] = sub_1004F527C;
    v7 = v0[5];

    return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v7, v3, &unk_1006E6AA0, 0, v3, v6);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[7]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8 = v0[9];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1004F527C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1004F53FC;
  }

  else
  {
    v3 = sub_1004F5390;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004F5390()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004F53FC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004F5468(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_1004F548C, 0, 0);
}

uint64_t sub_1004F548C()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004F55A8;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100846150, &qword_1006E6AA8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015FDB8;
  v0[13] = &unk_1008151D0;
  v0[14] = v2;
  [v1 releaseRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F55A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1003237A8;
  }

  else
  {
    v3 = sub_1004F56B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004F56B8()
{
  v2 = v0[18];
  v1 = v0[19];
  XPCWebPresentmentRequest.value.getter();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004F5720(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1004F57E0, 0, 0);
}

uint64_t sub_1004F57E0()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = v0[5];
    v4 = sub_100007224(&unk_100846140, &qword_1006E6A80);
    v5 = swift_allocObject();
    v0[11] = v5;
    *(v5 + 16) = v3;
    v6 = async function pointer to NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)[1];
    v7 = v3;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1004F5A40;

    return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v8, v4, &unk_1006E6A90, v5, v4, &type metadata for () + 8);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[7]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v0[9];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1004F5A40()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1004F5B5C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1004F7674;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004F5B5C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004F5BD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 144) = a3;
  *(v3 + 152) = v4;
  return _swift_task_switch(sub_1004F5BF4, 0, 0);
}

uint64_t sub_1004F5BF4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1004F5D14;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_1008151A8;
  v0[14] = v3;
  [v1 connectToViewServiceWith:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F5D14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10017808C;
  }

  else
  {
    v3 = sub_1002D0E30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004F5E24()
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
    *(v7 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "WebPresentmentListener %s Connection interrupted", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1004F5FBC()
{
  v0 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "WebPresentmentListener %s Connection invalidated", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    sub_1003E653C(0, 0, v3, &unk_1006E6A70, v16);
  }

  return result;
}

uint64_t sub_1004F6258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_100500654();
}

uint64_t sub_1004F6358(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v42 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveTaskManager();
  v67[3] = active;
  v67[4] = &off_100812348;
  v67[0] = a2;
  v8 = objc_opt_self();

  v9 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared31WebPresentmentDelegateInterface_];
  [a1 setRemoteObjectInterface:v9];

  v10 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared23WebPresentmentInterface_];
  [a1 setExportedInterface:v10];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = type metadata accessor for WebPresentmentRequestReleaser();
  v13 = swift_allocObject();

  swift_defaultActor_initialize();
  sub_100007224(&qword_100834DA0, &unk_1006C03C0);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  v13[14] = v14;
  v13[15] = &unk_1006E6A40;
  v13[16] = v11;

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020260(v67, &v45);

  [a1 auditToken];
  v65 = type metadata accessor for ProcessVisibilityMonitor();
  v66 = &protocol witness table for ProcessVisibilityMonitor;
  sub_100032DBC(&v64);
  ProcessVisibilityMonitor.init()();
  if (qword_100832C78 != -1)
  {
    swift_once();
  }

  v16 = qword_100882378;
  v17 = v48;
  v18 = sub_10001F370(&v45, v48);
  v41[1] = v41;
  v19 = *(*(v17 - 1) + 64);
  __chkstk_darwin(v18);
  v21 = (v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v62 = v12;
  v63 = &off_100811F78;
  *&v61 = v13;
  v60[3] = active;
  v60[4] = &off_100812348;
  v60[0] = v23;
  v41[2] = v13;
  v58 = &type metadata for WebPresentmentManagerFactory;
  v59 = &off_100811B50;
  type metadata accessor for WebPresentmentSessionProxy();
  v24 = swift_allocObject();
  v25 = sub_10001F370(v60, active);
  v26 = *(*(active - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_10001F370(v57, v58);
  v30 = *v28;
  v55 = active;
  v56 = &off_100812348;
  v53 = &off_100811B50;
  *&v54 = v30;
  v52 = &type metadata for WebPresentmentManagerFactory;

  swift_defaultActor_initialize();
  *(v24 + 208) = 0;
  *(v24 + 112) = &unk_1006E6A58;
  *(v24 + 120) = v15;
  sub_10001F358(&v64, v24 + 168);
  sub_10001F358(&v61, v24 + 128);
  sub_10001F358(&v54, v24 + 296);
  sub_10001F358(&v51, v24 + 216);
  *(v24 + 256) = v16;
  v31 = v69;
  *(v24 + 264) = v68;
  *(v24 + 280) = v31;
  sub_10000BB78(v57);
  sub_10000BB78(v60);
  sub_10000BB78(&v45);

  [a1 setExportedObject:v24];
  v49 = sub_1004F5E24;
  v50 = 0;
  v45 = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100503A7C;
  v48 = &unk_1008150E0;
  v32 = _Block_copy(&v45);
  [a1 setInterruptionHandler:v32];
  _Block_release(v32);
  v33 = swift_allocObject();
  swift_weakInit();
  v49 = sub_1004F7460;
  v50 = v33;
  v45 = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100503A7C;
  v48 = &unk_100815130;
  v34 = _Block_copy(&v45);

  [a1 setInvalidationHandler:v34];
  _Block_release(v34);
  [a1 activate];
  v35 = v42;
  defaultLogger()();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &v45);
    _os_log_impl(&_mh_execute_header, v36, v37, "WebPresentmentListener %s Activating new connection", v38, 0xCu);
    sub_10000BB78(v39);
  }

  else
  {
  }

  (*(v43 + 8))(v35, v44);
  return sub_10000BB78(v67);
}

uint64_t sub_1004F6AC0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v8;
    v17 = v5;
    v18 = v0;
    v19 = v1;
    v20 = v16;
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v38);
    _os_log_impl(&_mh_execute_header, v14, v15, "WebPresentmentListener %s", v20, 0xCu);
    sub_10000BB78(v21);

    v1 = v19;
    v0 = v18;
    v5 = v17;
    v8 = v37;
  }

  v22 = *(v1 + 8);
  v22(v13, v0);
  if (static WebPresentmentEntitlementChecker.checkEntitlement(connection:)())
  {
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v38);
      _os_log_impl(&_mh_execute_header, v23, v24, "WebPresentmentListener %s Public entitlement present", v25, 0xCu);
      sub_10000BB78(v26);
    }

    v27 = v11;
LABEL_11:
    v22(v27, v0);
    return 1;
  }

  if (static WebPresentmentEntitlementChecker.checkWebBrowserEntitlement(connection:)())
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v38);
      _os_log_impl(&_mh_execute_header, v28, v29, "WebPresentmentListener %s Web browser entitlement present", v30, 0xCu);
      sub_10000BB78(v31);
    }

    v27 = v8;
    goto LABEL_11;
  }

  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v38);
    _os_log_impl(&_mh_execute_header, v33, v34, "WebPresentmentListener %s No valid entitlements present", v35, 0xCu);
    sub_10000BB78(v36);
  }

  v22(v5, v0);
  return 0;
}

uint64_t sub_1004F6FB8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v25);
    _os_log_impl(&_mh_execute_header, v12, v13, "WebPresentmentListener %s", v14, 0xCu);
    sub_10000BB78(v15);
  }

  v16 = *(v5 + 8);
  v16(v11, v4);
  v17 = sub_1004F6AC0();
  if (v17)
  {
    v18 = sub_10000BA08((v2 + OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_activeTaskManager), *(v2 + OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_activeTaskManager + 24));
    sub_1004F6358(a1, *v18);
  }

  else
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v25);
      _os_log_impl(&_mh_execute_header, v19, v20, "WebPresentmentListener %s Insufficient entitlements, rejecting new connection", v21, 0xCu);
      sub_10000BB78(v22);
    }

    v16(v9, v4);
  }

  return v17 & 1;
}

uint64_t sub_1004F72A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F72DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_1004F4F80(a1, v1);
}

uint64_t sub_1004F7378(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_1004F5720(a1, v1);
}

uint64_t sub_1004F7410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004F7428()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F7468()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004F74A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100027B9C;

  return sub_1004F6258();
}

uint64_t sub_1004F755C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F7594(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_1004F5BD0(a1, a2, v6);
}

id sub_1004F7684()
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
    _os_log_impl(&_mh_execute_header, v8, v9, "WebPresentmentRemoteAlertListener %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v4 + 8))(v7, v3);
  [*&v1[OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_listener] invalidate];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_1004F7938(const char *a1)
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
    *(v9 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
    sub_10000BB78(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1004F7B40(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveTaskManager();
  v44[3] = active;
  v44[4] = &off_100812348;
  v44[0] = a2;
  v10 = objc_opt_self();

  v11 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared34WebPresentmentRemoteAlertInterface_];
  [a1 setExportedInterface:v11];

  sub_100020260(v44, &aBlock);
  v12 = v37;
  v13 = sub_10001F370(&aBlock, v37);
  v14 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v43[3] = active;
  v43[4] = &off_100812348;
  v43[0] = v18;
  type metadata accessor for WebPresentmentRemoteAlertProxy();
  v19 = swift_allocObject();
  v20 = sub_10001F370(v43, active);
  v21 = *(*(active - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v41 = active;
  v42 = &off_100812348;
  *&v40 = v25;
  swift_defaultActor_initialize();
  *(v19 + 144) = 0;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  sub_10001F358(&v40, v19 + 152);
  sub_10000BB78(v43);
  sub_10000BB78(&aBlock);
  [a1 setExportedObject:v19];
  v38 = sub_1004F7920;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100503A7C;
  v37 = &unk_100815208;
  v26 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler:v26];
  _Block_release(v26);
  v38 = sub_1004F792C;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100503A7C;
  v37 = &unk_100815230;
  v27 = _Block_copy(&aBlock);
  [a1 setInvalidationHandler:v27];
  _Block_release(v27);
  [a1 activate];
  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &aBlock);
    _os_log_impl(&_mh_execute_header, v28, v29, "WebPresentmentRemoteAlertListener %s Activating new connection", v30, 0xCu);
    sub_10000BB78(v31);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  return sub_10000BB78(v44);
}

uint64_t sub_1004F803C()
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
    _os_log_impl(&_mh_execute_header, v11, v12, "WebPresentmentRemoteAlertListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v1 + 8);
  v15(v10, v0);
  v16 = static WebPresentmentRemoteAlertEntitlementChecker.checkInternalEntitlement(connection:)();
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
      _os_log_impl(&_mh_execute_header, v17, v18, "WebPresentmentRemoteAlertListener %s Internal entitlement present", v19, 0xCu);
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
      _os_log_impl(&_mh_execute_header, v22, v23, "WebPresentmentRemoteAlertListener %s No valid entitlements present", v24, 0xCu);
      sub_10000BB78(v25);
    }

    v21 = v5;
  }

  v15(v21, v0);
  return v16 & 1;
}

uint64_t sub_1004F83FC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v25);
    _os_log_impl(&_mh_execute_header, v12, v13, "WebPresentmentRemoteAlertListener %s", v14, 0xCu);
    sub_10000BB78(v15);
  }

  v16 = *(v5 + 8);
  v16(v11, v4);
  v17 = sub_1004F803C();
  if (v17)
  {
    v18 = sub_10000BA08((v2 + OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_activeTaskManager), *(v2 + OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_activeTaskManager + 24));
    sub_1004F7B40(a1, *v18);
  }

  else
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v25);
      _os_log_impl(&_mh_execute_header, v19, v20, "WebPresentmentRemoteAlertListener %s Insufficient entitlements, rejecting new connection", v21, 0xCu);
      sub_10000BB78(v22);
    }

    v16(v9, v4);
  }

  return v17 & 1;
}

uint64_t sub_1004F86E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004F8708(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[24] = v7;
  v8 = *(v7 - 8);
  v2[25] = v8;
  v2[26] = *(v8 + 64);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004F88CC, v1, 0);
}

uint64_t sub_1004F88CC()
{
  v45 = v0;
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[18];
  defaultLogger()();
  v41 = *(v4 + 16);
  v41(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v6, v42);
  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[29];
  v13 = v0[24];
  v12 = v0[25];
  if (v7)
  {
    v40 = v0[29];
    v14 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071CAE0, v44);
    *(v14 + 12) = 2080;
    v15 = URL.absoluteString.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_100141FE4(v15, v17, v44);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v42, "WebPresentmentRemoteAlertProxy %s scannableCodePayload: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v9, v40);
  }

  else
  {

    (*(v12 + 8))(v10, v13);
    (*(v8 + 8))(v9, v11);
  }

  v19 = v0[19];
  swift_beginAccess();
  sub_10000BBC4(v19 + 112, (v0 + 2), &qword_100846278, &unk_1006E6B60);
  v20 = v0[5];
  sub_10000BE18((v0 + 2), &qword_100846278, &unk_1006E6B60);
  v21 = v0[27];
  if (v20)
  {
    v22 = v0[31];
    v23 = v0[28];
    v43 = v0[23];
    (*(v0[21] + 104))(v0[22], enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v0[20]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004FD2B0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

  else
  {
    v27 = v0[25];
    v26 = v0[26];
    v28 = v0[23];
    v29 = v0[24];
    v31 = v0[18];
    v30 = v0[19];
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
    v41(v21, v31, v29);
    v34 = sub_1004FD2B0(&qword_100846280, v33, type metadata accessor for WebPresentmentRemoteAlertProxy);
    v35 = (*(v27 + 80) + 40) & ~*(v27 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = v30;
    *(v36 + 3) = v34;
    *(v36 + 4) = v30;
    (*(v27 + 32))(&v36[v35], v21, v29);
    swift_retain_n();
    v37 = sub_1003E653C(0, 0, v28, &unk_1006E6BB0, v36);
    v0[32] = v37;
    v0[10] = sub_100007224(&qword_100846290, &unk_1006E6BB8);
    v0[11] = &off_100812330;
    v0[7] = v37;
    swift_beginAccess();

    sub_1004FCB5C((v0 + 7), v19 + 112);
    swift_endAccess();
    v38 = sub_10000BA08((v30 + 152), *(v30 + 176));
    v0[33] = v38;
    v39 = *v38;

    return _swift_task_switch(sub_1004F8E74, v39, 0);
  }
}

uint64_t sub_1004F8E74()
{
  sub_100501270(*(v0 + 256), **(v0 + 264));

  v1 = async function pointer to Task<>.value.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_1004F8F2C;
  v3 = *(v0 + 256);

  return Task<>.value.getter(v2, v3, &type metadata for () + 8);
}

uint64_t sub_1004F8F2C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_1004F903C, v2, 0);
}

uint64_t sub_1004F903C()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[22];
  v5 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004F90E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[332] = a5;
  v5[331] = a4;
  v7 = type metadata accessor for DateProvider();
  v5[333] = v7;
  v8 = *(v7 - 8);
  v5[334] = v8;
  v9 = *(v8 + 64) + 15;
  v5[335] = swift_task_alloc();
  v5[336] = swift_task_alloc();
  v10 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider();
  v5[337] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[338] = swift_task_alloc();

  return _swift_task_switch(sub_1004F91E4, a4, 0);
}

uint64_t sub_1004F91E4()
{
  v188 = v0;
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2688);
  v3 = *(v0 + 2680);
  v4 = *(v0 + 2672);
  v180 = *(v0 + 2664);
  v183 = *(v0 + 2696);
  v5 = type metadata accessor for DeviceInformationProvider();
  *(v0 + 840) = v5;
  *(v0 + 848) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 816));
  DeviceInformationProvider.init()();
  type metadata accessor for UserDefaultsConfiguration();
  *(v0 + 856) = static UserDefaultsConfiguration.standard.getter();
  v6 = sub_100134AD0();
  if (sub_100134AD0())
  {
    v7 = 0xED0000747365742DLL;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = type metadata accessor for DigitalPresentmentSessionManager();
  swift_allocObject();
  v9 = sub_10015D65C(v6 & 1, 0x797469746E656469, v7, 2);
  *(v0 + 2712) = v9;
  type metadata accessor for PassManager();
  v173 = swift_allocObject();
  v178 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
  v176 = type metadata accessor for DigitalPresentmentUIPresenter();

  v170 = v1;
  DeviceInformationProvider.init()();
  v167 = v5;
  *(v0 + 1648) = v5;
  *(v0 + 1656) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 1624));
  DeviceInformationProvider.init()();
  v185 = 0u;
  v186 = 0u;
  v187 = 0;
  type metadata accessor for KRLTrustValidator();
  swift_allocObject();
  v10 = sub_10010F338();

  DateProvider.init()();
  v160 = *(v4 + 16);
  v160(v3, v2, v180);
  v11 = sub_1003A0748(&v185, v10, v3);

  v159 = *(v4 + 8);
  v159(v2, v180);
  *(v0 + 1608) = v8;
  *(v0 + 1616) = &off_100809E48;
  v165 = v9;
  *(v0 + 1584) = v9;
  *(v0 + 1408) = v183;
  *(v0 + 1416) = &off_100810218;
  v12 = sub_100032DBC((v0 + 1384));
  sub_1003EADF0(v1, v12);
  v13 = type metadata accessor for PresentmentKeyRevocationValidator();
  *(v0 + 1368) = v13;
  *(v0 + 1376) = &off_100809510;
  *(v0 + 1344) = v11;
  v181 = type metadata accessor for WalletPassPresentmentManager();
  v14 = swift_allocObject();
  v15 = sub_10001F370(v0 + 1584, v8);
  v16 = *(v8 - 8);
  v161 = *(v16 + 64) + 15;
  v17 = swift_task_alloc();
  v162 = *(v16 + 16);
  v162(v17, v15, v8);
  v18 = *(v0 + 1408);
  v19 = sub_10001F370(v0 + 1384, v18);
  v20 = *(v18 - 8);
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  (*(v20 + 16))(v22, v19, v18);
  v23 = *(v0 + 1368);
  v24 = sub_10001F370(v0 + 1344, v23);
  v25 = *(v23 - 8);
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  (*(v25 + 16))(v27, v24, v23);
  v28 = *v17;
  v29 = *v27;
  v169 = v8;
  *(v0 + 1048) = v8;
  *(v0 + 1056) = &off_100809E48;
  *(v0 + 1024) = v28;
  *(v0 + 968) = v183;
  *(v0 + 976) = &off_100810218;
  v30 = sub_100032DBC((v0 + 944));
  sub_1003EAE54(v22, v30);
  *(v0 + 2608) = v13;
  *(v0 + 2616) = &off_100809510;
  *(v0 + 2584) = v29;
  swift_defaultActor_initialize();
  sub_1003EAEB8(v170);
  *(v14 + 272) = 0u;
  *(v14 + 288) = 0u;
  *(v14 + 304) = 0;
  sub_10001F358((v0 + 1024), v14 + 112);
  *(v14 + 152) = v173;
  *(v14 + 160) = v178;
  *(v14 + 168) = &off_100809DF0;
  *(v14 + 176) = v176;
  *(v14 + 184) = &off_100809F18;
  sub_10001F358((v0 + 944), v14 + 192);
  sub_10001F358((v0 + 1624), v14 + 232);
  sub_10001F358((v0 + 2584), v14 + 312);
  sub_10000BB78((v0 + 1344));

  sub_10000BB78((v0 + 1384));

  sub_10000BB78((v0 + 1584));

  *(v0 + 704) = v181;
  *(v0 + 712) = &off_100810230;
  *(v0 + 680) = v14;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v31 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v31 + 54);
  sub_1000318FC(&v31[4], v0 + 16);
  os_unfair_lock_unlock(v31 + 54);
  v32 = *(v0 + 2664);
  v33 = *(v0 + 88);

  sub_100031918(v0 + 16);
  *(v0 + 1008) = type metadata accessor for MobileDocumentRegistrationDataContainer();
  *(v0 + 1016) = sub_1004FD2B0(&qword_100843228, 255, type metadata accessor for MobileDocumentRegistrationDataContainer);
  *(v0 + 984) = v33;
  *(v0 + 1088) = type metadata accessor for MobileDocumentProviderRegistrationValidator();
  *(v0 + 1096) = &protocol witness table for MobileDocumentProviderRegistrationValidator;
  sub_100032DBC((v0 + 1064));
  MobileDocumentProviderRegistrationValidator.init()();
  v34 = type metadata accessor for MobileDocumentProviderRegistrationStorage();
  v35 = swift_allocObject();
  sub_10001F358((v0 + 984), v35 + 16);
  sub_10001F358((v0 + 1064), v35 + 56);
  *(v0 + 608) = v34;
  *(v0 + 616) = &off_10080DE08;
  *(v0 + 584) = v35;
  v36 = type metadata accessor for MobileDocumentProviderRegistrationEntitlementChecker();
  *(v0 + 664) = v32;
  *(v0 + 672) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 640));
  DateProvider.init()();
  *(v0 + 624) = v36;
  *(v0 + 632) = &protocol witness table for MobileDocumentProviderRegistrationEntitlementChecker;
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v37 = type metadata accessor for ExtensionPointManager();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = ExtensionPointManager.init(extensionPointIdentifier:)();
  *(v0 + 1128) = v37;
  *(v0 + 1136) = &protocol witness table for ExtensionPointManager;
  *(v0 + 1104) = v40;
  *(v0 + 1168) = type metadata accessor for BundleRecordFetcher();
  *(v0 + 1176) = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC((v0 + 1144));
  BundleRecordFetcher.init()();
  *(v0 + 1248) = v167;
  *(v0 + 1256) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 1224));
  DeviceInformationProvider.init()();
  static UserDefaultsConfiguration.standard.getter();
  *(v0 + 1208) = type metadata accessor for WebPresentmentDeviceSupportProvider();
  *(v0 + 1216) = &protocol witness table for WebPresentmentDeviceSupportProvider;
  sub_100032DBC((v0 + 1184));
  WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)();
  PartyDocumentProviderPreferencesManager = type metadata accessor for FirstPartyDocumentProviderPreferencesManager();
  v42 = *(PartyDocumentProviderPreferencesManager + 48);
  v43 = *(PartyDocumentProviderPreferencesManager + 52);
  swift_allocObject();
  v156 = FirstPartyDocumentProviderPreferencesManager.init(userDefaults:)();
  *(v0 + 1288) = &type metadata for MobileDocumentProviderFilter;
  *(v0 + 1296) = &off_10080DCC8;
  v44 = swift_allocObject();
  *(v0 + 1264) = v44;
  sub_1003EAFA4(v0 + 584, v44 + 16);
  v158 = type metadata accessor for MobileDocumentProviderDataSource();
  v45 = swift_allocObject();
  *(v0 + 2720) = v45;
  v46 = sub_10001F370(v0 + 1264, &type metadata for MobileDocumentProviderFilter);
  v47 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v47, v46, &type metadata for MobileDocumentProviderFilter);
  *(v0 + 1328) = &type metadata for MobileDocumentProviderFilter;
  *(v0 + 1336) = &off_10080DCC8;
  v49 = v0 + 1544;
  v48 = v0 + 1464;
  v50 = swift_allocObject();
  *(v0 + 1304) = v50;
  *(v50 + 16) = *v47;
  v51 = *(v47 + 64);
  v53 = *(v47 + 16);
  v52 = *(v47 + 32);
  *(v50 + 64) = *(v47 + 48);
  *(v50 + 80) = v51;
  *(v50 + 32) = v53;
  *(v50 + 48) = v52;
  v55 = *(v47 + 96);
  v54 = *(v47 + 112);
  v56 = *(v47 + 80);
  *(v50 + 144) = *(v47 + 128);
  *(v50 + 112) = v55;
  *(v50 + 128) = v54;
  *(v50 + 96) = v56;
  swift_defaultActor_initialize();
  *(v45 + 280) = 0;
  sub_10001F358((v0 + 1104), v45 + 112);
  sub_10001F358((v0 + 1144), v45 + 152);
  sub_10001F358((v0 + 1184), v45 + 192);
  sub_10001F358((v0 + 1304), v45 + 232);
  *(v45 + 272) = v156;
  sub_10000BB78((v0 + 1264));

  LOBYTE(v47) = sub_100134AD0();
  v57 = type metadata accessor for WebPresentmentBrandStore();
  v58 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v58 + 112) = [objc_allocWithZone(DIWebPresentmentBrandStore) init];
  *(v0 + 744) = v57;
  *(v0 + 752) = &off_1008109F0;
  *(v0 + 720) = v58;
  *(v0 + 792) = v167;
  *(v0 + 800) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 768));
  DeviceInformationProvider.init()();
  v59 = static UserDefaultsConfiguration.standard.getter();
  *(v0 + 760) = v47 & 1;
  *(v0 + 808) = v59;
  *(v0 + 1448) = v169;
  *(v0 + 1456) = &off_100809E48;
  *(v0 + 1424) = v165;
  *(v0 + 1464) = 0u;
  *(v0 + 1480) = 0u;
  *(v0 + 1496) = 0;
  *(v0 + 1528) = &type metadata for WebPresentmentBrandConfigurationManager;
  *(v0 + 1536) = &off_1008109C8;
  v60 = swift_allocObject();
  *(v0 + 1504) = v60;
  sub_1003EB048(v0 + 720, v60 + 16);
  v157 = type metadata accessor for WebPresentmentResponseBuilder();
  *(v0 + 1544) = 0u;
  *(v0 + 1560) = 0u;
  *(v0 + 1576) = 0;

  v61 = static UserDefaultsConfiguration.standard.getter();
  sub_100020260(v0 + 1424, v0 + 216);
  sub_10000BBC4(v0 + 1464, v0 + 1664, &qword_100843230, &qword_1006E0DC0);
  if (*(v0 + 1688))
  {
    sub_10001F358((v0 + 1664), v0 + 864);
  }

  else
  {
    v62 = *(v0 + 2704);
    v63 = *(v0 + 2696);
    v154 = v63;
    v64 = *(v0 + 2688);
    v65 = *(v0 + 2680);
    v166 = v45;
    v66 = *(v0 + 2664);
    sub_100020260(v0 + 1424, v0 + 1704);
    v163 = swift_allocObject();
    v155 = v62;
    DeviceInformationProvider.init()();
    *(v0 + 1768) = v167;
    *(v0 + 1776) = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC((v0 + 1744));
    DeviceInformationProvider.init()();
    v187 = 0;
    v185 = 0u;
    v186 = 0u;
    swift_allocObject();
    v168 = v61;
    v67 = sub_10010F338();

    DateProvider.init()();
    v160(v65, v64, v66);
    v68 = sub_1003A0748(&v185, v67, v65);

    v159(v64, v66);
    v69 = *(v0 + 1728);
    sub_10001F370(v0 + 1704, v69);
    v70 = *(v69 - 8);
    v71 = *(v70 + 64) + 15;
    v164 = swift_task_alloc();
    (*(v70 + 16))();
    v72 = *v164;
    *(v0 + 1808) = v169;
    *(v0 + 1816) = &off_100809E48;
    *(v0 + 1784) = v72;
    *(v0 + 1848) = v63;
    *(v0 + 1856) = &off_100810218;
    v73 = sub_100032DBC((v0 + 1824));
    sub_1003EADF0(v62, v73);
    *(v0 + 1888) = v13;
    *(v0 + 1896) = &off_100809510;
    *(v0 + 1864) = v68;
    v74 = swift_allocObject();
    v75 = sub_10001F370(v0 + 1784, v169);
    v76 = swift_task_alloc();
    v162(v76, v75, v169);
    v77 = *(v0 + 1848);
    v78 = sub_10001F370(v0 + 1824, v77);
    v79 = *(v77 - 8);
    v80 = *(v79 + 64) + 15;
    v81 = swift_task_alloc();
    (*(v79 + 16))(v81, v78, v77);
    v82 = *(v0 + 1888);
    v83 = sub_10001F370(v0 + 1864, v82);
    v84 = *(v82 - 8);
    v85 = *(v84 + 64) + 15;
    v86 = swift_task_alloc();
    (*(v84 + 16))(v86, v83, v82);
    v87 = *v76;
    v88 = *v86;
    *(v0 + 1928) = v169;
    *(v0 + 1936) = &off_100809E48;
    *(v0 + 1904) = v87;
    *(v0 + 1968) = v154;
    *(v0 + 1976) = &off_100810218;
    v89 = sub_100032DBC((v0 + 1944));
    sub_1003EAE54(v81, v89);
    *(v0 + 2008) = v13;
    *(v0 + 2016) = &off_100809510;
    *(v0 + 1984) = v88;
    v61 = v168;
    swift_defaultActor_initialize();
    sub_1003EAEB8(v155);
    *(v74 + 272) = 0u;
    *(v74 + 288) = 0u;
    *(v74 + 304) = 0;
    sub_10001F358((v0 + 1904), v74 + 112);
    *(v74 + 152) = v163;
    *(v74 + 160) = v178;
    *(v74 + 168) = &off_100809DF0;
    *(v74 + 176) = v176;
    *(v74 + 184) = &off_100809F18;
    sub_10001F358((v0 + 1944), v74 + 192);
    sub_10001F358((v0 + 1744), v74 + 232);
    sub_10001F358((v0 + 1984), v74 + 312);
    sub_10000BB78((v0 + 1864));
    v48 = v0 + 1464;

    sub_10000BB78((v0 + 1824));
    v45 = v166;

    sub_10000BB78((v0 + 1784));

    sub_10000BB78((v0 + 1704));

    *(v0 + 888) = v181;
    *(v0 + 896) = &off_100810230;
    *(v0 + 864) = v74;
    v49 = v0 + 1544;
    if (*(v0 + 1688))
    {
      sub_10000BE18(v0 + 1664, &qword_100843230, &qword_1006E0DC0);
    }
  }

  sub_10001F358((v0 + 864), v0 + 256);
  *(v0 + 296) = v157;
  *(v0 + 304) = &off_100811FB0;
  sub_100020260(v0 + 1504, v0 + 312);
  sub_10000BBC4(v49, v0 + 2064, &qword_100843238, &qword_1006E0DC8);
  if (*(v0 + 2088))
  {
    sub_10000BE18(v49, &qword_100843238, &qword_1006E0DC8);
    sub_10000BE18(v48, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78((v0 + 1504));
    sub_10000BB78((v0 + 1424));
    sub_10001F358((v0 + 2064), v0 + 2024);
  }

  else
  {
    sub_100020260(v0 + 1504, v0 + 2104);
    v90 = v61;
    v91 = static UserDefaultsConfiguration.standard.getter();
    *(v0 + 2048) = &type metadata for WebPresentmentResponsePermissionsFilter;
    *(v0 + 2056) = &off_100812070;
    v92 = swift_allocObject();
    *(v0 + 2024) = v92;
    v93 = v91;
    v61 = v90;
    sub_10046D410(v0 + 2104, v93, v92 + 16);
    sub_10000BE18(v49, &qword_100843238, &qword_1006E0DC8);
    sub_10000BE18(v48, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78((v0 + 1504));
    sub_10000BB78((v0 + 1424));
    if (*(v0 + 2088))
    {
      sub_10000BE18(v0 + 2064, &qword_100843238, &qword_1006E0DC8);
    }
  }

  v94 = *(v0 + 2664);
  sub_10001F358((v0 + 2024), v0 + 352);
  *(v0 + 392) = v61;
  v95 = *(v0 + 360);
  *(v0 + 528) = *(v0 + 344);
  *(v0 + 544) = v95;
  *(v0 + 560) = *(v0 + 376);
  v96 = *(v0 + 296);
  *(v0 + 464) = *(v0 + 280);
  *(v0 + 480) = v96;
  v97 = *(v0 + 328);
  *(v0 + 496) = *(v0 + 312);
  *(v0 + 512) = v97;
  v98 = *(v0 + 232);
  *(v0 + 400) = *(v0 + 216);
  *(v0 + 416) = v98;
  v99 = *(v0 + 264);
  *(v0 + 432) = *(v0 + 248);
  *(v0 + 448) = v99;
  *(v0 + 576) = *(v0 + 392);
  v100 = type metadata accessor for RemoteWebPresentmentScannableCodeHandler();
  v101 = *(v100 + 48);
  v102 = *(v100 + 52);
  swift_allocObject();
  v174 = sub_10040B4BC(sub_10040B3C4, 0);

  sub_1003E85AC((v0 + 2144));
  *(v0 + 2208) = type metadata accessor for PartialWebPresentmentRequestParser();
  *(v0 + 2216) = &protocol witness table for PartialWebPresentmentRequestParser;
  sub_100032DBC((v0 + 2184));
  PartialWebPresentmentRequestParser.init()();
  sub_100007224(&qword_100843240, &qword_1006E0DD0);
  v103 = swift_allocObject();
  v104 = type metadata accessor for WebPresentmentSelectionBypasser();
  v103[1] = 0u;
  v103[2] = 0u;
  *(v103 + 44) = 0u;
  v184 = v104;
  v171 = swift_allocObject();
  *(v0 + 2248) = v94;
  *(v0 + 2256) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 2224));
  DateProvider.init()();
  v182 = type metadata accessor for BluetoothManager();
  v105 = swift_allocObject();
  v106 = v45;
  if (qword_100832C78 != -1)
  {
    swift_once();
  }

  v177 = qword_100882378;
  v107 = *(v0 + 2168);
  sub_10001F370(v0 + 2144, v107);
  v108 = *(v107 - 8);
  v109 = *(v108 + 64) + 15;
  v179 = swift_task_alloc();
  (*(v108 + 16))();
  v110 = *v179;
  *(v0 + 2288) = v100;
  *(v0 + 2296) = &off_10080FD60;
  *(v0 + 2264) = v174;
  *(v0 + 2328) = &type metadata for WebPresentmentWalletPassPresenter;
  *(v0 + 2336) = &off_100812298;
  v111 = swift_allocObject();
  *(v0 + 2304) = v111;
  sub_1003EB13C(v0 + 400, v111 + 16);
  *(v0 + 2368) = v158;
  *(v0 + 2376) = &off_10080DC28;
  *(v0 + 2344) = v106;
  v112 = type metadata accessor for RemoteMobileDocumentProviderUIPresenter();
  *(v0 + 2408) = v112;
  *(v0 + 2416) = &off_10080FAC0;
  *(v0 + 2384) = v110;
  *(v0 + 2448) = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
  *(v0 + 2456) = &off_10080DD00;
  *(v0 + 2424) = v103;
  *(v0 + 2488) = v184;
  *(v0 + 2496) = &off_100812108;
  *(v0 + 2464) = v171;
  *(v0 + 2528) = v182;
  *(v0 + 2536) = &off_1008157E8;
  *(v0 + 2504) = v105;
  type metadata accessor for RemoteWebPresentmentScannableCodeManager();
  v113 = swift_allocObject();
  *(v0 + 2728) = v113;
  v114 = sub_10001F370(v0 + 2304, &type metadata for WebPresentmentWalletPassPresenter);
  v115 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v115, v114, &type metadata for WebPresentmentWalletPassPresenter);
  sub_10001F370(v0 + 2384, v112);
  v175 = v112;
  v116 = *(v112 - 8);
  v117 = *(v116 + 64) + 15;
  v172 = swift_task_alloc();
  (*(v116 + 16))();
  v118 = *(v0 + 2448);
  v119 = sub_10001F370(v0 + 2424, v118);
  v120 = *(v118 - 8);
  v121 = *(v120 + 64) + 15;
  v122 = swift_task_alloc();
  (*(v120 + 16))(v122, v119, v118);
  v123 = *(v0 + 2488);
  v124 = sub_10001F370(v0 + 2464, v123);
  v125 = *(v123 - 8);
  v126 = *(v125 + 64) + 15;
  v127 = swift_task_alloc();
  (*(v125 + 16))(v127, v124, v123);
  v128 = *(v0 + 2528);
  v129 = sub_10001F370(v0 + 2504, v128);
  v130 = *(v128 - 8);
  v131 = *(v130 + 64) + 15;
  v132 = swift_task_alloc();
  (*(v130 + 16))(v132, v129, v128);
  v133 = *v172;
  v134 = *v122;
  v135 = *v127;
  v136 = *v132;
  *(v0 + 2568) = &type metadata for WebPresentmentWalletPassPresenter;
  *(v0 + 2576) = &off_100812298;
  v137 = swift_allocObject();
  *(v0 + 2544) = v137;
  v138 = *v115;
  v139 = *(v115 + 16);
  v140 = *(v115 + 48);
  *(v137 + 48) = *(v115 + 32);
  *(v137 + 64) = v140;
  *(v137 + 16) = v138;
  *(v137 + 32) = v139;
  v141 = *(v115 + 64);
  v142 = *(v115 + 80);
  v143 = *(v115 + 112);
  *(v137 + 112) = *(v115 + 96);
  *(v137 + 128) = v143;
  *(v137 + 80) = v141;
  *(v137 + 96) = v142;
  v144 = *(v115 + 128);
  v145 = *(v115 + 144);
  v146 = *(v115 + 160);
  *(v137 + 192) = *(v115 + 176);
  *(v137 + 160) = v145;
  *(v137 + 176) = v146;
  *(v137 + 144) = v144;
  v113[20] = v175;
  v113[21] = &off_10080FAC0;
  v113[17] = v133;
  v113[30] = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
  v113[31] = &off_10080DD00;
  v113[27] = v134;
  v113[35] = v184;
  v113[36] = &off_100812108;
  v113[32] = v135;
  v113[45] = v182;
  v113[46] = &off_1008157E8;
  v113[42] = v136;
  sub_10001F358((v0 + 2264), (v113 + 2));
  sub_10001F358((v0 + 2544), (v113 + 7));
  sub_10001F358((v0 + 2344), (v113 + 12));
  sub_10001F358((v0 + 2184), (v113 + 22));
  sub_10001F358((v0 + 2224), (v113 + 37));
  v113[47] = v177;

  sub_10000BB78((v0 + 2504));

  sub_10000BB78((v0 + 2464));

  sub_10000BB78((v0 + 2424));

  sub_10000BB78((v0 + 2384));

  sub_10000BB78((v0 + 2304));

  sub_10000BB78((v0 + 2144));

  v147 = type metadata accessor for WebPresentmentAnalyticsReporter();
  v148 = *(v147 + 48);
  v149 = *(v147 + 52);
  swift_allocObject();
  v150 = WebPresentmentAnalyticsReporter.init()();
  *(v0 + 2736) = v150;
  v151 = swift_task_alloc();
  *(v0 + 2744) = v151;
  *v151 = v0;
  v151[1] = sub_1004FAA40;
  v152 = *(v0 + 2656);

  return sub_1004FCBCC(v152, v150, v113);
}

uint64_t sub_1004FAA40()
{
  v1 = *(*v0 + 2744);
  v2 = *(*v0 + 2736);
  v3 = *(*v0 + 2648);
  v5 = *v0;

  return _swift_task_switch(sub_1004FAB6C, v3, 0);
}

uint64_t sub_1004FAB6C()
{
  v1 = *(v0 + 2728);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2704);
  v5 = *(v0 + 2688);
  v6 = *(v0 + 2680);
  v7 = *(v0 + 2648);

  sub_1003EB198(v0 + 400);
  sub_1003EB1EC(v0 + 720);
  sub_1003EB240(v0 + 584);
  sub_100108074(v0 + 816);
  *(v0 + 904) = 0u;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0;
  swift_beginAccess();
  sub_1004FCB5C(v0 + 904, v7 + 112);
  swift_endAccess();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004FAE08(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for URL();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v3[6] = _Block_copy(a2);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1004FAF34;

  return sub_1004F8708(v8);
}

uint64_t sub_1004FAF34()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  v14 = v4 + 40;
  v13 = *(v4 + 40);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_1004FB120(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for WebPresentmentResponse();
  v2[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v8 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004FB248, v1, 0);
}

uint64_t sub_1004FB248()
{
  v1 = v0[19];
  swift_beginAccess();
  sub_10000BBC4(v1 + 112, (v0 + 2), &qword_100846278, &unk_1006E6B60);
  v2 = v0[5];
  sub_10000BE18((v0 + 2), &qword_100846278, &unk_1006E6B60);
  if (v2)
  {
    (*(v0[21] + 104))(v0[22], enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v0[20]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004FD2B0(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v4 = v0[24];
    v3 = v0[25];
    v5 = v0[22];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[25];
    v10 = v0[18];
    v9 = v0[19];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v13 = sub_1004FD2B0(&qword_100846280, v12, type metadata accessor for WebPresentmentRemoteAlertProxy);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v13;
    v14[4] = v9;
    v14[5] = v10;
    swift_retain_n();
    v15 = v10;
    v16 = sub_100130958(0, 0, v8, &unk_1006E6B78, v14);
    v0[26] = v16;
    v0[10] = sub_100007224(&qword_100846288, &unk_1006E6B80);
    v0[11] = &off_100812330;
    v0[7] = v16;
    swift_beginAccess();

    sub_1004FCB5C((v0 + 7), v1 + 112);
    swift_endAccess();
    v17 = sub_10000BA08((v9 + 152), *(v9 + 176));
    v0[27] = v17;
    v18 = *v17;

    return _swift_task_switch(sub_1004FB5C8, v18, 0);
  }
}

uint64_t sub_1004FB5C8()
{
  sub_100501240(*(v0 + 208), **(v0 + 216));

  v1 = async function pointer to Task.value.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  v3 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v2 = v0;
  v2[1] = sub_1004FB69C;
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);

  return Task.value.getter(v5, v4, v6, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_1004FB69C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_1004FB880;
  }

  else
  {
    v6 = sub_1004FB7C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004FB7C8()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v5 = objc_allocWithZone(type metadata accessor for XPCWebPresentmentResponse());
  v6 = XPCWebPresentmentResponse.init(value:)();

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1004FB880()
{
  v1 = v0[26];

  v2 = v0[29];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004FB908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a4;
  v5[38] = a5;
  v5[36] = a1;
  v7 = type metadata accessor for WebPresentmentRequest();
  v5[39] = v7;
  v8 = *(v7 - 8);
  v5[40] = v8;
  v9 = *(v8 + 64) + 15;
  v5[41] = swift_task_alloc();
  v10 = type metadata accessor for PartialWebPresentmentRequestParser();
  v5[42] = v10;
  v11 = *(v10 - 8);
  v5[43] = v11;
  v12 = *(v11 + 64) + 15;
  v5[44] = swift_task_alloc();
  v13 = type metadata accessor for PartialWebPresentmentRequest();
  v5[45] = v13;
  v14 = *(v13 - 8);
  v5[46] = v14;
  v15 = *(v14 + 64) + 15;
  v5[47] = swift_task_alloc();

  return _swift_task_switch(sub_1004FBA88, a4, 0);
}

uint64_t sub_1004FBA88()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[38];
  v0[48] = sub_1003E9594(0, 0);
  PartialWebPresentmentRequestParser.init()();
  XPCWebPresentmentRequest.value.getter();
  PartialWebPresentmentRequestParser.parseRequest(_:)();
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[42];
  v8 = v0[38];
  (*(v0[40] + 8))(v0[41], v0[39]);
  (*(v6 + 8))(v5, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for WebPresentmentRequestReleaser();
  v11 = swift_allocObject();
  v0[49] = v11;
  v12 = v8;
  swift_defaultActor_initialize();
  sub_100007224(&qword_100834DA0, &unk_1006C03C0);
  v13 = swift_allocObject();
  *(v13 + 20) = 0;
  *(v13 + 16) = 0;
  v11[14] = v13;
  v11[15] = &unk_1006E6B98;
  v11[16] = v9;
  v0[10] = v10;
  v0[11] = &off_100811F78;
  v0[7] = v11;
  v14 = type metadata accessor for WebPresentmentAnalyticsReporter();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = WebPresentmentAnalyticsReporter.init()();
  v0[15] = v14;
  v0[16] = &protocol witness table for WebPresentmentAnalyticsReporter;
  v0[12] = v17;

  return _swift_task_switch(sub_1004FBD40, 0, 0);
}

uint64_t sub_1004FBD40()
{
  v1 = v0[48];
  v2 = v1[10];
  v3 = v1[11];
  sub_10000BA08(v1 + 7, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[50] = v6;
  *v6 = v0;
  v6[1] = sub_1004FBE70;
  v7 = v0[47];

  return v9(v7, v2, v3);
}

uint64_t sub_1004FBE70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(*v2 + 408) = a1;

  if (v1)
  {
    v4[54] = v1;
    v7 = v4[37];

    return _swift_task_switch(sub_1004FC2AC, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[52] = v8;
    *v8 = v6;
    v8[1] = sub_1004FC004;
    v9 = v4[47];
    v10 = v4[48];
    v11 = v4[36];

    return sub_100401E3C(v11, v9, (v4 + 7), a1, (v4 + 12));
  }
}

uint64_t sub_1004FC004()
{
  v2 = *v1;
  v3 = (*v1)[52];
  v9 = *v1;
  (*v1)[53] = v0;

  if (v0)
  {
    v4 = sub_1004FC23C;
    v5 = 0;
  }

  else
  {
    v6 = v2[51];
    v7 = v2[37];

    sub_10000BB78(v2 + 12);
    sub_10000BB78(v2 + 7);
    v4 = sub_1004FC13C;
    v5 = v7;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1004FC13C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 328);
  v8 = *(v0 + 296);

  (*(v4 + 8))(v3, v5);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  swift_beginAccess();
  sub_1004FCB5C(v0 + 176, v8 + 112);
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004FC23C()
{
  v1 = v0[51];

  v0[54] = v0[53];
  v2 = v0[37];

  return _swift_task_switch(sub_1004FC2AC, v2, 0);
}

uint64_t sub_1004FC2AC()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 360);
  v6 = *(v0 + 296);

  (*(v4 + 8))(v3, v5);
  sub_10000BB78((v0 + 96));
  sub_10000BB78((v0 + 56));
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  swift_beginAccess();
  sub_1004FCB5C(v0 + 136, v6 + 112);
  swift_endAccess();
  v7 = *(v0 + 432);
  v8 = *(v0 + 376);
  v9 = *(v0 + 352);
  v10 = *(v0 + 328);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1004FC3B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1004FC3D8, 0, 0);
}

uint64_t sub_1004FC3D8()
{
  v1 = v0[2];
  v2 = v0[3];
  XPCWebPresentmentRequest.value.getter();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1004FC5C8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_1004FB120(v5);
}

uint64_t sub_1004FC6AC()
{
  v1 = v0[15];
  swift_beginAccess();
  sub_10000BBC4(v1 + 112, (v0 + 2), &qword_100846278, &unk_1006E6B60);
  if (v0[5])
  {
    sub_100020260((v0 + 2), (v0 + 7));
    sub_10000BE18((v0 + 2), &qword_100846278, &unk_1006E6B60);
    v2 = v0[10];
    v3 = v0[11];
    sub_10000BA08(v0 + 7, v2);
    (*(v3 + 8))(v2, v3);
    sub_10000BB78(v0 + 7);
  }

  else
  {
    sub_10000BE18((v0 + 2), &qword_100846278, &unk_1006E6B60);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004FC938(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F760C;

  return sub_1004FC68C();
}

uint64_t sub_1004FC9E0()
{
  sub_10000BE18(v0 + 112, &qword_100846278, &unk_1006E6B60);
  sub_10000BB78((v0 + 152));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004FCA54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004FCA9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1004FB908(a1, v4, v5, v7, v6);
}

uint64_t sub_1004FCB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100846278, &unk_1006E6B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FCBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[5] = type metadata accessor for WebPresentmentAnalyticsReporter();
  v3[6] = &protocol witness table for WebPresentmentAnalyticsReporter;
  v3[2] = a2;

  v5 = swift_task_alloc();
  v3[9] = v5;
  *v5 = v3;
  v5[1] = sub_1004FCC9C;

  return sub_100504E08();
}

uint64_t sub_1004FCC9C(char a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1004FCD9C, 0, 0);
}

uint64_t sub_1004FCD9C()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = (v1 & 1) == 0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v0 + 16;
  v5 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1004FCE9C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)(v6);
}

uint64_t sub_1004FCE9C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_1004FCFB4, 0, 0);
}

uint64_t sub_1004FCFB4()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004FD014()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004FD04C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_1004FC3B8(a1, v4);
}

uint64_t sub_1004FD0EC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004FD1B8(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1004F90E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004FD2B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1004FD2F8()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 14);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1004FD340()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 8);
  v1 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1004FD388()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1004FD3C8()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  v1 = v0[24];

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_1004FD420(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_100410DF8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1004FD4EC()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004FD52C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_1004FC938(v2, v3);
}

uint64_t sub_1004FD5E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004FC5C8(v2, v3, v4);
}

uint64_t sub_1004FD694()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004FAE08(v2, v3, v4);
}

uint64_t sub_1004FD760(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for WebPresentmentResponse();
  v2[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1004FD964, v1, 0);
}

uint64_t sub_1004FD964()
{
  v67 = v0;
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[15];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000012, 0x80000001007150D0, v66);
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[19] = v10;
  v11 = v0[3];
  if (v11[26])
  {
    v12 = v0[4];
    v13 = *(v0[9] + 104);
    v13(v0[10], enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v0[8]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1005014E4(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = v0[17];
    v60 = v0[16];
    v63 = v0[19];
    v55 = v0[15];
    v57 = v0[14];
    v15 = v0[7];
    v16 = v0[5];
    v65 = v0[6];
    v17 = v0[4];
    v13(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_allocError();
    v18 = *(v16 + 16);
    v18(v19, v15, v17);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v63(v14, v57);

    defaultLogger()();
    v64 = v18;
    v18(v65, v15, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[19];
    v24 = v0[14];
    v58 = v24;
    v61 = v0[16];
    v25 = v0[5];
    v26 = v0[6];
    v27 = v0[4];
    if (v22)
    {
      v54 = v0[19];
      v28 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_100141FE4(0xD000000000000012, 0x80000001007150D0, v66);
      *(v28 + 12) = 2080;
      v29 = Error.localizedDescription.getter();
      v31 = v30;
      v56 = *(v25 + 8);
      v56(v26, v27);
      v32 = sub_100141FE4(v29, v31, v66);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "WebPresentmentSessionProxy %s finished with error: %s", v28, 0x16u);
      swift_arrayDestroy();

      v54(v61, v58);
    }

    else
    {

      v56 = *(v25 + 8);
      v56(v26, v27);
      v23(v61, v58);
    }

    v45 = v0[17];
    v44 = v0[18];
    v46 = v0[16];
    v48 = v0[12];
    v47 = v0[13];
    v49 = v0[7];
    v59 = v0[10];
    v62 = v0[6];
    v50 = v0[4];
    swift_allocError();
    v64(v51, v49, v50);
    swift_willThrow();

    v56(v49, v50);

    v52 = v0[1];

    return v52();
  }

  else
  {
    v33 = v0[13];
    v34 = v0[2];
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
    v37 = sub_1005014E4(&qword_1008463C0, v36, type metadata accessor for WebPresentmentSessionProxy);
    v38 = swift_allocObject();
    v38[2] = v11;
    v38[3] = v37;
    v38[4] = v11;
    v38[5] = v34;
    swift_retain_n();
    v39 = v34;
    v40 = sub_100130958(0, 0, v33, &unk_1006E6CE0, v38);
    v0[20] = v40;
    v41 = v11[26];
    v11[26] = v40;

    v42 = sub_10000BA08(v11 + 37, v11[40]);
    v0[21] = v42;
    v43 = *v42;

    return _swift_task_switch(sub_1004FE0E0, v43, 0);
  }
}

uint64_t sub_1004FE0E0()
{
  sub_1005012A0(*(v0 + 160), **(v0 + 168), &qword_100846288, &unk_1006E6B80, &unk_100815538, &unk_1006E6CF0);

  v1 = async function pointer to Task.value.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v2 = v0;
  v2[1] = sub_1004FE1E0;
  v4 = *(v0 + 160);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  return Task.value.getter(v5, v4, v6, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_1004FE1E0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1004FE40C;
  }

  else
  {
    v6 = sub_1004FE30C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004FE30C()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[7];
  v13 = v0[6];
  v9 = objc_allocWithZone(type metadata accessor for XPCWebPresentmentResponse());
  v10 = XPCWebPresentmentResponse.init(value:)();

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1004FE40C()
{
  v49 = v0;
  v1 = v0[20];
  v2 = v0[9];

  v3 = v0[23];
  v4 = v0[17];
  v39 = v0[15];
  v42 = v0[16];
  v43 = v0[14];
  v45 = v0[19];
  v5 = v0[7];
  v6 = v0[5];
  v47 = v0[6];
  v7 = v0[4];
  (*(v2 + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005014E4(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  v8 = *(v6 + 16);
  v8(v9, v5, v7);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v45(v4, v43);

  defaultLogger()();
  v46 = v8;
  v8(v47, v5, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[14];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  if (v12)
  {
    v40 = v0[14];
    v19 = swift_slowAlloc();
    v37 = v13;
    v48[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100141FE4(0xD000000000000012, 0x80000001007150D0, v48);
    *(v19 + 12) = 2080;
    v36 = v14;
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v16, v18);
    v24 = v23;
    v25 = sub_100141FE4(v20, v22, v48);

    *(v19 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "WebPresentmentSessionProxy %s finished with error: %s", v19, 0x16u);
    swift_arrayDestroy();

    v37(v36, v40);
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v18);
    v24 = v26;
    v13(v14, v15);
  }

  v28 = v0[17];
  v27 = v0[18];
  v29 = v0[16];
  v30 = v0[13];
  v38 = v0[12];
  v41 = v0[10];
  v31 = v0[7];
  v44 = v0[6];
  v32 = v0[4];
  swift_allocError();
  v46(v33, v31, v32);
  swift_willThrow();

  v24(v31, v32);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1004FE8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1004FE8D8, a4, 0);
}

uint64_t sub_1004FE8D8()
{
  v1 = *(*(v0 + 24) + 256);
  *(v0 + 40) = v1;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v2 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 48) = v2;
  v3 = *(*(v2 - 8) + 72);
  *(v0 + 88) = *(*(v2 - 8) + 80);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = xmmword_1006BFF90;
  static DaemonSignposts.WebPresentment.firstPartyBypass.getter();
  static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_1004FEA10, v1, 0);
}

uint64_t sub_1004FEA10()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = (*(v0 + 88) + 32) & ~*(v0 + 88);
  sub_10051ACBC(*(v0 + 56));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_1004FEAC8, v3, 0);
}

uint64_t sub_1004FEAC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[25];
  sub_10000BA08(v1 + 21, v1[24]);
  v15 = v1[33];
  v14 = v1[34];
  v4 = v1[35];
  v5 = v1[36];
  v7 = sub_1005014E4(&qword_1008463C0, v6, type metadata accessor for WebPresentmentSessionProxy);
  v8 = swift_allocObject();
  v0[8] = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v2;
  v9 = _s13CoreIDVShared27ProcessVisibilityMonitoringPAAE014withForegroundC7Monitor10auditToken9isolation9operationqd__So0I8_token_ta_ScA_pSgYiqd__yYaYbKYActYaKs8SendableRd__lFTu[1];

  v10 = v2;
  v11 = swift_task_alloc();
  v0[9] = v11;
  type metadata accessor for WebPresentmentResponse();
  *v11 = v0;
  v11[1] = sub_1004FEC58;
  v12 = v0[2];

  return __s13CoreIDVShared27ProcessVisibilityMonitoringPAAE014withForegroundC7Monitor10auditToken9isolation9operationqd__So0I8_token_ta_ScA_pSgYiqd__yYaYbKYActYaKs8SendableRd__lF(v12, v15, v14, v4, v5, v1, v7, &unk_1006E6D18);
}

uint64_t sub_1004FEC58()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1004FEE24;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_1004FED80;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004FED80()
{
  v1 = *(v0 + 24);
  v2 = v1[26];
  v1[26] = 0;

  v3 = v1[19];
  v4 = v1[20];
  sub_10000BA08(v1 + 16, v3);
  (*(v4 + 16))(v3, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004FEE24()
{
  v1 = v0[8];
  v2 = v0[3];

  v3 = v2[26];
  v2[26] = 0;

  v4 = v2[19];
  v5 = v2[20];
  sub_10000BA08(v2 + 16, v4);
  (*(v5 + 16))(v4, v5);
  v6 = v0[1];
  v7 = v0[10];

  return v6();
}

uint64_t sub_1004FEED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for PartialWebPresentmentRequest();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004FEF94, 0, 0);
}

uint64_t sub_1004FEF94()
{
  v1 = v0[7];
  v2 = v0[4];
  XPCPartialWebPresentmentRequest.value.getter();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1004FF038;
  v4 = v0[7];
  v5 = v0[2];
  v6 = v0[3];

  return sub_1004FF494(v5, v4);
}

uint64_t sub_1004FF038()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_1004FF1E0, 0, 0);
  }

  else
  {
    v7 = v6[7];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1004FF1E0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1004FF3D0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_1004FD760(v5);
}

uint64_t sub_1004FF494(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for WebPresentmentResponse();
  v3[27] = v10;
  v11 = *(v10 - 8);
  v3[28] = v11;
  v12 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v13 = type metadata accessor for WebPresentmentRequestState();
  v3[31] = v13;
  v14 = *(v13 - 8);
  v3[32] = v14;
  v15 = *(v14 + 64) + 15;
  v3[33] = swift_task_alloc();
  v16 = *(*(sub_100007224(&qword_1008463A8, &qword_1006E6CB8) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v17 = sub_100007224(&qword_1008463B0, &qword_1006E6CC0);
  v3[35] = v17;
  v18 = *(v17 - 8);
  v3[36] = v18;
  v19 = *(v18 + 64) + 15;
  v3[37] = swift_task_alloc();
  v20 = sub_100007224(&qword_1008463B8, &unk_1006E6CC8);
  v3[38] = v20;
  v21 = *(v20 - 8);
  v3[39] = v21;
  v22 = *(v21 + 64) + 15;
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_1004FF780, v2, 0);
}

uint64_t sub_1004FF780()
{
  v1 = *(v0 + 160);
  sub_10000BA08((v1 + 216), *(v1 + 240));
  *(v0 + 120) = type metadata accessor for DeviceInformationProvider();
  *(v0 + 128) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 96));
  DeviceInformationProvider.init()();
  type metadata accessor for UserDefaultsConfiguration();
  static UserDefaultsConfiguration.standard.getter();
  *(v0 + 80) = type metadata accessor for WebPresentmentDeviceSupportProvider();
  *(v0 + 88) = &protocol witness table for WebPresentmentDeviceSupportProvider;
  sub_100032DBC((v0 + 56));
  WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)();
  sub_10045021C(v1 + 128, (v0 + 56), (v0 + 16));
  v2 = *(v0 + 320);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 152);
  sub_10000BB78((v0 + 56));
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_10000BA08((v0 + 16), v7);
  (*(v8 + 8))(v6, v7, v8);
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v10 = sub_1005014E4(&qword_1008463C0, v9, type metadata accessor for WebPresentmentSessionProxy);
  *(v0 + 328) = v10;
  *(v0 + 368) = enum case for WebPresentmentRequestState.listenerReady(_:);
  *(v0 + 372) = enum case for WebPresentmentRequestState.success(_:);
  v11 = *(v0 + 160);
  v12 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v13 = swift_task_alloc();
  *(v0 + 336) = v13;
  *v13 = v0;
  v13[1] = sub_1004FFA54;
  v14 = *(v0 + 320);
  v15 = *(v0 + 304);
  v16 = *(v0 + 272);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v16, v11, v10, v15, v0 + 136);
}

uint64_t sub_1004FFA54()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;

  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_100500474;
  }

  else
  {
    v5 = sub_1004FFB68;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004FFB68()
{
  v71 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);
    v6 = *(v0 + 168);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    (*(v5 + 104))(v4, enum case for DIPError.Code.unexpectedDaemonState(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005014E4(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BB78((v0 + 16));
    v7 = *(v0 + 320);
    v8 = *(v0 + 296);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);

    v15 = *(v0 + 8);
LABEL_3:

    return v15();
  }

  v17 = *(v0 + 368);
  v18 = *(v0 + 264);
  (*(v3 + 32))(v18, v1, v2);
  v19 = (*(v3 + 88))(v18, v2);
  if (v19 == v17)
  {
    v20 = *(v0 + 264);
    v21 = *(v0 + 160);
    (*(*(v0 + 256) + 96))(v20, *(v0 + 248));
    v22 = *v20;
    *(v0 + 344) = *v20;
    v23 = *(v21 + 120);
    v68 = (*(v21 + 112) + **(v21 + 112));
    v24 = *(*(v21 + 112) + 4);
    v25 = swift_task_alloc();
    *(v0 + 352) = v25;
    *v25 = v0;
    v25[1] = sub_100500284;

    return v68(v22);
  }

  else
  {
    if (v19 == *(v0 + 372))
    {
      v26 = *(v0 + 264);
      v27 = *(v0 + 240);
      v29 = *(v0 + 224);
      v28 = *(v0 + 232);
      v31 = *(v0 + 208);
      v30 = *(v0 + 216);
      (*(*(v0 + 256) + 96))(v26, *(v0 + 248));
      v69 = *(v29 + 32);
      v69(v27, v26, v30);
      defaultLogger()();
      (*(v29 + 16))(v28, v27, v30);
      v32 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      v33 = os_log_type_enabled(v32, v65);
      v34 = *(v0 + 312);
      v35 = *(v0 + 320);
      v36 = *(v0 + 304);
      v38 = *(v0 + 224);
      v37 = *(v0 + 232);
      v40 = *(v0 + 208);
      v39 = *(v0 + 216);
      v41 = *(v0 + 200);
      v66 = v39;
      v67 = *(v0 + 192);
      if (v33)
      {
        v64 = *(v0 + 208);
        v42 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v42 = 136315394;
        *(v42 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010071CBD0, v70);
        *(v42 + 12) = 2080;
        v62 = v34;
        v63 = v35;
        v43 = WebPresentmentResponse.responseData.getter();
        v45 = v44;
        v46 = Data.base64EncodedString(options:)(0);
        sub_10000B90C(v43, v45);
        (*(v38 + 8))(v37, v66);
        v47 = sub_100141FE4(v46._countAndFlagsBits, v46._object, v70);

        *(v42 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v32, v65, "WebPresentmentSessionProxy %s finished with value: %s", v42, 0x16u);
        swift_arrayDestroy();

        (*(v41 + 8))(v64, v67);
        (*(v62 + 8))(v63, v36);
      }

      else
      {

        (*(v38 + 8))(v37, v66);
        (*(v41 + 8))(v40, v67);
        (*(v34 + 8))(v35, v36);
      }

      v55 = *(v0 + 320);
      v56 = *(v0 + 296);
      v58 = *(v0 + 264);
      v57 = *(v0 + 272);
      v59 = *(v0 + 232);
      v60 = *(v0 + 208);
      v61 = *(v0 + 184);
      v69(*(v0 + 144), *(v0 + 240), *(v0 + 216));
      sub_10000BB78((v0 + 16));

      v15 = *(v0 + 8);
      goto LABEL_3;
    }

    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v48 = *(v0 + 328);
    v49 = *(v0 + 160);
    v50 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v51 = swift_task_alloc();
    *(v0 + 336) = v51;
    *v51 = v0;
    v51[1] = sub_1004FFA54;
    v52 = *(v0 + 320);
    v53 = *(v0 + 304);
    v54 = *(v0 + 272);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v54, v49, v48, v53, v0 + 136);
  }
}

uint64_t sub_100500284()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_10050055C;
  }

  else
  {
    v6 = sub_1005003B0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005003B0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 160);
  v3 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_1004FFA54;
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = *(v0 + 272);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v7, v2, v1, v6, v0 + 136);
}

uint64_t sub_100500474()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  v1 = v0[17];
  sub_10000BB78(v0 + 2);
  v2 = v0[40];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[26];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10050055C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  sub_10000BB78((v0 + 16));
  v4 = *(v0 + 360);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100500654()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100500714, v0, 0);
}

uint64_t sub_100500714()
{
  v14 = v0;
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEF29287473657571, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  if (*(v0[2] + 208))
  {
    type metadata accessor for WebPresentmentResponse();

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100500A50(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004822DC;

  return sub_100500654();
}

uint64_t sub_100500AF8()
{
  v1 = v0[15];

  sub_10000BB78(v0 + 16);
  sub_10000BB78(v0 + 21);
  v2 = v0[26];

  sub_10000BB78(v0 + 27);
  v3 = v0[32];

  sub_10000BB78(v0 + 37);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100500B84(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100041F04;

  return v7();
}

uint64_t sub_100500C6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100027B9C;

  return v8();
}

uint64_t sub_100500D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1003F1504(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1005018E4(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1005018E4(a3);

    return v23;
  }

LABEL_8:
  sub_1005018E4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100501010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_100007224(&qword_1008463C8, &qword_1006E6CF8);
  v23 = &off_100812330;
  *&v21 = a1;
  defaultLogger()();
  sub_100020260(&v21, v20);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_100020260(v20, v18);
    sub_100007224(&unk_100845310, &unk_1006E6D00);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000BB78(v20);
    v16 = sub_100141FE4(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "AnyTaskBox initing %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  else
  {

    sub_10000BB78(v20);
  }

  (*(v5 + 8))(v8, v4);
  sub_10001F358(&v21, a2 + 16);
  return a2;
}

uint64_t sub_1005012A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - v12;
  v28[3] = sub_100007224(a3, a4);
  v28[4] = &off_100812330;
  v28[0] = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100020260(Strong + 16, &v25);

    v15 = v26;
    v16 = v27;
    sub_10000BA08(&v25, v26);
    (*(v16 + 8))(v15, v16);
    sub_10000BB78(&v25);
  }

  else
  {
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_100020260(v28, &v25);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  sub_10001F358(&v25, (v19 + 5));

  v20 = sub_100130390(0, 0, v13, a6, v19);
  type metadata accessor for AnyTaskBox();
  v21 = swift_allocObject();
  v22 = sub_100501010(v20, v21);
  swift_beginAccess();
  v23 = *(v17 + 16);
  *(v17 + 16) = v22;

  swift_weakAssign();

  return sub_10000BB78(v28);
}

uint64_t sub_1005014E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100501530(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1004FE8B4(a1, v4, v5, v7, v6);
}

uint64_t sub_1005015F0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10050162C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10047C318(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1005016EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100501734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1004FEED0(a1, v4, v5, v7, v6);
}

uint64_t sub_1005017F4()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100501834()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_100500A50(v2, v3);
}

uint64_t sub_1005018E4(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10050194C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100501984(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003E87CC(a1, v5);
}

uint64_t sub_100501A3C()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100501A84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004FF3D0(v2, v3, v4);
}

uint64_t sub_100501B38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10000BB78(v0 + 5);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100501B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10047C318(a1, v4, v5, v6, (v1 + 5));
}

Swift::Int sub_100501C58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[10];
  v12 = v0[9];
  v13 = *(v0 + 88);
  v14 = v0[12];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  return Hasher._finalize()();
}

void sub_100501D4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = *(v0 + 88);
  v13 = v0[12];
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
}

Swift::Int sub_100501E20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[10];
  v12 = v0[9];
  v13 = *(v0 + 88);
  v14 = v0[12];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  return Hasher._finalize()();
}

BOOL sub_100501F10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_100502A60(v11, v13);
}

void sub_100501F7C()
{
  v1 = v0;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  swift_defaultActor_initialize();
  v10 = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v14[0] = "AccountsChanged:)";
  v14[1] = v10;
  static DispatchQoS.userInitiated.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10031AE4C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v0 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = objc_allocWithZone(IDSService);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithService:v12];

  if (v13)
  {
    *(v1 + 120) = v13;
  }

  else
  {
    __break(1u);
  }
}

char *sub_100502254()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 120);
  result = [v6 accounts];
  if (result)
  {
    v8 = result;
    sub_10001F8D4(0, &qword_100846590, IDSAccount_ptr);
    sub_10050330C();
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *(v9 + 16);
    }

    if (!v10)
    {
      (*(v2 + 104))(v5, enum case for DIPError.Code.invalidAppleAccount(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    result = [v6 devices];
    if (!result)
    {
      goto LABEL_24;
    }

    v11 = result;
    sub_10001F8D4(0, &qword_100846588, IDSDevice_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_9:
        v30 = _swiftEmptyArrayStorage;
        result = sub_100173574(0, v13 & ~(v13 >> 63), 0);
        if ((v13 & 0x8000000000000000) == 0)
        {
          v14 = 0;
          v15 = v30;
          do
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v16 = *(v12 + 8 * v14 + 32);
            }

            v17 = v16;
            sub_100502B6C(v16, v28);

            v30 = v15;
            v19 = v15[2];
            v18 = v15[3];
            if (v19 >= v18 >> 1)
            {
              sub_100173574((v18 > 1), v19 + 1, 1);
              v15 = v30;
            }

            ++v14;
            v15[2] = v19 + 1;
            v20 = &v15[13 * v19];
            v21 = v28[0];
            v22 = v28[2];
            *(v20 + 3) = v28[1];
            *(v20 + 4) = v22;
            *(v20 + 2) = v21;
            v23 = v28[3];
            v24 = v28[4];
            v25 = v28[5];
            v20[16] = v29;
            *(v20 + 6) = v24;
            *(v20 + 7) = v25;
            *(v20 + 5) = v23;
          }

          while (v13 != v14);

          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_21:
    v26 = sub_100697944(v15);

    return v26;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10050280C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AppleAccountDeviceMonitor.ServiceDelegate()
{
  result = qword_100846520;
  if (!qword_100846520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005028C4()
{
  sub_100502954();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100502954()
{
  if (!qword_100846530)
  {
    sub_10000B870(&unk_100846538, &unk_1006E6E10);
    sub_10000B870(&qword_100833B90, &qword_1006D95C0);
    v0 = type metadata accessor for AsyncThrowingStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_100846530);
    }
  }
}

unint64_t sub_1005029F0()
{
  result = qword_100846548;
  if (!qword_100846548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100846548);
  }

  return result;
}

BOOL sub_100502A60(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 16) == *(a2 + 16) && (*(a1 + 24) == *(a2 + 24) ? (v5 = *(a1 + 32) == *(a2 + 32)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) || (_stringCompareWithSmolCheck(_:_:expecting:)())) && (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 88) ^ *(a2 + 88)) & 1) == 0)
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  else
  {
    return 0;
  }
}

id sub_100502B6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 name];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 deviceType];
  result = [a1 productName];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  result = [a1 productVersion];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  v28 = v13;
  v29 = v11;
  v30 = v9;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  result = [a1 productBuildVersion];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = result;
  v18 = v8;
  v19 = v6;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  result = [a1 uniqueID];
  if (result)
  {
    v23 = result;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    LOBYTE(v23) = [a1 isHSATrusted];
    result = [a1 operatingSystemVersion];
    *a2 = v19;
    *(a2 + 8) = v18;
    *(a2 + 16) = v30;
    *(a2 + 24) = v29;
    *(a2 + 32) = v28;
    *(a2 + 40) = v27;
    *(a2 + 48) = v16;
    *(a2 + 56) = v20;
    *(a2 + 64) = v22;
    *(a2 + 72) = v24;
    *(a2 + 80) = v26;
    *(a2 + 88) = v23;
    *(a2 + 96) = v31;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_100502D30(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = [result accounts];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_10001F8D4(0, &qword_100846590, IDSAccount_ptr);
  sub_10050330C();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  if (!v10)
  {
    (*(v3 + 104))(v7, enum case for DIPError.Code.invalidAppleAccount(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError);
    v11 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v12[1] = v11;
    sub_100007224(&qword_100846578, &qword_1006E6F20);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  return result;
}

char *sub_100502FAC(void *a1)
{
  v3 = sub_100007224(&qword_100846578, &qword_1006E6F20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = sub_100007224(&qword_100846580, &unk_1006E6F28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  result = (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtCC8coreidvd25AppleAccountDeviceMonitorP33_82887AFD0E92FAFAEDB3A7101388C34115ServiceDelegate_continuation, v3);
  if (!a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [a1 devices];
  if (result)
  {
    v14 = result;
    sub_10001F8D4(0, &qword_100846588, IDSDevice_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (v16)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_5:
        v34 = _swiftEmptyArrayStorage;
        result = sub_100173574(0, v16 & ~(v16 >> 63), 0);
        if ((v16 & 0x8000000000000000) == 0)
        {
          v30 = v12;
          v31 = v9;
          v32 = v8;
          v33 = v3;
          v17 = 0;
          v18 = v34;
          do
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v19 = *(v15 + 8 * v17 + 32);
            }

            v20 = v19;
            sub_100502B6C(v19, v35);

            v34 = v18;
            v22 = v18[2];
            v21 = v18[3];
            if (v22 >= v21 >> 1)
            {
              sub_100173574((v21 > 1), v22 + 1, 1);
              v18 = v34;
            }

            ++v17;
            v18[2] = v22 + 1;
            v23 = &v18[13 * v22];
            v24 = v35[0];
            v25 = v35[2];
            *(v23 + 3) = v35[1];
            *(v23 + 4) = v25;
            *(v23 + 2) = v24;
            v26 = v35[3];
            v27 = v35[4];
            v28 = v35[5];
            v23[16] = v36;
            *(v23 + 6) = v27;
            *(v23 + 7) = v28;
            *(v23 + 5) = v26;
          }

          while (v16 != v17);

          v8 = v32;
          v3 = v33;
          v12 = v30;
          v9 = v31;
          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_16:
    v29 = sub_100697944(v18);

    v34 = v29;
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_10050330C()
{
  result = qword_100846598;
  if (!qword_100846598)
  {
    sub_10001F8D4(255, &qword_100846590, IDSAccount_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100846598);
  }

  return result;
}

uint64_t sub_1005033EC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100503508;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4E8, &unk_1006DAB30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10017AD7C;
  v0[13] = &unk_1008157C0;
  v0[14] = v2;
  [v1 globalAuthACLWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100503508()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10017808C;
  }

  else
  {
    v3 = sub_100503618;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100503634()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005036F0, 0, 0);
}

uint64_t sub_1005036F0()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.featureNotSupported(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100503848()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100503904, 0, 0);
}

uint64_t sub_100503904()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.featureNotSupported(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100503A7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100503AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007224(&qword_100846668, &unk_1006E7020);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - v5);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, &v19);
    _os_log_impl(&_mh_execute_header, v12, v13, "BluetoothManager %s", v15, 0xCu);
    sub_10000BB78(v16);
  }

  (*(v8 + 8))(v11, v7);
  *v6 = 1;
  (*(v3 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v2);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_100503D50(uint64_t a1)
{
  v23 = a1;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v25 = &v22 - v4;
  v5 = sub_100007224(&qword_100846670, &qword_1006E7030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(CBController) init];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = *(v6 + 16);
  v24(v9, a1, v5);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v22 = *(v6 + 32);
  v22(v13 + ((v12 + 24) & ~v12), v9, v5);
  aBlock[4] = sub_1005061BC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1008158D0;
  v14 = _Block_copy(aBlock);

  [v10 setBluetoothStateChangedHandler:v14];
  _Block_release(v14);
  v15 = type metadata accessor for TaskPriority();
  v16 = v25;
  (*(*(v15 - 8) + 56))(v25, 1, 1, v15);
  v24(v9, v23, v5);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v10;
  v22(v17 + ((v12 + 40) & ~v12), v9, v5);
  v18 = v10;
  v19 = sub_1003E653C(0, 0, v16, &unk_1006E7040, v17);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t sub_1005040B8()
{
  v0 = sub_100007224(&qword_100846678, &unk_1006E7048);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v34 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    defaultLogger()();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v38 = v17;
    v18 = os_log_type_enabled(v16, v17);
    v19 = &selRef_setSupportedEncoding_;
    if (v18)
    {
      v20 = swift_slowAlloc();
      v36 = v5;
      v21 = v20;
      v35 = swift_slowAlloc();
      v40 = v35;
      *v21 = 136315394;
      *(v21 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, &v40);
      *(v21 + 12) = 2080;
      v39 = [v15 bluetoothState];
      type metadata accessor for CBManagerState(0);
      v22 = String.init<A>(describing:)();
      v24 = sub_100141FE4(v22, v23, &v40);
      v37 = v15;
      v25 = v6;
      v26 = v1;
      v27 = v0;
      v28 = v24;
      v19 = &selRef_setSupportedEncoding_;

      *(v21 + 14) = v28;
      v0 = v27;
      v1 = v26;
      _os_log_impl(&_mh_execute_header, v16, v38, "BluetoothManager %s: bluetoothState is %s", v21, 0x16u);
      swift_arrayDestroy();

      (*(v25 + 8))(v12, v36);
      v15 = v37;
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    LOBYTE(v40) = [v15 v19[428]] == 5;
    sub_100007224(&qword_100846670, &qword_1006E7030);
    AsyncStream.Continuation.yield(_:)();

    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, &v40);
      _os_log_impl(&_mh_execute_header, v29, v30, "BluetoothManager %s: Lost controller within bluetoothStateChangedHandler", v31, 0xCu);
      sub_10000BB78(v32);
    }

    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_100504544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = type metadata accessor for Logger();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = sub_100007224(&qword_100846678, &unk_1006E7048);
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v11 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10050466C, 0, 0);
}

uint64_t sub_10050466C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_100504780;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100815948;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100504780()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_100504978;
  }

  else
  {
    v3 = sub_100504890;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100504890()
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v2 = *(v0 + 200);
    v1 = *(v0 + 208);
    v3 = *(v0 + 192);
    v4 = *(v0 + 160);
    *(v0 + 225) = [*(v0 + 152) bluetoothState] == 5;
    sub_100007224(&qword_100846670, &qword_1006E7030);
    AsyncStream.Continuation.yield(_:)();
    (*(v2 + 8))(v1, v3);
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 184);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100504978()
{
  v26 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  swift_willThrow();
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, v25);
    *(v9 + 12) = 2080;
    *(v0 + 144) = v5;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100141FE4(v10, v11, v25);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "BluetoothManager %s: controller activation threw error %s, assuming not available", v9, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    v15 = *(v0 + 168);

    (*(v14 + 8))(v13, v15);
  }

  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 192);
  v19 = *(v0 + 200);
  v20 = *(v0 + 160);
  *(v0 + 224) = 0;
  sub_100007224(&qword_100846670, &qword_1006E7030);
  AsyncStream.Continuation.yield(_:)();

  (*(v19 + 8))(v17, v18);
  v21 = *(v0 + 208);
  v22 = *(v0 + 184);

  v23 = *(v0 + 8);

  return v23();
}

id sub_100504C00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "BluetoothManager %s: stream observer terminated, invalidating controller", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v5 + 8))(v8, v4);
  Task.cancel()();
  return [a3 invalidate];
}

uint64_t sub_100504E08()
{
  v1 = type metadata accessor for Logger();
  v0[18] = v1;
  v2 = *(v1 - 8);
  v0[19] = v2;
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();

  return _swift_task_switch(sub_100504EDC, 0, 0);
}

uint64_t sub_100504EDC()
{
  v15 = v0;
  v1 = v0[22];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  v6 = v0[18];
  v7 = v0[19];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "BluetoothManager %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[23] = v10;
  v11 = [objc_allocWithZone(CBController) init];
  v0[24] = v11;
  v0[2] = v0;
  v0[3] = sub_10050510C;
  v12 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100815808;
  v0[14] = v12;
  [v11 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10050510C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1005053FC;
  }

  else
  {
    v3 = sub_10050521C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10050521C()
{
  v20 = v0;
  v1 = [*(v0 + 192) bluetoothState];
  v2 = *(v0 + 168);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v19);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v1 == 5;
    _os_log_impl(&_mh_execute_header, v3, v4, "BluetoothManager %s Bluetooth on: %{BOOL}d", v10, 0x12u);
    sub_10000BB78(v11);
  }

  v6(v7, v8);
  v12 = v1 == 5;
  v13 = *(v0 + 192);
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  [v13 invalidate];

  v17 = *(v0 + 8);

  return v17(v12);
}

uint64_t sub_1005053FC()
{
  v29 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  swift_willThrow();
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to determine bluetooth state - assuming not available: %@", v7, 0xCu);
    sub_1004385F4(v8);
  }

  else
  {
    v10 = *(v0 + 200);
  }

  v11 = *(v0 + 152) + 8;
  (*(v0 + 184))(*(v0 + 160), *(v0 + 144));
  v12 = *(v0 + 168);
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 184);
  v17 = *(v0 + 168);
  v18 = *(v0 + 144);
  v19 = *(v0 + 152);
  if (v15)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v28);
    *(v20 + 12) = 1024;
    *(v20 + 14) = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "BluetoothManager %s Bluetooth on: %{BOOL}d", v20, 0x12u);
    sub_10000BB78(v21);
  }

  v16(v17, v18);
  v22 = *(v0 + 192);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  v25 = *(v0 + 160);
  [v22 invalidate];

  v26 = *(v0 + 8);

  return v26(0);
}

uint64_t sub_1005056DC()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[35] = v1;
  v2 = *(v1 - 8);
  v0[36] = v2;
  v3 = *(v2 + 64) + 15;
  v0[37] = swift_task_alloc();

  return _swift_task_switch(sub_100505798, 0, 0);
}

uint64_t sub_100505798()
{
  v1 = [objc_allocWithZone(CBController) init];
  v0[38] = v1;
  v0[2] = v0;
  v0[3] = sub_1005058CC;
  v2 = swift_continuation_init();
  v3 = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[39] = v3;
  v0[25] = v3;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100429100;
  v0[21] = &unk_100815830;
  v0[22] = v2;
  [v1 activateWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005058CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_100505C64;
  }

  else
  {
    v3 = sub_1005059DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005059DC()
{
  v1 = v0[38];
  v2 = v0[39];
  v0[10] = v0;
  v0[11] = sub_100505AD8;
  v3 = swift_continuation_init();
  v0[33] = v2;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100429100;
  v0[29] = &unk_100815858;
  v0[30] = v3;
  [v1 setPowerState:5 completion:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100505AD8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_100505E8C;
  }

  else
  {
    v3 = sub_100505BE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100505BE8()
{
  v1 = *(v0 + 304);
  [v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100505C64()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  swift_willThrow();
  _StringGuts.grow(_:)(63);
  v6._object = 0x800000010071CE70;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x2928656C62616E65;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v8._object = 0x800000010071CE90;
  String.append(_:)(v8);
  v0[34] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  (*(v5 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  [v3 invalidate];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100505E8C()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  swift_willThrow();
  _StringGuts.grow(_:)(63);
  v6._object = 0x800000010071CE70;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x2928656C62616E65;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v8._object = 0x800000010071CE90;
  String.append(_:)(v8);
  v0[34] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  (*(v5 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  [v3 invalidate];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005060B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005060EC()
{
  v1 = sub_100007224(&qword_100846670, &qword_1006E7030);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1005061BC()
{
  v1 = *(*(sub_100007224(&qword_100846670, &qword_1006E7030) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1005040B8();
}

uint64_t sub_10050622C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100506244()
{
  v1 = sub_100007224(&qword_100846670, &qword_1006E7030);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10050631C(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_100846670, &qword_1006E7030) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_100504544(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100506420()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100506480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}