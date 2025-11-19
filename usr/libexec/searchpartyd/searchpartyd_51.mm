uint64_t sub_100555EC8(uint64_t (*a1)(uint64_t a1), uint64_t a2, int a3, uint64_t a4, void (*a5)(char *, uint64_t), void *a6, uint64_t a7)
{
  v170 = a6;
  v169 = a5;
  v168 = a4;
  LODWORD(v167) = a3;
  v183 = a2;
  v157 = type metadata accessor for DispatchQoS.QoSClass();
  v156 = *(v157 - 8);
  v9 = *(v156 + 64);
  __chkstk_darwin(v157);
  v155 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for DispatchTime();
  v150 = *(v153 - 8);
  v11 = *(v150 + 64);
  v12 = __chkstk_darwin(v153);
  v148 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v149 = &v144 - v14;
  v172 = type metadata accessor for DispatchWorkItemFlags();
  v176 = *(v172 - 8);
  v15 = *(v176 + 64);
  __chkstk_darwin(v172);
  v171 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for DispatchQoS();
  v175 = *(v174 - 8);
  v17 = *(v175 + 64);
  __chkstk_darwin(v174);
  v173 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for SecureLocationsRelayAction(0);
  v161 = *(v160 - 8);
  v19 = *(v161 + 64);
  v20 = __chkstk_darwin(v160);
  v163 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v21;
  __chkstk_darwin(v20);
  v165 = (&v144 - v22);
  v164 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v23 = *(*(v164 - 8) + 64);
  v24 = __chkstk_darwin(v164);
  v151 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v166 = (&v144 - v26);
  v158 = type metadata accessor for MessagingOptions(0);
  v27 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v181 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v159 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v180 = &v144 - v33;
  v184 = type metadata accessor for UUID();
  v182 = *(v184 - 8);
  v34 = v182[8];
  v35 = __chkstk_darwin(v184);
  v152 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v179 = &v144 - v38;
  v147 = v39;
  __chkstk_darwin(v37);
  v154 = &v144 - v40;
  *&v186 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v41 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v185 = (&v144 - v42);
  v43 = type metadata accessor for SystemInfo.DeviceLockState();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v48 = &v144 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v50 = &v144 - v49;
  v51 = (a7 + *(type metadata accessor for ShareInstruction() + 28));
  LODWORD(v178) = *v51;
  v52 = *(v51 + 2);
  v177 = *(v51 + 1);
  v53 = sub_100B0F690(&off_101609530);
  v187 = a1;

  sub_100908F24(_swiftEmptyArrayStorage);

  v54 = sub_101129A8C(&off_101609558);
  static SystemInfo.lockState.getter();
  (*(v44 + 104))(v48, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v43);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v44 + 8);
  v55(v48, v43);
  v55(v50, v43);
  if (a1)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    v195 = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
LABEL_11:
    _BridgedStoredNSError.init(_:userInfo:)();
    v84 = v185;
    *v185 = aBlock;
    swift_storeEnumTagMultiPayload();
    sub_100557804(v84);

    return sub_10000B3A8(v84, &qword_10169F358, &qword_1013A0810);
  }

  v145 = v54;
  v146 = v53;
  v56 = v178;
  v57 = v177;
  v58 = v183;
  if ((sub_100540CB8(v178, v177, v52) & 1) == 0)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_101385D80;
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = sub_100008C00();
    *(v83 + 32) = v57;
    *(v83 + 40) = v52;

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    v195 = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    goto LABEL_11;
  }

  v185 = *(v58 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v59 = swift_allocObject();
  v186 = xmmword_101385D80;
  *(v59 + 16) = xmmword_101385D80;
  *(v59 + 32) = v56;
  *(v59 + 40) = v57;
  *(v59 + 48) = v52;
  v60 = v182;
  v61 = v182[7];
  v62 = v180;
  v63 = v184;
  v61(v180, 1, 1, v184);

  v64 = v179;
  UUID.init()();
  v65 = v181;
  v177 = v60[2];
  v178 = v60 + 2;
  v177(v181, v64, v63);
  v66 = v159;
  sub_1000D2A70(v62, v159, &qword_1016980D0, &unk_10138F3B0);
  v67 = v158;
  v68 = *(v158 + 28);
  v61(&v65[v68], 1, 1, v63);
  *&v65[v67[5]] = v59;
  v65[v67[6]] = 1;
  sub_10002311C(v66, &v65[v68], &qword_1016980D0, &unk_10138F3B0);
  v69 = &v65[v67[8]];
  *v69 = 0;
  v69[8] = 1;
  v65[v67[9]] = 0;
  *&v65[v67[10]] = v145;
  *&v65[v67[11]] = v146;
  v70 = &v65[v67[12]];
  *v70 = 0;
  v70[1] = 0;
  *&v65[v67[13]] = xmmword_1013B0D90;
  v71 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  v72 = v165;
  sub_10058B200(v65, v165 + *(v71 + 24), type metadata accessor for MessagingOptions);
  *v72 = v167;
  v73 = v169;
  *(v72 + 8) = v168;
  *(v72 + 16) = v73;
  v74 = v170;
  *(v72 + 24) = v170;
  *(v72 + 32) = xmmword_10138BBF0;
  swift_storeEnumTagMultiPayload();
  v75 = v163;
  sub_10058B200(v72, v163, type metadata accessor for SecureLocationsRelayAction);
  v76 = (*(v161 + 80) + 24) & ~*(v161 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = v185;
  sub_100589B28(v75, v77 + v76, type metadata accessor for SecureLocationsRelayAction);
  sub_100017D5C(v73, v74);

  v78 = v166;
  v79 = v188;
  unsafeFromAsyncTask<A>(_:)();
  v80 = v79;
  if (v79)
  {

    v81 = type metadata accessor for SecureLocationsRelayAction;
    v82 = v72;
  }

  else
  {
    sub_10058B268(v72, type metadata accessor for SecureLocationsRelayAction);

    v86 = v151;
    sub_10058B200(v78, v151, type metadata accessor for SecureLocationsRelayAction.Response);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v188 = 0;
      sub_10058B268(v78, type metadata accessor for SecureLocationsRelayAction.Response);
      v87 = v182;
      v88 = v182[1];
      v89 = v184;
      v170 = v182 + 1;
      v169 = v88;
      v88(v179, v184);
      sub_10000B3A8(v180, &qword_1016980D0, &unk_10138F3B0);
      sub_10058B268(v181, type metadata accessor for MessagingOptions);
      v90 = v87[4];
      v91 = v154;
      v185 = (v87 + 4);
      v181 = v90;
      (v90)(v154, v86, v89);
      v92 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
      v93 = *(v92 + 48);
      v94 = *(v92 + 52);
      swift_allocObject();
      v95 = Future.init()();
      static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v96 = swift_allocObject();
      *(v96 + 16) = v186;
      v97 = UUID.uuidString.getter();
      v99 = v98;
      *(v96 + 56) = &type metadata for String;
      *(v96 + 64) = sub_100008C00();
      *(v96 + 32) = v97;
      *(v96 + 40) = v99;
      os_log(_:dso:log:_:_:)();

      v100 = v91;
      v101 = v183;
      v180 = *(v183 + 168);
      v102 = v152;
      v177(v152, v100, v89);
      v103 = (*(v87 + 80) + 24) & ~*(v87 + 80);
      v182 = *(v87 + 80);
      v168 = v103 + v147;
      v104 = v103;
      *&v186 = v103;
      v105 = (v103 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
      v106 = swift_allocObject();
      *(v106 + 16) = v101;
      (v181)(v106 + v104, v102, v89);
      *(v106 + v105) = v95;
      v179 = v95;
      v193 = sub_10058D4DC;
      v194 = v106;
      aBlock = _NSConcreteStackBlock;
      v190 = 1107296256;
      v167 = &v191;
      v191 = sub_100006684;
      v192 = &unk_101627F08;
      v107 = _Block_copy(&aBlock);

      v108 = v173;
      static DispatchQoS.unspecified.getter();
      v195 = _swiftEmptyArrayStorage;
      v163 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      v162 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      v164 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v109 = v171;
      v110 = v172;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v107);
      v111 = *(v176 + 8);
      v176 += 8;
      v166 = v111;
      v111(v109, v110);
      v112 = *(v175 + 8);
      v175 += 8;
      v165 = v112;
      v112(v108, v174);

      v113 = v152;
      v114 = v184;
      v177(v152, v154, v184);
      v115 = swift_allocObject();
      *(v115 + 16) = v101;
      (v181)(v115 + v186, v113, v114);
      v116 = (v115 + v105);
      v117 = v187;
      *v116 = sub_100589610;
      v116[1] = v117;

      Future.addSuccess(block:)();

      v118 = swift_allocObject();
      *(v118 + 16) = sub_100589610;
      *(v118 + 24) = v117;

      Future.addFailure(block:)();

      v119 = v148;
      static DispatchTime.now()();
      v120 = v149;
      + infix(_:_:)();
      v161 = *(v150 + 8);
      (v161)(v119, v153);
      v121 = v113;
      v122 = v113;
      v123 = v184;
      v177(v122, v154, v184);
      v124 = swift_allocObject();
      *(v124 + 16) = v101;
      v125 = v121;
      v126 = v123;
      (v181)(v124 + v186, v125, v123);
      v193 = sub_10058D4E0;
      v194 = v124;
      aBlock = _NSConcreteStackBlock;
      v190 = 1107296256;
      v191 = sub_100006684;
      v192 = &unk_101627FA8;
      v127 = _Block_copy(&aBlock);

      v128 = v173;
      static DispatchQoS.unspecified.getter();
      v195 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v127);

      v166(v109, v110);
      v165(v128, v174);
      (v161)(v120, v153);
      v169(v154, v126);
    }

    sub_10058B268(v86, type metadata accessor for SecureLocationsRelayAction.Response);
    sub_10057C844();
    v80 = swift_allocError();
    swift_willThrow();
    v82 = v78;
    v81 = type metadata accessor for SecureLocationsRelayAction.Response;
  }

  sub_10058B268(v82, v81);
  v188 = 0;
  (v182[1])(v179, v184);
  sub_10000B3A8(v180, &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v181, type metadata accessor for MessagingOptions);
  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v129 = swift_allocObject();
  *(v129 + 16) = v186;
  aBlock = v80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v130 = String.init<A>(describing:)();
  v132 = v131;
  *(v129 + 56) = &type metadata for String;
  *(v129 + 64) = sub_100008C00();
  *(v129 + 32) = v130;
  *(v129 + 40) = v132;
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v133 = v156;
  v134 = v155;
  v135 = v80;
  v136 = v157;
  (*(v156 + 104))(v155, enum case for DispatchQoS.QoSClass.default(_:), v157);
  *&v186 = static OS_dispatch_queue.global(qos:)();
  (*(v133 + 8))(v134, v136);
  v137 = swift_allocObject();
  v138 = v187;
  v137[2] = sub_100589610;
  v137[3] = v138;
  v137[4] = v135;
  v193 = sub_10058D73C;
  v194 = v137;
  aBlock = _NSConcreteStackBlock;
  v190 = 1107296256;
  v191 = sub_100006684;
  v192 = &unk_101627EB8;
  v139 = _Block_copy(&aBlock);

  swift_errorRetain();
  v140 = v173;
  static DispatchQoS.unspecified.getter();
  v195 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v141 = v171;
  v142 = v172;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v143 = v186;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v139);

  (*(v176 + 8))(v141, v142);
  (*(v175 + 8))(v140, v174);
}

uint64_t sub_100557804(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v12 - v4);
  Transaction.capture()();
  sub_1000D2A70(a1, v5, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_10000B3A8(v5, &qword_10169F358, &qword_1013A0810);
  }

  v6 = *v5;
  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v12[1] = v6;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1005579E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v81 = a3;
  v88 = a2;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v74 - v7;
  v86 = type metadata accessor for DateInterval();
  v78 = *(v86 - 8);
  v9 = *(v78 + 64);
  __chkstk_darwin(v86);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v74 - v13;
  v15 = type metadata accessor for Date();
  v80 = *(v15 - 8);
  v16 = *(v80 + 64);
  v17 = __chkstk_darwin(v15);
  v74 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v74 - v20;
  v22 = __chkstk_darwin(v19);
  v82 = &v74 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v74 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v74 - v28;
  v30 = __chkstk_darwin(v27);
  v84 = &v74 - v31;
  v32 = __chkstk_darwin(v30);
  v85 = &v74 - v33;
  __chkstk_darwin(v32);
  v35 = &v74 - v34;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v36 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v37 = v89;
  v38 = sub_101073E88(v89);
  v87 = v35;
  static Date.trustedNow.getter(v35);
  sub_101073F30(v37);

  v79 = a1;
  v77 = v8;
  if (!v38)
  {
    v46 = v80;
    v48 = v85;
    v49 = v87;
    (*(v80 + 16))(v85, v87, v15);
    goto LABEL_16;
  }

  if (v38 == -1)
  {
    v39 = *(v75 + 144);
    v40 = type metadata accessor for OwnedBeaconRecord();
    v41 = *(v39 + 168);
    v42 = v81;
    v43 = v81 + *(v40 + 20);
    sub_100B2DA4C(v14);
    v44 = type metadata accessor for KeyAlignmentRecord();
    v45 = (*(*(v44 - 8) + 48))(v14, 1, v44);
    v46 = v80;
    if (v45 == 1)
    {
      sub_10000B3A8(v14, &qword_10169F328, &unk_1013CB040);
      (*(v46 + 16))(v29, v42 + *(v40 + 32), v15);
      v47 = *(v46 + 32);
    }

    else
    {
      (*(v80 + 16))(v26, &v14[*(v44 + 32)], v15);
      sub_10058B268(v14, type metadata accessor for KeyAlignmentRecord);
      v47 = *(v46 + 32);
      v47(v29, v26, v15);
    }

    v48 = v85;
    v47(v85, v29, v15);
  }

  else
  {
    if (v38 >= 1)
    {
      v48 = v85;
      v49 = v87;
      Date.addingTimeInterval(_:)();
      v46 = v80;
      goto LABEL_16;
    }

    v48 = v85;
    (*(v80 + 16))(v85, v87, v15);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_101385D80;
    *(v50 + 56) = &type metadata for Int;
    *(v50 + 64) = &protocol witness table for Int;
    *(v50 + 32) = v38;
    os_log(_:dso:log:_:_:)();

    v46 = v80;
  }

  v49 = v87;
LABEL_16:
  v51 = v84;
  Date.addingTimeInterval(_:)();
  v52 = *(v46 + 16);
  v53 = v82;
  v52(v82, v48, v15);
  v52(v21, v51, v15);
  DateInterval.init(start:end:)();
  v52(v53, v49, v15);
  v52(v21, v51, v15);
  DateInterval.init(start:end:)();
  LODWORD(v80) = static os_log_type_t.default.getter();
  v54 = v46;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v75 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10138B360;
  v56 = v81 + *(type metadata accessor for OwnedBeaconRecord() + 20);
  v57 = UUID.uuidString.getter();
  v59 = v58;
  *(v55 + 56) = &type metadata for String;
  v60 = sub_100008C00();
  *(v55 + 64) = v60;
  *(v55 + 32) = v57;
  *(v55 + 40) = v59;
  sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval);
  v61 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v55 + 96) = &type metadata for String;
  *(v55 + 104) = v60;
  *(v55 + 72) = v61;
  *(v55 + 80) = v62;
  v63 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v55 + 136) = &type metadata for String;
  *(v55 + 144) = v60;
  *(v55 + 112) = v63;
  *(v55 + 120) = v64;
  os_log(_:dso:log:_:_:)();

  v65 = v77;
  sub_1000D2A70(v76, v77, &unk_101696900, &unk_10138B1E0);
  if ((*(v54 + 48))(v65, 1, v15) == 1)
  {
    v66 = *(v54 + 8);
    v66(v84, v15);
    v66(v85, v15);
    v66(v87, v15);
    sub_10000B3A8(v65, &unk_101696900, &unk_10138B1E0);
    v67 = v83;
  }

  else
  {
    v68 = v74;
    (*(v54 + 32))(v74, v65, v15);
    v69 = v82;
    v67 = v83;
    DateInterval.end.getter();
    v70 = static Date.< infix(_:_:)();
    v71 = *(v54 + 8);
    v71(v69, v15);
    if (v70)
    {
      v52(v69, v68, v15);
      DateInterval.end.setter();
    }

    DateInterval.end.getter();
    v72 = static Date.< infix(_:_:)();
    v71(v69, v15);
    if (v72)
    {
      v52(v69, v68, v15);
      DateInterval.end.setter();
    }

    v71(v68, v15);
    v71(v84, v15);
    v71(v85, v15);
    v71(v87, v15);
  }

  return (*(v78 + 32))(v79, v67, v86);
}

uint64_t sub_1005583F4(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 144);
  v11 = a1 + *(type metadata accessor for ShareInstruction() + 24);
  v70 = type metadata accessor for OwnedBeaconRecord();
  v74 = v70;
  v61 = sub_100003DFC(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v75 = v61;
  v12 = sub_1000280DC(v73);
  v76 = v11;
  sub_10058B200(v11, v12, type metadata accessor for OwnedBeaconRecord);
  v60 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
  v13 = *(v10 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  v14 = type metadata accessor for BeaconKeyManager(0);
  v65 = v10;
  v63 = v14;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v57 = v3;
  v15 = v71;
  sub_10001F280(v73, &v71);
  v16 = *(v7 + 16);
  v67 = a2;
  v59 = v7 + 16;
  v58 = v16;
  v16(v9, a2, v6);
  v17 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v18 = v17 + v8;
  v19 = v17 + v8 + 2;
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  sub_100031694(&v71, v20 + 24);
  v21 = *(v7 + 32);
  v62 = v17;
  v22 = v20 + v17;
  v23 = v21;
  v66 = v9;
  v68 = v6;
  v21(v22, v9, v6);
  *(v20 + v18) = 0;
  v64 = v19;
  *(v20 + v19) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v69 = *(&v71 + 1);
  v24 = v71;
  v25 = v72;
  sub_100007BAC(v73);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      sub_100359088(v24, v69, 2u);
    }

    static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
      goto LABEL_10;
    }

LABEL_22:
    swift_once();
LABEL_10:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    v35 = v76 + *(v70 + 20);
    v36 = UUID.uuidString.getter();
    v38 = v37;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100008C00();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    os_log(_:dso:log:_:_:)();

    sub_100589AD4();
    swift_allocError();
    return swift_willThrow();
  }

  if (!v25)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    v27 = v76 + *(v70 + 20);
    v28 = UUID.uuidString.getter();
    v30 = v29;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    os_log(_:dso:log:_:_:)();

    sub_100589AD4();
    swift_allocError();
    swift_willThrow();
    v31 = v24;
    v32 = v69;
    return sub_100359088(v31, v32, 0);
  }

  v56 = v24;
  v55 = v18 + 1;
  v74 = v70;
  v75 = v61;
  v39 = sub_1000280DC(v73);
  sub_10058B200(v76, v39, type metadata accessor for OwnedBeaconRecord);
  v40 = *(v65 + v60);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v41 = v71;
  sub_10001F280(v73, &v71);
  v42 = v66;
  v43 = v68;
  v58(v66, v67, v68);
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  sub_100031694(&v71, v44 + 24);
  v23(v44 + v62, v42, v43);
  *(v44 + v18) = 1;
  *(v44 + v55) = 0;
  *(v44 + v64) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v45 = v71;
  v46 = v72;
  sub_100007BAC(v73);
  if (v46 > 1)
  {
    v52 = v46 == 2;
    v53 = v56;
    if (v52)
    {
      sub_100359088(v45, *(&v45 + 1), 2u);
    }

    sub_100359088(v53, v69, 1u);
    static os_log_type_t.default.getter();
    if (qword_101695030 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  result = v56;
  if (!v46)
  {
    sub_100359088(v56, v69, 1u);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101385D80;
    v48 = v76 + *(v70 + 20);
    v49 = UUID.uuidString.getter();
    v51 = v50;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_100008C00();
    *(v47 + 32) = v49;
    *(v47 + 40) = v51;
    os_log(_:dso:log:_:_:)();

    sub_100589AD4();
    swift_allocError();
    swift_willThrow();
    v32 = v45 >> 64;
    v31 = v45;
    return sub_100359088(v31, v32, 0);
  }

  return result;
}

uint64_t sub_100558C80(uint64_t (*a1)(uint64_t a1), uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t a1))
{
  v156 = a8;
  v140 = a6;
  v139 = a5;
  v138 = a4;
  LODWORD(v137) = a3;
  v129 = type metadata accessor for DispatchQoS.QoSClass();
  v128 = *(v129 - 1);
  v11 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DispatchTime();
  v126 = *(v130 - 8);
  v13 = *(v126 + 64);
  v14 = __chkstk_darwin(v130);
  v124 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = &v121 - v16;
  v142 = type metadata accessor for DispatchWorkItemFlags();
  v149 = *(v142 - 8);
  v17 = *(v149 + 64);
  __chkstk_darwin(v142);
  v141 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v148 = *(v145 - 8);
  v19 = *(v148 + 64);
  __chkstk_darwin(v145);
  v144 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for MessagingOptions(0);
  v21 = *(*(v136 - 1) + 8);
  __chkstk_darwin(v136);
  v132 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v133 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v135 = &v121 - v27;
  v152 = type metadata accessor for UUID();
  v147 = *(v152 - 8);
  v28 = *(v147 + 64);
  v29 = __chkstk_darwin(v152);
  v143 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v134 = (&v121 - v32);
  v123 = v33;
  __chkstk_darwin(v31);
  v146 = &v121 - v34;
  *&v155 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v35 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v154 = (&v121 - v36);
  v37 = type metadata accessor for SystemInfo.DeviceLockState();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v42 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v121 - v43;
  sub_100695608(a7);

  v45 = v156 + *(type metadata accessor for ShareInstruction() + 28);
  LODWORD(v151) = *v45;
  v46 = *(v45 + 2);
  v150 = *(v45 + 1);
  v153 = a2;
  v131 = *(*(a2 + 320) + 16);
  v47 = sub_100B0F690(&off_101609580);
  v156 = a1;

  v48 = sub_101129A8C(_swiftEmptyArrayStorage);
  static SystemInfo.lockState.getter();
  (*(v38 + 104))(v42, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v37);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v38 + 8);
  v49(v42, v37);
  v49(v44, v37);
  if (a2)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    v164 = 5;
LABEL_13:
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v82 = v154;
    *v154 = aBlock;
    swift_storeEnumTagMultiPayload();
    sub_100557804(v82);

    return sub_10000B3A8(v82, &qword_10169F358, &qword_1013A0810);
  }

  v121 = v48;
  v122 = v47;
  v50 = v151;
  v51 = v150;
  v52 = v153;
  v53 = v46;
  if ((sub_100540CB8(v151, v150, v46) & 1) == 0)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_101385D80;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 64) = sub_100008C00();
    *(v81 + 32) = v51;
    *(v81 + 40) = v46;

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    v164 = 12;
    goto LABEL_13;
  }

  v154 = *(v52 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v54 = swift_allocObject();
  v155 = xmmword_101385D80;
  *(v54 + 16) = xmmword_101385D80;
  *(v54 + 32) = v50;
  *(v54 + 40) = v51;
  *(v54 + 48) = v53;
  v55 = *(v147 + 56);
  v56 = v135;
  v57 = v152;
  v55(v135, 1, 1, v152);

  v58 = v132;
  UUID.init()();
  v59 = v133;
  sub_1000D2A70(v56, v133, &qword_1016980D0, &unk_10138F3B0);
  v60 = v136;
  v61 = *(v136 + 7);
  v55((v58 + v61), 1, 1, v57);
  *(v58 + v60[5]) = v54;
  *(v58 + v60[6]) = 1;
  sub_10002311C(v59, v58 + v61, &qword_1016980D0, &unk_10138F3B0);
  v62 = v58 + v60[8];
  *v62 = v131;
  *(v62 + 8) = 0;
  *(v58 + v60[9]) = 0;
  *(v58 + v60[10]) = v122;
  *(v58 + v60[11]) = v121;
  v63 = (v58 + v60[12]);
  *v63 = 0;
  v63[1] = 0;
  *(v58 + v60[13]) = xmmword_1013B0D90;
  v64 = v134;
  v65 = v157;
  sub_1010A6F88(v137, v138, v139, v140, v58, v134);
  if (v65)
  {
    sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v58, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v66 = swift_allocObject();
    *(v66 + 16) = v155;
    aBlock = v65;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v67 = String.init<A>(describing:)();
    v69 = v68;
    *(v66 + 56) = &type metadata for String;
    *(v66 + 64) = sub_100008C00();
    *(v66 + 32) = v67;
    *(v66 + 40) = v69;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v70 = v128;
    v71 = v127;
    v72 = v129;
    (*(v128 + 104))(v127, enum case for DispatchQoS.QoSClass.default(_:), v129);
    v157 = static OS_dispatch_queue.global(qos:)();
    (*(v70 + 8))(v71, v72);
    v73 = swift_allocObject();
    v74 = v156;
    v73[2] = sub_100589BF0;
    v73[3] = v74;
    v73[4] = v65;
    v162 = sub_10058D73C;
    v163 = v73;
    aBlock = _NSConcreteStackBlock;
    v159 = 1107296256;
    v160 = sub_100006684;
    v161 = &unk_1016282C8;
    v75 = _Block_copy(&aBlock);

    swift_errorRetain();
    v76 = v144;
    static DispatchQoS.unspecified.getter();
    v164 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v77 = v141;
    v78 = v142;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v79 = v157;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v75);

    (*(v149 + 8))(v77, v78);
    (*(v148 + 8))(v76, v145);
  }

  else
  {
    v157 = 0;
    sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v58, type metadata accessor for MessagingOptions);
    v84 = v146;
    v83 = v147;
    v85 = *(v147 + 32);
    v86 = v152;
    v154 = (v147 + 32);
    v151 = v85;
    v85(v146, v64, v152);
    v87 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    swift_allocObject();
    v90 = Future.init()();
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v91 = swift_allocObject();
    *(v91 + 16) = v155;
    v92 = UUID.uuidString.getter();
    v94 = v93;
    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = sub_100008C00();
    *(v91 + 32) = v92;
    *(v91 + 40) = v94;
    os_log(_:dso:log:_:_:)();

    v95 = v153;
    *&v155 = *(v153 + 168);
    v129 = *(v83 + 16);
    v150 = v83 + 16;
    v96 = v143;
    (v129)(v143, v84, v86);
    v97 = (*(v83 + 80) + 24) & ~*(v83 + 80);
    v139 = *(v83 + 80);
    v137 = v97 + v123;
    v98 = v97;
    v140 = v97;
    v99 = (v97 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    *(v100 + 16) = v95;
    v151(v100 + v98, v96, v86);
    *(v100 + v99) = v90;
    v138 = v90;
    v162 = sub_10058D4DC;
    v163 = v100;
    aBlock = _NSConcreteStackBlock;
    v159 = 1107296256;
    v136 = &v160;
    v160 = sub_100006684;
    v161 = &unk_101628318;
    v101 = _Block_copy(&aBlock);

    v102 = v144;
    static DispatchQoS.unspecified.getter();
    v164 = _swiftEmptyArrayStorage;
    v132 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v131 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v133 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v103 = v141;
    v104 = v142;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v101);
    v105 = *(v149 + 8);
    v149 += 8;
    v135 = v105;
    (v105)(v103, v104);
    v106 = *(v148 + 8);
    v148 += 8;
    v134 = v106;
    (v106)(v102, v145);

    v107 = v143;
    v108 = v152;
    v109 = v129;
    (v129)(v143, v146, v152);
    v110 = swift_allocObject();
    *(v110 + 16) = v95;
    v151(v110 + v140, v107, v108);
    v111 = (v110 + v99);
    v112 = v156;
    *v111 = sub_100589BF0;
    v111[1] = v112;

    Future.addSuccess(block:)();

    v113 = swift_allocObject();
    *(v113 + 16) = sub_100589BF0;
    *(v113 + 24) = v112;

    Future.addFailure(block:)();

    v114 = v124;
    static DispatchTime.now()();
    v115 = v125;
    + infix(_:_:)();
    v128 = *(v126 + 8);
    (v128)(v114, v130);
    v116 = v143;
    v117 = v152;
    v109(v143, v146, v152);
    v118 = swift_allocObject();
    *(v118 + 16) = v95;
    v151(v118 + v140, v116, v117);
    v162 = sub_10058D4E0;
    v163 = v118;
    aBlock = _NSConcreteStackBlock;
    v159 = 1107296256;
    v160 = sub_100006684;
    v161 = &unk_1016283B8;
    v119 = _Block_copy(&aBlock);

    v120 = v144;
    static DispatchQoS.unspecified.getter();
    v164 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v119);

    (v135)(v103, v104);
    (v134)(v120, v145);
    (v128)(v115, v130);
    (*(v147 + 8))(v146, v117);
  }
}

