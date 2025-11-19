uint64_t sub_1000BFCD0(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v38 = a3;
  v39 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  (*(v13 + 16))(v16, &v4[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v12);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v6;
    v23 = v22;
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "firmwareStagingProgress: %@", v21, 0xCu);
    sub_100095C84(v23, &unk_1002A6F60, &unk_10023C4E0);
    v6 = v37;
  }

  (*(v13 + 8))(v16, v12);
  v25 = *&v4[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v26 = swift_allocObject();
  v27 = v39;
  v26[2] = v38;
  v26[3] = v4;
  v26[4] = v18;
  v26[5] = v27;
  v26[6] = v17;
  aBlock[4] = sub_1000C42A0;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276390;
  v28 = _Block_copy(aBlock);
  v29 = v18;
  v30 = v25;
  v31 = v4;
  v32 = v27;

  v33 = v40;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v34 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v44 + 8))(v34, v6);
  (*(v41 + 8))(v33, v42);
}

void sub_1000C0164(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v21 = &v134 - v18;
  v142 = a1;
  if (a1)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v146 = 0xD000000000000019;
    v147 = 0x8000000100230040;
    v22 = [a3 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v10;
    v24 = a2;
    v25 = v23;
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x207465737361202CLL;
    v29._object = 0xE800000000000000;
    String.append(_:)(v29);
    v30 = [a4 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0x20727265202CLL;
    v35._object = 0xE600000000000000;
    String.append(_:)(v35);
    v143[0] = v142;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37 = v146;
    v38 = v147;
    swift_beginAccess();
    v39 = *(a5 + 24);
    *(a5 + 16) = v37;
    *(a5 + 24) = v38;
    v139 = a5;

    v40 = *(v11 + 16);
    v141 = v24;
    v41 = &v24[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger];
    v42 = v140;
    v40(v15, v41, v140);
    v43 = a3;
    v44 = a4;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412802;
      *(v47 + 4) = v43;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = v43;
      v48[1] = v44;
      *(v47 + 22) = 2048;
      *(v47 + 24) = v142;
      v49 = v43;
      v50 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "Firmware staging failed: %@, asset %@, err %lu", v47, 0x20u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v15, v42);
    v51 = v139;
    swift_beginAccess();
    v52 = *(v51 + 16);
    v53 = *(v51 + 24);
    v54 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    v55 = v141;
    swift_beginAccess();
    sub_1000C41E0(v55 + v54, &v146);
    if (v148)
    {
      sub_1000A097C(&v146, v143);

      sub_100095C84(&v146, &unk_1002A7380, &qword_10023E970);
      v56 = v144;
      v57 = v145;
      sub_1000A09E0(v143, v144);
      swift_beginAccess();
      v59 = *(v51 + 16);
      v58 = *(v51 + 24);
      sub_1000A1168();
      v60 = swift_allocError();
      *v61 = v52;
      *(v61 + 8) = v53;
      *(v61 + 16) = 4;
      v62 = *(v57 + 8);

      v62(v59, v58, 1, v60, v56, v57);

      sub_100095808(v143);
    }

    else
    {

      sub_100095C84(&v146, &unk_1002A7380, &qword_10023E970);
    }

    sub_1000A1168();
    v75 = swift_allocError();
    *v76 = v52;
    *(v76 + 8) = v53;
    *(v76 + 16) = 4;

    sub_1000BBD88(v75);

    v77 = swift_allocError();
    *v78 = v52;
    *(v78 + 8) = v53;
    *(v78 + 16) = 4;
    sub_1000BD3D0(0, 0, v77, 0);
  }

  else
  {
    v135 = v20;
    v137 = v19;
    v63 = a5;
    v142 = v11;
    v64 = *(v11 + 16);
    v138 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
    v141 = v64;
    v64(&v134 - v18, &a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v10);
    v65 = a3;
    v66 = a4;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    v69 = os_log_type_enabled(v67, v68);
    v136 = v65;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v139 = v63;
      v140 = v10;
      *v70 = 138412546;
      *(v70 + 4) = v65;
      *(v70 + 12) = 2112;
      *(v70 + 14) = v66;
      *v71 = v65;
      v71[1] = v66;
      v72 = v65;
      v73 = v66;
      _os_log_impl(&_mh_execute_header, v67, v68, "Firmware staging complete: %@, asset %@", v70, 0x16u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();
      v10 = v140;
      v74 = v139;
    }

    else
    {

      v74 = v63;
    }

    v79 = *(v142 + 8);
    v142 += 8;
    v79(v21, v10);
    v80 = *&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID];
    *&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID] = v66;
    v81 = v66;

    if (a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_reachable])
    {
      v82 = a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state];
      if (*(*&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_profile] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateProfile_updateNotReadyReasons))
      {
        if (v82 != 3)
        {
          a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 3;
          swift_beginAccess();
          v83 = *(v74 + 24);
          *(v74 + 16) = 0xD00000000000001CLL;
          *(v74 + 24) = 0x8000000100230060;

          v84 = v137;
          v141(v137, &a2[v138], v10);

          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v140 = v10;
            v89 = a2;
            v90 = v88;
            v146 = v88;
            *v87 = 136315138;
            swift_beginAccess();
            v91 = *(v74 + 16);
            v92 = *(v74 + 24);

            v93 = sub_1000952D4(v91, v92, &v146);

            *(v87 + 4) = v93;
            _os_log_impl(&_mh_execute_header, v85, v86, "%s", v87, 0xCu);
            sub_100095808(v90);
            a2 = v89;

            v94 = v84;
            v95 = v140;
          }

          else
          {

            v94 = v84;
            v95 = v10;
          }

          v79(v94, v95);
          v109 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
          swift_beginAccess();
          sub_1000C41E0(&a2[v109], &v146);
          if (v148)
          {
            sub_1000A097C(&v146, v143);
            sub_100095C84(&v146, &unk_1002A7380, &qword_10023E970);
            v110 = a2;
            v111 = v144;
            v112 = v145;
            sub_1000A09E0(v143, v144);
            swift_beginAccess();
            v114 = *(v74 + 16);
            v113 = *(v74 + 24);
            sub_1000A1168();
            v115 = swift_allocError();
            *v116 = v114;
            *(v116 + 8) = v113;
            *(v116 + 16) = 6;
            v117 = *(v112 + 8);
            swift_bridgeObjectRetain_n();
            v118 = v111;
            a2 = v110;
            v117(v114, v113, 1, v115, v118, v112);

            sub_100095808(v143);
          }

          else
          {
            sub_100095C84(&v146, &unk_1002A7380, &qword_10023E970);
          }

          v119 = *&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_txn];

          sub_1001059EC();
        }
      }

      else if (v82 != 4)
      {
        a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 4;
        swift_beginAccess();
        v96 = *(v74 + 24);
        *(v74 + 16) = 0xD00000000000001CLL;
        *(v74 + 24) = 0x8000000100230080;

        v97 = v135;
        v141(v135, &a2[v138], v10);

        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v140 = v10;
          v102 = a2;
          v103 = v101;
          v146 = v101;
          *v100 = 136315138;
          swift_beginAccess();
          v104 = *(v74 + 16);
          v105 = *(v74 + 24);

          v106 = sub_1000952D4(v104, v105, &v146);

          *(v100 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v98, v99, "%s", v100, 0xCu);
          sub_100095808(v103);
          a2 = v102;

          v107 = v97;
          v108 = v140;
        }

        else
        {

          v107 = v97;
          v108 = v10;
        }

        v79(v107, v108);
        v120 = v136;
        v121 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
        swift_beginAccess();
        sub_1000C41E0(&a2[v121], &v146);
        if (v148)
        {
          sub_1000A097C(&v146, v143);
          sub_100095C84(&v146, &unk_1002A7380, &qword_10023E970);
          v122 = a2;
          v123 = v144;
          v124 = v145;
          sub_1000A09E0(v143, v144);
          swift_beginAccess();
          v126 = *(v74 + 16);
          v125 = *(v74 + 24);
          v127 = *(v124 + 8);

          v128 = v123;
          a2 = v122;
          v127(v126, v125, 0, 0, v128, v124);

          sub_100095808(v143);
        }

        else
        {
          sub_100095C84(&v146, &unk_1002A7380, &qword_10023E970);
        }

        v129 = *(*&a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
        sub_100095274(&qword_1002A7390, &qword_10023BEF0);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_10023BDA0;
        *(v130 + 32) = v120;
        sub_1000C42B0();
        v131 = v120;
        v132 = v129;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v132 applyStagedFirmwareOnAccessoryList:isa withUserIntent:1];
      }
    }

    else if (a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state])
    {
      a2[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state] = 0;
    }
  }
}

uint64_t sub_1000C0FFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0xE000000000000000;
  (*(v12 + 16))(v15, &v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger], v11);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v5;
    v22 = v21;
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "firmwareStagingProgress: %@)", v20, 0xCu);
    sub_100095C84(v22, &unk_1002A6F60, &unk_10023C4E0);
    v5 = v34;
  }

  (*(v12 + 8))(v15, v11);
  v24 = *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_txn];

  sub_1001059EC();

  v25 = *&v3[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v26 = swift_allocObject();
  v26[2] = v35;
  v26[3] = v16;
  v26[4] = v17;
  v26[5] = v3;
  aBlock[4] = sub_1000C41D4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276340;
  v27 = _Block_copy(aBlock);
  v28 = v17;
  v29 = v25;

  v30 = v3;
  v31 = v36;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v32 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v40 + 8))(v32, v5);
  (*(v37 + 8))(v31, v38);
}

uint64_t sub_1000C14A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v169 = *(v12 - 8);
  v13 = *(v169 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v24 = &v143 - v23;
  v168 = a4;
  if (a1)
  {
    v173 = 0;
    v174 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v173 = 0xD00000000000001ELL;
    v174 = 0x800000010022FFF0;
    v170 = a1;
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27 = [a3 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32 = v173;
    v33 = v174;
    swift_beginAccess();
    v34 = *(a2 + 24);
    *(a2 + 16) = v32;
    *(a2 + 24) = v33;

    v35 = v169;
    (*(v169 + 16))(v16, a4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v12);
    v36 = a3;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = v35;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 134218242;
      *(v40 + 4) = a1;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v36;
      *v41 = v36;
      v42 = v36;
      _os_log_impl(&_mh_execute_header, v37, v38, "Firmware apply failed: status %lu %@", v40, 0x16u);
      sub_100095C84(v41, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v39 + 8))(v16, v12);
    swift_beginAccess();
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    sub_1000A1168();
    v45 = swift_allocError();
    *v46 = v44;
    *(v46 + 8) = v43;
    *(v46 + 16) = 5;
    v47 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    v48 = v168;
    swift_beginAccess();
    sub_1000C41E0(v48 + v47, &v173);
    if (v175)
    {
      sub_1000A097C(&v173, &v170);

      sub_100095C84(&v173, &unk_1002A7380, &qword_10023E970);
      v49 = v171;
      v50 = v172;
      sub_1000A09E0(&v170, v171);
      swift_beginAccess();
      v52 = *(a2 + 16);
      v51 = *(a2 + 24);
      v53 = *(v50 + 8);

      v53(v52, v51, 1, v45, v49, v50);

      sub_100095808(&v170);
    }

    else
    {

      sub_100095C84(&v173, &unk_1002A7380, &qword_10023E970);
    }
  }

  else
  {
    v163 = v22;
    v160 = v11;
    v161 = v21;
    v154 = v20;
    v173 = 0;
    v174 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v173 = 0xD00000000000002FLL;
    v174 = 0x8000000100230010;
    v54 = [a3 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    String.append(_:)(v58);

    v59 = v173;
    v60 = v174;
    swift_beginAccess();
    v61 = *(a2 + 24);
    *(a2 + 16) = v59;
    *(a2 + 24) = v60;

    v62 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
    v63 = v169;
    v64 = *(v169 + 16);
    v166 = v169 + 16;
    v165 = v64;
    v64(v24, a4 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v12);
    v65 = a3;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = v62;
      v69 = swift_slowAlloc();
      v70 = v63;
      v71 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v65;
      *v71 = v65;
      v72 = v65;
      _os_log_impl(&_mh_execute_header, v66, v67, "Firmware apply successful, firmware is updated %@", v69, 0xCu);
      sub_100095C84(v71, &unk_1002A6F60, &unk_10023C4E0);
      v63 = v70;

      v62 = v68;
    }

    v73 = *(v63 + 8);
    v167 = v12;
    v169 = v63 + 8;
    v73(v24, v12);
    v74 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
    v48 = v168;
    swift_beginAccess();
    sub_1000C41E0(v48 + v74, &v173);
    if (v175)
    {
      sub_1000A097C(&v173, &v170);
      sub_100095C84(&v173, &unk_1002A7380, &qword_10023E970);
      v75 = v171;
      v76 = v172;
      sub_1000A09E0(&v170, v171);
      swift_beginAccess();
      v77 = *(a2 + 16);
      v78 = *(a2 + 24);
      v79 = *(v76 + 8);

      v79(v77, v78, 1, 0, v75, v76);

      sub_100095808(&v170);
    }

    else
    {
      sub_100095C84(&v173, &unk_1002A7380, &qword_10023E970);
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v80 = qword_1002B1CF0;
    v81 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory;
    v82 = *(*(v48 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory) + 24);
    v162 = v80;
    v83 = sub_1001884E4();

    v84 = v167;
    v164 = v83;
    if (v83)
    {
      v165(v163, v48 + v62, v167);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Updating accessory firmware version", v87, 2u);
        v84 = v167;
      }

      v73(v163, v84);
      v88 = *(*(v48 + v81) + 24);
      v89 = v160;
      DockCoreInfo.identifier.getter();

      v90 = sub_1001408A0(v89);
      v157 = v91;
      v92 = *(*(v48 + v81) + 24);
      v156 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID;
      v93 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID);
      v158 = v73;
      if (v93)
      {
        v94 = v92;
        v95 = [v93 assetVersion];
        v96 = v162;
        v97 = v84;
        if (v95)
        {
          v98 = v95;
          v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v163 = v99;
        }

        else
        {
          v159 = 0;
          v163 = 0;
        }
      }

      else
      {
        v97 = v84;
        v100 = v92;
        v159 = 0;
        v163 = 0;
        v96 = v162;
      }

      v150 = dispatch thunk of DockCoreAccessory.serialNumber.getter();
      v102 = v101;
      v160 = dispatch thunk of DockCoreAccessory.model.getter();
      v104 = v103;
      v152 = dispatch thunk of DockCoreAccessory.isMagSafe.getter();
      v151 = dispatch thunk of DockCoreAccessory.certified.getter();
      v105 = sub_1001884E4();
      v106 = v92;
      v155 = v92;
      if (v105)
      {
        v107 = v105;
        v149 = v102;
        v153 = v90;
        v146 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
        v108 = v97;
        v165(v161, v96 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v97);

        v109 = v106;
        v110 = v163;

        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();

        v145 = v112;
        v147 = v111;
        v113 = os_log_type_enabled(v111, v112);
        v148 = v104;
        if (v113)
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v144 = v115;
          v170 = swift_slowAlloc();
          *v114 = 138412802;
          *(v114 + 4) = v109;
          *v115 = v109;
          *(v114 + 12) = 2080;
          v173 = v159;
          v174 = v110;
          v116 = v109;

          sub_100095274(&unk_1002A6F20, &unk_10023C660);
          v117 = String.init<A>(describing:)();
          v119 = sub_1000952D4(v117, v118, &v170);

          *(v114 + 14) = v119;
          v110 = v163;
          *(v114 + 22) = 2080;
          v173 = v160;
          v174 = v104;

          v120 = String.init<A>(describing:)();
          v122 = sub_1000952D4(v120, v121, &v170);
          v123 = v167;

          *(v114 + 24) = v122;
          v108 = v123;
          v124 = v147;
          _os_log_impl(&_mh_execute_header, v147, v145, "Updating accessory information for %@: firmware %s, model %s", v114, 0x20u);
          sub_100095C84(v144, &unk_1002A6F60, &unk_10023C4E0);

          swift_arrayDestroy();

          v96 = v162;
        }

        else
        {
        }

        v158(v161, v108);
        v125 = v153;
        v126 = v149;
        if (!v110)
        {
          v159 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
        }

        dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
        v127 = v148;
        if (!v126)
        {
          dispatch thunk of DockCoreAccessory.serialNumber.getter();
        }

        dispatch thunk of DockCoreAccessory.serialNumber.setter();
        if (!v127)
        {
          v160 = dispatch thunk of DockCoreAccessory.model.getter();
        }

        dispatch thunk of DockCoreAccessory.model.setter();
        dispatch thunk of DockCoreAccessory.certified.setter();
        dispatch thunk of DockCoreAccessory.isMagSafe.setter();
        sub_10018F7CC(v107);
      }

      else
      {

        v125 = v90;
      }

      *(*(v48 + v81) + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer) = 1;
      v128 = *(v96 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v129 = v157;
      v130 = sub_10014025C(v125, v157);
      sub_1000D9F2C(v130, v131);

      v132 = *(v48 + v81);

      v133 = sub_1001F2F38(_swiftEmptyArrayStorage);
      v134 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
      swift_beginAccess();
      v135 = *(v132 + v134);
      *(v132 + v134) = v133;

      *(v48 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_endPercent) = 0x4059000000000000;
      v136 = *(v48 + v156);
      if (v136 && (v136 = [v136 assetVersion]) != 0)
      {
        v137 = v136;
        v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v140 = v139;

        v136 = v138;
      }

      else
      {
        v140 = 0;
      }

      sub_1000BD3D0(v136, v140, 0, 1);

      sub_1000A0D2C(v125, v129);
    }

    v141 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID);
    *(v48 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_stagedAssetID) = 0;

    v45 = 0;
  }

  if (*(v48 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state))
  {
    *(v48 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_state) = 0;
  }

  sub_1000BBD88(v45);
}

uint64_t sub_1000C27BC(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1000C414C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_1002762C8;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v1;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void sub_1000C2A74(char *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v78 = &v65 - v10;
  __chkstk_darwin(v9);
  v12 = &v65 - v11;
  v13 = *(*&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_manager] + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController);
  v83 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger;
  v77 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_uarpAccessory;
  v68 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory;
  v14 = v13;
  v81 = a2;
  v15 = [a2 readData];
  if (!v15)
  {
    goto LABEL_27;
  }

  v17 = v15;
  v82 = (v5 + 16);
  v18 = (v5 + 8);
  *&v16 = 134218242;
  v73 = v16;
  *&v16 = 138412802;
  v67 = v16;
  v71 = v4;
  v72 = a1;
  v74 = (v5 + 8);
  v75 = v14;
  v80 = v12;
  while (1)
  {
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v79 = *v82;
    v79(v12, &a1[v83], v4);
    sub_1000A0CD8(v20, v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v84 = v26;
      *v25 = v73;
      v27 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        if (v27 == 2)
        {
          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v32 = __OFSUB__(v30, v31);
          v28 = v30 - v31;
          if (v32)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v28 = 0;
        }
      }

      else if (v27)
      {
        LODWORD(v28) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          __break(1u);
LABEL_29:
          __break(1u);
        }

        v28 = v28;
      }

      else
      {
        v28 = BYTE6(v22);
      }

      *(v25 + 4) = v28;
      sub_1000A0D2C(v20, v22);
      *(v25 + 12) = 2080;
      v33 = sub_10013B46C(v20, v22);
      v35 = sub_1000952D4(v33, v34, &v84);

      *(v25 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "HDS socket received data of size %ld data is %s", v25, 0x16u);
      sub_100095808(v26);

      v18 = v74;
      v29 = *v74;
      (*v74)(v80, v4);
      v14 = v75;
    }

    else
    {
      sub_1000A0D2C(v20, v22);

      v29 = *v18;
      (*v18)(v12, v4);
    }

    v36 = *&a1[v77];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v84 = 0;
    v38 = [v14 recvDataFromAccessory:v36 data:isa error:&v84];

    if (!v38)
    {
      break;
    }

    v19 = v84;
    sub_1000A0D2C(v20, v22);
    v12 = v80;
