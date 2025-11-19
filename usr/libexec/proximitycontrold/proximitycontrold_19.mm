void sub_1001B9FFC(char a1)
{
  v2 = v1;
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v4 = 0xE90000000000006CLL;
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034AF60);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = (a1 & 1) == 0;
    if (a1)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x6C695065736C6146;
    }

    if (!v10)
    {
      v4 = 0x80000001002A4450;
    }

    v12 = sub_100017494(v11, v4, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Providing ranging session truth feedback: %s", v8, 0xCu);
    sub_10000903C(v9);
  }

  else
  {

    v13 = (a1 & 1) == 0;
    if (a1)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x6C695065736C6146;
    }

    if (!v13)
    {
      v4 = 0x80000001002A4450;
    }
  }

  sub_100035D04(&qword_10034B1C0, &qword_1002894D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002725A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  *(inited + 48) = v11;
  *(inited + 56) = v4;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v16;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v17;
  v18 = sub_10024D608(inited);
  swift_setDeallocating();
  sub_100035D04(&qword_10034B1C8, &unk_1002894E0);
  swift_arrayDestroy();
  sub_10011A414(v18);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 _provideTruthTag:isa];
}

void sub_1001BA2B8()
{
  if (*(v0 + 24))
  {
    v1 = v0;
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034AF60);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 136315138;
      v12 = *(v1 + 24);
      v13 = v6;
      v7 = v12;
      sub_100035D04(&qword_10034B1B8, &qword_1002894D0);
      v8 = String.init<A>(describing:)();
      v10 = sub_100017494(v8, v9, &v13);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating %s", v5, 0xCu);
      sub_10000903C(v6);
    }

    [*(v1 + 24) invalidate];
    v11 = *(v1 + 24);
    *(v1 + 24) = 0;
  }
}

uint64_t sub_1001BA458(char a1)
{
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034AF60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Feedback request received", v5, 2u);
  }

  if (a1 & 1) != 0 || (sub_1001BA568())
  {
    sub_1001BAF40();
  }

  return sub_1001B9758();
}

uint64_t sub_1001BA568()
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v53 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  if (!IsAppleInternalBuild())
  {
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003078(v20, qword_10034AF60);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_18;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v54);
    v19 = "%s Not an internal build";
    goto LABEL_16;
  }

  v56 = &type metadata for Feature;
  v57 = sub_100013104();
  LOBYTE(v54) = 3;
  v13 = isFeatureEnabled(_:)();
  sub_10000903C(&v54);
  if ((v13 & 1) == 0)
  {
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003078(v21, qword_10034AF60);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_18;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v54);
    v19 = "%s Feedback gathering is disabled";
    goto LABEL_16;
  }

  if (*(v0 + 197))
  {
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_10034AF60);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_18;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v54);
    v19 = "%s Pill was expanded during session";
    goto LABEL_16;
  }

  v27 = v0;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v28 = *(qword_10038B0B8 + 560);
  sub_100060984(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000097E8(v4, &qword_10033C280, &qword_100272A80);
    if (*(v27 + 198))
    {
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  (*(v6 + 32))(v12, v4, v5);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v30 = v29;
  v31 = *(v6 + 8);
  v31(v10, v5);
  v32 = v30 / 3600.0;
  sub_1001BBCD0(&v54, v32);
  if (v55)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    v49._countAndFlagsBits = 0x656C62756F44;
    v49._object = 0xE600000000000000;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 0xD00000000000001ELL;
    v50._object = 0x80000001002A4400;
    String.append(_:)(v50);
    v51._countAndFlagsBits = 7630409;
    v51._object = 0xE300000000000000;
    String.append(_:)(v51);
    v52._countAndFlagsBits = 0xD00000000000002ELL;
    v52._object = 0x80000001002A4420;
    String.append(_:)(v52);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v54 <= 18)
  {
    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003078(v34, qword_10034AF60);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v54);
      *(v37 + 12) = 2080;
      v53 = v32;
      v38 = String.init<A>(describing:)();
      v40 = sub_100017494(v38, v39, &v54);

      *(v37 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s recently triggered %s hours ago.", v37, 0x16u);
      swift_arrayDestroy();
    }

    v31(v12, v5);
    return 0;
  }

  v31(v12, v5);
  if ((*(v27 + 198) & 1) == 0)
  {
LABEL_28:
    if ((*(v27 + 168) & 1) == 0)
    {
      v41 = *(v27 + 160);
      if (v41 >= 1.0)
      {
        if (qword_100339158 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_100003078(v46, qword_10034AF60);
        v15 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v15, v47))
        {
          goto LABEL_18;
        }

        v48 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v54 = v18;
        *v48 = 136315394;
        *(v48 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v54);
        *(v48 + 12) = 2048;
        *(v48 + 14) = v41;
        v19 = "%s Pill visible for %f";
        v22 = v47;
        v23 = v15;
        v24 = v48;
        v25 = 22;
        goto LABEL_17;
      }

      goto LABEL_39;
    }

    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003078(v33, qword_10034AF60);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_18;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A43B0, &v54);
    v19 = "%s Unknown pill visible duration";
LABEL_16:
    v22 = v16;
    v23 = v15;
    v24 = v17;
    v25 = 12;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v23, v22, v19, v24, v25);
    sub_10000903C(v18);

LABEL_18:

    return 0;
  }

LABEL_39:
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100003078(v42, qword_10034AF60);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Should trigger feedback offer", v45, 2u);
  }

  return 1;
}

uint64_t sub_1001BAF40()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  __chkstk_darwin(v2);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034AF60);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Triggering feedback offer", v10, 2u);
  }

  if (qword_100339168 != -1)
  {
    swift_once();
  }

  v71[4] = xmmword_10038B4A0;
  v72 = *&qword_10038B4B0;
  v73 = xmmword_10038B4C0;
  v71[0] = xmmword_10038B460;
  v71[1] = *&byte_10038B470;
  v71[2] = xmmword_10038B480;
  v71[3] = unk_10038B490;
  v67 = *&byte_10038B470;
  v68 = xmmword_10038B480;
  v69 = unk_10038B490;
  v70 = xmmword_10038B4A0;
  v11 = qword_10038B4B0;
  v66 = *(&xmmword_10038B4C0 + 1);
  v65 = *&byte_10038B4B8;
  v12 = *(v1 + 160);
  v13 = *(v1 + 168);
  v14 = *(v1 + 197);
  v15 = *(v1 + 198);
  sub_1000E8EC0(v71, &v56);
  v16 = sub_1001BBEC0(v12, v13, v14, v15);
  v18 = v17;

  v19 = *(v1 + 152);
  v20 = *(v19 + 16);
  v48 = v18;
  v49 = v16;
  if (v20)
  {
    v40 = v72;
    v21 = sub_100127540(v20, 0);
    v22 = *(type metadata accessor for UUID() - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v50 = v21;
    v41 = sub_100128D5C(&v56, &v21[v23], v20, v19);

    result = sub_100004F98();
    if (v41 != v20)
    {
      __break(1u);
      return result;
    }

    v16 = v49;
    v11 = v50;
    v18 = v48;
  }

  v50 = v11;
  *&v52[0] = v16;
  *(&v52[0] + 1) = v18;
  v52[1] = v67;
  v52[2] = v68;
  v52[3] = v69;
  v53 = v70;
  *&v54[0] = v11;
  *(v54 + 8) = v65;
  *(&v54[1] + 1) = v66;
  v25 = *(v1 + 40);
  v26 = *(v1 + 72);
  v55[1] = *(v1 + 56);
  v55[2] = v26;
  v55[0] = v25;
  v27 = *(v1 + 88);
  v28 = *(v1 + 104);
  v29 = *(v1 + 136);
  v55[5] = *(v1 + 120);
  v55[6] = v29;
  v55[3] = v27;
  v55[4] = v28;
  v30 = v52[0];
  v31 = v67;
  v32 = v69;
  *(v1 + 72) = v68;
  *(v1 + 56) = v31;
  *(v1 + 40) = v30;
  v33 = v53;
  v34 = v54[0];
  *(v1 + 136) = v54[1];
  *(v1 + 120) = v34;
  *(v1 + 104) = v33;
  *(v1 + 88) = v32;
  sub_1000E8EC0(v52, &v56);
  sub_1000097E8(v55, &qword_10034B1B0, &unk_1002894C0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v35 = swift_allocObject();
  swift_weakInit();
  *&v59 = sub_1001BC080;
  *(&v59 + 1) = v35;
  v56 = _NSConcreteStackBlock;
  v57 = 1107296256;
  *&v58 = sub_100018AB8;
  *(&v58 + 1) = &unk_100310490;
  v36 = _Block_copy(&v56);

  v37 = v42;
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  v38 = v44;
  v39 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);
  (*(v46 + 8))(v38, v39);
  (*(v43 + 8))(v37, v45);

  v56 = v49;
  v57 = v48;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v61 = v70;
  v63 = v65;
  v62 = v50;
  v64 = v66;
  return sub_1000E8EF8(&v56);
}

uint64_t sub_1001BB530()
{
  v0 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  v7 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v11 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_1001BA2B8();
    v16 = sub_1001B9858();
    v17 = *(v15 + 24);
    *(v15 + 24) = v16;
    v18 = v16;

    if (qword_100339158 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_100003078(v19, qword_10034AF60);
    v21 = *(v19 - 8);
    (*(v21 + 16))(v13, v20, v19);
    (*(v21 + 56))(v13, 0, 1, v19);
    sub_10007E4B8(v13, v11);
    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0x6361207472656C41;
    *(v23 + 24) = 0xEF64657461766974;
    sub_10007E4B8(v11, v23 + v22);
    aBlock[4] = sub_10007E528;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = &unk_1003104E0;
    v24 = _Block_copy(aBlock);

    [v18 activateWithCompletion:v24];
    _Block_release(v24);

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v25 = qword_10038B0B8;
    Date.init()();
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
    v27 = *(v25 + 560);
    sub_10006C4AC(v6, v4);
    v28 = v27;
    sub_100259E18(v4);

    return sub_1000097E8(v6, &qword_10033C280, &qword_100272A80);
  }

  return result;
}

void sub_1001BB928()
{
  v1 = v0;
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034AF60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Triggering Radar", v5, 2u);
  }

  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  v21 = *(v1 + 104);
  v22 = v7;
  v23 = *(v1 + 136);
  v8 = *(v1 + 56);
  v20[0] = *(v1 + 40);
  v20[1] = v8;
  v20[2] = *(v1 + 72);
  v20[3] = v6;
  if (*(&v21 + 1))
  {
    v9 = *(v1 + 56);
    v10 = *(v1 + 88);
    v26 = *(v1 + 72);
    v27 = v10;
    v11 = *(v1 + 104);
    v24 = *(v1 + 40);
    v25 = v9;
    v28 = v11;
    v29 = *(&v21 + 1);
    v12 = *(v1 + 136);
    v30 = *(v1 + 120);
    v31 = v12;
    v19[0] = v24;
    v19[1] = v9;
    v19[2] = v26;
    v13 = *(v1 + 104);
    v14 = *(v1 + 136);
    v19[5] = *(v1 + 120);
    v19[6] = v14;
    v19[3] = v10;
    v19[4] = v13;
    sub_1000E8EC0(v19, v18);
    sub_1000E8064(0, 0);
    sub_1000097E8(v20, &qword_10034B1B0, &unk_1002894C0);
    v15 = *(v1 + 88);
    v16 = *(v1 + 120);
    v18[4] = *(v1 + 104);
    v18[5] = v16;
    v18[6] = *(v1 + 136);
    v17 = *(v1 + 56);
    v18[0] = *(v1 + 40);
    v18[1] = v17;
    v18[2] = *(v1 + 72);
    v18[3] = v15;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    sub_1000097E8(v18, &qword_10034B1B0, &unk_1002894C0);
  }
}

uint64_t sub_1001BBB3C()
{
  swift_unknownObjectWeakDestroy();

  v1 = *(v0 + 32);

  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v4 = *(v0 + 120);
  sub_1001BC090(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v2 = *(v0 + 152);

  return swift_deallocClassInstance();
}

double sub_1001BBBBC()
{
  xmmword_10038B460 = 0uLL;
  byte_10038B470 = 5;
  *&algn_10038B471[7] = xmmword_100282960;
  *(&xmmword_10038B480 + 1) = 0xD000000000000011;
  unk_10038B490 = 0x80000001002A2BB0;
  *&result = 7105601;
  unk_10038B498 = xmmword_100282970;
  *(&xmmword_10038B4A0 + 1) = &_swiftEmptyArrayStorage;
  unk_10038B4B0 = 0;
  byte_10038B4B8 = 1;
  *&xmmword_10038B4C0 = 0xD00000000000002BLL;
  *(&xmmword_10038B4C0 + 1) = 0x80000001002A4380;
  return result;
}

uint64_t CUUserAlertAction.description.getter(unint64_t a1)
{
  sub_1001BBC5C(a1);

  return String.init(cString:)();
}

const char *sub_1001BBC5C(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return "?";
  }

  else
  {
    return off_100310558[a1];
  }
}

uint64_t sub_1001BBC80()
{
  sub_1001BBC5C(*v0);

  return String.init(cString:)();
}

BOOL sub_1001BBCD0(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = Double.exponent.getter();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = Double.significandWidth.getter();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1001BBEC0(uint64_t a1, char a2, char a3, char a4)
{
  if (a2)
  {
    v6 = 63;
    v7 = 0xE100000000000000;
  }

  else
  {
    v6 = sub_100110CA8(*&a1);
    v7 = v8;
  }

  v9 = 1702195828;
  if (a3)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (a3)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (a3 == 2)
  {
    v12 = 63;
  }

  else
  {
    v12 = v10;
  }

  if (a3 == 2)
  {
    v13 = 0xE100000000000000;
  }

  else
  {
    v13 = v11;
  }

  if (a4)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v9 = 0x65736C6166;
    v14 = 0xE500000000000000;
  }

  if (a4 == 2)
  {
    v15 = 63;
  }

  else
  {
    v15 = v9;
  }

  if (a4 == 2)
  {
    v16 = 0xE100000000000000;
  }

  else
  {
    v16 = v14;
  }

  _StringGuts.grow(_:)(98);
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  v17._object = 0x80000001002A4100;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v6;
  v18._object = v7;
  String.append(_:)(v18);

  v19._object = 0x80000001002A4130;
  v19._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v12;
  v20._object = v13;
  String.append(_:)(v20);

  v21._object = 0x80000001002A4150;
  v21._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v15;
  v22._object = v16;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.append(_:)(v23);

  return 0x1000000000000203;
}

uint64_t sub_1001BC090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {

    sub_1001BC158(a4, a5);
  }

  return result;
}