uint64_t sub_10055A1EC(uint64_t (*a1)(uint64_t a1), uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t a1))
{
  v156 = a8;
  v140 = a6;
  v139 = a5;
  v138 = a4;
  LODWORD(v137) = a3;
  v129 = type metadata accessor for DispatchQoS.QoSClass();
  v128 = *(v129 - 1);
  v11 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DispatchTime();
  v126 = *(v130 - 8);
  v13 = *(v126 + 64);
  v14 = __chkstk_darwin(v130);
  v124 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = &v121 - v16;
  v142 = type metadata accessor for DispatchWorkItemFlags();
  v149 = *(v142 - 8);
  v17 = *(v149 + 64);
  __chkstk_darwin(v142);
  v141 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v148 = *(v145 - 8);
  v19 = *(v148 + 64);
  __chkstk_darwin(v145);
  v144 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for MessagingOptions(0);
  v21 = *(*(v136 - 1) + 8);
  __chkstk_darwin(v136);
  v132 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v133 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v135 = &v121 - v27;
  v152 = type metadata accessor for UUID();
  v147 = *(v152 - 8);
  v28 = *(v147 + 64);
  v29 = __chkstk_darwin(v152);
  v143 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v134 = (&v121 - v32);
  v123 = v33;
  __chkstk_darwin(v31);
  v146 = &v121 - v34;
  *&v155 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v35 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v154 = (&v121 - v36);
  v37 = type metadata accessor for SystemInfo.DeviceLockState();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v42 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v121 - v43;
  sub_100695608(a7);

  v45 = v156 + *(type metadata accessor for ShareInstruction() + 28);
  LODWORD(v151) = *v45;
  v46 = *(v45 + 2);
  v150 = *(v45 + 1);
  v153 = a2;
  v131 = *(*(a2 + 320) + 16);
  v47 = sub_100B0F690(&off_1016095A8);
  v156 = a1;

  v48 = sub_101129A8C(_swiftEmptyArrayStorage);
  static SystemInfo.lockState.getter();
  (*(v38 + 104))(v42, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v37);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v38 + 8);
  v49(v42, v37);
  v49(v44, v37);
  if (a2)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    v164 = 5;
LABEL_13:
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v82 = v154;
    *v154 = aBlock;
    swift_storeEnumTagMultiPayload();
    sub_100557804(v82);

    return sub_10000B3A8(v82, &qword_10169F358, &qword_1013A0810);
  }

  v121 = v48;
  v122 = v47;
  v50 = v151;
  v51 = v150;
  v52 = v153;
  v53 = v46;
  if ((sub_100540CB8(v151, v150, v46) & 1) == 0)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_101385D80;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 64) = sub_100008C00();
    *(v81 + 32) = v51;
    *(v81 + 40) = v46;

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    v164 = 12;
    goto LABEL_13;
  }

  v154 = *(v52 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v54 = swift_allocObject();
  v155 = xmmword_101385D80;
  *(v54 + 16) = xmmword_101385D80;
  *(v54 + 32) = v50;
  *(v54 + 40) = v51;
  *(v54 + 48) = v53;
  v55 = *(v147 + 56);
  v56 = v135;
  v57 = v152;
  v55(v135, 1, 1, v152);

  v58 = v132;
  UUID.init()();
  v59 = v133;
  sub_1000D2A70(v56, v133, &qword_1016980D0, &unk_10138F3B0);
  v60 = v136;
  v61 = *(v136 + 7);
  v55((v58 + v61), 1, 1, v57);
  *(v58 + v60[5]) = v54;
  *(v58 + v60[6]) = 1;
  sub_10002311C(v59, v58 + v61, &qword_1016980D0, &unk_10138F3B0);
  v62 = v58 + v60[8];
  *v62 = v131;
  *(v62 + 8) = 0;
  *(v58 + v60[9]) = 0;
  *(v58 + v60[10]) = v122;
  *(v58 + v60[11]) = v121;
  v63 = (v58 + v60[12]);
  *v63 = 0;
  v63[1] = 0;
  *(v58 + v60[13]) = xmmword_1013B0D90;
  v64 = v134;
  v65 = v157;
  sub_1010A6F88(v137, v138, v139, v140, v58, v134);
  if (v65)
  {
    sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v58, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v66 = swift_allocObject();
    *(v66 + 16) = v155;
    aBlock = v65;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v67 = String.init<A>(describing:)();
    v69 = v68;
    *(v66 + 56) = &type metadata for String;
    *(v66 + 64) = sub_100008C00();
    *(v66 + 32) = v67;
    *(v66 + 40) = v69;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v70 = v128;
    v71 = v127;
    v72 = v129;
    (*(v128 + 104))(v127, enum case for DispatchQoS.QoSClass.default(_:), v129);
    v157 = static OS_dispatch_queue.global(qos:)();
    (*(v70 + 8))(v71, v72);
    v73 = swift_allocObject();
    v74 = v156;
    v73[2] = sub_1005897F4;
    v73[3] = v74;
    v73[4] = v65;
    v162 = sub_10058D73C;
    v163 = v73;
    aBlock = _NSConcreteStackBlock;
    v159 = 1107296256;
    v160 = sub_100006684;
    v161 = &unk_101628138;
    v75 = _Block_copy(&aBlock);

    swift_errorRetain();
    v76 = v144;
    static DispatchQoS.unspecified.getter();
    v164 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v77 = v141;
    v78 = v142;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v79 = v157;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v75);

    (*(v149 + 8))(v77, v78);
    (*(v148 + 8))(v76, v145);
  }

  else
  {
    v157 = 0;
    sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v58, type metadata accessor for MessagingOptions);
    v84 = v146;
    v83 = v147;
    v85 = *(v147 + 32);
    v86 = v152;
    v154 = (v147 + 32);
    v151 = v85;
    v85(v146, v64, v152);
    v87 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    swift_allocObject();
    v90 = Future.init()();
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v91 = swift_allocObject();
    *(v91 + 16) = v155;
    v92 = UUID.uuidString.getter();
    v94 = v93;
    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = sub_100008C00();
    *(v91 + 32) = v92;
    *(v91 + 40) = v94;
    os_log(_:dso:log:_:_:)();

    v95 = v153;
    *&v155 = *(v153 + 168);
    v129 = *(v83 + 16);
    v150 = v83 + 16;
    v96 = v143;
    (v129)(v143, v84, v86);
    v97 = (*(v83 + 80) + 24) & ~*(v83 + 80);
    v139 = *(v83 + 80);
    v137 = v97 + v123;
    v98 = v97;
    v140 = v97;
    v99 = (v97 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    *(v100 + 16) = v95;
    v151(v100 + v98, v96, v86);
    *(v100 + v99) = v90;
    v138 = v90;
    v162 = sub_10058D4DC;
    v163 = v100;
    aBlock = _NSConcreteStackBlock;
    v159 = 1107296256;
    v136 = &v160;
    v160 = sub_100006684;
    v161 = &unk_101628188;
    v101 = _Block_copy(&aBlock);

    v102 = v144;
    static DispatchQoS.unspecified.getter();
    v164 = _swiftEmptyArrayStorage;
    v132 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v131 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v133 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v103 = v141;
    v104 = v142;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v101);
    v105 = *(v149 + 8);
    v149 += 8;
    v135 = v105;
    (v105)(v103, v104);
    v106 = *(v148 + 8);
    v148 += 8;
    v134 = v106;
    (v106)(v102, v145);

    v107 = v143;
    v108 = v152;
    v109 = v129;
    (v129)(v143, v146, v152);
    v110 = swift_allocObject();
    *(v110 + 16) = v95;
    v151(v110 + v140, v107, v108);
    v111 = (v110 + v99);
    v112 = v156;
    *v111 = sub_1005897F4;
    v111[1] = v112;

    Future.addSuccess(block:)();

    v113 = swift_allocObject();
    *(v113 + 16) = sub_1005897F4;
    *(v113 + 24) = v112;

    Future.addFailure(block:)();

    v114 = v124;
    static DispatchTime.now()();
    v115 = v125;
    + infix(_:_:)();
    v128 = *(v126 + 8);
    (v128)(v114, v130);
    v116 = v143;
    v117 = v152;
    v109(v143, v146, v152);
    v118 = swift_allocObject();
    *(v118 + 16) = v95;
    v151(v118 + v140, v116, v117);
    v162 = sub_10058D4E0;
    v163 = v118;
    aBlock = _NSConcreteStackBlock;
    v159 = 1107296256;
    v160 = sub_100006684;
    v161 = &unk_101628228;
    v119 = _Block_copy(&aBlock);

    v120 = v144;
    static DispatchQoS.unspecified.getter();
    v164 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v119);

    (v135)(v103, v104);
    (v134)(v120, v145);
    (v128)(v115, v130);
    (*(v147 + 8))(v146, v117);
  }
}