LABEL_4:
    v17 = [v81 readData];
    if (!v17)
    {
      goto LABEL_27;
    }
  }

  v76 = v29;
  v39 = v84;
  v40 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v79(v78, &a1[v83], v4);
  v41 = v14;
  v42 = a1;
  swift_errorRetain();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  v70 = v42;

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v84 = v69;
    *v45 = v67;
    v47 = *(*&a1[v68] + 24);
    *(v45 + 4) = v47;
    *v46 = v47;
    *(v45 + 12) = 2080;
    v48 = v47;
    v49 = [v41 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_1000952D4(v50, v52, &v84);

    *(v45 + 14) = v53;
    *(v45 + 22) = 2112;
    swift_errorRetain();
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 24) = v54;
    v46[1] = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "Couldn't send data from accessory %@ to controller: %s: error: %@", v45, 0x20u);
    sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
    swift_arrayDestroy();

    sub_100095808(v69);

    v18 = v74;
    v14 = v75;
  }

  v4 = v71;
  v55 = v76;
  v76(v78, v71);
  v12 = v80;
  if (![v81 isClosed])
  {
    sub_1000A0D2C(v20, v22);

    a1 = v72;
    goto LABEL_4;
  }

  v81 = v40;
  v56 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v57 = v70;
  v58 = *&v70[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock];

  os_unfair_lock_lock(v58 + 4);

  v59 = *&v57[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket];
  *&v57[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket] = 0;
  swift_unknownObjectRelease();
  v60 = *&v57[v56];

  os_unfair_lock_unlock(v60 + 4);

  a1 = v72;
  v79(v66, &v72[v83], v4);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Socket closed", v63, 2u);

    sub_1000A0D2C(v20, v22);
  }

  else
  {
    sub_1000A0D2C(v20, v22);
  }

  v55(v66, v4);
LABEL_27:
  v64 = *&a1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketIdleTimer];
  [v64 resume];
}

uint64_t getEnumTagSinglePayload for BTDeviceDiscoveryMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BTDeviceDiscoveryMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C3454()
{
  result = qword_1002A7368;
  if (!qword_1002A7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7368);
  }

  return result;
}

uint64_t sub_1000C34A8(const char *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 2u);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000C3608(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a1 / a2 * 100.0;
    v12 = v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent;
    if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_startPercent + 8) == 1 && v11 > 0.05)
    {
      *v12 = v11;
      *(v12 + 8) = 0;
    }
  }

  else
  {
    v11 = 0.0;
  }

  *(v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_endPercent) = v11;
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v30 = 0xD000000000000010;
  v31 = 0x80000001002300A0;
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10023C170;
  *(v13 + 56) = &type metadata for Double;
  *(v13 + 64) = &protocol witness table for Double;
  *(v13 + 32) = v11;
  v14._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x656E6F6420;
  v15._object = 0xE500000000000000;
  String.append(_:)(v15);
  v17 = v30;
  v16 = v31;
  (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v6);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000952D4(v17, v16, &v30);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s", v20, 0xCu);
    sub_100095808(v21);
  }

  (*(v7 + 8))(v10, v6);
  v22 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
  swift_beginAccess();
  sub_1000C41E0(v3 + v22, &v30);
  if (v32)
  {
    sub_1000A097C(&v30, v27);
    sub_100095C84(&v30, &unk_1002A7380, &qword_10023E970);
    v23 = v28;
    v24 = v29;
    sub_1000A09E0(v27, v28);
    (*(v24 + 8))(v17, v16, 0, 0, v23, v24);

    return sub_100095808(v27);
  }

  else
  {

    return sub_100095C84(&v30, &unk_1002A7380, &qword_10023E970);
  }
}

uint64_t sub_1000C39C0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(*&v6[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory] + 24);
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "HDS socket closed for accessory %@", v9, 0xCu);
    sub_100095C84(v10, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v2 + 8))(v5, v1);
  v13 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock;
  v14 = *&v6[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socketLock];

  os_unfair_lock_lock(v14 + 4);

  v15 = *&v6[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket];
  *&v6[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_socket] = 0;
  swift_unknownObjectRelease();
  v16 = *&v6[v13];

  os_unfair_lock_unlock(v16 + 4);
}

uint64_t sub_1000C3BDC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_logger, v1);
  v6 = v0;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = *(*&v6[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_accessory] + 24);
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = v11;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "HDS socket failed for accessory %@ with error %@", v9, 0x16u);
    sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
    swift_arrayDestroy();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1000C3DEC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_workQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1000C40D0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276278;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v0;
  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000C4098()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C40F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C410C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C4154()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C418C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C41E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A7380, &qword_10023E970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C4250()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000C42B0()
{
  result = qword_1002A7398;
  if (!qword_1002A7398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A7398);
  }

  return result;
}

uint64_t sub_1000C42FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C4360()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C43F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C4438()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009862C;

  return sub_1000BBB84();
}

uint64_t sub_1000C44EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C46B4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v61 = sub_1001E3B28(*(v2 + 16), 0);
  v4 = sub_1001F0CB4(&v64, v61 + 4, v3, v2);

  sub_1000C7084();
  if (v4 != v3)
  {
    __break(1u);
LABEL_4:
    v61 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v5 = *(v1 + 88);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(v1 + 88);

  v12 = 0;
  v62 = v5;
  while (v9)
  {
    v13 = v9;
LABEL_15:
    v9 = (v13 - 1) & v13;
    v15 = *(v1 + 80);
    if (*(v15 + 16))
    {
      v16 = __clz(__rbit64(v13)) | (v12 << 6);
      v17 = (*(v5 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(v5 + 56) + 8 * v16);

      v21 = sub_10016D4D0(v19, v18);
      if (v22)
      {
        v23 = *(*(v15 + 56) + 8 * v21);

        if (v23 != v20)
        {
          v24 = *(v1 + 96);
          if (v24 != 0.0)
          {
            v25 = v24 / *(v1 + 64);
            if (v20 * v23 < 0.0 || v20 == 0.0)
            {
              v25 = v25 + v25;
            }

            if (v23 >= v20)
            {
              v27 = v23 - v25;
              v28 = v27 < v20;
            }

            else
            {
              v27 = v23 + v25;
              v28 = v20 < v27;
            }

            if (v28)
            {
              v23 = v20;
            }

            else
            {
              v23 = v27;
            }
          }
        }

        swift_beginAccess();
        v29 = *(v1 + 80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v1 + 80);
        v63 = v31;
        *(v1 + 80) = 0x8000000000000000;
        v32 = sub_10016D4D0(v19, v18);
        v34 = v31[2];
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_61;
        }

        v38 = v33;
        if (v31[3] < v37)
        {
          sub_1001E6D20(v37, isUniquelyReferenced_nonNull_native);
          v32 = sub_10016D4D0(v19, v18);
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_63;
          }

LABEL_35:
          if (v38)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_35;
        }

        v42 = v32;
        sub_1001EE880();
        v32 = v42;
        if (v38)
        {
LABEL_36:
          v40 = v32;

          v41 = v63;
          *(v63[7] + 8 * v40) = v23;
          goto LABEL_40;
        }

LABEL_38:
        v41 = v31;
        v31[(v32 >> 6) + 8] |= 1 << v32;
        v43 = (v31[6] + 16 * v32);
        *v43 = v19;
        v43[1] = v18;
        *(v31[7] + 8 * v32) = v23;
        v44 = v31[2];
        v36 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v36)
        {
          goto LABEL_62;
        }

        v31[2] = v45;
LABEL_40:
        *(v1 + 80) = v41;
        swift_endAccess();
        v5 = v62;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      v46 = *(v1 + 80);
      v47 = *(v46 + 16);
      if (!v47)
      {
        goto LABEL_44;
      }

      v48 = sub_1001E3B28(*(v46 + 16), 0);
      v49 = sub_1001F0CB4(&v64, v48 + 4, v47, v46);

      sub_1000C7084();
      if (v49 != v47)
      {
        __break(1u);
LABEL_44:
        v48 = _swiftEmptyArrayStorage;
      }

      v50 = sub_1000F00B4(v61, v48);

      if ((v50 & 1) == 0)
      {
        return 1;
      }

      v51 = *(v1 + 80);
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = sub_1001E3B28(*(v51 + 16), 0);
        v54 = sub_1001F0CB4(&v64, v53 + 4, v52, v51);

        sub_1000C7084();
        if (v54 != v52)
        {
          __break(1u);
          return 1;
        }
      }

      else
      {
        v53 = _swiftEmptyArrayStorage;
      }

      v56 = v53[2];
      v57 = 4;
      do
      {
        v58 = v56-- != 0;
        v55 = v58;
        if (!v58)
        {
          break;
        }

        v59 = *&v53[v57++];
      }

      while (v59 == 0.0);

      return v55;
    }

    v13 = *(v6 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000C4B7C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 72);
  OS_dispatch_semaphore.wait()();

  if (*(v1 + 170) == 1)
  {
LABEL_2:
    v19 = *(v1 + 72);
    OS_dispatch_semaphore.signal()();
    v8 = v19;

    return;
  }

  if (sub_1000C46B4() & 1) != 0 || (*(v1 + 169))
  {
    *(v1 + 169) = 0;
  }

  else
  {
    if (*(v1 + 168) != 1 || (*(v1 + 40) & 1) != 0)
    {
      goto LABEL_2;
    }

    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "stable, expiring", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    *(v1 + 40) = 1;
    v12 = *(v1 + 120);
    if (v12)
    {
      v13 = *(v1 + 128);

      v12(v1);
      sub_1000BAA84(v12);
    }
  }

  v14 = *(v1 + 72);
  OS_dispatch_semaphore.signal()();

  v15 = *(v1 + 104);
  if (v15)
  {
    v16 = *(v1 + 112);
    swift_beginAccess();
    v17 = *(v1 + 80);
    sub_1000C6F30(v15);

    v15(v18);

    sub_1000BAA84(v15);
  }
}

void sub_1000C4E14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 72);
  OS_dispatch_semaphore.wait()();

  *(v4 + 169) = 1;
  if (a3)
  {
    (*(v9 + 16))(v12, v4 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v8);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v69 = a2;
      v18 = v17;
      v72[0] = v17;
      *v16 = 136315394;
      v70 = a1;
      v20 = *(v4 + 24);
      v19 = *(v4 + 32);

      v21 = sub_1000952D4(v20, v19, v72);
      a1 = v70;

      *(v16 + 4) = v21;
      *(v16 + 12) = 1024;
      *(v16 + 14) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v14, v15, "setting expireWhenStable true for animator owned by %s[%d]", v16, 0x12u);
      sub_100095808(v18);
      a2 = v69;
    }

    else
    {
    }

    (*(v9 + 8))(v12, v8);
    *(v4 + 168) = 1;
  }

  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_35:
    v64 = *(v4 + 72);
    OS_dispatch_semaphore.signal()();

    v65 = [objc_allocWithZone(NSDate) init];
    [v65 timeIntervalSince1970];
    v67 = v66;

    *(v4 + 136) = v67;
    if (!*(v4 + 144))
    {
      sub_1000C59C0();
    }

    return;
  }

  v23 = (a2 + 32);
  v24 = *(a2 + 16);
  swift_beginAccess();
  v25 = (a1 + 40);
  while (v24)
  {
    v28 = *v23;
    if ((*v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v30 = *(v25 - 1);
    v29 = *v25;
    swift_beginAccess();

    v31 = *(v4 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v4 + 88);
    v33 = v71;
    *(v4 + 88) = 0x8000000000000000;
    v34 = sub_10016D4D0(v30, v29);
    v36 = v33[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_39;
    }

    v40 = v35;
    if (v33[3] < v39)
    {
      sub_1001E6D20(v39, isUniquelyReferenced_nonNull_native);
      v34 = sub_10016D4D0(v30, v29);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_43;
      }

LABEL_18:
      if (v40)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v44 = v34;
    sub_1001EE880();
    v34 = v44;
    if (v40)
    {
LABEL_19:
      v42 = v34;

      v43 = v71;
      *(v71[7] + 8 * v42) = v28;
      goto LABEL_23;
    }

LABEL_21:
    v43 = v71;
    v71[(v34 >> 6) + 8] |= 1 << v34;
    v45 = (v43[6] + 16 * v34);
    *v45 = v30;
    v45[1] = v29;
    *(v43[7] + 8 * v34) = v28;
    v46 = v43[2];
    v38 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v38)
    {
      goto LABEL_41;
    }

    v43[2] = v47;
LABEL_23:
    *(v4 + 88) = v43;
    swift_endAccess();
    if (*(*(v4 + 80) + 16))
    {

      sub_10016D4D0(v30, v29);
      v49 = v48;

      if (v49)
      {
        goto LABEL_10;
      }
    }

    swift_beginAccess();

    v50 = *(v4 + 80);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v4 + 80);
    v52 = v71;
    *(v4 + 80) = 0x8000000000000000;
    v53 = sub_10016D4D0(v30, v29);
    v55 = v52[2];
    v56 = (v54 & 1) == 0;
    v38 = __OFADD__(v55, v56);
    v57 = v55 + v56;
    if (v38)
    {
      goto LABEL_40;
    }

    v58 = v54;
    if (v52[3] < v57)
    {
      sub_1001E6D20(v57, v51);
      v53 = sub_10016D4D0(v30, v29);
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_43;
      }

LABEL_30:
      if ((v58 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    if (v51)
    {
      goto LABEL_30;
    }

    v63 = v53;
    sub_1001EE880();
    v53 = v63;
    if ((v58 & 1) == 0)
    {
LABEL_31:
      v27 = v71;
      v71[(v53 >> 6) + 8] |= 1 << v53;
      v60 = (v27[6] + 16 * v53);
      *v60 = v30;
      v60[1] = v29;
      *(v27[7] + 8 * v53) = 0;
      v61 = v27[2];
      v38 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v38)
      {
        goto LABEL_42;
      }

      v27[2] = v62;
      goto LABEL_9;
    }

LABEL_8:
    v26 = v53;

    v27 = v71;
    *(v71[7] + 8 * v26) = 0;
LABEL_9:
    *(v4 + 80) = v27;
    swift_endAccess();
LABEL_10:
    --v24;
    ++v23;
    v25 += 2;
    if (!--v22)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000C53C8(char a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 72);
  OS_dispatch_semaphore.wait()();

  *(v3 + 169) = 1;
  if (a1)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v6);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v74 = v15;
      *v14 = 136315394;
      v16 = *(v3 + 24);
      v17 = *(v3 + 32);

      v18 = sub_1000952D4(v16, v17, &v74);

      *(v14 + 4) = v18;
      *(v14 + 12) = 1024;
      *(v14 + 14) = *(v3 + 16);

      _os_log_impl(&_mh_execute_header, v12, v13, "setting expireWhenStable true for animator owned by %s[%d]", v14, 0x12u);
      sub_100095808(v15);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
    *(v3 + 168) = 1;
  }

  swift_beginAccess();
  v19 = *(v3 + 88);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(v3 + 88) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v72 = *(v3 + 88);

  swift_beginAccess();
  v26 = 0;
  v27 = (v23 + 63) >> 6;
  if (!v25)
  {
    while (1)
    {
LABEL_12:
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v30 >= v27)
      {
        break;
      }

      v25 = *(v21 + 8 * v30);
      ++v26;
      if (v25)
      {
        v26 = v30;
        goto LABEL_16;
      }
    }

    v67 = *(v3 + 72);
    OS_dispatch_semaphore.signal()();

    v68 = [objc_allocWithZone(NSDate) init];
    [v68 timeIntervalSince1970];
    v70 = v69;

    *(v3 + 136) = v70;
    if (!*(v3 + 144))
    {
      sub_1000C59C0();
    }

    return;
  }

LABEL_16:
  while (1)
  {
    v31 = (*(v72 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v25)))));
    v33 = *v31;
    v32 = v31[1];
    swift_beginAccess();

    v34 = *(v3 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v3 + 88);
    v36 = v73;
    *(v3 + 88) = 0x8000000000000000;
    v37 = sub_10016D4D0(v33, v32);
    v39 = v36[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      break;
    }

    v43 = v38;
    if (v36[3] < v42)
    {
      sub_1001E6D20(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_10016D4D0(v33, v32);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_48;
      }

LABEL_21:
      v45 = v73;
      if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v46 = v37;
    sub_1001EE880();
    v37 = v46;
    v45 = v73;
    if ((v43 & 1) == 0)
    {
LABEL_24:
      v45[(v37 >> 6) + 8] |= 1 << v37;
      v47 = (v45[6] + 16 * v37);
      *v47 = v33;
      v47[1] = v32;
      *(v45[7] + 8 * v37) = a2;
      v48 = v45[2];
      v41 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v41)
      {
        goto LABEL_46;
      }

      v45[2] = v49;

      goto LABEL_26;
    }

LABEL_22:
    *(v45[7] + 8 * v37) = a2;
LABEL_26:
    v25 &= v25 - 1;
    *(v3 + 88) = v45;
    swift_endAccess();
    if (*(*(v3 + 80) + 16) && (v50 = *(v3 + 80), , sub_10016D4D0(v33, v32), v52 = v51, , (v52 & 1) != 0))
    {

      if (!v25)
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_beginAccess();
      v53 = *(v3 + 80);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v73 = *(v3 + 80);
      v55 = v73;
      *(v3 + 80) = 0x8000000000000000;
      v56 = sub_10016D4D0(v33, v32);
      v58 = v55[2];
      v59 = (v57 & 1) == 0;
      v41 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v41)
      {
        goto LABEL_45;
      }

      v61 = v57;
      if (v55[3] < v60)
      {
        sub_1001E6D20(v60, v54);
        v56 = sub_10016D4D0(v33, v32);
        if ((v61 & 1) != (v62 & 1))
        {
          goto LABEL_48;
        }

LABEL_35:
        if (v61)
        {
          goto LABEL_10;
        }

        goto LABEL_36;
      }

      if (v54)
      {
        goto LABEL_35;
      }

      v66 = v56;
      sub_1001EE880();
      v56 = v66;
      if (v61)
      {
LABEL_10:
        v28 = v56;

        v29 = v73;
        *(v73[7] + 8 * v28) = 0;
        goto LABEL_11;
      }

LABEL_36:
      v29 = v73;
      v73[(v56 >> 6) + 8] |= 1 << v56;
      v63 = (v29[6] + 16 * v56);
      *v63 = v33;
      v63[1] = v32;
      *(v29[7] + 8 * v56) = 0;
      v64 = v29[2];
      v41 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v41)
      {
        goto LABEL_47;
      }

      v29[2] = v65;
LABEL_11:
      *(v3 + 80) = v29;
      swift_endAccess();
      if (!v25)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000C59C0()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = *(v0 + 160) * 0.5;
  v4 = *(v0 + 152);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
  v7 = v4;

  v8 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
  v9 = *(v1 + 144);
  *(v1 + 144) = v8;
}

void sub_1000C5AC8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDate) init];
  [v8 timeIntervalSince1970];
  v10 = v9;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 136);
  }

  else
  {
    v13 = [objc_allocWithZone(NSDate) init];
    [v13 timeIntervalSince1970];
    v12 = v14;
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v16 = *(v15 + 160);
  }

  else
  {
    v16 = INFINITY;
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (!v17)
  {
    return;
  }

  v18 = *(v17 + 136);

  if (v18 == 0.0)
  {
    return;
  }

  v19 = v10 - v12;
  if (v16 >= v19)
  {
    return;
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    (*(v4 + 16))(v7, v20 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v3);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136315650;
      v46 = v4;
      v47[0] = v24;
      v26 = *(a2 + 24);
      v25 = *(a2 + 32);

      v27 = sub_1000952D4(v26, v25, v47);

      *(v23 + 4) = v27;
      *(v23 + 12) = 1024;
      *(v23 + 14) = *(a2 + 16);

      *(v23 + 18) = 2048;
      *(v23 + 20) = v19;
      _os_log_impl(&_mh_execute_header, v21, v22, "animator owned by %s[%d] hasn't received commands in %f sec, stopping actuators & expiring", v23, 0x1Cu);
      sub_100095808(v45);

      (v46[1])(v7, v3);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = v28;
    swift_beginAccess();
    v30 = *(v29 + 80);

    swift_beginAccess();
    v31 = swift_weakLoadStrong();
    if (!v31)
    {
      goto LABEL_24;
    }

    v32 = v31;
    swift_beginAccess();
    v33 = *(v32 + 80);

    v34 = *(v33 + 16);

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_24;
    }

    v35 = *(v30 + 16);
    if (v35)
    {
      v44 = sub_1001E3AA4(*(v30 + 16), 0);
      v36 = sub_1001F0DB4(v47, v44 + 4, v35, v30);
      v45 = v47[4];
      v46 = v36;

      sub_1000C7084();
      if (v46 != v35)
      {
        __break(1u);
        return;
      }

      v37 = v44;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
      if (v34)
      {
LABEL_20:
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v38[2] = v34;
        bzero(v38 + 4, 8 * v34);
LABEL_23:
        sub_1000C4E14(v37, v38, 1);

LABEL_24:

        goto LABEL_25;
      }
    }

    v38 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_25:
  swift_beginAccess();
  v39 = swift_weakLoadStrong();
  if (v39)
  {
    v40 = *(v39 + 144);
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      dispatch thunk of RepeatingTimer.suspend()();

      v39 = v41;
      v43 = *(v41 + 144);
    }

    else
    {
      v43 = 0;
    }

    *(v39 + 144) = 0;
  }
}