uint64_t sub_1001BC158(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001BC1C0(uint64_t a1)
{
  sub_100009848(a1, &v9, &qword_10033A240, &unk_100272E70);
  if (v10)
  {
    sub_10000E754(&v9, v12);
    v2 = v13;
    v3 = v14;
    sub_10000EBC0(v12, v13);
    v10 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v11 = &off_100302540;
    *&v9 = v1;
    v4 = *(v3 + 8);
    v5 = *(v4 + 24);
    v6 = v1;
    v7 = v5(&v9, v2, v4);
    sub_1000097E8(&v9, &unk_10034B540, qword_100270E60);
    sub_10000903C(v12);
  }

  else
  {
    sub_1000097E8(&v9, &qword_10033A240, &unk_100272E70);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1001BC2D0(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v49)
  {
    v4 = v49;
    v5 = sub_1000102F8(v2);

    if (v5)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v49)
  {
    v6 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v7 = &off_100302540;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v50 = 0;
    v51 = 0;
  }

  v52 = v6;
  v53 = v7;
  v8 = sub_10001075C(&v49);
  sub_1000097E8(&v49, &unk_10034B540, qword_100270E60);
  if (v8)
  {
    return 1;
  }

  v9 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v9)
  {
    v10 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v11 = &off_100303480;
    v12 = v9;
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    v50 = 0;
    v51 = 0;
  }

  v49 = v12;
  v52 = v10;
  v53 = v11;
  sub_100009848(&v49, &v44, &qword_10033A240, &unk_100272E70);
  if (v45)
  {
    sub_10000E754(&v44, v46);
    v13 = v47;
    v14 = v48;
    sub_10000EBC0(v46, v47);
    v15 = *(v14 + 8);
    v16 = *(v15 + 48);
    v17 = v9;
    v18 = v16(v2, v13, v15);
    sub_10000903C(v46);
    sub_1000097E8(&v49, &qword_10033A240, &unk_100272E70);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    v19 = v9;
    sub_1000097E8(&v44, &qword_10033A240, &unk_100272E70);
    sub_1000097E8(&v49, &qword_10033A240, &unk_100272E70);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v49)
  {
    v20 = v49;
    sub_1000104F8();
    v22 = v21;
    sub_100008574();
    v24 = sub_1000089FC(v23, v22);

    v25 = *(v24 + 16);

    if (v25)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v49)
  {
    v26 = v49;
    sub_1000104F8();
    v28 = v27;
    sub_100008574();
    v30 = sub_1000089FC(v29, v28);

    v31 = *(v30 + 16);

    if (v31)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v34 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  if (v34 >> 62)
  {
LABEL_37:
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = 0;
  do
  {
    v32 = v35 != v36;
    if (v35 == v36)
    {
      break;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v37 = *(v34 + 8 * v36 + 32);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_1000104F8();
    v40 = v39;
    sub_1000104F8();
    v42 = sub_1000089FC(v41, v40);

    v43 = *(v42 + 16);

    ++v36;
  }

  while (!v43);

  return v32;
}

uint64_t sub_1001BC78C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v53;
  if (v53)
  {
    v56 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v57 = &off_100303480;
    v53 = v1;
    sub_100009848(&v53, &v48, &qword_10033A240, &unk_100272E70);
    if (v49)
    {
      sub_10000E754(&v48, v50);
      v4 = v51;
      v5 = v52;
      sub_10000EBC0(v50, v51);
      v6 = *(v5 + 8);
      v7 = *(v6 + 8);
      v8 = v3;
      v9 = v1;
      v10 = v7(v4, v6);
      v11 = sub_10000F0CC();
      v12 = sub_1000089FC(v11, v10);

      v13 = *(v12 + 16);

      sub_10000903C(v50);
      sub_1000097E8(&v53, &qword_10033A240, &unk_100272E70);

      if (v13)
      {
        return 1;
      }
    }

    else
    {
      v14 = v1;
      sub_1000097E8(&v48, &qword_10033A240, &unk_100272E70);
      sub_1000097E8(&v53, &qword_10033A240, &unk_100272E70);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v53;
  if (v53)
  {
    v16 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v17 = &off_100302540;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v15;
  v56 = v16;
  v57 = v17;
  v18 = sub_1000BC0D8(&v53);
  sub_1000097E8(&v53, &unk_10034B540, qword_100270E60);
  if (v18)
  {
    return 1;
  }

  v19 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v19)
  {
    v20 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v21 = &off_100303480;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v19;
  v56 = v20;
  v57 = v21;
  v22 = v19;
  v23 = sub_1001BE0E4(&v53);
  sub_1000097E8(&v53, &qword_10033A240, &unk_100272E70);
  if (v23)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = v53;
  if (v53)
  {
    sub_100008574();
    v26 = v25;
    v27 = sub_1000BBD2C();
    v28 = sub_1000089FC(v27, v26);

    v29 = *(v28 + 16);

    if (v29)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v30 = v53;
  if (v53)
  {
    sub_100008574();
    v32 = v31;
    v33 = sub_1000BBD2C();
    v34 = sub_1000089FC(v33, v32);

    v35 = *(v34 + 16);

    if (v35)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v38 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  if (v38 >> 62)
  {
LABEL_37:
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = 0;
  do
  {
    v36 = v39 != v40;
    if (v39 == v40)
    {
      break;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v41 = *(v38 + 8 * v40 + 32);
    }

    v42 = v41;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_1000104F8();
    v44 = v43;
    v45 = sub_1000BBD2C();
    v46 = sub_1000089FC(v45, v44);

    v47 = *(v46 + 16);

    ++v40;
  }

  while (!v47);

  return v36;
}

uint64_t sub_1001BCC9C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v66;
  v60 = v1;
  if (v66)
  {
    v69 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v70 = &off_100302540;
    v66 = v1;
    sub_100009848(&v66, &v61, &unk_10034B540, qword_100270E60);
    if (v62)
    {
      sub_10000E754(&v61, v63);
      v5 = v64;
      v6 = v65;
      sub_10000EBC0(v63, v64);
      v7 = *(v6 + 8);
      v8 = *(v7 + 8);
      v9 = v4;
      v10 = v1;
      v11 = v8(v5, v7);
      v12 = sub_10000F0CC();
      v13 = sub_1000089FC(v12, v11);

      v14 = *(v13 + 16);

      sub_10000903C(v63);
      sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);

      v2 = v1;
      if (v14)
      {
        return 1;
      }
    }

    else
    {
      v15 = v1;
      sub_1000097E8(&v61, &unk_10034B540, qword_100270E60);
      sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v66;
  if (v66)
  {
    v17 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v18 = &off_100302540;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v67 = 0;
    v68 = 0;
  }

  v66 = v16;
  v69 = v17;
  v70 = v18;
  v19 = sub_1000BB924(&v66);
  sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);
  if (v19)
  {
    return 1;
  }

  v20 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v20)
  {
    v21 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v22 = &off_100303480;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v67 = 0;
    v68 = 0;
  }

  v66 = v20;
  v69 = v21;
  v70 = v22;
  v23 = v20;
  v24 = sub_1001BC1C0(&v66);
  sub_1000097E8(&v66, &qword_10033A240, &unk_100272E70);
  if (v24)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v66;
  if (v66)
  {
    v69 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v70 = &off_100302540;
    v66 = v2;
    sub_100009848(&v66, v63, &unk_10034B540, qword_100270E60);
    v27 = v64;
    if (v64)
    {
      v28 = v65;
      sub_10000EBC0(v63, v64);
      v29 = v2;
      v30 = v26;
      sub_100008574();
      v32 = sub_10015A19C(v31, v27, *(v28 + 8));

      sub_10000903C(v63);
      sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);

      v2 = v60;
      if (v32)
      {
        return 1;
      }
    }

    else
    {
      v33 = v2;
      sub_1000097E8(v63, &unk_10034B540, qword_100270E60);
      sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v66;
  if (v66)
  {
    v69 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v70 = &off_100302540;
    v66 = v2;
    sub_100009848(&v66, v63, &unk_10034B540, qword_100270E60);
    v35 = v64;
    if (v64)
    {
      v36 = v65;
      sub_10000EBC0(v63, v64);
      v37 = v2;
      v38 = v34;
      sub_100008574();
      v40 = sub_10015A19C(v39, v35, *(v36 + 8));

      sub_10000903C(v63);
      sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);

      v2 = v60;
      if (!v40)
      {
        goto LABEL_25;
      }

      return 1;
    }

    v41 = v2;
    sub_1000097E8(v63, &unk_10034B540, qword_100270E60);
    sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);
  }

LABEL_25:
  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v42 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  if (v42 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v44 = 0;
    v59 = i;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v46 = *(v42 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v69 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
      v70 = &off_100302540;
      v66 = v2;
      sub_100009848(&v66, &v61, &unk_10034B540, qword_100270E60);
      if (v62)
      {
        sub_10000E754(&v61, v63);
        v49 = v64;
        v50 = v65;
        sub_10000EBC0(v63, v64);
        v51 = *(v50 + 8);
        v52 = *(v51 + 8);
        v53 = v60;
        v54 = v52(v49, v51);
        sub_1000104F8();
        v56 = sub_1000089FC(v55, v54);

        v57 = *(v56 + 16);
        v2 = v60;

        sub_10000903C(v63);
        sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);
        if (v57)
        {
          v58 = 1;
          goto LABEL_46;
        }
      }

      else
      {
        v45 = v2;

        sub_1000097E8(&v61, &unk_10034B540, qword_100270E60);
        sub_1000097E8(&v66, &unk_10034B540, qword_100270E60);
      }

      ++v44;
      if (v48 == v59)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_45:
  v58 = 0;
LABEL_46:

  return v58;
}

uint64_t sub_1001BD450(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v63)
  {
    v4 = v63;
    v5 = sub_10000F0CC();
    v6 = sub_10000F0CC();
    v7 = sub_1000089FC(v6, v5);

    v8 = *(v7 + 16);

    if (v8)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v63)
  {
    v9 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v10 = &off_100302540;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v64 = 0;
    v65 = 0;
  }

  v66 = v9;
  v67 = v10;
  v11 = sub_1001AC2F8(&v63);
  sub_1000097E8(&v63, &unk_10034B540, qword_100270E60);
  if (v11)
  {
    return 1;
  }

  v12 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v12)
  {
    v13 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v14 = &off_100303480;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v64 = 0;
    v65 = 0;
  }

  v63 = v12;
  v66 = v13;
  v67 = v14;
  v15 = v12;
  v16 = sub_1001AC320(&v63);
  sub_1000097E8(&v63, &qword_10033A240, &unk_100272E70);
  if (v16)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v63)
  {
    v17 = v63;
    sub_100008574();
    v19 = v18;
    v20 = sub_10000F0CC();
    v21 = sub_1000089FC(v20, v19);

    v22 = *(v21 + 16);

    if (v22)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v63)
  {
    v23 = v63;
    sub_100008574();
    v25 = v24;
    v26 = sub_10000F0CC();
    v27 = sub_1000089FC(v26, v25);

    v28 = *(v27 + 16);

    if (v28)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v29 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  if (v29 >> 62)
  {
    goto LABEL_41;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v30)
  {
    v31 = 0;
    v32 = v29 & 0xC000000000000001;
    v33 = v29 & 0xFFFFFFFFFFFFFF8;
    v60 = v29 & 0xC000000000000001;
    v61 = v29;
    v58 = v30;
    v59 = v29 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v32)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *(v33 + 16))
        {
          goto LABEL_40;
        }

        v34 = *(v29 + 8 * v31 + 32);
      }

      v35 = v34;
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v37 = [v2 identifier];
      if (v37)
      {

        v38 = [v2 nearbyAuthTag];
        if (v38)
        {
          v39 = v38;
          v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v42 = [v2 btAddressData];
          if (v42)
          {
            v43 = v42;
            v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;

            isa = Data._bridgeToObjectiveC()().super.isa;
            v48 = Data._bridgeToObjectiveC()().super.isa;
            v63 = 0;
            v49 = [v35 verifyAuthTag:isa data:v48 type:2 error:&v63];

            if (v49)
            {
              v56 = v63;
              sub_100010708(v44, v46);
              sub_100010708(v62, v41);

              return 1;
            }

            v50 = v63;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_100010708(v62, v41);
            sub_100010708(v44, v46);

            v32 = v60;
            v29 = v61;
            v30 = v58;
            v33 = v59;
          }

          else
          {
            sub_100010708(v62, v41);
          }
        }

        sub_1000104F8();
        v52 = v51;
        v53 = sub_10000F0CC();
        v54 = sub_1000089FC(v53, v52);

        v55 = *(v54 + 16);

        if (v55)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v31;
      if (v36 == v30)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_42:

  return 0;
}

uint64_t sub_1001BDA3C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v67)
  {
    v4 = v67;
    v5 = sub_10000F0CC();
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10026F050;
    v7 = [v2 uniqueIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(inited + 32) = v8;
    *(inited + 40) = v10;
    v11 = sub_1001CB970(inited);
    swift_setDeallocating();
    sub_100056F28(inited + 32);
    v12 = sub_1000089FC(v11, v5);

    v13 = *(v12 + 16);

    if (v13)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v67)
  {
    v14 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v15 = &off_100302540;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v68 = 0;
    v69 = 0;
  }

  v70 = v14;
  v71 = v15;
  v16 = sub_1001C296C(&v67, &unk_10034B540, qword_100270E60, sub_100038394);
  sub_1000097E8(&v67, &unk_10034B540, qword_100270E60);
  if (v16)
  {
    return 1;
  }

  v17 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v17)
  {
    v18 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v19 = &off_100303480;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v68 = 0;
    v69 = 0;
  }

  v67 = v17;
  v70 = v18;
  v71 = v19;
  v20 = v17;
  v21 = sub_1001C296C(&v67, &qword_10033A240, &unk_100272E70, sub_100038394);
  sub_1000097E8(&v67, &qword_10033A240, &unk_100272E70);
  if (v21)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v67)
  {
    v22 = v67;
    sub_100008574();
    v24 = v23;
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_10026F050;
    v26 = [v2 uniqueIdentifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    v30 = sub_1001CB970(v25);
    swift_setDeallocating();
    sub_100056F28(v25 + 32);
    v31 = sub_1000089FC(v30, v24);

    v32 = *(v31 + 16);

    if (v32)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v67)
  {
    v33 = v67;
    sub_100008574();
    v35 = v34;
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_10026F050;
    v37 = [v2 uniqueIdentifier];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    v41 = sub_1001CB970(v36);
    swift_setDeallocating();
    sub_100056F28(v36 + 32);
    v42 = sub_1000089FC(v41, v35);

    v43 = *(v42 + 16);

    if (v43)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v45 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
  }

  if (v45 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v65 = v45 & 0xC000000000000001;
    v64 = v45 & 0xFFFFFFFFFFFFFF8;

    v47 = 0;
    while (1)
    {
      if (v65)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v47 >= *(v64 + 16))
        {
          goto LABEL_33;
        }

        v48 = *(v45 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v51 = v45;
      sub_1000104F8();
      v66 = v52;
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_10026F050;
      v54 = v2;
      v55 = [v2 uniqueIdentifier];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      *(v53 + 32) = v56;
      *(v53 + 40) = v58;
      v59 = sub_1001CB970(v53);
      swift_setDeallocating();
      sub_100056F28(v53 + 32);
      v60 = sub_1000089FC(v59, v66);

      v61 = *(v60 + 16);

      v62 = v61 != 0;
      if (!v61)
      {
        ++v47;
        v2 = v54;
        v45 = v51;
        if (v50 != i)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v62 = 0;
LABEL_36:
  v63 = v62;

  return v63;
}

uint64_t sub_1001BE0E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v53 - v10;
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  sub_100009848(a1, &v57, &qword_10033A240, &unk_100272E70);
  if (!v58)
  {
    sub_1000097E8(&v57, &qword_10033A240, &unk_100272E70);
    return 0;
  }

  v54 = v19;
  v56 = v21;
  sub_10000E754(&v57, v59);
  if (([v2 isLocallyPaired] & 1) == 0)
  {
    v22 = [v2 uniqueID];
    if (v22)
    {
      v55 = v15;
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v28 = v60;
      v27 = v61;
      sub_10000EBC0(v59, v60);
      v29 = (*(v27 + 16))(v28, v27);
      if (v30)
      {
        if (v24 == v29 && v30 == v26)
        {
          goto LABEL_15;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v15 = v55;
        if (v31)
        {
          goto LABEL_28;
        }
      }

      else
      {

        v15 = v55;
      }
    }
  }

  v33 = [v2 uniqueIDOverride];
  if (!v33)
  {
LABEL_18:
    v43 = [v2 nsuuid];
    if (v43)
    {
      v44 = v43;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = v56;
    (*(v15 + 56))(v11, v45, 1, v14);
    sub_10003693C(v11, v13, &unk_100348F30, &unk_100272540);
    v47 = *(v15 + 48);
    if (v47(v13, 1, v14) == 1)
    {
      v8 = v13;
    }

    else
    {
      v56 = *(v15 + 32);
      (v56)(v46, v13, v14);
      v48 = v60;
      v49 = v61;
      sub_10000EBC0(v59, v60);
      (*(v49 + 32))(v48, v49);
      if (v47(v8, 1, v14) != 1)
      {
        v50 = v54;
        (v56)(v54, v8, v14);
        v51 = static UUID.== infix(_:_:)();
        v52 = *(v15 + 8);
        v52(v50, v14);
        v52(v46, v14);
        if (v51)
        {
          goto LABEL_28;
        }

LABEL_26:
        sub_10000903C(v59);
        return 0;
      }

      (*(v15 + 8))(v46, v14);
    }

    sub_1000097E8(v8, &unk_100348F30, &unk_100272540);
    goto LABEL_26;
  }

  v55 = v15;
  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v39 = v60;
  v38 = v61;
  sub_10000EBC0(v59, v60);
  v40 = (*(v38 + 24))(v39, v38);
  if (!v41)
  {

    v15 = v55;
    goto LABEL_18;
  }

  if (v35 != v40 || v41 != v37)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = v55;
    if (v42)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

LABEL_15:

LABEL_28:
  sub_10000903C(v59);
  return 1;
}

uint64_t sub_1001BE6A0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, uint64_t *a10, uint64_t *a11)
{
  v30 = a1;
  if (a2)
  {
    v28 = a2(&v30);
    v29 = v16;
  }

  else
  {
    LOBYTE(v28) = a1;
    sub_100035D04(a10, a11);
  }

  v17 = String.init<A>(describing:)();
  v19 = v18;
  v28 = a4;
  v29 = a5;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = a6;
  v21._object = a7;
  String.append(_:)(v21);

  v22 = a5;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, a9))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v24 = 136315138;
    v26 = sub_100017494(a4, v22, &v28);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v23, a9, "%s", v24, 0xCu);
    sub_10000903C(v25);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1001BE860(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v29 = a1;
  v30 = a2;
  if (a3)
  {
    v27 = a3(&v29);
    v28 = v15;
  }

  else
  {
    v27 = a1;
    LOBYTE(v28) = a2;
  }

  v16 = String.init<A>(describing:)();
  v18 = v17;
  v27 = a5;
  v28 = a6;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a7;
  v20._object = a8;
  String.append(_:)(v20);

  v21 = a6;
  v22 = Logger.logObject.getter();
  if (os_log_type_enabled(v22, a10))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    v25 = sub_100017494(a5, v21, &v27);

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v22, a10, "%s", v23, 0xCu);
    sub_10000903C(v24);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1001BEA2C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v55._object = a7;
  v56 = a8;
  v54 = a3;
  v55._countAndFlagsBits = a6;
  v58 = a9;
  v57 = a10;
  v14 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v52 - v20;
  v22 = sub_100035D04(&unk_10034B610, &qword_100289868);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v52 - v27;
  if (!a2)
  {
    v52 = a4;
    v53 = a5;
    v54 = a1;
    sub_100009848(a1, &v52 - v27, &unk_10034C700, &qword_100273D30);
    (*(v15 + 56))(v28, 0, 1, v14);
    sub_100009848(v28, v26, &unk_10034B610, &qword_100289868);
    if ((*(v15 + 48))(v26, 1, v14) == 1)
    {
      v38 = 0xE300000000000000;
      v39 = 7104878;
    }

    else
    {
      sub_10003693C(v26, v21, &unk_10034C700, &qword_100273D30);
      sub_100009848(v21, v19, &unk_10034C700, &qword_100273D30);
      v39 = String.init<A>(describing:)();
      v38 = v40;
      sub_1000097E8(v21, &unk_10034C700, &qword_100273D30);
    }

    object = v55._object;
    countAndFlagsBits = v55._countAndFlagsBits;
    v44 = v52;
    v43 = v53;
    sub_1000097E8(v28, &unk_10034B610, &qword_100289868);
    v59 = v44;
    v60 = v43;

    v45._countAndFlagsBits = v39;
    v45._object = v38;
    String.append(_:)(v45);

    v46._countAndFlagsBits = countAndFlagsBits;
    v46._object = object;
    String.append(_:)(v46);

    v35 = v59;
    v34 = v60;
    v36 = Logger.logObject.getter();
    v37 = v57;
    v47 = os_log_type_enabled(v36, v57);
    a1 = v54;
    if (!v47)
    {

      return sub_100009848(a1, v58, &unk_10034C700, &qword_100273D30);
    }

    goto LABEL_8;
  }

  v59 = a2(a1);
  v60 = v29;
  v30 = String.init<A>(describing:)();
  v32 = v31;
  v59 = a4;
  v60 = a5;

  v33._countAndFlagsBits = v30;
  v33._object = v32;
  String.append(_:)(v33);

  String.append(_:)(v55);

  v35 = v59;
  v34 = v60;
  v36 = Logger.logObject.getter();
  v37 = v57;
  if (os_log_type_enabled(v36, v57))
  {
LABEL_8:
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v59 = v49;
    *v48 = 136315138;
    v50 = sub_100017494(v35, v34, &v59);

    *(v48 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s", v48, 0xCu);
    sub_10000903C(v49);

    return sub_100009848(a1, v58, &unk_10034C700, &qword_100273D30);
  }

  return sub_100009848(a1, v58, &unk_10034C700, &qword_100273D30);
}

uint64_t sub_1001BEE9C@<X0>(__int128 *a1@<X0>, void (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, _OWORD *a7@<X8>, os_log_type_t a8)
{
  v13 = *(a1 + 6);
  v14 = *(a1 + 7);
  v15 = a1[1];
  v45 = *a1;
  v46 = v15;
  v47 = a1[2];
  *&v48 = v13;
  *(&v48 + 1) = v14;
  if (!a2)
  {
    v41 = v45;
    v42 = v46;
    v43 = v47;
    v44 = v48;
    v40[0] = v45;
    v40[1] = v46;
    v40[2] = v47;
    v40[3] = v48;
    sub_100009848(&v41, v39, &qword_10033E4F0, &qword_1002746F0);
    sub_100009848(&v41, v39, &qword_10033E4F0, &qword_1002746F0);
    sub_100035D04(&qword_10033E4F0, &qword_1002746F0);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *&v40[0] = a3;
    *(&v40[0] + 1) = a4;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = a5;
    v30._object = a6;
    String.append(_:)(v30);

    v31 = v40[0];
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, a8))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v40[0] = v33;
      *v32 = 136315138;
      v34 = sub_100017494(v31, *(&v31 + 1), v40);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, a8, "%s", v32, 0xCu);
      sub_10000903C(v33);

      sub_1000097E8(&v41, &qword_10033E4F0, &qword_1002746F0);
      goto LABEL_8;
    }

    sub_1000097E8(&v41, &qword_10033E4F0, &qword_1002746F0);
LABEL_7:

    goto LABEL_8;
  }

  a2(&v45);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *&v41 = a3;
  *(&v41 + 1) = a4;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a5;
  v20._object = a6;
  String.append(_:)(v20);

  v21 = v41;
  v22 = Logger.logObject.getter();
  if (!os_log_type_enabled(v22, a8))
  {
    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  *&v41 = v24;
  *v23 = 136315138;
  v25 = sub_100017494(v21, *(&v21 + 1), &v41);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v22, a8, "%s", v23, 0xCu);
  sub_10000903C(v24);

LABEL_8:

  v35 = v46;
  v41 = v45;
  v42 = v46;
  v37 = v48;
  v43 = v47;
  v36 = v47;
  v44 = v48;
  *a7 = v45;
  a7[1] = v35;
  a7[2] = v36;
  a7[3] = v37;
  return sub_100009848(&v41, v40, &qword_10033E4F0, &qword_1002746F0);
}