uint64_t sub_10055B758(uint64_t a1, void *a2, uint64_t a3)
{
  v217 = a2;
  *&v218 = a3;
  v209 = type metadata accessor for DispatchQoS.QoSClass();
  v208 = *(v209 - 1);
  v4 = *(v208 + 64);
  __chkstk_darwin(v209);
  v207 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for DispatchTime();
  v180 = *(v181 - 8);
  v6 = *(v180 + 64);
  v7 = __chkstk_darwin(v181);
  v178 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v179 = &v164 - v9;
  v211 = type metadata accessor for DispatchWorkItemFlags();
  v216 = *(v211 - 8);
  v10 = *(v216 + 64);
  __chkstk_darwin(v211);
  v210 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for DispatchQoS();
  v215 = *(v213 - 8);
  v12 = *(v215 + 64);
  __chkstk_darwin(v213);
  v212 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for SecureLocationsRelayAction(0);
  v187 = *(v186 - 8);
  v14 = *(v187 + 64);
  v15 = __chkstk_darwin(v186);
  v189 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v16;
  __chkstk_darwin(v15);
  v190 = &v164 - v17;
  v191 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v18 = *(*(v191 - 8) + 64);
  v19 = __chkstk_darwin(v191);
  v182 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v192 = &v164 - v21;
  v185 = type metadata accessor for MessagingOptions(0);
  v22 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v193 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v184 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v195 = &v164 - v28;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v177 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v194 = &v164 - v34;
  __chkstk_darwin(v33);
  v183 = &v164 - v35;
  v197 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v36 = *(*(v197 - 8) + 64);
  __chkstk_darwin(v197);
  v198 = (&v164 - v37);
  v204 = type metadata accessor for SystemInfo.DeviceLockState();
  v203 = *(v204 - 8);
  v38 = *(v203 + 64);
  v39 = __chkstk_darwin(v204);
  v202 = &v164 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v201 = &v164 - v41;
  v42 = type metadata accessor for SharedBeaconRecord(0);
  v199 = *(v42 - 1);
  v43 = *(v199 + 8);
  v44 = __chkstk_darwin(v42);
  v214 = (&v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v200 = (&v164 - v45);
  MyAccessoryFamilyShareResponseEnvelope = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0);
  v47 = MyAccessoryFamilyShareResponseEnvelope - 8;
  v48 = *(*(MyAccessoryFamilyShareResponseEnvelope - 8) + 64);
  v49 = __chkstk_darwin(MyAccessoryFamilyShareResponseEnvelope);
  v51 = &v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v53 = &v164 - v52;
  v54 = v42[5];
  v196 = v30;
  v55 = *(v30 + 16);
  v55(&v164 - v52, a1 + v54, v29);
  v56 = v42[6];
  v57 = &v53[*(v47 + 28)];
  v205 = a1;
  v55(v57, a1 + v56, v29);
  sub_10058B200(v53, v51, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  sub_10053A6CC(2, 2, v51, &aBlock);
  v165 = 0;
  v164 = v31;
  v168 = v55;
  v169 = v30 + 16;
  v173 = v29;
  v174 = v53;
  v167 = aBlock;
  v166 = v221;
  v175 = v222;
  v176 = v223;
  v58 = (v205 + v42[7]);
  v172 = *v58;
  v60 = *(v58 + 1);
  v59 = *(v58 + 2);
  v171 = v60;
  v170 = v59;
  v61 = v200;
  sub_10058B200(v205, v200, type metadata accessor for SharedBeaconRecord);
  sub_10058B200(v61, v214, type metadata accessor for SharedBeaconRecord);
  v62 = (*(v199 + 80) + 24) & ~*(v199 + 80);
  v63 = swift_allocObject();
  v64 = v206;
  *(v63 + 16) = v206;
  sub_100589B28(v61, v63 + v62, type metadata accessor for SharedBeaconRecord);
  v205 = v63;
  v65 = (v63 + ((v43 + v62 + 7) & 0xFFFFFFFFFFFFFFF8));
  v67 = v217;
  v66 = v218;
  *v65 = v217;
  v65[1] = v66;

  sub_100908F24(_swiftEmptyArrayStorage);

  v200 = sub_101129A8C(&off_1016095D0);
  v68 = sub_101129A8C(_swiftEmptyArrayStorage);
  v69 = v201;
  static SystemInfo.lockState.getter();
  v70 = v203;
  v71 = v202;
  v72 = v204;
  (*(v203 + 104))(v202, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v204);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v62) = dispatch thunk of static Equatable.== infix(_:_:)();
  v73 = *(v70 + 8);
  v73(v71, v72);
  v73(v69, v72);
  v74 = v64;
  if ((v62 & 1) == 0)
  {
    v80 = v200;
    v204 = v68;
    v81 = v172;
    v82 = v171;
    v83 = v170;
    if ((sub_100540CB8(v172, v171, v170) & 1) == 0)
    {

      static os_log_type_t.error.getter();
      v106 = v174;
      v107 = v175;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_101385D80;
      *(v108 + 56) = &type metadata for String;
      *(v108 + 64) = sub_100008C00();
      *(v108 + 32) = v82;
      *(v108 + 40) = v83;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v219 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v109 = v198;
      *v198 = aBlock;
      swift_storeEnumTagMultiPayload();
      v78 = v214;
      sub_10055D864(v109, v74, v214, v67, v66);

      sub_100016590(v107, v176);
      sub_10000B3A8(v109, &qword_10169F358, &qword_1013A0810);
      v79 = v106;
      goto LABEL_11;
    }

    v217 = *(v74 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v84 = swift_allocObject();
    v218 = xmmword_101385D80;
    *(v84 + 16) = xmmword_101385D80;
    *(v84 + 32) = v81;
    *(v84 + 40) = v82;
    *(v84 + 48) = v83;
    v85 = *(v196 + 56);
    v86 = v195;
    v87 = v173;
    v85(v195, 1, 1, v173);

    v88 = v194;
    UUID.init()();
    v89 = v193;
    v168(v193, v88, v87);
    v90 = v184;
    sub_1000D2A70(v86, v184, &qword_1016980D0, &unk_10138F3B0);
    v91 = v185;
    v92 = *(v185 + 28);
    v85(v89 + v92, 1, 1, v87);
    *(v89 + v91[5]) = v84;
    *(v89 + v91[6]) = 1;
    sub_10002311C(v90, v89 + v92, &qword_1016980D0, &unk_10138F3B0);
    v93 = v89 + v91[8];
    *v93 = 0;
    *(v93 + 8) = 1;
    *(v89 + v91[9]) = 0;
    *(v89 + v91[10]) = v80;
    *(v89 + v91[11]) = v204;
    v94 = (v89 + v91[12]);
    *v94 = 0;
    v94[1] = 0;
    *(v89 + v91[13]) = xmmword_1013B0D90;
    v95 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v96 = v190;
    sub_10058B200(v89, &v190[*(v95 + 24)], type metadata accessor for MessagingOptions);
    *v96 = v167;
    v97 = v175;
    *(v96 + 8) = v166;
    *(v96 + 16) = v97;
    v98 = v176;
    *(v96 + 24) = v176;
    *(v96 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v99 = v189;
    sub_10058B200(v96, v189, type metadata accessor for SecureLocationsRelayAction);
    v100 = (*(v187 + 80) + 24) & ~*(v187 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = v217;
    sub_100589B28(v99, v101 + v100, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v97, v98);

    v102 = v192;
    v103 = v165;
    unsafeFromAsyncTask<A>(_:)();
    if (v103)
    {
      v104 = v103;

      sub_10058B268(v96, type metadata accessor for SecureLocationsRelayAction);
      v105 = v205;
    }

    else
    {
      v110 = v206;
      sub_10058B268(v96, type metadata accessor for SecureLocationsRelayAction);

      v111 = v182;
      sub_10058B200(v102, v182, type metadata accessor for SecureLocationsRelayAction.Response);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v105 = v205;
      if (EnumCaseMultiPayload == 4)
      {
        sub_10058B268(v102, type metadata accessor for SecureLocationsRelayAction.Response);
        v113 = v196;
        v114 = *(v196 + 8);
        v115 = v173;
        v203 = v196 + 8;
        v202 = v114;
        (v114)(v194, v173);
        sub_10000B3A8(v195, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v89, type metadata accessor for MessagingOptions);
        v116 = *(v113 + 32);
        v117 = v183;
        v217 = (v113 + 32);
        v209 = v116;
        v116(v183, v111, v115);
        v118 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v119 = *(v118 + 48);
        v120 = *(v118 + 52);
        swift_allocObject();
        v121 = Future.init()();
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v122 = swift_allocObject();
        *(v122 + 16) = v218;
        v123 = UUID.uuidString.getter();
        v125 = v124;
        *(v122 + 56) = &type metadata for String;
        *(v122 + 64) = sub_100008C00();
        *(v122 + 32) = v123;
        *(v122 + 40) = v125;
        os_log(_:dso:log:_:_:)();

        v126 = v110;
        *&v218 = *(v110 + 168);
        v127 = v177;
        v168(v177, v117, v115);
        v128 = (*(v113 + 80) + 24) & ~*(v113 + 80);
        v207 = *(v113 + 80);
        v201 = (v128 + v164);
        v129 = v128;
        v208 = v128;
        v130 = (v128 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
        v131 = swift_allocObject();
        *(v131 + 16) = v126;
        v209(v131 + v129, v127, v115);
        *(v131 + v130) = v121;
        v224 = sub_10058D4DC;
        v225 = v131;
        aBlock = _NSConcreteStackBlock;
        v221 = 1107296256;
        v200 = &v222;
        v222 = sub_100006684;
        v223 = &unk_101629C90;
        v132 = _Block_copy(&aBlock);

        v204 = v121;
        v133 = v212;
        static DispatchQoS.unspecified.getter();
        v219 = _swiftEmptyArrayStorage;
        v196 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v195 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v197 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v134 = v210;
        v135 = v211;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v132);
        v136 = *(v216 + 8);
        v216 += 8;
        v199 = v136;
        v136(v134, v135);
        v137 = *(v215 + 8);
        v215 += 8;
        v198 = v137;
        v137(v133, v213);

        v138 = v173;
        v168(v127, v183, v173);
        v139 = swift_allocObject();
        *(v139 + 16) = v126;
        v209(v139 + v208, v127, v138);
        v140 = (v139 + v130);
        v141 = v205;
        *v140 = sub_10058BCBC;
        v140[1] = v141;

        Future.addSuccess(block:)();

        v142 = swift_allocObject();
        *(v142 + 16) = sub_10058BCBC;
        *(v142 + 24) = v141;

        Future.addFailure(block:)();

        v143 = v178;
        static DispatchTime.now()();
        v144 = v179;
        + infix(_:_:)();
        v194 = *(v180 + 8);
        v145 = v181;
        (v194)(v143, v181);
        v168(v127, v183, v138);
        v146 = swift_allocObject();
        *(v146 + 16) = v126;
        v209(v146 + v208, v127, v138);
        v224 = sub_10058D4E0;
        v225 = v146;
        aBlock = _NSConcreteStackBlock;
        v221 = 1107296256;
        v222 = sub_100006684;
        v223 = &unk_101629D30;
        v147 = _Block_copy(&aBlock);

        v148 = v212;
        static DispatchQoS.unspecified.getter();
        v219 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v147);

        sub_100016590(v175, v176);
        v199(v134, v135);
        v198(v148, v213);
        (v194)(v144, v145);
        (v202)(v183, v138);
        goto LABEL_20;
      }

      sub_10058B268(v111, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v104 = swift_allocError();
      swift_willThrow();
      sub_10058B268(v102, type metadata accessor for SecureLocationsRelayAction.Response);
    }

    v149 = v195;
    (*(v196 + 8))(v194, v173);
    sub_10000B3A8(v149, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v89, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v150 = swift_allocObject();
    *(v150 + 16) = v218;
    aBlock = v104;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v151 = String.init<A>(describing:)();
    v153 = v152;
    *(v150 + 56) = &type metadata for String;
    *(v150 + 64) = sub_100008C00();
    *(v150 + 32) = v151;
    *(v150 + 40) = v153;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v154 = v208;
    v155 = v207;
    v156 = v209;
    (*(v208 + 104))(v207, enum case for DispatchQoS.QoSClass.default(_:), v209);
    v157 = static OS_dispatch_queue.global(qos:)();
    (*(v154 + 8))(v155, v156);
    v158 = swift_allocObject();
    v158[2] = sub_10058BCBC;
    v158[3] = v105;
    v158[4] = v104;
    v224 = sub_10058D73C;
    v225 = v158;
    aBlock = _NSConcreteStackBlock;
    v221 = 1107296256;
    v222 = sub_100006684;
    v223 = &unk_101629C40;
    v159 = _Block_copy(&aBlock);

    swift_errorRetain();
    v160 = v212;
    static DispatchQoS.unspecified.getter();
    v219 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v162 = v210;
    v161 = v211;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v159);

    sub_100016590(v175, v176);
    (*(v216 + 8))(v162, v161);
    (*(v215 + 8))(v160, v213);
LABEL_20:
    sub_10058B268(v174, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);

    v78 = v214;
    return sub_10058B268(v78, type metadata accessor for SharedBeaconRecord);
  }

  v75 = v176;

  static os_log_type_t.error.getter();
  v76 = v174;
  v77 = v198;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for SPOwnerSessionError(0);
  v219 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v77 = aBlock;
  swift_storeEnumTagMultiPayload();
  v78 = v214;
  sub_10055D864(v77, v74, v214, v67, v66);

  sub_100016590(v175, v75);
  sub_10000B3A8(v77, &qword_10169F358, &qword_1013A0810);
  v79 = v76;
LABEL_11:
  sub_10058B268(v79, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  return sub_10058B268(v78, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_10055D864(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v58 = a3;
  v48 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 8);
  __chkstk_darwin(v6);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v52);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SharedBeaconRecord(0);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  __chkstk_darwin(v17 - 8);
  v55 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v48 - v21);
  sub_1000D2A70(a1, &v48 - v21, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v12);
    v25 = swift_allocObject();
    v26 = v57;
    v25[2] = v56;
    v25[3] = v26;
    v25[4] = v23;
    aBlock[4] = sub_10058D740;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101629D80;
    v27 = _Block_copy(aBlock);

    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v28 = v51;
    v29 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v53 + 1))(v28, v29);
    (*(v50 + 8))(v11, v52);
  }

  else
  {
    v54 = v18;
    v31 = *(v48 + 144);
    v32 = swift_allocObject();
    *(v32 + 16) = v56;
    *(v32 + 24) = v57;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = 0x65736C6166;
    *(v33 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v34 = objc_autoreleasePoolPush();
    v35 = v58;
    sub_101122288(v58);
    v37 = v36;
    v56 = v36;
    objc_autoreleasePoolPop(v34);
    v38 = *(v31 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v39 = v55;
    sub_10058B200(v35, v55, type metadata accessor for SharedBeaconRecord);
    v57 = v31;
    v40 = *(v49 + 80);
    v41 = v54;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_10058D534;
    *(v42 + 24) = 0;
    v53 = type metadata accessor for SharedBeaconRecord;
    sub_100589B28(v39, v42 + ((v40 + 32) & ~v40), type metadata accessor for SharedBeaconRecord);
    sub_100FDCA40(v37, sub_10058D708, v42);

    v43 = swift_allocObject();
    *(v43 + 16) = sub_10058C2C8;
    *(v43 + 24) = v32;

    Future.addFailure(block:)();

    sub_10058B200(v58, v39, type metadata accessor for SharedBeaconRecord);
    v44 = (v40 + 16) & ~v40;
    v45 = (v41 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_100589B28(v39, v46 + v44, v53);
    *(v46 + v45) = v57;
    v47 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v47 = sub_10058C2C8;
    v47[1] = v32;

    Future.addSuccess(block:)();

    return sub_10000B3A8(v22, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_10055E0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v55 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v54 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharedBeaconRecord(0);
  v15 = *(v14 - 8);
  v49 = v14;
  v50 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v48 - v19;
  v21 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v48 - v23);
  sub_1000D2A70(v51, v48 - v23, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v51 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v13, v9);
    v26 = swift_allocObject();
    v27 = v53;
    v26[2] = v52;
    v26[3] = v27;
    v26[4] = v25;
    v65 = sub_10058D740;
    v66 = v26;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100006684;
    v64 = &unk_101629E70;
    v28 = _Block_copy(&aBlock);

    swift_errorRetain();
    v29 = v54;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v30 = v55;
    v31 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v51;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v58 + 8))(v30, v31);
    (*(v56 + 8))(v29, v57);
  }

  else
  {
    v51 = v9;
    sub_100589B28(v24, v20, type metadata accessor for SharedBeaconRecord);
    v48[1] = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    sub_10058B200(v20, v18, type metadata accessor for SharedBeaconRecord);
    v34 = String.init<A>(describing:)();
    v49 = v20;
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v37 = v51;
    (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v51);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v13, v37);
    v39 = v49;
    sub_10058B200(v49, v18, type metadata accessor for SharedBeaconRecord);
    v40 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v41 = swift_allocObject();
    v42 = v53;
    *(v41 + 16) = v52;
    *(v41 + 24) = v42;
    sub_100589B28(v18, v41 + v40, type metadata accessor for SharedBeaconRecord);
    v65 = sub_10058D4F8;
    v66 = v41;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100006684;
    v64 = &unk_101629EC0;
    v43 = _Block_copy(&aBlock);

    v44 = v54;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v45 = v55;
    v46 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v58 + 8))(v45, v46);
    (*(v56 + 8))(v44, v57);
    sub_10058B268(v39, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_10055E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v37 = a2;
  v38 = a3;
  v45 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v37 - v20);
  sub_1000D2A70(v45, &v37 - v20, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v23 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v10);
    v24 = swift_allocObject();
    v25 = v47;
    v24[2] = v46;
    v24[3] = v25;
    v24[4] = v22;
    aBlock[4] = sub_10058D4D8;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016277B0;
    v26 = _Block_copy(aBlock);

    swift_errorRetain();
    v27 = v39;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v28 = v41;
    v29 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v43 + 8))(v28, v29);
    (*(v40 + 8))(v27, v42);
  }

  else
  {
    v31 = v38;
    v32 = *(v37 + 144);
    sub_10058B200(v38, &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
    v33 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v34 = swift_allocObject();
    sub_100589B28(&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for SharedBeaconRecord);
    v35 = (v34 + ((v17 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    v36 = v47;
    *v35 = v46;
    v35[1] = v36;

    sub_100DDDDF4(v31, sub_10057D060, v34);

    return sub_10000B3A8(v21, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_10055EEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v37 = a2;
  v38 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v9;
  if (v38)
  {
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v22 = swift_allocObject();
    v23 = v40;
    *(v22 + 16) = v39;
    *(v22 + 24) = v23;
    v48 = sub_10058D538;
    v49 = v22;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100006684;
    v47 = &unk_101627878;
    v24 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v38;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v5 + 8))(v8, v4);
    (*(v41 + 8))(v12, v42);
  }

  else
  {
    v36 = v12;
    v38 = v5;
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    sub_10058B200(v37, v21, type metadata accessor for SharedBeaconRecord);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v30 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v31 = swift_allocObject();
    v32 = v40;
    *(v31 + 16) = v39;
    *(v31 + 24) = v32;
    v48 = sub_100470308;
    v49 = v31;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100006684;
    v47 = &unk_101627828;
    v33 = _Block_copy(&aBlock);

    v34 = v36;
    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v38 + 8))(v8, v4);
    (*(v41 + 8))(v34, v42);
  }
}

uint64_t sub_10055F5E4(uint64_t a1, void *a2, uint64_t a3)
{
  v206 = a2;
  *&v207 = a3;
  v208 = a1;
  v198 = type metadata accessor for DispatchQoS.QoSClass();
  v197 = *(v198 - 1);
  v3 = *(v197 + 64);
  __chkstk_darwin(v198);
  v196 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DispatchTime();
  v172 = *(v173 - 8);
  v5 = *(v172 + 64);
  v6 = __chkstk_darwin(v173);
  v170 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v171 = &v155 - v8;
  v200 = type metadata accessor for DispatchWorkItemFlags();
  v205 = *(v200 - 8);
  v9 = *(v205 + 64);
  __chkstk_darwin(v200);
  v199 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for DispatchQoS();
  v204 = *(v202 - 8);
  v11 = *(v204 + 64);
  __chkstk_darwin(v202);
  v201 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for SecureLocationsRelayAction(0);
  v178 = *(v177 - 8);
  v13 = *(v178 + 64);
  v14 = __chkstk_darwin(v177);
  v180 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v15;
  __chkstk_darwin(v14);
  v181 = &v155 - v16;
  v182 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v17 = *(*(v182 - 8) + 64);
  v18 = __chkstk_darwin(v182);
  v174 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v183 = &v155 - v20;
  v176 = type metadata accessor for MessagingOptions(0);
  v21 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v184 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v175 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v185 = &v155 - v27;
  v186 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v28 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v187 = (&v155 - v29);
  v194 = type metadata accessor for SystemInfo.DeviceLockState();
  v193 = *(v194 - 8);
  v30 = *(v193 + 64);
  v31 = __chkstk_darwin(v194);
  v192 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v191 = &v155 - v33;
  v34 = type metadata accessor for SharedBeaconRecord(0);
  v189 = *(v34 - 8);
  v35 = *(v189 + 8);
  v36 = __chkstk_darwin(v34);
  v203 = (&v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v190 = (&v155 - v37);
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v42 = __chkstk_darwin(v41);
  v44 = &v155 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v155 - v46;
  __chkstk_darwin(v45);
  v49 = &v155 - v48;
  v188 = v34;
  v50 = *(v39 + 16);
  v50(&v155 - v48, v208 + *(v34 + 20), v38);
  sub_10053A3CC(2, 1, v49, &aBlock);
  v158 = 0;
  v165 = v44;
  v155 = v40;
  v166 = v39;
  v161 = v50;
  v162 = v39 + 16;
  v156 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v47;
  v167 = v38;
  v159 = aBlock;
  v160 = v211;
  v168 = v212;
  v169 = v213;
  v51 = (v208 + *(v188 + 7));
  LODWORD(v188) = *v51;
  v53 = *(v51 + 1);
  v52 = *(v51 + 2);
  v164 = v53;
  v163 = v52;
  v54 = v190;
  sub_10058B200(v208, v190, type metadata accessor for SharedBeaconRecord);
  sub_10058B200(v54, v203, type metadata accessor for SharedBeaconRecord);
  v55 = (*(v189 + 80) + 24) & ~*(v189 + 80);
  v56 = swift_allocObject();
  v57 = v195;
  *(v56 + 16) = v195;
  sub_100589B28(v54, v56 + v55, type metadata accessor for SharedBeaconRecord);
  v208 = v56;
  v58 = (v56 + ((v35 + v55 + 7) & 0xFFFFFFFFFFFFFFF8));
  v60 = v206;
  v59 = v207;
  *v58 = v206;
  v58[1] = v59;

  sub_100908F24(_swiftEmptyArrayStorage);

  v190 = sub_101129A8C(&off_1016095F8);
  v61 = sub_101129A8C(_swiftEmptyArrayStorage);
  v62 = v191;
  static SystemInfo.lockState.getter();
  v63 = v193;
  v64 = v192;
  v65 = v194;
  (*(v193 + 104))(v192, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v194);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v63 + 8);
  v66(v64, v65);
  v66(v62, v65);
  v67 = v57;
  v68 = v59;
  if ((v35 & 1) == 0)
  {
    v194 = v61;
    v72 = v188;
    v73 = v164;
    v74 = v163;
    if ((sub_100540CB8(v188, v164, v163) & 1) == 0)
    {

      static os_log_type_t.error.getter();
      v98 = v169;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_101385D80;
      *(v99 + 56) = &type metadata for String;
      *(v99 + 64) = sub_100008C00();
      *(v99 + 32) = v73;
      *(v99 + 40) = v74;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v209 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v100 = v187;
      *v187 = aBlock;
      swift_storeEnumTagMultiPayload();
      v70 = v203;
      sub_1005615D0(v100, v67, v203, v60, v68);

      sub_100016590(v168, v98);
      v71 = v100;
      goto LABEL_11;
    }

    v206 = *(v67 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v75 = swift_allocObject();
    v207 = xmmword_101385D80;
    *(v75 + 16) = xmmword_101385D80;
    *(v75 + 32) = v72;
    *(v75 + 40) = v73;
    *(v75 + 48) = v74;
    v76 = *(v166 + 56);
    v77 = v185;
    v78 = v167;
    v76(v185, 1, 1, v167);

    v79 = v165;
    UUID.init()();
    v80 = v184;
    v161(v184, v79, v78);
    v81 = v175;
    sub_1000D2A70(v77, v175, &qword_1016980D0, &unk_10138F3B0);
    v82 = v176;
    v83 = *(v176 + 28);
    v76(v80 + v83, 1, 1, v78);
    *(v80 + v82[5]) = v75;
    *(v80 + v82[6]) = 1;
    sub_10002311C(v81, v80 + v83, &qword_1016980D0, &unk_10138F3B0);
    v84 = v80 + v82[8];
    *v84 = 0;
    *(v84 + 8) = 1;
    *(v80 + v82[9]) = 0;
    *(v80 + v82[10]) = v190;
    *(v80 + v82[11]) = v194;
    v85 = (v80 + v82[12]);
    *v85 = 0;
    v85[1] = 0;
    *(v80 + v82[13]) = xmmword_1013B0D90;
    v86 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v87 = v181;
    sub_10058B200(v80, &v181[*(v86 + 24)], type metadata accessor for MessagingOptions);
    *v87 = v159;
    v88 = v168;
    *(v87 + 8) = v160;
    *(v87 + 16) = v88;
    v89 = v169;
    *(v87 + 24) = v169;
    *(v87 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v90 = v180;
    sub_10058B200(v87, v180, type metadata accessor for SecureLocationsRelayAction);
    v91 = (*(v178 + 80) + 24) & ~*(v178 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v206;
    sub_100589B28(v90, v92 + v91, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v88, v89);

    v93 = v183;
    v94 = v158;
    unsafeFromAsyncTask<A>(_:)();
    if (v94)
    {
      v95 = v94;

      v96 = type metadata accessor for SecureLocationsRelayAction;
      v97 = v87;
    }

    else
    {
      v101 = v195;
      sub_10058B268(v87, type metadata accessor for SecureLocationsRelayAction);

      v102 = v174;
      sub_10058B200(v93, v174, type metadata accessor for SecureLocationsRelayAction.Response);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_10058B268(v93, type metadata accessor for SecureLocationsRelayAction.Response);
        v103 = v166;
        v104 = *(v166 + 8);
        v105 = v167;
        v193 = v166 + 8;
        v192 = v104;
        (v104)(v165, v167);
        sub_10000B3A8(v185, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v80, type metadata accessor for MessagingOptions);
        v106 = *(v103 + 32);
        v107 = v157;
        v206 = (v103 + 32);
        v198 = v106;
        v106(v157, v102, v105);
        v108 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v109 = *(v108 + 48);
        v110 = *(v108 + 52);
        swift_allocObject();
        v111 = Future.init()();
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v112 = swift_allocObject();
        *(v112 + 16) = v207;
        v113 = UUID.uuidString.getter();
        v115 = v114;
        *(v112 + 56) = &type metadata for String;
        *(v112 + 64) = sub_100008C00();
        *(v112 + 32) = v113;
        *(v112 + 40) = v115;
        os_log(_:dso:log:_:_:)();

        v116 = v101;
        *&v207 = *(v101 + 168);
        v117 = v156;
        v161(v156, v107, v105);
        v118 = *(v103 + 80);
        v196 = v118;
        v191 = (((v118 + 24) & ~v118) + v155);
        v119 = (v118 + 24) & ~v118;
        v197 = v119;
        v120 = (v191 + 7) & 0xFFFFFFFFFFFFFFF8;
        v121 = swift_allocObject();
        *(v121 + 16) = v116;
        v198(v121 + v119, v117, v105);
        *(v121 + v120) = v111;
        v214 = sub_10058D4DC;
        v215 = v121;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v190 = &v212;
        v212 = sub_100006684;
        v213 = &unk_101629920;
        v122 = _Block_copy(&aBlock);

        v194 = v111;
        v123 = v201;
        static DispatchQoS.unspecified.getter();
        v209 = _swiftEmptyArrayStorage;
        v186 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v185 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v187 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v124 = v199;
        v125 = v200;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v122);
        v126 = *(v205 + 8);
        v205 += 8;
        v189 = v126;
        v126(v124, v125);
        v127 = *(v204 + 8);
        v204 += 8;
        v188 = v127;
        (v127)(v123, v202);

        v128 = v167;
        v161(v117, v157, v167);
        v129 = swift_allocObject();
        *(v129 + 16) = v116;
        v198(v129 + v197, v117, v128);
        v130 = (v129 + v120);
        v131 = v208;
        *v130 = sub_10058BC24;
        v130[1] = v131;

        Future.addSuccess(block:)();

        v132 = swift_allocObject();
        *(v132 + 16) = sub_10058BC24;
        *(v132 + 24) = v131;

        Future.addFailure(block:)();

        v133 = v170;
        static DispatchTime.now()();
        v134 = v171;
        + infix(_:_:)();
        v184 = *(v172 + 8);
        v135 = v173;
        (v184)(v133, v173);
        v161(v117, v157, v128);
        v136 = swift_allocObject();
        *(v136 + 16) = v116;
        v198(v136 + v197, v117, v128);
        v214 = sub_10058D4E0;
        v215 = v136;
        aBlock = _NSConcreteStackBlock;
        v211 = 1107296256;
        v212 = sub_100006684;
        v213 = &unk_1016299C0;
        v137 = _Block_copy(&aBlock);

        v138 = v201;
        static DispatchQoS.unspecified.getter();
        v209 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v137);

        sub_100016590(v168, v169);
        v189(v124, v125);
        v188(v138, v202);
        (v184)(v134, v135);
        (v192)(v157, v128);
        goto LABEL_20;
      }

      sub_10058B268(v102, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v95 = swift_allocError();
      swift_willThrow();
      v97 = v93;
      v96 = type metadata accessor for SecureLocationsRelayAction.Response;
    }

    sub_10058B268(v97, v96);
    v139 = v185;
    (*(v166 + 8))(v165, v167);
    sub_10000B3A8(v139, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v80, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v140 = swift_allocObject();
    *(v140 + 16) = v207;
    aBlock = v95;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v141 = String.init<A>(describing:)();
    v143 = v142;
    *(v140 + 56) = &type metadata for String;
    *(v140 + 64) = sub_100008C00();
    *(v140 + 32) = v141;
    *(v140 + 40) = v143;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v144 = v197;
    v145 = v196;
    v146 = v198;
    (*(v197 + 104))(v196, enum case for DispatchQoS.QoSClass.default(_:), v198);
    v147 = static OS_dispatch_queue.global(qos:)();
    (*(v144 + 8))(v145, v146);
    v148 = swift_allocObject();
    v149 = v208;
    v148[2] = sub_10058BC24;
    v148[3] = v149;
    v148[4] = v95;
    v214 = sub_10058D73C;
    v215 = v148;
    aBlock = _NSConcreteStackBlock;
    v211 = 1107296256;
    v212 = sub_100006684;
    v213 = &unk_1016298D0;
    v150 = _Block_copy(&aBlock);

    swift_errorRetain();
    v151 = v201;
    static DispatchQoS.unspecified.getter();
    v209 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v153 = v199;
    v152 = v200;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v150);

    sub_100016590(v168, v169);
    (*(v205 + 8))(v153, v152);
    (*(v204 + 8))(v151, v202);
LABEL_20:

    v70 = v203;
    return sub_10058B268(v70, type metadata accessor for SharedBeaconRecord);
  }

  static os_log_type_t.error.getter();
  v69 = v187;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for SPOwnerSessionError(0);
  v209 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v69 = aBlock;
  swift_storeEnumTagMultiPayload();
  v70 = v203;
  sub_1005615D0(v69, v67, v203, v60, v59);

  sub_100016590(v168, v169);
  v71 = v69;
LABEL_11:
  sub_10000B3A8(v71, &qword_10169F358, &qword_1013A0810);
  return sub_10058B268(v70, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_1005615D0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v58 = a3;
  v48 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 8);
  __chkstk_darwin(v6);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v52);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SharedBeaconRecord(0);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  __chkstk_darwin(v17 - 8);
  v55 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v48 - v21);
  sub_1000D2A70(a1, &v48 - v21, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v16, v12);
    v25 = swift_allocObject();
    v26 = v57;
    v25[2] = v56;
    v25[3] = v26;
    v25[4] = v23;
    aBlock[4] = sub_10058D740;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101629A10;
    v27 = _Block_copy(aBlock);

    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v28 = v51;
    v29 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v53 + 1))(v28, v29);
    (*(v50 + 8))(v11, v52);
  }

  else
  {
    v54 = v18;
    v31 = *(v48 + 144);
    v32 = swift_allocObject();
    *(v32 + 16) = v56;
    *(v32 + 24) = v57;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = 0x65736C6166;
    *(v33 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v34 = objc_autoreleasePoolPush();
    v35 = v58;
    sub_101122288(v58);
    v37 = v36;
    v56 = v36;
    objc_autoreleasePoolPop(v34);
    v38 = *(v31 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v39 = v55;
    sub_10058B200(v35, v55, type metadata accessor for SharedBeaconRecord);
    v57 = v31;
    v40 = *(v49 + 80);
    v41 = v54;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_10058D534;
    *(v42 + 24) = 0;
    v53 = type metadata accessor for SharedBeaconRecord;
    sub_100589B28(v39, v42 + ((v40 + 32) & ~v40), type metadata accessor for SharedBeaconRecord);
    sub_100FDCA40(v37, sub_10058BC58, v42);

    v43 = swift_allocObject();
    *(v43 + 16) = sub_10058BC50;
    *(v43 + 24) = v32;

    Future.addFailure(block:)();

    sub_10058B200(v58, v39, type metadata accessor for SharedBeaconRecord);
    v44 = (v40 + 16) & ~v40;
    v45 = (v41 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_100589B28(v39, v46 + v44, v53);
    *(v46 + v45) = v57;
    v47 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v47 = sub_10058BC50;
    v47[1] = v32;

    Future.addSuccess(block:)();

    return sub_10000B3A8(v22, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_100561E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v55 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v54 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharedBeaconRecord(0);
  v15 = *(v14 - 8);
  v49 = v14;
  v50 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v48 - v19;
  v21 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v48 - v23);
  sub_1000D2A70(v51, v48 - v23, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v51 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v13, v9);
    v26 = swift_allocObject();
    v27 = v53;
    v26[2] = v52;
    v26[3] = v27;
    v26[4] = v25;
    v65 = sub_10058BC60;
    v66 = v26;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100006684;
    v64 = &unk_101629B00;
    v28 = _Block_copy(&aBlock);

    swift_errorRetain();
    v29 = v54;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v30 = v55;
    v31 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v51;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v58 + 8))(v30, v31);
    (*(v56 + 8))(v29, v57);
  }

  else
  {
    v51 = v9;
    sub_100589B28(v24, v20, type metadata accessor for SharedBeaconRecord);
    v48[1] = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    sub_10058B200(v20, v18, type metadata accessor for SharedBeaconRecord);
    v34 = String.init<A>(describing:)();
    v49 = v20;
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100008C00();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v37 = v51;
    (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v51);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v13, v37);
    v39 = v49;
    sub_10058B200(v49, v18, type metadata accessor for SharedBeaconRecord);
    v40 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v41 = swift_allocObject();
    v42 = v53;
    *(v41 + 16) = v52;
    *(v41 + 24) = v42;
    sub_100589B28(v18, v41 + v40, type metadata accessor for SharedBeaconRecord);
    v65 = sub_10058BC90;
    v66 = v41;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100006684;
    v64 = &unk_101629B50;
    v43 = _Block_copy(&aBlock);

    v44 = v54;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v45 = v55;
    v46 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v58 + 8))(v45, v46);
    (*(v56 + 8))(v44, v57);
    sub_10058B268(v39, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_1005626A8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10058B200(a3, &v10 - v7, type metadata accessor for SharedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_10000B3A8(v8, &qword_101699BC8, &qword_1013926D8);
}

uint64_t sub_100562794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v37 = a2;
  v38 = a3;
  v45 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v37 - v20);
  sub_1000D2A70(v45, &v37 - v20, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v23 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v10);
    v24 = swift_allocObject();
    v25 = v47;
    v24[2] = v46;
    v24[3] = v25;
    v24[4] = v22;
    aBlock[4] = sub_10058D4D8;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016274B8;
    v26 = _Block_copy(aBlock);

    swift_errorRetain();
    v27 = v39;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v28 = v41;
    v29 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v43 + 8))(v28, v29);
    (*(v40 + 8))(v27, v42);
  }

  else
  {
    v31 = v38;
    v32 = *(v37 + 144);
    sub_10058B200(v38, &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
    v33 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v34 = swift_allocObject();
    sub_100589B28(&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for SharedBeaconRecord);
    v35 = (v34 + ((v17 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    v36 = v47;
    *v35 = v46;
    v35[1] = v36;

    sub_100DDDDF4(v31, sub_10057CD70, v34);

    return sub_10000B3A8(v21, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_100562D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v37 = a2;
  v38 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v9;
  if (v38)
  {
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v22 = swift_allocObject();
    v23 = v40;
    *(v22 + 16) = v39;
    *(v22 + 24) = v23;
    v48 = sub_10057CD88;
    v49 = v22;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100006684;
    v47 = &unk_101627580;
    v24 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v38;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v5 + 8))(v8, v4);
    (*(v41 + 8))(v12, v42);
  }

  else
  {
    v36 = v12;
    v38 = v5;
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    sub_10058B200(v37, v21, type metadata accessor for SharedBeaconRecord);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v30 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v17, v13);
    v31 = swift_allocObject();
    v32 = v40;
    *(v31 + 16) = v39;
    *(v31 + 24) = v32;
    v48 = sub_100470308;
    v49 = v31;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100006684;
    v47 = &unk_101627530;
    v33 = _Block_copy(&aBlock);

    v34 = v36;
    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v38 + 8))(v8, v4);
    (*(v41 + 8))(v34, v42);
  }
}

uint64_t sub_10056343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v59 = a5;
  v49 = a2;
  v50 = a3;
  v57 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v54);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShareRecord();
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v46 - v19;
  v21 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v46 - v23);
  sub_1000D2A70(v57, &v46 - v23, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v26 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v10);
    v27 = swift_allocObject();
    v28 = v59;
    v27[2] = v58;
    v27[3] = v28;
    v27[4] = v25;
    aBlock[4] = sub_10058D4D8;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016271C0;
    v29 = _Block_copy(aBlock);

    swift_errorRetain();
    v30 = v51;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v31 = v53;
    v32 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v55 + 8))(v31, v32);
    (*(v52 + 8))(v30, v54);
  }

  else
  {
    v35 = v49;
    v34 = v50;
    v36 = *(v49 + 144);
    sub_10058B200(v50, v20, type metadata accessor for ShareRecord);
    v37 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_100589B28(v20, v39 + v37, type metadata accessor for ShareRecord);
    *(v39 + v38) = v35;
    v40 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
    v41 = v59;
    *v40 = v58;
    v40[1] = v41;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_101385D80;
    sub_10058B200(v34, v18, type metadata accessor for ShareRecord);
    v43 = String.init<A>(describing:)();
    v45 = v44;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_100008C00();
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    os_log(_:dso:log:_:_:)();

    sub_100B0F7D8(v34, v36, sub_10057CB34, v39);

    return sub_10000B3A8(v24, &qword_10169F358, &qword_1013A0810);
  }
}

uint64_t sub_100563B20(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v51 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShareRecord();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v8;
  if (a1)
  {
    v48 = a3;
    v49 = v14;
    v24 = v51;
    v50 = v7;
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    v26 = v24;
    sub_10058B200(v24, v23, type metadata accessor for ShareRecord);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    os_log(_:dso:log:_:_:)();

    v30 = *(v48 + 320);
    v31 = *(v20 + 20);
    sub_1010B22E4(v26 + v31, 0);
    sub_1010B22E4(v26 + v31, 5);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
    v32 = static OS_dispatch_queue.global(qos:)();
    (*(v16 + 8))(v19, v15);
    v33 = swift_allocObject();
    v34 = v53;
    *(v33 + 16) = v52;
    *(v33 + 24) = v34;
    v63 = sub_100470308;
    v64 = v33;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_100006684;
    v62 = &unk_101627288;
    v35 = _Block_copy(&aBlock);

    v36 = v49;
    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v37 = v54;
    v38 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v57 + 8))(v37, v38);
    (*(v55 + 8))(v36, v56);
  }

  else
  {
    v39 = v7;
    v40 = *(a3 + 320);
    sub_1010B22E4(v51 + *(v20 + 20), 1);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
    v51 = static OS_dispatch_queue.global(qos:)();
    (*(v16 + 8))(v19, v15);
    v41 = swift_allocObject();
    v42 = v53;
    *(v41 + 16) = v52;
    *(v41 + 24) = v42;
    v63 = sub_10057CBE0;
    v64 = v41;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_100006684;
    v62 = &unk_101627238;
    v43 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v44 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v45 = v51;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v57 + 8))(v44, v39);
    (*(v55 + 8))(v14, v56);
  }
}