uint64_t sub_1000C6028()
{
  v1 = type metadata accessor for Logger();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = v48 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1001F2278(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v17 = v0[10];
  v0[10] = v16;

  v18 = sub_1001F2278(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v19 = v0[11];
  v0[11] = v18;

  if (v0[6])
  {
    v21 = v50;
    v20 = v51;
    (*(v50 + 16))(v5, v0 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v51);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52 = v25;
      *v24 = 136315138;
      v26 = sub_1000C4580();
      v28 = sub_1000952D4(v26, v27, &v52);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "animator loop already running: %s", v24, 0xCu);
      sub_100095808(v25);
    }

    return (*(v21 + 8))(v5, v20);
  }

  else
  {
    v48[1] = sub_1000B3420();
    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_1000C6F40();
    sub_100095274(&unk_1002A6830, &unk_10023AB20);
    sub_1000C6F98();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v31 = v0[6];
    v0[6] = v30;

    swift_allocObject();
    swift_weakInit();
    v32 = (1.0 / v0[8]);
    v33 = v0[6];
    v34 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v35 = v33;

    v36 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v37 = v0[7];
    v0[7] = v36;

    v39 = v49;
    v38 = v50;
    v40 = v51;
    (*(v50 + 16))(v49, v0 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v51);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v43 = 136315138;
      v45 = sub_1000C4580();
      v47 = sub_1000952D4(v45, v46, &v52);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "animator loop started: %s", v43, 0xCu);
      sub_100095808(v44);
    }

    (*(v38 + 8))(v39, v40);
  }
}

uint64_t sub_1000C660C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000C4B7C();
  }

  return result;
}

uint64_t sub_1000C6664()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  if (*(v0 + 48))
  {
    v10 = *(v0 + 56);
    if (v10)
    {
      v11 = v10;
      dispatch thunk of RepeatingTimer.suspend()();

      v10 = *(v1 + 56);
    }

    *(v1 + 56) = 0;

    v12 = *(v1 + 48);
    *(v1 + 48) = 0;

    (*(v3 + 16))(v9, v1 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v2);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v17 = sub_1000C4580();
      v19 = sub_1000952D4(v17, v18, &v29);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "animator stopped: %s", v15, 0xCu);
      sub_100095808(v16);
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    (*(v3 + 16))(v7, v0 + OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger, v2);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = sub_1000C4580();
      v27 = sub_1000952D4(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "animator not running: %s", v23, 0xCu);
      sub_100095808(v24);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

void sub_1000C69A0()
{
  v1 = v0;
  v2 = *(v0 + 72);
  OS_dispatch_semaphore.wait()();

  v3 = *(v1 + 144);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of RepeatingTimer.suspend()();

    v3 = *(v1 + 144);
  }

  *(v1 + 144) = 0;

  *(v1 + 170) = 1;
  swift_beginAccess();
  v5 = *(v1 + 80);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(v1 + 80) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v38 = *(v1 + 80);
  swift_bridgeObjectRetain_n();
  v13 = 0;
  while (v11)
  {
LABEL_13:
    v15 = (*(v38 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v17 = *v15;
    v16 = v15[1];
    swift_beginAccess();

    v18 = *(v1 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v1 + 80);
    *(v1 + 80) = 0x8000000000000000;
    v21 = sub_10016D4D0(v17, v16);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_1001E6D20(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_10016D4D0(v17, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_29;
      }

LABEL_18:
      if (v27)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v32 = v21;
    sub_1001EE880();
    v21 = v32;
    if (v27)
    {
LABEL_6:
      *(v20[7] + 8 * v21) = 0;
      goto LABEL_7;
    }

LABEL_19:
    v20[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v20[6] + 16 * v21);
    *v29 = v17;
    v29[1] = v16;
    *(v20[7] + 8 * v21) = 0;
    v30 = v20[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_28;
    }

    v20[2] = v31;

LABEL_7:
    v11 &= v11 - 1;
    *(v1 + 80) = v20;
    swift_endAccess();
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  v33 = *(v1 + 72);
  OS_dispatch_semaphore.signal()();

  v34 = *(v1 + 104);
  if (v34)
  {
    v35 = *(v1 + 112);
    v36 = *(v1 + 80);
    sub_1000C6F30(v34);

    v34(v37);
    sub_1000BAA84(v34);
  }
}

uint64_t sub_1000C6C7C()
{
  v1 = v0;
  v2 = *(v0 + 144);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of RepeatingTimer.suspend()();

    v2 = *(v1 + 144);
  }

  *(v1 + 144) = 0;

  sub_1000C6664();
  v4 = *(v1 + 32);

  v5 = *(v1 + 80);

  v6 = *(v1 + 88);

  v7 = *(v1 + 112);
  sub_1000BAA84(*(v1 + 104));
  v8 = *(v1 + 128);
  sub_1000BAA84(*(v1 + 120));

  v9 = OBJC_IVAR____TtC14dockaccessoryd16VelocityAnimator_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  return v1;
}

uint64_t sub_1000C6D5C()
{
  sub_1000C6C7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VelocityAnimator()
{
  result = qword_1002A73F8;
  if (!qword_1002A73F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C6E08()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000C6F30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000C6F40()
{
  result = qword_1002A7110;
  if (!qword_1002A7110)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7110);
  }

  return result;
}

unint64_t sub_1000C6F98()
{
  result = qword_1002A7120;
  if (!qword_1002A7120)
  {
    sub_10009589C(&unk_1002A6830, &unk_10023AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7120);
  }

  return result;
}

uint64_t sub_1000C6FFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C703C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C708C()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000C714C, 0, 0);
}

uint64_t sub_1000C714C()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(Strong + 32);
  v0[7] = v3;
  v4 = v3;

  if (!v3)
  {
    goto LABEL_17;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_17:
    v32 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    (*(*(v32 - 8) + 104))(v33, enum case for Errors.AccessoryServerNil(_:), v32);
    swift_willThrow();
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [v5 primaryAccessory];
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    sub_100095274(&unk_1002A73A0, &qword_10023C670);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10023C170;
    *(v10 + 56) = &type metadata for UInt32;
    *(v10 + 64) = &protocol witness table for UInt32;
    *(v10 + 32) = 568;
    String.init(format:_:)();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v9 UUIDWithString:v11];

    v13 = [v12 UUIDString];
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10023C170;
    *(v14 + 56) = &type metadata for UInt32;
    *(v14 + 64) = &protocol witness table for UInt32;
    *(v14 + 32) = 567;
    String.init(format:_:)();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v9 UUIDWithString:v15];

    v17 = [v16 UUIDString];
    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    v18 = [v8 characteristicOfType:v13 serviceType:{v17, 1, 2}];
    v0[8] = v18;

    if (v18)
    {
      (*(v0[5] + 16))(v0[6], v0[3] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v0[4]);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Reading supported diagnostics snapshot...", v21, 2u);
      }

      v23 = v0[5];
      v22 = v0[6];
      v25 = v0[3];
      v24 = v0[4];

      (*(v23 + 8))(v22, v24);
      v26 = swift_task_alloc();
      v0[9] = v26;
      v26[2] = v6;
      v26[3] = v18;
      v26[4] = v25;
      v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v28 = swift_task_alloc();
      v0[10] = v28;
      v29 = sub_100095274(&qword_1002A7918, &qword_10023C8A0);
      *v28 = v0;
      v28[1] = sub_1000C76DC;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x8000000100230680, sub_1000CADA0, v26, v29);
    }
  }

  v30 = type metadata accessor for Errors();
  sub_1000A5514();
  swift_allocError();
  *v31 = 0xD00000000000002DLL;
  v31[1] = 0x8000000100230650;
  (*(*(v30 - 8) + 104))(v31, enum case for Errors.NotFound(_:), v30);
  swift_willThrow();

LABEL_18:
  v34 = v0[6];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1000C76DC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1000C7874;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1000C77F8;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_1000C77F8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000C7874()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = *(v0 + 88);
  v4 = *(v0 + 48);

  v5 = *(v0 + 8);

  return v5();
}

void sub_1000C78F0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_100095274(&unk_1002A7920, &qword_10023C8A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10023BDA0;
  *(v13 + 32) = a3;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v14 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = *(a4 + 24);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, v12, v8);
  aBlock[4] = sub_1000CAE44;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_100276638;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  [a2 readCharacteristicValues:isa timeout:v20 completionQueue:v19 completionHandler:0.0];
  _Block_release(v19);
}

uint64_t sub_1000C7B40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
LABEL_3:
    sub_100095274(&unk_1002A7920, &qword_10023C8A8);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v3 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v4 = 0xD000000000000038;
    v4[1] = 0x80000001002306C0;
    (*(*(v3 - 8) + 104))(v4, enum case for Errors.CharacteristicReadWriteFailure(_:), v3);
    goto LABEL_3;
  }

  sub_100095274(&unk_1002A7920, &qword_10023C8A8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000C7C54(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v2;
  v6[1] = sub_1000C7D40;

  return sub_1000C708C();
}

uint64_t sub_1000C7D40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[10];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v4[12] = a1;
    v10 = swift_task_alloc();
    v4[13] = v10;
    *v10 = v6;
    v10[1] = sub_1000C7EC4;
    v11 = v4[7];

    return sub_1000C9BA4(a1);
  }
}

uint64_t sub_1000C7EC4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;

  if (v0)
  {
    v6 = *(v2 + 80);

    v7 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000C802C, 0, 0);
}

uint64_t sub_1000C802C()
{
  (*(v0[9] + 16))(v0[10], v0[7] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v0[8]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Initiating Diagnostics transfer...", v3, 2u);
  }

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000C817C;
  v8 = v0[6];
  v9 = v0[7];

  return sub_1000C87C8(v8);
}

uint64_t sub_1000C817C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[14];
  v9 = *v3;
  v5[15] = v2;

  if (v2)
  {
    v7 = sub_1000C8530;
  }

  else
  {
    v7 = sub_1000C8298;
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t sub_1000C8298()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v0[16] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1000C838C;

    return sub_100169B04();
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[10];
    *(v1 + 32) = 0;

    v8 = v0[1];

    return v8(v6, v5);
  }
}

uint64_t sub_1000C838C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return (_swift_task_switch)(sub_1000C84A4, 0, 0);
}

uint64_t sub_1000C84A4()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[10];
  *(v1 + 32) = 0;

  v6 = v0[1];

  return v6(v4, v3);
}

uint64_t sub_1000C8530()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v0[18] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_1000C862C;

    return sub_100169B04();
  }

  else
  {
    v5 = v0[15];
    *(v1 + 32) = 0;
    swift_willThrow();
    v6 = v0[15];
    v7 = v0[10];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000C862C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return (_swift_task_switch)(sub_1000C8744, 0, 0);
}

uint64_t sub_1000C8744()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v3 = v0[15];
  *(v1 + 32) = 0;

  swift_willThrow();
  v4 = v0[15];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000C87C8(uint64_t a1)
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
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000C88AC, 0, 0);
}

uint64_t sub_1000C88AC()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger;
  v0[10] = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v72 = v4;
  v6(v1, v4 + v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling Diagnostics transfer request", v9, 2u);
  }

  v10 = v0[9];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];

  v14 = *(v12 + 8);
  v0[13] = v14;
  v14(v10, v11);
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
    v34 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v35 = 0xD000000000000010;
    v35[1] = 0x8000000100230560;
    (*(*(v34 - 8) + 104))(v35, enum case for Errors.AccessoryServerNil(_:), v34);
    swift_willThrow();
LABEL_16:
    v44 = v0[8];
    v43 = v0[9];
    v46 = v0[6];
    v45 = v0[7];

    v47 = v0[1];

    return v47();
  }

  v16 = Strong;
  v17 = *(Strong + 32);
  if (!v17 || ([v17 isReachable] & 1) == 0)
  {
    v25 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v27 = v26;
    _StringGuts.grow(_:)(19);
    v28 = *(v16 + 24);
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = 0xD000000000000011;
    v33._object = 0x8000000100230580;
    String.append(_:)(v33);
    *v27 = v30;
    v27[1] = v32;
    (*(*(v25 - 8) + 104))(v27, enum case for Errors.AccessoryNotReachable(_:), v25);
LABEL_15:
    swift_willThrow();

    goto LABEL_16;
  }

  v18 = v0[3];
  result = sub_1000C9510(v0[2]);
  if ((result & 1) == 0)
  {
    v6(v0[8], v72 + v5, v0[4]);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Diagnostics transfer failed as the request is not supported.", v38, 2u);
    }

    v39 = v0[8];
    v40 = v0[4];
    v41 = v0[5];

    v14(v39, v40);
    v21 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v23 = v42;
    *v42 = 0xD00000000000003CLL;
    v42[1] = 0x80000001002305A0;
    v24 = &enum case for Errors.OperationNotSupported(_:);
    goto LABEL_14;
  }

  v20 = v0[3];
  if (v20[4])
  {
    v21 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v23 = v22;
    *v22 = 0xD00000000000001BLL;
    v22[1] = 0x8000000100230630;
    v24 = &enum case for Errors.OperationInProgress(_:);
LABEL_14:
    (*(*(v21 - 8) + 104))(v23, *v24, v21);
    goto LABEL_15;
  }

  v48 = v20[5];
  if (!v48)
  {
    __break(1u);
    return result;
  }

  v49 = v0[7];
  v71 = v0[4];
  v50 = v20[3];
  v51 = type metadata accessor for AccessoryDiagnosticsSession();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = v50;
  v55 = v48;

  v57 = sub_10016E1F8(v56, v54, v55);

  v58 = v20[4];
  v20[4] = v57;

  v6(v49, v72 + v5, v71);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Setting up a Diagnostics transfer session", v61, 2u);
  }

  v62 = v0[7];
  v63 = v0[4];
  v64 = v0[5];

  v14(v62, v63);
  v65 = v20[4];
  v0[15] = v65;
  if (!v65)
  {
    v21 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v23 = v70;
    *v70 = 0xD000000000000049;
    v70[1] = 0x80000001002305E0;
    v24 = &enum case for Errors.CommunicationFailure(_:);
    goto LABEL_14;
  }

  v66 = v65[17];
  v65[17] = v0[2];

  v67 = v65[19];
  v65[18] = 0;
  v65[19] = 0xE000000000000000;

  v68 = swift_task_alloc();
  v0[16] = v68;
  *v68 = v0;
  v68[1] = sub_1000C8FA4;
  v69 = v0[2];

  return sub_10016A660(v69);
}

uint64_t sub_1000C8FA4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1000C9204;
  }

  else
  {
    v3 = sub_1000C90B8;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000C90B8()
{
  v1 = *(v0 + 96);
  (*(v0 + 88))(*(v0 + 48), *(v0 + 24) + *(v0 + 80), *(v0 + 32));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Diagnostics transfer session was setup successfully", v4, 2u);
  }

  v5 = *(v0 + 104);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);

  v5(v6, v8);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_1000C929C;
  v10 = *(v0 + 24);

  return sub_1000CA210();
}

uint64_t sub_1000C9204()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[17];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000C929C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v9 = sub_1000C9478;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v9 = sub_1000C93D0;
  }

  return (_swift_task_switch)(v9, 0, 0);
}

uint64_t sub_1000C93D0()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];
  v9 = v0[20];
  v8 = v0[21];

  return v7(v8, v9);
}

uint64_t sub_1000C9478()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[19];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000C9510(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v57 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v57 - v13;
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = *(v1 + 40);
  if (!v17)
  {
    (*(v4 + 16))(&v57 - v15, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v3);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Diagnostic settings not configured yet", v33, 2u);
    }

    (*(v4 + 8))(v16, v3);
    return 0;
  }

  v18 = *(a1 + 24);
  v19 = v17;
  v20 = v19;
  if ((v18 & 1) != 0 || (v21 = [v19 options]) == 0)
  {
LABEL_12:
    if ((*(a1 + 40) & 1) == 0)
    {
      v34 = [v20 options];
      if (v34)
      {
        v35 = v34;
        if (([v34 value] & 1) == 0)
        {
          (*(v4 + 16))(v11, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v3);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = 138412290;
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v41 = *(Strong + 24);
              v58 = Strong;
              v42 = v41;

              v43 = v42;
            }

            else
            {
              v42 = 0;
              v43 = 0;
            }

            *(v38 + 4) = v42;
            *v39 = v43;
            _os_log_impl(&_mh_execute_header, v36, v37, "Delay requested, but not supported on the accessory %@", v38, 0xCu);
            sub_100095C84(v39, &unk_1002A6F60, &unk_10023C4E0);
          }

          (*(v4 + 8))(v11, v3);
          return 0;
        }
      }
    }

    v44 = [v20 type];
    if (!v44)
    {
LABEL_28:

      return 1;
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      v45 = *(a1 + 48);
      if (v45 == 1)
      {
        v46 = v44;
        if ([v44 value])
        {
          (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v3);

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *v51 = 138412290;
            v53 = swift_weakLoadStrong();
            if (v53)
            {
              v54 = *(v53 + 24);
              v58 = v53;
              v55 = v54;

              v56 = v55;
            }

            else
            {
              v55 = 0;
              v56 = 0;
            }

            *(v51 + 4) = v55;
            *v52 = v56;
            _os_log_impl(&_mh_execute_header, v49, v50, "Manufacturer snapshot requested, but not supported on the accessory %@", v51, 0xCu);
            sub_100095C84(v52, &unk_1002A6F60, &unk_10023C4E0);
          }

          (*(v4 + 8))(v8, v3);
          return 0;
        }

        v44 = v46;
        if (*(a1 + 56))
        {
          goto LABEL_27;
        }

        v45 = *(a1 + 48);
      }

      if (v45 == 2)
      {
        v47 = v44;
        [v44 value];

        goto LABEL_28;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v22 = v21;
  if (([v21 value] & 2) != 0)
  {

    goto LABEL_12;
  }

  (*(v4 + 16))(v14, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v3);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = swift_weakLoadStrong();
    if (v27)
    {
      v28 = *(v27 + 24);
      v58 = v27;
      v29 = v28;

      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v25 + 4) = v29;
    *v26 = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Custom max log size requested, but not supported on the accessory %@", v25, 0xCu);
    sub_100095C84(v26, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v4 + 8))(v14, v3);
  return 0;
}

uint64_t sub_1000C9BA4(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;

  return (_swift_task_switch)(sub_1000C9C34, 0, 0);
}

uint64_t sub_1000C9C34()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    goto LABEL_15;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = [v2 value];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  *(v0 + 16) = v28;
  *(v0 + 32) = v29;
  if (!*(v0 + 40))
  {
    sub_100095C84(v0 + 16, &qword_1002A9210, &unk_10023BE70);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v17 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v18 = 0xD000000000000025;
    v18[1] = 0x8000000100230530;
    (*(*(v17 - 8) + 104))(v18, enum case for Errors.CommunicationFailure(_:), v17);
    swift_willThrow();
LABEL_16:
    v19 = *(v0 + 8);
LABEL_17:

    return v19();
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  *(v0 + 88) = v5;
  *(v0 + 96) = v6;
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 64) = 0;
  v9 = [v7 parsedFromData:isa error:v0 + 64];
  *(v0 + 104) = v9;

  v10 = *(v0 + 64);
  if (!v9)
  {
    v21 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000A0D2C(v5, v6);
    goto LABEL_16;
  }

  v11 = *(v0 + 80);
  v12 = *(v11 + 40);
  if (v12)
  {
    sub_100095B94(0, &qword_1002A7910, &off_100271C80);
    v13 = v10;
    v14 = v9;
    v15 = v12;
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      sub_1000A0D2C(v5, v6);
LABEL_28:

      v19 = *(v0 + 8);
      goto LABEL_17;
    }

    v11 = *(v0 + 80);
  }

  else
  {
    v22 = v10;
  }

  v23 = *(v11 + 32);
  *(v0 + 112) = v23;
  if (!v23)
  {
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    v27 = *(v0 + 88);
    *(v11 + 32) = 0;
    sub_1000A0D2C(v27, v25);
    v14 = *(v11 + 40);
    *(v11 + 40) = v26;
    goto LABEL_28;
  }

  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_1000CA008;

  return sub_100169B04();
}