void *sub_1001BF234(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, os_log_type_t a11)
{
  v39[0] = a1;
  v39[1] = a2;
  v39[2] = a3;
  if (a4)
  {
    a4(v39);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v36 = a6;
    v37 = a7;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = a8;
    v19._object = a9;
    String.append(_:)(v19);

    v20 = a7;
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, a11))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      v24 = sub_100017494(a6, v20, &v36);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, a11, "%s", v22, 0xCu);
      sub_10000903C(v23);
    }

    else
    {
    }
  }

  else
  {
    v38 = a3;
    sub_100056F7C(a1);

    sub_100056F7C(a1);

    sub_100035D04(&qword_100342FE8, &qword_100278E60);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v36 = a6;
    v37 = a7;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a8;
    v29._object = a9;
    String.append(_:)(v29);

    v30 = a7;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, a11))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136315138;
      v34 = sub_100017494(a6, v30, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v31, a11, "%s", v32, 0xCu);
      sub_10000903C(v33);

      sub_10001DAC4(a1);
    }

    else
    {
      sub_10001DAC4(a1);
    }
  }

  sub_100056F7C(a1);

  return a1;
}

uint64_t sub_1001BF5AC@<X0>(__int128 *a1@<X0>, void (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>, os_log_type_t a8)
{
  v13 = a1[1];
  v43 = *a1;
  v44 = v13;
  v45 = a1[2];
  v46 = *(a1 + 6);
  if (!a2)
  {
    v37._countAndFlagsBits = a5;
    v37._object = a6;
    v41[1] = v44;
    v41[2] = v45;
    v42 = v46;
    sub_10006CCD4(v43, *(&v43 + 1), v44);
    v39 = *(&v43 + 1);
    v40 = v43;
    v38 = v44;
    sub_10006CCD4(v43, *(&v43 + 1), v44);
    sub_100035D04(&qword_10033D558, qword_100289880);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    *&v41[0] = a3;
    *(&v41[0] + 1) = a4;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    String.append(_:)(v37);

    v28 = v41[0];
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, a8))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v41[0] = v30;
      *v29 = 136315138;
      v31 = sub_100017494(v28, *(&v28 + 1), v41);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, a8, "%s", v29, 0xCu);
      sub_10000903C(v30);

      sub_1001CED3C(v40, v39, v38);
      goto LABEL_8;
    }

    sub_1001CED3C(v43, *(&v43 + 1), v44);
LABEL_7:

    goto LABEL_8;
  }

  a2(&v43);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *&v41[0] = a3;
  *(&v41[0] + 1) = a4;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a5;
  v18._object = a6;
  String.append(_:)(v18);

  v19 = v41[0];
  v20 = Logger.logObject.getter();
  if (!os_log_type_enabled(v20, a8))
  {
    goto LABEL_7;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *&v41[0] = v22;
  *v21 = 136315138;
  v23 = sub_100017494(v19, *(&v19 + 1), v41);

  *(v21 + 4) = v23;
  _os_log_impl(&_mh_execute_header, v20, a8, "%s", v21, 0xCu);
  sub_10000903C(v22);

LABEL_8:

  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  *a7 = v43;
  *(a7 + 16) = v33;
  *(a7 + 32) = v34;
  *(a7 + 48) = v35;
  return sub_10006CCD4(v32, *(&v32 + 1), v33);
}

uint64_t sub_1001BF964(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v28 = a1;
  if (a2)
  {
    v26 = a2(&v28);
    v27 = v14;
  }

  else
  {
    LOBYTE(v26) = a1;
  }

  v15 = String.init<A>(describing:)();
  v17 = v16;
  v26 = a4;
  v27 = a5;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a6;
  v19._object = a7;
  String.append(_:)(v19);

  v20 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    v24 = sub_100017494(a4, v20, &v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v22, 0xCu);
    sub_10000903C(v23);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1001BFB20(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v33 = a1;
  if (!a2)
  {
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v32 = a5;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);

    v20 = a4;
    v19 = a5;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v33);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v31 = a4;
  v32 = a5;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);

  v20 = a4;
  v19 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v31);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001BFD60(char a1, void (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v33 = a1;
  if (!a2)
  {
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v32 = a5;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);

    v20 = a4;
    v19 = a5;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a9))
    {

      return a1 & 1;
    }

    goto LABEL_5;
  }

  a2(&v33);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v31 = a4;
  v32 = a5;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);

  v20 = a4;
  v19 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v31);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1 & 1;
}

float sub_1001BFFA4(void (*a1)(float *), float a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v34 = a2;
  if (!a1)
  {
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v33 = a5;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = a6;
    v27._object = a7;
    String.append(_:)(v27);

    v21 = a4;
    v20 = a5;
    v22 = Logger.logObject.getter();
    if (!os_log_type_enabled(v22, a9))
    {

      return a2;
    }

    goto LABEL_5;
  }

  a1(&v34);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  v32 = a4;
  v33 = a5;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a6;
  v19._object = a7;
  String.append(_:)(v19);

  v21 = a4;
  v20 = a5;
  v22 = Logger.logObject.getter();
  if (os_log_type_enabled(v22, a9))
  {
LABEL_5:
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v28 = 136315138;
    v30 = sub_100017494(v21, v20, &v32);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, a9, "%s", v28, 0xCu);
    sub_10000903C(v29);

    goto LABEL_6;
  }

LABEL_6:

  return a2;
}

uint64_t sub_1001C01F0(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v35[0] = a1;
  v35[1] = a2;
  if (!a3)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_100035D04(&qword_10034B590, &qword_100289820);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v33 = a5;
    v34 = a6;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = a7;
    v28._object = a8;
    String.append(_:)(v28);

    v21 = a5;
    v20 = a6;
    v22 = Logger.logObject.getter();
    v23 = a10;
    if (!os_log_type_enabled(v22, a10))
    {

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  a3(v35);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  v33 = a5;
  v34 = a6;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a7;
  v19._object = a8;
  String.append(_:)(v19);

  v21 = a5;
  v20 = a6;
  v22 = Logger.logObject.getter();
  v23 = a10;
  if (os_log_type_enabled(v22, a10))
  {
LABEL_5:
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v29 = 136315138;
    v31 = sub_100017494(v21, v20, &v33);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s", v29, 0xCu);
    sub_10000903C(v30);

    goto LABEL_6;
  }

LABEL_6:

LABEL_7:
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

void sub_1001C049C(__int16 a1)
{
  v2 = v1;
  v32 = a1;
  v4 = v1[2];
  CurrentValueSubject.send(_:)();
  v5 = (v2 + *(*v2 + 128));
  if (v5[1])
  {
    v6 = *v5;
    LOWORD(v30[0]) = a1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v8 = *v2;
    if (v7)
    {
      v9 = *(v2 + *(v8 + 112));
      if (v9)
      {
        v10 = v9;
        v11 = String._bridgeToObjectiveC()();

        [v10 removeObjectForKey:v11];

        return;
      }

LABEL_11:

      return;
    }

    v12 = *(v2 + *(v8 + 120));
    if (v12 == 2 || (v12 & 1) == 0)
    {
      v13 = *(v2 + *(v8 + 112));
      if (v13)
      {
        LOWORD(v30[0]) = a1;
        v14 = v13;
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v16 = String._bridgeToObjectiveC()();

        [v14 setValue:v15 forKey:v16];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v29 = a1;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v28, v30);
      sub_10000EBC0(v30, v31);
      v21 = sub_10013FF24();
      v23 = v22;
      v24 = *(v2 + *(*v2 + 112));
      if (v24)
      {
        v25 = v24;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v27 = String._bridgeToObjectiveC()();

        [v25 setValue:isa forKey:v27];
        sub_100010708(v21, v23);
      }

      else
      {

        sub_100010708(v21, v23);
      }

      sub_10000903C(v30);
    }

    else
    {

      memset(v28, 0, sizeof(v28));
      sub_1000097E8(v28, &unk_10034B470, &qword_100289670);
      v17 = v2 + *(*v2 + 144);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to cast as Codable", v20, 2u);
      }
    }
  }
}

uint64_t sub_1001C08B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v37 - v9;
  v11 = v1[2];
  CurrentValueSubject.send(_:)();
  v12 = (v2 + *(*v2 + 128));
  if (v12[1])
  {
    v37[1] = *v12;
    v13 = *(v38 + 16);
    v13(v10, a1, v4);

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v15 = *v2;
    if (v14)
    {
      v16 = *(v2 + *(v15 + 112));
      if (v16)
      {
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();

        [v17 removeObjectForKey:v18];

        return (*(v38 + 8))(a1, v4);
      }

      goto LABEL_14;
    }

    v21 = *(v2 + *(v15 + 120));
    if (v21 == 2 || (v21 & 1) == 0)
    {
      v22 = *(v2 + *(v15 + 112));
      if (v22)
      {
        v13(v10, a1, v4);
        v23 = v22;
        v24 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v25 = String._bridgeToObjectiveC()();

        [v23 setValue:v24 forKey:v25];

        swift_unknownObjectRelease();
        return (*(v38 + 8))(a1, v4);
      }

LABEL_14:

      return (*(v38 + 8))(a1, v4);
    }

    v13(v8, a1, v4);
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (!swift_dynamicCast())
    {

      memset(v39, 0, sizeof(v39));
      sub_1000097E8(v39, &unk_10034B470, &qword_100289670);
      v26 = v2 + *(*v2 + 144);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "### Failed to cast as Codable", v29, 2u);
      }

      return (*(v38 + 8))(a1, v4);
    }

    sub_1001CB418(v39, v40);
    sub_10000EBC0(v40, v41);
    v30 = sub_10013FF24();
    v32 = v31;
    v33 = *(v2 + *(*v2 + 112));
    if (v33)
    {
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v36 = String._bridgeToObjectiveC()();

      [v34 setValue:isa forKey:v36];
      sub_100010708(v30, v32);
    }

    else
    {

      sub_100010708(v30, v32);
    }

    (*(v38 + 8))(a1, v4);
    return sub_10000903C(v40);
  }

  else
  {
    v19 = *(v38 + 8);

    return v19(a1, v4);
  }
}

