void sub_100605AEC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v92 = *(v2 - 8);
  v3 = *(v92 + 64);
  __chkstk_darwin(v2);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v94 = *(*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  v7 = v94;
  sub_10028088C(&unk_100987130, &qword_10080DAA0);
  Optional.unwrap(_:file:line:)();

  v8 = *&v0[v6];
  v9 = v93[0];
  if (*(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) > 1u)
  {
    if (*(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) != 2)
    {
      v22 = v93[0];
LABEL_20:

      return;
    }

LABEL_12:
    v23 = (v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
    if (v23[1])
    {
      v24 = *v23;
      v25 = v23[1];

      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    [v9 tag:v26];

    v27 = String._bridgeToObjectiveC()();
    [v9 tag:v27];

    [v9 setDelegate:v0];
    [v9 discoverServices:0];
    *(*&v0[v6] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) = 3;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_1009865B0);
    v22 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v22, v29, "ensureConnected completed", v30, 2u);
    }

    goto LABEL_20;
  }

  if (*(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState))
  {
    if ([v93[0] state] != 2)
    {
LABEL_51:
      sub_100624918();
      swift_allocError();
      *v82 = 1;
      swift_willThrow();

      return;
    }

    v8 = *&v0[v6];
    *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) = 2;
    goto LABEL_12;
  }

  v88 = v2;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000C4AC(v10, qword_1009865B0);
  v12 = v1;
  v89 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v90 = v6;
  v91 = v9;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v93[0] = v17;
    *v16 = 136315138;
    v18 = sub_1005F3200();
    v20 = v19;

    if (!v20)
    {
      __break(1u);
      goto LABEL_55;
    }

    v21 = sub_10000C4E4(v18, v20, v93);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "ensureConnected - Start connecting!!! withRandom: %s", v16, 0xCu);
    sub_10000C60C(v17);

    v6 = v90;
    v9 = v91;
  }

  else
  {
  }

  v31 = v12;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v86 = v31;

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v93[0] = v35;
    *v34 = 136315138;
    v36 = *(*&v1[v6] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
    v37 = 1702195828;
    if ((v36 & 1) == 0)
    {
      v37 = 0x65736C6166;
    }

    v38 = 0xE500000000000000;
    if (v36)
    {
      v38 = 0xE400000000000000;
    }

    if (v36 == 2)
    {
      v39 = 0xD000000000000013;
    }

    else
    {
      v39 = v37;
    }

    if (v36 == 2)
    {
      v40 = 0x8000000100799820;
    }

    else
    {
      v40 = v38;
    }

    v41 = sub_10000C4E4(v39, v40, v93);

    *(v34 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "is paired?: %s", v34, 0xCu);
    sub_10000C60C(v35);
    v9 = v91;
  }

  v42 = v9;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = [v42 state];

    _os_log_impl(&_mh_execute_header, v43, v44, "connecting state: : %ld", v45, 0xCu);
  }

  else
  {

    v43 = v42;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "attempting central.connect...", v48, 2u);
  }

  v87 = v1;

  v49 = v42;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  v52 = &selRef_finishedEventForRecordID_withResults_;
  if (os_log_type_enabled(v50, v51))
  {
    v53 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v93[0] = v85;
    *v53 = 136315138;
    v54 = [v49 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = UUID.uuidString.getter();
    v57 = v56;
    v58 = v92;
    v59 = v88;
    (*(v92 + 8))(v5, v88);
    v60 = sub_10000C4E4(v55, v57, v93);
    v52 = &selRef_finishedEventForRecordID_withResults_;

    *(v53 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v50, v51, "UUID: %s", v53, 0xCu);
    sub_10000C60C(v85);
  }

  else
  {

    v59 = v88;
    v58 = v92;
  }

  v61 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
  v62 = v86;
  [*&v86[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] connectPeripheral:v49 options:0];
  v63 = [v49 v52[402]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo;
  swift_beginAccess();
  v65 = v49;
  v66 = *&v62[v64];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = *&v62[v64];
  *&v62[v64] = 0x8000000000000000;
  sub_10057C64C(v65, v5, isUniquelyReferenced_nonNull_native);
  (*(v58 + 8))(v5, v59);
  *&v62[v64] = v94;
  swift_endAccess();
  [v62 stopScanning];
  v68 = v90;
  v69 = v87;
  v70 = *(*&v87[v90] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  v71 = String._bridgeToObjectiveC()();
  LOBYTE(v70) = [v70 BOOLForKey:v71];

  if (v70)
  {
    goto LABEL_50;
  }

  v72 = *(*&v69[v68] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v73 = String._bridgeToObjectiveC()();
  v74 = [v72 BOOLForKey:v73];

  if (v74)
  {
    goto LABEL_50;
  }

  v75 = [*&v62[v61] sharedPairingAgent];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1005FEA1C();

    if (v77 >> 62)
    {
      v83 = _CocoaArrayWrapper.endIndex.getter();

      if (v83)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v78)
      {
LABEL_47:
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "Woah! isFirstEverPair but !pairedB332s().isEmpty!", v81, 2u);
        }
      }
    }

LABEL_50:
    *(*&v69[v68] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) = 1;
    v9 = v91;
    goto LABEL_51;
  }

LABEL_55:
  __break(1u);
}

void sub_1006065A0()
{
  v1 = v0;
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v26 - v4;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  if ((*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranEnsurePairingStarted) & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_1009865B0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "ensurePairingStarted called", v11, 2u);
    }

    v12 = *(v1 + v6);
    *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranEnsurePairingStarted) = 1;
    v13 = *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
    if (v13)
    {
      v14 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
      v15 = v13;
      v16 = [v14 sharedPairingAgent];
      if (v16)
      {
        v17 = v16;
        v18 = v15;
        [v17 pairPeer:v18];

        v19 = [v18 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = type metadata accessor for UUID();
        (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
        v21 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastB332WeWantedToPair;
        swift_beginAccess();
        sub_10000C788(v5, v1 + v21, &unk_100976120, &qword_1007F9260);
        swift_endAccess();
        v7 = *(v1 + v6);
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_9:
  v22 = *(v7 + 16);
  v26[1] = 0xD000000000000057;
  v26[2] = 0x80000001007995E0;
  v26[0] = 1538;

  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24 = String.hashValue.getter();

  swift_beginAccess();
  v25 = sub_10046E4E8(v26, v24);
  swift_endAccess();
  if (v25)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingStarted completed");
  }
}

void sub_100606900()
{
  v150 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v149 = *(v150 - 8);
  v1 = *(v149 + 64);
  __chkstk_darwin(v150);
  v148 = v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v152 = *(v3 - 8);
  v4 = v152[8];
  __chkstk_darwin(v3);
  v151 = v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v140 - v8;
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v140 - v16;
  __chkstk_darwin(v15);
  v19 = v140 - v18;
  v155 = v0;
  v156 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v20 = *(*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + 16);
  *&v158 = 0xD000000000000057;
  v153 = 0x80000001007995E0;
  *(&v158 + 1) = 0x80000001007995E0;
  *&v162[0] = 1543;

  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22 = String.hashValue.getter();

  swift_beginAccess();
  v23 = sub_10046E4E8(v162, v22);
  swift_endAccess();
  if (v23)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingRequestHandled called");
  }

  v24 = v155;
  v25 = *&v155[v156];
  if (*(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairRequest))
  {
    goto LABEL_4;
  }

  v30 = *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing);
  if (!v30 || (v31 = (v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType), (v31[1] & 1) != 0))
  {
    sub_100624918();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    return;
  }

  v145 = *v31;
  v144 = v30;
  v146 = v30;
  v33 = [v146 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = 1;
  v147 = v152[7];
  (v147)(v19, 0, 1, v3);
  v35 = *(*&v24[v156] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v35)
  {
    v36 = [v35 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = 0;
  }

  (v147)(v17, v34, 1, v3);
  v37 = *(v6 + 48);
  sub_10000FF90(v19, v9, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v17, &v9[v37], &unk_100976120, &qword_1007F9260);
  v38 = v152[6];
  if (v38(v9, 1, v3) == 1)
  {
    sub_100005508(v17, &unk_100976120, &qword_1007F9260);
    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
    v39 = v38(&v9[v37], 1, v3);
    v40 = v155;
    if (v39 == 1)
    {
      sub_100005508(v9, &unk_100976120, &qword_1007F9260);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  sub_10000FF90(v9, v14, &unk_100976120, &qword_1007F9260);
  if (v38(&v9[v37], 1, v3) == 1)
  {
    sub_100005508(v17, &unk_100976120, &qword_1007F9260);
    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
    (v152[1])(v14, v3);
    v40 = v155;
LABEL_17:
    sub_100005508(v9, &unk_100987030, &qword_1007F9330);
    goto LABEL_18;
  }

  v53 = v152;
  v54 = &v9[v37];
  v55 = v151;
  (v152[4])(v151, v54, v3);
  sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
  LODWORD(v147) = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = v53[1];
  v56(v55, v3);
  sub_100005508(v17, &unk_100976120, &qword_1007F9260);
  sub_100005508(v19, &unk_100976120, &qword_1007F9260);
  v56(v14, v3);
  sub_100005508(v9, &unk_100976120, &qword_1007F9260);
  v40 = v155;
  if (v147)
  {
LABEL_24:
    *(*&v40[v156] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairRequest) = 1;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    v58 = sub_10000C4AC(v57, qword_1009865B0);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "ensurePairingRequestHandled", v61, 2u);
    }

    v62 = (*&v40[v156] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
    v63 = v62[1];
    if (v63 >> 60 == 15)
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v64 = *v62;
    sub_1002A9924(*v62, v62[1]);
    sub_100294008(v64, v63);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = v63 >> 62;
    if (!os_log_type_enabled(v65, v66))
    {
      sub_10028BCC0(v64, v63);
LABEL_42:

      v74 = objc_opt_self();
      if ([v74 enableOOBPCredentialLogging])
      {
        sub_100294008(v64, v63);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        sub_10028BCC0(v64, v63);
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          *&v161 = v147;
          *v77 = 136315138;
          *&v158 = 0;
          *(&v158 + 1) = 0xE000000000000000;
          *&v162[0] = v64;
          *(&v162[0] + 1) = v63;
          v151 = v74;
          v78 = v149;
          v79 = *(v149 + 104);
          v152 = v58;
          v80 = v148;
          LODWORD(v144) = v76;
          v81 = v150;
          v79(v148, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v150);
          sub_100423B84();
          DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
          v82 = v78;
          v74 = v151;
          v58 = v152;
          (*(v82 + 8))(v80, v81);
          v83 = sub_10000C4E4(v158, *(&v158 + 1), &v161);

          *(v77 + 4) = v83;
          _os_log_impl(&_mh_execute_header, v75, v144, "pairData: %s", v77, 0xCu);
          sub_10000C60C(v147);
        }
      }

      sub_10028088C(&unk_100987070, &unk_10080DA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for Data;
      *(inited + 40) = v85;
      *(inited + 48) = v64;
      *(inited + 56) = v63;
      sub_100294008(v64, v63);
      v86 = sub_100011040(inited);
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_1009744D0, &qword_1007F8A20);
      if (v67 > 1)
      {
        if (v67 != 2)
        {
          goto LABEL_75;
        }

        v89 = *(v64 + 16);
        v88 = *(v64 + 24);
        v72 = __OFSUB__(v88, v89);
        v87 = v88 - v89;
        if (!v72)
        {
LABEL_55:
          if (v87 == 32)
          {
            v151 = v86;
            v90 = sub_1002FB5DC(99, 0xE100000000000000);
            if ((v90 & 0x100) != 0)
            {
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v91 = v90;
            v152 = v58;
            v92 = sub_1002FB5DC(114, 0xE100000000000000);
            if ((v92 & 0x100) != 0)
            {
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v93 = v92;
            *&v161 = v64;
            *(&v161 + 1) = v63;
            v94 = sub_10028088C(&qword_100987080, &qword_10080DA10);
            v159 = v94;
            v95 = sub_100011630(&qword_100987088, &qword_100987080, &qword_10080DA10);
            v160 = v95;
            LOBYTE(v158) = v91;
            LOBYTE(v162[0]) = *sub_10002CDC0(&v158, v94);
            sub_100294008(v64, v63);
            Data._Representation.replaceSubrange(_:with:count:)();
            sub_10000C60C(&v158);
            v159 = v94;
            v160 = v95;
            LOBYTE(v158) = v93;
            LOBYTE(v162[0]) = *sub_10002CDC0(&v158, v94);
            Data._Representation.replaceSubrange(_:with:count:)();
            sub_10000C60C(&v158);
            v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v98 = v97;
            v99 = v161;
            v159 = &type metadata for Data;
            v158 = v161;
            sub_1000106E0(&v158, v162);
            sub_100294008(v99, *(&v99 + 1));
            v100 = v151;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v157 = v100;
            sub_100011170(v162, v96, v98, isUniquelyReferenced_nonNull_native);

            v86 = v157;
            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              *v104 = 0;
              _os_log_impl(&_mh_execute_header, v102, v103, "Received full OOBP!", v104, 2u);
            }

            v106 = *(&v161 + 1);
            v105 = v161;
            goto LABEL_61;
          }

          if (v67 == 2)
          {
            v109 = *(v64 + 16);
            v108 = *(v64 + 24);
            v72 = __OFSUB__(v108, v109);
            v107 = v108 - v109;
            if (!v72)
            {
LABEL_70:
              if (v107 != 16)
              {
                goto LABEL_75;
              }

              v110 = v74;
              v152 = v58;
              v111 = Data._Representation.subscript.getter();
              v151 = v112;
              v113 = v154;
              v114 = sub_1002F186C(v111, v112);
              v62 = &v163;
              v154 = v113;
              if (v113)
              {
LABEL_86:
                v139 = *(v62 - 32);
                swift_unexpectedError();
                __break(1u);
                return;
              }

              v115 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v114 % 0xF4240];
              v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v118 = v117;
              v159 = sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
              *&v158 = v115;
              sub_1000106E0(&v158, v162);
              v119 = v115;
              v120 = swift_isUniquelyReferenced_nonNull_native();
              *&v161 = v86;
              sub_100011170(v162, v116, v118, v120);

              v86 = v161;
              if ([v110 enableOOBPCredentialLogging])
              {
                v121 = v119;
                v122 = v151;
                sub_100294008(v111, v151);
                v123 = Logger.logObject.getter();
                v124 = static os_log_type_t.default.getter();

                sub_100026AC0(v111, v122);
                if (os_log_type_enabled(v123, v124))
                {
                  v125 = swift_slowAlloc();
                  LODWORD(v144) = v124;
                  v126 = v125;
                  v127 = swift_slowAlloc();
                  v143 = v127;
                  v152 = swift_slowAlloc();
                  *&v161 = v152;
                  v142 = v126;
                  *v126 = 138412546;
                  *(v126 + 4) = v121;
                  *v127 = v121;
                  *(v126 + 12) = 2080;
                  *&v158 = 0;
                  *(&v158 + 1) = 0xE000000000000000;
                  *&v162[0] = v111;
                  *(&v162[0] + 1) = v122;
                  v128 = v149;
                  v129 = *(v149 + 104);
                  v147 = v111;
                  v130 = v148;
                  v131 = v150;
                  v129(v148, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v150);
                  v140[1] = sub_100423B84();
                  v141 = v121;
                  DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
                  (*(v128 + 8))(v130, v131);
                  v132 = sub_10000C4E4(v158, *(&v158 + 1), &v161);

                  v133 = v142;
                  *(v142 + 14) = v132;
                  _os_log_impl(&_mh_execute_header, v123, v144, "passkey: %@.\nFirst four bytes: %s.", v133, 0x16u);
                  sub_100005508(v143, &qword_100975400, &qword_1007F65D0);

                  sub_10000C60C(v152);

                  sub_100026AC0(v147, v122);
LABEL_75:
                  v134 = v155;
                  v135 = [*&v155[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
                  if (v135)
                  {
                    v136 = v135;
                    v137 = v146;
                    sub_1003CE294(v86);

                    isa = Dictionary._bridgeToObjectiveC()().super.isa;

                    [v136 respondToPairingRequest:v137 type:v145 accept:1 data:isa];

                    sub_10028BCC0(v64, v63);
                    v25 = *&v134[v156];
LABEL_4:
                    v26 = *(v25 + 16);
                    *&v158 = 0xD000000000000057;
                    *(&v158 + 1) = v153;
                    *&v162[0] = 1599;

                    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v27);

                    v28 = String.hashValue.getter();

                    swift_beginAccess();
                    v29 = sub_10046E4E8(v162, v28);
                    swift_endAccess();
                    if (v29)
                    {
                      sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingRequestHandled completed");
                    }

                    return;
                  }

                  goto LABEL_83;
                }

                v105 = v111;
                v106 = v122;
              }

              else
              {

                v105 = v111;
                v106 = v151;
              }

LABEL_61:
              sub_100026AC0(v105, v106);
              goto LABEL_75;
            }

            __break(1u);
          }

          else if (v67 == 1)
          {
            LODWORD(v107) = HIDWORD(v64) - v64;
            if (!__OFSUB__(HIDWORD(v64), v64))
            {
              v107 = v107;
              goto LABEL_70;
            }

LABEL_81:
            __break(1u);
          }

          v107 = BYTE6(v63);
          goto LABEL_70;
        }

        __break(1u);
      }

      else if (!v67)
      {
        v87 = BYTE6(v63);
        goto LABEL_55;
      }

      LODWORD(v87) = HIDWORD(v64) - v64;
      if (!__OFSUB__(HIDWORD(v64), v64))
      {
        v87 = v87;
        goto LABEL_55;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v68 = swift_slowAlloc();
    *v68 = 134217984;
    if (v67 > 1)
    {
      if (v67 != 2)
      {
        v69 = 0;
        goto LABEL_41;
      }

      v71 = *(v64 + 16);
      v70 = *(v64 + 24);
      v72 = __OFSUB__(v70, v71);
      v69 = v70 - v71;
      if (!v72)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v67)
    {
      v69 = BYTE6(v63);
LABEL_41:
      *(v68 + 4) = v69;
      v73 = v68;
      sub_10028BCC0(v64, v63);
      _os_log_impl(&_mh_execute_header, v65, v66, "pairData length: %ld", v73, 0xCu);

      goto LABEL_42;
    }

    LODWORD(v69) = HIDWORD(v64) - v64;
    if (__OFSUB__(HIDWORD(v64), v64))
    {
      goto LABEL_80;
    }

    v69 = v69;
    goto LABEL_41;
  }

LABEL_18:
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_10000C4AC(v41, qword_1009865B0);
  v42 = v146;
  v43 = v40;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412546;
    *(v46 + 4) = v42;
    *v47 = v144;
    v48 = *&v40[v156];
    *(v46 + 12) = 2112;
    v49 = *(v48 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
    *(v46 + 14) = v49;
    v47[1] = v49;
    v50 = v42;
    v51 = v49;
    _os_log_impl(&_mh_execute_header, v44, v45, "Peer requesting pairing: %@\nbut storePeripheral is different: %@", v46, 0x16u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();
  }

  sub_100624918();
  swift_allocError();
  *v52 = 1;
  swift_willThrow();
}

void sub_100607E54()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v31 = 1761;

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = String.hashValue.getter();

  swift_beginAccess();
  v6 = sub_10046E4E8(&v31, v5);
  swift_endAccess();
  if (v6)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingResultHandled called");
  }

  v7 = *(v1 + v2);
  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairResult))
  {
    goto LABEL_4;
  }

  LODWORD(v12) = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed);
  v13 = 1;
  if (v12 == 2)
  {
LABEL_21:
    sub_100624918();
    swift_allocError();
    *v29 = v13;
    swift_willThrow();
    return;
  }

  *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairResult) = 1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_1009865B0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "ensurePairingResultHandled - pairingResult obtained", v17, 2u);
  }

  v7 = *(v1 + v2);
  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) == 1)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "stopBLEUpdates after pair result", v20, 2u);
    }

    v21 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider);
    if (v21)
    {
      v22 = (*(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
      if (v22[1])
      {
        v30 = v12;
        v23 = *v22;
        v24 = v21;

        v25 = String._bridgeToObjectiveC()();

        v26 = *(v1 + v2) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID;
        v27 = *(v26 + 8);
        if (v27 >> 60 != 15)
        {
          v12 = *v26;
          sub_100294008(*v26, *(v26 + 8));
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10028BCC0(v12, v27);
          [v24 stopBLEUpdates:v25 blePairingUUID:isa];

          v7 = *(v1 + v2);
          *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) = 0;
          LOBYTE(v12) = v30;
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_19:
  if ((v12 & 1) == 0)
  {
    v13 = 3;
    goto LABEL_21;
  }

LABEL_4:
  v8 = *(v7 + 16);
  v31 = 1782;

  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = String.hashValue.getter();

  swift_beginAccess();
  v11 = sub_10046E4E8(&v31, v10);
  swift_endAccess();
  if (v11)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensurePairingResultHandled completed");
  }
}

uint64_t sub_1006082D8()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009865B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissChargingStatus", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v8[4] = sub_10060E9A4;
    v8[5] = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1004502D4;
    v8[3] = &unk_1008EA738;
    v6 = _Block_copy(v8);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v6];
    _Block_release(v6);
    [v7 dismissChargingStatus];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10060847C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v14 = 1787;

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5 = String.hashValue.getter();

  swift_beginAccess();
  v6 = sub_10046E4E8(&v14, v5);
  swift_endAccess();
  if (v6)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "ensureBatteryInfo called");
  }

  v7 = *(v1 + v2);
  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo) || (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8) & 1) == 0)
  {
    v10 = *(v7 + 16);
    v14 = 1791;

    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12 = String.hashValue.getter();

    swift_beginAccess();
    v13 = sub_10046E4E8(&v14, v12);
    swift_endAccess();
    if (v13)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "ensureBatteryInfo completed");
    }
  }

  else
  {
    sub_100624918();
    swift_allocError();
    *v8 = 1;
    return swift_willThrow();
  }
}