void sub_100564278(void (*a1)())
{
  type metadata accessor for SPOwnerSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_100564334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v161 = a6;
  v158 = a7;
  v157 = a5;
  v142 = a3;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v143 = &v139 - v12;
  v13 = type metadata accessor for TimeBasedKey();
  v144 = *(v13 - 8);
  v14 = *(v144 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v145 = (&v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v146 = (&v139 - v17);
  v18 = type metadata accessor for DateInterval();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v7 + 144);
  v163 = type metadata accessor for OwnedBeaconRecord();
  v167 = v163;
  v151 = sub_100003DFC(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v168 = v151;
  v23 = sub_1000280DC(v166);
  v169 = a1;
  sub_10058B200(a1, v23, type metadata accessor for OwnedBeaconRecord);
  v150 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
  v24 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  v153 = type metadata accessor for BeaconKeyManager(0);
  v154 = v22;
  v25 = v162;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v162 = v25;
  v26 = v164;
  sub_10001F280(v166, &v164);
  v27 = *(v19 + 16);
  v160 = a2;
  v149 = v19 + 16;
  v148 = v27;
  v27(v21, a2, v18);
  v28 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v29 = v28 + v20;
  v30 = v28 + v20 + 2;
  v147 = *(v19 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  sub_100031694(&v164, v31 + 24);
  v32 = *(v19 + 32);
  v152 = v28;
  v33 = v31 + v28;
  v34 = v32;
  v155 = v19 + 32;
  v156 = v21;
  v159 = v18;
  v32(v33, v21, v18);
  *(v31 + v29) = 0;
  *(v31 + v30) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v35 = v164;
  v36 = v165;
  sub_100007BAC(v166);
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      sub_100359088(v35, *(&v35 + 1), 2u);
    }

    static os_log_type_t.error.getter();
    v46 = v169;
    if (qword_101695030 == -1)
    {
      goto LABEL_11;
    }

LABEL_44:
    swift_once();
LABEL_11:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101385D80;
    v48 = v46 + *(v163 + 20);
    v49 = UUID.uuidString.getter();
    v51 = v50;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_100008C00();
    *(v47 + 32) = v49;
    *(v47 + 40) = v51;
    os_log(_:dso:log:_:_:)();

    sub_100589AD4();
    swift_allocError();
    return swift_willThrow();
  }

  if (!v36)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = v169 + *(v163 + 20);
    v39 = UUID.uuidString.getter();
    v41 = v40;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    os_log(_:dso:log:_:_:)();

    sub_100589AD4();
    swift_allocError();
    swift_willThrow();
    v43 = v35 >> 64;
    v42 = v35;
LABEL_6:
    v44 = 0;
    return sub_100359088(v42, v43, v44);
  }

  v140 = v35 >> 64;
  v141 = v35;
  v139 = v7;
  v52 = v169;
  if ((sub_1000322C8() & 1) == 0)
  {
    v61 = _swiftEmptyArrayStorage;
    v70 = v52;
    v63 = v158;
    goto LABEL_19;
  }

  v167 = v163;
  v168 = v151;
  v53 = sub_1000280DC(v166);
  sub_10058B200(v52, v53, type metadata accessor for OwnedBeaconRecord);
  v54 = *(v154 + v150);
  v55 = v162;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v162 = v55;
  v56 = v164;
  sub_10001F280(v166, &v164);
  v57 = v156;
  v58 = v159;
  v148(v156, v160, v159);
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  sub_100031694(&v164, v59 + 24);
  v34(v59 + v152, v57, v58);
  *(v59 + v29) = 1;
  *(v59 + v29 + 1) = 0;
  *(v59 + v30) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v60 = *(&v164 + 1);
  v61 = v164;
  v62 = v165;
  sub_100007BAC(v166);
  if (v62 > 1)
  {
    v111 = v62 == 2;
    v112 = v140;
    v113 = v141;
    if (v111)
    {
      sub_100359088(v61, v60, 2u);
    }

    sub_100359088(v113, v112, 1u);
    static os_log_type_t.error.getter();
    v46 = v169;
    if (qword_101695030 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

  v63 = v158;
  if (!v62)
  {
    sub_100359088(v141, v140, 1u);
    static os_log_type_t.error.getter();
    v64 = v169;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_101385D80;
    v66 = v64 + *(v163 + 20);
    v67 = UUID.uuidString.getter();
    v69 = v68;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_100008C00();
    *(v65 + 32) = v67;
    *(v65 + 40) = v69;
    os_log(_:dso:log:_:_:)();

    sub_100589AD4();
    swift_allocError();
    swift_willThrow();
    v42 = v61;
    v43 = v60;
    goto LABEL_6;
  }

  v70 = v169;
LABEL_19:
  if ((sub_1000322C8() & 1) == 0)
  {
    v100 = v63;
    v156 = v61;
    LODWORD(v155) = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_101391790;
    v71 = v141;
    v102 = *(v141 + 16);
    *(v101 + 56) = &type metadata for Int;
    *(v101 + 64) = &protocol witness table for Int;
    *(v101 + 32) = v102;
    sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval);
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v104;
    *(v101 + 96) = &type metadata for String;
    v106 = sub_100008C00();
    *(v101 + 104) = v106;
    *(v101 + 72) = v103;
    *(v101 + 80) = v105;
    v107 = v70 + *(v163 + 20);
    v108 = UUID.uuidString.getter();
    *(v101 + 136) = &type metadata for String;
    *(v101 + 144) = v106;
    *(v101 + 112) = v108;
    *(v101 + 120) = v109;
    *(v101 + 176) = &type metadata for String;
    *(v101 + 184) = v106;
    v73 = v161;
    *(v101 + 152) = v161;
    *(v101 + 160) = v100;
    v63 = v100;

    os_log(_:dso:log:_:_:)();

    goto LABEL_28;
  }

  v71 = v141;
  v72 = *(v141 + 16);
  v73 = v161;
  if (!v72)
  {
    goto LABEL_29;
  }

  v74 = v144;
  v75 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v76 = v141 + v75;
  v77 = v146;
  sub_10058B200(v141 + v75, v146, type metadata accessor for TimeBasedKey);
  v78 = v72 - 1;
  v79 = *(v74 + 72);
  v80 = v76 + v79 * v78;
  v81 = v145;
  sub_10058B200(v80, v145, type metadata accessor for TimeBasedKey);
  v82 = v61[2];
  if (v82)
  {
    v83 = (v61 + v75);
    v84 = (v82 - 1) * v79;
    v85 = v61;
    v86 = *v77;
    v87 = *v81;
    v88 = *v83;
    v89 = *(v83 + v84);
    LODWORD(v155) = static os_log_type_t.default.getter();
    v70 = v169;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1013B0DB0;
    v71 = v141;
    v91 = *(v141 + 16);
    *(v90 + 56) = &type metadata for Int;
    *(v90 + 64) = &protocol witness table for Int;
    *(v90 + 32) = v91;
    *(v90 + 96) = &type metadata for UInt64;
    *(v90 + 104) = &protocol witness table for UInt64;
    *(v90 + 72) = v86;
    *(v90 + 136) = &type metadata for UInt64;
    *(v90 + 144) = &protocol witness table for UInt64;
    *(v90 + 112) = v87;
    v156 = v85;
    v92 = v85[2];
    *(v90 + 176) = &type metadata for Int;
    *(v90 + 184) = &protocol witness table for Int;
    *(v90 + 152) = v92;
    *(v90 + 216) = &type metadata for UInt64;
    *(v90 + 224) = &protocol witness table for UInt64;
    *(v90 + 192) = v88;
    *(v90 + 256) = &type metadata for UInt64;
    *(v90 + 264) = &protocol witness table for UInt64;
    *(v90 + 232) = v89;
    sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval);
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v94;
    *(v90 + 296) = &type metadata for String;
    v96 = sub_100008C00();
    *(v90 + 304) = v96;
    *(v90 + 272) = v93;
    *(v90 + 280) = v95;
    v97 = v70 + *(v163 + 20);
    v98 = UUID.uuidString.getter();
    *(v90 + 336) = &type metadata for String;
    *(v90 + 344) = v96;
    *(v90 + 312) = v98;
    *(v90 + 320) = v99;
    *(v90 + 376) = &type metadata for String;
    *(v90 + 384) = v96;
    v73 = v161;
    v63 = v158;
    *(v90 + 352) = v161;
    *(v90 + 360) = v63;

    os_log(_:dso:log:_:_:)();

    sub_10058B268(v145, type metadata accessor for TimeBasedKey);
    sub_10058B268(v146, type metadata accessor for TimeBasedKey);
LABEL_28:
    v61 = v156;
    goto LABEL_29;
  }

  sub_10058B268(v81, type metadata accessor for TimeBasedKey);
  sub_10058B268(v77, type metadata accessor for TimeBasedKey);
  v73 = v161;
  v71 = v141;
  v70 = v169;
LABEL_29:
  v110 = v162;
  sub_1005689EC(v71, v61, v70, v157, v73, v63);
  if (v110)
  {
    sub_100359088(v71, v140, 1u);
  }

  else
  {

    if (sub_1000322C8())
    {
      goto LABEL_41;
    }

    v114 = dispatch_group_create();
    v115 = v63;
    v116 = sub_101129A8C(&off_101609298);
    v117 = swift_allocObject();
    *(v117 + 16) = 0;
    dispatch_group_enter(v114);
    v118 = *(v139 + 24);
    v119 = swift_allocObject();
    v119[2] = v117;
    v119[3] = v116;
    v119[4] = v114;
    v120 = type metadata accessor for TaskPriority();
    v121 = v143;
    (*(*(v120 - 8) + 56))(v143, 1, 1, v120);
    v122 = swift_allocObject();
    *(v122 + 16) = 0;
    *(v122 + 24) = 0;
    *(v122 + 32) = v118;
    *(v122 + 40) = v157;
    *(v122 + 48) = v161;
    *(v122 + 56) = v115;
    *(v122 + 64) = sub_10058D544;
    *(v122 + 72) = v119;

    v123 = v114;

    sub_10025EDD4(0, 0, v121, &unk_1013B11C8, v122);

    OS_dispatch_group.wait()();

    swift_beginAccess();
    LODWORD(v123) = *(v117 + 16);

    if (v123 != 1)
    {
LABEL_41:
      v42 = v141;
      v43 = v140;
      v44 = 1;
      return sub_100359088(v42, v43, v44);
    }

    __chkstk_darwin(v124);
    *(&v139 - 2) = v142;
    v125 = v141;
    v126 = sub_1006542D8(sub_100589FF4, (&v139 - 4), v141);
    sub_100359088(v125, v140, 1u);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_101391790;
    v128 = v126[2];
    *(v127 + 56) = &type metadata for Int;
    *(v127 + 64) = &protocol witness table for Int;
    *(v127 + 32) = v128;
    sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval);
    v129 = dispatch thunk of CustomStringConvertible.description.getter();
    v131 = v130;
    *(v127 + 96) = &type metadata for String;
    v132 = sub_100008C00();
    *(v127 + 104) = v132;
    *(v127 + 72) = v129;
    *(v127 + 80) = v131;
    v133 = v169;
    v134 = v169 + *(v163 + 20);
    v135 = UUID.uuidString.getter();
    *(v127 + 136) = &type metadata for String;
    *(v127 + 144) = v132;
    *(v127 + 112) = v135;
    *(v127 + 120) = v136;
    *(v127 + 176) = &type metadata for String;
    *(v127 + 184) = v132;
    v137 = v161;
    v138 = v158;
    *(v127 + 152) = v161;
    *(v127 + 160) = v138;

    os_log(_:dso:log:_:_:)();

    sub_100566720(v126, 5, v133, v157, v137, v138);
  }
}

uint64_t sub_100565524(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_100565590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v33 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v33 - v16;
  v18 = type metadata accessor for DateInterval();
  (*(*(v18 - 8) + 16))(a3, a1, v18);
  v19 = type metadata accessor for ShareRecord();
  v20 = *(v19 + 28);
  v36 = a3;
  DateInterval.start.getter();
  LOBYTE(a1) = static Date.> infix(_:_:)();
  v37 = *(v11 + 8);
  v37(v17, v10);
  if (a1)
  {
    v34 = a2;
    v35 = v15;
    (*(v11 + 16))(v17, a2 + v20, v10);
    DateInterval.start.setter();
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v33[1] = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    DateInterval.start.getter();
    sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v37(v17, v10);
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    a2 = v34;
    v15 = v35;
  }

  sub_1000D2A70(a2 + *(v19 + 32), v9, &unk_101696900, &unk_10138B1E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
  }

  (*(v11 + 32))(v15, v9, v10);
  DateInterval.end.getter();
  v26 = static Date.< infix(_:_:)();
  v27 = v37;
  v37(v17, v10);
  if ((v26 & 1) == 0)
  {
    return v27(v15, v10);
  }

  (*(v11 + 16))(v17, v15, v10);
  DateInterval.end.setter();
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  DateInterval.end.getter();
  sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  v32 = v37;
  v37(v17, v10);
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100008C00();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  os_log(_:dso:log:_:_:)();

  return v32(v15, v10);
}

uint64_t sub_100565AE4(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v111 = type metadata accessor for DateInterval();
  v110 = *(v111 - 8);
  v3 = *(v110 + 64);
  v4 = __chkstk_darwin(v111);
  v106 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v109 = &v97 - v7;
  v8 = __chkstk_darwin(v6);
  v114 = &v97 - v9;
  __chkstk_darwin(v8);
  v115 = &v97 - v10;
  v125 = type metadata accessor for Calendar.Component();
  v130 = *(v125 - 8);
  v11 = *(v130 + 64);
  __chkstk_darwin(v125);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Calendar();
  v129 = *(v124 - 8);
  v14 = *(v129 + 64);
  __chkstk_darwin(v124);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v118 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v128 = (&v97 - v21);
  v22 = type metadata accessor for Date();
  v126 = *(v22 - 8);
  v127 = v22;
  v23 = v126[8];
  v24 = __chkstk_darwin(v22);
  v103 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v112 = &v97 - v27;
  v28 = __chkstk_darwin(v26);
  v120 = &v97 - v29;
  v30 = __chkstk_darwin(v28);
  v122 = &v97 - v31;
  __chkstk_darwin(v30);
  v33 = &v97 - v32;
  v34 = type metadata accessor for OwnedBeaconRecord();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v38 = qword_10177C378;
  v113 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10138BBE0;
  v107 = a1;
  sub_10058B200(a1, v37, type metadata accessor for OwnedBeaconRecord);
  v104 = v34;
  v40 = String.init<A>(describing:)();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  v43 = sub_100008C00();
  *(v39 + 64) = v43;
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  v44 = (v123 + *(type metadata accessor for ShareRecord() + 36));
  v46 = *(v44 + 1);
  v45 = *(v44 + 2);
  v100 = v44;
  *(v39 + 96) = &type metadata for String;
  *(v39 + 104) = v43;
  v105 = v43;
  v102 = v46;
  *(v39 + 72) = v46;
  *(v39 + 80) = v45;
  v101 = v45;

  v121 = v38;
  os_log(_:dso:log:_:_:)();

  static Date.trustedNow.getter(v33);
  static Calendar.current.getter();
  v47 = v130;
  v48 = v125;
  v117 = *(v130 + 104);
  v117(v13, enum case for Calendar.Component.day(_:), v125);
  v49 = v128;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v50 = *(v47 + 8);
  v119 = v13;
  v130 = v47 + 8;
  v116 = v50;
  v50(v13, v48);
  v52 = v129 + 8;
  v51 = *(v129 + 8);
  v51(v16, v124);
  v54 = v126;
  v53 = v127;
  v55 = v126[6];
  if (v55(v49, 1, v127) == 1)
  {
    sub_10000B3A8(v128, &unk_101696900, &unk_10138B1E0);
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    return (v54[1])(v33, v53);
  }

  v99 = v16;
  v129 = v52;
  v108 = v33;
  v57 = v54[4];
  v58 = v128;
  v128 = v54 + 4;
  v98 = v57;
  v57(v122, v58, v53);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v59 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v97 = 0;
  v60 = v131;
  sub_101073EF8(v131);
  v61 = v99;
  static Calendar.current.getter();
  v62 = v119;
  v63 = v125;
  v117(v119, enum case for Calendar.Component.minute(_:), v125);
  v64 = v118;
  v65 = v108;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v116(v62, v63);
  v51(v61, v124);
  v66 = v64;
  v67 = v64;
  v68 = v127;
  if (v55(v67, 1, v127) == 1)
  {

    sub_10000B3A8(v66, &unk_101696900, &unk_10138B1E0);
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v69 = v126[1];
    v69(v122, v68);
    return (v69)(v65, v68);
  }

  v98(v120, v66, v68);
  v70 = sub_101073F4C(v60);
  v71 = v126[2];
  v72 = v112;
  result = v71(v112, v65, v68);
  if ((v70 * 60) >> 64 != (60 * v70) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  DateInterval.init(start:duration:)();
  v73 = sub_101073F68(v60);

  result = v71(v72, v65, v68);
  if ((v73 * 60) >> 64 != (60 * v73) >> 63)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  DateInterval.init(start:duration:)();
  v71(v72, v122, v68);
  v71(v103, v120, v68);
  v74 = v106;
  DateInterval.init(start:end:)();
  v75 = v109;
  sub_100565590(v74, v123, v109);
  v76 = *(v110 + 8);
  v77 = v111;
  v76(v74, v111);
  static os_log_type_t.default.getter();
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10138B360;
  v79 = v107;
  v80 = v107 + *(v104 + 20);
  v81 = UUID.uuidString.getter();
  v82 = v105;
  *(v78 + 56) = &type metadata for String;
  *(v78 + 64) = v82;
  *(v78 + 32) = v81;
  *(v78 + 40) = v83;
  sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval);
  v84 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v78 + 96) = &type metadata for String;
  *(v78 + 104) = v82;
  *(v78 + 72) = v84;
  *(v78 + 80) = v85;
  *(v78 + 136) = &type metadata for String;
  *(v78 + 144) = v82;
  v86 = v102;
  v87 = v101;
  *(v78 + 112) = v102;
  *(v78 + 120) = v87;

  os_log(_:dso:log:_:_:)();

  v88 = v79;
  v89 = v115;
  v90 = v97;
  sub_100564334(v88, v75, v115, v91, *v100, v86, v87);
  if (v90)
  {
    static os_log_type_t.error.getter();
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_101385D80;
    v131 = v90;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v93 = String.init<A>(describing:)();
    *(v92 + 56) = &type metadata for String;
    *(v92 + 64) = v82;
    *(v92 + 32) = v93;
    *(v92 + 40) = v94;
    os_log(_:dso:log:_:_:)();
  }

  v76(v75, v77);
  v76(v114, v77);
  v76(v89, v77);
  v95 = v127;
  v96 = v126[1];
  v96(v120, v127);
  v96(v122, v95);
  return (v96)(v108, v95);
}

