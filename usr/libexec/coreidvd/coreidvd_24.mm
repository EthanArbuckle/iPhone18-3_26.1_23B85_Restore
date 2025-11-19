uint64_t sub_1002645DC()
{
  v1 = v0[185];
  v2 = v0[183];
  v3 = v0[182];
  v4 = v0[181];
  v5 = v0[150];
  v6 = v0[149];
  v7 = v0[147];
  v8 = v0[144];
  v9 = v0[136];
  v10 = v0[135];
  v27 = v0[134];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  sub_10000B90C(v6, v5);
  sub_10000B90C(v6, v5);
  v7(v8, v10);
  sub_100267A1C(v27, type metadata accessor for PendingActionContext);
  v11 = v0[146];
  v12 = v0[145];
  v13 = v0[144];
  v14 = v0[143];
  v15 = v0[142];
  v16 = v0[141];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];
  v20 = v0[137];
  v23 = v0[134];
  v24 = v0[133];
  v25 = v0[129];
  v26 = v0[128];
  v28 = v0[125];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002647C8()
{
  v1 = v0[163];
  v2 = v0[162];
  v3 = v0[137];
  swift_willThrow();

  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[163];
  v8 = v0[147];
  v9 = v0[137];
  v10 = v0[136];
  v11 = v0[135];
  if (v6)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "PII Token doesnt exist. Attempting to store new.", v12, 2u);
  }

  v8(v9, v11);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v13 + 54);
  sub_100031B5C(&v13[4], (v0 + 51));
  os_unfair_lock_unlock(v13 + 54);
  v14 = v0[122];
  v15 = v0[121];
  v16 = v0[120];
  v17 = v0[58];
  v0[164] = v17;

  sub_100031918((v0 + 51));
  v18 = swift_allocObject();
  v0[165] = v18;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v16;
  v19 = *(v17 + 16);
  v20 = swift_allocObject();
  v0[166] = v20;
  *(v20 + 16) = sub_10026CBC0;
  *(v20 + 24) = v18;
  v21 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v22 = swift_task_alloc();
  v0[167] = v22;
  v23 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v22 = v0;
  v22[1] = sub_100261EA0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 112, sub_10026CC04, v20, v23);
}

uint64_t sub_100264A7C()
{
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[172];
  v4 = v0[171];
  v5 = v0[156];
  v6 = v0[154];
  v7 = v0[152];
  swift_willThrow();

  v8 = v0[174];
  v19 = v0[160];
  v20 = v0[161];
  v18 = v0[159];
  v21 = v0[150];
  v9 = v0[149];
  v23 = v0[146];
  v24 = v0[145];
  v25 = v0[144];
  v26 = v0[143];
  v27 = v0[142];
  v28 = v0[141];
  v29 = v0[140];
  v30 = v0[139];
  v31 = v0[138];
  v32 = v0[137];
  v22 = v0[134];
  v33 = v0[133];
  v34 = v0[129];
  v35 = v0[128];
  v10 = v0[125];
  v11 = v0[124];
  v12 = v0[123];
  _StringGuts.grow(_:)(29);
  v0[114] = 0;
  v0[115] = 0xE000000000000000;
  v13._object = 0x8000000100707AF0;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v13);
  v0[116] = v8;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v14 = v0[114];
  v15 = v0[115];
  (*(v11 + 104))(v10, enum case for DIPError.Code.failedToStorePIIToken(_:), v12);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000BD94(v18, v19);

  sub_10000B90C(v9, v21);

  sub_10000B90C(v9, v21);
  sub_100267A1C(v22, type metadata accessor for PendingActionContext);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100264E00()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1416);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  swift_willThrow();

  v5 = *(v0 + 1424);
  v6 = *(v0 + 1104);
  defaultLogger()();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1288);
  v11 = *(v0 + 1280);
  v12 = *(v0 + 1272);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update PII Token: %@", v13, 0xCu);
    sub_10000BE18(v14, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BD94(v12, v11);
  }

  else
  {
    sub_10000BD94(*(v0 + 1272), *(v0 + 1280));
  }

  v16 = *(v0 + 1088) + 8;
  (*(v0 + 1176))(*(v0 + 1104), *(v0 + 1080));
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v17 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v17 + 54);
  sub_100031B5C(&v17[4], v0 + 208);
  os_unfair_lock_unlock(v17 + 54);
  v40 = *(v0 + 1240);
  v41 = *(v0 + 1248);
  v35 = *(v0 + 1216);
  v36 = *(v0 + 1224);
  v34 = *(v0 + 1208);
  v38 = *(v0 + 1200);
  v39 = *(v0 + 1232);
  v18 = *(v0 + 1192);
  v37 = *(v0 + 1184);
  v19 = *(v0 + 1072);
  v20 = *(v0 + 1064);
  v21 = *(v0 + 1056);
  v22 = *(v0 + 1048);
  v23 = *(v0 + 976);
  v24 = *(v0 + 968);
  v25 = *(v0 + 960);
  v26 = *(v0 + 264);
  *(v0 + 1448) = v26;

  sub_100031918(v0 + 208);
  sub_100269FE8(v19, v20, type metadata accessor for PendingActionContext);
  v27 = (*(v22 + 80) + 112) & ~*(v22 + 80);
  v28 = swift_allocObject();
  *(v0 + 1456) = v28;
  v28[2] = v24;
  v28[3] = v23;
  v28[4] = v25;
  v28[5] = v34;
  v28[6] = v35;
  v28[7] = v36;
  v28[8] = v39;
  v28[9] = v40;
  v28[10] = v41;
  v28[11] = v18;
  v28[12] = v38;
  v28[13] = v37;
  sub_100269F80(v20, v28 + v27, type metadata accessor for PendingActionContext);
  sub_10000B8B8(v18, v38);
  v29 = *(v26 + 16);
  v30 = swift_allocObject();
  *(v0 + 1464) = v30;
  *(v30 + 16) = sub_10026C154;
  *(v30 + 24) = v28;
  v31 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v32 = swift_task_alloc();
  *(v0 + 1472) = v32;
  *v32 = v0;
  v32[1] = sub_100264330;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_100265210@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v62 = a6;
  v60 = a5;
  v55 = a4;
  v72 = a3;
  v73 = a7;
  v9 = type metadata accessor for DIPError.Code();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  __chkstk_darwin(v9);
  v67 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError();
  v70 = *(v12 - 8);
  v71 = v12;
  v13 = *(v70 + 64);
  __chkstk_darwin(v12);
  v69 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPError.PropertyKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v56 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v64 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v53 - v24;
  defaultLogger()();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v74 = v20;
  v63 = v15;
  v59 = v16;
  v57 = a2;
  v54 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *&v76 = swift_slowAlloc();
    *v29 = 136446466;
    *(v29 + 4) = sub_100141FE4(a1, a2, &v76);
    *(v29 + 12) = 2082;
    v30 = IdentityTarget.debugDescription.getter();
    v32 = sub_100141FE4(v30, v31, &v76);

    *(v29 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "fetchAndUpdateProofingSession called for proofingSessionID: %{public}s and target: %{public}s", v29, 0x16u);
    swift_arrayDestroy();

    v61 = *(v74 + 8);
  }

  else
  {

    v61 = *(v20 + 8);
  }

  v61(v25, v19);
  v68 = v19;
  v33 = swift_allocObject();
  type metadata accessor for IdentityProofingDataContext();
  *(v33 + 16) = 0;
  v58 = v33 + 16;
  *(v33 + 24) = 0;
  swift_allocObject();
  sub_10057E28C();
  v35 = v34;
  v36 = swift_allocObject();
  v36[1] = xmmword_1006D1BF0;
  v36[2] = 0u;
  v36[3] = 0u;
  v36[4] = 0u;
  v36[5] = 0u;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v39 = v55;
  v40 = *v55;
  v82 = v55[1];
  v83 = v40;
  v81 = v55[2];
  v41 = swift_allocObject();
  v42 = v39[1];
  *(v41 + 72) = *v39;
  v43 = v54;
  *(v41 + 16) = v35;
  *(v41 + 24) = v43;
  v44 = v72;
  *(v41 + 32) = v57;
  *(v41 + 40) = v44;
  *(v41 + 48) = v33;
  *(v41 + 56) = v38;
  *(v41 + 64) = v37;
  *(v41 + 88) = v42;
  *(v41 + 104) = v39[2];
  *(v41 + 120) = v36;

  sub_10004D7A0(&v83, &v76);
  sub_10004D7A0(&v82, &v76);
  sub_10004D7A0(&v81, &v76);

  sub_10057C18C(sub_10026C504, v41);

  swift_beginAccess();
  v46 = v36[4];
  v78 = v36[3];
  v79 = v46;
  v80 = v36[5];
  v47 = v36[2];
  v76 = v36[1];
  v77 = v47;
  sub_10000BBC4(&v76, &v75, &qword_10083E3F8, &unk_1006DBD40);

  v49 = v77;
  v50 = v78;
  v51 = v79;
  v52 = v80;
  v45 = v73;
  *v73 = v76;
  v45[1] = v49;
  v45[2] = v50;
  v45[3] = v51;
  v45[4] = v52;
  return result;
}

unint64_t sub_100265C7C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8860, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100265CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 384) = a5;
  *(v5 + 232) = a3;
  *(v5 + 240) = a4;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  v6 = type metadata accessor for IdentityProofingDisplayMessage();
  *(v5 + 248) = v6;
  v7 = *(v6 - 8);
  *(v5 + 256) = v7;
  *(v5 + 264) = *(v7 + 64);
  *(v5 + 272) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v5 + 280) = v8;
  v9 = *(v8 - 8);
  *(v5 + 288) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_100265E24, 0, 0);
}

uint64_t sub_100265E24()
{
  v64 = v0;
  v1 = *(v0 + 240);
  v2 = IdentityTarget.rawValue.getter();
  if (v2 == IdentityTarget.rawValue.getter())
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 232);
    defaultLogger()();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 328);
    v9 = *(v0 + 280);
    v10 = *(v0 + 288);
    if (v7)
    {
      v12 = *(v0 + 224);
      v11 = *(v0 + 232);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v63 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100141FE4(v12, v11, &v63);
      _os_log_impl(&_mh_execute_header, v5, v6, "PendingActionsFlow saving proofing error message to associated session: %s", v13, 0xCu);
      sub_10000BB78(v14);
    }

    v15 = *(v10 + 8);
    v15(v8, v9);
    *(v0 + 336) = v15;
    v16 = *(v0 + 216);
    v17 = IdentityProofingDisplayMessage.messages.getter();
    if (v17[2])
    {
      v19 = v17[4];
      v18 = v17[5];

      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v20 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v20 + 54);
      sub_100031B5C(&v20[4], v0 + 16);
      os_unfair_lock_unlock(v20 + 54);
      v46 = *(v0 + 264);
      v45 = *(v0 + 272);
      v47 = *(v0 + 248);
      v48 = *(v0 + 256);
      v62 = *(v0 + 384);
      v49 = *(v0 + 232);
      v59 = *(v0 + 224);
      v60 = *(v0 + 240);
      v61 = v19;
      v50 = *(v0 + 216);
      v51 = *(v0 + 72);
      *(v0 + 344) = v51;

      sub_100031918(v0 + 16);
      (*(v48 + 16))(v45, v50, v47);
      v52 = (*(v48 + 80) + 40) & ~*(v48 + 80);
      v53 = swift_allocObject();
      *(v0 + 352) = v53;
      *(v53 + 2) = v59;
      *(v53 + 3) = v49;
      *(v53 + 4) = v60;
      (*(v48 + 32))(&v53[v52], v45, v47);
      v54 = &v53[(v46 + v52 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v54 = v61;
      *(v54 + 1) = v18;
      v54[16] = v62;
      v55 = *(v51 + 16);
      v56 = swift_allocObject();
      *(v0 + 360) = v56;
      *(v56 + 16) = sub_1002676D8;
      *(v56 + 24) = v53;
      v57 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

      v58 = swift_task_alloc();
      *(v0 + 368) = v58;
      *v58 = v0;
      v58[1] = sub_100266380;

      return AsyncCoreDataContainer.performWrite<A>(_:)(v58, sub_10017F710, v56, &type metadata for () + 8);
    }

    v29 = *(v0 + 304);

    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 304);
    v34 = *(v0 + 280);
    v35 = *(v0 + 288);
    if (v32)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "PendingActionsFlow displayMessage message is empty; skipping storing displayMessage", v36, 2u);
    }

    v15(v33, v34);
  }

  else
  {
    v21 = *(v0 + 296);
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 288);
    v25 = *(v0 + 296);
    v27 = *(v0 + 280);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "PendingActionsFlow not saving error message for phone target", v28, 2u);
    }

    (*(v26 + 8))(v25, v27);
  }

  v38 = *(v0 + 320);
  v37 = *(v0 + 328);
  v40 = *(v0 + 304);
  v39 = *(v0 + 312);
  v41 = *(v0 + 296);
  v42 = *(v0 + 272);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100266380()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_100266688;
  }

  else
  {
    v6 = v2[44];
    v5 = v2[45];
    v7 = v2[43];

    v4 = sub_1002664B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002664B0()
{
  v24 = v0;
  v1 = v0[40];
  v2 = v0[29];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[42];
  v7 = v0[40];
  v8 = v0[35];
  v9 = v0[36];
  if (v5)
  {
    v22 = v0[42];
    v11 = v0[28];
    v10 = v0[29];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100141FE4(v11, v10, &v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "PendingActionsFlow saved proofing error message to associated session: %s", v12, 0xCu);
    sub_10000BB78(v13);

    v22(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v15 = v0[40];
  v14 = v0[41];
  v17 = v0[38];
  v16 = v0[39];
  v18 = v0[37];
  v19 = v0[34];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100266688()
{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[39];
  v7 = v0[35];
  v8 = v0[36];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v5(v6, v7);
  v10 = v0[40];
  v9 = v0[41];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[37];
  v14 = v0[34];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002667A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100266848, 0, 0);
}

uint64_t sub_100266848()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[9];
  v0[34] = v5;

  sub_100031918((v0 + 2));
  v6 = swift_allocObject();
  v0[35] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[36] = v8;
  *(v8 + 16) = sub_100267800;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[37] = v10;
  v11 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v10 = v0;
  v10[1] = sub_100266A24;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 27, sub_100267820, v8, v11);
}

uint64_t sub_100266A24()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_100266B64;
  }

  else
  {
    v5 = v2[35];
    v6 = v2[36];
    v7 = v2[34];

    v2[39] = v2[27];
    v4 = sub_100266BEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100266B64()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];

  v5 = v0[1];
  v6 = v0[38];

  return v5();
}

uint64_t sub_100266BEC()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v2;
  v6[6] = v4;

  sub_1003E653C(0, 0, v3, &unk_1006DBCF0, v6);

  v7 = type metadata accessor for IdentityManagementSessionDelegate();
  v8 = [objc_opt_self() defaultCenter];
  v9 = String._bridgeToObjectiveC()();
  v0[28] = v7;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v8 postNotificationName:v9 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100266DA8(int a1, uint64_t a2)
{
  v52 = a2;
  v50 = a1;
  v2 = type metadata accessor for Logger();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityProofingPendingActionsWebService();
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v55 = sub_1002257FC();
  v8 = [objc_allocWithZone(PKPaymentService) init];
  v58 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v59 = &off_10080C410;
  *&v57 = v8;
  v9 = sub_1002255A0();
  v10 = sub_1002257FC();
  type metadata accessor for IdentityProofingExpirationActionProvider();
  v11 = swift_allocObject();
  sub_10001F358(&v57, v11 + 16);
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  v12 = sub_1002255A0();
  v13 = sub_100224C64();
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v14 = qword_1008823E0;
  type metadata accessor for IdentityWatchProvisioningManagerFactory();
  v49 = swift_allocObject();
  v15 = qword_100832C40;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_100882300;
  v58 = v6;
  v59 = &off_10080B7E8;
  *&v57 = v7;
  v18 = type metadata accessor for IdentityProofingPendingActionsFlow();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = sub_10001F370(&v57, v6);
  v51 = &v49;
  v23 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v56[3] = v6;
  v56[4] = &off_10080B7E8;
  v56[0] = v27;
  *(v21 + 16) = 0;
  v28 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  v29 = type metadata accessor for WorkflowRecommendationResponse();
  (*(*(v29 - 8) + 56))(v21 + v28, 1, 1, v29);
  v30 = v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_paymentService;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0;
  v31 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider) = 0;
  v32 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_staticWorkflow;
  v33 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v33 - 8) + 56))(v21 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener) = 0;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig) = 0;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpIQSettings) = 0;
  swift_beginAccess();
  sub_100267578(v60, v30, &unk_100833B60, &qword_1006BF9E0);
  swift_endAccess();
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger) = v50;
  sub_100020260(v56, v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService);
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_userNotificationProvider) = v55;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_expirationActionProvider) = v11;
  *(v21 + v31) = v52;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_cleanupProvider) = v12;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_biomeManager) = v13;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_deviceInfo) = v16;
  if (qword_1008824A8)
  {
    v35 = *(qword_1008824A8 + 152);
    v36 = v35;
  }

  else
  {
    v35 = 0;
  }

  *(v21 + v34) = v35;
  v37 = qword_100832C18;
  v38 = v16;

  if (v37 != -1)
  {
    swift_once();
  }

  v39 = qword_100882220;
  v40 = type metadata accessor for IdentityBiometricStoreHelper();
  type metadata accessor for IdentityProofingCredentialProvider();
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = v39;
  v41[6] = v40;
  v41[7] = &off_10080A0A8;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_credentialProvider) = v41;
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_identityWatchProvisioningManagerFactory) = v49;

  *(v21 + 24) = sub_10003D358(_swiftEmptyArrayStorage);
  *(v21 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository) = v17;

  defaultLogger()();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = *(v21 + v34);
    *(v44 + 4) = v46;
    *v45 = v46;
    v47 = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "IdentityProofingPendingActionsFlow: watchListener = %@", v44, 0xCu);
    sub_10000BE18(v45, &unk_100833B50, &unk_1006D8FB0);
  }

  (*(v53 + 8))(v5, v54);
  sub_10000BE18(v60, &unk_100833B60, &qword_1006BF9E0);
  sub_10000BB78(v56);
  sub_10000BB78(&v57);
  return v21;
}

