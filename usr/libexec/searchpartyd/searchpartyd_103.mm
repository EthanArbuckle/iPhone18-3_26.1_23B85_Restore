uint64_t sub_100AC3C94(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v187 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v177 = &v167 - v9;
  v10 = __chkstk_darwin(v8);
  v178 = &v167 - v11;
  v12 = __chkstk_darwin(v10);
  v174 = &v167 - v13;
  __chkstk_darwin(v12);
  v173 = &v167 - v14;
  v15 = type metadata accessor for Date();
  v184 = *(v15 - 8);
  v16 = *(v184 + 64);
  v17 = __chkstk_darwin(v15);
  v183 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v182 = &v167 - v19;
  v189 = sub_1000BC4D4(&qword_1016B54A8, &qword_1013D6838);
  v20 = *(v189 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v189);
  v176 = (&v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v22);
  v175 = &v167 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v167 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v167 - v30;
  v32 = __chkstk_darwin(v29);
  v179 = &v167 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v167 - v35;
  v37 = __chkstk_darwin(v34);
  v181 = &v167 - v38;
  v39 = __chkstk_darwin(v37);
  v180 = &v167 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = (&v167 - v42);
  __chkstk_darwin(v41);
  v45 = (&v167 - v44);
  v46 = sub_1000BC4D4(&qword_1016B54B0, &unk_1013D6840);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v49 = __chkstk_darwin(v48);
  v185 = &v167 - v50;
  v51 = __chkstk_darwin(v49);
  v186 = &v167 - v52;
  __chkstk_darwin(v51);
  v55 = *(v4 + 40);
  v188 = a1;
  v56 = *(*(a1 + v55) + 16);
  if (v56 > 0xFF)
  {
    goto LABEL_79;
  }

  if (v56 == 1)
  {
    v31 = v4;
    if (qword_101694BE8 == -1)
    {
LABEL_4:
      v57 = type metadata accessor for Logger();
      sub_1000076D4(v57, qword_10177BA08);
      sub_100022A54(v188, v187, type metadata accessor for OwnedBeaconGroup);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v190[0] = v61;
        *v60 = 136315138;
        v62 = *(v31 + 6);
        type metadata accessor for UUID();
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v63 = v187;
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        sub_100022C40(v63, type metadata accessor for OwnedBeaconGroup);
        v67 = sub_1000136BC(v64, v66, v190);

        *(v60 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v58, v59, "%s is a single beacon group, returning .grouped", v60, 0xCu);
        sub_100007BAC(v61);
      }

      else
      {

        sub_100022C40(v187, type metadata accessor for OwnedBeaconGroup);
      }

      return 2;
    }

LABEL_80:
    swift_once();
    goto LABEL_4;
  }

  v168 = v54;
  v170 = v15;
  v169 = v36;
  v167 = v4;
  v187 = &v167 - v53;
  v68 = sub_100519FB0();

  v69 = sub_100B05364(v68, v2);

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v70 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v172 = sub_101073CD0(v190[0]);

  v71 = v69[2];
  if (v71)
  {
    v72 = 0;
    while (v72 < v69[2])
    {
      sub_1000D2A70(v69 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v72, v45, &qword_1016B54A8, &qword_1013D6838);
      if (*v45 == 1)
      {
        v74 = v187;
        sub_1000D2AD8(v45, v187, &qword_1016B54A8, &qword_1013D6838);
        v73 = 0;
        goto LABEL_17;
      }

      ++v72;
      sub_10000B3A8(v45, &qword_1016B54A8, &qword_1013D6838);
      if (v71 == v72)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_13:
  v73 = 1;
  v74 = v187;
LABEL_17:
  v76 = 1;
  v77 = v189;
  v171 = *(v20 + 56);
  v171(v74, v73, 1, v189);
  if (v71)
  {
    v78 = 0;
    while (1)
    {
      if (v78 >= v69[2])
      {
        goto LABEL_77;
      }

      sub_1000D2A70(v69 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v78, v43, &qword_1016B54A8, &qword_1013D6838);
      if (*v43 == 4)
      {
        break;
      }

      ++v78;
      sub_10000B3A8(v43, &qword_1016B54A8, &qword_1013D6838);
      if (v71 == v78)
      {
        v76 = 1;
        v79 = v186;
        v74 = v187;
LABEL_25:
        v77 = v189;
        goto LABEL_26;
      }
    }

    v80 = v43;
    v79 = v186;
    sub_1000D2AD8(v80, v186, &qword_1016B54A8, &qword_1013D6838);
    v76 = 0;
    v74 = v187;
    goto LABEL_25;
  }

  v79 = v186;
LABEL_26:
  v171(v79, v76, 1, v77);
  v81 = v185;
  sub_1000D2A70(v74, v185, &qword_1016B54B0, &unk_1013D6840);
  v82 = *(v20 + 48);
  if (v82(v81, 1, v77) == 1)
  {
    sub_10000B3A8(v81, &qword_1016B54B0, &unk_1013D6840);
    if (v71)
    {
LABEL_28:
      if (v69[2])
      {
        v83 = v69 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
        sub_1000D2A70(v83, v31, &qword_1016B54A8, &qword_1013D6838);
        if (v71 != 1)
        {
          v112 = 1;
          while (v112 < v69[2])
          {
            sub_1000D2A70(v83 + *(v20 + 72) * v112, v28, &qword_1016B54A8, &qword_1013D6838);
            v113 = *(v189 + 48);
            if (static Date.< infix(_:_:)())
            {
              sub_10000B3A8(v31, &qword_1016B54A8, &qword_1013D6838);
              sub_1000D2AD8(v28, v31, &qword_1016B54A8, &qword_1013D6838);
            }

            else
            {
              sub_10000B3A8(v28, &qword_1016B54A8, &qword_1013D6838);
            }

            if (v71 == ++v112)
            {
              goto LABEL_30;
            }
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_30:

        v84 = v179;
        sub_1000D2AD8(v31, v179, &qword_1016B54A8, &qword_1013D6838);
        v85 = v169;
        sub_1000D2AD8(v84, v169, &qword_1016B54A8, &qword_1013D6838);
        v86 = v85 + *(v189 + 48);
        v87 = v182;
        Date.addingTimeInterval(_:)();
        v88 = v183;
        static Date.trustedNow.getter(v183);
        v89 = static Date.< infix(_:_:)();
        v90 = *(v184 + 8);
        v91 = v170;
        v90(v88, v170);
        v90(v87, v91);
        if (v89)
        {
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v92 = type metadata accessor for Logger();
          sub_1000076D4(v92, qword_10177BA08);
          v93 = v174;
          sub_100022A54(v188, v174, type metadata accessor for OwnedBeaconGroup);
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = v85;
            v98 = swift_slowAlloc();
            v190[0] = v98;
            *v96 = 136315138;
            v99 = *(v167 + 24);
            type metadata accessor for UUID();
            sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
            v100 = dispatch thunk of CustomStringConvertible.description.getter();
            v102 = v101;
            sub_100022C40(v93, type metadata accessor for OwnedBeaconGroup);
            v103 = sub_1000136BC(v100, v102, v190);

            *(v96 + 4) = v103;
            _os_log_impl(&_mh_execute_header, v94, v95, "Last multipart observation for group %s has expired, returning .unknown", v96, 0xCu);
            sub_100007BAC(v98);

            v104 = v97;
          }

          else
          {

            sub_100022C40(v93, type metadata accessor for OwnedBeaconGroup);
            v104 = v85;
          }

          sub_10000B3A8(v104, &qword_1016B54A8, &qword_1013D6838);
          goto LABEL_66;
        }

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        sub_1000076D4(v114, qword_10177BA08);
        v115 = v175;
        sub_1000D2A70(v85, v175, &qword_1016B54A8, &qword_1013D6838);
        v116 = v178;
        sub_100022A54(v188, v178, type metadata accessor for OwnedBeaconGroup);
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        v119 = os_log_type_enabled(v117, v118);
        v120 = v176;
        if (!v119)
        {

          sub_100022C40(v116, type metadata accessor for OwnedBeaconGroup);
          sub_10000B3A8(v115, &qword_1016B54A8, &qword_1013D6838);
          sub_10000B3A8(v79, &qword_1016B54B0, &unk_1013D6840);
          sub_10000B3A8(v187, &qword_1016B54B0, &unk_1013D6840);
LABEL_75:
          sub_1000D2AD8(v85, v120, &qword_1016B54A8, &qword_1013D6838);
          v166 = *v120;
          v90(v120 + *(v189 + 48), v91);
          return v166;
        }

        LODWORD(v188) = v118;
        v121 = 0x6574617261706573;
        v122 = swift_slowAlloc();
        v190[0] = swift_slowAlloc();
        *v122 = 136315394;
        sub_1000D2A70(v115, v120, &qword_1016B54A8, &qword_1013D6838);
        v123 = v91;
        v124 = *v120;
        v90(v120 + *(v189 + 48), v123);
        if (v124 <= 1)
        {
          if (v124 == 1)
          {
            v125 = 0xE900000000000064;
            goto LABEL_74;
          }
        }

        else
        {
          switch(v124)
          {
            case 2:
              v125 = 0xE700000000000000;
              v121 = 0x646570756F7267;
              goto LABEL_74;
            case 3:
              v125 = 0xED0000657361436ELL;
              v121 = 0x49646570756F7267;
              goto LABEL_74;
            case 4:
              v125 = 0xEF657361436E4964;
LABEL_74:
              sub_10000B3A8(v115, &qword_1016B54A8, &qword_1013D6838);
              v159 = sub_1000136BC(v121, v125, v190);

              *(v122 + 4) = v159;
              *(v122 + 12) = 2080;
              v160 = *(v167 + 24);
              type metadata accessor for UUID();
              sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
              v161 = v178;
              v162 = dispatch thunk of CustomStringConvertible.description.getter();
              v164 = v163;
              sub_100022C40(v161, type metadata accessor for OwnedBeaconGroup);
              v165 = sub_1000136BC(v162, v164, v190);

              *(v122 + 14) = v165;
              _os_log_impl(&_mh_execute_header, v117, v188, "Returning %s for group %s", v122, 0x16u);
              swift_arrayDestroy();

              sub_10000B3A8(v79, &qword_1016B54B0, &unk_1013D6840);
              sub_10000B3A8(v187, &qword_1016B54B0, &unk_1013D6840);
              v85 = v169;
              v91 = v170;
              goto LABEL_75;
          }
        }

        v125 = 0xE700000000000000;
        v121 = 0x6E776F6E6B6E75;
        goto LABEL_74;
      }

      __break(1u);
LABEL_82:
      swift_once();
LABEL_63:
      v148 = type metadata accessor for Logger();
      sub_1000076D4(v148, qword_10177BA08);
      v149 = v177;
      sub_100022A54(v188, v177, type metadata accessor for OwnedBeaconGroup);
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v190[0] = v153;
        *v152 = 136315138;
        v154 = *(v167 + 24);
        type metadata accessor for UUID();
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v155 = dispatch thunk of CustomStringConvertible.description.getter();
        v157 = v156;
        sub_100022C40(v149, type metadata accessor for OwnedBeaconGroup);
        v158 = sub_1000136BC(v155, v157, v190);

        *(v152 + 4) = v158;
        _os_log_impl(&_mh_execute_header, v150, v151, "No multipart observation for group %s has been found, returning .unknown", v152, 0xCu);
        sub_100007BAC(v153);
      }

      else
      {

        sub_100022C40(v149, type metadata accessor for OwnedBeaconGroup);
      }

LABEL_66:
      sub_10000B3A8(v79, &qword_1016B54B0, &unk_1013D6840);
      sub_10000B3A8(v187, &qword_1016B54B0, &unk_1013D6840);
      return 0;
    }

LABEL_62:

    if (qword_101694BE8 == -1)
    {
      goto LABEL_63;
    }

    goto LABEL_82;
  }

  v105 = v81;
  v106 = v180;
  sub_1000D2AD8(v105, v180, &qword_1016B54A8, &qword_1013D6838);
  v107 = v79;
  v108 = v168;
  sub_1000D2A70(v107, v168, &qword_1016B54B0, &unk_1013D6840);
  if (v82(v108, 1, v77) == 1)
  {
    sub_10000B3A8(v106, &qword_1016B54A8, &qword_1013D6838);
    v109 = &qword_1016B54B0;
    v110 = &unk_1013D6840;
    v111 = v108;
    goto LABEL_61;
  }

  sub_1000D2AD8(v108, v181, &qword_1016B54A8, &qword_1013D6838);
  v126 = v106 + *(v77 + 48);
  v127 = v182;
  Date.addingTimeInterval(_:)();
  v128 = v183;
  static Date.trustedNow.getter(v183);
  v172 = sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
  v129 = v170;
  LODWORD(v185) = dispatch thunk of static Comparable.< infix(_:_:)();
  v130 = *(v184 + 8);
  v171 = v130;
  (v130)(v128, v129);
  (v130)(v127, v129);
  v131 = v181 + *(v189 + 48);
  Date.addingTimeInterval(_:)();
  static Date.trustedNow.getter(v128);
  v132 = dispatch thunk of static Comparable.< infix(_:_:)();
  v133 = v128;
  v134 = v171;
  (v171)(v133, v129);
  v134(v127, v129);
  if (v185 & 1) != 0 || (v132)
  {
    sub_10000B3A8(v181, &qword_1016B54A8, &qword_1013D6838);
    v111 = v180;
    v109 = &qword_1016B54A8;
    v110 = &qword_1013D6838;
LABEL_61:
    sub_10000B3A8(v111, v109, v110);
    v79 = v186;
    if (v71)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v135 = type metadata accessor for Logger();
  sub_1000076D4(v135, qword_10177BA08);
  v136 = v173;
  sub_100022A54(v188, v173, type metadata accessor for OwnedBeaconGroup);
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.default.getter();
  v139 = os_log_type_enabled(v137, v138);
  v140 = v186;
  if (v139)
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v190[0] = v142;
    *v141 = 136315138;
    v143 = *(v167 + 24);
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v144 = dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v145;
    sub_100022C40(v136, type metadata accessor for OwnedBeaconGroup);
    v147 = sub_1000136BC(v144, v146, v190);

    *(v141 + 4) = v147;
    _os_log_impl(&_mh_execute_header, v137, v138, "Buds from group %s report separated & separatedInCase, returning separatedInCase", v141, 0xCu);
    sub_100007BAC(v142);
  }

  else
  {

    sub_100022C40(v136, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10000B3A8(v181, &qword_1016B54A8, &qword_1013D6838);
  sub_10000B3A8(v180, &qword_1016B54A8, &qword_1013D6838);
  sub_10000B3A8(v140, &qword_1016B54B0, &unk_1013D6840);
  sub_10000B3A8(v187, &qword_1016B54B0, &unk_1013D6840);
  return 4;
}

uint64_t sub_100AC53EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v14) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v10, v3);
  if (v14)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v16 = type metadata accessor for OwnedBeaconGroup(0);
    return (*(*(v16 - 8) + 56))(v28, 1, 1, v16);
  }

  else
  {
    v18 = *(v27 + 168);
    if (qword_1016947B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for URL();
    v20 = sub_1000076D4(v19, qword_10177AEF8);
    v21._object = 0x800000010135B5A0;
    v21._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v21);
    v29 = type metadata accessor for OwnedBeaconGroup(0);
    sub_1000BC4D4(&qword_1016A5AF8, &unk_1013B3630);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = objc_autoreleasePoolPush();
    v26 = *(v18 + 16);
    __chkstk_darwin(v25);
    *(&v27 - 6) = v18;
    *(&v27 - 5) = a1;
    *(&v27 - 4) = v20;
    *(&v27 - 3) = v22;
    *(&v27 - 2) = v24;
    sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v25);
  }
}

uint64_t sub_100AC57E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v41 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = type metadata accessor for String.Encoding();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  LODWORD(v39) = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v40 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    static String.Encoding.utf8.getter();
    v21 = String.init(data:encoding:)();
    v35 = a1;
    if (!v20)
    {
      v21 = Data.hexString.getter();
    }

    v22 = v20;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v21;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    static SystemInfo.lockState.getter();
    (v10[13])(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    a1 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = v10[1];
    ++v10;
    v23(v14, v9);
    v23(v16, v9);
    if (a1)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      goto LABEL_16;
    }

    v9 = v38;
    v40 = sub_100008CA0();
    v34 = v40[2];
    if (!v34)
    {
      break;
    }

    v24 = 0;
    v33 = v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v24 < v40[2])
    {
      v25 = v41;
      v26 = sub_100022A54(&v33[*(v6 + 72) * v24], v41, type metadata accessor for OwnedBeaconGroup);
      v16 = *(v25 + *(v5 + 40));
      v14 = *(v16 + 2);
      if (v14)
      {
        a1 = sub_1003A864C(*(v16 + 2), 0);
        v27 = sub_1003A9BF4(&v42, (a1 + 32), v14, v16);
        v10 = v42;
        v38 = v43;
        v39 = v27;
        v9 = v45;
        v36 = v46;
        v37 = v44;

        v26 = sub_1000128F8();
        if (v39 != v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        a1 = _swiftEmptyArrayStorage;
      }

      v10 = &v32;
      v42 = v35;
      v43 = a2;
      __chkstk_darwin(v26);
      *(&v32 - 2) = &v42;
      v9 = sub_1002EB6B8(sub_100469610, (&v32 - 4), a1);

      if (v9)
      {

        v31 = v32;
        sub_10002911C(v41, v32, type metadata accessor for OwnedBeaconGroup);
        v29 = v31;
        v28 = 0;
        return (*(v6 + 56))(v29, v28, 1, v5);
      }

      ++v24;
      sub_100022C40(v41, type metadata accessor for OwnedBeaconGroup);
      if (v34 == v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_15:

LABEL_16:
  v28 = 1;
  v29 = v32;
  return (*(v6 + 56))(v29, v28, 1, v5);
}

uint64_t sub_100AC5D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = MACAddress.description.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v10, v3);
  if (v12)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v16 = type metadata accessor for OwnedBeaconGroup(0);
    return (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
  }

  else
  {
    v18 = sub_100008CA0();
    __chkstk_darwin(v18);
    *(&v19 - 2) = a1;
    sub_1012BC0C4(sub_100B25438, v18, v20);
  }
}

void *sub_100AC607C(uint64_t a1)
{
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  v11 = MACAddress.description.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v14(v9, v2);
  if (v11)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = sub_100008CA0();
    __chkstk_darwin(v16);
    v18[-2] = a1;
    return sub_10013D56C(sub_100B27FB0, &v18[-4], v17);
  }
}

uint64_t sub_100AC6364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = type metadata accessor for SharedBeaconRecord(0);
  v42 = *(v47 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v47);
  v46 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for UUID();
  v48 = *(v43 - 8);
  v5 = *(v48 + 64);
  __chkstk_darwin(v43);
  v41 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemInfo.DeviceLockState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v40 - v13;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = UUID.uuidString.getter();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v8 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v7);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v8 + 8);
  v19(v12, v7);
  v19(v14, v7);
  if (v16)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v20 = type metadata accessor for SharedBeaconGroup();
    return (*(*(v20 - 8) + 56))(v45, 1, 1, v20);
  }

  v22 = sub_100030068();
  __chkstk_darwin(v22);
  v40[-2] = a1;
  v24 = sub_10013D0F8(sub_100B25418, &v40[-4], v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v44 = a1;
    v49 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v25, 0);
    v26 = v41;
    v27 = *(v42 + 80);
    v40[1] = v24;
    v28 = v24 + ((v27 + 32) & ~v27);
    v29 = *(v42 + 72);
    v30 = v49;
    v31 = (v48 + 16);
    v32 = v43;
    do
    {
      v33 = v46;
      sub_100022A54(v28, v46, type metadata accessor for SharedBeaconRecord);
      (*v31)(v26, v33 + *(v47 + 20), v32);
      sub_100022C40(v33, type metadata accessor for SharedBeaconRecord);
      v49 = v30;
      v35 = v30[2];
      v34 = v30[3];
      if (v35 >= v34 >> 1)
      {
        sub_101123D4C(v34 > 1, v35 + 1, 1);
        v30 = v49;
      }

      v30[2] = v35 + 1;
      (*(v48 + 32))(v30 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35, v26, v32);
      v28 += v29;
      --v25;
    }

    while (v25);

    a1 = v44;
    v36 = v45;
    if (v30[2])
    {
      goto LABEL_11;
    }
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
    v32 = v43;
    v36 = v45;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_11:
      (*(v48 + 16))(v36, a1, v32);
      v37 = sub_10000954C(v30);

      v38 = type metadata accessor for SharedBeaconGroup();
      *(v36 + *(v38 + 20)) = v37;
      return (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
    }
  }

  v39 = type metadata accessor for SharedBeaconGroup();
  (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
}

uint64_t sub_100AC69A4(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v28 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = *(type metadata accessor for SharedBeaconRecord(0) + 76);
  (*(v4 + 16))(v17, a2, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(v8 + 56);
  sub_1000D2A70(v29 + v18, v11, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v17, &v11[v19], &qword_1016980D0, &unk_10138F3B0);
  v20 = *(v4 + 48);
  if (v20(v11, 1, v3) != 1)
  {
    v22 = v28;
    sub_1000D2A70(v11, v28, &qword_1016980D0, &unk_10138F3B0);
    if (v20(&v11[v19], 1, v3) != 1)
    {
      v23 = v27;
      (*(v4 + 32))(v27, &v11[v19], v3);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v4 + 8);
      v24(v23, v3);
      sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
      v24(v22, v3);
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      return v21 & 1;
    }

    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v22, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
  if (v20(&v11[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v11, &qword_1016AF880, &unk_10138CE20);
    v21 = 0;
    return v21 & 1;
  }

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_100AC6DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  v9._object = 0x800000010135C8F0;
  v9._countAndFlagsBits = 0xD000000000000015;
  prohibitAsyncContext(functionName:)(v9);
  v10 = *(v2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue);
  v18 = v2;
  v19 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    sub_10000B3A8(v8, &qword_101699848, &unk_1013D6610);
    v12 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    v14 = v8[*(v11 + 48)];
    v15 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
    v16 = *(v15 + 48);
    sub_10002911C(v8, a2, type metadata accessor for BeaconStatus);
    *(a2 + v16) = v14;
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }
}

uint64_t sub_100AC6FE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v26 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  v4 = *(v32 + 64);
  __chkstk_darwin(v30);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v31);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v28 = *(v2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue);
  (*(v14 + 16))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v13);
  sub_1000D2A70(v26, v12, &qword_1016998D0, &unk_1013931A0);
  v16 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v17 = (v15 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  (*(v14 + 32))(v18 + v16, &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  sub_1000D2AD8(v12, v18 + v17, &qword_1016998D0, &unk_1013931A0);
  aBlock[4] = sub_100B2533C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016477A8;
  v19 = _Block_copy(aBlock);

  v20 = v24;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v21 = v27;
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v32 + 8))(v21, v22);
  (*(v29 + 8))(v20, v31);
}

uint64_t sub_100AC7468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v5 = type metadata accessor for DeviceEvent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v54 - v9;
  v10 = type metadata accessor for UUID();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v10);
  v59 = v12;
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v54 - v19;
  __chkstk_darwin(v18);
  v22 = &v54 - v21;
  v23 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_attachEventForBeacon;
  swift_beginAccess();
  v58 = a1;
  v24 = *(a1 + v23);
  v25 = *(v24 + 16);
  v61 = a3;
  if (v25)
  {

    v26 = sub_1000210EC(v64);
    if (v27)
    {
      v28 = v26;
      v29 = v10;
      v30 = *(v24 + 56);
      v31 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
      v32 = *(v31 - 8);
      v33 = v30 + *(v32 + 72) * v28;
      v10 = v29;
      a3 = v61;
      sub_1000D2A70(v33, v22, &qword_1016998D0, &unk_1013931A0);

      (*(v32 + 56))(v22, 0, 1, v31);
      goto LABEL_6;
    }
  }

  v34 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
LABEL_6:
  v35 = v62;
  v36 = *(v63 + 16);
  v60 = v10;
  v56 = v36;
  v36(v62, v64, v10);
  sub_1000D2A70(a3, v20, &qword_1016998D0, &unk_1013931A0);
  v37 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v38 = *(v37 - 8);
  (*(v38 + 56))(v20, 0, 1, v37);
  v39 = v58;
  swift_beginAccess();
  sub_1001E0AD0(v20, v35);
  swift_endAccess();
  sub_1000D2A70(v22, v17, &qword_1016AA4E0, &unk_1013BD0E0);
  v40 = v22;
  if ((*(v38 + 48))(v17, 1, v37) == 1)
  {
    sub_10000B3A8(v17, &qword_1016AA4E0, &unk_1013BD0E0);
    v41 = 0;
    v42 = v60;
    v43 = v57;
  }

  else
  {
    v44 = v55;
    v45 = sub_100A870CC(v55);
    v43 = v57;
    v41 = v45;
    sub_100022C40(v44, type metadata accessor for DeviceEvent);
    sub_10000B3A8(v17, &qword_1016998D0, &unk_1013931A0);
    v42 = v60;
  }

  v46 = sub_100A870CC(v43);
  sub_100022C40(v43, type metadata accessor for DeviceEvent);
  v47 = (v41 ^ v46);
  v48 = *(*(v39 + 192) + 64);

  AnyCurrentValuePublisher.value.getter();

  if (v65 == 1 && (v47 & 1) != 0)
  {
    sub_100A8306C(22);
  }

  type metadata accessor for Transaction();
  v49 = v62;
  v56(v62, v64, v42);
  v50 = v63;
  v51 = (*(v63 + 80) + 17) & ~*(v63 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v47 & 1;
  (*(v50 + 32))(v52 + v51, v49, v42);
  static Transaction.asyncTask(name:block:)();

  return sub_10000B3A8(v40, &qword_1016AA4E0, &unk_1013BD0E0);
}

