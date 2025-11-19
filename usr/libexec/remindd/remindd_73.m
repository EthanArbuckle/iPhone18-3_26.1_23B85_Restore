void sub_100685AD4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6)
{
  if (*(a3 + 16) && (v11 = sub_10002B924(a2), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11);
    v14 = *a5;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v15 = qword_100936128;
      v16 = v13;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100946C50);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();
      v76 = v18;

      v21 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v19, v20))
      {
        v22 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v22 = 136315650;
        if (a1)
        {
          v23 = 0x7265646E696D6572;
        }

        else
        {
          v23 = 0x49746E756F636361;
        }

        if (a1)
        {
          v24 = 0xEA00000000004449;
        }

        else
        {
          v24 = 0xE900000000000044;
        }

        v25 = sub_10000668C(v23, v24, &v77);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2080;
        sub_1000060C8(0, a6, a5);
        v26 = [swift_getObjCClassFromMetadata() description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_10000668C(v27, v29, &v77);

        *(v22 + 14) = v30;
        *(v22 + 22) = 2080;
        v31 = [v76 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v77);

        *(v22 + 24) = v35;
        v21 = &selRef_accountStatusWithCompletionHandler_;
        _os_log_impl(&_mh_execute_header, v19, v20, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v22, 0x20u);
        swift_arrayDestroy();
      }

      v36 = objc_opt_self();
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v37._countAndFlagsBits = 0xD000000000000029;
      v37._object = 0x80000001007FE3C0;
      String.append(_:)(v37);
      v79 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v38._object = 0x80000001007FE3F0;
      v38._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v38);
      sub_1000060C8(0, a6, a5);
      v39 = v21;
      v40 = [swift_getObjCClassFromMetadata() v21[332]];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);

      v45._object = 0xE900000000000020;
      v45._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v45);
      v46 = [v76 v39[332]];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);

      v51._countAndFlagsBits = 125;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v52 = String._bridgeToObjectiveC()();

      [v36 internalErrorWithDebugDescription:v52];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_100946C50);
    v54 = a2;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v57 = 136315394;
      if (a1)
      {
        v58 = 0x7265646E696D6572;
      }

      else
      {
        v58 = 0x49746E756F636361;
      }

      if (a1)
      {
        v59 = 0xEA00000000004449;
      }

      else
      {
        v59 = 0xE900000000000044;
      }

      v60 = sub_10000668C(v58, v59, &v77);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2080;
      v61 = [v54 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_10000668C(v62, v64, &v77);

      *(v57 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing relationship {key: %s, objectID: %s}", v57, 0x16u);
      swift_arrayDestroy();
    }

    v66 = objc_opt_self();
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v67._countAndFlagsBits = 0xD00000000000001BLL;
    v67._object = 0x80000001007FE3A0;
    String.append(_:)(v67);
    v79 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v68._countAndFlagsBits = 0x7463656A626F202CLL;
    v68._object = 0xEC000000203A4449;
    String.append(_:)(v68);
    v69 = [v54 description];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73._countAndFlagsBits = v70;
    v73._object = v72;
    String.append(_:)(v73);

    v74._countAndFlagsBits = 125;
    v74._object = 0xE100000000000000;
    String.append(_:)(v74);
    v75 = String._bridgeToObjectiveC()();

    [v66 internalErrorWithDebugDescription:v75];

    swift_willThrow();
  }
}

void sub_100686278(unsigned __int8 a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDSmartListSection();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v16 = 136315650;
        v17 = 0x694C746E65726170;
        v18 = 0xEC00000044497473;
        if (a1 != 2)
        {
          v17 = 0xD000000000000014;
          v18 = 0x80000001007E9FD0;
        }

        v19 = 0x6341746E65726170;
        v20 = 0xEF4449746E756F63;
        if (!a1)
        {
          v19 = 0x49746E756F636361;
          v20 = 0xE900000000000044;
        }

        if (a1 <= 1u)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (a1 <= 1u)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        v23 = sub_10000668C(v21, v22, &v77);

        *(v16 + 4) = v23;
        *(v16 + 12) = 2080;
        v24 = [swift_getObjCClassFromMetadata() description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = sub_10000668C(v25, v27, &v77);

        *(v16 + 14) = v28;
        *(v16 + 22) = 2080;
        v29 = [v12 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_10000668C(v30, v32, &v77);
        v15 = &selRef_accountStatusWithCompletionHandler_;

        *(v16 + 24) = v33;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v61 = objc_opt_self();
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v62._countAndFlagsBits = 0xD000000000000029;
      v62._object = 0x80000001007FE3C0;
      String.append(_:)(v62);
      v79 = a1;
      _print_unlocked<A, B>(_:_:)();
      v63._countAndFlagsBits = 0xD000000000000010;
      v63._object = 0x80000001007FE3F0;
      String.append(_:)(v63);
      v64 = [swift_getObjCClassFromMetadata() v15[332]];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68._countAndFlagsBits = v65;
      v68._object = v67;
      String.append(_:)(v68);

      v69._object = 0xE900000000000020;
      v69._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v69);
      v70 = [v12 v15[332]];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74._countAndFlagsBits = v71;
      v74._object = v73;
      String.append(_:)(v74);

      v75._countAndFlagsBits = 125;
      v75._object = 0xE100000000000000;
      String.append(_:)(v75);
      v76 = String._bridgeToObjectiveC()();

      [v61 internalErrorWithDebugDescription:v76];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100946C50);
    v35 = a2;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v38 = 136315394;
      v39 = 0xE900000000000044;
      v40 = 0x694C746E65726170;
      v41 = 0xEC00000044497473;
      if (a1 != 2)
      {
        v40 = 0xD000000000000014;
        v41 = 0x80000001007E9FD0;
      }

      v42 = 0x6341746E65726170;
      if (a1)
      {
        v39 = 0xEF4449746E756F63;
      }

      else
      {
        v42 = 0x49746E756F636361;
      }

      if (a1 <= 1u)
      {
        v43 = v42;
      }

      else
      {
        v43 = v40;
      }

      if (a1 <= 1u)
      {
        v44 = v39;
      }

      else
      {
        v44 = v41;
      }

      v45 = sub_10000668C(v43, v44, &v77);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      v46 = [v35 description];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_10000668C(v47, v49, &v77);

      *(v38 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing relationship {key: %s, objectID: %s}", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v51 = objc_opt_self();
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v52._countAndFlagsBits = 0xD00000000000001BLL;
    v52._object = 0x80000001007FE3A0;
    String.append(_:)(v52);
    v79 = a1;
    _print_unlocked<A, B>(_:_:)();
    v53._countAndFlagsBits = 0x7463656A626F202CLL;
    v53._object = 0xEC000000203A4449;
    String.append(_:)(v53);
    v54 = [v35 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    String.append(_:)(v58);

    v59._countAndFlagsBits = 125;
    v59._object = 0xE100000000000000;
    String.append(_:)(v59);
    v60 = String._bridgeToObjectiveC()();

    [v51 internalErrorWithDebugDescription:v60];

    swift_willThrow();
  }
}

void sub_100686A98(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    v13 = *a4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v86 = v19;
        v83 = v17;
        v21 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v21 = 136315650;
        v22 = 0x694C746E65726170;
        v23 = 0xEC00000044497473;
        if (a1 != 2)
        {
          v22 = 0xD000000000000014;
          v23 = 0x80000001007E9FD0;
        }

        v24 = 0x6341746E65726170;
        v25 = 0xEF4449746E756F63;
        if (!a1)
        {
          v24 = 0x49746E756F636361;
          v25 = 0xE900000000000044;
        }

        if (a1 <= 1u)
        {
          v26 = v24;
        }

        else
        {
          v26 = v22;
        }

        if (a1 <= 1u)
        {
          v27 = v25;
        }

        else
        {
          v27 = v23;
        }

        v28 = sub_10000668C(v26, v27, &v84);

        *(v21 + 4) = v28;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v29 = [swift_getObjCClassFromMetadata() description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_10000668C(v30, v32, &v84);

        *(v21 + 14) = v33;
        *(v21 + 22) = 2080;
        v17 = v83;
        v34 = [v83 description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = v35;
        v20 = &selRef_accountStatusWithCompletionHandler_;
        v39 = sub_10000668C(v38, v37, &v84);

        *(v21 + 24) = v39;
        _os_log_impl(&_mh_execute_header, v18, v86, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v67 = objc_opt_self();
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v68._countAndFlagsBits = 0xD000000000000029;
      v68._object = 0x80000001007FE3C0;
      String.append(_:)(v68);
      v87 = a1;
      _print_unlocked<A, B>(_:_:)();
      v69._countAndFlagsBits = 0xD000000000000010;
      v69._object = 0x80000001007FE3F0;
      String.append(_:)(v69);
      sub_1000060C8(0, a5, a4);
      v70 = [swift_getObjCClassFromMetadata() v20[332]];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74._countAndFlagsBits = v71;
      v74._object = v73;
      String.append(_:)(v74);

      v75._object = 0xE900000000000020;
      v75._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v75);
      v76 = [v17 v20[332]];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80._countAndFlagsBits = v77;
      v80._object = v79;
      String.append(_:)(v80);

      v81._countAndFlagsBits = 125;
      v81._object = 0xE100000000000000;
      String.append(_:)(v81);
      v82 = String._bridgeToObjectiveC()();

      [v67 internalErrorWithDebugDescription:v82];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_100946C50);
    v41 = a2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v44 = 136315394;
      v45 = 0xE900000000000044;
      v46 = 0x694C746E65726170;
      v47 = 0xEC00000044497473;
      if (a1 != 2)
      {
        v46 = 0xD000000000000014;
        v47 = 0x80000001007E9FD0;
      }

      v48 = 0x6341746E65726170;
      if (a1)
      {
        v45 = 0xEF4449746E756F63;
      }

      else
      {
        v48 = 0x49746E756F636361;
      }

      if (a1 <= 1u)
      {
        v49 = v48;
      }

      else
      {
        v49 = v46;
      }

      if (a1 <= 1u)
      {
        v50 = v45;
      }

      else
      {
        v50 = v47;
      }

      v51 = sub_10000668C(v49, v50, &v84);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      v52 = [v41 description];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_10000668C(v53, v55, &v84);

      *(v44 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v42, v43, "Missing relationship {key: %s, objectID: %s}", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v57 = objc_opt_self();
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v58._countAndFlagsBits = 0xD00000000000001BLL;
    v58._object = 0x80000001007FE3A0;
    String.append(_:)(v58);
    v87 = a1;
    _print_unlocked<A, B>(_:_:)();
    v59._countAndFlagsBits = 0x7463656A626F202CLL;
    v59._object = 0xEC000000203A4449;
    String.append(_:)(v59);
    v60 = [v41 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = 125;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v66 = String._bridgeToObjectiveC()();

    [v57 internalErrorWithDebugDescription:v66];

    swift_willThrow();
  }
}

void sub_1006872B0(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    v13 = *a4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v86 = v19;
        v83 = v17;
        v21 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v21 = 136315650;
        v22 = 0x65656E6769737361;
        v23 = 0xEA00000000004449;
        if (a1 != 2)
        {
          v22 = 0x74616E696769726FLL;
          v23 = 0xEC0000004449726FLL;
        }

        v24 = 0x7265646E696D6572;
        v25 = 0xEA00000000004449;
        if (!a1)
        {
          v24 = 0x49746E756F636361;
          v25 = 0xE900000000000044;
        }

        if (a1 <= 1u)
        {
          v26 = v24;
        }

        else
        {
          v26 = v22;
        }

        if (a1 <= 1u)
        {
          v27 = v25;
        }

        else
        {
          v27 = v23;
        }

        v28 = sub_10000668C(v26, v27, &v84);

        *(v21 + 4) = v28;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v29 = [swift_getObjCClassFromMetadata() description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_10000668C(v30, v32, &v84);

        *(v21 + 14) = v33;
        *(v21 + 22) = 2080;
        v17 = v83;
        v34 = [v83 description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = v35;
        v20 = &selRef_accountStatusWithCompletionHandler_;
        v39 = sub_10000668C(v38, v37, &v84);

        *(v21 + 24) = v39;
        _os_log_impl(&_mh_execute_header, v18, v86, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v67 = objc_opt_self();
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v68._countAndFlagsBits = 0xD000000000000029;
      v68._object = 0x80000001007FE3C0;
      String.append(_:)(v68);
      v87 = a1;
      _print_unlocked<A, B>(_:_:)();
      v69._object = 0x80000001007FE3F0;
      v69._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v69);
      sub_1000060C8(0, a5, a4);
      v70 = [swift_getObjCClassFromMetadata() v20[332]];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74._countAndFlagsBits = v71;
      v74._object = v73;
      String.append(_:)(v74);

      v75._object = 0xE900000000000020;
      v75._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v75);
      v76 = [v17 v20[332]];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80._countAndFlagsBits = v77;
      v80._object = v79;
      String.append(_:)(v80);

      v81._countAndFlagsBits = 125;
      v81._object = 0xE100000000000000;
      String.append(_:)(v81);
      v82 = String._bridgeToObjectiveC()();

      [v67 internalErrorWithDebugDescription:v82];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_100946C50);
    v41 = a2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v44 = 136315394;
      v45 = 0xE900000000000044;
      v46 = 0x65656E6769737361;
      v47 = 0xEA00000000004449;
      if (a1 != 2)
      {
        v46 = 0x74616E696769726FLL;
        v47 = 0xEC0000004449726FLL;
      }

      v48 = 0x7265646E696D6572;
      if (a1)
      {
        v45 = 0xEA00000000004449;
      }

      else
      {
        v48 = 0x49746E756F636361;
      }

      if (a1 <= 1u)
      {
        v49 = v48;
      }

      else
      {
        v49 = v46;
      }

      if (a1 <= 1u)
      {
        v50 = v45;
      }

      else
      {
        v50 = v47;
      }

      v51 = sub_10000668C(v49, v50, &v84);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      v52 = [v41 description];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_10000668C(v53, v55, &v84);

      *(v44 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v42, v43, "Missing relationship {key: %s, objectID: %s}", v44, 0x16u);
      swift_arrayDestroy();
    }

    v57 = objc_opt_self();
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v58._countAndFlagsBits = 0xD00000000000001BLL;
    v58._object = 0x80000001007FE3A0;
    String.append(_:)(v58);
    v87 = a1;
    _print_unlocked<A, B>(_:_:)();
    v59._countAndFlagsBits = 0x7463656A626F202CLL;
    v59._object = 0xEC000000203A4449;
    String.append(_:)(v59);
    v60 = [v41 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = 125;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v66 = String._bridgeToObjectiveC()();

    [v57 internalErrorWithDebugDescription:v66];

    swift_willThrow();
  }
}

void sub_100687B00(int a1, void *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  LODWORD(v6) = a1;
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    v13 = *a4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v86 = v17;
        v21 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v21 = 136315650;
        v89 = v6;
        v22 = 0x80000001007EA4F0;
        v23 = 0x80000001007EA510;
        v24 = 0xD00000000000001FLL;
        if (v6 == 4)
        {
          v24 = 0xD000000000000014;
        }

        else
        {
          v23 = 0x80000001007EA530;
        }

        if (v6 == 3)
        {
          v25 = 0xD000000000000014;
        }

        else
        {
          v25 = v24;
        }

        if (v6 != 3)
        {
          v22 = v23;
        }

        v26 = 0xE600000000000000;
        v27 = 0x44497473696CLL;
        if (v6 != 1)
        {
          v27 = 0xD000000000000010;
          v26 = 0x80000001007EA4D0;
        }

        if (!v6)
        {
          v27 = 0x49746E756F636361;
          v26 = 0xE900000000000044;
        }

        if (v6 <= 2u)
        {
          v28 = v27;
        }

        else
        {
          v28 = v25;
        }

        if (v6 <= 2u)
        {
          v29 = v26;
        }

        else
        {
          v29 = v22;
        }

        v30 = sub_10000668C(v28, v29, &v87);

        *(v21 + 4) = v30;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v31 = [swift_getObjCClassFromMetadata() description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v87);

        *(v21 + 14) = v35;
        *(v21 + 22) = 2080;
        v36 = [v86 description];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = sub_10000668C(v6, v38, &v87);
        v17 = v86;
        v20 = &selRef_accountStatusWithCompletionHandler_;

        *(v21 + 24) = v39;
        _os_log_impl(&_mh_execute_header, v18, v19, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();

        LOBYTE(v6) = v89;
      }

      else
      {
      }

      v69 = objc_opt_self();
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v70._countAndFlagsBits = 0xD000000000000029;
      v70._object = 0x80000001007FE3C0;
      String.append(_:)(v70);
      v90 = v6;
      _print_unlocked<A, B>(_:_:)();
      v71._countAndFlagsBits = 0xD000000000000010;
      v71._object = 0x80000001007FE3F0;
      String.append(_:)(v71);
      sub_1000060C8(0, a5, a4);
      v72 = v20;
      v73 = [swift_getObjCClassFromMetadata() v20[332]];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77._countAndFlagsBits = v74;
      v77._object = v76;
      String.append(_:)(v77);

      v78._object = 0xE900000000000020;
      v78._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v78);
      v79 = [v17 v72[332]];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83._countAndFlagsBits = v80;
      v83._object = v82;
      String.append(_:)(v83);

      v84._countAndFlagsBits = 125;
      v84._object = 0xE100000000000000;
      String.append(_:)(v84);
      v85 = String._bridgeToObjectiveC()();

      [v69 internalErrorWithDebugDescription:v85];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_100946C50);
    v41 = a2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v45 = 0xE900000000000044;
      *v44 = 136315394;
      v89 = v6;
      v46 = 0x80000001007EA4F0;
      v47 = 0x80000001007EA510;
      v48 = 0xD00000000000001FLL;
      if (v6 == 4)
      {
        v48 = 0xD000000000000014;
      }

      else
      {
        v47 = 0x80000001007EA530;
      }

      if (v6 == 3)
      {
        v49 = 0xD000000000000014;
      }

      else
      {
        v49 = v48;
      }

      if (v6 != 3)
      {
        v46 = v47;
      }

      v50 = 0xE600000000000000;
      v51 = 0x44497473696CLL;
      if (v6 != 1)
      {
        v51 = 0xD000000000000010;
        v50 = 0x80000001007EA4D0;
      }

      if (v6)
      {
        v45 = v50;
      }

      else
      {
        v51 = 0x49746E756F636361;
      }

      if (v6 <= 2u)
      {
        v52 = v51;
      }

      else
      {
        v52 = v49;
      }

      if (v6 <= 2u)
      {
        v53 = v45;
      }

      else
      {
        v53 = v46;
      }

      v54 = sub_10000668C(v52, v53, &v87);

      *(v44 + 4) = v54;
      *(v44 + 12) = 2080;
      v55 = [v41 description];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_10000668C(v6, v57, &v87);

      *(v44 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v42, v43, "Missing relationship {key: %s, objectID: %s}", v44, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v6) = v89;
    }

    else
    {
    }

    v59 = objc_opt_self();
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x80000001007FE3A0;
    String.append(_:)(v60);
    v90 = v6;
    _print_unlocked<A, B>(_:_:)();
    v61._countAndFlagsBits = 0x7463656A626F202CLL;
    v61._object = 0xEC000000203A4449;
    String.append(_:)(v61);
    v62 = [v41 description];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = 125;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    v68 = String._bridgeToObjectiveC()();

    [v59 internalErrorWithDebugDescription:v68];

    swift_willThrow();
  }
}