unint64_t sub_100267450(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FB880, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026749C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002674F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100267578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007224(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1002675FC()
{
  v1 = type metadata accessor for IdentityProofingDisplayMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

void sub_1002676D8(uint64_t a1)
{
  v3 = *(type metadata accessor for IdentityProofingDisplayMessage() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_100254670(a1, v1[2], v1[3], v1[4], v1 + v4, *v5, *(v5 + 1), v5[16]);
}

uint64_t sub_100267790()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002677C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10026783C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100267884(uint64_t a1)
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

  return sub_100226AF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10026794C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1002679A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002679D4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100267A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100267AE4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100267B2C(uint64_t a1)
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

  return sub_100253B34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100267C24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100267C5C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_10057E3E4(*(v0 + 16));
}

uint64_t sub_100267C68()
{
  v1 = type metadata accessor for ActionRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = (v0 + v3 + *(v1 + 20));
  v10 = type metadata accessor for PendingActionContext(0);
  if ((*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    goto LABEL_895;
  }

  v11 = v9[1];

  v12 = v9[3];

  v13 = v9[5];

  v14 = v9[7];

  v15 = v9[9];

  v16 = v9[12];

  v17 = v9[13];

  v18 = v9[15];
  if (v18 == 1)
  {
    goto LABEL_5;
  }

  if (v18 != 2)
  {

    v19 = v9[17];

LABEL_5:
    if (v9[19] != 1)
    {

      v20 = v9[21];
    }

    if (v9[23] != 1)
    {

      v21 = v9[25];
    }
  }

  if (v9[27] != 1)
  {

    v22 = v9[29];
  }

  v23 = v9[31];

  v24 = v9[33];

  if (v9[35] != 1)
  {

    v25 = v9[37];
  }

  v26 = v9[39];

  v27 = v9 + v10[18];
  v28 = type metadata accessor for WorkflowRecommendationResponse();
  if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    v128 = v9;
    v129 = v10;
    v130 = v0 + v3;
    v29 = v0;
    v30 = v4;
    v31 = v1;
    v32 = (v2 + 48) & ~v2;
    v33 = v2;
    v34 = *(v27 + 1);

    v35 = *(v27 + 3);

    v36 = *(v27 + 5);

    v37 = *(v27 + 7);

    v38 = *(v27 + 9);

    v39 = *(v27 + 11);

    v40 = *(v27 + 14);

    v41 = *(v27 + 16);

    v42 = *(v27 + 17);

    v43 = *(v27 + 19);

    v44 = *(v27 + 20);

    v45 = *(v27 + 22);

    v46 = type metadata accessor for Workflow();
    v47 = v46[18];
    v48 = type metadata accessor for HardwareAttestationType();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(&v27[v47], 1, v48))
    {
      (*(v49 + 8))(&v27[v47], v48);
    }

    v50 = *&v27[v46[19]];

    v51 = *&v27[v46[20]];

    v52 = *&v27[v46[21] + 8];

    v53 = *&v27[v46[23]];

    v54 = *&v27[v46[24]];

    v55 = *&v27[v46[25]];

    v56 = *&v27[v46[28]];

    v57 = *&v27[v46[29]];

    v58 = *&v27[v46[30]];

    v59 = &v27[v46[39]];
    v2 = v33;
    v3 = v32;
    v1 = v31;
    v4 = v30;
    v0 = v29;
    v10 = v129;
    v7 = v130;
    v60 = v46;
    if (*(v59 + 1) != 1)
    {

      if (*(v59 + 124) != 1)
      {
        if (*(v59 + 2) != 1)
        {
        }

        if (*(v59 + 6) != 1)
        {
        }

        if (*(v59 + 10) != 1)
        {
        }

        if (*(v59 + 14) != 1)
        {
        }

        if (*(v59 + 18) != 1)
        {
        }

        if (*(v59 + 22) != 1)
        {
        }

        if (*(v59 + 26) != 1)
        {
        }

        if (*(v59 + 30) != 1)
        {
        }

        if (*(v59 + 34) != 1)
        {
        }

        if (*(v59 + 38) != 1)
        {
        }

        if (*(v59 + 42) != 1)
        {
        }

        if (*(v59 + 46) != 1)
        {
        }

        if (*(v59 + 50) != 1)
        {
        }

        if (*(v59 + 54) != 1)
        {
        }

        if (*(v59 + 58) != 1)
        {
        }

        if (*(v59 + 62) != 1)
        {
        }

        if (*(v59 + 66) != 1)
        {
        }

        if (*(v59 + 70) != 1)
        {
        }

        if (*(v59 + 74) != 1)
        {
        }

        if (*(v59 + 78) != 1)
        {
        }

        if (*(v59 + 82) != 1)
        {
        }

        if (*(v59 + 86) != 1)
        {
        }

        if (*(v59 + 90) != 1)
        {
        }

        if (*(v59 + 94) != 1)
        {
        }

        if (*(v59 + 98) != 1)
        {
        }

        if (*(v59 + 102) != 1)
        {
        }

        v61 = *(v59 + 124);

        v62 = *(v59 + 125);
      }

      if (*(v59 + 256) != 1)
      {
        if (*(v59 + 134) != 1)
        {
        }

        if (*(v59 + 138) != 1)
        {
        }

        if (*(v59 + 142) != 1)
        {
        }

        if (*(v59 + 146) != 1)
        {
        }

        if (*(v59 + 150) != 1)
        {
        }

        if (*(v59 + 154) != 1)
        {
        }

        if (*(v59 + 158) != 1)
        {
        }

        if (*(v59 + 162) != 1)
        {
        }

        if (*(v59 + 166) != 1)
        {
        }

        if (*(v59 + 170) != 1)
        {
        }

        if (*(v59 + 174) != 1)
        {
        }

        if (*(v59 + 178) != 1)
        {
        }

        if (*(v59 + 182) != 1)
        {
        }

        if (*(v59 + 186) != 1)
        {
        }

        if (*(v59 + 190) != 1)
        {
        }

        if (*(v59 + 194) != 1)
        {
        }

        if (*(v59 + 198) != 1)
        {
        }

        if (*(v59 + 202) != 1)
        {
        }

        if (*(v59 + 206) != 1)
        {
        }

        if (*(v59 + 210) != 1)
        {
        }

        if (*(v59 + 214) != 1)
        {
        }

        if (*(v59 + 218) != 1)
        {
        }

        if (*(v59 + 222) != 1)
        {
        }

        if (*(v59 + 226) != 1)
        {
        }

        if (*(v59 + 230) != 1)
        {
        }

        if (*(v59 + 234) != 1)
        {
        }

        v63 = *(v59 + 256);

        v64 = *(v59 + 257);
      }

      if (*(v59 + 388) != 1)
      {
        if (*(v59 + 266) != 1)
        {
        }

        if (*(v59 + 270) != 1)
        {
        }

        if (*(v59 + 274) != 1)
        {
        }

        if (*(v59 + 278) != 1)
        {
        }

        if (*(v59 + 282) != 1)
        {
        }

        if (*(v59 + 286) != 1)
        {
        }

        if (*(v59 + 290) != 1)
        {
        }

        if (*(v59 + 294) != 1)
        {
        }

        if (*(v59 + 298) != 1)
        {
        }

        if (*(v59 + 302) != 1)
        {
        }

        if (*(v59 + 306) != 1)
        {
        }

        if (*(v59 + 310) != 1)
        {
        }

        if (*(v59 + 314) != 1)
        {
        }

        if (*(v59 + 318) != 1)
        {
        }

        if (*(v59 + 322) != 1)
        {
        }

        if (*(v59 + 326) != 1)
        {
        }

        if (*(v59 + 330) != 1)
        {
        }

        if (*(v59 + 334) != 1)
        {
        }

        if (*(v59 + 338) != 1)
        {
        }

        if (*(v59 + 342) != 1)
        {
        }

        if (*(v59 + 346) != 1)
        {
        }

        if (*(v59 + 350) != 1)
        {
        }

        if (*(v59 + 354) != 1)
        {
        }

        if (*(v59 + 358) != 1)
        {
        }

        if (*(v59 + 362) != 1)
        {
        }

        if (*(v59 + 366) != 1)
        {
        }

        v65 = *(v59 + 388);

        v66 = *(v59 + 389);
      }

      if (*(v59 + 520) != 1)
      {
        if (*(v59 + 398) != 1)
        {
        }

        if (*(v59 + 402) != 1)
        {
        }

        if (*(v59 + 406) != 1)
        {
        }

        if (*(v59 + 410) != 1)
        {
        }

        if (*(v59 + 414) != 1)
        {
        }

        if (*(v59 + 418) != 1)
        {
        }

        if (*(v59 + 422) != 1)
        {
        }

        if (*(v59 + 426) != 1)
        {
        }

        if (*(v59 + 430) != 1)
        {
        }

        if (*(v59 + 434) != 1)
        {
        }

        if (*(v59 + 438) != 1)
        {
        }

        if (*(v59 + 442) != 1)
        {
        }

        if (*(v59 + 446) != 1)
        {
        }

        if (*(v59 + 450) != 1)
        {
        }

        if (*(v59 + 454) != 1)
        {
        }

        if (*(v59 + 458) != 1)
        {
        }

        if (*(v59 + 462) != 1)
        {
        }

        if (*(v59 + 466) != 1)
        {
        }

        if (*(v59 + 470) != 1)
        {
        }

        if (*(v59 + 474) != 1)
        {
        }

        if (*(v59 + 478) != 1)
        {
        }

        if (*(v59 + 482) != 1)
        {
        }

        if (*(v59 + 486) != 1)
        {
        }

        if (*(v59 + 490) != 1)
        {
        }

        if (*(v59 + 494) != 1)
        {
        }

        if (*(v59 + 498) != 1)
        {
        }

        v67 = *(v59 + 520);

        v68 = *(v59 + 521);
      }

      if (*(v59 + 652) != 1)
      {
        if (*(v59 + 530) != 1)
        {
        }

        if (*(v59 + 534) != 1)
        {
        }

        if (*(v59 + 538) != 1)
        {
        }

        if (*(v59 + 542) != 1)
        {
        }

        if (*(v59 + 546) != 1)
        {
        }

        if (*(v59 + 550) != 1)
        {
        }

        if (*(v59 + 554) != 1)
        {
        }

        if (*(v59 + 558) != 1)
        {
        }

        if (*(v59 + 562) != 1)
        {
        }

        if (*(v59 + 566) != 1)
        {
        }

        if (*(v59 + 570) != 1)
        {
        }

        if (*(v59 + 574) != 1)
        {
        }

        if (*(v59 + 578) != 1)
        {
        }

        if (*(v59 + 582) != 1)
        {
        }

        if (*(v59 + 586) != 1)
        {
        }

        if (*(v59 + 590) != 1)
        {
        }

        if (*(v59 + 594) != 1)
        {
        }

        if (*(v59 + 598) != 1)
        {
        }

        if (*(v59 + 602) != 1)
        {
        }

        if (*(v59 + 606) != 1)
        {
        }

        if (*(v59 + 610) != 1)
        {
        }

        if (*(v59 + 614) != 1)
        {
        }

        if (*(v59 + 618) != 1)
        {
        }

        if (*(v59 + 622) != 1)
        {
        }

        if (*(v59 + 626) != 1)
        {
        }

        if (*(v59 + 630) != 1)
        {
        }

        v69 = *(v59 + 652);

        v70 = *(v59 + 653);
      }

      if (*(v59 + 784) != 1)
      {
        if (*(v59 + 662) != 1)
        {
        }

        if (*(v59 + 666) != 1)
        {
        }

        if (*(v59 + 670) != 1)
        {
        }

        if (*(v59 + 674) != 1)
        {
        }

        if (*(v59 + 678) != 1)
        {
        }

        if (*(v59 + 682) != 1)
        {
        }

        if (*(v59 + 686) != 1)
        {
        }

        if (*(v59 + 690) != 1)
        {
        }

        if (*(v59 + 694) != 1)
        {
        }

        if (*(v59 + 698) != 1)
        {
        }

        if (*(v59 + 702) != 1)
        {
        }

        if (*(v59 + 706) != 1)
        {
        }

        if (*(v59 + 710) != 1)
        {
        }

        if (*(v59 + 714) != 1)
        {
        }

        if (*(v59 + 718) != 1)
        {
        }

        if (*(v59 + 722) != 1)
        {
        }

        if (*(v59 + 726) != 1)
        {
        }

        if (*(v59 + 730) != 1)
        {
        }

        if (*(v59 + 734) != 1)
        {
        }

        if (*(v59 + 738) != 1)
        {
        }

        if (*(v59 + 742) != 1)
        {
        }

        if (*(v59 + 746) != 1)
        {
        }

        if (*(v59 + 750) != 1)
        {
        }

        if (*(v59 + 754) != 1)
        {
        }

        if (*(v59 + 758) != 1)
        {
        }

        if (*(v59 + 762) != 1)
        {
        }

        v71 = *(v59 + 784);

        v72 = *(v59 + 785);
      }

      if (*(v59 + 916) != 1)
      {
        if (*(v59 + 794) != 1)
        {
        }

        if (*(v59 + 798) != 1)
        {
        }

        if (*(v59 + 802) != 1)
        {
        }

        if (*(v59 + 806) != 1)
        {
        }

        if (*(v59 + 810) != 1)
        {
        }

        if (*(v59 + 814) != 1)
        {
        }

        if (*(v59 + 818) != 1)
        {
        }

        if (*(v59 + 822) != 1)
        {
        }

        if (*(v59 + 826) != 1)
        {
        }

        if (*(v59 + 830) != 1)
        {
        }

        if (*(v59 + 834) != 1)
        {
        }

        if (*(v59 + 838) != 1)
        {
        }

        if (*(v59 + 842) != 1)
        {
        }

        if (*(v59 + 846) != 1)
        {
        }

        if (*(v59 + 850) != 1)
        {
        }

        if (*(v59 + 854) != 1)
        {
        }

        if (*(v59 + 858) != 1)
        {
        }

        if (*(v59 + 862) != 1)
        {
        }

        if (*(v59 + 866) != 1)
        {
        }

        if (*(v59 + 870) != 1)
        {
        }

        if (*(v59 + 874) != 1)
        {
        }

        if (*(v59 + 878) != 1)
        {
        }

        if (*(v59 + 882) != 1)
        {
        }

        if (*(v59 + 886) != 1)
        {
        }

        if (*(v59 + 890) != 1)
        {
        }

        if (*(v59 + 894) != 1)
        {
        }

        v73 = *(v59 + 916);

        v74 = *(v59 + 917);
      }

      v75 = *(v59 + 926);

      v60 = v46;
      if (*(v59 + 1059) != 1)
      {
        if (*(v59 + 937) != 1)
        {
        }

        if (*(v59 + 941) != 1)
        {
        }

        if (*(v59 + 945) != 1)
        {
        }

        if (*(v59 + 949) != 1)
        {
        }

        if (*(v59 + 953) != 1)
        {
        }

        if (*(v59 + 957) != 1)
        {
        }

        if (*(v59 + 961) != 1)
        {
        }

        if (*(v59 + 965) != 1)
        {
        }

        if (*(v59 + 969) != 1)
        {
        }

        if (*(v59 + 973) != 1)
        {
        }

        if (*(v59 + 977) != 1)
        {
        }

        if (*(v59 + 981) != 1)
        {
        }

        if (*(v59 + 985) != 1)
        {
        }

        if (*(v59 + 989) != 1)
        {
        }

        if (*(v59 + 993) != 1)
        {
        }

        if (*(v59 + 997) != 1)
        {
        }

        if (*(v59 + 1001) != 1)
        {
        }

        if (*(v59 + 1005) != 1)
        {
        }

        if (*(v59 + 1009) != 1)
        {
        }

        if (*(v59 + 1013) != 1)
        {
        }

        if (*(v59 + 1017) != 1)
        {
        }

        if (*(v59 + 1021) != 1)
        {
        }

        if (*(v59 + 1025) != 1)
        {
        }

        if (*(v59 + 1029) != 1)
        {
        }

        if (*(v59 + 1033) != 1)
        {
        }

        if (*(v59 + 1037) != 1)
        {
        }

        v76 = *(v59 + 1059);

        v77 = *(v59 + 1060);

        v60 = v46;
      }
    }

    v78 = *&v27[v60[40]];
    v79 = v60;

    v80 = *&v27[v79[41] + 8];

    v81 = *&v27[v79[42] + 8];

    v82 = *&v27[v79[43]];

    v9 = v128;
  }

  v131 = v0;
  v83 = v7;
  v84 = v1;
  v85 = v2;
  v86 = v3;
  v87 = *(v9 + v10[20]);

  v88 = (v9 + v10[26]);
  if (v88[1])
  {

    v89 = v88[3];

    v90 = v88[5];

    v91 = v88[7];
  }

  v92 = v4;
  v93 = (v9 + v10[27]);
  if (v93[1])
  {

    v94 = v93[3];

    v95 = v93[5];

    v96 = v93[7];
  }

  v97 = *(v9 + v10[28] + 8);

  v98 = v10[29];
  v99 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v100 = *(v99 - 8);
  if (!(*(v100 + 48))(v9 + v98, 1, v99))
  {
    (*(v100 + 8))(v9 + v98, v99);
  }

  v101 = (v9 + v10[30]);
  v4 = v92;
  v3 = v86;
  v2 = v85;
  v1 = v84;
  v7 = v83;
  v0 = v131;
  if (v101[1] != 1)
  {

    if (v101[124] != 1)
    {
      if (v101[2] != 1)
      {
      }

      if (v101[6] != 1)
      {
      }

      if (v101[10] != 1)
      {
      }

      if (v101[14] != 1)
      {
      }

      if (v101[18] != 1)
      {
      }

      if (v101[22] != 1)
      {
      }

      if (v101[26] != 1)
      {
      }

      if (v101[30] != 1)
      {
      }

      if (v101[34] != 1)
      {
      }

      if (v101[38] != 1)
      {
      }

      if (v101[42] != 1)
      {
      }

      if (v101[46] != 1)
      {
      }

      if (v101[50] != 1)
      {
      }

      if (v101[54] != 1)
      {
      }

      if (v101[58] != 1)
      {
      }

      if (v101[62] != 1)
      {
      }

      if (v101[66] != 1)
      {
      }

      if (v101[70] != 1)
      {
      }

      if (v101[74] != 1)
      {
      }

      if (v101[78] != 1)
      {
      }

      if (v101[82] != 1)
      {
      }

      if (v101[86] != 1)
      {
      }

      if (v101[90] != 1)
      {
      }

      if (v101[94] != 1)
      {
      }

      if (v101[98] != 1)
      {
      }

      if (v101[102] != 1)
      {
      }

      v102 = v101[124];

      v103 = v101[125];
    }

    if (v101[256] != 1)
    {
      if (v101[134] != 1)
      {
      }

      if (v101[138] != 1)
      {
      }

      if (v101[142] != 1)
      {
      }

      if (v101[146] != 1)
      {
      }

      if (v101[150] != 1)
      {
      }

      if (v101[154] != 1)
      {
      }

      if (v101[158] != 1)
      {
      }

      if (v101[162] != 1)
      {
      }

      if (v101[166] != 1)
      {
      }

      if (v101[170] != 1)
      {
      }

      if (v101[174] != 1)
      {
      }

      if (v101[178] != 1)
      {
      }

      if (v101[182] != 1)
      {
      }

      if (v101[186] != 1)
      {
      }

      if (v101[190] != 1)
      {
      }

      if (v101[194] != 1)
      {
      }

      if (v101[198] != 1)
      {
      }

      if (v101[202] != 1)
      {
      }

      if (v101[206] != 1)
      {
      }

      if (v101[210] != 1)
      {
      }

      if (v101[214] != 1)
      {
      }

      if (v101[218] != 1)
      {
      }

      if (v101[222] != 1)
      {
      }

      if (v101[226] != 1)
      {
      }

      if (v101[230] != 1)
      {
      }

      if (v101[234] != 1)
      {
      }

      v104 = v101[256];

      v105 = v101[257];
    }

    if (v101[388] != 1)
    {
      if (v101[266] != 1)
      {
      }

      if (v101[270] != 1)
      {
      }

      if (v101[274] != 1)
      {
      }

      if (v101[278] != 1)
      {
      }

      if (v101[282] != 1)
      {
      }

      if (v101[286] != 1)
      {
      }

      if (v101[290] != 1)
      {
      }

      if (v101[294] != 1)
      {
      }

      if (v101[298] != 1)
      {
      }

      if (v101[302] != 1)
      {
      }

      if (v101[306] != 1)
      {
      }

      if (v101[310] != 1)
      {
      }

      if (v101[314] != 1)
      {
      }

      if (v101[318] != 1)
      {
      }

      if (v101[322] != 1)
      {
      }

      if (v101[326] != 1)
      {
      }

      if (v101[330] != 1)
      {
      }

      if (v101[334] != 1)
      {
      }

      if (v101[338] != 1)
      {
      }

      if (v101[342] != 1)
      {
      }

      if (v101[346] != 1)
      {
      }

      if (v101[350] != 1)
      {
      }

      if (v101[354] != 1)
      {
      }

      if (v101[358] != 1)
      {
      }

      if (v101[362] != 1)
      {
      }

      if (v101[366] != 1)
      {
      }

      v106 = v101[388];

      v107 = v101[389];
    }

    if (v101[520] != 1)
    {
      if (v101[398] != 1)
      {
      }

      if (v101[402] != 1)
      {
      }

      if (v101[406] != 1)
      {
      }

      if (v101[410] != 1)
      {
      }

      if (v101[414] != 1)
      {
      }

      if (v101[418] != 1)
      {
      }

      if (v101[422] != 1)
      {
      }

      if (v101[426] != 1)
      {
      }

      if (v101[430] != 1)
      {
      }

      if (v101[434] != 1)
      {
      }

      if (v101[438] != 1)
      {
      }

      if (v101[442] != 1)
      {
      }

      if (v101[446] != 1)
      {
      }

      if (v101[450] != 1)
      {
      }

      if (v101[454] != 1)
      {
      }

      if (v101[458] != 1)
      {
      }

      if (v101[462] != 1)
      {
      }

      if (v101[466] != 1)
      {
      }

      if (v101[470] != 1)
      {
      }

      if (v101[474] != 1)
      {
      }

      if (v101[478] != 1)
      {
      }

      if (v101[482] != 1)
      {
      }

      if (v101[486] != 1)
      {
      }

      if (v101[490] != 1)
      {
      }

      if (v101[494] != 1)
      {
      }

      if (v101[498] != 1)
      {
      }

      v108 = v101[520];

      v109 = v101[521];
    }

    if (v101[652] != 1)
    {
      if (v101[530] != 1)
      {
      }

      if (v101[534] != 1)
      {
      }

      if (v101[538] != 1)
      {
      }

      if (v101[542] != 1)
      {
      }

      if (v101[546] != 1)
      {
      }

      if (v101[550] != 1)
      {
      }

      if (v101[554] != 1)
      {
      }

      if (v101[558] != 1)
      {
      }

      if (v101[562] != 1)
      {
      }

      if (v101[566] != 1)
      {
      }

      if (v101[570] != 1)
      {
      }

      if (v101[574] != 1)
      {
      }

      if (v101[578] != 1)
      {
      }

      if (v101[582] != 1)
      {
      }

      if (v101[586] != 1)
      {
      }

      if (v101[590] != 1)
      {
      }

      if (v101[594] != 1)
      {
      }

      if (v101[598] != 1)
      {
      }

      if (v101[602] != 1)
      {
      }

      if (v101[606] != 1)
      {
      }

      if (v101[610] != 1)
      {
      }

      if (v101[614] != 1)
      {
      }

      if (v101[618] != 1)
      {
      }

      if (v101[622] != 1)
      {
      }

      if (v101[626] != 1)
      {
      }

      if (v101[630] != 1)
      {
      }

      v110 = v101[652];

      v111 = v101[653];
    }

    if (v101[784] != 1)
    {
      if (v101[662] != 1)
      {
      }

      if (v101[666] != 1)
      {
      }

      if (v101[670] != 1)
      {
      }

      if (v101[674] != 1)
      {
      }

      if (v101[678] != 1)
      {
      }

      if (v101[682] != 1)
      {
      }

      if (v101[686] != 1)
      {
      }

      if (v101[690] != 1)
      {
      }

      if (v101[694] != 1)
      {
      }

      if (v101[698] != 1)
      {
      }

      if (v101[702] != 1)
      {
      }

      if (v101[706] != 1)
      {
      }

      if (v101[710] != 1)
      {
      }

      if (v101[714] != 1)
      {
      }

      if (v101[718] != 1)
      {
      }

      if (v101[722] != 1)
      {
      }

      if (v101[726] != 1)
      {
      }

      if (v101[730] != 1)
      {
      }

      if (v101[734] != 1)
      {
      }

      if (v101[738] != 1)
      {
      }

      if (v101[742] != 1)
      {
      }

      if (v101[746] != 1)
      {
      }

      if (v101[750] != 1)
      {
      }

      if (v101[754] != 1)
      {
      }

      if (v101[758] != 1)
      {
      }

      if (v101[762] != 1)
      {
      }

      v112 = v101[784];

      v113 = v101[785];
    }

    if (v101[916] != 1)
    {
      if (v101[794] != 1)
      {
      }

      if (v101[798] != 1)
      {
      }

      if (v101[802] != 1)
      {
      }

      if (v101[806] != 1)
      {
      }

      if (v101[810] != 1)
      {
      }

      if (v101[814] != 1)
      {
      }

      if (v101[818] != 1)
      {
      }

      if (v101[822] != 1)
      {
      }

      if (v101[826] != 1)
      {
      }

      if (v101[830] != 1)
      {
      }

      if (v101[834] != 1)
      {
      }

      if (v101[838] != 1)
      {
      }

      if (v101[842] != 1)
      {
      }

      if (v101[846] != 1)
      {
      }

      if (v101[850] != 1)
      {
      }

      if (v101[854] != 1)
      {
      }

      if (v101[858] != 1)
      {
      }

      if (v101[862] != 1)
      {
      }

      if (v101[866] != 1)
      {
      }

      if (v101[870] != 1)
      {
      }

      if (v101[874] != 1)
      {
      }

      if (v101[878] != 1)
      {
      }

      if (v101[882] != 1)
      {
      }

      if (v101[886] != 1)
      {
      }

      if (v101[890] != 1)
      {
      }

      if (v101[894] != 1)
      {
      }

      v114 = v101[916];

      v115 = v101[917];
    }

    v116 = v101[926];

    if (v101[1059] != 1)
    {
      if (v101[937] != 1)
      {
      }

      if (v101[941] != 1)
      {
      }

      if (v101[945] != 1)
      {
      }

      if (v101[949] != 1)
      {
      }

      if (v101[953] != 1)
      {
      }

      if (v101[957] != 1)
      {
      }

      if (v101[961] != 1)
      {
      }

      if (v101[965] != 1)
      {
      }

      if (v101[969] != 1)
      {
      }

      if (v101[973] != 1)
      {
      }

      if (v101[977] != 1)
      {
      }

      if (v101[981] != 1)
      {
      }

      if (v101[985] != 1)
      {
      }

      if (v101[989] != 1)
      {
      }

      if (v101[993] != 1)
      {
      }

      if (v101[997] != 1)
      {
      }

      if (v101[1001] != 1)
      {
      }

      if (v101[1005] != 1)
      {
      }

      if (v101[1009] != 1)
      {
      }

      if (v101[1013] != 1)
      {
      }

      if (v101[1017] != 1)
      {
      }

      if (v101[1021] != 1)
      {
      }

      if (v101[1025] != 1)
      {
      }

      if (v101[1029] != 1)
      {
      }

      if (v101[1033] != 1)
      {
      }

      if (v101[1037] != 1)
      {
      }

      v117 = v101[1059];

      v118 = v101[1060];
    }
  }

  v119 = v9 + v10[32];
  if (*(v119 + 1))
  {

    v120 = *(v119 + 3);
  }

  v121 = *(v9 + v10[33]);

  v122 = v9 + v10[34];
  if (*(v122 + 2))
  {

    v123 = *(v122 + 4);
  }

  v124 = v9 + v10[35];
  if (*(v124 + 2))
  {

    v125 = *(v124 + 4);
  }

LABEL_895:
  v126 = *(v7 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100269EAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100269F00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100269F40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100269F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100269FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026A050()
{
  v1 = type metadata accessor for PendingActionContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 112) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0[3];

  v6 = v0[6];

  v7 = v0[8];

  v8 = v0[10];

  sub_10000B90C(v0[11], v0[12]);
  v9 = v0 + v3;
  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v3 + 24);

  v12 = *(v0 + v3 + 40);

  v13 = *(v0 + v3 + 56);

  v14 = *(v0 + v3 + 72);

  v15 = *(v0 + v3 + 96);

  v16 = *(v0 + v3 + 104);

  v17 = *(v0 + v3 + 120);
  if (v17 != 1)
  {
    if (v17 == 2)
    {
      goto LABEL_8;
    }

    v18 = *(v9 + 17);
  }

  if (*(v9 + 19) != 1)
  {

    v19 = *(v9 + 21);
  }

  if (*(v9 + 23) != 1)
  {

    v20 = *(v9 + 25);
  }

LABEL_8:
  if (*(v9 + 27) != 1)
  {

    v21 = *(v9 + 29);
  }

  v22 = *(v9 + 31);

  v23 = *(v9 + 33);

  if (*(v9 + 35) != 1)
  {

    v24 = *(v9 + 37);
  }

  v25 = *(v9 + 39);

  v26 = &v9[v1[18]];
  v27 = type metadata accessor for WorkflowRecommendationResponse();
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v118 = v1;
    v28 = v0;
    v29 = v2;
    v30 = (v2 + 112) & ~v2;
    v31 = v4;
    v32 = *(v26 + 1);

    v33 = *(v26 + 3);

    v34 = *(v26 + 5);

    v35 = *(v26 + 7);

    v36 = *(v26 + 9);

    v37 = *(v26 + 11);

    v38 = *(v26 + 14);

    v39 = *(v26 + 16);

    v40 = *(v26 + 17);

    v41 = *(v26 + 19);

    v42 = *(v26 + 20);

    v43 = *(v26 + 22);

    v44 = type metadata accessor for Workflow();
    v45 = v44[18];
    v46 = type metadata accessor for HardwareAttestationType();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(&v26[v45], 1, v46))
    {
      (*(v47 + 8))(&v26[v45], v46);
    }

    v48 = *&v26[v44[19]];

    v49 = *&v26[v44[20]];

    v50 = *&v26[v44[21] + 8];

    v51 = *&v26[v44[23]];

    v52 = *&v26[v44[24]];

    v53 = *&v26[v44[25]];

    v54 = *&v26[v44[28]];

    v55 = *&v26[v44[29]];

    v56 = *&v26[v44[30]];

    v57 = &v26[v44[39]];
    v4 = v31;
    v3 = v30;
    v2 = v29;
    v0 = v28;
    if (*(v57 + 1) != 1)
    {

      if (*(v57 + 124) != 1)
      {
        if (*(v57 + 2) != 1)
        {
        }

        if (*(v57 + 6) != 1)
        {
        }

        if (*(v57 + 10) != 1)
        {
        }

        if (*(v57 + 14) != 1)
        {
        }

        if (*(v57 + 18) != 1)
        {
        }

        if (*(v57 + 22) != 1)
        {
        }

        if (*(v57 + 26) != 1)
        {
        }

        if (*(v57 + 30) != 1)
        {
        }

        if (*(v57 + 34) != 1)
        {
        }

        if (*(v57 + 38) != 1)
        {
        }

        if (*(v57 + 42) != 1)
        {
        }

        if (*(v57 + 46) != 1)
        {
        }

        if (*(v57 + 50) != 1)
        {
        }

        if (*(v57 + 54) != 1)
        {
        }

        if (*(v57 + 58) != 1)
        {
        }

        if (*(v57 + 62) != 1)
        {
        }

        if (*(v57 + 66) != 1)
        {
        }

        if (*(v57 + 70) != 1)
        {
        }

        if (*(v57 + 74) != 1)
        {
        }

        if (*(v57 + 78) != 1)
        {
        }

        if (*(v57 + 82) != 1)
        {
        }

        if (*(v57 + 86) != 1)
        {
        }

        if (*(v57 + 90) != 1)
        {
        }

        if (*(v57 + 94) != 1)
        {
        }

        if (*(v57 + 98) != 1)
        {
        }

        if (*(v57 + 102) != 1)
        {
        }

        v58 = *(v57 + 124);

        v59 = *(v57 + 125);
      }

      if (*(v57 + 256) != 1)
      {
        if (*(v57 + 134) != 1)
        {
        }

        if (*(v57 + 138) != 1)
        {
        }

        if (*(v57 + 142) != 1)
        {
        }

        if (*(v57 + 146) != 1)
        {
        }

        if (*(v57 + 150) != 1)
        {
        }

        if (*(v57 + 154) != 1)
        {
        }

        if (*(v57 + 158) != 1)
        {
        }

        if (*(v57 + 162) != 1)
        {
        }

        if (*(v57 + 166) != 1)
        {
        }

        if (*(v57 + 170) != 1)
        {
        }

        if (*(v57 + 174) != 1)
        {
        }

        if (*(v57 + 178) != 1)
        {
        }

        if (*(v57 + 182) != 1)
        {
        }

        if (*(v57 + 186) != 1)
        {
        }

        if (*(v57 + 190) != 1)
        {
        }

        if (*(v57 + 194) != 1)
        {
        }

        if (*(v57 + 198) != 1)
        {
        }

        if (*(v57 + 202) != 1)
        {
        }

        if (*(v57 + 206) != 1)
        {
        }

        if (*(v57 + 210) != 1)
        {
        }

        if (*(v57 + 214) != 1)
        {
        }

        if (*(v57 + 218) != 1)
        {
        }

        if (*(v57 + 222) != 1)
        {
        }

        if (*(v57 + 226) != 1)
        {
        }

        if (*(v57 + 230) != 1)
        {
        }

        if (*(v57 + 234) != 1)
        {
        }

        v60 = *(v57 + 256);

        v61 = *(v57 + 257);
      }

      if (*(v57 + 388) != 1)
      {
        if (*(v57 + 266) != 1)
        {
        }

        if (*(v57 + 270) != 1)
        {
        }

        if (*(v57 + 274) != 1)
        {
        }

        if (*(v57 + 278) != 1)
        {
        }

        if (*(v57 + 282) != 1)
        {
        }

        if (*(v57 + 286) != 1)
        {
        }

        if (*(v57 + 290) != 1)
        {
        }

        if (*(v57 + 294) != 1)
        {
        }

        if (*(v57 + 298) != 1)
        {
        }

        if (*(v57 + 302) != 1)
        {
        }

        if (*(v57 + 306) != 1)
        {
        }

        if (*(v57 + 310) != 1)
        {
        }

        if (*(v57 + 314) != 1)
        {
        }

        if (*(v57 + 318) != 1)
        {
        }

        if (*(v57 + 322) != 1)
        {
        }

        if (*(v57 + 326) != 1)
        {
        }

        if (*(v57 + 330) != 1)
        {
        }

        if (*(v57 + 334) != 1)
        {
        }

        if (*(v57 + 338) != 1)
        {
        }

        if (*(v57 + 342) != 1)
        {
        }

        if (*(v57 + 346) != 1)
        {
        }

        if (*(v57 + 350) != 1)
        {
        }

        if (*(v57 + 354) != 1)
        {
        }

        if (*(v57 + 358) != 1)
        {
        }

        if (*(v57 + 362) != 1)
        {
        }

        if (*(v57 + 366) != 1)
        {
        }

        v62 = *(v57 + 388);

        v63 = *(v57 + 389);
      }

      if (*(v57 + 520) != 1)
      {
        if (*(v57 + 398) != 1)
        {
        }

        if (*(v57 + 402) != 1)
        {
        }

        if (*(v57 + 406) != 1)
        {
        }

        if (*(v57 + 410) != 1)
        {
        }

        if (*(v57 + 414) != 1)
        {
        }

        if (*(v57 + 418) != 1)
        {
        }

        if (*(v57 + 422) != 1)
        {
        }

        if (*(v57 + 426) != 1)
        {
        }

        if (*(v57 + 430) != 1)
        {
        }

        if (*(v57 + 434) != 1)
        {
        }

        if (*(v57 + 438) != 1)
        {
        }

        if (*(v57 + 442) != 1)
        {
        }

        if (*(v57 + 446) != 1)
        {
        }

        if (*(v57 + 450) != 1)
        {
        }

        if (*(v57 + 454) != 1)
        {
        }

        if (*(v57 + 458) != 1)
        {
        }

        if (*(v57 + 462) != 1)
        {
        }

        if (*(v57 + 466) != 1)
        {
        }

        if (*(v57 + 470) != 1)
        {
        }

        if (*(v57 + 474) != 1)
        {
        }

        if (*(v57 + 478) != 1)
        {
        }

        if (*(v57 + 482) != 1)
        {
        }

        if (*(v57 + 486) != 1)
        {
        }

        if (*(v57 + 490) != 1)
        {
        }

        if (*(v57 + 494) != 1)
        {
        }

        if (*(v57 + 498) != 1)
        {
        }

        v64 = *(v57 + 520);

        v65 = *(v57 + 521);
      }

      if (*(v57 + 652) != 1)
      {
        if (*(v57 + 530) != 1)
        {
        }

        if (*(v57 + 534) != 1)
        {
        }

        if (*(v57 + 538) != 1)
        {
        }

        if (*(v57 + 542) != 1)
        {
        }

        if (*(v57 + 546) != 1)
        {
        }

        if (*(v57 + 550) != 1)
        {
        }

        if (*(v57 + 554) != 1)
        {
        }

        if (*(v57 + 558) != 1)
        {
        }

        if (*(v57 + 562) != 1)
        {
        }

        if (*(v57 + 566) != 1)
        {
        }

        if (*(v57 + 570) != 1)
        {
        }

        if (*(v57 + 574) != 1)
        {
        }

        if (*(v57 + 578) != 1)
        {
        }

        if (*(v57 + 582) != 1)
        {
        }

        if (*(v57 + 586) != 1)
        {
        }

        if (*(v57 + 590) != 1)
        {
        }

        if (*(v57 + 594) != 1)
        {
        }

        if (*(v57 + 598) != 1)
        {
        }

        if (*(v57 + 602) != 1)
        {
        }

        if (*(v57 + 606) != 1)
        {
        }

        if (*(v57 + 610) != 1)
        {
        }

        if (*(v57 + 614) != 1)
        {
        }

        if (*(v57 + 618) != 1)
        {
        }

        if (*(v57 + 622) != 1)
        {
        }

        if (*(v57 + 626) != 1)
        {
        }

        if (*(v57 + 630) != 1)
        {
        }

        v66 = *(v57 + 652);

        v67 = *(v57 + 653);
      }

      if (*(v57 + 784) != 1)
      {
        if (*(v57 + 662) != 1)
        {
        }

        if (*(v57 + 666) != 1)
        {
        }

        if (*(v57 + 670) != 1)
        {
        }

        if (*(v57 + 674) != 1)
        {
        }

        if (*(v57 + 678) != 1)
        {
        }

        if (*(v57 + 682) != 1)
        {
        }

        if (*(v57 + 686) != 1)
        {
        }

        if (*(v57 + 690) != 1)
        {
        }

        if (*(v57 + 694) != 1)
        {
        }

        if (*(v57 + 698) != 1)
        {
        }

        if (*(v57 + 702) != 1)
        {
        }

        if (*(v57 + 706) != 1)
        {
        }

        if (*(v57 + 710) != 1)
        {
        }

        if (*(v57 + 714) != 1)
        {
        }

        if (*(v57 + 718) != 1)
        {
        }

        if (*(v57 + 722) != 1)
        {
        }

        if (*(v57 + 726) != 1)
        {
        }

        if (*(v57 + 730) != 1)
        {
        }

        if (*(v57 + 734) != 1)
        {
        }

        if (*(v57 + 738) != 1)
        {
        }

        if (*(v57 + 742) != 1)
        {
        }

        if (*(v57 + 746) != 1)
        {
        }

        if (*(v57 + 750) != 1)
        {
        }

        if (*(v57 + 754) != 1)
        {
        }

        if (*(v57 + 758) != 1)
        {
        }

        if (*(v57 + 762) != 1)
        {
        }

        v68 = *(v57 + 784);

        v69 = *(v57 + 785);
      }

      if (*(v57 + 916) != 1)
      {
        if (*(v57 + 794) != 1)
        {
        }

        if (*(v57 + 798) != 1)
        {
        }

        if (*(v57 + 802) != 1)
        {
        }

        if (*(v57 + 806) != 1)
        {
        }

        if (*(v57 + 810) != 1)
        {
        }

        if (*(v57 + 814) != 1)
        {
        }

        if (*(v57 + 818) != 1)
        {
        }

        if (*(v57 + 822) != 1)
        {
        }

        if (*(v57 + 826) != 1)
        {
        }

        if (*(v57 + 830) != 1)
        {
        }

        if (*(v57 + 834) != 1)
        {
        }

        if (*(v57 + 838) != 1)
        {
        }

        if (*(v57 + 842) != 1)
        {
        }

        if (*(v57 + 846) != 1)
        {
        }

        if (*(v57 + 850) != 1)
        {
        }

        if (*(v57 + 854) != 1)
        {
        }

        if (*(v57 + 858) != 1)
        {
        }

        if (*(v57 + 862) != 1)
        {
        }

        if (*(v57 + 866) != 1)
        {
        }

        if (*(v57 + 870) != 1)
        {
        }

        if (*(v57 + 874) != 1)
        {
        }

        if (*(v57 + 878) != 1)
        {
        }

        if (*(v57 + 882) != 1)
        {
        }

        if (*(v57 + 886) != 1)
        {
        }

        if (*(v57 + 890) != 1)
        {
        }

        if (*(v57 + 894) != 1)
        {
        }

        v70 = *(v57 + 916);

        v71 = *(v57 + 917);
      }

      v72 = *(v57 + 926);

      if (*(v57 + 1059) != 1)
      {
        if (*(v57 + 937) != 1)
        {
        }

        if (*(v57 + 941) != 1)
        {
        }

        if (*(v57 + 945) != 1)
        {
        }

        if (*(v57 + 949) != 1)
        {
        }

        if (*(v57 + 953) != 1)
        {
        }

        if (*(v57 + 957) != 1)
        {
        }

        if (*(v57 + 961) != 1)
        {
        }

        if (*(v57 + 965) != 1)
        {
        }

        if (*(v57 + 969) != 1)
        {
        }

        if (*(v57 + 973) != 1)
        {
        }

        if (*(v57 + 977) != 1)
        {
        }

        if (*(v57 + 981) != 1)
        {
        }

        if (*(v57 + 985) != 1)
        {
        }

        if (*(v57 + 989) != 1)
        {
        }

        if (*(v57 + 993) != 1)
        {
        }

        if (*(v57 + 997) != 1)
        {
        }

        if (*(v57 + 1001) != 1)
        {
        }

        if (*(v57 + 1005) != 1)
        {
        }

        if (*(v57 + 1009) != 1)
        {
        }

        if (*(v57 + 1013) != 1)
        {
        }

        if (*(v57 + 1017) != 1)
        {
        }

        if (*(v57 + 1021) != 1)
        {
        }

        if (*(v57 + 1025) != 1)
        {
        }

        if (*(v57 + 1029) != 1)
        {
        }

        if (*(v57 + 1033) != 1)
        {
        }

        if (*(v57 + 1037) != 1)
        {
        }

        v73 = *(v57 + 1059);

        v74 = *(v57 + 1060);
      }
    }

    v75 = *&v26[v44[40]];

    v76 = *&v26[v44[41] + 8];

    v77 = *&v26[v44[42] + 8];

    v78 = *&v26[v44[43]];

    v1 = v118;
  }

  v79 = *&v9[v1[20]];

  v80 = &v9[v1[26]];
  if (*(v80 + 1))
  {

    v81 = *(v80 + 3);

    v82 = *(v80 + 5);

    v83 = *(v80 + 7);
  }

  v84 = &v9[v1[27]];
  if (*(v84 + 1))
  {

    v85 = *(v84 + 3);

    v86 = *(v84 + 5);

    v87 = *(v84 + 7);
  }

  v88 = *&v9[v1[28] + 8];

  v89 = v1[29];
  v90 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v91 = *(v90 - 8);
  if (!(*(v91 + 48))(&v9[v89], 1, v90))
  {
    (*(v91 + 8))(&v9[v89], v90);
  }

  v92 = &v9[v1[30]];
  if (*(v92 + 1) != 1)
  {

    if (*(v92 + 124) != 1)
    {
      if (*(v92 + 2) != 1)
      {
      }

      if (*(v92 + 6) != 1)
      {
      }

      if (*(v92 + 10) != 1)
      {
      }

      if (*(v92 + 14) != 1)
      {
      }

      if (*(v92 + 18) != 1)
      {
      }

      if (*(v92 + 22) != 1)
      {
      }

      if (*(v92 + 26) != 1)
      {
      }

      if (*(v92 + 30) != 1)
      {
      }

      if (*(v92 + 34) != 1)
      {
      }

      if (*(v92 + 38) != 1)
      {
      }

      if (*(v92 + 42) != 1)
      {
      }

      if (*(v92 + 46) != 1)
      {
      }

      if (*(v92 + 50) != 1)
      {
      }

      if (*(v92 + 54) != 1)
      {
      }

      if (*(v92 + 58) != 1)
      {
      }

      if (*(v92 + 62) != 1)
      {
      }

      if (*(v92 + 66) != 1)
      {
      }

      if (*(v92 + 70) != 1)
      {
      }

      if (*(v92 + 74) != 1)
      {
      }

      if (*(v92 + 78) != 1)
      {
      }

      if (*(v92 + 82) != 1)
      {
      }

      if (*(v92 + 86) != 1)
      {
      }

      if (*(v92 + 90) != 1)
      {
      }

      if (*(v92 + 94) != 1)
      {
      }

      if (*(v92 + 98) != 1)
      {
      }

      if (*(v92 + 102) != 1)
      {
      }

      v93 = *(v92 + 124);

      v94 = *(v92 + 125);
    }

    if (*(v92 + 256) != 1)
    {
      if (*(v92 + 134) != 1)
      {
      }

      if (*(v92 + 138) != 1)
      {
      }

      if (*(v92 + 142) != 1)
      {
      }

      if (*(v92 + 146) != 1)
      {
      }

      if (*(v92 + 150) != 1)
      {
      }

      if (*(v92 + 154) != 1)
      {
      }

      if (*(v92 + 158) != 1)
      {
      }

      if (*(v92 + 162) != 1)
      {
      }

      if (*(v92 + 166) != 1)
      {
      }

      if (*(v92 + 170) != 1)
      {
      }

      if (*(v92 + 174) != 1)
      {
      }

      if (*(v92 + 178) != 1)
      {
      }

      if (*(v92 + 182) != 1)
      {
      }

      if (*(v92 + 186) != 1)
      {
      }

      if (*(v92 + 190) != 1)
      {
      }

      if (*(v92 + 194) != 1)
      {
      }

      if (*(v92 + 198) != 1)
      {
      }

      if (*(v92 + 202) != 1)
      {
      }

      if (*(v92 + 206) != 1)
      {
      }

      if (*(v92 + 210) != 1)
      {
      }

      if (*(v92 + 214) != 1)
      {
      }

      if (*(v92 + 218) != 1)
      {
      }

      if (*(v92 + 222) != 1)
      {
      }

      if (*(v92 + 226) != 1)
      {
      }

      if (*(v92 + 230) != 1)
      {
      }

      if (*(v92 + 234) != 1)
      {
      }

      v95 = *(v92 + 256);

      v96 = *(v92 + 257);
    }

    if (*(v92 + 388) != 1)
    {
      if (*(v92 + 266) != 1)
      {
      }

      if (*(v92 + 270) != 1)
      {
      }

      if (*(v92 + 274) != 1)
      {
      }

      if (*(v92 + 278) != 1)
      {
      }

      if (*(v92 + 282) != 1)
      {
      }

      if (*(v92 + 286) != 1)
      {
      }

      if (*(v92 + 290) != 1)
      {
      }

      if (*(v92 + 294) != 1)
      {
      }

      if (*(v92 + 298) != 1)
      {
      }

      if (*(v92 + 302) != 1)
      {
      }

      if (*(v92 + 306) != 1)
      {
      }

      if (*(v92 + 310) != 1)
      {
      }

      if (*(v92 + 314) != 1)
      {
      }

      if (*(v92 + 318) != 1)
      {
      }

      if (*(v92 + 322) != 1)
      {
      }

      if (*(v92 + 326) != 1)
      {
      }

      if (*(v92 + 330) != 1)
      {
      }

      if (*(v92 + 334) != 1)
      {
      }

      if (*(v92 + 338) != 1)
      {
      }

      if (*(v92 + 342) != 1)
      {
      }

      if (*(v92 + 346) != 1)
      {
      }

      if (*(v92 + 350) != 1)
      {
      }

      if (*(v92 + 354) != 1)
      {
      }

      if (*(v92 + 358) != 1)
      {
      }

      if (*(v92 + 362) != 1)
      {
      }

      if (*(v92 + 366) != 1)
      {
      }

      v97 = *(v92 + 388);

      v98 = *(v92 + 389);
    }

    if (*(v92 + 520) != 1)
    {
      if (*(v92 + 398) != 1)
      {
      }

      if (*(v92 + 402) != 1)
      {
      }

      if (*(v92 + 406) != 1)
      {
      }

      if (*(v92 + 410) != 1)
      {
      }

      if (*(v92 + 414) != 1)
      {
      }

      if (*(v92 + 418) != 1)
      {
      }

      if (*(v92 + 422) != 1)
      {
      }

      if (*(v92 + 426) != 1)
      {
      }

      if (*(v92 + 430) != 1)
      {
      }

      if (*(v92 + 434) != 1)
      {
      }

      if (*(v92 + 438) != 1)
      {
      }

      if (*(v92 + 442) != 1)
      {
      }

      if (*(v92 + 446) != 1)
      {
      }

      if (*(v92 + 450) != 1)
      {
      }

      if (*(v92 + 454) != 1)
      {
      }

      if (*(v92 + 458) != 1)
      {
      }

      if (*(v92 + 462) != 1)
      {
      }

      if (*(v92 + 466) != 1)
      {
      }

      if (*(v92 + 470) != 1)
      {
      }

      if (*(v92 + 474) != 1)
      {
      }

      if (*(v92 + 478) != 1)
      {
      }

      if (*(v92 + 482) != 1)
      {
      }

      if (*(v92 + 486) != 1)
      {
      }

      if (*(v92 + 490) != 1)
      {
      }

      if (*(v92 + 494) != 1)
      {
      }

      if (*(v92 + 498) != 1)
      {
      }

      v99 = *(v92 + 520);

      v100 = *(v92 + 521);
    }

    if (*(v92 + 652) != 1)
    {
      if (*(v92 + 530) != 1)
      {
      }

      if (*(v92 + 534) != 1)
      {
      }

      if (*(v92 + 538) != 1)
      {
      }

      if (*(v92 + 542) != 1)
      {
      }

      if (*(v92 + 546) != 1)
      {
      }

      if (*(v92 + 550) != 1)
      {
      }

      if (*(v92 + 554) != 1)
      {
      }

      if (*(v92 + 558) != 1)
      {
      }

      if (*(v92 + 562) != 1)
      {
      }

      if (*(v92 + 566) != 1)
      {
      }

      if (*(v92 + 570) != 1)
      {
      }

      if (*(v92 + 574) != 1)
      {
      }

      if (*(v92 + 578) != 1)
      {
      }

      if (*(v92 + 582) != 1)
      {
      }

      if (*(v92 + 586) != 1)
      {
      }

      if (*(v92 + 590) != 1)
      {
      }

      if (*(v92 + 594) != 1)
      {
      }

      if (*(v92 + 598) != 1)
      {
      }

      if (*(v92 + 602) != 1)
      {
      }

      if (*(v92 + 606) != 1)
      {
      }

      if (*(v92 + 610) != 1)
      {
      }

      if (*(v92 + 614) != 1)
      {
      }

      if (*(v92 + 618) != 1)
      {
      }

      if (*(v92 + 622) != 1)
      {
      }

      if (*(v92 + 626) != 1)
      {
      }

      if (*(v92 + 630) != 1)
      {
      }

      v101 = *(v92 + 652);

      v102 = *(v92 + 653);
    }

    if (*(v92 + 784) != 1)
    {
      if (*(v92 + 662) != 1)
      {
      }

      if (*(v92 + 666) != 1)
      {
      }

      if (*(v92 + 670) != 1)
      {
      }

      if (*(v92 + 674) != 1)
      {
      }

      if (*(v92 + 678) != 1)
      {
      }

      if (*(v92 + 682) != 1)
      {
      }

      if (*(v92 + 686) != 1)
      {
      }

      if (*(v92 + 690) != 1)
      {
      }

      if (*(v92 + 694) != 1)
      {
      }

      if (*(v92 + 698) != 1)
      {
      }

      if (*(v92 + 702) != 1)
      {
      }

      if (*(v92 + 706) != 1)
      {
      }

      if (*(v92 + 710) != 1)
      {
      }

      if (*(v92 + 714) != 1)
      {
      }

      if (*(v92 + 718) != 1)
      {
      }

      if (*(v92 + 722) != 1)
      {
      }

      if (*(v92 + 726) != 1)
      {
      }

      if (*(v92 + 730) != 1)
      {
      }

      if (*(v92 + 734) != 1)
      {
      }

      if (*(v92 + 738) != 1)
      {
      }

      if (*(v92 + 742) != 1)
      {
      }

      if (*(v92 + 746) != 1)
      {
      }

      if (*(v92 + 750) != 1)
      {
      }

      if (*(v92 + 754) != 1)
      {
      }

      if (*(v92 + 758) != 1)
      {
      }

      if (*(v92 + 762) != 1)
      {
      }

      v103 = *(v92 + 784);

      v104 = *(v92 + 785);
    }

    if (*(v92 + 916) != 1)
    {
      if (*(v92 + 794) != 1)
      {
      }

      if (*(v92 + 798) != 1)
      {
      }

      if (*(v92 + 802) != 1)
      {
      }

      if (*(v92 + 806) != 1)
      {
      }

      if (*(v92 + 810) != 1)
      {
      }

      if (*(v92 + 814) != 1)
      {
      }

      if (*(v92 + 818) != 1)
      {
      }

      if (*(v92 + 822) != 1)
      {
      }

      if (*(v92 + 826) != 1)
      {
      }

      if (*(v92 + 830) != 1)
      {
      }

      if (*(v92 + 834) != 1)
      {
      }

      if (*(v92 + 838) != 1)
      {
      }

      if (*(v92 + 842) != 1)
      {
      }

      if (*(v92 + 846) != 1)
      {
      }

      if (*(v92 + 850) != 1)
      {
      }

      if (*(v92 + 854) != 1)
      {
      }

      if (*(v92 + 858) != 1)
      {
      }

      if (*(v92 + 862) != 1)
      {
      }

      if (*(v92 + 866) != 1)
      {
      }

      if (*(v92 + 870) != 1)
      {
      }

      if (*(v92 + 874) != 1)
      {
      }

      if (*(v92 + 878) != 1)
      {
      }

      if (*(v92 + 882) != 1)
      {
      }

      if (*(v92 + 886) != 1)
      {
      }

      if (*(v92 + 890) != 1)
      {
      }

      if (*(v92 + 894) != 1)
      {
      }

      v105 = *(v92 + 916);

      v106 = *(v92 + 917);
    }

    v107 = *(v92 + 926);

    if (*(v92 + 1059) != 1)
    {
      if (*(v92 + 937) != 1)
      {
      }

      if (*(v92 + 941) != 1)
      {
      }

      if (*(v92 + 945) != 1)
      {
      }

      if (*(v92 + 949) != 1)
      {
      }

      if (*(v92 + 953) != 1)
      {
      }

      if (*(v92 + 957) != 1)
      {
      }

      if (*(v92 + 961) != 1)
      {
      }

      if (*(v92 + 965) != 1)
      {
      }

      if (*(v92 + 969) != 1)
      {
      }

      if (*(v92 + 973) != 1)
      {
      }

      if (*(v92 + 977) != 1)
      {
      }

      if (*(v92 + 981) != 1)
      {
      }

      if (*(v92 + 985) != 1)
      {
      }

      if (*(v92 + 989) != 1)
      {
      }

      if (*(v92 + 993) != 1)
      {
      }

      if (*(v92 + 997) != 1)
      {
      }

      if (*(v92 + 1001) != 1)
      {
      }

      if (*(v92 + 1005) != 1)
      {
      }

      if (*(v92 + 1009) != 1)
      {
      }

      if (*(v92 + 1013) != 1)
      {
      }

      if (*(v92 + 1017) != 1)
      {
      }

      if (*(v92 + 1021) != 1)
      {
      }

      if (*(v92 + 1025) != 1)
      {
      }

      if (*(v92 + 1029) != 1)
      {
      }

      if (*(v92 + 1033) != 1)
      {
      }

      if (*(v92 + 1037) != 1)
      {
      }

      v108 = *(v92 + 1059);

      v109 = *(v92 + 1060);
    }
  }

  v110 = &v9[v1[32]];
  if (*(v110 + 1))
  {

    v111 = *(v110 + 3);
  }

  v112 = *&v9[v1[33]];

  v113 = &v9[v1[34]];
  if (*(v113 + 2))
  {

    v114 = *(v113 + 4);
  }

  v115 = &v9[v1[35]];
  if (*(v115 + 2))
  {

    v116 = *(v115 + 4);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10026C1FC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);
  if (v4 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 72), v4);
  }

  v5 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10026C2AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_10000B8B8(a2, a3);
  }

  return result;
}