void sub_1001C0E48(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1;
  v34 = a1;
  v8 = *(v3 + 16);
  CurrentValueSubject.send(_:)();
  v9 = (v6 + *(*v6 + 128));
  if (!v9[1])
  {
    goto LABEL_5;
  }

  v10 = *v9;
  *&v32 = v7;
  v11 = v7;

  sub_100035D04(a2, a3);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    v12 = *(v6 + *(*v6 + 112));
    if (v12)
    {
      v13 = v12;
      v7 = String._bridgeToObjectiveC()();

      [v13 removeObjectForKey:v7];

LABEL_5:
      return;
    }

LABEL_13:

    return;
  }

  swift_unknownObjectRelease();
  v14 = *(v6 + *(*v6 + 120));
  if (v14 == 2 || (v14 & 1) == 0)
  {
    v15 = *(v6 + *(*v6 + 112));
    if (v15)
    {
      *&v32 = v7;
      v16 = v15;
      v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v18 = String._bridgeToObjectiveC()();

      [v16 setValue:v17 forKey:v18];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v31 = v7;
  sub_100035D04(&qword_10034B468, &qword_100289668);
  if (swift_dynamicCast())
  {
    sub_1001CB418(v30, &v32);
    sub_10000EBC0(&v32, v33);
    v23 = sub_10013FF24();
    v25 = v24;
    v26 = *(v6 + *(*v6 + 112));
    if (v26)
    {
      v27 = v26;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v29 = String._bridgeToObjectiveC()();

      [v27 setValue:isa forKey:v29];
      sub_100010708(v23, v25);
    }

    else
    {

      sub_100010708(v23, v25);
    }

    sub_10000903C(&v32);
  }

  else
  {

    memset(v30, 0, sizeof(v30));
    sub_1000097E8(v30, &unk_10034B470, &qword_100289670);
    v19 = v6 + *(*v6 + 144);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Failed to cast as Codable", v22, 2u);
    }
  }
}

void sub_1001C1304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v34 = a1;
  v8 = *(v3 + 16);
  CurrentValueSubject.send(_:)();
  v9 = (v6 + *(*v6 + 128));
  if (!v9[1])
  {
LABEL_13:

    return;
  }

  v10 = *v9;
  v32[0] = a1;

  sub_100035D04(a2, a3);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    v11 = *(v6 + *(*v6 + 112));
    if (v11)
    {
      v12 = v11;
      v13 = String._bridgeToObjectiveC()();

      [v12 removeObjectForKey:v13];

      return;
    }

    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  v14 = *(v6 + *(*v6 + 120));
  if (v14 == 2 || (v14 & 1) == 0)
  {
    v15 = *(v6 + *(*v6 + 112));
    if (v15)
    {
      v32[0] = a1;
      v16 = v15;
      v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v18 = String._bridgeToObjectiveC()();

      [v16 setValue:v17 forKey:v18];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v31 = a1;
  sub_100035D04(&qword_10034B468, &qword_100289668);
  if (swift_dynamicCast())
  {
    sub_1001CB418(v30, v32);
    sub_10000EBC0(v32, v33);
    v23 = sub_10013FF24();
    v25 = v24;
    v26 = *(v6 + *(*v6 + 112));
    if (v26)
    {
      v27 = v26;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v29 = String._bridgeToObjectiveC()();

      [v27 setValue:isa forKey:v29];
      sub_100010708(v23, v25);
    }

    else
    {

      sub_100010708(v23, v25);
    }

    sub_10000903C(v32);
  }

  else
  {

    memset(v30, 0, sizeof(v30));
    sub_1000097E8(v30, &unk_10034B470, &qword_100289670);
    v19 = v6 + *(*v6 + 144);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Failed to cast as Codable", v22, 2u);
    }
  }
}

void sub_1001C1780(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v36 = *a1;
  v37 = v4;
  v38 = *(a1 + 32);
  v5 = *(v1 + 16);
  CurrentValueSubject.send(_:)();
  v6 = (v2 + *(*v2 + 128));
  if (!v6[1])
  {
LABEL_13:
    sub_1000097E8(a1, &unk_10034B5E0, &qword_1002704A8);
    return;
  }

  v7 = *v6;
  v8 = *(a1 + 16);
  v33 = *a1;
  v34 = v8;
  v35 = *(a1 + 32);

  sub_100009848(a1, v31, &unk_10034B5E0, &qword_1002704A8);
  sub_100035D04(&unk_10034B5E0, &qword_1002704A8);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_1000097E8(a1, &unk_10034B5E0, &qword_1002704A8);
    v10 = *(v2 + *(*v2 + 112));
    if (v10)
    {
      v11 = v10;
      v12 = String._bridgeToObjectiveC()();

      [v11 removeObjectForKey:v12];
    }

    else
    {
    }

    return;
  }

  v13 = *(v2 + *(*v2 + 120));
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v15 = *(v2 + *(*v2 + 112));
    if (v15)
    {
      v16 = *(a1 + 16);
      v33 = *a1;
      v34 = v16;
      v35 = *(a1 + 32);
      v17 = v15;
      v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v19 = String._bridgeToObjectiveC()();

      [v17 setValue:v18 forKey:v19];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v14 = *(a1 + 16);
  v31[3] = *a1;
  v31[4] = v14;
  v32 = *(a1 + 32);
  sub_100035D04(&qword_10034B468, &qword_100289668);
  if (swift_dynamicCast())
  {
    sub_1001CB418(v31, &v33);
    sub_10000EBC0(&v33, *(&v34 + 1));
    v24 = sub_10013FF24();
    v26 = v25;
    v27 = *(v2 + *(*v2 + 112));
    if (v27)
    {
      v28 = v27;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v30 = String._bridgeToObjectiveC()();

      [v28 setValue:isa forKey:v30];
      sub_100010708(v24, v26);
    }

    else
    {

      sub_100010708(v24, v26);
    }

    sub_10000903C(&v33);
  }

  else
  {

    memset(v31, 0, 48);
    sub_1000097E8(v31, &unk_10034B470, &qword_100289670);
    v20 = v2 + *(*v2 + 144);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "### Failed to cast as Codable", v23, 2u);
    }
  }
}

void sub_1001C1C64(void *a1, char a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v6 = *(v2 + 16);
  CurrentValueSubject.send(_:)();
  v7 = (v3 + *(*v3 + 128));
  if (!v7[1])
  {
LABEL_13:
    sub_100036718(a1, a2);
    return;
  }

  v8 = *v7;
  *&v32 = a1;
  BYTE8(v32) = a2;

  sub_10003672C(a1, a2);
  sub_100035D04(&qword_100339770, &qword_100270288);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_100036718(a1, a2);
    v10 = *(v3 + *(*v3 + 112));
    if (v10)
    {
      v11 = v10;
      v12 = String._bridgeToObjectiveC()();

      [v11 removeObjectForKey:v12];
    }

    else
    {
    }

    return;
  }

  v13 = *(v3 + *(*v3 + 120));
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v14 = *(v3 + *(*v3 + 112));
    if (v14)
    {
      *&v32 = a1;
      BYTE8(v32) = a2;
      v15 = v14;
      v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v17 = String._bridgeToObjectiveC()();

      [v15 setValue:v16 forKey:v17];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v30 = a1;
  v31 = a2;
  sub_100035D04(&qword_10034B468, &qword_100289668);
  if (swift_dynamicCast())
  {
    sub_1001CB418(v29, &v32);
    sub_10000EBC0(&v32, v33);
    v22 = sub_10013FF24();
    v24 = v23;
    v25 = *(v3 + *(*v3 + 112));
    if (v25)
    {
      v26 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v28 = String._bridgeToObjectiveC()();

      [v26 setValue:isa forKey:v28];
      sub_100010708(v22, v24);
    }

    else
    {

      sub_100010708(v22, v24);
    }

    sub_10000903C(&v32);
  }

  else
  {

    memset(v29, 0, sizeof(v29));
    sub_1000097E8(v29, &unk_10034B470, &qword_100289670);
    v18 = v3 + *(*v3 + 144);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### Failed to cast as Codable", v21, 2u);
    }
  }
}

void sub_1001C2100(char a1)
{
  v2 = v1;
  v32 = a1;
  v4 = v1[2];
  CurrentValueSubject.send(_:)();
  v5 = (v2 + *(*v2 + 128));
  if (v5[1])
  {
    v6 = *v5;
    LOBYTE(v30[0]) = a1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v8 = *v2;
    if (v7)
    {
      v9 = *(v2 + *(v8 + 112));
      if (v9)
      {
        v10 = v9;
        v11 = String._bridgeToObjectiveC()();

        [v10 removeObjectForKey:v11];

        return;
      }

LABEL_11:

      return;
    }

    v12 = *(v2 + *(v8 + 120));
    if (v12 == 2 || (v12 & 1) == 0)
    {
      v13 = *(v2 + *(v8 + 112));
      if (v13)
      {
        LOBYTE(v30[0]) = a1;
        v14 = v13;
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v16 = String._bridgeToObjectiveC()();

        [v14 setValue:v15 forKey:v16];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v29 = a1;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v28, v30);
      sub_10000EBC0(v30, v31);
      v21 = sub_10013FF24();
      v23 = v22;
      v24 = *(v2 + *(*v2 + 112));
      if (v24)
      {
        v25 = v24;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v27 = String._bridgeToObjectiveC()();

        [v25 setValue:isa forKey:v27];
        sub_100010708(v21, v23);
      }

      else
      {

        sub_100010708(v21, v23);
      }

      sub_10000903C(v30);
    }

    else
    {

      memset(v28, 0, sizeof(v28));
      sub_1000097E8(v28, &unk_10034B470, &qword_100289670);
      v17 = v2 + *(*v2 + 144);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to cast as Codable", v20, 2u);
      }
    }
  }
}

void sub_1001C251C(uint64_t a1, char a2)
{
  v3 = v2;
  v36 = a1;
  v6 = a2 & 1;
  v37 = a2 & 1;
  v7 = v2[2];
  CurrentValueSubject.send(_:)();
  v8 = (v3 + *(*v3 + 128));
  if (v8[1])
  {
    v9 = *v8;
    *&v34 = a1;
    BYTE8(v34) = v6;

    sub_100035D04(&unk_10034B520, &qword_1002702E0);
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v11 = *v3;
    if (v10)
    {
      v12 = *(v3 + *(v11 + 112));
      if (v12)
      {
        v13 = v12;
        v14 = String._bridgeToObjectiveC()();

        [v13 removeObjectForKey:v14];

        return;
      }

LABEL_11:

      return;
    }

    v15 = *(v3 + *(v11 + 120));
    if (v15 == 2 || (v15 & 1) == 0)
    {
      v16 = *(v3 + *(v11 + 112));
      if (v16)
      {
        *&v34 = a1;
        BYTE8(v34) = a2 & 1;
        v17 = v16;
        v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v19 = String._bridgeToObjectiveC()();

        [v17 setValue:v18 forKey:v19];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v32 = a1;
    v33 = a2 & 1;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v31, &v34);
      sub_10000EBC0(&v34, v35);
      v24 = sub_10013FF24();
      v26 = v25;
      v27 = *(v3 + *(*v3 + 112));
      if (v27)
      {
        v28 = v27;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v30 = String._bridgeToObjectiveC()();

        [v28 setValue:isa forKey:v30];
        sub_100010708(v24, v26);
      }

      else
      {

        sub_100010708(v24, v26);
      }

      sub_10000903C(&v34);
    }

    else
    {

      memset(v31, 0, sizeof(v31));
      sub_1000097E8(v31, &unk_10034B470, &qword_100289670);
      v20 = v3 + *(*v3 + 144);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "### Failed to cast as Codable", v23, 2u);
      }
    }
  }
}

