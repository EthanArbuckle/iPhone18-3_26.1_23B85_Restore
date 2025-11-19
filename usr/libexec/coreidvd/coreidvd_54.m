uint64_t sub_1005A3454(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 248);
  v7 = *v3;
  *(v5 + 256) = a2;
  *(v5 + 264) = v2;

  v8 = *(v5 + 104);
  *(v5 + 368);
  if (v2)
  {
    sub_1005A4980(v8);

    v9 = sub_1005A3E20;
  }

  else
  {
    *(v5 + 272) = a1;
    sub_1005A4980(v8);

    v9 = sub_1005A35E8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005A35E8()
{
  v1 = v0[34];
  v2 = v0[32];

  if (v2)
  {
    v3 = v0[32];
    if (*(v3 + 16))
    {
      v4 = v0[32];
      v5 = sub_10003ADCC(v0[8], v0[9]);
      if (v6)
      {
        v7 = v0[30];
        v8 = (*(v3 + 56) + 32 * v5);
        v9 = *v8;
        v10 = v8[1];
        v0[35] = v10;
        v0[36] = v8[2];
        v0[37] = v8[3];

        v11 = swift_task_alloc();
        v0[38] = v11;
        *v11 = v0;
        v11[1] = sub_1005A38E0;

        return sub_1005CE0D4(v9, v10);
      }
    }
  }

  v13 = v0[18];
  v30 = v0[19];
  v28 = v0[30];
  v29 = v0[17];
  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[8];
  _StringGuts.grow(_:)(39);

  v19._countAndFlagsBits = 0xD000000000000025;
  v19._object = 0x80000001007230D0;
  String.append(_:)(v19);
  (*(v14 + 104))(v15, enum case for DIPError.Code.invalidStaticImageAssetData(_:), v17);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v13 + 8))(v30, v29);
  v21 = v0[25];
  v20 = v0[26];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[16];
  v26 = v0[12];
  v25 = v0[13];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1005A38E0(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 304);
  v7 = *v3;
  v7[39] = a1;
  v7[40] = a2;
  v7[41] = v2;

  if (v2)
  {
    v8 = v7[37];
    v9 = v7[35];

    return _swift_task_switch(sub_1005A3FF8, 0, 0);
  }

  else
  {
    v10 = v7[35];
    v11 = v7[30];

    sub_10000B8B8(a1, a2);
    v12 = swift_task_alloc();
    v7[42] = v12;
    *v12 = v7;
    v12[1] = sub_1005A3A94;
    v13 = v7[37];
    v14 = v7[36];

    return sub_1005CE0D4(v14, v13);
  }
}

uint64_t sub_1005A3A94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 336);
  v7 = *v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = v2;

  v8 = v4[37];

  if (v2)
  {
    v9 = sub_1005A40DC;
  }

  else
  {
    v9 = sub_1005A3BD4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1005A3BD4()
{
  v1 = v0[25];
  sub_10000B8B8(v0[43], v0[44]);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Asset data downloaded successfully", v4, 2u);
  }

  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[39];
  v8 = v0[40];
  v9 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];
  v25 = v0[26];
  v26 = v0[22];
  v13 = v2;
  v14 = v0[19];
  v22 = v0[30];
  v23 = v0[18];
  v24 = v0[17];
  v27 = v0[16];
  v28 = v0[13];
  v29 = v0[12];
  v20 = v0[9];
  v21 = v0[8];

  v9(v10, v12);
  v15 = v14;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v16 = objc_allocWithZone(type metadata accessor for IdentityProofingAssetData());
  sub_10000B8B8(v7, v8);
  sub_10000B8B8(v6, v5);

  v17 = IdentityProofingAssetData.init(twoX:threeX:assetId:)();

  sub_10000B90C(v6, v5);
  sub_10000B90C(v7, v8);
  sub_10000B90C(v6, v5);
  sub_10000B90C(v7, v8);
  (*(v23 + 8))(v15, v24);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_1005A3E20()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[18];
  v13 = v0[17];
  v14 = v0[19];
  (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v3 + 8))(v14, v13);
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005A3FF8()
{
  v1 = v0[30];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];

  (*(v3 + 8))(v2, v4);
  v5 = v0[41];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[22];
  v9 = v0[19];
  v10 = v0[16];
  v12 = v0[12];
  v11 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005A40DC()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[30];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  sub_10000B90C(v1, v2);
  sub_10000B90C(v1, v2);
  (*(v5 + 8))(v4, v6);
  v7 = v0[45];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[22];
  v11 = v0[19];
  v12 = v0[16];
  v14 = v0[12];
  v13 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005A41DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005A4358, 0, 0);
}

uint64_t sub_1005A4358()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to refresh Identity Proofing Static asset ", v4, 2u);
  }

  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[10];

  (*(v6 + 8))(v5, v7);
  UUID.init()();
  UUID.uuidString.getter();
  v0[15] = v11;
  (*(v10 + 8))(v8, v9);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1005A44DC;

  return sub_1005D7070(1);
}

uint64_t sub_1005A44DC(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1005A45FC, 0, 0);
}

uint64_t sub_1005A45FC()
{
  if (v0[17])
  {
    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = sub_1005A47F4;
    v2 = v0[4];
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];

    return sub_1005CB61C(v5, v4, v2, v3);
  }

  else
  {
    v7 = v0[14];
    v8 = v0[11];
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.staticWebServiceUnavailable(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1005A47F4()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_1005A48F0, 0, 0);
}

uint64_t sub_1005A48F0()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005A4980(uint64_t a1)
{
  v2 = sub_100007224(&unk_10084A260, &qword_1006EA050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A49E8()
{
  v0 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100031898(v4, qword_1008823F8);
  v5 = sub_10003170C(v4, qword_1008823F8);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A4B18()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031898(v3, qword_100882410);
  sub_10003170C(v0, qword_100882410);
  if (qword_100832CD8 != -1)
  {
    swift_once();
  }

  v6 = sub_10003170C(v0, qword_1008823F8);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1005A4C70@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for Logger();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v42 - v6;
  v8 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v20 = [objc_opt_self() standardUserDefaults];
  static DaemonDefaultsKeys.bootstrapURL.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 stringForKey:v21];

  if (!v22)
  {
LABEL_9:
    if (qword_100832CE0 != -1)
    {
      swift_once();
    }

    v40 = sub_10003170C(v12, qword_100882410);
    return (*(v13 + 16))(v48, v40, v12);
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_1005A2220(v23, v25, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1005A51F8(v11);
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136446210;
      v30 = sub_100141FE4(v23, v25, &v49);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Not using bootstrap base url %{public}s from user defaults because it is not valid", v28, 0xCu);
      sub_10000BB78(v29);
    }

    else
    {
    }

    (*(v46 + 8))(v5, v47);
    goto LABEL_9;
  }

  v31 = *(v13 + 32);
  v31(v19, v11, v12);
  defaultLogger()();
  (*(v13 + 16))(v17, v19, v12);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44 = v7;
    v45 = v31;
    v35 = v34;
    v43 = swift_slowAlloc();
    v49 = v43;
    *v35 = 136446210;
    v36 = URL.absoluteString.getter();
    v38 = v37;
    (*(v13 + 8))(v17, v12);
    v39 = sub_100141FE4(v36, v38, &v49);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Using bootstrap base url from defaults: %{public}s", v35, 0xCu);
    sub_10000BB78(v43);

    v31 = v45;

    (*(v46 + 8))(v44, v47);
  }

  else
  {

    (*(v13 + 8))(v17, v12);
    (*(v46 + 8))(v7, v47);
  }

  return (v31)(v48, v19, v12);
}

uint64_t sub_1005A51F8(uint64_t a1)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1005A5260(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v51 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v51 - v25;
  if (a2)
  {
    sub_1005A2220(a1, a2, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1005A51F8(v18);
      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = a1;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v56 = v31;
        *v30 = 136446210;
        v32 = sub_100141FE4(v29, a2, &v56);

        *(v30 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v27, v28, "Not setting bootstrap to %{public}s because it is not a valid HTTPS url", v30, 0xCu);
        sub_10000BB78(v31);
      }

      else
      {
      }

      (*(v55 + 8))(v12, v54);
    }

    else
    {

      (*(v20 + 32))(v26, v18, v19);
      defaultLogger()();
      (*(v20 + 16))(v24, v26, v19);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v52 = v40;
        v53 = swift_slowAlloc();
        v56 = v53;
        *v40 = 136446210;
        v51 = URL.absoluteString.getter();
        v42 = v41;
        v43 = *(v20 + 8);
        v43(v24, v19);
        v44 = v43;
        v45 = sub_100141FE4(v51, v42, &v56);

        v46 = v52;
        *(v52 + 1) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "Setting bootstrap base URL to %{public}s", v46, 0xCu);
        sub_10000BB78(v53);
      }

      else
      {

        v47 = *(v20 + 8);
        v47(v24, v19);
        v44 = v47;
      }

      (*(v55 + 8))(v14, v54);
      v48 = [objc_opt_self() standardUserDefaults];
      URL.absoluteString.getter();
      v49 = String._bridgeToObjectiveC()();

      static DaemonDefaultsKeys.bootstrapURL.getter();
      v50 = String._bridgeToObjectiveC()();

      [v48 setObject:v49 forKey:v50];

      v44(v26, v19);
    }
  }

  else
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Clearing bootstrap base URL", v35, 2u);
    }

    (*(v55 + 8))(v9, v54);
    v36 = [objc_opt_self() standardUserDefaults];
    static DaemonDefaultsKeys.bootstrapURL.getter();
    v37 = String._bridgeToObjectiveC()();

    [v36 removeObjectForKey:v37];
  }
}

uint64_t sub_1005A58C4(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 41) = a1;
  v3 = type metadata accessor for DIPError.Code();
  *(v2 + 88) = v3;
  v4 = *(v3 - 8);
  *(v2 + 96) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  *(v2 + 112) = v6;
  v7 = *(v6 - 8);
  *(v2 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v2 + 152) = v9;
  v10 = *(v9 - 8);
  *(v2 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v12 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v13 = type metadata accessor for DIPSignpost();
  *(v2 + 192) = v13;
  v14 = *(v13 - 8);
  *(v2 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1005A5AEC, 0, 0);
}

uint64_t sub_1005A667C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_1005A7100;
  }

  else
  {
    v6 = sub_1005A67B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005A67B0()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);

  v96 = *(v5 + 8);
  v96(v3, v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 280);
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005B05A0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v92 = v7;
  v94 = v6;
  v90 = v8;
  if (v10)
  {
    if (v9)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 144);
      v15 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v15 removeCachedResponseForRequest:isa];
    }

    v17 = *(v0 + 240);
    v81 = *(v0 + 232);
    v18 = *(v0 + 176);
    v19 = *(v0 + 152);
    v74 = *(v0 + 104);
    v97 = *(v0 + 96);
    v76 = *(v0 + 88);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v20 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v21 = *(*v20 + 72);
    v22 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006BF520;
    v24 = v23 + v22;
    v25 = (v23 + v22 + v20[14]);
    v26 = enum case for DIPError.PropertyKey.serverURL(_:);
    v86 = type metadata accessor for DIPError.PropertyKey();
    v84 = *(*(v86 - 8) + 104);
    v84(v24, v26, v86);
    v25[3] = v19;
    v25[4] = sub_1005AFC38(&qword_1008418B0, &type metadata accessor for URL);
    v27 = sub_100032DBC(v25);
    v81(v27, v18, v19);
    swift_errorRetain();
    sub_10003C9C0(v23);
    swift_setDeallocating();
    sub_10000BE18(v24, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v79 = enum case for DIPError.Code.internalError(_:);
    v82 = *(v97 + 104);
    v82(v74);
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v94, v92);
    v71 = *(v0 + 216);
    v28 = *(v0 + 200);
    v72 = *(v0 + 224);
    v73 = *(v0 + 192);
    v75 = *(v0 + 208);
    v77 = *(v0 + 184);
    v70 = *(v0 + 176);
    v91 = *(v0 + 168);
    v68 = *(v0 + 144);
    v69 = *(v0 + 152);
    v93 = *(v0 + 136);
    v95 = *(v0 + 128);
    v66 = *(v0 + 120);
    v67 = *(v0 + 112);
    v29 = *(v0 + 104);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v32 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v33 = *(*v32 + 72);
    v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1006BF520;
    v36 = v35 + v34;
    v37 = (v36 + v32[14]);
    v84(v36, enum case for DIPError.PropertyKey.conversationID(_:), v86);
    v38 = *(v31 + 48);
    v39 = *(v31 + 56);
    v37[3] = &type metadata for String;
    v37[4] = &protocol witness table for String;
    *v37 = v38;
    v37[1] = v39;
    swift_errorRetain();

    sub_10003C9C0(v35);
    swift_setDeallocating();
    sub_10000BE18(v36, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (v82)(v29, v79, v30);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v96(v68, v67);
    v71(v70, v69);
    (*(v28 + 8))(v75, v73);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v98 = *(v0 + 48);
    v89 = *(v0 + 56);
    if (v9)
    {
      v42._countAndFlagsBits = 0xD000000000000016;
      v43._countAndFlagsBits = 0x6437623761323661;
      v42._object = 0x8000000100723640;
      v43._object = 0xE800000000000000;
      logMilestone(tag:description:)(v43, v42);
    }

    else
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v44 = qword_100882498;
      v45 = objc_allocWithZone(NSCachedURLResponse);
      v46 = Data._bridgeToObjectiveC()().super.isa;
      v47 = [v45 initWithResponse:v8 data:v46];

      v48 = sub_100600EC4(v47, 0, 1);
      if (v48)
      {
        v49 = v48;
        v50 = *(v0 + 144);
        v51 = URLRequest._bridgeToObjectiveC()().super.isa;
        v52 = type metadata accessor for DIPURLCache();
        *(v0 + 64) = v44;
        *(v0 + 72) = v52;
        objc_msgSendSuper2((v0 + 64), "storeCachedResponse:forRequest:", v49, v51);

        v47 = v51;
      }

      v53 = *(v0 + 208);

      v54._countAndFlagsBits = 0xD000000000000018;
      v55._countAndFlagsBits = 0x3032326230323266;
      v54._object = 0x8000000100723620;
      v55._object = 0xE800000000000000;
      logMilestone(tag:description:)(v55, v54);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v57 = *(v0 + 216);
    v56 = *(v0 + 224);
    v59 = *(v0 + 200);
    v58 = *(v0 + 208);
    v78 = *(v0 + 192);
    v80 = *(v0 + 184);
    v60 = *(v0 + 176);
    v62 = *(v0 + 144);
    v61 = *(v0 + 152);
    v83 = *(v0 + 168);
    v85 = *(v0 + 136);
    v87 = *(v0 + 128);
    v64 = *(v0 + 112);
    v63 = *(v0 + 120);
    v88 = *(v0 + 104);

    sub_10000B90C(v94, v92);
    v96(v62, v64);
    v57(v60, v61);
    (*(v59 + 8))(v58, v78);

    v65 = *(v0 + 8);

    return v65(v98, v89);
  }
}

uint64_t sub_1005A7100()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v47 = v0[29];
  v45 = v0[22];
  v5 = v0[19];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  v49 = v0[13];
  v53 = v0[12];
  v9 = v0[11];

  v52 = *(v8 + 8);
  v52(v6, v7);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006BF520;
  v14 = v13 + v12;
  v15 = (v13 + v12 + v10[14]);
  v16 = enum case for DIPError.PropertyKey.serverURL(_:);
  v17 = type metadata accessor for DIPError.PropertyKey();
  v51 = *(*(v17 - 8) + 104);
  v51(v14, v16, v17);
  v15[3] = v5;
  v15[4] = sub_1005AFC38(&qword_1008418B0, &type metadata accessor for URL);
  v18 = sub_100032DBC(v15);
  v47(v18, v45, v5);
  swift_errorRetain();
  sub_10003C9C0(v13);
  swift_setDeallocating();
  sub_10000BE18(v14, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v43 = enum case for DIPError.Code.internalError(_:);
  v44 = *(v53 + 104);
  v44(v49);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v38 = v0[27];
  v39 = v0[28];
  v19 = v0[25];
  v40 = v0[24];
  v41 = v0[26];
  v42 = v0[23];
  v46 = v0[21];
  v36 = v0[19];
  v37 = v0[22];
  v35 = v0[18];
  v48 = v0[17];
  v50 = v0[16];
  v33 = v0[15];
  v34 = v0[14];
  v20 = v0[13];
  v22 = v0[10];
  v21 = v0[11];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v23 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v24 = *(*v23 + 72);
  v25 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006BF520;
  v27 = v26 + v25;
  v28 = (v27 + v23[14]);
  v51(v27, enum case for DIPError.PropertyKey.conversationID(_:), v17);
  v29 = *(v22 + 48);
  v30 = *(v22 + 56);
  v28[3] = &type metadata for String;
  v28[4] = &protocol witness table for String;
  *v28 = v29;
  v28[1] = v30;
  swift_errorRetain();

  sub_10003C9C0(v26);
  swift_setDeallocating();
  sub_10000BE18(v27, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (v44)(v20, v43, v21);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v52(v35, v34);
  v38(v37, v36);
  (*(v19 + 8))(v41, v40);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1005A770C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = type metadata accessor for Logger();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v2[22] = v8;
  v9 = *(v8 - 8);
  v2[23] = v9;
  v10 = *(v9 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v2[27] = v11;
  v12 = *(v11 - 8);
  v2[28] = v12;
  v13 = *(v12 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1005A7930, 0, 0);
}

uint64_t sub_1005A7930()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[23];
  v36 = v0[21];
  v9 = v0[15];
  v33 = v0[22];
  v34 = v0[14];
  Date.init()();
  static Date.- infix(_:_:)();
  v10 = *(v3 + 8);
  v0[32] = v10;
  v0[33] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v6);
  Date.init()();
  static Date.+ infix(_:_:)();
  v10(v2, v6);
  sub_1005AE160(v7);
  v11 = *(v9 + 32);
  v12 = *(v9 + 40);
  URL.appendingPathComponent(_:)();
  v13 = *(v8 + 8);
  v0[34] = v13;
  v0[35] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v7, v33);
  sub_1005AE358(v34, v36);
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[21];
  v16 = v0[22];
  (*(v15 + 56))(v17, 0, 1, v16);
  (*(v15 + 32))(v14, v17, v16);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[27];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[15];
  v35 = v0[14];
  v37 = qword_100882498;
  v24 = *(v19 + 16);
  v24(v21, v0[31], v20);
  v25 = *(v19 + 56);
  v25(v21, 0, 1, v20);
  v24(v22, v18, v20);
  v25(v22, 0, 1, v20);

  sub_1005B05F4(v35, (v0 + 2));
  v26 = swift_task_alloc();
  v0[36] = v26;
  *v26 = v0;
  v26[1] = sub_1005A7E00;
  v27 = v0[24];
  v29 = v0[19];
  v28 = v0[20];
  v31 = v0[14];
  v30 = v0[15];

  return sub_100604AA4(v27, 0, v28, v29, v37, v30, v31);
}

uint64_t sub_1005A7E00()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 112);
  v7 = *v0;

  sub_10054B698(v5);

  sub_10000BE18(v3, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005A7F94, 0, 0);
}

uint64_t sub_1005A7F94()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[22];
  v2(v0[24], v9);
  v2(v8, v9);
  v4(v6, v7);
  v4(v5, v7);
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[29];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005A80B8()
{
  v1[2] = v0;
  v2 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005A823C, 0, 0);
}

uint64_t sub_1005A823C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v28 = v0[5];
  v9 = v0[2];
  Date.init()();
  static Date.- infix(_:_:)();
  v10 = *(v3 + 8);
  v0[14] = v10;
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v5);
  Date.init()();
  static Date.+ infix(_:_:)();
  v10(v4, v5);
  sub_1005AE160(v7);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  URL.appendingPathComponent(_:)();
  v13 = *(v8 + 8);
  v0[16] = v13;
  v0[17] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v7, v28);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  v18 = v0[3];
  v17 = v0[4];
  v19 = v0[2];
  v29 = qword_100882498;
  v20 = *(v16 + 16);
  v20(v17, v0[13], v15);
  v21 = *(v16 + 56);
  v21(v17, 0, 1, v15);
  v20(v18, v14, v15);
  v21(v18, 0, 1, v15);

  v22 = swift_task_alloc();
  v0[18] = v22;
  *v22 = v0;
  v22[1] = sub_1005A84A8;
  v23 = v0[8];
  v25 = v0[3];
  v24 = v0[4];
  v26 = v0[2];

  return sub_1006069CC(v23, 0, v24, v25, v29, v26);
}

uint64_t sub_1005A84A8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v6 = *v0;

  sub_10000BE18(v3, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005A8620, 0, 0);
}

uint64_t sub_1005A8620()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v12 = *(v0 + 24);
  (*(v0 + 128))(*(v0 + 64), *(v0 + 40));
  v2(v4, v7);
  v2(v5, v7);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1005A8714(uint64_t a1, char a2)
{
  *(v3 + 41) = a2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 96) = v4;
  v5 = *(v4 - 8);
  *(v3 + 104) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  *(v3 + 120) = v7;
  v8 = *(v7 - 8);
  *(v3 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v3 + 160) = v10;
  v11 = *(v10 - 8);
  *(v3 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v13 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  *(v3 + 208) = v14;
  v15 = *(v14 - 8);
  *(v3 + 216) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1005A8948, 0, 0);
}

uint64_t sub_1005A93DC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);

  if (v0)
  {
    v6 = sub_1005A9D24;
  }

  else
  {
    v6 = sub_1005A9510;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005A9510()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);

  v91 = *(v5 + 8);
  v91(v3, v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 296);
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005AFC80();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v89 = v8;
  if (v10)
  {
    if (v9)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 152);
      v15 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v15 removeCachedResponseForRequest:isa];
    }

    v17 = *(v0 + 96);
    v87 = enum case for DIPError.Code.internalError(_:);
    v85 = *(*(v0 + 104) + 104);
    v85(*(v0 + 112));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v6, v7);
    v74 = *(v0 + 232);
    v76 = *(v0 + 240);
    v18 = *(v0 + 216);
    v90 = *(v0 + 224);
    v83 = *(v0 + 208);
    v71 = *(v0 + 176);
    v72 = *(v0 + 192);
    v69 = *(v0 + 152);
    v70 = *(v0 + 160);
    v67 = *(v0 + 128);
    v68 = *(v0 + 120);
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);
    v66 = *(v0 + 96);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v21 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v22 = *(*v21 + 72);
    v23 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1006BF520;
    v25 = v24 + v23;
    v26 = (v25 + v21[14]);
    v27 = enum case for DIPError.PropertyKey.conversationID(_:);
    v28 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v28 - 8) + 104))(v25, v27, v28);
    v29 = *(v20 + 48);
    v30 = *(v20 + 56);
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = v29;
    v26[1] = v30;
    swift_errorRetain();

    sub_10003C9C0(v24);
    swift_setDeallocating();
    sub_10000BE18(v25, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (v85)(v19, v87, v66);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v91(v69, v68);
    v74(v71, v70);
    v74(v72, v70);
    (*(v18 + 8))(v90, v83);
    v31 = *(v0 + 224);
    v33 = *(v0 + 192);
    v32 = *(v0 + 200);
    v35 = *(v0 + 176);
    v34 = *(v0 + 184);
    v37 = *(v0 + 144);
    v36 = *(v0 + 152);
    v38 = *(v0 + 136);
    v39 = *(v0 + 112);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v86 = *(v0 + 56);
    v88 = *(v0 + 48);
    v84 = v6;
    v77 = v7;
    if (v9)
    {
      v42._countAndFlagsBits = 0xD000000000000025;
      v43._countAndFlagsBits = 0x3465353336353365;
      v42._object = 0x80000001007234E0;
      v43._object = 0xE800000000000000;
      logMilestone(tag:description:)(v43, v42);
    }

    else
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v44 = qword_100882498;
      v45 = objc_allocWithZone(NSCachedURLResponse);
      v46 = Data._bridgeToObjectiveC()().super.isa;
      v47 = [v45 initWithResponse:v8 data:v46];

      v48 = sub_100600EC4(v47, 0, 1);
      if (v48)
      {
        v49 = v48;
        v50 = *(v0 + 152);
        v51 = URLRequest._bridgeToObjectiveC()().super.isa;
        v52 = type metadata accessor for DIPURLCache();
        *(v0 + 64) = v44;
        *(v0 + 72) = v52;
        objc_msgSendSuper2((v0 + 64), "storeCachedResponse:forRequest:", v49, v51);

        v47 = v51;
      }

      v53 = *(v0 + 224);

      v54._countAndFlagsBits = 0x6565626362666539;
      v55._countAndFlagsBits = 0xD000000000000027;
      v55._object = 0x80000001007234B0;
      v54._object = 0xE800000000000000;
      logMilestone(tag:description:)(v54, v55);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v57 = *(v0 + 232);
    v56 = *(v0 + 240);
    v59 = *(v0 + 216);
    v58 = *(v0 + 224);
    v73 = *(v0 + 192);
    v75 = *(v0 + 208);
    v78 = *(v0 + 200);
    v79 = *(v0 + 184);
    v60 = *(v0 + 176);
    v61 = *(v0 + 152);
    v62 = *(v0 + 160);
    v80 = *(v0 + 144);
    v81 = *(v0 + 136);
    v63 = *(v0 + 120);
    v64 = *(v0 + 128);
    v82 = *(v0 + 112);

    sub_10000B90C(v84, v77);
    v91(v61, v63);
    v57(v60, v62);
    v57(v73, v62);
    (*(v59 + 8))(v58, v75);

    v65 = *(v0 + 8);

    return v65(v88, v86);
  }
}