uint64_t sub_100AC7A98(char a1, uint64_t a2)
{
  v2[2] = a2;
  if (a1)
  {
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    v2[3] = v4;
    *v4 = v2;
    v4[1] = sub_100AC7B60;

    return daemon.getter();
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_100AC7B60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100AC7D3C;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100AC7D3C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = *(v4 + 32);
  if (v1)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    *(v5 + 48) = a1;

    return _swift_task_switch(sub_100AC7EBC, 0, 0);
  }
}

uint64_t sub_100AC7EBC()
{
  v1 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = sub_100B05044(v6);
  v0[7] = v7;
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_10082FE84;
  v9 = v0[6];

  return sub_10094DB94(v7);
}

uint64_t sub_100AC8094(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100AC8270;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100AC8270(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[5];

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v4[10] = v9;
    *v9 = v6;
    v9[1] = sub_100031C04;

    return daemon.getter();
  }

  else
  {
    v10 = v4[5];

    v4[7] = a1;

    return _swift_task_switch(sub_100AC840C, 0, 0);
  }
}

uint64_t sub_100AC840C()
{
  v1 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = v1[3];
  v8 = v1[4];
  sub_1000035D0(v1, v7);
  (*(*(*(v8 + 8) + 8) + 32))(v7);
  v9 = sub_100B05044(v6);
  v0[8] = v9;
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100AC85C8;
  v11 = v0[7];

  return sub_10094DB94(v9);
}

uint64_t sub_100AC85C8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100AC86E0, 0, 0);
}

uint64_t sub_100AC86E0()
{
  v1 = *(v0 + 56);

  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100031C04;

  return daemon.getter();
}

uint64_t sub_100AC8778(uint64_t a1)
{
  v1[14] = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v1[22] = v9;
  v10 = *(v9 - 8);
  v1[23] = v10;
  v1[24] = *(v10 + 64);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[27] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v1[31] = v13;
  v14 = *(v13 - 8);
  v1[32] = v14;
  v15 = *(v14 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v16 = type metadata accessor for BeaconStatus(0);
  v1[35] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v19 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v1[38] = v19;
  v20 = *(v19 - 8);
  v1[39] = v20;
  v21 = *(v20 + 64) + 15;
  v1[40] = swift_task_alloc();
  v22 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v23 = type metadata accessor for ObservedAdvertisement(0);
  v1[42] = v23;
  v24 = *(v23 - 8);
  v1[43] = v24;
  v25 = *(v24 + 64) + 15;
  v1[44] = swift_task_alloc();
  v26 = type metadata accessor for BeaconIdentifier();
  v1[45] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v1[46] = swift_task_alloc();
  v28 = type metadata accessor for UUID();
  v1[47] = v28;
  v29 = *(v28 - 8);
  v1[48] = v29;
  v1[49] = *(v29 + 64);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();

  return _swift_task_switch(sub_100AC8C38, 0, 0);
}

uint64_t sub_100AC8C38()
{
  if (qword_101695250 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 456) = sub_1000076D4(v1, qword_10177C650);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "readLatestBeaconStatusObservations called.", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 464) = v6;
  *v6 = v0;
  v6[1] = sub_100AC8D88;

  return daemon.getter();
}

uint64_t sub_100AC8D88(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 464);
  v12 = *v1;
  *(v3 + 472) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 480) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100AC8F64;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100AC8F64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v5 = *v2;
  *(*v2 + 488) = a1;

  v6 = *(v3 + 472);
  if (v1)
  {

    v7 = sub_100AC90B4;
  }

  else
  {

    v7 = sub_100AC92A4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100AC90B4()
{
  v1 = v0[57];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "readLatestBeaconStatusObservations could not get the ObservationStoreService.", v4, 2u);
  }

  v6 = v0[55];
  v5 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[50];
  v12 = v0[46];
  v13 = v0[44];
  v14 = v0[41];
  v17 = v0[40];
  v18 = v0[37];
  v19 = v0[36];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[30];
  v23 = v0[29];
  v24 = v0[28];
  v25 = v0[26];
  v26 = v0[25];
  v27 = v0[21];
  v28 = v0[20];
  v29 = v0[17];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100AC92A4()
{
  v1 = *(v0 + 112);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 496) = v3;
  v4 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  *v3 = v0;
  v3[1] = sub_100AC9378;
  v5 = *(v0 + 112);

  return unsafeBlocking<A>(_:)(v0 + 88, sub_100B26544, v5, v4);
}

uint64_t sub_100AC9378()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100AC9490, 0, 0);
}

uint64_t sub_100AC9490()
{
  v1 = *(v0 + 88);
  *(v0 + 504) = v1;
  v2 = *(v1 + 16);
  *(v0 + 512) = v2;
  if (v2)
  {
    *(v0 + 520) = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
    v3 = *(v0 + 376);
    v4 = *(v0 + 384);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 632) = v6;
    *(v0 + 528) = *(v4 + 56);
    *(v0 + 536) = v5;
    *(v0 + 544) = 0;
    v7 = *(v0 + 448);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    *(v0 + 552) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v10 = getuid();
    sub_1000294F0(v10);
    v5(v8 + *(v9 + 20), v7, v3);
    v11 = swift_task_alloc();
    *(v0 + 560) = v11;
    *v11 = v0;
    v11[1] = sub_100AC9744;
    v12 = *(v0 + 488);
    v13 = *(v0 + 368);
    v14 = *(v0 + 328);

    return sub_1010CD810(v14, v13);
  }

  else
  {
    v16 = *(v0 + 488);

    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v20 = *(v0 + 424);
    v19 = *(v0 + 432);
    v22 = *(v0 + 408);
    v21 = *(v0 + 416);
    v23 = *(v0 + 400);
    v24 = *(v0 + 368);
    v25 = *(v0 + 352);
    v26 = *(v0 + 328);
    v28 = *(v0 + 320);
    v29 = *(v0 + 296);
    v30 = *(v0 + 288);
    v31 = *(v0 + 272);
    v32 = *(v0 + 264);
    v33 = *(v0 + 240);
    v34 = *(v0 + 232);
    v35 = *(v0 + 224);
    v36 = *(v0 + 208);
    v37 = *(v0 + 200);
    v38 = *(v0 + 168);
    v39 = *(v0 + 160);
    v40 = *(v0 + 136);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100AC9744()
{
  v2 = *(*v1 + 560);
  v5 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = sub_100ACAE68;
  }

  else
  {
    v3 = sub_100AC9858;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AC9858()
{
  v108 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);
  if ((*(*(v0 + 344) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 552);
    v4 = *(v0 + 536);
    v5 = *(v0 + 448);
    v6 = *(v0 + 456);
    v7 = *(v0 + 416);
    v8 = *(v0 + 376);
    sub_10000B3A8(v2, &unk_10169BB50, &unk_101395760);
    v4(v7, v5, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 448);
    v13 = *(v0 + 416);
    v14 = *(v0 + 376);
    v15 = *(v0 + 384);
    v16 = *(v0 + 368);
    if (v11)
    {
      v105 = *(v0 + 448);
      v17 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v107 = v100;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v13, v14);
      v22 = sub_1000136BC(v18, v20, &v107);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "No latest advertisement read from ObservationService beacon: %{private,mask.hash}s.", v17, 0x16u);
      sub_100007BAC(v100);

      sub_100022C40(v16, type metadata accessor for BeaconIdentifier);
      v21(v105, v14);
    }

    else
    {

      v28 = *(v15 + 8);
      v28(v13, v14);
      sub_100022C40(v16, type metadata accessor for BeaconIdentifier);
      v28(v12, v14);
    }

    v29 = *(v0 + 544) + 1;
    if (v29 == *(v0 + 512))
    {
      v30 = *(v0 + 504);
      v31 = *(v0 + 488);

      v33 = *(v0 + 440);
      v32 = *(v0 + 448);
      v35 = *(v0 + 424);
      v34 = *(v0 + 432);
      v37 = *(v0 + 408);
      v36 = *(v0 + 416);
      v38 = *(v0 + 400);
      v39 = *(v0 + 368);
      v40 = *(v0 + 352);
      v41 = *(v0 + 328);
      v83 = *(v0 + 320);
      v85 = *(v0 + 296);
      v87 = *(v0 + 288);
      v88 = *(v0 + 272);
      v91 = *(v0 + 264);
      v92 = *(v0 + 240);
      v94 = *(v0 + 232);
      v96 = *(v0 + 224);
      v97 = *(v0 + 208);
      v99 = *(v0 + 200);
      v101 = *(v0 + 168);
      v103 = *(v0 + 160);
      v106 = *(v0 + 136);

      v42 = *(v0 + 8);

      return v42();
    }

    else
    {
      *(v0 + 544) = v29;
      v68 = *(v0 + 536);
      v69 = *(v0 + 448);
      v70 = *(v0 + 376);
      v72 = *(v0 + 360);
      v71 = *(v0 + 368);
      v73 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v29;
      *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v68(v69, v73, v70);
      v74 = getuid();
      sub_1000294F0(v74);
      v68(v71 + *(v72 + 20), v69, v70);
      v75 = swift_task_alloc();
      *(v0 + 560) = v75;
      *v75 = v0;
      v75[1] = sub_100AC9744;
      v76 = *(v0 + 488);
      v77 = *(v0 + 368);
      v78 = *(v0 + 328);

      return sub_1010CD810(v78, v77);
    }
  }

  else
  {
    v23 = *(v0 + 352);
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    v26 = *(v0 + 296);
    sub_10002911C(v2, v23, type metadata accessor for ObservedAdvertisement);
    sub_1000D2A70(v23 + *(v1 + 52), v26, &qword_101699DB0, &unk_101393100);
    if ((*(v24 + 48))(v26, 1, v25) == 1)
    {
      sub_10000B3A8(*(v0 + 296), &qword_101699DB0, &unk_101393100);
      v90 = 0;
      v27 = 2;
    }

    else
    {
      v44 = *(v0 + 320);
      v45 = *(v0 + 304);
      sub_10002911C(*(v0 + 296), v44, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v27 = *(v44 + *(v45 + 20));
      v90 = *(v44 + *(v45 + 24));
      sub_100022C40(v44, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    }

    v46 = *(v0 + 552);
    v89 = *(v0 + 536);
    v47 = *(v0 + 440);
    v95 = *(v0 + 432);
    v48 = *(v0 + 384);
    v102 = *(v0 + 568);
    v104 = *(v0 + 376);
    v49 = *(v0 + 352);
    v50 = *(v0 + 336);
    v51 = *(v0 + 280);
    v52 = *(v0 + 288);
    v53 = *(v0 + 272);
    v93 = *(v0 + 264);
    v54 = *(v0 + 256);
    v79 = *(v0 + 248);
    v80 = v53;
    v98 = *(v0 + 112);
    v86 = (*(v49 + 24) & 0x2000000000000000) == 0;
    (v89)(v47, *(v0 + 448));
    v82 = *(v49 + 32);
    v84 = *(v54 + 16);
    v84(v53, v49 + *(v50 + 44), v79);
    v55 = v27 & 1;
    if (v27 == 2)
    {
      v55 = 2;
    }

    v81 = v55;
    if (v27 == 2)
    {
      v56 = 0;
    }

    else
    {
      v56 = v90;
    }

    v57 = *(v48 + 32);
    *(v0 + 576) = v57;
    *(v0 + 584) = (v48 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v57(v52, v47, v104);
    *(v52 + v51[5]) = v82;
    v58 = v51[6];
    (*(v54 + 32))(v52 + v58, v80, v79);
    v59 = (v52 + v51[7]);
    *v59 = v81;
    v59[1] = v56;
    *(v52 + v51[8]) = v86;
    *(v52 + v51[9]) = 0;
    v60 = *(v49 + 9);
    v89(v95, v52, v104);
    v84(v93, v52 + v58, v79);
    type metadata accessor for Transaction();
    v61 = swift_task_alloc();
    *(v61 + 16) = v98;
    *(v61 + 24) = v95;
    *(v61 + 32) = v93;
    *(v61 + 40) = v52;
    *(v61 + 48) = v60;
    *(v61 + 49) = v82;
    static Transaction.named<A>(_:with:)();

    (*(v54 + 8))(v93, v79);
    v62 = *(v48 + 8);
    *(v0 + 592) = v62;
    *(v0 + 600) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62(v95, v104);
    sub_100022C40(v52, type metadata accessor for BeaconStatus);
    sub_100022C40(v49, type metadata accessor for ObservedAdvertisement);
    v63 = async function pointer to unsafeBlocking<A>(_:)[1];

    v64 = swift_task_alloc();
    *(v0 + 608) = v64;
    *v64 = v0;
    v64[1] = sub_100ACA134;
    v65 = *(v0 + 240);
    v66 = *(v0 + 216);
    v67 = *(v0 + 112);

    return unsafeBlocking<A>(_:)(v65, sub_100B2654C, v67, v66);
  }
}

uint64_t sub_100ACA134()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100ACA24C, 0, 0);
}

uint64_t sub_100ACA24C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 232);
  sub_1000D2A70(*(v0 + 240), v3, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 600);
    v5 = *(v0 + 592);
    v6 = *(v0 + 448);
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 232);
    sub_10000B3A8(*(v0 + 240), &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v8, type metadata accessor for BeaconIdentifier);
    v5(v6, v7);
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    v10 = *(v0 + 544) + 1;
    if (v10 == *(v0 + 512))
    {
      v11 = *(v0 + 504);
      v12 = *(v0 + 488);

      v14 = *(v0 + 440);
      v13 = *(v0 + 448);
      v16 = *(v0 + 424);
      v15 = *(v0 + 432);
      v18 = *(v0 + 408);
      v17 = *(v0 + 416);
      v19 = *(v0 + 400);
      v20 = *(v0 + 368);
      v21 = *(v0 + 352);
      v22 = *(v0 + 328);
      v48 = *(v0 + 320);
      v49 = *(v0 + 296);
      v50 = *(v0 + 288);
      v51 = *(v0 + 272);
      v52 = *(v0 + 264);
      v53 = *(v0 + 240);
      v54 = *(v0 + 232);
      v55 = *(v0 + 224);
      v56 = *(v0 + 208);
      v57 = *(v0 + 200);
      v58 = *(v0 + 168);
      v59 = *(v0 + 160);
      v60 = *(v0 + 136);

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      *(v0 + 544) = v10;
      v37 = *(v0 + 536);
      v38 = *(v0 + 448);
      v39 = *(v0 + 376);
      v41 = *(v0 + 360);
      v40 = *(v0 + 368);
      v42 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v10;
      *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v38, v42, v39);
      v43 = getuid();
      sub_1000294F0(v43);
      v37(v40 + *(v41 + 20), v38, v39);
      v44 = swift_task_alloc();
      *(v0 + 560) = v44;
      *v44 = v0;
      v44[1] = sub_100AC9744;
      v45 = *(v0 + 488);
      v46 = *(v0 + 368);
      v47 = *(v0 + 328);

      return sub_1010CD810(v47, v46);
    }
  }

  else
  {
    v25 = *(v0 + 584);
    v26 = *(v0 + 552);
    v27 = *(v0 + 536);
    v28 = *(v0 + 424);
    v29 = *(v0 + 376);
    v30 = *(v0 + 384);
    v31 = *(v0 + 224);
    (*(v0 + 576))(v28, *(v0 + 232), v29);
    v27(v31, v28, v29);
    (*(v30 + 56))(v31, 0, 1, v29);
    v32 = swift_task_alloc();
    *(v0 + 616) = v32;
    *v32 = v0;
    v32[1] = sub_100ACA680;
    v33 = *(v0 + 488);
    v34 = *(v0 + 368);
    v35 = *(v0 + 224);
    v36 = *(v0 + 168);

    return sub_1010CEAB4(v36, v34, v35);
  }
}

uint64_t sub_100ACA680()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 624) = v0;

  sub_10000B3A8(*(v2 + 224), &qword_1016980D0, &unk_10138F3B0);
  if (v0)
  {
    v5 = sub_100ACB390;
  }

  else
  {
    v5 = sub_100ACA7C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100ACA7C4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  if ((*(v1 + 48))(v2, 1, *(v0 + 176)) == 1)
  {
    v3 = *(v0 + 600);
    v4 = *(v0 + 592);
    v5 = *(v0 + 448);
    v7 = *(v0 + 368);
    v6 = *(v0 + 376);
    v8 = *(v0 + 240);
    v4(*(v0 + 424), v6);
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v7, type metadata accessor for BeaconIdentifier);
    v4(v5, v6);
    sub_10000B3A8(v2, &qword_1016AA4E0, &unk_1013BD0E0);
  }

  else
  {
    v73 = *(v0 + 592);
    v75 = *(v0 + 600);
    v49 = *(v0 + 576);
    v50 = *(v0 + 584);
    v46 = *(v0 + 536);
    v47 = *(v0 + 552);
    v54 = *(v0 + 520);
    v9 = *(v0 + 448);
    v67 = v9;
    v10 = *(v0 + 432);
    v11 = *(v0 + 376);
    v77 = *(v0 + 368);
    v69 = *(v0 + 424);
    v71 = *(v0 + 240);
    v45 = *(v0 + 200);
    v63 = *(v0 + 152);
    v65 = *(v0 + 144);
    v57 = *(v0 + 136);
    v59 = *(v0 + 208);
    v61 = *(v0 + 128);
    v48 = *(v0 + 192);
    v12 = (*(v0 + 632) + 24) & ~*(v0 + 632);
    v44 = *(v0 + 392) + v12;
    v13 = *(v0 + 112);
    v51 = *(v0 + 160);
    v52 = *(v0 + 120);
    sub_1000D2AD8(v2, v59, &qword_1016998D0, &unk_1013931A0);
    v55 = *(v13 + v54);
    v46(v10, v9, v11);
    sub_1000D2A70(v59, v45, &qword_1016998D0, &unk_1013931A0);
    v14 = (v44 + *(v1 + 80)) & ~*(v1 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v49(v15 + v12, v10, v11);
    sub_1000D2AD8(v45, v15 + v14, &qword_1016998D0, &unk_1013931A0);
    *(v0 + 48) = sub_100B27E18;
    *(v0 + 56) = v15;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100006684;
    *(v0 + 40) = &unk_101647D98;
    v16 = _Block_copy((v0 + 16));

    static DispatchQoS.unspecified.getter();
    *(v0 + 104) = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v61 + 8))(v57, v52);
    (*(v63 + 8))(v51, v65);
    sub_10000B3A8(v59, &qword_1016998D0, &unk_1013931A0);
    v73(v69, v11);
    sub_10000B3A8(v71, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v77, type metadata accessor for BeaconIdentifier);
    v73(v67, v11);
    v17 = *(v0 + 56);
  }

  v18 = *(v0 + 544) + 1;
  if (v18 == *(v0 + 512))
  {
    v19 = *(v0 + 504);
    v20 = *(v0 + 488);

    v22 = *(v0 + 440);
    v21 = *(v0 + 448);
    v24 = *(v0 + 424);
    v23 = *(v0 + 432);
    v26 = *(v0 + 408);
    v25 = *(v0 + 416);
    v27 = *(v0 + 400);
    v28 = *(v0 + 368);
    v29 = *(v0 + 352);
    v30 = *(v0 + 328);
    v53 = *(v0 + 320);
    v56 = *(v0 + 296);
    v58 = *(v0 + 288);
    v60 = *(v0 + 272);
    v62 = *(v0 + 264);
    v64 = *(v0 + 240);
    v66 = *(v0 + 232);
    v68 = *(v0 + 224);
    v70 = *(v0 + 208);
    v72 = *(v0 + 200);
    v74 = *(v0 + 168);
    v76 = *(v0 + 160);
    v78 = *(v0 + 136);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    *(v0 + 544) = v18;
    v33 = *(v0 + 536);
    v34 = *(v0 + 448);
    v35 = *(v0 + 376);
    v37 = *(v0 + 360);
    v36 = *(v0 + 368);
    v38 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v18;
    *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v33(v34, v38, v35);
    v39 = getuid();
    sub_1000294F0(v39);
    v33(v36 + *(v37 + 20), v34, v35);
    v40 = swift_task_alloc();
    *(v0 + 560) = v40;
    *v40 = v0;
    v40[1] = sub_100AC9744;
    v41 = *(v0 + 488);
    v42 = *(v0 + 368);
    v43 = *(v0 + 328);

    return sub_1010CD810(v43, v42);
  }
}

uint64_t sub_100ACAE68()
{
  v71 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 552);
  v3 = *(v0 + 456);
  (*(v0 + 536))(*(v0 + 408), *(v0 + 448), *(v0 + 376));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v62 = *(v0 + 568);
    v68 = *(v0 + 448);
    v6 = *(v0 + 408);
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    v66 = *(v0 + 368);
    v9 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = *(v8 + 8);
    v13(v6, v7);
    v14 = sub_1000136BC(v10, v12, &v70);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 80);
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000136BC(v18, v19, &v70);

    *(v9 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error reading latest advertisement from ObservationService beacon: %{private,mask.hash}s, error: %{public}s.", v9, 0x20u);
    swift_arrayDestroy();

    sub_100022C40(v66, type metadata accessor for BeaconIdentifier);
    v13(v68, v7);
  }

  else
  {
    v21 = *(v0 + 568);
    v22 = *(v0 + 448);
    v23 = *(v0 + 408);
    v24 = *(v0 + 376);
    v25 = *(v0 + 384);
    v26 = *(v0 + 368);

    v27 = *(v25 + 8);
    v27(v23, v24);
    sub_100022C40(v26, type metadata accessor for BeaconIdentifier);
    v27(v22, v24);
  }

  v28 = *(v0 + 544) + 1;
  if (v28 == *(v0 + 512))
  {
    v29 = *(v0 + 504);
    v30 = *(v0 + 488);

    v32 = *(v0 + 440);
    v31 = *(v0 + 448);
    v34 = *(v0 + 424);
    v33 = *(v0 + 432);
    v36 = *(v0 + 408);
    v35 = *(v0 + 416);
    v37 = *(v0 + 400);
    v38 = *(v0 + 368);
    v39 = *(v0 + 352);
    v40 = *(v0 + 328);
    v54 = *(v0 + 320);
    v55 = *(v0 + 296);
    v56 = *(v0 + 288);
    v57 = *(v0 + 272);
    v58 = *(v0 + 264);
    v59 = *(v0 + 240);
    v60 = *(v0 + 232);
    v61 = *(v0 + 224);
    v63 = *(v0 + 208);
    v64 = *(v0 + 200);
    v65 = *(v0 + 168);
    v67 = *(v0 + 160);
    v69 = *(v0 + 136);

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    *(v0 + 544) = v28;
    v43 = *(v0 + 536);
    v44 = *(v0 + 448);
    v45 = *(v0 + 376);
    v47 = *(v0 + 360);
    v46 = *(v0 + 368);
    v48 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v28;
    *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43(v44, v48, v45);
    v49 = getuid();
    sub_1000294F0(v49);
    v43(v46 + *(v47 + 20), v44, v45);
    v50 = swift_task_alloc();
    *(v0 + 560) = v50;
    *v50 = v0;
    v50[1] = sub_100AC9744;
    v51 = *(v0 + 488);
    v52 = *(v0 + 368);
    v53 = *(v0 + 328);

    return sub_1010CD810(v53, v52);
  }
}