uint64_t sub_10026C2C8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[13];
  if (v5 >> 60 != 15)
  {
    sub_10000B90C(v0[12], v5);
  }

  v6 = v0[15];
  if (v6 >> 60 != 15)
  {
    sub_10000B90C(v0[14], v6);
  }

  sub_10000BB78(v0 + 16);

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_10026C3AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_10000B90C(a2, a3);
  }

  return result;
}

uint64_t sub_10026C41C()
{
  if (v0[3] != 1)
  {

    v1 = v0[5];

    v2 = v0[7];

    v3 = v0[9];

    v4 = v0[11];
    if (v4 >> 60 != 15)
    {
      sub_10000B90C(v0[10], v4);
    }
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10026C48C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[12];

  v8 = v0[14];

  v9 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10026C5F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for ProofingDisplayMessageAction();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10026C744, 0, 0);
}

uint64_t sub_10026C744()
{
  v1 = v0[2];
  result = ProofingDisplayMessage.actions.getter();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v0[8];
    v35 = *(result + 16);
    v34 = (v0[5] + 8);
    v7 = (v6 + 8);
    v33 = v4 - 1;
    while (1)
    {
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v6 + 16))(v0[9], v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v8, v0[7]);
        ProofingDisplayMessageAction.title.getter();
        if (v13)
        {
          break;
        }