void sub_100688408(char a1, void *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    v13 = *a4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v20 = 136315650;
        if (a1)
        {
          v21 = 0xD000000000000016;
        }

        else
        {
          v21 = 0xD000000000000011;
        }

        if (a1)
        {
          v22 = "listIDsToUndelete";
        }

        else
        {
          v22 = "urrentAppVersion";
        }

        v77 = v17;
        v23 = sub_10000668C(v21, v22 | 0x8000000000000000, &v78);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v24 = [swift_getObjCClassFromMetadata() description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = a1;
        v28 = v27;

        v29 = sub_10000668C(v25, v28, &v78);

        *(v20 + 14) = v29;
        *(v20 + 22) = 2080;
        v30 = [v77 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = v31;
        a1 = v26;
        v35 = sub_10000668C(v34, v33, &v78);
        v17 = v77;

        *(v20 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v18, v19, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v20, 0x20u);
        swift_arrayDestroy();
      }

      v36 = objc_opt_self();
      v78 = 0;
      v79 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v37._countAndFlagsBits = 0xD000000000000029;
      v37._object = 0x80000001007FE3C0;
      String.append(_:)(v37);
      v80 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v38._countAndFlagsBits = 0xD000000000000010;
      v38._object = 0x80000001007FE3F0;
      String.append(_:)(v38);
      sub_1000060C8(0, a5, a4);
      v39 = [swift_getObjCClassFromMetadata() description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44._countAndFlagsBits = 0x3A646E756F66202CLL;
      v44._object = 0xE900000000000020;
      String.append(_:)(v44);
      v45 = [v17 description];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49._countAndFlagsBits = v46;
      v49._object = v48;
      String.append(_:)(v49);

      v50._countAndFlagsBits = 125;
      v50._object = 0xE100000000000000;
      String.append(_:)(v50);
      v51 = String._bridgeToObjectiveC()();

      [v36 internalErrorWithDebugDescription:v51];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100946C50);
    v53 = a2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v56 = 136315394;
      if (a1)
      {
        v57 = 0xD000000000000016;
      }

      else
      {
        v57 = 0xD000000000000011;
      }

      v58 = a1;
      if (a1)
      {
        v59 = "listIDsToUndelete";
      }

      else
      {
        v59 = "urrentAppVersion";
      }

      v60 = sub_10000668C(v57, v59 | 0x8000000000000000, &v78);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = [v53 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = v62;
      a1 = v58;
      v66 = sub_10000668C(v65, v64, &v78);

      *(v56 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v54, v55, "Missing relationship {key: %s, objectID: %s}", v56, 0x16u);
      swift_arrayDestroy();
    }

    v67 = objc_opt_self();
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v68._countAndFlagsBits = 0xD00000000000001BLL;
    v68._object = 0x80000001007FE3A0;
    String.append(_:)(v68);
    v80 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v69._countAndFlagsBits = 0x7463656A626F202CLL;
    v69._object = 0xEC000000203A4449;
    String.append(_:)(v69);
    v70 = [v53 description];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74._countAndFlagsBits = v71;
    v74._object = v73;
    String.append(_:)(v74);

    v75._countAndFlagsBits = 125;
    v75._object = 0xE100000000000000;
    String.append(_:)(v75);
    v76 = String._bridgeToObjectiveC()();

    [v67 internalErrorWithDebugDescription:v76];

    swift_willThrow();
  }
}

void sub_100688BB8(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6)
{
  if (*(a3 + 16) && (v11 = sub_10002B924(a2), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11);
    v14 = *a5;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v15 = qword_100936128;
      v16 = v13;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100946C50);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();
      v76 = v18;

      v21 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v19, v20))
      {
        v22 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v22 = 136315650;
        if (a1)
        {
          v23 = 0x4449746E65726170;
        }

        else
        {
          v23 = 0x49746E756F636361;
        }

        if (a1)
        {
          v24 = 0xE800000000000000;
        }

        else
        {
          v24 = 0xE900000000000044;
        }

        v25 = sub_10000668C(v23, v24, &v77);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2080;
        sub_1000060C8(0, a6, a5);
        v26 = [swift_getObjCClassFromMetadata() description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_10000668C(v27, v29, &v77);

        *(v22 + 14) = v30;
        *(v22 + 22) = 2080;
        v31 = [v76 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v77);

        *(v22 + 24) = v35;
        v21 = &selRef_accountStatusWithCompletionHandler_;
        _os_log_impl(&_mh_execute_header, v19, v20, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v22, 0x20u);
        swift_arrayDestroy();
      }

      v36 = objc_opt_self();
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v37._countAndFlagsBits = 0xD000000000000029;
      v37._object = 0x80000001007FE3C0;
      String.append(_:)(v37);
      v79 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v38._object = 0x80000001007FE3F0;
      v38._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v38);
      sub_1000060C8(0, a6, a5);
      v39 = v21;
      v40 = [swift_getObjCClassFromMetadata() v21[332]];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);

      v45._object = 0xE900000000000020;
      v45._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v45);
      v46 = [v76 v39[332]];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);

      v51._countAndFlagsBits = 125;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v52 = String._bridgeToObjectiveC()();

      [v36 internalErrorWithDebugDescription:v52];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_100946C50);
    v54 = a2;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v57 = 136315394;
      if (a1)
      {
        v58 = 0x4449746E65726170;
      }

      else
      {
        v58 = 0x49746E756F636361;
      }

      if (a1)
      {
        v59 = 0xE800000000000000;
      }

      else
      {
        v59 = 0xE900000000000044;
      }

      v60 = sub_10000668C(v58, v59, &v77);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2080;
      v61 = [v54 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_10000668C(v62, v64, &v77);

      *(v57 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing relationship {key: %s, objectID: %s}", v57, 0x16u);
      swift_arrayDestroy();
    }

    v66 = objc_opt_self();
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v67._countAndFlagsBits = 0xD00000000000001BLL;
    v67._object = 0x80000001007FE3A0;
    String.append(_:)(v67);
    v79 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v68._countAndFlagsBits = 0x7463656A626F202CLL;
    v68._object = 0xEC000000203A4449;
    String.append(_:)(v68);
    v69 = [v54 description];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73._countAndFlagsBits = v70;
    v73._object = v72;
    String.append(_:)(v73);

    v74._countAndFlagsBits = 125;
    v74._object = 0xE100000000000000;
    String.append(_:)(v74);
    v75 = String._bridgeToObjectiveC()();

    [v66 internalErrorWithDebugDescription:v75];

    swift_willThrow();
  }
}

void sub_10068932C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6)
{
  if (*(a3 + 16) && (v11 = sub_10002B924(a2), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11);
    v14 = *a5;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v15 = qword_100936128;
      v16 = v13;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100946C50);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();
      v76 = v18;

      v21 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v19, v20))
      {
        v22 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v22 = 136315650;
        if (a1)
        {
          v23 = 0x44497473696CLL;
        }

        else
        {
          v23 = 0x49746E756F636361;
        }

        if (a1)
        {
          v24 = 0xE600000000000000;
        }

        else
        {
          v24 = 0xE900000000000044;
        }

        v25 = sub_10000668C(v23, v24, &v77);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2080;
        sub_1000060C8(0, a6, a5);
        v26 = [swift_getObjCClassFromMetadata() description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_10000668C(v27, v29, &v77);

        *(v22 + 14) = v30;
        *(v22 + 22) = 2080;
        v31 = [v76 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v77);

        *(v22 + 24) = v35;
        v21 = &selRef_accountStatusWithCompletionHandler_;
        _os_log_impl(&_mh_execute_header, v19, v20, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v22, 0x20u);
        swift_arrayDestroy();
      }

      v36 = objc_opt_self();
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v37._countAndFlagsBits = 0xD000000000000029;
      v37._object = 0x80000001007FE3C0;
      String.append(_:)(v37);
      v79 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v38._object = 0x80000001007FE3F0;
      v38._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v38);
      sub_1000060C8(0, a6, a5);
      v39 = v21;
      v40 = [swift_getObjCClassFromMetadata() v21[332]];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);

      v45._object = 0xE900000000000020;
      v45._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v45);
      v46 = [v76 v39[332]];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);

      v51._countAndFlagsBits = 125;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v52 = String._bridgeToObjectiveC()();

      [v36 internalErrorWithDebugDescription:v52];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_100946C50);
    v54 = a2;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v57 = 136315394;
      if (a1)
      {
        v58 = 0x44497473696CLL;
      }

      else
      {
        v58 = 0x49746E756F636361;
      }

      if (a1)
      {
        v59 = 0xE600000000000000;
      }

      else
      {
        v59 = 0xE900000000000044;
      }

      v60 = sub_10000668C(v58, v59, &v77);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2080;
      v61 = [v54 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_10000668C(v62, v64, &v77);

      *(v57 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing relationship {key: %s, objectID: %s}", v57, 0x16u);
      swift_arrayDestroy();
    }

    v66 = objc_opt_self();
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v67._countAndFlagsBits = 0xD00000000000001BLL;
    v67._object = 0x80000001007FE3A0;
    String.append(_:)(v67);
    v79 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v68._countAndFlagsBits = 0x7463656A626F202CLL;
    v68._object = 0xEC000000203A4449;
    String.append(_:)(v68);
    v69 = [v54 description];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73._countAndFlagsBits = v70;
    v73._object = v72;
    String.append(_:)(v73);

    v74._countAndFlagsBits = 125;
    v74._object = 0xE100000000000000;
    String.append(_:)(v74);
    v75 = String._bridgeToObjectiveC()();

    [v66 internalErrorWithDebugDescription:v75];

    swift_willThrow();
  }
}

void sub_100689A98(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    v13 = *a4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v93 = v19;
        v90 = v17;
        v21 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v21 = 136315650;
        v22 = 0x80000001007E9FB0;
        v23 = 0xD000000000000015;
        if (a1 != 5)
        {
          v23 = 0xD000000000000014;
          v22 = 0x80000001007E9FD0;
        }

        v24 = 0x6341746E65726170;
        v25 = 0xEF4449746E756F63;
        if (a1 != 3)
        {
          v24 = 0x694C746E65726170;
          v25 = 0xEC00000044497473;
        }

        if (a1 <= 4u)
        {
          v23 = v24;
          v22 = v25;
        }

        v26 = 0x80000001007E9F50;
        v27 = 0xD000000000000016;
        if (a1 != 1)
        {
          v27 = 0xD00000000000001BLL;
          v26 = 0x80000001007E9F70;
        }

        if (a1)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0x49746E756F636361;
        }

        if (!a1)
        {
          v26 = 0xE900000000000044;
        }

        if (a1 <= 2u)
        {
          v29 = v28;
        }

        else
        {
          v29 = v23;
        }

        if (a1 <= 2u)
        {
          v30 = v26;
        }

        else
        {
          v30 = v22;
        }

        v31 = sub_10000668C(v29, v30, &v91);

        *(v21 + 4) = v31;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v32 = [swift_getObjCClassFromMetadata() description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v91);

        *(v21 + 14) = v36;
        *(v21 + 22) = 2080;
        v17 = v90;
        v37 = [v90 description];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = v38;
        v20 = &selRef_accountStatusWithCompletionHandler_;
        v42 = sub_10000668C(v41, v40, &v91);

        *(v21 + 24) = v42;
        _os_log_impl(&_mh_execute_header, v18, v93, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v74 = objc_opt_self();
      v91 = 0;
      v92 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v75._countAndFlagsBits = 0xD000000000000029;
      v75._object = 0x80000001007FE3C0;
      String.append(_:)(v75);
      v94 = a1;
      _print_unlocked<A, B>(_:_:)();
      v76._countAndFlagsBits = 0xD000000000000010;
      v76._object = 0x80000001007FE3F0;
      String.append(_:)(v76);
      sub_1000060C8(0, a5, a4);
      v77 = [swift_getObjCClassFromMetadata() v20[332]];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81._countAndFlagsBits = v78;
      v81._object = v80;
      String.append(_:)(v81);

      v82._object = 0xE900000000000020;
      v82._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v82);
      v83 = [v17 v20[332]];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v87._countAndFlagsBits = v84;
      v87._object = v86;
      String.append(_:)(v87);

      v88._countAndFlagsBits = 125;
      v88._object = 0xE100000000000000;
      String.append(_:)(v88);
      v89 = String._bridgeToObjectiveC()();

      [v74 internalErrorWithDebugDescription:v89];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100946C50);
    v44 = a2;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v48 = 0xE900000000000044;
      *v47 = 136315394;
      v49 = 0x80000001007E9FB0;
      v50 = 0xD000000000000015;
      if (a1 != 5)
      {
        v50 = 0xD000000000000014;
        v49 = 0x80000001007E9FD0;
      }

      v51 = 0x6341746E65726170;
      v52 = 0xEF4449746E756F63;
      if (a1 != 3)
      {
        v51 = 0x694C746E65726170;
        v52 = 0xEC00000044497473;
      }

      if (a1 <= 4u)
      {
        v50 = v51;
        v49 = v52;
      }

      v53 = 0x80000001007E9F50;
      v54 = 0xD000000000000016;
      if (a1 != 1)
      {
        v54 = 0xD00000000000001BLL;
        v53 = 0x80000001007E9F70;
      }

      if (a1)
      {
        v55 = v54;
      }

      else
      {
        v55 = 0x49746E756F636361;
      }

      if (a1)
      {
        v48 = v53;
      }

      if (a1 <= 2u)
      {
        v56 = v55;
      }

      else
      {
        v56 = v50;
      }

      if (a1 <= 2u)
      {
        v57 = v48;
      }

      else
      {
        v57 = v49;
      }

      v58 = sub_10000668C(v56, v57, &v91);

      *(v47 + 4) = v58;
      *(v47 + 12) = 2080;
      v59 = [v44 description];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = sub_10000668C(v60, v62, &v91);

      *(v47 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v45, v46, "Missing relationship {key: %s, objectID: %s}", v47, 0x16u);
      swift_arrayDestroy();
    }

    v64 = objc_opt_self();
    v91 = 0;
    v92 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v65._object = 0x80000001007FE3A0;
    v65._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v65);
    v94 = a1;
    _print_unlocked<A, B>(_:_:)();
    v66._countAndFlagsBits = 0x7463656A626F202CLL;
    v66._object = 0xEC000000203A4449;
    String.append(_:)(v66);
    v67 = [v44 description];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71._countAndFlagsBits = v68;
    v71._object = v70;
    String.append(_:)(v71);

    v72._countAndFlagsBits = 125;
    v72._object = 0xE100000000000000;
    String.append(_:)(v72);
    v73 = String._bridgeToObjectiveC()();

    [v64 internalErrorWithDebugDescription:v73];

    swift_willThrow();
  }
}