uint64_t sub_100ACB390()
{
  v71 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 600);
  v3 = *(v0 + 552);
  v4 = *(v0 + 536);
  v6 = *(v0 + 448);
  v5 = *(v0 + 456);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 240);
  (*(v0 + 592))(*(v0 + 424), v8);
  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  v4(v7, v6, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 624);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 448);
  v17 = *(v0 + 400);
  v19 = *(v0 + 368);
  v18 = *(v0 + 376);
  if (v12)
  {
    v68 = *(v0 + 448);
    v20 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v70 = v66;
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v19;
    v23 = v22;
    v15(v17, v18);
    v24 = sub_1000136BC(v21, v23, &v70);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v25;
    *v62 = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Could not read any attach events from ObservationService for beacon: %{private,mask.hash}s, %{public}@.", v20, 0x20u);
    sub_10000B3A8(v62, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v66);

    sub_100022C40(v64, type metadata accessor for BeaconIdentifier);
    v26 = v68;
  }

  else
  {

    v15(v17, v18);
    sub_100022C40(v19, type metadata accessor for BeaconIdentifier);
    v26 = v16;
  }

  v15(v26, v18);
  v27 = *(v0 + 544) + 1;
  if (v27 == *(v0 + 512))
  {
    v28 = *(v0 + 504);
    v29 = *(v0 + 488);

    v31 = *(v0 + 440);
    v30 = *(v0 + 448);
    v33 = *(v0 + 424);
    v32 = *(v0 + 432);
    v35 = *(v0 + 408);
    v34 = *(v0 + 416);
    v36 = *(v0 + 400);
    v37 = *(v0 + 368);
    v38 = *(v0 + 352);
    v39 = *(v0 + 328);
    v53 = *(v0 + 320);
    v54 = *(v0 + 296);
    v55 = *(v0 + 288);
    v56 = *(v0 + 272);
    v57 = *(v0 + 264);
    v58 = *(v0 + 240);
    v59 = *(v0 + 232);
    v60 = *(v0 + 224);
    v61 = *(v0 + 208);
    v63 = *(v0 + 200);
    v65 = *(v0 + 168);
    v67 = *(v0 + 160);
    v69 = *(v0 + 136);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    *(v0 + 544) = v27;
    v42 = *(v0 + 536);
    v43 = *(v0 + 448);
    v44 = *(v0 + 376);
    v46 = *(v0 + 360);
    v45 = *(v0 + 368);
    v47 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v27;
    *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v42(v43, v47, v44);
    v48 = getuid();
    sub_1000294F0(v48);
    v42(v45 + *(v46 + 20), v43, v44);
    v49 = swift_task_alloc();
    *(v0 + 560) = v49;
    *v49 = v0;
    v49[1] = sub_100AC9744;
    v50 = *(v0 + 488);
    v51 = *(v0 + 368);
    v52 = *(v0 + 328);

    return sub_1010CD810(v52, v51);
  }
}

uint64_t sub_100ACB8B8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007F54();
  v8 = v7[2];
  if (v8)
  {
    v17 = a1;
    v21 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v8, 0);
    v9 = v21;
    v16 = v7;
    v10 = (v7 + 4);
    do
    {
      sub_10001F280(v10, v18);
      v12 = v19;
      v11 = v20;
      sub_1000035D0(v18, v19);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_100007BAC(v18);
      v21 = v9;
      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        sub_101123D4C(v13 > 1, v14 + 1, 1);
        v9 = v21;
      }

      v9[2] = v14 + 1;
      (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v6, v2);
      v10 += 40;
      --v8;
    }

    while (v8);

    a1 = v17;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_100ACBAA8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100AA5C88();
  if (v7[2])
  {
    sub_100022A54(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v6, type metadata accessor for OwnedBeaconRecord);

    v8 = *(v2 + 20);
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a1, &v6[v8], v9);
    sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }

  else
  {

    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_100ACBC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016A7900, &qword_1013D6920);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  sub_100AC53EC(a1, &v17 - v10);
  v12 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    *(&v18 + 1) = v12;
    v19 = &off_1016265B0;
    v15 = sub_1000280DC(&v17);
    sub_10002911C(v11, v15, type metadata accessor for OwnedBeaconGroup);
    return sub_10000A748(&v17, a2);
  }

  sub_10000B3A8(v11, &unk_1016AF8B0, &unk_1013A0700);
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  sub_100AC6364(a1, v7);
  v13 = type metadata accessor for SharedBeaconGroup();
  if ((*(*(v13 - 8) + 48))(v7, 1, v13) != 1)
  {
    *(a2 + 24) = v13;
    *(a2 + 32) = &off_10161CE28;
    v16 = sub_1000280DC(a2);
    result = sub_10002911C(v7, v16, type metadata accessor for SharedBeaconGroup);
    if (!*(&v18 + 1))
    {
      return result;
    }

    return sub_10000B3A8(&v17, &unk_1016AA480, &unk_1013BD050);
  }

  result = sub_10000B3A8(v7, &qword_1016A7900, &qword_1013D6920);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  if (*(&v18 + 1))
  {
    return sub_10000B3A8(&v17, &unk_1016AA480, &unk_1013BD050);
  }

  return result;
}

uint64_t sub_100ACBF00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = v3[9];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = v6;
  aBlock[4] = sub_100B25324;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647708;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v20);
}

uint64_t sub_100ACC20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v4 = type metadata accessor for OSSignpostID();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OSSignposter();
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v25);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000076D4(v8, qword_10177BA08);
  (*(v9 + 16))(v12, v17, v8);
  OSSignposter.init(logger:)();
  static OSSignpostID.exclusive.getter();
  v18 = swift_slowAlloc();
  *v18 = 0;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  v21 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v21, "duplicateReport", "", v18, 2u);
  sub_100ACC51C(v26, v27, v28);
  v22 = static os_signpost_type_t.end.getter();
  v23 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v22, v23, "duplicateReport", "", v18, 2u);

  (*(v30 + 8))(v7, v31);
  return (*(v13 + 8))(v16, v25);
}

uint64_t sub_100ACC51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100025044();
  v15 = sub_100B20CDC(v14);

  v19 = *(a1 + 136);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v15;
  aBlock[4] = sub_100B25330;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101647758;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_100ACC81C(void (*a1)(void *, void), uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a1;
  v4 = type metadata accessor for StableIdentifier();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016B54D0, &qword_1013D6918);
  result = static _DictionaryStorage.copy(original:)();
  v9 = result;
  v10 = 0;
  v30 = a3;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = result + 64;
  if (v14)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v20 = v17 | (v10 << 6);
      v21 = v30;
      v22 = *(v29 + 72) * v20;
      sub_100022A54(*(v30 + 48) + v22, v7, type metadata accessor for StableIdentifier);
      v23 = *(*(*(v21 + 56) + 8 * v20) + 16);
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_10002911C(v7, v9[6] + v22, type metadata accessor for StableIdentifier);
      *(v9[7] + 8 * v20) = v23;
      v24 = v9[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v9[2] = v26;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        v28(v9, 0);
      }

      v19 = *(v11 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100ACCA44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  v8 = *(v0 + 88);

  v9 = *(v0 + 112);

  v10 = *(v0 + 120);

  v11 = *(v0 + 128);

  v12 = *(v0 + 168);

  v13 = *(v0 + 176);

  v14 = *(v0 + 184);

  v15 = *(v0 + 192);

  v16 = *(v0 + 200);

  v17 = *(v0 + 208);

  v18 = *(v0 + 216);

  v19 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconsChangedPoster;
  v20 = type metadata accessor for ThrottledDarwinPoster();
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v19, v20);
  v21(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_unknownBeaconsChangedPoster, v20);
  v21(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_unknownBeaconsSetChangedPoster, v20);
  v21(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_separationMonitoringBeaconsChangedPoster, v20);
  v21(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_separationMonitoringStateChangedPoster, v20);
  v21(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_didPairPoster, v20);
  v22 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_analyticsXPCActivity);

  v23 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_statusForBeacon);

  v24 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_attachEventForBeacon);

  v25 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_transactionManager;
  v26 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v26 - 8) + 8))(v0 + v25, v26);

  v27 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler + 8);
  sub_1000BB27C(*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler));
  v28 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged + 8);
  sub_1000BB27C(*(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged));
  v29 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer);

  v30 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___sharedBeaconKeysUpdatedPublisher);

  v31 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage____beaconKeyManager);

  v32 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);

  v33 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore____lazy_storage___recordPublisher);

  v34 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_estimatedLocationSubject);

  v35 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);

  v36 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  v37 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_changeSetSequence);

  v38 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper);

  v39 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_hiddenBeaconCoordinator);

  v40 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);

  v41 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords);

  v42 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords);

  v43 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconNamingRecordCache);

  v44 = *(v0 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconProductInfoRecordCache);

  return v0;
}

uint64_t sub_100ACCDD4()
{
  sub_100ACCA44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100ACCE34()
{
  result = type metadata accessor for ThrottledDarwinPoster();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for PressuredExitTransactionManager();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_100ACCFC4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1002ECE54(319, &qword_1016B5388, &qword_1016B5390, &unk_1013D64D8);
      if (v2 <= 0x3F)
      {
        sub_1002ECE54(319, &unk_1016B5398, &qword_1016AF8E0, &qword_101393130);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100ACD0DC()
{
  v1 = *v0;
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100ACD150(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords);
  *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords) = 0;

  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords);
  *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords) = 0;

  v4 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconNamingRecordCache;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = &_swiftEmptyDictionarySingleton;

  v6 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper);
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = &_swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v8 = *(v6 + 24);
  *(v6 + 24) = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100ACD22C(char a1)
{
  *(v1 + 64) = a1;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v1;
  v4[1] = sub_100ACD2F8;

  return daemon.getter();
}

uint64_t sub_100ACD2F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100ACD4D4;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100ACD4D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = a1;

  v7 = *(v3 + 40);
  if (v1)
  {

    v8 = *(v4 + 24);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_100ACD654, 0, 0);
  }
}

uint64_t sub_100ACD654()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task info state changed for reason %ld.", v6, 0xCu);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  *(v0 + 16) = v5;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v7;
  v13[5] = v9;
  v13[6] = v11;
  sub_100A838F0(0, 0, v8, &unk_1013D6668, v13);

  v14 = *(v0 + 24);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100ACD84C()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100ACD8DC;

  return daemon.getter();
}

uint64_t sub_100ACD8DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v12 = *v1;
  *(v3 + 24) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  *v6 = v12;
  v6[1] = sub_100ACDAB8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100ACDAB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = a1;

  v7 = *(v4 + 24);
  if (v1)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100ACDC2C, a1, 0);
  }
}

uint64_t sub_100ACDC2C()
{
  v1 = *(v0[5] + 200);
  v2 = swift_allocObject();
  v0[6] = v2;
  swift_weakInit();
  v3 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v7 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v4 = v0;
  v4[1] = sub_100ACDD3C;

  return (v7)(v0 + 8, &unk_1013D6670, v2, v5);
}

uint64_t sub_100ACDD3C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {

    v7 = sub_100B27E1C;
  }

  else
  {

    v7 = sub_100ACDE98;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100ACDEB4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100ACDF14(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  aBlock[4] = sub_100B22B78;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016466A0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v6, v3);
  (*(v23 + 8))(v10, v24);
}

void sub_100ACE2D8()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100B2128C(v0);
  Transaction.capture()();
}

void sub_100ACE33C()
{
  static os_log_type_t.default.getter();
  if (qword_101694760 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v0 = SPPersistentConnectionChangedNotification;

  sub_100B2128C(v0);
}

uint64_t sub_100ACE3E0()
{
  v1 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100ACE4A8;

  return daemon.getter();
}

uint64_t sub_100ACE4A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100ACE684;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100ACE684(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[4];
    v8 = v4[2];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[4];

    v4[6] = a1;

    return _swift_task_switch(sub_100ACE7F4, 0, 0);
  }
}

uint64_t sub_100ACE7F4()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  strcpy((v4 + 40), "CanBeLeashed");
  *(v4 + 53) = 0;
  *(v4 + 54) = -5120;
  sub_100A838F0(0, 0, v2, &unk_1013D6BC8, v4);
  v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100ACE914()
{
  v1 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100ACE9DC;

  return daemon.getter();
}

uint64_t sub_100ACE9DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100ACEBB8;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100ACEBB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[4];
    v8 = v4[2];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[4];

    v4[6] = a1;

    return _swift_task_switch(sub_100ACED28, 0, 0);
  }
}

uint64_t sub_100ACED28()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  strcpy((v4 + 40), "CanBeLeashed");
  *(v4 + 53) = 0;
  *(v4 + 54) = -5120;
  sub_100A838F0(0, 0, v2, &unk_1013D66C8, v4);
  v5 = v0[2];

  v6 = v0[1];

  return v6();
}

void sub_100ACEE48()
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B780);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Posting SPSeparationMonitoringSafeLocationsChanged Darwin notification from BeaconStore", v3, 2u);
  }

  v4 = SPSeparationMonitoringSafeLocationsChangedNotification;

  sub_100B2128C(v4);
}

uint64_t sub_100ACEF3C()
{
  v1 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100ACF004;

  return daemon.getter();
}

uint64_t sub_100ACF004(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100ACF1E0;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100ACF1E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[4];
    v8 = v4[2];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[4];

    v4[6] = a1;

    return _swift_task_switch(sub_100ACF350, 0, 0);
  }
}

uint64_t sub_100ACF350()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  strcpy((v4 + 40), "CanBeLeashed");
  *(v4 + 53) = 0;
  *(v4 + 54) = -5120;
  sub_100A838F0(0, 0, v2, &unk_1013D6740, v4);
  v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100ACF470(uint64_t a1)
{
  v2 = v1;
  v126 = type metadata accessor for BeaconStoreFileRecord();
  v106 = *(v126 - 8);
  v4 = *(v106 + 64);
  __chkstk_darwin(v126);
  v120 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconEstimatedLocation();
  v104 = *(v6 - 8);
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v103 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v119 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v103 - v13;
  v117 = type metadata accessor for DirectorySequence();
  v116 = *(v117 - 8);
  v15 = *(v116 + 64);
  __chkstk_darwin(v117);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for URL();
  v18 = *(v127 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v127);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v103 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v103 - v27;
  __chkstk_darwin(v26);
  v122 = &v103 - v29;
  v114 = type metadata accessor for Date();
  v107 = *(v114 - 8);
  v30 = *(v107 + 64);
  __chkstk_darwin(v114);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v115 = v28;
  v105 = v25;
  v112 = v22;
  v33 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074588(v131);

  v113 = v32;
  Date.init(timeIntervalSinceNow:)();
  v34 = *(v2 + 168);
  v35 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v108 = v34;
  v125 = v6;
  v36 = v127;
  v37 = sub_1000076D4(v127, qword_10177BF38);
  v110 = a1;
  UUID.uuidString.getter();
  *&v123 = v37;
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v35);
  v131 = _swiftEmptyArrayStorage;
  v130[0] = _swiftEmptyArrayStorage;
  v118 = objc_opt_self();
  v38 = [v118 defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v39 = v17;
  DirectorySequence.next()();
  v40 = v18 + 6;
  v121 = v18[6];
  v41 = v121(v14, 1, v36);
  v111 = v18;
  if (v41 == 1)
  {
    v42 = v127;
  }

  else
  {
    v128 = v18[4];
    v129 = v18 + 4;
    v43 = (v18 + 1);
    v42 = v127;
    v44 = v121;
    v45 = v108;
    v46 = v115;
    do
    {
      v128(v46, v14, v42);
      v47 = objc_autoreleasePoolPush();
      sub_1006011CC(v46, v45, &v131, v130);
      objc_autoreleasePoolPop(v47);
      (*v43)(v46, v42);
      DirectorySequence.next()();
    }

    while (v44(v14, 1, v42) != 1);
  }

  v124 = v40;
  (*(v116 + 8))(v39, v117);
  LODWORD(v129) = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v48 = static OS_os_log.default.getter();
  v117 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10138BBE0;
  v50 = v131;
  v51 = v131[2];
  *(v49 + 56) = &type metadata for Int;
  *(v49 + 64) = &protocol witness table for Int;
  *(v49 + 32) = v51;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

  v52 = v122;
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  v55 = v54;
  *(v49 + 96) = &type metadata for String;
  v56 = sub_100008C00();
  *(v49 + 104) = v56;
  *(v49 + 72) = v53;
  *(v49 + 80) = v55;
  os_log(_:dso:log:_:_:)();

  v57 = v130[0];
  v128 = v111[1];
  v129 = v111 + 1;
  v58 = (v128)(v52, v42);
  __chkstk_darwin(v58);
  *(&v103 - 2) = v113;

  v59 = sub_10013D74C(sub_100B27574, (&v103 - 4), v50);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v116 = qword_10177C380;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_101391790;
  sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
  v61 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v60 + 56) = &type metadata for String;
  *(v60 + 64) = v56;
  *(v60 + 32) = v61;
  *(v60 + 40) = v62;
  v63 = UUID.uuidString.getter();
  *(v60 + 96) = &type metadata for String;
  *(v60 + 104) = v56;
  v115 = v56;
  *(v60 + 72) = v63;
  *(v60 + 80) = v64;
  v65 = *(v59 + 16);
  v66 = v57[2];
  v67 = __OFADD__(v65, v66);
  v68 = v65 + v66;
  v69 = v57;
  v70 = v112;
  if (v67)
  {
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v110 = v59;
  *(v60 + 136) = &type metadata for Int;
  *(v60 + 144) = &protocol witness table for Int;
  *(v60 + 112) = v68;
  v71 = v50[2];

  if (__OFADD__(v71, v66))
  {
    goto LABEL_29;
  }

  *(v60 + 176) = &type metadata for Int;
  *(v60 + 184) = &protocol witness table for Int;
  *(v60 + 152) = v71 + v66;
  os_log(_:dso:log:_:_:)();

  v72 = *(v110 + 16);
  v109 = v69;
  if (v72)
  {
    v73 = v110 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v122 = *(v104 + 72);
    v74 = v103;
    v75 = v105;
    v76 = v108;
    do
    {
      sub_100022A54(v73, v74, type metadata accessor for BeaconEstimatedLocation);
      v77 = *(v125 + 24);
      v78 = (v74 + *(v125 + 20));
      v79 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v79);
      v80 = *(v76 + 16);
      __chkstk_darwin(v81);
      *(&v103 - 4) = v76;
      *(&v103 - 3) = v78;
      *(&v103 - 2) = v75;
      OS_dispatch_queue.sync<A>(execute:)();
      (v128)(v75, v127);
      sub_100022C40(v74, type metadata accessor for BeaconEstimatedLocation);
      v73 += v122;
      --v72;
    }

    while (v72);

    v70 = v112;
    v69 = v109;
  }

  else
  {
  }

  v82 = v69[2];
  v84 = v119;
  v83 = v120;
  v85 = v127;
  v86 = v121;
  if (v82)
  {
    v87 = v69 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v125 = *(v106 + 72);
    v88 = (v111 + 4);
    v123 = xmmword_101385D80;
    do
    {
      sub_100022A54(v87, v83, type metadata accessor for BeaconStoreFileRecord);
      sub_1000D2A70(v83 + *(v126 + 20), v84, &unk_101696AC0, &qword_101390A60);
      if (v86(v84, 1, v85) == 1)
      {
        sub_100022C40(v83, type metadata accessor for BeaconStoreFileRecord);
        sub_10000B3A8(v84, &unk_101696AC0, &qword_101390A60);
      }

      else
      {
        (*v88)(v70, v84, v85);
        v89 = [v118 defaultManager];
        URL._bridgeToObjectiveC()(v90);
        v92 = v91;
        v131 = 0;
        v93 = v70;
        v94 = [v89 removeItemAtURL:v91 error:&v131];

        if (v94)
        {
          v95 = v131;
        }

        else
        {
          v96 = v131;
          v97 = _convertNSErrorToError(_:)();

          swift_willThrow();
          static os_log_type_t.default.getter();
          v98 = swift_allocObject();
          *(v98 + 16) = v123;
          v131 = v97;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v99 = String.init<A>(describing:)();
          v100 = v115;
          *(v98 + 56) = &type metadata for String;
          *(v98 + 64) = v100;
          *(v98 + 32) = v99;
          *(v98 + 40) = v101;
          os_log(_:dso:log:_:_:)();
        }

        (v128)(v93, v85);
        v83 = v120;
        sub_100022C40(v120, type metadata accessor for BeaconStoreFileRecord);
        v84 = v119;
        v70 = v93;
        v86 = v121;
      }

      v87 += v125;
      --v82;
    }

    while (v82);
  }

  return (*(v107 + 8))(v113, v114);
}

uint64_t sub_100AD02A8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  sub_100044B3C(v6, a3);
  sub_1000076D4(v6, a3);
  return a4();
}

uint64_t sub_100AD0304@<X0>(uint64_t a1@<X8>)
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v12)
  {
    v2 = [objc_allocWithZone(NSProcessInfo) init];
    [v2 processIdentifier];

    _StringGuts.grow(_:)(31);
    v3 = NSTemporaryDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4._countAndFlagsBits = 0x2D7473657463782FLL;
    v4._object = 0xE800000000000000;
    String.append(_:)(v4);
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._object = 0x800000010136BA00;
    v6._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v6);
    if (qword_101694C08 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for UUID();
    sub_1000076D4(v7, qword_1016B48E0);
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    URL.init(fileURLWithPath:isDirectory:)();
  }

  else
  {
    if (qword_101694F00 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for URL();
    v11 = sub_1000076D4(v10, qword_10177C158);
    return (*(*(v10 - 8) + 16))(a1, v11, v10);
  }
}

void sub_100AD05E0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v7 = type metadata accessor for BeaconNamingRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v43[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43[-1] - v12;
  v14 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v43[-1] - v16);
  sub_1000D2A70(a1, &v43[-1] - v16, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177BA08);
    sub_100022A54(a3, v11, type metadata accessor for BeaconNamingRecord);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43[0] = v24;
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v25 = *(v7 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_100022C40(v11, type metadata accessor for BeaconNamingRecord);
      v29 = sub_1000136BC(v26, v28, v43);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2114;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v30;
      *v23 = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to save name record for beacon %{private,mask.hash}s: %{public}@", v22, 0x20u);
      sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v24);
    }

    else
    {

      sub_100022C40(v11, type metadata accessor for BeaconNamingRecord);
    }

    swift_beginAccess();
    v41 = *(a4 + 16);
    *(a4 + 16) = v18;
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177BA08);
    sub_100022A54(a3, v13, type metadata accessor for BeaconNamingRecord);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43[0] = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v36 = *(v7 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      sub_100022C40(v13, type metadata accessor for BeaconNamingRecord);
      v40 = sub_1000136BC(v37, v39, v43);

      *(v34 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "Name record created for beacon: %{private,mask.hash}s", v34, 0x16u);
      sub_100007BAC(v35);
    }

    else
    {

      sub_100022C40(v13, type metadata accessor for BeaconNamingRecord);
    }

    sub_10000B3A8(v17, &qword_1016A7808, &qword_1013D6750);
  }

  dispatch_group_leave(v42);
}

void sub_100AD0B8C(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016B5490, &unk_1013D67E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v16 - v8);
  sub_1000D2A70(a1, v16 - v8, &qword_1016B5490, &unk_1013D67E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v16[1] = v10;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    v15 = *(a3 + 16);
    *(a3 + 16) = v10;
  }

  else
  {
    static os_log_type_t.info.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_10000B3A8(v9, &qword_1016B5490, &unk_1013D67E0);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_100AD0DF8(void (*a1)(uint64_t *, char *), uint64_t a2, char a3)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100139CA0();
  v13 = swift_allocError();
  *v14 = a3;
  *v12 = v13;
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  a1(v12, v8);
  sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
  return sub_10000B3A8(v12, &unk_1016B15A0, &qword_1013A0900);
}

uint64_t sub_100AD0F98(void (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  *(&v15 - v11) = a3;
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  swift_errorRetain();
  a1(v12, v8);
  sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
  return sub_10000B3A8(v12, &unk_1016B15A0, &qword_1013A0900);
}

void sub_100AD111C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a4;
  v45 = a5;
  v46 = a2;
  v11 = type metadata accessor for OwnedBeaconRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v40 - v17);
  sub_1000D2A70(a1, &v40 - v17, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v47[0] = v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    v24 = *(a7 + 16);
    *(a7 + 16) = v19;
  }

  else
  {
    v43 = a3;
    v41 = a6;
    sub_10002911C(v18, v14, type metadata accessor for OwnedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    v42 = xmmword_101385D80;
    *(v25 + 16) = xmmword_101385D80;
    v26 = *(v11 + 20);
    v27 = UUID.uuidString.getter();
    v29 = v28;
    *(v25 + 56) = &type metadata for String;
    v30 = sub_100008C00();
    *(v25 + 64) = v30;
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v31 = swift_allocObject();
    *(v31 + 16) = v42;
    v32 = UUID.uuidString.getter();
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = v30;
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    os_log(_:dso:log:_:_:)();

    v34 = type metadata accessor for Transaction();
    __chkstk_darwin(v34);
    v36 = v43;
    v35 = v44;
    *(&v40 - 4) = v43;
    *(&v40 - 3) = v35;
    *(&v40 - 2) = v45;
    static Transaction.named<A>(_:with:)();
    My = type metadata accessor for Feature.FindMy();
    v47[3] = My;
    v47[4] = sub_10000768C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v38 = sub_1000280DC(v47);
    (*(*(My - 8) + 104))(v38, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    v39 = sub_100007BAC(v47);
    if (My)
    {
      __chkstk_darwin(v39);
      *(&v40 - 2) = v41;
      *(&v40 - 1) = v36;
      static Transaction.named<A>(_:with:)();
    }

    sub_100022C40(v14, type metadata accessor for OwnedBeaconRecord);
  }

  dispatch_group_leave(v46);
}

uint64_t sub_100AD1694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23 = a4;
  v21[1] = a2;
  v6 = type metadata accessor for KeySyncMetadata();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v21 - v10;
  v12 = type metadata accessor for KeyAlignmentRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_100022A54(a3, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KeyAlignmentRecord);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_10002911C(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for KeyAlignmentRecord);

  sub_1006E0D08(a3, 0, sub_100B24688, v16);

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_100022A54(v23, v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KeySyncMetadata);
  v18 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_10002911C(v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for KeySyncMetadata);
  sub_100A838F0(0, 0, v11, &unk_1013D67F8, v19);
}