uint64_t sub_1005A9D24()
{
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v54 = v0[31];
  v53 = v0[24];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v58 = v0[13];
  v51 = v0[12];

  v57 = *(v8 + 8);
  v57(v6, v7);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006BF520;
  v14 = v13 + v12;
  v15 = (v13 + v12 + v10[14]);
  v16 = enum case for DIPError.PropertyKey.serverURL(_:);
  v17 = type metadata accessor for DIPError.PropertyKey();
  v56 = *(*(v17 - 8) + 104);
  v56(v14, v16, v17);
  v15[3] = v5;
  v15[4] = sub_1005AFC38(&qword_1008418B0, &type metadata accessor for URL);
  v18 = sub_100032DBC(v15);
  v54(v18, v53, v5);
  swift_errorRetain();
  sub_10003C9C0(v13);
  swift_setDeallocating();
  sub_10000BE18(v14, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  LODWORD(v53) = enum case for DIPError.Code.internalError(_:);
  v55 = *(v58 + 104);
  v55(v9);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v48 = v0[29];
  v49 = v0[30];
  v19 = v0[27];
  v50 = v0[26];
  v52 = v0[28];
  v47 = v0[24];
  v46 = v0[22];
  v44 = v0[19];
  v45 = v0[20];
  v42 = v0[16];
  v43 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[12];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v23 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v24 = *(*v23 + 72);
  v25 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006BF520;
  v27 = v26 + v25;
  v28 = (v27 + v23[14]);
  v56(v27, enum case for DIPError.PropertyKey.conversationID(_:), v17);
  v29 = *(v21 + 48);
  v30 = *(v21 + 56);
  v28[3] = &type metadata for String;
  v28[4] = &protocol witness table for String;
  *v28 = v29;
  v28[1] = v30;
  swift_errorRetain();

  sub_10003C9C0(v26);
  swift_setDeallocating();
  sub_10000BE18(v27, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (v55)(v20, v53, v22);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v57(v44, v43);
  v48(v46, v45);
  v48(v47, v45);
  (*(v19 + 8))(v52, v50);
  v31 = v0[28];
  v33 = v0[24];
  v32 = v0[25];
  v35 = v0[22];
  v34 = v0[23];
  v37 = v0[18];
  v36 = v0[19];
  v38 = v0[17];
  v39 = v0[14];

  v40 = v0[1];

  return v40();
}

uint64_t sub_1005AA350()
{
  v0 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100031898(v4, qword_100848E68);
  v5 = sub_10003170C(v4, qword_100848E68);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id sub_1005AA480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = &v3[OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
  *v14 = 0x726F5F646E65732FLL;
  *(v14 + 1) = 0xE900000000000064;
  v15 = &v3[OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
  *v15 = 0x746F5F646E65732FLL;
  *(v15 + 1) = 0xE900000000000064;
  v16 = &v3[OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_LABEL_ENDPOINT];
  *v16 = 0x6C6F5F646E65732FLL;
  *(v16 + 1) = 0xE900000000000064;
  sub_1005AFB08(a3, &v24 - v12, type metadata accessor for DIPHTTPSession.Configuration);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v17 = &v3[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *v17 = a1;
  *(v17 + 1) = a2;
  sub_100020260(v26, v25);
  sub_1005AFB08(v13, v11, type metadata accessor for DIPHTTPSession.Configuration);
  v18 = type metadata accessor for DIPHTTPSession(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v25, v11);
  v21 = type metadata accessor for DIPWebService();
  v24.receiver = v3;
  v24.super_class = v21;
  v22 = objc_msgSendSuper2(&v24, "init");
  sub_1005AFAA8(a3, type metadata accessor for DIPHTTPSession.Configuration);
  sub_10000BB78(v26);
  sub_1005AFAA8(v13, type metadata accessor for DIPHTTPSession.Configuration);
  return v22;
}

uint64_t sub_1005AA678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[250] = v7;
  v8[249] = a7;
  v8[248] = a6;
  v8[247] = a5;
  v8[246] = a4;
  v8[245] = a3;
  v8[244] = a2;
  v8[243] = a1;
  v9 = type metadata accessor for DIPError.Code();
  v8[251] = v9;
  v10 = *(v9 - 8);
  v8[252] = v10;
  v11 = *(v10 + 64) + 15;
  v8[253] = swift_task_alloc();
  v12 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v8[254] = swift_task_alloc();
  v13 = type metadata accessor for DIPSignpost();
  v8[255] = v13;
  v14 = *(v13 - 8);
  v8[256] = v14;
  v15 = *(v14 + 64) + 15;
  v8[257] = swift_task_alloc();

  return _swift_task_switch(sub_1005AA7DC, 0, 0);
}

uint64_t sub_1005AA7DC()
{
  v1 = v0[257];
  v2 = v0[254];
  v3 = v0[248];
  v4 = v0[244];
  v5 = v0[243];
  static DaemonSignposts.ordRequest.getter();
  DIPSignpost.init(_:)();
  sub_100007224(&qword_100838818, &unk_1006D0F90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  *(v6 + 32) = 0x692D656C646E7562;
  *(v6 + 40) = 0xE900000000000064;
  *(v6 + 48) = v5;
  *(v6 + 56) = v4;

  v7 = sub_10003D21C(v6);
  swift_setDeallocating();
  sub_10000BE18(v6 + 32, &qword_100838820, &unk_1006DB6B0);
  swift_deallocClassInstance();
  v0[242] = v7;
  if (v3)
  {
    v8 = v0[248];
    v9 = v0[247];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    sub_10014BC18(v9, v8, v10, v12);
  }

  if (v0[246])
  {
    v13 = v0[245];
    v14 = v0[246];
LABEL_12:
    v0[259] = v14;
    v0[258] = v13;
    v36 = v0[250];
    v37 = v0[249];
    v0[241] = type metadata accessor for ORDRequest(0);
    v38 = sub_100032DBC(v0 + 238);
    sub_1005AFB08(v37, v38, type metadata accessor for ORDRequest);
    v39 = *(v36 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_ORD_ENDPOINT);
    v40 = *(v36 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_ORD_ENDPOINT + 8);

    v41._countAndFlagsBits = v39;
    v41._object = v40;
    String.append(_:)(v41);
    v0[260] = v14;
    v42 = v0[242];
    v0[261] = v42;
    v43 = swift_task_alloc();
    v0[262] = v43;
    *v43 = v0;
    v43[1] = sub_1005AAEE8;
    v44 = v0[250];

    return sub_1005AC528((v0 + 238), v13, v14, v42);
  }

  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v15 = *(qword_100882440 + 56);
  os_unfair_lock_lock(v15 + 126);
  memcpy(v0 + 63, &v15[4], 0x1E8uLL);
  sub_100394180((v0 + 63), (v0 + 124));
  os_unfair_lock_unlock(v15 + 126);
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) != 1)
  {
    v35 = v0[246];
    sub_1000AA624((v0 + 6), (v0 + 185));
    sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
    v13 = v0[26];
    v14 = v0[27];

    sub_1000AA65C((v0 + 6));
    goto LABEL_12;
  }

  v16 = v0[253];
  v17 = v0[252];
  v18 = v0[251];
  v19 = v0[242];

  v50 = *(v17 + 104);
  v50(v16, enum case for DIPError.Code.unexpectedDaemonState(_:), v18);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v46 = enum case for DIPError.Code.internalError(_:);
  v20 = v0[256];
  v47 = v0[255];
  v48 = v0[257];
  v49 = v0[254];
  v21 = v0[253];
  v45 = v0[251];
  v22 = v0[250];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v23 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v24 = *(*v23 + 72);
  v25 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006BF520;
  v27 = v26 + v25;
  v28 = (v27 + v23[14]);
  v29 = enum case for DIPError.PropertyKey.conversationID(_:);
  v30 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v30 - 8) + 104))(v27, v29, v30);
  v31 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v32 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v28[3] = &type metadata for String;
  v28[4] = &protocol witness table for String;
  *v28 = v31;
  v28[1] = v32;
  swift_errorRetain();

  sub_10003C9C0(v26);
  swift_setDeallocating();
  sub_10000BE18(v27, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v50(v21, v46, v45);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v20 + 8))(v48, v47);

  v33 = v0[1];

  return v33();
}

uint64_t sub_1005AAEE8()
{
  v2 = *v1;
  v3 = (*v1)[262];
  v9 = *v1;
  (*v1)[263] = v0;

  if (v0)
  {
    v4 = sub_1005AB11C;
  }

  else
  {
    v5 = v2[261];
    v6 = v2[260];
    v7 = v2[259];

    sub_10000BB78(v2 + 238);
    v4 = sub_1005AB02C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005AB02C()
{
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[255];
  v4 = v0[254];
  v5 = v0[253];
  v6._countAndFlagsBits = 0x6462386637643638;
  v7._object = 0x8000000100723440;
  v6._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0xD000000000000014;
  logMilestone(tag:description:)(v6, v7);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005AB11C()
{
  v1 = v0[263];
  v2 = v0[261];
  v3 = v0[260];
  v4 = v0[259];
  v5 = v0[258];
  v6 = v0[253];
  v36 = v0[252];
  v31 = v0[251];

  sub_10000BB78(v0 + 238);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v7 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = v10 + v9;
  v12 = (v10 + v9 + v7[14]);
  v13 = enum case for DIPError.PropertyKey.serverURL(_:);
  v14 = type metadata accessor for DIPError.PropertyKey();
  v35 = *(*(v14 - 8) + 104);
  v35(v11, v13, v14);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v5;
  v12[1] = v4;
  swift_errorRetain();
  sub_10003C9C0(v10);
  swift_setDeallocating();
  sub_10000BE18(v11, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v33 = enum case for DIPError.Code.internalError(_:);
  v34 = *(v36 + 104);
  v34(v6);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15 = v0[256];
  v29 = v0[255];
  v30 = v0[257];
  v32 = v0[254];
  v16 = v0[253];
  v17 = v0[251];
  v18 = v0[250];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v19 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v20 = *(*v19 + 72);
  v21 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006BF520;
  v23 = v22 + v21;
  v24 = (v23 + v19[14]);
  v35(v23, enum case for DIPError.PropertyKey.conversationID(_:), v14);
  v25 = *(v18 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v26 = *(v18 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v24[3] = &type metadata for String;
  v24[4] = &protocol witness table for String;
  *v24 = v25;
  v24[1] = v26;
  swift_errorRetain();

  sub_10003C9C0(v22);
  swift_setDeallocating();
  sub_10000BE18(v23, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (v34)(v16, v33, v17);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v15 + 8))(v30, v29);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1005AB670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[245] = v3;
  v4[244] = a3;
  v4[243] = a2;
  v4[242] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v4[246] = v5;
  v6 = *(v5 - 8);
  v4[247] = v6;
  v7 = *(v6 + 64) + 15;
  v4[248] = swift_task_alloc();
  v8 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[249] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v4[250] = v9;
  v10 = *(v9 - 8);
  v4[251] = v10;
  v11 = *(v10 + 64) + 15;
  v4[252] = swift_task_alloc();

  return _swift_task_switch(sub_1005AB7C4, 0, 0);
}

uint64_t sub_1005AB7C4()
{
  v1 = v0[252];
  v2 = v0[249];
  v3 = v0[244];
  static DaemonSignposts.otdRequest.getter();
  DIPSignpost.init(_:)();
  if (v3)
  {
    v4 = v0[243];
    v5 = v0[244];
LABEL_10:
    v0[254] = v5;
    v0[253] = v4;
    v24 = v0[245];
    v25 = v0[242];
    v0[241] = type metadata accessor for OTDRequest(0);
    v26 = sub_100032DBC(v0 + 238);
    sub_1005AFB08(v25, v26, type metadata accessor for OTDRequest);
    v27 = *(v24 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT);
    v28 = *(v24 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT + 8);

    v29._countAndFlagsBits = v27;
    v29._object = v28;
    String.append(_:)(v29);
    v0[255] = v5;
    v30 = swift_task_alloc();
    v0[256] = v30;
    *v30 = v0;
    v30[1] = sub_1005ABDC4;
    v31 = v0[245];

    return sub_1005AC528((v0 + 238), v4, v5, 0);
  }

  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100882440 + 56);
  os_unfair_lock_lock(v6 + 126);
  memcpy(v0 + 63, &v6[4], 0x1E8uLL);
  sub_100394180((v0 + 63), (v0 + 124));
  os_unfair_lock_unlock(v6 + 126);
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) != 1)
  {
    v23 = v0[244];
    sub_1000AA624((v0 + 6), (v0 + 185));
    sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
    v4 = v0[26];
    v5 = v0[27];

    sub_1000AA65C((v0 + 6));
    goto LABEL_10;
  }

  v7 = *(v0[247] + 104);
  v7(v0[248], enum case for DIPError.Code.serverUnavailable(_:), v0[246]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v33 = enum case for DIPError.Code.internalError(_:);
  v8 = v0[251];
  v34 = v0[250];
  v35 = v0[252];
  v36 = v0[249];
  v9 = v0[248];
  v32 = v0[246];
  v10 = v0[245];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF520;
  v15 = v14 + v13;
  v16 = (v15 + v11[14]);
  v17 = enum case for DIPError.PropertyKey.conversationID(_:);
  v18 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v18 - 8) + 104))(v15, v17, v18);
  v19 = *(v10 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v20 = *(v10 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = v19;
  v16[1] = v20;
  swift_errorRetain();

  sub_10003C9C0(v14);
  swift_setDeallocating();
  sub_10000BE18(v15, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v7(v9, v33, v32);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v8 + 8))(v35, v34);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005ABDC4()
{
  v2 = *v1;
  v3 = (*v1)[256];
  v8 = *v1;
  (*v1)[257] = v0;

  if (v0)
  {
    v4 = sub_1005ABFE4;
  }

  else
  {
    v5 = v2[255];
    v6 = v2[254];

    sub_10000BB78(v2 + 238);
    v4 = sub_1005ABEF4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005ABEF4()
{
  v1 = v0[252];
  v2 = v0[251];
  v3 = v0[250];
  v4 = v0[249];
  v5 = v0[248];
  v6._countAndFlagsBits = 0x3135306333336665;
  v7._object = 0x80000001007233C0;
  v6._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0xD000000000000014;
  logMilestone(tag:description:)(v6, v7);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005ABFE4()
{
  v1 = v0[257];
  v2 = v0[255];
  v3 = v0[254];
  v4 = v0[253];
  v5 = v0[248];
  v35 = v0[247];
  v30 = v0[246];

  sub_10000BB78(v0 + 238);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v6 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  v10 = v9 + v8;
  v11 = (v9 + v8 + v6[14]);
  v12 = enum case for DIPError.PropertyKey.serverURL(_:);
  v13 = type metadata accessor for DIPError.PropertyKey();
  v34 = *(*(v13 - 8) + 104);
  v34(v10, v12, v13);
  v11[3] = &type metadata for String;
  v11[4] = &protocol witness table for String;
  *v11 = v4;
  v11[1] = v3;
  swift_errorRetain();
  sub_10003C9C0(v9);
  swift_setDeallocating();
  sub_10000BE18(v10, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v32 = enum case for DIPError.Code.internalError(_:);
  v33 = *(v35 + 104);
  v33(v5);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v0[251];
  v28 = v0[250];
  v29 = v0[252];
  v31 = v0[249];
  v15 = v0[248];
  v27 = v0[246];
  v16 = v0[245];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v17 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v18 = *(*v17 + 72);
  v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006BF520;
  v21 = v20 + v19;
  v22 = (v21 + v17[14]);
  v34(v21, enum case for DIPError.PropertyKey.conversationID(_:), v13);
  v23 = *(v16 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v24 = *(v16 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v22[3] = &type metadata for String;
  v22[4] = &protocol witness table for String;
  *v22 = v23;
  v22[1] = v24;
  swift_errorRetain();

  sub_10003C9C0(v20);
  swift_setDeallocating();
  sub_10000BE18(v21, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (v33)(v15, v32, v27);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v14 + 8))(v29, v28);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1005AC528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = type metadata accessor for URLRequest();
  v5[44] = v6;
  v7 = *(v6 - 8);
  v5[45] = v7;
  v8 = *(v7 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v9 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v5[51] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v5[52] = v10;
  v11 = *(v10 - 8);
  v5[53] = v11;
  v12 = *(v11 + 64) + 15;
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v5[56] = v13;
  v14 = *(v13 - 8);
  v5[57] = v14;
  v15 = *(v14 + 64) + 15;
  v5[58] = swift_task_alloc();
  v16 = type metadata accessor for OTDRequest(0);
  v5[59] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v18 = type metadata accessor for ORDRequest(0);
  v5[62] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v5[65] = v20;
  v21 = *(v20 - 8);
  v5[66] = v21;
  v22 = *(v21 + 64) + 15;
  v5[67] = swift_task_alloc();

  return _swift_task_switch(sub_1005AC7F0, 0, 0);
}

uint64_t sub_1005ADB0C()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v11 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = v2[72];

    v5 = sub_1005ADDD4;
  }

  else
  {
    v6 = v2[72];
    v7 = v2[34];
    v8 = v2[35];
    v9 = v2[36];
    sub_10000B90C(v7, v8);

    v5 = sub_1005ADC44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005ADC44()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[45];

  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = v0[67];
  v8 = v0[64];
  v16 = v0[63];
  v17 = v0[61];
  v18 = v0[60];
  v19 = v0[58];
  v9 = v0[55];
  v11 = v0[52];
  v10 = v0[53];
  v12 = v0[50];
  v20 = v0[54];
  v21 = v0[51];
  v22 = v0[49];
  v23 = v0[48];
  v24 = v0[47];
  v25 = v0[46];
  v13 = v0[44];
  sub_10000B90C(v0[69], v0[68]);
  v6(v12, v13);
  (*(v10 + 8))(v9, v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005ADDD4()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v28 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[50];
  v8 = v0[47];
  v10 = v0[44];
  v9 = v0[45];

  v11 = *(v9 + 8);
  v11(v8, v10);
  sub_10000B90C(v3, v4);
  v11(v7, v10);
  (*(v6 + 8))(v28, v5);
  v12 = v0[67];
  v14 = v0[63];
  v13 = v0[64];
  v16 = v0[60];
  v15 = v0[61];
  v17 = v0[58];
  v19 = v0[54];
  v18 = v0[55];
  v20 = v0[50];
  v21 = v0[51];
  v24 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v27 = v0[46];
  v29 = v0[74];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005ADF6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_ORD_ENDPOINT + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_LABEL_ENDPOINT + 8);
}

id sub_1005ADFC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIPAssessmentWebService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005AE088()
{
  v0 = type metadata accessor for DIPHTTPSession.Configuration(0);
  sub_100031898(v0, qword_100882428);
  v1 = sub_10003170C(v0, qword_100882428);
  v2 = v0[6];
  *&v1[v2] = 0x3FE0000000000000;
  v3 = enum case for DIPBackoffStrategy.exponential(_:);
  v4 = type metadata accessor for DIPBackoffStrategy();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0x4024000000000000;
  *(v1 + 1) = 3;
  v1[v0[7]] = 0;
  v1[v0[8]] = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  return result;
}

uint64_t sub_1005AE160@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = static DIPFeatures.sharedInstance.getter();
  if (v6 && (v7 = [v6 getStaticAssessmentURL], swift_unknownObjectRelease(), v7))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    result = (*(v9 + 48))(v5, 1, v8);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      return (*(v9 + 32))(a1, v5, v8);
    }
  }

  else
  {
    if (qword_100832CE8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for URL();
    v12 = sub_10003170C(v11, qword_100848E68);
    v13 = *(*(v11 - 8) + 16);

    return v13(a1, v12, v11);
  }

  return result;
}

uint64_t sub_1005AE358@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[0] = a2;
  v24[3] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v24 - v9;
  v11 = sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v24 - v13;
  v15 = type metadata accessor for URLComponents();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000BE18(v14, &qword_100848FA0, &qword_1006E94D0);
    (*(v3 + 104))(v6, enum case for DIPError.Code.badLogic(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  else
  {
    v21 = v6;
    (*(v16 + 32))(v19, v14, v15);
    sub_100077E90();
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v22 = type metadata accessor for URL();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v10, 1, v22) == 1)
    {
      sub_10000BE18(v10, &unk_100844540, &unk_1006BFBC0);
      (*(v3 + 104))(v21, enum case for DIPError.Code.badLogic(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v16 + 8))(v19, v15);
    }

    else
    {
      (*(v16 + 8))(v19, v15);
      return (*(v23 + 32))(v24[0], v10, v22);
    }
  }
}

uint64_t sub_1005AE88C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005AEA1C, 0, 0);
}

uint64_t sub_1005AEA1C()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing profile cache", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[11];

  v8 = *(v7 + 8);
  v0[15] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1005AEB58;
  v11 = v0[2];
  v10 = v0[3];

  return sub_1005A8714(v10, 1);
}

uint64_t sub_1005AEB58()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1005AEDB8;
  }

  else
  {

    v3 = sub_1005AEC78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005AEC78()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing configuration cache", v9, 2u);
  }

  v5(v6, v7);
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005AEDB8()
{
  v1 = v0[17];
  v2 = v0[12];
  v14 = v0[11];
  v3 = v0[9];
  v15 = v0[10];
  v16 = v0[15];
  v4 = v0[7];
  v5 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v6, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v16(v2, v15);
  (*(v5 + 8))(v3, v4);

  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005AEFEC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005AF17C, 0, 0);
}

uint64_t sub_1005AF17C()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing sts cache", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[10];

  v8 = *(v7 + 8);
  v0[14] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1005AF2B4;
  v10 = v0[2];

  return sub_1005A58C4(1);
}

uint64_t sub_1005AF2B4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1005AF514;
  }

  else
  {

    v3 = sub_1005AF3D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005AF3D4()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing sts cache", v9, 2u);
  }

  v5(v6, v7);
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005AF514()
{
  v1 = v0[16];
  v2 = v0[11];
  v14 = v0[10];
  v3 = v0[8];
  v15 = v0[9];
  v16 = v0[14];
  v4 = v0[6];
  v5 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v6, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v16(v2, v15);
  (*(v5 + 8))(v3, v4);

  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005AF748()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocClassInstance();
}

void *sub_1005AF7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v7 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v8 = *(*(v7 - 1) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v34[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v34[-1] - v13;
  __chkstk_darwin(v12);
  v16 = &v34[-1] - v15;
  if (qword_100832CF0 != -1)
  {
    swift_once();
  }

  v17 = sub_10003170C(v7, qword_100882428);
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = v7[6];
  v21 = type metadata accessor for DIPBackoffStrategy();
  (*(*(v21 - 8) + 16))(&v16[v20], &v17[v20], v21);
  v22 = v7[7];
  v23 = v17[v22];
  v24 = v17[v7[8]];
  v25 = v17[v7[9]];
  *v16 = v18;
  *(v16 + 1) = v19;
  v16[v22] = v23;
  v16[v7[8]] = v24;
  v16[v7[9]] = v25;
  v26 = &v16[v7[10]];
  *v26 = a3;
  *(v26 + 1) = a4;
  sub_1005AFB08(v16, v14, type metadata accessor for DIPHTTPSession.Configuration);
  type metadata accessor for DIPAssessmentStaticWebService();
  v27 = swift_allocObject();
  v27[2] = 1937011503;
  v27[3] = 0xE400000000000000;
  v27[4] = 0x656C69666F72702FLL;
  v27[5] = 0xE800000000000000;
  v27[6] = v33;
  v27[7] = a2;
  sub_1005AFB08(v14, v11, type metadata accessor for DIPHTTPSession.Configuration);
  type metadata accessor for DIPAccountManager();

  static DIPAccountManager.sharedInstance.getter();
  v28 = type metadata accessor for DIPHTTPSession(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1005BE690(v34, v11);
  sub_1005AFAA8(v14, type metadata accessor for DIPHTTPSession.Configuration);
  v27[8] = v31;
  sub_1005AFAA8(v16, type metadata accessor for DIPHTTPSession.Configuration);
  return v27;
}

unint64_t sub_1005AFA54()
{
  result = qword_100848F78;
  if (!qword_100848F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848F78);
  }

  return result;
}

uint64_t sub_1005AFAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005AFB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005AFB70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_1005BFF98(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1005AFC38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005AFC80()
{
  result = qword_100848F98;
  if (!qword_100848F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848F98);
  }

  return result;
}

uint64_t sub_1005AFCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[227] = a4;
  v4[226] = a3;
  v4[225] = a2;
  v4[224] = a1;
  v5 = type metadata accessor for DIPBackoffStrategy();
  v4[228] = v5;
  v6 = *(v5 - 8);
  v4[229] = v6;
  v7 = *(v6 + 64) + 15;
  v4[230] = swift_task_alloc();
  v8 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v4[231] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[232] = swift_task_alloc();
  v4[233] = swift_task_alloc();

  return _swift_task_switch(sub_1005AFDDC, 0, 0);
}

uint64_t sub_1005AFDDC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_1000318FC(&v2[4], (v0 + 169));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[180];
  v4 = v0[181];
  sub_10001F640(v3);
  sub_100031918((v0 + 169));
  if (v3)
  {
    v5 = v3(v0[224], v0[225]);
    sub_10001FE8C(v3);
    v6 = v0[233];
    v7 = v0[232];
    v8 = v0[230];

    v9 = v0[1];

    return v9(v5);
  }

  else
  {
    v11 = *(v1 + 16);
    os_unfair_lock_lock(v11 + 54);
    sub_100031B5C(&v11[4], (v0 + 194));
    os_unfair_lock_unlock(v11 + 54);
    sub_100020260((v0 + 194), (v0 + 219));
    sub_100031918((v0 + 194));
    v0[234] = *sub_10000BA08(v0 + 219, v0[222]);
    v12 = swift_task_alloc();
    v0[235] = v12;
    *v12 = v0;
    v12[1] = sub_1005AFFE4;

    return sub_10050886C((v0 + 2));
  }
}