void sub_1006086B4()
{
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "showSubsequentPairSuccess", v4, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_10060E98C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA878;
      v7 = _Block_copy(aBlock);
      v8 = [v6 remoteObjectProxyWithErrorHandler:v7];
      _Block_release(v7);
      [v8 showSubsequentPairSuccess];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "ignore showSubsequentPairSuccess, UI updates disabled for current session state", v11, 2u);
    }
  }
}

id sub_100608954()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v140 = &v129 - v11;
  v141 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v12 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  if ((*(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8) & 1) != 0 || *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType) != 2)
  {
    v138 = result;
    v13 = &unk_1009A0000;
    if ((*(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedUnpairProcess) & 1) == 0)
    {
      *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedUnpairProcess) = 1;
      v137 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
      result = [*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
      if (!result)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v14 = result;
      v15 = sub_1005FEA1C();

      if (v15 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v139 = v3;
      v129 = v1;
      if (v16)
      {
        v136 = v15 & 0xC000000000000001;
        v133 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo;
        swift_beginAccess();
        v17 = 0;
        v130 = v15 & 0xFFFFFFFFFFFFFF8;
        v18 = (v5 + 8);
        v134 = v15;
        v135 = v9;
        v132 = v16;
        while (1)
        {
          if (v136)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *(v130 + 16))
            {
              goto LABEL_46;
            }

            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v142 = (v17 + 1);
          v21 = *&v3[v141];

          v22 = v20;
          v23 = [v22 identifier];
          v24 = v140;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
          swift_beginAccess();
          v26 = v22;
          v27 = *(v21 + v25);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v144 = *(v21 + v25);
          *(v21 + v25) = 0x8000000000000000;
          sub_10057C64C(v26, v24, isUniquelyReferenced_nonNull_native);
          v29 = *v18;
          v30 = v24;
          v31 = v138;
          (*v18)(v30, v138);
          *(v21 + v25) = v144;
          v3 = v139;
          swift_endAccess();
          v32 = v135;

          v33 = [v26 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(*&v3[v133] + 16))
          {
            v34 = *&v3[v133];

            sub_10000EBD4(v32);
            v35 = v32;
            v37 = v36;
            v29(v35, v31);

            if (v37)
            {
              v38 = *&v3[v141];

              v39 = [v26 identifier];
              v131 = v29;
              v40 = v140;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v41 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect;
              swift_beginAccess();
              v42 = *(v38 + v41);
              v43 = swift_isUniquelyReferenced_nonNull_native();
              v144 = *(v38 + v41);
              *(v38 + v41) = 0x8000000000000000;
              sub_10057C64C(v26, v40, v43);
              v131(v40, v31);
              *(v38 + v41) = v144;
              v3 = v139;
              swift_endAccess();
            }

            else
            {
            }
          }

          else
          {

            v29(v32, v31);
          }

          result = [*(&v137->isa + v3) sharedPairingAgent];
          v15 = v134;
          if (!result)
          {
            break;
          }

          v44 = result;
          [result unpairPeer:v26];

          ++v17;
          if (v142 == v132)
          {

            v2 = v129;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_50;
      }

LABEL_23:
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000C4AC(v45, qword_1009865B0);
      v46 = v3;
      v47 = v3;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        LODWORD(v140) = v49;
        v51 = v50;
        v142 = swift_slowAlloc();
        v145[0] = v142;
        *v51 = 136315650;
        v52 = v141;
        v137 = v48;
        v53 = *&v46[v141];
        v54 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
        swift_beginAccess();
        v55 = *(v53 + v54);
        v136 = sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
        sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID);

        v56 = Dictionary.description.getter();
        v58 = v57;

        v59 = sub_10000C4E4(v56, v58, v145);

        *(v51 + 4) = v59;
        *(v51 + 12) = 2080;
        v60 = *&v139[v52];
        v61 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect;
        swift_beginAccess();
        v62 = *(v60 + v61);

        v63 = Dictionary.description.getter();
        v65 = v64;

        v66 = sub_10000C4E4(v63, v65, v145);

        *(v51 + 14) = v66;
        *(v51 + 22) = 2080;
        v67 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo;
        swift_beginAccess();
        v68 = *&v47[v67];

        v69 = Dictionary.description.getter();
        v71 = v70;

        v72 = v69;
        v2 = v129;
        v73 = sub_10000C4E4(v72, v71, v145);

        *(v51 + 24) = v73;
        v74 = v137;
        _os_log_impl(&_mh_execute_header, v137, v140, "ensureAllUnpaired called. needingUnpair: %s, needingDisconnect: %s, peripheralsIConnectedTo: %s", v51, 0x20u);
        swift_arrayDestroy();

        v13 = &unk_1009A0000;
        v3 = v139;
      }

      else
      {

        v3 = v46;
        v13 = &unk_1009A0000;
      }
    }

    v75 = v141;
    v76 = *&v3[v141];
    v77 = v13[452];
    v78 = v13;
    swift_beginAccess();
    v79 = *(*(v76 + v77) + 16);

    v81 = v2;
    v82 = sub_10061FC58(v80);
    v129 = v81;

    v83 = *(v76 + v77);
    *(v76 + v77) = v82;

    v84 = *&v3[v75];
    v85 = v78[452];
    swift_beginAccess();
    if (v79 != *(*(v84 + v85) + 16))
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_10000C4AC(v86, qword_1009865B0);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "Removed disconnected peripheral for which we have not yet gotten a disconnect delegate message", v89, 2u);
      }
    }

    v90 = *&v3[v141];
    v91 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
    swift_beginAccess();
    if (*(*(v90 + v91) + 16) || (v92 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect, swift_beginAccess(), *(*(v90 + v92) + 16)))
    {
      if (qword_100973B58 != -1)
      {
LABEL_47:
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_10000C4AC(v93, qword_1009865B0);
      v94 = v3;
      v95 = v3;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();

      v142 = v96;
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        LODWORD(v137) = v97;
        v99 = v98;
        v140 = swift_slowAlloc();
        v146 = v140;
        *v99 = 136315650;
        v100 = v141;
        v101 = *&v94[v141];
        v136 = v95;
        v102 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
        swift_beginAccess();
        v103 = *(v101 + v102);
        v135 = sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
        sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID);

        v104 = v94;
        v105 = Dictionary.description.getter();
        v107 = v106;

        v108 = sub_10000C4E4(v105, v107, &v146);

        *(v99 + 4) = v108;
        *(v99 + 12) = 2080;
        v109 = *&v104[v100];
        v110 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect;
        swift_beginAccess();
        v111 = *(v109 + v110);

        v112 = Dictionary.description.getter();
        v114 = v113;

        v115 = sub_10000C4E4(v112, v114, &v146);

        *(v99 + 14) = v115;
        *(v99 + 22) = 2080;
        v116 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo;
        v117 = v136;
        swift_beginAccess();
        v118 = *(v117 + v116);

        v119 = Dictionary.description.getter();
        v121 = v120;

        v122 = sub_10000C4E4(v119, v121, &v146);

        *(v99 + 24) = v122;
        v123 = v142;
        _os_log_impl(&_mh_execute_header, v142, v137, "ensureAllUnpaired - In progress! needingUnpair: %s, needingDisconnect: %s, peripheralsIConnectedTo: %s", v99, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_100624918();
      swift_allocError();
      *v124 = 1;
      return swift_willThrow();
    }

    else
    {
      v125 = *(v90 + 16);
      v143[3] = 0xD000000000000057;
      v143[4] = 0x80000001007995E0;
      v143[0] = 1275;

      v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v126);

      v127 = String.hashValue.getter();

      swift_beginAccess();
      v128 = sub_10046E4E8(v143, v127);
      swift_endAccess();
      if (v128)
      {
        sub_10061F624(&static os_log_type_t.default.getter, "ensureAllUnpaired completed");
      }
    }
  }

  return result;
}

uint64_t sub_10060969C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v7 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v23 = 0xD000000000000057;
  v24 = 0x80000001007995E0;
  v25 = 1293;

  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9 = String.hashValue.getter();

  swift_beginAccess();
  v10 = sub_10046E4E8(&v25, v9);
  swift_endAccess();
  if (v10)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "checkFindMyStatus called");
  }

  v11 = *(v1 + v6);
  if (*(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_finishedCheckingFindMyStatus))
  {
    goto LABEL_4;
  }

  if (*(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedCheckingFindMyStatus))
  {
LABEL_10:
    sub_100624918();
    swift_allocError();
    *v21 = 1;
    return swift_willThrow();
  }

  v17 = sub_100609B64();
  if (v17[2])
  {
    *(*(v1 + v6) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedCheckingFindMyStatus) = 1;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v19;
    v20[5] = v17;
    sub_1002B3098(0, 0, v5, &unk_10080DA30, v20);

    goto LABEL_10;
  }

  v11 = *(v1 + v6);
  *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_finishedCheckingFindMyStatus) = 1;
LABEL_4:
  v12 = *(v11 + 16);
  v23 = 0xD000000000000057;
  v24 = 0x80000001007995E0;
  v25 = 1314;

  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = String.hashValue.getter();

  swift_beginAccess();
  v15 = sub_10046E4E8(&v25, v14);
  swift_endAccess();
  if (v15)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "checkFindMyStatus completed");
  }
}

uint64_t sub_100609A10()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  v5 = &v11 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v7 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v7 && (*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8) & 1) == 0 && *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType) == 4 && *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_shouldFindMyPairOnSuccess) == 1)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v10 = v7;
    sub_1002B3098(0, 0, v5, &unk_10080D9E8, v9);
  }

  return result;
}

uint64_t *sub_100609B64()
{
  v39 = type metadata accessor for UUID();
  v1 = *(v39 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v39);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central) sharedPairingAgent];
  if (!result)
  {
    goto LABEL_40;
  }

  v6 = result;
  v7 = sub_1005FEA1C();

  v40 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v38 = v7 & 0xC000000000000001;
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v11 = v4;
    while (1)
    {
      if (v38)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v10 + 16))
        {
          goto LABEL_30;
        }

        v12 = *(v7 + v9 + 4);
      }

      v13 = v12;
      v4 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = v7;
      v15 = String._bridgeToObjectiveC()();
      v16 = [v13 hasTag:v15];

      if (v16)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = v40[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v7 = v14;
      ++v9;
      if (v4 == i)
      {
        v4 = v11;
        v18 = v40;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_17:

  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v19 = *(v18 + 16);
    if (v19)
    {
LABEL_20:
      v40 = _swiftEmptyArrayStorage;
      result = sub_100290034(0, v19 & ~(v19 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = 0;
        v21 = v40;
        v22 = v18;
        v38 = v18 & 0xC000000000000001;
        do
        {
          if (v38)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v22 + 8 * v20 + 32);
          }

          v24 = v23;
          v25 = [v23 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v40 = v21;
          v26 = v4;
          v28 = v21[2];
          v27 = v21[3];
          if (v28 >= v27 >> 1)
          {
            sub_100290034(v27 > 1, v28 + 1, 1);
            v21 = v40;
          }

          ++v20;
          v21[2] = v28 + 1;
          (*(v1 + 32))(v21 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v28, v26, v39);
          v4 = v26;
          v22 = v18;
        }

        while (v19 != v20);

        goto LABEL_34;
      }

      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_34:
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_1009865B0);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40 = v33;
    *v32 = 136315138;
    v34 = Array.description.getter();
    v36 = sub_10000C4E4(v34, v35, &v40);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Found paired Apple Pencil Pros: %s", v32, 0xCu);
    sub_10000C60C(v33);
  }

  return v21;
}

uint64_t sub_100609FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10060A01C, 0, 0);
}

uint64_t sub_10060A01C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_10060A140;
    v7 = v0[6];

    return sub_10060A23C(v7, v4, v5);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10060A140()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_10044AF7C, 0, 0);
}

uint64_t sub_10060A23C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 73) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_10060A264, 0, 0);
}

uint64_t sub_10060A264()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10000C4AC(v1, qword_1009865B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if any paired Apple Pencil Pros are FindMy-paired...", v4, 2u);
  }

  v5 = v0[2];

  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10060A40C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 9, &type metadata for Bool, &type metadata for Bool, 0, 0, &unk_10080DA48, v6, &type metadata for Bool);
}

uint64_t sub_10060A40C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10060A524, 0, 0);
}

uint64_t sub_10060A524()
{
  if (*(v0 + 72))
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_10060A674;
    v2 = *(v0 + 32);

    return sub_10060ABD8();
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No paired Apple Pencil Pros are FindMy-paired", v7, 2u);
    }

    v8 = *(v0 + 32);

    sub_10060A8C4(0);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10060A674(char a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 74) = a1;

  return _swift_task_switch(sub_10060A774, 0, 0);
}

uint64_t sub_10060A774()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v1 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Pencil being paired is already FindMy-paired to this account, assuming reattach and skipping alert", v6, 2u);
    }

    v7 = *(v0 + 32);

    sub_10060A8C4(0);
  }

  else
  {
    if (v5)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "At least one paired Apple Pencil Pro is FindMy-paired, showing warning alert", v8, 2u);
    }

    v9 = *(v0 + 73);
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);

    sub_10060B614(v10, v9 & 1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10060A8C4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_100624D18;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EA9B8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_10060ABD8()
{
  v1[19] = v0;
  v2 = type metadata accessor for UUID();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_10060AC98, 0, 0);
}