uint64_t sub_100AD19A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v20 - v7);
  Transaction.capture()();
  sub_1000D2A70(a1, v8, &unk_1016B1690, &qword_1013D6800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v20[1] = v9;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    v16 = a3 + *(type metadata accessor for KeyAlignmentRecord() + 20);
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    return sub_10000B3A8(v8, &unk_1016B1690, &qword_1013D6800);
  }
}

uint64_t sub_100AD1C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100AD1CEC;

  return daemon.getter();
}

uint64_t sub_100AD1CEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100AD1EC8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100AD1EC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v7 = v4[4];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = v4[4];

    v11 = swift_task_alloc();
    v4[7] = v11;
    *v11 = v6;
    v11[1] = sub_100AD2068;
    v12 = v4[2];

    return sub_1010CDAC4(v12);
  }
}

uint64_t sub_100AD2068()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10037F1E8;
  }

  else
  {
    v3 = sub_1004A9788;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100AD217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a3;
  v40 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = v35 - v9;
  v10 = type metadata accessor for OwnedDeviceKeyRecord();
  v36 = *(v10 - 1);
  v11 = *(v36 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (v35 - v14);
  sub_100A7F75C(v42);
  if (v3)
  {
    v16 = v40;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177CE28);
    (*(v5 + 16))(v8, v16, v4);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44[0] = v40;
      *v20 = 141558531;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v5 + 8))(v8, v4);
      v24 = sub_1000136BC(v21, v23, v44);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1000136BC(v25, v26, v44);

      *(v20 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to create OwnedDeviceKeyRecord for %{private,mask.hash}s error: %s.", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    v28 = v15 + v10[5];
    UUID.init()();
    v29 = v10[6];
    v35[1] = 0;
    v30 = *(v5 + 16);
    v30(v15 + v29, v40, v4);
    v43 = v42[1];
    *v44 = v42[0];
    sub_10012C094(v44, v41);
    sub_10012C038(&v43, v41);
    sub_100A80F28(v42);
    *v15 = xmmword_10138C660;
    v31 = v43;
    *(v15 + v10[7]) = *v44;
    *(v15 + v10[8]) = v31;
    v30(v39, v40, v4);
    sub_100022A54(v15, v13, type metadata accessor for OwnedDeviceKeyRecord);
    v32 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v33 = (v6 + *(v36 + 80) + v32) & ~*(v36 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v37;
    (*(v5 + 32))(v34 + v32, v39, v4);
    sub_10002911C(v13, v34 + v33, type metadata accessor for OwnedDeviceKeyRecord);

    sub_1006DE50C(v15, 0, sub_100B245B0, v34);

    sub_100022C40(v15, type metadata accessor for OwnedDeviceKeyRecord);
  }
}

void sub_100AD26E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v55 = type metadata accessor for OwnedDeviceKeyRecord();
  v5 = *(*(v55 - 8) + 64);
  v6 = __chkstk_darwin(v55);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v58 = type metadata accessor for UUID();
  v10 = *(v58 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v58);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_1000BC4D4(&qword_1016A7810, &qword_1013B66C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v54 - v19);
  Transaction.capture()();
  sub_1000D2A70(a1, v20, &qword_1016A7810, &qword_1013B66C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177CE28);
    v23 = v58;
    (*(v10 + 16))(v14, v56, v58);
    v24 = v54;
    sub_100022A54(v57, v54, type metadata accessor for OwnedDeviceKeyRecord);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v27 = 141559043;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v56) = v26;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v10 + 8))(v14, v23);
      v31 = sub_1000136BC(v28, v30, &v59);

      *(v27 + 14) = v31;
      *(v27 + 22) = 2160;
      *(v27 + 24) = 1752392040;
      *(v27 + 32) = 2081;
      v32 = v24 + *(v55 + 20);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_100022C40(v24, type metadata accessor for OwnedDeviceKeyRecord);
      v36 = sub_1000136BC(v33, v35, &v59);

      *(v27 + 34) = v36;
      *(v27 + 42) = 2080;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = sub_1000136BC(v37, v38, &v59);

      *(v27 + 44) = v39;
      _os_log_impl(&_mh_execute_header, v25, v56, "Failed to save OwnedDeviceKeyRecord for %{private,mask.hash}s uuid: %{private,mask.hash}s error: %s.", v27, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100022C40(v24, type metadata accessor for OwnedDeviceKeyRecord);
      (*(v10 + 8))(v14, v23);
    }
  }

  else
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177CE28);
    v41 = v58;
    (*(v10 + 16))(v16, v56, v58);
    sub_100022A54(v57, v9, type metadata accessor for OwnedDeviceKeyRecord);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v44 = 141558787;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v56) = v43;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v10 + 8))(v16, v41);
      v48 = sub_1000136BC(v45, v47, &v59);

      *(v44 + 14) = v48;
      *(v44 + 22) = 2160;
      *(v44 + 24) = 1752392040;
      *(v44 + 32) = 2081;
      v49 = &v9[*(v55 + 20)];
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      sub_100022C40(v9, type metadata accessor for OwnedDeviceKeyRecord);
      v53 = sub_1000136BC(v50, v52, &v59);

      *(v44 + 34) = v53;
      _os_log_impl(&_mh_execute_header, v42, v56, "Successfully saved OwnedDeviceKeyRecord for %{private,mask.hash}s uuid: %{private,mask.hash}s.", v44, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100022C40(v9, type metadata accessor for OwnedDeviceKeyRecord);
      (*(v10 + 8))(v16, v41);
    }

    sub_10000B3A8(v20, &qword_1016A7810, &qword_1013B66C0);
  }
}

uint64_t sub_100AD2E7C(uint64_t a1, void (*a2)(void *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v22 - v15);
  swift_beginAccess();
  v17 = *(a1 + 16);
  if (v17)
  {
    *v16 = v17;
    swift_storeEnumTagMultiPayload();
    v18 = type metadata accessor for UUID();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v12, a4, v18);
    (*(v19 + 56))(v12, 0, 1, v18);
    swift_errorRetain();
    swift_errorRetain();
    a2(v16, v12);
  }

  else
  {
    sub_100022A54(a5, v16, type metadata accessor for OwnedBeaconRecord);
    swift_storeEnumTagMultiPayload();
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    a2(v16, v12);
  }

  sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
  return sub_10000B3A8(v16, &unk_1016B15A0, &qword_1013A0900);
}

uint64_t sub_100AD30EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for UUID();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100AD31BC, 0, 0);
}

uint64_t sub_100AD31BC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = *(v0[13] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v5 = v0[11];
  v0[19] = v5;
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(*(*(v7 + 8) + 8) + 32))(v6);
  v8 = getuid();
  sub_1000294F0(v8);
  v9 = *(v5 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_100AD331C;
  v12 = v0[17];
  v11 = v0[18];

  return sub_100687A6C((v0 + 2), v11, v12);
}

uint64_t sub_100AD331C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v12 = *v1;

  if (v0)
  {

    v4 = sub_100AD350C;
  }

  else
  {
    v6 = v2[18];
    v5 = v2[19];
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[15];
    v10 = *(v8 + 8);
    v10(v7, v9);
    v10(v6, v9);

    v4 = sub_100AD3480;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100AD3480()
{
  v1 = *(v0 + 96);
  *v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 64) = *(v0 + 80);
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 16) = v2;
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100AD350C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[12];
  v5 = *(v0[16] + 8);
  v5(v0[17], v3);
  v5(v1, v3);

  *(v4 + 64) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100AD35D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1009153A8;

  return sub_1007383E8(a1, a3);
}

uint64_t sub_100AD3688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for UUID();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100AD3758, 0, 0);
}

uint64_t sub_100AD3758()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = *(v0[13] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v5 = v0[11];
  v0[19] = v5;
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(*(*(v7 + 8) + 8) + 32))(v6);
  v8 = getuid();
  sub_1000294F0(v8);
  v9 = *(v5 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_100AD38B8;
  v12 = v0[17];
  v11 = v0[18];

  return sub_100687A6C((v0 + 2), v11, v12);
}

uint64_t sub_100AD38B8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v12 = *v1;

  if (v0)
  {

    v4 = sub_100B2800C;
  }

  else
  {
    v6 = v2[18];
    v5 = v2[19];
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[15];
    v10 = *(v8 + 8);
    v10(v7, v9);
    v10(v6, v9);

    v4 = sub_100B27E48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100AD3A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100AD3AE0, 0, 0);
}

uint64_t sub_100AD3AE0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[4] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v4 = v0[2];
  v0[9] = v4;
  v5 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
  v6 = getuid();
  sub_1000294F0(v6);
  v7 = *(v4 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100AD3C10;
  v9 = v0[8];
  v10 = v0[3];

  return sub_10068A150(v10, v2 + v5);
}

uint64_t sub_100AD3C10()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100AD3D70, 0, 0);
  }

  else
  {
    v5 = v2[9];
    (*(v2[7] + 8))(v2[8], v2[6]);

    v6 = v2[8];

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_100AD3D70()
{
  v1 = v0[9];
  v2 = v0[3];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v3 = type metadata accessor for KeyDropLostItemDates(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100AD3E34(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for OwnedBeaconRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100AA33AC(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &unk_1016A9A20, &qword_10138B280);
LABEL_3:
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177BA08);
    (*(v3 + 16))(v6, a1, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v32 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v3 + 8))(v6, v2);
      v24 = sub_1000136BC(v21, v23, &v32);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not compute productUUID from nil productData of beacon %{private,mask.hash}s.", v19, 0x16u);
      sub_100007BAC(v20);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return UUID.init(uuid:)();
  }

  sub_10002911C(v10, v15, type metadata accessor for OwnedBeaconRecord);
  v25 = sub_100D5F668();
  if (v26 >> 60 == 15)
  {
    v25 = sub_100314604(*&v15[*(v11 + 64)], *&v15[*(v11 + 68)]);
    if (v26 >> 60 == 15)
    {
      sub_100022C40(v15, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_3;
    }
  }

  v27 = v26;
  v28 = v25;
  if (qword_101694570 != -1)
  {
    swift_once();
  }

  v32 = xmmword_10169DAA8;
  sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
  Data.append(_:)();
  v29 = v32;
  v31 = v32;
  sub_100017D5C(v32, *(&v32 + 1));
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v28, v27);
  sub_100016590(v29, *(&v29 + 1));
  sub_100022C40(v15, type metadata accessor for OwnedBeaconRecord);
  return sub_100016590(v29, *(&v29 + 1));
}

BOOL sub_100AD4334()
{
  type metadata accessor for UUID();
  sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100AD43C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for BeaconStatus(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  sub_100AC6DA0(a2 + *(v4 + 20), v11);
  v19 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  if ((*(*(v19 - 8) + 48))(v11, 1, v19) == 1)
  {
    sub_10000B3A8(v11, &qword_10169DBD0, &unk_1013D6790);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177BA08);
    sub_100022A54(a2, v7, type metadata accessor for OwnedBeaconRecord);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      v25 = *(v4 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_100022C40(v7, type metadata accessor for OwnedBeaconRecord);
      v29 = sub_1000136BC(v26, v28, &v40);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "No multipart observation for beacon %s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100022C40(v7, type metadata accessor for OwnedBeaconRecord);
    }

    static Date.distantPast.getter();
    return 0;
  }

  else
  {
    sub_10002911C(v11, v16, type metadata accessor for BeaconStatus);
    sub_10002911C(v16, v18, type metadata accessor for BeaconStatus);
    v30 = sub_10001993C(v18[*(v12 + 20)] & 0xB);
    v31 = (v30 >> 8) & 1;
    v32 = HIWORD(v30) & 1;
    v33 = HIBYTE(v30) & 1;
    v34 = sub_100B0E7A8(a2);
    v35 = sub_100165E94(v31, v32, v33, v34);
    v36 = *(v12 + 24);
    v37 = type metadata accessor for Date();
    (*(*(v37 - 8) + 16))(a1, &v18[v36], v37);
    sub_100022C40(v18, type metadata accessor for BeaconStatus);
    return v35;
  }
}

void *sub_100AD4838(uint64_t a1, uint64_t a2)
{
  v230 = a2;
  v228 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v3 = *(*(v228 - 8) + 64);
  __chkstk_darwin(v228);
  v227 = &v213 - v4;
  v5 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v249 = &v213 - v7;
  v235 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v8 = *(*(v235 - 8) + 64);
  __chkstk_darwin(v235);
  v236 = &v213 - v9;
  v261 = type metadata accessor for UUID();
  v239 = *(v261 - 8);
  v10 = *(v239 + 64);
  v11 = __chkstk_darwin(v261);
  v218 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v220 = &v213 - v14;
  v15 = __chkstk_darwin(v13);
  v238 = &v213 - v16;
  v17 = __chkstk_darwin(v15);
  v247 = &v213 - v18;
  v19 = __chkstk_darwin(v17);
  v245 = &v213 - v20;
  v21 = __chkstk_darwin(v19);
  v256 = &v213 - v22;
  v23 = __chkstk_darwin(v21);
  v234 = &v213 - v24;
  __chkstk_darwin(v23);
  v257 = &v213 - v25;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v231 = &v213 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v233 = &v213 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v213 - v33;
  __chkstk_darwin(v32);
  v36 = &v213 - v35;
  v254 = type metadata accessor for BeaconStatus(0);
  v37 = *(v254 - 8);
  v38 = *(v37 + 8);
  v39 = __chkstk_darwin(v254);
  v241 = &v213 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v250 = &v213 - v42;
  __chkstk_darwin(v41);
  v44 = &v213 - v43;
  v266 = &_swiftEmptySetSingleton;
  v45 = a1 + 56;
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a1 + 56);
  v49 = (v46 + 63) >> 6;
  v252 = a1;

  v50 = 0;