uint64_t sub_1000CA008()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return (_swift_task_switch)(sub_1000CA14C, 0, 0);
}

uint64_t sub_1000CA14C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v2 + 32);
  v4 = v0[12];
  v5 = v0[13];
  *(v2 + 32) = 0;

  sub_1000A0D2C(v1, v4);
  v6 = *(v2 + 40);
  *(v2 + 40) = v5;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000CA210()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000CA2D0, 0, 0);
}

uint64_t sub_1000CA2D0()
{
  v24 = v0;
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger, v0[6]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v0[4] = *(v5 + 32);
    sub_100095274(&qword_1002A7900, &qword_10023C888);
    v9 = Optional.debugDescription.getter();
    v11 = sub_1000952D4(v9, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Read Diagnostics data for session %s", v7, 0xCu);
    sub_100095808(v8);

    (*(v4 + 8))(v3, v6);
  }

  else
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0[5] + 32);
  v0[9] = v15;
  if (v15)
  {
    v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];

    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_1000CA61C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x746144646165725FLL, 0xEB00000000292861, sub_1000CACF0, v15, &type metadata for String);
  }

  else
  {
    v18 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v19 = 0xD00000000000001ALL;
    v19[1] = 0x8000000100230510;
    (*(*(v18 - 8) + 104))(v19, enum case for Errors.CommunicationFailure(_:), v18);
    swift_willThrow();
    v20 = v0[8];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1000CA61C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1000CA7B0;
  }

  else
  {
    v3 = sub_1000CA730;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000CA730()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[2];
  v4 = v0[3];

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_1000CA7B0()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000CA81C(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A7908, &unk_10023C890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10016B16C(sub_1000CAD0C, v8);
}

uint64_t sub_1000CA984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
LABEL_3:
    sub_100095274(&qword_1002A7908, &unk_10023C890);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a3)
  {
    v4 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v5 = 0x68746150206C696ELL;
    v5[1] = 0xE800000000000000;
    (*(*(v4 - 8) + 104))(v5, enum case for Errors.CommunicationFailure(_:), v4);
    goto LABEL_3;
  }

  sub_100095274(&qword_1002A7908, &unk_10023C890);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000CAA98()
{
  swift_weakDestroy();

  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDiagnosticsManager()
{
  result = qword_1002A7798;
  if (!qword_1002A7798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CABA8()
{
  result = type metadata accessor for Logger();
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

void *sub_1000CAC5C(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  v2[4] = 0;
  v2[5] = 0;
  Logger.init(subsystem:category:)();
  swift_weakAssign();
  v2[3] = a2;
  return v2;
}

uint64_t sub_1000CAD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_100095274(&qword_1002A7908, &unk_10023C890) - 8) + 80);

  return sub_1000CA984(a1, a2, a3);
}

uint64_t sub_1000CADC0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100095274(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000CAE44(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100095274(&unk_1002A7920, &qword_10023C8A8) - 8) + 80);

  return sub_1000C7B40(a1, a2);
}

uint64_t sub_1000CAED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_1000CAEE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v11 = sub_1000E34CC(v9, v10, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a5);
    sub_1000A0D2C(a3, a4);
    return v11;
  }

  if (v8 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001B1A44(v13, a3, a4, a5, &v14);
  v11 = v5;
  sub_1000A0D2C(a3, a4);
  if (!v5)
  {
    return v14;
  }

  return v11;
}

char *sub_1000CB080()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard] = 0;
  Logger.init(subsystem:category:)();
  v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager__performingGeneralScan] = 0;
  v9 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_cachePath;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&v0[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server;
  *&v0[v11] = [objc_allocWithZone(type metadata accessor for AccessoryServer()) init];
  v35 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue;
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_1000E4D0C(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v35;
  *&v0[v35] = v12;
  v14 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  *&v1[v14] = dispatch_semaphore_create(1);
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiThreshold] = -70;
  v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager;
  *&v1[v15] = [objc_allocWithZone(type metadata accessor for AccessoryFirmwareUpdateManager()) init];
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_disconnectTimeout] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_disconnectCheckRate] = 0x3FC999999999999ALL;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_disconnectTimer] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing] = 0;
  v16 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v17 = swift_allocObject();
  *&v1[v16] = v17;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_discoverDockTimeout] = 0x4008000000000000;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_discoverDockInterval] = 0x3FC999999999999ALL;
  v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
  *(v17 + 16) = 0;
  v18 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
  v19 = enum case for DockStatus.Undocked(_:);
  v20 = type metadata accessor for DockStatus();
  (*(*(v20 - 8) + 104))(&v1[v18], v19, v20);
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingSetup] = 0;
  v21 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockSetupIdMap;
  *&v1[v21] = sub_1001F27B8(_swiftEmptyArrayStorage);
  v22 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn;
  type metadata accessor for RSSITransaction();
  v23 = swift_allocObject();
  v23[2] = &_swiftEmptySetSingleton;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  *&v1[v22] = v23;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_haptics] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimeout] = 0x4014000000000000;
  v24 = *&v1[v13];
  v25 = objc_allocWithZone(type metadata accessor for DockDetector(0));
  *&v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector] = DockDetector.init(workQueue:)(v24);
  v26 = type metadata accessor for AccessoryManager();
  v39.receiver = v1;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, "init");
  v28 = swift_allocObject();
  v28[2] = &_swiftEmptySetSingleton;
  v28[3] = 0;
  v28[4] = v27;
  v28[5] = &off_100276660;
  v29 = *&v27[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn];
  *&v27[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn] = v28;
  v30 = v27;

  v31 = *&v30[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];

  v32 = *&v31[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
  *&v31[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager] = v27;

  return v30;
}

void sub_1000CB678(uint64_t a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v6 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v7 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();

  v8 = 0;
  v9 = sub_1000E3590((v3 + v7), a1);

  v10 = *(*(v3 + v7) + 16);
  if (v10 < v9)
  {
    __break(1u);
  }

  else
  {
    sub_1001A1844(v9, v10);
    v8 = type metadata accessor for DaemonAccessory();
    v2 = &off_10027A0F0;
    v24[3] = v8;
    v24[4] = &off_10027A0F0;
    v24[0] = a1;
    v9 = *(v3 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v7) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_1001026FC(0, v9[2] + 1, 1, v9);
  *(v3 + v7) = v9;
LABEL_3:
  v13 = v9[2];
  v12 = v9[3];
  if (v13 >= v12 >> 1)
  {
    v9 = sub_1001026FC((v12 > 1), v13 + 1, 1, v9);
    *(v3 + v7) = v9;
  }

  v14 = sub_1000E4984(v24, v8);
  v15 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v22 = v8;
  v23 = v2;
  *&v21 = v19;
  v9[2] = v13 + 1;
  sub_1000A0D80(&v21, &v9[5 * v13 + 4]);
  sub_100095808(v24);
  *(v3 + v7) = v9;
  swift_endAccess();
  v20 = *(v3 + v5);
  OS_dispatch_semaphore.signal()();
}

void sub_1000CB8B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v39 = &v33 - v12;
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  if (!a1)
  {
    goto LABEL_12;
  }

  v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v16 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  v40 = a1;
  v17 = v16;
  OS_dispatch_semaphore.wait()();

  v18 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v19 = *(v3 + v18);
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_11:
    v31 = *(v3 + v15);
    OS_dispatch_semaphore.signal()();

LABEL_12:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v34 = v15;
  v35 = v3;
  v21 = v19 + 32;
  v36 = a2;
  v37 = (v7 + 32);
  v22 = (v7 + 8);

  v23 = 0;
  while (v23 < *(v19 + 16))
  {
    sub_1000A097C(v21, v41);
    v24 = *(*sub_1000A09E0(v41, v41[3]) + 16);
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
      if (v25)
      {
        v26 = [v25 identifier];
        v27 = v39;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v37)(v14, v27, v6);
        v28 = [v40 identifier];
        v29 = v38;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v28) = static UUID.== infix(_:_:)();
        v30 = *v22;
        (*v22)(v29, v6);
        if (v28)
        {

          v32 = *(v35 + v34);
          OS_dispatch_semaphore.signal()();

          v30(v14, v6);
          sub_1000A097C(v41, v36);
          sub_100095808(v41);
          return;
        }

        v30(v14, v6);
      }
    }

    ++v23;
    sub_100095808(v41);
    v21 += 40;
    if (v20 == v23)
    {

      v3 = v35;
      a2 = v36;
      v15 = v34;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000CBBDC@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v60 = type metadata accessor for Logger();
  v59 = *(v60 - 8);
  v2 = *(v59 + 64);
  __chkstk_darwin(v60);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for URL.DirectoryHint();
  v63 = *(v64 - 1);
  v4 = *(v63 + 64);
  __chkstk_darwin(v64);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v65 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v57 - v15;
  __chkstk_darwin(v14);
  v18 = &v57 - v17;
  v19 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_cachePath;
  swift_beginAccess();
  sub_1000E48A4(v1 + v19, v18);
  v66 = v7;
  v20 = *(v7 + 48);
  v21 = v6;
  LODWORD(v6) = v20(v18, 1, v6);
  sub_100095C84(v18, &qword_1002A6B70, &unk_10023C9C0);
  v22 = v67;
  if (v6 != 1)
  {
    return sub_1000E48A4(v1 + v19, v22);
  }

  v23 = v1;
  v24 = [objc_opt_self() defaultManager];
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  sub_1001520A0(v16);
  v25 = v21;
  if (v20(v16, 1, v21) == 1)
  {

    sub_100095C84(v16, &qword_1002A6B70, &unk_10023C9C0);
    return (*(v66 + 56))(v67, 1, 1, v21);
  }

  v27 = v66;
  v28 = v65;
  (*(v66 + 32))(v65, v16, v25);
  v69[0] = 1701606498;
  v69[1] = 0xE400000000000000;
  v29 = v63;
  v30 = v62;
  v31 = v64;
  (*(v63 + 104))(v62, enum case for URL.DirectoryHint.isDirectory(_:), v64);
  sub_1000E3C10();
  URL.append<A>(component:directoryHint:)();
  (*(v29 + 8))(v30, v31);
  v68 = 0;
  URL.path(percentEncoded:)(1);
  v32 = String._bridgeToObjectiveC()();

  LOBYTE(v31) = [v24 fileExistsAtPath:v32 isDirectory:&v68];

  v33 = v23;
  if (v31)
  {
LABEL_9:

    v43 = v61;
    (*(v27 + 16))(v61, v28, v25);
    (*(v27 + 56))(v43, 0, 1, v25);
    swift_beginAccess();
    sub_1000E4914(v43, v33 + v19);
    swift_endAccess();
    (*(v27 + 8))(v28, v25);
    v22 = v67;
    v1 = v33;
    return sub_1000E48A4(v1 + v19, v22);
  }

  sub_100095274(&qword_1002A7B20, &unk_10023E940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 448;
  v35 = NSFilePosixPermissions;
  v36 = sub_1001F237C(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  sub_1001DAF74(v36);

  type metadata accessor for FileAttributeKey(0);
  sub_1000E4D0C(&qword_1002A6D80, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v69[0] = 0;
  v41 = [v24 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:isa error:v69];

  if (v41)
  {
    v42 = v69[0];
    goto LABEL_9;
  }

  v64 = v24;
  v44 = v69[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v45 = v59;
  v46 = v33 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
  v47 = v58;
  v48 = v60;
  (*(v59 + 16))(v58, v46, v60);
  swift_errorRetain();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v51 = 136315394;
    swift_beginAccess();
    v52 = URL.path(percentEncoded:)(1);
    v53 = sub_1000952D4(v52._countAndFlagsBits, v52._object, &v70);

    *(v51 + 4) = v53;
    *(v51 + 12) = 2080;
    swift_getErrorValue();
    v54 = Error.localizedDescription.getter();
    v56 = sub_1000952D4(v54, v55, &v70);

    *(v51 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "Unable to create file storage directory %s: %s", v51, 0x16u);
    swift_arrayDestroy();
    v28 = v65;

    v27 = v66;

    (*(v45 + 8))(v47, v60);
  }

  else
  {

    (*(v45 + 8))(v47, v48);
  }

  (*(v27 + 56))(v67, 1, 1, v25);
  return (*(v27 + 8))(v28, v25);
}

uint64_t sub_1000CC4F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v12);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Re-pairing accessory...", v19, 2u);
  }

  (*(v13 + 8))(v16, v12);
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 0;
  v20 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v2;
  aBlock[4] = sub_1000E489C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276EF0;
  v22 = _Block_copy(aBlock);
  v23 = v20;

  v24 = v2;
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  v25 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v30 + 8))(v7, v25);
  (*(v28 + 8))(v11, v29);
}

void sub_1000CC914(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) && *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24) != 2)
  {
    v2 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
    v3 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock);

    os_unfair_lock_lock(v3 + 4);

    v6 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing);
    *(a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing) = a1;

    v7 = *(a2 + v2);

    os_unfair_lock_unlock(v7 + 4);

    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = v8;
      sub_10013E7E0(0, 0);
    }
  }
}