uint64_t sub_10060AC98()
{
  v35 = v0;
  v1 = *(v0[19] + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  v0[23] = v2;
  if (v2 && (v3 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType, (*(v3 + 8) & 1) == 0) && *v3 == 4)
  {
    v4 = objc_allocWithZone(SPAccessoryDiscoveryAndPairingSession);
    v5 = v2;
    v33 = [v4 initWithPreviousState:0];
    v0[24] = v33;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[25] = sub_10000C4AC(v6, qword_1009865B0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v31 = v9;
      v11 = v0[21];
      v10 = v0[22];
      v12 = v0[20];
      v13 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v13 = 136315138;
      v14 = [v7 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_10000C4E4(v15, v17, &v34);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v8, v31, "Checking if current Pencil (%s) is FindMy-paired to this account...", v13, 0xCu);
      sub_10000C60C(v32);
    }

    else
    {
    }

    v23 = v0[21];
    v22 = v0[22];
    v24 = v0[20];
    v25 = objc_opt_self();
    v26 = [v7 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v28 = *(v23 + 8);
    v0[26] = v28;
    v0[27] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v22, v24);
    v29 = [v25 checkSerialNumberWithIdentifier:isa];
    v0[28] = v29;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10060B0E4;
    v30 = swift_continuation_init();
    v0[17] = sub_10028088C(&unk_1009870A8, &qword_10080DA60);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10060CF88;
    v0[13] = &unk_1008EA968;
    v0[14] = v30;
    [v33 pairingStatusWithRequest:v29 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v19 = v0[22];

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_10060B0E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_10060B484;
  }

  else
  {
    v3 = sub_10060B1F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10060B1F4()
{
  v33 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 184);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = &selRef_setTargetQueue_;
  if (os_log_type_enabled(v5, v6))
  {
    v30 = *(v0 + 208);
    v31 = *(v0 + 216);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v10 = *(v0 + 160);
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v9 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v30(v8, v10);
    v16 = v13;
    v7 = &selRef_setTargetQueue_;
    v17 = sub_10000C4E4(v16, v15, &v32);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = [v4 pairingStatus];
    v19 = v18 == 2;
    if (v18 == 2)
    {
      v20 = 7562617;
    }

    else
    {
      v20 = 28526;
    }

    if (v19)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE200000000000000;
    }

    v22 = sub_10000C4E4(v20, v21, &v32);

    *(v11 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Got back from call to pairingStatus(with:) for identifier %s with result (is FindMy-paired to this account) %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v23 = *(v0 + 224);
  v25 = *(v0 + 184);
  v24 = *(v0 + 192);
  v26 = [v4 v7[163]];

  v27 = *(v0 + 176);

  v28 = *(v0 + 8);

  return v28(v26 == 2);
}

uint64_t sub_10060B484()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[24];
  v3 = v0[25];
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  v9 = v0[23];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get Pencil status with error: %@, falling back to unpaired", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v13 = v0[22];

  v14 = v0[1];

  return v14(0);
}

void sub_10060B614(uint64_t a1, int a2)
{
  v5 = 0xEC0000006C69636ELL;
  v6 = 0x655020656C707041;
  v68 = type metadata accessor for Date();
  v63 = *(v68 - 8);
  v7 = *(v63 + 64);
  v8 = __chkstk_darwin(v68);
  v59 = v9;
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = &v51 - v10;
  v11 = type metadata accessor for UUID();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  v13 = __chkstk_darwin(v11);
  v57 = v14;
  v58 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v64 = &v51 - v15;
  v62 = a2;
  v61 = a1;
  v16 = String._bridgeToObjectiveC()();
  v17 = SFLocalizedStringForKey();

  if (v17)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v18;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = SFLocalizedStringForKey();

  if (v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v21 = swift_allocObject();
    v55 = xmmword_1007F5670;
    *(v21 + 16) = xmmword_1007F5670;
    *(v21 + 56) = &type metadata for String;
    v22 = sub_100026764();
    *(v21 + 64) = v22;
    *(v21 + 32) = v6;
    *(v21 + 40) = v5;

    v56 = static String.localizedStringWithFormat(_:_:)();

    v23 = String._bridgeToObjectiveC()();
    v24 = SFLocalizedStringForKey();

    if (v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = swift_allocObject();
      *(v25 + 16) = v55;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = v22;
      *(v25 + 32) = v6;
      *(v25 + 40) = v5;
      static String.localizedStringWithFormat(_:_:)();

      v26 = String._bridgeToObjectiveC()();
      v27 = SFLocalizedStringForKey();

      *&v55 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
      v28 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
      v54 = v2;
      v52 = *(v65 + 16);
      v29 = v64;
      v52(v64, v28 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid, v66);
      v30 = v67;
      static Date.now.getter();
      v31 = [objc_allocWithZone(SFUserAlert) init];
      v32 = String._bridgeToObjectiveC()();

      [v31 setTitle:v32];

      v33 = String._bridgeToObjectiveC()();

      v53 = v31;
      [v31 setDefaultButtonTitle:v33];

      [v31 setAlternateButtonTitle:v27];
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v63;
      v36 = v60;
      (*(v63 + 16))(v60, v30, v68);
      v37 = v58;
      v38 = v66;
      v52(v58, v29, v66);
      v39 = (*(v35 + 80) + 24) & ~*(v35 + 80);
      v40 = (v59 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = v65;
      v42 = (*(v65 + 80) + v40 + 9) & ~*(v65 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v34;
      v44 = v36;
      v45 = v68;
      (*(v35 + 32))(v43 + v39, v44, v68);
      v46 = v43 + v40;
      *v46 = v61;
      *(v46 + 8) = v62 & 1;
      (*(v41 + 32))(v43 + v42, v37, v38);
      aBlock[4] = sub_100624C10;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F14B8;
      aBlock[3] = &unk_1008EA8F0;
      v47 = _Block_copy(aBlock);

      v48 = v53;
      [v53 setResponseHandler:v47];
      _Block_release(v47);
      [v48 present];
      (*(v35 + 8))(v67, v45);
      (*(v41 + 8))(v64, v38);
      v49 = *(v54 + v55);
      v50 = *(v49 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert);
      *(v49 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert) = v48;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10060BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_10028088C(&qword_1009870B8, &qword_10080DA68);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v3[17] = *(v8 + 64);
  v3[18] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10060BE8C, 0, 0);
}

uint64_t sub_10060BE8C()
{
  v1 = *(v0 + 88);
  v2 = [objc_allocWithZone(SPOwnerInterface) init];
  v40 = [v2 ownerSession];
  *(v0 + 168) = v40;

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 128);
    v39 = **(v0 + 80);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = *(v0 + 88) + v5;
    v37 = *(v4 + 72);
    v38 = v5;
    v35 = (*(v0 + 136) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v4 + 16);
    v34 = (v4 + 32);
    v7 = type metadata accessor for TaskPriority();
    v8 = *(v7 - 8);
    v33 = *(v8 + 56);
    v32 = (v8 + 48);
    v31 = (v8 + 8);
    do
    {
      v43 = v3;
      v11 = *(v0 + 160);
      v41 = *(v0 + 152);
      v12 = *(v0 + 144);
      v13 = *(v0 + 120);
      v33(v11, 1, 1, v7);
      v42 = v6;
      (*v36)(v12, v6, v13);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      (*v34)(v14 + v38, v12, v13);
      *(v14 + v35) = v40;
      sub_10000FF90(v11, v41, &qword_100976160, &qword_1007F8770);
      v16 = (*v32)(v41, 1, v7);
      swift_unknownObjectRetain();
      v17 = *(v0 + 152);
      if (v16 == 1)
      {
        sub_100005508(*(v0 + 152), &qword_100976160, &qword_1007F8770);
        if (*v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v31)(v17, v7);
        if (*v15)
        {
LABEL_9:
          v20 = *(v14 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v21;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_10080DA88;
      *(v22 + 24) = v14;

      if (v19 | v18)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v0 + 160);
      *(v0 + 48) = 1;
      *(v0 + 56) = v9;
      *(v0 + 64) = v39;
      swift_task_create();

      sub_100005508(v10, &qword_100976160, &qword_1007F8770);
      v6 = v42 + v37;
      v3 = v43 - 1;
    }

    while (v43 != 1);
  }

  v23 = *(v0 + 112);
  v24 = **(v0 + 80);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 185) = 0;
  v25 = sub_100011630(&qword_100987120, &qword_1009870B8, &qword_10080DA68);
  v26 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v27 = swift_task_alloc();
  *(v0 + 176) = v27;
  *v27 = v0;
  v27[1] = sub_10060C2FC;
  v28 = *(v0 + 112);
  v29 = *(v0 + 96);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 184, v29, v25);
}

uint64_t sub_10060C2FC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];

    (*(v5 + 8))(v4, v6);
    v7 = LongHash.init(storage:);
  }

  else
  {
    v7 = sub_10060C43C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10060C43C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 185);
  if (v1 == 2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 72);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *v7 = v2;
    swift_unknownObjectRelease();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 185) = (v2 | v1) & 1;
    v10 = sub_100011630(&qword_100987120, &qword_1009870B8, &qword_10080DA68);
    v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_10060C2FC;
    v13 = *(v0 + 112);
    v14 = *(v0 + 96);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 184, v14, v10);
  }
}

uint64_t sub_10060C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  v6 = type metadata accessor for UUID();
  v5[22] = v6;
  v7 = *(v6 - 8);
  v5[23] = v7;
  v8 = *(v7 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_10060C6AC, 0, 0);
}

uint64_t sub_10060C6AC()
{
  v26 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = type metadata accessor for Logger();
  v0[26] = sub_10000C4AC(v5, qword_1009865B0);
  v6 = *(v3 + 16);
  v0[27] = v6;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  v12 = v0[22];
  v11 = v0[23];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136315138;
    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000C4E4(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Adding check-status task for identifier %s", v13, 0xCu);
    sub_10000C60C(v24);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[29] = v17;
  v19 = v0[20];
  v20 = v0[21];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[30] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10060C9BC;
  v22 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_100987128, &qword_10080DA98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10034B0A4;
  v0[13] = &unk_1008EAA30;
  v0[14] = v22;
  [v20 peripheralConnectionMaterialForAccessoryIdentifier:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10060C9BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_10060CD44;
  }

  else
  {
    v3 = sub_10060CACC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10060CACC()
{
  v27 = v0;
  v1 = *(v0 + 144);

  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  (*(v0 + 216))(*(v0 + 192), *(v0 + 160), *(v0 + 176));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 232);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 176);
  if (v7)
  {
    v25 = v6;
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 136315394;
    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v8(v9, v11);
    v16 = sub_10000C4E4(v13, v15, &v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    if (v4)
    {
      v17 = 7562617;
    }

    else
    {
      v17 = 28526;
    }

    if (v4)
    {
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = 0xE200000000000000;
    }

    v19 = sub_10000C4E4(v17, v18, &v26);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v25, "Got back from call to peripheralConnectionMaterial(forAccessoryIdentifier:) for identifier %s with result (is FindMy-paired) %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v8(v9, v11);
  }

  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v22 = *(v0 + 152);

  *v22 = v4 != 0;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10060CD44()
{
  v23 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  swift_willThrow();

  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  (*(v0 + 216))(*(v0 + 192), *(v0 + 160), *(v0 + 176));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 232);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 176);
  if (v7)
  {
    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v12 = 136315394;
    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v8(v9, v11);
    v16 = sub_10000C4E4(v13, v15, v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_10000C4E4(28526, 0xE200000000000000, v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Got back from call to peripheralConnectionMaterial(forAccessoryIdentifier:) for identifier %s with result (is FindMy-paired) %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v8(v9, v11);
  }

  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  **(v0 + 152) = 0;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10060CF88(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_10060D058(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v18 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
    v19 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert);
    *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert) = 0;

    if (a1 == 1)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_1009865B0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        HIDWORD(v30) = a5;
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "User chose to continue pairing", v23, 2u);
        LOBYTE(a5) = BYTE4(v30);
      }

      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v25 = v24;
      (*(v11 + 8))(v14, v10);
      if ((a5 & 1) == 0 && a4 == 4)
      {
        *(*&v16[v17] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_shouldFindMyPairOnSuccess) = 1;
      }

      sub_10060A8C4(v25 > 18.0);
    }

    else
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_1009865B0);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "User chose to stop pairing", v29, 2u);
      }

      sub_10060D368(a6);
    }
  }
}

uint64_t sub_10060D368(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v20[1] = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v13 + 32))(v17 + v16, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_100624D00;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EA940;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v7, v4);
  (*(v21 + 8))(v11, v22);
}

void sub_10060D738(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_finishedCheckingFindMyStatus) = 1;
    if (a2)
    {
      sub_10060464C(1);
    }

    sub_1005F7090();
  }
}

uint64_t sub_10060D7B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (*(*(result + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral))
    {
      [*(result + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central) cancelPeripheralConnection:?];
    }

    sub_1005FDBD8(0);
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a2, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    sub_1005FCB7C(v6, 0);

    return sub_100005508(v6, &unk_100976120, &qword_1007F9260);
  }

  return result;
}

uint64_t sub_10060D954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for UUID();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10060DA14, 0, 0);
}

uint64_t sub_10060DA14()
{
  v1 = [objc_allocWithZone(SPAccessoryDiscoveryAndPairingSession) initWithPreviousState:0];
  v0[23] = v1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[24] = sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FindMy-pairing this Pencil...", v5, 2u);
  }

  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];

  v10 = [v9 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[25] = isa;
  (*(v7 + 8))(v6, v8);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10060DC78;
  v12 = swift_continuation_init();
  v0[17] = sub_10028088C(&unk_100987060, &unk_10080D9F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10060DFEC;
  v0[13] = &unk_1008EA828;
  v0[14] = v12;
  [v1 initiatePairingAndLocateAccessoryWith:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10060DC78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10060DE74;
  }

  else
  {
    v3 = sub_10060DD88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10060DD88()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Pencil is FindMy-paired", v7, 2u);
  }

  v8 = *(v0 + 176);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10060DE74()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[26];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to FindMy-pair this Pencil with error: %@", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v12 = v0[22];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10060DFEC(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a3;
    v9 = a3;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_10060E0FC(char a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    v3 = v1;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009865B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "showPairConsentPrompt. inViewService: %{BOOL}d", v8, 8u);
    }

    if (a1)
    {
      v9 = *(v3 + v2);
      v10 = &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceConnection;
    }

    else
    {
      v10 = &OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_uiAgentConnection;
    }

    v14 = *v10;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      sub_1005F2838(Strong, 1);
      aBlock[4] = sub_100612CEC;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EAA58;
      v17 = _Block_copy(aBlock);
      v18 = [v16 remoteObjectProxyWithErrorHandler:v17];
      _Block_release(v17);
      [v18 showPairConsentPrompt];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "ignore showPairConsentPrompt, UI updates disabled for current session state", v13, 2u);
    }
  }
}

void sub_10060E3D8()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    v2 = v0;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_1009865B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "showUnlockPrompt", v6, 2u);
    }

    v7 = *(v2 + v1);
    if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt) == 1)
    {
      *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_1005F2838(Strong, 1);
        aBlock[4] = sub_100612CE0;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004502D4;
        aBlock[3] = &unk_1008EAAA8;
        v10 = _Block_copy(aBlock);
        v11 = [v9 remoteObjectProxyWithErrorHandler:v10];
        _Block_release(v10);
        [v11 showUnlockPrompt];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "ignore showUnlockPrompt, UI updates disabled for current session state", v14, 2u);
    }
  }
}

uint64_t sub_10060E6AC(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E55;
    }

    if (a1 == 1)
    {
      return 842216258;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 842150466;
      case 3:
        return 842544194;
      case 4:
        return 842216770;
    }
  }

  _StringGuts.grow(_:)(46);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 125;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD00000000000002BLL;
}

void sub_10060E7E8(uint64_t a1, const char *a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009865B0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {
  }
}

uint64_t sub_10060E9B0()
{
  v1[7] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10060EAD8, 0, 0);
}

uint64_t sub_10060EAD8()
{
  if (BKSHIDServicesIsSmartCoverClosed())
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not showing Pencil UI because cover is closed";
    goto LABEL_6;
  }

  v12 = *(v0 + 56);
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (*(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted) == 1)
  {
    *(v12 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted) = 1;
  }

  else
  {
    v14 = sub_1005F2FF4();
    v15 = *(v12 + v13);
    *(v12 + v13) = v14 & 1;
    if ((v14 & 1) != v15)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 56);
      v17 = type metadata accessor for Logger();
      sub_10000C4AC(v17, qword_1009865B0);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 56);
      if (v21)
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = *(v12 + v13);

        _os_log_impl(&_mh_execute_header, v19, v20, "sbHasStarted = %{BOOL}d", v23, 8u);
      }

      else
      {
      }
    }

    if ((*(v12 + v13) & 1) == 0)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000C4AC(v35, qword_1009865B0);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_7;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Not showing Pencil UI because SpringBoard hasn't started";
      goto LABEL_6;
    }
  }

  v24 = *(v0 + 56);
  v25 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  *(v0 + 120) = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  if ([*(v24 + v25) screenOn])
  {
LABEL_30:
    if ([*(*(v0 + 56) + *(v0 + 120)) screenOn])
    {
      v6 = 1;
      goto LABEL_8;
    }

    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v2, v3))
    {
LABEL_7:

      v6 = 0;
LABEL_8:
      v7 = *(v0 + 112);
      v9 = *(v0 + 80);
      v8 = *(v0 + 88);

      v10 = *(v0 + 8);

      return v10(v6);
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Not showing Pencil UI because screen isn't on";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

    goto LABEL_7;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000C4AC(v26, qword_1009865B0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Turning on screen for showing Pencil UI...", v29, 2u);
  }

  SBSUndimScreen();
  if ([*(v24 + v25) screenOn])
  {
    v30 = *(v0 + 128);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Turned on screen for showing Pencil UI", v33, 2u);
    }

    goto LABEL_30;
  }

  v36 = *(v0 + 112);
  v37 = *(v0 + 88);
  v38 = *(v0 + 96);
  v40 = *(v0 + 72);
  v39 = *(v0 + 80);
  v41 = *(v0 + 64);
  v42 = static Duration.seconds(_:)();
  v44 = v43;
  static Clock<>.continuous.getter();
  *(v0 + 40) = v42;
  *(v0 + 48) = v44;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v45 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v46 = *(v40 + 8);
  *(v0 + 136) = v46;
  *(v0 + 144) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v39, v41);
  v47 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v48 = swift_task_alloc();
  *(v0 + 152) = v48;
  *v48 = v0;
  v48[1] = sub_10060F17C;
  v49 = *(v0 + 112);
  v51 = *(v0 + 88);
  v50 = *(v0 + 96);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v51, v0 + 16, v50, v45);
}

uint64_t sub_10060F17C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v14 = *v1;

  if (v0)
  {
    v5 = v2[17];
    v4 = v2[18];
    v6 = v2[11];
    v7 = v2[8];

    v5(v6, v7);
    v8 = sub_10060F66C;
  }

  else
  {
    v9 = v2[18];
    v11 = v2[13];
    v10 = v2[14];
    v12 = v2[12];
    (v2[17])(v2[11], v2[8]);
    (*(v11 + 8))(v10, v12);
    v8 = sub_10060F2E8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10060F2E8()
{
  if ([*(*(v0 + 56) + *(v0 + 120)) screenOn])
  {
    v1 = *(v0 + 128);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Turned on screen for showing Pencil UI", v4, 2u);
    }

    v5 = [*(*(v0 + 56) + *(v0 + 120)) screenOn];
    if ((v5 & 1) == 0)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_1009865B0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Not showing Pencil UI because screen isn't on", v9, 2u);
      }
    }

    v10 = *(v0 + 112);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);

    v13 = *(v0 + 8);

    return v13(v5);
  }

  else
  {
    v15 = *(v0 + 112);
    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = static Duration.seconds(_:)();
    v23 = v22;
    static Clock<>.continuous.getter();
    *(v0 + 40) = v21;
    *(v0 + 48) = v23;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v24 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v25 = *(v19 + 8);
    *(v0 + 136) = v25;
    *(v0 + 144) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v18, v20);
    v26 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v27 = swift_task_alloc();
    *(v0 + 152) = v27;
    *v27 = v0;
    v27[1] = sub_10060F17C;
    v28 = *(v0 + 112);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v30, v0 + 16, v29, v24);
  }
}

uint64_t sub_10060F66C()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  if ([*(*(v0 + 56) + *(v0 + 120)) screenOn])
  {
    v1 = *(v0 + 128);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Turned on screen for showing Pencil UI", v4, 2u);
    }

    v5 = [*(*(v0 + 56) + *(v0 + 120)) screenOn];
    if ((v5 & 1) == 0)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_1009865B0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Not showing Pencil UI because screen isn't on", v9, 2u);
      }
    }

    v10 = *(v0 + 112);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);

    v13 = *(v0 + 8);

    return v13(v5);
  }

  else
  {
    v15 = *(v0 + 112);
    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = static Duration.seconds(_:)();
    v23 = v22;
    static Clock<>.continuous.getter();
    *(v0 + 40) = v21;
    *(v0 + 48) = v23;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    v24 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v25 = *(v19 + 8);
    *(v0 + 136) = v25;
    *(v0 + 144) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v18, v20);
    v26 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v27 = swift_task_alloc();
    *(v0 + 152) = v27;
    *v27 = v0;
    v27[1] = sub_10060F17C;
    v28 = *(v0 + 112);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v30, v0 + 16, v29, v24);
  }
}

uint64_t sub_10060F9EC()
{
  v1[13] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10060FB14, 0, 0);
}

uint64_t sub_10060FB14()
{
  v1 = v0[13];
  v0[21] = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_uiAgentConnection;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
LABEL_12:

    v12 = v0[21];
    v13 = v0[13];
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      v0[6] = sub_100610B0C;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1004502D4;
      v0[5] = &unk_1008EAD50;
      v16 = _Block_copy(v0 + 2);
      v17 = [v15 remoteObjectProxyWithErrorHandler:v16];
      _Block_release(v16);
    }

    else
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_1009865B0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not showing Pencil UI because UI agent is not connected", v21, 2u);
      }

      v15 = 0;
      v17 = 0;
    }

    v22 = v0[20];
    v24 = v0[16];
    v23 = v0[17];

    v25 = v0[1];

    return v25(v15, v17);
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[22] = sub_10000C4AC(v3, qword_1009865B0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connecting to UI agent for showing Pencil UI...", v6, 2u);
  }

  if (qword_1009738A0 != -1)
  {
    swift_once();
  }

  sub_1004521F4();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v0[22];

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Connected to UI agent for showing Pencil UI", v11, 2u);
    }

    Strong = v9;
    goto LABEL_12;
  }

  v27 = v0[20];
  v28 = v0[17];
  v29 = v0[18];
  v31 = v0[15];
  v30 = v0[16];
  v32 = v0[14];
  v33 = static Duration.seconds(_:)();
  v35 = v34;
  static Clock<>.continuous.getter();
  v0[11] = v33;
  v0[12] = v35;
  v0[9] = 0;
  v0[8] = 0;
  *(v0 + 80) = 1;
  v36 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v37 = *(v31 + 8);
  v0[23] = v37;
  v0[24] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v30, v32);
  v38 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v39 = swift_task_alloc();
  v0[25] = v39;
  *v39 = v0;
  v39[1] = sub_100610038;
  v40 = v0[20];
  v42 = v0[17];
  v41 = v0[18];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v42, v0 + 8, v41, v36);
}