LABEL_9:
        v16 = v0[6];
        defaultLogger()();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "IdentityProofingPendingActionsFlow failed to map precursor pass message action from stored proofing session", v19, 2u);
        }

        ++v8;
        v9 = v0[9];
        v11 = v0[6];
        v10 = v0[7];
        v12 = v0[4];

        (*v34)(v11, v12);
        result = (*v7)(v9, v10);
        if (v35 == v8)
        {
          goto LABEL_14;
        }
      }

      v14 = v0[9];
      ProofingDisplayMessageAction.actionType.getter();
      IdentityProofingPrecursorPassMessageActionType.init(rawValue:)();
      if (v15)
      {
        break;
      }

      v32 = v3;
      v20 = v0[9];
      v21 = v0[7];
      v22 = v0[3];
      ProofingDisplayMessageAction.actionURL.getter();
      v23 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessageAction());
      IdentityProofingPrecursorPassMessageAction.init(title:actionType:actionURL:)();
      (*v7)(v20, v21);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v5 = v8 + 1;
      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v32;
      if (v33 == v8)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_9;
  }

LABEL_14:
  v25 = v0[9];
  v26 = v0[6];
  v27 = v0[2];
  v28 = v0[3];

  ProofingDisplayMessage.title.getter();
  ProofingDisplayMessage.message.getter();
  v29 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessage());
  v30 = IdentityProofingPrecursorPassMessage.init(title:message:actions:)();

  v31 = v0[1];

  return v31(v30);
}