void sub_1000CCA20(objc_class *a1, uint64_t a2, Class a3, uint64_t a4, objc_class *a5, uint64_t a6, unint64_t a7)
{
  v245 = a5;
  v244 = a4;
  v10 = *(a3 + 1);
  v238 = *a3;
  v239 = v10;
  v11 = *(a3 + 3);
  v240 = *(a3 + 2);
  v241 = v11;
  v12 = *(a3 + 5);
  v242 = *(a3 + 4);
  v243 = v12;
  v247 = a3;
  v13 = *(a3 + 6);
  v234 = type metadata accessor for DispatchWorkItemFlags();
  v233 = *(v234 - 8);
  v14 = *(v233 + 64);
  __chkstk_darwin(v234);
  v231 = &v211 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for DispatchQoS();
  v230 = *(v232 - 8);
  v16 = *(v230 + 64);
  __chkstk_darwin(v232);
  v229 = &v211 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for Logger();
  v18 = *(v248 - 1);
  v19 = v18[8];
  v20 = __chkstk_darwin(v248);
  v237 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v228 = &v211 - v23;
  __chkstk_darwin(v22);
  v25 = &v211 - v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v236 = (&v211 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __chkstk_darwin(v29);
  v33 = &v211 - v32;
  __chkstk_darwin(v31);
  v35 = &v211 - v34;
  v246 = a1;
  v36 = sub_1000F9498(a6, a7);
  if (!v36)
  {
    return;
  }

  v249 = v36;

  v37 = sub_100140998(a6, a7);
  if (v38 >> 60 == 15)
  {
    v39 = v249;

    return;
  }

  v40 = v37;
  v235 = v35;
  v41 = v38;
  sub_1001404A0(v37, v38, v33);
  sub_1000A452C(v40, v41);
  (*(v27 + 32))(v235, v33, v26);
  v42 = v18[2];
  v223 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
  v43 = v248;
  v225 = v18 + 2;
  v224 = v42;
  v42(v25, (v250 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger), v248);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = os_log_type_enabled(v44, v45);
  v227 = v27;
  v222 = v13;
  v221 = v18;
  if (v46)
  {
    v47 = v43;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&aBlock = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_1000952D4(a6, a7, &aBlock);
    _os_log_impl(&_mh_execute_header, v44, v45, "Discovered pairable accessory with identifier %s.", v48, 0xCu);
    sub_100095808(v49);

    v52 = v18[1];
    v51 = (v18 + 1);
    v50 = v52;
    v53 = v25;
    v54 = v47;
  }

  else
  {

    v55 = v18[1];
    v51 = (v18 + 1);
    v50 = v55;
    v53 = v25;
    v54 = v43;
  }

  v220 = v50;
  v50(v53, v54);
  v56 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v57 = v250;
  v58 = *(v250 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v59 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v60 = *&v57[v59];
  v61 = *(v60 + 16);
  v62 = &selRef__sendControlPacket_forRequest_completionHandler_;
  v226 = v26;
  if (!v61)
  {
LABEL_23:
    v51 = v250;
    v74 = *&v56[v250];
    OS_dispatch_semaphore.signal()();

    v253 = 0;
    aBlock = 0u;
    v252 = 0u;
    v75 = v227;
LABEL_24:
    sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
    goto LABEL_25;
  }

  v219 = v56;
  v63 = v60 + 32;

  v65 = 0;
  while (1)
  {
    if (v65 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_1000A097C(v63, v255);
    v66 = *(*sub_1000A09E0(v255, v255[3]) + 32);
    if (v66)
    {
      break;
    }

LABEL_12:
    ++v65;
    v64 = sub_100095808(v255);
    v63 += 40;
    if (v61 == v65)
    {

      v26 = v226;
      v56 = v219;
      goto LABEL_23;
    }
  }

  v67 = v66;
  v68 = [v67 v62[446]];
  if (!v68)
  {
LABEL_11:

    goto LABEL_12;
  }

  v69 = v68;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  if (v51 != a6 || v71 != a7)
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v62 = &selRef__sendControlPacket_forRequest_completionHandler_;
    if (v73)
    {
      goto LABEL_39;
    }

    goto LABEL_11;
  }

LABEL_39:

  v51 = v250;
  v145 = *&v219[v250];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v255, &aBlock);
  sub_100095808(v255);
  v26 = v226;
  v75 = v227;
  v146 = v246;
  if (!*(&v252 + 1))
  {
    goto LABEL_24;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if (swift_dynamicCast())
  {
    v147 = v255[0];
    v148 = v228;
    v149 = v248;
    v224(v228, &v51[v223], v248);
    v150 = v249;
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.default.getter();

    v153 = os_log_type_enabled(v151, v152);
    v237 = v147;
    if (v153)
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&aBlock = v155;
      *v154 = 136315138;
      v156 = [(objc_class *)v150 identifier];
      v249 = v150;
      v157 = v156;
      v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v160 = v159;

      v161 = sub_1000952D4(v158, v160, &aBlock);

      *(v154 + 4) = v161;
      _os_log_impl(&_mh_execute_header, v151, v152, "Updating existing accessory %s.", v154, 0xCu);
      sub_100095808(v155);

      v147 = v237;

      v162 = v149;
      v163 = v249;
      v220(v148, v162);
    }

    else
    {

      v220(v148, v149);
      v163 = v150;
    }

    v164 = *(v147 + 16);
    *(v147 + 16) = v146;
    v165 = v146;

    v166 = (v147 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
    v167 = *(v147 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
    v168 = *(v147 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 8);
    v169 = v166[2];
    v170 = v166[3];
    v171 = v166[4];
    v172 = v166[5];
    v173 = v166[6];
    v174 = v239;
    *v166 = v238;
    v166[1] = v174;
    v175 = v241;
    v166[2] = v240;
    v166[3] = v175;
    v176 = v243;
    v166[4] = v242;
    v166[5] = v176;
    v166[6] = v222;
    sub_1000E3C64(v247, &aBlock);
    sub_1000E47B8(v167, v168, v169, v170, v171, v172);
    v243 = sub_10013EE04();
    v242 = v177;
    sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v179 = [(objc_class *)v163 identifier];
    v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v181 = v163;
    v183 = v182;

    v184 = v250;
    sub_1000D9F2C(v180, v183);

    v185 = [(objc_class *)v181 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v247 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v248 = isa;
    v246 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v249 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v186 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
    v241 = objc_allocWithZone(_HAPAccessoryServerBTLE200);
    v187 = v181;
    v188 = v186;
    v239 = v188;
    v189 = v184;
    v190 = v244;
    v191 = v245;
    sub_1000A0CD8(v244, v245);
    v192 = String._bridgeToObjectiveC()();
    v240 = v192;

    v193 = String._bridgeToObjectiveC()();
    v243 = v193;

    v194 = Data._bridgeToObjectiveC()().super.isa;
    v195 = String._bridgeToObjectiveC()();
    v210 = v188;
    LOBYTE(v209) = 0;
    v196 = v249;
    v197 = v246;
    LOBYTE(v208) = 7;
    v198 = v192;
    v199 = v193;
    v200 = v247;
    v201 = v248;
    v250 = [v241 initWithPeripheral:v187 name:v198 pairingUsername:v199 statusFlags:v247 stateNumber:v248 enhancedEncryption:1 connectReason:v208 configNumber:v246 category:v249 setupHash:v194 connectionIdleTime:v209 browser:v189 keyStore:v210 whbStableIdentifier:v195];

    sub_1000A0D2C(v190, v191);
    v202 = *&v189[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
    v203 = *(v202 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
    v204 = v250;
    [v204 setDelegate:v202 queue:v203];

    v205 = v237;
    v206 = *(v237 + 4);
    *(v237 + 4) = v204;

    sub_1000CC4F8(v205);

LABEL_35:
    (*(v227 + 8))(v235, v226);
    return;
  }

LABEL_25:
  v76 = *v247;
  sub_10013EE04();
  (*(v75 + 16))(v236, v235, v26);
  v77 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
  v64 = DockCoreInfo.init(type:name:identifier:)();
  if (qword_1002A6780 != -1)
  {
LABEL_48:
    v207 = v64;
    swift_once();
    v64 = v207;
  }

  v78 = qword_1002B1CF0;
  v211 = v64;
  v79 = sub_1001884E4();
  v219 = sub_10013EE04();
  v215 = v80;
  v212 = v79;
  if (v79)
  {
    v81 = 7;
  }

  else
  {
    v81 = 6;
  }

  LODWORD(v228) = v81;
  sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
  v82 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v83 = [(objc_class *)v249 identifier];
  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  sub_1000D9F2C(v84, v86);

  v87 = [(objc_class *)v249 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v216 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v218 = v82;
  v217 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v236 = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v88 = *(v78 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  v214 = objc_allocWithZone(_HAPAccessoryServerBTLE200);
  v89 = v249;
  v90 = v51;
  v91 = v244;
  v92 = v245;
  sub_1000A0CD8(v244, v245);
  v93 = v88;
  v94 = String._bridgeToObjectiveC()();
  v213 = v94;

  v95 = String._bridgeToObjectiveC()();
  v219 = v95;

  v96 = Data._bridgeToObjectiveC()().super.isa;
  v97 = String._bridgeToObjectiveC()();
  LOBYTE(v209) = 0;
  v98 = v217;
  LOBYTE(v208) = v228;
  v99 = v94;
  v100 = v95;
  v101 = v216;
  v102 = v218;
  v249 = [v214 initWithPeripheral:v89 name:v99 pairingUsername:v100 statusFlags:v216 stateNumber:v218 enhancedEncryption:1 connectReason:v208 configNumber:v217 category:v236 setupHash:v96 connectionIdleTime:v209 browser:v90 keyStore:v93 whbStableIdentifier:v97];

  sub_1000A0D2C(v91, v92);
  v245 = v89;

  v244 = v90;
  v103 = *&v90[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
  v104 = *(v103 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
  v105 = v249;
  [(objc_class *)v105 setDelegate:v103 queue:v104];

  v106 = v237;
  v107 = v248;
  v224(v237, (v250 + v223), v248);
  v108 = v105;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *&aBlock = v112;
    *v111 = 136315138;
    v113 = [(objc_class *)v108 identifier];

    if (!v113)
    {
      __break(1u);
      return;
    }

    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    v117 = sub_1000952D4(v114, v116, &aBlock);

    *(v111 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v109, v110, "Creating new accessory %s.", v111, 0xCu);
    sub_100095808(v112);
  }

  else
  {
  }

  v220(v106, v107);
  v118 = type metadata accessor for DaemonAccessory();
  v119 = *(v118 + 48);
  v120 = *(v118 + 52);
  swift_allocObject();
  v121 = v246;
  v122 = v246;
  v250 = v211;
  v123 = sub_1001AD95C(v121, v250, v108);

  v124 = (v123 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
  v125 = *(v123 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
  v126 = *(v123 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 8);
  v127 = *(v123 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 16);
  v128 = *(v123 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24);
  v129 = *(v123 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 32);
  v130 = *(v123 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 40);
  v131 = *(v123 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 48);
  v132 = v239;
  *v124 = v238;
  v124[1] = v132;
  v133 = v241;
  v124[2] = v240;
  v124[3] = v133;
  v134 = v243;
  v124[4] = v242;
  v124[5] = v134;
  v124[6] = v222;
  sub_1000E3C64(v247, &aBlock);
  sub_1000E47B8(v125, v126, v127, v128, v129, v130);
  v135 = v212;
  if (v212)
  {
    sub_1000CB678(v123);
    sub_1000CC4F8(v123);

    goto LABEL_35;
  }

  v136 = v244;
  v137 = *&v244[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
  v138 = swift_allocObject();
  *(v138 + 16) = v136;
  *(v138 + 24) = v123;
  v253 = sub_1000E4854;
  v254 = v138;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v252 = sub_100147FC8;
  *(&v252 + 1) = &unk_100276EA0;
  v139 = _Block_copy(&aBlock);
  v140 = v136;
  v141 = v137;

  v142 = v229;
  static DispatchQoS.unspecified.getter();
  v255[0] = &_swiftEmptyArrayStorage;
  sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  v143 = v231;
  v144 = v234;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v139);

  (*(v233 + 8))(v143, v144);
  (*(v230 + 8))(v142, v232);
  (*(v227 + 8))(v235, v226);
}

void sub_1000CDFA4(uint64_t a1, uint64_t a2)
{
  sub_1000CB678(a2);
  if (!*(a2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) && *(a2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24) != 2)
  {
    v4 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
    v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock);

    os_unfair_lock_lock(v5 + 4);

    v6 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing);
    *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing) = a2;

    v7 = *(a1 + v4);

    os_unfair_lock_unlock(v7 + 4);

    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = v8;
      sub_10013E7E0(0, 0);
    }
  }
}

uint64_t sub_1000CE0B8(void *a1)
{
  v2 = v1;
  v96 = type metadata accessor for DispatchWorkItemFlags();
  v95 = *(v96 - 8);
  v4 = *(v95 + 64);
  __chkstk_darwin(v96);
  v93 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchQoS();
  v92 = *(v94 - 8);
  v6 = *(v92 + 64);
  __chkstk_darwin(v94);
  v91 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v97 = *(v8 - 8);
  v9 = *(v97 + 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v85 - v13;
  v101 = a1;
  DockCoreInfo.identifier.getter();
  v98 = sub_1001408A0(v14);
  v99 = v15;
  if (qword_1002A6780 != -1)
  {
LABEL_29:
    swift_once();
  }

  v16 = qword_1002B1CF0;
  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v18 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v18 + 4);

  v19 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v20 = *(v16 + v17);
  v21 = v16;
  v22 = v19;

  os_unfair_lock_unlock(v20 + 4);

  if (v19)
  {
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v23 = v22;
    v24 = dispatch thunk of DockCoreAccessory.info.getter();
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
      v90 = v23;
      v26 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
      *&aBlock = 0;
      v27 = [v26 getLocalPairingIdentity:&aBlock];
      if (!v27)
      {
        v59 = aBlock;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v56 = v98;
        v57 = v99;
        return sub_1000A0D2C(v56, v57);
      }

      v87 = v27;
      v89 = v16;
      v86 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v28 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      v29 = aBlock;
      v30 = v28;
      OS_dispatch_semaphore.wait()();

      v31 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v88 = v2;
      v32 = *&v2[v31];
      v33 = *(v32 + 16);

      v100 = v33;
      if (v33)
      {
        v2 = 0;
        v34 = v32 + 32;
        v35 = (v97 + 8);
        while (1)
        {
          if (v2 >= *(v32 + 16))
          {
            __break(1u);
            goto LABEL_29;
          }

          sub_1000A097C(v34, v106);
          v36 = *(*sub_1000A09E0(v106, v106[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v36) = static UUID.== infix(_:_:)();
          v37 = *v35;
          (*v35)(v12, v8);
          v37(v14, v8);
          if (v36)
          {
            break;
          }

          ++v2;
          sub_100095808(v106);
          v34 += 40;
          if (v100 == v2)
          {
            goto LABEL_10;
          }
        }

        v2 = v88;
        v60 = *&v88[v86];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v106, &aBlock);
        sub_100095808(v106);
        if (!*(&v103 + 1))
        {
          goto LABEL_11;
        }

        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        v61 = swift_dynamicCast();
        v21 = v89;
        v62 = v90;
        if ((v61 & 1) == 0)
        {

          goto LABEL_14;
        }

        v63 = v106[0];
        v64 = *(v106[0] + 32);
        if (v64 && (objc_opt_self(), (v65 = swift_dynamicCastObjCClass()) != 0))
        {
          v66 = v65;
          v67 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
          v68 = swift_allocObject();
          v69 = v101;
          v68[2] = v2;
          v68[3] = v69;
          v68[4] = v63;
          v104 = sub_1000E47AC;
          v105 = v68;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v103 = sub_10015C1F8;
          *(&v103 + 1) = &unk_100276E00;
          v70 = _Block_copy(&aBlock);
          v100 = v64;
          v71 = v87;
          v72 = v67;
          v73 = v2;
          v74 = v69;

          [v66 removePairing:v71 completionQueue:v72 completionHandler:v70];

          _Block_release(v70);
        }

        else
        {
          v75 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
          v76 = swift_allocObject();
          v77 = v101;
          v76[2] = v2;
          v76[3] = v77;
          v76[4] = v63;
          v104 = sub_1000E4758;
          v105 = v76;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v103 = sub_100147FC8;
          *(&v103 + 1) = &unk_100276DB0;
          v100 = _Block_copy(&aBlock);
          v78 = v2;
          v79 = v77;

          v97 = v75;
          v80 = v91;
          static DispatchQoS.unspecified.getter();
          v106[0] = &_swiftEmptyArrayStorage;
          sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
          sub_100095274(&unk_1002A6B60, qword_10023AE10);
          sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
          v81 = v93;
          v82 = v96;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v83 = v100;
          v84 = v97;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v83);

          (*(v95 + 8))(v81, v82);
          (*(v92 + 8))(v80, v94);
        }
      }

      else
      {
LABEL_10:

        v2 = v88;
        v38 = *&v88[v86];
        OS_dispatch_semaphore.signal()();

        v104 = 0;
        aBlock = 0u;
        v103 = 0u;
LABEL_11:

        sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
      }

      v21 = v89;
    }

    else
    {
    }
  }

LABEL_14:
  v39 = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  v41 = v98;
  v40 = v99;
  sub_10014025C(v98, v99);
  v42 = String._bridgeToObjectiveC()();

  *&aBlock = 0;
  v43 = [v39 removeAccessoryKeyForName:v42 error:&aBlock];

  if (v43)
  {
    v44 = aBlock;
  }

  else
  {
    v45 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v46 = v101;
  sub_100188738(v101);
  v47 = sub_10014025C(v41, v40);
  sub_1000D9F2C(v47, v48);

  v49 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v50 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v51 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v52 = v46;
  v53 = sub_1000E315C(&v2[v51], v52);

  v54 = *(*&v2[v51] + 16);
  if (v54 < v53)
  {
    __break(1u);
  }

  sub_1001A1844(v53, v54);
  swift_endAccess();
  v55 = *&v2[v49];
  OS_dispatch_semaphore.signal()();

  v56 = v41;
  v57 = v40;
  return sub_1000A0D2C(v56, v57);
}

void sub_1000CEB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000DE17C(a3);
  v5 = *(a4 + 16);
  if (v5 && *&v5[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
  {
    v6 = qword_1002A67A0;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = qword_1002B1EB8;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v5;
    v11 = v7;
    v10 = v8;
    sub_1001D5444(sub_1000E4DF8, v9);
  }
}

void sub_1000CEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000DE17C(a2);
  v4 = *(a3 + 16);
  if (v4 && *&v4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
  {
    v5 = qword_1002A67A0;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_1002B1EB8;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    v10 = v6;
    v9 = v7;
    sub_1001D5444(sub_1000E4DF8, v8);
  }
}

uint64_t sub_1000CED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1000E4728;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276D60;
  v17 = _Block_copy(aBlock);

  v18 = v15;
  v19 = v3;
  sub_1000C6F30(a2);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);
}

uint64_t sub_1000CF088(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v215 = a5;
  v208 = a4;
  v214 = type metadata accessor for DispatchWorkItemFlags();
  v213 = *(v214 - 8);
  v8 = *(v213 + 64);
  __chkstk_darwin(v214);
  v210 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for DispatchQoS();
  v211 = *(v212 - 8);
  v10 = *(v211 + 64);
  __chkstk_darwin(v212);
  v209 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for Logger();
  v224 = *(v223 - 8);
  v12 = *(v224 + 64);
  v13 = __chkstk_darwin(v223);
  v219 = (&v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v17 = &v202 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v202 - v19;
  v21 = __chkstk_darwin(v18);
  v216 = &v202 - v22;
  v23 = __chkstk_darwin(v21);
  v207 = &v202 - v24;
  __chkstk_darwin(v23);
  v26 = (&v202 - v25);
  v206 = type metadata accessor for UUID();
  v205 = *(v206 - 8);
  v27 = v205[8];
  __chkstk_darwin(v206);
  v29 = &v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = a3;
  DockCoreInfo.identifier.getter();
  v30 = sub_1001408A0(v29);
  v32 = v31;
  v33 = sub_10014025C(v30, v31);
  v217 = a1;
  v35 = sub_1000F9498(v33, v34);
  v221 = v35;

  if (v35)
  {
    v220 = v30;
    v222 = v32;
    v36 = *(a2 + 20);
    v37 = v36 | (*(a2 + 24) << 32);
    if (v36 == 2)
    {
      v38 = v224;
      v39 = v223;
      (*(v224 + 16))(v17, v225 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v223);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v220;
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unable to parse Pairing Refresh Number!", v44, 2u);

        sub_1000A0D2C(v43, v222);
      }

      else
      {
        sub_1000A0D2C(v220, v222);
      }

      (*(v38 + 8))(v17, v39);
      return 0;
    }

    v45 = v220;
    if (qword_1002A6780 != -1)
    {
LABEL_61:
      swift_once();
    }

    v204 = qword_1002B1CF0;
    v203 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore;
    v46 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
    v47 = sub_10014025C(v45, v222);
    v49 = sub_1001762B8(v47, v48, 1);
    v50 = v49;
    if (v49 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        if ((v50 & 0xC000000000000001) != 0)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_70:
            swift_once();
LABEL_38:
            sub_1000E4E98();
            sub_1000A0D2C(v45, v222);

            return 0;
          }

          v51 = *(v50 + 32);
        }

        v52 = HIDWORD(v37);

        v53 = *(v51 + 128);

        if (v53 > v52 && (v53 - v52) < 0x19u)
        {
          v20 = sub_10014025C(v45, v222);
          v55 = v54;
          v26 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v37 = v225;
          v56 = *(v225 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
          OS_dispatch_semaphore.wait()();

          v57 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v219 = *(v37 + v57);
          v58 = *(v219 + 2);
          v59 = &selRef__sendControlPacket_forRequest_completionHandler_;
          if (v58)
          {
            v206 = v26;
            v60 = v219 + 32;

            v45 = 0;
            while (1)
            {
              if (v45 >= *(v219 + 2))
              {
                __break(1u);
                goto LABEL_61;
              }

              sub_1000A097C(v60, v230);
              v61 = *(*sub_1000A09E0(v230, v230[3]) + 32);
              if (v61)
              {
                v62 = v61;
                v63 = [v62 v59[446]];
                if (v63)
                {
                  v26 = v59;
                  v64 = v63;
                  v65 = v20;
                  v66 = v55;
                  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v69 = v68;

                  v70 = v67;
                  v55 = v66;
                  if (v70 == v65 && v69 == v66)
                  {

                    v59 = v26;
LABEL_40:
                    v83 = *(v225 + v206);
                    OS_dispatch_semaphore.signal()();

                    sub_1000A097C(v230, &aBlock);
                    sub_100095808(v230);

                    v45 = v220;
                    if (*(&v227 + 1))
                    {
                      goto LABEL_34;
                    }

LABEL_41:
                    sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
                    goto LABEL_42;
                  }

                  v20 = v65;
                  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v59 = v26;
                  if (v37)
                  {

                    goto LABEL_40;
                  }
                }
              }

              ++v45;
              sub_100095808(v230);
              v60 += 40;
              if (v58 == v45)
              {

                v45 = v220;
                v26 = v206;
                break;
              }
            }
          }

          v76 = *(v26 + v225);
          OS_dispatch_semaphore.signal()();

          v228 = 0;
          aBlock = 0u;
          v227 = 0u;

          if (!*(&v227 + 1))
          {
            goto LABEL_41;
          }

LABEL_34:
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory();
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_42:
            sub_10013EE04();
            sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
            isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
            v85 = v221;
            v86 = [v221 v59[446]];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v219 = NSNumber.init(integerLiteral:)(1).super.super.isa;
            v207 = isa;
            v206 = NSNumber.init(integerLiteral:)(1).super.super.isa;
            v87 = NSNumber.init(integerLiteral:)(1).super.super.isa;
            v88 = *&v203[v204];
            v89 = objc_allocWithZone(_HAPAccessoryServerBTLE200);
            v90 = v85;
            v91 = v225;
            v92 = v88;
            v221 = v92;
            v93 = String._bridgeToObjectiveC()();

            v94 = String._bridgeToObjectiveC()();

            v95 = Data._bridgeToObjectiveC()().super.isa;
            v96 = String._bridgeToObjectiveC()();
            v200 = v92;
            LOBYTE(v199) = 0;
            v197 = v87;
            v97 = v87;
            v98 = v206;
            LOBYTE(v196) = 8;
            v99 = v89;
            v100 = v219;
            v101 = v207;
            v205 = [v99 initWithPeripheral:v90 name:v93 pairingUsername:v94 statusFlags:v219 stateNumber:v207 enhancedEncryption:1 connectReason:v196 configNumber:v206 category:v197 setupHash:v95 connectionIdleTime:v199 browser:v91 keyStore:v200 whbStableIdentifier:v96];
            v225 = v90;

            v102 = v91;
            v103 = *&v91[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
            v104 = *(v103 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
            v105 = v205;
            [v105 setDelegate:v103 queue:v104];

            v106 = v224;
            v107 = v216;
            v108 = v223;
            (*(v224 + 16))(v216, &v91[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v223);
            v109 = v220;
            v110 = v222;
            sub_1000A0CD8(v220, v222);
            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.default.getter();
            sub_1000A0D2C(v109, v110);
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              v114 = swift_slowAlloc();
              *&aBlock = v114;
              *v113 = 136315138;
              v115 = sub_10014025C(v109, v110);
              v117 = v105;
              v118 = v102;
              v119 = sub_1000952D4(v115, v116, &aBlock);

              *(v113 + 4) = v119;
              v102 = v118;
              v105 = v117;
              _os_log_impl(&_mh_execute_header, v111, v112, "Creating new record for accessory %s.", v113, 0xCu);
              sub_100095808(v114);

              (*(v106 + 8))(v216, v223);
            }

            else
            {

              (*(v106 + 8))(v107, v108);
            }

            v120 = v215;
            v121 = v208;
            v122 = type metadata accessor for DaemonAccessory();
            v123 = *(v122 + 48);
            v124 = *(v122 + 52);
            swift_allocObject();
            v125 = v217;
            v126 = v217;
            v127 = sub_1001AD95C(v125, v218, v105);

            *(v127 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 2;
            v128 = *&v102[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
            v129 = swift_allocObject();
            v129[2] = v102;
            v129[3] = v127;
            v129[4] = v126;
            v129[5] = v121;
            v129[6] = v120;
            v228 = sub_1000E467C;
            v229 = v129;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v227 = sub_100147FC8;
            *(&v227 + 1) = &unk_100276CC0;
            v130 = _Block_copy(&aBlock);
            v131 = v102;
            v132 = v126;

            v133 = v128;

            v134 = v209;
            static DispatchQoS.unspecified.getter();
            v230[0] = &_swiftEmptyArrayStorage;
            sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
            sub_100095274(&unk_1002A6B60, qword_10023AE10);
            sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
            v135 = v210;
            v136 = v214;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v130);

            sub_1000A0D2C(v220, v222);

            (*(v213 + 8))(v135, v136);
            (*(v211 + 8))(v134, v212);
LABEL_57:

            return 1;
          }

          v77 = v230[0];
          v78 = sub_1001884E4();
          v79 = v222;
          v80 = v223;
          if (v78)
          {
            v81 = v78;
            v82 = dispatch thunk of DockCoreAccessory.needsMigration.getter();
          }

          else
          {
            v82 = 0;
          }

          v137 = *(v77 + 32);
          p_cache = HAPCharacteristicValueRange.cache;
          v219 = v77;
          if (v137 && (objc_opt_self(), (v139 = swift_dynamicCastObjCClass()) != 0))
          {
            v140 = v139;
            v141 = v77 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer;
            v142 = *(v77 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer);
            v143 = v137;
            v218 = v140;
            if (v142)
            {
              v144 = v141;
              p_cache = (HAPCharacteristicValueRange + 16);
            }

            else
            {
              v190 = [v140 connectReason] != 8;
              v166 = v217;
              v144 = v141;
              p_cache = (HAPCharacteristicValueRange + 16);
              if (((v190 | v82) & 1) == 0)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
            v218 = 0;
            v144 = (v77 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer);
          }

          v216 = v144;
          sub_10013EE04();
          sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
          v145 = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v146 = v221;
          v147 = [v221 v59[446]];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v206 = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v205 = v145;
          v202 = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v148 = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v149 = *&v203[v204];
          v204 = objc_allocWithZone((p_cache + 268));
          v150 = v146;
          v151 = v149;
          v203 = v151;
          v152 = v225;
          v153 = String._bridgeToObjectiveC()();

          v154 = String._bridgeToObjectiveC()();

          v155 = Data._bridgeToObjectiveC()().super.isa;
          v156 = String._bridgeToObjectiveC()();
          v201 = v151;
          LOBYTE(v199) = 0;
          v198 = v148;
          v157 = v148;
          v158 = v202;
          LOBYTE(v196) = 8;
          v159 = v206;
          v160 = v205;
          v204 = [v204 initWithPeripheral:v150 name:v153 pairingUsername:v154 statusFlags:v206 stateNumber:v205 enhancedEncryption:1 connectReason:v196 configNumber:v202 category:v198 setupHash:v155 connectionIdleTime:v199 browser:v152 keyStore:v201 whbStableIdentifier:v156];

          v45 = v220;
          v77 = v219;

          v161 = v160;
          v79 = v222;

          v80 = v223;
          v162 = *&v152[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          v163 = *(v162 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
          v164 = v204;
          [v164 setDelegate:v162 queue:v163];

          v165 = *(v77 + 32);
          *(v77 + 32) = v164;

          v166 = v217;
          *v216 = 0;
LABEL_53:
          v167 = *(v77 + 16);
          *(v77 + 16) = v166;
          v168 = v166;

          v169 = v224;
          v170 = v207;
          (*(v224 + 16))(v207, v225 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v80);
          sub_1000A0CD8(v45, v79);
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.default.getter();
          sub_1000A0D2C(v45, v79);
          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            *&aBlock = v174;
            *v173 = 136315138;
            v175 = sub_10014025C(v45, v79);
            v177 = sub_1000952D4(v175, v176, &aBlock);

            *(v173 + 4) = v177;
            v45 = v220;
            _os_log_impl(&_mh_execute_header, v171, v172, "Found existing record for accessory %s.", v173, 0xCu);
            sub_100095808(v174);

            (*(v169 + 8))(v207, v80);
          }

          else
          {

            (*(v169 + 8))(v170, v80);
          }

          v178 = v215;
          v179 = v79;
          v180 = *(v225 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue);
          v181 = swift_allocObject();
          v182 = v208;
          v181[2] = v168;
          v181[3] = v182;
          v181[4] = v178;
          v228 = sub_1000E46CC;
          v229 = v181;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v227 = sub_100147FC8;
          *(&v227 + 1) = &unk_100276D10;
          v183 = _Block_copy(&aBlock);
          v184 = v168;
          v185 = v180;

          v186 = v209;
          static DispatchQoS.unspecified.getter();
          v230[0] = &_swiftEmptyArrayStorage;
          sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
          sub_100095274(&unk_1002A6B60, qword_10023AE10);
          sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
          v187 = v210;
          v188 = v214;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v183);

          sub_1000A0D2C(v45, v179);
          (*(v213 + 8))(v187, v188);
          (*(v211 + 8))(v186, v212);
          goto LABEL_57;
        }

        (*(v224 + 16))(v26, v225 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v223);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "Pairing refresh outdates pairing state, we should unpair!", v74, 2u);
        }

        v75 = *(v224 + 8);
        v224 += 8;
        v75(v26, v223);
        sub_1000CE0B8(v218);
        if (qword_1002A67A0 == -1)
        {
          goto LABEL_38;
        }

        goto LABEL_70;
      }
    }

    else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    v191 = v224;
    v192 = v223;
    (*(v224 + 16))(v20, v225 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v223);
    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      *v195 = 0;
      _os_log_impl(&_mh_execute_header, v193, v194, "Unable to load Pairing State Number!", v195, 2u);

      sub_1000A0D2C(v45, v222);
    }

    else
    {
      sub_1000A0D2C(v45, v222);
    }

    (*(v191 + 8))(v20, v192);
    return 0;
  }

  sub_1000A0D2C(v30, v32);
  return 0;
}

void sub_1000D0A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  sub_1000E4E98();
  sub_10013E7E0(a2, a3);
}

void sub_1000D0AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CB678(a2);
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  sub_1000E4E98();
  sub_10013E7E0(a4, a5);
}

uint64_t sub_1000D0B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v312 = a2;
  v313 = a3;
  v351 = a1;
  v353 = type metadata accessor for UUID();
  v323 = *(v353 - 8);
  v3 = *(v323 + 64);
  v4 = __chkstk_darwin(v353);
  v315 = v294 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v314 = v294 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v294 - v9;
  __chkstk_darwin(v8);
  v344 = (v294 - v11);
  v12 = type metadata accessor for Date();
  v317 = *(v12 - 8);
  v318 = v12;
  v13 = *(v317 + 64);
  __chkstk_darwin(v12);
  v316 = v294 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = type metadata accessor for String.Encoding();
  v359 = *(v355 - 8);
  v15 = *(v359 + 8);
  __chkstk_darwin(v355);
  v354 = v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BTDiscoveredDevice();
  v334 = *(v17 - 8);
  v18 = *(v334 + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v338 = (v294 - v22);
  v333 = type metadata accessor for Logger();
  v330 = *(v333 - 8);
  v23 = *(v330 + 64);
  v24 = __chkstk_darwin(v333);
  v322 = v294 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v325 = v294 - v27;
  v28 = __chkstk_darwin(v26);
  v324 = v294 - v29;
  v30 = __chkstk_darwin(v28);
  v320 = v294 - v31;
  v32 = __chkstk_darwin(v30);
  v321 = v294 - v33;
  v34 = __chkstk_darwin(v32);
  v319 = v294 - v35;
  __chkstk_darwin(v34);
  v37 = v294 - v36;
  v38 = type metadata accessor for DockStatus();
  v39 = *(v38 - 8);
  v40 = v39[8];
  v41 = __chkstk_darwin(v38);
  v43 = v294 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = v294 - v44;
  if (sub_1000E2B14())
  {
    goto LABEL_3;
  }

  v46 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
  v47 = v337;
  swift_beginAccess();
  v48 = v39[2];
  v304 = v39 + 2;
  v305 = v46;
  v303 = v48;
  v48(v45, &v47[v46], v38);
  v301 = v39[13];
  v302 = v39 + 13;
  v301(v43, enum case for DockStatus.Undocked(_:), v38);
  sub_1000E4D0C(&unk_1002A7B00, &type metadata accessor for DockStatus);
  LOBYTE(v46) = dispatch thunk of static Comparable.< infix(_:_:)();
  v357 = v10;
  v343 = v21;
  v49 = v39[1];
  v49(v43, v38);
  v306 = v49;
  v307 = v39 + 1;
  v49(v45, v38);
  v50 = v343;
  v51 = v357;
  if (v46)
  {
LABEL_3:
    v52 = v330;
    v53 = v333;
    (*(v330 + 16))(v37, &v337[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v333);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Ignoring newly discovered bt device, already connected or trying to connect", v56, 2u);
    }

    return (*(v52 + 8))(v37, v53);
  }

  v298 = v38;
  v299 = v39;
  v297 = v45;
  v58 = v351;
  if (v351)
  {

    v59 = v353;
    goto LABEL_21;
  }

  v59 = v353;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v60 = qword_1002B1CF0;
  v61 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v62 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v62 + 4);

  v63 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v64 = *(v60 + v63);
  v65 = *(v60 + v61);

  os_unfair_lock_unlock(v65 + 4);

  if (v64 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
    if (v66)
    {
      goto LABEL_12;
    }

LABEL_20:

    v58 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
    goto LABEL_20;
  }

LABEL_12:
  *&v366 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v66 < 0)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v67 = 0;
  do
  {
    if ((v64 & 0xC000000000000001) != 0)
    {
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v68 = *(v64 + 8 * v67 + 32);
    }

    v69 = v68;
    ++v67;
    dispatch thunk of DockCoreAccessory.info.getter();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v70 = *(v366 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v51 = v357;
  }

  while (v66 != v67);

  v58 = v366;
LABEL_21:
  v362 = &_swiftEmptySetSingleton;
  if (qword_1002A67A0 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v61 = qword_1002B1EB8;
    v71 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
    v72 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

    os_unfair_lock_lock(v72 + 4);

    v73 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
    swift_beginAccess();
    v74 = *(v61 + v73);
    v66 = v74[2];
    v351 = v58;
    if (!v66)
    {

      v64 = &_swiftEmptyArrayStorage;
      goto LABEL_26;
    }

    *(&v356 + 1) = v71;
    v64 = sub_1001E3BAC(v66, 0);
    v358 = sub_1001F0F0C(&v366, v64 + ((*(v334 + 80) + 32) & ~*(v334 + 80)), v66, v74);
    v45 = v366;
    v58 = v368;
    swift_bridgeObjectRetain_n();
    sub_1000C7084();
    if (v358 != v66)
    {
      __break(1u);
      goto LABEL_166;
    }

    v59 = v353;
    v51 = v357;
    v50 = v343;
    v58 = v351;
    v71 = *(&v356 + 1);
LABEL_26:
    *&v366 = v64;
    v75 = 0;
    sub_1000E19C0(&v366);

    v76 = v366;
    v77 = *(v61 + v71);

    os_unfair_lock_unlock(v77 + 4);

    v327 = *(v76 + 16);
    if (!v327)
    {
LABEL_121:

      v199 = v333;

      v200 = v330;
      v201 = v322;
      (*(v330 + 16))(v322, &v337[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v199);
      v202 = Logger.logObject.getter();
      v203 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v202, v203))
      {
        v204 = swift_slowAlloc();
        *v204 = 0;
        _os_log_impl(&_mh_execute_header, v202, v203, "Unable to find matching discovered device.", v204, 2u);
      }

      return (*(v200 + 8))(v201, v333);
    }

    v78 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    v309 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
    v300 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn;
    v328 = v76 + ((*(v334 + 80) + 32) & ~*(v334 + 80));
    v329 = v76;
    v296 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockSetupIdMap;
    swift_beginAccess();
    v311 = v78;
    swift_beginAccess();
    v80 = 0;
    v81 = v58 & 0xFFFFFFFFFFFFFF8;
    v350 = v58 & 0xFFFFFFFFFFFFFF8;
    if (v58 < 0)
    {
      v81 = v58;
    }

    v294[1] = v81;
    v347 = v58 & 0xC000000000000001;
    v349 = (v323 + 8);
    v352 = (v359 + 8);
    v308 = (v330 + 16);
    v310 = (v330 + 8);
    *&v79 = 16777728;
    v295 = v79;
    v346 = xmmword_10023C8B0;
    v82 = v344;
LABEL_32:
    if (v80 < *(v329 + 16))
    {
      break;
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
  }

  v85 = *(v334 + 72);
  v335 = v80;
  v86 = v328 + v85 * v80;
  v83 = v338;
  sub_1000E40C4(v86, v338);
  v87 = v83[3];
  if (!v87)
  {
    goto LABEL_31;
  }

  v88 = v83[2];
  v89 = v83[4];
  v90 = v83[5];
  v91 = v83[6];
  v92 = v83[7];
  *(&v94 + 1) = v90;
  *&v94 = v89;
  v93 = v94 >> 32;
  *&v363 = v88;
  *(&v363 + 1) = v87;
  *&v364 = v89;
  WORD4(v364) = WORD2(v93);
  BYTE10(v364) = BYTE2(v90) & 1;
  *&v365 = v91;
  *(&v365 + 1) = v92;
  *(&v356 + 1) = v87;
  if ((v90 & 0x10000) != 0)
  {
    v342 = v93;
    *&v356 = v88;
    v345 = v89;
    v326 = v90;
    v331 = v92;
    v332 = v91;
    v360 = &_swiftEmptyArrayStorage;
    if (v58 >> 62)
    {
      v116 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v116 = *(v350 + 16);
    }

    sub_1000A0CD8(v332, v331);
    if (v116)
    {
      v50 = 0;
      v348 = v116;
      do
      {
        if (v347)
        {
          v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v118 = (v50 + 1);
          if (__OFADD__(v50, 1))
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (v50 >= *(v350 + 16))
          {
            goto LABEL_140;
          }

          v117 = *(v58 + 8 * v50 + 32);
          v118 = (v50 + 1);
          if (__OFADD__(v50, 1))
          {
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:

            (v58)(v51, v59);
            v113 = v299;
LABEL_143:
            LODWORD(v132) = v342;
            v258 = [v359 name];
            v50 = v297;
            v59 = v298;
            if (v258)
            {
              v259 = v258;
              v260 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v262 = v261;

LABEL_150:

              v263 = v338[1];
              v264 = v263;
              [v359 rssi];
              isa = Int8._bridgeToObjectiveC()().super.super.isa;
              v266 = objc_allocWithZone(type metadata accessor for BTDevice());
              v267 = sub_10013F90C(v260, v262, v263, isa);

              v359 = v267;
              sub_10013EB28(&v363);
              v301(v50, enum case for DockStatus.DockedRSSI(_:), v59);
              v268 = v337;
              v75 = v305;
              swift_beginAccess();
              (v113[5])(&v75[v268], v50, v59);
              swift_endAccess();
              v269 = *&v268[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer];
              *&v268[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = 0;

              v95 = swift_allocObject();
              swift_unknownObjectWeakInit();
              if (v132 != 2 && (v132 & 0x10000) != 0)
              {
                type metadata accessor for DockCoreManager();
                if ((static DockCoreManager.ignoreStartupValidation.getter() & 1) == 0)
                {
LABEL_156:
                  v285 = v337;
                  v357 = *&v337[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];
                  v303(v50, &v75[v337], v59);
                  v286 = swift_allocObject();
                  *(v286 + 16) = v95;
                  *(v286 + 24) = v285;
                  v287 = v359;
                  *(v286 + 32) = v359;
                  v288 = v364;
                  *(v286 + 40) = v363;
                  *(v286 + 56) = v288;
                  *(v286 + 72) = v365;
                  v289 = v358;
                  v291 = v312;
                  v290 = v313;
                  *(v286 + 88) = v358;
                  *(v286 + 96) = v291;
                  *(v286 + 104) = v290;
                  sub_1000E4184(v356, *(&v356 + 1), v345, v326, v332, v331);

                  v292 = v285;
                  v359 = v287;
                  v293 = v289;
                  sub_1000C6F30(v291);
                  DockDetector.newStatus(_:monitorJarvisCallback:)(v50, sub_1000E42C4, v286);

                  sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);

                  v306(v50, v59);
                  sub_1000E4128(v338);
                }
              }

              v270 = v337;
              v271 = *&v337[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];
              v303(v50, &v75[v337], v59);
              DockDetector.newStatus(_:monitorJarvisCallback:)(v50, 0, 0);
              v306(v50, v59);
              v272 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
              swift_beginAccess();
              v273 = *(v271 + v272);
              v61 = swift_allocObject();
              *(v61 + 16) = v95;
              *(v61 + 24) = v270;
              v274 = v359;
              *(v61 + 32) = v359;
              v275 = v364;
              *(v61 + 40) = v363;
              *(v61 + 56) = v275;
              *(v61 + 72) = v365;
              v276 = v358;
              v278 = v312;
              v277 = v313;
              *(v61 + 88) = v358;
              *(v61 + 96) = v278;
              *(v61 + 104) = v277;
              v64 = v331;
              sub_1000E4184(v356, *(&v356 + 1), v345, v326, v332, v331);
              v357 = v95;

              v279 = v270;
              v58 = v274;
              v66 = v276;
              sub_1000C6F30(v278);
              v280 = qword_1002A6780;
              v45 = v273;
              if (v280 == -1)
              {
LABEL_154:
                v281 = [v45 description];
                v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v284 = v283;

                sub_100185F9C(v282, v284, sub_1000E42AC, v61);

                sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v64);
                sub_1000E4128(v338);
              }

LABEL_167:
              swift_once();
              goto LABEL_154;
            }

LABEL_149:
            v260 = 0;
            v262 = 0xE000000000000000;
            goto LABEL_150;
          }
        }

        v359 = v118;
        v358 = v117;
        DockCoreInfo.identifier.getter();
        sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
        v119 = swift_allocObject();
        *(v119 + 16) = v346;
        UUID.uuid.getter();
        *(v119 + 32) = v120;
        UUID.uuid.getter();
        *(v119 + 33) = v121;
        UUID.uuid.getter();
        *(v119 + 34) = v122;
        UUID.uuid.getter();
        *(v119 + 35) = v123;
        UUID.uuid.getter();
        *(v119 + 36) = v124;
        UUID.uuid.getter();
        *(v119 + 37) = v125;
        v126 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
        *(&v367 + 1) = v126;
        *&v368 = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0);
        *&v366 = v119;
        v127 = sub_1000A09E0(&v366, v126);
        v128 = (*v127 + 32);
        v129 = *(*v127 + 16);

        sub_1001AC450(v128, &v128[v129], v361);
        if (v75)
        {

          __break(1u);

          __break(1u);
          return result;
        }

        v130 = v59;
        (*v349)(v51, v59);

        v131 = v361[0];
        v132 = v361[1];
        sub_100095808(&v366);
        v133 = sub_10014025C(v131, v132);
        v135 = v134;
        v366 = v356;

        v136._countAndFlagsBits = v133;
        v136._object = v135;
        String.append(_:)(v136);

        v113 = *(&v366 + 1);
        v137 = v354;
        static String.Encoding.utf8.getter();
        v138 = String.data(using:allowLossyConversion:)();
        v140 = v139;

        (*v352)(v137, v355);
        if (v140 >> 60 == 15)
        {

          sub_1000A0D2C(v131, v132);
          v51 = v357;
          v58 = v351;
          v59 = v130;
        }

        else
        {
          v141 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v141 + 16) = 64;
          *(v141 + 32) = 0u;
          *(v141 + 48) = 0u;
          *(v141 + 64) = 0u;
          *(v141 + 80) = 0u;
          *&v366 = v141;
          sub_1000A0CD8(v138, v140);
          sub_1000CAEE8(v138, v140, v138, v140, &v366);
          v59 = v366;
          v142 = *(v366 + 16);
          if (!v142)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (v142 == 1)
          {
            goto LABEL_146;
          }

          if (v142 < 3)
          {
            goto LABEL_147;
          }

          if (v142 == 3)
          {
            goto LABEL_148;
          }

          v143 = *(v366 + 32);
          sub_1000A0D2C(v131, v132);
          sub_1000A452C(v138, v140);

          if (bswap32(v143) == v345)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v144 = *(v360 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v59 = v353;
          v51 = v357;
          v58 = v351;
        }

        ++v50;
      }

      while (v359 != v348);
      v145 = v360;
      v50 = v343;
      v82 = v344;
      if ((v360 & 0x8000000000000000) != 0)
      {
LABEL_108:
        v188 = v145;
        v189 = _CocoaArrayWrapper.endIndex.getter();
        v145 = v188;
        if (v189 != 1)
        {
          v146 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_110;
        }

LABEL_83:
        if ((v145 & 0xC000000000000001) != 0)
        {
          v147 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v145 + 16))
          {
            goto LABEL_163;
          }

          v147 = *(v145 + 32);
        }

        v148 = v147;

        v149 = v338;
        v150 = *v338;
        if ([*v338 rssi] >= -70)
        {
          v359 = v150;
          v159 = *&v337[v300];

          DockCoreInfo.identifier.getter();
          sub_1000F27AC(v82);

          v58 = *v349;
          (*v349)(v82, v59);
          v160 = v362;
          DockCoreInfo.identifier.getter();
          v161 = sub_1000F1DB8(v82, v160);
          (v58)(v82, v59);
          if (v161)
          {
            (*v308)(v321, &v337[v309], v333);
            v162 = Logger.logObject.getter();
            v163 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v162, v163))
            {
              v164 = swift_slowAlloc();
              *v164 = 0;
              _os_log_impl(&_mh_execute_header, v162, v163, "Ignoring newly discovered bt device, old adv data", v164, 2u);

              sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
            }

            else
            {

              sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
            }

            v58 = v351;
            v50 = v343;
            (*v310)(v321, v333);
          }

          else
          {
            v166 = v314;
            DockCoreInfo.identifier.getter();
            sub_10019D5B8(v82, v166);
            (v58)(v82, v59);
            v51 = v315;
            v358 = v148;
            DockCoreInfo.identifier.getter();
            v167 = *&v337[v296];
            v168 = *(v167 + 16);

            if (!v168)
            {
              goto LABEL_142;
            }

            v169 = sub_10016D5D4(v51);
            if ((v170 & 1) == 0)
            {
              goto LABEL_142;
            }

            v171 = (*(v167 + 56) + 16 * v169);
            v172 = v58;
            v174 = *v171;
            v173 = v171[1];

            v172(v51, v59);

            if (v356 == __PAIR128__(v173, v174))
            {

              v50 = v343;
              v175 = v358;
            }

            else
            {
              v176 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v113 = v299;
              v50 = v343;
              v175 = v358;
              if ((v176 & 1) == 0)
              {
LABEL_161:

                goto LABEL_143;
              }
            }

            (*v308)(v320, &v337[v309], v333);
            v177 = Logger.logObject.getter();
            v178 = static os_log_type_t.default.getter();
            v179 = os_log_type_enabled(v177, v178);
            v58 = v351;
            if (v179)
            {
              v180 = swift_slowAlloc();
              *v180 = 0;
              _os_log_impl(&_mh_execute_header, v177, v178, "Ignoring newly discovered bt device, adv data rejected as invalid due to startup validation failure", v180, 2u);

              sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
            }

            else
            {

              sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
            }

            v51 = v357;
            v82 = v344;
            (*v310)(v320, v333);
          }
        }

        else
        {
          v151 = v337;
          (*v308)(v324, &v337[v309], v333);
          sub_1000E40C4(v149, v50);
          v152 = v151;
          v153 = Logger.logObject.getter();
          v154 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            *v155 = v295;
            v156 = [*v50 rssi];
            v359 = v152;
            v157 = v148;
            v158 = v156;
            sub_1000E4128(v50);
            *(v155 + 4) = v158;
            v148 = v157;
            *(v155 + 5) = 2048;
            *(v155 + 7) = -70;

            _os_log_impl(&_mh_execute_header, v153, v154, "Ignoring newly discovered bt device, RSSI: %hhd is < %ld", v155, 0xFu);
            v58 = v351;
          }

          else
          {
            sub_1000E4128(v50);

            v153 = v152;
          }

          (*v310)(v324, v333);
          v165 = *&v337[v300];

          v82 = v344;
          DockCoreInfo.identifier.getter();
          sub_1000F2140(v82);

          sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
          (*v349)(v82, v59);
        }

        goto LABEL_116;
      }
    }

    else
    {
      v145 = &_swiftEmptyArrayStorage;
      if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_108;
      }
    }

    if ((v145 & 0x4000000000000000) != 0)
    {
      goto LABEL_108;
    }

    v146 = *(v145 + 16);
    if (v146 == 1)
    {
      goto LABEL_83;
    }