BOOL sub_1001C296C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(_BYTE *, uint64_t *))
{
  v8 = v4;
  sub_100009848(a1, v22, a2, a3);
  if (v23)
  {
    a4(v22, v24);
    v10 = v25;
    v9 = v26;
    sub_10000EBC0(v24, v25);
    v11 = (*(*(v9 + 8) + 8))(v10);
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10026F050;
    v13 = [v8 uniqueIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = sub_1001CB970(inited);
    swift_setDeallocating();
    sub_100056F28(inited + 32);
    v18 = sub_1000089FC(v17, v11);

    v19 = *(v18 + 16);

    v20 = v19 != 0;
    sub_10000903C(v24);
  }

  else
  {
    sub_1000097E8(v22, a2, a3);
    return 0;
  }

  return v20;
}

void *sub_1001C2B34(uint64_t a1, unint64_t a2, void (*a3)(void), unint64_t a4)
{
  v34 = a3;
  v41 = a1;
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v35 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = *(v35 + 64);
  v8 = __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v44 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  if (a2 >> 62)
  {
LABEL_24:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v33 = a4;
      a4 = 0;
      v39 = a2 & 0xFFFFFFFFFFFFFF8;
      v40 = a2 & 0xC000000000000001;
      v42 = (v35 + 16);
      v36 = (v35 + 8);
      v13 = _swiftEmptyDictionarySingleton;
      v37 = v12;
      v38 = a2;
      while (1)
      {
        if (v40)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a4 >= *(v39 + 16))
          {
            goto LABEL_21;
          }

          v17 = *(a2 + 8 * a4 + 32);
        }

        v18 = v17;
        if (__OFADD__(a4, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v43 = (a4 + 1);
        v46 = v17;

        swift_getAtKeyPath();
        v19 = *v42;
        a2 = v44;
        v20 = v11;
        v21 = isUniquelyReferenced_nonNull_native;
        (*v42)(v44, v11, isUniquelyReferenced_nonNull_native);
        v22 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v13;
        v11 = sub_100019110(a2);
        v24 = v13[2];
        v25 = (v23 & 1) == 0;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_22;
        }

        a2 = v23;
        if (v13[3] >= v24 + v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33();
          }
        }

        else
        {
          v34();
          v26 = sub_100019110(v44);
          if ((a2 & 1) != (v27 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v11 = v26;
        }

        isUniquelyReferenced_nonNull_native = v21;
        v28 = v45;
        if (a2)
        {
          v14 = v45[7];
          v15 = *(v14 + 8 * v11);
          *(v14 + 8 * v11) = v22;
        }

        else
        {
          v45[(v11 >> 6) + 8] |= 1 << v11;
          v19(v28[6] + *(v35 + 72) * v11, v44, v21);
          *(v28[7] + 8 * v11) = v22;
          v29 = v28[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_23;
          }

          v28[2] = v31;
        }

        v16 = *v36;
        (*v36)(v44, v21);
        v11 = v20;
        v16(v20, v21);

        ++a4;
        v13 = v28;
        a2 = v38;
        if (v43 == v37)
        {
          return v28;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

void *sub_1001C2EA8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v27 = v2 & 0xFFFFFFFFFFFFFF8;
    v28 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyDictionarySingleton;
    v26 = v2;
    while (v28)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v2 = i;

      swift_getAtKeyPath();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_100004B58(v29, v30);
      v14 = v5[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_24;
      }

      v18 = v13;
      if (v5[3] < v17)
      {
        sub_1000891F4(v17, isUniquelyReferenced_nonNull_native);
        v12 = sub_100004B58(v29, v30);
        if ((v18 & 1) != (v19 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_14:
        v20 = v5;
        if (v18)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v24 = v12;
      sub_10008B6D0();
      v12 = v24;
      v20 = v5;
      if (v18)
      {
LABEL_4:
        v6 = v20[7];
        v7 = *(v6 + 8 * v12);
        *(v6 + 8 * v12) = v9;

        swift_bridgeObjectRelease_n();

        goto LABEL_5;
      }

LABEL_15:
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v21 = (v20[6] + 16 * v12);
      *v21 = v29;
      v21[1] = v30;
      *(v20[7] + 8 * v12) = v9;
      v22 = v20[2];
      v16 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v16)
      {
        goto LABEL_25;
      }

      v20[2] = v23;

LABEL_5:
      ++v4;
      v5 = v20;
      i = v2;
      v8 = v10 == v2;
      v2 = v26;
      if (v8)
      {
        return v20;
      }
    }

    if (v4 >= *(v27 + 16))
    {
      goto LABEL_23;
    }

    v9 = *(v2 + 8 * v4 + 32);

    v10 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return _swiftEmptyDictionarySingleton;
}

void *sub_1001C3130(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v29 = v2 & 0xFFFFFFFFFFFFFF8;
    v30 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyDictionarySingleton;
    v28 = v2;
    while (1)
    {
      if (v30)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v29 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v2 + 8 * v4 + 32);
      }

      v10 = v9;
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v2 = i;

      swift_getAtKeyPath();

      v12 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_100004B58(v31, v32);
      v16 = v5[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v5[3] < v19)
      {
        sub_100089208(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_100004B58(v31, v32);
        if ((v20 & 1) != (v21 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_15:
        v22 = v5;
        if (v20)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v26 = v14;
      sub_10008B6E4();
      v14 = v26;
      v22 = v5;
      if (v20)
      {
LABEL_4:
        v6 = v22[7];
        v7 = *(v6 + 8 * v14);
        *(v6 + 8 * v14) = v12;

        swift_bridgeObjectRelease_n();
        goto LABEL_5;
      }

LABEL_16:
      v22[(v14 >> 6) + 8] |= 1 << v14;
      v23 = (v22[6] + 16 * v14);
      *v23 = v31;
      v23[1] = v32;
      *(v22[7] + 8 * v14) = v12;
      v24 = v22[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v22[2] = v25;

LABEL_5:
      ++v4;
      v5 = v22;
      i = v2;
      v8 = v11 == v2;
      v2 = v28;
      if (v8)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1001C33E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void, void), uint64_t (*a5)(void **, void *, uint64_t, uint64_t))
{
  v58 = a4;
  v59 = a5;
  v7 = v5;
  v10 = type metadata accessor for UUID();
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  v12 = __chkstk_darwin(v10);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v57 - v14;

  v17 = a3(v16);

  v19 = a3(v18);
  v20 = v17[2];
  v21 = v19[2];
  v66 = v10;
  v60 = v17;
  v61 = v19;
  if (v20 <= v21 >> 3)
  {
    v68 = v19;

    sub_100068D6C(v17);
    v10 = v66;
    v23 = v68;
  }

  else
  {
    v22 = v19;

    v23 = sub_100069920(v17, v22);
  }

  v24 = v23 + 7;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23[7];
  v28 = (v25 + 63) >> 6;
  v64 = (v67 + 8);
  v65 = v67 + 16;

  v30 = 0;
  v62 = v15;
LABEL_8:
  if (v27)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      v40 = a2;

      if (v61[2] <= v60[2] >> 3)
      {
        v68 = v60;
        sub_100068D6C(v61);
        v10 = v66;

        v41 = v68;
      }

      else
      {
        v41 = sub_100069920(v61, v60);
      }

      v42 = v63;
      v43 = 1 << *(v41 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & v41[7];
      v46 = (v43 + 63) >> 6;

      v47 = 0;
      while (v45)
      {
LABEL_28:
        (*(v67 + 16))(v42, v41[6] + *(v67 + 72) * (__clz(__rbit64(v45)) | (v47 << 6)), v10);
        if (*(a1 + 16))
        {
          v49 = sub_100019110(v42);
          v10 = v66;
          if (v50)
          {
            v68 = *(*(a1 + 56) + 8 * v49);
            v51 = v7[6];
            v52 = v68;

            PassthroughSubject.send(_:)();

            v42 = v63;
            v10 = v66;
          }
        }

        v45 &= v45 - 1;
        result = (*v64)(v42, v10);
      }

      while (1)
      {
        v48 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_37;
        }

        if (v48 >= v46)
        {
          break;
        }

        v45 = v41[v48 + 7];
        ++v47;
        if (v45)
        {
          v47 = v48;
          goto LABEL_28;
        }
      }

      v53 = v7[5];
      v54 = *(v40 + 16);
      if (v54)
      {
        v55 = v58(*(v40 + 16), 0);
        v56 = v59(&v68, v55 + 4, v54, v40);

        sub_100004F98();
        if (v56 != v54)
        {
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
LABEL_34:

        v55 = _swiftEmptyArrayStorage;
      }

      v68 = v55;
      PassthroughSubject.send(_:)();
    }

    v27 = v24[v31];
    ++v30;
    if (v27)
    {
      v30 = v31;
LABEL_13:
      (*(v67 + 16))(v15, v23[6] + *(v67 + 72) * (__clz(__rbit64(v27)) | (v30 << 6)), v10);
      if (*(a2 + 16))
      {
        v32 = sub_100019110(v15);
        v10 = v66;
        if (v33)
        {
          v68 = *(*(a2 + 56) + 8 * v32);
          v34 = v7[4];
          v35 = v23;
          v36 = a1;
          v37 = v7;
          v38 = a2;
          v39 = v68;

          PassthroughSubject.send(_:)();

          a2 = v38;
          v7 = v37;
          a1 = v36;
          v23 = v35;
          v15 = v62;
          v10 = v66;
        }
      }

      v27 &= v27 - 1;
      result = (*v64)(v15, v10);
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1001C38E4(uint64_t a1, uint64_t a2)
{

  v5 = sub_10006DBC0(v4);

  v7 = sub_10006DBC0(v6);
  v8 = v7;
  v40 = v5;
  v41 = a1;
  if (*(v5 + 16) <= *(v7 + 16) >> 3)
  {
    v43 = v7;

    sub_100068F88(v5);
    v9 = v43;
  }

  else
  {

    v9 = sub_10006A38C(v5, v8);
  }

  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9[7];
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

LABEL_11:
    v17 = (v9[6] + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_100004B58(v18, v19);
    if (v21)
    {
      v43 = *(*(a2 + 56) + 8 * v20);
      v16 = v42[4];

      PassthroughSubject.send(_:)();
    }

    else
    {
    }

LABEL_8:
    v12 &= v12 - 1;
  }

  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v22 >= v13)
    {

      if (v8[2] <= v40[2] >> 3)
      {
        v43 = v40;
        sub_100068F88(v8);

        v23 = v40;
      }

      else
      {
        v23 = sub_10006A38C(v8, v40);
      }

      v24 = 1 << *(v23 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & v23[7];
      v27 = (v24 + 63) >> 6;

      v28 = 0;
      while (v26)
      {
        if (*(v41 + 16))
        {
LABEL_28:
          v30 = (v23[6] + ((v28 << 10) | (16 * __clz(__rbit64(v26)))));
          v31 = *v30;
          v32 = v30[1];

          v33 = sub_100004B58(v31, v32);
          if (v34)
          {
            v43 = *(*(v41 + 56) + 8 * v33);
            v29 = v42[6];

            PassthroughSubject.send(_:)();
          }

          else
          {
          }
        }

LABEL_25:
        v26 &= v26 - 1;
      }

      while (1)
      {
        v35 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_41;
        }

        if (v35 >= v27)
        {
          break;
        }

        v26 = v23[v35 + 7];
        ++v28;
        if (v26)
        {
          v28 = v35;
          if (*(v41 + 16))
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }
      }

      v36 = v42[5];
      v37 = *(a2 + 16);
      if (v37)
      {
        v38 = sub_100009194(*(a2 + 16), 0);
        v39 = sub_100009A04(&v43, v38 + 4, v37);

        sub_100004F98();
        if (v39 != v37)
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
LABEL_38:

        v38 = _swiftEmptyArrayStorage;
      }

      v43 = v38;
      PassthroughSubject.send(_:)();
    }

    v12 = v9[v22 + 7];
    ++v15;
    if (v12)
    {
      v15 = v22;
      if (!*(a2 + 16))
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1001C3CC4(uint64_t a1, uint64_t a2)
{

  v5 = sub_10006DBC0(v4);

  v7 = sub_10006DBC0(v6);
  v8 = v7;
  v42 = v5;
  v43 = a1;
  if (*(v5 + 16) <= v7[2] >> 3)
  {
    v45 = v7;

    sub_100068F88(v5);
    v9 = v45;
  }

  else
  {

    v9 = sub_10006A38C(v5, v8);
  }

  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9[7];
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = (v9[6] + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v19 = *v18;
    v20 = v18[1];

    v21 = sub_100004B58(v19, v20);
    if (v22)
    {
      v45 = *(*(a2 + 56) + 8 * v21);
      v16 = v44[4];
      v17 = v45;

      PassthroughSubject.send(_:)();
    }

    else
    {
    }

LABEL_8:
    v12 &= v12 - 1;
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v13)
    {

      if (v8[2] <= v42[2] >> 3)
      {
        v45 = v42;
        sub_100068F88(v8);

        v24 = v42;
      }

      else
      {
        v24 = sub_10006A38C(v8, v42);
      }

      v25 = 1 << *(v24 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & v24[7];
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      while (v27)
      {
        if (*(v43 + 16))
        {
LABEL_28:
          v32 = (v24[6] + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
          v33 = *v32;
          v34 = v32[1];

          v35 = sub_100004B58(v33, v34);
          if (v36)
          {
            v45 = *(*(v43 + 56) + 8 * v35);
            v30 = v44[6];
            v31 = v45;

            PassthroughSubject.send(_:)();
          }

          else
          {
          }
        }

LABEL_25:
        v27 &= v27 - 1;
      }

      while (1)
      {
        v37 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_41;
        }

        if (v37 >= v28)
        {
          break;
        }

        v27 = v24[v37 + 7];
        ++v29;
        if (v27)
        {
          v29 = v37;
          if (*(v43 + 16))
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }
      }

      v38 = v44[5];
      v39 = *(a2 + 16);
      if (v39)
      {
        v40 = sub_100009194(*(a2 + 16), 0);
        v41 = sub_1001295D4(&v45, v40 + 4, v39, a2);

        sub_100004F98();
        if (v41 != v39)
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
LABEL_38:

        v40 = _swiftEmptyArrayStorage;
      }

      v45 = v40;
      PassthroughSubject.send(_:)();
    }

    v12 = v9[v23 + 7];
    ++v15;
    if (v12)
    {
      v15 = v23;
      if (!*(a2 + 16))
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1001C409C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v8 << 6);
        v11 = (*(a1 + 56) + 16 * v10);
        v12 = v11[1];
        if (v12)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v26 = *v11;
      v27 = *(*(a1 + 48) + 8 * v10);
      v14 = _swiftEmptyDictionarySingleton[2];
      if (_swiftEmptyDictionarySingleton[3] <= v14)
      {

        sub_100085C20(v14 + 1, 1);
      }

      else
      {
      }

      v15 = _swiftEmptyDictionarySingleton[5];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v27);
      result = Hasher._finalize()();
      v16 = &_swiftEmptyDictionarySingleton[8];
      v17 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~_swiftEmptyDictionarySingleton[(v18 >> 6) + 8]) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~_swiftEmptyDictionarySingleton[(v18 >> 6) + 8])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v20) = v27;
      v25 = (_swiftEmptyDictionarySingleton[7] + 16 * v20);
      *v25 = v26;
      v25[1] = v12;
      ++_swiftEmptyDictionarySingleton[2];
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v21 = 0;
    v22 = (63 - v17) >> 6;
    while (++v19 != v22 || (v21 & 1) == 0)
    {
      v23 = v19 == v22;
      if (v19 == v22)
      {
        v19 = 0;
      }

      v21 |= v23;
      v24 = v16[v19];
      if (v24 != -1)
      {
        v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v6)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v5 = *(v2 + 8 * v13);
      ++v8;
      if (v5)
      {
        v8 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C42D4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B4D0);
  sub_100003078(v0, qword_10038B4D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001C4358()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034B1D0);
  v1 = sub_100003078(v0, qword_10034B1D0);
  if (qword_100339170 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B4D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001C4444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

id sub_1001C4498@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    v6 = *a1;
    v7 = objc_allocWithZone(PCTelephonyActivity);
    v8 = &selRef_initFromKnownConversation_;
    if ((a2 & 1) == 0)
    {
      v8 = &selRef_initFromSensitiveConversation_;
    }

    v9 = &selRef_initFromKnownCall_;
    if ((a2 & 1) == 0)
    {
      v9 = &selRef_initFromSensitiveCall_;
    }

    if ((v4 & 1) == 0)
    {
      v8 = v9;
    }

    result = [v7 *v8];
  }

  *a3 = result;
  return result;
}

uint64_t sub_1001C4554()
{
  type metadata accessor for TelephonyProxyState();
  v0 = swift_allocObject();
  v1 = sub_100035D04(&qword_10034B378, &qword_100289598);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_10002C620(0, 255, 0, 0, 0);
  v4 = objc_allocWithZone(type metadata accessor for TelephonyProxy());
  v5 = sub_1001CA1AC(v0);

  qword_10038B4E8 = v5;
  return result;
}

void sub_1001C45F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1001C464C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return v2;
}

id sub_1001C4668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a1;
  LOBYTE(v6) = *(a1 + 8);
  if (v4 == 255)
  {
    v6 = *(a1 + 24);
    if (v6 == 255)
    {
      v5 = *(a1 + 32);
      LOBYTE(v6) = *(a1 + 40);
      sub_10003672C(v5, v6);
    }

    else
    {
      v5 = *(a1 + 16);
      v7 = v5;
    }
  }

  *a2 = v5;
  *(a2 + 8) = v6;

  return sub_10003672C(v3, v4);
}

uint64_t sub_1001C46FC(uint64_t a1)
{
  if (*(a1 + 8) == 255)
  {
    return 7104878;
  }

  v1 = *a1;
  return String.init<A>(describing:)();
}

uint64_t sub_1001C475C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = *(a1 + 8);

  sub_10003672C(v2, v4);
  sub_1001C1C64(v2, v4);
}

void sub_1001C47C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeAudioCall);
    v3 = *(v2 + 24);

    CurrentValueSubject.value.getter();
    v4 = v13;
    if (v13 == 1)
    {
      v5 = *(v2 + 16);
      CurrentValueSubject.value.getter();

      v4 = v14;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_10;
      }
    }

    v6 = *&v1[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeVideoCall];
    v7 = *(v6 + 24);

    CurrentValueSubject.value.getter();
    if (v13 != 1)
    {

LABEL_15:

      return;
    }

    v8 = *(v6 + 16);
    CurrentValueSubject.value.getter();

    v4 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_10:

    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_10034B1D0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Call is active - updating call caches...", v12, 2u);
    }

    sub_1001C49C4(sub_1001CB430, &unk_1003106B0);
    sub_1001C49C4(sub_1001CB39C, &unk_100310688);
    goto LABEL_15;
  }
}

uint64_t sub_1001C49C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

id sub_1001C4CB0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  [*&v0[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager] removeDelegate:v0];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TelephonyProxy();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001C4E90()
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034B1D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activate", v3, 2u);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_1001C4FD4(void (*a1)(uint64_t *), uint64_t a2)
{
  v4 = sub_100035D04(&qword_10034B5A8, &unk_100289840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    *(swift_allocObject() + 16) = Strong;
    v12 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();

    v15 = v11;
    v27 = Future.init(_:)();
    *(swift_allocObject() + 16) = v15;
    v16 = *(v12 + 48);
    v17 = *(v12 + 52);
    swift_allocObject();
    v18 = v15;
    v30 = Future.init(_:)();
    *(swift_allocObject() + 16) = v18;
    v19 = *(v12 + 48);
    v20 = *(v12 + 52);
    swift_allocObject();
    v21 = v18;
    v29 = Future.init(_:)();
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0);
    Publishers.Zip3.init(_:_:_:)();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_1000FBAA8;
    v23[4] = v9;
    sub_10000E244(&qword_10034B5B0, &qword_10034B5A8, &unk_100289840);
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {

    sub_10001618C();
    v25 = swift_allocError();
    *v26 = 0x666C6573206C696ELL;
    *(v26 + 8) = 0xE800000000000000;
    *(v26 + 16) = 9;
    v27 = v25;
    v28 = 1;
    a1(&v27);
  }
}

void sub_1001C5408(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4)
    {
      if (qword_100339178 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003078(v7, qword_10034B1D0);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "### Activation failed: %@", v10, 0xCu);
        sub_1000097E8(v11, &qword_100339940, &unk_100272C50);
      }

      v13 = v4;
      v14 = 1;
    }

    else
    {
      if (qword_100339178 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003078(v20, qword_10034B1D0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Activated", v23, 2u);
      }

      sub_1001C5B78();
      v13 = 0;
      v14 = 0;
    }

    (a3)(v13, v14);
  }

  else
  {
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10034B1D0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "### Nil self after registrations", v18, 2u);
    }

    sub_10001618C();
    swift_allocError();
    *v19 = 0x666C6573206C696ELL;
    *(v19 + 8) = 0xE800000000000000;
    *(v19 + 16) = 9;
    a3();
  }
}