uint64_t sub_100610038()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v14 = *v1;

  if (v0)
  {
    v5 = v2[23];
    v4 = v2[24];
    v6 = v2[17];
    v7 = v2[14];

    v5(v6, v7);
    v8 = sub_1006105B8;
  }

  else
  {
    v9 = v2[24];
    v11 = v2[19];
    v10 = v2[20];
    v12 = v2[18];
    (v2[23])(v2[17], v2[14]);
    (*(v11 + 8))(v10, v12);
    v8 = sub_1006101A4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1006101A4()
{
  v1 = v0[13] + v0[21];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[22];

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Connected to UI agent for showing Pencil UI", v6, 2u);
    }

    v7 = v0[21];
    v8 = v0[13];
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v0[6] = sub_100610B0C;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1004502D4;
      v0[5] = &unk_1008EAD50;
      v11 = _Block_copy(v0 + 2);
      v12 = [v10 remoteObjectProxyWithErrorHandler:v11];
      _Block_release(v11);
    }

    else
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_1009865B0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Not showing Pencil UI because UI agent is not connected", v32, 2u);
      }

      v10 = 0;
      v12 = 0;
    }

    v33 = v0[20];
    v35 = v0[16];
    v34 = v0[17];

    v36 = v0[1];

    return v36(v10, v12);
  }

  else
  {
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v19 = static Duration.seconds(_:)();
    v21 = v20;
    static Clock<>.continuous.getter();
    v0[11] = v19;
    v0[12] = v21;
    v0[9] = 0;
    v0[8] = 0;
    *(v0 + 80) = 1;
    v22 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v23 = *(v17 + 8);
    v0[23] = v23;
    v0[24] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v16, v18);
    v24 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v25 = swift_task_alloc();
    v0[25] = v25;
    *v25 = v0;
    v25[1] = sub_100610038;
    v26 = v0[20];
    v28 = v0[17];
    v27 = v0[18];

    return dispatch thunk of Clock.sleep(until:tolerance:)(v28, v0 + 8, v27, v22);
  }
}

uint64_t sub_1006105B8()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[21];
  v2 = v0[13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = v0[22];

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Connected to UI agent for showing Pencil UI", v7, 2u);
    }

    v8 = v0[21];
    v9 = v0[13];
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v0[6] = sub_100610B0C;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1004502D4;
      v0[5] = &unk_1008EAD50;
      v12 = _Block_copy(v0 + 2);
      v13 = [v11 remoteObjectProxyWithErrorHandler:v12];
      _Block_release(v12);
    }

    else
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000C4AC(v30, qword_1009865B0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Not showing Pencil UI because UI agent is not connected", v33, 2u);
      }

      v11 = 0;
      v13 = 0;
    }

    v34 = v0[20];
    v36 = v0[16];
    v35 = v0[17];

    v37 = v0[1];

    return v37(v11, v13);
  }

  else
  {
    v14 = v0[20];
    v15 = v0[17];
    v16 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];
    v20 = static Duration.seconds(_:)();
    v22 = v21;
    static Clock<>.continuous.getter();
    v0[11] = v20;
    v0[12] = v22;
    v0[8] = 0;
    v0[9] = 0;
    *(v0 + 80) = 1;
    v23 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v24 = *(v18 + 8);
    v0[23] = v24;
    v0[24] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v17, v19);
    v25 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v26 = swift_task_alloc();
    v0[25] = v26;
    *v26 = v0;
    v26[1] = sub_100610038;
    v27 = v0[20];
    v29 = v0[17];
    v28 = v0[18];

    return dispatch thunk of Clock.sleep(until:tolerance:)(v29, v0 + 8, v28, v23);
  }
}

id sub_1006109C8(void *a1, Swift::Int a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setPattern:v4];

  [a1 setDeviceType:0];
  [a1 setSenderID:0];
  sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(a2).super.super.isa;
  [a1 setPowerSourceID:isa];

  v6 = mach_absolute_time();

  return [a1 setTimestamp:v6];
}

void sub_100610AC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_100610B18()
{
  v1[18] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100610C58, 0, 0);
}

uint64_t sub_100610C58()
{
  v1 = v0[18];
  sub_100612B04();
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v0[28] = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *(v1 + v2);
  v4 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated);
  if (v4 == 2)
  {
    v5 = v0[27];
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[20];
    v11 = static Duration.seconds(_:)();
    v13 = v12;
    static Clock<>.continuous.getter();
    v0[14] = v11;
    v0[15] = v13;
    v0[9] = 0;
    v0[8] = 0;
    v14 = v0 + 8;
    *(v0 + 80) = 1;
    v15 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v16 = *(v10 + 8);
    v0[29] = v16;
    v0[30] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v8, v9);
    v17 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v18 = swift_task_alloc();
    v0[31] = v18;
    *v18 = v0;
    v18[1] = sub_1006112B8;
    v19 = v0[27];
    v21 = v0[23];
    v20 = v0[24];
LABEL_3:

    return dispatch thunk of Clock.sleep(until:tolerance:)(v21, v14, v20, v15);
  }

  if ((v4 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_1009865B0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Not showing fake first-pair UI because view service could not be activated";
    goto LABEL_13;
  }

  v22 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v22 == 2)
  {
    v23 = v0[26];
    v24 = v0[24];
    v26 = v0[21];
    v25 = v0[22];
    v27 = v0[19];
    v28 = v0[20];
    v29 = static Duration.seconds(_:)();
    v31 = v30;
    static Clock<>.continuous.getter();
    v0[16] = v29;
    v0[17] = v31;
    v0[12] = 0;
    v0[11] = 0;
    v14 = v0 + 11;
    *(v0 + 104) = 1;
    v15 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v32 = *(v28 + 8);
    v0[32] = v32;
    v0[33] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v25, v27);
    v33 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v34 = swift_task_alloc();
    v0[34] = v34;
    *v34 = v0;
    v34[1] = sub_1006120E8;
    v35 = v0[26];
    v20 = v0[24];
    v21 = v0[21];
    goto LABEL_3;
  }

  if ((v22 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000C4AC(v51, qword_1009865B0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v0[6] = sub_100612CD4;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1004502D4;
    v0[5] = &unk_1008EBA20;
    v50 = _Block_copy(v0 + 2);
    v42 = [v41 remoteObjectProxyWithErrorHandler:v50];
    _Block_release(v50);
    goto LABEL_15;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10000C4AC(v52, qword_1009865B0);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Not showing fake first-pair UI because view service is not connected";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);
  }

LABEL_14:

  v41 = 0;
  v42 = 0;
LABEL_15:
  v44 = v0[26];
  v43 = v0[27];
  v46 = v0[22];
  v45 = v0[23];
  v47 = v0[21];

  v48 = v0[1];

  return v48(v41, v42);
}

uint64_t sub_1006112B8()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v14 = *v1;

  if (v0)
  {
    v5 = v2[29];
    v4 = v2[30];
    v6 = v2[23];
    v7 = v2[19];

    v5(v6, v7);
    v8 = sub_100611A7C;
  }

  else
  {
    v9 = v2[30];
    v10 = v2[27];
    v11 = v2[24];
    v12 = v2[25];
    (v2[29])(v2[23], v2[19]);
    (*(v12 + 8))(v10, v11);
    v8 = sub_100611428;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100611428()
{
  v1 = *(v0[18] + v0[28]);
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated);
  if (v2 == 2)
  {
    v3 = v0[27];
    v4 = v0[23];
    v5 = v0[24];
    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[20];
    v9 = static Duration.seconds(_:)();
    v11 = v10;
    static Clock<>.continuous.getter();
    v0[14] = v9;
    v0[15] = v11;
    v0[9] = 0;
    v0[8] = 0;
    v12 = v0 + 8;
    *(v0 + 80) = 1;
    v13 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v14 = *(v8 + 8);
    v0[29] = v14;
    v0[30] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v6, v7);
    v15 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v16 = swift_task_alloc();
    v0[31] = v16;
    *v16 = v0;
    v16[1] = sub_1006112B8;
    v17 = v0[27];
    v19 = v0[23];
    v18 = v0[24];
LABEL_3:

    return dispatch thunk of Clock.sleep(until:tolerance:)(v19, v12, v18, v13);
  }

  if ((v2 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_1009865B0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Not showing fake first-pair UI because view service could not be activated";
    goto LABEL_13;
  }

  v20 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v20 == 2)
  {
    v21 = v0[26];
    v22 = v0[24];
    v24 = v0[21];
    v23 = v0[22];
    v25 = v0[19];
    v26 = v0[20];
    v27 = static Duration.seconds(_:)();
    v29 = v28;
    static Clock<>.continuous.getter();
    v0[16] = v27;
    v0[17] = v29;
    v0[12] = 0;
    v0[11] = 0;
    v12 = v0 + 11;
    *(v0 + 104) = 1;
    v13 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v30 = *(v26 + 8);
    v0[32] = v30;
    v0[33] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v23, v25);
    v31 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v32 = swift_task_alloc();
    v0[34] = v32;
    *v32 = v0;
    v32[1] = sub_1006120E8;
    v33 = v0[26];
    v18 = v0[24];
    v19 = v0[21];
    goto LABEL_3;
  }

  if ((v20 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000C4AC(v49, qword_1009865B0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v0[6] = sub_100612CD4;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1004502D4;
    v0[5] = &unk_1008EBA20;
    v48 = _Block_copy(v0 + 2);
    v40 = [v39 remoteObjectProxyWithErrorHandler:v48];
    _Block_release(v48);
    goto LABEL_15;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000C4AC(v50, qword_1009865B0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Not showing fake first-pair UI because view service is not connected";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);
  }

LABEL_14:

  v39 = 0;
  v40 = 0;
LABEL_15:
  v42 = v0[26];
  v41 = v0[27];
  v44 = v0[22];
  v43 = v0[23];
  v45 = v0[21];

  v46 = v0[1];

  return v46(v39, v40);
}

uint64_t sub_100611A7C()
{
  (*(v0[25] + 8))(v0[27], v0[24]);
  v1 = *(v0[18] + v0[28]);
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated);
  if (v2 == 2)
  {
    v3 = v0[27];
    v4 = v0[23];
    v5 = v0[24];
    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[20];
    v9 = static Duration.seconds(_:)();
    v11 = v10;
    static Clock<>.continuous.getter();
    v0[14] = v9;
    v0[15] = v11;
    v0[8] = 0;
    v0[9] = 0;
    *(v0 + 80) = 1;
    v12 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v13 = *(v8 + 8);
    v0[29] = v13;
    v0[30] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v6, v7);
    v14 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v15 = swift_task_alloc();
    v0[31] = v15;
    *v15 = v0;
    v15[1] = sub_1006112B8;
    v16 = v0[27];
    v17 = v0[24];
    v18 = v0 + 8;
    v19 = v0[23];
    v20 = v12;
LABEL_3:

    return dispatch thunk of Clock.sleep(until:tolerance:)(v19, v18, v17, v20);
  }

  if ((v2 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_1009865B0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Not showing fake first-pair UI because view service could not be activated";
    goto LABEL_13;
  }

  v21 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v21 == 2)
  {
    v22 = v0[26];
    v23 = v0[24];
    v25 = v0[21];
    v24 = v0[22];
    v26 = v0[19];
    v27 = v0[20];
    v28 = static Duration.seconds(_:)();
    v30 = v29;
    static Clock<>.continuous.getter();
    v0[16] = v28;
    v0[17] = v30;
    v0[12] = 0;
    v0[11] = 0;
    *(v0 + 104) = 1;
    v31 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v32 = *(v27 + 8);
    v0[32] = v32;
    v0[33] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v24, v26);
    v33 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v34 = swift_task_alloc();
    v0[34] = v34;
    *v34 = v0;
    v34[1] = sub_1006120E8;
    v35 = v0[26];
    v17 = v0[24];
    v19 = v0[21];
    v18 = v0 + 11;
    v20 = v31;
    goto LABEL_3;
  }

  if ((v21 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000C4AC(v51, qword_1009865B0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v0[6] = sub_100612CD4;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1004502D4;
    v0[5] = &unk_1008EBA20;
    v50 = _Block_copy(v0 + 2);
    v42 = [v41 remoteObjectProxyWithErrorHandler:v50];
    _Block_release(v50);
    goto LABEL_15;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10000C4AC(v52, qword_1009865B0);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Not showing fake first-pair UI because view service is not connected";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);
  }

LABEL_14:

  v41 = 0;
  v42 = 0;
LABEL_15:
  v44 = v0[26];
  v43 = v0[27];
  v46 = v0[22];
  v45 = v0[23];
  v47 = v0[21];

  v48 = v0[1];

  return v48(v41, v42);
}

uint64_t sub_1006120E8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v14 = *v1;

  if (v0)
  {
    v5 = v2[32];
    v4 = v2[33];
    v6 = v2[21];
    v7 = v2[19];

    v5(v6, v7);
    v8 = sub_1006126B0;
  }

  else
  {
    v9 = v2[33];
    v11 = v2[25];
    v10 = v2[26];
    v12 = v2[24];
    (v2[32])(v2[21], v2[19]);
    (*(v11 + 8))(v10, v12);
    v8 = sub_100612258;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100612258()
{
  v1 = *(*(v0[18] + v0[28]) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v1 == 2)
  {
    v2 = v0[26];
    v3 = v0[24];
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[19];
    v7 = v0[20];
    v8 = static Duration.seconds(_:)();
    v10 = v9;
    static Clock<>.continuous.getter();
    v0[16] = v8;
    v0[17] = v10;
    v0[12] = 0;
    v0[11] = 0;
    *(v0 + 104) = 1;
    v11 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v12 = *(v7 + 8);
    v0[32] = v12;
    v0[33] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v4, v6);
    v13 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v14 = swift_task_alloc();
    v0[34] = v14;
    *v14 = v0;
    v14[1] = sub_1006120E8;
    v15 = v0[26];
    v16 = v0[24];
    v17 = v0[21];

    return dispatch thunk of Clock.sleep(until:tolerance:)(v17, v0 + 11, v16, v11);
  }

  if ((v1 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_1009865B0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_17;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_1009865B0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_17;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Not showing fake first-pair UI because view service is not connected";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

LABEL_17:

    v19 = 0;
    v21 = 0;
    goto LABEL_18;
  }

  v19 = Strong;
  v0[6] = sub_100612CD4;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1004502D4;
  v0[5] = &unk_1008EBA20;
  v20 = _Block_copy(v0 + 2);
  v21 = [v19 remoteObjectProxyWithErrorHandler:v20];
  _Block_release(v20);
LABEL_18:
  v29 = v0[26];
  v28 = v0[27];
  v31 = v0[22];
  v30 = v0[23];
  v32 = v0[21];

  v33 = v0[1];

  return v33(v19, v21);
}

uint64_t sub_1006126B0()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = *(*(v0[18] + v0[28]) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished);
  if (v1 == 2)
  {
    v2 = v0[26];
    v3 = v0[24];
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[19];
    v7 = v0[20];
    v8 = static Duration.seconds(_:)();
    v10 = v9;
    static Clock<>.continuous.getter();
    v0[16] = v8;
    v0[17] = v10;
    v0[11] = 0;
    v0[12] = 0;
    *(v0 + 104) = 1;
    v11 = sub_10000D4DC(&qword_1009762F0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_10000D4DC(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v12 = *(v7 + 8);
    v0[32] = v12;
    v0[33] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v4, v6);
    v13 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v14 = swift_task_alloc();
    v0[34] = v14;
    *v14 = v0;
    v14[1] = sub_1006120E8;
    v15 = v0[26];
    v16 = v0[24];
    v17 = v0[21];

    return dispatch thunk of Clock.sleep(until:tolerance:)(v17, v0 + 11, v16, v11);
  }

  if ((v1 & 1) == 0)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_1009865B0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_17;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Not showing fake first-pair UI because view service XPC connection could not be established";
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_1009865B0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_17;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Not showing fake first-pair UI because view service is not connected";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

LABEL_17:

    v19 = 0;
    v21 = 0;
    goto LABEL_18;
  }

  v19 = Strong;
  v0[6] = sub_100612CD4;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1004502D4;
  v0[5] = &unk_1008EBA20;
  v20 = _Block_copy(v0 + 2);
  v21 = [v19 remoteObjectProxyWithErrorHandler:v20];
  _Block_release(v20);
LABEL_18:
  v29 = v0[26];
  v28 = v0[27];
  v31 = v0[22];
  v30 = v0[23];
  v32 = v0[21];

  v33 = v0[1];

  return v33(v19, v21);
}

void sub_100612B04()
{
  v1 = v0;
  v2 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithServiceName:v3 viewControllerClassName:v4];

  v13 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  sub_10027FD18(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 setUserInfo:isa];

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v8 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v9 = objc_opt_self();

  sub_1005F1ED8([v9 newHandleWithDefinition:v5 configurationContext:v13]);

  v10 = *(*(v1 + v7) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle);
  if (v10)
  {
    [v10 sd_addObserver:v1];
    v11 = *(*(v1 + v7) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle);
    if (v11)
    {
      v12 = v11;
      [v12 activateWithContext:0];
    }
  }
}

void sub_100612D04()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009865B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "acquireHUDTransaction", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    aBlock[4] = sub_100612F44;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004502D4;
    aBlock[3] = &unk_1008EADC8;
    v6 = _Block_copy(aBlock);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v6];
    _Block_release(v6);
    [v7 acquireHUDTransaction];

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "no UI service to retain", v9, 2u);
    }
  }
}

uint64_t sub_100612F68(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 144) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100613080, 0, 0);
}