LABEL_110:

    if (v146)
    {
      (*v308)(v325, &v337[v309], v333);
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 0;
        _os_log_impl(&_mh_execute_header, v190, v191, "Setup hash does not match with a unique setup payload, ignoring.", v192, 2u);

        sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
      }

      else
      {
        sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
      }

      (*v310)(v325, v333);
    }

    else
    {
      sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
    }

LABEL_116:
    v83 = v338;
    goto LABEL_31;
  }

  v358 = *&v337[v311];
  v95 = v358;
  if (!(v358 >> 62))
  {
    v96 = *((v358 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v96)
    {
      goto LABEL_37;
    }

LABEL_31:
    v84 = v83;
    v80 = v335 + 1;
    sub_1000E4128(v84);
    if (v80 == v327)
    {
      goto LABEL_121;
    }

    goto LABEL_32;
  }

  v181 = v92;
  v182 = v91;
  v183 = v82;
  v184 = v90;
  v185 = v89;
  v186 = v88;
  v187 = _CocoaArrayWrapper.endIndex.getter();
  v88 = v186;
  v87 = *(&v356 + 1);
  v89 = v185;
  v58 = v351;
  v90 = v184;
  v82 = v183;
  v50 = v343;
  v91 = v182;
  v95 = v358;
  v92 = v181;
  v96 = v187;
  v83 = v338;
  if (!v187)
  {
    goto LABEL_31;
  }

LABEL_37:
  v97 = v95 & 0xC000000000000001;
  *&v356 = v88;
  v345 = v89;
  v326 = v90;
  v331 = v92;
  v332 = v91;
  sub_1000E4184(v88, v87, v89, v90, v91, v92);
  v336 = v95 & 0xFFFFFFFFFFFFFF8;

  v58 = 0;
  v348 = v96;
  v342 = v95 & 0xC000000000000001;
  while (2)
  {
    if (v97)
    {
      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v59 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (v58 >= *(v336 + 16))
      {
        __break(1u);
        goto LABEL_156;
      }

      v100 = *(v95 + 8 * v58 + 32);

      v59 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_141;
      }
    }

    if (*(v99 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_inUse))
    {

      goto LABEL_39;
    }

    v340 = OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_inUse;
    v359 = v75;
    v101 = v99;
    v103 = *(v99 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v102 = *(v99 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
    v341 = v99 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
    sub_1000A0CD8(v103, v102);
    v104 = sub_10014025C(v103, v102);
    v106 = v105;
    v366 = v356;

    v107._countAndFlagsBits = v104;
    v107._object = v106;
    String.append(_:)(v107);

    v108 = v354;
    static String.Encoding.utf8.getter();
    v109 = String.data(using:allowLossyConversion:)();
    v111 = v110;

    (*v352)(v108, v355);
    if (v111 >> 60 == 15)
    {

      sub_1000A0D2C(v103, v102);
      v50 = v343;
      v82 = v344;
      v51 = v357;
      v75 = v359;
      goto LABEL_55;
    }

    v339 = v101;
    v112 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v112 + 16) = 64;
    *(v112 + 32) = 0u;
    *(v112 + 48) = 0u;
    *(v112 + 64) = 0u;
    *(v112 + 80) = 0u;
    *&v366 = v112;
    sub_1000A0CD8(v109, v111);
    v75 = v359;
    sub_1000CAEE8(v109, v111, v109, v111, &v366);
    v113 = v366;
    v114 = *(v366 + 16);
    if (!v114)
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v114 == 1)
    {
      goto LABEL_158;
    }

    if (v114 < 3)
    {
      goto LABEL_159;
    }

    if (v114 == 3)
    {
      goto LABEL_160;
    }

    v115 = *(v366 + 32);
    sub_1000A0D2C(v103, v102);
    sub_1000A452C(v109, v111);

    if (bswap32(v115) != v345)
    {

      v50 = v343;
      v82 = v344;
      v51 = v357;
LABEL_55:
      v95 = v358;
      v96 = v348;
      v97 = v342;
LABEL_39:
      ++v58;
      v98 = v59 == v96;
      v59 = v353;
      if (v98)
      {

        sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
        v83 = v338;
        v58 = v351;
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

  v193 = *v338;
  v194 = [*v338 name];
  if (v194)
  {
    v195 = v194;
    v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v198 = v197;
  }

  else
  {
    v196 = 0;
    v198 = 0xE000000000000000;
  }

  v205 = v318;
  v206 = v319;
  v208 = v316;
  v207 = v317;
  v209 = v338[1];
  v210 = v209;
  [v193 rssi];
  v211 = Int8._bridgeToObjectiveC()().super.super.isa;
  v212 = objc_allocWithZone(type metadata accessor for BTDevice());
  v213 = sub_10013F90C(v196, v198, v209, v211);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v215 = v214;
  (*(v207 + 8))(v208, v205);
  v216 = v341;
  v217 = *(v341 + 48);
  if (v217 <= v215)
  {
    v218 = v215 - v217;

    v219 = v339;
    if (v218 >= 300.0)
    {

      sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
    }

    else
    {
      *(v339 + v340) = 1;
      v220 = v333;
      (*v308)(v206, &v337[v309], v333);

      v221 = Logger.logObject.getter();
      v222 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        v359 = swift_slowAlloc();
        *&v366 = v359;
        *v223 = 136315394;
        v224 = v323 + 16;
        v225 = v219 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id;
        v226 = v344;
        v227 = v353;
        (*(v323 + 16))(v344, v225, v353);
        sub_1000E4D0C(&unk_1002A6F90, &type metadata accessor for UUID);
        v228 = dispatch thunk of CustomStringConvertible.description.getter();
        v230 = v229;
        (*(v224 - 8))(v226, v227);
        v231 = v228;
        v216 = v341;
        v232 = sub_1000952D4(v231, v230, &v366);

        *(v223 + 4) = v232;
        *(v223 + 12) = 2080;
        v233 = *(v216 + 32);
        v234 = *(v216 + 40);
        sub_1000A0CD8(v233, v234);
        v235 = sub_10014025C(v233, v234);
        v237 = v236;
        sub_1000A0D2C(v233, v234);
        v238 = sub_1000952D4(v235, v237, &v366);

        *(v223 + 14) = v238;
        _os_log_impl(&_mh_execute_header, v221, v222, "Using token %s for accessory %s", v223, 0x16u);
        swift_arrayDestroy();

        (*v310)(v319, v333);
      }

      else
      {

        (*v310)(v206, v220);
      }

      v239 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
      v240 = *&v337[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard];
      if (v240)
      {
        v241 = *(v240 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_discoveryTxn);

        sub_1001059EC();
      }

      v242 = *(v216 + 32);
      v243 = *(v216 + 40);
      sub_1000A0CD8(v242, v243);
      sub_10014025C(v242, v243);

      sub_1000A0D2C(v242, v243);
      sub_1001F29A8(&_swiftEmptyArrayStorage);

      if (*&v337[v239])
      {
        v337[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 2;
      }

      v244 = *v216;
      v245 = *(v216 + 16);
      v246 = *(v216 + 32);
      v369 = *(v216 + 48);
      v367 = v245;
      v368 = v246;
      v366 = v244;
      sub_1000E3C64(&v366, v361);
      v247 = v345;
      v248 = sub_10013B630(v345);
      v250 = v249;
      v251 = v216;
      v252 = *(v216 + 32);
      v253 = *(v251 + 40);
      sub_1000A0CD8(v252, v253);
      v254 = sub_10014025C(v252, v253);
      v256 = v255;
      sub_1000A0D2C(v252, v253);
      sub_1000CCA20(v213, v257, &v366, v248, v250, v254, v256);

      sub_1000A0D2C(v248, v250);
      sub_1000E421C(&v366);

      sub_1000E41D0(v356, *(&v356 + 1), v247, v326, v332, v331);
    }
  }

  else
  {

    sub_1000E41D0(v356, *(&v356 + 1), v345, v326, v332, v331);
  }

  return sub_1000E4128(v338);
}

void sub_1000D2F28(char a1, uint64_t a2, void *a3, void *a4, _OWORD *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v49 = a7;
  v15 = type metadata accessor for DockStatus();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = a8;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      v25 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
      v26 = v23;

      v27 = a3;
      v28 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
      v29 = *&v21[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer];
      *&v21[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = v28;

      a8 = v22;
    }

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = a8;
      v33 = *(v30 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

      v34 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
      swift_beginAccess();
      v35 = *&v33[v34];

      v36 = swift_allocObject();
      *(v36 + 16) = a2;
      *(v36 + 24) = a3;
      *(v36 + 32) = a4;
      v37 = a5[1];
      *(v36 + 40) = *a5;
      *(v36 + 56) = v37;
      *(v36 + 72) = a5[2];
      v38 = v49;
      *(v36 + 88) = a6;
      *(v36 + 96) = v38;
      *(v36 + 104) = v32;

      v39 = a3;
      v40 = a4;
      sub_1000E4390(a5, v50);
      v41 = a6;
      sub_1000C6F30(v38);
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v42 = [v35 description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      sub_100185F9C(v43, v45, sub_1000E4358, v36);
    }
  }

  else
  {
    swift_beginAccess();
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      (*(v16 + 104))(v19, enum case for DockStatus.Undocked(_:), v15);
      v48 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
      swift_beginAccess();
      (*(v16 + 40))(&v47[v48], v19, v15);
      swift_endAccess();
    }
  }
}

uint64_t sub_1000D3304(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DockStatus();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = v6;
    v42 = v3;
    v13 = v2;
    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v16 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
    swift_beginAccess();
    v17 = *&v15[v16];

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v18 = [v17 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    sub_100187174(v19, v21);

    v2 = v13;
    v3 = v42;
    v6 = v41;
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    (*(v8 + 104))(v11, enum case for DockStatus.Undocked(_:), v7);
    v24 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    swift_beginAccess();
    (*(v8 + 40))(&v23[v24], v11, v7);
    swift_endAccess();
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = *(v25 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v28 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    v29 = v43;
    swift_beginAccess();
    (*(v8 + 16))(v11, v29 + v28, v7);
    DockDetector.newStatus(_:monitorJarvisCallback:)(v11, 0, 0);

    (*(v8 + 8))(v11, v7);
  }

  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = *(v30 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer);
    v32 = v30;
    v33 = v31;

    if (v31)
    {
      dispatch thunk of RepeatingTimer.cancel()();
    }
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = *&v34[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer];
    *&v34[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = 0;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = result;
    (*(v3 + 16))(v6, result + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v2);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "No core motion update received, timing out.", v40, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_1000D37E4(objc_class *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v76 = a8;
  v77 = a7;
  v80 = a6;
  v79 = a5;
  v78 = a4;
  v75 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v75 - 8);
  v10 = *(v74 + 64);
  __chkstk_darwin(v75);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v12 = *(v71 + 64);
  __chkstk_darwin(v73);
  v70 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DockStatus();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer);
    v21 = Strong;
    v22 = v20;

    if (v20)
    {
      dispatch thunk of RepeatingTimer.cancel()();
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = *&v23[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer];
    *&v23[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_deviceConnectionTimer] = 0;
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v81 = v18;
    v26 = v14;
    v27 = v15;
    v28 = a1;
    v29 = a3;
    v30 = v25;
    v31 = *(v25 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v32 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
    swift_beginAccess();
    v33 = *&v31[v32];

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v34 = [v33 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    sub_100187174(v35, v37);

    a3 = v29;
    a1 = v28;
    v15 = v27;
    v14 = v26;
    v18 = v81;
  }

  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  if (!v38)
  {
    goto LABEL_16;
  }

  v39 = v38;
  v40 = *(v38 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

  v41 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v42 = *&v40[v41];

  v83.value.super.super.isa = a1;
  LOBYTE(v40) = MotionValidator.isPositionValid(deviceMotion:)(v83);

  if (v40)
  {
    swift_beginAccess();
    v43 = swift_unknownObjectWeakLoadStrong();
    if (v43)
    {
      v44 = v43;
      v45 = v77;
      if (v77)
      {
        v46 = v76;

        v47 = v80;
        v48 = sub_1000CF088(v78, v79, v80, v45, v46);
        sub_1000BAA84(v45);
        if (v48)
        {
LABEL_15:

          return;
        }
      }

      else
      {
        v56 = swift_allocObject();
        v47 = v80;
        *(v56 + 16) = v44;
        *(v56 + 24) = v47;
        *(v56 + 32) = 2;
        v57 = v44;
        v58 = v47;
        v59 = sub_1000CF088(v78, v79, v58, &unk_10023C9E8, v56);

        if (v59)
        {
          goto LABEL_15;
        }
      }

      v60 = *&v44[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v61 = swift_allocObject();
      *(v61 + 16) = v44;
      *(v61 + 24) = v47;
      aBlock[4] = sub_1000E44EC;
      aBlock[5] = v61;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_100276B08;
      v62 = _Block_copy(aBlock);
      v63 = v44;
      v64 = v47;
      v65 = v60;
      v66 = v70;
      static DispatchQoS.unspecified.getter();
      aBlock[6] = &_swiftEmptyArrayStorage;
      sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      v67 = v72;
      v68 = v75;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v62);

      (*(v74 + 8))(v67, v68);
      (*(v71 + 8))(v66, v73);
    }
  }

  else
  {
LABEL_16:
    swift_beginAccess();
    v49 = swift_unknownObjectWeakLoadStrong();
    if (v49)
    {
      v50 = v49;
      (*(v15 + 104))(v18, enum case for DockStatus.Undocked(_:), v14);
      v51 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
      swift_beginAccess();
      (*(v15 + 40))(&v50[v51], v18, v14);
      swift_endAccess();
    }

    swift_beginAccess();
    v52 = swift_unknownObjectWeakLoadStrong();
    if (v52)
    {
      v53 = v52;
      v54 = *(v52 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

      v55 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
      swift_beginAccess();
      (*(v15 + 16))(v18, a3 + v55, v14);
      DockDetector.newStatus(_:monitorJarvisCallback:)(v18, 0, 0);

      (*(v15 + 8))(v18, v14);
    }
  }
}

uint64_t sub_1000D4030(objc_class *a1, uint64_t a2, char *a3, void *a4, _OWORD *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v61 = a5;
  v60 = a4;
  v62 = a1;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v64 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = a6;
    v57 = a7;
    v58 = a8;
    v59 = v18;
    v22 = v17;
    v23 = v13;
    v24 = v14;
    v25 = Strong;
    v26 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v27 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
    swift_beginAccess();
    v28 = *&v26[v27];

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    sub_100187174(v30, v32);

    v14 = v24;
    v13 = v23;
    v17 = v22;
    v18 = v59;
    a8 = v58;
    a7 = v57;
    a6 = v56;
  }

  v63 = v17;
  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
    goto LABEL_8;
  }

  v34 = v33;
  v35 = *(v33 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

  v36 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v37 = *&v35[v36];

  v73.value.super.super.isa = v62;
  LOBYTE(v35) = MotionValidator.isPositionValid(deviceMotion:)(v73);

  if (v35)
  {
    v62 = *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v38 = swift_allocObject();
    v39 = v60;
    *(v38 + 16) = a2;
    *(v38 + 24) = v39;
    v40 = v61;
    v41 = v61[1];
    *(v38 + 32) = *v61;
    *(v38 + 48) = v41;
    *(v38 + 64) = *(v40 + 32);
    *(v38 + 80) = a6;
    *(v38 + 88) = a7;
    *(v38 + 96) = a8;
    v71 = sub_1000E45B4;
    v72 = v38;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100147FC8;
    v70 = &unk_100276BF8;
    v42 = _Block_copy(&aBlock);

    v43 = v62;
    v44 = v39;
    sub_1000E4390(v40, &v66);
    v45 = a6;
    sub_1000C6F30(a7);
    v46 = v64;
    static DispatchQoS.unspecified.getter();
    v66 = &_swiftEmptyArrayStorage;
    sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    v47 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    (*(v14 + 8))(v47, v13);
  }

  else
  {
LABEL_8:
    v48 = *&a3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v49 = swift_allocObject();
    *(v49 + 16) = a2;
    *(v49 + 24) = a3;
    v71 = sub_1000E4544;
    v72 = v49;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100147FC8;
    v70 = &unk_100276BA8;
    v50 = _Block_copy(&aBlock);
    v51 = v48;

    v52 = a3;
    v46 = v64;
    static DispatchQoS.unspecified.getter();
    v66 = &_swiftEmptyArrayStorage;
    sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    v53 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v50);

    (*(v14 + 8))(v53, v13);
  }

  (*(v18 + 8))(v46, v63);
}

uint64_t sub_1000D471C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DockStatus();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 104))(v7, enum case for DockStatus.Undocked(_:), v3);
    v10 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    swift_beginAccess();
    (*(v4 + 40))(&v9[v10], v7, v3);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);

    v14 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    swift_beginAccess();
    (*(v4 + 16))(v7, a2 + v14, v3);
    DockDetector.newStatus(_:monitorJarvisCallback:)(v7, 0, 0);

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

void sub_1000D4910(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v31 = *(v15 - 8);
  v16 = *(v31 + 64);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a5)
    {

      v21 = sub_1000CF088(a2, a3, a4, a5, a6);
      sub_1000BAA84(a5);
      if (v21)
      {
LABEL_4:

        return;
      }
    }

    else
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = a4;
      *(v22 + 32) = 2;
      v20;
      v23 = sub_1000CF088(a2, a3, a4, &unk_10023C9F0, v22);

      if (v23)
      {
        goto LABEL_4;
      }
    }

    v24 = *&v20[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    *(v25 + 24) = a4;
    aBlock[4] = sub_1000E4E18;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100276C70;
    v26 = _Block_copy(aBlock);
    v30 = v20;
    v27 = a4;
    v28 = v24;
    static DispatchQoS.unspecified.getter();
    v33 = &_swiftEmptyArrayStorage;
    sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v32 + 8))(v14, v11);
    (*(v31 + 8))(v18, v15);
  }
}