unint64_t sub_10026CAB4()
{
  result = qword_10083E408;
  if (!qword_10083E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083E408);
  }

  return result;
}

uint64_t sub_10026CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[107] = v8;
  v9[106] = v37;
  v9[105] = v36;
  v9[104] = a8;
  v9[103] = a7;
  v9[102] = a6;
  v9[101] = a5;
  v9[100] = a4;
  v9[99] = a3;
  v9[98] = a2;
  v9[97] = a1;
  v10 = type metadata accessor for DIPError.Code();
  v9[108] = v10;
  v11 = *(v10 - 8);
  v9[109] = v11;
  v12 = *(v11 + 64) + 15;
  v9[110] = swift_task_alloc();
  v13 = sub_100007224(&qword_10083E4B0, &unk_1006E9710);
  v9[111] = v13;
  v14 = *(v13 - 8);
  v9[112] = v14;
  v15 = *(v14 + 64) + 15;
  v9[113] = swift_task_alloc();
  v16 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  v9[114] = v16;
  v17 = *(v16 - 8);
  v9[115] = v17;
  v18 = *(v17 + 64) + 15;
  v9[116] = swift_task_alloc();
  v19 = type metadata accessor for DeviceInformationProvider();
  v9[117] = v19;
  v20 = *(v19 - 8);
  v9[118] = v20;
  v21 = *(v20 + 64) + 15;
  v9[119] = swift_task_alloc();
  v22 = type metadata accessor for DIPKeyAlgorithm();
  v9[120] = v22;
  v23 = *(v22 - 8);
  v9[121] = v23;
  v24 = *(v23 + 64) + 15;
  v9[122] = swift_task_alloc();
  v25 = type metadata accessor for KeystoreKeyType();
  v9[123] = v25;
  v26 = *(v25 - 8);
  v9[124] = v26;
  v27 = *(v26 + 64) + 15;
  v9[125] = swift_task_alloc();
  v28 = type metadata accessor for Logger();
  v9[126] = v28;
  v29 = *(v28 - 8);
  v9[127] = v29;
  v30 = *(v29 + 64) + 15;
  v9[128] = swift_task_alloc();
  v31 = type metadata accessor for UUID();
  v9[129] = v31;
  v32 = *(v31 - 8);
  v9[130] = v32;
  v33 = *(v32 + 64) + 15;
  v9[131] = swift_task_alloc();

  return _swift_task_switch(sub_10026CFA8, 0, 0);
}

uint64_t sub_10026CFA8()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 856);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  type metadata accessor for IdentityProofingDatabaseProvider();
  v7 = swift_allocObject();
  v8 = type metadata accessor for IdentitySelfHealer();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v10 = v6;
  *(v10 + 1) = v5;
  *&v9[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v7;
  *(v0 + 728) = v9;
  *(v0 + 736) = v8;

  v11 = objc_msgSendSuper2((v0 + 728), "init");
  *(v0 + 1056) = v11;
  v12 = *(v4 + 16);
  *(v4 + 16) = v11;
  v13 = v11;

  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 1064) = v14;
  v15 = *(v2 + 8);
  *(v0 + 1072) = v15;
  *(v0 + 1080) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v1, v3);
  *(v0 + 1088) = type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v16 = swift_task_alloc();
  *(v0 + 1096) = v16;
  *v16 = v0;
  v16[1] = sub_10026D170;

  return (sub_1005FB45C)(v0 + 528, v11, &off_10080DB50, 0, 0);
}

uint64_t sub_10026D170(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v4 = *(*v1 + 1064);
  v5 = *(*v1 + 1056);
  v7 = *v1;
  *(v2 + 1104) = a1;

  sub_10000BB78((v2 + 528));

  return _swift_task_switch(sub_10026D2B8, 0, 0);
}

uint64_t sub_10026D2B8()
{
  v26 = v0;
  v1 = v0[105];
  if (v1)
  {
    v2 = v0[128];
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[128];
      v6 = v0[127];
      v7 = v0[126];
      v8 = v0[104];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100141FE4(v8, v1, &v25);
      _os_log_impl(&_mh_execute_header, v3, v4, "lastExecutedActionIdentifier exists %s", v9, 0xCu);
      sub_10000BB78(v10);

      (*(v6 + 8))(v5, v7);
    }

    else
    {
      v11 = v0[128];
      v12 = v0[127];
      v13 = v0[126];

      (*(v12 + 8))(v11, v13);
    }
  }

  v14 = v0[125];
  v15 = v0[124];
  v16 = v0[123];
  type metadata accessor for DIPKeystoreManager();
  v17 = swift_allocObject();
  v0[139] = v17;
  *(v17 + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(v17 + 24) = 2;
  sub_100007224(&qword_100839BC0, &qword_1006D49B0);
  v18 = type metadata accessor for HardwareAttestationType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v0[140] = v22;
  *(v22 + 16) = xmmword_1006BF520;
  (*(v19 + 104))(v22 + v21, enum case for HardwareAttestationType.SEP(_:), v18);
  (*(v15 + 104))(v14, enum case for KeystoreKeyType.temporary(_:), v16);
  v23 = swift_task_alloc();
  v0[141] = v23;
  *v23 = v0;
  v23[1] = sub_10026D5C8;

  return sub_10003736C((v0 + 71), v22, 0, 0, 0xF000000000000000);
}

uint64_t sub_10026D5C8()
{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v4 = *v1;
  *(*v1 + 1136) = v0;

  v5 = *(v2 + 1120);

  if (v0)
  {

    v6 = sub_10026D970;
  }

  else
  {
    v6 = sub_10026D704;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10026D704()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1088);
  static DIPAccountManager.sharedInstance.getter();
  v3 = *(v0 + 640);
  sub_10000BA08((v0 + 608), *(v0 + 632));
  v4 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  *(v0 + 1144) = v5;
  if (v1)
  {
    v6 = *(v0 + 1112);
    (*(*(v0 + 992) + 8))(*(v0 + 1000), *(v0 + 984));

    sub_10000BB78((v0 + 608));
    sub_10000BB78((v0 + 568));

    v7 = *(v0 + 1048);
    v8 = *(v0 + 1024);
    v9 = *(v0 + 1000);
    v10 = *(v0 + 976);
    v11 = *(v0 + 952);
    v12 = *(v0 + 928);
    v13 = *(v0 + 904);
    v14 = *(v0 + 880);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = v4;
    v18 = v5;
    v19 = *(v0 + 976);
    v20 = *(v0 + 848);
    sub_10000BB78((v0 + 608));
    v21 = *(v0 + 600);
    sub_10000BA08((v0 + 568), *(v0 + 592));
    sub_10061B2DC(v19);
    v22 = async function pointer to DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)[1];
    v23 = swift_task_alloc();
    *(v0 + 1152) = v23;
    *v23 = v0;
    v23[1] = sub_10026DA74;
    if (v20 == 3)
    {
      v24 = 0x6E6F736D697263;
    }

    else
    {
      v24 = 0x61746E6567616DLL;
    }

    v25 = *(v0 + 1000);
    v26 = *(v0 + 976);

    return DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(v0 + 648, v24, 0xE700000000000000, v17, v18, v25, v26, 0);
  }
}

uint64_t sub_10026D970()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 1136);

  v6 = *(v0 + 1048);
  v7 = *(v0 + 1024);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 976);
  v10 = *(v0 + 952);
  v11 = *(v0 + 928);
  v12 = *(v0 + 904);
  v13 = *(v0 + 880);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10026DA74()
{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v4 = *v1;
  *(*v1 + 1160) = v0;

  v5 = v2[143];
  (*(v2[121] + 8))(v2[122], v2[120]);

  if (v0)
  {
    v6 = sub_10026E080;
  }

  else
  {
    v6 = sub_10026DC00;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10026DC00()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 680);
  sub_10000BA08((v0 + 648), *(v0 + 672));
  v3 = dispatch thunk of IdentityKey.attestation(_:)();
  if (v1)
  {
    v4 = *(v0 + 1112);
    (*(*(v0 + 992) + 8))(*(v0 + 1000), *(v0 + 984));

    sub_10000BB78((v0 + 648));
    sub_10000BB78((v0 + 568));

LABEL_8:
    v37 = *(v0 + 1048);
    v38 = *(v0 + 1024);
    v39 = *(v0 + 1000);
    v40 = *(v0 + 976);
    v41 = *(v0 + 952);
    v42 = *(v0 + 928);
    v43 = *(v0 + 904);
    v44 = *(v0 + 880);

    v45 = *(v0 + 8);

    return v45();
  }

  v5 = *(v0 + 1112);
  v6 = *(v0 + 1104);
  v52 = *(v0 + 1072);
  v53 = *(v0 + 1080);
  v7 = *(v0 + 1048);
  v51 = *(v0 + 1032);
  v8 = v3;
  v9 = *(v0 + 952);
  v57 = v9;
  v58 = *(v0 + 944);
  v59 = *(v0 + 936);
  v10 = *(v0 + 840);
  v11 = *(v0 + 824);
  v12 = *(v0 + 808);
  v13 = *(v0 + 792);
  (*(*(v0 + 992) + 8))(*(v0 + 1000), *(v0 + 984));
  swift_setDeallocating();
  v14 = *(v5 + 16);

  swift_deallocClassInstance();
  sub_100020260(v0 + 648, v0 + 480);
  v60._rawValue = v8;
  *(v0 + 520) = v8;
  sub_10000BB78((v0 + 648));
  sub_10000BB78((v0 + 568));

  UUID.init()();
  v15 = UUID.uuidString.getter();
  v55 = v16;
  v56 = v15;
  v52(v7, v51);
  v17 = *(v6 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v54 = *(v6 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  sub_100020260(*(v6 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 688);
  v18 = *(v0 + 720);
  sub_10000BA08((v0 + 688), *(v0 + 712));

  v19 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v21 = v20;
  sub_10000BB78((v0 + 688));
  DeviceInformationProvider.init()();
  v22 = DeviceInformationProvider.uniqueDeviceID.getter();
  v24 = v23;
  (*(v58 + 8))(v57, v59);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 928);
  v26 = *(v0 + 912);
  v27 = *(v0 + 824);
  v28 = *(v0 + 816);
  v30 = *(v0 + 784);
  v29 = *(v0 + 800);
  v31 = qword_100882478;
  v32 = unk_100882480;
  *(v0 + 336) = v54;
  *(v0 + 344) = v17;
  *(v0 + 352) = v56;
  *(v0 + 360) = v55;
  *(v0 + 368) = v19;
  *(v0 + 376) = v21;
  *(v0 + 384) = v22;
  *(v0 + 392) = v24;
  *(v0 + 400) = v31;
  *(v0 + 408) = v32;
  *(v0 + 416) = v30;
  *(v0 + 432) = v29;
  *(v0 + 448) = v28;
  *(v0 + 456) = v27;
  *(v0 + 464) = *(v0 + 832);
  sub_1000A80FC();
  sub_1000A8150();

  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(v60);
  if (v33)
  {
    v36 = *(v0 + 1104);
    (*(*(v0 + 920) + 8))(*(v0 + 928), *(v0 + 912));

    sub_1001B7154(v0 + 480);
    goto LABEL_8;
  }

  v34 = *(v0 + 928);
  v35 = *(v0 + 912);
  JWSSignedJSON.setKid(_:)();
  v47 = async function pointer to JWSSignedJSON.sign(_:)[1];
  v48 = swift_task_alloc();
  *(v0 + 1168) = v48;
  *v48 = v0;
  v48[1] = sub_10026E18C;
  v49 = *(v0 + 928);
  v50 = *(v0 + 912);

  return JWSSignedJSON.sign(_:)(v0 + 480, v50);
}

uint64_t sub_10026E080()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);

  (*(v3 + 8))(v2, v4);
  sub_10000BB78((v0 + 568));
  v5 = *(v0 + 1160);

  v6 = *(v0 + 1048);
  v7 = *(v0 + 1024);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 976);
  v10 = *(v0 + 952);
  v11 = *(v0 + 928);
  v12 = *(v0 + 904);
  v13 = *(v0 + 880);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10026E18C()
{
  v2 = *(*v1 + 1168);
  v5 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v3 = sub_10026E654;
  }

  else
  {
    v3 = sub_10026E2A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E2A0()
{
  v1 = v0[101];
  v0[93] = v0[100];
  v0[94] = v1;
  v0[95] = 0xD000000000000018;
  v0[96] = 0x8000000100705380;
  sub_1000348A0();
  sub_1000348F4();
  v2 = BidirectionalCollection<>.starts<A>(with:)();
  v3 = swift_task_alloc();
  v0[148] = v3;
  *v3 = v0;
  v3[1] = sub_10026E3A8;
  v4 = v0[138];
  v5 = v0[116];
  v6 = v0[113];
  if (v2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return sub_1005E1BAC(v6, v5, v7);
}

uint64_t sub_10026E3A8()
{
  v2 = *(*v1 + 1184);
  v5 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v3 = sub_10026E758;
  }

  else
  {
    v3 = sub_10026E4BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E4BC()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1048);
  v24 = *(v0 + 1024);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 976);
  v27 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 896);
  v8 = *(v0 + 888);
  v28 = *(v0 + 880);
  v9 = *(v0 + 776);
  JWSSignedJSON.payload.getter();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_1001B7154(v0 + 480);
  v10 = *(v0 + 272);
  v11 = *(v0 + 288);
  *(v0 + 112) = v10;
  *(v0 + 128) = v11;
  v12 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v12;
  v13 = *(v0 + 208);
  v14 = *(v0 + 224);
  *(v0 + 48) = v13;
  *(v0 + 64) = v14;
  v15 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v15;
  v16 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v16;
  v17 = *(v0 + 32);
  *v9 = *(v0 + 16);
  v9[1] = v17;
  v18 = *(v0 + 64);
  v19 = *(v0 + 96);
  v9[4] = *(v0 + 80);
  v9[5] = v19;
  v9[2] = v13;
  v9[3] = v18;
  v20 = *(v0 + 128);
  v21 = *(v0 + 160);
  v9[8] = *(v0 + 144);
  v9[9] = v21;
  v9[6] = v10;
  v9[7] = v20;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10026E654()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);

  (*(v2 + 8))(v1, v3);
  sub_1001B7154(v0 + 480);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 976);
  v9 = *(v0 + 952);
  v10 = *(v0 + 928);
  v11 = *(v0 + 904);
  v12 = *(v0 + 880);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10026E758()
{
  v1 = v0[149];
  v2 = v0[138];
  v3 = v0[115];
  v14 = v0[114];
  v15 = v0[116];
  (*(v0[109] + 104))(v0[110], enum case for DIPError.Code.internalError(_:), v0[108]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v3 + 8))(v15, v14);
  sub_1001B7154((v0 + 60));
  v4 = v0[131];
  v5 = v0[128];
  v6 = v0[125];
  v7 = v0[122];
  v8 = v0[119];
  v9 = v0[116];
  v10 = v0[113];
  v11 = v0[110];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10026E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v10 = type metadata accessor for DIPError();
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v12 = *(v11 + 64) + 15;
  v6[29] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[30] = v13;
  v14 = *(v13 - 8);
  v6[31] = v14;
  v15 = *(v14 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_10026EB08, 0, 0);
}