uint64_t sub_100613080()
{
  v14 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_10000C4AC(v1, qword_1009865B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_10060E6AC(v4);
    v9 = sub_10000C4E4(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "showFakeFirstPairUI [type: %s]", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_10061323C;
  v11 = v0[4];

  return sub_10060E9B0();
}

uint64_t sub_10061323C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *v1;

  if (a1)
  {
    v6 = swift_task_alloc();
    v3[13] = v6;
    *v6 = v5;
    v6[1] = sub_1006133D0;
    v7 = v3[4];

    return sub_100610B18();
  }

  else
  {
    v10 = v3[9];
    v9 = v3[10];
    v13 = v3 + 5;
    v11 = v3[5];
    v12 = v13[1];

    v14 = *(v5 + 8);

    return v14();
  }
}

uint64_t sub_1006133D0(void *a1, uint64_t a2)
{
  v4 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = a2;

  return _swift_task_switch(sub_1006134D8, 0, 0);
}

uint64_t sub_1006134D8()
{
  if (*(v0 + 112))
  {
    if (*(v0 + 16) == 3)
    {
      v1 = *(v0 + 144);
      swift_unknownObjectRetain();
      v2 = swift_task_alloc();
      *(v0 + 120) = v2;
      *v2 = v0;
      v2[1] = sub_10061394C;
      v3 = *(v0 + 24);
      v4 = *(v0 + 32);

      return sub_100614268(3, v3, v1 & 1, 1, 1);
    }

    v10 = *(v0 + 48);
    v11 = *(v0 + 32);
    v12 = *(v0 + 144);
    v13 = *(v0 + 24);
    if (v12)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = *(v0 + 24);
    }

    v15 = *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if (*(v15 + 8))
    {
      v16 = 0;
    }

    else
    {
      v16 = *v15;
    }

    swift_unknownObjectRetain_n();
    UUID.init()();
    v17 = type metadata accessor for UUID();
    v18 = *(v17 - 8);
    v19 = 1;
    (*(v18 + 56))(v10, 0, 1, v17);
    v20 = *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) - 1;
    if (v20 <= 3)
    {
      v19 = qword_10080DB58[v20];
    }

    v21 = v12 ^ 1;
    v22 = *(v0 + 40);
    sub_10000FF90(*(v0 + 48), v22, &unk_100976120, &qword_1007F9260);
    if ((*(v18 + 48))(v22, 1, v17) == 1)
    {
      isa = 0;
    }

    else
    {
      v24 = *(v0 + 40);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v18 + 8))(v24, v17);
    }

    v25 = *(v0 + 112);
    v26 = *(v0 + 48);
    v27 = *(v0 + 16);
    [v25 updateDeviceInfoWithDeviceType:v16 batteryLevel:v21 & 1 batteryLevelKnown:v19 edge:0 orientation:1 isCharging:isa identifier:v14];

    swift_unknownObjectRelease();
    sub_100005508(v26, &unk_100976120, &qword_1007F9260);
    [v25 showPairingStarted];
    if (v27 == 4 || v27 == 1)
    {
      v28 = *(v0 + 72);
      v29 = static Duration.seconds(_:)();
      v31 = v30;
      static Clock<>.continuous.getter();
      v32 = swift_task_alloc();
      *(v0 + 136) = v32;
      *v32 = v0;
      v32[1] = sub_100614018;
      v33 = *(v0 + 72);

      return sub_10002ED10(v29, v31, 0, 0, 1);
    }

    v34 = *(v0 + 112);
    [v34 setDeviceType:*(v0 + 16)];
    [v34 showPairingSuccess];
    swift_unknownObjectRelease_n();
  }

  else
  {
    v6 = *(v0 + 88);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get view service connection to show fake first-pair UI", v9, 2u);
    }
  }

  v36 = *(v0 + 72);
  v35 = *(v0 + 80);
  v38 = *(v0 + 40);
  v37 = *(v0 + 48);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10061394C()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_100613A48, 0, 0);
}

uint64_t sub_100613A48()
{
  v1 = *(v0 + 80);
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_100613B28;
  v6 = *(v0 + 80);

  return sub_10002ED10(v2, v4, 0, 0, 1);
}

uint64_t sub_100613B28()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = v2[10];
  v6 = v2[8];
  v7 = v2[7];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_100625F10;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_100613CC0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100613CC0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 144);
  v5 = *(v0 + 24);
  if (v4)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *(v0 + 24);
  }

  v7 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  if (*(v7 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
  }

  swift_unknownObjectRetain();
  UUID.init()();
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = 1;
  (*(v10 + 56))(v2, 0, 1, v9);
  v12 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) - 1;
  if (v12 <= 3)
  {
    v11 = qword_10080DB58[v12];
  }

  v13 = v4 ^ 1;
  v14 = *(v0 + 40);
  sub_10000FF90(*(v0 + 48), v14, &unk_100976120, &qword_1007F9260);
  if ((*(v10 + 48))(v14, 1, v9) == 1)
  {
    isa = 0;
  }

  else
  {
    v16 = *(v0 + 40);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v16, v9);
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 48);
  v19 = *(v0 + 16);
  [v17 updateDeviceInfoWithDeviceType:v8 batteryLevel:v13 & 1 batteryLevelKnown:v11 edge:0 orientation:1 isCharging:isa identifier:v6];

  swift_unknownObjectRelease();
  sub_100005508(v18, &unk_100976120, &qword_1007F9260);
  [v17 showPairingStarted];
  if (v19 == 4 || v19 == 1)
  {
    v20 = *(v0 + 72);
    v21 = static Duration.seconds(_:)();
    v23 = v22;
    static Clock<>.continuous.getter();
    v24 = swift_task_alloc();
    *(v0 + 136) = v24;
    *v24 = v0;
    v24[1] = sub_100614018;
    v25 = *(v0 + 72);

    return sub_10002ED10(v21, v23, 0, 0, 1);
  }

  else
  {
    v27 = *(v0 + 112);
    [v27 setDeviceType:*(v0 + 16)];
    [v27 showPairingSuccess];
    swift_unknownObjectRelease_n();
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v31 = *(v0 + 40);
    v30 = *(v0 + 48);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100614018()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_100626058;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1006141B0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1006141B0()
{
  v1 = v0[14];
  [v1 setDeviceType:v0[2]];
  [v1 showPairingSuccess];
  swift_unknownObjectRelease_n();
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100614268(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 257) = a4;
  *(v6 + 256) = a3;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  *(v6 + 104) = v7;
  v8 = *(v7 - 8);
  *(v6 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v6 + 128) = v10;
  v11 = *(v10 - 8);
  *(v6 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v13 = type metadata accessor for DispatchTimeInterval();
  *(v6 + 152) = v13;
  v14 = *(v13 - 8);
  *(v6 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v16 = type metadata accessor for DispatchTime();
  *(v6 + 176) = v16;
  v17 = *(v16 - 8);
  *(v6 + 184) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v19 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100614498, 0, 0);
}

uint64_t sub_100614498()
{
  v20 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 224) = sub_10000C4AC(v1, qword_1009865B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 256);
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = sub_10060E6AC(v5);
    v9 = sub_10000C4E4(v7, v8, &v19);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    if (v4)
    {
      v10 = 0x8000000100799D30;
      v11 = 0xD000000000000015;
    }

    else
    {
      v12 = *(v0 + 80);
      v11 = Double.description.getter();
      v10 = v13;
    }

    v14 = *(v0 + 257);
    v15 = sub_10000C4E4(v11, v10, &v19);

    *(v6 + 14) = v15;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "showFakePill [type: %s, charge: %s, charging: %{BOOL}d]", v6, 0x1Cu);
    swift_arrayDestroy();
  }

  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *v16 = v0;
  v16[1] = sub_1006146C8;
  v17 = *(v0 + 96);

  return sub_10060E9B0();
}

uint64_t sub_1006146C8(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = *v1;

  if (a1)
  {
    v6 = swift_task_alloc();
    v3[30] = v6;
    *v6 = v5;
    v6[1] = sub_10061488C;
    v7 = v3[12];

    return sub_10060F9EC();
  }

  else
  {
    v10 = v3[26];
    v9 = v3[27];
    v12 = v3[24];
    v11 = v3[25];
    v13 = v3[21];
    v14 = v3[18];
    v15 = v3[15];

    v16 = *(v5 + 8);

    return v16();
  }
}

uint64_t sub_10061488C(void *a1, uint64_t a2)
{
  v4 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = a2;

  return _swift_task_switch(sub_100614994, 0, 0);
}

uint64_t sub_100614994()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v0[27];
    v3 = v0[12];
    v4 = *(v0 + 256);
    v5 = *(v0 + 10);
    [swift_unknownObjectRetain() acquireHUDTransaction];
    if (v4)
    {
      v5 = 0.0;
    }

    v6 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if (*(v6 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = *v6;
    }

    v41 = v7;
    swift_unknownObjectRetain();
    UUID.init()();
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    v10 = 1;
    (*(v9 + 56))(v2, 0, 1, v8);
    v11 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) - 1;
    if (v11 <= 3)
    {
      v10 = qword_10080DB58[v11];
    }

    v38 = v4 ^ 1;
    v12 = v0[26];
    sub_10000FF90(v0[27], v12, &unk_100976120, &qword_1007F9260);
    if ((*(v9 + 48))(v12, 1, v8) == 1)
    {
      isa = 0;
    }

    else
    {
      v18 = v0[26];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v9 + 8))(v18, v8);
    }

    v19 = v0[27];
    v20 = v0[24];
    v21 = v0[25];
    v39 = v0[23];
    v49 = v0[22];
    v23 = v0[20];
    v22 = v0[21];
    v24 = v0[19];
    v47 = v0[17];
    v48 = v0[16];
    v43 = v0[18];
    v44 = v0[15];
    v45 = v0[13];
    v46 = v0[14];
    v37 = v0[11];
    [v1 updateDeviceInfoWithDeviceType:v41 batteryLevel:v38 & 1 batteryLevelKnown:v10 edge:0 orientation:*(v0 + 257) isCharging:isa identifier:v5];

    swift_unknownObjectRelease();
    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
    [v1 showChargingStatus];
    sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
    v42 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v22 = v37;
    (*(v23 + 104))(v22, enum case for DispatchTimeInterval.seconds(_:), v24);
    + infix(_:_:)();
    (*(v23 + 8))(v22, v24);
    v40 = *(v39 + 8);
    v40(v20, v49);
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    v0[6] = sub_100625C5C;
    v0[7] = v25;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008EB9F8;
    v26 = _Block_copy(v0 + 2);
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);

    swift_unknownObjectRelease_n();
    (*(v46 + 8))(v44, v45);
    (*(v47 + 8))(v43, v48);
    v40(v21, v49);
    v27 = v0[7];
  }

  else
  {
    v14 = v0[28];
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to get HUD connection to show fake pill", v17, 2u);
    }
  }

  v29 = v0[26];
  v28 = v0[27];
  v31 = v0[24];
  v30 = v0[25];
  v32 = v0[21];
  v33 = v0[18];
  v34 = v0[15];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100614F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v8;
  v6[19] = v7;

  return _swift_task_switch(sub_100614FF0, v8, v7);
}

uint64_t sub_100614FF0()
{
  v0[11] = 0x656772616863;
  v1 = v0[16];
  v0[12] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = v0[16], v3 = sub_100570754((v0 + 2)), (v4 & 1) != 0))
  {
    sub_10000C5B0(*(v0[16] + 56) + 32 * v3, (v0 + 7));
    sub_100285E74((v0 + 2));
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v0[13];
    }

    else
    {
      v6 = 0;
    }

    v7 = v5 ^ 1;
  }

  else
  {
    sub_100285E74((v0 + 2));
    v6 = 0;
    v7 = 1;
  }

  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_100615154;
  v10 = v0[14];
  v9 = v0[15];

  return sub_100612F68(v9, v6, v7);
}

uint64_t sub_100615154()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return _swift_task_switch(sub_10062619C, v4, v3);
}

uint64_t sub_100615274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v8;
  v6[19] = v7;

  return _swift_task_switch(sub_100615310, v8, v7);
}

uint64_t sub_100615310()
{
  v0[11] = 0x656772616863;
  v1 = v0[16];
  v0[12] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = v0[16], v3 = sub_100570754((v0 + 2)), (v4 & 1) != 0))
  {
    sub_10000C5B0(*(v0[16] + 56) + 32 * v3, (v0 + 7));
    sub_100285E74((v0 + 2));
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v0[13];
    }

    else
    {
      v6 = 0;
    }

    v7 = v5 ^ 1;
  }

  else
  {
    sub_100285E74((v0 + 2));
    v6 = 0;
    v7 = 1;
  }

  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_10061547C;
  v10 = v0[14];
  v9 = v0[15];

  return sub_100614268(v9, v6, v7, 1, 5);
}

uint64_t sub_10061547C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return _swift_task_switch(sub_10061559C, v4, v3);
}

uint64_t sub_10061559C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006155FC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1006156D0;

  return sub_100614268(a6, *&a1, 0, 0, 5);
}

uint64_t sub_1006156D0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10061580C, v5, v4);
}

uint64_t sub_10061580C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10061586C(uint64_t a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "remoteAlertHandleDidActivate", v5, 2u);
  }

  *(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated) = 1;
  sub_1005F7090();
}

uint64_t sub_1006159F4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = v2;
  aBlock[4] = sub_100625238;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAEE0;
  v15 = _Block_copy(aBlock);
  swift_errorRetain();
  v16 = a1;
  v17 = v2;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_100615CDC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_1009865B0);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = v16;
    }

    else
    {
      v17 = 0x8000000100789F30;
      v15 = 0xD000000000000015;
    }

    v18 = sub_10000C4E4(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "remoteAlertHandle didInvalidateWithError: %s", v13, 0xCu);
    sub_10000C60C(v14);
  }

  [a2 removeObserver:a3];
  *(*(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) = 0;
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_1005FCB7C(v9, 0);
  return sub_100005508(v9, &unk_100976120, &qword_1007F9260);
}

void sub_100616038()
{
  v1 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "pairTapped", v5, 2u);
  }

  *(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairConsented) = 1;
  v6 = [objc_opt_self() sharedMonitor];
  if (v6)
  {
    v7 = v6;
    [v6 setBluetoothEnabled:1];

    sub_1005F7090();
  }

  else
  {
    __break(1u);
  }
}

void sub_1006161C8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress))
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_1009865B0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "b222 UI connection in progress, ignoring, resetting attempt count", v5, 2u);
    }

    *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt) = 0;
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "b222 showEducationUIIfNecessary", v9, 2u);
    }

    v10 = *(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
    if (sub_1005607A0())
    {
      v11 = String._bridgeToObjectiveC()();
      v12 = [v10 BOOLForKey:v11];

      if ((v12 & 1) == 0)
      {
        sub_1005FFB88(0);
        return;
      }
    }

    else
    {
    }

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "b222 No need for any education UI.  Bailing", v14, 2u);
    }
  }
}

void sub_10061661C(void *a1)
{
  v2 = v1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "XPC: connectionEstablished", v7, 2u);
  }

  v8 = [a1 sd_connectionBundleID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == 0xD00000000000001CLL && 0x8000000100789280 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v13 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
      v14 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
      swift_unknownObjectWeakAssign();
      *(*(v2 + v13) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished) = 1;
      goto LABEL_21;
    }

    if (v10 == 0xD000000000000023 && 0x80000001007913E0 == v12)
    {

LABEL_14:
      swift_unknownObjectWeakAssign();
      sub_100612D04();
      goto LABEL_21;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_14;
    }
  }

  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    v21 = [v16 sd_connectionBundleID];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v25 = 0x8000000100789F30;
      v23 = 0xD000000000000015;
    }

    v26 = sub_10000C4E4(v23, v25, &v27);

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "connectionEstablished connection bundle ID invalid: %s", v19, 0xCu);
    sub_10000C60C(v20);
  }

LABEL_21:

  sub_1005F7090();
}

void sub_1006169C8(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009865B0);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "XPC: connectionInvalidated: %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, Strong, v13 == v4))
  {
    v22 = *(v1 + v10);
    swift_unknownObjectWeakAssign();
    v23 = *(v1 + v10);
    if (*(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished) == 2)
    {
      *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished) = 0;
    }
  }

  else
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14 && (v15 = v14, v14, v15 == v4))
    {
      swift_unknownObjectWeakAssign();
      if (qword_1009738A0 != -1)
      {
        swift_once();
      }

      sub_1004523B4();
    }

    else
    {
      v16 = v4;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unknown connection invalidated: %@", v19, 0xCu);
        sub_100005508(v20, &qword_100975400, &qword_1007F65D0);
      }
    }
  }

  sub_1005F7090();
}

void sub_100616D20(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v43 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v44);
  v41 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DispatchTime();
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = *(v39 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v47 = v38 - v19;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_1009865B0);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = &selRef_shareUserDefaultsActivity;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = v10;
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = [v21 state];
    *(v26 + 12) = 1024;
    *(v26 + 14) = [v21 isScanning];

    _os_log_impl(&_mh_execute_header, v22, v23, "centralManagerDidUpdateState: %ld. scanning: %{BOOL}d", v26, 0x12u);
    v10 = v25;
    v2 = v1;
    v24 = &selRef_shareUserDefaultsActivity;
  }

  else
  {

    v22 = v21;
  }

  if ([v21 v24[209]] == 5 && (v27 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState), *(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt) == 1) && *(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairConsented) == 1)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Waiting for 2ms before calling run() to avoid race condition...", v30, 2u);
    }

    v38[1] = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
    static DispatchTime.now()();
    *v13 = 2;
    (*(v10 + 104))(v13, enum case for DispatchTimeInterval.milliseconds(_:), v9);
    + infix(_:_:)();
    (*(v10 + 8))(v13, v9);
    v31 = v40;
    v39 = *(v39 + 8);
    (v39)(v18, v40);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100625200;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008EAE40;
    v33 = _Block_copy(aBlock);

    v34 = v41;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    v35 = v43;
    v36 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v47;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v33);
    (*(v45 + 8))(v35, v36);
    (*(v42 + 8))(v34, v44);
    (v39)(v37, v31);
  }

  else
  {

    sub_1005F7090();
  }
}