uint64_t sub_1000D4CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return (_swift_task_switch)(sub_1000D4D14, 0, 0);
}

uint64_t sub_1000D4D14()
{
  v1 = *(v0 + 32);
  sub_1000D4D7C(*(v0 + 16), *(v0 + 40), *(v0 + 48), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000D4D7C(void *a1, void *a2, int a3, uint64_t a4)
{
  v5 = v4;
  v73 = a3;
  v75 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  __chkstk_darwin(v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  __chkstk_darwin(v23);
  v28 = &v64 - v24;
  if (a4)
  {
    v29 = v26;
    v30 = v25;
    (*(v26 + 16))(&v64 - v24, &v5[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v25);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed discovering paired acessory %@", v33, 0xCu);
      sub_100095C84(v34, &unk_1002A6F60, &unk_10023C4E0);
    }

    else
    {
    }

    (*(v29 + 8))(v28, v30);
    return;
  }

  v67 = v16;
  v68 = v13;
  v69 = v11;
  v70 = v12;
  v66 = v8;
  if (!a1)
  {
    return;
  }

  v36 = v27;
  v37 = v26;
  v38 = v25;
  v65 = v5;
  v72 = a1;
  v71 = sub_10013EC8C();
  if (v39 >> 60 != 15)
  {
    v40 = v39;
    v41 = v71;
    sub_1000A0CD8(v71, v39);
    sub_1001B1B24(v41, v40, &v78);
    v42 = v79;
    if (v79)
    {
      v43 = v80;
      v44 = v78;
      DockCoreInfo.identifier.getter();
      v45 = sub_1001408A0(v20);
      v47 = v46;
      v48 = sub_1001B1EB4(v45, v46, v44, v42, v43);
      sub_1000A0D2C(v45, v47);
      if (v48)
      {
        v49 = v65;
        v50 = *&v65[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
        v51 = swift_allocObject();
        v52 = v75;
        *(v51 + 16) = v49;
        *(v51 + 24) = v52;
        *(v51 + 32) = v73;
        aBlock[4] = sub_1000E4518;
        aBlock[5] = v51;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100147FC8;
        aBlock[3] = &unk_100276B58;
        v53 = _Block_copy(aBlock);
        v54 = v50;
        v55 = v49;
        v56 = v52;
        v57 = v67;
        static DispatchQoS.unspecified.getter();
        v76 = _swiftEmptyArrayStorage;
        sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v58 = v69;
        v59 = v66;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v53);
        sub_100095C84(&v78, &unk_1002A7AA0, &unk_10023C978);
        sub_1000A452C(v71, v40);
        (*(v74 + 8))(v58, v59);
        (*(v68 + 8))(v57, v70);
      }

      else
      {
        (*(v37 + 16))(v36, &v65[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v38);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "Failed dicovering paired accessory with unique identiier", v63, 2u);

          sub_100095C84(&v78, &unk_1002A7AA0, &unk_10023C978);
          sub_1000A452C(v71, v40);
        }

        else
        {
          sub_1000A452C(v71, v40);

          sub_100095C84(&v78, &unk_1002A7AA0, &unk_10023C978);
        }

        (*(v37 + 8))(v36, v38);
      }

      return;
    }

    sub_1000A452C(v71, v40);
  }

  v60 = v72;
}

uint64_t sub_1000D54FC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Timing out prox card!", v9, 2u);
  }

  result = (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
  v12 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_primaryToken);
    if (!v13)
    {
      return result;
    }

    v14 = *(v13 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v15 = *(v13 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);

    sub_1000A0CD8(v14, v15);
    v16 = sub_10014025C(v14, v15);
    v18 = v17;
    sub_1000A0D2C(v14, v15);
    sub_1000B346C();
    v19 = swift_allocError();
    *v20 = 4;
    v21 = sub_1001F29A8(_swiftEmptyArrayStorage);
    if (*(v1 + v11))
    {
      *(v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState) = 0;
      v22 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
      sub_100156798(v16, v18, 6, v21, v19);
    }

    else
    {
    }
  }

  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
  {
    v23 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan);

    sub_1000F2E4C(4);
  }

  return sub_1000E4E98();
}