uint64_t sub_100566720(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v235 = a6;
  v248 = a5;
  v220 = a4;
  v254 = a3;
  v238 = a2;
  v196 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v196 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v196);
  v195 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for DispatchTime();
  v257 = *(v187 - 8);
  v10 = *(v257 + 8);
  v11 = __chkstk_darwin(v187);
  v182 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v186 = &v175 - v13;
  v216 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v216 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v216);
  v215 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for DispatchQoS();
  v17 = *(v214 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v214);
  v213 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for SecureLocationsRelayAction(0);
  v207 = *(v208 - 8);
  v20 = *(v207 + 64);
  v21 = __chkstk_darwin(v208);
  v205 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v22;
  __chkstk_darwin(v21);
  v204 = &v175 - v23;
  v203 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v24 = *(*(v203 - 8) + 64);
  v25 = __chkstk_darwin(v203);
  v185 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v202 = &v175 - v27;
  v201 = type metadata accessor for MessagingOptions(0);
  v28 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v219 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v200 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v218 = &v175 - v34;
  v249 = type metadata accessor for UUID();
  v188 = *(v249 - 8);
  v35 = *(v188 + 64);
  v36 = __chkstk_darwin(v249);
  v190 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v217 = &v175 - v39;
  v181 = v40;
  __chkstk_darwin(v38);
  v189 = &v175 - v41;
  v224 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v42 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v223 = (&v175 - v43);
  v234 = type metadata accessor for SystemInfo.DeviceLockState();
  v44 = *(v234 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v234);
  v233 = &v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v232 = &v175 - v48;
  v237 = type metadata accessor for LegacySelfBeaconingKeyEnvelope(0);
  v49 = *(*(v237 - 8) + 64);
  v50 = __chkstk_darwin(v237);
  v236 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v239 = &v175 - v52;
  v53 = type metadata accessor for Date();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  v57 = &v175 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = dispatch_group_create();
  v58 = type metadata accessor for CryptoKeys();
  v240 = Array.chunked(into:)();
  v59 = swift_allocObject();
  v255 = v59;
  *(v59 + 16) = 0;
  result = v59 + 16;
  v184 = result;
  v61 = *(a1 + 16);
  if (v61)
  {
    v62 = a1 + ((*(*(v58 - 8) + 80) + 32) & ~*(*(v58 - 8) + 80)) + *(*(v58 - 8) + 72) * (v61 - 1);
    DateInterval.end.getter();
    Date.timeIntervalSinceNow.getter();
    v64 = v63;
    result = (*(v54 + 8))(v57, v53);
  }

  else
  {
    v64 = 0x4105180000000000;
  }

  v65 = v240;
  v231 = *(v240 + 16);
  if (v231)
  {
    v66 = 0;
    v245 = (v188 + 16);
    v230 = (v44 + 104);
    v229 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v228 = (v44 + 8);
    v199 = (v188 + 56);
    v212 = (v188 + 8);
    v194 = enum case for DispatchQoS.QoSClass.default(_:);
    v193 = (v7 + 104);
    v192 = (v7 + 8);
    v211 = &v261;
    v210 = (v14 + 8);
    v209 = (v17 + 8);
    v191 = v188 + 32;
    v183 = (v257 + 8);
    v227 = xmmword_10138B360;
    v222 = xmmword_101385D80;
    v198 = xmmword_1013B0D90;
    v197 = xmmword_10138BBF0;
    v67 = v258;
    v68 = v249;
    v69 = v243;
    v70 = v239;
    while (1)
    {
      if (v66 >= *(v65 + 16))
      {
        __break(1u);
        return result;
      }

      v253 = v66;
      v72 = *(v65 + 8 * v66 + 32);
      v73 = v254 + *(type metadata accessor for OwnedBeaconRecord() + 20);
      v244 = *v245;
      v244(v70, v73, v68);
      *(v70 + *(v237 + 20)) = v72;
      v74 = v236;
      sub_10058B200(v70, v236, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
      swift_bridgeObjectRetain_n();
      sub_10053C948(v238, 1, v74, &aBlock);
      if (v67)
      {

        swift_willThrow();

        sub_10058B268(v70, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
      }

      v258 = 0;
      LODWORD(v242) = aBlock;
      v241 = v260;
      v256 = v261;
      v257 = v262;
      static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v75 = qword_10177C378;
      v246 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v76 = swift_allocObject();
      *(v76 + 16) = v227;
      v77 = *(v72 + 16);

      *(v76 + 56) = &type metadata for Int;
      *(v76 + 64) = &protocol witness table for Int;
      *(v76 + 32) = v77;
      v78 = UUID.uuidString.getter();
      v80 = v79;
      *(v76 + 96) = &type metadata for String;
      v81 = sub_100008C00();
      *(v76 + 72) = v78;
      *(v76 + 80) = v80;
      *(v76 + 136) = &type metadata for String;
      *(v76 + 144) = v81;
      v247 = v81;
      v82 = v248;
      *(v76 + 104) = v81;
      *(v76 + 112) = v82;
      v83 = v235;
      *(v76 + 120) = v235;
      swift_bridgeObjectRetain_n();
      v252 = v75;
      os_log(_:dso:log:_:_:)();

      dispatch_group_enter(v69);
      v250 = sub_100B0F690(&off_1016092C0);
      v84 = swift_allocObject();
      v85 = v255;
      *(v84 + 16) = v69;
      *(v84 + 24) = v85;
      v251 = v69;

      sub_100908F24(_swiftEmptyArrayStorage);

      v86 = sub_101129A8C(&off_1016092E8);
      v87 = v232;
      static SystemInfo.lockState.getter();
      v88 = v233;
      v89 = v234;
      (*v230)(v233, v229, v234);
      sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      LOBYTE(v85) = dispatch thunk of static Equatable.== infix(_:_:)();
      v90 = *v228;
      (*v228)(v88, v89);
      v90(v87, v89);
      if (v85)
      {

        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        type metadata accessor for SPOwnerSessionError(0);
        v265 = 5;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v71 = v223;
        *v223 = aBlock;
        swift_storeEnumTagMultiPayload();
        sub_100568774(v71, v251, v255);

        sub_100016590(v256, v257);
        sub_10000B3A8(v71, &qword_10169F358, &qword_1013A0810);
        v70 = v239;
        result = sub_10058B268(v239, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
        v69 = v243;
        v68 = v249;
      }

      else
      {
        v225 = v86;
        v91 = v251;
        v226 = v84;
        v92 = v220;
        v93 = v248;
        v94 = v221;
        v95 = sub_100540CB8(v220, v248, v83);
        v68 = v249;
        if ((v95 & 1) == 0)
        {

          static os_log_type_t.error.getter();
          v118 = swift_allocObject();
          *(v118 + 16) = v222;
          v119 = v247;
          *(v118 + 56) = &type metadata for String;
          *(v118 + 64) = v119;
          *(v118 + 32) = v93;
          *(v118 + 40) = v83;
          os_log(_:dso:log:_:_:)();

          type metadata accessor for SPOwnerSessionError(0);
          v265 = 12;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v120 = v223;
          *v223 = aBlock;
          swift_storeEnumTagMultiPayload();
          sub_100568774(v120, v91, v255);

          sub_100016590(v256, v257);
          sub_10000B3A8(v120, &qword_10169F358, &qword_1013A0810);
          v70 = v239;
          result = sub_10058B268(v239, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
          goto LABEL_21;
        }

        v251 = *(v94 + 24);
        sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
        v96 = swift_allocObject();
        *(v96 + 16) = v222;
        *(v96 + 32) = v92;
        *(v96 + 40) = v93;
        *(v96 + 48) = v83;
        v97 = *v199;
        v98 = v218;
        (*v199)(v218, 1, 1, v68);

        v99 = v217;
        UUID.init()();
        v100 = v219;
        v244(v219, v99, v68);
        v101 = v200;
        sub_1000D2A70(v98, v200, &qword_1016980D0, &unk_10138F3B0);
        v102 = v201;
        v103 = *(v201 + 28);
        v97(v100 + v103, 1, 1, v68);
        *(v100 + v102[5]) = v96;
        *(v100 + v102[6]) = 1;
        sub_10002311C(v101, v100 + v103, &qword_1016980D0, &unk_10138F3B0);
        v104 = v100 + v102[8];
        *v104 = v64;
        *(v104 + 8) = 0;
        *(v100 + v102[9]) = 0;
        *(v100 + v102[10]) = v225;
        *(v100 + v102[11]) = v250;
        v105 = (v100 + v102[12]);
        *v105 = 0;
        v105[1] = 0;
        *(v100 + v102[13]) = v198;
        v106 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
        v107 = v204;
        sub_10058B200(v100, &v204[*(v106 + 24)], type metadata accessor for MessagingOptions);
        *v107 = v242;
        v109 = v256;
        v108 = v257;
        *(v107 + 8) = v241;
        *(v107 + 16) = v109;
        *(v107 + 24) = v108;
        *(v107 + 32) = v197;
        swift_storeEnumTagMultiPayload();
        v110 = v205;
        sub_10058B200(v107, v205, type metadata accessor for SecureLocationsRelayAction);
        v111 = (*(v207 + 80) + 24) & ~*(v207 + 80);
        v112 = swift_allocObject();
        *(v112 + 16) = v251;
        sub_100589B28(v110, v112 + v111, type metadata accessor for SecureLocationsRelayAction);
        sub_100017D5C(v109, v108);

        v113 = v202;
        v114 = v258;
        unsafeFromAsyncTask<A>(_:)();
        if (v114)
        {

          sub_10058B268(v107, type metadata accessor for SecureLocationsRelayAction);
          v115 = v114;
          v258 = 0;
          v116 = v249;
          v117 = v226;
          goto LABEL_20;
        }

        sub_10058B268(v107, type metadata accessor for SecureLocationsRelayAction);

        v121 = v185;
        sub_10058B200(v113, v185, type metadata accessor for SecureLocationsRelayAction.Response);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v69 = v243;
        if (EnumCaseMultiPayload != 4)
        {
          sub_10058B268(v121, type metadata accessor for SecureLocationsRelayAction.Response);
          sub_10057C844();
          v115 = swift_allocError();
          swift_willThrow();
          sub_10058B268(v113, type metadata accessor for SecureLocationsRelayAction.Response);
          v258 = 0;
          v116 = v249;
          v117 = v226;
LABEL_20:
          (*v212)(v217, v116);
          sub_10000B3A8(v218, &qword_1016980D0, &unk_10138F3B0);
          sub_10058B268(v219, type metadata accessor for MessagingOptions);
          static os_log_type_t.error.getter();
          v160 = swift_allocObject();
          *(v160 + 16) = v222;
          aBlock = v115;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v161 = String.init<A>(describing:)();
          v162 = v247;
          *(v160 + 56) = &type metadata for String;
          *(v160 + 64) = v162;
          *(v160 + 32) = v161;
          *(v160 + 40) = v163;
          os_log(_:dso:log:_:_:)();

          sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
          v164 = v195;
          v165 = v196;
          (*v193)(v195, v194, v196);
          v166 = static OS_dispatch_queue.global(qos:)();
          (*v192)(v164, v165);
          v167 = swift_allocObject();
          v167[2] = sub_10058A014;
          v167[3] = v117;
          v167[4] = v115;
          v263 = sub_10058D73C;
          v264 = v167;
          aBlock = _NSConcreteStackBlock;
          v260 = 1107296256;
          v261 = sub_100006684;
          v262 = &unk_101628610;
          v168 = _Block_copy(&aBlock);

          swift_errorRetain();
          v169 = v213;
          static DispatchQoS.unspecified.getter();
          v265 = _swiftEmptyArrayStorage;
          sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v170 = v215;
          v171 = v216;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v168);

          sub_100016590(v256, v257);
          (*v210)(v170, v171);
          v172 = v169;
          v68 = v249;
          (*v209)(v172, v214);
          v70 = v239;
          sub_10058B268(v239, type metadata accessor for LegacySelfBeaconingKeyEnvelope);

LABEL_21:
          v69 = v243;
          goto LABEL_7;
        }

        v258 = 0;
        sub_10058B268(v113, type metadata accessor for SecureLocationsRelayAction.Response);
        v123 = v188;
        v241 = *(v188 + 8);
        v124 = v249;
        v241(v217, v249);
        sub_10000B3A8(v218, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v219, type metadata accessor for MessagingOptions);
        v242 = *(v123 + 32);
        v125 = v189;
        v242(v189, v121, v124);
        v126 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v127 = *(v126 + 48);
        v128 = *(v126 + 52);
        swift_allocObject();
        v251 = Future.init()();
        static os_log_type_t.default.getter();
        v129 = swift_allocObject();
        *(v129 + 16) = v222;
        v130 = UUID.uuidString.getter();
        v131 = v247;
        *(v129 + 56) = &type metadata for String;
        *(v129 + 64) = v131;
        *(v129 + 32) = v130;
        *(v129 + 40) = v132;
        os_log(_:dso:log:_:_:)();

        v133 = v221;
        v252 = *(v221 + 168);
        v134 = v190;
        v135 = v124;
        v244(v190, v125, v124);
        v247 = *(v123 + 80);
        v246 = ((v247 + 24) & ~v247) + v181;
        v136 = (v247 + 24) & ~v247;
        v250 = v136;
        v137 = (v246 + 7) & 0xFFFFFFFFFFFFFFF8;
        v138 = swift_allocObject();
        *(v138 + 16) = v133;
        v139 = v242;
        v242((v138 + v136), v134, v135);
        *(v138 + v137) = v251;
        v263 = sub_10058D4DC;
        v264 = v138;
        aBlock = _NSConcreteStackBlock;
        v260 = 1107296256;
        v261 = sub_100006684;
        v262 = &unk_101628660;
        v140 = _Block_copy(&aBlock);

        v141 = v213;
        static DispatchQoS.unspecified.getter();
        v265 = _swiftEmptyArrayStorage;
        v178 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v177 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v179 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v142 = v215;
        v143 = v216;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v140);
        v225 = *v210;
        v225(v142, v143);
        v180 = *v209;
        v180(v141, v214);

        v144 = v190;
        v145 = v189;
        v68 = v249;
        v244(v190, v189, v249);
        v146 = swift_allocObject();
        v147 = v221;
        *(v146 + 16) = v221;
        v139(v146 + v250, v144, v68);
        v148 = (v146 + v137);
        v149 = v226;
        *v148 = sub_10058A014;
        v148[1] = v149;
        v150 = v147;

        Future.addSuccess(block:)();

        v151 = swift_allocObject();
        *(v151 + 16) = sub_10058A014;
        *(v151 + 24) = v149;

        Future.addFailure(block:)();

        v152 = v182;
        static DispatchTime.now()();
        + infix(_:_:)();
        v176 = *v183;
        v176(v152, v187);
        v153 = v190;
        v244(v190, v145, v68);
        v154 = swift_allocObject();
        *(v154 + 16) = v150;
        v242((v154 + v250), v153, v68);
        v263 = sub_10058D4E0;
        v264 = v154;
        aBlock = _NSConcreteStackBlock;
        v260 = 1107296256;
        v261 = sub_100006684;
        v262 = &unk_101628700;
        v155 = _Block_copy(&aBlock);

        v156 = v213;
        static DispatchQoS.unspecified.getter();
        v265 = _swiftEmptyArrayStorage;
        v157 = v215;
        v158 = v216;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v159 = v186;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v155);

        sub_100016590(v256, v257);
        v225(v157, v158);
        v180(v156, v214);
        v176(v159, v187);
        v241(v189, v68);
        v70 = v239;
        sub_10058B268(v239, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
      }

LABEL_7:
      v66 = v253 + 1;
      v67 = v258;
      v65 = v240;
      if (v231 == v253 + 1)
      {
        goto LABEL_23;
      }
    }
  }

  v69 = v243;
LABEL_23:

  OS_dispatch_group.wait()();
  v173 = v184;
  swift_beginAccess();
  if (*v173)
  {
    v174 = *v173;
    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
  }
}

void sub_100568774(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v21 - v13);
  sub_1000D2A70(a1, &v21 - v13, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    swift_beginAccess();
    v16 = *(a3 + 16);
    *(a3 + 16) = v15;
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)();

    (*(v7 + 8))(v10, v6);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1005689EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v290 = a6;
  v297 = a5;
  LODWORD(v296) = a4;
  *&v299 = a3;
  v288 = a2;
  v255 = type metadata accessor for DispatchQoS.QoSClass();
  v254 = *(v255 - 8);
  v6 = *(v254 + 64);
  __chkstk_darwin(v255);
  v253 = &v249 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for DispatchTime();
  v252 = *(v256 - 8);
  v8 = *(v252 + 64);
  v9 = __chkstk_darwin(v256);
  v250 = &v249 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v251 = &v249 - v11;
  v262 = type metadata accessor for DispatchWorkItemFlags();
  v268 = *(v262 - 8);
  v12 = *(v268 + 64);
  __chkstk_darwin(v262);
  v261 = &v249 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = type metadata accessor for DispatchQoS();
  v267 = *(v265 - 8);
  v14 = *(v267 + 64);
  __chkstk_darwin(v265);
  v264 = &v249 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for MessagingOptions(0);
  v16 = *(*(v259 - 8) + 64);
  __chkstk_darwin(v259);
  v260 = &v249 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v258 = &v249 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v269 = &v249 - v22;
  v272 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v23 = *(*(v272 - 8) + 64);
  __chkstk_darwin(v272);
  v273 = (&v249 - v24);
  v281 = type metadata accessor for SystemInfo.DeviceLockState();
  v280 = *(v281 - 8);
  v25 = *(v280 + 64);
  v26 = __chkstk_darwin(v281);
  v279 = &v249 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v278 = &v249 - v28;
  v292 = type metadata accessor for OwnedBeaconRecord();
  v275 = *(v292 - 8);
  v29 = *(v275 + 64);
  v30 = __chkstk_darwin(v292);
  v291 = &v249 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = v31;
  __chkstk_darwin(v30);
  v277 = &v249 - v32;
  v33 = type metadata accessor for SharingRampState();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v274 = &v249 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FamilyCryptoKeysV1();
  v303 = *(v36 - 8);
  v37 = *(v303 + 64);
  v38 = __chkstk_darwin(v36);
  v40 = &v249 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v304 = &v249 - v41;
  v285 = type metadata accessor for SelfBeaconingKeyEnvelope(0);
  v42 = *(*(v285 - 8) + 64);
  v43 = __chkstk_darwin(v285);
  v286 = &v249 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v287 = &v249 - v45;
  v46 = type metadata accessor for TimeBasedKey();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = __chkstk_darwin(v46);
  v51 = &v249 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v49);
  v302 = (&v249 - v53);
  __chkstk_darwin(v52);
  v55 = &v249 - v54;
  v56 = type metadata accessor for FamilyCryptoKeysV2();
  v305 = *(v56 - 8);
  v306 = v56;
  v57 = *(v305 + 64);
  v58 = __chkstk_darwin(v56);
  v307 = &v249 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v61 = &v249 - v60;
  v62 = type metadata accessor for UUID();
  v63 = *(v62 - 8);
  v300 = v62;
  v301 = v63;
  v64 = *(v63 + 64);
  v65 = __chkstk_darwin(v62);
  v263 = &v249 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v257 = &v249 - v68;
  v69 = __chkstk_darwin(v67);
  v266 = &v249 - v70;
  v71 = __chkstk_darwin(v69);
  v293 = &v249 - v72;
  v249 = v73;
  __chkstk_darwin(v71);
  v294 = &v249 - v74;
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope();
  v75 = *(*(MyAccessoryFamilyKeyEnvelope - 8) + 64);
  v76 = __chkstk_darwin(MyAccessoryFamilyKeyEnvelope);
  v283 = &v249 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v284 = &v249 - v78;
  v79 = type metadata accessor for Date();
  v80 = *(v79 - 8);
  v81 = *(v80 + 64);
  v82 = __chkstk_darwin(v79);
  v85 = &v249 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v83 + 16);
  v308 = v46;
  v289 = v83;
  v298 = v47;
  if (v86)
  {
    v87 = v83 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * (v86 - 1) + *(v46 + 20);
    v270 = v82;
    v88 = v85;
    DateInterval.end.getter();
    Date.timeIntervalSinceNow.getter();
    v90 = v89;
    (*(v80 + 8))(v88, v270);
  }

  else
  {
    v90 = 0x4105180000000000;
  }

  v91 = v299;
  v92 = sub_1000322C8();
  v93 = *(v292 + 20);
  v94 = *(v301 + 16);
  v292 = v301 + 16;
  v270 = v94;
  v95 = (v91 + v93);
  if (v92)
  {
    v94(v294, v95, v300);
    v96 = _swiftEmptyArrayStorage;
    if (v86)
    {
      aBlock = _swiftEmptyArrayStorage;
      sub_101124C54(0, v86, 0);
      v96 = aBlock;
      v97 = v289 + ((*(v298 + 80) + 32) & ~*(v298 + 80));
      v304 = *(v298 + 72);
      do
      {
        sub_10058B200(v97, v55, type metadata accessor for TimeBasedKey);
        *v61 = *v55;
        v98 = v308;
        v99 = *(v308 + 20);
        v100 = v306;
        v101 = v306[5];
        v102 = type metadata accessor for DateInterval();
        (*(*(v102 - 8) + 16))(&v61[v101], &v55[v99], v102);
        v103 = &v55[*(v98 + 24)];
        v104 = *(v103 + 2);
        v105 = *(v103 + 3);
        sub_100017D5C(v104, v105);
        sub_10058B268(v55, type metadata accessor for TimeBasedKey);
        v106 = &v61[*(v100 + 24)];
        *v106 = v104;
        v106[1] = v105;
        aBlock = v96;
        v108 = v96[2];
        v107 = v96[3];
        if (v108 >= v107 >> 1)
        {
          sub_101124C54(v107 > 1, v108 + 1, 1);
          v96 = aBlock;
        }

        v96[2] = (v108 + 1);
        sub_100589B28(v61, v96 + ((*(v305 + 80) + 32) & ~*(v305 + 80)) + *(v305 + 72) * v108, type metadata accessor for FamilyCryptoKeysV2);
        v97 += v304;
        --v86;
      }

      while (v86);
    }

    v126 = v288;
    v127 = *(v288 + 16);
    v128 = _swiftEmptyArrayStorage;
    v129 = v307;
    v130 = v298;
    if (v127)
    {
      aBlock = _swiftEmptyArrayStorage;
      sub_101124C54(0, v127, 0);
      v128 = aBlock;
      v131 = v126 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
      v304 = *(v130 + 72);
      do
      {
        sub_10058B200(v131, v55, type metadata accessor for TimeBasedKey);
        *v129 = *v55;
        v132 = v308;
        v133 = *(v308 + 20);
        v134 = v306;
        v135 = v306[5];
        v136 = type metadata accessor for DateInterval();
        (*(*(v136 - 8) + 16))(v307 + v135, &v55[v133], v136);
        v137 = &v55[*(v132 + 24)];
        v138 = *(v137 + 2);
        v139 = *(v137 + 3);
        sub_100017D5C(v138, v139);
        sub_10058B268(v55, type metadata accessor for TimeBasedKey);
        v140 = *(v134 + 24);
        v129 = v307;
        v141 = (v307 + v140);
        *v141 = v138;
        v141[1] = v139;
        aBlock = v128;
        v143 = v128[2];
        v142 = v128[3];
        if (v143 >= v142 >> 1)
        {
          sub_101124C54(v142 > 1, v143 + 1, 1);
          v128 = aBlock;
        }

        v128[2] = (v143 + 1);
        sub_100589B28(v129, v128 + ((*(v305 + 80) + 32) & ~*(v305 + 80)) + *(v305 + 72) * v143, type metadata accessor for FamilyCryptoKeysV2);
        v131 += v304;
        --v127;
      }

      while (v127);
    }

    v144 = *(v301 + 32);
    v145 = v284;
    v144(v284, v294, v300);
    v146 = MyAccessoryFamilyKeyEnvelope;
    *(v145 + *(MyAccessoryFamilyKeyEnvelope + 20)) = v96;
    *(v145 + *(v146 + 24)) = v128;
    v147 = v283;
    sub_10058B200(v145, v283, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
    v148 = v295;
    sub_10053C350(5, 3, v147, &aBlock);
    result = sub_10058B268(v145, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
    v150 = v297;
    v151 = v296;
    if (v148)
    {
      return result;
    }

    v302 = v144;
    LODWORD(v298) = aBlock;
    v295 = v310;
    v306 = v312;
    v307 = v311;
    v152 = v290;
  }

  else
  {
    v109 = v300;
    v94(v293, v95, v300);
    v110 = _swiftEmptyArrayStorage;
    if (v86)
    {
      aBlock = _swiftEmptyArrayStorage;
      sub_101124C98(0, v86, 0);
      v110 = aBlock;
      v111 = v289 + ((*(v298 + 80) + 32) & ~*(v298 + 80));
      v307 = *(v298 + 72);
      do
      {
        v112 = v302;
        sub_10058B200(v111, v302, type metadata accessor for TimeBasedKey);
        sub_100589B28(v112, v51, type metadata accessor for TimeBasedKey);
        *v40 = *v51;
        v113 = v308;
        v114 = *(v308 + 20);
        v115 = *(v36 + 20);
        v116 = type metadata accessor for DateInterval();
        (*(*(v116 - 8) + 16))(&v40[v115], &v51[v114], v116);
        v117 = &v51[*(v113 + 24)];
        v118 = *(v117 + 5);
        if (v118 >> 60 == 15)
        {
          v119 = *(v117 + 2);
          v120 = *(v117 + 3);
          sub_100017D5C(v119, v120);
          sub_10058B268(v51, type metadata accessor for TimeBasedKey);
        }

        else
        {
          v119 = *(v117 + 4);
          sub_100017D5C(v119, *(v117 + 5));
          sub_10058B268(v51, type metadata accessor for TimeBasedKey);
          v120 = v118 | 0x2000000000000000;
        }

        v121 = v36;
        v122 = &v40[*(v36 + 24)];
        *v122 = v119;
        v122[1] = v120;
        v123 = v304;
        sub_100589B28(v40, v304, type metadata accessor for FamilyCryptoKeysV1);
        aBlock = v110;
        v125 = v110[2];
        v124 = v110[3];
        if (v125 >= v124 >> 1)
        {
          sub_101124C98(v124 > 1, v125 + 1, 1);
          v123 = v304;
          v110 = aBlock;
        }

        v110[2] = (v125 + 1);
        sub_100589B28(v123, v110 + ((*(v303 + 80) + 32) & ~*(v303 + 80)) + *(v303 + 72) * v125, type metadata accessor for FamilyCryptoKeysV1);
        v111 += v307;
        --v86;
        v36 = v121;
      }

      while (v86);
      v109 = v300;
    }

    v153 = *(v301 + 32);
    v154 = v287;
    v153(v287, v293, v109);
    *(v154 + *(v285 + 20)) = v110;
    v155 = v286;
    sub_10058B200(v154, v286, type metadata accessor for SelfBeaconingKeyEnvelope);
    v156 = v295;
    sub_10053C64C(5, 2, v155, &aBlock);
    result = sub_10058B268(v154, type metadata accessor for SelfBeaconingKeyEnvelope);
    v152 = v290;
    v150 = v297;
    v151 = v296;
    if (v156)
    {
      return result;
    }

    v302 = v153;
    LODWORD(v298) = aBlock;
    v295 = v310;
    v306 = v312;
    v307 = v311;
  }

  v308 = 0;
  v157 = v274;
  sub_10052FFA4(v274);
  v158 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  v159 = (*(*(v158 - 8) + 48))(v157, 2, v158);
  sub_10058B268(v157, type metadata accessor for SharingRampState);
  if (v159 == 2)
  {
    v304 = sub_100B0F690(&off_101609248);
  }

  else
  {
    v304 = &_swiftEmptySetSingleton;
  }

  v303 = sub_100B0F690(&off_101609270);
  v160 = v277;
  sub_10058B200(v299, v277, type metadata accessor for OwnedBeaconRecord);
  sub_10058B200(v160, v291, type metadata accessor for OwnedBeaconRecord);
  v161 = (*(v275 + 80) + 16) & ~*(v275 + 80);
  v162 = (v276 + v161 + 7) & 0xFFFFFFFFFFFFFFF8;
  v163 = swift_allocObject();
  sub_100589B28(v160, v163 + v161, type metadata accessor for OwnedBeaconRecord);
  v305 = v163;
  v164 = v163 + v162;
  *v164 = v151;
  *(v164 + 8) = v150;
  *(v164 + 16) = v152;

  sub_100908F24(_swiftEmptyArrayStorage);

  v165 = v152;
  v166 = v278;
  static SystemInfo.lockState.getter();
  v167 = v280;
  v168 = v279;
  v169 = v281;
  (*(v280 + 104))(v279, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v281);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v161) = dispatch thunk of static Equatable.== infix(_:_:)();
  v170 = *(v167 + 8);
  v170(v168, v169);
  v170(v166, v169);
  if (v161)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    v315 = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v171 = v273;
    *v273 = aBlock;
    swift_storeEnumTagMultiPayload();
    v172 = v171;
    v173 = v291;
    v174 = v291;
    v175 = v151;
    v176 = v150;
    v177 = v165;
LABEL_44:
    sub_10056AE50(v172, v174, v175, v176, v177);
    sub_100016590(v307, v306);

    sub_10000B3A8(v171, &qword_10169F358, &qword_1013A0810);
    return sub_10058B268(v173, type metadata accessor for OwnedBeaconRecord);
  }

  v178 = v271;
  v179 = v165;
  if ((sub_100540CB8(v151, v150, v165) & 1) == 0)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v208 = swift_allocObject();
    *(v208 + 16) = xmmword_101385D80;
    *(v208 + 56) = &type metadata for String;
    *(v208 + 64) = sub_100008C00();
    *(v208 + 32) = v150;
    *(v208 + 40) = v165;

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    v315 = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v171 = v273;
    *v273 = aBlock;
    swift_storeEnumTagMultiPayload();
    v172 = v171;
    v173 = v291;
    v174 = v291;
    v175 = v151;
    v176 = v150;
    v177 = v165;
    goto LABEL_44;
  }

  sub_10058B268(v291, type metadata accessor for OwnedBeaconRecord);
  v297 = *(v178 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v180 = swift_allocObject();
  v299 = xmmword_101385D80;
  *(v180 + 16) = xmmword_101385D80;
  *(v180 + 32) = v151;
  *(v180 + 40) = v150;
  *(v180 + 48) = v179;
  v181 = *(v301 + 56);
  v182 = v269;
  v183 = v300;
  v181(v269, 1, 1, v300);

  v184 = v260;
  UUID.init()();
  v185 = v182;
  v186 = v258;
  sub_1000D2A70(v185, v258, &qword_1016980D0, &unk_10138F3B0);
  v187 = v259;
  v188 = *(v259 + 28);
  v181(v184 + v188, 1, 1, v183);
  *(v184 + v187[5]) = v180;
  *(v184 + v187[6]) = 1;
  sub_10002311C(v186, v184 + v188, &qword_1016980D0, &unk_10138F3B0);
  v189 = v184 + v187[8];
  *v189 = v90;
  *(v189 + 8) = 0;
  *(v184 + v187[9]) = 0;
  v190 = v304;
  *(v184 + v187[10]) = v303;
  *(v184 + v187[11]) = v190;
  v191 = (v184 + v187[12]);
  *v191 = 0;
  v191[1] = 0;
  *(v184 + v187[13]) = xmmword_1013B0D90;
  v192 = v257;
  v193 = v308;
  sub_1010A6F88(v298, v295, v307, v306, v184, v257);
  v308 = v193;
  if (v193)
  {
    sub_10000B3A8(v269, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v184, type metadata accessor for MessagingOptions);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v194 = swift_allocObject();
    *(v194 + 16) = v299;
    aBlock = v193;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v195 = String.init<A>(describing:)();
    v197 = v196;
    *(v194 + 56) = &type metadata for String;
    *(v194 + 64) = sub_100008C00();
    *(v194 + 32) = v195;
    *(v194 + 40) = v197;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v198 = v254;
    v199 = v253;
    v200 = v255;
    (*(v254 + 104))(v253, enum case for DispatchQoS.QoSClass.default(_:), v255);
    v201 = static OS_dispatch_queue.global(qos:)();
    (*(v198 + 8))(v199, v200);
    v202 = swift_allocObject();
    v203 = v305;
    v202[2] = sub_10058A0D0;
    v202[3] = v203;
    v202[4] = v193;
    v313 = sub_10058D73C;
    v314 = v202;
    aBlock = _NSConcreteStackBlock;
    v310 = 1107296256;
    v311 = sub_100006684;
    v312 = &unk_101628778;
    v204 = _Block_copy(&aBlock);

    swift_errorRetain();
    v205 = v264;
    static DispatchQoS.unspecified.getter();
    v315 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v206 = v261;
    v207 = v262;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    sub_100016590(v307, v306);
    _Block_release(v204);

    (*(v268 + 8))(v206, v207);
    (*(v267 + 8))(v205, v265);
  }

  else
  {
    sub_10000B3A8(v269, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v184, type metadata accessor for MessagingOptions);
    v209 = v301;
    v210 = v266;
    v211 = v192;
    v212 = v183;
    v304 = v301 + 32;
    v302(v266, v211, v183);
    v213 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
    v214 = *(v213 + 48);
    v215 = *(v213 + 52);
    swift_allocObject();
    v216 = Future.init()();
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v217 = swift_allocObject();
    *(v217 + 16) = v299;
    v218 = UUID.uuidString.getter();
    v220 = v219;
    *(v217 + 56) = &type metadata for String;
    *(v217 + 64) = sub_100008C00();
    *(v217 + 32) = v218;
    *(v217 + 40) = v220;
    os_log(_:dso:log:_:_:)();

    v221 = v271;
    v298 = *(v271 + 168);
    v222 = v263;
    v223 = v212;
    v270(v263, v210, v212);
    v224 = (*(v209 + 80) + 24) & ~*(v209 + 80);
    *&v299 = *(v209 + 80);
    v296 = v224 + v249;
    v225 = v224;
    v303 = v224;
    v226 = (v224 + v249 + 7) & 0xFFFFFFFFFFFFFFF8;
    v227 = swift_allocObject();
    *(v227 + 16) = v221;
    v302((v227 + v225), v222, v212);
    *(v227 + v226) = v216;
    v297 = v216;
    v313 = sub_10058D4DC;
    v314 = v227;
    aBlock = _NSConcreteStackBlock;
    v310 = 1107296256;
    v295 = &v311;
    v311 = sub_100006684;
    v312 = &unk_1016287C8;
    v228 = _Block_copy(&aBlock);

    v229 = v264;
    static DispatchQoS.unspecified.getter();
    v315 = _swiftEmptyArrayStorage;
    v291 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v290 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v289 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v230 = v261;
    v231 = v262;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v228);
    v232 = *(v268 + 8);
    v268 += 8;
    v294 = v232;
    (v232)(v230, v231);
    v233 = *(v267 + 8);
    v267 += 8;
    v293 = v233;
    (v233)(v229, v265);

    v234 = v263;
    v235 = v223;
    v270(v263, v266, v223);
    v236 = swift_allocObject();
    v237 = v271;
    *(v236 + 16) = v271;
    v302((v236 + v303), v234, v235);
    v238 = (v236 + v226);
    v239 = v305;
    *v238 = sub_10058A0D0;
    v238[1] = v239;
    v240 = v237;

    Future.addSuccess(block:)();

    v241 = swift_allocObject();
    *(v241 + 16) = sub_10058A0D0;
    *(v241 + 24) = v239;

    Future.addFailure(block:)();

    v242 = v250;
    static DispatchTime.now()();
    v243 = v251;
    + infix(_:_:)();
    v288 = *(v252 + 8);
    (v288)(v242, v256);
    v244 = v263;
    v245 = v300;
    v270(v263, v266, v300);
    v246 = swift_allocObject();
    *(v246 + 16) = v240;
    v302((v246 + v303), v244, v245);
    v313 = sub_10058D4E0;
    v314 = v246;
    aBlock = _NSConcreteStackBlock;
    v310 = 1107296256;
    v311 = sub_100006684;
    v312 = &unk_101628868;
    v247 = _Block_copy(&aBlock);

    v248 = v264;
    static DispatchQoS.unspecified.getter();
    v315 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    sub_100016590(v307, v306);
    _Block_release(v247);

    (v294)(v230, v231);
    (v293)(v248, v265);
    (v288)(v243, v256);
    (*(v301 + 8))(v266, v300);
  }
}