uint64_t sub_1005AFFE4()
{
  v2 = *v1;
  v3 = *(*v1 + 1880);
  v7 = *v1;
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v4 = *(v2 + 1872);
    v5 = sub_1005B0320;
  }

  else
  {
    v5 = sub_1005B0100;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005B0100()
{
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1832);
  v5 = *(v0 + 1824);
  v6 = *(v0 + 1816);
  v7 = *(v0 + 1808);
  sub_10000BB78((v0 + 1752));
  memcpy((v0 + 504), (v0 + 48), 0x1A1uLL);
  sub_1000AA624(v0 + 504, v0 + 928);
  sub_1000F2758(v0 + 16);
  sub_1000AA65C(v0 + 504);
  v8 = (v0 + 696);
  if (*(v0 + 704))
  {
    v8 = (v0 + 512);
  }

  v9 = *v8;
  v10 = (v0 + 712);
  if (*(v0 + 720))
  {
    v10 = (v0 + 520);
  }

  v11 = *v10;
  v12 = (v0 + 728);
  if (*(v0 + 736))
  {
    v12 = (v0 + 528);
  }

  *v3 = *v12;
  (*(v4 + 104))(v3, enum case for DIPBackoffStrategy.exponential(_:), v5);
  *v1 = v9;
  *(v1 + 1) = v11;
  (*(v4 + 32))(&v1[v2[6]], v3, v5);
  v1[v2[7]] = 1;
  v1[v2[8]] = 1;
  v1[v2[9]] = 0;
  v13 = &v1[v2[10]];
  *v13 = v7;
  *(v13 + 1) = v6;
  v14 = *(v0 + 1864);
  v15 = *(v0 + 1856);
  v16 = *(v0 + 1800);
  v17 = *(v0 + 1792);

  sub_1005AFB08(v14, v15, type metadata accessor for DIPHTTPSession.Configuration);
  v18 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());

  v19 = sub_1005AA480(v17, v16, v15);
  sub_1005AFAA8(v14, type metadata accessor for DIPHTTPSession.Configuration);
  v20 = *(v0 + 1864);
  v21 = *(v0 + 1856);
  v22 = *(v0 + 1840);

  v23 = *(v0 + 8);

  return v23(v19);
}

uint64_t sub_1005B0320()
{
  v1 = *(v0 + 1888);

  return _swift_task_switch(sub_1005B0388, 0, 0);
}

uint64_t sub_1005B0388()
{
  sub_10000BB78(v0 + 219);
  if (qword_100832D10 != -1)
  {
    swift_once();
  }

  v1 = v0[233];
  v2 = sub_10003170C(v0[231], qword_100882460);
  sub_1005AFB08(v2, v1, type metadata accessor for DIPHTTPSession.Configuration);
  v3 = v0[233];
  v4 = v0[232];
  v5 = v0[225];
  v6 = v0[224];
  sub_1005AFB08(v3, v4, type metadata accessor for DIPHTTPSession.Configuration);
  v7 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());

  v8 = sub_1005AA480(v6, v5, v4);
  sub_1005AFAA8(v3, type metadata accessor for DIPHTTPSession.Configuration);
  v9 = v0[233];
  v10 = v0[232];
  v11 = v0[230];

  v12 = v0[1];

  return v12(v8);
}

uint64_t sub_1005B04D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1005BFF98(a1, v4, v5, v6, v8, v7);
}

unint64_t sub_1005B05A0()
{
  result = qword_100848FA8;
  if (!qword_100848FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848FA8);
  }

  return result;
}

uint64_t sub_1005B0650()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 126);
  memcpy(__dst, &v1[4], sizeof(__dst));
  sub_10000BBC4(__dst, v30, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v1 + 126);
  v25 = *&__dst[96];
  v26 = *&__dst[112];
  v27 = *&__dst[128];
  v28 = *&__dst[144];
  v21 = *&__dst[32];
  v22 = *&__dst[48];
  v23 = *&__dst[64];
  v24 = *&__dst[80];
  v19 = *__dst;
  v20 = *&__dst[16];
  v2 = *&__dst[160];
  v3 = __dst[168];
  memcpy(__src, &__dst[169], sizeof(__src));
  v30[6] = *&__dst[96];
  v30[7] = *&__dst[112];
  v30[8] = *&__dst[128];
  v30[9] = *&__dst[144];
  v30[2] = *&__dst[32];
  v30[3] = *&__dst[48];
  v30[4] = *&__dst[64];
  v30[5] = *&__dst[80];
  v30[0] = *__dst;
  v30[1] = *&__dst[16];
  memcpy(v33, &__dst[169], sizeof(v33));
  v31 = *&__dst[160];
  v32 = __dst[168];
  if (sub_1000A257C(v30) == 1)
  {
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v7 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v5 = v19;
    v6 = v20;
    v15 = v2;
    v16 = v3;
    memcpy(v17, __src, sizeof(v17));
    sub_10000BE18(&v5, &qword_100839998, &qword_1006DCAA0);
    return 3;
  }

  else
  {
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v7 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v5 = v19;
    v6 = v20;
    v15 = v2;
    v16 = v3;
    memcpy(v17, __src, sizeof(v17));
    sub_10000BE18(&v5, &qword_100839998, &qword_1006DCAA0);
    if (v3)
    {
      return 3;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1005B083C()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 126);
  memcpy(__dst, &v1[4], sizeof(__dst));
  sub_10000BBC4(__dst, v32, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v1 + 126);
  v28 = *&__dst[128];
  v29 = *&__dst[144];
  v30 = *&__dst[160];
  v24 = *&__dst[64];
  v25 = *&__dst[80];
  v26 = *&__dst[96];
  v27 = *&__dst[112];
  v20 = *__dst;
  v21 = *&__dst[16];
  v22 = *&__dst[32];
  v23 = *&__dst[48];
  v2 = *&__dst[176];
  v3 = __dst[184];
  memcpy(__src, &__dst[185], sizeof(__src));
  v32[8] = *&__dst[128];
  v32[9] = *&__dst[144];
  v32[10] = *&__dst[160];
  v32[4] = *&__dst[64];
  v32[5] = *&__dst[80];
  v32[7] = *&__dst[112];
  v32[6] = *&__dst[96];
  v32[0] = *__dst;
  v32[1] = *&__dst[16];
  v32[3] = *&__dst[48];
  v32[2] = *&__dst[32];
  memcpy(v35, &__dst[185], sizeof(v35));
  v33 = *&__dst[176];
  v34 = __dst[184];
  if (sub_1000A257C(v32) == 1)
  {
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v9 = v24;
    v10 = v25;
    v11 = v26;
    v12 = v27;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v16 = v2;
    v17 = v3;
    memcpy(v18, __src, sizeof(v18));
    sub_10000BE18(&v5, &qword_100839998, &qword_1006DCAA0);
    return 1.0;
  }

  else
  {
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v9 = v24;
    v10 = v25;
    v11 = v26;
    v12 = v27;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v16 = v2;
    v17 = v3;
    memcpy(v18, __src, sizeof(v18));
    sub_10000BE18(&v5, &qword_100839998, &qword_1006DCAA0);
    if (v3)
    {
      return 1.0;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1005B0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 4928) = v6;
  *(v7 + 4920) = a4;
  *(v7 + 5049) = a6;
  *(v7 + 4912) = a3;
  *(v7 + 5048) = a5;
  *(v7 + 4904) = a2;
  *(v7 + 4896) = a1;
  v8 = type metadata accessor for Logger();
  *(v7 + 4936) = v8;
  v9 = *(v8 - 8);
  *(v7 + 4944) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 4952) = swift_task_alloc();
  *(v7 + 4960) = swift_task_alloc();
  *(v7 + 4968) = swift_task_alloc();
  *(v7 + 4976) = swift_task_alloc();
  *(v7 + 4984) = swift_task_alloc();
  *(v7 + 4992) = swift_task_alloc();

  return _swift_task_switch(sub_1005B0B68, 0, 0);
}

uint64_t sub_1005B0B68()
{
  v72 = v0;
  v1 = *(*(v0 + 4928) + 56);
  *(v0 + 5000) = v1;
  os_unfair_lock_lock(v1 + 126);
  memcpy((v0 + 504), &v1[4], 0x1E8uLL);
  sub_10000BBC4(v0 + 504, v0 + 1480, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v1 + 126);
  *(v0 + 4864) = *(v0 + 504);
  v2 = *(v0 + 520);
  v3 = *(v0 + 528);
  memcpy((v0 + 4408), (v0 + 536), 0x1C8uLL);
  *(v0 + 16) = *(v0 + 504);
  memcpy((v0 + 48), (v0 + 536), 0x1C8uLL);
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  if (sub_1000A257C(v0 + 16) == 1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = v2;
    v5 = v3;
  }

  v6 = v0 + 4096;
  v7 = *(v0 + 4992);
  *(v0 + 1968) = *(v0 + 4864);
  *(v0 + 1984) = v2;
  *(v0 + 1992) = v3;
  memcpy((v0 + 2000), (v0 + 4408), 0x1C8uLL);
  sub_10000BE18(v0 + 1968, &qword_100839998, &qword_1006DCAA0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 5049);
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v8, v9, "DIPWebService getActiveConfig: shouldSkipFetchingDefaultConfig is set to %{BOOL}d", v11, 8u);
  }

  v12 = *(v0 + 4992);
  v13 = *(v0 + 4944);
  v14 = *(v0 + 4936);

  v15 = *(v13 + 8);
  *(v0 + 5008) = v15;
  *(v0 + 5016) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v14);
  if (!v5)
  {
    goto LABEL_13;
  }

  v16 = *(v0 + 4920);
  *(v0 + 4880) = v4;
  *(v0 + 4888) = v5;
  v17 = swift_task_alloc();
  *(v17 + 16) = v0 + 4880;
  LOBYTE(v16) = sub_10035C8E4(sub_1000307C0, v17, v16);

  if ((v16 & 1) == 0)
  {

LABEL_13:
    v26 = *(v0 + 4920);
    if (v26[2])
    {
      v4 = v26[4];
      v5 = v26[5];
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v27 = *(v0 + 4976);
    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 4976);
    v32 = *(v0 + 4936);
    if (v30)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v71[0] = v34;
      *v33 = 136446210;
      v66 = v32;
      v68 = v31;
      v35 = v4;
      if (!v5)
      {
        v4 = 7104878;
      }

      v36 = v15;
      if (v5)
      {
        v37 = v5;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = sub_100141FE4(v4, v37, v71);
      v15 = v36;

      *(v33 + 4) = v38;
      v4 = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "DIPWebService getActiveConfig: setting requiredLanguage to the 1st in the list = %{public}s", v33, 0xCu);
      sub_10000BB78(v34);
      v6 = v0 + 4096;

      v36(v68, v66);
    }

    else
    {

      v15(v31, v32);
    }

    goto LABEL_24;
  }

  v18 = v15;
  v19 = *(v0 + 4984);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "DIPWebService getActiveConfig: not setting requiredLanguage", v22, 2u);
  }

  v23 = *(v0 + 4984);
  v24 = *(v0 + 4936);
  v25 = *(v0 + 5048);

  v18(v23, v24);
  if (v25)
  {
    v15 = v18;
LABEL_24:
    *(v0 + 5024) = v5;
    v39 = *(v0 + 4968);
    defaultLogger()();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 4968);
    v44 = *(v0 + 4936);
    if (v42)
    {
      v45 = swift_slowAlloc();
      v70 = v15;
      v46 = swift_slowAlloc();
      v71[0] = v46;
      *v45 = 136446210;
      v67 = v43;
      v69 = v44;
      v47 = v6;
      if (v5)
      {
        v48 = v4;
      }

      else
      {
        v48 = 7104878;
      }

      v49 = v4;
      if (v5)
      {
        v50 = v5;
      }

      else
      {
        v50 = 0xE300000000000000;
      }

      v51 = sub_100141FE4(v48, v50, v71);
      v4 = v49;

      *(v45 + 4) = v51;
      v6 = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "DIPWebService getActiveConfig: require new attributeConfig for %{public}s", v45, 0xCu);
      sub_10000BB78(v46);

      v70(v67, v69);
    }

    else
    {

      v15(v43, v44);
    }

    v52 = swift_task_alloc();
    *(v0 + 5032) = v52;
    *v52 = v0;
    v52[1] = sub_1005B12C0;
    v53 = *(v0 + 4928);
    v54 = *(v6 + 953);
    v55 = *(v0 + 4912);
    v56 = *(v0 + 4904);

    return sub_1005B2A48(v0 + 992, v4, v5, 0, 1, v56, v55, v54);
  }

  v58 = *(v0 + 5000);
  os_unfair_lock_lock(v58 + 126);
  memcpy((v0 + 2944), &v58[4], 0x1E8uLL);
  sub_10000BBC4(v0 + 2944, v0 + 3432, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v58 + 126);
  memcpy((v0 + 2456), (v0 + 2944), 0x1E8uLL);
  v59 = *(v0 + 4992);
  v60 = *(v0 + 4984);
  v61 = *(v0 + 4976);
  v62 = *(v0 + 4968);
  v63 = *(v0 + 4960);
  v64 = *(v0 + 4952);
  memcpy(*(v0 + 4896), (v0 + 2456), 0x1E8uLL);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1005B12C0()
{
  v15 = v1;
  v15 = *v1;
  v2 = v15;
  v3 = v15[629];
  v4 = *v1;
  v15 = v4;
  v2[630] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005B14C0, 0, 0);
  }

  else
  {
    v5 = v2[628];
    memcpy(__dst, v2 + 124, sizeof(__dst));

    memcpy(v2 + 490, __dst, 0x1E8uLL);
    nullsub_7(v2 + 490);
    memcpy(v2 + 307, v2 + 490, 0x1E8uLL);
    v6 = v2[624];
    v7 = v2[623];
    v8 = v2[622];
    v9 = v2[621];
    v10 = v2[620];
    v11 = v2[619];
    memcpy(v2[612], v2 + 307, 0x1E8uLL);

    v12 = *(v4 + 8);

    return v12();
  }
}

uint64_t sub_1005B14C0()
{
  v1 = *(v0 + 5024);
  v2 = *(v0 + 4960);

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ignore error retrieving attributeConfig", v5, 2u);
  }

  v6 = *(v0 + 5040);
  v7 = *(v0 + 5016);
  v8 = *(v0 + 5008);
  v9 = *(v0 + 4960);
  v10 = *(v0 + 4952);
  v11 = *(v0 + 4936);

  v8(v9, v11);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v8(v10, v11);
  v12 = *(v0 + 5000);
  os_unfair_lock_lock(v12 + 126);
  memcpy((v0 + 2944), &v12[4], 0x1E8uLL);
  sub_10000BBC4(v0 + 2944, v0 + 3432, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v12 + 126);
  memcpy((v0 + 2456), (v0 + 2944), 0x1E8uLL);
  v13 = *(v0 + 4992);
  v14 = *(v0 + 4984);
  v15 = *(v0 + 4976);
  v16 = *(v0 + 4968);
  v17 = *(v0 + 4960);
  v18 = *(v0 + 4952);
  memcpy(*(v0 + 4896), (v0 + 2456), 0x1E8uLL);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1005B16AC(uint64_t a1, char a2)
{
  *(v3 + 616) = v2;
  *(v3 + 553) = a2;
  *(v3 + 608) = a1;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 624) = v4;
  v5 = *(v4 - 8);
  *(v3 + 632) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 640) = swift_task_alloc();
  v7 = type metadata accessor for DIPBackoffStrategy();
  *(v3 + 648) = v7;
  v8 = *(v7 - 8);
  *(v3 + 656) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 664) = swift_task_alloc();
  v10 = type metadata accessor for DIPRetrier();
  *(v3 + 672) = v10;
  v11 = *(v10 - 8);
  *(v3 + 680) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 688) = swift_task_alloc();
  v13 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v3 + 696) = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  *(v3 + 704) = v14;
  v15 = *(v14 - 8);
  *(v3 + 712) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();

  return _swift_task_switch(sub_1005B18C0, 0, 0);
}

uint64_t sub_1005B18C0()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 664);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);
  v8 = *(v0 + 616);
  v18 = *(v0 + 553);
  static DaemonSignposts.configurationRequest.getter();
  DIPSignpost.init(_:)();
  static DaemonSignposts.configureLoadBootstrapConfig.getter();
  DIPSignpost.init(_:)();
  v10 = v8[4];
  v9 = v8[5];
  v11 = v8[3];
  (*(v6 + 104))(v5, enum case for DIPBackoffStrategy.noBackoff(_:), v7);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v12 = swift_task_alloc();
  *(v0 + 736) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v12 + 32) = 301;
  *(v12 + 40) = v18;
  *(v12 + 48) = v11;
  *(v12 + 56) = v10;
  v13 = async function pointer to DIPRetrier.retry<A>(operation:)[1];
  v14 = swift_task_alloc();
  *(v0 + 744) = v14;
  v15 = sub_100007224(&qword_100849098, &qword_1006E92D0);
  *v14 = v0;
  v14[1] = sub_1005B1A60;
  v16 = *(v0 + 688);

  return DIPRetrier.retry<A>(operation:)(v0 + 504, &unk_1006E92C8, v12, v15);
}

uint64_t sub_1005B1A60()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v7 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = sub_1005B242C;
  }

  else
  {
    v5 = *(v2 + 736);

    v4 = sub_1005B1B7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1005B1B7C()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 616);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  *(v0 + 760) = v4;
  *(v0 + 768) = v3;
  v5 = *(v0 + 520);
  *(v0 + 776) = v5;
  v6 = *(v0 + 528);
  *(v0 + 784) = v6;
  v7 = *(v0 + 536);
  *(v0 + 792) = v7;
  v8 = *(v0 + 544);
  *(v0 + 800) = v8;
  v9 = *(v0 + 552);
  *(v0 + 560) = v4;
  *(v0 + 568) = v3;
  *(v0 + 576) = v5;
  *(v0 + 584) = v6;
  *(v0 + 592) = v7;
  *(v0 + 600) = v8;
  v10 = *(v2 + 48);
  *(swift_task_alloc() + 16) = v0 + 560;

  os_unfair_lock_lock((v10 + 64));
  sub_1005BE3F4((v10 + 16));
  os_unfair_lock_unlock((v10 + 64));
  if (!v1)
  {

    if ((v9 & 1) == 0)
    {
      v11 = *(v0 + 728);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v12 = *(v0 + 720);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v13 = swift_task_alloc();
    *(v0 + 808) = v13;
    *v13 = v0;
    v13[1] = sub_1005B1D68;
    v14 = *(v0 + 616);
    v15 = *(v0 + 553);

    sub_1005B2A48(v0 + 16, 0, 0, v15, 0, 0, 0, 0);
  }
}

uint64_t sub_1005B1D68()
{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v12 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v4 = sub_1005B26B0;
  }

  else
  {
    *(v2 + 832) = *(v2 + 24);
    *(v2 + 856) = *(v2 + 48);
    *(v2 + 880) = *(v2 + 72);
    v5 = *(v2 + 112);
    *(v2 + 904) = *(v2 + 96);
    *(v2 + 920) = v5;
    *(v2 + 944) = *(v2 + 136);
    *(v2 + 968) = *(v2 + 160);
    v6 = *(v2 + 320);
    *(v2 + 1056) = *(v2 + 304);
    *(v2 + 1072) = v6;
    v7 = *(v2 + 352);
    *(v2 + 1088) = *(v2 + 336);
    *(v2 + 1104) = v7;
    v8 = *(v2 + 448);
    *(v2 + 1152) = *(v2 + 432);
    *(v2 + 824) = *(v2 + 16);
    *(v2 + 848) = *(v2 + 40);
    *(v2 + 872) = *(v2 + 64);
    v9 = *(v2 + 88);
    *(v2 + 888) = *(v2 + 80);
    *(v2 + 896) = v9;
    *(v2 + 936) = *(v2 + 128);
    *(v2 + 960) = *(v2 + 152);
    *(v2 + 984) = *(v2 + 176);
    *(v2 + 554) = *(v2 + 184);
    *(v2 + 992) = *(v2 + 192);
    *(v2 + 555) = *(v2 + 200);
    v10 = *(v2 + 216);
    *(v2 + 1000) = *(v2 + 208);
    *(v2 + 1008) = v10;
    *(v2 + 1016) = *(v2 + 224);
    *(v2 + 556) = *(v2 + 232);
    *(v2 + 1024) = *(v2 + 240);
    *(v2 + 557) = *(v2 + 248);
    *(v2 + 1032) = *(v2 + 256);
    *(v2 + 558) = *(v2 + 264);
    *(v2 + 1040) = *(v2 + 272);
    *(v2 + 559) = *(v2 + 280);
    *(v2 + 1048) = *(v2 + 288);
    *(v2 + 1216) = *(v2 + 296);
    *(v2 + 1120) = *(v2 + 368);
    *(v2 + 1217) = *(v2 + 376);
    *(v2 + 1128) = *(v2 + 384);
    *(v2 + 1218) = *(v2 + 392);
    *(v2 + 1219) = *(v2 + 393);
    *(v2 + 1136) = *(v2 + 400);
    *(v2 + 1220) = *(v2 + 408);
    *(v2 + 1144) = *(v2 + 416);
    *(v2 + 1221) = *(v2 + 424);
    *(v2 + 1168) = v8;
    *(v2 + 1222) = *(v2 + 464);
    *(v2 + 1184) = *(v2 + 472);
    *(v2 + 1200) = *(v2 + 488);
    v4 = sub_1005B1FFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005B1FFC()
{
  v62 = *(v0 + 1221);
  v63 = *(v0 + 1222);
  v61 = *(v0 + 1144);
  v60 = *(v0 + 1220);
  v59 = *(v0 + 1136);
  v57 = *(v0 + 1218);
  v58 = *(v0 + 1219);
  v56 = *(v0 + 1128);
  v55 = *(v0 + 1217);
  v54 = *(v0 + 1120);
  v53 = *(v0 + 1216);
  v52 = *(v0 + 1048);
  v51 = *(v0 + 559);
  v50 = *(v0 + 1040);
  v49 = *(v0 + 558);
  v48 = *(v0 + 1032);
  v47 = *(v0 + 557);
  v46 = *(v0 + 1024);
  v45 = *(v0 + 556);
  v44 = *(v0 + 1016);
  v42 = *(v0 + 1000);
  v40 = *(v0 + 555);
  v39 = *(v0 + 992);
  v37 = *(v0 + 554);
  v36 = *(v0 + 984);
  v33 = *(v0 + 968);
  v31 = *(v0 + 952);
  v28 = *(v0 + 936);
  v26 = *(v0 + 888);
  v27 = *(v0 + 896);
  v1 = *(v0 + 880);
  v25 = *(v0 + 872);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v20 = *(v0 + 848);
  v19 = *(v0 + 824);
  v18 = *(v0 + 840);
  v43 = *(v0 + 776);
  v41 = *(v0 + 792);
  v16 = *(v0 + 920);
  v17 = *(v0 + 904);
  v38 = *(v0 + 768);
  v34 = *(v0 + 1200);
  v35 = *(v0 + 1184);
  v32 = *(v0 + 1152);
  v29 = *(v0 + 1168);
  v23 = *(v0 + 1088);
  v24 = *(v0 + 1056);
  v4 = *(v0 + 1104);
  v21 = v4;
  v22 = *(v0 + 1072);
  v30 = *(v0 + 760);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 664);
  v15 = *(v0 + 640);
  v11 = *(v0 + 608);
  (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  v12 = *(v7 + 8);
  v12(v6, v8);
  v12(v5, v8);

  *(v11 + 16) = v18;
  *(v11 + 24) = v20;
  *v11 = v19;
  *(v11 + 32) = v3;
  *(v11 + 40) = v2;
  *(v11 + 48) = v25;
  *(v11 + 56) = v1;
  *(v11 + 64) = v26;
  *(v11 + 72) = v27;
  *(v11 + 80) = v17;
  *(v11 + 96) = v16;
  *(v11 + 112) = v28;
  *(v11 + 128) = v31;
  *(v11 + 144) = v33;
  *(v11 + 160) = v36;
  *(v11 + 168) = v37 & 1;
  *(v11 + 176) = v39;
  *(v11 + 184) = v40 & 1;
  *(v11 + 192) = v42;
  *(v11 + 208) = v44;
  *(v11 + 216) = v45 & 1;
  *(v11 + 224) = v46;
  *(v11 + 232) = v47 & 1;
  *(v11 + 240) = v48;
  *(v11 + 248) = v49 & 1;
  *(v11 + 256) = v50;
  *(v11 + 264) = v51 & 1;
  *(v11 + 272) = v52;
  *(v11 + 280) = v53 & 1;
  *(v11 + 288) = v24;
  *(v11 + 304) = v22;
  *(v11 + 320) = v23;
  *(v11 + 336) = v21;
  *(v11 + 352) = v54;
  *(v11 + 360) = v55 & 1;
  *(v11 + 368) = v56;
  *(v11 + 376) = v57 & 1;
  *(v11 + 377) = v58;
  *(v11 + 384) = v59;
  *(v11 + 392) = v60 & 1;
  *(v11 + 400) = v61;
  *(v11 + 408) = v62 & 1;
  *(v11 + 416) = v32;
  *(v11 + 432) = v29;
  *(v11 + 448) = v63;
  *(v11 + 456) = v35;
  *(v11 + 472) = v34;
  *(v11 + 488) = v30;
  *(v11 + 496) = v38;
  *(v11 + 504) = v43;
  *(v11 + 520) = v41;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1005B242C()
{
  v1 = v0[92];

  v2 = v0[94];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v15 = v0[88];
  v16 = v0[87];
  v6 = v0[85];
  v13 = v0[84];
  v14 = v0[86];
  v17 = v0[83];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v8 + 104))(v7, enum case for DIPError.Code.internalError(_:), v9);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v6 + 8))(v14, v13);
  v10 = *(v5 + 8);
  v10(v4, v15);
  v10(v3, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005B26B0()
{
  v1 = v0[100];
  v2 = v0[98];
  v3 = v0[96];
  v4 = v0[95];

  v5 = v0[102];
  v6 = v0[91];
  v7 = v0[90];
  v8 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v9 = v0[85];
  v16 = v0[84];
  v17 = v0[86];
  v20 = v0[83];
  v10 = v0[80];
  v11 = v0[79];
  v12 = v0[78];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v11 + 104))(v10, enum case for DIPError.Code.internalError(_:), v12);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v9 + 8))(v17, v16);
  v13 = *(v8 + 8);
  v13(v7, v18);
  v13(v6, v18);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005B2958()
{
  v3[3] = &type metadata for BootstrapURLManager;
  v3[4] = &off_100818018;
  type metadata accessor for DIPConfigWebService();
  v0 = swift_allocObject();
  sub_10001F370(v3, &type metadata for BootstrapURLManager);
  v1 = sub_1005BDE58(v0);
  result = sub_10000BB78(v3);
  qword_100882440 = v1;
  return result;
}