uint64_t sub_1000D57F0()
{
  v2 = v0;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = __chkstk_darwin(v11);
  result = __chkstk_darwin(v12);
  v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
  v18 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard];
  if (!v18)
  {
    goto LABEL_76;
  }

  v106 = v7;
  v19 = *(v18 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_primaryToken);
  if (!v19)
  {
    return result;
  }

  if (v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] > 2u || v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState])
  {
    v103 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState;
    v102 = &v94 - v14;
    v96 = v4;
    v97 = v3;
    v100 = v16;
    v98 = v15;
    v105 = result;
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
    }

    v95 = v9;
    v101 = v17;
    v104 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v22 = *(v19 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
    sub_1000A0CD8(v21, v22);
    v23 = sub_10014025C(v21, v22);
    v25 = v24;
    sub_1000A0D2C(v21, v22);
    v26 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v27 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v28 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v99 = v2;
    v29 = *&v2[v28];
    v30 = *(v29 + 16);
    if (v30)
    {
      v94 = v26;
      v31 = v29 + 32;

      v32 = 0;
      while (v32 < *(v29 + 16))
      {
        sub_1000A097C(v31, v107);
        v33 = *(*sub_1000A09E0(v107, v107[3]) + 32);
        if (v33)
        {
          v34 = v33;
          v35 = [v34 identifier];
          if (v35)
          {
            v36 = v35;
            v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            if (v1 == v23 && v38 == v25)
            {

LABEL_28:

              v2 = v99;
              v41 = *&v99[v94];
              OS_dispatch_semaphore.signal()();

              sub_1000A097C(v107, &v108);
              sub_100095808(v107);
              goto LABEL_29;
            }

            v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v1)
            {
              goto LABEL_28;
            }
          }
        }

        ++v32;
        sub_100095808(v107);
        v31 += 40;
        if (v30 == v32)
        {

          v26 = v94;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_80;
    }

LABEL_23:
    v2 = v99;
    v40 = *&v99[v26];
    OS_dispatch_semaphore.signal()();

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
LABEL_29:

    v17 = v101;
    if (!*(&v109 + 1))
    {

      sub_100095C84(&v108, &unk_1002A6F40, &unk_10023BE90);
      goto LABEL_76;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_66;
    }

    v42 = v107[0];
    v43 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    swift_beginAccess();

    v44 = 0;
    v45 = sub_1000E3E3C(&v2[v43]);

    v46 = *&v2[v43];
    if (v46 >> 62)
    {
      if (v46 < 0)
      {
        v93 = *&v2[v43];
      }

      v47 = _CocoaArrayWrapper.endIndex.getter();
      if (v47 >= v45)
      {
LABEL_33:
        sub_1001A11BC(v45, v47);
        swift_endAccess();
        v48 = v103;
        v49 = v2[v103];
        if ((v49 - 2) >= 4)
        {
          if (v49 == 6)
          {
            v68 = *(v42 + 24);
            sub_1000CE0B8(v68);
          }

LABEL_76:
          v92 = *&v2[v17];
          *&v2[v17] = 0;

          v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
          if (qword_1002A67A0 == -1)
          {
            return sub_1000E4E98();
          }

LABEL_80:
          swift_once();
          return sub_1000E4E98();
        }

        v50 = v95;
        v51 = *(v95 + 16);
        v97 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
        v52 = v102;
        v100 = v51;
        v51(v102, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v105);
        v44 = v2;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = v52;
          v106 = v42;
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v108 = v57;
          *v56 = 136315138;
          v58 = v2[v48];
          v59 = 0xE700000000000000;
          v60 = 0x676E6972696170;
          if (v58 != 5)
          {
            v60 = 0x72756769666E6F63;
            v59 = 0xEB00000000676E69;
          }

          v61 = 0x46676E6974696177;
          v62 = 0xEE0068747541726FLL;
          if (v58 != 3)
          {
            v61 = 0x7A69726F68747561;
            v62 = 0xEB00000000676E69;
          }

          if (v2[v48] <= 4u)
          {
            v60 = v61;
            v59 = v62;
          }

          v63 = 0x69746164696C6176;
          if (v58 == 1)
          {
            v63 = 0x6E69686372616573;
          }

          v64 = 0xE900000000000067;
          if (v58 != 1)
          {
            v64 = 0xEA0000000000676ELL;
          }

          if (!v2[v48])
          {
            v63 = 0x6972696150746F6ELL;
            v64 = 0xEA0000000000676ELL;
          }

          if (v2[v48] <= 2u)
          {
            v65 = v63;
          }

          else
          {
            v65 = v60;
          }

          if (v2[v48] <= 2u)
          {
            v66 = v64;
          }

          else
          {
            v66 = v59;
          }

          v67 = sub_1000952D4(v65, v66, &v108);

          *(v56 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v53, v54, "Prox card deactivated while in pairing attempt: %s", v56, 0xCu);
          sub_100095808(v57);

          v1 = *(v95 + 8);
          (v1)(v55, v105);
          v17 = v101;
          v42 = v106;
        }

        else
        {

          v1 = *(v50 + 8);
          (v1)(v52, v105);
        }

        if (qword_1002A67A0 == -1)
        {
          goto LABEL_59;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47 >= v45)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_85:
    swift_once();
LABEL_59:
    v69 = qword_1002B1EB8;
    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) == 2)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *(v70 + 24) = 0;
      v71 = v69;
      sub_1001D5444(sub_1000E4DF8, v70);

      goto LABEL_76;
    }

    v72 = *(v42 + 32);
    if (v72)
    {
      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v74 = v73;
        *&v108 = 0;
        v75 = v72;
        v76 = [v74 stopPairingWithError:&v108];
        v77 = v108;
        if (v76)
        {
          v78 = *&v44[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          v79 = *(v78 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth);
          *(v78 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth) = 0;
          v80 = v77;
        }

        else
        {
          v106 = v42;
          v81 = v108;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v82 = v98;
          v100(v98, &v2[v97], v105);
          swift_errorRetain();
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v103 = v75;
            v86 = v85;
            v87 = swift_slowAlloc();
            *&v108 = v87;
            *v86 = 136315138;
            swift_getErrorValue();
            v88 = Error.localizedDescription.getter();
            v90 = sub_1000952D4(v88, v89, &v108);

            *(v86 + 4) = v90;
            _os_log_impl(&_mh_execute_header, v83, v84, "Unable to stop pairing: %s", v86, 0xCu);
            sub_100095808(v87);
            v2 = v99;

            v75 = v103;
          }

          else
          {
          }

          (v1)(v82, v105);
          v42 = v106;
        }

        v91 = [v74 connectReason];

        if (v91 == 7)
        {
          *(v42 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 2;
          *(v42 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer) = 1;
        }
      }

      else
      {
      }

      v17 = v101;
      goto LABEL_76;
    }

LABEL_66:

    goto LABEL_76;
  }
}

uint64_t sub_1000D6828()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - v8;
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  if (allowedForDockKit()())
  {
    if (sub_1000E2B14())
    {
      (*(v2 + 16))(v9, v0 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v1);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        v11 = v9;
        goto LABEL_14;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Ingoring URI request: device already connected or connecting over BLE", v14, 2u);
      v11 = v9;
    }

    else
    {
      if (!SBSGetScreenLockStatus())
      {
        return 1;
      }

      (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v1);
      v12 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v17))
      {
        v11 = v6;
        goto LABEL_14;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, v17, "Ingoring URI request: cannot pair from lock screen", v18, 2u);
      v11 = v6;
    }

    goto LABEL_10;
  }

  (*(v2 + 16))(v11, v0 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v1);
  v12 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v12, v15, "Ingoring URI request: device not supported", v16, 2u);
LABEL_10:
  }

LABEL_14:

  (*(v2 + 8))(v11, v1);
  return 0;
}

uint64_t sub_1000D6B18(uint64_t a1)
{
  v2 = v1;
  v144 = type metadata accessor for DispatchWorkItemFlags();
  v143 = *(v144 - 8);
  v4 = *(v143 + 64);
  __chkstk_darwin(v144);
  v141 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for DispatchQoS();
  v140 = *(v142 - 8);
  v6 = *(v140 + 64);
  __chkstk_darwin(v142);
  v139 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v132 = &v124 - v10;
  v131 = type metadata accessor for UUID();
  v130 = *(v131 - 8);
  v11 = *(v130 + 64);
  __chkstk_darwin(v131);
  v133 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Date();
  v135 = *(v136 - 8);
  v13 = *(v135 + 64);
  __chkstk_darwin(v136);
  v134 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v148 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v124 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v128 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v145 = &v124 - v28;
  v29 = __chkstk_darwin(v27);
  v127 = &v124 - v30;
  v31 = __chkstk_darwin(v29);
  v138 = &v124 - v32;
  v33 = __chkstk_darwin(v31);
  v129 = &v124 - v34;
  v35 = __chkstk_darwin(v33);
  v137 = &v124 - v36;
  __chkstk_darwin(v35);
  v38 = &v124 - v37;
  v39 = v23[2];
  v151 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
  v153 = v23 + 2;
  v152 = v39;
  v39(&v124 - v37, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v22);
  v40 = *(v16 + 16);
  v150 = a1;
  v147 = v16 + 16;
  v146 = v40;
  v40(v21, a1, v15);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v149 = v15;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v125 = v22;
    v45 = v15;
    v46 = v44;
    v47 = swift_slowAlloc();
    v126 = v2;
    v48 = v47;
    *&v160 = v47;
    *v46 = 136315138;
    v49 = URL.absoluteString.getter();
    v124 = v23;
    v51 = v50;
    (*(v16 + 8))(v21, v45);
    v52 = sub_1000952D4(v49, v51, &v160);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v41, v42, "Got URI request: %s", v46, 0xCu);
    sub_100095808(v48);
    v2 = v126;

    v53 = v124[1];
    v54 = v125;
    v53(v38, v125);
  }

  else
  {

    (*(v16 + 8))(v21, v15);
    v53 = v23[1];
    v53(v38, v22);
    v54 = v22;
  }

  result = sub_1000D6828();
  if ((result & 1) == 0)
  {
    return result;
  }

  v56 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState;
  if (v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] <= 2u && !v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState])
  {

    goto LABEL_9;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {
LABEL_9:
    v58 = v148;
    v146(v148, v150, v149);
    result = sub_1000A2C54(v58, &v156);
    if (BYTE8(v157) != 2)
    {
      v160 = v156;
      v161 = v157;
      v162 = v158;
      v163 = v159;
      v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager__performingGeneralScan] = 1;
      v59 = type metadata accessor for AccessoryPairingToken();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      v62 = swift_allocObject();
      *(v62 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_hasAuth) = 0;
      *(v62 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_inUse) = 0;
      v63 = v62 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
      *(v63 + 48) = v163;
      v64 = v162;
      *(v63 + 16) = v161;
      *(v63 + 32) = v64;
      *v63 = v160;
      sub_1000E3C64(&v160, aBlock);
      UUID.init()();
      v65 = v134;
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v67 = v66;
      (*(v135 + 8))(v65, v136);
      v150 = v62;
      *(v62 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_timestamp) = v67;
      v68 = *(&v162 + 1);
      v149 = v162;
      v69 = sub_10014025C(v162, *(&v162 + 1));
      v71 = sub_100140998(v69, v70);
      if (v72 >> 60 == 15)
      {
        v73 = v130;
        v74 = v132;
        v75 = v131;
        (*(v130 + 56))(v132, 1, 1, v131);
        UUID.init()();
        if ((*(v73 + 48))(v74, 1, v75) != 1)
        {
          sub_100095C84(v74, &qword_1002A7AF0, &qword_10023C9D0);
        }
      }

      else
      {
        v80 = v132;
        v81 = v71;
        v82 = v72;
        sub_1001404A0(v71, v72, v132);
        sub_1000A452C(v81, v82);
        v83 = v130;
        v84 = v131;
        (*(v130 + 56))(v80, 0, 1, v131);
        (*(v83 + 32))(v133, v80, v84);
      }

      v85 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
      v86 = DockCoreInfo.init(type:name:identifier:)();
      v87 = v137;
      v152(v137, &v2[v151], v54);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v148 = v53;
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "Popping remote alert", v90, 2u);
        v53 = v148;
      }

      v53(v87, v54);
      sub_10014025C(v149, v68);

      sub_1001F29A8(&_swiftEmptyArrayStorage);

      v91 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
      if (*&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
      {
        v2[v56] = 1;
      }

      v92 = objc_allocWithZone(type metadata accessor for DKProxManager());
      v93 = v150;

      v94 = v86;
      v95 = v2;
      v96 = sub_1000EFAB4(v93, v94, 0, v95, v92);

      v149 = v94;

      v97 = *&v2[v91];
      *&v2[v91] = v96;

      sub_1000D7DEC(v93);
      v98 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_haptics;
      v99 = v2;
      v100 = v138;
      if (*&v95[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_haptics])
      {
        goto LABEL_25;
      }

      v101 = v2;
      v102 = v129;
      v152(v129, &v99[v151], v54);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Initializing haptics", v105, 2u);
        v102 = v129;
      }

      v53(v102, v54);
      type metadata accessor for DKHaptics();
      swift_allocObject();
      v106 = sub_1001B0840();
      v107 = *&v95[v98];
      *&v95[v98] = v106;

      v99 = v101;
      if (*&v95[v98])
      {
LABEL_25:
        v152(v100, &v99[v151], v54);

        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&_mh_execute_header, v108, v109, "Playing haptics...", v110, 2u);
        }

        v53(v100, v54);
        sub_1001B1680();
      }

      else
      {
        v111 = v127;
        v152(v127, &v101[v151], v54);
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&_mh_execute_header, v112, v113, "No haptics...", v114, 2u);
        }

        v53(v111, v54);
      }

      v115 = v149;
      v116 = *&v95[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v117 = swift_allocObject();
      *(v117 + 16) = v95;
      aBlock[4] = sub_1000E3CF8;
      aBlock[5] = v117;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_1002769A0;
      v118 = _Block_copy(aBlock);
      v119 = v95;
      v120 = v116;
      v121 = v139;
      static DispatchQoS.unspecified.getter();
      v154 = &_swiftEmptyArrayStorage;
      sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      v122 = v141;
      v123 = v144;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v118);

      sub_100095C84(&v156, &qword_1002A7AF8, &qword_10023C9D8);
      (*(v143 + 8))(v122, v123);
      (*(v140 + 8))(v121, v142);
    }

    return result;
  }

  v76 = v145;
  v152(v145, &v2[v151], v54);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v77, v78, "Ignoring URI request: a pairing session is already in progress", v79, 2u);
  }

  return (v53)(v76, v54);
}