uint64_t sub_10056AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[0] = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v31 - v15);
  sub_1000D2A70(a1, v31 - v15, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138BBE0;
    *(v18 + 56) = &type metadata for String;
    v19 = sub_100008C00();
    *(v18 + 64) = v19;
    *(v18 + 32) = a4;
    *(v18 + 40) = a5;
    v31[1] = v17;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v19;
    *(v18 + 72) = v20;
    *(v18 + 80) = v21;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10138BBE0;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    v27 = sub_100008C00();
    *(v23 + 64) = v27;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v28 = v31[0] + *(type metadata accessor for OwnedBeaconRecord() + 20);
    v29 = UUID.uuidString.getter();
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v27;
    *(v23 + 72) = v29;
    *(v23 + 80) = v30;
    os_log(_:dso:log:_:_:)();

    return (*(v9 + 8))(v12, v8);
  }
}

void sub_10056B1CC(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v51 = a3;
  v52 = a2;
  v59 = type metadata accessor for DateInterval();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v59);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeBasedKey();
  v13 = *(v12 + 20);
  DateInterval.end.getter();
  v14 = DateInterval.contains(_:)();
  (*(v8 + 8))(v11, v7);
  v15 = (a1 + *(v12 + 24));
  v16 = *v15;
  v17 = v15[1];
  v18 = *v15;
  v19 = v17;
  if (v17 >> 60 == 15)
  {
    v20 = type metadata accessor for __DataStorage();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v19 = __DataStorage.init(length:)() | 0x4000000000000000;
    v18 = 0x2000000000;
  }

  v54 = v18;
  v55 = v19;
  if (v14)
  {
    v23 = v15[5];
    v53 = v15[4];
    sub_10002E98C(v53, v23);
  }

  else
  {
    v53 = 0;
    v23 = 0xF000000000000000;
  }

  (*(v4 + 16))(v56, a1 + v13, v59);
  v24 = v15[2];
  v25 = v15[3];
  sub_10002E98C(v16, v17);
  sub_100017D5C(v24, v25);
  v26 = PublicKey.advertisement.getter(v24, v25);
  v28 = v27;
  v29 = type metadata accessor for __DataStorage();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = __DataStorage.init(length:)();
  v57 = 0x2000000000;
  v58 = v32;
  sub_1007765FC(&v57, 0);
  v33 = HIDWORD(v57) - v57;
  if (__OFSUB__(HIDWORD(v57), v57))
  {
    __break(1u);
  }

  else
  {
    v34 = v58;
    if (v33 == 32)
    {
      v35 = v57 | (HIDWORD(v57) << 32);
      v36 = *(v4 + 32);
      v37 = v28;
      v38 = v51;
      v36(v51, v56, v59);
      v39 = type metadata accessor for CryptoKeys();
      v40 = (v38 + v39[5]);
      v41 = v54;
      *v40 = v53;
      v40[1] = v23;
      v42 = (v38 + v39[6]);
      *v42 = v24;
      v42[1] = v25;
      v43 = (v38 + v39[7]);
      *v43 = v26;
      v43[1] = v37;
      v44 = (v38 + v39[8]);
      *v44 = v35;
      v44[1] = v34 | 0x4000000000000000;
      v45 = (v38 + v39[9]);
      v46 = v55;
      *v45 = v41;
      v45[1] = v46;
    }

    else
    {
      v47 = v33;
      sub_100018350();
      v48 = swift_allocError();
      *v49 = 32;
      *(v49 + 8) = v47;
      *(v49 + 16) = 0;
      swift_willThrow();

      (*(v4 + 8))(v56, v59);
      sub_100006654(v53, v23);
      sub_100016590(v24, v25);
      sub_100016590(v54, v55);
      sub_100016590(v26, v28);
      *v52 = v48;
    }
  }
}

uint64_t sub_10056B588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 168);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_10058A264;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016288B8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

void sub_10056B878(uint64_t a1, void (*a2)(void **), uint64_t a3)
{
  v418 = a3;
  v417 = a2;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v402 = &v364 - v7;
  v420 = type metadata accessor for DispatchQoS.QoSClass();
  v414 = *(v420 - 8);
  v8 = *(v414 + 64);
  __chkstk_darwin(v420);
  v419 = &v364 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = type metadata accessor for DispatchTime();
  v481 = *(v400 - 8);
  v10 = *(v481 + 64);
  v11 = __chkstk_darwin(v400);
  v392 = &v364 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v391 = &v364 - v13;
  v426 = type metadata accessor for DispatchWorkItemFlags();
  v416 = *(v426 - 8);
  v14 = *(v416 + 64);
  __chkstk_darwin(v426);
  v425 = &v364 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = type metadata accessor for DispatchQoS();
  v415 = *(v428 - 8);
  v16 = *(v415 + 64);
  __chkstk_darwin(v428);
  v427 = &v364 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = type metadata accessor for SecureLocationsRelayAction(0);
  v412 = *(v413 - 8);
  v18 = *(v412 + 64);
  v19 = __chkstk_darwin(v413);
  v386 = &v364 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v410 = &v364 - v22;
  v411 = v23;
  __chkstk_darwin(v21);
  v406 = &v364 - v24;
  v409 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v25 = *(*(v409 - 8) + 64);
  v26 = __chkstk_darwin(v409);
  v379 = &v364 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v385 = &v364 - v29;
  v30 = __chkstk_darwin(v28);
  v395 = &v364 - v31;
  __chkstk_darwin(v30);
  v405 = &v364 - v32;
  v408 = type metadata accessor for MessagingOptions(0);
  v33 = *(*(v408 - 8) + 64);
  v34 = __chkstk_darwin(v408);
  v389 = &v364 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v424 = &v364 - v36;
  v37 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v388 = &v364 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v407 = &v364 - v42;
  __chkstk_darwin(v41);
  v423 = &v364 - v43;
  v467 = type metadata accessor for UUID();
  v403 = *(v467 - 8);
  v44 = *(v403 + 64);
  v45 = __chkstk_darwin(v467);
  v387 = &v364 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v380 = &v364 - v48;
  v49 = __chkstk_darwin(v47);
  v394 = &v364 - v50;
  v51 = __chkstk_darwin(v49);
  v399 = &v364 - v52;
  v53 = __chkstk_darwin(v51);
  v422 = &v364 - v54;
  v390 = v55;
  __chkstk_darwin(v53);
  v401 = &v364 - v56;
  v441 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v57 = *(*(v441 - 8) + 64);
  __chkstk_darwin(v441);
  v440 = (&v364 - v58);
  v454 = type metadata accessor for SystemInfo.DeviceLockState();
  v59 = *(v454 - 8);
  v60 = *(v59 + 64);
  v61 = __chkstk_darwin(v454);
  v453 = &v364 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v452 = &v364 - v63;
  v64 = type metadata accessor for SharingRampState();
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v448 = &v364 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = type metadata accessor for KeyRequestEnvelope();
  v67 = *(*(v450 - 8) + 64);
  v68 = __chkstk_darwin(v450);
  v449 = &v364 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v471 = &v364 - v70;
  v475 = type metadata accessor for Date();
  v71 = *(v475 - 8);
  v72 = *(v71 + 64);
  __chkstk_darwin(v475);
  v474 = &v364 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = type metadata accessor for SharedBeaconRecord(0);
  v74 = *(v476 - 1);
  v75 = *(v74 + 64);
  v76 = __chkstk_darwin(v476);
  v404 = &v364 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v76);
  v393 = &v364 - v78;
  v79 = __chkstk_darwin(v77);
  v470 = &v364 - v80;
  v81 = __chkstk_darwin(v79);
  v447 = &v364 - v82;
  __chkstk_darwin(v81);
  v477 = &v364 - v83;
  v84 = type metadata accessor for DispatchPredicate();
  v85 = *(v84 - 8);
  v86 = *(v85 + 64);
  __chkstk_darwin(v84);
  v88 = (&v364 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  v473 = v3;
  v89 = *(v3 + 168);
  *v88 = v89;
  (*(v85 + 104))(v88, enum case for DispatchPredicate.onQueue(_:), v84);
  v398 = v89;
  LOBYTE(v89) = _dispatchPreconditionTest(_:)();
  v91 = *(v85 + 8);
  v90 = (v85 + 8);
  v91(v88, v84);
  if ((v89 & 1) == 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v92 = [objc_allocWithZone(ACAccountStore) init];
  v93 = [v92 aa_primaryAppleAccount];

  if (!v93)
  {
    type metadata accessor for SPOwnerSessionError(0);
    v483 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v335 = aBlock;
    v417(aBlock);

    return;
  }

  v397 = v93;
  v94 = [v93 username];
  if (!v94)
  {
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  v95 = v94;
  [v94 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
  v446 = v96;
  v445 = v97;
  v98 = v473;
  v99 = v477;
  v451 = v100;
  if (!v100)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v346 = swift_allocObject();
    *(v346 + 16) = xmmword_101385D80;
    v347 = v397;
    v348 = [v397 username];
    if (v348)
    {
      v349 = v348;

      v350 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v352 = v351;

      *(v346 + 56) = &type metadata for String;
      *(v346 + 64) = sub_100008C00();
      *(v346 + 32) = v350;
      *(v346 + 40) = v352;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v483 = 0;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v90 = aBlock;
      swift_willThrow();

      goto LABEL_52;
    }

    goto LABEL_59;
  }

  v101 = *(a1 + 16);
  if (!v101)
  {
LABEL_46:

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v336 = v414;
    v337 = v419;
    v338 = v420;
    (*(v414 + 104))(v419, enum case for DispatchQoS.QoSClass.default(_:), v420);
    v339 = static OS_dispatch_queue.global(qos:)();
    (*(v336 + 8))(v337, v338);
    v340 = swift_allocObject();
    v341 = v418;
    *(v340 + 16) = v417;
    *(v340 + 24) = v341;
    v489 = sub_10041ABC0;
    v490 = v340;
    aBlock = _NSConcreteStackBlock;
    v486 = 1107296256;
    v487 = sub_100006684;
    v488 = &unk_101628958;
    v342 = _Block_copy(&aBlock);

    v343 = v427;
    static DispatchQoS.unspecified.getter();
    v484 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v344 = v425;
    v345 = v426;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v342);

    goto LABEL_54;
  }

  v482 = 0;
  v102 = *(v74 + 80);
  v103 = a1 + ((v102 + 32) & ~v102);
  v472 = (v71 + 8);
  v458 = (v403 + 16);
  v439 = v102;
  v438 = (v102 + 16) & ~v102;
  v437 = (v75 + v438 + 7) & 0xFFFFFFFFFFFFFFF8;
  v433 = (v437 + 31) & 0xFFFFFFFFFFFFFFF8;
  v436 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v435 = (v59 + 104);
  v434 = (v59 + 8);
  v378 = (v403 + 56);
  v384 = (v403 + 8);
  v375 = enum case for DispatchQoS.QoSClass.default(_:);
  v374 = (v414 + 104);
  v373 = (v414 + 8);
  v383 = &v487;
  v382 = (v416 + 8);
  v381 = (v415 + 8);
  v372 = v403 + 32;
  v371 = (v481 + 8);
  v464 = *(v74 + 72);
  v466 = xmmword_10138BBE0;
  v421 = xmmword_101385D80;
  v377 = xmmword_1013B0D90;
  v376 = xmmword_10138BBF0;
  while (1)
  {
    v478 = v103;
    sub_10058B200(v103, v99, type metadata accessor for SharedBeaconRecord);
    v105 = (v99 + v476[7]);
    v106 = *v105;
    v107 = *(v105 + 2);
    v481 = *(v105 + 1);
    v108 = *(v98 + 320);
    v109 = v99 + v476[5];
    v110 = *(v108 + 24);
    v111 = __chkstk_darwin(v107);
    *(&v364 - 4) = v108;
    *(&v364 - 24) = 6;
    *(&v364 - 2) = v109;
    v480 = v111;

    v112 = v474;
    v113 = v475;
    v114 = v482;
    OS_dispatch_queue.sync<A>(execute:)();
    v482 = v114;
    v479 = v108;
    LOBYTE(v110) = sub_1010B2678(v112, 6u);
    v115 = *v472;
    (*v472)(v112, v113);
    static os_log_type_t.default.getter();
    if ((v110 & 1) == 0)
    {
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v151 = swift_allocObject();
      *(v151 + 16) = v466;
      v152 = UUID.uuidString.getter();
      v154 = v153;
      *(v151 + 56) = &type metadata for String;
      v155 = sub_100008C00();
      *(v151 + 32) = v152;
      *(v151 + 40) = v154;
      *(v151 + 96) = &type metadata for String;
      *(v151 + 104) = v155;
      v156 = v480;
      v157 = v481;
      *(v151 + 64) = v155;
      *(v151 + 72) = v157;
      *(v151 + 80) = v156;
      os_log(_:dso:log:_:_:)();

      v99 = v477;
      goto LABEL_8;
    }

    v465 = v109;
    LODWORD(v469) = v106;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v116 = qword_10177C378;
    v456 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v117 = swift_allocObject();
    *(v117 + 16) = v466;
    v118 = v465;
    v119 = UUID.uuidString.getter();
    v121 = v120;
    *(v117 + 56) = &type metadata for String;
    v122 = sub_100008C00();
    *(v117 + 32) = v119;
    *(v117 + 40) = v121;
    v123 = v116;
    *(v117 + 96) = &type metadata for String;
    *(v117 + 104) = v122;
    v457 = v122;
    v124 = v480;
    v125 = v481;
    *(v117 + 64) = v122;
    *(v117 + 72) = v125;
    *(v117 + 80) = v124;

    os_log(_:dso:log:_:_:)();

    v126 = *v458;
    v127 = v471;
    (*v458)(v471, v118, v467);
    v128 = v127 + *(v450 + 20);
    *v128 = v446;
    v129 = v451;
    *(v128 + 8) = v445;
    *(v128 + 16) = v129;
    v130 = v127;
    v131 = v449;
    sub_10058B200(v130, v449, type metadata accessor for KeyRequestEnvelope);

    v132 = v482;
    sub_10053CC44(6, 2, v131, &aBlock);
    v482 = v132;
    if (v132)
    {
      sub_10058B268(v471, type metadata accessor for KeyRequestEnvelope);

      sub_10058B268(v477, type metadata accessor for SharedBeaconRecord);
      v90 = v482;
      goto LABEL_52;
    }

    v455 = v126;
    v462 = v123;
    v461 = v101;
    LODWORD(v444) = aBlock;
    v443 = v486;
    v468 = v487;
    v463 = v488;
    v133 = v474;
    static Date.trustedNow.getter(v474);
    sub_1010B1D04(v118, v133, 6);
    v115(v133, v475);
    v134 = v448;
    sub_10052FFA4(v448);
    v135 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    v136 = (*(*(v135 - 8) + 48))(v134, 2, v135);
    sub_10058B268(v134, type metadata accessor for SharingRampState);
    v137 = &_swiftEmptySetSingleton;
    if (v136 == 2)
    {
      v137 = sub_100B0F690(&off_101609620);
    }

    v460 = v137;
    v442 = *(v479 + 16);
    v459 = sub_100B0F690(&off_101609648);
    v138 = v447;
    sub_10058B200(v477, v447, type metadata accessor for SharedBeaconRecord);
    sub_10058B200(v138, v470, type metadata accessor for SharedBeaconRecord);
    v139 = v433;
    v140 = swift_allocObject();
    sub_100589B28(v138, v140 + v438, type metadata accessor for SharedBeaconRecord);
    v141 = v140 + v437;
    v142 = v469;
    *v141 = v469;
    *(v141 + 8) = v125;
    *(v141 + 16) = v124;
    *(v140 + v139) = v473;

    sub_100908F24(_swiftEmptyArrayStorage);

    v143 = v452;
    static SystemInfo.lockState.getter();
    v144 = v453;
    v145 = v454;
    v432 = *v435;
    (v432)(v453, v436, v454);
    v430 = sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v139) = dispatch thunk of static Equatable.== infix(_:_:)();
    v146 = *v434;
    (*v434)(v144, v145);
    v431 = v146;
    v146(v143, v145);
    if ((v139 & 1) == 0)
    {
      v158 = v459;
      v429 = v140;
      v159 = v473;
      v160 = v125;
      if ((sub_100540CB8(v142, v125, v124) & 1) == 0)
      {

        static os_log_type_t.error.getter();
        v181 = swift_allocObject();
        *(v181 + 16) = v421;
        v182 = v457;
        *(v181 + 56) = &type metadata for String;
        *(v181 + 64) = v182;
        *(v181 + 32) = v125;
        *(v181 + 40) = v124;

        os_log(_:dso:log:_:_:)();

        type metadata accessor for SPOwnerSessionError(0);
        v484 = 12;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v183 = v440;
        *v440 = aBlock;
        swift_storeEnumTagMultiPayload();
        v148 = v470;
        sub_10056FF14(v183, v470, v142, v125, v124, v159);

        sub_10000B3A8(v183, &qword_10169F358, &qword_1013A0810);
        v150 = v463;
        v98 = v159;
        goto LABEL_29;
      }

      v396 = *(v159 + 24);
      sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
      v161 = swift_allocObject();
      *(v161 + 16) = v421;
      *(v161 + 32) = v142;
      *(v161 + 40) = v160;
      *(v161 + 48) = v124;
      v162 = *v378;
      v163 = v423;
      v164 = v467;
      (*v378)(v423, 1, 1, v467);

      v165 = v422;
      UUID.init()();
      v166 = v424;
      v455(v424, v165, v164);
      v167 = v407;
      sub_1000D2A70(v163, v407, &qword_1016980D0, &unk_10138F3B0);
      v168 = v408;
      v169 = *(v408 + 28);
      v162(v166 + v169, 1, 1, v164);
      *(v166 + v168[5]) = v161;
      *(v166 + v168[6]) = 1;
      sub_10002311C(v167, v166 + v169, &qword_1016980D0, &unk_10138F3B0);
      v170 = v166 + v168[8];
      *v170 = v442;
      *(v170 + 8) = 0;
      *(v166 + v168[9]) = 0;
      *(v166 + v168[10]) = v158;
      *(v166 + v168[11]) = v460;
      v171 = (v166 + v168[12]);
      *v171 = 0;
      v171[1] = 0;
      *(v166 + v168[13]) = v377;
      v172 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
      v173 = v406;
      sub_10058B200(v166, &v406[*(v172 + 24)], type metadata accessor for MessagingOptions);
      *v173 = v444;
      v174 = v468;
      *(v173 + 8) = v443;
      *(v173 + 16) = v174;
      v150 = v463;
      *(v173 + 24) = v463;
      *(v173 + 32) = v376;
      swift_storeEnumTagMultiPayload();
      v175 = v410;
      sub_10058B200(v173, v410, type metadata accessor for SecureLocationsRelayAction);
      v176 = (*(v412 + 80) + 24) & ~*(v412 + 80);
      v177 = swift_allocObject();
      *(v177 + 16) = v396;
      sub_100589B28(v175, v177 + v176, type metadata accessor for SecureLocationsRelayAction);
      sub_100017D5C(v174, v150);

      v178 = v405;
      v179 = v482;
      unsafeFromAsyncTask<A>(_:)();
      if (v179)
      {

        sub_10058B268(v173, type metadata accessor for SecureLocationsRelayAction);
        v180 = v179;
      }

      else
      {
        sub_10058B268(v173, type metadata accessor for SecureLocationsRelayAction);

        v184 = v395;
        sub_10058B200(v178, v395, type metadata accessor for SecureLocationsRelayAction.Response);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v482 = 0;
          sub_10058B268(v178, type metadata accessor for SecureLocationsRelayAction.Response);
          v185 = v403;
          v444 = *(v403 + 8);
          v186 = v467;
          v444(v422, v467);
          sub_10000B3A8(v423, &qword_1016980D0, &unk_10138F3B0);
          sub_10058B268(v424, type metadata accessor for MessagingOptions);
          v187 = *(v185 + 32);
          v188 = v401;
          v187(v401, v184, v186);
          v189 = v187;
          v190 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
          v191 = *(v190 + 48);
          v192 = *(v190 + 52);
          swift_allocObject();
          v193 = Future.init()();
          static os_log_type_t.default.getter();
          v194 = swift_allocObject();
          *(v194 + 16) = v421;
          v195 = UUID.uuidString.getter();
          v196 = v457;
          *(v194 + 56) = &type metadata for String;
          *(v194 + 64) = v196;
          *(v194 + 32) = v195;
          *(v194 + 40) = v197;
          os_log(_:dso:log:_:_:)();

          v198 = v399;
          v455(v399, v188, v186);
          v459 = *(v185 + 80);
          v443 = ((v459 + 24) & ~v459) + v390;
          v199 = (v459 + 24) & ~v459;
          v460 = v199;
          v200 = (v443 + 7) & 0xFFFFFFFFFFFFFFF8;
          v201 = swift_allocObject();
          *(v201 + 16) = v473;
          v189(v201 + v199, v198, v186);
          v366 = v189;
          *(v201 + v200) = v193;
          v489 = sub_10058D4DC;
          v490 = v201;
          aBlock = _NSConcreteStackBlock;
          v486 = 1107296256;
          v487 = sub_100006684;
          v488 = &unk_101628C28;
          v202 = _Block_copy(&aBlock);

          v203 = v427;
          static DispatchQoS.unspecified.getter();
          v484 = _swiftEmptyArrayStorage;
          v369 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          v368 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          v370 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v204 = v425;
          v205 = v426;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v202);
          v442 = *v382;
          v442(v204, v205);
          v396 = *v381;
          v396(v203, v428);

          v206 = v399;
          v207 = v467;
          v455(v399, v401, v467);
          v208 = swift_allocObject();
          *(v208 + 16) = v473;
          v189(&v460[v208], v206, v207);
          v209 = (v208 + v200);
          v210 = v429;
          *v209 = sub_10058A290;
          v209[1] = v210;

          v367 = v193;
          Future.addSuccess(block:)();

          v211 = swift_allocObject();
          *(v211 + 16) = sub_10058A290;
          *(v211 + 24) = v210;

          Future.addFailure(block:)();

          v212 = v392;
          static DispatchTime.now()();
          v213 = v391;
          + infix(_:_:)();
          v365 = *v371;
          v365(v212, v400);
          v214 = v206;
          v215 = v401;
          v216 = v467;
          v455(v206, v401, v467);
          v217 = swift_allocObject();
          v218 = v473;
          *(v217 + 16) = v473;
          v366(&v460[v217], v214, v216);
          v489 = sub_10058D4E0;
          v490 = v217;
          aBlock = _NSConcreteStackBlock;
          v486 = 1107296256;
          v487 = sub_100006684;
          v488 = &unk_101628CC8;
          v219 = _Block_copy(&aBlock);
          v98 = v218;

          v220 = v427;
          static DispatchQoS.unspecified.getter();
          v484 = _swiftEmptyArrayStorage;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v219);

          v442(v204, v205);
          v396(v220, v428);
          v365(v213, v400);
          v150 = v463;
          v444(v215, v467);

LABEL_28:
          v148 = v470;
          v124 = v480;
          goto LABEL_29;
        }

        sub_10058B268(v184, type metadata accessor for SecureLocationsRelayAction.Response);
        sub_10057C844();
        v180 = swift_allocError();
        swift_willThrow();
        sub_10058B268(v178, type metadata accessor for SecureLocationsRelayAction.Response);
      }

      v482 = 0;
      v221 = v429;
      (*v384)(v422, v467);
      sub_10000B3A8(v423, &qword_1016980D0, &unk_10138F3B0);
      sub_10058B268(v424, type metadata accessor for MessagingOptions);
      static os_log_type_t.error.getter();
      v222 = swift_allocObject();
      *(v222 + 16) = v421;
      aBlock = v180;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v223 = String.init<A>(describing:)();
      v224 = v457;
      *(v222 + 56) = &type metadata for String;
      *(v222 + 64) = v224;
      *(v222 + 32) = v223;
      *(v222 + 40) = v225;
      os_log(_:dso:log:_:_:)();

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v226 = v419;
      v227 = v420;
      (*v374)(v419, v375, v420);
      v228 = static OS_dispatch_queue.global(qos:)();
      (*v373)(v226, v227);
      v229 = swift_allocObject();
      v229[2] = sub_10058A290;
      v229[3] = v221;
      v229[4] = v180;
      v489 = sub_10058D73C;
      v490 = v229;
      aBlock = _NSConcreteStackBlock;
      v486 = 1107296256;
      v487 = sub_100006684;
      v488 = &unk_101628BD8;
      v230 = _Block_copy(&aBlock);

      swift_errorRetain();
      v231 = v427;
      static DispatchQoS.unspecified.getter();
      v484 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v232 = v425;
      v233 = v426;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v230);

      (*v382)(v232, v233);
      (*v381)(v231, v428);

      v98 = v473;
      goto LABEL_28;
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    v484 = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v147 = v440;
    *v440 = aBlock;
    swift_storeEnumTagMultiPayload();
    v148 = v470;
    v149 = v125;
    v98 = v473;
    sub_10056FF14(v147, v470, v142, v149, v124, v473);

    sub_10000B3A8(v147, &qword_10169F358, &qword_1013A0810);
    v150 = v463;
LABEL_29:
    sub_10058B268(v148, type metadata accessor for SharedBeaconRecord);
    v99 = v477;
    if (*(v477 + v476[11]) == -1 && *(v477 + v476[12]) == -1)
    {
      v234 = dispatch_group_create();
      v235 = sub_101129A8C(&off_101609298);
      v236 = swift_allocObject();
      *(v236 + 16) = 0;
      dispatch_group_enter(v234);
      v237 = *(v98 + 24);
      v238 = swift_allocObject();
      v238[2] = v236;
      v238[3] = v235;
      v238[4] = v234;
      v239 = type metadata accessor for TaskPriority();
      v240 = v402;
      (*(*(v239 - 8) + 56))(v402, 1, 1, v239);
      v241 = swift_allocObject();
      *(v241 + 16) = 0;
      *(v241 + 24) = 0;
      *(v241 + 32) = v237;
      *(v241 + 40) = v469;
      *(v241 + 48) = v481;
      *(v241 + 56) = v124;
      *(v241 + 64) = sub_10058D544;
      *(v241 + 72) = v238;
      v98 = v473;

      v242 = v234;

      sub_10025EDD4(0, 0, v240, &unk_1013B1210, v241);

      OS_dispatch_group.wait()();

      v99 = v477;
      swift_beginAccess();
      LODWORD(v240) = *(v236 + 16);

      if (v240 == 1)
      {
        break;
      }
    }

    sub_100016590(v468, v150);

    sub_10058B268(v471, type metadata accessor for KeyRequestEnvelope);
    v101 = v461;