uint64_t sub_1005B29CC(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  sub_1005BE410(*a1);
  v9 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v9;
  *(a1 + 2) = a2[2];
  return sub_10000BBC4(a2, &v11, &qword_1008490A0, &qword_1006E92D8);
}

uint64_t sub_1005B2A48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 7408) = v8;
  *(v9 + 8210) = a8;
  *(v9 + 7400) = a7;
  *(v9 + 7392) = a6;
  *(v9 + 8209) = a5;
  *(v9 + 8201) = a4;
  *(v9 + 7384) = a3;
  *(v9 + 7376) = a2;
  *(v9 + 7368) = a1;
  v10 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v9 + 7416) = swift_task_alloc();
  *(v9 + 7424) = swift_task_alloc();
  *(v9 + 7432) = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  *(v9 + 7440) = v11;
  v12 = *(v11 - 8);
  *(v9 + 7448) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 7456) = swift_task_alloc();
  v14 = type metadata accessor for URL();
  *(v9 + 7464) = v14;
  v15 = *(v14 - 8);
  *(v9 + 7472) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 7480) = swift_task_alloc();
  *(v9 + 7488) = swift_task_alloc();
  *(v9 + 7496) = swift_task_alloc();
  *(v9 + 7504) = swift_task_alloc();
  v17 = type metadata accessor for Locale.Language();
  *(v9 + 7512) = v17;
  v18 = *(v17 - 8);
  *(v9 + 7520) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 7528) = swift_task_alloc();
  v20 = *(*(sub_100007224(&qword_10083DC48, &unk_1006DB7B0) - 8) + 64) + 15;
  *(v9 + 7536) = swift_task_alloc();
  v21 = type metadata accessor for Locale();
  *(v9 + 7544) = v21;
  v22 = *(v21 - 8);
  *(v9 + 7552) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 7560) = swift_task_alloc();
  *(v9 + 7568) = swift_task_alloc();
  v24 = *(*(sub_100007224(&unk_100849BA0, &qword_1006D95F0) - 8) + 64) + 15;
  *(v9 + 7576) = swift_task_alloc();
  v25 = type metadata accessor for Logger();
  *(v9 + 7584) = v25;
  v26 = *(v25 - 8);
  *(v9 + 7592) = v26;
  v27 = *(v26 + 64) + 15;
  *(v9 + 7600) = swift_task_alloc();
  *(v9 + 7608) = swift_task_alloc();
  *(v9 + 7616) = swift_task_alloc();
  *(v9 + 7624) = swift_task_alloc();
  *(v9 + 7632) = swift_task_alloc();
  *(v9 + 7640) = swift_task_alloc();
  *(v9 + 7648) = swift_task_alloc();
  *(v9 + 7656) = swift_task_alloc();
  *(v9 + 7664) = swift_task_alloc();
  *(v9 + 7672) = swift_task_alloc();

  return _swift_task_switch(sub_1005B2DF8, 0, 0);
}

void sub_1005B2DF8()
{
  v499 = v0;
  v1 = v0[959];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 8210);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateActiveConfig: shouldSkipFetchingDefaultConfig is set to %{BOOL}d", v5, 8u);
  }

  v6 = v0[959];
  v7 = v0[949];
  v8 = v0[948];
  v9 = v0[947];
  v10 = v0[946];
  v11 = v0[944];
  v12 = v0[943];

  v13 = *(v7 + 8);
  v0[960] = v13;
  v0[961] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v481 = v13;
  v13(v6, v8);
  static Locale.current.getter();
  Locale.region.getter();
  v14 = *(v11 + 8);
  v0[962] = v14;
  v0[963] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v12);
  v15 = type metadata accessor for Locale.Region();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v17 = v0[932];
    v18 = v0[931];
    v19 = v0[930];
    sub_10000BE18(v0[947], &unk_100849BA0, &qword_1006D95F0);
    v484 = *(v18 + 104);
    v484(v17, enum case for DIPError.Code.unexpectedDeviceState(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_10:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_11:
    swift_willThrow();
LABEL_12:
    v404 = v0[959];
    v405 = v0[958];
    v409 = v0[957];
    v412 = v0[956];
    __dsta = v0[955];
    v419 = v0[954];
    v422 = v0[953];
    v425 = v0[952];
    v429 = v0[951];
    v432 = v0[950];
    v435 = v0[947];
    v438 = v0[946];
    v441 = v0[945];
    v444 = v0[942];
    v447 = v0[941];
    v450 = v0[938];
    v453 = v0[937];
    v458 = v0[936];
    v62 = v0[932];
    v63 = v0[930];
    v462 = v0[935];
    v465 = v0[929];
    v470 = v0[928];
    v472 = v0[927];
    v64 = v0[926];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v65 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v66 = *(*v65 + 72);
    v67 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1006BF520;
    v69 = v68 + v67;
    v70 = (v69 + v65[14]);
    v71 = enum case for DIPError.PropertyKey.conversationID(_:);
    v72 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v72 - 8) + 104))(v69, v71, v72);
    v73 = *(v64 + 24);
    v74 = *(v64 + 32);
    v70[3] = &type metadata for String;
    v70[4] = &protocol witness table for String;
    *v70 = v73;
    v70[1] = v74;
    swift_errorRetain();

    sub_10003C9C0(v68);
    swift_setDeallocating();
    sub_10000BE18(v69, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v484(v62, enum case for DIPError.Code.internalError(_:), v63);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v75 = v0[1];
LABEL_13:

    v75();
    return;
  }

  v469 = v14;
  v20 = v0[926];
  v21 = v0[947];
  v22 = Locale.Region.identifier.getter();
  v24 = v23;
  v478 = v22;
  v0[964] = v22;
  v0[965] = v23;
  (*(v16 + 8))(v21, v15);
  v25 = *(v20 + 48);
  os_unfair_lock_lock((v25 + 64));
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  v28 = *(v25 + 32);
  v29 = *(v25 + 40);
  v30 = *(v25 + 48);
  v31 = *(v25 + 56);
  sub_1005BE210(v26);
  os_unfair_lock_unlock((v25 + 64));
  if (!v26)
  {
    v59 = v0[932];
    v60 = v0[931];
    v61 = v0[930];

    v484 = *(v60 + 104);
    v484(v59, enum case for DIPError.Code.unexpectedDaemonState(_:), v61);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_10;
  }

  if (!*(v26 + 16))
  {
    goto LABEL_27;
  }

  v32 = sub_10003ADCC(v478, v24);
  if (v33)
  {
    v403 = v27;
    v476 = v24;
    v34 = v0 + 686;
    v35 = (*(v26 + 56) + 424 * v32);
    memcpy(v0 + 633, v35, 0x1A1uLL);
    memmove(v0 + 686, v35, 0x1A1uLL);
    nullsub_7(v0 + 686);
    sub_1000AA624((v0 + 633), (v0 + 368));
    v401 = 738;
    v399 = 737;
    v397 = 736;
    v395 = 735;
    v393 = 734;
    v364 = 5865;
    v391 = 733;
    v389 = 732;
    v360 = 5849;
    v387 = 731;
    v385 = 730;
    v358 = 5834;
    v383 = 5833;
    v381 = 729;
    v362 = 728;
    v366 = 5817;
    v356 = 727;
    v354 = 726;
    v352 = 725;
    v372 = 724;
    v369 = 723;
    v375 = 722;
    v350 = 721;
    v378 = 720;
    v349 = 719;
    v348 = 718;
    v347 = 5737;
    v346 = 717;
    v345 = 716;
    v344 = 5721;
    v343 = 715;
    v342 = 714;
    v339 = 5705;
    v341 = 713;
    v340 = 712;
    v428 = 5689;
    v338 = 711;
    v408 = 710;
    v36 = 5673;
    v418 = 709;
    v411 = 708;
    v337 = 707;
    v37 = 706;
    v38 = 5641;
    v39 = 705;
    v40 = 704;
    v41 = 5625;
    v42 = 703;
    v43 = 702;
    v44 = 701;
    v45 = 700;
    v46 = 699;
    v47 = 698;
    v48 = 697;
    v49 = 696;
    v50 = 695;
    v51 = 694;
    v52 = 693;
    v53 = 692;
    v54 = 691;
    v55 = 690;
    v56 = 689;
    v57 = 688;
    v58 = 687;
LABEL_26:
    v82 = *v34;
    v83 = v0[v58];
    v84 = v0[v56];
    *(v0 + 3361) = *(v0 + v41);
    v85 = *(v0 + v41 + 3);
    *(v0 + 841) = v85;
    *(v0 + 877) = v85;
    v454 = v0[v55];
    v459 = v0[v57];
    v451 = v0[v54];
    v423 = v0[v53];
    v426 = v0[v51];
    v436 = v0[v50];
    v439 = v0[v52];
    v463 = v0[v49];
    v406 = v0[v48];
    v474 = v0[v47];
    v466 = v0[v46];
    v86 = v0[v45];
    *(v0 + 3505) = *(v0 + 3361);
    __dst = v0[v44];
    v445 = v0[v43];
    v448 = v86;
    v433 = v0[v42];
    v87 = v0[v40];
    LODWORD(v86) = *(v0 + v38 + 3);
    v442 = v0[v39];
    *(v0 + 7177) = *(v0 + v38);
    *(v0 + 1795) = v86;
    *(v0 + 3521) = *(v0 + 7177);
    v88 = v0[v37];
    v89 = v0[v337];
    v413 = v0[v411];
    v90 = *(v0 + v36);
    v420 = v0[v418];
    *(v0 + 1689) = *(v0 + v36 + 3);
    *(v0 + 6753) = v90;
    *(v0 + 3553) = v90;
    v410 = v0[v408];
    v91 = *(v0 + v428 + 3);
    v92 = *(v0 + v428);
    v430 = v0[v338];
    *(v0 + 6329) = v92;
    *(v0 + 1583) = v91;
    *(v0 + 893) = v91;
    *(v0 + 3569) = *(v0 + 6329);
    *(v0 + 947) = *(v0 + v339 + 3);
    *(v0 + 3785) = *(v0 + v339);
    *(v0 + 3585) = *(v0 + 3785);
    v93 = v0[v340];
    v94 = v0[v341];
    v95 = v0[v342];
    v96 = *(v0 + v344);
    v97 = v0[v343];
    *(v0 + 1265) = *(v0 + v344 + 3);
    *(v0 + 5057) = v96;
    *(v0 + 3601) = v96;
    v98 = v0[v345];
    v99 = v0[v346];
    v100 = *(v0 + v347);
    *(v0 + 1477) = *(v0 + v347 + 3);
    *(v0 + 5905) = v100;
    *(v0 + 905) = *(v0 + 1477);
    *(v0 + 3617) = v100;
    v101 = v0[v348];
    v102 = v0[v349];
    v379 = v0[v378];
    v351 = v0[v350];
    v376 = v0[v375];
    v370 = v0[v369];
    v373 = v0[v372];
    v103 = v0[v352];
    v104 = v0[v354];
    v105 = *(v0 + v366);
    v106 = *(v0 + v366 + 3);
    v367 = v0[v356];
    *(v0 + 1371) = v106;
    *(v0 + 5481) = v105;
    *(v0 + 925) = *(v0 + 1371);
    *(v0 + 3697) = v105;
    *(v0 + 8202) = *(v0 + v358);
    *(v0 + 3714) = *(v0 + 8202);
    *(v0 + 1159) = *(v0 + v360 + 3);
    *(v0 + 4633) = *(v0 + v360);
    *(v0 + 3729) = *(v0 + 4633);
    *(v0 + 1053) = *(v0 + v364 + 3);
    v107 = v87;
    *(v0 + 4209) = *(v0 + v364);
    *(v0 + 937) = *(v0 + 1053);
    *(v0 + 3745) = *(v0 + 4209);
    v108 = v89;
    v109 = v88;
    LOWORD(v106) = *(v0 + v358 + 4);
    *(v0 + 4103) = v106;
    *(v0 + 881) = *(v0 + 1795);
    v110 = v102;
    *(v0 + 889) = *(v0 + 1689);
    v111 = v101;
    *(v0 + 897) = *(v0 + 947);
    *(v0 + 901) = *(v0 + 1265);
    *(v0 + 1859) = v106;
    *(v0 + 933) = *(v0 + 1159);
    v112 = v0[v362];
    v113 = *(v0 + v383);
    LOBYTE(v88) = v0[v381];
    v114 = v0[v385];
    LOBYTE(v92) = v0[v387];
    v115 = v0[v389];
    LOBYTE(v91) = v0[v391];
    v116 = v0[v393];
    v117 = v0[v395];
    v118 = v0[v397];
    v119 = v0[v399];
    v120 = v0[v401];
    v0[421] = v82;
    v0[422] = v83;
    v0[423] = v459;
    v0[424] = v84;
    v0[425] = v454;
    v0[426] = v451;
    v0[427] = v423;
    v0[428] = v439;
    v0[429] = v426;
    v0[430] = v436;
    v0[431] = v463;
    v121 = v406;
    v0[432] = v406;
    v0[433] = v474;
    v0[434] = v466;
    v0[435] = v448;
    v0[436] = __dst;
    v0[437] = v445;
    *(v0 + 3504) = v433;
    v388 = v109;
    v390 = v107;
    v0[439] = v107;
    *(v0 + 3520) = v442;
    v0[441] = v109;
    v384 = v93;
    v386 = v108;
    v0[442] = v108;
    v0[443] = v413;
    *(v0 + 3552) = v420;
    v0[445] = v410;
    *(v0 + 3568) = v430;
    v0[447] = v93;
    v396 = v94;
    *(v0 + 3584) = v94;
    v382 = v95;
    v0[449] = v95;
    v400 = v97;
    *(v0 + 3600) = v97;
    LOBYTE(v95) = v91;
    v122 = v113;
    v123 = v98;
    v0[451] = v98;
    v402 = v99;
    *(v0 + 3616) = v99;
    v124 = v351;
    v125 = v370;
    v126 = v373;
    v128 = v376;
    v127 = v379;
    v129 = v88;
    v398 = v111;
    v0[453] = v111;
    v130 = v110;
    v0[454] = v110;
    v0[455] = v379;
    v0[456] = v351;
    v0[457] = v376;
    v0[458] = v370;
    v0[459] = v373;
    v131 = v103;
    v0[460] = v103;
    v392 = v116;
    v394 = v104;
    v0[461] = v104;
    v132 = v118;
    v133 = v367;
    *(v0 + 3696) = v367;
    v0[463] = v112;
    *(v0 + 3712) = v88;
    *(v0 + 3713) = v122;
    v0[465] = v114;
    v134 = v92;
    *(v0 + 3728) = v92;
    v135 = v117;
    v0[467] = v115;
    v136 = v95;
    *(v0 + 3744) = v95;
    v0[469] = v116;
    v0[470] = v117;
    v0[471] = v132;
    v0[472] = v119;
    *(v0 + 3784) = v120;
    goto LABEL_31;
  }

  v76 = v29 ? v29 : 0xE700000000000000;
  if (*(v26 + 16))
  {
    if (v29)
    {
      v77 = v28;
    }

    else
    {
      v77 = 0x746C7561666564;
    }

    v78 = sub_10003ADCC(v77, v76);
    v80 = v79;

    if (v80)
    {
      v403 = v27;
      v476 = v24;
      v34 = v0 + 845;
      v81 = (*(v26 + 56) + 424 * v78);
      memcpy(v0 + 792, v81, 0x1A1uLL);
      memmove(v0 + 845, v81, 0x1A1uLL);
      nullsub_7(v0 + 845);
      sub_1000AA624((v0 + 792), (v0 + 739));
      v401 = 897;
      v399 = 896;
      v397 = 895;
      v395 = 894;
      v393 = 893;
      v364 = 7137;
      v391 = 892;
      v389 = 891;
      v360 = 7121;
      v387 = 890;
      v385 = 889;
      v358 = 7106;
      v383 = 7105;
      v381 = 888;
      v362 = 887;
      v366 = 7089;
      v356 = 886;
      v354 = 885;
      v352 = 884;
      v372 = 883;
      v369 = 882;
      v375 = 881;
      v350 = 880;
      v378 = 879;
      v349 = 878;
      v348 = 877;
      v347 = 7009;
      v346 = 876;
      v345 = 875;
      v344 = 6993;
      v343 = 874;
      v342 = 873;
      v339 = 6977;
      v341 = 872;
      v340 = 871;
      v428 = 6961;
      v338 = 870;
      v408 = 869;
      v36 = 6945;
      v418 = 868;
      v411 = 867;
      v337 = 866;
      v37 = 865;
      v38 = 6913;
      v39 = 864;
      v40 = 863;
      v41 = 6897;
      v42 = 862;
      v43 = 861;
      v44 = 860;
      v45 = 859;
      v46 = 858;
      v47 = 857;
      v48 = 856;
      v49 = 855;
      v50 = 854;
      v51 = 853;
      v52 = 852;
      v53 = 851;
      v54 = 850;
      v55 = 849;
      v56 = 848;
      v57 = 847;
      v58 = 846;
      goto LABEL_26;
    }
  }

  else
  {
LABEL_27:
  }

  if (!*(v26 + 16) || (v137 = sub_10003ADCC(21333, 0xE200000000000000), (v138 & 1) == 0))
  {
    v150 = v0[932];
    v151 = v0[931];
    v152 = v0[930];

    _StringGuts.grow(_:)(30);

    strcpy(v498, "device region ");
    HIBYTE(v498[1]) = -18;
    v153._countAndFlagsBits = v478;
    v153._object = v24;
    String.append(_:)(v153);
    v154._countAndFlagsBits = 0x70757320746F6E20;
    v154._object = 0xEE00646574726F70;
    String.append(_:)(v154);
    v484 = *(v151 + 104);
    v484(v150, enum case for DIPError.Code.regionNotSupported(_:), v152);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v155 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v156 = *(*v155 + 72);
    v157 = (*(*v155 + 80) + 32) & ~*(*v155 + 80);
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_1006BF520;
    v159 = v158 + v157;
    v160 = (v159 + v155[14]);
    v161 = enum case for DIPError.PropertyKey.deviceRegion(_:);
    v162 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v162 - 8) + 104))(v159, v161, v162);
    v160[3] = &type metadata for String;
    v160[4] = &protocol witness table for String;
    *v160 = v478;
    v160[1] = v24;
    sub_10003C9C0(v158);
    swift_setDeallocating();
    sub_10000BE18(v159, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    goto LABEL_11;
  }

  v403 = v27;
  v476 = v24;
  v139 = (*(v26 + 56) + 424 * v137);
  memcpy(v0 + 527, v139, 0x1A1uLL);
  memmove(v0 + 474, v139, 0x1A1uLL);
  nullsub_7(v0 + 474);
  v365 = *(v0 + 4632);
  v363 = v0[577];
  v140 = v0[578];
  v141 = v0[576];
  v142 = v0[573];
  v361 = *(v0 + 4592);
  v407 = v0[571];
  v359 = *(v0 + 4576);
  v143 = *(v0 + 4561);
  v144 = v0[569];
  v357 = *(v0 + 4560);
  v392 = v0[575];
  v394 = v0[567];
  v368 = *(v0 + 4544);
  v131 = v0[566];
  v374 = v0[565];
  v377 = v0[563];
  v371 = v0[564];
  v145 = v0[562];
  v398 = v0[559];
  v353 = v0[557];
  v355 = v0[560];
  v402 = *(v0 + 4464);
  v380 = v0[561];
  v382 = v0[555];
  v400 = *(v0 + 4448);
  v396 = *(v0 + 4432);
  v430 = *(v0 + 4416);
  v410 = v0[551];
  v413 = v0[549];
  v84 = v0[530];
  v83 = v0[528];
  v82 = v0[527];
  v420 = *(v0 + 4400);
  v384 = v0[553];
  v386 = v0[548];
  v388 = v0[547];
  v390 = v0[545];
  v442 = *(v0 + 4368);
  v433 = *(v0 + 4352);
  v445 = v0[543];
  v448 = v0[541];
  __dst = v0[542];
  v474 = v0[539];
  v463 = v0[537];
  v466 = v0[540];
  v146 = v0[538];
  v423 = v0[533];
  v426 = v0[535];
  v436 = v0[536];
  v439 = v0[534];
  v451 = v0[532];
  v454 = v0[531];
  v459 = v0[529];
  sub_1000AA624((v0 + 527), (v0 + 580));
  memcpy(v0 + 421, v0 + 474, 0x1A1uLL);
  v119 = v140;
  v135 = v141;
  v122 = v143;
  v112 = v144;
  v120 = v365;
  v115 = v142;
  v132 = v363;
  v124 = v145;
  v126 = v374;
  v128 = v377;
  v127 = v380;
  v134 = v359;
  v136 = v361;
  v123 = v353;
  v130 = v355;
  v133 = v368;
  v129 = v357;
  v121 = v146;
  v125 = v371;
  v114 = v407;