uint64_t sub_10026EB08()
{
  v70 = v0;
  v1 = v0[34];
  v2 = v0[19];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  v7 = v0[30];
  v8 = v0[31];
  if (v5)
  {
    v10 = v0[18];
    v9 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v69 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v69);
    _os_log_impl(&_mh_execute_header, v3, v4, "Performing uploads complete action notification request for proofing session ID %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[35] = v13;
  v14 = *(v0[23] + 64);
  v0[36] = v14;
  if (v14)
  {
    v15 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
    swift_beginAccess();
    v16 = *(v14 + v15);
    if (*(v16 + 16))
    {
      v64 = v0;
      v17 = v16 + 64;
      v18 = -1;
      v19 = -1 << *(v16 + 32);
      if (-v19 < 64)
      {
        v18 = ~(-1 << -v19);
      }

      v20 = v18 & *(v16 + 64);
      v21 = (63 - v19) >> 6;

      v23 = 0;
      v24 = _swiftEmptyArrayStorage;
      v65 = v16;
      if (v20)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          return result;
        }

        if (v25 >= v21)
        {
          break;
        }

        v20 = *(v17 + 8 * v25);
        ++v23;
        if (v20)
        {
          v23 = v25;
          do
          {
LABEL_12:
            v26 = __clz(__rbit64(v20)) | (v23 << 6);
            v27 = *(*(v16 + 48) + 16 * v26 + 8);
            v28 = *(*(v16 + 56) + 8 * v26);
            v29 = *(v28 + 16);
            v30 = *(v28 + 24);

            v67 = v29;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_1003C5110(0, *(v24 + 2) + 1, 1, v24);
            }

            v32 = *(v24 + 2);
            v31 = *(v24 + 3);
            if (v32 >= v31 >> 1)
            {
              v24 = sub_1003C5110((v31 > 1), v32 + 1, 1, v24);
            }

            v20 &= v20 - 1;

            *(v24 + 2) = v32 + 1;
            v33 = &v24[16 * v32];
            *(v33 + 4) = v67;
            *(v33 + 5) = v30;
            v16 = v65;
          }

          while (v20);
        }
      }

      v45 = v64[23];

      sub_100020260(v45 + 16, (v64 + 2));
      v46 = sub_10000BA08(v64 + 2, v64[5]);
      sub_100007224(&qword_10083E588, &unk_1006DDA70);
      v47 = swift_allocObject();
      v64[37] = v47;
      *(v47 + 16) = xmmword_1006BF520;
      strcpy((v47 + 32), "UPLOAD_RECORD");
      *(v47 + 46) = -4864;
      *(v47 + 48) = xmmword_1006DBF40;
      *(v47 + 64) = v24;
      *(v47 + 72) = 0;
      *(v47 + 80) = 0;
      *(v47 + 88) = 0;
      *(v47 + 96) = xmmword_1006DBF50;
      v48 = *(v45 + 56);
      if (v48)
      {
        swift_beginAccess();
        sub_1002207B4(v48 + 144, (v64 + 7));
        v49 = v64[10];
        if (v49)
        {
          v50 = sub_10000BA08(v64 + 7, v64[10]);
          v51 = *(v49 - 8);
          v52 = *(v51 + 64) + 15;
          v53 = swift_task_alloc();
          (*(v51 + 16))(v53, v50, v49);
          sub_10022074C((v64 + 7));
          v55 = *v53;
          v54 = v53[1];
          v56 = *(v51 + 8);

          v56(v53, v49);

LABEL_26:
          v64[38] = v54;
          v57 = v64[19];
          v58 = *v46;
          v59 = swift_task_alloc();
          v64[39] = v59;
          *v59 = v64;
          v59[1] = sub_10026F1B4;
          v60 = v64[21];
          v61 = v64[22];
          v62 = v64[20];
          v63 = v64[18];

          return sub_10022083C(v47, v62, v60, v55, v54, v63, v57, v61);
        }

        sub_10022074C((v64 + 7));
      }

      v55 = 0;
      v54 = 0;
      goto LABEL_26;
    }
  }

  v34 = v0[32];
  v35 = v0[29];
  v66 = v0[31];
  v68 = v0[30];
  v36 = v0[27];
  v37 = v0[28];
  (*(v0[25] + 104))(v0[26], enum case for DIPError.Code.missingCloudKitImagesNotUploaded(_:), v0[24]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v37 + 16))(v38, v35, v36);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v13(v34, v68);
  (*(v37 + 8))(v35, v36);

  v40 = v0[33];
  v39 = v0[34];
  v41 = v0[32];
  v42 = v0[29];
  v43 = v0[26];

  v44 = v0[1];

  return v44();
}

uint64_t sub_10026F1B4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);

  if (v0)
  {
    v7 = sub_10026F538;
  }

  else
  {
    v7 = sub_10026F304;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10026F304()
{
  v1 = v0[33];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Action notification successful, will delete the saved uploaded assets data", v4, 2u);
  }

  v5 = v0[40];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[31];

  v6(v7, v8);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v5)
  {
    v11 = v0[36];

    v18 = v0[33];
    v17 = v0[34];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[26];

    v22 = v0[1];
  }

  else
  {
    v12 = v10;
    v14 = v0[18];
    v13 = v0[19];
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v14;
    v15[4] = v13;

    sub_10057C18C(sub_10026F69C, v15);
    v16 = v0[36];

    v25 = v0[33];
    v24 = v0[34];
    v26 = v0[32];
    v27 = v0[29];
    v28 = v0[26];

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_10026F538()
{
  v1 = v0[36];

  sub_10000BB78(v0 + 2);
  v2 = v0[40];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10026F5E8()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_10026F65C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10026F6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10026F7DC, 0, 0);
}

uint64_t sub_10026F7DC()
{
  v34 = v0;
  v0[4] = _swiftEmptyArrayStorage;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v2[2];
  v0[15] = v3;
  if (v3)
  {
    v0[16] = _swiftEmptyArrayStorage;
    v0[17] = 0;
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v1 + 16);

    v7 = dispatch thunk of IdentityProofingAttributeConfigHelper.fetchAttributeID(input:)();
    v9 = v8;

    if (v9)
    {
      v10 = v0[14];
      v12 = v0[5];
      v11 = v0[6];
      v0[2] = v7;
      v0[3] = v9;
      v13._countAndFlagsBits = 46;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = String.lowercased()();
      String.append(_:)(v14);

      v15 = v0[2];
      v16 = v0[3];
      v0[18] = v16;
      defaultLogger()();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      v19 = os_log_type_enabled(v17, v18);
      v21 = v0[13];
      v20 = v0[14];
      v22 = v0[12];
      if (v19)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v33 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100141FE4(v15, v16, &v33);
        _os_log_impl(&_mh_execute_header, v17, v18, "the assetID to be fetched is %s", v23, 0xCu);
        sub_10000BB78(v24);
      }

      (*(v21 + 8))(v20, v22);
      v0[19] = sub_1005A2ACC();
      v25 = swift_task_alloc();
      v0[20] = v25;
      *v25 = v0;
      v25[1] = sub_10026FBDC;

      return sub_1005A2BA0(v15, v16);
    }

    else
    {
      (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.invalidImageAssetPlaceholder(_:), v0[9]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v30 = v0[14];
      v31 = v0[11];

      v32 = v0[1];

      return v32();
    }
  }

  else
  {
    v27 = v0[14];
    v28 = v0[11];

    v29 = v0[1];

    return v29(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10026FBDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  v7 = v3[19];
  v8 = v3[18];
  if (v1)
  {
    v9 = v4[16];

    v10 = sub_1002701C0;
  }

  else
  {

    v10 = sub_10026FD5C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10026FD5C()
{
  v39 = v0;
  v1 = *(v0 + 168);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = *(v0 + 136) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v5 = *(v0 + 32);
  if (v4 == v3)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);

    v8 = *(v0 + 8);

    return v8(v5);
  }

  else
  {
    v10 = *(v0 + 136) + 1;
    *(v0 + 128) = v5;
    *(v0 + 136) = v10;
    v11 = *(v0 + 56) + 16 * v10;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    v14 = *(*(v0 + 64) + 16);

    v15 = dispatch thunk of IdentityProofingAttributeConfigHelper.fetchAttributeID(input:)();
    v17 = v16;

    if (v17)
    {
      v18 = *(v0 + 112);
      v20 = *(v0 + 40);
      v19 = *(v0 + 48);
      *(v0 + 16) = v15;
      *(v0 + 24) = v17;
      v21._countAndFlagsBits = 46;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22 = String.lowercased()();
      String.append(_:)(v22);

      v23 = *(v0 + 16);
      v24 = *(v0 + 24);
      *(v0 + 144) = v24;
      defaultLogger()();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      v27 = os_log_type_enabled(v25, v26);
      v29 = *(v0 + 104);
      v28 = *(v0 + 112);
      v30 = *(v0 + 96);
      if (v27)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100141FE4(v23, v24, &v38);
        _os_log_impl(&_mh_execute_header, v25, v26, "the assetID to be fetched is %s", v31, 0xCu);
        sub_10000BB78(v32);
      }

      (*(v29 + 8))(v28, v30);
      *(v0 + 152) = sub_1005A2ACC();
      v33 = swift_task_alloc();
      *(v0 + 160) = v33;
      *v33 = v0;
      v33[1] = sub_10026FBDC;

      return sub_1005A2BA0(v23, v24);
    }

    else
    {
      (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.invalidImageAssetPlaceholder(_:), *(v0 + 72));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v34 = *(v0 + 112);
      v35 = *(v0 + 88);

      v36 = *(v0 + 8);

      return v36();
    }
  }
}

uint64_t sub_1002701C0()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100270254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_100835968, &qword_1006DBC90) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v10 = type metadata accessor for WorkflowRecommendationResponse();
  v5[24] = v10;
  v11 = *(v10 - 8);
  v5[25] = v11;
  v12 = *(v11 + 64) + 15;
  v5[26] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v5[27] = v13;
  v14 = *(v13 - 8);
  v5[28] = v14;
  v15 = *(v14 + 64) + 15;
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_10027040C, 0, 0);
}

uint64_t sub_10027040C()
{
  v1 = *(*(*(v0 + 152) + 40) + 16);

  os_unfair_lock_lock(v1 + 14);
  sub_10000BBC4(&v1[4], v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  os_unfair_lock_unlock(v1 + 14);

  if (*(v0 + 80))
  {
    v2 = *(v0 + 120);
    sub_10012D290((v0 + 56), v0 + 16);
    sub_10012D290((v0 + 16), v2);
    v3 = *(v0 + 232);
    v4 = *(v0 + 208);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 232);
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Fetching the auth code workflow from the server as the actions repository is nil", v12, 2u);
    }

    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = *(v0 + 152);
    v17 = *(v0 + 136);

    (*(v14 + 8))(v13, v15);
    v18 = *(v16 + 16);

    *(v0 + 240) = sub_100266DA8(3, 0);

    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_100270670;
    v20 = *(v0 + 144);
    v21 = *(v0 + 128);

    return sub_10025AE6C(v21, v17, v20, 0);
  }
}

uint64_t sub_100270670()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_100270A6C;
  }

  else
  {

    v3 = sub_100270790;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100270790()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v5 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  swift_beginAccess();
  sub_10000BBC4(v1 + v5, v4, &qword_100835968, &qword_1006DBC90);
  v6 = (*(v3 + 48))(v4, 1, v2);
  v7 = v0[30];
  if (v6 == 1)
  {
    v8 = v0[22];
    v9 = v0[20];
    v10 = v0[21];
    sub_10000BE18(v0[23], &qword_100835968, &qword_1006DBC90);
    (*(v10 + 104))(v8, enum case for DIPError.Code.topekaInternalServerError(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v16 = v0[26];
    v17 = v0[15];
    sub_100275578(v0[23], v16, type metadata accessor for WorkflowRecommendationResponse);
    v17[3] = type metadata accessor for Workflow();
    v17[4] = &off_100808FE8;
    v18 = sub_100032DBC(v17);
    sub_100275578(v16, v18, type metadata accessor for Workflow);
  }

  v11 = v0[29];
  v12 = v0[26];
  v14 = v0[22];
  v13 = v0[23];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100270A6C()
{
  v1 = v0[30];

  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100270B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[25] = a7;
  v8[26] = v7;
  v8[23] = a2;
  v8[24] = a6;
  v8[22] = a1;
  v12 = type metadata accessor for DIPError.Code();
  v8[27] = v12;
  v13 = *(v12 - 8);
  v8[28] = v13;
  v14 = *(v13 + 64) + 15;
  v8[29] = swift_task_alloc();
  v15 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v8[30] = v15;
  v16 = *(v15 - 8);
  v8[31] = v16;
  v17 = *(v16 + 64) + 15;
  v8[32] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v8[33] = v18;
  v19 = *(v18 - 8);
  v8[34] = v19;
  v20 = *(v19 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v21 = swift_task_alloc();
  v8[40] = v21;
  *v21 = v8;
  v21[1] = sub_100270D0C;

  return sub_100270254((v8 + 2), a3, a4, a5);
}

uint64_t sub_100270D0C()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100271F18;
  }

  else
  {
    v3 = sub_100270E20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100270E20()
{
  v67 = v0;
  v1 = v0[39];
  v2 = v0[26];
  v3 = v0[23];
  v4 = IdentityProofingConfiguration.state.getter();
  v5 = *(v2 + 56);
  *(v2 + 48) = v4;
  *(v2 + 56) = v6;

  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "-----BEGIN LOGGING SAVED WORKFLOW-----", v9, 2u);
  }

  v11 = v0[38];
  v10 = v0[39];
  v12 = v0[33];
  v13 = v0[34];

  v14 = *(v13 + 8);
  v14(v10, v12);
  defaultLogger()();
  sub_100020260((v0 + 2), (v0 + 7));
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[38];
  v19 = v0[33];
  v20 = v0[34];
  v65 = v14;
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v66 = v22;
    *v21 = 136446210;
    v23 = sub_10000BA08(v0 + 7, v0[10]);
    v24 = *v23;
    v25 = v23[1];

    sub_10000BB78(v0 + 7);
    v26 = sub_100141FE4(v24, v25, &v66);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, " WORKFLOWID: %{public}s", v21, 0xCu);
    sub_10000BB78(v22);
    v14 = v65;

    v65(v18, v19);
  }

  else
  {

    v14(v18, v19);
    sub_10000BB78(v0 + 7);
  }

  v27 = v0[37];
  defaultLogger()();
  sub_100020260((v0 + 2), (v0 + 12));
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[37];
  v32 = v0[33];
  v33 = v0[34];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v66 = v35;
    *v34 = 136446210;
    v36 = sub_10000BA08(v0 + 12, v0[15]);
    v37 = v36[6];
    v38 = v36[7];

    sub_10000BB78(v0 + 12);
    v39 = sub_100141FE4(v37, v38, &v66);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, " PROVIDERID: %{public}s", v34, 0xCu);
    sub_10000BB78(v35);
    v14 = v65;

    v65(v31, v32);
  }

  else
  {

    v14(v31, v32);
    sub_10000BB78(v0 + 12);
  }

  v40 = v0[36];
  defaultLogger()();
  sub_100020260((v0 + 2), (v0 + 17));
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[36];
  v46 = v0[33];
  v45 = v0[34];
  if (v43)
  {
    v64 = v0[36];
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v66 = v48;
    *v47 = 136446210;
    v49 = sub_10000BA08(v0 + 17, v0[20]);
    *(v49 + *(type metadata accessor for Workflow() + 116));

    v50 = Array.description.getter();
    v52 = v51;

    sub_10000BB78(v0 + 17);
    v53 = sub_100141FE4(v50, v52, &v66);

    *(v47 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v41, v42, " PAGINATION: %{public}s", v47, 0xCu);
    sub_10000BB78(v48);
    v14 = v65;

    v65(v64, v46);
  }

  else
  {

    v14(v44, v46);
    sub_10000BB78(v0 + 17);
  }

  v54 = v0[35];
  defaultLogger()();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "-----END LOGGING SAVED WORKFLOW-----", v57, 2u);
  }

  v59 = v0[34];
  v58 = v0[35];
  v60 = v0[33];

  v14(v58, v60);
  v61 = swift_task_alloc();
  v0[42] = v61;
  *v61 = v0;
  v61[1] = sub_100271438;
  v62 = v0[26];

  return sub_100272098((v0 + 2));
}