LABEL_8:
    v104 = v478;
    sub_10058B268(v99, type metadata accessor for SharedBeaconRecord);
    v103 = v104 + v464;
    if (!--v101)
    {
      goto LABEL_46;
    }
  }

  v243 = v394;
  v455(v394, v465, v467);
  v244 = v482;
  sub_10053A3CC(6, 1, v243, &aBlock);
  v90 = v244;
  v101 = v461;
  if (!v244)
  {
    v459 = v237;
    LODWORD(v444) = aBlock;
    v443 = v486;
    v460 = v487;
    v465 = v488;
    v442 = *(v479 + 16);
    v479 = sub_100B0F690(&off_101609670);
    v245 = v393;
    sub_10058B200(v99, v393, type metadata accessor for SharedBeaconRecord);
    sub_10058B200(v245, v404, type metadata accessor for SharedBeaconRecord);
    v246 = v437;
    v247 = swift_allocObject();
    sub_100589B28(v245, v247 + v438, type metadata accessor for SharedBeaconRecord);
    v248 = v247 + v246;
    *v248 = v469;
    *(v248 + 8) = v481;
    *(v248 + 16) = v124;

    sub_100908F24(_swiftEmptyArrayStorage);

    v249 = sub_101129A8C(&off_101609698);
    v250 = v452;
    static SystemInfo.lockState.getter();
    v251 = v453;
    v252 = v454;
    (v432)(v453, v436, v454);
    LOBYTE(v246) = dispatch thunk of static Equatable.== infix(_:_:)();
    v253 = v431;
    v431(v251, v252);
    v253(v250, v252);
    v482 = 0;
    if (v246)
    {

      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      type metadata accessor for SPOwnerSessionError(0);
      v484 = 5;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v254 = v440;
      *v440 = aBlock;
      swift_storeEnumTagMultiPayload();
      v255 = v404;
      sub_1005702A4(v254, v404, v469, v481, v124);

      sub_100016590(v468, v463);
      sub_100016590(v460, v465);
      sub_10000B3A8(v254, &qword_10169F358, &qword_1013A0810);
      sub_10058B268(v471, type metadata accessor for KeyRequestEnvelope);
      v98 = v473;
      v256 = v255;
LABEL_44:
      sub_10058B268(v256, type metadata accessor for SharedBeaconRecord);
      v99 = v477;
      goto LABEL_8;
    }

    v257 = v404;
    v432 = v247;
    v258 = v469;
    v259 = v481;
    if ((sub_100540CB8(v469, v481, v124) & 1) == 0)
    {

      static os_log_type_t.error.getter();
      v283 = swift_allocObject();
      *(v283 + 16) = v421;
      v284 = v457;
      *(v283 + 56) = &type metadata for String;
      *(v283 + 64) = v284;
      *(v283 + 32) = v259;
      *(v283 + 40) = v124;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for SPOwnerSessionError(0);
      v484 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v285 = v440;
      *v440 = aBlock;
      swift_storeEnumTagMultiPayload();
      sub_1005702A4(v285, v257, v258, v259, v124);

      sub_100016590(v468, v463);
      sub_100016590(v460, v465);
      sub_10000B3A8(v285, &qword_10169F358, &qword_1013A0810);
      sub_10058B268(v471, type metadata accessor for KeyRequestEnvelope);
      v256 = v257;
      v98 = v473;
      goto LABEL_44;
    }

    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v260 = swift_allocObject();
    *(v260 + 16) = v421;
    *(v260 + 32) = v258;
    *(v260 + 40) = v259;
    *(v260 + 48) = v124;
    v261 = *v378;
    v262 = v388;
    v263 = v467;
    (*v378)(v388, 1, 1, v467);

    v264 = v387;
    UUID.init()();
    v265 = v389;
    v455(v389, v264, v263);
    v266 = v263;
    v267 = v407;
    sub_1000D2A70(v262, v407, &qword_1016980D0, &unk_10138F3B0);
    v268 = v408;
    v269 = *(v408 + 28);
    v261(v265 + v269, 1, 1, v266);
    *(v265 + v268[5]) = v260;
    *(v265 + v268[6]) = 1;
    sub_10002311C(v267, v265 + v269, &qword_1016980D0, &unk_10138F3B0);
    v270 = v265 + v268[8];
    *v270 = v442;
    *(v270 + 8) = 0;
    *(v265 + v268[9]) = 0;
    *(v265 + v268[10]) = v249;
    *(v265 + v268[11]) = v479;
    v271 = (v265 + v268[12]);
    *v271 = 0;
    v271[1] = 0;
    *(v265 + v268[13]) = v377;
    v272 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v273 = v386;
    sub_10058B200(v265, &v386[*(v272 + 24)], type metadata accessor for MessagingOptions);
    *v273 = v444;
    v274 = v460;
    *(v273 + 8) = v443;
    *(v273 + 16) = v274;
    v275 = v465;
    *(v273 + 24) = v465;
    *(v273 + 32) = v376;
    swift_storeEnumTagMultiPayload();
    v276 = v410;
    sub_10058B200(v273, v410, type metadata accessor for SecureLocationsRelayAction);
    v277 = (*(v412 + 80) + 24) & ~*(v412 + 80);
    v278 = swift_allocObject();
    *(v278 + 16) = v459;
    sub_100589B28(v276, v278 + v277, type metadata accessor for SecureLocationsRelayAction);

    sub_100017D5C(v274, v275);
    v279 = v385;
    v280 = v482;
    unsafeFromAsyncTask<A>(_:)();
    if (v280)
    {

      sub_10058B268(v273, type metadata accessor for SecureLocationsRelayAction);
      v281 = v280;
      v482 = 0;
      v98 = v473;
      v282 = v467;
      goto LABEL_42;
    }

    v482 = 0;
    sub_10058B268(v273, type metadata accessor for SecureLocationsRelayAction);

    v286 = v379;
    sub_10058B200(v279, v379, type metadata accessor for SecureLocationsRelayAction.Response);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v98 = v473;
    if (EnumCaseMultiPayload == 4)
    {
      sub_10058B268(v279, type metadata accessor for SecureLocationsRelayAction.Response);
      v288 = v403;
      v444 = *(v403 + 8);
      v289 = v467;
      v444(v387, v467);
      sub_10000B3A8(v388, &qword_1016980D0, &unk_10138F3B0);
      sub_10058B268(v389, type metadata accessor for MessagingOptions);
      v459 = *(v288 + 32);
      v290 = v380;
      (v459)();
      v291 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
      v292 = *(v291 + 48);
      v293 = *(v291 + 52);
      swift_allocObject();
      v294 = Future.init()();
      static os_log_type_t.default.getter();
      v295 = swift_allocObject();
      *(v295 + 16) = v421;
      v296 = UUID.uuidString.getter();
      v297 = v457;
      *(v295 + 56) = &type metadata for String;
      *(v295 + 64) = v297;
      *(v295 + 32) = v296;
      *(v295 + 40) = v298;
      os_log(_:dso:log:_:_:)();

      v299 = v399;
      v300 = v289;
      v455(v399, v290, v289);
      v479 = *(v288 + 80);
      v462 = ((v479 + 24) & ~v479) + v390;
      v301 = (v479 + 24) & ~v479;
      v481 = v301;
      v302 = (v462 + 7) & 0xFFFFFFFFFFFFFFF8;
      v303 = swift_allocObject();
      *(v303 + 16) = v98;
      v304 = v459;
      (v459)(v303 + v301, v299, v300);
      v469 = v294;
      *(v303 + v302) = v294;
      v489 = sub_10058D4DC;
      v490 = v303;
      aBlock = _NSConcreteStackBlock;
      v486 = 1107296256;
      v487 = sub_100006684;
      v488 = &unk_101628AC0;
      v305 = _Block_copy(&aBlock);

      v306 = v427;
      static DispatchQoS.unspecified.getter();
      v484 = _swiftEmptyArrayStorage;
      v442 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      v431 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      v443 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v307 = v425;
      v308 = v426;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v305);
      v457 = *v382;
      v457(v307, v308);
      v456 = *v381;
      v456(v306, v428);

      v309 = v399;
      v310 = v467;
      v455(v399, v380, v467);
      v311 = swift_allocObject();
      *(v311 + 16) = v98;
      v304(v311 + v481, v309, v310);
      v312 = (v311 + v302);
      v313 = v432;
      *v312 = sub_10058A390;
      v312[1] = v313;

      Future.addSuccess(block:)();

      v314 = swift_allocObject();
      *(v314 + 16) = sub_10058A390;
      *(v314 + 24) = v313;
      v98 = v473;

      Future.addFailure(block:)();

      v315 = v392;
      static DispatchTime.now()();
      v316 = v391;
      + infix(_:_:)();
      v430 = *v371;
      v430(v315, v400);
      v455(v309, v380, v310);
      v317 = swift_allocObject();
      *(v317 + 16) = v98;
      v318 = v309;
      v319 = v310;
      (v459)(v317 + v481, v318, v310);
      v489 = sub_10058D4E0;
      v490 = v317;
      aBlock = _NSConcreteStackBlock;
      v486 = 1107296256;
      v487 = sub_100006684;
      v488 = &unk_101628B60;
      v320 = _Block_copy(&aBlock);

      v321 = v427;
      static DispatchQoS.unspecified.getter();
      v484 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v320);

      sub_100016590(v468, v463);

      sub_100016590(v460, v465);
      v457(v307, v308);
      v456(v321, v428);
      v430(v316, v400);
      v444(v380, v319);
    }

    else
    {
      sub_10058B268(v286, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v281 = swift_allocError();
      swift_willThrow();
      sub_10058B268(v279, type metadata accessor for SecureLocationsRelayAction.Response);
      v482 = 0;
      v282 = v467;
LABEL_42:
      v322 = v432;
      (*v384)(v387, v282);
      sub_10000B3A8(v388, &qword_1016980D0, &unk_10138F3B0);
      sub_10058B268(v389, type metadata accessor for MessagingOptions);
      static os_log_type_t.error.getter();
      v323 = swift_allocObject();
      *(v323 + 16) = v421;
      aBlock = v281;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v324 = String.init<A>(describing:)();
      v325 = v457;
      *(v323 + 56) = &type metadata for String;
      *(v323 + 64) = v325;
      *(v323 + 32) = v324;
      *(v323 + 40) = v326;
      os_log(_:dso:log:_:_:)();

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v327 = v419;
      v328 = v420;
      (*v374)(v419, v375, v420);
      v481 = static OS_dispatch_queue.global(qos:)();
      (*v373)(v327, v328);
      v329 = swift_allocObject();
      v329[2] = sub_10058A390;
      v329[3] = v322;
      v329[4] = v281;
      v489 = sub_10058D73C;
      v490 = v329;
      aBlock = _NSConcreteStackBlock;
      v486 = 1107296256;
      v487 = sub_100006684;
      v488 = &unk_101628A70;
      v330 = _Block_copy(&aBlock);

      swift_errorRetain();
      v331 = v427;
      static DispatchQoS.unspecified.getter();
      v484 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v332 = v425;
      v333 = v426;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v334 = v481;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v330);

      sub_100016590(v468, v463);

      sub_100016590(v460, v465);
      (*v382)(v332, v333);
      (*v381)(v331, v428);
    }

    sub_10058B268(v471, type metadata accessor for KeyRequestEnvelope);

    v256 = v404;
    v101 = v461;
    goto LABEL_44;
  }

  sub_10058B268(v471, type metadata accessor for KeyRequestEnvelope);
  sub_100016590(v468, v150);

  sub_10058B268(v99, type metadata accessor for SharedBeaconRecord);
LABEL_52:
  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
LABEL_57:
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v353 = swift_allocObject();
  *(v353 + 16) = xmmword_101385D80;
  aBlock = v90;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v354 = String.init<A>(describing:)();
  v356 = v355;
  *(v353 + 56) = &type metadata for String;
  *(v353 + 64) = sub_100008C00();
  *(v353 + 32) = v354;
  *(v353 + 40) = v356;
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v357 = v414;
  v358 = v419;
  v359 = v420;
  (*(v414 + 104))(v419, enum case for DispatchQoS.QoSClass.default(_:), v420);
  v360 = static OS_dispatch_queue.global(qos:)();
  (*(v357 + 8))(v358, v359);
  v361 = swift_allocObject();
  v362 = v418;
  v361[2] = v417;
  v361[3] = v362;
  v361[4] = v90;
  v489 = sub_1002EF79C;
  v490 = v361;
  aBlock = _NSConcreteStackBlock;
  v486 = 1107296256;
  v487 = sub_100006684;
  v488 = &unk_101628908;
  v363 = _Block_copy(&aBlock);

  swift_errorRetain();
  v343 = v427;
  static DispatchQoS.unspecified.getter();
  v484 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v344 = v425;
  v345 = v426;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v363);

LABEL_54:
  (*(v416 + 8))(v344, v345);
  (*(v415 + 8))(v343, v428);
}

uint64_t sub_10056FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a6;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v34 - v16);
  sub_1000D2A70(a1, v34 - v16, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v34[1] = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10138B360;
    v20 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
    v21 = UUID.uuidString.getter();
    v23 = v22;
    *(v19 + 56) = &type metadata for String;
    v24 = sub_100008C00();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v24;
    v25 = v35;
    *(v19 + 64) = v24;
    *(v19 + 72) = v25;
    *(v19 + 80) = a5;
    v37 = v18;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v26 = String.init<A>(describing:)();
    *(v19 + 136) = &type metadata for String;
    *(v19 + 144) = v24;
    *(v19 + 112) = v26;
    *(v19 + 120) = v27;
    os_log(_:dso:log:_:_:)();

    v28 = *(v36 + 320);
    sub_1010B22E4(a2 + v20, 6);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    v31 = UUID.uuidString.getter();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)();

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1005702A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[0] = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v32 - v15);
  sub_1000D2A70(a1, v32 - v15, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138B360;
    v19 = a2 + *(type metadata accessor for SharedBeaconRecord(0) + 20);
    v20 = UUID.uuidString.getter();
    v22 = v21;
    *(v18 + 56) = &type metadata for String;
    v23 = sub_100008C00();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v23;
    v24 = v32[0];
    *(v18 + 64) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = a5;
    v32[1] = v17;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v25 = String.init<A>(describing:)();
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v23;
    *(v18 + 112) = v25;
    *(v18 + 120) = v26;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v29 = UUID.uuidString.getter();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)();

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_100570620(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3[35] = v4;
  v3[36] = *(v4 + 64);
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1005706E8, 0, 0);
}

uint64_t sub_1005706E8()
{
  v1 = [objc_opt_self() defaultStore];
  v0[38] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_10057082C;
    v3 = swift_continuation_init();
    v0[17] = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100C70FE4;
    v0[13] = &unk_101628ED0;
    v0[14] = v3;
    [v2 aa_primaryAppleAccountWithCompletion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10057082C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_1005710B8;
  }

  else
  {
    v3 = sub_10057093C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10057093C()
{
  v1 = v0[26];
  v2 = v0[38];
  v0[40] = v1;

  if (v1)
  {
    v3 = [v1 username];
    if (v3)
    {
      v9 = v3;
      [v3 copy];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v0[22];
      v10 = v0[23];

      _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v18 = v0[36];
        v17 = v0[37];
        v20 = v0[34];
        v19 = v0[35];
        v22 = v0[32];
        v21 = v0[33];
        v37 = v12;

        sub_10058B200(v21, v17, type metadata accessor for OwnedBeaconRecord);
        v23 = (*(v19 + 80) + 48) & ~*(v19 + 80);
        v24 = swift_allocObject();
        v0[41] = v24;
        *(v24 + 16) = v22;
        *(v24 + 24) = v37;
        *(v24 + 32) = v15;
        *(v24 + 40) = v16;
        sub_100589B28(v17, v24 + v23, type metadata accessor for OwnedBeaconRecord);
        *(v24 + ((v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
        v25 = async function pointer to withTimeout<A>(_:block:)[1];

        v26 = swift_task_alloc();
        v0[42] = v26;
        v8 = sub_1000BC4D4(&qword_1016A4900, &qword_1013B12A0);
        *v26 = v0;
        v26[1] = sub_100570DDC;
        v6 = &unk_1013B1298;
        v4 = 0x8155A43676E00000;
        v3 = v0 + 24;
        v5 = 6;
        v7 = v24;

        return withTimeout<A>(_:block:)(v3, v4, v5, v6, v7, v8);
      }

      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_101385D80;
      v3 = [v1 username];
      if (v3)
      {
        v29 = v3;

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = sub_100008C00();
        *(v28 + 32) = v30;
        *(v28 + 40) = v32;
        os_log(_:dso:log:_:_:)();

        type metadata accessor for SPOwnerSessionError(0);
        v0[30] = 7;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v33 = v0[29];
        swift_willThrow();

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return withTimeout<A>(_:block:)(v3, v4, v5, v6, v7, v8);
  }

  type metadata accessor for SPOwnerSessionError(0);
  v0[28] = 7;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v27 = v0[27];
  swift_willThrow();
LABEL_12:
  v34 = v0[37];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100570DDC()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_100571130;
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = sub_100570EF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100570EF8()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 192);
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 320);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    *(v0 + 248) = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)();

    swift_willThrow();
    sub_1000BB584(v1, 1);

    v7 = *(v0 + 296);

    v8 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 296);

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_1005710B8()
{
  v1 = v0[38];
  v2 = v0[39];
  swift_willThrow();

  v3 = v0[39];
  v4 = v0[37];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100571130()
{
  v2 = v0[40];
  v1 = v0[41];

  v3 = v0[43];
  v4 = v0[37];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005711A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_1005711CC, 0, 0);
}

uint64_t sub_1005711CC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = sub_1000BC4D4(&qword_1016A4900, &qword_1013B12A0);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 40);
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  *(v6 + 56) = v1;
  v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1005712F4;
  v10 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v10, v5, v5, 0, 0, &unk_1013B12B0, v6, v5);
}

uint64_t sub_1005712F4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100571408(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 81) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 + 64);
  *(v8 + 160) = swift_task_alloc();
  v10 = *(type metadata accessor for ShareRecord() - 8);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 + 64);
  *(v8 + 184) = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016A4908, &qword_1013B12B8);
  *(v8 + 208) = v12;
  v13 = *(v12 - 8);
  *(v8 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1005715E8, 0, 0);
}

uint64_t sub_1005715E8()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v40 = **(v0 + 96);
    v41 = *(v0 + 144);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v38 = *(v3 + 72);
    v39 = v4;
    v37 = (*(v0 + 176) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = *(v0 + 152) + 7;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v35 = *(v7 + 56);
    v34 = (v7 + 48);
    v33 = (v7 + 8);
    v48 = v6;
    do
    {
      v47 = v2;
      v9 = *(v0 + 200);
      v10 = *(v0 + 184);
      v11 = *(v0 + 160);
      v12 = *(v0 + 128);
      v44 = *(v0 + 136);
      v45 = *(v0 + 192);
      v13 = *(v0 + 120);
      v43 = *(v0 + 112);
      v42 = *(v0 + 81);
      v35(v9, 1, 1, v48);
      v46 = v5;
      sub_10058B200(v5, v10, type metadata accessor for ShareRecord);
      sub_10058B200(v12, v11, type metadata accessor for OwnedBeaconRecord);
      v14 = (v37 + 24 + *(v41 + 80)) & ~*(v41 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      sub_100589B28(v10, v15 + v39, type metadata accessor for ShareRecord);
      v17 = v15 + v37;
      *v17 = v42;
      *(v17 + 8) = v43;
      *(v17 + 16) = v13;
      sub_100589B28(v11, v15 + v14, type metadata accessor for OwnedBeaconRecord);
      *(v15 + ((v36 + v14) & 0xFFFFFFFFFFFFFFF8)) = v44;
      sub_1000D2A70(v9, v45, &qword_101698C00, &qword_10138B570);
      LODWORD(v11) = (*v34)(v45, 1, v48);

      v18 = *(v0 + 192);
      if (v11 == 1)
      {
        sub_10000B3A8(*(v0 + 192), &qword_101698C00, &qword_10138B570);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v33)(v18, v48);
      }

      if (*v16)
      {
        v19 = *(v15 + 24);
        v20 = *v16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = &unk_1013B12D0;
      *(v24 + 24) = v15;

      sub_1000BC4D4(&qword_1016A4900, &qword_1013B12A0);
      v25 = v23 | v21;
      if (v23 | v21)
      {
        v25 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v23;
      }

      v8 = *(v0 + 200);
      *(v0 + 48) = 1;
      *(v0 + 56) = v25;
      *(v0 + 64) = v40;
      swift_task_create();

      sub_10000B3A8(v8, &qword_101698C00, &qword_10138B570);
      v5 = v46 + v38;
      v2 = v47 - 1;
    }

    while (v47 != 1);
  }

  v26 = *(v0 + 224);
  v27 = **(v0 + 96);
  sub_1000BC4D4(&qword_1016A4900, &qword_1013B12A0);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 82) = 0;
  *(v0 + 232) = 0;
  v28 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_100571AAC;
  v30 = *(v0 + 224);
  v31 = *(v0 + 208);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v31);
}

uint64_t sub_100571AAC()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_100571BA8, 0, 0);
}

uint64_t sub_100571BA8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v2 == 255)
  {
    v7 = *(v0 + 82);
    v8 = *(v0 + 232);
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 184);
    v12 = *(v0 + 160);
    v13 = *(v0 + 88);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    *v13 = v8;
    *(v13 + 8) = v7;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    if (v2)
    {
      sub_1000BB584(*(v0 + 232), *(v0 + 82));
      *(v0 + 82) = 1;
      *(v0 + 232) = v1;
    }

    v3 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v4 = swift_task_alloc();
    *(v0 + 240) = v4;
    *v4 = v0;
    v4[1] = sub_100571AAC;
    v5 = *(v0 + 224);
    v6 = *(v0 + 208);

    return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v6);
  }
}

uint64_t sub_100571D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v18;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 176) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v12 = type metadata accessor for OwnedBeaconRecord();
  *(v8 + 88) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v14 = type metadata accessor for SharedBeaconRecord(0);
  *(v8 + 104) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100571E74, 0, 0);
}

uint64_t sub_100571E74()
{
  v60 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v44 = v2;
  v4 = *(v0 + 88);
  v52 = *(v0 + 112);
  v54 = *(v0 + 80);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v48 = *(v0 + 40);
  v49 = v5;
  v46 = *(v0 + 176);
  v8 = *(v0 + 24);
  v47 = *(v0 + 32);
  v9 = type metadata accessor for ShareRecord();
  v10 = (v8 + *(v9 + 36));
  v43 = *v10;
  v41 = *(v10 + 1);
  v42 = *(v10 + 2);
  sub_10058B200(v7, v2, type metadata accessor for OwnedBeaconRecord);
  v11 = *(v5 + 16);
  v11(v54, v8 + *(v9 + 20), v6);
  *(v1 + v3[14]) = 3;
  v45 = v3[15];
  v12 = v3[20];
  v50 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v13 = *(*(v50 - 8) + 56);
  v13(v1 + v12, 1, 1, v50);
  *v1 = xmmword_10138C660;
  v11(v1 + v3[5], v44 + v4[5], v6);
  v11(v1 + v3[6], v54, v6);
  v14 = v1 + v3[7];
  *v14 = v46;
  *(v14 + 1) = v47;
  *(v14 + 2) = v48;
  v15 = (v1 + v3[8]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v44 + v4[14]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v1 + v3[9]);
  *v19 = v17;
  v19[1] = v18;
  v20 = (v44 + v4[15]);
  v21 = *v20;
  v22 = v20[1];
  v23 = (v1 + v3[10]);
  *v23 = v21;
  v23[1] = v22;
  *(v1 + v3[11]) = *(v44 + v4[16]);
  *(v1 + v3[12]) = *(v44 + v4[17]);
  *(v1 + v45) = -1;
  *(v1 + v3[13]) = 0;
  *(v1 + v3[16]) = 1;
  *(v1 + v3[17]) = 0;
  v24 = v3[18];

  static Date.distantPast.getter();
  v25 = v6;
  v26 = v4;
  (*(v49 + 8))(v54, v25);
  sub_1000D2A70(v44 + v4[7], v1 + v3[19], &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v44, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v1 + v12, &unk_1016AF890, &qword_1013926D0);
  v13(v1 + v12, 1, 1, v50);
  sub_10058B200(v1, v52, type metadata accessor for SharedBeaconRecord);
  sub_10053CF40(4, 1, v52, v56);
  v55 = v56[0];
  v27 = v58;
  v53 = v57;
  v28 = v59;
  *(v0 + 128) = v58;
  *(v0 + 136) = v28;
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 48);
  v51 = *(v0 + 56);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10138BBE0;
  v31 = v29 + v26[5];
  v32 = UUID.uuidString.getter();
  v34 = v33;
  *(v30 + 56) = &type metadata for String;
  v35 = sub_100008C00();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v35;
  *(v30 + 64) = v35;
  *(v30 + 72) = v41;
  *(v30 + 80) = v42;

  os_log(_:dso:log:_:_:)();

  v36 = swift_allocObject();
  *(v0 + 144) = v36;
  swift_weakInit();
  v37 = swift_task_alloc();
  *(v0 + 152) = v37;
  *(v37 + 16) = v36;
  *(v37 + 24) = v55;
  *(v37 + 32) = v53;
  *(v37 + 40) = v27;
  *(v37 + 48) = v28;
  *(v37 + 56) = v43;
  *(v37 + 64) = v41;
  *(v37 + 72) = v42;
  v38 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v39 = swift_task_alloc();
  *(v0 + 160) = v39;
  *v39 = v0;
  v39[1] = sub_100572440;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v39, 0, 0, 0xD000000000000030, 0x800000010135A770, sub_10058AC7C, v37, &type metadata for () + 8);
}