LABEL_31:
  *(v0 + 8217) = v120;
  v0[1006] = v119;
  v0[1005] = v132;
  v0[1004] = v135;
  v0[1003] = v392;
  v0[1002] = v115;
  v0[1001] = v114;
  *(v0 + 8211) = v122;
  v0[1000] = v112;
  v0[999] = v394;
  v0[998] = v131;
  v0[997] = v126;
  v0[996] = v125;
  v0[995] = v128;
  v0[994] = v124;
  v0[993] = v127;
  v0[992] = v130;
  v0[991] = v398;
  v0[990] = v123;
  v0[989] = v382;
  v0[988] = v384;
  v0[987] = v410;
  v0[986] = v413;
  v0[985] = v386;
  v0[984] = v388;
  v0[983] = v390;
  v0[982] = v445;
  v0[981] = __dst;
  v0[980] = v448;
  v0[979] = v466;
  v0[978] = v474;
  v0[977] = v121;
  v0[976] = v463;
  v0[975] = v436;
  v0[974] = v426;
  v0[973] = v439;
  v0[972] = v423;
  v0[971] = v451;
  v0[970] = v454;
  v0[969] = v84;
  v0[968] = v459;
  v0[967] = v83;
  v0[966] = v82;
  *(v0 + 8272) = v433 & 1;
  *(v0 + 8264) = v442 & 1;
  *(v0 + 8256) = v420 & 1;
  *(v0 + 8248) = v430 & 1;
  *(v0 + 8240) = v396 & 1;
  *(v0 + 8280) = v400 & 1;
  *(v0 + 8232) = v402 & 1;
  *(v0 + 8224) = v133 & 1;
  *(v0 + 8216) = v129 & 1;
  v147 = v0[923];
  *(v0 + 8200) = v134 & 1;
  *(v0 + 8208) = v136 & 1;
  if (v147)
  {
    v148 = v0[922];
    v149 = v476;
  }

  else
  {
    v163 = [objc_opt_self() _deviceLanguage];
    v149 = v476;
    if (v163)
    {
      v164 = v163;
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v165;
    }

    else
    {
      v148 = 0;
      v147 = 0xE000000000000000;
    }
  }

  v0[918] = v148;
  v166 = v0[945];
  v167 = v0[942];
  v168 = v0[941];
  v169 = v0[940];
  v170 = v0[939];
  v171 = v0[923];
  v0[919] = v147;

  Locale.init(identifier:)();
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v169 + 8))(v168, v170);
  v172 = type metadata accessor for Locale.LanguageCode();
  v173 = *(v172 - 8);
  v174 = (*(v173 + 48))(v167, 1, v172);
  v175 = v0[942];
  if (v174 == 1)
  {
    v176 = v0[945];
    v177 = v0[943];
    v178 = v0[932];
    v179 = v0[931];
    v180 = v0[930];

    sub_10000BE18((v0 + 421), &qword_10083AAA0, &unk_1006D8E00);

    sub_10000BE18(v175, &qword_10083DC48, &unk_1006DB7B0);
    v484 = *(v179 + 104);
    v484(v178, enum case for DIPError.Code.unexpectedDeviceState(_:), v180);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v469(v176, v177);

    goto LABEL_12;
  }

  v460 = v147;
  v181 = v0[958];
  v182 = Locale.LanguageCode.identifier.getter();
  v184 = v183;
  (*(v173 + 8))(v175, v172);
  v498[0] = v182;
  v498[1] = v184;

  v185._countAndFlagsBits = 45;
  v185._object = 0xE100000000000000;
  String.append(_:)(v185);

  v186._countAndFlagsBits = v478;
  v186._object = v149;
  String.append(_:)(v186);

  v187 = v182;
  defaultLogger()();
  v188 = Logger.logObject.getter();
  v189 = static os_log_type_t.default.getter();
  v190 = os_log_type_enabled(v188, v189);
  v191 = v0[958];
  v192 = v0[948];
  v455 = v148;
  if (v190)
  {
    v193 = swift_slowAlloc();
    v479 = v187;
    v194 = swift_slowAlloc();
    v498[0] = v194;
    *v193 = 136446210;

    v195 = sub_100141FE4(v148, v460, v498);

    *(v193 + 4) = v195;
    _os_log_impl(&_mh_execute_header, v188, v189, "deviceLanguage = %{public}s", v193, 0xCu);
    sub_10000BB78(v194);
    v187 = v479;
  }

  v481(v191, v192);
  v196 = v0[957];
  defaultLogger()();

  v197 = Logger.logObject.getter();
  v198 = static os_log_type_t.default.getter();

  v199 = os_log_type_enabled(v197, v198);
  v200 = v0[957];
  v201 = v0[948];
  if (v199)
  {
    v202 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    v498[0] = v203;
    *v202 = 136446210;
    v204 = sub_100141FE4(v187, v184, v498);

    *(v202 + 4) = v204;
    _os_log_impl(&_mh_execute_header, v197, v198, "languageRegion = %{public}s", v202, 0xCu);
    sub_10000BB78(v203);
  }

  else
  {
  }

  v481(v200, v201);
  v205 = v0 + 544;
  v206 = objc_opt_self();
  v207 = [v206 standardUserDefaults];
  v208._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceFailAttributeConfigFetch.getter();
  v209 = NSUserDefaults.internalBool(forKey:)(v208);

  if (v209)
  {
    v210 = v0[956];
    defaultLogger()();
    v211 = Logger.logObject.getter();
    v212 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      *v213 = 0;
      _os_log_impl(&_mh_execute_header, v211, v212, "Internal setting for forceFailAttributeConfigFetch has been enabled. Setting the device language to XX", v213, 2u);
    }

    v214 = v0[956];
    v215 = v0[948];

    v481(v214, v215);
    swift_beginAccess();
    v216 = 22616;
    v0[918] = 22616;
    v0[919] = 0xE200000000000000;

    v217 = 0xE200000000000000;
  }

  else
  {
    v216 = v455;
    v217 = v460;
  }

  v0[1008] = v217;
  v0[1007] = v216;
  v456 = v216;
  v0[916] = v216;
  v0[917] = v217;
  v218 = swift_task_alloc();
  *(v218 + 16) = v0 + 916;

  v219 = sub_10035C8E4(sub_1000F713C, v218, v403);

  if ((v219 & 1) == 0)
  {
    if (*(v0 + 8210) == 1)
    {
      v236 = v0[945];
      v237 = v0[943];
      v238 = v0[932];
      v239 = v0[931];
      v240 = v0[930];

      sub_10000BE18((v0 + 421), &qword_10083AAA0, &unk_1006D8E00);
      v484 = *(v239 + 104);
      v484(v238, enum case for DIPError.Code.attributeConfigUnavailable(_:), v240);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    else
    {
      v252 = v0[954];
      defaultLogger()();
      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.default.getter();
      v255 = os_log_type_enabled(v253, v254);
      v256 = v0[954];
      v257 = v0[948];
      if (v255)
      {
        v258 = swift_slowAlloc();
        v259 = swift_slowAlloc();
        v498[0] = v259;
        *v258 = 136446210;

        v260 = sub_100141FE4(v456, v217, v498);

        *(v258 + 4) = v260;
        v205 = v0 + 544;
        _os_log_impl(&_mh_execute_header, v253, v254, "Doesn't contain deviceLanguage = %{public}s fetching default attribute config", v258, 0xCu);
        sub_10000BB78(v259);
      }

      v481(v256, v257);
      v261 = v0[934];
      v262 = v0[933];
      v263 = v0[928];
      URL.init(string:)();
      v246 = *(v261 + 48);
      if (v246(v263, 1, v262) != 1)
      {
        v268 = v0 + 928;
        v269 = 936;
        goto LABEL_66;
      }

      v236 = v0[945];
      v237 = v0[943];
      v264 = v0[932];
      v265 = v0[931];
      v266 = v0[930];
      v267 = v0[928];

      sub_10000BE18((v0 + 421), &qword_10083AAA0, &unk_1006D8E00);
      sub_10000BE18(v267, &unk_100844540, &unk_1006BFBC0);
      v484 = *(v265 + 104);
      v484(v264, enum case for DIPError.Code.serverResponseInconsistent(_:), v266);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v234 = v236;
    v235 = v237;
LABEL_63:
    v469(v234, v235);

    goto LABEL_12;
  }

  v220 = [v206 standardUserDefaults];
  v221._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceFailAttributeConfigFetchWithNetworkFailure.getter();
  v222 = NSUserDefaults.internalBool(forKey:)(v221);

  if (v222)
  {
    v223 = v0[955];
    sub_10000BE18((v0 + 421), &qword_10083AAA0, &unk_1006D8E00);

    defaultLogger()();
    v224 = Logger.logObject.getter();
    v225 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      *v226 = 0;
      _os_log_impl(&_mh_execute_header, v224, v225, "Internal setting for forceFailAttributeConfigFetchWithNetworkFailure has been enabled. Will fail attribute config fetch.", v226, 2u);
    }

    v227 = v0[955];
    v228 = v0[948];
    v229 = v0[945];
    v230 = v0[943];
    v231 = v0[932];
    v232 = v0[931];
    v233 = v0[930];

    v481(v227, v228);
    v484 = *(v232 + 104);
    v484(v231, enum case for DIPError.Code.attributeConfigUnavailable(_:), v233);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v234 = v229;
    v235 = v230;
    goto LABEL_63;
  }

  v241 = v0[934];
  v242 = v0[933];
  v243 = v0[929];
  v244 = v0[925];
  v245 = v0[924];

  sub_1005BA660(v456, v217, v245, v244, v243);

  v246 = *(v241 + 48);
  if (v246(v243, 1, v242) == 1)
  {
    v467 = v0[945];
    v247 = v0[943];
    v248 = v0[932];
    v249 = v0[931];
    v250 = v0[930];
    v251 = v0[929];

    sub_10000BE18((v0 + 421), &qword_10083AAA0, &unk_1006D8E00);
    sub_10000BE18(v251, &unk_100844540, &unk_1006BFBC0);
    v484 = *(v249 + 104);
    v484(v248, enum case for DIPError.Code.serverResponseInconsistent(_:), v250);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v469(v467, v247);

    goto LABEL_12;
  }

  v268 = v0 + 929;
  v269 = 937;
LABEL_66:
  v270 = v0[v269];
  v271 = v0[938];
  v272 = v0[933];
  v273 = *(v0[934] + 32);
  v273(v270, *v268, v272);
  v273(v271, v270, v272);
  v0[1010] = v246;
  v0[1009] = v273;
  if (v205[3857] != 1)
  {
    *(v0 + 1649) = *v486;
    *(v0 + 1665) = *v487;
    *(v0 + 425) = *&v488[3];
    *(v0 + 1697) = *v488;
    *(v0 + 429) = *&v489[3];
    *(v0 + 1713) = *v489;
    *(v0 + 433) = *&v490[3];
    *(v0 + 1729) = *v490;
    *(v0 + 437) = *&v491[3];
    *(v0 + 1745) = *v491;
    *(v0 + 441) = *&v492[3];
    *(v0 + 1761) = *v492;
    *(v0 + 461) = *&v493[3];
    *(v0 + 1841) = *v493;
    *(v0 + 1858) = v494;
    *(v0 + 469) = *&v496[3];
    *(v0 + 1873) = *v496;
    *(v0 + 473) = *&v497[3];
    *(v0 + 1889) = *v497;
    *(v0 + 2137) = *v486;
    *(v0 + 2153) = *v487;
    *(v0 + 547) = *&v488[3];
    *(v0 + 2185) = *v488;
    *(v0 + 551) = *&v489[3];
    *(v0 + 2201) = *v489;
    *(v0 + 555) = *&v490[3];
    *(v0 + 2217) = *v490;
    *(v0 + 559) = *&v491[3];
    *(v0 + 2233) = *v491;
    *(v0 + 563) = *&v492[3];
    *(v0 + 2249) = *v492;
    *(v0 + 583) = *&v493[3];
    *(v0 + 2329) = *v493;
    *(v0 + 2346) = v494;
    *(v0 + 591) = *&v496[3];
    *(v0 + 2361) = *v496;
    *(v0 + 595) = *&v497[3];
    *(v0 + 2377) = *v497;
    *(v0 + 605) = *(v498 + 3);
    *(v0 + 2417) = v498[0];
    *(v0 + 413) = *&v486[3];
    *(v0 + 417) = *&v487[3];
    *(v0 + 931) = v495;
    v278 = v0[964];
    v0[185] = v278;
    v0[246] = v278;
    v279 = v0[965];
    v0[186] = v279;
    v0[247] = v279;
    v280 = v0[1007];
    v0[187] = v280;
    v0[248] = v280;
    v281 = v0[968];
    v0[191] = v281;
    v0[252] = v281;
    v282 = v0[970];
    v0[193] = v282;
    v0[254] = v282;
    v283 = v0[971];
    v0[194] = v283;
    v0[255] = v283;
    v284 = v0[972];
    v0[195] = v284;
    v0[256] = v284;
    v285 = v0[973];
    v0[196] = v285;
    v0[257] = v285;
    v286 = v0[974];
    v0[197] = v286;
    v0[258] = v286;
    v287 = v0[975];
    v0[198] = v287;
    v0[259] = v287;
    v288 = v0[976];
    v0[199] = v288;
    v0[260] = v288;
    v289 = v0[977];
    v0[200] = v289;
    v0[261] = v289;
    v290 = v0[978];
    v0[201] = v290;
    v0[262] = v290;
    v291 = v0[979];
    v0[202] = v291;
    v0[263] = v291;
    v292 = v0[980];
    v0[203] = v292;
    v0[264] = v292;
    v293 = v0[981];
    v0[204] = v293;
    v0[265] = v293;
    v294 = v0[982];
    v0[205] = v294;
    v0[266] = v294;
    LOBYTE(v294) = v205[3920];
    *(v0 + 1648) = v294;
    *(v0 + 2136) = v294;
    *(v0 + 535) = *&v486[3];
    v295 = v0[983];
    v0[207] = v295;
    v0[268] = v295;
    LOBYTE(v295) = v205[3912];
    *(v0 + 1664) = v295;
    *(v0 + 2152) = v295;
    *(v0 + 539) = *&v487[3];
    v296 = v0[984];
    v0[209] = v296;
    v0[270] = v296;
    v297 = v0[985];
    v0[210] = v297;
    v0[271] = v297;
    v298 = v0[986];
    v0[211] = v298;
    v0[272] = v298;
    LOBYTE(v298) = v205[3904];
    *(v0 + 1696) = v298;
    *(v0 + 2184) = v298;
    v299 = v0[987];
    v0[213] = v299;
    v0[274] = v299;
    LOBYTE(v299) = v205[3896];
    *(v0 + 1712) = v299;
    *(v0 + 2200) = v299;
    v300 = v0[988];
    v0[215] = v300;
    v0[276] = v300;
    LOBYTE(v300) = v205[3888];
    *(v0 + 1728) = v300;
    *(v0 + 2216) = v300;
    v301 = v0[989];
    v0[217] = v301;
    v0[278] = v301;
    LOBYTE(v301) = v205[3928];
    *(v0 + 1744) = v301;
    *(v0 + 2232) = v301;
    v302 = v0[990];
    v0[219] = v302;
    v0[280] = v302;
    LOBYTE(v302) = v205[3880];
    *(v0 + 1760) = v302;
    *(v0 + 2248) = v302;
    v303 = v0[991];
    v0[221] = v303;
    v0[282] = v303;
    v304 = v0[992];
    v0[222] = v304;
    v0[283] = v304;
    v305 = v0[993];
    v0[223] = v305;
    v0[284] = v305;
    v306 = v0[994];
    v0[224] = v306;
    v0[285] = v306;
    v307 = v0[995];
    v0[225] = v307;
    v0[286] = v307;
    v308 = v0[996];
    v0[226] = v308;
    v0[287] = v308;
    v309 = v0[997];
    v0[227] = v309;
    v0[288] = v309;
    v310 = v0[998];
    v0[228] = v310;
    v0[289] = v310;
    v311 = v0[999];
    v0[229] = v311;
    v0[290] = v311;
    LOBYTE(v311) = v205[3872];
    *(v0 + 1840) = v311;
    *(v0 + 2328) = v311;
    v312 = v0[1000];
    v0[231] = v312;
    v0[292] = v312;
    LOBYTE(v312) = v205[3864];
    *(v0 + 1856) = v312;
    *(v0 + 2344) = v312;
    LOBYTE(v312) = v205[3859];
    *(v0 + 1857) = v312;
    *(v0 + 2345) = v312;
    *(v0 + 1175) = v495;
    v313 = v0[1001];
    v0[233] = v313;
    v0[294] = v313;
    LOBYTE(v313) = v205[3848];
    *(v0 + 1872) = v313;
    *(v0 + 2360) = v313;
    v314 = v0[1002];
    v0[235] = v314;
    v0[296] = v314;
    LOBYTE(v314) = v205[3856];
    *(v0 + 1888) = v314;
    *(v0 + 2376) = v314;
    v315 = v0[1003];
    v0[237] = v315;
    v0[298] = v315;
    v316 = v0[1004];
    v0[238] = v316;
    v0[299] = v316;
    v317 = v0[1005];
    v0[239] = v317;
    v0[300] = v317;
    v318 = v0[1006];
    v0[240] = v318;
    v0[301] = v318;
    v319 = v0[1008];
    LOBYTE(v318) = v205[3865];
    v320 = v0[969];
    v321 = v0[967];
    v322 = v0[966];
    *(v0 + 1928) = v318;
    *(v0 + 2416) = v318;
    *(v0 + 303) = 0u;
    *(v0 + 305) = 0u;
    v323 = v0[926];
    v0[188] = v319;
    v0[189] = v322;
    v0[190] = v321;
    v0[192] = v320;
    *(v0 + 122) = 0u;
    *(v0 + 121) = 0u;
    v0[249] = v319;
    v0[250] = v322;
    v0[251] = v321;
    v0[253] = v320;

    sub_1000F26FC((v0 + 185), (v0 + 124));
    sub_1000F2758((v0 + 246));
    memcpy(v0 + 307, v0 + 185, 0x1E8uLL);
    nullsub_7(v0 + 307);
    memcpy(v0 + 2, v0 + 307, 0x1E8uLL);
    v324 = *(v323 + 56);
    *(swift_task_alloc() + 16) = v0 + 2;
    sub_1000F26FC((v0 + 185), (v0 + 63));
    os_unfair_lock_lock(v324 + 126);
    sub_1005BE508(&v324[4]);
    os_unfair_lock_unlock(v324 + 126);
    v325 = v0[953];
    sub_1000F2758((v0 + 185));

    defaultLogger()();
    v326 = Logger.logObject.getter();
    v327 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v326, v327))
    {
      v328 = swift_slowAlloc();
      *v328 = 0;
      _os_log_impl(&_mh_execute_header, v326, v327, "active config file fetch successful", v328, 2u);
    }

    v424 = v0[963];
    v427 = v0[1008];
    v421 = v0[962];
    v414 = v0[961];
    v329 = v0[960];
    v431 = v0[959];
    v434 = v0[958];
    v437 = v0[957];
    v440 = v0[956];
    v443 = v0[955];
    v446 = v0[954];
    v330 = v0[953];
    v449 = v0[952];
    v452 = v0[951];
    v331 = v0[948];
    v457 = v0[950];
    v461 = v0[947];
    v332 = v0[945];
    v333 = v0[943];
    v464 = v0[946];
    v468 = v0[942];
    v471 = v0[941];
    v334 = v0[938];
    v473 = v0[937];
    v475 = v0[936];
    v477 = v0[935];
    v335 = v0[934];
    v336 = v0[933];
    v480 = v0[932];
    v482 = v0[929];
    v483 = v0[928];
    v485 = v0[927];
    __dstb = v0[921];

    v329(v330, v331);
    (*(v335 + 8))(v334, v336);
    v421(v332, v333);
    sub_1005BE274(0);

    memcpy(__dstb, v0 + 185, 0x1E8uLL);

    v75 = v0[1];
    goto LABEL_13;
  }

  v274 = swift_task_alloc();
  v0[1011] = v274;
  *v274 = v0;
  v274[1] = sub_1005B5F0C;
  v275 = v0[938];
  v276 = v0[926];
  v277 = v205[3849];

  sub_1005BA8AC(v275, v277);
}

uint64_t sub_1005B5F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[898] = v5;
  v7[899] = a1;
  v7[900] = a2;
  v7[901] = a3;
  v7[902] = a4;
  v7[903] = v4;
  v8 = v6[1011];
  v11 = *v5;
  v7[1012] = v4;

  if (v4)
  {
    v9 = sub_1005B6700;
  }

  else
  {
    v9 = sub_1005B6038;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_1005B6038()
{
  v1 = v0[1012];
  v2 = v0[899];
  v3 = v0[900];
  v4 = v0[901];
  v5 = v0[902];

  if (v2)
  {

    v6 = v4;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *(v0 + 2417) = *v95;
  v9 = v0[964];
  v0[185] = v9;
  v0[246] = v9;
  v10 = v0[965];
  v0[186] = v10;
  v0[247] = v10;
  v11 = v0[1007];
  v0[187] = v11;
  v0[248] = v11;
  v12 = v0[968];
  v0[191] = v12;
  v0[252] = v12;
  v13 = v0[970];
  v0[193] = v13;
  v0[254] = v13;
  v14 = v0[971];
  v0[194] = v14;
  v0[255] = v14;
  v15 = v0[972];
  v0[195] = v15;
  v0[256] = v15;
  v16 = v0[973];
  v0[196] = v16;
  v0[257] = v16;
  v17 = v0[974];
  v0[197] = v17;
  v0[258] = v17;
  v18 = v0[975];
  v0[198] = v18;
  v0[259] = v18;
  v19 = v0[976];
  v0[199] = v19;
  v0[260] = v19;
  v20 = v0[977];
  v0[200] = v20;
  v0[261] = v20;
  v21 = v0[978];
  v0[201] = v21;
  v0[262] = v21;
  v22 = v0[979];
  v0[202] = v22;
  v0[263] = v22;
  v23 = v0[980];
  v0[203] = v23;
  v0[264] = v23;
  v24 = v0[981];
  v0[204] = v24;
  v0[265] = v24;
  v25 = v0[982];
  v0[205] = v25;
  v0[266] = v25;
  LOBYTE(v25) = *(v0 + 8272);
  *(v0 + 1648) = v25;
  *(v0 + 2136) = v25;
  v26 = v0[983];
  v0[207] = v26;
  v0[268] = v26;
  LOBYTE(v26) = *(v0 + 8264);
  *(v0 + 1664) = v26;
  *(v0 + 2152) = v26;
  v27 = v0[984];
  v0[209] = v27;
  v0[270] = v27;
  v28 = v0[985];
  v0[210] = v28;
  v0[271] = v28;
  v29 = v0[986];
  v0[211] = v29;
  v0[272] = v29;
  LOBYTE(v29) = *(v0 + 8256);
  *(v0 + 1696) = v29;
  *(v0 + 2184) = v29;
  v30 = v0[987];
  v0[213] = v30;
  v0[274] = v30;
  LOBYTE(v30) = *(v0 + 8248);
  *(v0 + 1712) = v30;
  *(v0 + 2200) = v30;
  v31 = v0[988];
  v0[215] = v31;
  v0[276] = v31;
  LOBYTE(v31) = *(v0 + 8240);
  *(v0 + 1728) = v31;
  *(v0 + 2216) = v31;
  v32 = v0[989];
  v0[217] = v32;
  v0[278] = v32;
  LOBYTE(v32) = *(v0 + 8280);
  *(v0 + 1744) = v32;
  *(v0 + 2232) = v32;
  v33 = v0[990];
  v0[219] = v33;
  v0[280] = v33;
  LOBYTE(v33) = *(v0 + 8232);
  *(v0 + 1760) = v33;
  *(v0 + 2248) = v33;
  v34 = v0[991];
  v0[221] = v34;
  v0[282] = v34;
  v35 = v0[992];
  v0[222] = v35;
  v0[283] = v35;
  v36 = v0[993];
  v0[223] = v36;
  v0[284] = v36;
  v37 = v0[994];
  v0[224] = v37;
  v0[285] = v37;
  v38 = v0[995];
  v0[225] = v38;
  v0[286] = v38;
  v39 = v0[996];
  v0[226] = v39;
  v0[287] = v39;
  v40 = v0[997];
  v0[227] = v40;
  v0[288] = v40;
  v41 = v0[998];
  v0[228] = v41;
  v0[289] = v41;
  v42 = v0[999];
  v0[229] = v42;
  v0[290] = v42;
  LOBYTE(v42) = *(v0 + 8224);
  *(v0 + 1840) = v42;
  *(v0 + 2328) = v42;
  v43 = v0[1000];
  v0[231] = v43;
  v0[292] = v43;
  LOBYTE(v43) = *(v0 + 8216);
  *(v0 + 1856) = v43;
  *(v0 + 2344) = v43;
  LOBYTE(v43) = *(v0 + 8211);
  *(v0 + 1857) = v43;
  *(v0 + 2345) = v43;
  v44 = v0[1001];
  v0[233] = v44;
  v0[294] = v44;
  LOBYTE(v44) = *(v0 + 8200);
  *(v0 + 1872) = v44;
  *(v0 + 2360) = v44;
  v45 = v0[1002];
  v0[235] = v45;
  v0[296] = v45;
  LOBYTE(v45) = *(v0 + 8208);
  *(v0 + 1888) = v45;
  *(v0 + 2376) = v45;
  v46 = v0[1003];
  v0[237] = v46;
  v0[298] = v46;
  v47 = v0[1004];
  v0[238] = v47;
  v0[299] = v47;
  v48 = v0[1005];
  v0[239] = v48;
  v0[300] = v48;
  v49 = v0[1006];
  v0[240] = v49;
  v0[301] = v49;
  LOBYTE(v49) = *(v0 + 8217);
  *(v0 + 1928) = v49;
  *(v0 + 2416) = v49;
  *(v0 + 605) = *&v95[3];
  v0[243] = v7;
  v0[304] = v7;
  v0[244] = v6;
  v0[305] = v6;
  v50 = v0[1008];
  v51 = v0[969];
  v52 = v0[967];
  v53 = v0[966];
  v0[245] = v8;
  v0[306] = v8;
  v54 = v0[926];
  v0[188] = v50;
  v0[189] = v53;
  v0[190] = v52;
  v0[192] = v51;
  v0[242] = v2;
  v0[249] = v50;
  v0[250] = v53;
  v0[251] = v52;
  v0[253] = v51;
  v0[303] = v2;

  sub_1000F26FC((v0 + 185), (v0 + 124));
  sub_1000F2758((v0 + 246));
  memcpy(v0 + 307, v0 + 185, 0x1E8uLL);
  nullsub_7(v0 + 307);
  memcpy(v0 + 2, v0 + 307, 0x1E8uLL);
  v55 = *(v54 + 56);
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1000F26FC((v0 + 185), (v0 + 63));
  os_unfair_lock_lock(v55 + 126);
  sub_1005BE508(&v55[4]);
  os_unfair_lock_unlock(v55 + 126);
  if (!v1)
  {
    v94 = v2;
    v56 = v0[953];
    sub_1000F2758((v0 + 185));

    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "active config file fetch successful", v59, 2u);
    }

    v72 = v0[963];
    v73 = v0[1008];
    v71 = v0[962];
    v69 = v0[961];
    v60 = v0[960];
    v74 = v0[959];
    v75 = v0[958];
    v76 = v0[957];
    v77 = v0[956];
    v78 = v0[955];
    v79 = v0[954];
    v61 = v0[953];
    v80 = v0[952];
    v81 = v0[951];
    v62 = v0[948];
    v82 = v0[950];
    v83 = v0[947];
    v63 = v0[945];
    v64 = v0[943];
    v84 = v0[946];
    v85 = v0[942];
    v65 = v0[938];
    v86 = v0[941];
    v87 = v0[937];
    v88 = v0[936];
    v89 = v0[935];
    v66 = v0[934];
    v67 = v0[933];
    v90 = v0[932];
    v91 = v0[929];
    v92 = v0[928];
    v93 = v0[927];
    __dst = v0[921];

    v60(v61, v62);
    (*(v66 + 8))(v65, v67);
    v71(v63, v64);
    sub_1005BE274(v94);

    memcpy(__dst, v0 + 185, 0x1E8uLL);

    v68 = v0[1];

    v68();
  }
}