void sub_10068A364(unsigned __int8 a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDListSection();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v16 = 136315650;
        v17 = 0x80000001007E9FB0;
        v18 = 0xD000000000000015;
        if (a1 != 5)
        {
          v18 = 0xD000000000000014;
          v17 = 0x80000001007E9FD0;
        }

        v19 = 0x6341746E65726170;
        v20 = 0xEF4449746E756F63;
        if (a1 != 3)
        {
          v19 = 0x694C746E65726170;
          v20 = 0xEC00000044497473;
        }

        if (a1 <= 4u)
        {
          v18 = v19;
          v17 = v20;
        }

        v21 = 0x80000001007E9F50;
        v22 = 0xD000000000000016;
        if (a1 != 1)
        {
          v22 = 0xD00000000000001BLL;
          v21 = 0x80000001007E9F70;
        }

        if (a1)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0x49746E756F636361;
        }

        if (!a1)
        {
          v21 = 0xE900000000000044;
        }

        if (a1 <= 2u)
        {
          v24 = v23;
        }

        else
        {
          v24 = v18;
        }

        if (a1 <= 2u)
        {
          v25 = v21;
        }

        else
        {
          v25 = v17;
        }

        v26 = sub_10000668C(v24, v25, &v84);

        *(v16 + 4) = v26;
        *(v16 + 12) = 2080;
        v27 = [swift_getObjCClassFromMetadata() description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_10000668C(v28, v30, &v84);

        *(v16 + 14) = v31;
        *(v16 + 22) = 2080;
        v32 = [v12 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v84);
        v15 = &selRef_accountStatusWithCompletionHandler_;

        *(v16 + 24) = v36;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v68 = objc_opt_self();
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v69._countAndFlagsBits = 0xD000000000000029;
      v69._object = 0x80000001007FE3C0;
      String.append(_:)(v69);
      v86 = a1;
      _print_unlocked<A, B>(_:_:)();
      v70._countAndFlagsBits = 0xD000000000000010;
      v70._object = 0x80000001007FE3F0;
      String.append(_:)(v70);
      v71 = [swift_getObjCClassFromMetadata() v15[332]];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75._countAndFlagsBits = v72;
      v75._object = v74;
      String.append(_:)(v75);

      v76._object = 0xE900000000000020;
      v76._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v76);
      v77 = [v12 v15[332]];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81._countAndFlagsBits = v78;
      v81._object = v80;
      String.append(_:)(v81);

      v82._countAndFlagsBits = 125;
      v82._object = 0xE100000000000000;
      String.append(_:)(v82);
      v83 = String._bridgeToObjectiveC()();

      [v68 internalErrorWithDebugDescription:v83];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_100946C50);
    v38 = a2;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v42 = 0xE900000000000044;
      *v41 = 136315394;
      v43 = 0x80000001007E9FB0;
      v44 = 0xD000000000000015;
      if (a1 != 5)
      {
        v44 = 0xD000000000000014;
        v43 = 0x80000001007E9FD0;
      }

      v45 = 0x6341746E65726170;
      v46 = 0xEF4449746E756F63;
      if (a1 != 3)
      {
        v45 = 0x694C746E65726170;
        v46 = 0xEC00000044497473;
      }

      if (a1 <= 4u)
      {
        v44 = v45;
        v43 = v46;
      }

      v47 = 0x80000001007E9F50;
      v48 = 0xD000000000000016;
      if (a1 != 1)
      {
        v48 = 0xD00000000000001BLL;
        v47 = 0x80000001007E9F70;
      }

      if (a1)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0x49746E756F636361;
      }

      if (a1)
      {
        v42 = v47;
      }

      if (a1 <= 2u)
      {
        v50 = v49;
      }

      else
      {
        v50 = v44;
      }

      if (a1 <= 2u)
      {
        v51 = v42;
      }

      else
      {
        v51 = v43;
      }

      v52 = sub_10000668C(v50, v51, &v84);

      *(v41 + 4) = v52;
      *(v41 + 12) = 2080;
      v53 = [v38 description];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = sub_10000668C(v54, v56, &v84);

      *(v41 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v39, v40, "Missing relationship {key: %s, objectID: %s}", v41, 0x16u);
      swift_arrayDestroy();
    }

    v58 = objc_opt_self();
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v59._object = 0x80000001007FE3A0;
    v59._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v59);
    v86 = a1;
    _print_unlocked<A, B>(_:_:)();
    v60._countAndFlagsBits = 0x7463656A626F202CLL;
    v60._object = 0xEC000000203A4449;
    String.append(_:)(v60);
    v61 = [v38 description];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65._countAndFlagsBits = v62;
    v65._object = v64;
    String.append(_:)(v65);

    v66._countAndFlagsBits = 125;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    v67 = String._bridgeToObjectiveC()();

    [v58 internalErrorWithDebugDescription:v67];

    swift_willThrow();
  }
}

void sub_10068AC14(void *a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_10002B924(a1), (v5 & 1) != 0))
  {
    v6 = *(*(a2 + 56) + 16 * v4);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v7 = qword_100936128;
      v8 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_100946C50);
      v10 = v8;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v13 = 136315650;
        *(v13 + 4) = sub_10000668C(0x49746E756F636361, 0xE900000000000044, &v60);
        *(v13 + 12) = 2080;
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        v14 = [swift_getObjCClassFromMetadata() description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_10000668C(v15, v17, &v60);

        *(v13 + 14) = v18;
        *(v13 + 22) = 2080;
        v19 = [v10 description];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_10000668C(v20, v22, &v60);

        *(v13 + 24) = v23;
        _os_log_impl(&_mh_execute_header, v11, v12, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v13, 0x20u);
        swift_arrayDestroy();
      }

      v24 = objc_opt_self();
      v60 = 0;
      v61 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v25._countAndFlagsBits = 0xD000000000000029;
      v25._object = 0x80000001007FE3C0;
      String.append(_:)(v25);
      _print_unlocked<A, B>(_:_:)();
      v26._object = 0x80000001007FE3F0;
      v26._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v26);
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v27 = [swift_getObjCClassFromMetadata() description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      v32._object = 0xE900000000000020;
      v32._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v32);
      v33 = [v10 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);

      v38._countAndFlagsBits = 125;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v39 = String._bridgeToObjectiveC()();

      [v24 internalErrorWithDebugDescription:v39];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_100946C50);
    v41 = a1;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_10000668C(0x49746E756F636361, 0xE900000000000044, &v60);
      *(v44 + 12) = 2080;
      v45 = [v41 description];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = sub_10000668C(v46, v48, &v60);

      *(v44 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Missing relationship {key: %s, objectID: %s}", v44, 0x16u);
      swift_arrayDestroy();
    }

    v50 = objc_opt_self();
    v60 = 0;
    v61 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v51._countAndFlagsBits = 0xD00000000000001BLL;
    v51._object = 0x80000001007FE3A0;
    String.append(_:)(v51);
    _print_unlocked<A, B>(_:_:)();
    v52._countAndFlagsBits = 0x7463656A626F202CLL;
    v52._object = 0xEC000000203A4449;
    String.append(_:)(v52);
    v53 = [v41 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57._countAndFlagsBits = v54;
    v57._object = v56;
    String.append(_:)(v57);

    v58._countAndFlagsBits = 125;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    v59 = String._bridgeToObjectiveC()();

    [v50 internalErrorWithDebugDescription:v59];

    swift_willThrow();
  }
}

void sub_10068B324(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDTemplate();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          v17 = 0x44497473696CLL;
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        if (a1)
        {
          v18 = 0xE600000000000000;
        }

        else
        {
          v18 = 0xE900000000000044;
        }

        v19 = sub_10000668C(v17, v18, &v69);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v20 = [swift_getObjCClassFromMetadata() description];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = sub_10000668C(v21, v23, &v69);

        *(v16 + 14) = v24;
        *(v16 + 22) = 2080;
        v25 = [v12 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = sub_10000668C(v26, v28, &v69);
        v15 = &selRef_accountStatusWithCompletionHandler_;

        *(v16 + 24) = v29;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      v30 = objc_opt_self();
      v69 = 0;
      v70 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v31._countAndFlagsBits = 0xD000000000000029;
      v31._object = 0x80000001007FE3C0;
      String.append(_:)(v31);
      v71 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v32._object = 0x80000001007FE3F0;
      v32._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v32);
      v33 = [swift_getObjCClassFromMetadata() v15[332]];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);

      v38._object = 0xE900000000000020;
      v38._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v38);
      v39 = [v12 v15[332]];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44._countAndFlagsBits = 125;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v45 = String._bridgeToObjectiveC()();

      [v30 internalErrorWithDebugDescription:v45];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_100946C50);
    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v50 = 136315394;
      if (a1)
      {
        v51 = 0x44497473696CLL;
      }

      else
      {
        v51 = 0x49746E756F636361;
      }

      if (a1)
      {
        v52 = 0xE600000000000000;
      }

      else
      {
        v52 = 0xE900000000000044;
      }

      v53 = sub_10000668C(v51, v52, &v69);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v54 = [v47 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_10000668C(v55, v57, &v69);

      *(v50 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "Missing relationship {key: %s, objectID: %s}", v50, 0x16u);
      swift_arrayDestroy();
    }

    v59 = objc_opt_self();
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x80000001007FE3A0;
    String.append(_:)(v60);
    v71 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v61._countAndFlagsBits = 0x7463656A626F202CLL;
    v61._object = 0xEC000000203A4449;
    String.append(_:)(v61);
    v62 = [v47 description];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = 125;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    v68 = String._bridgeToObjectiveC()();

    [v59 internalErrorWithDebugDescription:v68];

    swift_willThrow();
  }
}

void sub_10068BA8C(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDTemplate();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          v17 = 0x4449746E65726170;
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        if (a1)
        {
          v18 = 0xE800000000000000;
        }

        else
        {
          v18 = 0xE900000000000044;
        }

        v19 = sub_10000668C(v17, v18, &v69);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v20 = [swift_getObjCClassFromMetadata() description];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = sub_10000668C(v21, v23, &v69);

        *(v16 + 14) = v24;
        *(v16 + 22) = 2080;
        v25 = [v12 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = sub_10000668C(v26, v28, &v69);
        v15 = &selRef_accountStatusWithCompletionHandler_;

        *(v16 + 24) = v29;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      v30 = objc_opt_self();
      v69 = 0;
      v70 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v31._countAndFlagsBits = 0xD000000000000029;
      v31._object = 0x80000001007FE3C0;
      String.append(_:)(v31);
      v71 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v32._object = 0x80000001007FE3F0;
      v32._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v32);
      v33 = [swift_getObjCClassFromMetadata() v15[332]];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);

      v38._object = 0xE900000000000020;
      v38._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v38);
      v39 = [v12 v15[332]];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44._countAndFlagsBits = 125;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v45 = String._bridgeToObjectiveC()();

      [v30 internalErrorWithDebugDescription:v45];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_100946C50);
    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v50 = 136315394;
      if (a1)
      {
        v51 = 0x4449746E65726170;
      }

      else
      {
        v51 = 0x49746E756F636361;
      }

      if (a1)
      {
        v52 = 0xE800000000000000;
      }

      else
      {
        v52 = 0xE900000000000044;
      }

      v53 = sub_10000668C(v51, v52, &v69);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v54 = [v47 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_10000668C(v55, v57, &v69);

      *(v50 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "Missing relationship {key: %s, objectID: %s}", v50, 0x16u);
      swift_arrayDestroy();
    }

    v59 = objc_opt_self();
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x80000001007FE3A0;
    String.append(_:)(v60);
    v71 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v61._countAndFlagsBits = 0x7463656A626F202CLL;
    v61._object = 0xEC000000203A4449;
    String.append(_:)(v61);
    v62 = [v47 description];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = 125;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    v68 = String._bridgeToObjectiveC()();

    [v59 internalErrorWithDebugDescription:v68];

    swift_willThrow();
  }
}