void sub_1006173F0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1006177F0(char *a1, unsigned __int8 *a2)
{
  v160 = a1;
  v166 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v4 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v6 = &v144 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v162 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v167 = &v144 - v13;
  v14 = __chkstk_darwin(v12);
  v163 = &v144 - v15;
  v16 = __chkstk_darwin(v14);
  v170 = &v144 - v17;
  v18 = __chkstk_darwin(v16);
  v159 = &v144 - v19;
  __chkstk_darwin(v18);
  v161 = &v144 - v20;
  v148 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v150 = *(v148 - 8);
  v21 = *(v150 + 64);
  v22 = __chkstk_darwin(v148);
  v147 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v151 = &v144 - v25;
  v26 = __chkstk_darwin(v24);
  v149 = &v144 - v27;
  v28 = __chkstk_darwin(v26);
  v158 = (&v144 - v29);
  v30 = __chkstk_darwin(v28);
  v164 = &v144 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v144 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v144 - v36;
  __chkstk_darwin(v35);
  v39 = &v144 - v38;
  v156 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v157 = v2;
  v40 = *(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v40)
  {
    v41 = a2;
    v42 = [v40 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    a2 = v41;
    v43 = *(v8 + 56);
    v44 = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v43(v39, 0, 1, v7);
  }

  else
  {
    v43 = *(v8 + 56);
    v44 = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v43(&v144 - v38, 1, 1, v7);
  }

  v171 = a2;
  v45 = [a2 identifier];
  v46 = v161;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v168 = *(v8 + 16);
  v169 = v8 + 16;
  v168(v37, v46, v7);
  v153 = v43;
  v152 = v44;
  v43(v37, 0, 1, v7);
  v47 = *(v166 + 48);
  sub_10000FF90(v37, v6, &unk_100976120, &qword_1007F9260);
  v155 = v39;
  sub_10000FF90(v39, &v6[v47], &unk_100976120, &qword_1007F9260);
  v48 = *(v8 + 48);
  v49 = v48(v6, 1, v7);
  v165 = v48;
  v166 = v8 + 48;
  if (v49 != 1)
  {
    sub_10000FF90(v6, v34, &unk_100976120, &qword_1007F9260);
    if (v48(&v6[v47], 1, v7) != 1)
    {
      v54 = v159;
      (*(v8 + 32))(v159, &v6[v47], v7);
      sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v8 + 8);
      (v52)(v54, v7);
      sub_100005508(v37, &unk_100976120, &qword_1007F9260);
      (v52)(v34, v7);
      LODWORD(v52) = v55;
      sub_100005508(v6, &unk_100976120, &qword_1007F9260);
      v53 = v160;
      v51 = v171;
      goto LABEL_11;
    }

    sub_100005508(v37, &unk_100976120, &qword_1007F9260);
    (*(v8 + 8))(v34, v7);
    v51 = v171;
    goto LABEL_9;
  }

  sub_100005508(v37, &unk_100976120, &qword_1007F9260);
  v50 = v48(&v6[v47], 1, v7);
  v51 = v171;
  if (v50 != 1)
  {
LABEL_9:
    sub_100005508(v6, &unk_100987030, &qword_1007F9330);
    LODWORD(v52) = 0;
    v53 = v160;
    goto LABEL_11;
  }

  sub_100005508(v6, &unk_100976120, &qword_1007F9260);
  LODWORD(v52) = 1;
  v53 = v160;
LABEL_11:
  objc_opt_self();
  v56 = swift_dynamicCastObjCClass();
  if (v56 && (v57 = v56, (sub_10061FB58() & 1) != 0))
  {
    v58 = String._bridgeToObjectiveC()();
    v59 = [v57 hasTag:v58];

    v60 = v59 ^ 1;
  }

  else
  {
    v60 = 0;
  }

  if (qword_100973B58 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v61 = type metadata accessor for Logger();
    v62 = sub_10000C4AC(v61, qword_1009865B0);
    v63 = v51;
    v154 = v62;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412802;
      *(v66 + 4) = v63;
      *v67 = v63;
      *(v66 + 12) = 1024;
      *(v66 + 14) = v52 & 1;
      *(v66 + 18) = 1024;
      *(v66 + 20) = v60;
      v68 = v63;
      _os_log_impl(&_mh_execute_header, v64, v65, "peerDidCompletePairing: %@, isStoredPeripheral: %{BOOL}d, isTagged: %{BOOL}d", v66, 0x18u);
      sub_100005508(v67, &qword_100975400, &qword_1007F65D0);
      v53 = v160;
    }

    v69 = *(v157 + v156) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if (*(v69 + 8))
    {
      goto LABEL_99;
    }

    v70 = *v69;
    if ((v70 | 2) == 3)
    {
      if (!v60)
      {
        goto LABEL_99;
      }
    }

    else if (((v70 == 4) & v60) == 0)
    {
      goto LABEL_99;
    }

    v71 = sub_1005FEA1C();
    v72 = v71;
    v73 = v71 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v171 = v8;
    v145 = v63;
    v146 = v52;
    if (v73)
    {
      v173 = _swiftEmptyArrayStorage;
      sub_100290034(0, v73 & ~(v73 >> 63), 0);
      if (v73 < 0)
      {
        __break(1u);
        goto LABEL_94;
      }

      v74 = 0;
      v75 = v173;
      do
      {
        v76 = v75;
        if ((v72 & 0xC000000000000001) != 0)
        {
          v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v77 = *(v72 + 8 * v74 + 32);
        }

        v78 = v77;
        v79 = [v77 identifier];
        v80 = v170;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = v76;
        v173 = v76;
        v81 = v76[2];
        v82 = v75[3];
        if (v81 >= v82 >> 1)
        {
          sub_100290034(v82 > 1, v81 + 1, 1);
          v75 = v173;
        }

        ++v74;
        v75[2] = v81 + 1;
        v83 = v75 + ((v171[80] + 32) & ~v171[80]) + *(v171 + 9) * v81;
        v8 = v171;
        (*(v171 + 4))(v83, v80, v7);
      }

      while (v73 != v74);

      v53 = v160;
      LOBYTE(v52) = v146;
    }

    else
    {

      v75 = _swiftEmptyArrayStorage;
    }

    if (v75[2] < 2uLL)
    {

      if (v52)
      {
        goto LABEL_96;
      }

      goto LABEL_99;
    }

    sub_10028088C(&qword_100987158, &unk_10080DAD0);
    v84 = *(v150 + 72);
    v85 = *(v150 + 80);
    v170 = v75;
    v86 = (v85 + 32) & ~v85;
    v87 = 2 * v84;
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1007F8830;
    v8 = v88 + v86;
    sub_10000FF90(v155, v88 + v86, &unk_100976120, &qword_1007F9260);
    v52 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastB332WeWantedToPair;
    v89 = v157;
    swift_beginAccess();
    v159 = v84;
    v90 = v170;
    sub_10000FF90(v89 + v52, &v84[v8], &unk_100976120, &qword_1007F9260);
    if (*(v90 + 16))
    {
      v168((v8 + v87), (v90 + ((v171[80] + 32) & ~v171[80])), v7);
      v91 = 0;
    }

    else
    {
      v91 = 1;
    }

    v153(v8 + v87, v91, 1, v7);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v172 = v52;
      *v94 = 136315138;
      v95 = Array.description.getter();
      v97 = sub_10000C4E4(v95, v96, &v172);

      *(v94 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v92, v93, "peerDidCompletePairing - b332sToKeep: %s", v94, 0xCu);
      sub_10000C60C(v52);
    }

    v98 = v167;
    v53 = v158;
    v99 = *(v88 + 16);
    if (v99)
    {
      v150 = v88;
      v100 = (v171 + 32);
      v52 = _swiftEmptyArrayStorage;
      do
      {
        v101 = v164;
        sub_10000FF90(v8, v164, &unk_100976120, &qword_1007F9260);
        sub_1005D8888(v101, v53);
        if (v165(v53, 1, v7) == 1)
        {
          sub_100005508(v53, &unk_100976120, &qword_1007F9260);
        }

        else
        {
          v102 = *v100;
          (*v100)(v163, v53, v7);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v103 = v52;
          }

          else
          {
            v103 = sub_10028F3B4(0, *(v52 + 16) + 1, 1, v52);
          }

          v105 = *(v103 + 2);
          v104 = *(v103 + 3);
          if (v105 >= v104 >> 1)
          {
            v103 = sub_10028F3B4(v104 > 1, v105 + 1, 1, v103);
          }

          *(v103 + 2) = v105 + 1;
          v52 = v103;
          v102(&v103[((v171[80] + 32) & ~v171[80]) + *(v171 + 9) * v105], v163, v7);
          v98 = v167;
          v53 = v158;
        }

        v8 += v159;
        --v99;
      }

      while (v99);

      v106 = v52;
    }

    else
    {

      v106 = _swiftEmptyArrayStorage;
    }

    v107 = v171;
    v164 = *(v106 + 16);
    if (!v164)
    {
      break;
    }

    v60 = 0;
    v158 = (v171 + 8);
    v159 = (v171 + 32);
    v51 = _swiftEmptyArrayStorage;
    v163 = v106;
    while (v60 < *(v106 + 16))
    {
      v53 = ((v107[80] + 32) & ~v107[80]);
      v108 = *(v107 + 9);
      v168(v98, &v53[v106 + v108 * v60++], v7);
      v109 = &v53[v170];
      v8 = *(v170 + 16) + 1;
      do
      {
        if (!--v8)
        {
          (*v158)(v98, v7);
          goto LABEL_60;
        }

        LODWORD(v52) = v109 + v108;
        sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
        v109 += v108;
      }

      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
      v110 = v98;
      v111 = *v159;
      (*v159)(v162, v110, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v172 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100290034(0, v51[2] + 1, 1);
        v51 = v172;
      }

      v52 = v51[2];
      v113 = v51[3];
      v8 = v52 + 1;
      if (v52 >= v113 >> 1)
      {
        sub_100290034(v113 > 1, v52 + 1, 1);
        v51 = v172;
      }

      v51[2] = v8;
      v111(&v53[v51 + v52 * v108], v162, v7);
      v98 = v167;
LABEL_60:
      v106 = v163;
      v107 = v171;
      if (v60 == v164)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_91:
    swift_once();
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_71:

  if (v51[2])
  {
    v60 = v149;
    v168(v149, v51 + ((v107[80] + 32) & ~v107[80]), v7);
    v114 = 0;
  }

  else
  {
    v114 = 1;
    v60 = v149;
  }

  v115 = v151;

  v153(v60, v114, 1, v7);
  sub_10000FF90(v60, v115, &unk_100976120, &qword_1007F9260);
  v116 = Logger.logObject.getter();
  v117 = v115;
  v118 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v116, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v172 = v120;
    *v119 = 136315138;
    v121 = v147;
    sub_10000FF90(v117, v147, &unk_100976120, &qword_1007F9260);
    if (v165(v121, 1, v7) == 1)
    {
      sub_100005508(v121, &unk_100976120, &qword_1007F9260);
      v122 = 0xEC0000003E676E69;
      v123 = 0x7065656B206F6E3CLL;
    }

    else
    {
      v123 = UUID.description.getter();
      v122 = v125;
      (*(v171 + 1))(v121, v7);
    }

    sub_100005508(v151, &unk_100976120, &qword_1007F9260);
    v126 = sub_10000C4E4(v123, v122, &v172);

    *(v119 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v116, v118, "peerDidCompletePairing - keeping: %s", v119, 0xCu);
    sub_10000C60C(v120);
  }

  else
  {

    v124 = sub_100005508(v115, &unk_100976120, &qword_1007F9260);
  }

  __chkstk_darwin(v124);
  *(&v144 - 2) = v60;
  sub_1005F11E8(sub_1006251E0, (&v144 - 4), v170);
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v172 = v130;
    *v129 = 136315138;
    v131 = Array.description.getter();
    v133 = sub_10000C4E4(v131, v132, &v172);

    *(v129 + 4) = v133;
    _os_log_impl(&_mh_execute_header, v127, v128, "peerDidCompletePairing - otherPairedOnes: %s", v129, 0xCu);
    sub_10000C60C(v130);
  }

  v53 = v160;
  v134 = *(v157 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v136 = [v134 retrievePeripheralsWithIdentifiers:isa];

  sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
  v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v63 >> 62))
  {
    v137 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v137)
    {
      goto LABEL_84;
    }

LABEL_95:

    sub_100005508(v60, &unk_100976120, &qword_1007F9260);
    v8 = v171;
    if (v146)
    {
LABEL_96:
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&_mh_execute_header, v141, v142, "Unset OOBP enabled flag in peerDidCompletePairing", v143, 2u);
      }

      [v53 setOOBPairingEnabled:0 forPeer:v145];
      *(*(v157 + v156) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed) = 1;

      sub_1005F1D24();

      sub_1005F7090();
    }

LABEL_99:
    (*(v8 + 8))(v161, v7);
    sub_100005508(v155, &unk_100976120, &qword_1007F9260);
    return;
  }

LABEL_94:
  v137 = _CocoaArrayWrapper.endIndex.getter();
  if (!v137)
  {
    goto LABEL_95;
  }

LABEL_84:
  if (v137 >= 1)
  {
    for (i = 0; i != v137; ++i)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v139 = *(v63 + 8 * i + 32);
      }

      v140 = v139;
      [v53 unpairPeer:v139];
    }

    goto LABEL_95;
  }

  __break(1u);
}

uint64_t sub_100618D18(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  (*(v4 + 16))(&v26 - v17, a1, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v19 = *(v8 + 56);
  sub_10000FF90(v18, v11, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v27, &v11[v19], &unk_100976120, &qword_1007F9260);
  v20 = *(v4 + 48);
  if (v20(v11, 1, v3) != 1)
  {
    sub_10000FF90(v11, v16, &unk_100976120, &qword_1007F9260);
    if (v20(&v11[v19], 1, v3) != 1)
    {
      v22 = v26;
      (*(v4 + 32))(v26, &v11[v19], v3);
      sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v4 + 8);
      v24(v22, v3);
      sub_100005508(v18, &unk_100976120, &qword_1007F9260);
      v24(v16, v3);
      sub_100005508(v11, &unk_100976120, &qword_1007F9260);
      v21 = v23 ^ 1;
      return v21 & 1;
    }

    sub_100005508(v18, &unk_100976120, &qword_1007F9260);
    (*(v4 + 8))(v16, v3);
    goto LABEL_6;
  }

  sub_100005508(v18, &unk_100976120, &qword_1007F9260);
  if (v20(&v11[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_100005508(v11, &unk_100987030, &qword_1007F9330);
    v21 = 1;
    return v21 & 1;
  }

  sub_100005508(v11, &unk_100976120, &qword_1007F9260);
  v21 = 0;
  return v21 & 1;
}

void sub_10061917C(uint64_t a1, void *a2)
{
  v3 = v2;
  v39[1] = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v39[0] = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_1009865B0);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "peerDidUnpair: %@", v16, 0xCu);
    sub_100005508(v17, &qword_100975400, &qword_1007F65D0);
  }

  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v20 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);

  v21 = [v13 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
  swift_beginAccess();
  v23 = *(v20 + v22);

  if (*(v23 + 16))
  {
    sub_10000EBD4(v11);
    v25 = v24;
    (*(v6 + 8))(v11, v5);

    if (v25)
    {
      v26 = v13;
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
        _os_log_impl(&_mh_execute_header, v27, v28, "peerDidUnpair - removing from needingUnpair: %@", v29, 0xCu);
        sub_100005508(v30, &qword_100975400, &qword_1007F65D0);
      }

      v32 = *(v3 + v19);

      v33 = [v26 identifier];
      v34 = v39[0];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_1002B25B8(0, v34);
      swift_endAccess();
    }
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

  v35 = sub_1005FEA1C();
  if (v35 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();

    if (v38)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v36)
  {
LABEL_13:
    v37 = v3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel;
    *v37 = 0;
    *(v37 + 8) = 1;
    sub_1005F339C();
    *(*(v3 + v19) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = 0;
  }

LABEL_14:
  sub_1005F7090();
}

void sub_100619678(void *a1, char *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v42[-v10];
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_1009865B0);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v16 = 138412546;
    *(v16 + 4) = v13;
    v44 = v17;
    *v17 = v13;
    *(v16 + 12) = 2080;
    v46 = v13;
    v18 = [v13 services];
    if (v18)
    {
      v19 = v18;
      sub_1000276B4(0, &qword_100987148, CBService_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v15;

      v20 = Array.description.getter();
      v22 = v21;
      LOBYTE(v15) = v43;
    }

    else
    {
      v22 = 0x80000001007999E0;
      v20 = 0xD000000000000018;
    }

    v23 = sub_10000C4E4(v20, v22, &v47);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "peripheral: %@, didDiscoverServices: %s", v16, 0x16u);
    sub_100005508(v44, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v45);

    v13 = v46;
  }

  else
  {
  }

  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v25 = *(*&a2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v25)
  {
    v26 = v25;
    v27 = [v26 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = [v13 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v28) = static UUID.== infix(_:_:)();
    v29 = *(v5 + 8);
    v29(v9, v4);
    v29(v11, v4);
    if ((v28 & 1) == 0 || (v30 = [v13 services]) == 0)
    {
LABEL_27:

      return;
    }

    v31 = v30;
    v46 = a2;
    sub_1000276B4(0, &qword_100987148, CBService_ptr);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v32 >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (v33)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
LABEL_14:
        v47 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v33 < 0)
        {
          __break(1u);
          return;
        }

        v34 = 0;
        do
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v35 = *(v32 + 8 * v34 + 32);
          }

          v36 = v35;
          ++v34;
          v37 = [v35 UUID];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v38 = v47[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v33 != v34);

        v40 = v47;
        goto LABEL_23;
      }
    }

    v40 = _swiftEmptyArrayStorage;
LABEL_23:
    if (qword_100973B68 != -1)
    {
      v39 = swift_once();
    }

    v47 = qword_1009A0D70;
    __chkstk_darwin(v39);
    *&v42[-16] = &v47;
    v41 = sub_100391384(sub_100625178, &v42[-32], v40);

    if (v41)
    {
      *(*&v46[v24] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hidServiceDiscovered) = 1;
      sub_1005F7090();
    }

    goto LABEL_27;
  }
}

void sub_100619CA4(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] == 1)
  {
    v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] = 1;
  }

  else
  {
    v5 = sub_1005F2FF4();
    v6 = v1[v4];
    v1[v4] = v5 & 1;
    if ((v5 & 1) != v6)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_1009865B0);
      v8 = v1;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109120;
        *(v11 + 4) = v2[v4];

        _os_log_impl(&_mh_execute_header, v9, v10, "sbHasStarted = %{BOOL}d", v11, 8u);
      }

      else
      {
      }
    }
  }

  IsSmartCoverClosed = BKSHIDServicesIsSmartCoverClosed();
  v13 = v2[v4];
  v14 = [objc_opt_self() isBuddyCompleted];
  if (!IsSmartCoverClosed && (a1 & 1) != 0)
  {
    SBSUndimScreen();
  }

  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v16 = *(*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) & v14 & v13 & (IsSmartCoverClosed == 0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_1009865B0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109888;
    *(v20 + 4) = v16;
    *(v20 + 8) = 1024;
    *(v20 + 10) = IsSmartCoverClosed == 0;
    *(v20 + 14) = 1024;
    *(v20 + 16) = v13;
    *(v20 + 20) = 1024;
    *(v20 + 22) = v14;
    _os_log_impl(&_mh_execute_header, v18, v19, "sendsUIUpdates = %{BOOL}d, coverIsOpen: %{BOOL}d, sbStarted: %{BOOL}d, buddyComplete: %{BOOL}d", v20, 0x1Au);
  }

  v21 = *&v2[v15];
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates;
  v23 = *(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
  *(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = v16;
  if (v16 != v23)
  {

    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = *(v21 + v22);
      _os_log_impl(&_mh_execute_header, oslog, v24, "sendsUIUpdates = %{BOOL}d", v25, 8u);
    }
  }
}