void *sub_1001C5784(void *a1)
{
  v3 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state) + 16);
  v13 = *(v12 + 24);

  CurrentValueSubject.value.getter();
  v14 = v39;
  if (v39 == 254)
  {
    v15 = *(v12 + 16);
    CurrentValueSubject.value.getter();

    v16 = v40;
    LOBYTE(v14) = v41;
    if (v41 == 255)
    {
      return v16;
    }

LABEL_5:
    v37 = a1;
    if ((v14 & 1) == 0)
    {
      v17 = [v16 callUUID];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [v37 callUUID];
      if (v21)
      {
        v36 = v8;
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        if (v23 == v18 && v25 == v20)
        {

          return v16;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v8 = v36;
        if (v26)
        {
          return v16;
        }
      }

      else
      {
      }
    }

    sub_1000529D8(v16, v14 & 1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100036718(v16, v14);
      sub_1000097E8(v6, &unk_100348F30, &unk_100272540);
      return 0;
    }

    (*(v8 + 32))(v11, v6, v7);
    v27 = [v37 conversationUUID];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = UUID.uuidString.getter();
      if (v31)
      {
        if (v29 == v32 && v31 == v33)
        {

          (*(v8 + 8))(v11, v7);
          return v16;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v8 + 8))(v11, v7);
        if (v35)
        {
          return v16;
        }

        sub_100036718(v16, v14);
        return 0;
      }
    }

    else
    {
      UUID.uuidString.getter();
    }

    (*(v8 + 8))(v11, v7);
    sub_100036718(v16, v14);

    return 0;
  }

  v16 = v38;

  if (v14 != 255)
  {
    goto LABEL_5;
  }

  return v16;
}

uint64_t sub_1001C5B78()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v0 - 8);
  v1 = *(v17 + 64);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034B1D0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating routes", v11, 2u);
  }

  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001CEBDC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310750;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v16);
}

uint64_t sub_1001C5F28()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) routeController];
    v3 = [v2 routes];

    sub_100003118(0, &unk_10034B530, TURoute_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v22 = v1;
      v6 = 0;
      v1 = (v4 & 0xC000000000000001);
      while (1)
      {
        if (v1)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v7 isHomePodFamily])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v10 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v6;
        if (v9 == i)
        {
          v1 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_10034B1D0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = _swiftEmptyArrayStorage[2];
      }

      *(v14 + 4) = v15;

      _os_log_impl(&_mh_execute_header, v12, v13, "Found %ld routes", v14, 0xCu);
    }

    else
    {
    }

    v16 = *&v1[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_homepodRoutes];
    v17 = v16 + qword_100346AF8;

    os_unfair_lock_lock(v17);
    v18 = *(v17 + 8);
    v19 = *(v16 + 16);

    v21 = sub_1001C3130(v20, _swiftEmptyArrayStorage);

    *(v17 + 8) = v21;

    os_unfair_lock_unlock(v17);

    sub_1001C3CC4(v18, v21);
  }

  return result;
}

void sub_1001C62E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v63 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339178 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    v16 = sub_100003078(v15, qword_10034B1D0);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v66 = v16;
    v67 = a1;
    v64 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100017494(0x74756F52646E6966, 0xEF293A726F662865, &v68);
      *(v20 + 12) = 2080;
      v21 = sub_1000092A0();
      a1 = sub_100017494(v21, v22, &v68);

      *(v20 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: device=%s", v20, 0x16u);
      swift_arrayDestroy();
    }

    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    *v14 = static OS_dispatch_queue.main.getter();
    (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
    v8 = _dispatchPreconditionTest(_:)();
    (*(v11 + 8))(v14, v10);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v8 = [*&v2[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter] routeController];
    v23 = [v8 routes];

    sub_100003118(0, &unk_10034B530, TURoute_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = _swiftEmptyArrayStorage;
    if (v10 >> 62)
    {
      goto LABEL_22;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_7:
    v14 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v24 = *(v10 + 8 * v14 + 32);
      }

      v8 = v24;
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v24 isHomePodFamily])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a1 = v68[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v14 = (v14 + 1);
      if (v2 == v11)
      {
        v25 = v68;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
LABEL_22:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_23:
  v25 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
LABEL_40:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v26 = *(v25 + 16);
    if (v26)
    {
LABEL_27:
      v27 = 0;
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_39;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v31 = sub_1001BDA3C(v68);

        if (v31)
        {
          break;
        }

        ++v27;
        if (v30 == v26)
        {
          goto LABEL_41;
        }
      }

      v32 = v29;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_72;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v29;
      v37 = v32;
      v38 = "Found device route: %@";
LABEL_70:
      _os_log_impl(&_mh_execute_header, v33, v34, v38, v35, 0xCu);
      sub_1000097E8(v36, &qword_100339940, &unk_100272C50);

LABEL_71:

      goto LABEL_72;
    }
  }

LABEL_41:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v68;
  if (v68)
  {
    v40 = [v68 mediaSystemIdentifier];

    if (v40)
    {
      v41 = v64;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v64;
    }

    v43 = v65;
    v44 = type metadata accessor for UUID();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v41, v42, 1, v44);
    sub_10003693C(v41, v43, &unk_100348F30, &unk_100272540);
    if ((*(v45 + 48))(v43, 1, v44) == 1)
    {

      sub_1000097E8(v43, &unk_100348F30, &unk_100272540);
      goto LABEL_63;
    }

    v46 = UUID.uuidString.getter();
    v48 = v47;
    (*(v45 + 8))(v43, v44);
    if (v26)
    {
      v49 = 0;
      v67 = v25 & 0xC000000000000001;
      while (1)
      {
        if (v67)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v49 >= *(v25 + 16))
          {
            goto LABEL_74;
          }

          v50 = *(v25 + 8 * v49 + 32);
        }

        v51 = v50;
        v52 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
LABEL_74:
          __break(1u);
          return;
        }

        v53 = [v50 uniqueIdentifier];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        if (v54 == v46 && v56 == v48)
        {

          goto LABEL_68;
        }

        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v58)
        {
          break;
        }

        ++v49;
        if (v52 == v26)
        {
          goto LABEL_61;
        }
      }

LABEL_68:
      v61 = v51;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_72;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v61;
      *v36 = v51;
      v62 = v61;
      v38 = "Found route for mediaSystemIdentifier: %@";
      goto LABEL_70;
    }

LABEL_61:
  }

LABEL_63:
  v33 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v33, v59, "No route found", v60, 2u);
    goto LABEL_71;
  }

LABEL_72:
}

uint64_t sub_1001C6CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);

  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_1001CEE14;
  v15[4] = v12;
  aBlock[4] = sub_1001CEC90;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310A70;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v18);
}

void sub_1001C703C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034B1D0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Registering with TUCallCenter...", v10, 2u);
    }

    v11 = *&v6[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter];
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = a2;
    v12[4] = a3;
    aBlock[4] = sub_1001CECDC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100310AC0;
    v13 = _Block_copy(aBlock);
    v14 = v11;
    v15 = v6;

    [v14 registerWithCompletionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v16 = 0x666C6573206C696ELL;
    *(v16 + 8) = 0xE800000000000000;
    *(v16 + 16) = 9;
    a2();
  }
}

uint64_t sub_1001C7284(uint64_t a1, uint64_t (*a2)(void, void))
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034B1D0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Done registering with TUCallCenter", v6, 2u);
  }

  sub_1001C49C4(sub_1001CB430, &unk_1003106B0);
  sub_1001C49C4(sub_1001CB39C, &unk_100310688);
  return a2(0, 0);
}

uint64_t sub_1001C73C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);

  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_1001CEE14;
  v15[4] = v12;
  aBlock[4] = sub_1001CEC2C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310958;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v18);
}

void sub_1001C7720(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034B1D0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Registering with TUConversationManager...", v10, 2u);
    }

    v11 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager;
    v12 = qword_1003391E8;
    v13 = *&v6[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager];
    v14 = v6;
    if (v12 != -1)
    {
      swift_once();
    }

    [v13 addDelegate:v14 queue:qword_10038B5B8];

    v15 = *&v6[v11];
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = a2;
    v16[4] = a3;
    aBlock[4] = sub_1001CEC38;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_1003109A8;
    v17 = _Block_copy(aBlock);
    v18 = v14;
    v19 = v15;

    [v19 registerWithCompletionHandler:v17];
    _Block_release(v17);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v20 = 0x666C6573206C696ELL;
    *(v20 + 8) = 0xE800000000000000;
    *(v20 + 16) = 9;
    a2();
  }
}

uint64_t sub_1001C79D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v19[1] = qword_10038B5B8;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = sub_1001CEC44;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_1003109F8;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_1001C7CF0(char *a1, uint64_t (*a2)(void, void))
{
  if (qword_100339178 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034B1D0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Done registering with TUConversationManager", v5, 2u);
    }

    v6 = *&a1[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager];
    v7 = [v6 activeConversations];
    sub_100003118(0, &qword_10034B5B8, TUConversation_ptr);
    sub_100076FC4(&unk_10034B5C0, &qword_10034B5B8, TUConversation_ptr);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v8 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v10 = v28;
      v9 = v29;
      v11 = v30;
      v12 = v31;
      v13 = v32;
    }

    else
    {
      v14 = -1 << *(v8 + 32);
      v9 = v8 + 56;
      v11 = ~v14;
      v15 = -v14;
      v16 = v15 < 64 ? ~(-1 << v15) : -1;
      v13 = v16 & *(v8 + 56);

      v12 = 0;
      v10 = v8;
    }

    v24 = v11;
    v17 = (v11 + 64) >> 6;
    if (v10 < 0)
    {
      break;
    }

LABEL_11:
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (v13)
    {
LABEL_15:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (v22)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_21;
      }

      v19 = *(v9 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  while (__CocoaSet.Iterator.next()())
  {
    swift_dynamicCast();
    v22 = v27;
    v20 = v12;
    v21 = v13;
    if (!v27)
    {
      break;
    }

LABEL_19:
    [a1 conversationManager:v6 stateChangedForConversation:{v22, v24}];

    v12 = v20;
    v13 = v21;
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_21:
  sub_100004F98();

  return a2(0, 0);
}

uint64_t sub_1001C8014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);

  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_1001CEE14;
  v15[4] = v12;
  aBlock[4] = sub_1001CEC10;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310890;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v18);
}

uint64_t sub_1001C836C(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = TUCallCenterCallStatusChangedNotification;
  v18 = sub_1001CEC1C;
  v19 = a1;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001C86E4;
  v17 = &unk_1003108B8;
  v6 = _Block_copy(&aBlock);

  v7 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  v8 = [v3 defaultCenter];
  v9 = TUCallCenterVideoCallStatusChangedNotification;
  v18 = sub_1001CEC24;
  v19 = a1;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001C86E4;
  v17 = &unk_1003108E0;
  v10 = _Block_copy(&aBlock);

  v11 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  return a2(0, 0);
}

void sub_1001C858C()
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034B1D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Call status changed", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001C49C4(sub_1001CB430, &unk_1003106B0);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1001C5B78();
  }
}

uint64_t sub_1001C86E4(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1001C87D8()
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034B1D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Video call status changed", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001C49C4(sub_1001CB39C, &unk_100310688);
  }
}