uint64_t sub_100572440()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  v2[21] = v0;

  v5 = v2[19];
  if (v0)
  {

    v6 = sub_100572644;
  }

  else
  {
    v7 = v2[18];

    v6 = sub_100572588;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100572588()
{
  v1 = v0[15];
  sub_100016590(v0[16], v0[17]);
  sub_10058B268(v1, type metadata accessor for SharedBeaconRecord);
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[2];
  *v6 = 0;
  *(v6 + 8) = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100572644()
{
  v1 = v0[18];
  v2 = v0[15];
  sub_100016590(v0[16], v0[17]);
  sub_10058B268(v2, type metadata accessor for SharedBeaconRecord);

  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[10];
  v7 = v0[2];
  *v7 = v0[21];
  *(v7 + 8) = 1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_100572710(uint64_t a1, uint64_t a2, int a3, uint64_t (**a4)(uint64_t a1), uint64_t a5, void (*a6)(char *, uint64_t), int a7, uint64_t a8, uint64_t a9)
{
  v187 = a8;
  LODWORD(v185) = a7;
  v177 = a6;
  v176 = a5;
  v175 = a4;
  LODWORD(v174) = a3;
  v196 = a1;
  v164 = type metadata accessor for DispatchQoS.QoSClass();
  v163 = *(v164 - 8);
  v9 = *(v163 + 64);
  __chkstk_darwin(v164);
  v162 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for DispatchTime();
  v157 = *(v159 - 8);
  v11 = *(v157 + 64);
  v12 = __chkstk_darwin(v159);
  v155 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v156 = &v152 - v14;
  v179 = type metadata accessor for DispatchWorkItemFlags();
  v183 = *(v179 - 8);
  v15 = *(v183 + 64);
  __chkstk_darwin(v179);
  v178 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for DispatchQoS();
  v182 = *(v181 - 8);
  v17 = *(v182 + 64);
  __chkstk_darwin(v181);
  v180 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for SecureLocationsRelayAction(0);
  v168 = *(v167 - 8);
  v19 = *(v168 + 64);
  v20 = __chkstk_darwin(v167);
  v170 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v21;
  __chkstk_darwin(v20);
  v171 = &v152 - v22;
  v172 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v23 = *(*(v172 - 8) + 64);
  v24 = __chkstk_darwin(v172);
  v158 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v173 = (&v152 - v26);
  v166 = type metadata accessor for MessagingOptions(0);
  v27 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v189 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v165 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v188 = &v152 - v33;
  v34 = type metadata accessor for UUID();
  v190 = *(v34 - 8);
  v191 = v34;
  v35 = v190[8];
  v36 = __chkstk_darwin(v34);
  v160 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v186 = &v152 - v39;
  v154 = v40;
  __chkstk_darwin(v38);
  v161 = &v152 - v41;
  v193 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v42 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193);
  *&v194 = &v152 - v43;
  v44 = type metadata accessor for SystemInfo.DeviceLockState();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v49 = &v152 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v51 = &v152 - v50;
  v52 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v52);
  __chkstk_darwin(v55);
  v57 = &v152 - v56;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return CheckedContinuation.resume(returning:)();
  }

  v192 = v53;
  v58 = *(v53 + 16);
  v58(v57, v196, v52);
  v184 = &v152 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58(v184, v57, v52);
  v59 = v192;
  v60 = (*(v192 + 80) + 16) & ~*(v192 + 80);
  v61 = swift_allocObject();
  v62 = *(v59 + 32);
  v196 = v52;
  v62(v61 + v60, v57, v52);
  sub_100908F24(_swiftEmptyArrayStorage);

  v63 = sub_101129A8C(&off_1016096C0);
  v64 = sub_101129A8C(_swiftEmptyArrayStorage);
  static SystemInfo.lockState.getter();
  (*(v45 + 104))(v49, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v44);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v45 + 8);
  v66(v49, v44);
  v66(v51, v44);
  if (v65)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    v203 = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v67 = v194;
    *v194 = aBlock;
    swift_storeEnumTagMultiPayload();
    v68 = v184;
    sub_10057428C(v67);
  }

  else
  {
    v153 = v61;
    v70 = v185;
    v71 = v187;
    v72 = Strong;
    if (sub_100540CB8(v185, v187, a9))
    {
      v193 = *(v72 + 24);
      sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
      v73 = swift_allocObject();
      v194 = xmmword_101385D80;
      *(v73 + 16) = xmmword_101385D80;
      *(v73 + 32) = v70;
      *(v73 + 40) = v71;
      *(v73 + 48) = a9;
      v74 = v190;
      v75 = v191;
      v76 = v190[7];
      v77 = v188;
      v76(v188, 1, 1, v191);

      v78 = v186;
      UUID.init()();
      v79 = v74[2];
      v80 = v189;
      v187 = v74 + 2;
      v185 = v79;
      v79(v189, v78, v75);
      v81 = v165;
      sub_1000D2A70(v77, v165, &qword_1016980D0, &unk_10138F3B0);
      v82 = v166;
      v83 = *(v166 + 28);
      v76(&v80[v83], 1, 1, v75);
      *&v80[v82[5]] = v73;
      v80[v82[6]] = 1;
      sub_10002311C(v81, &v80[v83], &qword_1016980D0, &unk_10138F3B0);
      v84 = &v80[v82[8]];
      *v84 = 0;
      v84[8] = 1;
      v80[v82[9]] = 0;
      *&v80[v82[10]] = v63;
      *&v80[v82[11]] = v64;
      v85 = &v80[v82[12]];
      *v85 = 0;
      v85[1] = 0;
      *&v80[v82[13]] = xmmword_1013B0D90;
      v86 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
      v87 = v171;
      sub_10058B200(v80, &v171[*(v86 + 24)], type metadata accessor for MessagingOptions);
      *v87 = v174;
      v88 = v176;
      *(v87 + 8) = v175;
      *(v87 + 16) = v88;
      v89 = v177;
      *(v87 + 24) = v177;
      *(v87 + 32) = xmmword_10138BBF0;
      swift_storeEnumTagMultiPayload();
      v90 = v170;
      sub_10058B200(v87, v170, type metadata accessor for SecureLocationsRelayAction);
      v91 = (*(v168 + 80) + 24) & ~*(v168 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = v193;
      sub_100589B28(v90, v92 + v91, type metadata accessor for SecureLocationsRelayAction);
      sub_100017D5C(v88, v89);

      v93 = v173;
      unsafeFromAsyncTask<A>(_:)();
      sub_10058B268(v87, type metadata accessor for SecureLocationsRelayAction);

      v96 = v158;
      sub_10058B200(v93, v158, type metadata accessor for SecureLocationsRelayAction.Response);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 4)
      {
        sub_10058B268(v93, type metadata accessor for SecureLocationsRelayAction.Response);
        v99 = v190;
        v98 = v191;
        v100 = v190[1];
        v101 = v186;
        v186 = (v190 + 1);
        v177 = v100;
        v100(v101, v191);
        sub_10000B3A8(v188, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v189, type metadata accessor for MessagingOptions);
        v102 = v99[4];
        v103 = v161;
        v193 = (v99 + 4);
        v189 = v102;
        (v102)(v161, v96, v98);
        v104 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        v105 = *(v104 + 48);
        v106 = *(v104 + 52);
        swift_allocObject();
        v107 = Future.init()();
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v108 = swift_allocObject();
        *(v108 + 16) = v194;
        v109 = UUID.uuidString.getter();
        v111 = v110;
        *(v108 + 56) = &type metadata for String;
        *(v108 + 64) = sub_100008C00();
        *(v108 + 32) = v109;
        *(v108 + 40) = v111;
        os_log(_:dso:log:_:_:)();

        v112 = Strong;
        v174 = *(Strong + 168);
        v113 = v160;
        v185(v160, v103, v98);
        v114 = (*(v99 + 80) + 24) & ~*(v99 + 80);
        v190 = *(v99 + 80);
        v176 = v114 + v154;
        v115 = v114;
        *&v194 = v114;
        v116 = (v114 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
        v117 = swift_allocObject();
        *(v117 + 16) = v112;
        (v189)(v117 + v115, v113, v98);
        *(v117 + v116) = v107;
        v188 = v107;
        v201 = sub_10058D4DC;
        v202 = v117;
        aBlock = _NSConcreteStackBlock;
        v198 = 1107296256;
        v175 = &v199;
        v199 = sub_100006684;
        v200 = &unk_101629038;
        v118 = _Block_copy(&aBlock);

        v119 = v180;
        static DispatchQoS.unspecified.getter();
        v203 = _swiftEmptyArrayStorage;
        v171 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v170 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v172 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v120 = v178;
        v121 = v179;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v118);
        v122 = *(v183 + 8);
        v183 += 8;
        v174 = v122;
        v122(v120, v121);
        v123 = *(v182 + 8);
        v182 += 8;
        v173 = v123;
        v123(v119, v181);

        v124 = v160;
        v125 = v161;
        v185(v160, v161, v98);
        v126 = swift_allocObject();
        *(v126 + 16) = v112;
        (v189)(v126 + v194, v124, v98);
        v127 = (v126 + v116);
        v128 = v153;
        *v127 = sub_10058ACB8;
        v127[1] = v128;

        Future.addSuccess(block:)();

        v129 = swift_allocObject();
        *(v129 + 16) = sub_10058ACB8;
        *(v129 + 24) = v128;

        Future.addFailure(block:)();

        v168 = *(v112 + 168);
        v130 = v155;
        static DispatchTime.now()();
        v131 = v98;
        v132 = v156;
        + infix(_:_:)();
        v169 = *(v157 + 8);
        v169(v130, v159);
        v133 = v160;
        v185(v160, v125, v131);
        v134 = swift_allocObject();
        *(v134 + 16) = v112;
        (v189)(v134 + v194, v133, v131);
        v201 = sub_10058D4E0;
        v202 = v134;
        aBlock = _NSConcreteStackBlock;
        v198 = 1107296256;
        v199 = sub_100006684;
        v200 = &unk_1016290D8;
        v135 = _Block_copy(&aBlock);

        v136 = v180;
        static DispatchQoS.unspecified.getter();
        v203 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v135);

        v174(v120, v121);
        v173(v136, v181);
        v169(v132, v159);
        v177(v161, v131);

        v95 = v196;
        v59 = v192;
      }

      else
      {
        sub_10058B268(v96, type metadata accessor for SecureLocationsRelayAction.Response);
        sub_10057C844();
        v137 = swift_allocError();
        swift_willThrow();
        sub_10058B268(v93, type metadata accessor for SecureLocationsRelayAction.Response);
        (v190[1])(v186, v191);
        sub_10000B3A8(v188, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v189, type metadata accessor for MessagingOptions);
        static os_log_type_t.error.getter();
        v59 = v192;
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v138 = swift_allocObject();
        *(v138 + 16) = v194;
        aBlock = v137;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v139 = String.init<A>(describing:)();
        v141 = v140;
        *(v138 + 56) = &type metadata for String;
        *(v138 + 64) = sub_100008C00();
        *(v138 + 32) = v139;
        *(v138 + 40) = v141;
        os_log(_:dso:log:_:_:)();

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v142 = v163;
        v143 = v162;
        v144 = v164;
        (*(v163 + 104))(v162, enum case for DispatchQoS.QoSClass.default(_:), v164);
        *&v194 = static OS_dispatch_queue.global(qos:)();
        (*(v142 + 8))(v143, v144);
        v145 = swift_allocObject();
        v146 = v153;
        v145[2] = sub_10058ACB8;
        v145[3] = v146;
        v145[4] = v137;
        v201 = sub_10058D73C;
        v202 = v145;
        aBlock = _NSConcreteStackBlock;
        v198 = 1107296256;
        v199 = sub_100006684;
        v200 = &unk_101628FE8;
        v147 = _Block_copy(&aBlock);

        swift_errorRetain();
        v148 = v180;
        static DispatchQoS.unspecified.getter();
        v203 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v149 = v178;
        v150 = v179;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v151 = v194;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v147);

        (*(v183 + 8))(v149, v150);
        (*(v182 + 8))(v148, v181);

        v95 = v196;
      }

      v68 = v184;
      return (*(v59 + 8))(v68, v95);
    }

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_101385D80;
    *(v94 + 56) = &type metadata for String;
    *(v94 + 64) = sub_100008C00();
    *(v94 + 32) = v71;
    *(v94 + 40) = a9;

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    v203 = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v67 = v194;
    *v194 = aBlock;
    swift_storeEnumTagMultiPayload();
    v68 = v184;
    sub_10057428C(v67);
  }

  sub_10000B3A8(v67, &qword_10169F358, &qword_1013A0810);
  v95 = v196;
  return (*(v59 + 8))(v68, v95);
}

uint64_t sub_10057428C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v16 - v9);
  sub_1000D2A70(a1, v16 - v9, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16[1] = *v10;
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)();

    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();
    return (*(v3 + 8))(v6, v2);
  }
}

void sub_100574524()
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B780);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
    v4 = Array.description.getter();
    v6 = sub_1000136BC(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Successfully forwarded separation state observation: %s", v2, 0xCu);
    sub_100007BAC(v3);
  }
}

void sub_1005746A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v26 - v11);
  sub_1000D2A70(a1, &v26 - v11, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B780);

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1000136BC(a4, a5, &v27);
      *(v17 + 12) = 2080;
      v26 = v13;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000136BC(v18, v19, &v27);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to send observations to %s due to error: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177B780);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 134218242;
      *(v24 + 4) = *(a2 + 16);

      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1000136BC(a4, a5, &v27);
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfuly sent %ld observations to %s", v24, 0x16u);
      sub_100007BAC(v25);
    }

    else
    {
    }

    sub_10000B3A8(v12, &qword_10169F358, &qword_1013A0810);
  }
}

Swift::Int sub_100574A6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100574B34()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100574BE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100574CAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10058383C(*a1);
  *a2 = result;
  return result;
}

void sub_100574CDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F687069;
  v5 = 1685024873;
  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (v2 != 3)
  {
    v8 = 6513005;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 1684107369;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100574D70(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697BC8, &qword_10138CBE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v53 - v5;
  v7 = type metadata accessor for SystemVersionNumber();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = *(a1 + 16);
  v12 = "ion16q24";
  if (!v11)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v66 = (v9 + 48);
  v59 = (v9 + 8);
  v60 = (v9 + 32);
  v14 = a1 + 32;
  v15 = _swiftEmptyArrayStorage;
  v58 = xmmword_101385D80;
  v57 = xmmword_10138BBE0;
  v67 = v6;
  v53 = a1 + 32;
  v54 = v1;
  v62 = v11;
  v56 = v7;
  do
  {
    v55 = v15;
    v16 = (v14 + 160 * v13);
    v17 = v13;
    while (1)
    {
      if (v17 >= v11)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v25 = v16[7];
      v87 = v16[6];
      v88 = v25;
      v26 = v16[9];
      v89 = v16[8];
      v90 = v26;
      v27 = v16[3];
      v83 = v16[2];
      v84 = v27;
      v28 = v16[5];
      v85 = v16[4];
      v86 = v28;
      v29 = v16[1];
      v81 = *v16;
      v82 = v29;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_27;
      }

      *&v68 = v17 + 1;
      v13 = *(&v86 + 1);
      v30 = v86;
      swift_bridgeObjectRetain_n();
      sub_10013CD18(&v81, &v71);
      SystemVersionNumber.init(string:)();
      if ((*v66)(v6, 1, v7) == 1)
      {
        v18 = v7;

        sub_10000B3A8(v6, &qword_101697BC8, &qword_10138CBE0);
        LODWORD(v13) = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v12 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v19 = swift_allocObject();
        *(v19 + 16) = v58;
        v69 = 60;
        v70 = 0xE100000000000000;
        v77 = v87;
        v78 = v88;
        v79 = v89;
        v80 = v90;
        v73 = v83;
        v74 = v84;
        v75 = v85;
        v76 = v86;
        v71 = v81;
        v72 = v82;
        sub_10058ADE8();
        v20._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
        String.append(_:)(v20);

        v21._countAndFlagsBits = 8250;
        v21._object = 0xE200000000000000;
        String.append(_:)(v21);
        String.append(_:)(v87);
        v22._countAndFlagsBits = 62;
        v22._object = 0xE100000000000000;
        String.append(_:)(v22);
        v23 = v69;
        v24 = v70;
        *(v19 + 56) = &type metadata for String;
        *(v19 + 64) = sub_100008C00();
        *(v19 + 32) = v23;
        *(v19 + 40) = v24;
        os_log(_:dso:log:_:_:)();
        sub_10013CDDC(&v81);

        v7 = v18;
        goto LABEL_7;
      }

      v31 = v61;
      (*v60)(v61, v6, v7);
      v65 = sub_100583888(v83, *(&v83 + 1), v31);
      v64 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v63 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v12 = swift_allocObject();
      *(v12 + 1) = v57;
      v69 = 60;
      v70 = 0xE100000000000000;
      v77 = v87;
      v78 = v88;
      v79 = v89;
      v80 = v90;
      v73 = v83;
      v74 = v84;
      v75 = v85;
      v76 = v86;
      v71 = v81;
      v72 = v82;
      sub_10058ADE8();
      v32._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v32);

      v33._countAndFlagsBits = 8250;
      v33._object = 0xE200000000000000;
      String.append(_:)(v33);
      String.append(_:)(v87);
      v34._countAndFlagsBits = 62;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v35 = v69;
      v36 = v70;
      *(v12 + 7) = &type metadata for String;
      v37 = sub_100008C00();
      *(v12 + 4) = v35;
      *(v12 + 5) = v36;
      *(v12 + 12) = &type metadata for String;
      *(v12 + 13) = v37;
      *(v12 + 8) = v37;
      *(v12 + 9) = v30;
      *(v12 + 10) = v13;
      os_log(_:dso:log:_:_:)();

      v7 = v56;
      (*v59)(v31, v56);
      if (v65)
      {
        break;
      }

      sub_10013CDDC(&v81);
      v11 = v62;
LABEL_7:
      v6 = v67;
      ++v17;
      v16 += 10;
      if (v68 == v11)
      {
        v1 = v54;
        v15 = v55;
        v12 = "v32@0:8@NISession16q24" + 15;
        goto LABEL_24;
      }
    }

    v38 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v38;
    v11 = v62;
    v13 = v68;
    if (isUniquelyReferenced_nonNull_native)
    {
      v12 = "v32@0:8@NISession16q24" + 15;
      v15 = v38;
    }

    else
    {
      sub_101124390(0, v38[2] + 1, 1);
      v15 = v91;
      v12 = "v32@0:8@NISession16q24" + 15;
    }

    v41 = v15[2];
    v40 = v15[3];
    if (v41 >= v40 >> 1)
    {
      sub_101124390((v40 > 1), v41 + 1, 1);
      v15 = v91;
    }

    v15[2] = v41 + 1;
    v42 = &v15[20 * v41];
    v43 = v82;
    v42[2] = v81;
    v42[3] = v43;
    v44 = v83;
    v45 = v84;
    v46 = v86;
    v42[6] = v85;
    v42[7] = v46;
    v42[4] = v44;
    v42[5] = v45;
    v47 = v87;
    v48 = v88;
    v49 = v90;
    v42[10] = v89;
    v42[11] = v49;
    v42[8] = v47;
    v42[9] = v48;
    v14 = v53;
    v1 = v54;
    v6 = v67;
  }

  while (v13 != v11);
LABEL_24:
  v7 = v15[2];

  LODWORD(v13) = *(v1 + 280);
  static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
LABEL_28:
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v50 = swift_allocObject();
  v68 = *(v12 + 216);
  *(v50 + 16) = v68;
  *(v50 + 56) = &type metadata for Bool;
  *(v50 + 64) = &protocol witness table for Bool;
  *(v50 + 32) = v13;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v51 = swift_allocObject();
  *(v51 + 16) = v68;
  *(v51 + 56) = &type metadata for Int;
  *(v51 + 64) = &protocol witness table for Int;
  *(v51 + 32) = v7 + v13;
  os_log(_:dso:log:_:_:)();

  return v7 + v13;
}

uint64_t sub_1005754E0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v12);
  sub_10058B200(v28, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v7);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = (v11 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_100589B28(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for SharedBeaconRecord);
  (*(v8 + 32))(v19 + v18, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  aBlock[4] = sub_10058CE5C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162A0F0;
  v20 = _Block_copy(aBlock);

  v21 = v30;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v32;
  v22 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v36 + 8))(v23, v22);
  (*(v34 + 8))(v21, v35);
}

uint64_t sub_100575A3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v62 = &v49 - v7;
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v9 = (v8 - 8);
  v66 = *(v8 - 8);
  v61 = *(v66 + 64);
  v10 = __chkstk_darwin(v8);
  v65 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = (a1 + v9[10]);
  v15 = *v14;
  v63 = v14[1];
  v64 = v15;
  v16 = *a1;
  v59 = a1[1];
  v60 = v16;
  v17 = v9[7];
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 16);
  v19(&v13[v17], a1 + v17, v18);
  v19(&v13[v9[8]], a1 + v9[8], v18);
  v20 = a1 + v9[9];
  LOBYTE(v18) = *v20;
  v21 = *(v20 + 1);
  v22 = *(v20 + 2);
  v23 = v9[12];
  v24 = (a1 + v9[11]);
  v25 = v24[1];
  v56 = *v24;
  v57 = v21;
  v26 = *(a1 + v23 + 8);
  v58 = *(a1 + v23);
  v27 = *(a1 + v9[14]);
  v54 = *(a1 + v9[13]);
  v55 = v27;
  v28 = *(a1 + v9[15]);
  v52 = *(a1 + v9[16]);
  v53 = v28;
  v29 = v9[18];
  v50 = *(a1 + v9[17]);
  v51 = *(a1 + v29);
  v30 = v9[20];
  v31 = type metadata accessor for Date();
  (*(*(v31 - 8) + 16))(&v13[v30], a2, v31);
  sub_1000D2A70(a1 + v9[21], &v13[v9[21]], &qword_1016980D0, &unk_10138F3B0);
  v32 = v62;
  sub_1000D2A70(a1 + v9[22], v62, &unk_1016AF890, &qword_1013926D0);
  v33 = v9[16];
  v49 = v9[17];
  v34 = v9[22];
  v35 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  (*(*(v35 - 8) + 56))(&v13[v34], 1, 1, v35);
  v37 = v59;
  v36 = v60;
  *v13 = v60;
  *(v13 + 1) = v37;
  v38 = &v13[v9[9]];
  *v38 = v18;
  *(v38 + 1) = v57;
  *(v38 + 2) = v22;
  v39 = &v13[v9[10]];
  v40 = v63;
  *v39 = v64;
  *(v39 + 1) = v40;
  v41 = &v13[v9[11]];
  *v41 = v56;
  *(v41 + 1) = v25;
  v42 = &v13[v9[12]];
  *v42 = v58;
  *(v42 + 1) = v26;
  v43 = v55;
  *&v13[v9[13]] = v54;
  *&v13[v9[14]] = v43;
  v13[v9[15]] = v53;
  v13[v33] = v52;
  *&v13[v49] = v50;
  v13[v9[18]] = v51;
  *&v13[v9[19]] = 1;
  sub_100017D5C(v36, v37);

  sub_10002311C(v32, &v13[v34], &unk_1016AF890, &qword_1013926D0);
  v44 = *(v67 + 144);
  v45 = v65;
  sub_10058B200(a1, v65, type metadata accessor for SharedBeaconRecord);
  v46 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v47 = swift_allocObject();
  sub_100589B28(v45, v47 + v46, type metadata accessor for SharedBeaconRecord);
  sub_1006DF8EC(v13, 0, sub_10058CF54, v47);

  return sub_10058B268(v13, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_100575EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v28 - v13);
  sub_1000D2A70(a1, v28 - v13, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10138BBE0;
    sub_10058B200(a2, v10, type metadata accessor for SharedBeaconRecord);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    v20 = sub_100008C00();
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v28[1] = v15;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v20;
    *(v16 + 72) = v21;
    *(v16 + 80) = v22;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_100589B28(v14, v10, type metadata accessor for SharedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    sub_10058B200(v10, v8, type metadata accessor for SharedBeaconRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100008C00();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    return sub_10058B268(v10, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_10057624C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10057633C, 0, 0);
}

uint64_t sub_10057633C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = *(v6 + 368);
  type metadata accessor for WorkItemQueue.WorkItem();
  sub_10058B200(v5, v1, type metadata accessor for OwnedBeaconRecord);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_100589B28(v1, v9 + v8, type metadata accessor for OwnedBeaconRecord);
  *(v9 + ((v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005764AC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for OwnedBeaconRecord();
  v2[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100576540, 0, 0);
}

uint64_t sub_100576540()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = *(qword_10177CEA0 + 56);

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100576618;

  return sub_100507C6C();
}

uint64_t sub_100576618(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 178) = a1;

  return _swift_task_switch(sub_100576738, 0, 0);
}

uint64_t sub_100576738()
{
  v23 = v0;
  if (*(v0 + 178) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_100576A24;
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);

    return sub_1005772E0(v2);
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A560);
    sub_10058B200(v6, v5, type metadata accessor for OwnedBeaconRecord);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 72);
    if (v10)
    {
      v12 = *(v0 + 64);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = *(v12 + 20);
      type metadata accessor for UUID();
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_10058B268(v11, type metadata accessor for OwnedBeaconRecord);
      v19 = sub_1000136BC(v16, v18, &v22);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ignoring non-me device family re-evaluation for %{private,mask.hash}s.", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      sub_10058B268(v11, type metadata accessor for OwnedBeaconRecord);
    }

    v20 = *(v0 + 72);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100576A24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 96);
  v6 = *v3;
  v4[13] = a1;
  v4[14] = a2;

  if (v2)
  {
    v7 = v4[9];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100576B74, 0, 0);
  }
}

uint64_t sub_100576B74()
{
  static os_log_type_t.default.getter();
  if (qword_101695058 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[6];
  v0[15] = qword_10177C3A0;
  v0[16] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = v2 + *(v1 + 20);
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v3 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  v0[17] = v8;
  *(v3 + 64) = v8;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_100576CFC;
  v10 = v0[14];
  v11 = v0[6];

  return sub_100583CA8(v11, v10);
}

uint64_t sub_100576CFC()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100576E70, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[20] = v4;
    *v4 = v3;
    v4[1] = sub_100577010;
    v5 = v3[13];
    v6 = v3[6];

    return sub_100587B18(v6, v5);
  }
}

uint64_t sub_100576E70()
{
  *(v0 + 16) = *(v0 + 152);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 176))
  {
    v12 = *(v0 + 152);
  }

  else
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    static os_log_type_t.error.getter();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    *(v0 + 24) = v1;
    swift_errorRetain();
    v6 = String.init<A>(describing:)();
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = v3;
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    os_log(_:dso:log:_:_:)();
  }

  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_100577010;
  v9 = *(v0 + 104);
  v10 = *(v0 + 48);

  return sub_100587B18(v10, v9);
}

uint64_t sub_100577010()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100577160, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[14];

    v6 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_100577160()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  *(v0 + 32) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 177))
  {
    v14 = *(v0 + 168);
  }

  else
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    static os_log_type_t.error.getter();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    *(v0 + 40) = v4;
    swift_errorRetain();
    v9 = String.init<A>(describing:)();
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = v6;
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    os_log(_:dso:log:_:_:)();
  }

  v11 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1005772E0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for OwnedBeaconRecord();
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for CorrelationIdentifierMap();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v9 = type metadata accessor for PeerCommunicationIdentifier();
  v2[17] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v11 = type metadata accessor for OwnerPeerTrust();
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v13 = *(v12 + 64) + 15;
  v2[21] = swift_task_alloc();
  v14 = type metadata accessor for OwnerSharingCircle();
  v2[22] = v14;
  v15 = *(v14 - 8);
  v2[23] = v15;
  v16 = *(v15 + 64) + 15;
  v2[24] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v2[25] = v17;
  v18 = *(v17 - 8);
  v2[26] = v18;
  v2[27] = *(v18 + 64);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10057756C, 0, 0);
}

uint64_t sub_10057756C()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 400))
  {
    v1 = *(v0 + 224);
    v2 = *(v0 + 192);
    v3 = *(v0 + 168);
    v4 = *(v0 + 144);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);

    v10 = *(v0 + 8);

    return v10(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }

  else
  {
    v12 = async function pointer to daemon.getter[1];
    v13 = swift_task_alloc();
    *(v0 + 232) = v13;
    *v13 = v0;
    v13[1] = sub_100577748;

    return daemon.getter();
  }
}