void sub_10061A068(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, char *a8)
{
  v192 = a8;
  v197 = a1;
  v14 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v191 = &v175 - v16;
  v183 = type metadata accessor for Date();
  v182 = *(v183 - 8);
  v17 = *(v182 + 64);
  v18 = __chkstk_darwin(v183);
  v180 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v175 - v20;
  v22 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v184 = &v175 - v24;
  v185 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v188 = *(v185 - 8);
  v25 = *(v188 + 64);
  __chkstk_darwin(v185);
  v27 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000C4AC(v28, qword_1009865B0);

  sub_100294008(a3, a4);

  sub_100294008(a6, a7);
  v194 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  sub_100026AC0(a3, a4);

  v186 = a7;
  sub_100026AC0(a6, a7);
  v187 = v31;
  v193 = v30;
  v32 = os_log_type_enabled(v30, v31);
  v196 = a5;
  v181 = v21;
  v190 = a4;
  v189 = a3;
  v195 = a2;
  if (v32)
  {
    v33 = a6;
    v34 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v198 = v179;
    *v34 = 136315906;
    *(v34 + 4) = sub_10000C4E4(v197, a2, &v198);
    *(v34 + 12) = 2080;
    v202 = 0;
    v203 = 0xE000000000000000;
    v204 = a3;
    v205 = a4;
    v35 = enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:);
    v36 = v188;
    v178 = *(v188 + 104);
    v37 = v185;
    v178(v27, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v185);
    v177 = sub_100423B84();
    v176 = v33;
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    v38 = *(v36 + 8);
    v38(v27, v37);
    v39 = sub_10000C4E4(v202, v203, &v198);

    *(v34 + 14) = v39;
    *(v34 + 22) = 2080;
    v40 = Dictionary.description.getter();
    v42 = sub_10000C4E4(v40, v41, &v198);

    *(v34 + 24) = v42;
    *(v34 + 32) = 2080;
    v202 = 0;
    v203 = 0xE000000000000000;
    v204 = v176;
    v205 = v186;
    v178(v27, v35, v37);
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    v38(v27, v37);
    v43 = sub_10000C4E4(v202, v203, &v198);

    *(v34 + 34) = v43;
    v44 = v193;
    _os_log_impl(&_mh_execute_header, v193, v187, "!!! Accessory attached: %s, blePairingUUID: %s, accInfoDict: %s, supportedPairTypes: %s", v34, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v45 = objc_opt_self();
  v46 = [v45 standardUserDefaults];
  v47 = String._bridgeToObjectiveC()();
  v48 = [v46 stringForKey:v47];

  if (v48)
  {
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    if (v49 == v197 && v51 == v195)
    {

LABEL_11:
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Got same accessoryUID for this attach. Ignoring.", v55, 2u);
      }

      return;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_11;
    }
  }

  v56 = [v45 standardUserDefaults];
  v57 = String._bridgeToObjectiveC()();
  v58 = String._bridgeToObjectiveC()();
  [v56 setObject:v57 forKey:v58];

  v59 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v60 = v192;
  v61 = v196;
  if (*(*&v192[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete) == 1)
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Pencil attached while previous Pencil is still attached, resetting state", v64, 2u);
      v61 = v196;
    }

    v65 = type metadata accessor for UUID();
    v66 = v184;
    (*(*(v65 - 8) + 56))(v184, 1, 1, v65);
    sub_1005FCB7C(v66, 0);
    sub_100005508(v66, &unk_100976120, &qword_1007F9260);
  }

  sub_100612D04();
  v198 = 0xD00000000000001BLL;
  v199 = 0x8000000100799960;
  AnyHashable.init<A>(_:)();
  if (*(v61 + 16) && (v67 = sub_100570754(&v202), (v68 & 1) != 0))
  {
    sub_10000C5B0(*(v61 + 56) + 32 * v67, &v204);
    sub_100285E74(&v202);
    if (swift_dynamicCast())
    {
      v70 = v198;
      v69 = v199;
      if (v198 == 0x6E776F6E6B6E55 && v199 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_56;
      }

      v71 = HIBYTE(v69) & 0xF;
      if ((v69 & 0x2000000000000000) == 0)
      {
        v71 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (!v71)
      {
LABEL_56:
      }

      else
      {
        v72 = (*&v60[v59] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
        v73 = v72[1];
        *v72 = v70;
        v72[1] = v69;

        swift_bridgeObjectRetain_n();

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v202 = v77;
          *v76 = 136315138;
          v78 = sub_10000C4E4(v70, v69, &v202);

          *(v76 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v74, v75, "Received hash! setting on sessionState: %s", v76, 0xCu);
          sub_10000C60C(v77);
        }

        else
        {
        }

        v60 = v192;
      }

      v61 = v196;
    }
  }

  else
  {
    sub_100285E74(&v202);
  }

  v198 = 0xD00000000000001CLL;
  v199 = 0x8000000100799980;
  AnyHashable.init<A>(_:)();
  v79 = &unk_1009A0000;
  if (*(v61 + 16) && (v80 = sub_100570754(&v202), (v81 & 1) != 0))
  {
    sub_10000C5B0(*(v61 + 56) + 32 * v80, &v204);
    sub_100285E74(&v202);
    sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v82 = v198;
      v83 = [v198 integerValue];

      if (v83 == 1)
      {
LABEL_38:
        v87 = *&v60[v59];
        v88 = (v87 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
        *v88 = 4;
        v89 = v88 + 1;
        v90 = 0x3833353241;
        v91 = 1106;
        goto LABEL_60;
      }

      if (v83 >= 1)
      {
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Warning: Pencil PID is not yet supported! Falling back to treat as B532", v86, 2u);
          v61 = v196;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
    sub_100285E74(&v202);
  }

  v198 = 0xD000000000000017;
  v199 = 0x80000001007998D0;
  AnyHashable.init<A>(_:)();
  if (*(v61 + 16) && (v92 = sub_100570754(&v202), (v93 & 1) != 0))
  {
    sub_10000C5B0(*(v61 + 56) + 32 * v92, &v204);
    sub_100285E74(&v202);
    if (swift_dynamicCast())
    {
      if (v198 == 842544194 && v199 == 0xE400000000000000)
      {

LABEL_59:
        v87 = *&v60[v59];
        v101 = (v87 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
        *v101 = 3;
        v89 = v101 + 1;
        v90 = 0x3538303341;
        v91 = 482;
        goto LABEL_60;
      }

      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v100)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    sub_100285E74(&v202);
  }

  v198 = 0xD00000000000001BLL;
  v199 = 0x80000001007999A0;
  AnyHashable.init<A>(_:)();
  if (*(v61 + 16) && (v94 = sub_100570754(&v202), (v95 & 1) != 0))
  {
    sub_10000C5B0(*(v61 + 56) + 32 * v94, &v204);
    sub_100285E74(&v202);
    sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v96 = v198;
      v97 = [v198 integerValue];

      if (v97 == 1057)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    sub_100285E74(&v202);
  }

  sub_100620C08();
  v87 = *&v60[v59];
  v98 = (v87 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
  v89 = (v87 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8);
  if (v99)
  {
    *v98 = 1;
    v90 = 0x3135303241;
    v91 = 332;
  }

  else
  {
    *v98 = 2;
    v90 = 0x3330363141;
    v91 = 546;
  }

LABEL_60:
  v102 = v191;
  *v89 = 0;
  v103 = (v87 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
  v104 = v103[1];
  *v103 = v90;
  v103[1] = 0xE500000000000000;

  v105 = *&v60[v59];
  v106 = v105 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilCode;
  *v106 = v91;
  *(v106 + 8) = 0;
  v107 = v105 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  if (*(v107 + 8) & 1) != 0 || *v107 != 3 || ([*&v60[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor] screenOn])
  {
    goto LABEL_79;
  }

  v108 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAccessoryDetachTimestamp;
  swift_beginAccess();
  sub_10000FF90(&v60[v108], v102, &qword_10097A7F0, &unk_1007FB600);
  v109 = v182;
  v110 = v183;
  if ((*(v182 + 48))(v102, 1, v183) == 1)
  {
    sub_100005508(v102, &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_79;
  }

  v111 = v181;
  (*(v109 + 32))(v181, v102, v110);
  v112 = v180;
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v114 = v113;
  v115 = *(v109 + 8);
  v115(v112, v110);
  v116 = [v45 standardUserDefaults];
  v117 = sub_1005614A0();

  if (v114 >= v117)
  {
    v124 = v111;
    v125 = v110;
LABEL_78:
    v115(v124, v125);
    v79 = &unk_1009A0000;
    goto LABEL_79;
  }

  v118 = *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum + 8];
  if (!v118)
  {
    v124 = v181;
    v125 = v183;
    goto LABEL_78;
  }

  v119 = v61;
  v120 = *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum];
  v200 = 0xD00000000000001BLL;
  v201 = 0x80000001007999C0;

  AnyHashable.init<A>(_:)();
  v121 = v181;
  v79 = &unk_1009A0000;
  if (*(v119 + 16) && (v122 = sub_100570754(&v202), (v123 & 1) != 0))
  {
    sub_10000C5B0(*(v119 + 56) + 32 * v122, &v204);
    sub_100285E74(&v202);
    if (swift_dynamicCast())
    {
      if (v120 == v200 && v118 == v201)
      {

LABEL_104:
        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          *v168 = 0;
          _os_log_impl(&_mh_execute_header, v166, v167, "Detected case of USB re-enumeration causing reattach while screen is off. Not showing UI for pair", v168, 2u);
        }

        v169 = *&v60[v59];
        v170 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates;
        v171 = *(v169 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
        *(v169 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 0;
        if (v171 == 1)
        {

          v172 = Logger.logObject.getter();
          v173 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            *v174 = 67109120;
            *(v174 + 4) = *(v169 + v170);
            _os_log_impl(&_mh_execute_header, v172, v173, "sendsUIUpdates = %{BOOL}d", v174, 8u);
            v60 = v192;
          }
        }

        v115(v121, v183);
        v129 = v195;
        v61 = v196;
        goto LABEL_83;
      }

      v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v165)
      {
        goto LABEL_104;
      }

      v115(v121, v183);
      v61 = v196;
    }

    else
    {
      v115(v121, v183);

      v61 = v196;
    }
  }

  else
  {

    sub_100285E74(&v202);
    v115(v121, v183);
    v61 = v119;
  }

LABEL_79:
  v126 = *&v60[v59];
  v127 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates;
  v128 = *(v126 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
  *(v126 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 1;
  v129 = v195;
  if ((v128 & 1) == 0)
  {

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 67109120;
      *(v132 + 4) = *(v126 + v127);
      _os_log_impl(&_mh_execute_header, v130, v131, "sendsUIUpdates = %{BOOL}d", v132, 8u);
      v60 = v192;
    }

    v61 = v196;
  }

LABEL_83:
  v133 = *&v60[v59] + v79[470];
  if ((*(v133 + 8) & 1) == 0 && *v133 == 3)
  {
    v204 = 0xD00000000000001BLL;
    v205 = 0x80000001007999C0;
    AnyHashable.init<A>(_:)();
    if (*(v61 + 16) && (v134 = sub_100570754(&v202), (v135 & 1) != 0))
    {
      sub_10000C5B0(*(v61 + 56) + 32 * v134, &v204);
      sub_100285E74(&v202);
      v136 = swift_dynamicCast();
      v137 = v200;
      v138 = v201;
      if (!v136)
      {
        v137 = 0;
        v138 = 0;
      }
    }

    else
    {
      sub_100285E74(&v202);
      v137 = 0;
      v138 = 0;
    }

    v139 = &v60[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum];
    v140 = *&v60[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum + 8];
    *v139 = v137;
    v139[1] = v138;
  }

  [v60 resetUIUpdatesFlagWithUndimScreen:?];
  *(*&v60[v59] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = 0;
  v141 = [*&v60[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
  if (v141)
  {
    v142 = v141;
    [v141 setDelegate:v60];

    v143 = (*&v60[v59] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
    v144 = v143[1];
    *v143 = v197;
    v143[1] = v129;

    v145 = (*&v60[v59] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID);
    v146 = *v145;
    v147 = v145[1];
    v148 = v189;
    v149 = v190;
    *v145 = v189;
    v145[1] = v149;
    sub_100294008(v148, v149);

    sub_10028BCC0(v146, v147);

    v150 = *&v60[v59];
    v151 = *(v150 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_accInfoDict);
    *(v150 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_accInfoDict) = v196;

    v152 = *&v60[v59] + v79[470];
    if ((*(v152 + 8) & 1) == 0)
    {
      v153 = *v152;
      if (v153 <= 4 && ((1 << v153) & 0x1A) != 0)
      {
        v154 = v60;
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = v60;
          v158 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v202 = v159;
          *v158 = 136315138;
          v160 = *&v157[v59] + v79[470];
          if (*(v160 + 8) == 1)
          {
            v161 = 0x8000000100789F30;
            v162 = 0xD000000000000015;
          }

          else
          {
            v162 = sub_10060E6AC(*v160);
            v161 = v163;
          }

          v164 = sub_10000C4E4(v162, v161, &v202);

          *(v158 + 4) = v164;
          _os_log_impl(&_mh_execute_header, v155, v156, "Starting pairing process for Pencil of type %s", v158, 0xCu);
          sub_10000C60C(v159);
        }

        sub_1005F7090();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10061B83C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v69 = a4;
  v71 = a2;
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v66 = v63 - v10;
  v11 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v68 = v63 - v13;
  v14 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  __chkstk_darwin(v14);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v63 - v20;
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v23 = *(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_accInfoDict);
  if (!v23)
  {
    goto LABEL_9;
  }

  v72 = 0xD000000000000017;
  v73 = 0x80000001007998D0;

  AnyHashable.init<A>(_:)();
  if (!*(v23 + 16) || (v24 = sub_100570754(&v74), (v25 & 1) == 0))
  {

    sub_100285E74(&v74);
    goto LABEL_9;
  }

  sub_10000C5B0(*(v23 + 56) + 32 * v24, v76);
  sub_100285E74(&v74);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v72 == 0x3330363141 && v73 == 0xE500000000000000)
  {
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v62 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_1005FFB88(1);
LABEL_9:
  v26 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8);
  v70 = v22;
  if ((v26 & 1) == 0)
  {
    v27 = *(a1 + v22) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    if ((*(v27 + 8) & 1) == 0)
    {
      v28 = *v27;
      if (((*v27 | 2) == 3 || v28 == 4) && *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel) <= 0.2)
      {
        v67 = a5;
        if (qword_100973B58 != -1)
        {
          swift_once();
        }

        v29 = a3;
        v30 = type metadata accessor for Logger();
        sub_10000C4AC(v30, qword_1009865B0);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Showing low battery pill on detach of connected Pencil", v33, 2u);
        }

        v34 = type metadata accessor for TaskPriority();
        (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v36 = static MainActor.shared.getter();
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = &protocol witness table for MainActor;
        v37[4] = v35;
        v37[5] = v28;

        sub_1002B3098(0, 0, v21, &unk_10080DAB0, v37);

        a3 = v29;
        a5 = v67;
      }
    }
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v67 = a1;
  v38 = type metadata accessor for Logger();
  v39 = sub_10000C4AC(v38, qword_1009865B0);

  v40 = v69;
  sub_100294008(v69, a5);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  sub_100026AC0(v40, a5);
  v43 = os_log_type_enabled(v41, v42);
  v65 = a3;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v63[1] = v39;
    v72 = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_10000C4E4(v71, a3, &v72);
    *(v44 + 12) = 2080;
    v74 = 0;
    v75 = 0xE000000000000000;
    v76[0] = v40;
    v76[1] = a5;
    v46 = v64;
    (*(v64 + 104))(v17, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v14);
    sub_100423B84();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    (*(v46 + 8))(v17, v14);
    v47 = sub_10000C4E4(v74, v75, &v72);

    *(v44 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "!!! Accessory detached: %s, blePairingUUID: %s", v44, 0x16u);
    swift_arrayDestroy();
  }

  v48 = v68;
  static Date.now.getter();
  v49 = type metadata accessor for Date();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  v50 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAccessoryDetachTimestamp;
  v51 = v67;
  swift_beginAccess();
  sub_10000C788(v48, v51 + v50, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  v52 = (*(v51 + v70) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
  v53 = v52[1];
  if (!v53 || (v54 = *v52, *v52 == v71) && v53 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v55 = type metadata accessor for UUID();
    v56 = v66;
    (*(*(v55 - 8) + 56))(v66, 1, 1, v55);
    sub_1005FCB7C(v56, 0);
    sub_100005508(v56, &unk_100976120, &qword_1007F9260);
  }

  else
  {

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74 = v60;
      *v59 = 136315138;
      v61 = sub_10000C4E4(v54, v53, &v74);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v57, v58, "Not resetting state on Pencil detach because a session is ongoing for a different accessory: %s", v59, 0xCu);
      sub_10000C60C(v60);
    }

    else
    {
    }
  }
}

uint64_t sub_10061C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_10061C1C4, v7, v6);
}

uint64_t sub_10061C1C4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_powerSourceID;
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_10061C2F0;
    v7 = v0[6];

    return sub_1005FAD70(v7, v4, v5);
  }

  else
  {
    v9 = v0[7];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10061C2F0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_10061C410, v4, v3);
}

uint64_t sub_10061C410()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

void sub_10061C534(uint64_t a1, int a2, char a3, char a4)
{
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  type metadata accessor for ACCBLEPairing_Status_t(0);
  _print_unlocked<A, B>(_:_:)();
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_1009865B0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315906;
    v12 = sub_10000C4E4(0, 0xE000000000000000, v13);

    *(v10 + 4) = v12;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2;
    *(v10 + 18) = 1024;
    *(v10 + 20) = a3 & 1;
    *(v10 + 24) = 1024;
    *(v10 + 26) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "!!! blePairingStateUpdate. pairingState: %s\nvalidMask: %u\npairingModeOn: %{BOOL}d\nbtRadioOn: %{BOOL}d", v10, 0x1Eu);
    sub_10000C60C(v11);
  }

  else
  {
  }
}

void sub_10061C7C0(uint64_t a1, uint64_t a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v61[0] = v8;
    *v7 = 136315138;
    v9 = Array.debugDescription.getter();
    v11 = sub_10000C4E4(v9, v10, v61);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "!!! blePairingInfoUpdate. pairInfoList: %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  if (*(*(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8) >> 60 != 15)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "We got a pairInfo despite already having a pairData.", v15, 2u);
    }
  }

  v16 = *(a2 + v12);
  v17 = *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
  v18 = *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8);
  *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd) = xmmword_1007F8A80;

  sub_10028BCC0(v17, v18);

  if (*(a1 + 16))
  {
    sub_10000C5B0(a1 + 32, v61);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "blePairingInfoUpdate - Cannot convert to data. Ignoring.", v24, 2u);
      }

      goto LABEL_42;
    }

    v19 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v26 = *(v59 + 16);
      v25 = *(v59 + 24);
      v27 = __OFSUB__(v25, v26);
      v28 = v25 - v26;
      if (!v27)
      {
        if (v28 == 6)
        {
          goto LABEL_25;
        }

LABEL_37:
        sub_100294008(v59, v60);
        v22 = Logger.logObject.getter();
        v50 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v22, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 134217984;
          if (v19 > 1)
          {
            if (v19 != 2)
            {
              v52 = 0;
              goto LABEL_50;
            }

            v54 = *(v59 + 16);
            v53 = *(v59 + 24);
            v27 = __OFSUB__(v53, v54);
            v52 = v53 - v54;
            if (!v27)
            {
              goto LABEL_50;
            }

            __break(1u);
          }

          else if (!v19)
          {
            v52 = BYTE6(v60);
LABEL_50:
            *(v51 + 4) = v52;
            v55 = v51;
            sub_100026AC0(v59, v60);
            _os_log_impl(&_mh_execute_header, v22, v50, "blePairingInfoUpdate - BT addr has wrong length (%ld). Ignoring.", v55, 0xCu);

LABEL_51:
            sub_100026AC0(v59, v60);
            return;
          }

          LODWORD(v52) = HIDWORD(v59) - v59;
          if (!__OFSUB__(HIDWORD(v59), v59))
          {
            v52 = v52;
            goto LABEL_50;
          }

          goto LABEL_54;
        }

        sub_100026AC0(v59, v60);
        sub_100026AC0(v59, v60);
LABEL_42:

        return;
      }

      __break(1u);
    }

    else
    {
      if (!v19)
      {
        if (BYTE6(v60) != 6)
        {
          goto LABEL_37;
        }

LABEL_25:
        if (*(*(a2 + v12) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8) >> 60 != 15)
        {
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "We got a pairInfo despite already having one.", v31, 2u);
          }
        }

        v32 = (*(a2 + v12) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
        v33 = *v32;
        v34 = v32[1];
        *v32 = v59;
        v32[1] = v60;
        sub_100294008(v59, v60);
        sub_100294008(v59, v60);

        sub_10028BCC0(v33, v34);
        sub_1005F184C();
        sub_100026AC0(v59, v60);

        sub_1005F3200();
        if (v35)
        {
          v36 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
          v37 = String._bridgeToObjectiveC()();

          v38 = [v36 retrievePeripheralWithAddress:v37];

          if (v38)
          {
            v39 = v38;
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              osloga = swift_slowAlloc();
              v61[0] = osloga;
              *v42 = 136315138;
              v43 = [v39 debugDescription];
              v56 = v41;
              v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v46 = v45;

              v47 = sub_10000C4E4(v44, v46, v61);

              *(v42 + 4) = v47;
              _os_log_impl(&_mh_execute_header, v40, v56, "b332 from info update: %s", v42, 0xCu);
              sub_10000C60C(osloga);
            }

            v48 = *(a2 + v12);
            v49 = *(v48 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
            *(v48 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral) = v38;
          }
        }

        sub_1005F7090();
        goto LABEL_51;
      }

      if (!__OFSUB__(HIDWORD(v59), v59))
      {
        if (HIDWORD(v59) - v59 == 6)
        {
          goto LABEL_25;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "blePairingInfoUpdate - No elements. Ignoring.", v21, 2u);
  }
}