unint64_t sub_10068C22C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1368, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10068C278(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1480, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10068C2C4(void *a1, uint64_t a2)
{
  v4 = [a1 remObjectID];
  v5 = v4;
  if (*(a2 + 16))
  {
    sub_10002B924(v4);
  }

  v6 = [a1 remObjectID];
  v7 = v6;
  if (*(a2 + 16))
  {
    sub_10002B924(v6);
  }

  v8._rawValue = &off_1008E1BE8;
  result = sub_1005F8918(v8, type metadata accessor for REMCDManualSortHint);
  if ((result & 1) == 0)
  {
    v10._rawValue = &off_1008E0BF0;
    result = sub_1005F6E20(v10, type metadata accessor for REMCDManualSortHint);
    if (result != 2)
    {
      v11 = result;
      v23[3] = &type metadata for REMManualOrderingCDIngestor.RelationshipKey;
      v23[4] = &off_1008F3B90;
      sub_10000A87C(v23, v20);
      v12 = v21;
      v13 = v22;
      sub_10000F61C(v20, v21);
      if ((*(v13 + 16))(v12, v13) == 0x49746E756F636361 && v14 == 0xE900000000000044)
      {

        sub_10000607C(v20);
        return sub_10000607C(v23);
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000607C(v20);
      if (v15)
      {
        return sub_10000607C(v23);
      }

      sub_10000607C(v23);
      if (v11)
      {
        v16 = 0x6465696669646F6DLL;
      }

      else
      {
        v16 = 0x44497463656A626FLL;
      }

      if (v11)
      {
        v17 = 0xEC00000065746144;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      if (v16 == 0x44497463656A626FLL && v17 == 0xE800000000000000)
      {
LABEL_21:
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        if (v16 == 0x6465696669646F6DLL && v17 == 0xEC00000065746144)
        {
          goto LABEL_21;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          sub_1006ABFBC();
          swift_allocError();
          return swift_willThrow();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10068C5B8()
{
  v0._rawValue = &off_1008DF080;
  result = sub_1005F7EC0(v0, &qword_100940370, off_1008D4150);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008E1090;
  result = sub_1005F716C(v3, &qword_100940370, off_1008D4150);
  if (result == 2)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x44496D72616C61;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x44496D72616C61 || v6 != 0xE700000000000000)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v4)
  {
    v8 = 0x746E657665;
  }

  else
  {
    v8 = 0x44497463656A626FLL;
  }

  if (v4)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v8 == 0x44497463656A626FLL && v9 == 0xE800000000000000)
  {
    goto LABEL_21;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    if (v8 == 0x746E657665 && v9 == 0xE500000000000000)
    {
LABEL_21:
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_1006ABFBC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10068C85C()
{
  v0._rawValue = &off_1008DF080;
  result = sub_1005F7EC0(v0, &qword_100940360, off_1008D4138);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  result = sub_1005F79C4();
  if (result == 3)
  {
    return result;
  }

  v14 = result;
  if (v2)
  {
    v3 = 0x44496D72616C61;
  }

  else
  {
    v3 = 0x49746E756F636361;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000044;
  }

  if (v3 != 0x49746E756F636361 || v4 != 0xE900000000000044)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_13;
    }

    if (v3 != 0x44496D72616C61 || v4 != 0xE700000000000000)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  v6 = 0x44497463656A626FLL;
  if (!v14)
  {
LABEL_14:
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v9 = 0xD000000000000012;
        v10 = 0x80000001007EA8C0;
      }

      else
      {
        v9 = 0x74696D69786F7270;
        v10 = 0xE900000000000079;
      }
    }

    else
    {
      v10 = 0xE800000000000000;
      v9 = 0x44497463656A626FLL;
    }

    if (v9 == 0xD000000000000012 && 0x80000001007EA8C0 == v10)
    {
      goto LABEL_14;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          v6 = 0xD000000000000012;
          v12 = 0x80000001007EA8C0;
        }

        else
        {
          v6 = 0x74696D69786F7270;
          v12 = 0xE900000000000079;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
      }

      if (v6 == 0x74696D69786F7270 && v12 == 0xE900000000000079)
      {
        goto LABEL_14;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        sub_1006ABFBC();
        swift_allocError();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_10068CCA0()
{
  v0._rawValue = &off_1008DF080;
  result = sub_1005F7EC0(v0, &qword_100940350, off_1008D4130);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008E0E30;
  result = sub_1005F716C(v3, &qword_100940350, off_1008D4130);
  if (result == 2)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x44496D72616C61;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x44496D72616C61 || v6 != 0xE700000000000000)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v4)
  {
    v8 = 0x706D6F4365746164;
  }

  else
  {
    v8 = 0x44497463656A626FLL;
  }

  if (v4)
  {
    v9 = 0xEE0073746E656E6FLL;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v8 == 0x44497463656A626FLL && v9 == 0xE800000000000000)
  {
    goto LABEL_21;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    if (v8 == 0x706D6F4365746164 && v9 == 0xEE0073746E656E6FLL)
    {
LABEL_21:
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_1006ABFBC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10068CF50()
{
  v0._rawValue = &off_1008DF080;
  result = sub_1005F7EC0(v0, &qword_10094F688, off_1008D4140);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008E07F0;
  result = sub_1005F716C(v3, &qword_10094F688, off_1008D4140);
  if (result == 2)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x44496D72616C61;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x44496D72616C61 || v6 != 0xE700000000000000)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v4)
  {
    v8 = 0x65746E49656D6974;
  }

  else
  {
    v8 = 0x44497463656A626FLL;
  }

  if (v4)
  {
    v9 = 0xEC0000006C617672;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v8 == 0x44497463656A626FLL && v9 == 0xE800000000000000)
  {
    goto LABEL_21;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    if (v8 == 0x65746E49656D6974 && v9 == 0xEC0000006C617672)
    {
LABEL_21:
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_1006ABFBC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10068D1FC()
{
  v0._rawValue = &off_1008E1248;
  result = sub_1005F7EC0(v0, &unk_100938870, off_1008D4128);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008E0868;
  result = sub_1005F6904(v3, &unk_100938870, off_1008D4128);
  if (result == 5)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x7265646E696D6572;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xEA00000000004449;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x7265646E696D6572 || v6 != 0xEA00000000004449)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v8 = 0;
  v9 = 0xE800000000000000;
  v10 = v4;
  while (v8 != 5)
  {
    v12 = *(&off_1008E1DC0 + v8 + 32);
    if (v12 <= 1)
    {
      if (*(&off_1008E1DC0 + v8 + 32))
      {
        v13 = 0x72656767697274;
      }

      else
      {
        v13 = 0x44497463656A626FLL;
      }

      if (*(&off_1008E1DC0 + v8 + 32))
      {
        v14 = 0xE700000000000000;
      }

      else
      {
        v14 = 0xE800000000000000;
      }
    }

    else if (v12 == 2)
    {
      v13 = 0xD000000000000010;
      v14 = 0x80000001007E9F10;
    }

    else
    {
      if (v12 == 3)
      {
        v13 = 0x4449556D72616C61;
      }

      else
      {
        v13 = 0xD000000000000010;
      }

      if (v12 == 3)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = 0x80000001007E9F30;
      }
    }

    if (v10 == 3)
    {
      v15 = 0x4449556D72616C61;
    }

    else
    {
      v15 = 0xD000000000000010;
    }

    if (v10 == 3)
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = 0x80000001007E9F30;
    }

    if (v10 == 2)
    {
      v15 = 0xD000000000000010;
      v16 = 0x80000001007E9F10;
    }

    if (v10)
    {
      v17 = 0x72656767697274;
    }

    else
    {
      v17 = 0x44497463656A626FLL;
    }

    if (v10)
    {
      v9 = 0xE700000000000000;
    }

    if (v10 <= 1)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    if (v10 <= 1)
    {
      v19 = v9;
    }

    else
    {
      v19 = v16;
    }

    if (v13 == v18 && v14 == v19)
    {
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = 0xE800000000000000;
    ++v8;
    if (v11)
    {
      return result;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_10068D520()
{
  v0._rawValue = &off_1008E12E8;
  result = sub_1005F8760(v0, &unk_10093F790, off_1008D4158);
  if (result == 4)
  {
    return result;
  }

  v2 = result;
  result = sub_1005F623C();
  if (result == 6)
  {
    return result;
  }

  v3 = result;
  v4 = 0x49746E756F636361;
  if (v2 > 1u)
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v5 = 0x65656E6769737361;
    v6 = 0xEA00000000004449;
  }

  else
  {
    v5 = 0x49746E756F636361;
    v6 = 0xE900000000000044;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
    goto LABEL_10;
  }

LABEL_11:
  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_12;
  }

  if (v2 > 1u)
  {
    if (v2 == 2)
    {
      v20 = 0x65656E6769737361;
      v21 = 0xEA00000000004449;
    }

    else
    {
      v20 = 0x74616E696769726FLL;
      v21 = 0xEC0000004449726FLL;
    }
  }

  else
  {
    if (v2)
    {
      v20 = 0x7265646E696D6572;
    }

    else
    {
      v20 = 0x49746E756F636361;
    }

    if (v2)
    {
      v21 = 0xEA00000000004449;
    }

    else
    {
      v21 = 0xE900000000000044;
    }
  }

  if (v20 == 0x7265646E696D6572 && v21 == 0xEA00000000004449)
  {
LABEL_10:

    goto LABEL_12;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_12;
  }

  if (v2 > 1u)
  {
    if (v2 != 2)
    {
      v23 = 0x74616E696769726FLL;
      v24 = 0xEC0000004449726FLL;
      goto LABEL_74;
    }

    v23 = 0x65656E6769737361;
    goto LABEL_72;
  }

  v23 = 0x49746E756F636361;
  v24 = 0xE900000000000044;
  if (v2)
  {
    v23 = 0x7265646E696D6572;
LABEL_72:
    v24 = 0xEA00000000004449;
  }

LABEL_74:
  if (v23 == 0x65656E6769737361 && v24 == 0xEA00000000004449)
  {
    goto LABEL_10;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
    if (v2 > 1u)
    {
      if (v2 != 2)
      {
        v4 = 0x74616E696769726FLL;
        v26 = 0xEC0000004449726FLL;
        goto LABEL_84;
      }

      v4 = 0x65656E6769737361;
    }

    else
    {
      v26 = 0xE900000000000044;
      if (!v2)
      {
LABEL_84:
        if (v4 != 0x74616E696769726FLL || v26 != 0xEC0000004449726FLL)
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v27 & 1) == 0)
          {
            return result;
          }

          goto LABEL_12;
        }

        goto LABEL_10;
      }

      v4 = 0x7265646E696D6572;
    }

    v26 = 0xEA00000000004449;
    goto LABEL_84;
  }

LABEL_12:
  v8 = 0;
  v9 = v3;
  while (v8 != 6)
  {
    v11 = *(&off_1008E1E10 + v8 + 32);
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v12 = 0xD000000000000014;
        v13 = 0x80000001007E8B20;
      }

      else
      {
        if (v11 == 4)
        {
          v12 = 0xD000000000000016;
        }

        else
        {
          v12 = 0xD000000000000018;
        }

        if (v11 == 4)
        {
          v13 = 0x80000001007E8B40;
        }

        else
        {
          v13 = 0x80000001007E8B60;
        }
      }
    }

    else if (*(&off_1008E1E10 + v8 + 32))
    {
      if (v11 == 1)
      {
        v12 = 0x64656E6769737361;
      }

      else
      {
        v12 = 0x737574617473;
      }

      if (v11 == 1)
      {
        v13 = 0xEC00000065746144;
      }

      else
      {
        v13 = 0xE600000000000000;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      v12 = 0x44497463656A626FLL;
    }

    v14 = 0xD000000000000016;
    if (v9 == 4)
    {
      v15 = 0x80000001007E8B40;
    }

    else
    {
      v14 = 0xD000000000000018;
      v15 = 0x80000001007E8B60;
    }

    if (v9 == 3)
    {
      v14 = 0xD000000000000014;
      v15 = 0x80000001007E8B20;
    }

    v16 = 0x64656E6769737361;
    if (v9 != 1)
    {
      v16 = 0x737574617473;
    }

    v17 = 0xEC00000065746144;
    if (v9 != 1)
    {
      v17 = 0xE600000000000000;
    }

    if (!v9)
    {
      v16 = 0x44497463656A626FLL;
      v17 = 0xE800000000000000;
    }

    if (v9 <= 2)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    if (v9 <= 2)
    {
      v19 = v17;
    }

    else
    {
      v19 = v15;
    }

    if (v12 == v18 && v13 == v19)
    {
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v8;
    if (v10)
    {
      return result;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_10068DC48()
{
  v0._rawValue = &off_1008E14E8;
  result = sub_1005F7EC0(v0, &qword_100944EC8, off_1008D41F0);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008E0AD8;
  result = sub_1005F65A4(v3, &qword_100944EC8, off_1008D41F0);
  if (result == 4)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x7265646E696D6572;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xEA00000000004449;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x7265646E696D6572 || v6 != 0xEA00000000004449)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v8 = 0x44497463656A626FLL;
  if (v4 <= 1u && !v4)
  {
LABEL_23:
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    if (v4 > 1u)
    {
      if (v4 == 2)
      {
        v11 = 0xE300000000000000;
        v12 = 7107189;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x617461646174656DLL;
      }
    }

    else if (v4)
    {
      v11 = 0xE300000000000000;
      v12 = 6911093;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x44497463656A626FLL;
    }

    if (v12 == 6911093 && v11 == 0xE300000000000000)
    {
      goto LABEL_23;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      if (v4 > 1u)
      {
        if (v4 == 2)
        {
          v14 = 0xE300000000000000;
          v15 = 7107189;
        }

        else
        {
          v14 = 0xE800000000000000;
          v15 = 0x617461646174656DLL;
        }
      }

      else if (v4)
      {
        v14 = 0xE300000000000000;
        v15 = 6911093;
      }

      else
      {
        v14 = 0xE800000000000000;
        v15 = 0x44497463656A626FLL;
      }

      if (v15 == 7107189 && v14 == 0xE300000000000000)
      {
        goto LABEL_23;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        if (v4 > 1u)
        {
          if (v4 == 2)
          {
            v17 = 0xE300000000000000;
            v8 = 7107189;
          }

          else
          {
            v17 = 0xE800000000000000;
            v8 = 0x617461646174656DLL;
          }
        }

        else if (v4)
        {
          v17 = 0xE300000000000000;
          v8 = 6911093;
        }

        else
        {
          v17 = 0xE800000000000000;
        }

        if (v8 == 0x617461646174656DLL && v17 == 0xE800000000000000)
        {
          goto LABEL_23;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          sub_1006ABFBC();
          swift_allocError();
          return swift_willThrow();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10068E204()
{
  v0._rawValue = &off_1008E16E8;
  result = sub_1005F7EC0(v0, &unk_100944ED0, off_1008D41A0);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008E0D68;
  result = sub_1005F7674(v3, &unk_100944ED0, off_1008D41A0);
  if (result == 7)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x7265646E696D6572;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xEA00000000004449;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x7265646E696D6572 || v6 != 0xEA00000000004449)
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v8 = 0;
  v9 = v4;
  while (v8 != 7)
  {
    v11 = *(&off_1008E1EB0 + v8 + 32);
    if (v11 <= 2)
    {
      if (*(&off_1008E1EB0 + v8 + 32))
      {
        if (v11 == 1)
        {
          v12 = 6911093;
        }

        else
        {
          v12 = 0x657A6953656C6966;
        }

        if (v11 == 1)
        {
          v13 = 0xE300000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        v12 = 0x44497463656A626FLL;
      }
    }

    else if (*(&off_1008E1EB0 + v8 + 32) > 4u)
    {
      if (v11 == 5)
      {
        v13 = 0xE500000000000000;
        v12 = 0x6874646977;
      }

      else
      {
        v13 = 0xE600000000000000;
        v12 = 0x746867696568;
      }
    }

    else
    {
      if (v11 == 3)
      {
        v12 = 0x4C5255656C6966;
      }

      else
      {
        v12 = 0xD000000000000012;
      }

      if (v11 == 3)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0x80000001007EA7D0;
      }
    }

    v14 = 0x746867696568;
    if (v9 == 5)
    {
      v14 = 0x6874646977;
    }

    v15 = 0xE500000000000000;
    if (v9 != 5)
    {
      v15 = 0xE600000000000000;
    }

    v16 = 0xD000000000000012;
    if (v9 == 3)
    {
      v16 = 0x4C5255656C6966;
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0x80000001007EA7D0;
    }

    if (v9 <= 4)
    {
      v14 = v16;
      v15 = v17;
    }

    v18 = 0x657A6953656C6966;
    if (v9 == 1)
    {
      v18 = 6911093;
      v19 = 0xE300000000000000;
    }

    else
    {
      v19 = 0xE800000000000000;
    }

    if (!v9)
    {
      v18 = 0x44497463656A626FLL;
      v19 = 0xE800000000000000;
    }

    if (v9 <= 2)
    {
      v20 = v18;
    }

    else
    {
      v20 = v14;
    }

    if (v9 <= 2)
    {
      v21 = v19;
    }

    else
    {
      v21 = v15;
    }

    if (v12 == v20 && v13 == v21)
    {
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v8;
    if (v10)
    {
      return result;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_10068E5A8()
{
  v0._rawValue = &off_1008E1610;
  result = sub_1005F7EC0(v0, &qword_100939DF0, off_1008D4188);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008E0B58;
  result = sub_1005F6904(v3, &qword_100939DF0, off_1008D4188);
  if (result == 5)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x7265646E696D6572;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xEA00000000004449;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x7265646E696D6572 || v6 != 0xEA00000000004449)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v8 = 0;
  v9 = v4;
  while (v8 != 5)
  {
    v11 = *(&off_1008E1F00 + v8 + 32);
    if (v11 <= 1)
    {
      if (*(&off_1008E1F00 + v8 + 32))
      {
        v12 = 6911093;
      }

      else
      {
        v12 = 0x44497463656A626FLL;
      }

      if (*(&off_1008E1F00 + v8 + 32))
      {
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE800000000000000;
      }
    }

    else if (v11 == 2)
    {
      v13 = 0xE800000000000000;
      v12 = 0x657A6953656C6966;
    }

    else
    {
      if (v11 == 3)
      {
        v12 = 0x4C5255656C6966;
      }

      else
      {
        v12 = 0xD000000000000012;
      }

      if (v11 == 3)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0x80000001007EA7D0;
      }
    }

    if (v9 == 3)
    {
      v14 = 0x4C5255656C6966;
    }

    else
    {
      v14 = 0xD000000000000012;
    }

    if (v9 == 3)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0x80000001007EA7D0;
    }

    if (v9 == 2)
    {
      v14 = 0x657A6953656C6966;
      v15 = 0xE800000000000000;
    }

    if (v9)
    {
      v16 = 6911093;
    }

    else
    {
      v16 = 0x44497463656A626FLL;
    }

    if (v9)
    {
      v17 = 0xE300000000000000;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    if (v9 <= 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    if (v9 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v15;
    }

    if (v12 == v18 && v13 == v19)
    {
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v8;
    if (v10)
    {
      return result;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_10068E8C8()
{
  v0._rawValue = &off_1008E1698;
  result = sub_1005F7EC0(v0, &qword_100940C50, off_1008D41C8);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  result = sub_1005F6AB0(sub_1003BF13C, &qword_100940C50, off_1008D41C8);
  if (result == 11)
  {
    return result;
  }

  v3 = result;
  if (v2)
  {
    v4 = 0x7265646E696D6572;
  }

  else
  {
    v4 = 0x49746E756F636361;
  }

  if (v2)
  {
    v5 = 0xEA00000000004449;
  }

  else
  {
    v5 = 0xE900000000000044;
  }

  if (v4 == 0x49746E756F636361 && v5 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    if (v4 != 0x7265646E696D6572 || v5 != 0xEA00000000004449)
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v7 = 0;
  v8 = v3;
  while (v7 != 11)
  {
    v10 = *(&off_1008E1F50 + v7 + 32);
    if (v10 <= 4)
    {
      v13 = 0xE900000000000079;
      if (v10 == 3)
      {
        v14 = 0x6C61767265746E69;
      }

      else
      {
        v14 = 0xD000000000000011;
      }

      if (v10 == 3)
      {
        v15 = 0xE800000000000000;
      }

      else
      {
        v15 = 0x80000001007EA820;
      }

      if (v10 == 2)
      {
        v14 = 0x636E657571657266;
      }

      else
      {
        v13 = v15;
      }

      if (*(&off_1008E1F50 + v7 + 32))
      {
        v16 = 0x6E65727275636572;
      }

      else
      {
        v16 = 0x44497463656A626FLL;
      }

      if (*(&off_1008E1F50 + v7 + 32))
      {
        v17 = 0xED0000646E456563;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      if (*(&off_1008E1F50 + v7 + 32) <= 1u)
      {
        v11 = v16;
      }

      else
      {
        v11 = v14;
      }

      if (*(&off_1008E1F50 + v7 + 32) <= 1u)
      {
        v12 = v17;
      }

      else
      {
        v12 = v13;
      }
    }

    else if (*(&off_1008E1F50 + v7 + 32) > 7u)
    {
      if (v10 == 8)
      {
        v11 = 0x54664F736B656577;
        v12 = 0xEE00726165596568;
      }

      else if (v10 == 9)
      {
        v11 = 0x664F7368746E6F6DLL;
        v12 = 0xEF72616559656854;
      }

      else
      {
        v11 = 0x7469736F50746573;
        v12 = 0xEC000000736E6F69;
      }
    }

    else
    {
      v11 = 0x6854664F73796164;
      if (v10 == 5)
      {
        v12 = 0xED00006B65655765;
      }

      else if (v10 == 6)
      {
        v12 = 0xEE0068746E6F4D65;
      }

      else
      {
        v12 = 0xED00007261655965;
      }
    }

    v18 = 0x7469736F50746573;
    if (v8 == 9)
    {
      v18 = 0x664F7368746E6F6DLL;
    }

    v19 = 0xEF72616559656854;
    if (v8 != 9)
    {
      v19 = 0xEC000000736E6F69;
    }

    if (v8 == 8)
    {
      v18 = 0x54664F736B656577;
      v19 = 0xEE00726165596568;
    }

    v20 = 0xEE0068746E6F4D65;
    if (v8 != 6)
    {
      v20 = 0xED00007261655965;
    }

    if (v8 == 5)
    {
      v20 = 0xED00006B65655765;
    }

    if (v8 <= 7)
    {
      v18 = 0x6854664F73796164;
      v19 = v20;
    }

    v21 = 0xE900000000000079;
    if (v8 == 3)
    {
      v22 = 0x6C61767265746E69;
    }

    else
    {
      v22 = 0xD000000000000011;
    }

    if (v8 == 3)
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v23 = 0x80000001007EA820;
    }

    if (v8 == 2)
    {
      v22 = 0x636E657571657266;
    }

    else
    {
      v21 = v23;
    }

    if (v8)
    {
      v24 = 0x6E65727275636572;
    }

    else
    {
      v24 = 0x44497463656A626FLL;
    }

    if (v8)
    {
      v25 = 0xED0000646E456563;
    }

    else
    {
      v25 = 0xE800000000000000;
    }

    if (v8 <= 1)
    {
      v22 = v24;
      v21 = v25;
    }

    if (v8 <= 4)
    {
      v26 = v22;
    }

    else
    {
      v26 = v18;
    }

    if (v8 <= 4)
    {
      v27 = v21;
    }

    else
    {
      v27 = v19;
    }

    if (v11 == v26 && v12 == v27)
    {
    }

    v9 = v7;
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v9 + 1;
    if (v29)
    {
      return result;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_10068EDEC(void *a1, uint64_t a2)
{
  v4 = [a1 remObjectID];
  v5 = v4;
  if (*(a2 + 16))
  {
    sub_10002B924(v4);
  }

  v6 = [a1 remObjectID];
  v7 = v6;
  if (*(a2 + 16))
  {
    sub_10002B924(v6);
  }

  v8._rawValue = &off_1008E1298;
  result = sub_1005F7EC0(v8, &qword_100942E50, off_1008D41E0);
  if (result != 2)
  {
    v10 = result;
    result = sub_1005F6AB0(sub_10047B0C4, &qword_100942E50, off_1008D41E0);
    if (result != 11)
    {
      v11 = result;
      if (v10)
      {
        v12 = 0x44497473696CLL;
      }

      else
      {
        v12 = 0x49746E756F636361;
      }

      if (v10)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE900000000000044;
      }

      if (v12 == 0x49746E756F636361 && v13 == 0xE900000000000044)
      {
        goto LABEL_15;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_17;
      }

      if (v12 == 0x44497473696CLL && v13 == 0xE600000000000000)
      {
LABEL_15:

LABEL_17:
        v15 = 0;
        v16 = 0x4E79616C70736964;
        v17 = v11;
        while (1)
        {
          if (v15 == 11)
          {
            sub_1006ABFBC();
            swift_allocError();
            return swift_willThrow();
          }

          v19 = *(&off_1008E1FA8 + v15 + 32);
          if (v19 <= 4)
          {
            v21 = 0xE900000000000065;
            if (v19 == 3)
            {
              v22 = 0x614E656C6464696DLL;
            }

            else
            {
              v22 = 0x656D614E7473616CLL;
            }

            if (v19 == 3)
            {
              v23 = 0xEA0000000000656DLL;
            }

            else
            {
              v23 = 0xE800000000000000;
            }

            if (v19 == 2)
            {
              v22 = 0x6D614E7473726966;
            }

            else
            {
              v21 = v23;
            }

            if (*(&off_1008E1FA8 + v15 + 32))
            {
              v24 = v16;
            }

            else
            {
              v24 = 0x44497463656A626FLL;
            }

            if (*(&off_1008E1FA8 + v15 + 32))
            {
              v25 = 0xEB00000000656D61;
            }

            else
            {
              v25 = 0xE800000000000000;
            }

            if (*(&off_1008E1FA8 + v15 + 32) <= 1u)
            {
              v20 = v24;
            }

            else
            {
              v20 = v22;
            }

            if (*(&off_1008E1FA8 + v15 + 32) <= 1u)
            {
              v26 = v25;
            }

            else
            {
              v26 = v21;
            }
          }

          else if (*(&off_1008E1FA8 + v15 + 32) > 7u)
          {
            if (v19 == 8)
            {
              v26 = 0xE700000000000000;
              v20 = 0x73736572646461;
            }

            else if (v19 == 9)
            {
              v26 = 0xE600000000000000;
              v20 = 0x737574617473;
            }

            else
            {
              v20 = 0x654C737365636361;
              v26 = 0xEB000000006C6576;
            }
          }

          else
          {
            if (v19 == 5)
            {
              v20 = 0x66657250656D616ELL;
              goto LABEL_50;
            }

            if (v19 == 6)
            {
              v20 = 0x66667553656D616ELL;
LABEL_50:
              v26 = 0xEA00000000007869;
              goto LABEL_54;
            }

            v26 = 0xE800000000000000;
            v20 = 0x656D616E6B63696ELL;
          }

LABEL_54:
          v27 = 0x654C737365636361;
          if (v17 == 9)
          {
            v27 = 0x737574617473;
          }

          v28 = 0xEB000000006C6576;
          if (v17 == 9)
          {
            v28 = 0xE600000000000000;
          }

          if (v17 == 8)
          {
            v27 = 0x73736572646461;
            v28 = 0xE700000000000000;
          }

          v29 = 0x66667553656D616ELL;
          if (v17 == 6)
          {
            v30 = 0xEA00000000007869;
          }

          else
          {
            v29 = 0x656D616E6B63696ELL;
            v30 = 0xE800000000000000;
          }

          if (v17 == 5)
          {
            v29 = 0x66657250656D616ELL;
            v30 = 0xEA00000000007869;
          }

          if (v17 <= 7)
          {
            v27 = v29;
            v28 = v30;
          }

          v31 = 0xE900000000000065;
          if (v17 == 3)
          {
            v32 = 0x614E656C6464696DLL;
          }

          else
          {
            v32 = 0x656D614E7473616CLL;
          }

          if (v17 == 3)
          {
            v33 = 0xEA0000000000656DLL;
          }

          else
          {
            v33 = 0xE800000000000000;
          }

          if (v17 == 2)
          {
            v32 = 0x6D614E7473726966;
          }

          else
          {
            v31 = v33;
          }

          if (v17)
          {
            v34 = v16;
          }

          else
          {
            v34 = 0x44497463656A626FLL;
          }

          if (v17)
          {
            v35 = 0xEB00000000656D61;
          }

          else
          {
            v35 = 0xE800000000000000;
          }

          if (v17 <= 1)
          {
            v32 = v34;
            v31 = v35;
          }

          if (v17 <= 4)
          {
            v36 = v32;
          }

          else
          {
            v36 = v27;
          }

          if (v17 <= 4)
          {
            v37 = v31;
          }

          else
          {
            v37 = v28;
          }

          if (v20 == v36 && v26 == v37)
          {
          }

          v18 = v16;
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v16 = v18;
          ++v15;
          if (v39)
          {
            return result;
          }
        }
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_10068F32C(void *a1, uint64_t a2)
{
  v4 = [a1 remObjectID];
  v5 = v4;
  if (*(a2 + 16))
  {
    sub_10002B924(v4);
  }

  v6 = [a1 remObjectID];
  v7 = v6;
  if (*(a2 + 16))
  {
    sub_10002B924(v6);
  }

  v8._rawValue = &off_1008E19E8;
  result = sub_1005F7EC0(v8, &qword_10094F150, off_1008D4178);
  if (result == 2)
  {
    return result;
  }

  v10 = result;
  v11._rawValue = &off_1008E0F30;
  result = sub_1005F7674(v11, &qword_10094F150, off_1008D4178);
  if (result == 7)
  {
    return result;
  }

  v12 = result;
  if (v10)
  {
    v13 = 0x44497473696CLL;
  }

  else
  {
    v13 = 0x49746E756F636361;
  }

  if (v10)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE900000000000044;
  }

  if (v13 == 0x49746E756F636361 && v14 == 0xE900000000000044)
  {
LABEL_15:

    goto LABEL_17;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
    if (v13 != 0x44497473696CLL || v14 != 0xE600000000000000)
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_17:
  v16 = 0;
  v17 = v12;
  while (v16 != 7)
  {
    v19 = *(&off_1008E2000 + v16 + 32);
    if (v19 <= 2)
    {
      if (*(&off_1008E2000 + v16 + 32))
      {
        if (v19 == 1)
        {
          v20 = 0x6972745364697575;
        }

        else
        {
          v20 = 0x4C525574736F68;
        }

        if (v19 == 1)
        {
          v21 = 0xEA0000000000676ELL;
        }

        else
        {
          v21 = 0xE700000000000000;
        }
      }

      else
      {
        v21 = 0xE800000000000000;
        v20 = 0x44497463656A626FLL;
      }
    }

    else if (*(&off_1008E2000 + v16 + 32) > 4u)
    {
      if (v19 == 5)
      {
        v20 = 0x6F54636E79536164;
        v21 = 0xEB000000006E656BLL;
      }

      else
      {
        v21 = 0xE900000000000079;
        v20 = 0x654B687375506164;
      }
    }

    else
    {
      if (v19 == 3)
      {
        v20 = 0xD000000000000012;
      }

      else
      {
        v20 = 0xD000000000000017;
      }

      if (v19 == 3)
      {
        v21 = 0x80000001007EA030;
      }

      else
      {
        v21 = 0x80000001007EA050;
      }
    }

    v22 = 0xE900000000000079;
    v23 = 0x6F54636E79536164;
    if (v17 == 5)
    {
      v22 = 0xEB000000006E656BLL;
    }

    else
    {
      v23 = 0x654B687375506164;
    }

    v24 = 0xD000000000000017;
    if (v17 == 3)
    {
      v24 = 0xD000000000000012;
      v25 = 0x80000001007EA030;
    }

    else
    {
      v25 = 0x80000001007EA050;
    }

    if (v17 <= 4)
    {
      v23 = v24;
      v22 = v25;
    }

    v26 = 0x6972745364697575;
    if (v17 != 1)
    {
      v26 = 0x4C525574736F68;
    }

    v27 = 0xEA0000000000676ELL;
    if (v17 != 1)
    {
      v27 = 0xE700000000000000;
    }

    if (!v17)
    {
      v26 = 0x44497463656A626FLL;
      v27 = 0xE800000000000000;
    }

    if (v17 <= 2)
    {
      v28 = v26;
    }

    else
    {
      v28 = v23;
    }

    if (v17 <= 2)
    {
      v29 = v27;
    }

    else
    {
      v29 = v22;
    }

    if (v20 == v28 && v21 == v29)
    {
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v16;
    if (v18)
    {
      return result;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  return swift_willThrow();
}

void *sub_10068F774(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F56BC(v7, &off_1008E0238, sub_1003665B0, &qword_10094F830, &qword_1007B5228);

  return v8;
}

void *sub_10068F844(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5104(v7, &off_1008E0200, sub_1003664B0, &unk_10094F838, &qword_1007B5230);

  return v8;
}

uint64_t sub_10068F914(void *a1, uint64_t a2)
{
  result = sub_10068F774(a1, a2);
  if (!v2)
  {
    v6 = result;
    v7 = sub_10068F844(a1, a2);
    v8._rawValue = &off_1008E1C20;
    if (sub_1005F8918(v8, type metadata accessor for REMCDDueDateDeltaAlert) || (v9 = sub_1005F74D0(), v9 == 6))
    {
    }

    v10 = v9;
    v11 = v7[2];

    if (!v11)
    {
    }

    v12 = 0;
    v28 = *(v6 + 16);
    v13 = 0x80000001007EA710;
    v27 = v10;
    while (1)
    {
      if (v28 == v12)
      {

        sub_1006ABFBC();
        swift_allocError();
        return swift_willThrow();
      }

      if (v12 >= *(v6 + 16))
      {
        break;
      }

      v16 = *(v6 + v12 + 32);
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v19 = 0x6E6F697461657263;
          v20 = 0xEC00000065746144;
        }

        else
        {
          if (v16 == 4)
          {
            v19 = 0xD000000000000010;
          }

          else
          {
            v19 = 0xD00000000000001ALL;
          }

          if (v16 == 4)
          {
            v20 = 0x80000001007E9F10;
          }

          else
          {
            v20 = 0x80000001007EA730;
          }
        }
      }

      else
      {
        v17 = 0xD000000000000012;
        if (v16 == 1)
        {
          v18 = v13;
        }

        else
        {
          v17 = 0x4465746144657564;
          v18 = 0xEC00000061746C65;
        }

        if (*(v6 + v12 + 32))
        {
          v19 = v17;
        }

        else
        {
          v19 = 0x44497463656A626FLL;
        }

        if (*(v6 + v12 + 32))
        {
          v20 = v18;
        }

        else
        {
          v20 = 0xE800000000000000;
        }
      }

      v21 = 0xD00000000000001ALL;
      if (v27 == 4)
      {
        v21 = 0xD000000000000010;
      }

      v22 = 0x80000001007EA730;
      if (v27 == 4)
      {
        v22 = 0x80000001007E9F10;
      }

      if (v27 == 3)
      {
        v21 = 0x6E6F697461657263;
        v22 = 0xEC00000065746144;
      }

      v23 = 0xD000000000000012;
      if (v27 == 1)
      {
        v24 = v13;
      }

      else
      {
        v23 = 0x4465746144657564;
        v24 = 0xEC00000061746C65;
      }

      if (!v27)
      {
        v23 = 0x44497463656A626FLL;
        v24 = 0xE800000000000000;
      }

      if (v27 <= 2)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      if (v27 <= 2)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v19 == v25 && v20 == v26)
      {
      }

      v14 = v13;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v13 = v14;
      ++v12;
      if (v15)
      {
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10068FBF4(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5F50(v7, &off_1008E06A0, sub_100366628, &qword_10094F1D8, &qword_1007B4DC0);

  return v8;
}

void *sub_10068FCC4(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008E0650, sub_100366614, &qword_10094F1E0, &qword_1007B4DC8);

  return v8;
}

uint64_t sub_10068FD94(void *a1, uint64_t a2)
{
  result = sub_10068FBF4(a1, a2);
  if (!v2)
  {
    v6 = result;
    v7 = sub_10068FCC4(a1, a2);
    v8._rawValue = &off_1008E1B48;
    v9 = sub_1005F83FC(v8, type metadata accessor for REMCDTemplateSection);
    if (v9 != 2)
    {
      v10 = v9;
      v11._rawValue = &off_1008E1148;
      result = sub_1005F7D1C(v11, type metadata accessor for REMCDTemplateSection);
      if (result != 4)
      {
        v39 = result;
        v12 = 0;
        v13 = v7[2];
        if (v10)
        {
          v14 = 0x4449746E65726170;
        }

        else
        {
          v14 = 0x49746E756F636361;
        }

        if (v10)
        {
          v15 = 0xE800000000000000;
        }

        else
        {
          v15 = 0xE900000000000044;
        }

        while (v13 != v12)
        {
          if (v12 >= v7[2])
          {
            __break(1u);
LABEL_74:
            __break(1u);
            return result;
          }

          if (*(v7 + v12 + 32))
          {
            v16 = 0x4449746E65726170;
          }

          else
          {
            v16 = 0x49746E756F636361;
          }

          if (*(v7 + v12 + 32))
          {
            v17 = 0xE800000000000000;
          }

          else
          {
            v17 = 0xE900000000000044;
          }

          if (v16 == v14 && v17 == v15)
          {

LABEL_29:
            v20 = 0xEC00000065746144;
            v21 = 0x6E6F697461657263;

            v22 = 0;
            v40 = *(v6 + 16);
            while (v40 != v22)
            {
              if (v22 >= *(v6 + 16))
              {
                goto LABEL_74;
              }

              v24 = *(v6 + v22 + 32);
              if (v24 == 2)
              {
                v25 = v21;
              }

              else
              {
                v25 = 0x4E79616C70736964;
              }

              if (v24 == 2)
              {
                v26 = v20;
              }

              else
              {
                v26 = 0xEB00000000656D61;
              }

              if (*(v6 + v22 + 32))
              {
                v27 = 0xD000000000000017;
              }

              else
              {
                v27 = 0x44497463656A626FLL;
              }

              if (*(v6 + v22 + 32))
              {
                v28 = 0x80000001007E8C60;
              }

              else
              {
                v28 = 0xE800000000000000;
              }

              if (*(v6 + v22 + 32) <= 1u)
              {
                v29 = v27;
              }

              else
              {
                v29 = v25;
              }

              if (*(v6 + v22 + 32) <= 1u)
              {
                v30 = v28;
              }

              else
              {
                v30 = v26;
              }

              v31 = v21;
              if (v39 == 2)
              {
                v32 = v21;
              }

              else
              {
                v32 = 0x4E79616C70736964;
              }

              v33 = v20;
              if (v39 == 2)
              {
                v34 = v20;
              }

              else
              {
                v34 = 0xEB00000000656D61;
              }

              if (v39)
              {
                v35 = 0xD000000000000017;
              }

              else
              {
                v35 = 0x44497463656A626FLL;
              }

              if (v39)
              {
                v36 = 0x80000001007E8C60;
              }

              else
              {
                v36 = 0xE800000000000000;
              }

              if (v39 <= 1u)
              {
                v37 = v35;
              }

              else
              {
                v37 = v32;
              }

              if (v39 <= 1u)
              {
                v38 = v36;
              }

              else
              {
                v38 = v34;
              }

              if (v29 == v37 && v30 == v38)
              {
              }

              v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

              ++v22;
              v20 = v33;
              v21 = v31;
              if (v23)
              {
              }
            }

            sub_1006ABFBC();
            swift_allocError();
            return swift_willThrow();
          }

          ++v12;
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  return result;
}

void *sub_100690100(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5F50(v7, &off_1008E0770, sub_100366650, &unk_10094F218, &qword_1007B4DF8);

  return v8;
}

void *sub_1006901D0(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008E0720, sub_10036663C, &qword_10094F228, &qword_1007B4E00);

  return v8;
}

uint64_t sub_1006902A0(void *a1, uint64_t a2)
{
  result = sub_100690100(a1, a2);
  if (!v2)
  {
    v6 = result;
    v7 = sub_1006901D0(a1, a2);
    v8._rawValue = &off_1008E1B98;
    v9 = sub_1005F83FC(v8, type metadata accessor for REMCDSmartListSection);
    if (v9 != 2)
    {
      v10 = v9;
      v11._rawValue = &off_1008E11C8;
      result = sub_1005F7D1C(v11, type metadata accessor for REMCDSmartListSection);
      if (result != 4)
      {
        v39 = result;
        v12 = 0;
        v13 = v7[2];
        if (v10)
        {
          v14 = 0x4449746E65726170;
        }

        else
        {
          v14 = 0x49746E756F636361;
        }

        if (v10)
        {
          v15 = 0xE800000000000000;
        }

        else
        {
          v15 = 0xE900000000000044;
        }

        while (v13 != v12)
        {
          if (v12 >= v7[2])
          {
            __break(1u);
LABEL_74:
            __break(1u);
            return result;
          }

          if (*(v7 + v12 + 32))
          {
            v16 = 0x4449746E65726170;
          }

          else
          {
            v16 = 0x49746E756F636361;
          }

          if (*(v7 + v12 + 32))
          {
            v17 = 0xE800000000000000;
          }

          else
          {
            v17 = 0xE900000000000044;
          }

          if (v16 == v14 && v17 == v15)
          {

LABEL_29:
            v20 = 0xEC00000065746144;
            v21 = 0x6E6F697461657263;

            v22 = 0;
            v40 = *(v6 + 16);
            while (v40 != v22)
            {
              if (v22 >= *(v6 + 16))
              {
                goto LABEL_74;
              }

              v24 = *(v6 + v22 + 32);
              if (v24 == 2)
              {
                v25 = v21;
              }

              else
              {
                v25 = 0x4E79616C70736964;
              }

              if (v24 == 2)
              {
                v26 = v20;
              }

              else
              {
                v26 = 0xEB00000000656D61;
              }

              if (*(v6 + v22 + 32))
              {
                v27 = 0xD000000000000017;
              }

              else
              {
                v27 = 0x44497463656A626FLL;
              }

              if (*(v6 + v22 + 32))
              {
                v28 = 0x80000001007E8C60;
              }

              else
              {
                v28 = 0xE800000000000000;
              }

              if (*(v6 + v22 + 32) <= 1u)
              {
                v29 = v27;
              }

              else
              {
                v29 = v25;
              }

              if (*(v6 + v22 + 32) <= 1u)
              {
                v30 = v28;
              }

              else
              {
                v30 = v26;
              }

              v31 = v21;
              if (v39 == 2)
              {
                v32 = v21;
              }

              else
              {
                v32 = 0x4E79616C70736964;
              }

              v33 = v20;
              if (v39 == 2)
              {
                v34 = v20;
              }

              else
              {
                v34 = 0xEB00000000656D61;
              }

              if (v39)
              {
                v35 = 0xD000000000000017;
              }

              else
              {
                v35 = 0x44497463656A626FLL;
              }

              if (v39)
              {
                v36 = 0x80000001007E8C60;
              }

              else
              {
                v36 = 0xE800000000000000;
              }

              if (v39 <= 1u)
              {
                v37 = v35;
              }

              else
              {
                v37 = v32;
              }

              if (v39 <= 1u)
              {
                v38 = v36;
              }

              else
              {
                v38 = v34;
              }

              if (v29 == v37 && v30 == v38)
              {
              }

              v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

              ++v22;
              v20 = v33;
              v21 = v31;
              if (v23)
              {
              }
            }

            sub_1006ABFBC();
            swift_allocError();
            return swift_willThrow();
          }

          ++v12;
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  return result;
}

void *sub_10069060C(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008E02E8, sub_1003665C4, &qword_10094F268, &qword_1007B4E38);

  return v8;
}

uint64_t sub_1006906DC(void *a1, uint64_t a2)
{
  result = sub_100692848(a1, a2, &type metadata for REMListSectionStorageCDIngestor.ValueKey, sub_1005F59A8);
  if (!v2)
  {
    v6 = result;
    v7 = sub_10069060C(a1, a2);
    v8._rawValue = &off_1008E1A38;
    v9 = sub_1005F83FC(v8, type metadata accessor for REMCDListSection);
    if (v9 != 2)
    {
      v10 = v9;
      result = sub_1005F7820();
      if (result != 5)
      {
        v34 = result;
        v11 = 0;
        v12 = v7[2];
        if (v10)
        {
          v13 = 0x4449746E65726170;
        }

        else
        {
          v13 = 0x49746E756F636361;
        }

        if (v10)
        {
          v14 = 0xE800000000000000;
        }

        else
        {
          v14 = 0xE900000000000044;
        }

        while (v12 != v11)
        {
          if (v11 >= v7[2])
          {
            __break(1u);
LABEL_72:
            __break(1u);
            return result;
          }

          if (*(v7 + v11 + 32))
          {
            v15 = 0x4449746E65726170;
          }

          else
          {
            v15 = 0x49746E756F636361;
          }

          if (*(v7 + v11 + 32))
          {
            v16 = 0xE800000000000000;
          }

          else
          {
            v16 = 0xE900000000000044;
          }

          if (v15 == v13 && v16 == v14)
          {

LABEL_29:
            v19 = 0xEB00000000656D61;
            v20 = 0x6163696E6F6E6163;

            v21 = 0;
            v35 = *(v6 + 16);
            while (v35 != v21)
            {
              if (v21 >= *(v6 + 16))
              {
                goto LABEL_72;
              }

              v23 = *(v6 + v21 + 32);
              v24 = 0xED0000656D614E6CLL;
              if (v23 <= 1)
              {
                if (*(v6 + v21 + 32))
                {
                  v25 = 0xD000000000000017;
                }

                else
                {
                  v25 = 0x44497463656A626FLL;
                }

                if (*(v6 + v21 + 32))
                {
                  v26 = 0x80000001007E8C60;
                }

                else
                {
                  v26 = 0xE800000000000000;
                }
              }

              else if (v23 == 2)
              {
                v25 = 0x6E6F697461657263;
                v26 = 0xEC00000065746144;
              }

              else
              {
                if (v23 == 3)
                {
                  v25 = 0x4E79616C70736964;
                }

                else
                {
                  v25 = v20;
                }

                if (v23 == 3)
                {
                  v26 = v19;
                }

                else
                {
                  v26 = 0xED0000656D614E6CLL;
                }
              }

              v27 = v20;
              if (v34 == 3)
              {
                v28 = 0x4E79616C70736964;
              }

              else
              {
                v28 = v20;
              }

              v29 = v19;
              if (v34 == 3)
              {
                v24 = v19;
              }

              if (v34 == 2)
              {
                v28 = 0x6E6F697461657263;
                v24 = 0xEC00000065746144;
              }

              if (v34)
              {
                v30 = 0xD000000000000017;
              }

              else
              {
                v30 = 0x44497463656A626FLL;
              }

              if (v34)
              {
                v31 = 0x80000001007E8C60;
              }

              else
              {
                v31 = 0xE800000000000000;
              }

              if (v34 <= 1u)
              {
                v32 = v30;
              }

              else
              {
                v32 = v28;
              }

              if (v34 <= 1u)
              {
                v33 = v31;
              }

              else
              {
                v33 = v24;
              }

              if (v25 == v32 && v26 == v33)
              {
              }

              v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

              ++v21;
              v19 = v29;
              v20 = v27;
              if (v22)
              {
              }
            }

            sub_1006ABFBC();
            swift_allocError();
            return swift_willThrow();
          }

          ++v11;
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  return result;
}

void *sub_100690A9C(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F4B38(v7, &off_1008DFDF8, sub_100366438, &qword_10094F2B8, &qword_1007B4E78);

  return v8;
}

uint64_t sub_100690B6C(void *a1, uint64_t a2)
{
  result = sub_100692848(a1, a2, &type metadata for REMTemplateStorageCDIngestor.ValueKey, sub_1005F4E24);
  if (v2)
  {
    return result;
  }

  v6 = result;
  v7 = sub_100690A9C(a1, a2);
  v8 = sub_1005F85B0();
  if (v8 != 3)
  {
    v9 = v8;
    result = sub_1005F6FC8();
    if (result != 12)
    {
      v37 = result;
      v10 = 0;
      v38 = v7[2];
      while (v38 != v10)
      {
        if (v10 >= v7[2])
        {
          __break(1u);
LABEL_106:
          __break(1u);
          return result;
        }

        v12 = *(v7 + v10 + 32);
        v13 = 0x6341746E65726170;
        if (v12 != 1)
        {
          v13 = 0xD000000000000014;
        }

        v14 = 0xEF4449746E756F63;
        if (v12 != 1)
        {
          v14 = 0x80000001007E9FD0;
        }

        if (*(v7 + v10 + 32))
        {
          v15 = v13;
        }

        else
        {
          v15 = 0x49746E756F636361;
        }

        if (*(v7 + v10 + 32))
        {
          v16 = v14;
        }

        else
        {
          v16 = 0xE900000000000044;
        }

        if (v9)
        {
          if (v9 == 1)
          {
            v17 = 0x6341746E65726170;
          }

          else
          {
            v17 = 0xD000000000000014;
          }

          if (v9 == 1)
          {
            v18 = 0xEF4449746E756F63;
          }

          else
          {
            v18 = 0x80000001007E9FD0;
          }

          if (v15 != v17)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v18 = 0xE900000000000044;
          if (v15 != 0x49746E756F636361)
          {
            goto LABEL_8;
          }
        }

        if (v16 == v18)
        {

LABEL_34:

          v19 = 0;
          v39 = *(v6 + 16);
          while (v39 != v19)
          {
            if (v19 >= *(v6 + 16))
            {
              goto LABEL_106;
            }

            v21 = *(v6 + v19 + 32);
            if (v21 > 5)
            {
              if (*(v6 + v19 + 32) > 8u)
              {
                if (v21 == 9)
                {
                  v26 = 0xD00000000000001CLL;
                  v27 = 0x80000001007EA010;
                }

                else if (v21 == 10)
                {
                  v26 = 0xD000000000000019;
                  v27 = 0x80000001007EA240;
                }

                else
                {
                  v26 = 0xD000000000000027;
                  v27 = 0x80000001007EA260;
                }
              }

              else if (v21 == 6)
              {
                v26 = 0xD000000000000017;
                v27 = 0x80000001007E8D40;
              }

              else if (v21 == 7)
              {
                v26 = 0x53676E6974726F73;
                v27 = 0xEC000000656C7974;
              }

              else
              {
                v26 = 0xD000000000000015;
                v27 = 0x80000001007EA6E0;
              }
            }

            else
            {
              v22 = 0x626D456567646162;
              if (v21 == 4)
              {
                v22 = 0x726F6C6F63;
              }

              v23 = 0xEB000000006D656CLL;
              if (v21 == 4)
              {
                v23 = 0xE500000000000000;
              }

              if (v21 == 3)
              {
                v22 = 1701667182;
                v23 = 0xE400000000000000;
              }

              v24 = 0x72756769666E6F63;
              if (v21 == 1)
              {
                v24 = 0xD000000000000017;
                v25 = 0x80000001007E8C60;
              }

              else
              {
                v25 = 0xED00006E6F697461;
              }

              if (!*(v6 + v19 + 32))
              {
                v24 = 0x44497463656A626FLL;
                v25 = 0xE800000000000000;
              }

              if (*(v6 + v19 + 32) <= 2u)
              {
                v26 = v24;
              }

              else
              {
                v26 = v22;
              }

              if (*(v6 + v19 + 32) <= 2u)
              {
                v27 = v25;
              }

              else
              {
                v27 = v23;
              }
            }

            if (v37 > 5u)
            {
              v28 = 0xD00000000000001CLL;
              v33 = 0xD000000000000019;
              if (v37 != 10)
              {
                v33 = 0xD000000000000027;
              }

              v34 = 0x80000001007EA260;
              if (v37 == 10)
              {
                v34 = 0x80000001007EA240;
              }

              if (v37 != 9)
              {
                v28 = v33;
              }

              v29 = 0x80000001007EA010;
              if (v37 != 9)
              {
                v29 = v34;
              }

              v30 = 0xD000000000000015;
              if (v37 == 7)
              {
                v30 = 0x53676E6974726F73;
              }

              v31 = 0xEC000000656C7974;
              if (v37 != 7)
              {
                v31 = 0x80000001007EA6E0;
              }

              if (v37 == 6)
              {
                v30 = 0xD000000000000017;
                v31 = 0x80000001007E8D40;
              }

              v32 = v37 <= 8u;
            }

            else
            {
              v28 = 0x626D456567646162;
              if (v37 == 4)
              {
                v28 = 0x726F6C6F63;
              }

              v29 = 0xEB000000006D656CLL;
              if (v37 == 4)
              {
                v29 = 0xE500000000000000;
              }

              if (v37 == 3)
              {
                v28 = 1701667182;
                v29 = 0xE400000000000000;
              }

              v30 = 0x72756769666E6F63;
              if (v37 == 1)
              {
                v30 = 0xD000000000000017;
                v31 = 0x80000001007E8C60;
              }

              else
              {
                v31 = 0xED00006E6F697461;
              }

              if (!v37)
              {
                v30 = 0x44497463656A626FLL;
                v31 = 0xE800000000000000;
              }

              v32 = v37 <= 2u;
            }

            if (v32)
            {
              v35 = v30;
            }

            else
            {
              v35 = v28;
            }

            if (v32)
            {
              v36 = v31;
            }

            else
            {
              v36 = v29;
            }

            if (v26 == v35 && v27 == v36)
            {

              goto LABEL_4;
            }

            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            ++v19;
            if (v20)
            {
            }
          }

          sub_1006ABFBC();
          swift_allocError();
          return swift_willThrow();
        }

LABEL_8:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v10;
        if (v11)
        {
          goto LABEL_34;
        }
      }
    }
  }

LABEL_4:
}

void *sub_100691114(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5F50(v7, &off_1008DFFD8, sub_100366474, &qword_10094F358, &qword_1007B4F08);

  return v8;
}

unint64_t sub_1006911E4(void *a1, uint64_t a2)
{
  result = sub_100692848(a1, a2, &type metadata for REMSmartListStorageCDIngestor.ValueKey, sub_1005F53DC);
  if (!v2)
  {
    v6 = result;
    v7 = sub_100691114(a1, a2);
    v8._rawValue = &off_1008E18C0;
    v9 = sub_1005F8760(v8, &unk_10093F770, off_1008D41E8);
    if (v9 == 4 || (v10 = v9, result = sub_1005F731C(), result == 14))
    {
    }

    else
    {
      v34 = result;
      v11 = 0;
      v12 = 0xEC00000044497473;
      v36 = v7[2];
      v35 = v10;
      while (1)
      {
        if (v36 == v11)
        {
        }

        if (v11 >= v7[2])
        {
          __break(1u);
LABEL_89:
          __break(1u);
          return result;
        }

        v14 = *(v7 + v11 + 32);
        v15 = v14 == 2 ? 0x694C746E65726170 : 0xD000000000000014;
        v16 = v14 == 2 ? v12 : 0x80000001007E9FD0;
        v17 = *(v7 + v11 + 32) ? 0x6341746E65726170 : 0x49746E756F636361;
        v18 = *(v7 + v11 + 32) ? 0xEF4449746E756F63 : 0xE900000000000044;
        v19 = *(v7 + v11 + 32) <= 1u ? v17 : v15;
        v20 = *(v7 + v11 + 32) <= 1u ? v18 : v16;
        v21 = v35 == 2 ? 0x694C746E65726170 : 0xD000000000000014;
        v22 = v35 == 2 ? v12 : 0x80000001007E9FD0;
        v23 = v35 ? 0x6341746E65726170 : 0x49746E756F636361;
        v24 = v35 ? 0xEF4449746E756F63 : 0xE900000000000044;
        v25 = v35 <= 1 ? v23 : v21;
        v26 = v35 <= 1 ? v24 : v22;
        if (v19 == v25 && v20 == v26)
        {
          break;
        }

        v13 = v12;
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v13;
        ++v11;
        if (v37)
        {
          goto LABEL_52;
        }
      }

LABEL_52:

      v27 = 0;
      v28 = *(v6 + 16);
      while (v28 != v27)
      {
        if (v27 >= *(v6 + 16))
        {
          goto LABEL_89;
        }

        v30 = 0xE800000000000000;
        v31 = 0x44497463656A626FLL;
        switch(*(v6 + v27 + 32))
        {
          case 1:
            v31 = 0xD000000000000017;
            v30 = 0x80000001007E8C60;
            break;
          case 2:
            v31 = 0x73694C7472616D73;
            v30 = 0xED00006570795474;
            break;
          case 3:
            v31 = 0x53676E6974726F73;
            v30 = 0xEC000000656C7974;
            break;
          case 4:
            v30 = 0xEA00000000006574;
            v31 = 0x614464656E6E6970;
            break;
          case 5:
            v31 = 0x724F6C61756E616DLL;
            v30 = 0xEE00676E69726564;
            break;
          case 6:
            v30 = 0xE400000000000000;
            v31 = 1701667182;
            break;
          case 7:
            v30 = 0xE500000000000000;
            v31 = 0x726F6C6F63;
            break;
          case 8:
            v31 = 0x626D456567646162;
            v30 = 0xEB000000006D656CLL;
            break;
          case 9:
            v31 = 0x61447265746C6966;
            v30 = 0xEA00000000006174;
            break;
          case 0xA:
            v31 = 0xD000000000000017;
            v30 = 0x80000001007E8D40;
            break;
          case 0xB:
            v31 = 0xD00000000000001CLL;
            v30 = 0x80000001007EA010;
            break;
          case 0xC:
            v31 = 0xD000000000000019;
            v30 = 0x80000001007EA240;
            break;
          case 0xD:
            v31 = 0xD000000000000027;
            v30 = 0x80000001007EA260;
            break;
          default:
            break;
        }

        v32 = 0xE800000000000000;
        v33 = 0x44497463656A626FLL;
        switch(v34)
        {
          case 1:
            v33 = 0xD000000000000017;
            v32 = 0x80000001007E8C60;
            break;
          case 2:
            v33 = 0x73694C7472616D73;
            v32 = 0xED00006570795474;
            break;
          case 3:
            v33 = 0x53676E6974726F73;
            v32 = 0xEC000000656C7974;
            break;
          case 4:
            v32 = 0xEA00000000006574;
            v33 = 0x614464656E6E6970;
            break;
          case 5:
            v33 = 0x724F6C61756E616DLL;
            v32 = 0xEE00676E69726564;
            break;
          case 6:
            v32 = 0xE400000000000000;
            v33 = 1701667182;
            break;
          case 7:
            v32 = 0xE500000000000000;
            v33 = 0x726F6C6F63;
            break;
          case 8:
            v33 = 0x626D456567646162;
            v32 = 0xEB000000006D656CLL;
            break;
          case 9:
            v33 = 0x61447265746C6966;
            v32 = 0xEA00000000006174;
            break;
          case 10:
            v33 = 0xD000000000000017;
            v32 = 0x80000001007E8D40;
            break;
          case 11:
            v33 = 0xD00000000000001CLL;
            v32 = 0x80000001007EA010;
            break;
          case 12:
            v33 = 0xD000000000000019;
            v32 = 0x80000001007EA240;
            break;
          case 13:
            v33 = 0xD000000000000027;
            v32 = 0x80000001007EA260;
            break;
          default:
            break;
        }

        if (v31 == v33 && v30 == v32)
        {
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v27;
        if (v29)
        {
        }
      }

      sub_1006ABFBC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_10069181C(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008E03D0, sub_1003665EC, &qword_10094F3A8, &qword_1007B4F40);

  return v8;
}

uint64_t sub_1006918EC(void *a1, uint64_t a2)
{
  result = sub_100692848(a1, a2, &type metadata for REMSavedReminderStorageCDIngestor.ValueKey, sub_1005F5C88);
  if (!v2)
  {
    v6 = result;
    v7 = sub_10069181C(a1, a2);
    v8._rawValue = &off_1008E1AF8;
    v9 = sub_1005F83FC(v8, type metadata accessor for REMCDSavedReminder);
    if (v9 != 2)
    {
      v10 = v9;
      result = sub_1005F7B78();
      if (result != 22)
      {
        v28 = result;
        v11 = 0;
        v12 = v7[2];
        if (v10)
        {
          v13 = 0x44497473696CLL;
        }

        else
        {
          v13 = 0x49746E756F636361;
        }

        if (v10)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE900000000000044;
        }

        while (v12 != v11)
        {
          if (v11 >= v7[2])
          {
            __break(1u);
LABEL_84:
            __break(1u);
            return result;
          }

          if (*(v7 + v11 + 32))
          {
            v15 = 0x44497473696CLL;
          }

          else
          {
            v15 = 0x49746E756F636361;
          }

          if (*(v7 + v11 + 32))
          {
            v16 = 0xE600000000000000;
          }

          else
          {
            v16 = 0xE900000000000044;
          }

          if (v15 == v13 && v16 == v14)
          {

LABEL_29:

            v19 = 0;
            v20 = *(v6 + 16);
            while (v20 != v19)
            {
              if (v19 >= *(v6 + 16))
              {
                goto LABEL_84;
              }

              v22 = 0xE800000000000000;
              v23 = 0x44497463656A626FLL;
              switch(*(v6 + v19 + 32))
              {
                case 1:
                  v23 = 0xD000000000000010;
                  v22 = 0x80000001007EA4D0;
                  break;
                case 2:
                  v23 = 0xD000000000000017;
                  v22 = 0x80000001007E8C60;
                  break;
                case 3:
                  v23 = 0xD000000000000011;
                  v22 = 0x80000001007EA570;
                  break;
                case 4:
                  v24 = 0x44656C746974;
                  goto LABEL_39;
                case 5:
                  v23 = 0x797469726F697270;
                  break;
                case 6:
                  v22 = 0xE700000000000000;
                  v23 = 0x64656767616C66;
                  break;
                case 7:
                  v23 = 0x6E6F697461657263;
                  v22 = 0xEC00000065746144;
                  break;
                case 8:
                  v23 = 0x6E65727275636572;
                  v22 = 0xEF73656C75526563;
                  break;
                case 9:
                  v23 = 0xD000000000000013;
                  v22 = 0x80000001007EA5A0;
                  break;
                case 0xA:
                  v23 = 0xD000000000000011;
                  v22 = 0x80000001007EA5C0;
                  break;
                case 0xB:
                  v23 = 0x656E6F5A656D6974;
                  break;
                case 0xC:
                  v22 = 0xE600000000000000;
                  v23 = 0x7961446C6C61;
                  break;
                case 0xD:
                  v23 = 0xD000000000000011;
                  v22 = 0x80000001007EA5E0;
                  break;
                case 0xE:
                  v24 = 0x447365746F6ELL;
LABEL_39:
                  v23 = v24 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
                  v22 = 0xED0000746E656D75;
                  break;
                case 0xF:
                  v23 = 0x656D686361747461;
                  v22 = 0xEB0000000073746ELL;
                  break;
                case 0x10:
                  v22 = 0xE600000000000000;
                  v23 = 0x736D72616C61;
                  break;
                case 0x11:
                  v23 = 0xD000000000000016;
                  v22 = 0x80000001007E8FD0;
                  break;
                case 0x12:
                  v23 = 0xD00000000000001ALL;
                  v22 = 0x80000001007EA610;
                  break;
                case 0x13:
                  v23 = 0xD000000000000024;
                  v22 = 0x80000001007EA630;
                  break;
                case 0x14:
                  v23 = 0x7367617468736168;
                  break;
                case 0x15:
                  v23 = 0x48746361746E6F63;
                  v22 = 0xEE0073656C646E61;
                  break;
                default:
                  break;
              }

              v25 = 0xE800000000000000;
              v26 = 0x44497463656A626FLL;
              switch(v28)
              {
                case 1:
                  v26 = 0xD000000000000010;
                  v25 = 0x80000001007EA4D0;
                  break;
                case 2:
                  v26 = 0xD000000000000017;
                  v25 = 0x80000001007E8C60;
                  break;
                case 3:
                  v26 = 0xD000000000000011;
                  v25 = 0x80000001007EA570;
                  break;
                case 4:
                  v27 = 0x44656C746974;
                  goto LABEL_62;
                case 5:
                  v26 = 0x797469726F697270;
                  break;
                case 6:
                  v25 = 0xE700000000000000;
                  v26 = 0x64656767616C66;
                  break;
                case 7:
                  v26 = 0x6E6F697461657263;
                  v25 = 0xEC00000065746144;
                  break;
                case 8:
                  v26 = 0x6E65727275636572;
                  v25 = 0xEF73656C75526563;
                  break;
                case 9:
                  v26 = 0xD000000000000013;
                  v25 = 0x80000001007EA5A0;
                  break;
                case 10:
                  v26 = 0xD000000000000011;
                  v25 = 0x80000001007EA5C0;
                  break;
                case 11:
                  v26 = 0x656E6F5A656D6974;
                  break;
                case 12:
                  v25 = 0xE600000000000000;
                  v26 = 0x7961446C6C61;
                  break;
                case 13:
                  v26 = 0xD000000000000011;
                  v25 = 0x80000001007EA5E0;
                  break;
                case 14:
                  v27 = 0x447365746F6ELL;
LABEL_62:
                  v26 = v27 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
                  v25 = 0xED0000746E656D75;
                  break;
                case 15:
                  v26 = 0x656D686361747461;
                  v25 = 0xEB0000000073746ELL;
                  break;
                case 16:
                  v25 = 0xE600000000000000;
                  v26 = 0x736D72616C61;
                  break;
                case 17:
                  v26 = 0xD000000000000016;
                  v25 = 0x80000001007E8FD0;
                  break;
                case 18:
                  v26 = 0xD00000000000001ALL;
                  v25 = 0x80000001007EA610;
                  break;
                case 19:
                  v26 = 0xD000000000000024;
                  v25 = 0x80000001007EA630;
                  break;
                case 20:
                  v26 = 0x7367617468736168;
                  break;
                case 21:
                  v26 = 0x48746361746E6F63;
                  v25 = 0xEE0073656C646E61;
                  break;
                default:
                  break;
              }

              if (v23 == v26 && v22 == v25)
              {
              }

              v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

              ++v19;
              if (v21)
              {
              }
            }

            sub_1006ABFBC();
            swift_allocError();
            return swift_willThrow();
          }

          ++v11;
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  return result;
}

void *sub_100691FF0(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F56BC(v7, &off_1008DF968, sub_100366410, &unk_10094F430, &qword_1007B4FB0);

  return v8;
}

uint64_t sub_1006920C0(void *a1, uint64_t a2)
{
  result = sub_100692848(a1, a2, &type metadata for REMReminderStorageCDIngestor.ValueKey, sub_1005F4870);
  if (!v2)
  {
    v6 = result;
    v7 = sub_100691FF0(a1, a2);
    v8 = sub_1005F823C();
    if (v8 != 6)
    {
      v9 = v8;
      result = sub_1005F6C6C();
      if (result != 40)
      {
        v33 = result;
        v10 = 0;
        v11 = 0x49746E756F636361;
        v35 = v7[2];
        v34 = v9;
        while (v35 != v10)
        {
          if (v10 >= v7[2])
          {
            __break(1u);
LABEL_68:
            __break(1u);
            return result;
          }

          v14 = *(v7 + v10 + 32);
          if (v14 > 2)
          {
            if (v14 == 3)
            {
              v17 = 0xD000000000000014;
              v18 = 0x80000001007EA4F0;
            }

            else
            {
              if (v14 == 4)
              {
                v17 = 0xD000000000000014;
              }

              else
              {
                v17 = 0xD00000000000001FLL;
              }

              if (v14 == 4)
              {
                v18 = 0x80000001007EA510;
              }

              else
              {
                v18 = 0x80000001007EA530;
              }
            }
          }

          else
          {
            if (v14 == 1)
            {
              v15 = 0x44497473696CLL;
            }

            else
            {
              v15 = 0xD000000000000010;
            }

            if (v14 == 1)
            {
              v16 = 0xE600000000000000;
            }

            else
            {
              v16 = 0x80000001007EA4D0;
            }

            if (*(v7 + v10 + 32))
            {
              v17 = v15;
            }

            else
            {
              v17 = v11;
            }

            if (*(v7 + v10 + 32))
            {
              v18 = v16;
            }

            else
            {
              v18 = 0xE900000000000044;
            }
          }

          v19 = 0xD00000000000001FLL;
          if (v34 == 4)
          {
            v19 = 0xD000000000000014;
          }

          v20 = 0x80000001007EA530;
          if (v34 == 4)
          {
            v20 = 0x80000001007EA510;
          }

          if (v34 == 3)
          {
            v19 = 0xD000000000000014;
            v20 = 0x80000001007EA4F0;
          }

          if (v34 == 1)
          {
            v21 = 0x44497473696CLL;
          }

          else
          {
            v21 = 0xD000000000000010;
          }

          if (v34 == 1)
          {
            v22 = 0xE600000000000000;
          }

          else
          {
            v22 = 0x80000001007EA4D0;
          }

          if (!v34)
          {
            v21 = v11;
            v22 = 0xE900000000000044;
          }

          if (v34 <= 2)
          {
            v23 = v21;
          }

          else
          {
            v23 = v19;
          }

          if (v34 <= 2)
          {
            v24 = v22;
          }

          else
          {
            v24 = v20;
          }

          if (v17 == v23 && v18 == v24)
          {

LABEL_56:

            v25 = 0;
            v26 = *(v6 + 16);
            while (1)
            {
              if (v26 == v25)
              {

                sub_1006ABFBC();
                swift_allocError();
                return swift_willThrow();
              }

              if (v25 >= *(v6 + 16))
              {
                goto LABEL_68;
              }

              v27 = sub_1002ADDBC(*(v6 + v25 + 32));
              v29 = v28;
              if (v27 == sub_1002ADDBC(v33) && v29 == v30)
              {
                break;
              }

              ++v25;
              v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v32)
              {
              }
            }
          }

          v12 = v11;
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v11 = v12;
          ++v10;
          if (v13)
          {
            goto LABEL_56;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100692448(void *a1, uint64_t a2)
{
  result = sub_100692848(a1, a2, &type metadata for REMListStorageCDIngestor.ValueKey, sub_1005F3FF0);
  if (!v2)
  {
    v6 = result;
    v7 = sub_100692848(a1, a2, &type metadata for REMListStorageCDIngestor.RelationshipKey, sub_1005F3D10);
    v8 = sub_1005F807C();
    if (v8 != 7)
    {
      v9 = v8;
      result = sub_1005F63F0();
      if (result != 42)
      {
        v34 = result;
        v10 = 0;
        v35 = *(v7 + 16);
        v11 = v9;
        while (v35 != v10)
        {
          if (v10 >= *(v7 + 16))
          {
            __break(1u);
LABEL_69:
            __break(1u);
            return result;
          }

          v13 = *(v7 + v10 + 32);
          if (v13 <= 2)
          {
            v16 = 0xD000000000000016;
            if (v13 == 1)
            {
              v17 = 0x80000001007E9F50;
            }

            else
            {
              v16 = 0xD00000000000001BLL;
              v17 = 0x80000001007E9F70;
            }

            if (*(v7 + v10 + 32))
            {
              v14 = v16;
            }

            else
            {
              v14 = 0x49746E756F636361;
            }

            if (*(v7 + v10 + 32))
            {
              v15 = v17;
            }

            else
            {
              v15 = 0xE900000000000044;
            }
          }

          else if (*(v7 + v10 + 32) > 4u)
          {
            if (v13 == 5)
            {
              v14 = 0xD000000000000015;
              v15 = 0x80000001007E9FB0;
            }

            else
            {
              v14 = 0xD000000000000014;
              v15 = 0x80000001007E9FD0;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x6341746E65726170;
            }

            else
            {
              v14 = 0x694C746E65726170;
            }

            if (v13 == 3)
            {
              v15 = 0xEF4449746E756F63;
            }

            else
            {
              v15 = 0xEC00000044497473;
            }
          }

          if (v11 == 5)
          {
            v18 = 0xD000000000000015;
          }

          else
          {
            v18 = 0xD000000000000014;
          }

          v19 = 0x80000001007E9FD0;
          if (v11 == 5)
          {
            v19 = 0x80000001007E9FB0;
          }

          v20 = 0x694C746E65726170;
          if (v11 == 3)
          {
            v20 = 0x6341746E65726170;
          }

          v21 = 0xEF4449746E756F63;
          if (v11 != 3)
          {
            v21 = 0xEC00000044497473;
          }

          if (v11 <= 4)
          {
            v18 = v20;
            v19 = v21;
          }

          v22 = 0xD000000000000016;
          if (v11 == 1)
          {
            v23 = 0x80000001007E9F50;
          }

          else
          {
            v22 = 0xD00000000000001BLL;
            v23 = 0x80000001007E9F70;
          }

          if (!v11)
          {
            v22 = 0x49746E756F636361;
            v23 = 0xE900000000000044;
          }

          if (v11 <= 2)
          {
            v24 = v22;
          }

          else
          {
            v24 = v18;
          }

          if (v11 <= 2)
          {
            v25 = v23;
          }

          else
          {
            v25 = v19;
          }

          if (v14 == v24 && v15 == v25)
          {

LABEL_57:

            v26 = 0;
            v27 = *(v6 + 16);
            while (1)
            {
              if (v27 == v26)
              {

                sub_1006ABFBC();
                swift_allocError();
                return swift_willThrow();
              }

              if (v26 >= *(v6 + 16))
              {
                goto LABEL_69;
              }

              v28 = sub_100672E54(*(v6 + v26 + 32));
              v30 = v29;
              if (v28 == sub_100672E54(v34) && v30 == v31)
              {
                break;
              }

              ++v26;
              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v33)
              {
              }
            }

            break;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v10;
          if (v12)
          {
            goto LABEL_57;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100692848(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = [a1 remObjectID];
  v7 = v6;
  if (*(a2 + 16) && (v8 = sub_10002B924(v6), (v9 & 1) != 0))
  {
    v10 = *(*(a2 + 56) + 8 * v8);
  }

  else
  {

    v10 = 0;
  }

  v11 = a4(v10);

  return v11;
}

void *sub_1006928FC(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008DF638, sub_1003663D4, &qword_10094F648, &qword_1007B5138);

  return v8;
}

uint64_t sub_1006929CC(void *a1, uint64_t a2)
{
  result = sub_100692848(a1, a2, &type metadata for REMAccountStorageCDIngestor.ValueKey, sub_1005F45A8);
  if (v2)
  {
    return result;
  }

  v6 = result;
  v7 = sub_1006928FC(a1, a2);
  v8._countAndFlagsBits = 0x49746E756F636361;
  v8._object = 0xE900000000000044;
  v9 = _findStringSwitchCase(cases:string:)(&off_1008E1538, v8);
  if (!v9)
  {
    v10 = 0;
LABEL_6:
    result = sub_1005F6750();
    if (result != 26)
    {
      v27 = result;
      v11 = 0;
      v28 = v7[2];
      if (v10)
      {
        v12 = 0xD000000000000016;
      }

      else
      {
        v12 = 0xD000000000000011;
      }

      if (v10)
      {
        v13 = "listIDsToUndelete";
      }

      else
      {
        v13 = "urrentAppVersion";
      }

      v14 = v13 | 0x8000000000000000;
      while (v28 != v11)
      {
        if (v11 >= v7[2])
        {
          __break(1u);
LABEL_45:
          __break(1u);
          return result;
        }

        if (*(v7 + v11 + 32))
        {
          v15 = 0xD000000000000016;
        }

        else
        {
          v15 = 0xD000000000000011;
        }

        if (*(v7 + v11 + 32))
        {
          v16 = "listIDsToUndelete";
        }

        else
        {
          v16 = "urrentAppVersion";
        }

        if (v15 == v12 && (v16 | 0x8000000000000000) == v14)
        {

LABEL_33:

          v19 = 0;
          v20 = *(v6 + 16);
          while (1)
          {
            if (v20 == v19)
            {

              sub_1006ABFBC();
              swift_allocError();
              return swift_willThrow();
            }

            if (v19 >= *(v6 + 16))
            {
              goto LABEL_45;
            }

            v21 = sub_1002F6E68(*(v6 + v19 + 32));
            v23 = v22;
            if (v21 == sub_1002F6E68(v27) && v23 == v24)
            {
              break;
            }

            ++v19;
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v26)
            {
            }
          }

          goto LABEL_7;
        }

        ++v11;
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_33;
        }
      }
    }

    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v10 = 1;
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t sub_100692C78(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t))
{
  if (*a2 != -1)
  {
    v24 = a3;
    swift_once();
    a3 = v24;
  }

  v6 = *a3;
  v7 = a4(a1);
  if (*(v6 + 16))
  {
    v9 = sub_100005F4C(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = (*(v6 + 56) + 16 * v9);
      v14 = *v12;
      v13 = v12[1];

      return v14;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100946C50);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = a4(a1);
    v23 = sub_10000668C(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unknown ingestable key {key: %s}", v19, 0xCu);
    sub_10000607C(v20);
  }

  return a4(a1);
}

uint64_t sub_100692E54(char a1)
{
  if (qword_100935BB0 != -1)
  {
    swift_once();
  }

  v2 = 0x49746E756F636361;
  v3 = qword_100974C38;
  if (!a1)
  {
    v4 = 0x49746E756F636361;
    v5 = 0xE900000000000044;
    if (*(qword_100974C38 + 16))
    {
      goto LABEL_11;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v4 = 0x6341746E65726170;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (a1 == 1)
  {
    v5 = 0xEF4449746E756F63;
  }

  else
  {
    v5 = 0x80000001007E9FD0;
  }

  if (!*(qword_100974C38 + 16))
  {
    goto LABEL_14;
  }

LABEL_11:
  v6 = sub_100005F4C(v4, v5);
  v8 = v7;

  if (v8)
  {
    v9 = (*(v3 + 56) + 16 * v6);
    v2 = *v9;
    v10 = v9[1];

    return v2;
  }

LABEL_15:
  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100946C50);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = 0x6341746E65726170;
      }

      else
      {
        v16 = 0xD000000000000014;
      }

      if (a1 == 1)
      {
        v17 = 0xEF4449746E756F63;
      }

      else
      {
        v17 = 0x80000001007E9FD0;
      }
    }

    else
    {
      v16 = 0x49746E756F636361;
      v17 = 0xE900000000000044;
    }

    v18 = sub_10000668C(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unknown ingestable key {key: %s}", v14, 0xCu);
    sub_10000607C(v15);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0x6341746E65726170;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  return v2;
}

uint64_t sub_100693168(unsigned __int8 a1)
{
  if (qword_100935C70 != -1)
  {
    swift_once();
  }

  v2 = 0x49746E756F636361;
  v3 = qword_100974C80;
  v4 = 0x694C746E65726170;
  v5 = 0xEC00000044497473;
  if (a1 != 2)
  {
    v4 = 0xD000000000000014;
    v5 = 0x80000001007E9FD0;
  }

  v6 = 0x6341746E65726170;
  v7 = 0xEF4449746E756F63;
  if (!a1)
  {
    v6 = 0x49746E756F636361;
    v7 = 0xE900000000000044;
  }

  if (a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (*(qword_100974C80 + 16))
  {
    v10 = sub_100005F4C(v8, v9);
    v12 = v11;

    if (v12)
    {
      v13 = (*(v3 + 56) + 16 * v10);
      v2 = *v13;
      v14 = v13[1];

      return v2;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100946C50);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    v20 = 0x694C746E65726170;
    v21 = 0xEC00000044497473;
    if (a1 != 2)
    {
      v20 = 0xD000000000000014;
      v21 = 0x80000001007E9FD0;
    }

    v22 = 0x6341746E65726170;
    v23 = 0xEF4449746E756F63;
    if (!a1)
    {
      v22 = 0x49746E756F636361;
      v23 = 0xE900000000000044;
    }

    if (a1 <= 1u)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if (a1 <= 1u)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    v26 = sub_10000668C(v24, v25, &v28);

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Unknown ingestable key {key: %s}", v18, 0xCu);
    sub_10000607C(v19);
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0x694C746E65726170;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else if (a1)
  {
    return 0x6341746E65726170;
  }

  return v2;
}

uint64_t sub_1006934C8(char a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    v18 = a1;
    v19 = a3;
    swift_once();
    a1 = v18;
    a3 = v19;
  }

  v3 = *a3;
  if (a1)
  {
    v4 = 0x4449746E65726170;
  }

  else
  {
    v4 = 0x49746E756F636361;
  }

  if (a1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000044;
  }

  if (*(v3 + 16))
  {
    v6 = sub_100005F4C(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = (*(v3 + 56) + 16 * v6);
      v4 = *v9;
      v10 = v9[1];

      return v4;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100946C50);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    v16 = sub_10000668C(v4, v5, &v20);

    *(v14 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unknown ingestable key {key: %s}", v14, 0xCu);
    sub_10000607C(v15);
  }

  return v4;
}

uint64_t sub_1006936FC(unsigned __int8 a1)
{
  if (qword_100935E28 != -1)
  {
    swift_once();
  }

  v2 = 0x49746E756F636361;
  v3 = qword_100974D20;
  v4 = 0x80000001007EA510;
  v5 = 0xD00000000000001FLL;
  if (a1 == 4)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x80000001007EA530;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 3)
  {
    v4 = 0x80000001007EA4F0;
  }

  v7 = 0xE600000000000000;
  v8 = 0x44497473696CLL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001007EA4D0;
  }

  if (!a1)
  {
    v8 = 0x49746E756F636361;
    v7 = 0xE900000000000044;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (a1 <= 2u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v4;
  }

  if (*(qword_100974D20 + 16))
  {
    v11 = sub_100005F4C(v9, v10);
    v13 = v12;

    if (v13)
    {
      v14 = (*(v3 + 56) + 16 * v11);
      v2 = *v14;
      v15 = v14[1];

      return v2;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100946C50);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315138;
    v21 = 0x80000001007EA4F0;
    v22 = 0x80000001007EA510;
    v23 = 0xD00000000000001FLL;
    if (a1 == 4)
    {
      v23 = 0xD000000000000014;
    }

    else
    {
      v22 = 0x80000001007EA530;
    }

    if (a1 == 3)
    {
      v24 = 0xD000000000000014;
    }

    else
    {
      v24 = v23;
    }

    if (a1 != 3)
    {
      v21 = v22;
    }

    v25 = 0xE600000000000000;
    v26 = 0x44497473696CLL;
    if (a1 != 1)
    {
      v26 = 0xD000000000000010;
      v25 = 0x80000001007EA4D0;
    }

    if (!a1)
    {
      v26 = 0x49746E756F636361;
      v25 = 0xE900000000000044;
    }

    if (a1 <= 2u)
    {
      v27 = v26;
    }

    else
    {
      v27 = v24;
    }

    if (a1 <= 2u)
    {
      v28 = v25;
    }

    else
    {
      v28 = v21;
    }

    v29 = sub_10000668C(v27, v28, &v31);

    *(v19 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unknown ingestable key {key: %s}", v19, 0xCu);
    sub_10000607C(v20);
  }

  else
  {
  }

  if (a1 > 2u)
  {
    if (a1 == 3 || a1 == 4)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return 0x44497473696CLL;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  return v2;
}

uint64_t sub_100693AB0(unsigned __int8 a1)
{
  if (qword_1009366C8 != -1)
  {
    swift_once();
  }

  v2 = 0x49746E756F636361;
  v3 = qword_1009752A0;
  v4 = 0x80000001007E9FB0;
  if (a1 == 5)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (a1 != 5)
  {
    v4 = 0x80000001007E9FD0;
  }

  v6 = 0x6341746E65726170;
  v7 = 0xEF4449746E756F63;
  if (a1 != 3)
  {
    v6 = 0x694C746E65726170;
    v7 = 0xEC00000044497473;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
  }

  else
  {
    v6 = v5;
  }

  v8 = 0x80000001007E9F50;
  v9 = 0xD000000000000016;
  if (a1 != 1)
  {
    v9 = 0xD00000000000001BLL;
    v8 = 0x80000001007E9F70;
  }

  if (!a1)
  {
    v9 = 0x49746E756F636361;
    v8 = 0xE900000000000044;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (a1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (*(qword_1009752A0 + 16))
  {
    v12 = sub_100005F4C(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = (*(v3 + 56) + 16 * v12);
      v2 = *v15;
      v16 = v15[1];

      return v2;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100946C50);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    v22 = 0x80000001007E9FB0;
    *v20 = 136315138;
    if (a1 == 5)
    {
      v23 = 0xD000000000000015;
    }

    else
    {
      v23 = 0xD000000000000014;
    }

    if (a1 != 5)
    {
      v22 = 0x80000001007E9FD0;
    }

    v24 = 0x6341746E65726170;
    v25 = 0xEF4449746E756F63;
    if (a1 != 3)
    {
      v24 = 0x694C746E65726170;
      v25 = 0xEC00000044497473;
    }

    if (a1 <= 4u)
    {
      v22 = v25;
    }

    else
    {
      v24 = v23;
    }

    v26 = 0x80000001007E9F50;
    v27 = 0xD000000000000016;
    if (a1 != 1)
    {
      v27 = 0xD00000000000001BLL;
      v26 = 0x80000001007E9F70;
    }

    if (!a1)
    {
      v27 = 0x49746E756F636361;
      v26 = 0xE900000000000044;
    }

    if (a1 <= 2u)
    {
      v28 = v27;
    }

    else
    {
      v28 = v24;
    }

    if (a1 <= 2u)
    {
      v29 = v26;
    }

    else
    {
      v29 = v22;
    }

    v30 = sub_10000668C(v28, v29, &v32);

    *(v20 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unknown ingestable key {key: %s}", v20, 0xCu);
    sub_10000607C(v21);
  }

  else
  {
  }

  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD000000000000016;
      }

      else
      {
        return 0xD00000000000001BLL;
      }
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else if (a1 == 3)
  {
    return 0x6341746E65726170;
  }

  else
  {
    return 0x694C746E65726170;
  }

  return v2;
}

uint64_t sub_100693EE4(unsigned __int8 a1)
{
  if (qword_100935F90 != -1)
  {
    swift_once();
  }

  v2 = 0x44497463656A626FLL;
  v3 = qword_100974D70;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697461657263;
  v6 = 0xEC00000065746144;
  v7 = 0x4E79616C70736964;
  v8 = 0xEB00000000656D61;
  if (a1 != 3)
  {
    v7 = 0x6163696E6F6E6163;
    v8 = 0xED0000656D614E6CLL;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xD000000000000017;
  if (a1)
  {
    v4 = 0x80000001007E8C60;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 1u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*(qword_100974D70 + 16))
  {
    v12 = sub_100005F4C(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = (*(v3 + 56) + 16 * v12);
      v2 = *v15;
      v16 = v15[1];

      return v2;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100946C50);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    v22 = 0xE800000000000000;
    *v20 = 136315138;
    v23 = 0x6E6F697461657263;
    v24 = 0xEC00000065746144;
    v25 = 0x4E79616C70736964;
    v26 = 0xEB00000000656D61;
    if (a1 != 3)
    {
      v25 = 0x6163696E6F6E6163;
      v26 = 0xED0000656D614E6CLL;
    }

    if (a1 != 2)
    {
      v23 = v25;
      v24 = v26;
    }

    v27 = 0xD000000000000017;
    if (a1)
    {
      v22 = 0x80000001007E8C60;
    }

    else
    {
      v27 = 0x44497463656A626FLL;
    }

    if (a1 <= 1u)
    {
      v28 = v27;
    }

    else
    {
      v28 = v23;
    }

    if (a1 <= 1u)
    {
      v29 = v22;
    }

    else
    {
      v29 = v24;
    }

    v30 = sub_10000668C(v28, v29, &v32);

    *(v20 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unknown ingestable key {key: %s}", v20, 0xCu);
    sub_10000607C(v21);
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      return 0xD000000000000017;
    }
  }

  else if (a1 == 2)
  {
    return 0x6E6F697461657263;
  }

  else if (a1 == 3)
  {
    return 0x4E79616C70736964;
  }

  else
  {
    return 0x6163696E6F6E6163;
  }

  return v2;
}

uint64_t sub_1006942C0(char a1)
{
  if (qword_1009366C8 != -1)
  {
    v18 = a1;
    swift_once();
    a1 = v18;
  }

  v1 = qword_1009752A0;
  v2 = sub_100672E54(a1);
  v4 = v2;
  v5 = v3;
  if (*(v1 + 16))
  {
    v6 = sub_100005F4C(v2, v3);
    v8 = v7;

    if (v8)
    {
      v9 = (*(v1 + 56) + 16 * v6);
      v4 = *v9;
      v10 = v9[1];

      return v4;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100946C50);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    v16 = sub_10000668C(v4, v5, &v19);

    *(v14 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unknown ingestable key {key: %s}", v14, 0xCu);
    sub_10000607C(v15);
  }

  return v4;
}

uint64_t sub_1006944EC(unsigned __int8 a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    v30 = a3;
    swift_once();
    a3 = v30;
  }

  v4 = 0x44497463656A626FLL;
  v5 = *a3;
  v6 = 0xE800000000000000;
  v7 = 0x6E6F697461657263;
  v8 = 0xEC00000065746144;
  if (a1 != 2)
  {
    v7 = 0x4E79616C70736964;
    v8 = 0xEB00000000656D61;
  }

  v9 = 0xD000000000000017;
  if (a1)
  {
    v6 = 0x80000001007E8C60;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (a1 <= 1u)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (*(v5 + 16))
  {
    v12 = sub_100005F4C(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = (*(v5 + 56) + 16 * v12);
      v4 = *v15;
      v16 = v15[1];

      return v4;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100946C50);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315138;
    v22 = 0xE800000000000000;
    v23 = 0x6E6F697461657263;
    v24 = 0xEC00000065746144;
    if (a1 != 2)
    {
      v23 = 0x4E79616C70736964;
      v24 = 0xEB00000000656D61;
    }

    v25 = 0xD000000000000017;
    if (a1)
    {
      v22 = 0x80000001007E8C60;
    }

    else
    {
      v25 = 0x44497463656A626FLL;
    }

    if (a1 <= 1u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    if (a1 <= 1u)
    {
      v27 = v22;
    }

    else
    {
      v27 = v24;
    }

    v28 = sub_10000668C(v26, v27, &v31);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unknown ingestable key {key: %s}", v20, 0xCu);
    sub_10000607C(v21);
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0x6E6F697461657263;
    }

    else
    {
      return 0x4E79616C70736964;
    }
  }

  else if (a1)
  {
    return 0xD000000000000017;
  }

  return v4;
}

uint64_t sub_100694810(char a1)
{
  if (qword_100936390 != -1)
  {
    v16 = a1;
    swift_once();
    a1 = v16;
  }

  v1 = qword_100974F30;
  if (a1)
  {
    v2 = 0x44497473696CLL;
  }

  else
  {
    v2 = 0x49746E756F636361;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE900000000000044;
  }

  if (*(qword_100974F30 + 16))
  {
    v4 = sub_100005F4C(v2, v3);
    v6 = v5;

    if (v6)
    {
      v7 = (*(v1 + 56) + 16 * v4);
      v2 = *v7;
      v8 = v7[1];

      return v2;
    }
  }

  else
  {
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100946C50);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = sub_10000668C(v2, v3, &v17);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unknown ingestable key {key: %s}", v12, 0xCu);
    sub_10000607C(v13);
  }

  return v2;
}

id sub_100694A1C(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 v6[508]];

      if (v11)
      {
        sub_100692C78(v8, &qword_100935BB0, &qword_100974C38, sub_1001D5034);
        v12 = String._bridgeToObjectiveC()();
        v13 = v6;
        v14 = [v3 v6[508]];

        if (!v14 || (v15 = [v14 compare:v11], v14, v15 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v3 setToken:v11 forKey:v7];
        }

        else
        {
        }

        v6 = v13;
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_100694D60(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 v6[508]];

      if (v11)
      {
        sub_100692E54(v8);
        v12 = String._bridgeToObjectiveC()();
        v13 = v6;
        v14 = [v3 v6[508]];

        if (!v14 || (v15 = [v14 compare:v11], v14, v15 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v3 setToken:v11 forKey:v7];
        }

        else
        {
        }

        v6 = v13;
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_100694F3C(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 getTokenForKey:v10];

      if (v11)
      {
        sub_100692C78(v8, &qword_100935C70, &qword_100974C80, sub_10022B558);
        v12 = String._bridgeToObjectiveC()();
        v13 = [v4 getTokenForKey:v12];

        if (!v13 || (v14 = [v13 compare:v11], v13, v14 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v4 setToken:v11 forKey:v7];
        }

        else
        {
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_1006952B0(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 v6[508]];

      if (v11)
      {
        sub_100693168(v8);
        v12 = String._bridgeToObjectiveC()();
        v13 = v6;
        v14 = [v3 v6[508]];

        if (!v14 || (v15 = [v14 compare:v11], v14, v15 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v3 setToken:v11 forKey:v7];
        }

        else
        {
        }

        v6 = v13;
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_1006954B4(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v9 = *v6++;
      v8 = v9;
      sub_1002ADDBC(v9);
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 getTokenForKey:v10];

      if (v11)
      {
        sub_100692C78(v8, &qword_100935E28, &qword_100974D20, sub_1002ADDBC);
        v12 = String._bridgeToObjectiveC()();
        v13 = [v4 getTokenForKey:v12];

        if (!v13 || (v14 = [v13 compare:v11], v13, v14 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v4 setToken:v11 forKey:v7];
        }

        else
        {
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}