uint64_t sub_1005B6700()
{
  v138 = v0;
  v1 = v0 + 0x2000;
  v2 = *(v0 + 8096);
  v3 = *(v0 + 7616);
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 8096);
    v132 = *(v0 + 7680);
    v135 = *(v0 + 7688);
    v130 = *(v0 + 7616);
    v7 = *(v0 + 7584);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v137 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 7304);
    v11 = *(v0 + 7312);
    v12 = *(v0 + 7320);
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v137);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "The error received is %s", v8, 0xCu);
    sub_10000BB78(v9);

    v1 = v0 + 0x2000;

    v132(v130, v7);
  }

  else
  {
    v16 = *(v0 + 7688);
    v17 = *(v0 + 7680);
    v18 = *(v0 + 7616);
    v19 = *(v0 + 7584);

    v17(v18, v19);
  }

  if (*(v1 + 18) == 1)
  {
    v110 = *(v0 + 8096);
    v124 = *(v0 + 8064);
    v20 = *(v0 + 7720);
    v118 = *(v0 + 7696);
    v120 = *(v0 + 7704);
    v114 = *(v0 + 7544);
    v116 = *(v0 + 7560);
    v21 = *(v0 + 7504);
    v22 = *(v0 + 7472);
    v23 = *(v0 + 7464);
    v24 = *(v0 + 7456);
    v25 = *(v0 + 7448);
    v26 = *(v0 + 7440);

    sub_10000BE18(v0 + 3368, &qword_10083AAA0, &unk_1006D8E00);
    v133 = *(v25 + 104);
    v133(v24, enum case for DIPError.Code.identityProofingAttributeConfigFetchFailed(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_8:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v22 + 8))(v21, v23);
LABEL_9:
    v118(v116, v114);

    v94 = *(v0 + 7672);
    v95 = *(v0 + 7664);
    v96 = *(v0 + 7656);
    v97 = *(v0 + 7648);
    v98 = *(v0 + 7640);
    v99 = *(v0 + 7632);
    v100 = *(v0 + 7624);
    v101 = *(v0 + 7616);
    v102 = *(v0 + 7608);
    v103 = *(v0 + 7600);
    v104 = *(v0 + 7576);
    v105 = *(v0 + 7568);
    v106 = *(v0 + 7560);
    v107 = *(v0 + 7536);
    v108 = *(v0 + 7528);
    v109 = *(v0 + 7504);
    v112 = *(v0 + 7496);
    v115 = *(v0 + 7488);
    v117 = *(v0 + 7480);
    v38 = *(v0 + 7456);
    v39 = *(v0 + 7440);
    v119 = *(v0 + 7432);
    v122 = *(v0 + 7424);
    v126 = *(v0 + 7416);
    v40 = *(v0 + 7408);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v41 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v42 = *(*v41 + 72);
    v43 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006BF520;
    v45 = v44 + v43;
    v46 = (v45 + v41[14]);
    v47 = enum case for DIPError.PropertyKey.conversationID(_:);
    v48 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v48 - 8) + 104))(v45, v47, v48);
    v49 = *(v40 + 24);
    v50 = *(v40 + 32);
    v46[3] = &type metadata for String;
    v46[4] = &protocol witness table for String;
    *v46 = v49;
    v46[1] = v50;
    swift_errorRetain();

    sub_10003C9C0(v44);
    swift_setDeallocating();
    sub_10000BE18(v45, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v133(v38, enum case for DIPError.Code.internalError(_:), v39);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v51 = *(v0 + 8);

    return v51();
  }

  v27 = *(v0 + 8080);
  v28 = *(v0 + 7832);
  v29 = *(v0 + 7824);
  v30 = *(v0 + 7472);
  v31 = *(v0 + 7464);
  v32 = *(v0 + 7416);
  URL.init(string:)();
  if (v27(v32, 1, v31) == 1)
  {
    v111 = *(v0 + 8096);
    v125 = *(v0 + 8064);
    v33 = *(v0 + 7720);
    v118 = *(v0 + 7696);
    v121 = *(v0 + 7704);
    v114 = *(v0 + 7544);
    v116 = *(v0 + 7560);
    v21 = *(v0 + 7504);
    v22 = *(v0 + 7472);
    v23 = *(v0 + 7464);
    v34 = *(v0 + 7456);
    v35 = *(v0 + 7448);
    v36 = *(v0 + 7440);
    v37 = *(v0 + 7416);

    sub_10000BE18(v0 + 3368, &qword_10083AAA0, &unk_1006D8E00);
    sub_10000BE18(v37, &unk_100844540, &unk_1006BFBC0);
    v133 = *(v35 + 104);
    v133(v34, enum case for DIPError.Code.serverResponseInconsistent(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_8;
  }

  v53 = *(v0 + 7504);
  v54 = *(v0 + 7472) + 32;
  (*(v0 + 8072))(*(v0 + 7480), *(v0 + 7416), *(v0 + 7464));
  sub_1005BE2D4(&qword_10083EF80, &type metadata accessor for URL);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v55 = *(v0 + 8096);
    v127 = *(v0 + 8064);
    v56 = *(v0 + 7720);
    v118 = *(v0 + 7696);
    v123 = *(v0 + 7704);
    v114 = *(v0 + 7544);
    v116 = *(v0 + 7560);
    v113 = *(v0 + 7504);
    v57 = *(v0 + 7464);
    v58 = *(v0 + 7456);
    v59 = *(v0 + 7448);
    v60 = *(v0 + 7440);
    v61 = *(*(v0 + 7472) + 8);
    v61(*(v0 + 7480), v57);

    sub_10000BE18(v0 + 3368, &qword_10083AAA0, &unk_1006D8E00);
    v133 = *(v59 + 104);
    v133(v58, enum case for DIPError.Code.unexpectedDaemonState(_:), v60);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v61(v113, v57);
    goto LABEL_9;
  }

  v129 = *(v0 + 7680);
  v131 = *(v0 + 7688);
  v62 = *(v0 + 7608);
  v134 = *(v0 + 7600);
  v136 = v1;
  v128 = *(v0 + 7584);
  v63 = *(v0 + 7504);
  v64 = *(v0 + 7472);
  v65 = *(v0 + 7464);
  v66 = *(v0 + 7456);
  v67 = *(v0 + 7448);
  v68 = *(v0 + 7440);
  v69 = enum case for DIPError.Code.switchedToDefaultAttributeConfig(_:);
  v70 = *(v67 + 104);
  *(v0 + 8104) = v70;
  *(v0 + 8112) = (v67 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v70(v66, v69, v68);
  *(v0 + 8120) = sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v71 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  *(v0 + 8128) = v71;
  v72 = *(v71 - 8);
  *(v0 + 8136) = *(v72 + 72);
  v73 = *(v72 + 80);
  *(v0 + 8212) = v73;
  v74 = (v73 + 32) & ~v73;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1006BF520;
  v76 = v75 + v74;
  v77 = (v75 + v74 + *(v71 + 48));
  v78 = enum case for DIPError.PropertyKey.serverURL(_:);
  *(v0 + 8220) = enum case for DIPError.PropertyKey.serverURL(_:);
  v79 = type metadata accessor for DIPError.PropertyKey();
  *(v0 + 8144) = v79;
  v80 = *(v79 - 8);
  v81 = *(v80 + 104);
  *(v0 + 8152) = v81;
  *(v0 + 8160) = (v80 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v81(v76, v78, v79);
  v77[3] = v65;
  v77[4] = sub_1005BE2D4(&qword_1008418B0, &type metadata accessor for URL);
  v82 = sub_100032DBC(v77);
  (*(v64 + 16))(v82, v63, v65);
  sub_10003C9C0(v75);
  swift_setDeallocating();
  sub_10000BE18(v76, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  *(v0 + 8168) = type metadata accessor for DIPError();
  *(v0 + 8176) = sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v129(v62, v128);

  defaultLogger()();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "Retrying default urls", v85, 2u);
  }

  v86 = *(v0 + 7688);
  v87 = *(v0 + 7680);
  v88 = *(v0 + 7600);
  v89 = *(v0 + 7584);

  v87(v88, v89);
  v90 = swift_task_alloc();
  *(v0 + 8184) = v90;
  *v90 = v0;
  v90[1] = sub_1005B765C;
  v91 = *(v0 + 7480);
  v92 = *(v0 + 7408);
  v93 = *(v136 + 9);

  return sub_1005BA8AC(v91, v93);
}

uint64_t sub_1005B765C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[904] = v5;
  v7[905] = a1;
  v7[906] = a2;
  v7[907] = a3;
  v7[908] = a4;
  v7[909] = v4;
  v8 = v6[1023];
  v12 = *v5;
  v7[1024] = v4;

  if (v4)
  {
    v9 = v7[965];

    v10 = sub_1005B7E84;
  }

  else
  {
    v10 = sub_1005B7790;
  }

  return _swift_task_switch(v10, 0, 0);
}

void sub_1005B7790()
{
  v1 = v0[1012];
  v2 = v0[935];
  v3 = v0[934];
  v4 = v0[933];

  (*(v3 + 8))(v2, v4);
  v5 = v0[1024];
  v6 = v0[905];
  v7 = v0[906];
  v8 = v0[907];
  v9 = v0[908];

  if (v6)
  {

    v10 = v8;
    v11 = v7;
    v12 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *(v0 + 2417) = *v99;
  v13 = v0[964];
  v0[185] = v13;
  v0[246] = v13;
  v14 = v0[965];
  v0[186] = v14;
  v0[247] = v14;
  v15 = v0[1007];
  v0[187] = v15;
  v0[248] = v15;
  v16 = v0[968];
  v0[191] = v16;
  v0[252] = v16;
  v17 = v0[970];
  v0[193] = v17;
  v0[254] = v17;
  v18 = v0[971];
  v0[194] = v18;
  v0[255] = v18;
  v19 = v0[972];
  v0[195] = v19;
  v0[256] = v19;
  v20 = v0[973];
  v0[196] = v20;
  v0[257] = v20;
  v21 = v0[974];
  v0[197] = v21;
  v0[258] = v21;
  v22 = v0[975];
  v0[198] = v22;
  v0[259] = v22;
  v23 = v0[976];
  v0[199] = v23;
  v0[260] = v23;
  v24 = v0[977];
  v0[200] = v24;
  v0[261] = v24;
  v25 = v0[978];
  v0[201] = v25;
  v0[262] = v25;
  v26 = v0[979];
  v0[202] = v26;
  v0[263] = v26;
  v27 = v0[980];
  v0[203] = v27;
  v0[264] = v27;
  v28 = v0[981];
  v0[204] = v28;
  v0[265] = v28;
  v29 = v0[982];
  v0[205] = v29;
  v0[266] = v29;
  LOBYTE(v29) = *(v0 + 8272);
  *(v0 + 1648) = v29;
  *(v0 + 2136) = v29;
  v30 = v0[983];
  v0[207] = v30;
  v0[268] = v30;
  LOBYTE(v30) = *(v0 + 8264);
  *(v0 + 1664) = v30;
  *(v0 + 2152) = v30;
  v31 = v0[984];
  v0[209] = v31;
  v0[270] = v31;
  v32 = v0[985];
  v0[210] = v32;
  v0[271] = v32;
  v33 = v0[986];
  v0[211] = v33;
  v0[272] = v33;
  LOBYTE(v33) = *(v0 + 8256);
  *(v0 + 1696) = v33;
  *(v0 + 2184) = v33;
  v34 = v0[987];
  v0[213] = v34;
  v0[274] = v34;
  LOBYTE(v34) = *(v0 + 8248);
  *(v0 + 1712) = v34;
  *(v0 + 2200) = v34;
  v35 = v0[988];
  v0[215] = v35;
  v0[276] = v35;
  LOBYTE(v35) = *(v0 + 8240);
  *(v0 + 1728) = v35;
  *(v0 + 2216) = v35;
  v36 = v0[989];
  v0[217] = v36;
  v0[278] = v36;
  LOBYTE(v36) = *(v0 + 8280);
  *(v0 + 1744) = v36;
  *(v0 + 2232) = v36;
  v37 = v0[990];
  v0[219] = v37;
  v0[280] = v37;
  LOBYTE(v37) = *(v0 + 8232);
  *(v0 + 1760) = v37;
  *(v0 + 2248) = v37;
  v38 = v0[991];
  v0[221] = v38;
  v0[282] = v38;
  v39 = v0[992];
  v0[222] = v39;
  v0[283] = v39;
  v40 = v0[993];
  v0[223] = v40;
  v0[284] = v40;
  v41 = v0[994];
  v0[224] = v41;
  v0[285] = v41;
  v42 = v0[995];
  v0[225] = v42;
  v0[286] = v42;
  v43 = v0[996];
  v0[226] = v43;
  v0[287] = v43;
  v44 = v0[997];
  v0[227] = v44;
  v0[288] = v44;
  v45 = v0[998];
  v0[228] = v45;
  v0[289] = v45;
  v46 = v0[999];
  v0[229] = v46;
  v0[290] = v46;
  LOBYTE(v46) = *(v0 + 8224);
  *(v0 + 1840) = v46;
  *(v0 + 2328) = v46;
  v47 = v0[1000];
  v0[231] = v47;
  v0[292] = v47;
  LOBYTE(v47) = *(v0 + 8216);
  *(v0 + 1856) = v47;
  *(v0 + 2344) = v47;
  LOBYTE(v47) = *(v0 + 8211);
  *(v0 + 1857) = v47;
  *(v0 + 2345) = v47;
  v48 = v0[1001];
  v0[233] = v48;
  v0[294] = v48;
  LOBYTE(v48) = *(v0 + 8200);
  *(v0 + 1872) = v48;
  *(v0 + 2360) = v48;
  v49 = v0[1002];
  v0[235] = v49;
  v0[296] = v49;
  LOBYTE(v49) = *(v0 + 8208);
  *(v0 + 1888) = v49;
  *(v0 + 2376) = v49;
  v50 = v0[1003];
  v0[237] = v50;
  v0[298] = v50;
  v51 = v0[1004];
  v0[238] = v51;
  v0[299] = v51;
  v52 = v0[1005];
  v0[239] = v52;
  v0[300] = v52;
  v53 = v0[1006];
  v0[240] = v53;
  v0[301] = v53;
  LOBYTE(v53) = *(v0 + 8217);
  *(v0 + 1928) = v53;
  *(v0 + 2416) = v53;
  *(v0 + 605) = *&v99[3];
  v0[243] = v11;
  v0[304] = v11;
  v0[244] = v10;
  v0[305] = v10;
  v54 = v0[1008];
  v55 = v0[969];
  v56 = v0[967];
  v57 = v0[966];
  v0[245] = v12;
  v0[306] = v12;
  v58 = v0[926];
  v0[188] = v54;
  v0[189] = v57;
  v0[190] = v56;
  v0[192] = v55;
  v0[242] = v6;
  v0[249] = v54;
  v0[250] = v57;
  v0[251] = v56;
  v0[253] = v55;
  v0[303] = v6;

  sub_1000F26FC((v0 + 185), (v0 + 124));
  sub_1000F2758((v0 + 246));
  memcpy(v0 + 307, v0 + 185, 0x1E8uLL);
  nullsub_7(v0 + 307);
  memcpy(v0 + 2, v0 + 307, 0x1E8uLL);
  v59 = *(v58 + 56);
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1000F26FC((v0 + 185), (v0 + 63));
  os_unfair_lock_lock(v59 + 126);
  sub_1005BE508(&v59[4]);
  os_unfair_lock_unlock(v59 + 126);
  if (!v5)
  {
    v98 = v6;
    v60 = v0[953];
    sub_1000F2758((v0 + 185));

    defaultLogger()();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "active config file fetch successful", v63, 2u);
    }

    v76 = v0[963];
    v77 = v0[1008];
    v75 = v0[962];
    v73 = v0[961];
    v64 = v0[960];
    v78 = v0[959];
    v79 = v0[958];
    v80 = v0[957];
    v81 = v0[956];
    v82 = v0[955];
    v83 = v0[954];
    v65 = v0[953];
    v84 = v0[952];
    v85 = v0[951];
    v66 = v0[948];
    v86 = v0[950];
    v87 = v0[947];
    v67 = v0[945];
    v68 = v0[943];
    v88 = v0[946];
    v89 = v0[942];
    v69 = v0[938];
    v90 = v0[941];
    v91 = v0[937];
    v92 = v0[936];
    v93 = v0[935];
    v70 = v0[934];
    v71 = v0[933];
    v94 = v0[932];
    v95 = v0[929];
    v96 = v0[928];
    v97 = v0[927];
    __dst = v0[921];

    v64(v65, v66);
    (*(v70 + 8))(v69, v71);
    v75(v67, v68);
    sub_1005BE274(v98);

    memcpy(__dst, v0 + 185, 0x1E8uLL);

    v72 = v0[1];

    v72();
  }
}

uint64_t sub_1005B7E84()
{
  v53 = *(v0 + 0x2000);
  v1 = *(v0 + 8176);
  v36 = *(v0 + 8168);
  v2 = *(v0 + 8160);
  v50 = *(v0 + 8152);
  v34 = *(v0 + 8220);
  v3 = *(v0 + 8136);
  v4 = *(v0 + 8128);
  v5 = *(v0 + 8120);
  v6 = *(v0 + 8112);
  v41 = *(v0 + 8144);
  v42 = *(v0 + 8104);
  v63 = *(v0 + 8096);
  v73 = *(v0 + 8064);
  v7 = *(v0 + 7832);
  v32 = *(v0 + 7824);
  v69 = *(v0 + 7696);
  v71 = *(v0 + 7704);
  v51 = *(v0 + 7688);
  v44 = *(v0 + 7608);
  v46 = *(v0 + 7584);
  v48 = *(v0 + 7680);
  v65 = *(v0 + 7544);
  v67 = *(v0 + 7560);
  v61 = *(v0 + 7504);
  v8 = (*(v0 + 8212) + 32) & ~*(v0 + 8212);
  v55 = *(v0 + 7472);
  v9 = *(v0 + 7464);
  v57 = v9;
  v59 = *(v0 + 7480);
  v10 = *(v0 + 7456);
  v38 = *(v0 + 7440);
  (v42)(v10, enum case for DIPError.Code.defaultAttributeConfigFailed(_:));
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  v12 = (v11 + v8 + *(v4 + 48));
  v50(v11 + v8, v34, v41);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v32;
  v12[1] = v7;

  sub_10000BE18(v0 + 3368, &qword_10083AAA0, &unk_1006D8E00);
  sub_10003C9C0(v11);
  swift_setDeallocating();
  sub_10000BE18(v11 + v8, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v48(v44, v46);

  LODWORD(v41) = enum case for DIPError.Code.internalError(_:);
  v42(v10);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = *(v55 + 8);
  v13(v59, v57);
  v13(v61, v57);
  v69(v67, v65);

  v29 = *(v0 + 7448) + 104;
  v30 = *(v0 + 8104);
  v31 = *(v0 + 7672);
  v33 = *(v0 + 7664);
  v35 = *(v0 + 7656);
  v37 = *(v0 + 7648);
  v39 = *(v0 + 7640);
  v40 = *(v0 + 7632);
  v43 = *(v0 + 7624);
  v45 = *(v0 + 7616);
  v47 = *(v0 + 7608);
  v49 = *(v0 + 7600);
  v52 = *(v0 + 7576);
  v54 = *(v0 + 7568);
  v56 = *(v0 + 7560);
  v58 = *(v0 + 7536);
  v60 = *(v0 + 7528);
  v62 = *(v0 + 7504);
  v64 = *(v0 + 7496);
  v66 = *(v0 + 7488);
  v68 = *(v0 + 7480);
  v14 = *(v0 + 7456);
  v15 = *(v0 + 7440);
  v70 = *(v0 + 7432);
  v72 = *(v0 + 7424);
  v74 = *(v0 + 7416);
  v16 = *(v0 + 7408);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v17 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v18 = *(*v17 + 72);
  v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006BF520;
  v21 = v20 + v19;
  v22 = (v21 + v17[14]);
  v23 = enum case for DIPError.PropertyKey.conversationID(_:);
  v24 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v24 - 8) + 104))(v21, v23, v24);
  v25 = *(v16 + 24);
  v26 = *(v16 + 32);
  v22[3] = &type metadata for String;
  v22[4] = &protocol witness table for String;
  *v22 = v25;
  v22[1] = v26;
  swift_errorRetain();

  sub_10003C9C0(v20);
  swift_setDeallocating();
  sub_10000BE18(v21, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v30(v14, v41, v15);
  type metadata accessor for DIPError();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1005B85F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 336) = a6;
  *(v7 + 344) = a7;
  *(v7 + 249) = a5;
  *(v7 + 320) = a3;
  *(v7 + 328) = a4;
  *(v7 + 304) = a1;
  *(v7 + 312) = a2;
  v8 = type metadata accessor for DIPError();
  *(v7 + 352) = v8;
  v9 = *(v8 - 8);
  *(v7 + 360) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 368) = swift_task_alloc();
  v11 = sub_100007224(&qword_1008490A8, &unk_1006E92E0);
  *(v7 + 376) = v11;
  v12 = *(v11 - 8);
  *(v7 + 384) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 392) = swift_task_alloc();
  v14 = type metadata accessor for DIPError.Code();
  *(v7 + 400) = v14;
  v15 = *(v14 - 8);
  *(v7 + 408) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 416) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v7 + 424) = v17;
  v18 = *(v17 - 8);
  *(v7 + 432) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 440) = swift_task_alloc();
  v20 = type metadata accessor for URLRequest();
  *(v7 + 448) = v20;
  v21 = *(v20 - 8);
  *(v7 + 456) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  v23 = type metadata accessor for URL();
  *(v7 + 488) = v23;
  v24 = *(v23 - 8);
  *(v7 + 496) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_1005B88BC, 0, 0);
}

uint64_t sub_1005B9730()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = *(v2 + 568);
  v6 = *(v2 + 544);
  if (v0)
  {
    swift_setDeallocating();

    v7 = sub_1005BA4B0;
  }

  else
  {

    v7 = sub_1005B988C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005BA4B0()
{
  v25 = v0[73];
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[56];
  v9 = v0[57];
  v10 = v0[38];

  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v6, v8);
  (*(v5 + 8))(v3, v4);
  *v10 = v25;
  v12 = v0[63];
  v13 = v0[64];
  v15 = v0[59];
  v14 = v0[60];
  v16 = v0[58];
  v17 = v0[55];
  v18 = v0[52];
  v24 = v0[49];
  v26 = v0[46];
  v19 = v0[38];
  v20 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
  v21 = sub_100007224(&qword_1008490B0, &qword_1006E92F8);
  (*(*(v21 - 8) + 104))(v19, v20, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005BA660@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v24 = a2;
  v9 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000BE18(v12, &unk_100844540, &unk_1006BFBC0);
    v18 = 1;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    if (a4)
    {
      v25 = a3;
      v26 = a4;

      v19._countAndFlagsBits = 47;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
    }

    else
    {
      v25 = 47;
      v26 = 0xE100000000000000;
    }

    v20._countAndFlagsBits = a1;
    v20._object = v24;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x6E6F736A2ELL;
    v21._object = 0xE500000000000000;
    String.append(_:)(v21);
    URL.appendingPathComponent(_:)();

    (*(v14 + 8))(v17, v13);
    v18 = 0;
  }

  return (*(v14 + 56))(a5, v18, 1, v13);
}

uint64_t sub_1005BA8AC(uint64_t a1, char a2)
{
  *(v3 + 73) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 144) = v4;
  v5 = *(v4 - 8);
  *(v3 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  *(v3 + 168) = v7;
  v8 = *(v7 - 8);
  *(v3 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v10 = sub_100007224(&qword_100849088, &qword_1006E92B0);
  *(v3 + 192) = v10;
  v11 = *(v10 - 8);
  *(v3 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v3 + 216) = v13;
  v14 = *(v13 - 8);
  *(v3 + 224) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v16 = type metadata accessor for URLRequest();
  *(v3 + 240) = v16;
  v17 = *(v16 - 8);
  *(v3 + 248) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v19 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v20 = type metadata accessor for DIPSignpost();
  *(v3 + 288) = v20;
  v21 = *(v20 - 8);
  *(v3 + 296) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_1005BAB98, 0, 0);
}

uint64_t sub_1005BB760()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 336);

  if (v0)
  {
    v6 = sub_1005BC270;
  }

  else
  {
    v6 = sub_1005BB894;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005BB894()
{
  v112 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);

  v107 = *(v5 + 8);
  v107(v3, v4);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v109 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 352);
  v10 = *(v0 + 208);
  v11 = *(v0 + 192);
  v12 = type metadata accessor for JSONDecoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005BE470(&qword_100849090, &qword_100849088, &qword_1006E92B0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v9)
  {
    v15 = *(v0 + 160);

    defaultLogger()();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);
    v105 = v6;
    v103 = v7;
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v111 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v101 = v19;
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v26 = *(v0 + 96);
      v27 = Error.localizedDescription.getter();
      v29 = sub_100141FE4(v27, v28, &v111);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "^^^^^ %s", v22, 0xCu);
      sub_10000BB78(v23);

      (*(v20 + 8))(v101, v21);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    if (qword_100832D20 != -1)
    {
      swift_once();
    }

    v91 = *(v0 + 304);
    v94 = *(v0 + 312);
    v37 = *(v0 + 296);
    v38 = *(v0 + 272);
    v83 = *(v0 + 248);
    v85 = *(v0 + 240);
    v88 = *(v0 + 288);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v41 = *(v0 + 168);
    v42 = qword_100882498;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    [v42 removeCachedResponseForRequest:isa];

    (*(v40 + 104))(v39, enum case for DIPError.Code.serverResponseInconsistent(_:), v41);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v105, v103);

    v107(v38, v85);
    v44 = *(v37 + 8);
    v44(v91, v88);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v86 = *(v0 + 304);
    v89 = *(v0 + 280);
    v92 = *(v0 + 272);
    v95 = *(v0 + 264);
    v104 = *(v0 + 256);
    v106 = *(v0 + 232);
    v108 = *(v0 + 208);
    v46 = *(v0 + 176);
    v45 = *(v0 + 184);
    v81 = *(v0 + 168);
    v110 = *(v0 + 160);
    v47 = *(v0 + 136);
    v44(*(v0 + 312), *(v0 + 288));
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v48 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v49 = *(*v48 + 72);
    v50 = (*(*v48 + 80) + 32) & ~*(*v48 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1006BF520;
    v52 = v51 + v50;
    v53 = (v52 + v48[14]);
    v54 = enum case for DIPError.PropertyKey.conversationID(_:);
    v55 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v55 - 8) + 104))(v52, v54, v55);
    v56 = *(v47 + 24);
    v57 = *(v47 + 32);
    v53[3] = &type metadata for String;
    v53[4] = &protocol witness table for String;
    *v53 = v56;
    v53[1] = v57;
    swift_errorRetain();

    sub_10003C9C0(v51);
    swift_setDeallocating();
    sub_10000BE18(v52, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v46 + 104))(v45, enum case for DIPError.Code.internalError(_:), v81);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v58 = *(v0 + 8);

    return v58();
  }

  else
  {
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);

    JWSSignedJSON.payload.getter();
    (*(v31 + 8))(v30, v32);
    v100 = *(v0 + 24);
    v102 = *(v0 + 16);
    v98 = *(v0 + 40);
    v99 = *(v0 + 32);
    if (v8)
    {
      v33 = v7;
      v34 = v6;
      v35._countAndFlagsBits = 0x3765386431393336;
      v36._object = 0x8000000100723A40;
      v35._object = 0xE800000000000000;
      v36._countAndFlagsBits = 0xD000000000000022;
      logMilestone(tag:description:)(v35, v36);
    }

    else
    {
      v60._countAndFlagsBits = 0x3963393462323332;
      v61._countAndFlagsBits = 0xD000000000000024;
      v61._object = 0x8000000100723A10;
      v60._object = 0xE800000000000000;
      logMilestone(tag:description:)(v60, v61);
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v62 = qword_100882498;
      v63 = objc_allocWithZone(NSCachedURLResponse);
      v64 = Data._bridgeToObjectiveC()().super.isa;
      v65 = [v63 initWithResponse:v109 data:v64];

      v66 = sub_100600EC4(v65, 0, 1);
      if (v66)
      {
        v67 = v66;
        v68 = *(v0 + 272);
        v69 = URLRequest._bridgeToObjectiveC()().super.isa;
        v70 = type metadata accessor for DIPURLCache();
        *(v0 + 104) = v62;
        *(v0 + 112) = v70;
        objc_msgSendSuper2((v0 + 104), "storeCachedResponse:forRequest:", v67, v69);

        v65 = v69;
      }

      v33 = v7;
      v34 = v6;
      v71 = *(v0 + 304);

      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v73 = *(v0 + 304);
    v72 = *(v0 + 312);
    v74 = *(v0 + 288);
    v75 = *(v0 + 296);
    v76 = *(v0 + 272);
    v82 = *(v0 + 280);
    v84 = *(v0 + 264);
    v78 = *(v0 + 240);
    v77 = *(v0 + 248);
    v87 = *(v0 + 256);
    v90 = *(v0 + 232);
    v93 = *(v0 + 208);
    v96 = *(v0 + 184);
    v97 = *(v0 + 160);

    sub_10000B90C(v34, v33);
    v107(v76, v78);
    v79 = *(v75 + 8);
    v79(v73, v74);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v79(v72, v74);

    v80 = *(v0 + 8);

    return v80(v102, v100, v99, v98);
  }
}