LABEL_4:
  if (v48)
  {
    v51 = v50;
    goto LABEL_10;
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v49)
    {

      return &_swiftEmptySetSingleton;
    }

    v48 = *(v45 + 8 * v51);
    ++v50;
    if (v48)
    {
      v50 = v51;
LABEL_10:
      v52 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v53 = *(v37 + 9);
      sub_100022A54(v252[6] + v53 * (v52 | (v51 << 6)), v44, type metadata accessor for BeaconStatus);
      v54 = *&v44[*(v254 + 36)];

      sub_100022C40(v44, type metadata accessor for BeaconStatus);
      if (v54)
      {
        v225 = v53;

        if (qword_101694BF8 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_95;
      }

      goto LABEL_4;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  swift_once();
LABEL_12:
  v55 = type metadata accessor for Logger();
  v56 = sub_1000076D4(v55, qword_10177BA38);
  sub_1000D2A70(v230, v36, &qword_1016980D0, &unk_10138F3B0);
  v243 = v56;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  v59 = v36;
  v36 = &unk_10138A000;
  if (os_log_type_enabled(v57, v58))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v265 = v61;
    *v60 = 141558275;
    *(v60 + 4) = 1752392040;
    *(v60 + 12) = 2081;
    v62 = v59;
    sub_1000D2A70(v59, v34, &qword_1016980D0, &unk_10138F3B0);
    v63 = v239;
    if ((*(v239 + 48))(v34, 1, v261) == 1)
    {
      sub_10000B3A8(v34, &qword_1016980D0, &unk_10138F3B0);
      v64 = 0xE400000000000000;
      v65 = 1701736302;
    }

    else
    {
      v65 = UUID.uuidString.getter();
      v64 = v68;
      (*(v63 + 8))(v34, v261);
    }

    sub_10000B3A8(v62, &qword_1016980D0, &unk_10138F3B0);
    v69 = sub_1000136BC(v65, v64, &v265);

    *(v60 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v57, v58, "Primary beacon: %{private,mask.hash}s", v60, 0x16u);
    sub_100007BAC(v61);

    v36 = &unk_10138A000;
  }

  else
  {

    v67 = sub_10000B3A8(v59, &qword_1016980D0, &unk_10138F3B0);
  }

  v70 = v252;
  v71 = v252[2];
  if (v71)
  {
    v72 = sub_1003A87E0(v252[2], 0);
    v260 = sub_1003AA0BC(&v265, v72 + ((v37[80] + 32) & ~v37[80]), v71, v70);

    v67 = sub_1000128F8();
    if (v260 == v71)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  v72 = _swiftEmptyArrayStorage;
LABEL_23:
  __chkstk_darwin(v67);
  *(&v213 - 2) = v230;
  v265 = v72;

  sub_100A8AC4C(sub_100B24AE4, (&v213 - 2));
  v255 = 0;

  v34 = v265;

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v265 = v76;
    *v75 = 136315138;
    v77 = Array.description.getter();
    v79 = sub_1000136BC(v77, v78, &v265);

    *(v75 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v73, v74, "sortedStatuses %s", v75, 0xCu);
    sub_100007BAC(v76);
  }

  v80 = v257;
  v81 = v241;
  v264 = &_swiftEmptySetSingleton;
  v224 = *(v34 + 2);
  if (v224)
  {
    v82 = v239;
    v223 = &v34[(v37[80] + 32) & ~v37[80]];
    v222 = *(v237 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    swift_beginAccess();
    v83 = 0;
    v84 = (v82 + 16);
    v259 = (v82 + 8);
    v244 = (v82 + 32);
    v242 = (v37 + 48);
    v217 = (v82 + 56);
    v216 = (v82 + 48);
    *&v85 = 136315907;
    v215 = v85;
    *&v85 = 141558275;
    v213 = v85;
    *&v85 = 136315138;
    v214 = v85;
    v37 = v236;
    v86 = v225;
    v221 = v34;
    v260 = v82 + 16;
    do
    {
      if (v83 >= *(v34 + 2))
      {
        goto LABEL_94;
      }

      v240 = v83;
      v87 = v250;
      sub_100022A54(&v223[v83 * v86], v250, type metadata accessor for BeaconStatus);
      v88 = *v84;
      v89 = (*v84)(v80, v87, v261);
      __chkstk_darwin(v89);
      *(&v213 - 2) = v237;
      *(&v213 - 1) = v80;
      v90 = v255;
      QueueSynchronizer.conditionalSync<A>(_:)();
      v255 = v90;
      v91 = type metadata accessor for BeaconNamingRecord();
      if ((*(*(v91 - 8) + 48))(v37, 1, v91) == 1)
      {
        sub_10000B3A8(v37, &unk_1016B29E0, &unk_1013B70E0);
        v92 = 0;
        v93 = 0xE000000000000000;
      }

      else
      {
        v94 = &v37[*(v91 + 32)];
        v92 = *v94;
        v93 = v94[1];

        sub_100022C40(v37, type metadata accessor for BeaconNamingRecord);
      }

      v95 = v234;
      v253 = v88;
      v88(v234, v80, v261);
      sub_100022A54(v250, v81, type metadata accessor for BeaconStatus);

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v262 = swift_slowAlloc();
        *v98 = v215;
        v99 = sub_1000136BC(v92, v93, &v262);

        *(v98 + 4) = v99;
        *(v98 + 12) = 2160;
        *(v98 + 14) = 1752392040;
        *(v98 + 22) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v36 = v261;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v37 = *v259;
        (*v259)(v95, v36);
        v103 = sub_1000136BC(v100, v102, &v262);

        *(v98 + 24) = v103;
        *(v98 + 32) = 2080;
        v104 = v241;
        if (*&v241[*(v254 + 36)])
        {
          v105 = *&v241[*(v254 + 36)];
        }

        sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);

        v106 = Set.description.getter();
        v108 = v107;

        sub_100022C40(v104, type metadata accessor for BeaconStatus);
        v109 = sub_1000136BC(v106, v108, &v262);

        *(v98 + 34) = v109;
        _os_log_impl(&_mh_execute_header, v96, v97, "(%s) %{private,mask.hash}s nearby: %s", v98, 0x2Au);
        swift_arrayDestroy();
        v80 = v257;
      }

      else
      {

        sub_100022C40(v81, type metadata accessor for BeaconStatus);
        v37 = *v259;
        (*v259)(v95, v261);
      }

      v110 = v264;
      v111 = v264[2];
      v251 = v37;
      v112 = v253;
      v258 = v264;
      if (v111)
      {
        v113 = v264[5];
        sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);

        v114 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v115 = v110 + 7;
        v116 = -1 << *(v110 + 32);
        v117 = v114 & ~v116;
        if ((*(v110 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v117))
        {
          v118 = ~v116;
          v119 = *(v239 + 72);
          while (1)
          {
            v120 = v256;
            v121 = v261;
            v112(v256, v258[6] + v119 * v117, v261);
            sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
            v122 = dispatch thunk of static Equatable.== infix(_:_:)();
            (v37)(v120, v121);
            if (v122)
            {
              break;
            }

            v117 = (v117 + 1) & v118;
            if (((*(v115 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v147 = v218;
          v80 = v257;
          v84 = v260;
          v112(v218, v257, v261);
          v148 = Logger.logObject.getter();
          v149 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v262 = v151;
            *v150 = v213;
            *(v150 + 4) = 1752392040;
            *(v150 + 12) = 2081;
            sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
            v36 = v261;
            v152 = dispatch thunk of CustomStringConvertible.description.getter();
            v154 = v153;
            v155 = v251;
            (v251)(v147, v36);
            v156 = sub_1000136BC(v152, v154, &v262);

            *(v150 + 14) = v156;
            _os_log_impl(&_mh_execute_header, v148, v149, "%{private,mask.hash}s has already been inserted", v150, 0x16u);
            sub_100007BAC(v151);
            v84 = v260;

            v155(v80, v36);
          }

          else
          {

            v211 = v261;
            v212 = v251;
            (v251)(v147, v261);
            v212(v80, v211);
          }

LABEL_87:
          v37 = v236;
          goto LABEL_90;
        }

LABEL_44:

        v80 = v257;
      }

      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v123 = (*(v239 + 80) + 32) & ~*(v239 + 80);
      v248 = *(v239 + 72);
      v124 = swift_allocObject();
      v36 = v261;
      v112(v124 + v123, v80, v261);
      v226 = sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v262 = Set.init(minimumCapacity:)();
      v125 = v245;
      v112(v245, v124 + v123, v36);
      v126 = v256;
      sub_100DE8BCC(v256, v125);
      (v37)(v126, v36);
      swift_setDeallocating();
      (v37)(v124 + v123, v36);
      swift_deallocClassInstance();
      v127 = v262;
      v263 = v262;
      v128 = *(v250 + *(v254 + 36));
      if (!v128)
      {
        v137 = v220;
        v112(v220, v80, v261);
        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          v141 = v137;
          v142 = swift_slowAlloc();
          v262 = v142;
          *v140 = v213;
          *(v140 + 4) = 1752392040;
          *(v140 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v36 = v261;
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v145 = v144;
          (v37)(v141, v36);
          v146 = sub_1000136BC(v143, v145, &v262);
          v80 = v257;

          *(v140 + 14) = v146;
          _os_log_impl(&_mh_execute_header, v138, v139, "No nearby peers for %{private,mask.hash}s", v140, 0x16u);
          sub_100007BAC(v142);
        }

        else
        {

          (v37)(v137, v261);
        }

        v197 = v258;

        v198 = sub_100037E20(v80, v197);

        v84 = v260;
        if (v198)
        {

          (v37)(v80, v261);
          goto LABEL_87;
        }

        sub_100DEEB44(&v262, v127);

        swift_beginAccess();
        sub_1005C9E68(v127);
        swift_endAccess();
        v199 = Logger.logObject.getter();
        v200 = static os_log_type_t.debug.getter();
        v201 = os_log_type_enabled(v199, v200);
        v37 = v236;
        if (v201)
        {
          v202 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v262 = v203;
          *v202 = v214;

          v36 = v261;
          v204 = Set.description.getter();
          v206 = v205;

          v207 = v204;
          v84 = v260;
          v208 = sub_1000136BC(v207, v206, &v262);
          v80 = v257;

          *(v202 + 4) = v208;
          _os_log_impl(&_mh_execute_header, v199, v200, "Inserted: %s", v202, 0xCu);
          sub_100007BAC(v203);

          v209 = v80;
          v210 = v36;
        }

        else
        {

          v209 = v80;
          v210 = v261;
        }

        (v251)(v209, v210);
LABEL_90:
        v81 = v241;
        goto LABEL_29;
      }

      v129 = v128 + 56;
      v130 = 1 << *(v128 + 32);
      if (v130 < 64)
      {
        v131 = ~(-1 << v130);
      }

      else
      {
        v131 = -1;
      }

      v132 = v131 & *(v128 + 56);
      v133 = (v130 + 63) >> 6;

      v135 = 0;
      v34 = v249;
      v136 = v238;
      v246 = v134;
      while (v132)
      {
        v162 = v136;
LABEL_63:
        v164 = v247;
        v165 = v261;
        v112(v247, *(v134 + 48) + (__clz(__rbit64(v132)) | (v135 << 6)) * v248, v261);
        v166 = *v244;
        v167 = (*v244)(v162, v164, v165);
        __chkstk_darwin(v167);
        v168 = v162;
        *(&v213 - 2) = v162;
        v169 = v34;
        v170 = v255;
        sub_1012BC438(sub_1002DB664, v252, v169);
        v255 = v170;
        v34 = v249;
        v171 = v254;
        if ((*v242)(v249, 1, v254) == 1)
        {
          sub_10000B3A8(v34, &qword_10169DBD8, &qword_1013BF910);
          v37 = v251;
LABEL_69:
          v36 = v258;

          v136 = v168;
          v180 = sub_100037E20(v168, v36);

          v112 = v253;
          if ((v180 & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_56;
        }

        v172 = *&v34[*(v171 + 36)];

        sub_100022C40(v34, type metadata accessor for BeaconStatus);
        v37 = v251;
        if (!v172)
        {
          goto LABEL_69;
        }

        v219 = v166;
        v229 = v172;
        v173 = v233;
        v174 = v261;
        v253(v233, v257, v261);
        (*v217)(v173, 0, 1, v174);
        v175 = *(v228 + 48);
        v176 = v227;
        sub_1000D2A70(v173, v227, &qword_1016980D0, &unk_10138F3B0);
        v232 = v175;
        sub_1000D2A70(v230, v176 + v175, &qword_1016980D0, &unk_10138F3B0);
        v177 = *v216;
        if ((*v216)(v176, 1, v174) == 1)
        {
          sub_10000B3A8(v173, &qword_1016980D0, &unk_10138F3B0);
          v178 = v177(v176 + v232, 1, v174);
          v179 = v238;
          v37 = v251;
          v112 = v253;
          if (v178 == 1)
          {

            sub_10000B3A8(v176, &qword_1016980D0, &unk_10138F3B0);
            v34 = v249;
            v136 = v179;
LABEL_55:
            v157 = v136;
            v158 = v245;
            v36 = v261;
            v112(v245, v157, v261);
            v159 = v256;
            v160 = v158;
            v136 = v157;
            v37 = v251;
            sub_100DE8BCC(v256, v160);
            v161 = v159;
            v112 = v253;
            (v37)(v161, v36);
            goto LABEL_56;
          }
        }

        else
        {
          sub_1000D2A70(v176, v231, &qword_1016980D0, &unk_10138F3B0);
          if (v177(v176 + v232, 1, v174) != 1)
          {
            v183 = v256;
            v184 = v261;
            v219(v256, v176 + v232, v261);
            sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
            v185 = dispatch thunk of static Equatable.== infix(_:_:)();
            v186 = v251;
            (v251)(v183, v184);
            sub_10000B3A8(v233, &qword_1016980D0, &unk_10138F3B0);
            v186(v231, v184);
            v37 = v186;
            sub_10000B3A8(v176, &qword_1016980D0, &unk_10138F3B0);
            v34 = v249;
            v136 = v238;
            v112 = v253;
            if (v185)
            {

              goto LABEL_55;
            }

            goto LABEL_74;
          }

          sub_10000B3A8(v233, &qword_1016980D0, &unk_10138F3B0);
          v37 = v251;
          (v251)(v231, v261);
          v179 = v238;
          v112 = v253;
        }

        sub_10000B3A8(v176, &qword_1016AF880, &unk_10138CE20);
        v34 = v249;
        v136 = v179;
LABEL_74:
        v36 = v229;
        v181 = sub_100037E20(v257, v229);

        if (v181)
        {
          v182 = v258;

          v36 = sub_100037E20(v136, v182);

          if ((v36 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

LABEL_56:
        v132 &= v132 - 1;
        (v37)(v136, v261);
        v134 = v246;
      }

      while (1)
      {
        v163 = v135 + 1;
        if (__OFADD__(v135, 1))
        {
          __break(1u);
          goto LABEL_93;
        }

        if (v163 >= v133)
        {
          break;
        }

        v132 = *(v129 + 8 * v163);
        ++v135;
        if (v132)
        {
          v162 = v136;
          v135 = v163;
          goto LABEL_63;
        }
      }

      v187 = v263;

      sub_100DEEB44(&v262, v187);

      swift_beginAccess();
      sub_1005C9E68(v187);
      swift_endAccess();
      v188 = Logger.logObject.getter();
      v189 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v262 = v191;
        *v190 = v214;

        v36 = v261;
        v192 = Set.description.getter();
        v193 = v37;
        v195 = v194;

        v196 = sub_1000136BC(v192, v195, &v262);

        *(v190 + 4) = v196;
        _os_log_impl(&_mh_execute_header, v188, v189, "Inserted: %s", v190, 0xCu);
        sub_100007BAC(v191);

        v80 = v257;
        (v193)(v257, v36);
      }

      else
      {

        v80 = v257;
        (v37)(v257, v261);
      }

      v37 = v236;
      v81 = v241;
      v84 = v260;
LABEL_29:
      sub_100022C40(v250, type metadata accessor for BeaconStatus);
      v34 = v221;
      v83 = v240 + 1;
      v86 = v225;
    }

    while (v240 + 1 != v224);
  }

  return v266;
}

uint64_t sub_100AD6764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a3, v9, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    v15 = *(type metadata accessor for BeaconStatus(0) + 24);
    v16 = static Date.< infix(_:_:)();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    if ((static UUID.== infix(_:_:)() & 1) != 0 && *(a1 + *(type metadata accessor for BeaconStatus(0) + 36)))
    {
      (*(v11 + 8))(v14, v10);
      v16 = 1;
    }

    else if ((static UUID.== infix(_:_:)() & 1) != 0 && *(a2 + *(type metadata accessor for BeaconStatus(0) + 36)))
    {
      (*(v11 + 8))(v14, v10);
      v16 = 0;
    }

    else
    {
      v17 = *(type metadata accessor for BeaconStatus(0) + 24);
      v18 = static Date.< infix(_:_:)();
      (*(v11 + 8))(v14, v10);
      v16 = v18;
    }
  }

  return v16 & 1;
}

BOOL sub_100AD69D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StableIdentifier();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022A54(a1 + *(v4 + 24), v11, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v22 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v23 = *&v11[v22[12] + 8];

    v24 = *&v11[v22[16] + 8];

    v25 = *&v11[v22[20] + 8];

    if (*(a2 + 16))
    {
      v26 = v11[v22[24]];
      v27 = *(a2 + 40);
      v28 = static Hasher._hash(seed:bytes:count:)();
      v29 = a2 + 56;
      v30 = -1 << *(a2 + 32);
      v31 = v28 & ~v30;
      if ((*(a2 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        v33 = *(a2 + 48);
        do
        {
          v34 = *(v33 + v31);
          v35 = v34 == v26;
          if (v34 == v26)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
        }

        while (((*(v29 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (qword_101694BF8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177BA38);
      sub_100022A54(a1, v7, type metadata accessor for OwnedBeaconRecord);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v57 = v40;
        *v39 = 141558275;
        *(v39 + 4) = 1752392040;
        *(v39 + 12) = 2081;
        v41 = &v7[*(v4 + 24)];
        v42 = sub_1010DA578();
        v44 = v43;
        sub_100022C40(v7, type metadata accessor for OwnedBeaconRecord);
        v45 = sub_1000136BC(v42, v44, &v57);

        *(v39 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "nearbyMultipartPeers: Invalid stableIdentifier %{private,mask.hash}s", v39, 0x16u);
        sub_100007BAC(v40);
      }

      else
      {

        sub_100022C40(v7, type metadata accessor for OwnedBeaconRecord);
      }

      sub_100022C40(v11, type metadata accessor for StableIdentifier);
      return 0;
    }

    v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v14 = *&v11[v13[12] + 8];

    v15 = *&v11[v13[16] + 8];

    v16 = *&v11[v13[20] + 8];

    v17 = &v11[v13[24]];
    v18 = *v17;
    v19 = v17[1];
    v20 = *&v11[v13[28] + 8];

    if (v19 == 1)
    {
      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 8))(v11, v21);
      return 0;
    }

    if (*(a2 + 16))
    {
      v46 = *(a2 + 40);
      v47 = static Hasher._hash(seed:bytes:count:)();
      v48 = a2 + 56;
      v49 = -1 << *(a2 + 32);
      v50 = v47 & ~v49;
      if ((*(a2 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
      {
        v51 = ~v49;
        v52 = *(a2 + 48);
        do
        {
          v53 = *(v52 + v50);
          v35 = v53 == v18;
          if (v53 == v18)
          {
            break;
          }

          v50 = (v50 + 1) & v51;
        }

        while (((*(v48 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0);
        goto LABEL_22;
      }
    }
  }

  v35 = 0;
LABEL_22:
  v54 = type metadata accessor for UUID();
  (*(*(v54 - 8) + 8))(v11, v54);
  return v35;
}

id sub_100AD6EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v80 = a3;
  v79 = a2;
  v78 = a1;
  v77 = a4;
  v4 = type metadata accessor for Date();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StableIdentifier();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UUID();
  v74 = *(v12 - 8);
  v13 = *(v74 + 64);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v16 - 8);
  v17 = *(v93 + 64);
  __chkstk_darwin(v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v75 = *(v76 - 8);
  v20 = *(v75 + 64);
  __chkstk_darwin(v76);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v81;
  sub_100A785D8(v88);
  if (v23)
  {

    v24 = *(v78 + 136);
    v25 = swift_allocObject();
    v26 = v80;
    *(v25 + 16) = v79;
    *(v25 + 24) = v26;
    v86 = sub_100B27E40;
    v87 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v84 = sub_100006684;
    v85 = &unk_1016483D8;
    v27 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&v92 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);
    (*(v93 + 8))(v19, v16);
    (*(v75 + 8))(v22, v76);

    v28 = type metadata accessor for OwnedBeaconRecord();
    return (*(*(v28 - 8) + 56))(v77, 1, 1, v28);
  }

  v72 = v22;
  v66 = v19;
  v30 = v93;
  v81 = v11;
  v68 = v7;
  v67 = v4;
  v70 = v12;
  v71 = 0;
  UUID.init()();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v31 = result;
  v69 = v15;
  v32 = MobileGestalt_copy_uniqueDeviceID_obj();

  v33 = v16;
  v34 = v80;
  v35 = v79;
  if (v32)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = v72;
  v40 = v78;
  v41 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v41 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    v93 = *(v40 + 136);
    v50 = swift_allocObject();
    *(v50 + 16) = v35;
    *(v50 + 24) = v34;
    v86 = sub_100B27544;
    v87 = v50;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v84 = sub_100006684;
    v85 = &unk_101648428;
    v51 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&v92 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v52 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);
    sub_1001DA760(v88);
    (*(v30 + 8))(v52, v33);
    (*(v75 + 8))(v39, v76);
    (*(v74 + 8))(v69, v70);

    v53 = type metadata accessor for OwnedBeaconRecord();
    return (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
  }

  v42 = v81;
  *v81 = v36;
  v42[1] = v38;
  swift_storeEnumTagMultiPayload();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_22;
  }

  v43 = result;
  v44 = MobileGestalt_copy_buildVersion_obj();

  v45 = v74;
  v46 = v68;
  if (v44)
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_23;
  }

  v54 = result;
  v55 = MobileGestalt_copy_productType_obj();

  if (v55)
  {
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0xE000000000000000;
  }

  aBlock = v88[2];
  v91 = v88[4];
  v92 = v88[3];
  v89 = v88[1];
  v90 = v88[0];
  sub_10012BFDC(&aBlock, v82);
  sub_1000D2A70(&v92, v82, &qword_1016977A8, &qword_1013D6820);
  sub_1000D2A70(&v91, v82, &qword_1016977A8, &qword_1013D6820);
  sub_10012C038(&v90, v82);
  sub_10012C094(&v89, v82);
  sub_100A82D10(v46);
  sub_1001DA760(v88);
  v59 = type metadata accessor for OwnedBeaconRecord();
  v60 = v77;
  v61 = v70;
  (*(v45 + 32))(&v77[v59[5]], v69, v70);
  sub_10002911C(v81, &v60[v59[6]], type metadata accessor for StableIdentifier);
  (*(v45 + 56))(&v60[v59[7]], 1, 1, v61);
  *v60 = xmmword_10138C660;
  (*(v73 + 32))(&v60[v59[8]], v46, v67);
  *&v60[v59[9]] = aBlock;
  v62 = v91;
  *&v60[v59[10]] = v92;
  *&v60[v59[11]] = v62;
  v63 = v89;
  *&v60[v59[12]] = v90;
  *&v60[v59[13]] = v63;
  v64 = &v60[v59[14]];
  *v64 = v56;
  v64[1] = v58;
  v65 = &v60[v59[15]];
  *v65 = v47;
  v65[1] = v49;
  *&v60[v59[16]] = -1;
  *&v60[v59[17]] = -1;
  v60[v59[18]] = 3;
  v60[v59[19]] = 0;
  v60[v59[20]] = 0;
  return (*(*(v59 - 1) + 56))(v60, 0, 1, v59);
}

uint64_t sub_100AD79A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v29 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v29);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v30);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v25 - v15;
  v27 = *(a2 + 136);
  sub_1000D2A70(a1, &v25 - v15, &unk_1016B15A0, &qword_1013A0900);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1000D2AD8(v16, v19 + v17, &unk_1016B15A0, &qword_1013A0900);
  *(v19 + v18) = a2;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  aBlock[4] = sub_100B27360;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101648310;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v31 + 8))(v8, v23);
  (*(v28 + 8))(v11, v30);
}

id sub_100AD7D6C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v72 = a3;
  v73 = a4;
  v70 = a2;
  v69 = type metadata accessor for BeaconNamingRecord();
  v5 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v63 - v12;
  v14 = type metadata accessor for OwnedBeaconRecord();
  v66 = *(v14 - 8);
  v15 = *(v66 + 64);
  v16 = __chkstk_darwin(v14);
  v67 = v17;
  v68 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v63 - v18;
  v20 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v24 = (&v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = (&v63 - v25);
  sub_1000D2A70(a1, &v63 - v25, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v74 = v27;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)();

    *v24 = v27;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v72(v24);

    return sub_10000B3A8(v24, &unk_1016B15A0, &qword_1013A0900);
  }

  else
  {
    v64 = v7;
    sub_10002911C(v26, v19, type metadata accessor for OwnedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    v65 = xmmword_101385D80;
    *(v33 + 16) = xmmword_101385D80;
    v34 = *(v14 + 20);
    v35 = UUID.uuidString.getter();
    v37 = v36;
    *(v33 + 56) = &type metadata for String;
    v38 = sub_100008C00();
    *(v33 + 64) = v38;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v39 = swift_allocObject();
    *(v39 + 16) = v65;
    v40 = UUID.uuidString.getter();
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v38;
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    os_log(_:dso:log:_:_:)();

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for UUID();
    v43 = *(v42 - 8);
    v44 = *(v43 + 16);
    *&v65 = v34;
    v44(v13, &v19[v34], v42);
    (*(v43 + 56))(v13, 0, 1, v42);
    sub_1000034A4();
    v45 = v71;
    sub_1000D2A70(v13, v71, &qword_1016980D0, &unk_10138F3B0);
    sub_100EEAE98(v45);

    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v46 = result;
      v47 = MobileGestalt_copy_userAssignedDeviceName_obj();

      if (v47)
      {
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0xE000000000000000;
      }

      v52 = v64;
      v51 = v65;
      v53 = v69;
      v54 = &v64[*(v69 + 20)];
      UUID.init()();
      v44(&v52[v53[6]], &v19[v51], v42);
      v55 = SPBeaconRoleIdUndefined;
      *v52 = xmmword_10138C660;
      *&v52[v53[7]] = v55;
      v56 = &v52[v53[8]];
      *v56 = v48;
      v56[1] = v50;
      v57 = &v52[v53[9]];
      *v57 = 0;
      *(v57 + 1) = 0;
      v58 = v68;
      sub_100022A54(v19, v68, type metadata accessor for OwnedBeaconRecord);
      v59 = (*(v66 + 80) + 40) & ~*(v66 + 80);
      v60 = swift_allocObject();
      v61 = v72;
      v62 = v73;
      v60[2] = v70;
      v60[3] = v61;
      v60[4] = v62;
      sub_10002911C(v58, v60 + v59, type metadata accessor for OwnedBeaconRecord);

      sub_1006DD754(v52, 0, sub_100B27408, v60);

      sub_100022C40(v52, type metadata accessor for BeaconNamingRecord);
      return sub_100022C40(v19, type metadata accessor for OwnedBeaconRecord);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100AD8568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v32);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedBeaconRecord();
  v28 = *(v13 - 8);
  v14 = *(v28 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(3);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v19, v15);
  sub_100022A54(v29, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v22 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = v30;
  *(v23 + 24) = v24;
  sub_10002911C(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for OwnedBeaconRecord);
  aBlock[4] = sub_100B27480;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101648388;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v26 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v35 + 8))(v8, v26);
  (*(v33 + 8))(v12, v34);
}

uint64_t sub_100AD8A2C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = sub_1000BC4D4(a4, a5);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_100022A54(a3, &v16 - v13, a6);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return sub_10000B3A8(v14, a4, a5);
}

uint64_t sub_100AD8B08(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v90 = a2;
  v91 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v5;
  v83 = v4;
  v84 = v5;
  v7 = *(v5 + 64);
  __chkstk_darwin(v4);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v9;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v52 - v12;
  v89 = &v52 - v12;
  v14 = type metadata accessor for StableIdentifier();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v22;
  v23 = a1[1];
  v60 = *a1;
  v59 = v23;
  v24 = type metadata accessor for OwnedBeaconRecord();
  v86 = v24[5];
  v75 = v19;
  v25 = *(v19 + 16);
  v73 = v18;
  v25(v22, a1 + v86, v18);
  v85 = v24[6];
  sub_100022A54(a1 + v85, v17, type metadata accessor for StableIdentifier);
  (*(v19 + 56))(v13, 1, 1, v18);
  v81 = v24[8];
  (*(v6 + 16))(v9, a1 + v81, v4);
  v26 = v24[10];
  v80 = (a1 + v24[9]);
  v58 = *v80;
  v27 = v58;
  v92 = v80[1];
  v79 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v56 = *(a1 + v26);
  v29 = v56;
  v55 = v28;
  v30 = v24[13];
  v78 = (a1 + v24[12]);
  v31 = v78[1];
  v57 = *v78;
  v32 = v57;
  v53 = v31;
  v77 = (a1 + v30);
  v33 = *(a1 + v30 + 8);
  v54 = *(a1 + v30);
  v34 = v24[15];
  v74 = (a1 + v24[14]);
  v35 = v74[1];
  v76 = *v74;
  v70 = v24[16];
  v69 = v24[17];
  v72 = *(a1 + v70);
  v71 = *(a1 + v69);
  v67 = v24[18];
  v65 = v24[19];
  v68 = *(a1 + v67);
  v61 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v62 = *(a1 + v34);
  v66 = *(a1 + v65);
  v63 = v24[20];
  v64 = *(a1 + v63);
  v37 = v60;
  v38 = v59;
  sub_100017D5C(v60, v59);
  sub_100017D5C(v27, v92);
  v39 = v55;
  sub_10002E98C(v29, v55);
  v40 = v53;
  sub_100017D5C(v32, v53);
  v41 = v54;
  sub_100017D5C(v54, v33);

  sub_100022C40(a1, type metadata accessor for OwnedBeaconRecord);
  *a1 = v37;
  a1[1] = v38;
  (*(v75 + 32))(a1 + v86, v87, v73);
  sub_10002911C(v88, a1 + v85, type metadata accessor for StableIdentifier);
  sub_1000D2AD8(v89, a1 + v24[7], &qword_1016980D0, &unk_10138F3B0);
  (*(v84 + 32))(a1 + v81, v82, v83);
  v42 = v79;
  v43 = v80;
  *v80 = v58;
  v44 = v91;
  v43[1] = v92;
  *v42 = v56;
  v42[1] = v39;
  v45 = (a1 + v24[11]);
  v46 = v90;
  *v45 = v90;
  v45[1] = v44;
  v47 = v77;
  v48 = v78;
  *v78 = v57;
  v48[1] = v40;
  *v47 = v41;
  v47[1] = v33;
  v49 = v74;
  *v74 = v76;
  v49[1] = v35;
  v50 = v61;
  *v61 = v62;
  v50[1] = v36;
  *(a1 + v70) = v72;
  *(a1 + v69) = v71;
  *(a1 + v67) = v68;
  *(a1 + v65) = v66;
  *(a1 + v63) = v64;
  return sub_100017D5C(v46, v44);
}

void sub_100AD9098(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  v13 = swift_projectBox();
  sub_1000D2A70(a1, v12, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10002911C(v12, v8, type metadata accessor for OwnedBeaconRecord);
    swift_beginAccess();
    sub_100B25C50(v8, v13, type metadata accessor for OwnedBeaconRecord);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_100AD92FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 210) = a7;
  *(v7 + 209) = a6;
  *(v7 + 208) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  *(v7 + 48) = swift_task_alloc();
  v9 = type metadata accessor for KeyGenerationBeaconInfo();
  *(v7 + 56) = v9;
  v10 = *(v9 - 8);
  *(v7 + 64) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v12 = type metadata accessor for BeaconIdentifier();
  *(v7 + 80) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  *(v7 + 96) = v15;
  *v15 = v7;
  v15[1] = sub_100AD9464;

  return daemon.getter();
}

uint64_t sub_100AD9464(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100AD9640;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100AD9640(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  v6 = *(v3 + 104);
  if (v1)
  {

    v7 = sub_100AD99A0;
  }

  else
  {

    v7 = sub_100AD9790;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100AD9790()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[4];
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = v3[3];
  v6 = v3[4];
  sub_1000035D0(v3, v5);
  v7 = v1 + *(v2 + 20);
  (*(*(*(v6 + 8) + 8) + 32))(v5);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_100AD988C;
  v9 = v0[15];
  v10 = v0[11];
  v11 = v0[6];

  return sub_10098F404(v11, v10);
}

uint64_t sub_100AD988C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100AD9E30;
  }

  else
  {
    v3 = sub_100AD9BA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AD99A0()
{
  if (qword_101694A18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B538);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconKeyService.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_10000768C(&qword_101697368, &type metadata accessor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000101351540;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = v0[2];
  *v7 = 0;
  v7[1] = 0;
  v8 = v0[11];
  v9 = v0[9];
  v10 = v0[6];
  *(v0[2] + 16) = 3;

  v11 = v0[1];

  return v11();
}

uint64_t sub_100AD9BA8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  if ((*(*(v0 + 64) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    goto LABEL_7;
  }

  v3 = *(v0 + 72);
  sub_10002911C(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = *(v3 + *(v1 + 28));
  sub_100022C40(v3, type metadata accessor for KeyGenerationBeaconInfo);
  if (v4 != 3)
  {
LABEL_7:
    if (*(v0 + 208))
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v19 = sub_100A848EC;
        v13 = swift_task_alloc();
        *(v0 + 176) = v13;
        *v13 = v0;
        v14 = sub_100ADA158;
LABEL_12:
        v13[1] = v14;
        v15 = *(v0 + 209);
        v17 = *(v0 + 32);
        v16 = *(v0 + 40);
        v18 = *(v0 + 24);

        return v19(v17, v16, v15);
      }
    }

    else
    {
    }

    v19 = sub_100A83E64;
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v14 = sub_100AD9FAC;
    goto LABEL_12;
  }

  v5 = *(v0 + 120);
  sub_100022C40(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v6 = *(v0 + 16);
  *v6 = 0;
  v6[1] = 0;
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  *(*(v0 + 16) + 16) = 3;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100AD9E30()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[11];

  sub_100022C40(v3, type metadata accessor for BeaconIdentifier);

  v4 = v0[2];
  *v4 = 0;
  v4[1] = 0;
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  *(v0[2] + 16) = 3;

  v8 = v0[1];

  return v8();
}

uint64_t sub_100AD9EF0()
{
  v1 = v0[7].i64[1];
  v2 = v0[5].i64[1];

  sub_100022C40(v2, type metadata accessor for BeaconIdentifier);
  v3 = v0[13].i8[3];
  *v0[1].i64[0] = vextq_s8(v0[9], v0[9], 8uLL);
  v4 = v0[5].i64[1];
  v5 = v0[4].i64[1];
  v6 = v0[3].i64[0];
  *(v0[1].i64[0] + 16) = v3;

  v7 = v0->i64[1];

  return v7();
}

uint64_t sub_100AD9FAC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100ADA304, 0, 0);
  }

  else
  {
    v9 = *(v6 + 208);
    v10 = swift_task_alloc();
    *(v6 + 192) = v10;
    *v10 = v8;
    v10[1] = sub_100ADA3C4;
    v11 = *(v6 + 210);
    v12 = *(v6 + 24);
    v13 = *(v6 + 32);

    return sub_100731BF4(v13, a1, a2, v9 & 1, v11, 0);
  }
}

uint64_t sub_100ADA158(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100ADA5C0, 0, 0);
  }

  else
  {
    v9 = *(v6 + 208);
    v10 = swift_task_alloc();
    *(v6 + 192) = v10;
    *v10 = v8;
    v10[1] = sub_100ADA3C4;
    v11 = *(v6 + 210);
    v12 = *(v6 + 24);
    v13 = *(v6 + 32);

    return sub_100731BF4(v13, a1, a2, v9 & 1, v11, 0);
  }
}

uint64_t sub_100ADA304()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[11];

  sub_100022C40(v3, type metadata accessor for BeaconIdentifier);

  v4 = v0[2];
  *v4 = 0;
  v4[1] = 0;
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  *(v0[2] + 16) = 3;

  v8 = v0[1];

  return v8();
}