uint64_t sub_1001C8904()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v53 - v8;
  v10 = [v0 sourceIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    strcpy(v53, "source=");
    v53[1] = 0xE700000000000000;
    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16 = v53[0];
    v17 = v53[1];
    v18 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_100009088((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[16 * v20];
    *(v21 + 4) = v16;
    *(v21 + 5) = v17;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v22 = [v0 dateConnected];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v9, v7, v2);
    v53[0] = 0x3D65746164;
    v53[1] = 0xE500000000000000;
    sub_1001CB3D0(&qword_100345628, 255, &type metadata accessor for Date);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25 = v53[0];
    v26 = v53[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100009088(0, *(v18 + 2) + 1, 1, v18);
    }

    v28 = *(v18 + 2);
    v27 = *(v18 + 3);
    if (v28 >= v27 >> 1)
    {
      v18 = sub_100009088((v27 > 1), v28 + 1, 1, v18);
    }

    (*(v3 + 8))(v9, v2);
    *(v18 + 2) = v28 + 1;
    v29 = &v18[16 * v28];
    *(v29 + 4) = v25;
    *(v29 + 5) = v26;
  }

  v30 = [v1 suggestedDisplayName];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v53[0] = 0xD000000000000015;
    v53[1] = 0x80000001002A4680;
    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36 = v53[0];
    v37 = v53[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100009088(0, *(v18 + 2) + 1, 1, v18);
    }

    v39 = *(v18 + 2);
    v38 = *(v18 + 3);
    if (v39 >= v38 >> 1)
    {
      v18 = sub_100009088((v38 > 1), v39 + 1, 1, v18);
    }

    *(v18 + 2) = v39 + 1;
    v40 = &v18[16 * v39];
    *(v40 + 4) = v36;
    *(v40 + 5) = v37;
  }

  strcpy(v53, "displayName=");
  BYTE5(v53[1]) = 0;
  HIWORD(v53[1]) = -5120;
  v41 = [v1 displayName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  String.append(_:)(v45);

  v46 = v53[0];
  v47 = v53[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_100009088(0, *(v18 + 2) + 1, 1, v18);
  }

  v49 = *(v18 + 2);
  v48 = *(v18 + 3);
  if (v49 >= v48 >> 1)
  {
    v18 = sub_100009088((v48 > 1), v49 + 1, 1, v18);
  }

  *(v18 + 2) = v49 + 1;
  v50 = &v18[16 * v49];
  *(v50 + 4) = v46;
  *(v50 + 5) = v47;
  v53[0] = v18;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
  v51 = BidirectionalCollection<>.joined(separator:)();

  return v51;
}

uint64_t sub_1001C8E20(uint64_t a1, SEL *a2, char *a3, void *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [*(result + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) *a2];
    sub_100003118(0, &qword_10034B460, TUCall_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    format = a3;
    if (v10 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 status] == 1)
        {

          goto LABEL_18;
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    v14 = 0;
LABEL_18:
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_10034B1D0);
    v17 = v14;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      if (v14)
      {
        sub_1001C8904();
        v22 = String.init<A>(describing:)();
        v24 = v23;
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_100017494(v22, v24, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, format, v20, 0xCu);
      sub_10000903C(v21);
    }

    v26 = *&v8[*a4];
    v27 = v17;

    sub_1001C0E48(v14, &qword_100339750, &qword_100289660);
  }

  return result;
}

uint64_t sub_1001C9124(char a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1 & 1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v2;
  aBlock[4] = sub_1001CEBD0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310728;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v19);
}

uint64_t sub_1001C9430(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v9 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100035D04(&qword_10034B598, &qword_100289828);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v59[-v12];
  v14 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v59[-v20];
  __chkstk_darwin(v19);
  v23 = &v59[-v22];
  v24 = [a2 state];
  if ((a1 & 1) == 0 && v24 == 3)
  {
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003078(v25, qword_10034B1D0);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "Setting activeConversation: %@", v29, 0xCu);
      sub_1000097E8(v30, &qword_100339940, &unk_100272C50);
    }

    v32 = *(a3 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeConversation);
    v33 = v26;

    sub_1001C0E48(v26, &qword_100339730, &unk_100289830);
  }

  v62 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeConversation;
  v63 = v18;
  v35 = *(a3 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeConversation);
  v36 = *(v35 + 24);

  CurrentValueSubject.value.getter();
  v37 = v66;
  if (v66 == 1)
  {
    v38 = *(v35 + 16);
    CurrentValueSubject.value.getter();

    v37 = v67;
  }

  else
  {
  }

  v64 = a3;
  v61 = v9;
  if (v37)
  {
    v39 = [v37 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = v65;
  v42 = *(v65 + 56);
  v42(v23, v40, 1, v6);
  v43 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v42(v21, 0, 1, v6);
  v44 = *(v10 + 48);
  sub_100009848(v23, v13, &unk_100348F30, &unk_100272540);
  sub_100009848(v21, &v13[v44], &unk_100348F30, &unk_100272540);
  v45 = *(v41 + 48);
  if (v45(v13, 1, v6) != 1)
  {
    v48 = v63;
    sub_100009848(v13, v63, &unk_100348F30, &unk_100272540);
    v49 = v45(&v13[v44], 1, v6);
    v47 = v64;
    if (v49 != 1)
    {
      v50 = v65;
      v51 = &v13[v44];
      v52 = v61;
      (*(v65 + 32))(v61, v51, v6);
      sub_1001CB3D0(&qword_10034B5A0, 255, &type metadata accessor for UUID);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *(v50 + 8);
      v53(v52, v6);
      sub_1000097E8(v21, &unk_100348F30, &unk_100272540);
      sub_1000097E8(v23, &unk_100348F30, &unk_100272540);
      v53(v48, v6);
      result = sub_1000097E8(v13, &unk_100348F30, &unk_100272540);
      if ((v60 & 1) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }

    sub_1000097E8(v21, &unk_100348F30, &unk_100272540);
    sub_1000097E8(v23, &unk_100348F30, &unk_100272540);
    (*(v65 + 8))(v48, v6);
    return sub_1000097E8(v13, &qword_10034B598, &qword_100289828);
  }

  sub_1000097E8(v21, &unk_100348F30, &unk_100272540);
  sub_1000097E8(v23, &unk_100348F30, &unk_100272540);
  v46 = v45(&v13[v44], 1, v6);
  v47 = v64;
  if (v46 != 1)
  {
    return sub_1000097E8(v13, &qword_10034B598, &qword_100289828);
  }

  sub_1000097E8(v13, &unk_100348F30, &unk_100272540);
LABEL_23:
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100003078(v54, qword_10034B1D0);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Setting activeConversation: nil", v57, 2u);
  }

  v58 = *(v47 + v62);

  sub_1001C0E48(0, &qword_100339730, &unk_100289830);
}

uint64_t sub_1001C9D7C(uint64_t a1, uint64_t a2)
{
  result = sub_1001CB3D0(&qword_10034B370, a2, type metadata accessor for TelephonyProxyState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C9DD4()
{
  v1 = v0;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  v19 = 0;
  v20 = 0xE000000000000000;
  v2._countAndFlagsBits = 0xD000000000000026;
  v2._object = 0x80000001002A46A0;
  String.append(_:)(v2);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state);
  v18[3] = type metadata accessor for TelephonyProxyState();
  v18[0] = v3;

  v4 = sub_100058004(v18);
  v6 = v5;
  sub_10000903C(v18);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._object = 0x80000001002A46D0;
  v8._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v8);
  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_homepodRoutes) + qword_100346AF8;

  os_unfair_lock_lock(v9);
  v10 = *(*(v9 + 8) + 16);
  os_unfair_lock_unlock(v9);

  v18[0] = v10;
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._object = 0x80000001002A46F0;
  v12._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v12);
  v13 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_tasks;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if ((v14 & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  else
  {
    v15 = *(v14 + 16);
  }

  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  return v19;
}

unint64_t sub_1001C9FD0()
{
  v1 = [v0 sourceIdentifier];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v5 = [v0 service];
    if (v5 > 1)
    {
      if (v5 == 2 || v5 == 3)
      {
        return 0xD000000000000012;
      }
    }

    else if (v5 == 1)
    {
      return 0xD000000000000015;
    }

    v6 = [v0 provider];
    v2 = [v6 bundleIdentifier];

    if (!v2)
    {
      return 0;
    }
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_1001CA11C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100008198(result, a2, a3, a4);

    return v8;
  }

  return result;
}

char *sub_1001CA1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_10034B380, &unk_1002895A0);
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = *(v107 + 64);
  __chkstk_darwin(v4);
  v106 = &v84 - v6;
  v7 = sub_100035D04(&qword_10034AE08, qword_100288FA8);
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = *(v104 + 64);
  __chkstk_darwin(v7);
  v103 = &v84 - v9;
  v10 = type metadata accessor for Logger();
  v96 = *(v10 - 8);
  v97 = v10;
  v11 = *(v96 + 64);
  __chkstk_darwin(v10);
  v92 = v12;
  v93 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100035D04(&unk_10034B390, &unk_1002895B0);
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  __chkstk_darwin(v13);
  v98 = &v84 - v15;
  v16 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v91 = &v84 - v18;
  v95 = sub_100035D04(&qword_10034B3A0, &qword_1002895C0);
  v94 = *(v95 - 8);
  v19 = *(v94 + 64);
  __chkstk_darwin(v95);
  v110 = &v84 - v20;
  v90 = sub_100035D04(&qword_10034B3A8, &qword_1002895C8);
  v21 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v86 = &v84 - v22;
  v88 = sub_100035D04(&qword_10034B3B0, &qword_1002895D0);
  v23 = *(*(v88 - 8) + 64);
  v24 = __chkstk_darwin(v88);
  v84 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v87 = sub_100035D04(&qword_10034B3B8, &qword_1002895D8);
  v89 = *(v87 - 8);
  v26 = *(v89 + 64);
  __chkstk_darwin(v87);
  v85 = &v84 - v27;
  v109 = sub_100035D04(&qword_10034B3C0, &qword_1002895E0);
  v102 = *(v109 - 8);
  v28 = *(v102 + 64);
  __chkstk_darwin(v109);
  v111 = &v84 - v29;
  v30 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter;
  v31 = objc_opt_self();
  *&v2[v30] = [v31 sharedInstance];
  v32 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager;
  v33 = [v31 sharedInstance];
  v34 = [v33 conversationManager];

  *&v2[v32] = v34;
  v35 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeAudioCall;
  v36 = sub_100035D04(&qword_10034B3C8, &qword_1002895E8);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  *&v2[v35] = sub_10002D434(0, 0, 0, 0, 0, 0);
  v39 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeVideoCall;
  v40 = *(v36 + 48);
  v41 = *(v36 + 52);
  swift_allocObject();
  *&v2[v39] = sub_10002D434(0, 0, 0, 0, 0, 0);
  v42 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeConversation;
  v43 = sub_100035D04(&qword_10034B3D0, qword_1002895F0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *&v2[v42] = sub_10002D4B4(0, 0, 0, 0, 0, 0);
  v46 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_homepodRoutes;
  KeyPath = swift_getKeyPath();
  v48 = sub_100035D04(&unk_10034B3D8, &unk_100289640);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_10006B6A4(KeyPath, 0);

  *&v2[v46] = v51;
  *&v2[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_tasks] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state] = a1;
  v52 = type metadata accessor for TelephonyProxy();
  v113.receiver = v2;
  v113.super_class = v52;
  v101 = a1;

  v53 = objc_msgSendSuper2(&v113, "init");
  v112 = *&v53[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeAudioCall];
  v54 = v53;

  sub_100035D04(&qword_100339770, &qword_100270288);
  sub_10000E244(&qword_10034B3E8, &qword_10034B3C8, &qword_1002895E8);
  Publisher.map<A>(_:)();

  v112 = *&v54[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeVideoCall];

  Publisher.map<A>(_:)();

  v112 = *&v54[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeConversation];
  sub_10000E244(&qword_10034B3F0, &qword_10034B3D0, qword_1002895F0);

  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034B3F8, &qword_10034B3B0, &qword_1002895D0);
  sub_10000E244(&qword_10034B400, &qword_10034B3A8, &qword_1002895C8);
  v55 = v85;
  Publishers.CombineLatest3.init(_:_:_:)();
  sub_10000E244(&unk_10034B408, &qword_10034B3B8, &qword_1002895D8);
  v56 = v87;
  Publisher.map<A>(_:)();
  (*(v89 + 8))(v55, v56);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v57 = qword_10038B5B8;
  v112 = qword_10038B5B8;
  v58 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v59 = v91;
  (*(*(v58 - 8) + 56))(v91, 1, 1, v58);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_10034B418, &qword_10034B3C0, &qword_1002895E0);
  sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr);
  v60 = v57;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v59, &qword_10034C680, &qword_100270390);

  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v61 = v97;
  v62 = sub_100003078(v97, qword_10034B1D0);
  v63 = static os_log_type_t.info.getter();
  v64 = v96;
  v65 = v93;
  (*(v96 + 16))(v93, v62, v61);
  v66 = (*(v64 + 80) + 64) & ~*(v64 + 80);
  v67 = v66 + v92;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1001C46FC;
  *(v68 + 24) = xmmword_100272E90;
  *(v68 + 40) = 0x80000001002A4660;
  *(v68 + 48) = 0;
  *(v68 + 56) = 0xE000000000000000;
  (*(v64 + 32))(v68 + v66, v65, v61);
  *(v68 + v67) = v63;
  sub_10000E244(&qword_10034B428, &qword_10034B3A0, &qword_1002895C0);
  v69 = v98;
  v70 = v95;
  v71 = v110;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034B430, &unk_10034B390, &unk_1002895B0);
  v72 = v100;
  v73 = Publisher.eraseToAnyPublisher()();
  (*(v99 + 8))(v69, v72);
  (*(v94 + 8))(v71, v70);
  v112 = v73;

  sub_100035D04(&qword_10034B438, &unk_100289650);
  sub_10000E244(&unk_10034B440, &qword_10034B438, &unk_100289650);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100339268 != -1)
  {
    swift_once();
  }

  v74 = *(qword_10038B5D8 + 16);

  v112 = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
  v75 = Publisher.eraseToAnyPublisher()();

  v112 = v75;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  v76 = v103;
  Publisher.filter(_:)();

  sub_10000E244(&qword_10034AE10, &qword_10034AE08, qword_100288FA8);
  v78 = v105;
  v77 = v106;
  Publisher.map<A>(_:)();
  sub_10000E244(&unk_10034B450, &unk_10034B380, &unk_1002895A0);
  v79 = v108;
  v80 = Publisher.eraseToAnyPublisher()();
  (*(v107 + 8))(v77, v79);
  (*(v104 + 8))(v76, v78);
  v112 = v80;
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v82 = swift_allocObject();
  *(v82 + 16) = sub_1001CB394;
  *(v82 + 24) = v81;
  sub_100035D04(&qword_10033D630, &unk_100274960);
  sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v102 + 8))(v111, v109);
  return v54;
}

id sub_1001CB2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = sub_1001CC074(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *a2 = v6;
  *(a2 + 8) = v7;

  return sub_10003672C(v6, v7);
}

uint64_t sub_1001CB3D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_OWORD *sub_1001CB418(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

id sub_1001CB464()
{
  v0 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v28 - v2;
  sub_100035D04(&qword_10034B550, &qword_100289800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002727F0;
  *(inited + 32) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v29;
  if (v29)
  {
    v6 = [v29 effectiveIdentifier];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(inited + 40) = v5;
  *(inited + 48) = v8;
  *(inited + 56) = 2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000BC398(v3);

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_1000097E8(v3, &unk_100348F30, &unk_100272540);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v12 = v13;
    (*(v10 + 8))(v3, v9);
  }

  *(inited + 64) = v11;
  *(inited + 72) = v12;
  *(inited + 80) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = sub_10000DF0C();
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  v17 = sub_10024CE24(inited);
  swift_setDeallocating();
  sub_100035D04(&qword_10034B558, &qword_100289808);
  swift_arrayDestroy();
  v18 = sub_1001C409C(v17);

  if (*(v18 + 16))
  {
    sub_1001402BC(v18);

    v19 = [objc_allocWithZone(TUNearbyDeviceHandleCapabilities) init];
    v20 = objc_allocWithZone(TUNearbyDeviceHandle);
    sub_100003118(0, &qword_10034B560, NSNumber_ptr);
    sub_100076FC4(&qword_10034B568, &qword_10034B560, NSNumber_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = [v20 initWithName:0 knownIdentifiers:isa deviceModel:0 capabilities:v19];
  }

  else
  {

    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003078(v23, qword_10034B1D0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "### No knownIdentifiers?", v26, 2u);
    }

    return 0;
  }

  return v22;
}

Swift::Int sub_1001CB970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1001CBAD8(char a1)
{
  v16 = sub_100035D04(&qword_10034B4E0, &qword_100289678);
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v16);
  v6 = &v15 - v5;
  v17 = sub_100035D04(&qword_10034B4E8, &qword_100289680);
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v17);
  v10 = &v15 - v9;
  v18 = *(v1 + 16);
  *(swift_allocObject() + 16) = a1;

  sub_100035D04(&qword_10034B378, &qword_100289598);
  sub_100035D04(&qword_10034B4F0, &unk_10027C100);
  sub_10000E244(&unk_10034B4F8, &qword_10034B378, &qword_100289598);
  Publisher.map<A>(_:)();

  sub_100035D04(&unk_100346020, &qword_100271A00);
  sub_10000E244(&qword_10034B508, &qword_10034B4E0, &qword_100289678);
  v11 = v16;
  Publisher<>.setFailureType<A>(to:)();
  (*(v3 + 8))(v6, v11);
  sub_10000E244(&qword_10034B510, &qword_10034B4E8, &qword_100289680);
  v12 = v17;
  v13 = Publisher.eraseToAnyPublisher()();
  (*(v7 + 8))(v10, v12);
  return v13;
}