uint64_t sub_1005BC270()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[30];
  v10 = v0[31];

  v11 = *(v10 + 8);
  v11(v8, v9);
  v11(v7, v9);
  v12 = *(v6 + 8);
  (v12)(v3, v5);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v13 = v0[44];
  v31 = v0[39];
  v14 = v0[36];
  v32 = v0[35];
  v33 = v0[38];
  v34 = v0[34];
  v35 = v0[33];
  v36 = v0[32];
  v37 = v0[29];
  v38 = v0[26];
  v16 = v0[22];
  v15 = v0[23];
  v30 = v0[21];
  v39 = v0[20];
  v17 = v0[17];
  v12();
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v18 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v19 = *(*v18 + 72);
  v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006BF520;
  v22 = v21 + v20;
  v23 = (v22 + v18[14]);
  v24 = enum case for DIPError.PropertyKey.conversationID(_:);
  v25 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v25 - 8) + 104))(v22, v24, v25);
  v26 = *(v17 + 24);
  v27 = *(v17 + 32);
  v23[3] = &type metadata for String;
  v23[4] = &protocol witness table for String;
  *v23 = v26;
  v23[1] = v27;
  swift_errorRetain();

  sub_10003C9C0(v21);
  swift_setDeallocating();
  sub_10000BE18(v22, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v16 + 104))(v15, enum case for DIPError.Code.internalError(_:), v30);
  type metadata accessor for DIPError();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005BC660()
{
  v1[7] = v0;
  v2 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1005BC7D8, 0, 0);
}

uint64_t sub_1005BC7D8()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[7];
  Date.init()();
  static Date.- infix(_:_:)();
  v8 = *(v4 + 8);
  v0[18] = v8;
  v0[19] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v6);
  Date.init()();
  static Date.+ infix(_:_:)();
  v8(v3, v6);
  v9 = *(v7 + 16);
  os_unfair_lock_lock(v9 + 14);
  sub_100020260(&v9[4], (v0 + 2));
  os_unfair_lock_unlock(v9 + 14);
  sub_10000BA08(v0 + 2, v0[5]);
  sub_1005A4C70(v5);
  sub_10000BB78(v0 + 2);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  v24 = qword_100882498;
  v16 = *(v12 + 16);
  v16(v13, v0[17], v11);
  v17 = *(v12 + 56);
  v17(v13, 0, 1, v11);
  v16(v14, v10, v11);
  v17(v14, 0, 1, v11);

  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_1005BCA38;
  v19 = v0[12];
  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[7];

  return sub_100607FB4(v19, 1, v20, v21, v24, v22);
}

uint64_t sub_1005BCA38()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v6 = *v0;

  sub_10000BE18(v3, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005BCBB0, 0, 0);
}

uint64_t sub_1005BCBB0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[13];
  v8 = v0[8];
  v7 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v2(v3, v6);
  v2(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005BCC9C(uint64_t a1)
{
  v1[136] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[137] = v2;
  v3 = *(v2 - 8);
  v1[138] = v3;
  v4 = *(v3 + 64) + 15;
  v1[139] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[140] = v5;
  v6 = *(v5 - 8);
  v1[141] = v6;
  v7 = *(v6 + 64) + 15;
  v1[142] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[143] = v8;
  v9 = *(v8 - 8);
  v1[144] = v9;
  v10 = *(v9 + 64) + 15;
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();

  return _swift_task_switch(sub_1005BCE2C, 0, 0);
}

uint64_t sub_1005BCE2C()
{
  v1 = v0[147];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing configuration cache", v4, 2u);
  }

  v5 = v0[147];
  v6 = v0[144];
  v7 = v0[143];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[148] = v8;
  *v8 = v0;
  v8[1] = sub_1005BCF6C;
  v9 = v0[136];

  return sub_1005B16AC((v0 + 2), 1);
}

uint64_t sub_1005BCF6C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1184);
  v5 = *v1;
  v3[149] = v0;
  v62 = v2[2];
  v60 = v2[3];
  v56 = v2[4];
  v54 = v2[5];
  v6 = v3[6];
  v7 = v3[7];
  v49 = v2[8];
  v8 = v3[9];
  v45 = v2[10];
  v43 = v2[11];
  v58 = *(v3 + 7);
  v59 = *(v3 + 6);
  v34 = v2[16];
  v61 = v2[17];
  v57 = v2[18];
  v55 = v2[19];
  v53 = v2[20];
  v52 = v2[21];
  v51 = v2[22];
  v50 = *(v3 + 184);
  v48 = v2[24];
  v47 = *(v3 + 200);
  v46 = v2[26];
  v44 = v2[27];
  v42 = v2[28];
  v41 = *(v3 + 232);
  v40 = v2[30];
  v39 = *(v3 + 248);
  v38 = v2[32];
  v35 = *(v3 + 264);
  v33 = v2[34];
  v30 = *(v3 + 280);
  v29 = v2[36];
  v31 = *(v3 + 20);
  v32 = *(v3 + 19);
  v36 = *(v3 + 22);
  v37 = *(v3 + 21);
  v9 = *(v3 + 296);
  v28 = v2[46];
  v27 = *(v3 + 376);
  v26 = v2[48];
  v25 = *(v3 + 392);
  v10 = *(v3 + 393);
  v11 = v2[50];
  v12 = *(v3 + 408);
  v13 = v2[52];
  v23 = *(v3 + 59);
  v24 = *(v3 + 61);
  v21 = *(v3 + 67);
  v22 = *(v3 + 63);
  v18 = *(v3 + 28);
  v19 = *(v3 + 27);
  v20 = *(v3 + 65);
  v14 = *(v3 + 424);
  v15 = *(v3 + 464);

  if (v0)
  {
    v16 = sub_1005BD674;
  }

  else
  {
    v3[69] = v62;
    v3[70] = v60;
    v3[71] = v56;
    v3[72] = v54;
    v3[75] = v49;
    v3[77] = v45;
    v3[78] = v43;
    v3[83] = v34;
    *(v3 + 79) = v59;
    *(v3 + 81) = v58;
    v3[73] = v6;
    v3[74] = v7;
    v3[76] = v8;
    v3[84] = v61;
    v3[85] = v57;
    v3[86] = v55;
    v3[87] = v53;
    v3[88] = v52;
    v3[89] = v51;
    *(v3 + 720) = v50;
    v3[91] = v48;
    *(v3 + 736) = v47;
    v3[93] = v46;
    v3[94] = v44;
    v3[95] = v42;
    *(v3 + 768) = v41;
    v3[97] = v40;
    *(v3 + 784) = v39;
    v3[99] = v38;
    *(v3 + 800) = v35;
    v3[101] = v33;
    *(v3 + 816) = v30;
    v3[103] = v29;
    *(v3 + 832) = v9;
    *(v3 + 105) = v32;
    *(v3 + 107) = v31;
    *(v3 + 109) = v37;
    *(v3 + 111) = v36;
    v3[113] = v28;
    *(v3 + 912) = v27;
    v3[115] = v26;
    *(v3 + 928) = v25;
    *(v3 + 929) = v10;
    v3[117] = v11;
    *(v3 + 944) = v12;
    v3[119] = v13;
    *(v3 + 960) = v14;
    *(v3 + 121) = v19;
    *(v3 + 123) = v18;
    *(v3 + 1000) = v15;
    *(v3 + 63) = v23;
    *(v3 + 64) = v24;
    *(v3 + 65) = v22;
    *(v3 + 66) = v20;
    *(v3 + 67) = v21;
    sub_10000BE18((v3 + 69), &qword_100842B48, &unk_1006DFD30);
    v16 = sub_1005BD540;
  }

  return _swift_task_switch(v16, 0, 0);
}

uint64_t sub_1005BD540()
{
  v1 = v0[146];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing configuration cache", v4, 2u);
  }

  v5 = v0[146];
  v6 = v0[144];
  v7 = v0[143];

  (*(v6 + 8))(v5, v7);
  v8 = v0[147];
  v9 = v0[146];
  v10 = v0[145];
  v11 = v0[142];
  v12 = v0[139];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005BD674()
{
  v1 = v0[149];
  v2 = v0[145];
  v3 = v0[144];
  v15 = v0[143];
  v4 = v0[142];
  v5 = v0[141];
  v6 = v0[140];
  (*(v0[138] + 104))(v0[139], enum case for DIPError.Code.internalError(_:), v0[137]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v7, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v15);
  (*(v5 + 8))(v4, v6);

  v8 = v0[147];
  v9 = v0[146];
  v10 = v0[145];
  v11 = v0[142];
  v12 = v0[139];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005BD8C4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "resetting attributeConfigs", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v11 = *(v2 + 56);
  os_unfair_lock_lock(v11 + 126);
  memcpy(v34, &v11[4], sizeof(v34));
  sub_10000BBC4(v34, v41, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v11 + 126);
  memcpy(v33, v34, sizeof(v33));
  v31 = *&v34[464];
  v12 = *&v34[456];
  v32 = *&v34[480];
  memcpy(v35, v34, sizeof(v35));
  v37 = *&v34[464];
  v38 = *&v34[480];
  v36 = *&v34[456];
  if (sub_1000A257C(v35) == 1)
  {
    v13 = memcpy(v41, v33, sizeof(v41));
    v42 = v12;
    v43 = v31;
    v44 = v32;
    __chkstk_darwin(v13);
    *(&v21 - 2) = v41;
    os_unfair_lock_lock(v11 + 126);
    sub_1005BE508(&v11[4]);
    os_unfair_lock_unlock(v11 + 126);
    memcpy(v39, v33, 0x1C8uLL);
    *v40 = v31;
    v39[57] = v12;
    *&v40[16] = v32;
    v14 = v39;
  }

  else
  {

    v15 = memcpy(v41, v33, sizeof(v41));
    v42 = 0;
    v43 = v31;
    v44 = v32;
    __chkstk_darwin(v15);
    *(&v21 - 2) = v41;
    os_unfair_lock_lock(v11 + 126);
    sub_1005BE160(&v11[4]);
    os_unfair_lock_unlock(v11 + 126);
    v14 = v41;
  }

  sub_10000BE18(v14, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_lock(v11 + 126);
  memcpy(v27, &v11[4], sizeof(v27));
  sub_10000BBC4(v27, v39, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v11 + 126);
  memcpy(v26, v27, sizeof(v26));
  v16 = v27[58];
  v25 = *&v27[59];
  memcpy(v28, v27, sizeof(v28));
  v30 = *&v27[59];
  v29 = v27[58];
  if (sub_1000A257C(v28) == 1)
  {
    v17 = memcpy(v39, v26, sizeof(v39));
    *v40 = v16;
    *&v40[8] = v25;
    __chkstk_darwin(v17);
    *(&v21 - 2) = v39;
    os_unfair_lock_lock(v11 + 126);
    sub_1005BE508(&v11[4]);
    os_unfair_lock_unlock(v11 + 126);
    memcpy(v22, v26, sizeof(v22));
    v23 = v16;
    v24 = v25;
    v18 = v22;
  }

  else
  {

    v19 = memcpy(v39, v26, sizeof(v39));
    *v40 = 0;
    *&v40[8] = v25;
    __chkstk_darwin(v19);
    *(&v21 - 2) = v39;
    os_unfair_lock_lock(v11 + 126);
    sub_1005BE508(&v11[4]);
    os_unfair_lock_unlock(v11 + 126);
    v18 = v39;
  }

  return sub_10000BE18(v18, &qword_100839998, &qword_1006DCAA0);
}

uint64_t sub_1005BDDDC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

void *sub_1005BDE58(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v30 - v13;
  v31[3] = &type metadata for BootstrapURLManager;
  v31[4] = &off_100818018;
  sub_100007224(&qword_100849070, &qword_1006E9278);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0;
  a1[6] = v15;
  sub_1002C7378(v32);
  sub_100007224(&qword_100849078, &qword_1006E9280);
  v16 = swift_allocObject();
  *(v16 + 504) = 0;
  memcpy((v16 + 16), v32, 0x1E8uLL);
  a1[7] = v16;
  v17 = v8[8];
  *&v14[v17] = 0x3FF0000000000000;
  v18 = enum case for DIPBackoffStrategy.exponential(_:);
  v19 = type metadata accessor for DIPBackoffStrategy();
  (*(*(v19 - 8) + 104))(&v14[v17], v18, v19);
  *v14 = 0x403E000000000000;
  *(v14 + 1) = 3;
  v14[v8[9]] = 0;
  v14[v8[10]] = 0;
  v14[v8[11]] = 1;
  v20 = &v14[v8[12]];
  *v20 = 0;
  *(v20 + 1) = 0;
  sub_100007224(&qword_100849080, &unk_1006E9288);
  v21 = swift_allocObject();
  *(v21 + 56) = 0;
  sub_100020260(v31, v21 + 16);
  a1[2] = v21;
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v3 + 8))(v6, v2);
  a1[3] = v22;
  a1[4] = v24;
  sub_1002BEB48(v14, v12);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v25 = type metadata accessor for DIPHTTPSession(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1005BE690(v30, v12);
  sub_10034CFA8(v14);
  sub_10000BB78(v31);
  a1[5] = v28;
  return a1;
}

uint64_t sub_1005BE178(void *__src)
{
  v3 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  sub_10000BE18(__dst, &qword_100839998, &qword_1006DCAA0);
  memcpy(__src, v3, 0x1E8uLL);
  return sub_10000BBC4(v3, &v5, &qword_100839998, &qword_1006DCAA0);
}

uint64_t sub_1005BE210(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1005BE274(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1005BE2D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005BE31C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_1005B85F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1005BE410(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1005BE470(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005BE4C4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  sub_10000BB78(a1);
  return sub_100020260(v3, a1);
}

uint64_t sub_1005BE520()
{
  v0 = type metadata accessor for Logger();
  sub_100031898(v0, qword_1008490C0);
  sub_10003170C(v0, qword_1008490C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005BE5B0(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = type metadata accessor for DIPHTTPSession.Configuration(0);
  sub_100031898(v5, a2);
  v6 = sub_10003170C(v5, a2);
  v7 = v5[6];
  *&v6[v7] = 0x3FE0000000000000;
  v8 = enum case for DIPBackoffStrategy.exponential(_:);
  v9 = type metadata accessor for DIPBackoffStrategy();
  result = (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = 0x404E000000000000;
  *(v6 + 1) = 3;
  v6[v5[7]] = a3;
  v6[v5[8]] = 1;
  v6[v5[9]] = 0;
  v11 = &v6[v5[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  return result;
}

uint64_t sub_1005BE690(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPBackoffStrategy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPRetrier();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_100020260(a1, v3 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager);
  sub_1002BEB48(a2, v3 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration);
  v19 = *(a2 + 8);
  v20 = type metadata accessor for DIPHTTPSession.Configuration(0);
  (*(v10 + 16))(v13, a2 + v20[6], v9);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  (*(v15 + 32))(v3 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_retrier, v18, v14);
  v21 = objc_opt_self();
  v22 = [v21 defaultSessionConfiguration];
  v23 = [v21 defaultSessionConfiguration];
  v24 = *a2;
  [v22 setTimeoutIntervalForRequest:*a2];
  [v23 setTimeoutIntervalForRequest:v24];
  [v22 setURLCache:0];
  [v23 setURLCache:0];
  [v22 setRequestCachePolicy:1];
  [v23 setRequestCachePolicy:1];
  v25 = (a2 + v20[10]);
  v26 = v25[1];
  if (v26)
  {
    v41 = v3;
    v27 = *v25;
    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100141FE4(v27, v26, &v46);
      _os_log_impl(&_mh_execute_header, v28, v29, "DIPHTTPSession using source bundle identifier %{public}s", v30, 0xCu);
      sub_10000BB78(v31);
    }

    (*(v42 + 8))(v45, v43);
    v32 = String._bridgeToObjectiveC()();
    [v22 set_sourceApplicationBundleIdentifier:v32];

    v33 = String._bridgeToObjectiveC()();
    [v23 set_sourceApplicationBundleIdentifier:v33];

    v3 = v41;
  }

  if (*(a2 + v20[8]) == 1)
  {
    v34 = [objc_opt_self() mainBundle];
    v35 = [v34 bundleIdentifier];

    v36 = [objc_allocWithZone(AKAppleIDSession) initWithIdentifier:v35];
    [v22 set_appleIDContext:v36];
  }

  v37 = [objc_allocWithZone(type metadata accessor for DIPHTTPSessionTaskDelegate()) init];
  v38 = objc_opt_self();
  *(v3 + 16) = [v38 sessionWithConfiguration:v22 delegate:v37 delegateQueue:0];
  v39 = [v38 sessionWithConfiguration:v23 delegate:v37 delegateQueue:0];

  sub_10000BB78(v44);
  sub_10034CFA8(a2);
  *(v3 + 24) = v39;
  return v3;
}

uint64_t sub_1005BEC04()
{
  [v0[2] invalidateAndCancel];
  [v0[3] invalidateAndCancel];

  sub_10034CFA8(v0 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration);
  v1 = OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_retrier;
  v2 = type metadata accessor for DIPRetrier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager));
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1005BED14()
{
  result = type metadata accessor for DIPHTTPSession.Configuration(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DIPRetrier();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1005BEE18(uint64_t *a1)
{
  v151 = a1;
  v2 = type metadata accessor for URLRequest();
  v149 = *(v2 - 1);
  v150 = v2;
  v3 = *(v149 + 64);
  __chkstk_darwin(v2);
  v5 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v146 = &v135 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v147 = v9;
  v148 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v141 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v142 = &v135 - v14;
  v15 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v143 = &v135 - v21;
  v22 = __chkstk_darwin(v20);
  v144 = &v135 - v23;
  v24 = __chkstk_darwin(v22);
  v138 = &v135 - v25;
  v26 = __chkstk_darwin(v24);
  v139 = &v135 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v135 - v29;
  __chkstk_darwin(v28);
  v32 = &v135 - v31;
  v33 = type metadata accessor for Logger();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v145 = &v135 - v40;
  v41 = __chkstk_darwin(v39);
  v140 = &v135 - v42;
  __chkstk_darwin(v41);
  v44 = &v135 - v43;
  v45 = v1 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration;
  if (*(v45 + *(type metadata accessor for DIPHTTPSession.Configuration(0) + 36)) != 1)
  {
    return 0;
  }

  v136 = v33;
  v137 = v34;
  v46 = objc_opt_self();
  v47 = [v46 standardUserDefaults];
  v48._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v49 = NSUserDefaults.internalBool(forKey:)(v48);

  if (v49)
  {
    return 0;
  }

  v51 = URLRequest.httpMethod.getter();
  if (!v52)
  {
    return 0;
  }

  if (v51 == 5522759 && v52 == 0xE300000000000000)
  {
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v54 = v151;
  v55 = sub_1005FEBE8(v151);
  v56 = v137;
  if (!v55)
  {
    defaultLogger()();
    v69 = v149;
    v68 = v150;
    (*(v149 + 16))(v5, v54, v150);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v154[0] = v151;
      *v72 = 136315138;
      URLRequest.url.getter();
      v73 = type metadata accessor for URL();
      v74 = *(v73 - 8);
      if ((*(v74 + 48))(v19, 1, v73) == 1)
      {
        sub_10000BE18(v19, &unk_100844540, &unk_1006BFBC0);
        v75 = 0;
        v76 = 0xE000000000000000;
      }

      else
      {
        v75 = URL.absoluteString.getter();
        v76 = v113;
        (*(v74 + 8))(v19, v73);
      }

      (*(v149 + 8))(v5, v150);
      v114 = sub_100141FE4(v75, v76, v154);

      *(v72 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v70, v71, "Nothing is in the cache for %s", v72, 0xCu);
      sub_10000BB78(v151);

      (*(v137 + 8))(v38, v136);
    }

    else
    {

      (*(v69 + 8))(v5, v68);
      (*(v56 + 8))(v38, v136);
    }

    return 0;
  }

  v151 = v55;
  v57 = [v46 standardUserDefaults];
  v58._countAndFlagsBits = static DaemonInternalDefaultsKeys.alwaysUseCache.getter();
  v59 = NSUserDefaults.internalBool(forKey:)(v58);

  if (v59)
  {
    defaultLogger()();
    v60 = v151;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v154[0] = v64;
      *v63 = 136315138;
      v65 = [v60 response];
      v66 = [v65 URL];

      if (v66)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = 0;
      }

      else
      {
        v67 = 1;
      }

      v115 = type metadata accessor for URL();
      v116 = *(v115 - 8);
      (*(v116 + 56))(v30, v67, 1, v115);
      sub_1000B1FC8(v30, v32, &unk_100844540, &unk_1006BFBC0);
      if ((*(v116 + 48))(v32, 1, v115) == 1)
      {
        v117 = 0x3E6C696E3CLL;
        sub_10000BE18(v32, &unk_100844540, &unk_1006BFBC0);
        v118 = 0xE500000000000000;
      }

      else
      {
        v117 = URL.absoluteString.getter();
        v118 = v119;
        (*(v116 + 8))(v32, v115);
      }

      v120 = sub_100141FE4(v117, v118, v154);

      *(v63 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v61, v62, "Using cached response for %s due to user defaults setting", v63, 0xCu);
      sub_10000BB78(v64);

      (*(v137 + 8))(v44, v136);
    }

    else
    {

      (*(v56 + 8))(v44, v136);
    }

    return v151;
  }

  v77 = [v151 userInfo];
  if (!v77)
  {
    v155 = 0u;
    v156 = 0u;
    v81 = v147;
    v80 = v148;
    goto LABEL_33;
  }

  v78 = v77;
  v79 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v152 = 0x4173657269707865;
  v153 = 0xE900000000000074;
  AnyHashable.init<A>(_:)();
  v81 = v147;
  v80 = v148;
  if (!*(v79 + 16) || (v82 = sub_10003AECC(v154), (v83 & 1) == 0))
  {

    sub_1000279C8(v154);
    v155 = 0u;
    v156 = 0u;
LABEL_33:
    v84 = v146;
    goto LABEL_34;
  }

  sub_10001F2EC(*(v79 + 56) + 32 * v82, &v155);
  sub_1000279C8(v154);

  v84 = v146;
  if (!*(&v156 + 1))
  {
LABEL_34:
    sub_10000BE18(&v155, &unk_100845ED0, &qword_1006DA1D0);
    (*(v80 + 56))(v84, 1, 1, v81);
    goto LABEL_35;
  }

  v85 = swift_dynamicCast();
  (*(v80 + 56))(v84, v85 ^ 1u, 1, v81);
  if ((*(v80 + 48))(v84, 1, v81) == 1)
  {
LABEL_35:
    sub_10000BE18(v84, &unk_100849400, &unk_1006BFBB0);
    goto LABEL_36;
  }

  v86 = v142;
  (*(v80 + 32))(v142, v84, v81);
  v87 = v141;
  Date.init()();
  v88 = static Date.> infix(_:_:)();
  v91 = *(v80 + 8);
  v89 = v80 + 8;
  v90 = v91;
  v91(v87, v81);
  if (v88)
  {
    v92 = v140;
    defaultLogger()();
    v93 = v151;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v154[0] = v150;
      *v96 = 136446210;
      v97 = [v93 response];
      v98 = [v97 URL];

      if (v98)
      {
        v99 = v138;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = 0;
      }

      else
      {
        v100 = 1;
        v99 = v138;
      }

      v148 = v89;
      v127 = type metadata accessor for URL();
      v128 = *(v127 - 8);
      (*(v128 + 56))(v99, v100, 1, v127);
      v129 = v139;
      sub_1000B1FC8(v99, v139, &unk_100844540, &unk_1006BFBC0);
      if ((*(v128 + 48))(v129, 1, v127) == 1)
      {
        v130 = 0x3E6C696E3CLL;
        sub_10000BE18(v129, &unk_100844540, &unk_1006BFBC0);
        v131 = 0xE500000000000000;
      }

      else
      {
        v130 = URL.absoluteString.getter();
        v132 = v129;
        v131 = v133;
        (*(v128 + 8))(v132, v127);
      }

      v134 = sub_100141FE4(v130, v131, v154);

      *(v96 + 4) = v134;
      _os_log_impl(&_mh_execute_header, v94, v95, "Found cached response for %{public}s", v96, 0xCu);
      sub_10000BB78(v150);

      (*(v137 + 8))(v140, v136);
      v90(v142, v81);
    }

    else
    {

      (*(v56 + 8))(v92, v136);
      v90(v86, v81);
    }

    return v151;
  }

  v90(v86, v81);
LABEL_36:
  v101 = v145;
  defaultLogger()();
  v102 = v151;
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.info.getter();

  v105 = os_log_type_enabled(v103, v104);
  v106 = v143;
  v107 = v144;
  if (v105)
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v154[0] = v109;
    *v108 = 136446210;
    v110 = [v102 response];
    v111 = [v110 URL];

    if (v111)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = 0;
    }

    else
    {
      v112 = 1;
    }

    v121 = type metadata accessor for URL();
    v122 = *(v121 - 8);
    (*(v122 + 56))(v106, v112, 1, v121);
    sub_1000B1FC8(v106, v107, &unk_100844540, &unk_1006BFBC0);
    if ((*(v122 + 48))(v107, 1, v121) == 1)
    {
      v123 = 0x3E6C696E3CLL;
      sub_10000BE18(v107, &unk_100844540, &unk_1006BFBC0);
      v124 = 0xE500000000000000;
    }

    else
    {
      v123 = URL.absoluteString.getter();
      v124 = v125;
      (*(v122 + 8))(v107, v121);
    }

    v126 = sub_100141FE4(v123, v124, v154);

    *(v108 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v103, v104, "Cached response is expired, fetching new response for %{public}s", v108, 0xCu);
    sub_10000BB78(v109);

    (*(v137 + 8))(v101, v136);
  }

  else
  {

    (*(v56 + 8))(v101, v136);
  }

  return v151;
}

uint64_t sub_1005BFF98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 492) = a4;
  *(v6 + 152) = a2;
  *(v6 + 160) = a3;
  *(v6 + 144) = a1;
  v8 = type metadata accessor for Logger();
  *(v6 + 184) = v8;
  v9 = *(v8 - 8);
  *(v6 + 192) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_1008493D0, &unk_1006E93F0) - 8) + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  v12 = type metadata accessor for URLError();
  *(v6 + 216) = v12;
  v13 = *(v12 - 8);
  *(v6 + 224) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  v15 = type metadata accessor for DIPError.Code();
  *(v6 + 240) = v15;
  v16 = *(v15 - 8);
  *(v6 + 248) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v18 = type metadata accessor for URLError.Code();
  *(v6 + 272) = v18;
  v19 = *(v18 - 8);
  *(v6 + 280) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v21 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  v22 = type metadata accessor for DIPError();
  *(v6 + 312) = v22;
  v23 = *(v22 - 8);
  *(v6 + 320) = v23;
  v24 = *(v23 + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  v25 = type metadata accessor for URLRequest();
  *(v6 + 344) = v25;
  v26 = *(v25 - 8);
  *(v6 + 352) = v26;
  v27 = *(v26 + 64) + 15;
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_1005C02D4, a2, 0);
}