uint64_t sub_100271438(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v7 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v5 = sub_100271FD4;
  }

  else
  {
    v5 = sub_10027154C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10027154C()
{
  v1 = v0[43];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[43];
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v2 = v0[23];
    v0[45] = *(v0[26] + 24);
    v3 = sub_10000BA08(v0 + 2, v0[5])[20];
    v0[46] = v3;

    v4 = IdentityProofingConfiguration.documentType.getter();
    v5 = swift_task_alloc();
    v0[47] = v5;
    *v5 = v0;
    v5[1] = sub_100271814;
    v6 = v0[32];

    return sub_1002A77FC(v6, v3, v4);
  }

  v9 = v0[43];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[27];

  (*(v11 + 104))(v10, enum case for DIPError.Code.invalidWorkflowPackage(_:), v12);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000BB78(v0 + 2);
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[29];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100271814()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  v2[48] = v0;

  v5 = v2[46];
  if (v0)
  {
    v6 = v2[43];

    v7 = sub_100271CF8;
  }

  else
  {

    v7 = sub_100271958;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100271958()
{
  v1 = v0[48];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A6758(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = (v3 + 8);
  v11 = v0[45];
  v12 = v0[43];
  v13 = v0[32];
  v14 = v0[30];
  if (v1)
  {
    v15 = v0[43];

    (*v10)(v13, v14);
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1006DAE90;
    v20 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v19 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    IdentityProofingConfiguration.documentType.getter();
    v21 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v22 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  else
  {
    v23 = v0[25];
    v36 = v0[23];
    v37 = v0[24];
    v24 = v8;
    v25 = v9;

    (*v10)(v13, v14);
    sub_10000B8B8(v24, v25);

    IdentityProofingConfiguration.documentType.getter();
    v26 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v22 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    sub_10000B90C(v24, v25);
  }

  v28 = v0[38];
  v27 = v0[39];
  v30 = v0[36];
  v29 = v0[37];
  v31 = v0[35];
  v32 = v0[32];
  v33 = v0[29];
  sub_100020260((v0 + 2), v0[22]);
  sub_10000BB78(v0 + 2);

  v34 = v0[1];

  return v34(v22);
}

uint64_t sub_100271CF8()
{
  v1 = v0[45];

  v2 = v0[48];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006DAE90;
  v7 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v6 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

  IdentityProofingConfiguration.documentType.getter();
  v8 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v9 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[35];
  v15 = v0[32];
  v16 = v0[29];
  sub_100020260((v0 + 2), v0[22]);
  sub_10000BB78(v0 + 2);

  v17 = v0[1];

  return v17(v9);
}

uint64_t sub_100271F18()
{
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100271FD4()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100272098(uint64_t a1)
{
  v2[222] = v1;
  v2[221] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[223] = v3;
  v4 = *(v3 - 8);
  v2[224] = v4;
  v5 = *(v4 + 64) + 15;
  v2[225] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[226] = v6;
  v7 = *(v6 - 8);
  v2[227] = v7;
  v8 = *(v7 + 64) + 15;
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();

  return _swift_task_switch(sub_1002721DC, 0, 0);
}

uint64_t sub_1002721DC()
{
  v1 = *(v0 + 1768);
  v2 = sub_10000BA08(v1, v1[3]);
  v3 = *(v2 + *(type metadata accessor for Workflow() + 116));
  if (v3 && *(v3 + 2))
  {
    v4 = (v0 + 1752);
    v5 = objc_opt_self();

    v6 = [v5 standardUserDefaults];
    v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceAuthCodeRetry.getter();
    v8 = NSUserDefaults.internalBool(forKey:)(v7);

    if (v8)
    {
      v9 = *(v0 + 1848);
      defaultLogger()();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Internal setting to force enable retry auth code scenario has been enabled. Adding an additional page to auth code workflow", v12, 2u);
      }

      v13 = *(v0 + 1848);
      v14 = *(v0 + 1816);
      v15 = *(v0 + 1808);

      (*(v14 + 8))(v13, v15);
      *(v0 + 1624) = 0;
      *(v0 + 1632) = 0xD00000000000001ELL;
      *(v0 + 1640) = 0x8000000100708490;
      *(v0 + 1648) = 0xD00000000000009DLL;
      *(v0 + 1656) = 0x80000001007084B0;
      *(v0 + 1664) = _swiftEmptyArrayStorage;
      *(v0 + 1672) = 0;
      *(v0 + 1688) = 0;
      *(v0 + 1680) = 0;
      *(v0 + 1696) = xmmword_1006DC000;
      *(v0 + 1712) = 0;
      *(v0 + 1728) = 0;
      *(v0 + 1720) = 0;
      v16 = *(v3 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1752) = v3;
      v4 = (v0 + 1752);
      if (!isUniquelyReferenced_nonNull_native || v16 >= *(v3 + 3) >> 1)
      {
        v3 = sub_1003C58F0(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v3);
        *(v0 + 1752) = v3;
      }

      v18 = *(v0 + 1704);
      *(v0 + 568) = *(v0 + 1688);
      *(v0 + 584) = v18;
      *(v0 + 600) = *(v0 + 1720);
      v19 = *(v0 + 1640);
      *(v0 + 504) = *(v0 + 1624);
      *(v0 + 520) = v19;
      v20 = *(v0 + 1672);
      *(v0 + 536) = *(v0 + 1656);
      *(v0 + 552) = v20;
      sub_10027545C(0, 0, 1, (v0 + 504));
      sub_1000F01E8(v0 + 1624);
    }

    *(v0 + 1760) = _swiftEmptyArrayStorage;
    v21 = [v5 standardUserDefaults];
    v22._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchAuthCodeUI.getter();
    v23 = NSUserDefaults.internalBool(forKey:)(v22);

    if (v23)
    {
      *(v0 + 1512) = 0;
      *(v0 + 1520) = 0xD00000000000002ELL;
      *(v0 + 1528) = 0x8000000100708420;
      *(v0 + 1536) = 0xD000000000000031;
      *(v0 + 1544) = 0x8000000100708450;
      *(v0 + 1552) = _swiftEmptyArrayStorage;
      *(v0 + 1560) = 0;
      *(v0 + 1576) = 0;
      *(v0 + 1568) = 0;
      *(v0 + 1584) = 0xD00000000000001ELL;
      *(v0 + 1592) = 0x8000000100703F80;
      *(v0 + 1600) = 0;
      *(v0 + 1616) = 0;
      *(v0 + 1608) = 0;
      v24 = *(v3 + 2);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1752) = v3;
      if (!v25 || v24 >= *(v3 + 3) >> 1)
      {
        v3 = sub_1003C58F0(v25, v24 + 1, 1, v3);
        *v4 = v3;
      }

      v26 = *(v0 + 1592);
      *(v0 + 680) = *(v0 + 1576);
      *(v0 + 696) = v26;
      *(v0 + 712) = *(v0 + 1608);
      v27 = *(v0 + 1528);
      *(v0 + 616) = *(v0 + 1512);
      *(v0 + 632) = v27;
      v28 = *(v0 + 1560);
      *(v0 + 648) = *(v0 + 1544);
      *(v0 + 664) = v28;
      sub_10027545C(0, 0, 1, (v0 + 616));
      sub_1000F01E8(v0 + 1512);
    }

    v29 = [v5 standardUserDefaults];
    v30._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchRetryAuthCodeUI.getter();
    v31 = NSUserDefaults.internalBool(forKey:)(v30);

    if (v31)
    {
      *(v0 + 1400) = 0;
      *(v0 + 1408) = 0xD000000000000027;
      *(v0 + 1416) = 0x80000001007083C0;
      *(v0 + 1424) = 0xD00000000000002ALL;
      *(v0 + 1432) = 0x80000001007083F0;
      *(v0 + 1440) = _swiftEmptyArrayStorage;
      *(v0 + 1448) = 0;
      *(v0 + 1464) = 0;
      *(v0 + 1456) = 0;
      *(v0 + 1472) = 0xD000000000000017;
      *(v0 + 1480) = 0x8000000100703FA0;
      *(v0 + 1488) = 0;
      *(v0 + 1504) = 0;
      *(v0 + 1496) = 0;
      v32 = *(v3 + 2);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 1752) = v3;
      if (!v33 || v32 >= *(v3 + 3) >> 1)
      {
        v3 = sub_1003C58F0(v33, v32 + 1, 1, v3);
        *v4 = v3;
      }

      v34 = *(v0 + 1480);
      *(v0 + 792) = *(v0 + 1464);
      *(v0 + 808) = v34;
      *(v0 + 824) = *(v0 + 1496);
      v35 = *(v0 + 1416);
      *(v0 + 728) = *(v0 + 1400);
      *(v0 + 744) = v35;
      v36 = *(v0 + 1448);
      *(v0 + 760) = *(v0 + 1432);
      *(v0 + 776) = v36;
      sub_10027545C(0, 0, 1, (v0 + 728));
      sub_1000F01E8(v0 + 1400);
    }

    *(v0 + 1856) = v3;
    v37 = *(v0 + 1840);
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Fetch activeConfig from prepareProofingUI", v40, 2u);
    }

    v41 = *(v0 + 1840);
    v42 = *(v0 + 1816);
    v43 = *(v0 + 1808);
    v44 = *(v0 + 1776);
    v45 = *(v0 + 1768);

    v46 = *(v42 + 8);
    *(v0 + 1864) = v46;
    v46(v41, v43);
    *(v0 + 1872) = *(v44 + 24);
    v47 = sub_10000BA08(v45, v1[3])[20];
    *(v0 + 1880) = v47;

    v48 = swift_task_alloc();
    *(v0 + 1888) = v48;
    *v48 = v0;
    v48[1] = sub_100272998;

    return sub_1002A8D74(v0 + 16, v47, 0);
  }

  else
  {
    (*(*(v0 + 1792) + 104))(*(v0 + 1800), enum case for DIPError.Code.workflowPaginationUnavailable(_:), *(v0 + 1784));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v50 = *(v0 + 1848);
    v51 = *(v0 + 1840);
    v52 = *(v0 + 1832);
    v53 = *(v0 + 1824);
    v54 = *(v0 + 1800);

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_100272998()
{
  v2 = *v1;
  v3 = *(*v1 + 1888);
  v4 = *v1;
  v2[237] = v0;

  v5 = v2[235];
  v6 = v2[234];
  if (v0)
  {
    v7 = v2[232];

    v8 = sub_100272FE4;
  }

  else
  {

    v8 = sub_100272B00;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100272B00()
{
  v41 = v0;
  result = *(v0 + 1856);
  v2 = *(result + 16);
  *(v0 + 1904) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 840);
    while (1)
    {
      *(v0 + 1928) = _swiftEmptyArrayStorage;
      *(v0 + 1920) = _swiftEmptyArrayStorage;
      *(v0 + 1912) = v3;
      v5 = *(v0 + 1856);
      if (v3 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = (v5 + 112 * v3);
      v7 = v6[5];
      v8 = v6[6];
      v9 = v6[8];
      *(v0 + 920) = v6[7];
      *(v0 + 936) = v9;
      *(v0 + 904) = v8;
      v10 = v6[3];
      v11 = v6[4];
      *v4 = v6[2];
      *(v0 + 856) = v10;
      *(v0 + 872) = v11;
      *(v0 + 888) = v7;
      v12 = *(v0 + 912);
      v13 = *(v0 + 920);
      if (!v13)
      {
        break;
      }

      if (v12 != 0xD00000000000001ELL || 0x8000000100703F80 != v13)
      {
        v14 = *(v0 + 912);
        v15 = *(v0 + 920);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v12 != 0xD000000000000017 || 0x8000000100703FA0 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v12 != 0xD000000000000016 || 0x8000000100703FC0 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v12 == 0x6E695F646579656BLL && v13 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            sub_1000F01B0(v0 + 840, v0 + 1064);
            v32 = swift_task_alloc();
            *(v0 + 1936) = v32;
            *v32 = v0;
            v32[1] = sub_100273088;
            v33 = *(v0 + 1776);

            return sub_10027428C(v4, v0 + 16);
          }

          break;
        }
      }

      v16 = *(v0 + 1832);
      sub_1000F01B0(v0 + 840, v0 + 1176);
      defaultLogger()();
      sub_1000F01B0(v0 + 840, v0 + 1288);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 840);
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 1832);
      v21 = *(v0 + 1808);
      v38 = *(v0 + 1816) + 8;
      v39 = *(v0 + 1864);
      if (v19)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v40 = v23;
        *v22 = 136315138;

        sub_1000F01E8(v0 + 840);
        v24 = sub_100141FE4(v12, v13, &v40);

        *(v22 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v22, 0xCu);
        sub_10000BB78(v23);
      }

      else
      {
        sub_1000F01E8(v0 + 840);
      }

      result = v39(v20, v21);
      v3 = *(v0 + 1912) + 1;
      if (v3 == *(v0 + 1904))
      {
        v25 = *(v0 + 1856);
        goto LABEL_19;
      }
    }

    v34 = *(v0 + 944);
    *(v0 + 1736) = sub_100308788(v12, v13);
    *(v0 + 1744) = v35;
    *(v0 + 1960) = v35;
    sub_1000F01B0(v0 + 840, v0 + 952);
    v36 = swift_task_alloc();
    *(v0 + 1968) = v36;
    *v36 = v0;
    v36[1] = sub_100273884;
    v37 = *(v0 + 1776);

    return sub_100274B50(v34);
  }

  else
  {
LABEL_19:
    v26 = *(v0 + 1848);
    v27 = *(v0 + 1840);
    v28 = *(v0 + 1832);
    v29 = *(v0 + 1824);
    v30 = *(v0 + 1800);

    sub_1000F2758(v0 + 16);

    v31 = *(v0 + 8);

    return v31(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100272FE4()
{
  v1 = v0[237];
  v2 = v0[231];
  v3 = v0[230];
  v4 = v0[229];
  v5 = v0[228];
  v6 = v0[225];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100273088(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1936);
  v9 = *v2;
  v3[243] = a1;
  v3[244] = v1;

  if (v1)
  {
    v5 = v3[240];
    v6 = v3[232];
    sub_1000F2758((v3 + 2));
    sub_1000F01E8((v3 + 105));

    v7 = sub_10027413C;
  }

  else
  {
    sub_1000F01E8((v3 + 105));
    v7 = sub_1002731D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002731D8()
{
  v63 = v0;
  v1 = *(v0 + 1944);
  if (v1)
  {
    v2 = (v0 + 1760);
    v3 = *(v0 + 1824);
    v4 = v1;
    defaultLogger()();
    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 1864);
    v10 = *(v0 + 1824);
    v11 = *(v0 + 1816);
    v12 = *(v0 + 1808);
    if (v8)
    {
      v59 = *(v0 + 1824);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v62 = v14;
      *v13 = 136446210;
      v15 = IdentityProofingUIConfig.view.getter();
      v58 = v9;
      v17 = sub_100141FE4(v15, v16, &v62);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s to be shown to the user", v13, 0xCu);
      sub_10000BB78(v14);

      v58(v59, v12);
    }

    else
    {

      v9(v10, v12);
    }

    v18 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_38:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v19 = *v2;
    v18 = *v2;
  }

  else
  {
    v18 = *(v0 + 1928);
    v19 = *(v0 + 1920);
  }

  v20 = *(v0 + 1912) + 1;
  if (v20 == *(v0 + 1904))
  {
LABEL_9:
    v21 = *(v0 + 1856);
    v22 = *(v0 + 1848);
    v23 = *(v0 + 1840);
    v24 = v18;
    v25 = *(v0 + 1832);
    v26 = *(v0 + 1824);
    v27 = *(v0 + 1800);

    sub_1000F2758(v0 + 16);

    v28 = *(v0 + 8);

    return v28(v24);
  }

  else
  {
    v2 = (v0 + 840);
    v56 = v19;
    v57 = v18;
    while (1)
    {
      *(v0 + 1928) = v18;
      *(v0 + 1920) = v19;
      *(v0 + 1912) = v20;
      v33 = *(v0 + 1856);
      if (v20 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v34 = (v33 + 112 * v20);
      v35 = v34[5];
      v36 = v34[6];
      v37 = v34[8];
      *(v0 + 920) = v34[7];
      *(v0 + 936) = v37;
      *(v0 + 904) = v36;
      v38 = v34[3];
      v39 = v34[4];
      *v2 = v34[2];
      *(v0 + 856) = v38;
      *(v0 + 872) = v39;
      *(v0 + 888) = v35;
      v40 = *(v0 + 912);
      v41 = *(v0 + 920);
      if (!v41)
      {
        break;
      }

      if (v40 != 0xD00000000000001ELL || 0x8000000100703F80 != v41)
      {
        v42 = *(v0 + 912);
        v43 = *(v0 + 920);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v40 != 0xD000000000000017 || 0x8000000100703FA0 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v40 != 0xD000000000000016 || 0x8000000100703FC0 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v40 == 0x6E695F646579656BLL && v41 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            sub_1000F01B0(v0 + 840, v0 + 1064);
            v50 = swift_task_alloc();
            *(v0 + 1936) = v50;
            *v50 = v0;
            v50[1] = sub_100273088;
            v51 = *(v0 + 1776);

            return sub_10027428C(v2, v0 + 16);
          }

          break;
        }
      }

      v44 = *(v0 + 1832);
      sub_1000F01B0(v0 + 840, v0 + 1176);
      defaultLogger()();
      sub_1000F01B0(v0 + 840, v0 + 1288);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 840);
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 1832);
      v49 = *(v0 + 1808);
      v60 = *(v0 + 1816) + 8;
      v61 = *(v0 + 1864);
      if (v47)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v62 = v31;
        *v30 = 136315138;

        sub_1000F01E8(v0 + 840);
        v32 = sub_100141FE4(v40, v41, &v62);

        *(v30 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v45, v46, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v30, 0xCu);
        sub_10000BB78(v31);
        v19 = v56;

        v18 = v57;
      }

      else
      {
        sub_1000F01E8(v0 + 840);
      }

      v61(v48, v49);
      v20 = *(v0 + 1912) + 1;
      if (v20 == *(v0 + 1904))
      {
        goto LABEL_9;
      }
    }

    v52 = *(v0 + 944);
    *(v0 + 1736) = sub_100308788(v40, v41);
    *(v0 + 1744) = v53;
    *(v0 + 1960) = v53;
    sub_1000F01B0(v0 + 840, v0 + 952);
    v54 = swift_task_alloc();
    *(v0 + 1968) = v54;
    *v54 = v0;
    v54[1] = sub_100273884;
    v55 = *(v0 + 1776);

    return sub_100274B50(v52);
  }
}