void sub_10061CFEC(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v44 = &v42 - v10;
  v46 = 0;
  v47 = 0xE000000000000000;
  v45 = a1;
  type metadata accessor for ACCBLEPairing_Types_t(0);
  _print_unlocked<A, B>(_:_:)();
  v12 = v46;
  v11 = v47;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_1009865B0);

  sub_100294008(a2, a3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = a3 >> 62;
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100026AC0(a2, a3);

    if (v16 > 1)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v43 = a4;
  a4 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v46 = v17;
  *a4 = 136315394;
  v18 = sub_10000C4E4(v12, v11, &v46);

  *(a4 + 4) = v18;
  *(a4 + 12) = 2048;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v22 = *(a2 + 16);
      v21 = *(a2 + 24);
      v23 = __OFSUB__(v21, v22);
      v19 = v21 - v22;
      if (v23)
      {
        __break(1u);
LABEL_14:
        LODWORD(v20) = HIDWORD(a2) - a2;
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v20 = v20;
          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v16)
  {
    LODWORD(v19) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v19 = v19;
  }

  else
  {
    v19 = BYTE6(a3);
  }

  *(a4 + 14) = v19;
  sub_100026AC0(a2, a3);
  _os_log_impl(&_mh_execute_header, v14, v15, "!!! blePairingDataUpdate. pairType: %s, pairData: %ld bytes", a4, 0x16u);
  sub_10000C60C(v17);

  a4 = v43;
  if (v16 <= 1)
  {
LABEL_8:
    if (!v16)
    {
      v20 = BYTE6(a3);
      goto LABEL_22;
    }

    goto LABEL_14;
  }

LABEL_20:
  if (v16 != 2)
  {
LABEL_28:
    sub_100294008(a2, a3);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      sub_100026AC0(a2, a3);
LABEL_42:

      return;
    }

    v34 = swift_slowAlloc();
    *v34 = 134217984;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v35 = 0;
        goto LABEL_41;
      }

      v40 = *(a2 + 16);
      v39 = *(a2 + 24);
      v23 = __OFSUB__(v39, v40);
      v35 = v39 - v40;
      if (!v23)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v35 = BYTE6(a3);
LABEL_41:
      *(v34 + 4) = v35;
      v41 = v34;
      sub_100026AC0(a2, a3);
      _os_log_impl(&_mh_execute_header, v32, v33, "Wrong OOBD length of %ld. Ignoring OOBD.", v41, 0xCu);

      goto LABEL_42;
    }

    LODWORD(v35) = HIDWORD(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v35 = v35;
      goto LABEL_41;
    }

LABEL_46:
    __break(1u);
    return;
  }

  v25 = *(a2 + 16);
  v24 = *(a2 + 24);
  v23 = __OFSUB__(v24, v25);
  v20 = v24 - v25;
  if (v23)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_22:
  if (v20 != 32 && v20 != 16)
  {
    goto LABEL_28;
  }

  v26 = *(a4 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  if (*(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToResetFromBTAddrRotation) == 1)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "blePairingDataUpdate - needToResetFromBTAddrRotation", v29, 2u);
    }

    v30 = type metadata accessor for UUID();
    v31 = v44;
    (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
    sub_1005FCB7C(v31, 1);
    sub_100005508(v31, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    v36 = (v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
    v37 = *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd);
    v38 = *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8);
    *v36 = a2;
    v36[1] = a3;
    sub_100294008(a2, a3);

    sub_10028BCC0(v37, v38);

    sub_1005F7090();
  }
}

void sub_10061D5E0()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v14 = 3018;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v14, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "startScanning");
  }

  sub_10028088C(&unk_100987070, &unk_10080DA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v9;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v10;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = 40;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v11;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = 30;
  sub_100011040(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009744D0, &qword_1007F8A20);
  swift_arrayDestroy();
  v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 scanForPeripheralsWithServices:0 options:isa];
}

id sub_10061D8B8()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + 16);
  v7 = 3033;

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_10046E4E8(&v7, v4);
  swift_endAccess();
  if (v5)
  {
    sub_10061F624(&static os_log_type_t.default.getter, "stopScanning");
  }

  return [*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central) stopScan];
}

void sub_10061DA24(void *a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  if ((*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8) & 1) == 0)
  {
    v4 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
    v5 = v4 > 4;
    v6 = (1 << v4) & 0x1A;
    v7 = v5 || v6 == 0;
    if (!v7 && !*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner))
    {
      v9 = v1;
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_1009865B0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "startBatteryScanner", v13, 2u);
      }

      v14 = [objc_allocWithZone(SFDeviceDiscovery) init];
      v15 = *&v9[v2];
      v16 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner);
      *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner) = v14;

      v17 = v14;

      [v17 setChangeFlags:1];
      [v17 setDiscoveryFlags:2];
      [v17 setDispatchQueue:*&v9[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q]];
      sub_10028088C(&unk_100987020, &unk_10080D9D0);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1007F5670;
      v23 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002F4FA8(v22);
      swift_setDeallocating();
      (*(v19 + 8))(v22 + v21, v18);
      swift_deallocClassInstance();
      sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v17 setDeviceFilter:isa];

      v25 = swift_allocObject();
      *(v25 + 16) = v9;
      v37 = sub_1006248D8;
      v38 = v25;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100035F94;
      v36 = &unk_1008EA5F8;
      v26 = _Block_copy(&v33);
      v27 = v9;

      [v17 setDeviceFoundHandler:v26];
      _Block_release(v26);
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      v37 = sub_1006248E0;
      v38 = v28;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1005F11E0;
      v36 = &unk_1008EA648;
      v29 = _Block_copy(&v33);
      v30 = v27;

      [v17 setDeviceChangedHandler:v29];
      _Block_release(v29);
      v37 = sub_10061F604;
      v38 = 0;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100011678;
      v36 = &unk_1008EA670;
      v31 = _Block_copy(&v33);
      [v17 setInvalidationHandler:v31];
      _Block_release(v31);
      v37 = sub_10061F71C;
      v38 = 0;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1005CC610;
      v36 = &unk_1008EA698;
      v32 = _Block_copy(&v33);
      [v17 activateWithCompletion:v32];
      _Block_release(v32);
    }
  }
}

void sub_10061DF88(void *a1, uint64_t a2)
{
  v100 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v4 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v103 = &v92 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v97 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v98 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v105 = &v92 - v15;
  v16 = __chkstk_darwin(v14);
  v102 = &v92 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v92 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v92 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v92 - v25;
  __chkstk_darwin(v24);
  v28 = &v92 - v27;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_1009865B0);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v99 = v32;
  v33 = os_log_type_enabled(v31, v32);
  v104 = v7;
  v101 = a2;
  v106 = v30;
  if (!v33)
  {

    v41 = v102;
    v42 = v103;
    v36 = v105;
    goto LABEL_23;
  }

  v96 = v31;
  v34 = swift_slowAlloc();
  v95 = swift_slowAlloc();
  v107 = v95;
  *v34 = 136315650;
  v35 = [v30 identifier];
  v36 = v105;
  if (v35)
  {
    v37 = v35;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = *(v7 + 56);
    v39 = v26;
    v40 = 0;
  }

  else
  {
    v38 = *(v7 + 56);
    v39 = v26;
    v40 = 1;
  }

  v94 = v38;
  v38(v39, v40, 1, v6);
  sub_1005D8888(v26, v28);
  v93 = *(v7 + 48);
  if (v93(v28, 1, v6))
  {
    sub_100005508(v28, &unk_100976120, &qword_1007F9260);
    v43 = 0x8000000100799580;
    v44 = 0xD000000000000015;
  }

  else
  {
    v45 = v97;
    (*(v7 + 16))(v97, v28, v6);
    sub_100005508(v28, &unk_100976120, &qword_1007F9260);
    v46 = UUID.description.getter();
    v43 = v47;
    v48 = v45;
    v36 = v105;
    (*(v7 + 8))(v48, v6);
    v44 = v46;
  }

  v49 = sub_10000C4E4(v44, v43, &v107);

  *(v34 + 4) = v49;
  *(v34 + 12) = 2080;
  v50 = [v106 bleDevice];
  v42 = v103;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 identifier];

    if (v52)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v7 = v104;
    v94(v20, v53, 1, v6);
    sub_1005D8888(v20, v23);
    if (!v93(v23, 1, v6))
    {
      v56 = v97;
      (*(v7 + 16))(v97, v23, v6);
      sub_100005508(v23, &unk_100976120, &qword_1007F9260);
      v57 = UUID.description.getter();
      v54 = v58;
      v59 = v56;
      v36 = v105;
      (*(v7 + 8))(v59, v6);
      v55 = v57;
      goto LABEL_19;
    }

    sub_100005508(v23, &unk_100976120, &qword_1007F9260);
  }

  v54 = 0x80000001007995A0;
  v55 = 0xD00000000000001FLL;
  v7 = v104;
LABEL_19:
  v60 = sub_10000C4E4(v55, v54, &v107);

  *(v34 + 14) = v60;
  *(v34 + 22) = 2080;
  v61 = [v106 batteryInfo];
  v41 = v102;
  if (v61)
  {
    v62 = v61;
    sub_1000276B4(0, &qword_100987040, SFBatteryInfo_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = Array.description.getter();
    v65 = v64;
  }

  else
  {
    v65 = 0x80000001007995C0;
    v63 = 0xD000000000000016;
  }

  v66 = sub_10000C4E4(v63, v65, &v107);

  *(v34 + 24) = v66;
  v67 = v96;
  _os_log_impl(&_mh_execute_header, v96, v99, "btBatteryScanner - found: %s, bleID: %s, battery: %s", v34, 0x20u);
  swift_arrayDestroy();

  a2 = v101;
LABEL_23:
  v68 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v69 = *(*(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (!v69)
  {
    return;
  }

  v70 = v69;
  v71 = [v106 identifier];
  if (v71)
  {
    v72 = v71;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v74 = *(v7 + 56);
  v74(v41, v73, 1, v6);
  v105 = v70;
  v75 = [v70 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v74(v36, 0, 1, v6);
  v76 = *(v100 + 48);
  sub_10000FF90(v41, v42, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v36, v42 + v76, &unk_100976120, &qword_1007F9260);
  v77 = *(v7 + 48);
  if (v77(v42, 1, v6) == 1)
  {
    sub_100005508(v36, &unk_100976120, &qword_1007F9260);
    sub_100005508(v41, &unk_100976120, &qword_1007F9260);
    v78 = v77(v42 + v76, 1, v6);
    v79 = v105;
    if (v78 == 1)
    {
      sub_100005508(v42, &unk_100976120, &qword_1007F9260);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v80 = v98;
  sub_10000FF90(v42, v98, &unk_100976120, &qword_1007F9260);
  if (v77(v42 + v76, 1, v6) == 1)
  {
    sub_100005508(v36, &unk_100976120, &qword_1007F9260);
    sub_100005508(v41, &unk_100976120, &qword_1007F9260);
    (*(v104 + 8))(v80, v6);
    v79 = v105;
LABEL_32:
    sub_100005508(v42, &unk_100987030, &qword_1007F9330);
    goto LABEL_46;
  }

  v81 = v104;
  v82 = v97;
  (*(v104 + 32))(v97, v42 + v76, v6);
  sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  v84 = *(v81 + 8);
  v84(v82, v6);
  sub_100005508(v36, &unk_100976120, &qword_1007F9260);
  sub_100005508(v41, &unk_100976120, &qword_1007F9260);
  v84(v98, v6);
  sub_100005508(v42, &unk_100976120, &qword_1007F9260);
  v79 = v105;
  if (v83)
  {
LABEL_34:
    v85 = *(v101 + v68);

    v86 = [v106 batteryInfo];
    if (v86)
    {
      sub_1000276B4(0, &qword_100987040, SFBatteryInfo_ptr);
      v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v87 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_37;
        }
      }

      else if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_37:
        if ((v87 & 0xC000000000000001) != 0)
        {
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v88 = *(v87 + 32);
        }

        v86 = v88;

        goto LABEL_43;
      }

      v86 = 0;
    }

LABEL_43:
    v89 = *(v85 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo);
    *(v85 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo) = v86;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v91 = Strong;
      sub_1005F2838(Strong, 1);
    }

    sub_1005F7090();
  }

LABEL_46:
}

void sub_10061EACC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v92[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v92[-v12];
  v14 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = __chkstk_darwin(&v92[-v18]);
  v20 = __chkstk_darwin(v19);
  v105 = &v92[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v92[-v23];
  v25 = __chkstk_darwin(v22);
  v30 = &v92[-v29];
  v106 = a3;
  v31 = *(*(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v31)
  {
    v97 = v25;
    v98 = v28;
    v107 = v5;
    v95 = v27;
    v96 = v26;
    v100 = v9;
    v102 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v32 = v31;
    v101 = a1;
    v33 = [a1 identifier];
    if (v33)
    {
      v34 = v33;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = v6[7];
      v36 = v30;
      v37 = 0;
    }

    else
    {
      v35 = v6[7];
      v36 = v30;
      v37 = 1;
    }

    v38 = v107;
    v35(v36, v37, 1, v107);
    v104 = v32;
    v39 = [v32 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v99 = v35;
    v35(v24, 0, 1, v38);
    v40 = *(v10 + 48);
    sub_10000FF90(v30, v13, &unk_100976120, &qword_1007F9260);
    sub_10000FF90(v24, &v13[v40], &unk_100976120, &qword_1007F9260);
    v103 = v6;
    v41 = v6[6];
    if (v41(v13, 1, v38) == 1)
    {
      sub_100005508(v24, &unk_100976120, &qword_1007F9260);
      sub_100005508(v30, &unk_100976120, &qword_1007F9260);
      if (v41(&v13[v40], 1, v38) == 1)
      {
        v42 = v38;
        v94 = v41;
        sub_100005508(v13, &unk_100976120, &qword_1007F9260);
        goto LABEL_12;
      }
    }

    else
    {
      v43 = v105;
      sub_10000FF90(v13, v105, &unk_100976120, &qword_1007F9260);
      if (v41(&v13[v40], 1, v38) != 1)
      {
        v94 = v41;
        v44 = v103;
        v45 = &v13[v40];
        v46 = v100;
        (v103[4])(v100, v45, v38);
        sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
        v93 = dispatch thunk of static Equatable.== infix(_:_:)();
        v47 = v44[1];
        v47(v46, v107);
        sub_100005508(v24, &unk_100976120, &qword_1007F9260);
        sub_100005508(v30, &unk_100976120, &qword_1007F9260);
        v47(v43, v107);
        v42 = v107;
        sub_100005508(v13, &unk_100976120, &qword_1007F9260);
        if (v93)
        {
LABEL_12:
          if (qword_100973B58 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          sub_10000C4AC(v48, qword_1009865B0);
          v49 = v101;
          v50 = Logger.logObject.getter();
          LODWORD(v51) = static os_log_type_t.default.getter();

          v52 = &selRef_awdlInfoForPeerWithServiceName_;
          if (!os_log_type_enabled(v50, v51))
          {
LABEL_33:

            v87 = *(v106 + v102);

            v88 = [v49 v52[42]];
            if (v88)
            {
              sub_1000276B4(0, &qword_100987040, SFBatteryInfo_ptr);
              v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v89 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
                  goto LABEL_36;
                }
              }

              else if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_36:
                if ((v89 & 0xC000000000000001) != 0)
                {
                  v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    return;
                  }

                  v90 = *(v89 + 32);
                }

                v88 = v90;

                goto LABEL_42;
              }

              v88 = 0;
            }

LABEL_42:
            v91 = *(v87 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo);
            *(v87 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo) = v88;

            sub_1005F7090();
            goto LABEL_43;
          }

          v53 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v108 = v107;
          *v53 = 136315650;
          v54 = [v49 identifier];
          v55 = v97;
          if (v54)
          {
            v56 = v54;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v99(v55, 0, 1, v42);
          }

          else
          {
            v99(v97, 1, 1, v42);
          }

          v57 = v98;
          sub_1005D8888(v55, v98);
          if (v94(v57, 1, v42))
          {
            sub_100005508(v57, &unk_100976120, &qword_1007F9260);
            v58 = 0x8000000100799580;
            v59 = 0xD000000000000015;
          }

          else
          {
            LODWORD(v105) = v51;
            v51 = v103;
            v60 = v100;
            (v103[2])(v100, v57, v42);
            sub_100005508(v57, &unk_100976120, &qword_1007F9260);
            v61 = v50;
            v62 = UUID.description.getter();
            v58 = v63;
            v64 = v51;
            LOBYTE(v51) = v105;
            (v64[1])(v60, v42);
            v59 = v62;
            v50 = v61;
            v52 = &selRef_awdlInfoForPeerWithServiceName_;
          }

          v65 = sub_10000C4E4(v59, v58, &v108);

          *(v53 + 4) = v65;
          *(v53 + 12) = 2080;
          v66 = [v49 bleDevice];
          if (v66)
          {
            v67 = v66;
            v68 = [v66 identifier];

            if (v68)
            {
              v69 = v95;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v70 = 0;
            }

            else
            {
              v70 = 1;
              v69 = v95;
            }

            v99(v69, v70, 1, v42);
            v71 = v96;
            sub_1005D8888(v69, v96);
            if (!v94(v71, 1, v42))
            {
              v74 = v51;
              v51 = v103;
              v75 = v50;
              v76 = v100;
              (v103[2])(v100, v71, v42);
              sub_100005508(v71, &unk_100976120, &qword_1007F9260);
              v77 = UUID.description.getter();
              v72 = v78;
              v79 = v76;
              v50 = v75;
              (v51[1])(v79, v42);
              LOBYTE(v51) = v74;
              v73 = v77;
              goto LABEL_29;
            }

            sub_100005508(v71, &unk_100976120, &qword_1007F9260);
          }

          v72 = 0x80000001007995A0;
          v73 = 0xD00000000000001FLL;
LABEL_29:
          v80 = sub_10000C4E4(v73, v72, &v108);

          *(v53 + 14) = v80;
          *(v53 + 22) = 2080;
          v81 = [v49 v52[42]];
          if (v81)
          {
            v82 = v81;
            sub_1000276B4(0, &qword_100987040, SFBatteryInfo_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v83 = Array.description.getter();
            v85 = v84;
          }

          else
          {
            v85 = 0x80000001007995C0;
            v83 = 0xD000000000000016;
          }

          v86 = sub_10000C4E4(v83, v85, &v108);

          *(v53 + 24) = v86;
          _os_log_impl(&_mh_execute_header, v50, v51, "btBatteryScanner - changed: %s, bleID: %s, battery: %s", v53, 0x20u);
          swift_arrayDestroy();

          goto LABEL_33;
        }

LABEL_43:

        return;
      }

      sub_100005508(v24, &unk_100976120, &qword_1007F9260);
      sub_100005508(v30, &unk_100976120, &qword_1007F9260);
      (v103[1])(v43, v38);
    }

    sub_100005508(v13, &unk_100987030, &qword_1007F9330);
    goto LABEL_43;
  }
}