uint64_t sub_1005C02D4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 152);
  v5 = OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request;
  *(v0 + 376) = OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 384) = v6;
  *(v0 + 392) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_1005C03D4;
  v8 = *(v0 + 368);
  v9 = *(v0 + 492);
  v10 = *(v0 + 160);

  return sub_1005C1F00(v8, v9);
}

uint64_t sub_1005C03D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 400);
  v9 = *v4;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = a3;
  v5[54] = v3;

  if (v3)
  {
    v7 = sub_1005C1124;
  }

  else
  {
    v7 = sub_1005C04EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005C04EC()
{
  v1 = *(v0 + 432);
  sub_1005C4570(*(v0 + 424), *(v0 + 168));
  *(v0 + 440) = v1;
  v2 = *(v0 + 424);
  if (!v1)
  {
    v18 = *(v0 + 408);
    v17 = *(v0 + 416);
    v19 = *(v0 + 144);
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));

    *v19 = v18;
    *(v19 + 8) = v17;
    *(v19 + 16) = v2;
    *(v19 + 24) = 0;
LABEL_15:
    v54 = &enum case for DIPRetrier.RetryResult.success<A>(_:);
LABEL_34:
    v95 = *v54;
    v96 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
    (*(*(v96 - 8) + 104))(v19, v95, v96);
    goto LABEL_35;
  }

  v3 = *(v0 + 368);
  v4 = *(v0 + 304);

  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  v9 = v8 + v7;
  v10 = (v8 + v7 + v5[14]);
  v11 = enum case for DIPError.PropertyKey.serverURL(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v8 + v7, v11, v12);
  URLRequest.url.getter();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v4, 1, v13);
  v16 = *(v0 + 304);
  if (v15 == 1)
  {
    sub_10000BE18(*(v0 + 304), &unk_100844540, &unk_1006BFBC0);
    v10[3] = &type metadata for String;
    v10[4] = &protocol witness table for String;
    *v10 = 0;
    v10[1] = 0xE000000000000000;
  }

  else
  {
    *(v0 + 40) = v13;
    *(v0 + 48) = sub_1005C5020(&qword_1008418B0, &type metadata accessor for URL);
    v20 = sub_100032DBC((v0 + 16));
    (*(v14 + 32))(v20, v16, v13);
    sub_10001F358((v0 + 16), v10);
  }

  v21 = *(v0 + 336);
  v22 = *(v0 + 256);
  v23 = *(v0 + 264);
  v25 = *(v0 + 240);
  v24 = *(v0 + 248);
  sub_10003C9C0(v8);
  swift_setDeallocating();
  sub_10000BE18(v9, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v26 = enum case for DIPError.Code.internalError(_:);
  *(v0 + 488) = enum case for DIPError.Code.internalError(_:);
  v27 = *(v24 + 104);
  *(v0 + 448) = v27;
  *(v0 + 456) = (v24 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v121 = v26;
  v119 = v27;
  v27(v23);
  swift_errorRetain();
  v110 = 0x8000000100723DD0;
  v111 = 301;
  v109 = 0xD000000000000052;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  v28 = (*(v24 + 88))(v22, v25);
  if (v28 == enum case for DIPError.Code.httpNotModified(_:))
  {
    v29 = *(v0 + 176);
    if (v29)
    {
      v30 = *(v0 + 200);
      v31 = v29;
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Server indicated cached response has not been modified; reusing cached response", v34, 2u);
      }

      v35 = *(v0 + 192);
      v36 = *(v0 + 200);
      v37 = *(v0 + 184);

      (*(v35 + 8))(v36, v37);
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v38 = qword_100882498;
      v39 = v31;
      v40 = sub_100600EC4(v31, 0, 1);
      if (v40)
      {
        v41 = v40;
        v42 = *(v0 + 368);
        isa = URLRequest._bridgeToObjectiveC()().super.isa;
        v44 = type metadata accessor for DIPURLCache();
        *(v0 + 104) = v38;
        *(v0 + 112) = v44;
        objc_msgSendSuper2((v0 + 104), "storeCachedResponse:forRequest:", v41, isa, 0xD000000000000052, 0x8000000100723DD0, 301);
      }

      v45 = *(v0 + 424);
      v120 = *(v0 + 416);
      v46 = *(v0 + 408);
      v47 = *(v0 + 352);
      v126 = *(v0 + 344);
      v129 = *(v0 + 368);
      v48 = *(v0 + 320);
      v122 = *(v0 + 312);
      v124 = *(v0 + 336);
      v19 = *(v0 + 144);
      v49 = [v39 data];
      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = [v39 response];
      sub_10000B90C(v46, v120);

      (*(v48 + 8))(v124, v122);
      (*(v47 + 8))(v129, v126);
      *v19 = v50;
      *(v19 + 8) = v52;
      *(v19 + 16) = v53;
      *(v19 + 24) = 1;
      goto LABEL_15;
    }

    v117 = *(v0 + 416);
    v115 = *(v0 + 424);
    v116 = *(v0 + 408);
    v132 = *(v0 + 368);
    v87 = *(v0 + 352);
    v118 = *(v0 + 344);
    v88 = *(v0 + 336);
    v113 = *(v0 + 328);
    v114 = v88;
    v90 = *(v0 + 312);
    v89 = *(v0 + 320);
    v91 = *(v0 + 264);
    v112 = *(v0 + 240);
    v19 = *(v0 + 144);
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v89 + 16))(v92, v88, v90);
    v119(v91, v121, v112);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v93 = swift_allocError();
    (*(v89 + 32))(v94, v113, v90);

    sub_10000B90C(v116, v117);

    (*(v89 + 8))(v114, v90);
    (*(v87 + 8))(v132, v118);
    *v19 = v93;
LABEL_33:
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
    v54 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
    goto LABEL_34;
  }

  if (v28 != enum case for DIPError.Code.httpUnauthorized(_:) && v28 != enum case for DIPError.Code.httpAuthKitReprovision(_:) && v28 != enum case for DIPError.Code.httpAuthKitResync(_:))
  {
    v55 = *(v0 + 416);
    v56 = *(v0 + 424);
    v57 = *(v0 + 408);
    v58 = *(v0 + 352);
    v127 = *(v0 + 344);
    v130 = *(v0 + 368);
    v59 = *(v0 + 336);
    v61 = *(v0 + 312);
    v60 = *(v0 + 320);
    v125 = *(v0 + 144);
    v123 = enum case for DIPError.Code.httpInternalServerError(_:);
    v62 = v28;
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
    v63 = swift_allocError();
    (*(v60 + 32))(v64, v59, v61);

    sub_10000B90C(v57, v55);

    (*(v58 + 8))(v130, v127);
    *v125 = v63;
    if (v62 != v123 && v62 != enum case for DIPError.Code.httpNotImplemented(_:) && v62 != enum case for DIPError.Code.httpBadGateway(_:) && v62 != enum case for DIPError.Code.httpServiceUnavailable(_:) && v62 != enum case for DIPError.Code.httpGatewayTimeout(_:))
    {
      v66 = *(v0 + 248);
      v65 = *(v0 + 256);
      v67 = *(v0 + 240);
      v68 = *(v0 + 144);
      v69 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
      v70 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
      (*(*(v70 - 8) + 104))(v68, v69, v70);
      (*(v66 + 8))(v65, v67);
LABEL_35:
      v98 = *(v0 + 360);
      v97 = *(v0 + 368);
      v100 = *(v0 + 328);
      v99 = *(v0 + 336);
      v102 = *(v0 + 296);
      v101 = *(v0 + 304);
      v103 = *(v0 + 288);
      v105 = *(v0 + 256);
      v104 = *(v0 + 264);
      v106 = *(v0 + 232);
      v133 = *(v0 + 208);
      v134 = *(v0 + 200);

      v107 = *(v0 + 8);

      return v107();
    }

    v19 = *(v0 + 144);
    goto LABEL_33;
  }

  if ((*(v0 + 492) & 1) != 0 || (v71 = *(v0 + 160), v72 = v71 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration, *(v72 + *(type metadata accessor for DIPHTTPSession.Configuration(0) + 28)) != 1))
  {
    v78 = *(v0 + 416);
    v79 = *(v0 + 424);
    v80 = *(v0 + 408);
    v81 = *(v0 + 352);
    v128 = *(v0 + 344);
    v131 = *(v0 + 368);
    v82 = *(v0 + 336);
    v84 = *(v0 + 312);
    v83 = *(v0 + 320);
    v19 = *(v0 + 144);
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
    v85 = swift_allocError();
    (*(v83 + 32))(v86, v82, v84);

    sub_10000B90C(v80, v78);

    (*(v81 + 8))(v131, v128);
    *v19 = v85;
    v54 = &enum case for DIPRetrier.RetryResult.failure<A>(_:);
    goto LABEL_34;
  }

  v73 = OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager;
  *(v0 + 464) = OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager;
  v74 = *(v71 + v73 + 24);
  v75 = *(v71 + v73 + 32);
  sub_10000BA08((v71 + v73), v74);
  v76 = async function pointer to dispatch thunk of DIPAccountManagerProtocol.renewGrandslamToken(_:)[1];
  v77 = swift_task_alloc();
  *(v0 + 472) = v77;
  *v77 = v0;
  v77[1] = sub_1005C174C;

  return dispatch thunk of DIPAccountManagerProtocol.renewGrandslamToken(_:)(0, 0, v74, v75);
}

uint64_t sub_1005C1124()
{
  v0[15] = v0[54];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[36];
    v6 = v0[37];
    v8 = v0[34];
    v9 = v0[35];
    v11 = v0[28];
    v10 = v0[29];
    v13 = v0[26];
    v12 = v0[27];
    v5(v13, 0, 1, v12);
    (*(v11 + 32))(v10, v13, v12);
    sub_1005C5020(&qword_1008493E8, &type metadata accessor for URLError);
    _BridgedStoredNSError.code.getter();
    static URLError.Code.networkConnectionLost.getter();
    sub_1005C5020(&unk_1008493F0, &type metadata accessor for URLError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v14 = *(v9 + 8);
    v14(v7, v8);
    v14(v6, v8);
    if (v0[16] == v0[17])
    {
      v15 = v0[46];
      v16 = URLRequest.httpMethod.getter();
      if (v17)
      {
        if (v16 == 5522759 && v17 == 0xE300000000000000)
        {

LABEL_9:
          v20 = v0[54];
          v21 = v0[44];
          v50 = v0[43];
          v53 = v0[46];
          v22 = v0[40];
          v46 = v0[41];
          v47 = v0[39];
          v23 = v0[28];
          v48 = v0[27];
          v49 = v0[29];
          v24 = v0[18];
          (*(v0[31] + 104))(v0[33], enum case for DIPError.Code.networkTimeOut(_:), v0[30]);
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
          v25 = swift_allocError();
          (*(v22 + 32))(v26, v46, v47);

          (*(v23 + 8))(v49, v48);
          (*(v21 + 8))(v53, v50);
          *v24 = v25;
          v27 = &enum case for DIPRetrier.RetryResult.failure<A>(_:);
          goto LABEL_12;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_9;
        }
      }
    }

    (*(v0[28] + 8))(v0[29], v0[27]);
  }

  else
  {
    v18 = v0[26];
    v5(v18, 1, 1, v0[27]);
    sub_10000BE18(v18, &unk_1008493D0, &unk_1006E93F0);
  }

  v28 = v0[54];
  v29 = v0[44];
  v51 = v0[43];
  v54 = v0[46];
  v30 = v0[39];
  v24 = v0[18];
  (*(v0[31] + 104))(v0[33], enum case for DIPError.Code.networkTimeOut(_:), v0[30]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
  v31 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  (*(v29 + 8))(v54, v51);
  *v24 = v31;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  v27 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
LABEL_12:
  v32 = *v27;
  v33 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
  (*(*(v33 - 8) + 104))(v24, v32, v33);
  v35 = v0[45];
  v34 = v0[46];
  v37 = v0[41];
  v36 = v0[42];
  v39 = v0[37];
  v38 = v0[38];
  v40 = v0[36];
  v42 = v0[32];
  v41 = v0[33];
  v43 = v0[29];
  v52 = v0[26];
  v55 = v0[25];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1005C174C()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_1005C1C2C;
  }

  else
  {
    v3 = sub_1005C1860;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005C1860()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 152);
  v3 = (*(v0 + 160) + *(v0 + 464));
  (*(v0 + 384))(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  v4 = v3[4];
  sub_10000BA08(v3, v3[3]);
  v5.value._countAndFlagsBits = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v6._countAndFlagsBits = 0x7A69726F68747541;
  v6._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v5, v6);

  return _swift_task_switch(sub_1005C194C, v2, 0);
}

uint64_t sub_1005C194C()
{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v5 = v0[19];
  swift_beginAccess();
  (*(v3 + 24))(v5 + v1, v2, v4);
  swift_endAccess();

  return _swift_task_switch(sub_1005C1A04, 0, 0);
}

uint64_t sub_1005C1A04()
{
  v1 = v0[53];
  v26 = v0[52];
  v27 = v0[55];
  v2 = v0[51];
  v28 = v0[45];
  v30 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[18];
  sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
  v9 = swift_allocError();
  (*(v6 + 32))(v10, v5, v7);

  sub_10000B90C(v2, v26);

  v11 = *(v4 + 8);
  v11(v28, v3);
  v11(v30, v3);
  *v8 = v9;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v12 = enum case for DIPRetrier.RetryResult.retry<A>(_:);
  v13 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
  (*(*(v13 - 8) + 104))(v8, v12, v13);
  v15 = v0[45];
  v14 = v0[46];
  v17 = v0[41];
  v16 = v0[42];
  v19 = v0[37];
  v18 = v0[38];
  v20 = v0[36];
  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[29];
  v29 = v0[26];
  v31 = v0[25];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1005C1C2C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v27 = *(v0 + 440);
  v24 = *(v0 + 416);
  v22 = *(v0 + 424);
  v23 = *(v0 + 408);
  v30 = *(v0 + 368);
  v3 = *(v0 + 352);
  v28 = *(v0 + 344);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 144);
  v25 = v6;
  v26 = *(v0 + 336);
  (*(v0 + 448))(*(v0 + 264), *(v0 + 488), *(v0 + 240));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
  v7 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  sub_10000B90C(v23, v24);

  (*(v5 + 8))(v26, v4);
  (*(v3 + 8))(v30, v28);
  *v25 = v7;
  v8 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
  v9 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
  (*(*(v9 - 8) + 104))(v25, v8, v9);
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 288);
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  v19 = *(v0 + 232);
  v29 = *(v0 + 208);
  v31 = *(v0 + 200);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1005C1F00(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  *(v3 + 64) = v8;
  v9 = *(v8 - 8);
  *(v3 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1005C204C, 0, 0);
}

uint64_t sub_1005C204C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 136);
  v4 = *(v0 + 24);
  sub_1005C3B08(*(v0 + 16));
  v5 = 16;
  if (v3)
  {
    v5 = 24;
  }

  v6 = *(v4 + v5);
  *(v0 + 88) = v6;
  v6;
  static DaemonSignposts.webRequest.getter();
  DIPSignpost.init(_:)();
  v7 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_1005C213C;
  v9 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v9, 0);
}

uint64_t sub_1005C213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v9 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;
  v5[16] = v3;

  if (v3)
  {
    v7 = sub_1005C2524;
  }

  else
  {
    v7 = sub_1005C2254;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005C2254()
{
  v1 = v0[15];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    sub_10000B8B8(v5, v4);
    sub_1005C4094(v3, v5, v4);
    sub_10000B90C(v5, v4);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v9 + 8))(v6, v8);

    v12 = v0[1];
    v13 = v0[13];
    v14 = v0[14];

    return v12(v13, v14, v3);
  }

  else
  {
    v16 = v0[14];
    v17 = v0[15];
    v18 = v0[13];
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.serverResponseInconsistent(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v18, v16);
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v24 = v0[6];
    v23 = v0[7];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v22 + 8))(v19, v21);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1005C2524()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  (*(v5 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

id sub_1005C25EC()
{
  result = sub_1005C2610();
  qword_100882478 = result;
  unk_100882480 = v1;
  return result;
}

id sub_1005C2610()
{
  v0 = type metadata accessor for DeviceInformationProvider();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DeviceInformationProvider.init()();
  v59 = DeviceInformationProvider.productType.getter();
  v6 = v5;
  v7 = DeviceInformationProvider.productName.getter();
  v55 = v8;
  v56 = v7;
  v57 = DeviceInformationProvider.productVersion.getter();
  v10 = v9;
  v58._countAndFlagsBits = DeviceInformationProvider.buildVersion.getter();
  v58._object = v11;
  sub_1005C5068();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  result = [v13 bundleForClass:ObjCClassFromMetadata];
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result objectForInfoDictionaryKey:kCFBundleVersionKey];
  v48 = v10;
  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  v53 = v1;
  if (*(&v63 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = v60;
      v18 = v61;
      goto LABEL_10;
    }
  }

  else
  {
    sub_10000BE18(&v64, &unk_100845ED0, &qword_1006DA1D0);
  }

  v18 = 0xE300000000000000;
  v17 = 7104878;
LABEL_10:
  v50 = v17;
  v51 = v6;
  v54 = v0;
  v19 = [v15 bundleIdentifier];
  v52 = v15;
  if (v19)
  {
    v20 = v19;
    v49._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49._object = v21;
  }

  else
  {
    v49._object = 0xE300000000000000;
    v49._countAndFlagsBits = 7104878;
  }

  v22 = [v13 mainBundle];
  if ([v22 objectForInfoDictionaryKey:kCFBundleVersionKey])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (!*(&v63 + 1))
  {
    sub_10000BE18(&v64, &unk_100845ED0, &qword_1006DA1D0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v25 = v48;
    v24 = 0xE300000000000000;
    v23 = 7104878;
    goto LABEL_21;
  }

  v23 = v60;
  v24 = v61;
  v25 = v48;
LABEL_21:
  v26 = [v22 bundleIdentifier];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v30 = 0xE300000000000000;
    v28 = 7104878;
  }

  v64._countAndFlagsBits = v56;
  v64._object = v55;
  v31._countAndFlagsBits = 59;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = v57;
  v32._object = v25;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 59;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  String.append(_:)(v58);

  v34 = v64;
  v64 = v49;
  v35._countAndFlagsBits = 47;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v50;
  v36._object = v18;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 10272;
  v37._object = 0xE200000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = v28;
  v38._object = v30;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 47;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = v23;
  v40._object = v24;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 41;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v42 = v64;
  v64._countAndFlagsBits = 60;
  v64._object = 0xE100000000000000;
  v43._countAndFlagsBits = v59;
  v43._object = v51;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 3940414;
  v44._object = 0xE300000000000000;
  String.append(_:)(v44);
  String.append(_:)(v34);

  v45._countAndFlagsBits = 3940414;
  v45._object = 0xE300000000000000;
  String.append(_:)(v45);
  String.append(_:)(v42);

  v46._countAndFlagsBits = 62;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);

  countAndFlagsBits = v64._countAndFlagsBits;
  (*(v53 + 8))(v4, v54);
  return countAndFlagsBits;
}

unint64_t sub_1005C2AE8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100849420, &qword_1006DA510);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_100040520(*(v1 + 48) + 40 * v17, v30);
    sub_10001F2EC(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_100040520(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_10000BE18(v27, &qword_100848A48, &unk_1006E9420);

      goto LABEL_22;
    }

    sub_10001F2EC(v28 + 8, v26);
    sub_10000BE18(v27, &qword_100848A48, &unk_1006E9420);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_10003ADCC(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_1005C31B4()
{
  v1 = OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request;
  v2 = type metadata accessor for URLRequest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005C3254()
{
  result = type metadata accessor for URLRequest();
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

uint64_t sub_1005C3304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DIPBackoffStrategy();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1005C33E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DIPBackoffStrategy();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

void sub_1005C34A8()
{
  type metadata accessor for DIPBackoffStrategy();
  if (v0 <= 0x3F)
  {
    sub_1000BD2F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005C3550(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DeviceInformationProvider();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v9 = v2 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration;
    if (*(v9 + *(type metadata accessor for DIPHTTPSession.Configuration(0) + 28)) == 1)
    {
      v10 = *(v2 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager + 32);
      sub_10000BA08((v2 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager), *(v2 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager + 24));
      v11.value._countAndFlagsBits = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
      v12._countAndFlagsBits = 0x7A69726F68747541;
      v12._object = 0xED00006E6F697461;
      URLRequest.setValue(_:forHTTPHeaderField:)(v11, v12);
    }
  }

  v13 = [objc_opt_self() _deviceLanguage];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18._countAndFlagsBits = 0x4C2D747065636341;
  v18._object = 0xEF65676175676E61;
  v19.value._countAndFlagsBits = v15;
  v19.value._object = v17;
  URLRequest.setValue(_:forHTTPHeaderField:)(v19, v18);

  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0xE000000000000000;
  v20 = URLRequest.httpBody.getter();
  v22 = 0;
  if (v21 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v48 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v48 != 2)
    {
      sub_10000BD94(v20, v21);
      v22 = 0;
      goto LABEL_8;
    }

    v60 = *(v20 + 16);
    v59 = *(v20 + 24);
    v20 = sub_10000BD94(v20, v21);
    v22 = v59 - v60;
    if (!__OFSUB__(v59, v60))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (!v48)
  {
    v49 = BYTE6(v21);
    sub_10000BD94(v20, v21);
    v22 = v49;
    goto LABEL_8;
  }

  v61 = HIDWORD(v20);
  v62 = v20;
  sub_10000BD94(v20, v21);
  LODWORD(v22) = v61 - v62;
  if (__OFSUB__(v61, v62))
  {
    __break(1u);
    return;
  }

  v22 = v22;
LABEL_8:
  v63[0] = v22;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x2D746E65746E6F43;
  v24._object = 0xEE006874676E654CLL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v64, v24);

  if (qword_100832D18 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v25._object = 0x8000000100723FE0;
    v25._countAndFlagsBits = 0xD000000000000013;
    URLRequest.setValue(_:forHTTPHeaderField:)(xmmword_100882478, v25);
    DeviceInformationProvider.init()();
    v26 = DeviceInformationProvider.hardwarePlatform.getter();
    v28 = v27;
    (*(v5 + 8))(v8, v4);
    v29._countAndFlagsBits = 0xD000000000000010;
    v29._object = 0x8000000100724000;
    v30.value._countAndFlagsBits = v26;
    v30.value._object = v28;
    URLRequest.setValue(_:forHTTPHeaderField:)(v30, v29);

    v31 = [objc_opt_self() ak_clientInfoHeader];
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_1005C2AE8(v8);

    if (!v4)
    {
      break;
    }

    v5 = v4 + 64;
    v33 = 1 << *(v4 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v4 + 64);
    v36 = (v33 + 63) >> 6;

    v37 = 0;
    while (v35)
    {
      v38 = v37;
LABEL_19:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v40 = (v38 << 10) | (16 * v39);
      v41 = (*(v4 + 48) + v40);
      v42 = *v41;
      v8 = v41[1];
      v43 = (*(v4 + 56) + v40);
      v44 = *v43;
      v45 = v43[1];

      v46.value._countAndFlagsBits = v44;
      v46.value._object = v45;
      v47._countAndFlagsBits = v42;
      v47._object = v8;
      URLRequest.setValue(_:forHTTPHeaderField:)(v46, v47);
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {

        goto LABEL_25;
      }

      v35 = *(v5 + 8 * v38);
      ++v37;
      if (v35)
      {
        v37 = v38;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_25:
  v50 = [objc_opt_self() standardUserDefaults];
  static DaemonDefaultsKeys.environmentName.getter();
  v51 = String._bridgeToObjectiveC()();

  v52 = [v50 stringForKey:v51];

  if (!v52)
  {
    goto LABEL_27;
  }

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v64.value._countAndFlagsBits = v53;
  v64.value._object = v55;
  v63[0] = 1685025392;
  v63[1] = 0xE400000000000000;
  sub_10001F298();
  v56 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (v56)
  {
LABEL_27:
    v57._object = 0x8000000100724020;
    v58.value._countAndFlagsBits = 1702195828;
    v58.value._object = 0xE400000000000000;
    v57._countAndFlagsBits = 0xD000000000000013;
    URLRequest.setValue(_:forHTTPHeaderField:)(v58, v57);
  }
}