uint64_t sub_100273884(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1968);
  v12 = *v2;
  *(*v2 + 1976) = v1;

  if (v1)
  {
    v6 = *(v4 + 1960);
    v7 = *(v4 + 1920);
    v8 = *(v4 + 1856);
    sub_1000F2758(v4 + 16);

    v9 = sub_1002741E0;
  }

  else
  {
    v10 = *(v4 + 1736);
    *(v4 + 1984) = a1;
    *(v4 + 1992) = v10;
    *(v4 + 2000) = *(v4 + 880);
    *(v4 + 2008) = *(v4 + 864);
    *(v4 + 2024) = *(v4 + 848);
    *(v4 + 2032) = *(v4 + 856);
    v9 = sub_100273A00;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100273A00()
{
  v71 = v0;
  v1 = (v0 + 840);
  v2 = *(v0 + 2032);
  v67 = *(v0 + 2024);
  v3 = *(v0 + 2016);
  v4 = *(v0 + 2008);
  v5 = *(v0 + 2000);
  v6 = *(v0 + 1992);
  v7 = *(v0 + 1984);
  v8 = *(v0 + 1960);
  v9 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

  v10 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  sub_1000F01E8(v0 + 840);
  v11 = *(v0 + 1824);
  v12 = v10;
  defaultLogger()();
  v13 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1864);
  v18 = *(v0 + 1824);
  v19 = *(v0 + 1816);
  v20 = *(v0 + 1808);
  if (v16)
  {
    v21 = swift_slowAlloc();
    v66 = v17;
    v22 = swift_slowAlloc();
    v70[0] = v22;
    *v21 = 136446210;
    v23 = IdentityProofingUIConfig.view.getter();
    v64 = v18;
    v25 = sub_100141FE4(v23, v24, v70);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s to be shown to the user", v21, 0xCu);
    sub_10000BB78(v22);

    v66(v64, v20);
  }

  else
  {

    v17(v18, v20);
  }

  v26 = v13;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 1760) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1760) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_35:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v27 = *(v0 + 1760);
  v28 = *(v0 + 1912) + 1;
  if (v28 == *(v0 + 1904))
  {
LABEL_6:
    v29 = *(v0 + 1856);
    v30 = *(v0 + 1848);
    v31 = *(v0 + 1840);
    v32 = v27;
    v33 = *(v0 + 1832);
    v34 = *(v0 + 1824);
    v35 = *(v0 + 1800);

    sub_1000F2758(v0 + 16);

    v36 = *(v0 + 8);

    return v36(v32);
  }

  else
  {
    v26 = 0xD000000000000016;
    v65 = *(v0 + 1760);
    while (1)
    {
      *(v0 + 1928) = v27;
      *(v0 + 1920) = v27;
      *(v0 + 1912) = v28;
      v41 = *(v0 + 1856);
      if (v28 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v42 = (v41 + 112 * v28);
      v43 = v42[5];
      v44 = v42[6];
      v45 = v42[8];
      *(v0 + 920) = v42[7];
      *(v0 + 936) = v45;
      *(v0 + 904) = v44;
      v46 = v42[3];
      v47 = v42[4];
      *v1 = v42[2];
      *(v0 + 856) = v46;
      *(v0 + 872) = v47;
      *(v0 + 888) = v43;
      v48 = *(v0 + 912);
      v49 = *(v0 + 920);
      if (!v49)
      {
        break;
      }

      if (v48 != 0xD00000000000001ELL || 0x8000000100703F80 != v49)
      {
        v50 = *(v0 + 912);
        v51 = *(v0 + 920);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v48 != 0xD000000000000017 || 0x8000000100703FA0 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v48 != 0xD000000000000016 || 0x8000000100703FC0 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v48 == 0x6E695F646579656BLL && v49 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            sub_1000F01B0(v0 + 840, v0 + 1064);
            v58 = swift_task_alloc();
            *(v0 + 1936) = v58;
            *v58 = v0;
            v58[1] = sub_100273088;
            v59 = *(v0 + 1776);

            return sub_10027428C(v1, v0 + 16);
          }

          break;
        }
      }

      v52 = *(v0 + 1832);
      sub_1000F01B0(v0 + 840, v0 + 1176);
      defaultLogger()();
      sub_1000F01B0(v0 + 840, v0 + 1288);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 840);
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 1832);
      v57 = *(v0 + 1808);
      v68 = *(v0 + 1816) + 8;
      v69 = *(v0 + 1864);
      if (v55)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v70[0] = v39;
        *v38 = 136315138;

        sub_1000F01E8(v0 + 840);
        v40 = sub_100141FE4(v48, v49, v70);

        *(v38 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v53, v54, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v38, 0xCu);
        sub_10000BB78(v39);
        v27 = v65;

        v26 = 0xD000000000000016;
      }

      else
      {
        sub_1000F01E8(v0 + 840);
      }

      v69(v56, v57);
      v28 = *(v0 + 1912) + 1;
      if (v28 == *(v0 + 1904))
      {
        goto LABEL_6;
      }
    }

    v60 = *(v0 + 944);
    *(v0 + 1736) = sub_100308788(v48, v49);
    *(v0 + 1744) = v61;
    *(v0 + 1960) = v61;
    sub_1000F01B0(v0 + 840, v0 + 952);
    v62 = swift_task_alloc();
    *(v0 + 1968) = v62;
    *v62 = v0;
    v62[1] = sub_100273884;
    v63 = *(v0 + 1776);

    return sub_100274B50(v60);
  }
}

uint64_t sub_10027413C()
{
  v1 = v0[244];
  v2 = v0[231];
  v3 = v0[230];
  v4 = v0[229];
  v5 = v0[228];
  v6 = v0[225];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002741E0()
{
  sub_1000F01E8((v0 + 105));
  v1 = v0[247];
  v2 = v0[231];
  v3 = v0[230];
  v4 = v0[229];
  v5 = v0[228];
  v6 = v0[225];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10027428C(uint64_t a1, uint64_t a2)
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
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_100274368, 0, 0);
}

uint64_t sub_100274368()
{
  v55 = v0;
  v1 = v0[23];
  v2 = v0[16];
  defaultLogger()();
  sub_1000F01B0(v2, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_1000F01E8(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54 = v7;
    *v6 = 136315138;
    if (*(v5 + 80))
    {
      v8 = *(v0[16] + 72);
      v9 = *(v5 + 80);
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    v14 = v0[23];
    v15 = v0[19];
    v16 = v0[20];

    v17 = sub_100141FE4(v8, v9, &v54);

    *(v6 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "fetching the proofing view from the page type: %s", v6, 0xCu);
    sub_10000BB78(v7);

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  else
  {
    v10 = v0[23];
    v11 = v0[19];
    v12 = v0[20];

    v13 = *(v12 + 8);
    v13(v10, v11);
  }

  v18 = *(v0[16] + 40);
  if (v18[2])
  {
    v19 = v0[22];
    v21 = v18[4];
    v20 = v18[5];

    defaultLogger()();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[22];
    v26 = v0[19];
    v27 = v0[20];
    if (v24)
    {
      v53 = v13;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100141FE4(v21, v20, &v54);
      _os_log_impl(&_mh_execute_header, v22, v23, "The keyedInType is %s", v28, 0xCu);
      sub_10000BB78(v29);

      v13 = v53;
    }

    v13(v25, v26);
    v30 = v0[17];
    v0[24] = sub_100308788(v21, v20);
    v0[25] = v31;
    v32 = *(v30 + 456);
    if (v32 && *(v32 + 16))
    {
      v33 = sub_10003ADCC(v21, v20);
      v35 = v34;

      if (v35)
      {
        v36 = v0[21];
        v37 = (*(v32 + 56) + 152 * v33);
        v0[26] = v37[1];
        v0[27] = v37[2];
        v0[28] = v37[3];
        v0[29] = v37[4];
        v0[30] = v37[11];
        v0[31] = v37[12];

        defaultLogger()();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "an active config exists", v40, 2u);
        }

        v42 = v0[20];
        v41 = v0[21];
        v43 = v0[19];
        v44 = v0[16];

        v13(v41, v43);
        v45 = *(v44 + 104);
        v46 = swift_task_alloc();
        v0[32] = v46;
        *v46 = v0;
        v46[1] = sub_100274830;
        v47 = v0[18];

        return sub_100274B50(v45);
      }
    }

    else
    {
    }
  }

  v50 = v0[22];
  v49 = v0[23];
  v51 = v0[21];

  v52 = v0[1];

  return v52(0);
}

uint64_t sub_100274830(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v7 = sub_100274AA4;
  }

  else
  {
    *(v4 + 272) = a1;
    v7 = sub_100274958;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100274958()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v17 = *(v0 + 208);
  v18 = *(v0 + 224);
  v4 = *(v0 + 192);
  v19 = *(v0 + 200);
  v5 = *(v0 + 128);
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  v10 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

  v11 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 168);

  v15 = *(v0 + 8);

  return v15(v11);
}

uint64_t sub_100274AA4()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  v7 = v0[1];
  v8 = v0[33];

  return v7();
}

uint64_t sub_100274B50(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100274C1C, 0, 0);
}

uint64_t sub_100274C1C()
{
  v46 = v0;
  v1 = v0[3];
  if (*(v1 + 56))
  {
    v2 = v0[2];
    v3 = *(v1 + 48);
    String.lowercased()();
    if (v2)
    {
      v4 = v0[7];
      v5 = v0[2];
      defaultLogger()();

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[7];
      v11 = v0[4];
      v10 = v0[5];
      if (v8)
      {
        v42 = v0[4];
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v45 = v13;
        *v12 = 136315138;
        v14 = Array.description.getter();
        v41 = v9;
        v16 = sub_100141FE4(v14, v15, &v45);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v6, v7, "Fetching asset images for: %s", v12, 0xCu);
        sub_10000BB78(v13);

        (*(v10 + 8))(v41, v42);
      }

      else
      {

        (*(v10 + 8))(v9, v11);
      }

      v0[8] = *(v0[3] + 32);
      v28 = String.lowercased()();
      v0[9] = v28._object;

      v29 = swift_task_alloc();
      v0[10] = v29;
      *v29 = v0;
      v29[1] = sub_1002750A0;

      return sub_10026F6BC(v28._countAndFlagsBits, v28._object, v5);
    }

    v17 = v0[3];
  }

  v18 = v0[6];
  v19 = v0[2];
  defaultLogger()();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v22 = 136315394;
    if (*(v1 + 56))
    {
      v23 = *(v1 + 48);
      v24 = *(v1 + 56);
    }

    else
    {
      v24 = 0xE300000000000000;
      v23 = 7104878;
    }

    v31 = v0[5];
    v43 = v0[4];
    v44 = v0[6];
    v32 = v0[2];

    v33 = sub_100141FE4(v23, v24, &v45);

    *(v22 + 4) = v33;
    *(v22 + 12) = 2080;

    v34 = Array.description.getter();
    v36 = v35;

    v37 = sub_100141FE4(v34, v36, &v45);

    *(v22 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v20, v21, "Not fetching assets because state or image assets is nil. state=%s imageAssets=%s", v22, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v44, v43);
  }

  else
  {
    v26 = v0[5];
    v25 = v0[6];
    v27 = v0[4];

    (*(v26 + 8))(v25, v27);
  }

  v39 = v0[6];
  v38 = v0[7];

  v40 = v0[1];

  return v40(0);
}

uint64_t sub_1002750A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v8 = *v2;

  if (v1)
  {
    v10 = *(v4 + 48);
    v9 = *(v4 + 56);

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v14 = *(v4 + 48);
    v13 = *(v4 + 56);

    v15 = *(v8 + 8);

    return v15(a1);
  }
}

uint64_t sub_100275244()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

unint64_t sub_1002752C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for IQCType();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000BE18(v25, &qword_10083D4F8, &qword_1006DC0A0);
  }

  if (v18 < 1)
  {
    return sub_10000BE18(v25, &qword_10083D4F8, &qword_1006DC0A0);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_10000BE18(v25, &qword_10083D4F8, &qword_1006DC0A0);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_10027545C(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 112 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 112 * v7;
  a2 = (v9 + 32 + 112 * v8);
  if (result != a2 || result >= &a2[112 * v14])
  {
    result = memmove(result, a2, 112 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0x70uLL);
  a3 = &qword_10083E7D0;
  a4 = &unk_1006DC090;
  a2 = v18;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_10000BBC4(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_10000BBC4(v6, v18, &qword_10083E7D0, &unk_1006DC090);
}

uint64_t sub_100275578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002755E0()
{
  v1[17] = v0;
  v2 = type metadata accessor for Logger();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = type metadata accessor for Locale.Language();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v1[28] = v8;
  v9 = *(v8 - 8);
  v1[29] = v9;
  v10 = *(v9 + 64) + 15;
  v1[30] = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_100849BA0, &qword_1006D95F0) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1002757C0, 0, 0);
}

uint64_t sub_1002757C0()
{
  v50 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  (*(v4 + 16))(v2, v0[17] + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_locale, v3);
  Locale.language.getter();
  (*(v4 + 8))(v2, v3);
  Locale.Language.region.getter();
  (*(v6 + 8))(v5, v7);
  v8 = type metadata accessor for Locale.Region();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v1, 1, v8);
  v11 = v0[31];
  if (v10 == 1)
  {
    sub_10000BE18(v0[31], &unk_100849BA0, &qword_1006D95F0);
LABEL_9:
    v20 = v0[22];
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[22];
    v25 = v0[18];
    v26 = v0[19];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Invalid current region code. Will not refresh static content", v27, 2u);
    }

    (*(v26 + 8))(v24, v25);
    goto LABEL_12;
  }

  v12 = Locale.Region.identifier.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    goto LABEL_9;
  }

  v16 = *(v0[17] + 16);
  v0[13] = v12;
  v0[14] = v14;
  v17 = swift_task_alloc();
  *(v17 + 16) = v0 + 13;
  LOBYTE(v16) = sub_10035C8E4(sub_1000307C0, v17, v16);

  if ((v16 & 1) == 0)
  {
    v38 = v0[24];
    defaultLogger()();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[24];
    v43 = v0[18];
    v44 = v0[19];
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v45 = 136315138;
      v47 = sub_100141FE4(v12, v14, &v49);

      *(v45 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "current region %s is not in the allow list, will not attempt to refresh static workflow", v45, 0xCu);
      sub_10000BB78(v46);
    }

    else
    {
    }

    (*(v44 + 8))(v42, v43);
LABEL_12:
    v29 = v0[30];
    v28 = v0[31];
    v30 = v0[27];
    v32 = v0[23];
    v31 = v0[24];
    v34 = v0[21];
    v33 = v0[22];
    v35 = v0[20];

    v36 = v0[1];

    return v36();
  }

  v18 = v0[17];

  sub_100020260(v18 + 80, (v0 + 2));
  v19 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v0[32] = sub_1006146AC();
  sub_1006146AC();

  v48 = swift_task_alloc();
  v0[33] = v48;
  *v48 = v0;
  v48[1] = sub_100275E14;

  return sub_100614918(0xD000000000000024, 0x80000001007089E0, 0xD000000000000027, 0x8000000100708A10);
}

uint64_t sub_100275E14()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 256);

  if (v0)
  {
    v6 = sub_100276164;
  }

  else
  {
    v6 = sub_100275F48;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100275F48()
{
  *(v0 + 280) = sub_1006146AC();
  sub_1006146AC();

  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_100276030;

  return (sub_100614918)(0xD000000000000024, 0x8000000100708A40, 0xD000000000000027, 0x8000000100708A70);
}

uint64_t sub_100276030()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);

  if (v0)
  {
    v6 = sub_100276508;
  }

  else
  {
    v6 = sub_100276380;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100276164()
{
  v30 = v0;
  v1 = v0[34];
  v2 = v0[20];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v28 = v0[20];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[12];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v29);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "received an error during refreshing static content %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v28, v6);
  }

  else
  {
    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[18];

    (*(v16 + 8))(v15, v17);
  }

  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[27];
  v22 = v0[23];
  v21 = v0[24];
  v24 = v0[21];
  v23 = v0[22];
  v25 = v0[20];

  v26 = v0[1];

  return v26();
}