uint64_t sub_100ADA3C4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 192);
  v10 = *v4;
  *(*v4 + 200) = v3;

  if (v3)
  {
    v11 = sub_100ADA500;
  }

  else
  {
    *(v8 + 211) = a3;
    *(v8 + 144) = a2;
    *(v8 + 152) = a1;
    v11 = sub_100AD9EF0;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100ADA500()
{
  v1 = v0[25];
  v2 = v0[15];
  v3 = v0[11];

  sub_100022C40(v3, type metadata accessor for BeaconIdentifier);

  v4 = v0[2];
  *v4 = 0;
  v4[1] = 0;
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  *(v0[2] + 16) = 3;

  v8 = v0[1];

  return v8();
}

uint64_t sub_100ADA5C0()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[11];

  sub_100022C40(v3, type metadata accessor for BeaconIdentifier);

  v4 = v0[2];
  *v4 = 0;
  v4[1] = 0;
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  *(v0[2] + 16) = 3;

  v8 = v0[1];

  return v8();
}

uint64_t *sub_100ADA680(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v454 = a2;
  v459 = a1;
  v441 = type metadata accessor for UUID();
  v440 = *(v441 - 8);
  v2 = *(v440 + 64);
  __chkstk_darwin(v441);
  v439 = &v433 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v437 = &v433 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v435 = &v433 - v9;
  v10 = __chkstk_darwin(v8);
  v436 = &v433 - v11;
  __chkstk_darwin(v10);
  v434 = &v433 - v12;
  v465 = _s18ConnectionKeyGroupVMa();
  v442 = *(v465 - 8);
  v13 = *(v442 + 64);
  v14 = __chkstk_darwin(v465);
  v452 = &v433 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v445 = &v433 - v17;
  v18 = __chkstk_darwin(v16);
  v438 = &v433 - v19;
  v20 = __chkstk_darwin(v18);
  v451 = &v433 - v21;
  __chkstk_darwin(v20);
  v450 = &v433 - v22;
  v469 = type metadata accessor for TimeBasedKey();
  v464 = *(v469 - 8);
  v23 = *(v464 + 64);
  v24 = __chkstk_darwin(v469);
  v458 = (&v433 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v24);
  v448 = &v433 - v27;
  v28 = __chkstk_darwin(v26);
  v456 = (&v433 - v29);
  v30 = __chkstk_darwin(v28);
  v461 = &v433 - v31;
  v32 = __chkstk_darwin(v30);
  v457 = (&v433 - v33);
  v34 = __chkstk_darwin(v32);
  v447 = &v433 - v35;
  v36 = __chkstk_darwin(v34);
  v455 = (&v433 - v37);
  __chkstk_darwin(v36);
  v460 = &v433 - v38;
  v39 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v466 = *(v39 - 8);
  v467 = v39;
  v40 = *(v466 + 64);
  v41 = __chkstk_darwin(v39);
  v43 = &v433 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v433 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v433 - v48;
  v50 = __chkstk_darwin(v47);
  v52 = &v433 - v51;
  v53 = __chkstk_darwin(v50);
  v446 = &v433 - v54;
  __chkstk_darwin(v53);
  v462 = &v433 - v55;
  v56 = type metadata accessor for Date();
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56 - 8);
  v59 = &v433 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = type metadata accessor for DateInterval();
  v449 = *(v463 - 8);
  v60 = *(v449 + 64);
  v61 = __chkstk_darwin(v463);
  v62 = __chkstk_darwin(v61);
  v444 = &v433 - v63;
  __chkstk_darwin(v62);
  v443 = &v433 - v64;
  v65 = type metadata accessor for TimeBasedKeysCriteria();
  v66 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v68 = &v433 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022A54(v454, v68, type metadata accessor for TimeBasedKeysCriteria);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v460 = v49;
    v450 = v46;
    v433 = &v433 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (EnumCaseMultiPayload)
    {
      v135 = *v68;
      __chkstk_darwin(EnumCaseMultiPayload);
      i = v453;
      v432 = v459;
      v136 = v468;
      v137 = sub_1005C6F0C(sub_100B24B1C, (&v433 - 4), v135);
      v468 = v136;

      return v137;
    }

    v75 = v449;
    v462 = *(v449 + 32);
    v76 = v433;
    v77 = v68;
    v78 = v463;
    (v462)(v433, v77);
    v79 = *(v453 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    v80 = v468;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v468 = v80;
    v81 = v471;
    sub_10001F280(v459, &v471);
    v82 = v444;
    v83 = v76;
    v84 = v78;
    v454 = *(v75 + 16);
    v454(v444, v83, v78);
    v455 = (v75 + 16);
    v85 = (*(v75 + 80) + 64) & ~*(v75 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = v81;
    sub_10000A748(&v471, v86 + 24);
    (v462)(v86 + v85, v82, v84);
    v87 = v86 + v85 + v60;
    *v87 = 0;
    *(v87 + 2) = 0;

    unsafeFromAsyncTask<A>(_:)();

    v89 = *(&v471 + 1);
    v88 = v471;
    v457 = v471;
    if (v472 > 1u)
    {
      if (v472 != 2)
      {
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v249 = type metadata accessor for Logger();
        sub_1000076D4(v249, qword_10177BA08);
        sub_10001F280(v459, &v471);
        v250 = Logger.logObject.getter();
        v251 = static os_log_type_t.default.getter();
        v252 = os_log_type_enabled(v250, v251);
        v253 = v433;
        if (v252)
        {
          v254 = swift_slowAlloc();
          v255 = swift_slowAlloc();
          v475 = v255;
          *v254 = 141558275;
          *(v254 + 4) = 1752392040;
          *(v254 + 12) = 2081;
          v257 = v473;
          v256 = v474;
          sub_1000035D0(&v471, v473);
          v258 = v439;
          (*(*(*(v256 + 8) + 8) + 32))(v257);
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v259 = v441;
          v260 = dispatch thunk of CustomStringConvertible.description.getter();
          v262 = v261;
          (*(v440 + 8))(v258, v259);
          sub_100007BAC(&v471);
          v263 = sub_1000136BC(v260, v262, &v475);

          *(v254 + 14) = v263;
          sub_100007BAC(v255);
        }

        else
        {

          sub_100007BAC(&v471);
        }

        (*(v449 + 8))(v253, v463);
        return _swiftEmptyArrayStorage;
      }

      v146 = *(v471 + 16);
      if (v146)
      {
        v447 = *(&v471 + 1);
        *&v471 = _swiftEmptyArrayStorage;
        sub_101124AA8(0, v146, 0);
        v137 = v471;
        v147 = v88 + ((*(v442 + 80) + 32) & ~*(v442 + 80));
        v462 = *(v442 + 72);
        v148 = (v464 + 56);
        v149 = (v442 + 56);
        v150 = v438;
        do
        {
          sub_100022A54(v147, v150, _s18ConnectionKeyGroupVMa);
          v151 = *(v467 + 48);
          (*v148)(v43, 1, 1, v469);
          sub_10002911C(v150, &v43[v151], _s18ConnectionKeyGroupVMa);
          (*v149)(&v43[v151], 0, 1, v465);
          *&v471 = v137;
          v153 = v137[2];
          v152 = v137[3];
          if (v153 >= v152 >> 1)
          {
            sub_101124AA8(v152 > 1, v153 + 1, 1);
            v150 = v438;
            v137 = v471;
          }

          v137[2] = v153 + 1;
          sub_1000D2AD8(v43, v137 + ((*(v466 + 80) + 32) & ~*(v466 + 80)) + *(v466 + 72) * v153, &qword_1016A5A80, &qword_1013B35A8);
          v147 += v462;
          --v146;
        }

        while (v146);
        v267 = v457;
        v268 = v447;
        v269 = 2;
LABEL_195:
        sub_100359088(v267, v268, v269);
        (*(v449 + 8))(v433, v463);
        return v137;
      }

      v350 = *(&v471 + 1);
      v349 = v471;
      v351 = 2;
    }

    else
    {
      if (!v472)
      {
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_1000076D4(v90, qword_10177BA08);
        sub_10001F280(v459, &v471);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();
        v93 = os_log_type_enabled(v91, v92);
        v94 = v433;
        v95 = v448;
        if (v93)
        {
          v96 = swift_slowAlloc();
          v462 = swift_slowAlloc();
          v475 = v462;
          *v96 = 141558275;
          *(v96 + 4) = 1752392040;
          *(v96 + 12) = 2081;
          v98 = v473;
          v97 = v474;
          sub_1000035D0(&v471, v473);
          v99 = v439;
          (*(*(*(v97 + 8) + 8) + 32))(v98);
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v100 = v441;
          v101 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v102;
          (*(v440 + 8))(v99, v100);
          sub_100007BAC(&v471);
          v104 = sub_1000136BC(v101, v103, &v475);
          v88 = v457;

          *(v96 + 14) = v104;
          v94 = v433;
          sub_100007BAC(v462);
        }

        else
        {

          sub_100007BAC(&v471);
        }

        v309 = v458;
        v59 = v450;
        v310 = *(v88 + 16);
        if (v310)
        {
          v447 = v89;
          v475 = _swiftEmptyArrayStorage;
          sub_101124AA8(0, v310, 0);
          v68 = 0;
          v137 = v475;
          v460 = (v88 + ((*(v464 + 80) + 32) & ~*(v464 + 80)));
          v459 = v464 + 56;
          v453 = (v442 + 56);
          v456 = v310;
          while (1)
          {
            if (v68 >= *(v88 + 16))
            {
              goto LABEL_212;
            }

            v311 = v464;
            sub_100022A54(&v460[*(v464 + 72) * v68], v95, type metadata accessor for TimeBasedKey);
            v462 = *(v467 + 48);
            sub_100022A54(v95, v59, type metadata accessor for TimeBasedKey);
            v312 = *(v311 + 56);
            v313 = v469;
            v312(v59, 0, 1, v469);
            sub_100022A54(v95, v309, type metadata accessor for TimeBasedKey);
            v314 = (v309 + *(v313 + 24));
            v315 = v314[1];
            if (v315 >> 60 == 15)
            {
              sub_100022C40(v95, type metadata accessor for TimeBasedKey);
              sub_100022C40(v309, type metadata accessor for TimeBasedKey);
              v316 = 1;
              v317 = v465;
              v318 = v462;
            }

            else
            {
              v179 = *v314;
              v155 = String.utf8Data.getter();
              v166 = v319;
              v320 = type metadata accessor for __DataStorage();
              v321 = *(v320 + 48);
              v322 = *(v320 + 52);
              swift_allocObject();
              v323 = __DataStorage.init(length:)();
              *&v471 = 0x2000000000;
              *(&v471 + 1) = v323 | 0x4000000000000000;
              sub_100017D5C(v155, v166);
              sub_10002E98C(v179, v315);
              v324 = v468;
              v325 = sub_100A7F110(v155, v166, v155, v166, v179, v315, &v471, 32);
              v59 = v324;
              if (v324)
              {
                sub_100006654(v179, v315);
                sub_100016590(v155, v166);
LABEL_344:
                v410 = *(&v471 + 1);
                v409 = v471;
LABEL_345:
                sub_100016590(v409, v410);
                v407 = v155;
                v408 = v166;
                goto LABEL_346;
              }

              v326 = v325;
              sub_100006654(v179, v315);
              sub_100016590(v155, v166);
              if (v326)
              {
                static os_log_type_t.error.getter();
                if (qword_101694BE0 != -1)
                {
                  swift_once();
                }

                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v392 = swift_allocObject();
                *(v392 + 16) = xmmword_101385D80;
                *(v392 + 56) = &type metadata for Int32;
                *(v392 + 64) = &protocol witness table for Int32;
                *(v392 + 32) = v326;
                os_log(_:dso:log:_:_:)();

                v393 = v437;
                CryptoError.init(rawValue:)();
                v394 = type metadata accessor for CryptoError();
                sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError);
                v59 = swift_allocError();
                v396 = v395;
                v397 = *(v394 - 8);
                v398 = *(v397 + 48);
                if (v398(v393, 1, v394) == 1)
                {
                  (*(v397 + 104))(v396, enum case for CryptoError.unspecifiedError(_:), v394);
                  if (v398(v437, 1, v394) != 1)
                  {
                    sub_10000B3A8(v437, &qword_10169C9A0, &unk_1013D5A40);
                  }
                }

                else
                {
                  (*(v397 + 32))(v396, v437, v394);
                }

                swift_willThrow();
                goto LABEL_344;
              }

              v171 = *(&v471 + 1);
              v182 = v471;
              sub_100017D5C(v471, *(&v471 + 1));
              sub_100016590(v182, v171);
              v327 = v171 >> 62;
              if ((v171 >> 62) > 1)
              {
                if (v327 != 2)
                {
                  v426 = 0;
                  goto LABEL_358;
                }

                v330 = *(v182 + 16);
                v329 = *(v182 + 24);
                v187 = __OFSUB__(v329, v330);
                v328 = v329 - v330;
                if (v187)
                {
                  goto LABEL_220;
                }
              }

              else if (v327)
              {
                LODWORD(v328) = HIDWORD(v182) - v182;
                if (__OFSUB__(HIDWORD(v182), v182))
                {
                  goto LABEL_224;
                }

                v328 = v328;
              }

              else
              {
                v328 = BYTE6(v171);
              }

              if (v328 != 32)
              {
                goto LABEL_251;
              }

              sub_100016590(v155, v166);
              v331 = *v458;
              v332 = v452;
              *(v452 + 7) = &type metadata for PrimaryIndex;
              *(v332 + 8) = sub_10002A2B8();
              *(v332 + 4) = v331;
              v333 = sub_100A7A194(v314[2], v314[3]);
              v334 = sub_100A7829C(v333, 0);
              v468 = 0;
              v155 = v334;
              v166 = v335;
              CCECCryptorRelease();
              v336 = v166 >> 62;
              v59 = v452;
              v461 = v137;
              if ((v166 >> 62) > 1)
              {
                if (v336 != 2)
                {
                  v430 = 0;
                  goto LABEL_367;
                }

                v339 = *(v155 + 16);
                v338 = *(v155 + 24);
                v187 = __OFSUB__(v338, v339);
                v337 = v338 - v339;
                if (v187)
                {
                  goto LABEL_225;
                }
              }

              else if (v336)
              {
                LODWORD(v337) = HIDWORD(v155) - v155;
                if (__OFSUB__(HIDWORD(v155), v155))
                {
                  goto LABEL_226;
                }

                v337 = v337;
              }

              else
              {
                v337 = BYTE6(v166);
              }

              v451 = v68;
              if (v337 != 28)
              {
                goto LABEL_267;
              }

              v340 = v182;
              sub_10002EA98(6, v155, v166, &v471);
              v95 = v448;
              sub_100022C40(v448, type metadata accessor for TimeBasedKey);
              v342 = *(&v471 + 1);
              v341 = v471;
              v317 = v465;
              v309 = v458;
              v454((v59 + *(v465 + 28)), v458 + *(v469 + 20), v463);
              *v59 = __PAIR128__(v342, v341);
              *(v59 + 16) = v340;
              *(v59 + 24) = v171;
              sub_100022C40(v309, type metadata accessor for TimeBasedKey);
              v318 = v462;
              v343 = v59;
              v59 = v450;
              sub_10002911C(v343, &v450[v462], _s18ConnectionKeyGroupVMa);
              v316 = 0;
              v88 = v457;
              v137 = v461;
              v68 = v451;
            }

            (*v453)(v59 + v318, v316, 1, v317);
            v475 = v137;
            v345 = v137[2];
            v344 = v137[3];
            if (v345 >= v344 >> 1)
            {
              sub_101124AA8(v344 > 1, v345 + 1, 1);
              v137 = v475;
            }

            ++v68;
            v137[2] = v345 + 1;
            sub_1000D2AD8(v59, v137 + ((*(v466 + 80) + 32) & ~*(v466 + 80)) + *(v466 + 72) * v345, &qword_1016A5A80, &qword_1013B35A8);
            if (v456 == v68)
            {
              v267 = v88;
              v268 = v447;
              v269 = 0;
              goto LABEL_195;
            }
          }
        }

        sub_100359088(v88, v89, 0);
        (*(v449 + 8))(v94, v463);
        return _swiftEmptyArrayStorage;
      }

      v215 = *(v471 + 16);
      if (v215)
      {
        v447 = *(&v471 + 1);
        v475 = _swiftEmptyArrayStorage;
        sub_101124AA8(0, v215, 0);
        v216 = 0;
        v137 = v475;
        v459 = v88 + ((*(v464 + 80) + 32) & ~*(v464 + 80));
        v458 = (v464 + 56);
        v452 = (v442 + 56);
        v59 = v456;
        v68 = v460;
        v453 = v215;
        while (1)
        {
          if (v216 >= *(v88 + 16))
          {
            goto LABEL_211;
          }

          v217 = v464;
          v218 = v461;
          sub_100022A54(v459 + *(v464 + 72) * v216, v461, type metadata accessor for TimeBasedKey);
          v462 = *(v467 + 48);
          sub_100022A54(v218, v68, type metadata accessor for TimeBasedKey);
          v219 = *(v217 + 56);
          v220 = v469;
          v219(v68, 0, 1, v469);
          sub_100022A54(v218, v59, type metadata accessor for TimeBasedKey);
          v155 = v59 + *(v220 + 24);
          v221 = *(v155 + 8);
          if (v221 >> 60 == 15)
          {
            sub_100022C40(v218, type metadata accessor for TimeBasedKey);
            sub_100022C40(v59, type metadata accessor for TimeBasedKey);
            v222 = 1;
            v155 = v465;
            v223 = v460;
            v224 = v462;
          }

          else
          {
            v166 = *v155;
            v179 = String.utf8Data.getter();
            v59 = v225;
            v226 = type metadata accessor for __DataStorage();
            v227 = *(v226 + 48);
            v228 = *(v226 + 52);
            swift_allocObject();
            v229 = __DataStorage.init(length:)();
            *&v471 = 0x2000000000;
            *(&v471 + 1) = v229 | 0x4000000000000000;
            sub_100017D5C(v179, v59);
            sub_10002E98C(v166, v221);
            v230 = v468;
            v231 = sub_100A7F110(v179, v59, v179, v59, v166, v221, &v471, 32);
            v171 = v230;
            if (v230)
            {
              sub_100006654(v166, v221);
              sub_100016590(v179, v59);
LABEL_336:
              v403 = *(&v471 + 1);
              v402 = v471;
LABEL_337:
              sub_100016590(v402, v403);
              sub_100016590(v179, v59);
              *&v471 = 0;
              *(&v471 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(35);
              v404._object = 0x8000000101354990;
              v404._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v404);
              v470 = v171;
              goto LABEL_347;
            }

            v232 = v231;
            sub_100006654(v166, v221);
            sub_100016590(v179, v59);
            if (v232)
            {
              static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v378 = swift_allocObject();
              *(v378 + 16) = xmmword_101385D80;
              *(v378 + 56) = &type metadata for Int32;
              *(v378 + 64) = &protocol witness table for Int32;
              *(v378 + 32) = v232;
              os_log(_:dso:log:_:_:)();

              v379 = v435;
              CryptoError.init(rawValue:)();
              v380 = type metadata accessor for CryptoError();
              sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError);
              v171 = swift_allocError();
              v382 = v381;
              v383 = *(v380 - 8);
              v384 = *(v383 + 48);
              if (v384(v379, 1, v380) == 1)
              {
                (*(v383 + 104))(v382, enum case for CryptoError.unspecifiedError(_:), v380);
                if (v384(v435, 1, v380) != 1)
                {
                  sub_10000B3A8(v435, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v383 + 32))(v382, v435, v380);
              }

              swift_willThrow();
              goto LABEL_336;
            }

            v68 = *(&v471 + 1);
            v182 = v471;
            sub_100017D5C(v471, *(&v471 + 1));
            sub_100016590(v182, v68);
            v233 = v68 >> 62;
            v451 = v68;
            if ((v68 >> 62) > 1)
            {
              if (v233 != 2)
              {
                v425 = 0;
                goto LABEL_354;
              }

              v236 = *(v182 + 16);
              v235 = *(v182 + 24);
              v187 = __OFSUB__(v235, v236);
              v234 = v235 - v236;
              if (v187)
              {
                goto LABEL_219;
              }
            }

            else if (v233)
            {
              LODWORD(v234) = HIDWORD(v182) - v182;
              if (__OFSUB__(HIDWORD(v182), v182))
              {
                goto LABEL_223;
              }

              v234 = v234;
            }

            else
            {
              v234 = BYTE6(v68);
            }

            if (v234 != 32)
            {
              goto LABEL_247;
            }

            sub_100016590(v179, v59);
            v237 = *v456;
            v68 = v445;
            *(v445 + 7) = &type metadata for PrimaryIndex;
            *(v68 + 64) = sub_10002A2B8();
            *(v68 + 32) = v237;
            v166 = sub_100A7A194(*(v155 + 16), *(v155 + 24));
            v238 = sub_100A7829C(v166, 0);
            v468 = 0;
            v155 = v465;
            v179 = v238;
            v171 = v239;
            CCECCryptorRelease();
            v240 = v171 >> 62;
            if ((v171 >> 62) > 1)
            {
              if (v240 != 2)
              {
                v429 = 0;
                goto LABEL_362;
              }

              v243 = *(v179 + 16);
              v242 = *(v179 + 24);
              v187 = __OFSUB__(v242, v243);
              v241 = v242 - v243;
              if (v187)
              {
                goto LABEL_229;
              }
            }

            else if (v240)
            {
              LODWORD(v241) = HIDWORD(v179) - v179;
              if (__OFSUB__(HIDWORD(v179), v179))
              {
                goto LABEL_232;
              }

              v241 = v241;
            }

            else
            {
              v241 = BYTE6(v171);
            }

            if (v241 != 28)
            {
              goto LABEL_263;
            }

            sub_10002EA98(6, v179, v171, &v471);
            sub_100022C40(v461, type metadata accessor for TimeBasedKey);
            v245 = *(&v471 + 1);
            v244 = v471;
            v59 = v456;
            v454((v68 + *(v155 + 28)), v456 + *(v469 + 20), v463);
            *v68 = __PAIR128__(v245, v244);
            v246 = v451;
            *(v68 + 16) = v182;
            *(v68 + 24) = v246;
            sub_100022C40(v59, type metadata accessor for TimeBasedKey);
            v223 = v460;
            v224 = v462;
            sub_10002911C(v68, &v460[v462], _s18ConnectionKeyGroupVMa);
            v222 = 0;
            v88 = v457;
          }

          (*v452)(v223 + v224, v222, 1, v155);
          v475 = v137;
          v248 = v137[2];
          v247 = v137[3];
          v68 = v223;
          if (v248 >= v247 >> 1)
          {
            sub_101124AA8(v247 > 1, v248 + 1, 1);
            v137 = v475;
          }

          ++v216;
          v137[2] = v248 + 1;
          sub_1000D2AD8(v223, v137 + ((*(v466 + 80) + 32) & ~*(v466 + 80)) + *(v466 + 72) * v248, &qword_1016A5A80, &qword_1013B35A8);
          if (v453 == v216)
          {
            v267 = v88;
            v268 = v447;
            v269 = 1;
            goto LABEL_195;
          }
        }
      }

      v350 = *(&v471 + 1);
      v349 = v471;
      v351 = 1;
    }

    sub_100359088(v349, v350, v351);
    (*(v449 + 8))(v433, v463);
    return _swiftEmptyArrayStorage;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v105 = *v68;
    if (!*v68)
    {
      goto LABEL_350;
    }

    v106 = v105 - 1;
    if (v105 - 1 <= 1)
    {
      v106 = 1;
    }

    if (is_mul_ok(v106, 0x60uLL))
    {
      v107 = 96 * v106;
      if ((v107 - 96) <= 1)
      {
        v70 = 1;
      }

      else
      {
        v70 = v107 - 96;
      }

      if (v107 - 1 >= v70)
      {
        if (is_mul_ok(v105, 0x60uLL))
        {
          v108 = 96 * v105;
          v74 = v108 - 1;
          v109 = v108 - 96;
          if (v109 <= 1)
          {
            v109 = 1;
          }

          if (v74 >= v109)
          {
            v71 = *(v68 + 8);
            return sub_100ADFC20(v459, v71, v70, v74);
          }

          goto LABEL_216;
        }

LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v70 = *(v68 + 8);
    v71 = *(v68 + 16);
    if (*v68)
    {
      if (!v70)
      {
        LODWORD(v432) = 0;
        v412 = 4387;
        goto LABEL_370;
      }

      if (is_mul_ok(v70, 0x60uLL))
      {
        v72 = 96 * v70 - 96;
        if (v72 <= 1)
        {
          v72 = 1;
        }

        if (96 * v70 - 1 >= v72)
        {
          if (is_mul_ok(v70 + 1, 0x60uLL))
          {
            v73 = 96 * (v70 + 1);
            v74 = v73 - 1;
            if (v73 - 1 >= (v73 - 96))
            {
              v70 = v72;
              return sub_100ADFC20(v459, v71, v70, v74);
            }

            goto LABEL_237;
          }

LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }

LABEL_235:
        __break(1u);
        goto LABEL_236;
      }

LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

    v74 = v70 + 96;
    if (v70 < 0xFFFFFFFFFFFFFFA0)
    {
      return sub_100ADFC20(v459, v71, v70, v74);
    }

LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  static Date.trustedNow.getter(v59);
  v110 = v443;
  DateInterval.init(start:duration:)();
  v111 = *(v453 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  v112 = v468;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v468 = v112;
  v113 = v471;
  sub_10001F280(v459, &v471);
  v114 = v449;
  v115 = *(v449 + 16);
  v116 = v444;
  v117 = v463;
  v456 = (v449 + 16);
  v454 = v115;
  v115(v444, v110, v463);
  v118 = (*(v114 + 80) + 64) & ~*(v114 + 80);
  v119 = swift_allocObject();
  *(v119 + 16) = v113;
  sub_10000A748(&v471, v119 + 24);
  (*(v114 + 32))(v119 + v118, v116, v117);
  v120 = v119 + v118 + v60;
  *v120 = 0;
  *(v120 + 2) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v59 = *(&v471 + 1);
  v68 = v471;
  v458 = v471;
  if (v472 <= 1u)
  {
    if (!v472)
    {
      if (qword_101694BE8 == -1)
      {
LABEL_36:
        v121 = type metadata accessor for Logger();
        sub_1000076D4(v121, qword_10177BA08);
        sub_10001F280(v459, &v471);
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.default.getter();
        v124 = os_log_type_enabled(v122, v123);
        v125 = v447;
        if (v124)
        {
          v126 = swift_slowAlloc();
          v462 = swift_slowAlloc();
          v475 = v462;
          *v126 = 141558275;
          *(v126 + 4) = 1752392040;
          *(v126 + 12) = 2081;
          v128 = v473;
          v127 = v474;
          sub_1000035D0(&v471, v473);
          v129 = v439;
          (*(*(*(v127 + 8) + 8) + 32))(v128);
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v130 = v441;
          v131 = dispatch thunk of CustomStringConvertible.description.getter();
          v133 = v132;
          (*(v440 + 8))(v129, v130);
          sub_100007BAC(&v471);
          v134 = sub_1000136BC(v131, v133, &v475);

          *(v126 + 14) = v134;
          sub_100007BAC(v462);
          v68 = v458;
        }

        else
        {

          sub_100007BAC(&v471);
        }

        v270 = v446;
        v271 = *(v68 + 16);
        if (v271)
        {
          v448 = v59;
          v475 = _swiftEmptyArrayStorage;
          sub_101124AA8(0, v271, 0);
          v166 = 0;
          v137 = v475;
          v460 = (v68 + ((*(v464 + 80) + 32) & ~*(v464 + 80)));
          v459 = v464 + 56;
          v453 = (v442 + 56);
          v59 = v457;
          v455 = v271;
          while (1)
          {
            if (v166 >= *(v68 + 16))
            {
              goto LABEL_210;
            }

            v272 = v464;
            sub_100022A54(&v460[*(v464 + 72) * v166], v125, type metadata accessor for TimeBasedKey);
            v462 = *(v467 + 48);
            sub_100022A54(v125, v270, type metadata accessor for TimeBasedKey);
            v273 = *(v272 + 56);
            v274 = v469;
            v273(v270, 0, 1, v469);
            sub_100022A54(v125, v59, type metadata accessor for TimeBasedKey);
            v275 = (v59 + *(v274 + 24));
            v276 = v275[1];
            if (v276 >> 60 == 15)
            {
              sub_100022C40(v125, type metadata accessor for TimeBasedKey);
              sub_100022C40(v59, type metadata accessor for TimeBasedKey);
              v277 = 1;
              v278 = v465;
              v279 = v462;
            }

            else
            {
              v68 = *v275;
              v171 = String.utf8Data.getter();
              v155 = v280;
              v281 = type metadata accessor for __DataStorage();
              v282 = *(v281 + 48);
              v283 = *(v281 + 52);
              swift_allocObject();
              v284 = __DataStorage.init(length:)();
              *&v471 = 0x2000000000;
              *(&v471 + 1) = v284 | 0x4000000000000000;
              sub_100017D5C(v171, v155);
              sub_10002E98C(v68, v276);
              v285 = v468;
              v286 = sub_100A7F110(v171, v155, v171, v155, v68, v276, &v471, 32);
              v59 = v285;
              if (v285)
              {
                sub_100006654(v68, v276);
                sub_100016590(v171, v155);
                goto LABEL_340;
              }

              v287 = v286;
              sub_100006654(v68, v276);
              sub_100016590(v171, v155);
              if (v287)
              {
                static os_log_type_t.error.getter();
                if (qword_101694BE0 != -1)
                {
                  swift_once();
                }

                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v385 = swift_allocObject();
                *(v385 + 16) = xmmword_101385D80;
                *(v385 + 56) = &type metadata for Int32;
                *(v385 + 64) = &protocol witness table for Int32;
                *(v385 + 32) = v287;
                os_log(_:dso:log:_:_:)();

                v386 = v436;
                CryptoError.init(rawValue:)();
                v387 = type metadata accessor for CryptoError();
                sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError);
                v59 = swift_allocError();
                v389 = v388;
                v390 = *(v387 - 8);
                v391 = *(v390 + 48);
                if (v391(v386, 1, v387) == 1)
                {
                  (*(v390 + 104))(v389, enum case for CryptoError.unspecifiedError(_:), v387);
                  if (v391(v436, 1, v387) != 1)
                  {
                    sub_10000B3A8(v436, &qword_10169C9A0, &unk_1013D5A40);
                  }
                }

                else
                {
                  (*(v390 + 32))(v389, v436, v387);
                }

                swift_willThrow();
LABEL_340:
                v406 = *(&v471 + 1);
                v405 = v471;
LABEL_341:
                sub_100016590(v405, v406);
                v407 = v171;
                v408 = v155;
LABEL_346:
                sub_100016590(v407, v408);
                *&v471 = 0;
                *(&v471 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(35);
                v411._object = 0x8000000101354990;
                v411._countAndFlagsBits = 0xD000000000000021;
                String.append(_:)(v411);
                v470 = v59;
LABEL_347:
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                _print_unlocked<A, B>(_:_:)();
                LODWORD(v432) = 0;
                v369 = 458;
LABEL_348:
                for (i = v369; ; i = v412)
                {
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_350:
                  LODWORD(v432) = 0;
                  v412 = 4371;
LABEL_370:
                  ;
                }
              }

              v179 = *(&v471 + 1);
              v182 = v471;
              sub_100017D5C(v471, *(&v471 + 1));
              sub_100016590(v182, v179);
              v288 = v179 >> 62;
              if ((v179 >> 62) > 1)
              {
                if (v288 != 2)
                {
                  v424 = 0;
                  goto LABEL_356;
                }

                v291 = *(v182 + 16);
                v290 = *(v182 + 24);
                v187 = __OFSUB__(v290, v291);
                v289 = v290 - v291;
                if (v187)
                {
                  goto LABEL_218;
                }
              }

              else if (v288)
              {
                LODWORD(v289) = HIDWORD(v182) - v182;
                if (__OFSUB__(HIDWORD(v182), v182))
                {
                  goto LABEL_222;
                }

                v289 = v289;
              }

              else
              {
                v289 = BYTE6(v179);
              }

              if (v289 != 32)
              {
                goto LABEL_243;
              }

              sub_100016590(v171, v155);
              v292 = *v457;
              v293 = v451;
              *(v451 + 7) = &type metadata for PrimaryIndex;
              *(v293 + 8) = sub_10002A2B8();
              *(v293 + 4) = v292;
              v68 = sub_100A7A194(v275[2], v275[3]);
              v294 = sub_100A7829C(v68, 0);
              v468 = 0;
              v155 = v294;
              v171 = v295;
              CCECCryptorRelease();
              v296 = v171 >> 62;
              v461 = v137;
              if ((v171 >> 62) > 1)
              {
                if (v296 != 2)
                {
                  v428 = 0;
                  goto LABEL_364;
                }

                v299 = *(v155 + 16);
                v298 = *(v155 + 24);
                v187 = __OFSUB__(v298, v299);
                v297 = v298 - v299;
                if (v187)
                {
                  goto LABEL_228;
                }
              }

              else if (v296)
              {
                LODWORD(v297) = HIDWORD(v155) - v155;
                if (__OFSUB__(HIDWORD(v155), v155))
                {
                  goto LABEL_231;
                }

                v297 = v297;
              }

              else
              {
                v297 = BYTE6(v171);
              }

              v452 = v166;
              if (v297 != 28)
              {
                goto LABEL_259;
              }

              v300 = v182;
              sub_10002EA98(6, v155, v171, &v471);
              v301 = v447;
              sub_100022C40(v447, type metadata accessor for TimeBasedKey);
              v303 = *(&v471 + 1);
              v302 = v471;
              v278 = v465;
              v304 = v451;
              v305 = v457;
              v454(&v451[*(v465 + 28)], v457 + *(v469 + 20), v463);
              *v304 = __PAIR128__(v303, v302);
              *(v304 + 2) = v300;
              *(v304 + 3) = v179;
              sub_100022C40(v305, type metadata accessor for TimeBasedKey);
              v270 = v446;
              v279 = v462;
              v306 = v304;
              v59 = v305;
              v125 = v301;
              sub_10002911C(v306, &v446[v462], _s18ConnectionKeyGroupVMa);
              v277 = 0;
              v68 = v458;
              v137 = v461;
              v166 = v452;
            }

            (*v453)(v270 + v279, v277, 1, v278);
            v475 = v137;
            v308 = v137[2];
            v307 = v137[3];
            if (v308 >= v307 >> 1)
            {
              sub_101124AA8(v307 > 1, v308 + 1, 1);
              v137 = v475;
            }

            ++v166;
            v137[2] = v308 + 1;
            sub_1000D2AD8(v270, v137 + ((*(v466 + 80) + 32) & ~*(v466 + 80)) + *(v466 + 72) * v308, &qword_1016A5A80, &qword_1013B35A8);
            if (v455 == v166)
            {
              v264 = v68;
              v265 = v448;
              v266 = 0;
              goto LABEL_160;
            }
          }
        }

        v346 = v68;
        v347 = v59;
        v348 = 0;
        goto LABEL_201;
      }

LABEL_238:
      swift_once();
      goto LABEL_36;
    }

    v154 = *(v471 + 16);
    v155 = v465;
    if (v154)
    {
      v448 = *(&v471 + 1);
      v475 = _swiftEmptyArrayStorage;
      sub_101124AA8(0, v154, 0);
      v59 = 0;
      v137 = v475;
      v459 = v68 + ((*(v464 + 80) + 32) & ~*(v464 + 80));
      v457 = (v464 + 56);
      v452 = (v442 + 56);
      v156 = v455;
      v453 = v154;
      while (v59 < *(v68 + 16))
      {
        v157 = v155;
        v158 = v68;
        v159 = v464;
        v160 = v460;
        sub_100022A54(v459 + *(v464 + 72) * v59, v460, type metadata accessor for TimeBasedKey);
        v461 = *(v467 + 48);
        v161 = v462;
        sub_100022A54(v160, v462, type metadata accessor for TimeBasedKey);
        v162 = *(v159 + 56);
        v163 = v469;
        v162(v161, 0, 1, v469);
        sub_100022A54(v160, v156, type metadata accessor for TimeBasedKey);
        v164 = *(v163 + 24);
        v165 = v156;
        v166 = v156 + v164;
        v167 = *(v166 + 8);
        if (v167 >> 60 == 15)
        {
          sub_100022C40(v160, type metadata accessor for TimeBasedKey);
          sub_100022C40(v165, type metadata accessor for TimeBasedKey);
          v168 = 1;
          v156 = v165;
          v169 = v461;
          v170 = v462;
          v68 = v158;
          v155 = v157;
        }

        else
        {
          v68 = *v166;
          v171 = String.utf8Data.getter();
          v155 = v172;
          v173 = type metadata accessor for __DataStorage();
          v174 = *(v173 + 48);
          v175 = *(v173 + 52);
          swift_allocObject();
          v176 = __DataStorage.init(length:)();
          *&v471 = 0x2000000000;
          *(&v471 + 1) = v176 | 0x4000000000000000;
          sub_100017D5C(v171, v155);
          sub_10002E98C(v68, v167);
          v177 = v468;
          v178 = sub_100A7F110(v171, v155, v171, v155, v68, v167, &v471, 32);
          v179 = v177;
          if (v177)
          {
            v370 = v177;
            sub_100006654(v68, v167);
            sub_100016590(v171, v155);
LABEL_332:
            v400 = *(&v471 + 1);
            v399 = v471;
LABEL_333:
            sub_100016590(v399, v400);
            sub_100016590(v171, v155);
            *&v471 = 0;
            *(&v471 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(35);
            v401._object = 0x8000000101354990;
            v401._countAndFlagsBits = 0xD000000000000021;
            String.append(_:)(v401);
            v470 = v370;
            goto LABEL_347;
          }

          v180 = v178;
          sub_100006654(v68, v167);
          sub_100016590(v171, v155);
          if (v180)
          {
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v371 = swift_allocObject();
            *(v371 + 16) = xmmword_101385D80;
            *(v371 + 56) = &type metadata for Int32;
            *(v371 + 64) = &protocol witness table for Int32;
            *(v371 + 32) = v180;
            os_log(_:dso:log:_:_:)();

            v372 = v434;
            CryptoError.init(rawValue:)();
            v373 = type metadata accessor for CryptoError();
            sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError);
            v370 = swift_allocError();
            v375 = v374;
            v376 = *(v373 - 8);
            v377 = *(v376 + 48);
            if (v377(v372, 1, v373) == 1)
            {
              (*(v376 + 104))(v375, enum case for CryptoError.unspecifiedError(_:), v373);
              if (v377(v434, 1, v373) != 1)
              {
                sub_10000B3A8(v434, &qword_10169C9A0, &unk_1013D5A40);
              }
            }

            else
            {
              (*(v376 + 32))(v375, v434, v373);
            }

            swift_willThrow();
            goto LABEL_332;
          }

          v181 = *(&v471 + 1);
          v182 = v471;
          sub_100017D5C(v471, *(&v471 + 1));
          sub_100016590(v182, v181);
          v183 = v181 >> 62;
          v451 = v181;
          if ((v181 >> 62) > 1)
          {
            if (v183 != 2)
            {
              v179 = 0;
              goto LABEL_352;
            }

            v186 = *(v182 + 16);
            v185 = *(v182 + 24);
            v187 = __OFSUB__(v185, v186);
            v184 = v185 - v186;
            if (v187)
            {
              goto LABEL_217;
            }
          }

          else if (v183)
          {
            LODWORD(v184) = HIDWORD(v182) - v182;
            if (__OFSUB__(HIDWORD(v182), v182))
            {
              goto LABEL_221;
            }

            v184 = v184;
          }

          else
          {
            v184 = BYTE6(v181);
          }

          if (v184 != 32)
          {
            if (v183 != 1)
            {
              goto LABEL_271;
            }

            LODWORD(v288) = HIDWORD(v182) - v182;
            if (!__OFSUB__(HIDWORD(v182), v182))
            {
              v179 = v288;
              goto LABEL_352;
            }

            __break(1u);
LABEL_243:
            if (v288 != 1)
            {
              goto LABEL_275;
            }

            LODWORD(v233) = HIDWORD(v182) - v182;
            if (!__OFSUB__(HIDWORD(v182), v182))
            {
              v424 = v233;
              goto LABEL_356;
            }

            __break(1u);
LABEL_247:
            if (v233 != 1)
            {
              goto LABEL_279;
            }

            LODWORD(v327) = HIDWORD(v182) - v182;
            if (!__OFSUB__(HIDWORD(v182), v182))
            {
              v425 = v327;
              goto LABEL_354;
            }

            __break(1u);
LABEL_251:
            if (v327 != 1)
            {
              goto LABEL_283;
            }

            LODWORD(v192) = HIDWORD(v182) - v182;
            if (!__OFSUB__(HIDWORD(v182), v182))
            {
              v426 = v192;
              goto LABEL_358;
            }

            __break(1u);
LABEL_255:
            if (v192 != 1)
            {
              goto LABEL_287;
            }

            LODWORD(v296) = HIDWORD(v166) - v166;
            if (!__OFSUB__(HIDWORD(v166), v166))
            {
              v427 = v296;
              goto LABEL_360;
            }

            __break(1u);
LABEL_259:
            if (v296 != 1)
            {
              goto LABEL_291;
            }

            LODWORD(v240) = HIDWORD(v155) - v155;
            if (!__OFSUB__(HIDWORD(v155), v155))
            {
              v428 = v240;
              goto LABEL_364;
            }

            __break(1u);
LABEL_263:
            if (v240 != 1)
            {
              goto LABEL_295;
            }

            LODWORD(v336) = HIDWORD(v179) - v179;
            if (!__OFSUB__(HIDWORD(v179), v179))
            {
              v429 = v336;
              goto LABEL_362;
            }

            __break(1u);
LABEL_267:
            if (v336 != 1)
            {
              goto LABEL_299;
            }

            LODWORD(v183) = HIDWORD(v155) - v155;
            if (!__OFSUB__(HIDWORD(v155), v155))
            {
              v430 = v183;
              goto LABEL_367;
            }

            __break(1u);
LABEL_271:
            if (v183 != 2)
            {
              v179 = BYTE6(v451);
              goto LABEL_352;
            }

            v353 = *(v182 + 16);
            v288 = *(v182 + 24);
            v179 = v288 - v353;
            if (!__OFSUB__(v288, v353))
            {
LABEL_352:
              sub_100018350();
              v413 = swift_allocError();
              *v414 = 32;
              *(v414 + 8) = v179;
              *(v414 + 16) = 0;
              v370 = v413;
              swift_willThrow();
              v399 = v182;
              v400 = v451;
              goto LABEL_333;
            }

            __break(1u);
LABEL_275:
            if (v288 != 2)
            {
              v424 = BYTE6(v179);
LABEL_356:
              sub_100018350();
              v59 = swift_allocError();
              *v416 = 32;
              *(v416 + 8) = v424;
              *(v416 + 16) = 0;
              swift_willThrow();
              v405 = v182;
              v406 = v179;
              goto LABEL_341;
            }

            v354 = *(v182 + 16);
            v233 = *(v182 + 24);
            v424 = v233 - v354;
            if (!__OFSUB__(v233, v354))
            {
              goto LABEL_356;
            }

            __break(1u);
LABEL_279:
            if (v233 != 2)
            {
              v425 = BYTE6(v451);
              goto LABEL_354;
            }

            v355 = *(v182 + 16);
            v327 = *(v182 + 24);
            v425 = v327 - v355;
            if (!__OFSUB__(v327, v355))
            {
LABEL_354:
              sub_100018350();
              v171 = swift_allocError();
              *v415 = 32;
              *(v415 + 8) = v425;
              *(v415 + 16) = 0;
              swift_willThrow();
              v402 = v182;
              v403 = v451;
              goto LABEL_337;
            }

            __break(1u);
LABEL_283:
            if (v327 != 2)
            {
              v426 = BYTE6(v171);
              goto LABEL_358;
            }

            v356 = *(v182 + 16);
            v192 = *(v182 + 24);
            v426 = v192 - v356;
            if (!__OFSUB__(v192, v356))
            {
LABEL_358:
              sub_100018350();
              v59 = swift_allocError();
              *v417 = 32;
              *(v417 + 8) = v426;
              *(v417 + 16) = 0;
              swift_willThrow();
              v409 = v182;
              v410 = v171;
              goto LABEL_345;
            }

            __break(1u);
LABEL_287:
            if (v192 != 2)
            {
              v427 = BYTE6(v171);
              goto LABEL_360;
            }

            v357 = *(v166 + 16);
            v296 = *(v166 + 24);
            v427 = v296 - v357;
            if (!__OFSUB__(v296, v357))
            {
LABEL_360:
              sub_100018350();
              v366 = swift_allocError();
              *v418 = 28;
              *(v418 + 8) = v427;
              *(v418 + 16) = 0;
              swift_willThrow();
              v419 = v166;
              goto LABEL_365;
            }

            __break(1u);
LABEL_291:
            if (v296 != 2)
            {
              v428 = BYTE6(v171);
              goto LABEL_364;
            }

            v358 = *(v155 + 16);
            v240 = *(v155 + 24);
            v428 = v240 - v358;
            if (!__OFSUB__(v240, v358))
            {
LABEL_364:
              sub_100018350();
              v366 = swift_allocError();
              *v421 = 28;
              *(v421 + 8) = v428;
              *(v421 + 16) = 0;
              swift_willThrow();
              v419 = v155;
LABEL_365:
              v422 = v171;
LABEL_368:
              sub_100016590(v419, v422);
LABEL_305:
              *&v471 = 0;
              *(&v471 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(35);
              v368._object = 0x800000010134CB30;
              v368._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v368);
              v470 = v366;
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              _print_unlocked<A, B>(_:_:)();
              LODWORD(v432) = 0;
              v369 = 256;
              goto LABEL_348;
            }

            __break(1u);
LABEL_295:
            if (v240 == 2)
            {
              v359 = *(v179 + 16);
              v336 = *(v179 + 24);
              v429 = v336 - v359;
              if (!__OFSUB__(v336, v359))
              {
                goto LABEL_362;
              }

              __break(1u);
LABEL_299:
              if (v336 == 2)
              {
                v361 = *(v155 + 16);
                v360 = *(v155 + 24);
                v430 = v360 - v361;
                if (__OFSUB__(v360, v361))
                {
                  __break(1u);
                  v468 = 0;
                  static os_log_type_t.error.getter();
                  if (qword_101694BE0 != -1)
                  {
                    swift_once();
                  }

                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v362 = swift_allocObject();
                  *(v362 + 16) = xmmword_101385D80;
                  *&v471 = v468;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v363 = String.init<A>(describing:)();
                  v365 = v364;
                  *(v362 + 56) = &type metadata for String;
                  *(v362 + 64) = sub_100008C00();
                  *(v362 + 32) = v363;
                  *(v362 + 40) = v365;
                  os_log(_:dso:log:_:_:)();

                  sub_1001BAF88();
                  v366 = swift_allocError();
                  *v367 = 0;
                  swift_willThrow();

                  goto LABEL_305;
                }
              }

              else
              {
                v430 = BYTE6(v166);
              }

LABEL_367:
              sub_100018350();
              v366 = swift_allocError();
              *v423 = 28;
              *(v423 + 8) = v430;
              *(v423 + 16) = 0;
              swift_willThrow();
              v419 = v155;
              v422 = v166;
              goto LABEL_368;
            }

            v429 = BYTE6(v171);
LABEL_362:
            sub_100018350();
            v366 = swift_allocError();
            *v420 = 28;
            *(v420 + 8) = v429;
            *(v420 + 16) = 0;
            swift_willThrow();
            v419 = v179;
            goto LABEL_365;
          }

          sub_100016590(v171, v155);
          v188 = *v455;
          v189 = v450;
          *(v450 + 7) = &type metadata for PrimaryIndex;
          *(v189 + 8) = sub_10002A2B8();
          *(v189 + 4) = v188;
          v68 = sub_100A7A194(*(v166 + 16), *(v166 + 24));
          v190 = sub_100A7829C(v68, 0);
          v468 = 0;
          v155 = v465;
          v166 = v190;
          v171 = v191;
          CCECCryptorRelease();
          v192 = v171 >> 62;
          if ((v171 >> 62) > 1)
          {
            if (v192 != 2)
            {
              v427 = 0;
              goto LABEL_360;
            }

            v195 = *(v166 + 16);
            v194 = *(v166 + 24);
            v187 = __OFSUB__(v194, v195);
            v193 = v194 - v195;
            if (v187)
            {
              goto LABEL_227;
            }
          }

          else if (v192)
          {
            LODWORD(v193) = HIDWORD(v166) - v166;
            if (__OFSUB__(HIDWORD(v166), v166))
            {
              goto LABEL_230;
            }

            v193 = v193;
          }

          else
          {
            v193 = BYTE6(v171);
          }

          if (v193 != 28)
          {
            goto LABEL_255;
          }

          sub_10002EA98(6, v166, v171, &v471);
          sub_100022C40(v460, type metadata accessor for TimeBasedKey);
          v196 = *(&v471 + 1);
          v197 = v471;
          v198 = v450;
          v156 = v455;
          v454(&v450[*(v155 + 28)], v455 + *(v469 + 20), v463);
          *v198 = __PAIR128__(v196, v197);
          v199 = v451;
          *(v198 + 16) = v182;
          *(v198 + 24) = v199;
          sub_100022C40(v156, type metadata accessor for TimeBasedKey);
          v169 = v461;
          v170 = v462;
          sub_10002911C(v198, v462 + v461, _s18ConnectionKeyGroupVMa);
          v168 = 0;
          v68 = v458;
        }

        (*v452)(v170 + v169, v168, 1, v155);
        v475 = v137;
        v201 = v137[2];
        v200 = v137[3];
        if (v201 >= v200 >> 1)
        {
          sub_101124AA8(v200 > 1, v201 + 1, 1);
          v170 = v462;
          v137 = v475;
        }

        ++v59;
        v137[2] = v201 + 1;
        sub_1000D2AD8(v170, v137 + ((*(v466 + 80) + 32) & ~*(v466 + 80)) + *(v466 + 72) * v201, &qword_1016A5A80, &qword_1013B35A8);
        if (v453 == v59)
        {
          v264 = v68;
          v265 = v448;
          v266 = 1;
          goto LABEL_160;
        }
      }

      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v347 = *(&v471 + 1);
    v346 = v471;
    v348 = 1;
LABEL_201:
    sub_100359088(v346, v347, v348);
LABEL_202:
    (*(v449 + 8))(v443, v463);
    return _swiftEmptyArrayStorage;
  }

  if (v472 != 2)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v202 = type metadata accessor for Logger();
    sub_1000076D4(v202, qword_10177BA08);
    sub_10001F280(v459, &v471);
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v475 = v206;
      *v205 = 141558275;
      *(v205 + 4) = 1752392040;
      *(v205 + 12) = 2081;
      v208 = v473;
      v207 = v474;
      sub_1000035D0(&v471, v473);
      v209 = v439;
      (*(*(*(v207 + 8) + 8) + 32))(v208);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v210 = v441;
      v211 = dispatch thunk of CustomStringConvertible.description.getter();
      v213 = v212;
      (*(v440 + 8))(v209, v210);
      sub_100007BAC(&v471);
      v214 = sub_1000136BC(v211, v213, &v475);

      *(v205 + 14) = v214;
      sub_100007BAC(v206);
    }

    else
    {

      sub_100007BAC(&v471);
    }

    goto LABEL_202;
  }

  v138 = *(v471 + 16);
  if (!v138)
  {
    v347 = *(&v471 + 1);
    v346 = v471;
    v348 = 2;
    goto LABEL_201;
  }

  v448 = *(&v471 + 1);
  *&v471 = _swiftEmptyArrayStorage;
  sub_101124AA8(0, v138, 0);
  v137 = v471;
  v139 = v68 + ((*(v442 + 80) + 32) & ~*(v442 + 80));
  v462 = *(v442 + 72);
  v140 = (v464 + 56);
  v141 = (v442 + 56);
  v142 = v438;
  do
  {
    sub_100022A54(v139, v142, _s18ConnectionKeyGroupVMa);
    v143 = *(v467 + 48);
    (*v140)(v52, 1, 1, v469);
    sub_10002911C(v142, &v52[v143], _s18ConnectionKeyGroupVMa);
    (*v141)(&v52[v143], 0, 1, v465);
    *&v471 = v137;
    v145 = v137[2];
    v144 = v137[3];
    if (v145 >= v144 >> 1)
    {
      sub_101124AA8(v144 > 1, v145 + 1, 1);
      v142 = v438;
      v137 = v471;
    }

    v137[2] = v145 + 1;
    sub_1000D2AD8(v52, v137 + ((*(v466 + 80) + 32) & ~*(v466 + 80)) + *(v466 + 72) * v145, &qword_1016A5A80, &qword_1013B35A8);
    v139 += v462;
    --v138;
  }

  while (v138);
  v264 = v458;
  v265 = v448;
  v266 = 2;
LABEL_160:
  sub_100359088(v264, v265, v266);
  (*(v449 + 8))(v443, v463);
  return v137;
}

uint64_t sub_100ADE2C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v164 = a4;
  v8 = _s18ConnectionKeyGroupVMa();
  v162 = *(v8 - 8);
  v9 = *(v162 + 64);
  __chkstk_darwin(v8);
  v167 = (&v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v160 - v16;
  v178 = type metadata accessor for TimeBasedKey();
  v174 = *(v178 - 8);
  v18 = *(v174 + 64);
  v19 = __chkstk_darwin(v178);
  v21 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v165 = (&v160 - v23);
  v24 = __chkstk_darwin(v22);
  v168 = (&v160 - v25);
  __chkstk_darwin(v24);
  v169 = &v160 - v26;
  v27 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v28 = *(v27 - 8);
  v176 = v27;
  v177 = v28;
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v32 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v171 = &v160 - v34;
  __chkstk_darwin(v33);
  v170 = &v160 - v35;
  v36 = *a1;
  sub_10001F280(a3, &v181);
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  sub_10000A748(&v181, v37 + 24);
  *(v37 + 64) = v36;

  unsafeFromAsyncTask<A>(_:)();

  v38 = v181;
  v172 = v8;
  v173 = v181;
  if (v182 <= 1u)
  {
    v161 = v182;
    v163 = *(&v181 + 1);
    if (v182)
    {
      v39 = *(v181 + 16);
      v40 = _swiftEmptyArrayStorage;
      if (!v39)
      {
        goto LABEL_80;
      }

      v160 = v17;
      v185 = _swiftEmptyArrayStorage;
      v41 = &v185;
      sub_101124AA8(0, v39, 0);
      v21 = 0;
      v40 = v185;
      v171 = v38 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
      v167 = (v174 + 56);
      v165 = (v162 + 56);
      v43 = v168;
      v38 = v169;
      v166 = v39;
      while (1)
      {
        v44 = *(v173 + 16);
        if (v21 >= v44)
        {
          goto LABEL_86;
        }

        v86 = v174;
        sub_100022A54(v171 + *(v174 + 72) * v21, v38, type metadata accessor for TimeBasedKey);
        v87 = v170;
        v88 = v170 + *(v176 + 48);
        sub_100022A54(v38, v170, type metadata accessor for TimeBasedKey);
        v89 = *(v86 + 56);
        v90 = v178;
        v89(v87, 0, 1, v178);
        sub_100022A54(v38, v43, type metadata accessor for TimeBasedKey);
        v91 = v43;
        v43 += *(v90 + 24);
        v92 = *(v43 + 8);
        if (v92 >> 60 == 15)
        {
          v41 = type metadata accessor for TimeBasedKey;
          sub_100022C40(v38, type metadata accessor for TimeBasedKey);
          sub_100022C40(v91, type metadata accessor for TimeBasedKey);
          v93 = 1;
          v43 = v91;
        }

        else
        {
          v36 = *v43;
          v8 = String.utf8Data.getter();
          v38 = v94;
          v95 = type metadata accessor for __DataStorage();
          v96 = *(v95 + 48);
          v97 = *(v95 + 52);
          swift_allocObject();
          v98 = __DataStorage.init(length:)();
          *&v181 = 0x2000000000;
          *(&v181 + 1) = v98 | 0x4000000000000000;
          sub_100017D5C(v8, v38);
          sub_10002E98C(v36, v92);
          v4 = v175;
          v99 = sub_100A7F110(v8, v38, v8, v38, v36, v92, &v181, 32);
          v175 = v4;
          if (v4)
          {
            sub_100006654(v36, v92);
            sub_100016590(v8, v38);
            goto LABEL_148;
          }

          v100 = v99;
          sub_100006654(v36, v92);
          sub_100016590(v8, v38);
          if (v100)
          {
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v136 = swift_allocObject();
            *(v136 + 16) = xmmword_101385D80;
            *(v136 + 56) = &type metadata for Int32;
            *(v136 + 64) = &protocol witness table for Int32;
            *(v136 + 32) = v100;
            os_log(_:dso:log:_:_:)();

            v137 = v160;
            CryptoError.init(rawValue:)();
            v138 = type metadata accessor for CryptoError();
            sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError);
            v175 = swift_allocError();
            v140 = v139;
            v141 = *(v138 - 8);
            v36 = v141 + 48;
            v142 = *(v141 + 48);
            if (v142(v137, 1, v138) == 1)
            {
              (*(v141 + 104))(v140, enum case for CryptoError.unspecifiedError(_:), v138);
              if (v142(v160, 1, v138) != 1)
              {
                sub_10000B3A8(v160, &qword_10169C9A0, &unk_1013D5A40);
              }
            }

            else
            {
              (*(v141 + 32))(v140, v160, v138);
            }

            swift_willThrow();
LABEL_148:
            v145 = *(&v181 + 1);
            v144 = v181;
LABEL_149:
            sub_100016590(v144, v145);
            v143 = v8;
            goto LABEL_150;
          }

          v39 = *(&v181 + 1);
          v41 = v181;
          sub_100017D5C(v181, *(&v181 + 1));
          sub_100016590(v41, v39);
          v44 = v39 >> 62;
          if ((v39 >> 62) > 1)
          {
            if (v44 != 2)
            {
              v157 = 0;
              goto LABEL_156;
            }

            v103 = *(v41 + 16);
            v102 = *(v41 + 24);
            v63 = __OFSUB__(v102, v103);
            v101 = v102 - v103;
            if (v63)
            {
              goto LABEL_88;
            }
          }

          else if (v44)
          {
            LODWORD(v101) = HIDWORD(v41) - v41;
            if (__OFSUB__(HIDWORD(v41), v41))
            {
              goto LABEL_90;
            }

            v101 = v101;
          }

          else
          {
            v101 = BYTE6(v39);
          }

          if (v101 != 32)
          {
            goto LABEL_99;
          }

          sub_100016590(v8, v38);
          v104 = *v168;
          v183 = &type metadata for PrimaryIndex;
          v184 = sub_10002A2B8();
          *&v181 = v104;
          v4 = v175;
          v105 = sub_100A7A194(*(v43 + 16), *(v43 + 24));
          if (v4)
          {
            goto LABEL_127;
          }

          v36 = v105;
          v106 = sub_100A7829C(v105, 0);
          v175 = 0;
          v8 = v106;
          v43 = v107;
          CCECCryptorRelease();
          v44 = v43 >> 62;
          if ((v43 >> 62) > 1)
          {
            if (v44 != 2)
            {
              v158 = 0;
              goto LABEL_160;
            }

            v110 = *(v8 + 16);
            v109 = *(v8 + 24);
            v63 = __OFSUB__(v109, v110);
            v108 = v109 - v110;
            if (v63)
            {
              goto LABEL_93;
            }
          }

          else if (v44)
          {
            LODWORD(v108) = HIDWORD(v8) - v8;
            if (__OFSUB__(HIDWORD(v8), v8))
            {
              goto LABEL_94;
            }

            v108 = v108;
          }

          else
          {
            v108 = BYTE6(v43);
          }

          if (v108 != 28)
          {
            goto LABEL_103;
          }

          sub_10002EA98(6, v8, v43, &v180);
          sub_100022C40(v169, type metadata accessor for TimeBasedKey);
          v111 = *(v178 + 20);
          *v88 = v180;
          *(v88 + 16) = v41;
          *(v88 + 24) = v39;
          sub_10000A748(&v181, v88 + 32);
          v8 = v172;
          v41 = *(v172 + 28);
          v112 = type metadata accessor for DateInterval();
          v113 = v168 + v111;
          v43 = v168;
          (*(*(v112 - 8) + 16))(v88 + v41, v113, v112);
          sub_100022C40(v43, type metadata accessor for TimeBasedKey);
          v93 = 0;
        }

        (*v165)(v88, v93, 1, v8);
        v185 = v40;
        v36 = v40[2];
        v114 = v40[3];
        if (v36 >= v114 >> 1)
        {
          v41 = &v185;
          sub_101124AA8(v114 > 1, v36 + 1, 1);
          v40 = v185;
        }

        ++v21;
        v40[2] = v36 + 1;
        sub_1000D2AD8(v170, v40 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v36, &qword_1016A5A80, &qword_1013B35A8);
        v39 = v166;
        v38 = v169;
        if (v166 == v21)
        {
          v38 = v173;
LABEL_80:
          if (v40[2])
          {
LABEL_81:
            sub_1000D2A70(v40 + ((*(v177 + 80) + 32) & ~*(v177 + 80)), v164, &qword_1016A5A80, &qword_1013B35A8);
            v115 = 0;
            v116 = v161;
          }

          else
          {
            v116 = 1;
            v115 = 1;
          }

          goto LABEL_82;
        }
      }
    }

    v39 = *(v181 + 16);
    v40 = _swiftEmptyArrayStorage;
    if (!v39)
    {
LABEL_76:
      if (v40[2])
      {
        goto LABEL_81;
      }

      v116 = 0;
      v115 = 1;
      goto LABEL_82;
    }

    v160 = v15;
    v185 = _swiftEmptyArrayStorage;
    v41 = &v185;
    sub_101124AA8(0, v39, 0);
    v42 = 0;
    v40 = v185;
    v170 = v38 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
    v169 = v174 + 56;
    v167 = (v162 + 56);
    v43 = v165;
    v168 = v39;
    v166 = v21;
    while (1)
    {
      v44 = *(v38 + 16);
      if (v42 >= v44)
      {
        break;
      }

      v45 = v174;
      sub_100022A54(v170 + *(v174 + 72) * v42, v43, type metadata accessor for TimeBasedKey);
      v46 = v171;
      v39 = v171 + *(v176 + 48);
      sub_100022A54(v43, v171, type metadata accessor for TimeBasedKey);
      v47 = *(v45 + 56);
      v48 = v178;
      v47(v46, 0, 1, v178);
      sub_100022A54(v43, v21, type metadata accessor for TimeBasedKey);
      v49 = *(v48 + 24);
      v50 = v43;
      v43 = v21 + v49;
      v51 = *(v21 + v49 + 8);
      if (v51 >> 60 == 15)
      {
        v41 = type metadata accessor for TimeBasedKey;
        sub_100022C40(v50, type metadata accessor for TimeBasedKey);
        sub_100022C40(v21, type metadata accessor for TimeBasedKey);
        v52 = 1;
        v43 = v50;
      }

      else
      {
        v8 = *v43;
        v36 = String.utf8Data.getter();
        v21 = v53;
        v54 = type metadata accessor for __DataStorage();
        v55 = *(v54 + 48);
        v56 = *(v54 + 52);
        swift_allocObject();
        v57 = __DataStorage.init(length:)();
        *&v181 = 0x2000000000;
        *(&v181 + 1) = v57 | 0x4000000000000000;
        sub_100017D5C(v36, v21);
        sub_10002E98C(v8, v51);
        v4 = v175;
        v58 = sub_100A7F110(v36, v21, v36, v21, v8, v51, &v181, 32);
        v175 = v4;
        if (v4)
        {
          sub_100006654(v8, v51);
          v178 = v36;
          v38 = v21;
          sub_100016590(v36, v21);
          goto LABEL_145;
        }

        v59 = v58;
        sub_100006654(v8, v51);
        sub_100016590(v36, v21);
        if (v59)
        {
          v178 = v36;
          v38 = v21;
          static os_log_type_t.error.getter();
          if (qword_101694BE0 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v129 = swift_allocObject();
          *(v129 + 16) = xmmword_101385D80;
          *(v129 + 56) = &type metadata for Int32;
          *(v129 + 64) = &protocol witness table for Int32;
          *(v129 + 32) = v59;
          os_log(_:dso:log:_:_:)();

          v130 = v160;
          CryptoError.init(rawValue:)();
          v131 = type metadata accessor for CryptoError();
          sub_10000768C(&qword_10169C9B8, &type metadata accessor for CryptoError);
          v175 = swift_allocError();
          v133 = v132;
          v134 = *(v131 - 8);
          v135 = *(v134 + 48);
          if (v135(v130, 1, v131) == 1)
          {
            (*(v134 + 104))(v133, enum case for CryptoError.unspecifiedError(_:), v131);
            if (v135(v160, 1, v131) != 1)
            {
              sub_10000B3A8(v160, &qword_10169C9A0, &unk_1013D5A40);
            }
          }

          else
          {
            (*(v134 + 32))(v133, v160, v131);
          }

          swift_willThrow();
LABEL_145:
          sub_100016590(v181, *(&v181 + 1));
          v143 = v178;
LABEL_150:
          v146 = v38;
          goto LABEL_151;
        }

        v38 = *(&v181 + 1);
        v41 = v181;
        sub_100017D5C(v181, *(&v181 + 1));
        sub_100016590(v41, v38);
        v44 = v38 >> 62;
        if ((v38 >> 62) > 1)
        {
          if (v44 != 2)
          {
            goto LABEL_153;
          }

          v62 = *(v41 + 16);
          v61 = *(v41 + 24);
          v63 = __OFSUB__(v61, v62);
          v60 = v61 - v62;
          if (v63)
          {
            goto LABEL_87;
          }
        }

        else if (v44)
        {
          LODWORD(v60) = HIDWORD(v41) - v41;
          if (__OFSUB__(HIDWORD(v41), v41))
          {
            goto LABEL_89;
          }

          v60 = v60;
        }

        else
        {
          v60 = BYTE6(v38);
        }

        if (v60 != 32)
        {
          goto LABEL_95;
        }

        sub_100016590(v36, v21);
        v21 = v166;
        v64 = *v166;
        v183 = &type metadata for PrimaryIndex;
        v184 = sub_10002A2B8();
        *&v181 = v64;
        v4 = v175;
        v65 = sub_100A7A194(*(v43 + 16), *(v43 + 24));
        if (v4)
        {
          goto LABEL_127;
        }

        v8 = v65;
        v66 = sub_100A7829C(v65, 0);
        v175 = 0;
        v43 = v66;
        v36 = v67;
        CCECCryptorRelease();
        v44 = v36 >> 62;
        if ((v36 >> 62) > 1)
        {
          v68 = v172;
          if (v44 != 2)
          {
            v159 = 0;
            goto LABEL_158;
          }

          v71 = *(v43 + 16);
          v70 = *(v43 + 24);
          v63 = __OFSUB__(v70, v71);
          v69 = v70 - v71;
          if (v63)
          {
            goto LABEL_91;
          }

          v21 = v41;
        }

        else
        {
          v68 = v172;
          if (v44)
          {
            LODWORD(v69) = HIDWORD(v43) - v43;
            if (__OFSUB__(HIDWORD(v43), v43))
            {
              goto LABEL_92;
            }

            v21 = v41;
            v69 = v69;
          }

          else
          {
            v21 = v41;
            v69 = BYTE6(v36);
          }
        }

        if (v69 != 28)
        {
          goto LABEL_107;
        }

        v72 = v68;
        sub_10002EA98(6, v43, v36, &v180);
        v43 = v165;
        sub_100022C40(v165, type metadata accessor for TimeBasedKey);
        v73 = *(v178 + 20);
        *v39 = v180;
        *(v39 + 16) = v21;
        *(v39 + 24) = v38;
        sub_10000A748(&v181, v39 + 32);
        v74 = v72;
        v41 = *(v72 + 28);
        v75 = type metadata accessor for DateInterval();
        v21 = v166;
        v76 = v166 + v73;
        v8 = v74;
        (*(*(v75 - 8) + 16))(v39 + v41, v76, v75);
        sub_100022C40(v21, type metadata accessor for TimeBasedKey);
        v52 = 0;
      }

      (*v167)(v39, v52, 1, v8);
      v185 = v40;
      v36 = v40[2];
      v77 = v40[3];
      v38 = v173;
      if (v36 >= v77 >> 1)
      {
        v41 = &v185;
        sub_101124AA8(v77 > 1, v36 + 1, 1);
        v40 = v185;
      }

      ++v42;
      v40[2] = v36 + 1;
      sub_1000D2AD8(v171, v40 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v36, &qword_1016A5A80, &qword_1013B35A8);
      v39 = v168;
      if (v168 == v42)
      {
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    if (v44 == 1)
    {
      LODWORD(v44) = HIDWORD(v41) - v41;
      if (!__OFSUB__(HIDWORD(v41), v41))
      {
        v156 = v44;
        goto LABEL_154;
      }

      __break(1u);
LABEL_99:
      if (v44 != 1)
      {
        goto LABEL_115;
      }

      LODWORD(v44) = HIDWORD(v41) - v41;
      if (!__OFSUB__(HIDWORD(v41), v41))
      {
        v157 = v44;
        goto LABEL_156;
      }

      __break(1u);
LABEL_103:
      if (v44 != 1)
      {
LABEL_119:
        if (v44 != 2)
        {
          v158 = BYTE6(v43);
LABEL_160:
          sub_100018350();
          v126 = swift_allocError();
          *v155 = 28;
          *(v155 + 8) = v158;
          *(v155 + 16) = 0;
          swift_willThrow();
          v153 = v8;
          v154 = v43;
          goto LABEL_161;
        }

        v120 = *(v8 + 16);
        v44 = *(v8 + 24);
        v158 = v44 - v120;
        if (!__OFSUB__(v44, v120))
        {
          goto LABEL_160;
        }

        __break(1u);
LABEL_123:
        if (v44 == 2)
        {
          v122 = *(v43 + 16);
          v121 = *(v43 + 24);
          v159 = v121 - v122;
          if (__OFSUB__(v121, v122))
          {
            __break(1u);
LABEL_127:
            v175 = v4;
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v36 = swift_allocObject();
            *(v36 + 16) = xmmword_101385D80;
            *&v180 = v175;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v123 = String.init<A>(describing:)();
            v125 = v124;
            *(v36 + 56) = &type metadata for String;
            *(v36 + 64) = sub_100008C00();
            *(v36 + 32) = v123;
            *(v36 + 40) = v125;
            os_log(_:dso:log:_:_:)();

            sub_1001BAF88();
            v126 = swift_allocError();
            *v127 = 0;
            swift_willThrow();

LABEL_130:
            *&v180 = 0;
            *(&v180 + 1) = 0xE000000000000000;
            v41 = &v180;
            _StringGuts.grow(_:)(35);
            v128._object = 0x800000010134CB30;
            v128._countAndFlagsBits = 0xD000000000000021;
            String.append(_:)(v128);
            v179 = v126;
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            _print_unlocked<A, B>(_:_:)();
            while (1)
            {
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_153:
              v156 = 0;
LABEL_154:
              sub_100018350();
              v148 = swift_allocError();
              *v149 = 32;
              *(v149 + 8) = v156;
              *(v149 + 16) = 0;
              v175 = v148;
              swift_willThrow();
              sub_100016590(v41, v38);
              v143 = v36;
              v146 = v21;
LABEL_151:
              sub_100016590(v143, v146);
              *&v181 = 0;
              *(&v181 + 1) = 0xE000000000000000;
              v41 = &v181;
              _StringGuts.grow(_:)(35);
              v147._object = 0x8000000101354990;
              v147._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v147);
              *&v180 = v175;
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              _print_unlocked<A, B>(_:_:)();
            }
          }
        }

        else
        {
          v159 = BYTE6(v36);
        }

LABEL_158:
        sub_100018350();
        v126 = swift_allocError();
        *v152 = 28;
        *(v152 + 8) = v159;
        *(v152 + 16) = 0;
        swift_willThrow();
        v153 = v43;
        v154 = v36;
LABEL_161:
        sub_100016590(v153, v154);
        goto LABEL_130;
      }

      LODWORD(v44) = HIDWORD(v8) - v8;
      if (!__OFSUB__(HIDWORD(v8), v8))
      {
        v158 = v44;
        goto LABEL_160;
      }

      __break(1u);
LABEL_107:
      if (v44 != 1)
      {
        goto LABEL_123;
      }

      LODWORD(v44) = HIDWORD(v43) - v43;
      if (!__OFSUB__(HIDWORD(v43), v43))
      {
        v159 = v44;
        goto LABEL_158;
      }

      __break(1u);
    }

    if (v44 != 2)
    {
      v156 = BYTE6(v38);
      goto LABEL_154;
    }

    v118 = *(v41 + 16);
    v44 = *(v41 + 24);
    v156 = v44 - v118;
    if (!__OFSUB__(v44, v118))
    {
      goto LABEL_154;
    }

    __break(1u);
LABEL_115:
    if (v44 != 2)
    {
      v157 = BYTE6(v39);
LABEL_156:
      sub_100018350();
      v150 = swift_allocError();
      *v151 = 32;
      *(v151 + 8) = v157;
      *(v151 + 16) = 0;
      v175 = v150;
      swift_willThrow();
      v144 = v41;
      v145 = v39;
      goto LABEL_149;
    }

    v119 = *(v41 + 16);
    v44 = *(v41 + 24);
    v157 = v44 - v119;
    if (!__OFSUB__(v44, v119))
    {
      goto LABEL_156;
    }

    __break(1u);
    goto LABEL_119;
  }

  if (v182 == 2)
  {
    v161 = 2;
    v163 = *(&v181 + 1);
    v78 = *(v181 + 16);
    v40 = _swiftEmptyArrayStorage;
    if (v78)
    {
      *&v181 = _swiftEmptyArrayStorage;
      sub_101124AA8(0, v78, 0);
      v40 = v181;
      v79 = v38 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v171 = *(v162 + 72);
      v80 = (v174 + 56);
      v81 = (v162 + 56);
      do
      {
        v82 = v167;
        sub_100022A54(v79, v167, _s18ConnectionKeyGroupVMa);
        v83 = *(v176 + 48);
        (*v80)(v32, 1, 1, v178);
        sub_10002911C(v82, &v32[v83], _s18ConnectionKeyGroupVMa);
        (*v81)(&v32[v83], 0, 1, v8);
        *&v181 = v40;
        v85 = v40[2];
        v84 = v40[3];
        if (v85 >= v84 >> 1)
        {
          sub_101124AA8(v84 > 1, v85 + 1, 1);
          v40 = v181;
        }

        v40[2] = v85 + 1;
        sub_1000D2AD8(v32, v40 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v85, &qword_1016A5A80, &qword_1013B35A8);
        v8 = v172;
        v79 += v171;
        --v78;
      }

      while (v78);
      v38 = v173;
    }

    if (v40[2])
    {
      goto LABEL_81;
    }

    v115 = 1;
    v116 = 2;
LABEL_82:

    sub_100359088(v38, v163, v116);
  }

  else
  {
    v115 = 1;
  }

  return (*(v177 + 56))(v164, v115, 1, v176);
}