unint64_t sub_1001CBDD8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100035D04(&unk_10034B5F0, &qword_100272B10);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_1001CB3D0(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1001CB3D0(&unk_10034B600, 255, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001CC074(void *a1, char a2, void (*a3)(void **), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v38 = a1;
  v39 = a2;
  if (!a3)
  {
    sub_10003672C(a1, a2);
    sub_10003672C(a1, a2);
    sub_100035D04(&qword_100339770, &qword_100270288);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    v36 = a5;
    v37 = a6;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = a7;
    v30._object = a8;
    String.append(_:)(v30);

    v31 = a6;
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, a10))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136315138;
      v34 = sub_100017494(a5, v31, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, a10, "%s", v32, 0xCu);
      sub_10000903C(v33);

      sub_100036718(a1, a2);
      goto LABEL_8;
    }

    sub_100036718(a1, a2);
LABEL_7:

    goto LABEL_8;
  }

  a3(&v38);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v36 = a5;
  v37 = a6;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a7;
  v20._object = a8;
  String.append(_:)(v20);

  v21 = a6;
  v22 = Logger.logObject.getter();
  if (!os_log_type_enabled(v22, a10))
  {
    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v36 = v24;
  *v23 = 136315138;
  v25 = sub_100017494(a5, v21, &v36);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v22, a10, "%s", v23, 0xCu);
  sub_10000903C(v24);

LABEL_8:

  return a1;
}

uint64_t sub_1001CC3A8(uint64_t a1, char a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v38 = a1;
  v39 = a2;
  if (a3)
  {
    a3(&v38);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v37 = a6;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = a7;
    v19._object = a8;
    String.append(_:)(v19);

    v20 = a6;
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, a10))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      v24 = sub_100017494(a5, v20, &v36);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, a10, "%s", v22, 0xCu);
      sub_10000903C(v23);
    }

    else
    {
    }
  }

  else
  {
    swift_retain_n();
    sub_100035D04(&unk_10034B570, &unk_100289810);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v36 = a5;
    v37 = a6;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a7;
    v29._object = a8;
    String.append(_:)(v29);

    v30 = a6;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, a10))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136315138;
      v34 = sub_100017494(a5, v30, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v31, a10, "%s", v32, 0xCu);
      sub_10000903C(v33);
    }

    else
    {
    }
  }

  return a1;
}

uint64_t sub_1001CC720(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v37 = a1;
  if (a2)
  {
    a2(&v37);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v36 = a5;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = a6;
    v18._object = a7;
    String.append(_:)(v18);

    v19 = a5;
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, a9))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = sub_100017494(a4, v19, &v35);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, a9, "%s", v21, 0xCu);
      sub_10000903C(v22);
    }

    else
    {
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_100035D04(&qword_10033BAF8, &unk_100272470);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v35 = a4;
    v36 = a5;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = a6;
    v28._object = a7;
    String.append(_:)(v28);

    v29 = a5;
    v30 = Logger.logObject.getter();
    if (os_log_type_enabled(v30, a9))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136315138;
      v33 = sub_100017494(a4, v29, &v35);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v30, a9, "%s", v31, 0xCu);
      sub_10000903C(v32);
    }

    else
    {
    }
  }

  return a1;
}

void *sub_1001CCA28(void *a1, void (*a2)(void **), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v37 = a1;
  if (a2)
  {
    a2(&v37);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v36 = a5;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = a6;
    v18._object = a7;
    String.append(_:)(v18);

    v19 = Logger.logObject.getter();
    if (os_log_type_enabled(v19, a9))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      v22 = sub_100017494(a4, a5, &v35);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v19, a9, "%s", v20, 0xCu);
      sub_10000903C(v21);
    }

    else
    {
    }
  }

  else
  {
    v34 = a1;
    sub_100035D04(&qword_1003396B0, &qword_1002731A0);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v35 = a4;
    v36 = a5;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = a6;
    v27._object = a7;
    String.append(_:)(v27);

    v28 = a5;
    v29 = Logger.logObject.getter();
    if (os_log_type_enabled(v29, a9))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v30 = 136315138;
      v32 = sub_100017494(a4, v28, &v35);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v29, a9, "%s", v30, 0xCu);
      sub_10000903C(v31);
    }

    else
    {
    }
  }

  return a1;
}

uint64_t sub_1001CCD34(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, void (*a10)(uint64_t, uint64_t), uint64_t *a11, uint64_t *a12, void (*a13)(uint64_t))
{
  v41 = a1;
  if (a2)
  {
    a2(&v41);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v40 = a5;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = a6;
    v22._object = a7;
    String.append(_:)(v22);

    v23 = a5;
    v24 = Logger.logObject.getter();
    if (os_log_type_enabled(v24, a9))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      v27 = sub_100017494(a4, v23, &v39);

      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v24, a9, "%s", v25, 0xCu);
      sub_10000903C(v26);
    }

    else
    {
    }
  }

  else
  {
    a10(a1, 2);
    sub_100035D04(a11, a12);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v39 = a4;
    v40 = a5;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._countAndFlagsBits = a6;
    v32._object = a7;
    String.append(_:)(v32);

    v33 = a5;
    v34 = Logger.logObject.getter();
    if (os_log_type_enabled(v34, a9))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v35 = 136315138;
      v37 = sub_100017494(a4, v33, &v39);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v34, a9, "%s", v35, 0xCu);
      sub_10000903C(v36);
    }

    else
    {
    }

    a13(a1);
  }

  return a1;
}

__n128 sub_1001CD050@<Q0>(__n128 *a1@<X0>, void (*a2)(_OWORD *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, __n128 *a7@<X8>, os_log_type_t a8)
{
  v13 = a1[1];
  v39[0] = *a1;
  v39[1] = v13;
  v39[2] = a1[2];
  if (!a2)
  {
    v24 = a1[1];
    v38[0] = *a1;
    v38[1] = v24;
    v38[2] = a1[2];
    sub_10009D868(a1, v37);
    sub_10009D868(a1, v37);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *&v38[0] = a3;
    *(&v38[0] + 1) = a4;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a5;
    v29._object = a6;
    String.append(_:)(v29);

    v30 = v38[0];
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, a8))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v38[0] = v32;
      *v31 = 136315138;
      v33 = sub_100017494(v30, *(&v30 + 1), v38);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v20, a8, "%s", v31, 0xCu);
      sub_10000903C(v32);

      sub_1001CECE8(a1);
      goto LABEL_8;
    }

    sub_1001CECE8(a1);
LABEL_7:

    goto LABEL_8;
  }

  a2(v39);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *&v38[0] = a3;
  *(&v38[0] + 1) = a4;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a5;
  v18._object = a6;
  String.append(_:)(v18);

  v19 = v38[0];
  v20 = Logger.logObject.getter();
  if (!os_log_type_enabled(v20, a8))
  {
    goto LABEL_7;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *&v38[0] = v22;
  *v21 = 136315138;
  v23 = sub_100017494(v19, *(&v19 + 1), v38);

  *(v21 + 4) = v23;
  _os_log_impl(&_mh_execute_header, v20, a8, "%s", v21, 0xCu);
  sub_10000903C(v22);

LABEL_8:

  v34 = a1[1];
  *a7 = *a1;
  a7[1] = v34;
  result = a1[2];
  a7[2] = result;
  return result;
}

uint64_t sub_1001CD374(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v37 = a1;
  if (a2)
  {
    a2(&v37);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v36 = a5;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = a6;
    v18._object = a7;
    String.append(_:)(v18);

    v19 = a5;
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, a9))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = sub_100017494(a4, v19, &v35);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, a9, "%s", v21, 0xCu);
      sub_10000903C(v22);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for HandoffDevice();
    swift_retain_n();
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v35 = a4;
    v36 = a5;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = a6;
    v28._object = a7;
    String.append(_:)(v28);

    v29 = a5;
    v30 = Logger.logObject.getter();
    if (os_log_type_enabled(v30, a9))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136315138;
      v33 = sub_100017494(a4, v29, &v35);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v30, a9, "%s", v31, 0xCu);
      sub_10000903C(v32);
    }

    else
    {
    }
  }

  return a1;
}

void *sub_1001CD6EC(void *a1, void (*a2)(void **), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, unint64_t *a10, uint64_t *a11)
{
  v39 = a1;
  if (a2)
  {
    a2(&v39);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v38 = a5;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = a6;
    v20._object = a7;
    String.append(_:)(v20);

    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, a9))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      v24 = sub_100017494(a4, a5, &v37);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, a9, "%s", v22, 0xCu);
      sub_10000903C(v23);
    }

    else
    {
    }
  }

  else
  {
    sub_100003118(0, a10, a11);
    v36 = a1;
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v37 = a4;
    v38 = a5;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a6;
    v29._object = a7;
    String.append(_:)(v29);

    v30 = a5;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, a9))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      v34 = sub_100017494(a4, v30, &v37);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v31, a9, "%s", v32, 0xCu);
      sub_10000903C(v33);
    }

    else
    {
    }
  }

  return a1;
}

void *sub_1001CDA6C(void *a1, void (*a2)(void **), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, uint64_t *a10, uint64_t *a11)
{
  v36 = a1;
  if (!a2)
  {
    v24 = a1;
    sub_100035D04(a10, a11);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v35 = a5;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a6;
    v29._object = a7;
    String.append(_:)(v29);

    v22 = a4;
    v21 = a5;
    v23 = Logger.logObject.getter();
    if (!os_log_type_enabled(v23, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v36);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v34 = a4;
  v35 = a5;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a6;
  v20._object = a7;
  String.append(_:)(v20);

  v22 = a4;
  v21 = a5;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, a9))
  {
LABEL_5:
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    v32 = sub_100017494(v22, v21, &v34);

    *(v30 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, a9, "%s", v30, 0xCu);
    sub_10000903C(v31);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001CDCBC(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v34[0] = a1;
  v34[1] = a2;
  if (!a3)
  {

    v22 = String.init<A>(describing:)();
    v24 = v23;
    v33 = a6;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a7;
    v26._object = a8;
    String.append(_:)(v26);

    v20 = a5;
    v19 = a6;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a10))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a3(v34);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v32 = a5;
  v33 = a6;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a7;
  v18._object = a8;
  String.append(_:)(v18);

  v20 = a5;
  v19 = a6;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a10))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v32);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a10, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001CDF0C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v33 = a1;
  if (!a2)
  {
    swift_unknownObjectRetain();
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v32 = a5;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);

    v20 = a4;
    v19 = a5;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v33);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v31 = a4;
  v32 = a5;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);

  v20 = a4;
  v19 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v31);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001CE1A0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v33 = a1;
  if (!a2)
  {

    sub_100035D04(&qword_10034B518, &qword_100289688);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v32 = a5;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);

    v20 = a4;
    v19 = a5;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v33);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v31 = a4;
  v32 = a5;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);

  v20 = a4;
  v19 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v31);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

void *sub_1001CE434(void *a1, void (*a2)(void **), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, unint64_t *a10, uint64_t *a11)
{
  v36 = a1;
  if (!a2)
  {
    sub_100003118(0, a10, a11);
    v24 = a1;
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v35 = a5;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a6;
    v29._object = a7;
    String.append(_:)(v29);

    v22 = a4;
    v21 = a5;
    v23 = Logger.logObject.getter();
    if (!os_log_type_enabled(v23, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v36);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v34 = a4;
  v35 = a5;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a6;
  v20._object = a7;
  String.append(_:)(v20);

  v22 = a4;
  v21 = a5;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, a9))
  {
LABEL_5:
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    v32 = sub_100017494(v22, v21, &v34);

    *(v30 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, a9, "%s", v30, 0xCu);
    sub_10000903C(v31);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001CE684(void *a1)
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034B1D0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A4780, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: conversation=%@", v6, 0x16u);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

    sub_10000903C(v8);
  }

  return sub_1001C9124(0, v3);
}

uint64_t sub_1001CE848(void *a1)
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034B1D0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000027, 0x80000001002A4750, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: conversation=%@", v6, 0x16u);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

    sub_10000903C(v8);
  }

  return sub_1001C9124(0, v3);
}

uint64_t sub_1001CEA0C(void *a1)
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034B1D0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000031, 0x80000001002A4710, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: conversation=%@", v6, 0x16u);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

    sub_10000903C(v8);
  }

  return sub_1001C9124(1, v3);
}

uint64_t sub_1001CEC50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CEC9C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CED3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 != 3)
  {
    return sub_1001CED4C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1001CED4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}

uint64_t sub_1001CEE18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001CEE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001CEED4(void *a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10034B668, &qword_1002899A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001CF3D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100035D04(&qword_10034B658, &qword_100289998);
  sub_1001CF424(&qword_10034B670);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1001CF068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F70736552726DLL && a2 == 0xEA00000000006573)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001CF0F8(uint64_t a1)
{
  v2 = sub_1001CF3D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CF134(uint64_t a1)
{
  v2 = sub_1001CF3D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001CF170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001CF230(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001CF1B8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_100151930();
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void *sub_1001CF230(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_10034B648, &qword_100289990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000EBC0(a1, a1[3]);
  sub_1001CF3D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000903C(a1);
  }

  else
  {
    sub_100035D04(&qword_10034B658, &qword_100289998);
    sub_1001CF424(&qword_10034B660);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000903C(a1);
  }

  return v9;
}

unint64_t sub_1001CF3D0()
{
  result = qword_10034B650;
  if (!qword_10034B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B650);
  }

  return result;
}

uint64_t sub_1001CF424(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_10034B658, &qword_100289998);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001CF488()
{
  result = qword_10034B678;
  if (!qword_10034B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B678);
  }

  return result;
}

unint64_t sub_1001CF4E0()
{
  result = qword_10034B680;
  if (!qword_10034B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B680);
  }

  return result;
}

unint64_t sub_1001CF538()
{
  result = qword_10034B688;
  if (!qword_10034B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B688);
  }

  return result;
}

uint64_t sub_1001CF60C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = type metadata accessor for UUID();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v5 = v30;
  }

  else
  {
    v16 = *v5;
    v17 = sub_100019110(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v31 = *v6;
      if (!v21)
      {
        a5();
        v22 = v31;
      }

      v23 = *(v22 + 48);
      v24 = type metadata accessor for UUID();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);
      v27 = *(*(v22 + 56) + 8 * v19);

      a4(v19, v22);
      result = (v26)(a2, v24);
      *v6 = v22;
    }

    else
    {
      v28 = type metadata accessor for UUID();
      v29 = *(*(v28 - 8) + 8);

      return v29(a2, v28);
    }
  }

  return result;
}