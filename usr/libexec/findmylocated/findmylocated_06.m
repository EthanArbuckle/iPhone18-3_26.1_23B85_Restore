uint64_t sub_10009AD18(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void, double), uint64_t a7)
{
  v176 = a7;
  v177 = a6;
  v174 = a5;
  *&v175 = a4;
  v192 = a2;
  v190 = type metadata accessor for DispatchWorkItemFlags();
  v179 = *(v190 - 8);
  v10 = *(v179 + 64);
  __chkstk_darwin(v190);
  v189 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for DispatchQoS();
  v178 = *(v188 - 8);
  v12 = *(v178 + 64);
  __chkstk_darwin(v188);
  v187 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureLocation();
  v191 = *(v14 - 8);
  v15 = *(v191 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v186 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = (&v165 - v19);
  v21 = __chkstk_darwin(v18);
  v194 = &v165 - v22;
  __chkstk_darwin(v21);
  v24 = (&v165 - v23);
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = v7;
  v30 = *(v7 + 320);
  *v29 = v30;
  (*(v26 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v25);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    swift_once();
LABEL_40:
    v83 = type metadata accessor for Logger();
    sub_10000A6F0(v83, qword_1005DFB98);
    v84 = v175;
    swift_errorRetain();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v195 = v84;
      aBlock = v88;
      *v87 = 134218242;
      *(v87 + 4) = v192[2];
      *(v87 + 12) = 2080;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v89 = String.init<A>(describing:)();
      v91 = sub_10000D01C(v89, v90, &aBlock);

      *(v87 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v85, v86, "SubscribeAndFetch - no response data. Returning locations from cache. count %ld error %s", v87, 0x16u);
      sub_100004984(v88);
    }

    v92 = v174;
    v93 = [v174 subscriptionMode];
    v94 = [v92 subscriptionMode];
    v95 = 15.0;
    if (v93 == 5)
    {
      v95 = 0.0;
      if (v94 <= 5)
      {
        v95 = dbl_1004C36D0[v94];
      }
    }

    v177(v96, v175, v95);

    swift_bridgeObjectRelease_n();
  }

  v32 = type metadata accessor for JSONDecoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v180 = JSONDecoder.init()();
  v35 = *(a1 + 16);
  v36 = _swiftEmptyArrayStorage;
  if (v35)
  {
    v193 = a3;
    v37 = v20;
    aBlock = _swiftEmptyArrayStorage;
    sub_10002B3C0(0, v35, 0);
    v36 = aBlock;
    v38 = (a1 + 40);
    do
    {
      v40 = *(v38 - 1);
      v39 = *v38;
      aBlock = v36;
      v41 = v36[2];
      v42 = v36[3];

      if (v41 >= v42 >> 1)
      {
        sub_10002B3C0((v42 > 1), v41 + 1, 1);
        v36 = aBlock;
      }

      v36[2] = (v41 + 1);
      v43 = &v36[2 * v41];
      v43[4] = v40;
      v43[5] = v39;
      v38 += 2;
      --v35;
    }

    while (v35);
    v20 = v37;
    a3 = v193;
  }

  v44 = sub_10023F00C(v36);

  v202 = v44;
  if (a3 >> 60 == 15)
  {
    v45 = v185[2];
    v46 = sub_100100D10(v44);
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = (*(v191 + 80) + 32) & ~*(v191 + 80);
      v173 = v46;
      v181 = v48;
      v49 = v46 + v48;
      v191 = *(v191 + 72);
      v185 = &v198;
      v184 = (v179 + 8);
      v183 = (v178 + 8);
      v192 = _swiftEmptyArrayStorage;
      do
      {
        v194 = v47;
        sub_1000CA264(v49, v20, type metadata accessor for SecureLocation);
        if (qword_1005A7EF8 != -1)
        {
          swift_once();
        }

        v59 = sub_1000DC618(v20);

        if (v59)
        {
          sub_1000CA264(v20, v186, type metadata accessor for SecureLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_1001FCE44(0, v192[2] + 1, 1, v192);
          }

          v61 = v192[2];
          v60 = v192[3];
          if (v61 >= v60 >> 1)
          {
            v192 = sub_1001FCE44(v60 > 1, v61 + 1, 1, v192);
          }

          v62 = v192;
          v192[2] = v61 + 1;
          sub_1000C9DE8(v186, v181 + v62 + v61 * v191, type metadata accessor for SecureLocation);
          if (qword_1005A7EE0 != -1)
          {
            swift_once();
          }

          v63 = qword_1005DFB60;
          v64 = *v20;
          v52 = v20[1];
          v182 = *(qword_1005DFB60 + 16);
          v65 = swift_allocObject();
          *(v65 + 16) = v63;
          *(v65 + 24) = v64;
          v193 = v64;
          *(v65 + 32) = v52;
          *(v65 + 40) = 1;
          v200 = sub_1000CAB4C;
          v201 = v65;
          aBlock = _NSConcreteStackBlock;
          v197 = 1107296256;
          v198 = sub_100020828;
          v199 = &unk_10058E098;
          v54 = _Block_copy(&aBlock);
          swift_retain_n();

          v55 = v187;
          static DispatchQoS.unspecified.getter();
          v195 = _swiftEmptyArrayStorage;
        }

        else
        {
          if (qword_1005A7EE0 != -1)
          {
            swift_once();
          }

          v50 = qword_1005DFB60;
          v51 = *v20;
          v52 = v20[1];
          v182 = *(qword_1005DFB60 + 16);
          v53 = swift_allocObject();
          *(v53 + 16) = v50;
          *(v53 + 24) = v51;
          v193 = v51;
          *(v53 + 32) = v52;
          *(v53 + 40) = 2;
          v200 = sub_1000C9B3C;
          v201 = v53;
          aBlock = _NSConcreteStackBlock;
          v197 = 1107296256;
          v198 = sub_100020828;
          v199 = &unk_10058DFF8;
          v54 = _Block_copy(&aBlock);
          swift_retain_n();

          v55 = v187;
          static DispatchQoS.unspecified.getter();
          v195 = _swiftEmptyArrayStorage;
        }

        sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10004B564(&unk_1005A9700, &qword_1004C3820);
        sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
        v56 = v20;
        v58 = v189;
        v57 = v190;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v54);
        (*v184)(v58, v57);
        (*v183)(v55, v188);

        sub_1001AC480(v193, v52);

        sub_1000CA2CC(v56, type metadata accessor for SecureLocation);
        v49 += v191;
        v47 = v194 - 1;
        v20 = v56;
      }

      while (v194 != 1);

      v44 = v202;
    }

    else
    {

      v192 = _swiftEmptyArrayStorage;
    }

    v66 = v44 + 56;
    v67 = 1 << *(v44 + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v69 = v68 & *(v44 + 56);
    v70 = (v67 + 63) >> 6;
    v185 = &v198;
    v184 = (v179 + 8);
    v183 = (v178 + 8);

    v71 = 0;
    v191 = v44 + 56;
    v186 = v70;
    v193 = v44;
    if (v69)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v72 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
        goto LABEL_90;
      }

      if (v72 >= v70)
      {
        break;
      }

      v69 = *(v66 + 8 * v72);
      ++v71;
      if (v69)
      {
        v71 = v72;
        do
        {
LABEL_35:
          v73 = (*(v44 + 48) + ((v71 << 10) | (16 * __clz(__rbit64(v69)))));
          v74 = *v73;
          v75 = v73[1];
          v76 = qword_1005A7EE0;

          if (v76 != -1)
          {
            swift_once();
          }

          v69 &= v69 - 1;
          v77 = qword_1005DFB60;
          v194 = *(qword_1005DFB60 + 16);
          v78 = swift_allocObject();
          *(v78 + 16) = v77;
          *(v78 + 24) = v74;
          *(v78 + 32) = v75;
          *(v78 + 40) = 0;
          v200 = sub_1000CAB4C;
          v201 = v78;
          aBlock = _NSConcreteStackBlock;
          v197 = 1107296256;
          v198 = sub_100020828;
          v199 = &unk_10058E048;
          v79 = _Block_copy(&aBlock);
          swift_retain_n();

          v80 = v187;
          static DispatchQoS.unspecified.getter();
          v195 = _swiftEmptyArrayStorage;
          sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10004B564(&unk_1005A9700, &qword_1004C3820);
          sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
          v81 = v189;
          v82 = v190;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v79);

          (*v184)(v81, v82);
          (*v183)(v80, v188);

          v44 = v193;
          v66 = v191;
          v70 = v186;
        }

        while (v69);
      }
    }

    if (qword_1005A7EE8 != -1)
    {
      goto LABEL_92;
    }

    goto LABEL_40;
  }

  sub_100005F6C(v192, a3);
  sub_1000C9B4C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v193 = a3;
  v99 = aBlock;
  v98 = v197;
  v100 = v198;
  v101 = v199;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  v103 = sub_10000A6F0(v102, qword_1005DFB98);

  v186 = v103;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();

  v106 = os_log_type_enabled(v104, v105);
  v184 = v100;
  if (v106)
  {
    v107 = swift_slowAlloc();
    v183 = v99;
    v108 = v107;
    v109 = swift_slowAlloc();
    aBlock = v109;
    *v108 = 136315138;

    v110 = sub_10000D01C(v98, v100, &aBlock);
    v111 = v44;
    v112 = v110;

    *(v108 + 4) = v112;
    v44 = v111;
    _os_log_impl(&_mh_execute_header, v104, v105, "Decoded SubscribeAndFetch response successfully %s. Now attempting to decrypt", v108, 0xCu);
    sub_100004984(v109);

    v99 = v183;
  }

  v169 = *(v44 + 16);
  if (v101)
  {

    sub_10009D258(v113);
    v170 = v101[2];
    if (v170)
    {
      v114 = v101 + 5;
      v115 = v170;
      do
      {
        v117 = *(v114 - 1);
        v116 = *v114;

        sub_1001AC480(v117, v116);

        if (qword_1005A7EE0 != -1)
        {
          swift_once();
        }

        sub_1000CD500(v117, v116, 3);

        v114 += 2;
        --v115;
      }

      while (v115);
    }
  }

  else
  {
    v170 = 0;
  }

  v118 = v185[2];
  v119 = sub_1001028AC(v99);

  v120 = sub_1000BAADC(v119, &v202);
  v172 = 0;

  v173 = v120;
  v168 = v120[2];
  v121 = v202;
  v167 = *(v202 + 16);
  v122 = sub_100100D10(v202);
  v123 = *(v122 + 16);
  v124 = _swiftEmptyArrayStorage;
  if (v123)
  {
    v125 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v126 = *(v191 + 72);
    v184 = v122;
    v191 = v125;
    v127 = v122 + v125;
    do
    {
      sub_1000CA264(v127, v24, type metadata accessor for SecureLocation);
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v128 = sub_1000DC618(v24);

      if (v128)
      {
        if (qword_1005A7EE0 != -1)
        {
          swift_once();
        }

        v129 = *v24;
        v130 = v24[1];

        sub_1000CD500(v129, v130, 1);

        sub_1001AC480(v129, v130);

        sub_1000C9DE8(v24, v194, type metadata accessor for SecureLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239440(0, v124[2] + 1, 1);
          v124 = aBlock;
        }

        v133 = v124[2];
        v132 = v124[3];
        if (v133 >= v132 >> 1)
        {
          sub_100239440(v132 > 1, v133 + 1, 1);
          v124 = aBlock;
        }

        v124[2] = (v133 + 1);
        sub_1000C9DE8(v194, v124 + v191 + v133 * v126, type metadata accessor for SecureLocation);
      }

      else
      {
        sub_1000CA2CC(v24, type metadata accessor for SecureLocation);
      }

      v127 += v126;
      --v123;
    }

    while (v123);
    v121 = v202;
  }

  v134 = swift_allocObject();

  v171 = v134;
  *(v134 + 16) = v124;
  v166 = v124[2];
  v136 = (v121 + 56);
  v135 = *(v121 + 56);
  v137 = 1 << *(v121 + 32);
  v138 = -1;
  v165 = *(v121 + 16);
  if (v137 < 64)
  {
    v138 = ~(-1 << v137);
  }

  v139 = v138 & v135;
  v140 = (v137 + 63) >> 6;
  v181 = &v198;
  v179 += 8;
  v178 += 8;

  v141 = 0;
  *&v142 = 141558275;
  v175 = v142;
  v143 = v193;
  v183 = (v121 + 56);
  v184 = v121;
  v182 = v140;
  while (v139)
  {
    v144 = v141;
LABEL_82:
    v145 = (*(v121 + 48) + ((v144 << 10) | (16 * __clz(__rbit64(v139)))));
    v147 = *v145;
    v146 = v145[1];
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v139 &= v139 - 1;
    v148 = qword_1005DFB60;
    v194 = *(qword_1005DFB60 + 16);
    v149 = swift_allocObject();
    *(v149 + 16) = v148;
    *(v149 + 24) = v147;
    *(v149 + 32) = v146;
    *(v149 + 40) = 0;
    v200 = sub_1000CAB4C;
    v201 = v149;
    aBlock = _NSConcreteStackBlock;
    v197 = 1107296256;
    v198 = sub_100020828;
    v199 = &unk_10058E110;
    v150 = _Block_copy(&aBlock);
    swift_retain_n();

    v151 = v187;
    static DispatchQoS.unspecified.getter();
    v195 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    v191 = v147;
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v152 = v189;
    v153 = v190;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v150);
    (*v179)(v152, v153);
    (*v178)(v151, v188);

    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      aBlock = v157;
      *v156 = v175;
      *(v156 + 4) = 1752392040;
      *(v156 + 12) = 2081;
      *(v156 + 14) = sub_10000D01C(v191, v146, &aBlock);
      _os_log_impl(&_mh_execute_header, v154, v155, "subscribeAndFetch: No Location Found for %{private,mask.hash}s", v156, 0x16u);
      sub_100004984(v157);
    }

    v141 = v144;
    v143 = v193;
    v121 = v184;
    v136 = v183;
    v140 = v182;
  }

  while (1)
  {
    v144 = v141 + 1;
    if (__OFADD__(v141, 1))
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v144 >= v140)
    {
      break;
    }

    v139 = v136[v144];
    ++v141;
    if (v139)
    {
      goto LABEL_82;
    }
  }

  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    *v160 = 134219264;
    *(v160 + 4) = v169;
    *(v160 + 12) = 2048;
    *(v160 + 14) = v170;
    *(v160 + 22) = 2048;
    *(v160 + 24) = v168;
    *(v160 + 32) = 2048;
    *(v160 + 34) = v167;
    *(v160 + 42) = 2048;
    *(v160 + 44) = v166;
    *(v160 + 52) = 2048;
    *(v160 + 54) = v165;
    _os_log_impl(&_mh_execute_header, v158, v159, "subscribeAndFetch location counts. requested %ld failed %ld fromServer %ld notOnServer %ld notOnServerButInCache %ld noLocationFound %ld", v160, 0x3Eu);
  }

  v161 = type metadata accessor for Transaction();
  __chkstk_darwin(v161);
  v162 = v173;
  *(&v165 - 6) = v185;
  *(&v165 - 5) = v162;
  v163 = v171;
  *(&v165 - 4) = v174;
  *(&v165 - 3) = v163;
  v164 = v176;
  *(&v165 - 2) = v177;
  *(&v165 - 1) = v164;
  static Transaction.named<A>(_:with:)();
  sub_10001A794(v192, v143);
}

uint64_t sub_10009C844(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a3;
  v13 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v60 = &v54 - v15;
  v16 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v57 = &v54 - v18;
  v56 = type metadata accessor for Credentials(0);
  v58 = *(v56 - 8);
  v19 = *(v58 + 64);
  v20 = __chkstk_darwin(v56);
  v55 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v59 = &v54 - v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a2;
  v22[4] = a5;
  v22[5] = a6;
  v61 = a6;
  v22[6] = a7;
  v22[7] = a1;
  v23 = objc_opt_self();
  v24 = a4;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v63 = a1;
  swift_retain_n();
  v62 = v24;
  v25 = [v23 standardUserDefaults];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 BOOLForKey:v26];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000A6F0(v28, qword_1005DFB98);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 67109120;
    *(v31 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v29, v30, "LabelledLocations Resolve Label isfetchdone %{BOOL}d", v31, 8u);
  }

  if (!v27)
  {
    v54 = a7;
    v33 = swift_allocObject();
    v34 = v67;
    *(v33 + 16) = a2;
    *(v33 + 24) = v34;
    *(v33 + 32) = 0;
    *(v33 + 40) = sub_1000C9BC4;
    *(v33 + 48) = v22;
    v35 = qword_1005A8098;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
    v37 = sub_10000A6F0(v36, qword_1005AF7C0);
    os_unfair_lock_lock(v37);
    v38 = v57;
    sub_100005F04(v37 + *(v36 + 28), v57, &qword_1005A9DA8, &unk_1004D1130);
    os_unfair_lock_unlock(v37);
    v39 = v58;
    if ((*(v58 + 48))(v38, 1, v56) == 1)
    {
      sub_100002CE0(v38, &qword_1005A9DA8, &unk_1004D1130);
      v65[0] = 0;
      v65[1] = 0;
      v66 = 2;
      sub_1000C7488();
      swift_willThrowTypedImpl();
      v32 = v62;
      v40 = v62;

      v41 = v54;

      v42 = v63;

      sub_1000BDAE4(v67, 0, a2, v40, a2, a5, v61, v41, v42);
    }

    else
    {
      v43 = v59;
      sub_1000C9DE8(v38, v59, type metadata accessor for Credentials);
      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
      v45 = v55;
      sub_1000CA264(v43, v55, type metadata accessor for Credentials);
      v46 = (*(v39 + 80) + 40) & ~*(v39 + 80);
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = a2;
      sub_1000C9DE8(v45, v47 + v46, type metadata accessor for Credentials);
      v48 = (v47 + ((v19 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v48 = sub_1000CAB30;
      v48[1] = v33;

      sub_1001D7F30(0, 0, v60, &unk_1004C3480, v47);

      sub_1000CA2CC(v59, type metadata accessor for Credentials);

      v32 = v62;
    }

    goto LABEL_16;
  }

  if (*(*(a2 + 120) + 16))
  {
    v32 = v62;
LABEL_15:
    v51 = v32;

    v52 = v63;

    sub_1000BDAE4(v67, 0, a2, v51, a2, a5, v61, a7, v52);

LABEL_16:
  }

  v65[0] = sub_1004B7128();

  v49 = v64;
  sub_1000BA000(v65);
  v32 = v62;
  if (!v49)
  {

    v50 = *(a2 + 120);
    *(a2 + 120) = v65[0];

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_10009D07C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void, double))
{
  v11 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  if (a2)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;

    sub_10020D620(0, 0, v14, &unk_1004C3488, v16);
  }

  swift_beginAccess();

  sub_1002494F4(v17);
  swift_endAccess();
  v18 = [a5 subscriptionMode];
  v19 = 0.0;
  if (v18 <= 5)
  {
    v19 = dbl_1004C36D0[v18];
  }

  swift_beginAccess();
  v20 = *(a4 + 16);

  a6(v21, 0, v19);

  Transaction.capture()();
}

uint64_t sub_10009D258(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v46 = v11;
  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFB98);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v47 = v7;
  v45 = v15;
  v20 = v12;
  v21 = v8;
  if (v19)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 134218242;
    *(v22 + 4) = *(a1 + 16);

    *(v22 + 12) = 2080;
    v24 = Array.description.getter();
    v26 = sub_10000D01C(v24, v25, aBlock);

    *(v22 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "subscribeAndFetch - clearing cached locations for %ld ids %s", v22, 0x16u);
    sub_100004984(v23);
  }

  else
  {
  }

  v48 = a1;
  v27 = *(a1 + 16);
  v29 = v45;
  v28 = v46;
  if (v27)
  {
    v30 = v2;
    v31 = v21;
    v51 = (v55 + 8);
    v52 = v58;
    v50 = (v54 + 8);
    v32 = (v48 + 40);
    v53 = v30;
    v49 = v20;
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      v35 = *(v30 + 16);
      v55 = *(v35 + 16);
      v36 = swift_allocObject();
      v36[2] = v33;
      v36[3] = v34;
      v54 = v34;
      v36[4] = v35;
      v36[5] = DarwinNotification.init(name:value:);
      v36[6] = 0;
      v58[2] = sub_1000C9A78;
      v58[3] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v58[0] = sub_100020828;
      v58[1] = &unk_10058DF80;
      v37 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();

      static DispatchQoS.unspecified.getter();
      v56 = _swiftEmptyArrayStorage;
      sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10004B564(&unk_1005A9700, &qword_1004C3820);
      sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v38 = v37;
      v39 = v49;
      _Block_release(v38);

      (*v51)(v28, v31);
      (*v50)(v29, v39);

      v30 = v53;
      v32 += 2;
      --v27;
    }

    while (v27);
  }

  v40 = type metadata accessor for TaskPriority();
  v41 = v47;
  (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v48;

  sub_10020D620(0, 0, v41, &unk_1004C3478, v42);
}

uint64_t sub_10009D80C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SecureLocationsConfig();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v20 - v9);
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v11 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v11);
  v12 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v11 + *(v12 + 28), v10, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v11);

  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005A98B8);
  sub_1000CA264(v10, v8, type metadata accessor for SecureLocationsConfig);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136446722;
    *(v16 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004DFB90, &v21);
    *(v16 + 12) = 2048;
    v18 = *v8;
    sub_1000CA2CC(v8, type metadata accessor for SecureLocationsConfig);
    *(v16 + 14) = v18;
    *(v16 + 22) = 2048;
    *(v16 + 24) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s local version: %ld - server: %ld", v16, 0x20u);
    sub_100004984(v17);
  }

  else
  {
    sub_1000CA2CC(v8, type metadata accessor for SecureLocationsConfig);
  }

  if (*v10 < a1)
  {
    sub_100090D10(v2, a1);
  }

  return sub_1000CA2CC(v10, type metadata accessor for SecureLocationsConfig);
}

uint64_t sub_10009DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 16);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a2;
  v13[7] = a1;

  sub_10010029C(a3, a4, sub_1000C91CC, v13);
}

void sub_10009DBDC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, void *a7)
{
  v72 = a5;
  v73 = a4;
  v71 = a2;
  v74 = a7;
  v10 = *a7;
  v11 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v18 = type metadata accessor for SecureLocation();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23;
  sub_100005F04(a1, v17, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v19 + 48))(v17, 1, v24) != 1)
  {
    sub_1000C9DE8(v17, v22, type metadata accessor for SecureLocation);
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v33 = sub_1000DC618(v22);

    if (v33)
    {

      v34 = sub_1000DCB14(v22);

      if (v34)
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v70 = v10;
        v35 = type metadata accessor for Logger();
        sub_10000A6F0(v35, qword_1005DFB98);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v69 = v24;
          v40 = v22;
          v41 = v39;
          aBlock = v39;
          *v38 = 136315138;
          v42 = v71;
          *(v38 + 4) = sub_10000D01C(v71, a3, &aBlock);
          _os_log_impl(&_mh_execute_header, v36, v37, "latestLocationFromCache - location is valid but aging. Returning it for now and requesting a refetch for %s", v38, 0xCu);
          sub_100004984(v41);
          v22 = v40;
          v24 = v69;
        }

        else
        {

          v42 = v71;
        }

        __chkstk_darwin(v43);
        *(&v68 - 4) = a6;
        *(&v68 - 3) = v42;
        *(&v68 - 2) = a3;
        static Transaction.named<A>(_:with:)();
        if (qword_1005A7EE0 != -1)
        {
          swift_once();
          if (static SystemInfo.underTest.getter())
          {
            goto LABEL_43;
          }

          goto LABEL_38;
        }

        if ((static SystemInfo.underTest.getter() & 1) == 0)
        {
LABEL_38:
          v63 = String._bridgeToObjectiveC()();
          v64 = swift_allocObject();
          *(v64 + 16) = 2;
          v79 = sub_1000CAAAC;
          v80 = v64;
          aBlock = _NSConcreteStackBlock;
          v76 = 1107296256;
          v65 = &unk_10058DBE8;
LABEL_42:
          v77 = sub_1000119E4;
          v78 = v65;
          v67 = _Block_copy(&aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v67);
        }

LABEL_43:
        sub_1000CA264(v22, v15, type metadata accessor for SecureLocation);
        (*(v19 + 56))(v15, 0, 1, v24);
        goto LABEL_44;
      }

      if ((sub_10009E904(v71, a3) & 1) == 0)
      {
        if (qword_1005A7EE0 == -1)
        {
          if (static SystemInfo.underTest.getter())
          {
            goto LABEL_43;
          }
        }

        else
        {
          swift_once();
          if (static SystemInfo.underTest.getter())
          {
            goto LABEL_43;
          }
        }

        v63 = String._bridgeToObjectiveC()();
        v66 = swift_allocObject();
        *(v66 + 16) = 0;
        v79 = sub_1000CAAAC;
        v80 = v66;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v65 = &unk_10058DB48;
        goto LABEL_42;
      }

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10000A6F0(v52, qword_1005DFB98);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "latestLocationFromCache - proactive subscription needs renewal", v55, 2u);
      }

      v56 = v71;
      if (qword_1005A7EE0 == -1)
      {
        v57 = static SystemInfo.underTest.getter();
        if (v57)
        {
LABEL_34:
          __chkstk_darwin(v57);
          *(&v68 - 6) = a6;
          *(&v68 - 5) = v56;
          v61 = v72;
          v62 = v73;
          *(&v68 - 4) = a3;
          *(&v68 - 3) = v62;
          *(&v68 - 2) = v61;
          static Transaction.named<A>(_:with:)();
LABEL_45:
          sub_1000CA2CC(v22, type metadata accessor for SecureLocation);
          goto LABEL_46;
        }
      }

      else
      {
        swift_once();
        v57 = static SystemInfo.underTest.getter();
        if (v57)
        {
          goto LABEL_34;
        }
      }

      v58 = String._bridgeToObjectiveC()();
      v59 = swift_allocObject();
      *(v59 + 16) = 1;
      v79 = sub_1000CAAAC;
      v80 = v59;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_1000119E4;
      v78 = &unk_10058DB98;
      v60 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      v56 = v71;
      _Block_release(v60);

      goto LABEL_34;
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFB98);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_10000D01C(v71, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v45, v46, "latestLocationFromCache - location is older than acceptable threshold. Returning nil for %s", v47, 0xCu);
      sub_100004984(v48);
    }

    if (qword_1005A7EE0 == -1)
    {
      if (static SystemInfo.underTest.getter())
      {
LABEL_25:
        (*(v19 + 56))(v15, 1, 1, v24);
LABEL_44:
        v73(v15, 0);
        sub_100002CE0(v15, &unk_1005AB3F0, &qword_1004C4BF0);
        goto LABEL_45;
      }
    }

    else
    {
      swift_once();
      if (static SystemInfo.underTest.getter())
      {
        goto LABEL_25;
      }
    }

    v49 = String._bridgeToObjectiveC()();
    v50 = swift_allocObject();
    *(v50 + 16) = 3;
    v79 = sub_1000CAAAC;
    v80 = v50;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_1000119E4;
    v78 = &unk_10058DAF8;
    v51 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v51);

    goto LABEL_25;
  }

  sub_100002CE0(v17, &unk_1005AB3F0, &qword_1004C4BF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000A6F0(v25, qword_1005DFB98);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_10000D01C(v71, a3, &aBlock);
    _os_log_impl(&_mh_execute_header, v26, v27, "latestLocationFromCache - no cached location for %s", v28, 0xCu);
    sub_100004984(v29);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
    if (static SystemInfo.underTest.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
LABEL_8:
    v30 = String._bridgeToObjectiveC()();
    v31 = swift_allocObject();
    *(v31 + 16) = 4;
    v79 = sub_1000C91DC;
    v80 = v31;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_1000119E4;
    v78 = &unk_10058DAA8;
    v32 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v32);
  }

LABEL_9:
  (*(v19 + 56))(v15, 1, 1, v24);
  v73(v15, 0);
  sub_100002CE0(v15, &unk_1005AB3F0, &qword_1004C4BF0);
LABEL_46:
  Transaction.capture()();
}

uint64_t sub_10009E904(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = *(v2 + 16);
  sub_1000FC0C4(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100002CE0(v8, &unk_1005AE5B0, &qword_1004C32F0);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "proactiveSubscriptionNeedsRenewal is true since there is no last proactive subscribtion time.", v21, 2u);
    }

    return 1;
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    static Date.trustedNow.getter(v14);
    Date.timeIntervalSince(_:)();
    v24 = v23;
    v25 = *(v10 + 8);
    v25(v14, v9);
    v22 = v24 >= 64800.0;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005DFB98);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109632;
      *(v29 + 4) = v24 >= 64800.0;
      *(v29 + 8) = 2048;
      *(v29 + 10) = 0x40EFA40000000000;
      *(v29 + 18) = 2048;
      *(v29 + 20) = v24;
      _os_log_impl(&_mh_execute_header, v27, v28, "proactiveSubscriptionNeedsRenewal %{BOOL}d threshold %f timeSinceLastSubscribe %f", v29, 0x1Cu);
    }

    v25(v16, v9);
  }

  return v22;
}

void sub_10009ECAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1))
{
  if (*(a2 + 16))
  {
    v7 = *a1;
    v8 = a1[1];
    v9 = sub_1000110D8(*a1, v8);
    if ((v10 & 1) != 0 && (*(*(a2 + 56) + v9) & 1) == 0)
    {
      v11 = *(a3 + 16);
      sub_1000FC5D8(v7, v8, a4);
    }
  }
}

uint64_t sub_10009ED28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v12 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  [v12 setSubscriptionMode:0];
  v13 = String._bridgeToObjectiveC()();
  [v12 setClientApp:v13];

  [v12 setFetchMode:0];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C1900;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  sub_1000BC7AC(v14, v12, 0, a2, a5, a6, a1);
}

void sub_10009EE84(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  v11 = type metadata accessor for SecureLocation();
  v12 = *(v11 - 8);
  v13 = v12;
  if (v10)
  {
    sub_1000CA264(a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v9, type metadata accessor for SecureLocation);
    (*(v13 + 56))(v9, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v9, 1, 1, v11);
  }

  a3(v9, a2);
  sub_100002CE0(v9, &unk_1005AB3F0, &qword_1004C4BF0);
  Transaction.capture()();
}

uint64_t sub_10009EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  [v8 setSubscriptionMode:0];
  v9 = String._bridgeToObjectiveC()();
  [v8 setClientApp:v9];

  [v8 setFetchMode:0];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004C1900;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  sub_1000BD148(v10, v8, 1, a2, a1);
}

void sub_10009F120(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for SecureLocation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SecureLocationsConfig();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000BB328())
  {
    goto LABEL_10;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v16 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v16);
  v17 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v16 + *(v17 + 28), v15, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v16);

  v18 = v15[8];
  sub_1000CA2CC(v15, type metadata accessor for SecureLocationsConfig);
  if (v18 != 1)
  {
LABEL_10:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005DFB98);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "publishLocation: secureLocations feature is disabled. Not publishing location", v30, 2u);
    }

    type metadata accessor for SecureLocationsError(0);
    v32 = 6;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v31 = v33;
    (a2)(v33);
  }

  else
  {
    v19 = v3;
    sub_10008B75C(a1, v11);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Resolving labels for publish", v23, 2u);
    }

    sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
    v24 = *(v8 + 72);
    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1004C1900;
    sub_1000CA264(v11, v26 + v25, type metadata accessor for SecureLocation);

    sub_1000BFAFC(v26, 1, v19, v19, a2, a3);

    sub_1000CA2CC(v11, type metadata accessor for SecureLocation);
  }
}

void sub_10009F5B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v8 = &off_1005A7000;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v11))
    {

      if (*(a1 + 16))
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v12 = 136315138;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v13 = String.init<A>(describing:)();
    v15 = a5;
    v16 = sub_10000D01C(v13, v14, &v23);

    *(v12 + 4) = v16;
    a5 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error resolving label before publish. Proceeding without label. Error %s", v12, 0xCu);
    sub_100004984(v22);

    v8 = &off_1005A7000;
  }

  if (*(a1 + 16))
  {
LABEL_7:
    v17 = *(type metadata accessor for SecureLocation() - 8);
    sub_10009F89C(a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), 0, a4, a5);
    return;
  }

LABEL_9:
  if (v8[477] != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005DFB98);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Got empty locations after resolving labels. This shouldn't happen", v21, 2u);
  }
}

void sub_10009F89C(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  LODWORD(v92) = a2;
  v9 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v90 = v83 - v11;
  v12 = type metadata accessor for Credentials(0);
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v12);
  v87 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v83 - v16;
  v93 = type metadata accessor for SecureLocation();
  v18 = *(*(v93 - 8) + 64);
  v19 = __chkstk_darwin(v93);
  v21 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v83 - v22;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_10000A6F0(v24, qword_1005DFB98);
  sub_1000CA264(a1, v23, type metadata accessor for SecureLocation);
  sub_1000CA264(a1, v21, type metadata accessor for SecureLocation);
  v91 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v86 = a4;
    v29 = v28;
    v30 = swift_slowAlloc();
    v85 = a3;
    v83[1] = v30;
    v94 = v30;
    *v29 = 136446466;
    v31 = sub_10008AEA8(*&v23[*(v93 + 60)]);
    v32 = v5;
    v33 = v17;
    v35 = v34;
    v84 = a1;
    sub_1000CA2CC(v23, type metadata accessor for SecureLocation);
    v36 = sub_10000D01C(v31, v35, &v94);
    v17 = v33;
    v5 = v32;

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    v38 = sub_10008BC88(v37);
    v40 = v39;
    a1 = v84;
    sub_1000CA2CC(v21, type metadata accessor for SecureLocation);
    v41 = sub_10000D01C(v38, v40, &v94);

    *(v29 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v26, v27, "publishLocation with reason %{public}s location: %s", v29, 0x16u);
    swift_arrayDestroy();
    a3 = v85;

    a4 = v86;
  }

  else
  {

    sub_1000CA2CC(v21, type metadata accessor for SecureLocation);
    sub_1000CA2CC(v23, type metadata accessor for SecureLocation);
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v42 = sub_100021BB4();

  if ((v42 & 1) == 0 && (v92 & 1) == 0)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Not a location publishing device. Not publishing location", v45, 2u);
    }

    sub_1000BEB1C();
    v46 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:12 userInfo:0];
LABEL_13:
    v47 = v46;
    a3();

    return;
  }

  if (*(a1 + *(v93 + 60)) != 8)
  {
    if (qword_1005A8098 != -1)
    {
      swift_once();
    }

    v52 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
    v53 = sub_10000A6F0(v52, qword_1005AF7C0);
    os_unfair_lock_lock(v53);
    v54 = v53 + *(v52 + 28);
    v55 = v90;
    sub_100005F04(v54, v90, &qword_1005A9DA8, &unk_1004D1130);
    os_unfair_lock_unlock(v53);
    if ((*(v88 + 48))(v55, 1, v89) == 1)
    {
      sub_100002CE0(v55, &qword_1005A9DA8, &unk_1004D1130);
      v94 = 0;
      v95 = 0;
      v96 = 2;
      sub_1000C7488();
      swift_willThrowTypedImpl();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Unable to get credentials for server SubscribeAndFetch", v58, 2u);
      }

      v46 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
      goto LABEL_13;
    }

    v59 = v87;
    sub_1000C9DE8(v55, v87, type metadata accessor for Credentials);
    sub_1000C9DE8(v59, v17, type metadata accessor for Credentials);
    v60 = [objc_opt_self() currentDevice];
    if (v60 && (v61 = v60, v62 = [v60 uniqueDeviceIdentifier], v61, v62))
    {
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = *(v5 + 144);
      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      v67 = v5;
      OS_dispatch_queue.sync<A>(execute:)();
      v68 = v95;
      if (v95)
      {
        v91 = v94;
        v92 = 0;
        v93 = swift_allocBox();
        v70 = v69;
        sub_1000CA264(a1, v69, type metadata accessor for SecureLocation);
        v71 = v17;
        v72 = v70[1];
        *v70 = v63;
        v70[1] = v65;

        v73 = type metadata accessor for Transaction();
        __chkstk_darwin(v73);
        v83[-10] = v67;
        v83[-9] = v93;
        v83[-8] = a3;
        v83[-7] = a4;
        v83[-6] = a1;
        v83[-5] = v91;
        v83[-4] = v68;
        v83[-3] = v63;
        v83[-2] = v65;
        v83[-1] = v71;
        static Transaction.named<A>(_:with:)();

        v74 = v71;
LABEL_32:
        sub_1000CA2CC(v74, type metadata accessor for Credentials);
        return;
      }

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "No APS token. Not proceeding", v82, 2u);
      }

      v78 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:13 userInfo:0];
    }

    else
    {
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Unable to get device identifier for server SubscribeAndFetch", v77, 2u);
      }

      v78 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    }

    v79 = v78;
    a3();

    v74 = v17;
    goto LABEL_32;
  }

  v48 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer;
  if (*(v5 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer))
  {
    v49 = *(v5 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer);

    DispatchTimer.cancel()();

    v50 = *(v5 + v48);
    *(v5 + v48) = 0;
  }

  v51 = *(v5 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  sub_10010BEB0(a1);
  (a3)(0);
}

uint64_t sub_1000A02E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a7;
  v51 = a8;
  v46 = a4;
  v47 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a1;
  v48 = a9;
  v49 = a10;
  v41 = a6;
  v42 = a11;
  v12 = type metadata accessor for Credentials(0);
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  __chkstk_darwin(v12 - 8);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureLocation();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  v36 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v43 = &v36 - v18;
  v20 = swift_projectBox();
  v45 = *(a2 + 16);
  swift_beginAccess();
  sub_1000CA264(v20, v19, type metadata accessor for SecureLocation);
  sub_1000CA264(v41, &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SecureLocation);
  sub_1000CA264(v42, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Credentials);
  v21 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v40 + 80) + v23 + 16) & ~*(v40 + 80);
  v25 = swift_allocObject();
  v26 = v46;
  v27 = v47;
  v25[2] = v44;
  v25[3] = v26;
  v28 = v38;
  v29 = v39;
  v25[4] = v27;
  v25[5] = v28;
  v25[6] = v29;
  sub_1000C9DE8(v36, v25 + v21, type metadata accessor for SecureLocation);
  v30 = (v25 + v22);
  v31 = v51;
  *v30 = v50;
  v30[1] = v31;
  v32 = (v25 + v23);
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  sub_1000C9DE8(v37, v25 + v24, type metadata accessor for Credentials);

  v34 = v43;
  sub_100101950(v43, sub_1000C9408, v25);

  return sub_1000CA2CC(v34, type metadata accessor for SecureLocation);
}

void sub_1000A0618(uint64_t a1, void *a2, void (*a3)(void), void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v122 = a8;
  v124 = a2;
  v115 = a12;
  v121 = a10;
  v17 = type metadata accessor for SecureLocation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v116 = v20;
  v118 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Credentials(0);
  v112 = *(v21 - 8);
  v22 = *(v112 + 64);
  __chkstk_darwin(v21 - 8);
  v113 = v23;
  v114 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v117 = &v107 - v26;
  v27 = type metadata accessor for String.Encoding();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  if (*(a1 + 16))
  {
    v111 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v119 = a3;
    v120 = a4;
    v30 = swift_projectBox();
    v123 = a5;
    v31 = *(a5 + 16);
    sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
    v32 = *(v18 + 72);
    v33 = *(v18 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1004C1900;
    swift_beginAccess();
    sub_1000CA264(v30, v34 + ((v33 + 32) & ~v33), type metadata accessor for SecureLocation);
    sub_1000FE000(v34, 1, DarwinNotification.init(name:value:), 0);

    v35 = *(a7 + *(v17 + 60));
    if (v35 == 7)
    {
      if (qword_1005A8608 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000A6F0(v36, qword_1005E0DE0);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      v39 = os_log_type_enabled(v37, v38);
      v40 = v119;
      if (v39)
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        v42 = *(a1 + 80);
        if (*(v42 + 16))
        {
          v43 = *(v42 + 48);
        }

        else
        {
          v43 = -1.0;
        }

        *(v41 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v37, v38, "Publish reason: .live (timestamp: %f)", v41, 0xCu);
      }

      v106 = *(a1 + 48);
      v126 = *(a1 + 32);
      v127 = v106;
      v128 = *(a1 + 64);
      v129 = *(a1 + 80);
      sub_1000C980C(&v126, v125);
      sub_1000A12FC(&v126);
      sub_1000C9868(&v126);
      (v40)(0);
      Transaction.capture()();
    }

    else
    {
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      unsafeFromAsyncTask<A>(_:)();

      v49 = v126;
      v50 = sub_10008AEA8(v35);
      *&v126 = v122;
      *(&v126 + 1) = a9;
      *&v127 = v121;
      *(&v127 + 1) = a11;
      strcpy(&v128, "searchpartyd");
      BYTE13(v128) = 0;
      HIWORD(v128) = -5120;
      LOBYTE(v129) = 0;
      v130 = v50;
      v131 = v51;
      v132 = v49;

      v53 = sub_10018DEC0(v52, &v126);
      if (v53)
      {
        v56 = v53;
        v57 = v54;
        v58 = v55;
        v121 = a7;
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_10000A6F0(v59, qword_1005DFB98);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Sending SubmitLocation server request", v62, 2u);
        }

        sub_1000C95B4(v56, v57, v58);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();
        sub_1000C95FC(v56, v57, v58);
        v65 = os_log_type_enabled(v63, v64);
        v122 = v57;
        if (v65)
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v125[0] = v67;
          *v66 = 136315138;

          v68 = v58;
          v69 = Dictionary.description.getter();
          v71 = v70;

          v72 = sub_10000D01C(v69, v71, v125);

          *(v66 + 4) = v72;
          v58 = v68;
          _os_log_impl(&_mh_execute_header, v63, v64, "SubmitLocation request headers %s", v66, 0xCu);
          sub_100004984(v67);

          v57 = v122;
        }

        v73 = ~v33;
        sub_1000C95B4(v56, v57, v58);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        v110 = v56;
        sub_1000C95FC(v56, v57, v58);
        v76 = os_log_type_enabled(v74, v75);
        v109 = v58;
        if (v76)
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v125[0] = v78;
          *v77 = 136315138;
          v108 = ~v33;
          if (v58 >> 60 == 15)
          {
            v79 = 0;
          }

          else
          {
            v79 = v57;
          }

          if (v58 >> 60 == 15)
          {
            v80 = 0xC000000000000000;
          }

          else
          {
            v80 = v58;
          }

          sub_10002CF44(v57, v58);
          static String.Encoding.utf8.getter();
          v81 = String.init(data:encoding:)();
          v83 = v82;
          sub_1000049D0(v79, v80);
          if (v83)
          {
            v84 = v81;
          }

          else
          {
            v84 = 7104878;
          }

          if (v83)
          {
            v85 = v83;
          }

          else
          {
            v85 = 0xE300000000000000;
          }

          v86 = sub_10000D01C(v84, v85, v125);
          v73 = v108;

          *(v77 + 4) = v86;
          _os_log_impl(&_mh_execute_header, v74, v75, "SubmitLocation request body %s", v77, 0xCu);
          sub_100004984(v78);
        }

        v87 = type metadata accessor for TaskPriority();
        v88 = v117;
        (*(*(v87 - 8) + 56))(v117, 1, 1, v87);
        v89 = v114;
        sub_1000CA264(v115, v114, type metadata accessor for Credentials);
        v90 = v118;
        sub_1000CA264(v121, v118, type metadata accessor for SecureLocation);
        v91 = (*(v112 + 80) + 64) & ~*(v112 + 80);
        v92 = (v113 + v33 + v91) & v73;
        v93 = (v116 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
        v94 = swift_allocObject();
        v94[2] = 0;
        v94[3] = 0;
        v95 = v110;
        v94[4] = v123;
        v94[5] = v95;
        v96 = v109;
        v94[6] = v122;
        v94[7] = v96;
        sub_1000C9DE8(v89, v94 + v91, type metadata accessor for Credentials);
        sub_1000C9DE8(v90, v94 + v92, type metadata accessor for SecureLocation);
        v97 = (v94 + v93);
        v98 = v120;
        *v97 = v119;
        v97[1] = v98;
        *(v94 + ((v93 + 23) & 0xFFFFFFFFFFFFFFF8)) = v124;

        sub_1001D7F30(0, 0, v88, &unk_1004C3468, v94);
      }

      else
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        sub_10000A6F0(v99, qword_1005DFB98);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();
        v102 = os_log_type_enabled(v100, v101);
        v103 = v119;
        if (v102)
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&_mh_execute_header, v100, v101, "Failed to create request for server SubscribeAndFetch", v104, 2u);
        }

        v105 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
        v103();
        Transaction.capture()();
      }
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFB98);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Encoded payload to submit locations is empty.", v47, 2u);
    }

    Transaction.capture()();
    v124 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:14 userInfo:0];
    a3();
    v48 = v124;
  }
}

void sub_1000A12FC(unint64_t a1)
{
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFB98);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "autoMe is active - not publishing live location", v8, 2u);
    }
  }

  else
  {
    v9 = *(*(v1 + 24) + 40);

    sub_10012385C(a1);

    sub_1000C98BC();
  }
}

uint64_t sub_1000A14DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000A14FC, 0, 0);
}

uint64_t sub_1000A14FC()
{
  v1 = *(*(v0 + 24) + 64);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000A1590;

  return sub_1000847C8();
}

uint64_t sub_1000A1590(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000CA9BC, 0, 0);
}

uint64_t sub_1000A1690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v25;
  *(v8 + 192) = v26;
  *(v8 + 168) = v24;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 224) = v12;
  v13 = *(v12 - 8);
  *(v8 + 232) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  *(v8 + 248) = v15;
  v16 = *(v15 - 8);
  *(v8 + 256) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v18 = type metadata accessor for SecureLocation();
  *(v8 + 272) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v20 = type metadata accessor for Response();
  *(v8 + 296) = v20;
  v21 = *(v20 - 8);
  *(v8 + 304) = v21;
  *(v8 + 312) = *(v21 + 64);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_1000A18E8, 0, 0);
}

uint64_t sub_1000A18E8()
{
  v2 = v0[16];
  v1 = v0[17];
  sub_1000C98BC();
  v3 = *(v2 + 56);
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_1000A19A0;
  v5 = v0[43];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];

  return sub_1001CF6CC(v5, v1, v8, v6, 2, v7, 1, 0);
}

uint64_t sub_1000A19A0()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_1000A21E8;
  }

  else
  {
    v3 = sub_1000A1AB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A1AB4()
{
  v81 = v0;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = v0[43];
  v77 = v0[41];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[21];
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);
  v9 = *(v4 + 16);
  v9(v1, v2, v3);
  sub_1000CA264(v7, v5, type metadata accessor for SecureLocation);
  sub_1000CA264(v7, v6, type metadata accessor for SecureLocation);
  v76 = v9;
  v9(v77, v2, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[41];
  v13 = v0[42];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[35];
  v18 = v0[36];
  if (v12)
  {
    log = v10;
    v19 = v0[34];
    v78 = v0[41];
    v20 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v20 = 134218754;
    v21 = Response.statusCode.getter();
    v71 = v11;
    v22 = *(v15 + 8);
    v22(v13, v16);
    *(v20 + 4) = v21;
    *(v20 + 12) = 2082;
    v23 = sub_10008AEA8(*(v18 + *(v19 + 60)));
    v25 = v24;
    sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
    v26 = sub_10000D01C(v23, v25, &v80);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v28 = sub_10008BC88(v27);
    v30 = v29;
    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
    v31 = sub_10000D01C(v28, v30, &v80);

    *(v20 + 24) = v31;
    *(v20 + 32) = 2080;
    sub_10001DFA8(&qword_1005A9F08, &type metadata accessor for Response);
    v32 = v78;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v79 = v22;
    v22(v32, v16);
    v36 = sub_10000D01C(v33, v35, &v80);

    *(v20 + 34) = v36;
    _os_log_impl(&_mh_execute_header, log, v71, "SubmitLocation received status %ld for reason %{public}s location: %s. response: %s", v20, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v37 = *(v15 + 8);
    v37(v13, v16);

    v79 = v37;
    v37(v14, v16);
    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
    sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
  }

  v38 = v0[43];
  v39 = v0[40];
  v63 = v0[39];
  v40 = v0[37];
  v41 = v0[38];
  v42 = v0[32];
  v43 = v0[33];
  v44 = v0[31];
  v66 = v0[30];
  v72 = v0[29];
  v73 = v0[28];
  v70 = v0[26];
  v68 = v0[27];
  v69 = v0[25];
  loga = v0[24];
  v64 = v0[22];
  v65 = v0[23];
  v45 = v0[16];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v42 + 104))(v43, enum case for DispatchQoS.QoSClass.default(_:), v44);
  v67 = static OS_dispatch_queue.global(qos:)();
  (*(v42 + 8))(v43, v44);
  v76(v39, v38, v40);
  v46 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v47 = (v63 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v41 + 32))(v48 + v46, v39, v40);
  *(v48 + v47) = v45;
  v49 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v49 = v64;
  v49[1] = v65;
  v0[12] = sub_1000C9990;
  v0[13] = v48;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058DE90;
  v50 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);

  (*(v70 + 8))(v68, v69);
  (*(v72 + 8))(v66, v73);
  v51 = v0[13];

  Transaction.capture()();
  v79(v38, v40);
  v53 = v0[42];
  v52 = v0[43];
  v55 = v0[40];
  v54 = v0[41];
  v57 = v0[35];
  v56 = v0[36];
  v58 = v0[33];
  v59 = v0[30];
  v60 = v0[27];

  v61 = v0[1];

  return v61();
}

uint64_t sub_1000A21E8()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "SubmitLocation failed %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  v9 = v0[45];
  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[31];
  v30 = v0[30];
  v34 = v0[29];
  v35 = v0[28];
  v32 = v0[27];
  v33 = v0[26];
  v13 = v0[25];
  v36 = v0[24];
  v15 = v0[22];
  v14 = v0[23];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v31 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v11, v12);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v9;
  v0[6] = sub_1000CA964;
  v0[7] = v16;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058DE40;
  v17 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v33 + 8))(v32, v13);
  (*(v34 + 8))(v30, v35);
  v18 = v0[7];

  Transaction.capture()();

  v20 = v0[42];
  v19 = v0[43];
  v22 = v0[40];
  v21 = v0[41];
  v24 = v0[35];
  v23 = v0[36];
  v25 = v0[33];
  v26 = v0[30];
  v27 = v0[27];

  v28 = v0[1];

  return v28();
}

void sub_1000A2638(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = Response.statusCode.getter();
  if (v4 == 428)
  {
    sub_1000C1590(0, 0, 0, 0, 1);
    goto LABEL_5;
  }

  if (v4 == 200)
  {
    v5 = Response.body.getter();
    v7 = v6;
    sub_1000A3648();
    sub_1000049D0(v5, v7);
LABEL_5:
    (a3)(0);
    return;
  }

  v8 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
  a3();
}

void sub_1000A2748()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "republishLastLocation requested", v3, 2u);
  }

  v4 = [objc_opt_self() currentDevice];
  if (v4 && (v5 = v4, v6 = [v4 uniqueDeviceIdentifier], v5, v6))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for Transaction();
    __chkstk_darwin(v7);
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v10 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v10, v8, "Unable to get device identifier for server Republish", v9, 2u);
    }
  }
}

uint64_t sub_1000A29B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *(a2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;

  sub_10010029C(a3, a4, sub_1000C93E0, v11);
}

void sub_1000A2A64(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v38 = a3;
  v39 = a2;
  v6 = type metadata accessor for Date();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v10 = *(*(v35 - 8) + 64);
  v11 = __chkstk_darwin(v35);
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v40 = &v34 - v14;
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = type metadata accessor for SecureLocation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v16, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100002CE0(v16, &unk_1005AB3F0, &qword_1004C4BF0);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    v23 = a1;
    v24 = v40;
    sub_100005F04(v23, v40, &unk_1005AB3F0, &qword_1004C4BF0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      sub_100005F04(v24, v34, &unk_1005AB3F0, &qword_1004C4BF0);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      sub_100002CE0(v24, &unk_1005AB3F0, &qword_1004C4BF0);
      v32 = sub_10000D01C(v29, v31, &v41);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to get location for republish %s", v27, 0xCu);
      sub_100004984(v28);
    }

    else
    {

      sub_100002CE0(v24, &unk_1005AB3F0, &qword_1004C4BF0);
    }

    Transaction.capture()();
  }

  else
  {
    sub_1000C9DE8(v16, v21, type metadata accessor for SecureLocation);
    v33 = *(v17 + 52);
    Date.addingTimeInterval(_:)();
    (*(v36 + 40))(&v21[v33], v9, v37);

    sub_1000C0B38(v21, v38 & 1, v39, a4);

    sub_1000CA2CC(v21, type metadata accessor for SecureLocation);
  }
}

void sub_1000A2EDC(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  if (sub_100112E80(0))
  {
    sub_1001146E8(a1, a2);
    sub_100109B74();
    v10 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer;
    if (*(v2 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer))
    {
      v11 = *(v2 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer);

      DispatchTimer.cancel()();

      v12 = *(v2 + v10);
      *(v2 + v10) = 0;
    }

    swift_allocObject();
    swift_weakInit();
    v13 = type metadata accessor for DispatchTimer();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = DispatchTimer.init(deadline:repeating:leeway:queue:block:)();
    v17 = *(v2 + v10);
    *(v2 + v10) = v16;

    DispatchTimer.resume()();

    sub_1000AB450();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v23 = v9 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix;
      v24 = *(v9 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix);
      v25 = *(v23 + 8);

      v26 = sub_10000D01C(v24, v25, &v32);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - not available for publish.", v21, 0xCu);
      sub_100004984(v22);
    }

    v27 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    v28 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFA8(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for SecureLocationsStewie.Error.cannotPublish(_:), v28);
    a1(v8, v29);

    sub_100002CE0(v8, &unk_1005AB4C0, &qword_1004C3440);
  }
}

uint64_t sub_1000A32D8()
{
  v0 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFB98);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = *(Strong + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);

      v12 = *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix];
      v11 = *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8];
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x3A636F6C6574696CLL;
    }

    v13 = sub_10000D01C(v12, v11, &v21);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s timed out waiting to get a location fix from GPS", v7, 0xCu);
    sub_100004984(v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);

    v16 = enum case for SecureLocationsStewie.Error.locationFixTimeout(_:);
    v17 = type metadata accessor for SecureLocationsStewie.Error();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v3, v16, v17);
    (*(v18 + 56))(v3, 0, 1, v17);
    v19 = type metadata accessor for Transaction();
    __chkstk_darwin(v19);
    *(&v20 - 2) = v15;
    *(&v20 - 1) = v3;
    static Transaction.named<A>(_:with:)();

    return sub_100002CE0(v3, &qword_1005A9F00, &qword_1004C3448);
  }

  return result;
}

uint64_t sub_1000A3648()
{
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005A98B8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004DFB60, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000C933C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v10 != 1)
  {
    sub_10009D80C(v9);
  }
}

void sub_1000A38D4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void), uint64_t a6)
{
  v123 = a6;
  v127 = a4;
  v128 = a5;
  v133 = a3;
  v8 = type metadata accessor for Credentials(0);
  v121 = *(v8 - 8);
  v9 = *(v121 + 64);
  __chkstk_darwin(v8 - 8);
  v122 = v10;
  v124 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v125 = &v103 - v13;
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  v131 = a2;
  v132 = v14;
  v126 = a1;
  if (v14)
  {
    v16 = *(a2 + 16);
    v17 = (a1 + 40);
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;

      v21 = sub_1000FD46C(v19, v20);
      v23 = v22;
      v25 = v24;

      if (v25)
      {
        v26 = [v133 subscriptionMode];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1001FD094(0, *(v15 + 2) + 1, 1, v15);
        }

        v28 = *(v15 + 2);
        v27 = *(v15 + 3);
        v29 = v15;
        if (v28 >= v27 >> 1)
        {
          v29 = sub_1001FD094((v27 > 1), v28 + 1, 1, v15);
        }

        *(v29 + 2) = v28 + 1;
        v15 = v29;
        v18 = &v29[32 * v28];
        *(v18 + 4) = v21;
        *(v18 + 5) = v23;
        *(v18 + 6) = v25;
        *(v18 + 7) = v26;
      }

      v17 += 2;
      v14 = (v14 - 1);
    }

    while (v14);
  }

  if (*(v15 + 2))
  {
    v30 = [objc_opt_self() currentDevice];
    if (v30 && (v31 = v30, v32 = [v30 uniqueDeviceIdentifier], v31, v32))
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = v131;
      v37 = *(v131 + 144);
      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      OS_dispatch_queue.sync<A>(execute:)();
      if (v152)
      {
        v130 = v15;
        v114 = v152;
        v115 = v33;
        v120 = v151;
        v38 = v133;
        v39 = [v133 clientApp];
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v40;

        v41 = [v38 subscriptionMode];
        v116 = v35;
        if (v41 == 1)
        {
          if (qword_1005A7EE0 != -1)
          {
            v41 = swift_once();
          }

          v42 = qword_1005DFB60;
          v43 = *(qword_1005DFB60 + 16);
          __chkstk_darwin(v41);
          *(&v103 - 4) = v126;
          *(&v103 - 3) = v42;
          *(&v103 - 16) = 1;

          sub_10004B564(&qword_1005A9EC0, &unk_1004C33F8);
          OS_dispatch_queue.sync<A>(execute:)();

          v117 = v151;
          v35 = v116;
        }

        else
        {
          v117 = &_swiftEmptyDictionarySingleton;
        }

        if ([v133 subscriptionMode] == 2)
        {
          v58 = v130;
          if (qword_1005A7EE0 != -1)
          {
            swift_once();
          }

          v59 = *(qword_1005DFB60 + 16);

          sub_10004B564(&qword_1005A9EB8, &qword_1004C33F0);
          OS_dispatch_queue.sync<A>(execute:)();

          v60 = v155;
          v61 = v114;
          if (v155)
          {
            v63 = v151;
            v62 = v152;
            v64 = v153;
            v65 = v154;
            v66 = v156;
            v67 = v157;
          }

          else
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = 0;
          }

          v68 = v115;
          v35 = v116;
        }

        else
        {
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v60 = 0;
          v66 = 0;
          v67 = 0;
          v61 = v114;
          v68 = v115;
          v58 = v130;
        }

        v151 = v120;
        v152 = v61;
        v153 = v68;
        v154 = v35;
        v155 = v118;
        v156 = v119;
        v157 = v117;
        v158 = v63;
        v111 = v63;
        v112 = v62;
        v159 = v62;
        v160 = v64;
        v109 = v65;
        v110 = v64;
        v161 = v65;
        v162 = v60;
        v113 = v60;
        v108 = v66;
        v163 = v66;
        v107 = v67;
        v164 = v67;
        v165 = _swiftEmptyArrayStorage;

        sub_1000C8BA0(&v151, &v134);
        v69 = sub_10018F440(v58, &v151);
        if (v69)
        {
          v104 = v71;
          v105 = v70;
          v106 = v69;
          v129 = &v136;
          v72 = (v126 + 40);
          v73 = v132 + 1;
          while (--v73)
          {
            v132 = v72 + 2;
            v74 = *(v72 - 1);
            v75 = *v72;
            v76 = *(v36 + 48);
            v77 = *(v76 + 16);
            v78 = swift_allocObject();
            *(v78 + 16) = v76;
            *(v78 + 24) = v74;
            v79 = v133;
            *(v78 + 32) = v75;
            *(v78 + 40) = v79;
            *(v78 + 48) = 3;
            v80 = swift_allocObject();
            *(v80 + 16) = sub_1000CA9B0;
            *(v80 + 24) = v78;
            v138 = sub_1000CAA0C;
            v139 = v80;
            v134 = _NSConcreteStackBlock;
            v135 = 1107296256;
            v136 = sub_10013EC94;
            v137 = &unk_10058D7D8;
            v81 = _Block_copy(&v134);
            swift_bridgeObjectRetain_n();

            v82 = v79;

            dispatch_sync(v77, v81);

            _Block_release(v81);
            LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();
            v36 = v131;

            v72 = v132;
            if (v81)
            {
              __break(1u);
              break;
            }
          }

          v83 = type metadata accessor for TaskPriority();
          v84 = v125;
          (*(*(v83 - 8) + 56))(v125, 1, 1, v83);
          v85 = v124;
          sub_1000CA264(v123, v124, type metadata accessor for Credentials);
          v86 = (*(v121 + 80) + 64) & ~*(v121 + 80);
          v87 = (v122 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v89[2] = 0;
          v89[3] = 0;
          v91 = v105;
          v90 = v106;
          v89[4] = v36;
          v89[5] = v90;
          v92 = v104;
          v89[6] = v91;
          v89[7] = v92;
          sub_1000C9DE8(v85, v89 + v86, type metadata accessor for Credentials);
          v93 = v127;
          *(v89 + v87) = v126;
          v94 = v133;
          *(v89 + v88) = v133;
          v95 = (v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8));
          v96 = v128;
          *v95 = v93;
          v95[1] = v96;
          v97 = v94;

          sub_1001D7F30(0, 0, v84, &unk_1004C33E8, v89);

          v134 = v120;
          v135 = v114;
          v136 = v115;
          v137 = v116;
          v138 = v118;
          v139 = v119;
          v140 = v117;
          v141 = v111;
          v142 = v112;
          v143 = v110;
          v144 = v109;
          v145 = v113;
          v146 = v108;
          v147 = v107;
          *v148 = v150[0];
          *&v148[3] = *(v150 + 3);
          v149 = _swiftEmptyArrayStorage;
        }

        else
        {

          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v98 = type metadata accessor for Logger();
          sub_10000A6F0(v98, qword_1005DFB98);
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&_mh_execute_header, v99, v100, "Failed to create request for server SubscribeAndFetch", v101, 2u);
          }

          v102 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:4 userInfo:0];
          v127();

          v134 = v120;
          v135 = v61;
          v136 = v68;
          v137 = v35;
          v138 = v118;
          v139 = v119;
          v140 = v117;
          v141 = v111;
          v142 = v112;
          v143 = v110;
          v144 = v109;
          v145 = v113;
          v146 = v108;
          v147 = v107;
          *v148 = v150[0];
          *&v148[3] = *(v150 + 3);
          v149 = _swiftEmptyArrayStorage;
        }

        sub_1000C8BFC(&v134);
      }

      else
      {

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_10000A6F0(v53, qword_1005DFB98);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "No APS token. Not proceeding with unsubscribe request", v56, 2u);
        }

        v57 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:13 userInfo:0];
        v127();
      }
    }

    else
    {

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000A6F0(v44, qword_1005DFB98);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Unable to get device identifier for server Unsubscribe", v47, 2u);
      }

      v133 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:4 userInfo:0];
      v127();
      v48 = v133;
    }
  }

  else
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000A6F0(v49, qword_1005DFB98);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "No Unsubscribe request data generated. Not sending request", v52, 2u);
    }

    (v127)(0);
  }
}

uint64_t sub_1000A45E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v20;
  *(v8 + 192) = v21;
  *(v8 + 168) = v19;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 224) = v12;
  v13 = *(v12 - 8);
  *(v8 + 232) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v15 = type metadata accessor for Response();
  *(v8 + 248) = v15;
  v16 = *(v15 - 8);
  *(v8 + 256) = v16;
  *(v8 + 264) = *(v16 + 64);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1000A4790, 0, 0);
}

uint64_t sub_1000A4790()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending Unsubscribe server request", v4, 2u);
  }

  v6 = v0[16];
  v5 = v0[17];

  v7 = *(v6 + 56);
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_1000A4900;
  v9 = v0[35];
  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[18];

  return sub_1001CF6CC(v9, v5, v12, v10, 3, v11, 1, 0);
}

uint64_t sub_1000A4900()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1000A4D5C;
  }

  else
  {
    v3 = sub_1000A4A14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A4A14()
{
  v1 = v0[34];
  v30 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v25 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v26 = v0[27];
  v27 = v0[25];
  v24 = v0[24];
  v22 = v0[22];
  v23 = v0[23];
  v20 = v0[16];
  v21 = v0[21];
  v28 = *(v20 + 320);
  v29 = v0[26];
  (*(v2 + 16))(v1);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + v5, v1, v4);
  *(v9 + v6) = v21;
  *(v9 + v7) = v22;
  *(v9 + v8) = v20;
  v10 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v23;
  v10[1] = v24;
  v0[12] = sub_1000C8E20;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058D8A0;
  v11 = _Block_copy(v0 + 8);

  v12 = v22;

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v29 + 8))(v26, v27);
  (*(v31 + 8))(v25, v32);
  (*(v2 + 8))(v30, v4);
  v13 = v0[13];

  v15 = v0[34];
  v14 = v0[35];
  v16 = v0[30];
  v17 = v0[27];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000A4D5C()
{
  v1 = v0[37];
  v2 = v0[30];
  v3 = v0[27];
  v18 = v0[29];
  v19 = v0[28];
  v4 = v0[25];
  v17 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v16 = *(v0[16] + 320);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = v6;
  v0[6] = sub_1000C8E14;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058D850;
  v8 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v17 + 8))(v3, v4);
  (*(v18 + 8))(v2, v19);
  v9 = v0[7];

  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[30];
  v13 = v0[27];

  v14 = v0[1];

  return v14();
}

void sub_1000A4FD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v71 = a4;
  v11 = type metadata accessor for Response();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Response.statusCode.getter();
  v67 = a6;
  v68 = a5;
  if (v16 == 200)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_10000A6F0(v17, qword_1005DFB98);

    v19 = a3;
    v65[1] = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v66 = a2;
    v70 = v19;
    if (v22)
    {
      v23 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v23 = 134218498;
      *(v23 + 4) = *(v66 + 16);

      *(v23 + 12) = 2080;
      v24 = [v19 clientApp];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_10000D01C(v25, v27, aBlock);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2080;
      v29 = Array.description.getter();
      v31 = sub_10000D01C(v29, v30, aBlock);

      *(v23 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unsubscribe received status 200 - Success for %ld IDs for clientApp %s ids %s", v23, 0x20u);
      swift_arrayDestroy();

      a2 = v66;
    }

    else
    {
    }

    v46 = *(a2 + 16);
    v69 = v73;
    v47 = (a2 + 40);
    v65[0] = v46;
    v48 = v46 + 1;
    v49 = v70;
    while (--v48)
    {
      v50 = v47 + 2;
      v51 = *(v47 - 1);
      v52 = *v47;
      v53 = *(v71 + 48);
      v54 = *(v53 + 16);
      v55 = swift_allocObject();
      v55[2] = v53;
      v55[3] = v51;
      v55[4] = v52;
      v55[5] = v49;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_1000C8ED4;
      *(v56 + 24) = v55;
      v73[2] = sub_1000CAA0C;
      v73[3] = v56;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v73[0] = sub_10013EC94;
      v73[1] = &unk_10058D918;
      v57 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();
      v58 = v49;

      dispatch_sync(v54, v57);

      _Block_release(v57);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      v47 = v50;
      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        break;
      }
    }

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = v65[0];

      _os_log_impl(&_mh_execute_header, v60, v61, "Unsubscribe removed subscription for %ld subs", v62, 0xCu);
    }

    else
    {
    }

    (v68)(0);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005DFB98);
    (*(v12 + 16))(v15, a1, v11);

    v33 = a3;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v36 = 134218754;
      v37 = Response.statusCode.getter();
      (*(v12 + 8))(v15, v11);
      *(v36 + 4) = v37;
      *(v36 + 12) = 2048;
      *(v36 + 14) = *(a2 + 16);

      *(v36 + 22) = 2080;
      v38 = [v33 clientApp];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_10000D01C(v39, v41, aBlock);

      *(v36 + 24) = v42;
      *(v36 + 32) = 2080;
      v43 = Array.description.getter();
      v45 = sub_10000D01C(v43, v44, aBlock);

      *(v36 + 34) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error during Unsubscribe %ld for %ld IDs for clientApp %s ids %s", v36, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      (*(v12 + 8))(v15, v11);
    }

    v63 = v68;
    v64 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:4 userInfo:0];
    v63();
  }
}

uint64_t sub_1000A5708(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFB98);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unsubscribe failed %s", v7, 0xCu);
    sub_100004984(v8);
  }

  return a2(a1);
}

uint64_t sub_1000A58A4(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v99 - v11;
  v13 = __chkstk_darwin(v10);
  v115 = v99 - v14;
  __chkstk_darwin(v13);
  v16 = v99 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v122 = v99 - v24;
  result = __chkstk_darwin(v23);
  if (*a1 == 1)
  {
    v123 = v99 - v26;
    v100 = v5;
    v107 = *(a2 + 24);
    v27 = sub_1004B7328();
    if (!*(v27 + 16) && (sub_1000F4A14() & 1) != 0)
    {

      v27 = sub_1004B7328();
    }

    v113 = *(v27 + 16);
    if (v113)
    {
      v106 = a2;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      v29 = sub_10000A6F0(v28, qword_1005DFB98);

      v124 = v29;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      v32 = os_log_type_enabled(v30, v31);
      v105 = v4;
      if (v32)
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = *(v27 + 16);

        _os_log_impl(&_mh_execute_header, v30, v31, "Shared keys found %ld. Determining if we need to delete", v33, 0xCu);
      }

      else
      {
      }

      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v101 = v27;
      v114 = v12;
      v104 = v9;
      v34 = *(qword_1005DFBC8 + 128);

      sub_10004B564(&qword_1005A9FC0, &qword_1004C3520);
      OS_dispatch_queue.sync<A>(execute:)();

      v36 = *(v125[0] + 16);
      v99[1] = v125[0];
      if (v36)
      {
        *&v120 = v18 + 16;
        v110 = v18 + 32;
        v109 = (v18 + 8);
        v37 = (v125[0] + 64);
        v38 = _swiftEmptyArrayStorage;
        *&v35 = 136315394;
        v102 = v35;
        v121 = v22;
        do
        {
          v40 = *(v37 - 3);
          v41 = *(v37 - 2);
          v43 = *(v37 - 1);
          v42 = *v37;
          v116 = v37;
          v118 = v40;
          v119 = v36;

          *&v117 = v41;

          v112 = v43;
          v44 = String.utf8Data.getter();
          v46 = v45;
          v125[0] = v44;
          v125[1] = v45;
          sub_1000CA210();
          v47 = v123;
          DataProtocol.stableUUID.getter();
          sub_1000049D0(v44, v46);
          v48 = *v120;
          (*v120)(v122, v47, v17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1001FD1A0(0, v38[2] + 1, 1, v38);
          }

          v50 = v38[2];
          v49 = v38[3];
          if (v50 >= v49 >> 1)
          {
            v38 = sub_1001FD1A0(v49 > 1, v50 + 1, 1, v38);
          }

          v38[2] = v50 + 1;
          (*(v18 + 32))(v38 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v50, v122, v17);
          v51 = v121;
          v48(v121, v123, v17);

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();

          v111 = v53;
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v125[0] = v108;
            *v54 = v102;

            v55 = sub_10000D01C(v112, v42, v125);

            *(v54 + 4) = v55;
            *(v54 + 12) = 2080;
            sub_10001DFA8(&qword_1005A92C0, &type metadata accessor for UUID);
            v56 = dispatch thunk of CustomStringConvertible.description.getter();
            v58 = v57;
            v59 = *v109;
            (*v109)(v121, v17);
            v60 = sub_10000D01C(v56, v58, v125);

            *(v54 + 14) = v60;
            _os_log_impl(&_mh_execute_header, v52, v111, "Handle serverId %s UUID %s", v54, 0x16u);
            swift_arrayDestroy();

            v59(v123, v17);
          }

          else
          {

            v39 = *v109;
            (*v109)(v51, v17);
            v39(v123, v17);
          }

          v37 = v116 + 5;
          v36 = v119 - 1;
        }

        while (v119 != 1);
      }

      else
      {
        v38 = _swiftEmptyArrayStorage;
      }

      v61 = 0;
      v122 = (v101 + ((*(v100 + 80) + 32) & ~*(v100 + 80)));
      v121 = *(v100 + 72);
      *&v62 = 136315138;
      v120 = v62;
      *&v62 = 136315394;
      v117 = v62;
      v63 = v114;
      v103 = v16;
      do
      {
        sub_1000CA264(&v122[v121 * v61], v16, type metadata accessor for SecureLocationsCachedSharedKey);
        v64 = v115;
        sub_1000CA264(v16, v115, type metadata accessor for SecureLocationsCachedSharedKey);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = v64;
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v123 = v61;
          v70 = v69;
          v125[0] = v69;
          *v68 = v120;
          sub_10001DFA8(&qword_1005A92C0, &type metadata accessor for UUID);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          v74 = v67;
          v16 = v103;
          sub_1000CA2CC(v74, type metadata accessor for SecureLocationsCachedSharedKey);
          v75 = sub_10000D01C(v71, v73, v125);
          v63 = v114;

          *(v68 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v65, v66, "Cached key identifier %s", v68, 0xCu);
          sub_100004984(v70);
          v61 = v123;
        }

        else
        {

          sub_1000CA2CC(v64, type metadata accessor for SecureLocationsCachedSharedKey);
        }

        v76 = 0;
        ++v61;
        v77 = v38[2];
        while (v77 != v76)
        {
          v78 = v76 + 1;
          v79 = v38 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v76;
          sub_10001DFA8(&qword_1005A9FC8, &type metadata accessor for UUID);
          v80 = dispatch thunk of static Equatable.== infix(_:_:)();
          v76 = v78;
          if (v80)
          {
            goto LABEL_29;
          }
        }

        v81 = v105;
        v82 = &v16[*(v105 + 20)];
        v83 = *v82;
        v84 = v82[1];
        sub_1000DDBD8(*v82, v84);
        v85 = *(v106 + 16);
        sub_100100688(v83, v84, DarwinNotification.init(name:value:), 0);
        sub_1000CA264(v16, v63, type metadata accessor for SecureLocationsCachedSharedKey);
        v86 = v104;
        sub_1000CA264(v16, v104, type metadata accessor for SecureLocationsCachedSharedKey);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v123 = v61;
          v90 = v89;
          v119 = swift_slowAlloc();
          v125[0] = v119;
          *v90 = v117;
          v91 = (v63 + *(v81 + 20));
          LODWORD(v118) = v88;
          v92 = *v91;
          v93 = v91[1];

          sub_1000CA2CC(v114, type metadata accessor for SecureLocationsCachedSharedKey);
          v94 = sub_10000D01C(v92, v93, v125);

          *(v90 + 4) = v94;
          *(v90 + 12) = 2080;
          sub_10001DFA8(&qword_1005A92C0, &type metadata accessor for UUID);
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v97 = v96;
          sub_1000CA2CC(v86, type metadata accessor for SecureLocationsCachedSharedKey);
          v98 = sub_10000D01C(v95, v97, v125);
          v63 = v114;

          *(v90 + 14) = v98;
          _os_log_impl(&_mh_execute_header, v87, v118, "Removing keys for %s %s", v90, 0x16u);
          swift_arrayDestroy();

          v61 = v123;
        }

        else
        {

          sub_1000CA2CC(v86, type metadata accessor for SecureLocationsCachedSharedKey);
          sub_1000CA2CC(v63, type metadata accessor for SecureLocationsCachedSharedKey);
        }

LABEL_29:
        sub_1000CA2CC(v16, type metadata accessor for SecureLocationsCachedSharedKey);
      }

      while (v61 != v113);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000A65AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000D01C(v4, v3, &v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "Received sink of friend stopped sharing %s", v8, 0xCu);
    sub_100004984(v9);
  }

  v10 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  v11 = String._bridgeToObjectiveC()();
  [v10 setClientApp:v11];

  [v10 setSubscriptionMode:2];

  sub_1000C2AC4(v4, v3, v10, a2, a2, v4, v3);
}

uint64_t sub_1000A67B4(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v133 = a5;
  v137 = a4;
  v127 = type metadata accessor for DispatchWorkItemFlags();
  v126 = *(v127 - 8);
  v9 = *(v126 + 64);
  __chkstk_darwin(v127);
  v124 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for DispatchQoS();
  v123 = *(v125 - 8);
  v11 = *(v123 + 64);
  __chkstk_darwin(v125);
  v122 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v131 = &v120 - v15;
  v16 = type metadata accessor for Destination();
  v17 = *(v16 - 8);
  v135 = v16;
  v136 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v121 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v128 = &v120 - v21;
  v22 = type metadata accessor for String.Encoding();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v120 - v26;
  v28 = type metadata accessor for SecureLocationsSubscription();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v5;
  v33 = *(v5 + 48);
  v34 = *(v33 + 16);
  v140 = v33;
  v141 = a1;
  v138 = a2;
  v139 = a1;
  v142 = a2;
  v143 = a3;
  v132 = a3;
  OS_dispatch_queue.sync<A>(execute:)();
  v35 = &off_1005A7000;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v36 = sub_100002CE0(v27, &qword_1005A9EC8, &unk_1004C3420);
    v38 = v137;
    v37 = v138;
    v39 = v135;
  }

  else
  {
    sub_1000C9DE8(v27, v32, type metadata accessor for SecureLocationsSubscription);
    v40 = &v32[*(v28 + 32)];
    v38 = v137;
    if (*(v40 + 1))
    {
      v41 = *v40;
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v42 = Data.init(base64Encoded:options:)();
      if (v43 >> 60 == 15)
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_10000A6F0(v44, qword_1005DFB98);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "failed to decode server provided push identifier", v47, 2u);
        }

        v130 = 0;
        v48 = 0;
      }

      else
      {
        v49 = v42;
        v50 = v43;
        static String.Encoding.utf8.getter();
        v130 = String.init(data:encoding:)();
        v48 = v51;
        sub_10001A794(v49, v50);
      }

      v37 = v138;
      if (qword_1005A8608 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10000A6F0(v52, qword_1005E0DE0);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 141558787;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        v144 = v56;
        aBlock = v130;
        v146 = v48;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v57 = String.init<A>(describing:)();
        v59 = sub_10000D01C(v57, v58, &v144);

        *(v55 + 14) = v59;
        *(v55 + 22) = 2160;
        *(v55 + 24) = 1752392040;
        *(v55 + 32) = 2081;
        *(v55 + 34) = sub_10000D01C(v139, v138, &v144);
        _os_log_impl(&_mh_execute_header, v53, v54, "stopLiveLocations: Got handle from server %{private,mask.hash}s for findMyId %{private,mask.hash}s", v55, 0x2Au);
        swift_arrayDestroy();
        v37 = v138;
      }

      v38 = v137;
      v39 = v135;
      v36 = sub_1000CA2CC(v32, type metadata accessor for SecureLocationsSubscription);
      v35 = &off_1005A7000;
      if (v48)
      {
        v60 = v134;
        v61 = v136;
        v62 = v131;
        goto LABEL_28;
      }
    }

    else
    {
      v36 = sub_1000CA2CC(v32, type metadata accessor for SecureLocationsSubscription);
      v37 = v138;
      v39 = v135;
      v35 = &off_1005A7000;
    }
  }

  if (v35[479] != -1)
  {
    v36 = swift_once();
  }

  v63 = qword_1005DFBC8;
  v64 = *(qword_1005DFBC8 + 128);
  __chkstk_darwin(v36);
  v65 = v139;
  *(&v120 - 4) = v63;
  *(&v120 - 3) = v65;
  *(&v120 - 2) = v37;

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  OS_dispatch_queue.sync<A>(execute:)();

  v66 = aBlock;
  v48 = v146;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_10000A6F0(v67, qword_1005E0DE0);
  swift_bridgeObjectRetain_n();

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  v70 = os_log_type_enabled(v68, v69);
  v130 = v66;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v129 = v48;
    v72 = v71;
    v144 = swift_slowAlloc();
    aBlock = v66;
    *v72 = 141558787;
    *(v72 + 4) = 1752392040;
    *(v72 + 12) = 2081;
    v146 = v129;
    v73 = String.init<A>(describing:)();
    v75 = sub_10000D01C(v73, v74, &v144);

    *(v72 + 14) = v75;
    *(v72 + 22) = 2160;
    *(v72 + 24) = 1752392040;
    *(v72 + 32) = 2081;
    *(v72 + 34) = sub_10000D01C(v139, v138, &v144);
    _os_log_impl(&_mh_execute_header, v68, v69, "stopLiveLocations: Got handle from fmf following %{private,mask.hash}s for findMyId %{private,mask.hash}s", v72, 0x2Au);
    swift_arrayDestroy();
    v37 = v138;

    v38 = v137;
    v48 = v129;
  }

  else
  {
  }

  v60 = v134;
  v61 = v136;
  v62 = v131;
  if (!v48)
  {
    goto LABEL_30;
  }

LABEL_28:

  Destination.init(string:)();
  if ((*(v61 + 48))(v62, 1, v39) == 1)
  {
    sub_100002CE0(v62, &qword_1005A9280, &qword_1004C27F8);
LABEL_30:
    aBlock = 0;
    v146 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v76._countAndFlagsBits = 0xD000000000000031;
    v76._object = 0x80000001004DF9A0;
    String.append(_:)(v76);
    v77._countAndFlagsBits = v139;
    v77._object = v37;
    String.append(_:)(v77);
    v78._countAndFlagsBits = 0xD000000000000010;
    v78._object = 0x80000001004DF9E0;
    String.append(_:)(v78);
    v80 = aBlock;
    v79 = v146;
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_10000A6F0(v81, qword_1005E0DE0);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock = v85;
      *v84 = 136315138;
      *(v84 + 4) = sub_10000D01C(v80, v79, &aBlock);
      _os_log_impl(&_mh_execute_header, v82, v83, "LiveLocations: %s", v84, 0xCu);
      sub_100004984(v85);
      v37 = v138;
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC7D4(v80, v79);

    v86 = type metadata accessor for Transaction();
    __chkstk_darwin(v86);
    v87 = v139;
    *(&v120 - 4) = v60;
    *(&v120 - 3) = v87;
    v88 = v132;
    *(&v120 - 2) = v37;
    *(&v120 - 1) = v88;
    static Transaction.named<A>(_:with:)();
    v38(0);
  }

  (*(v61 + 32))(v128, v62, v39);
  v89 = *(v60 + 32);
  v90 = sub_100123484();
  v129 = v48;
  if (v90)
  {
    v91 = v39;
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_10000A6F0(v92, qword_1005E0DE0);
    v93 = v136;
    v94 = v121;
    v95 = v91;
    (*(v136 + 16))(v121, v128, v91);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      aBlock = v99;
      *v98 = 141558275;
      *(v98 + 4) = 1752392040;
      *(v98 + 12) = 2081;
      sub_10001DFA8(&qword_1005A9260, &type metadata accessor for Destination);
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v94;
      v103 = v102;
      (*(v93 + 8))(v101, v95);
      v104 = sub_10000D01C(v100, v103, &aBlock);
      v60 = v134;

      *(v98 + 14) = v104;
      _os_log_impl(&_mh_execute_header, v96, v97, "LiveLocations: Ending session: %{private,mask.hash}s", v98, 0x16u);
      sub_100004984(v99);
    }

    else
    {

      (*(v93 + 8))(v94, v95);
    }
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_10000A6F0(v105, qword_1005E0DE0);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      aBlock = v109;
      *v108 = 136446210;
      *(v108 + 4) = sub_10000D01C(0xD000000000000062, 0x80000001004DFA00, &aBlock);
      _os_log_impl(&_mh_execute_header, v106, v107, "LiveLocations: %{public}s", v108, 0xCu);
      sub_100004984(v109);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC27C(0, 1, 0xD000000000000062, 0x80000001004DFA00);

    v95 = v135;
    v93 = v136;
  }

  v110 = *(v60 + 160);
  v111 = swift_allocObject();
  v112 = v139;
  v111[2] = v60;
  v111[3] = v112;
  v113 = v132;
  v111[4] = v37;
  v111[5] = v113;
  v149 = sub_1000C8FDC;
  v150 = v111;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_100020828;
  v148 = &unk_10058D9B8;
  v114 = _Block_copy(&aBlock);

  v115 = v113;
  v116 = v122;
  static DispatchQoS.unspecified.getter();
  v144 = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v117 = v124;
  v118 = v127;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v114);
  (*(v126 + 8))(v117, v118);
  (*(v123 + 8))(v116, v125);

  v137(0);
  (*(v93 + 8))(v128, v95);
}

uint64_t sub_1000A7A6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = *(a1 + 136);
  if (v12)
  {
    *a2 = *(a1 + 128);
    a2[1] = v12;
  }

  else
  {
    v27 = a2;
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v15 = [objc_opt_self() sharedInstance];
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a1;
    aBlock[4] = sub_1000C7DF0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A7F4C;
    aBlock[3] = &unk_10058CF90;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    [v15 fetchAPNSTokenWithCompletion:v17];
    _Block_release(v17);

    static DispatchTime.now()();
    + infix(_:_:)();
    v19 = *(v5 + 8);
    v19(v9, v4);
    OS_dispatch_group.wait(timeout:)();
    v19(v11, v4);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000A6F0(v20, qword_1005DFB98);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Timed out waiting for APS token call to return", v23, 2u);
      }
    }

    v24 = *(a1 + 136);
    v25 = v27;
    *v27 = *(a1 + 128);
    v25[1] = v24;
  }
}

void sub_1000A7D90(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFB98);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000D01C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching APS token %s", v9, 0xCu);
      sub_100004984(v10);
    }

    else
    {
    }
  }

  else
  {
    v14 = *(a5 + 136);
    *(a5 + 128) = a1;
    *(a5 + 136) = a2;
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1000A7F4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_1000A7FE4()
{
  v0 = type metadata accessor for SecureLocationsConfig();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000BB328())
  {
    goto LABEL_7;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v4 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v4);
  v5 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v4 + *(v5 + 28), v3, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v4);

  v6 = v3[8];
  sub_1000CA2CC(v3, type metadata accessor for SecureLocationsConfig);
  if (v6 != 1)
  {
LABEL_7:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    v8 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, v11, "LocationMonitor: secureLocations feature is disabled. Not proceeding with starting monitor", v12, 2u);
    }
  }

  else
  {
    sub_1000A9700();

    v7 = sub_100021BB4();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [objc_opt_self() sharedInstance];
    aBlock[4] = sub_1000A82A8;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A8DE8;
    aBlock[3] = &unk_10058DD28;
    v9 = _Block_copy(aBlock);
    [v8 startLocationMonitoring:v9];
    _Block_release(v9);
  }
}

void sub_1000A82D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v28 = a5;
  v27 = a1;
  v8 = type metadata accessor for SecureLocationsConfig();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005A98B8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    *(v15 + 14) = sub_10000D01C(v27, a2, v29);
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_10000D01C(a3, a4, v29);
    *(v15 + 32) = 1026;
    *(v15 + 34) = v28 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "startLocationMonitoring findmyId: %{private,mask.hash}s. Policy: %{public}s. forcePublish: %{BOOL,public}d", v15, 0x26u);
    swift_arrayDestroy();
  }

  if (sub_1000BB328())
  {
    goto LABEL_15;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v16 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v16);
  v17 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v16 + *(v17 + 28), v11, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v16);

  v18 = v11[8];
  sub_1000CA2CC(v11, type metadata accessor for SecureLocationsConfig);
  if (v18 != 1)
  {
LABEL_15:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v12, qword_1005DFB98);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_20;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "LocationMonitor: secureLocations feature is disabled. Not proceeding with starting monitor";
    goto LABEL_19;
  }

  sub_1000A9700();

  v19 = sub_100021BB4();

  if ((v19 & 1) == 0)
  {
    return;
  }

  if (a3 != 0x6F725072656E776FLL || a4 != 0xEE00657669746361) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (My = type metadata accessor for Feature.FindMy(), v29[3] = My, v29[4] = sub_10001DFA8(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy), v21 = sub_10000331C(v29), (*(*(My - 8) + 104))(v21, enum case for Feature.FindMy.fmOwnerProactive(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100004984(v29), (My))
  {
    v22 = type metadata accessor for Transaction();
    __chkstk_darwin(v22);
    *(&v27 - 6) = v27;
    *(&v27 - 5) = a2;
    *(&v27 - 4) = a3;
    *(&v27 - 3) = a4;
    *(&v27 - 16) = v28 & 1;
    static Transaction.named<A>(_:with:)();
    return;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v12, qword_1005DFB98);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "ownerProactive feature is disabled";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);
  }

LABEL_20:
}

void sub_1000A8888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a1;
  v24 = sub_1000C932C;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000A8DE8;
  v23 = &unk_10058DCB0;
  v13 = _Block_copy(&aBlock);

  v14 = [objc_allocWithZone(FMDSecureLocationContext) init];
  v15 = String._bridgeToObjectiveC()();
  [v14 setMode:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setFindMyId:v16];

  v17 = [objc_opt_self() sharedInstance];
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v24 = sub_1000CAB5C;
  v25 = v18;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000A8DE8;
  v23 = &unk_10058DD00;
  v19 = _Block_copy(&aBlock);
  _Block_copy(v13);

  [v17 startLocationMonitoringWithContext:v14 forcePublish:a6 & 1 completion:v19];
  _Block_release(v19);

  _Block_release(v13);
}

void sub_1000A8AE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFB98);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {

      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error starting location monitoring %s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005DFB98);

    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_10000D01C(a2, a3, &v20);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_10000D01C(a4, a5, &v20);
      _os_log_impl(&_mh_execute_header, v6, v18, "Requested starting location monitoring for %s with %s", v19, 0x16u);
      swift_arrayDestroy();
    }
  }

LABEL_12:
  Transaction.capture()();
}

void sub_1000A8DE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1000A8E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  v24 = sub_1000C7E24;
  v25 = v12;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000A8DE8;
  v23 = &unk_10058CFE0;
  v13 = _Block_copy(&v20);

  v14 = [objc_opt_self() sharedInstance];
  v15 = [objc_allocWithZone(FMDSecureLocationContext) init];
  if (a3)
  {
    v16 = String._bridgeToObjectiveC()();
    [v15 setFindMyId:v16];
  }

  if (a5)
  {
    v17 = String._bridgeToObjectiveC()();
    [v15 setMode:v17];
  }

  [v15 setStopMonitoringActivePolicy:a6 & 1];
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v24 = sub_100028AD0;
  v25 = v18;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000A8DE8;
  v23 = &unk_10058D030;
  v19 = _Block_copy(&v20);
  _Block_copy(v13);

  [v14 stopLocationMonitoringWithContext:v15 completion:v19];
  _Block_release(v19);

  _Block_release(v13);
}

void sub_1000A90D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFB98);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      goto LABEL_21;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error stopping location monitoring %{public}@", v9, 0xCu);
    sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);

    v7 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v17 = 136446722;
      if (a3)
      {
        v18 = a3;
      }

      else
      {
        a2 = 0;
        v18 = 0xE000000000000000;
      }

      v19 = sub_10000D01C(a2, v18, &v25);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      if (a5)
      {
        v20 = a4;
      }

      else
      {
        v20 = 0;
      }

      if (a5)
      {
        v21 = a5;
      }

      else
      {
        v21 = 0xE000000000000000;
      }

      v22 = sub_10000D01C(v20, v21, &v25);

      *(v17 + 14) = v22;
      *(v17 + 22) = 1024;
      *(v17 + 24) = a6 & 1;
      _os_log_impl(&_mh_execute_header, v7, v16, "Requested stopping location monitoring for %{public}s with %{public}s stopMonitoringActivePolicy: %{BOOL}d.", v17, 0x1Cu);
      swift_arrayDestroy();
    }
  }

LABEL_21:
  Transaction.capture()();
}

void sub_1000A9448(uint64_t a1, uint64_t (*a2)(void), const char *a3, const char *a4, int8x8_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFB98);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = vuzp1_s8(a5, v12).u32[0];
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v13 = String.init<A>(describing:)();
      v15 = sub_10000D01C(v13, v14, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0xCu);
      sub_100004984(v11);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);
    oslog = Logger.logObject.getter();
    v19 = a2();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, a4, v20, 2u);
    }
  }
}

uint64_t sub_1000A9700()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005AE630, &qword_1004C3430);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25[-v4];
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ContinuousClock.Instant.now.getter();
  v11 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_lastMeDeviceRefresh;
  swift_beginAccess();
  sub_100005F04(v0 + v11, v5, &qword_1005AE630, &qword_1004C3430);
  v26 = v10;
  v12 = sub_10019ECD8(sub_1000C9270);
  sub_100002CE0(v5, &qword_1005AE630, &qword_1004C3430);
  if (v12 == 2 || (v12 & 1) != 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFB98);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "LocationMonitor: force start refreshing me device started", v16, 2u);
    }

    if (qword_1005A7F60 != -1)
    {
      swift_once();
    }

    sub_100139B2C();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "LocationMonitor: force start refreshing me device completed", v19, 2u);
    }

    (*(v7 + 16))(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    swift_beginAccess();
    sub_100022364(v5, v1 + v11, &qword_1005AE630, &qword_1004C3430);
    swift_endAccess();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "LocationMonitor: skipping force start refreshing me device", v23, 2u);
    }
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000A9B48(char a1)
{
  v2 = v1;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFB98);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "LocationSharing: publishingDeviceStatus changed %{BOOL}d", v7, 8u);
  }

  v8 = *(v2 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);

  sub_10001D6F0();
}

void sub_1000A9C84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    swift_errorRetain();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = (*(a2 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager) + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix);
      v8 = *v7;
      v9 = v7[1];

      v10 = sub_10000D01C(v8, v9, &v14);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10000D01C(v11, v12, &v14);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s - error starting monitor after device became a location publishing device %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1000A9EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 184);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a2;
  v14[4] = a1;
  aBlock[4] = sub_1000C83C4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058D238;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v9, v6);
  (*(v10 + 8))(v13, v18);
}

void sub_1000AA1B4(uint64_t a1, void *a2, uint64_t a3)
{
  v72 = a3;
  v6 = type metadata accessor for SecureLocation();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v71 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v77 = (&v70 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = (&v70 - v16);
  __chkstk_darwin(v15);
  v20 = (&v70 - v19);
  v21 = *(a1 + 16);
  v75 = v18;
  if (v21)
  {
    v22 = *(v18 + 72);
    v76 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v3 = (a1 + v76);
    v23 = _swiftEmptyArrayStorage;
    v78 = v14;
    do
    {
      sub_1000CA264(v3, v20, type metadata accessor for SecureLocation);
      if (sub_1000AAADC(v20, a2, 1080.0, 540.0, 500.0))
      {
        sub_1000C9DE8(v20, v14, type metadata accessor for SecureLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239440(0, v23[2] + 1, 1);
          v23 = v80;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100239440(v25 > 1, v26 + 1, 1);
          v23 = v80;
        }

        v23[2] = v26 + 1;
        v14 = v78;
        sub_1000C9DE8(v78, v23 + v76 + v26 * v22, type metadata accessor for SecureLocation);
      }

      else
      {
        sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
      }

      v3 += v22;
      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v27 = v23[2];
  if (!v27)
  {

    goto LABEL_44;
  }

  v28 = 0;
  v29 = v75;
  v30 = *(v75 + 80);
  v73 = v23[2];
  v74 = v23 + ((v30 + 32) & ~v30);
  v76 = v23;
  do
  {
    if (v28 >= v23[2])
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v78 = *(v29 + 72);
    sub_1000CA264(&v74[v78 * v28], v17, type metadata accessor for SecureLocation);
    v3 = *v17;
    v20 = v17[1];
    swift_beginAccess();
    sub_1000CA264(v17, v77, type metadata accessor for SecureLocation);
    v32 = a2[41];
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v79 = a2[41];
    v34 = v79;
    a2[41] = 0x8000000000000000;
    v27 = sub_1000110D8(v3, v20);
    v36 = v34[2];
    v37 = (v35 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_46;
    }

    v39 = v35;
    if (v34[3] >= v38)
    {
      if (v33)
      {
        v42 = v79;
        if (v35)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_100203688();
        v42 = v79;
        if (v39)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_10022E088(v38, v33);
      v40 = sub_1000110D8(v3, v20);
      if ((v39 & 1) != (v41 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v27 = v40;
      v42 = v79;
      if (v39)
      {
LABEL_14:
        sub_1000C83D0(v77, v42[7] + v27 * v78);
        goto LABEL_15;
      }
    }

    v42[(v27 >> 6) + 8] |= 1 << v27;
    v43 = (v42[6] + 16 * v27);
    *v43 = v3;
    v43[1] = v20;
    sub_1000C9DE8(v77, v42[7] + v27 * v78, type metadata accessor for SecureLocation);
    v44 = v42[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_48;
    }

    v42[2] = v46;

LABEL_15:
    ++v28;
    v31 = a2[41];
    a2[41] = v42;

    swift_endAccess();
    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
    v27 = v73;
    v29 = v75;
    v23 = v76;
  }

  while (v73 != v28);
  v47 = objc_allocWithZone(CHSTimelineController);
  v48 = String._bridgeToObjectiveC()();
  v49 = String._bridgeToObjectiveC()();
  a2 = [v47 initWithExtensionBundleIdentifier:v48 kind:v49];

  v50 = String._bridgeToObjectiveC()();
  v3 = [a2 reloadTimelineWithReason:v50];

  v51 = qword_1005A7EE8;
  if (v3)
  {
    v20 = v3;
    v28 = v74;
    if (v51 == -1)
    {
LABEL_30:
      v52 = type metadata accessor for Logger();
      sub_10000A6F0(v52, qword_1005DFB98);
      v53 = v20;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v79 = v53;
        v80 = v57;
        *v56 = 136315138;
        v77 = v53;
        sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
        v58 = String.init<A>(describing:)();
        v60 = a2;
        v61 = sub_10000D01C(v58, v59, &v80);

        *(v56 + 4) = v61;
        a2 = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "Error reloading FindMyPeopleWidget timelines %s", v56, 0xCu);
        sub_100004984(v57);

        v27 = v73;
      }

      else
      {
      }

      v62 = v71;
      goto LABEL_40;
    }

LABEL_49:
    swift_once();
    goto LABEL_30;
  }

  v62 = v71;
  v28 = v74;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_10000A6F0(v63, qword_1005DFB98);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "Completed reloading FindMyPeopleWidget timelines", v66, 2u);
  }

LABEL_40:
  v67 = [BiomeLibrary() FindMy];
  swift_unknownObjectRelease();
  v20 = [v67 LocationChange];
  swift_unknownObjectRelease();
  v68 = [v20 source];
  v69 = 0;
  do
  {
    if (v69 >= *(v76 + 16))
    {
      goto LABEL_47;
    }

    sub_1000CA264(v28, v62, type metadata accessor for SecureLocation);
    sub_1000C41FC(v62, v68);
    ++v69;
    sub_1000CA2CC(v62, type metadata accessor for SecureLocation);
    v28 += v78;
  }

  while (v27 != v69);

LABEL_44:
  Transaction.capture()();
}

uint64_t sub_1000AAADC(uint64_t *a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for SecureLocation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v46[-v16];
  v18 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v46[-v20];
  v51 = v10;
  v22 = *(a1 + *(v10 + 60));
  v23 = *a1;
  v24 = a1[1];
  swift_beginAccess();
  v25 = *(a2 + 328);
  if (*(v25 + 16))
  {

    v26 = sub_1000110D8(v23, v24);
    if (v27)
    {
      sub_1000CA264(*(v25 + 56) + *(v11 + 72) * v26, v21, type metadata accessor for SecureLocation);
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 1;
  }

  v29 = v22 & 0xFFFFFFFFFFFFFFFELL;
  v30 = (*(v11 + 56))(v21, v28, 1, v51);
  __chkstk_darwin(v30);
  *&v46[-32] = a3;
  *&v46[-24] = a4;
  *&v46[-16] = a1;
  *&v46[-8] = a5;
  LODWORD(v50) = sub_10019EEB8(sub_1000C8478);
  v31 = v50;
  sub_100002CE0(v21, &unk_1005AB3F0, &qword_1004C4BF0);
  if (v31 != 2)
  {
    v33 = v15;
    if (v29 != 6)
    {
      v32 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  LODWORD(v50) = 1;
  v32 = 1;
  v33 = v15;
  if (v29 == 6)
  {
LABEL_12:
    v32 = v50;
  }

LABEL_13:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000A6F0(v34, qword_1005DFB98);
  sub_1000CA264(a1, v17, type metadata accessor for SecureLocation);
  sub_1000CA264(a1, v33, type metadata accessor for SecureLocation);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v47 = v29 != 6;
    v37 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v37 = 67110146;
    *(v37 + 4) = v32 & 1;
    *(v37 + 8) = 2080;
    v39 = *v17;
    v38 = v17[1];

    v49 = v32;
    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
    v40 = sub_10000D01C(v39, v38, &v52);

    *(v37 + 10) = v40;
    *(v37 + 18) = 2082;
    v41 = sub_10008AEA8(*(v33 + *(v51 + 60)));
    v43 = v42;
    LOBYTE(v32) = v49;
    sub_1000CA2CC(v33, type metadata accessor for SecureLocation);
    v44 = sub_10000D01C(v41, v43, &v52);

    *(v37 + 20) = v44;
    *(v37 + 28) = 1024;
    *(v37 + 30) = v47;
    *(v37 + 34) = 1024;
    *(v37 + 36) = v50 & 1;
    _os_log_impl(&_mh_execute_header, v35, v36, "SignificantLocation: isSignificantLocation: %{BOOL}d - %s\npublishReason: %{public}s\nisLowFrequencyUpdateLocation: %{BOOL}d\nisSignificantUpdateLocationOrFirstUpdate: %{BOOL}d", v37, 0x28u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000CA2CC(v33, type metadata accessor for SecureLocation);
    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
  }

  return v32 & 1;
}

void sub_1000AAFE4(double *a1@<X0>, double *a2@<X1>, _BYTE *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v69 = a3;
  v67 = a5;
  v68 = a6;
  v66 = a4;
  v8 = type metadata accessor for SecureLocation();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v17);
  v18 = *(v9 + 60);
  Date.timeIntervalSince(_:)();
  v65 = v19;
  v20 = *(v14 + 8);
  v20(v17, v13);
  static Date.trustedNow.getter(v17);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v20(v17, v13);
  v24 = a1[2];
  v23 = a1[3];
  v25 = a1[7];
  v26 = a1[8];
  v28 = a1[4];
  v27 = a1[5];
  v29 = a1[6];
  v30 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v32 = [v30 initWithCoordinate:isa altitude:v23 horizontalAccuracy:v24 verticalAccuracy:v26 course:v27 speed:v28 timestamp:{v25, v29}];

  v34 = a2[2];
  v33 = a2[3];
  v36 = a2[7];
  v35 = a2[8];
  v38 = a2[4];
  v37 = a2[5];
  v39 = a2[6];
  v40 = *(v9 + 60);
  v41 = objc_allocWithZone(CLLocation);
  v42 = Date._bridgeToObjectiveC()().super.isa;
  v43 = v33;
  v44 = v34;
  v45 = v66;
  v46 = v67;
  v47 = v35;
  v48 = v68;
  v49 = v37;
  v50 = v22;
  v51 = v65;
  v52 = [v41 initWithCoordinate:v42 altitude:v43 horizontalAccuracy:v44 verticalAccuracy:v47 course:v49 speed:v38 timestamp:{v36, v39}];

  [v32 distanceFromLocation:v52];
  v54 = v53;

  v55 = v50 >= v46;
  if (v54 <= v48)
  {
    v55 = 0;
  }

  v56 = v51 >= v45 || v55;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_10000A6F0(v57, qword_1005DFB98);
  sub_1000CA264(a2, v12, type metadata accessor for SecureLocation);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    LODWORD(v68) = v54 > v48;
    LODWORD(v67) = v50 >= v46;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v70 = v61;
    *v60 = 67110146;
    *(v60 + 4) = v56;
    *(v60 + 8) = 2080;
    v62 = *v12;
    v63 = v12[1];

    sub_1000CA2CC(v12, type metadata accessor for SecureLocation);
    v64 = sub_10000D01C(v62, v63, &v70);

    *(v60 + 10) = v64;
    *(v60 + 18) = 1024;
    *(v60 + 20) = v51 >= v45;
    *(v60 + 24) = 1024;
    *(v60 + 26) = LODWORD(v67);
    *(v60 + 30) = 1024;
    *(v60 + 32) = LODWORD(v68);
    _os_log_impl(&_mh_execute_header, v58, v59, "SignificantLocation: isSignificantUpdateLocation: %{BOOL}d - %s\nisLastDonationGreaterThanHeartbeat: %{BOOL}d\nisLastDonationGreaterThanMinTime: %{BOOL}d,\nisLastDonationDistanceGreaterThanMinDistance: %{BOOL}d", v60, 0x24u);
    sub_100004984(v61);
  }

  else
  {

    sub_1000CA2CC(v12, type metadata accessor for SecureLocation);
  }

  *v69 = v56;
}

void sub_1000AB450()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewiePublishRequestNotification) + 24);
  if (v1)
  {
    v2 = *(v1 + 24);

    sub_10004B564(&qword_1005A9ED8, &qword_1004C6710);
    sub_10001DF0C(&qword_1005A9EE0, &qword_1005A9ED8, &qword_1004C6710);
    Subject<>.send()();

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = SPSecureLocationsStewiePublishRequest;
      *(v5 + 4) = SPSecureLocationsStewiePublishRequest;
      *v6 = v7;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Posted %@ notification", v5, 0xCu);
      sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
    }
  }

  else
  {
    sub_1000C9214();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v13 = 138412546;
      v16 = SPSecureLocationsStewiePublishRequest;
      *(v13 + 4) = SPSecureLocationsStewiePublishRequest;
      *v14 = v16;
      *(v13 + 12) = 2080;
      swift_errorRetain();
      v17 = v16;
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v18 = String.init<A>(describing:)();
      v20 = sub_10000D01C(v18, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error posting %@ notification. Error %s ", v13, 0x16u);
      sub_100002CE0(v14, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v15);
    }

    else
    {
    }
  }
}

uint64_t sub_1000AB850()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);

  v10 = *(v0 + 88);

  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 112);

  v14 = *(v0 + 120);

  v15 = *(v0 + 136);

  v16 = *(v0 + 152);

  v17 = *(v0 + 168);

  v18 = *(v0 + 176);

  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  v23 = *(v0 + 240);
  v24 = *(v0 + 248);
  v32 = *(v0 + 304);
  v30 = *(v0 + 272);
  v31 = *(v0 + 288);
  v29 = *(v0 + 256);
  sub_1000CA4E4(*(v0 + 192), *(v0 + 200));

  v25 = *(v0 + 328);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_lastMeDeviceRefresh, &qword_1005AE630, &qword_1004C3430);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_encryptedLocationStream, &qword_1005A9F18, &qword_1004C3490);

  v26 = *(v0 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewiePublishRequestNotification);

  v27 = *(v0 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer);

  return v0;
}

uint64_t sub_1000AB9CC()
{
  sub_1000AB850();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000ABA24(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E65644968737570;
    v6 = 0x6544656D6F747561;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 7562345;
    if (a1 != 5)
    {
      v7 = 1701080941;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x54646E6553706174;
    v2 = 6581603;
    v3 = 0x6143654D6F747561;
    if (a1 != 3)
    {
      v3 = 0x6449794D646E6966;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6449646D63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000ABB80()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1000ABC90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4734(*a1);
  *a2 = result;
  return result;
}

void sub_1000ABCC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00455649544341;
  v4 = 0x5F454D5F4F545541;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001004DDDD0;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000018;
    v3 = 0x80000001004DDDA0;
  }

  v5 = 0x80000001004DDD40;
  v6 = 0x80000001004DDD60;
  v7 = 0xD000000000000013;
  if (v2 == 1)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x80000001004DDD80;
  }

  if (*v1)
  {
    v5 = v6;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (*v1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1000ABE48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000ABA24(*a1);
  v5 = v4;
  if (v3 == sub_1000ABA24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000ABED0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000ABA24(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000ABF34()
{
  sub_1000ABA24(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000ABF88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000ABA24(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000ABFE8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4780(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000ABA24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000AC060@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4780(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC094(uint64_t a1)
{
  v2 = sub_1000C8914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AC0D0(uint64_t a1)
{
  v2 = sub_1000C8914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AC10C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005A9E98, &qword_1004C33D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1000C8914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = *(v3 + 32);
    v23 = 2;
    sub_1000C8A68();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[9];
    v23 = 4;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v3[10];
    v23 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v3[11];
    v19 = v3[12];
    LOBYTE(v22) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[13];
    v23 = 7;
    sub_10004B564(&qword_1005A9E88, &qword_1004C33D0);
    sub_1000C8ABC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v3[14];
    v23 = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v3[7];
    v21 = v3[8];
    LOBYTE(v22) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_1000AC49C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C47CC(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_1000AC51C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1000C0460(a3, 0, a2, a2, a1);
}

void sub_1000AC58C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = *(v2 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v3;
  *(v16 + 32) = a2;
  v17 = v14;

  sub_1000FE000(a1, 1, sub_1000C82E8, v16);

  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v11, v6);
  OS_dispatch_group.wait(timeout:)();
  v18(v13, v6);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFB98);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "saveLocation - timed out waiting to save locations", v22, 2u);
    }
  }
}

void sub_1000AC7F8(uint64_t a1, NSObject *a2, uint64_t a3, char a4)
{
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19[-v10];
  if (*(a1 + 16))
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;

    sub_10020D620(0, 0, v11, &unk_1004C3368, v13);

    if (a4)
    {
      v14 = type metadata accessor for Transaction();
      __chkstk_darwin(v14);
      *&v19[-16] = a3;
      *&v19[-8] = a1;
      static Transaction.named<A>(_:with:)();
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "saveLocation - No locations were updated. Not posting notification", v18, 2u);
    }
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1000ACA84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5[39];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v5;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = v10;
  aBlock[4] = sub_1000C78C0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058CCC0;
  v20 = _Block_copy(aBlock);
  sub_100005F6C(a1, a2);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v24 + 8))(v14, v11);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_1000ACDAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v63 = a5;
  v65 = a4;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v66 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v66);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v64 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v64);
  v62 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.Encoding();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  static String.Encoding.utf8.getter();
  v18 = a1;
  v19 = String.init(data:encoding:)();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v72 = a2;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005DFB98);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v60 = v13;
      v27 = v26;
      v28 = swift_slowAlloc();
      *&aBlock[0] = v28;
      *v27 = 136315138;
      v29 = sub_10000D01C(v21, v22, aBlock);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "jsonString %s", v27, 0xCu);
      sub_100004984(v28);

      v13 = v60;
    }

    else
    {
    }

    a2 = v72;
  }

  v30 = type metadata accessor for JSONDecoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = JSONDecoder.init()();
  sub_1000C78D8();
  v72 = v33;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v85 = v78;
  *v86 = v79;
  *&v86[16] = v80;
  v87 = v81;
  aBlock[0] = v74;
  aBlock[1] = v75;
  v83 = v76;
  v84 = v77;
  if (v76 > 2u)
  {
    if (v76 == 3)
    {
      sub_1000AF5F8();
    }

    else if (v76 == 4)
    {
      sub_1000AF810(aBlock);
    }

    else
    {
      sub_1000AFF08();
    }

LABEL_55:
    sub_1000C792C(aBlock);
    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v50 = v62;
    v51 = v64;
    (*(v13 + 104))(v62, enum case for DispatchQoS.QoSClass.default(_:), v64);
    v52 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v50, v51);
    v53 = swift_allocObject();
    v54 = v63;
    *(v53 + 16) = v65;
    *(v53 + 24) = v54;
    *&v76 = sub_1000C795C;
    *(&v76 + 1) = v53;
    *&v74 = _NSConcreteStackBlock;
    *(&v74 + 1) = 1107296256;
    *&v75 = sub_100020828;
    *(&v75 + 1) = &unk_10058CD60;
    v55 = _Block_copy(&v74);

    v56 = v67;
    static DispatchQoS.unspecified.getter();
    v73 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v57 = v68;
    v58 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v55);

    (*(v71 + 8))(v57, v58);
    (*(v69 + 8))(v56, v70);
  }

  if (v76)
  {
    if (v76 == 1)
    {
      if (*(&v85 + 1) && *(*(&v85 + 1) + 16))
      {
        v34 = v84;
        if (v84)
        {
          v35 = *(&v83 + 1);
          v36 = qword_1005A7EF8;

          if (v36 != -1)
          {
            swift_once();
          }

          if (v35 != 1702195828 || v34 != 0xE400000000000000)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          sub_1000D3620();
        }

        sub_1000AF20C(aBlock);
      }

      else
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000A6F0(v46, qword_1005DFB98);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "No findMyIds specified for distributeKeysCommand", v49, 2u);
        }
      }
    }

    else
    {
      v40 = v84;
      if (v84)
      {
        v41 = *(&v83 + 1);
        v42 = qword_1005A7EF8;

        if (v42 != -1)
        {
          swift_once();
        }

        if (v41 != 1702195828 || v40 != 0xE400000000000000)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        sub_1000D3620();
      }

      sub_1000AEEA8(aBlock);
    }

    goto LABEL_55;
  }

  if (!*&v86[16] || *&v86[8] != __PAIR128__(0x80000001004DDB80, 0xD000000000000013) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10004B564(&qword_1005A9DF0, &qword_1004C32D0), unsafeFromAsyncTask<A>(_:)(), (v37 = v74) == 0))
  {
    v43 = v84;
    if (v84)
    {
      v44 = *(&v83 + 1);
      v45 = qword_1005A7EF8;

      if (v45 != -1)
      {
        swift_once();
      }

      if (v44 != 1702195828 || v43 != 0xE400000000000000)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_1000D3620();
    }

    sub_1000AE250(aBlock);
    goto LABEL_55;
  }

  type metadata accessor for Transaction();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v18;
  v39 = v61;
  v38[4] = a2;
  v38[5] = v39;
  swift_retain_n();
  sub_100005F6C(v18, a2);
  static Transaction.asyncTask(name:block:)();

  sub_1000C792C(aBlock);
}

uint64_t sub_1000ADBD0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1000ADC64;

  return daemon.getter();
}

uint64_t sub_1000ADC64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  MyService = type metadata accessor for MicroFindMyService(0);
  v9 = sub_10001DFA8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10001DFA8(&qword_1005A9DF8, type metadata accessor for MicroFindMyService);
  *v6 = v12;
  v6[1] = sub_1000ADE40;

  return ActorServiceDaemon.getService<A>()(v7, MyService, v9, v10);
}

uint64_t sub_1000ADE40(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = *(v4 + 32);
  if (v1)
  {

    v9 = sub_1000ADFB4;
  }

  else
  {

    *(v5 + 48) = a1;
    v9 = sub_1000ADF94;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000ADFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000ADFF8, a1, 0);
}

uint64_t sub_1000ADFF8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1003BFFFC();
  v0[5] = 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000AE0AC()
{
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005A98B8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error forwarding push payload: %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_1000AE250(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 80);
  v107 = *(a1 + 64);
  v108 = v4;
  v109 = *(a1 + 96);
  v110 = *(a1 + 112);
  v5 = *(a1 + 16);
  v103 = *a1;
  v104 = v5;
  v6 = *(a1 + 48);
  v105 = *(a1 + 32);
  v106 = v6;
  v7 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v86 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v89 = &v86 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v2 + 312);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v87 = v16;
    if (qword_1005A7ED8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v88 = type metadata accessor for Logger();
  sub_10000A6F0(v88, qword_1005A98B8);
  sub_1000C7A34(a1, &v95);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  sub_1000C792C(a1);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v92 = v2;
    v28 = v27;
    v29 = swift_slowAlloc();
    v93 = v29;
    *v28 = 136315138;
    v30 = *(a1 + 80);
    v99 = *(a1 + 64);
    v100 = v30;
    v101 = *(a1 + 96);
    v102 = *(a1 + 112);
    v31 = *(a1 + 16);
    v95 = *a1;
    v96 = v31;
    v32 = *(a1 + 48);
    v97 = *(a1 + 32);
    v98 = v32;
    sub_1000C7A34(a1, v94);
    v33 = String.init<A>(describing:)();
    v35 = sub_10000D01C(v33, v34, &v93);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "Received startLocate command %s", v28, 0xCu);
    sub_100004984(v29);

    v2 = v92;
  }

  v36 = v91;
  v37 = *(a1 + 80);
  if (v37 && v37[2])
  {
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    sub_1000D735C(v10);

    v38 = v90;
    v39 = (*(v36 + 48))(v10, 1, v90);
    v92 = v2;
    if (v39 == 1)
    {
      sub_100002CE0(v10, &unk_1005AE5B0, &qword_1004C32F0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v95 = v43;
        *v42 = 136315138;
        if (qword_1005A7ED0 != -1)
        {
          swift_once();
        }

        *(v42 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v95);
        _os_log_impl(&_mh_execute_header, v40, v41, "%s: Cannot find any date object", v42, 0xCu);
        sub_100004984(v43);
      }

      goto LABEL_33;
    }

    (*(v36 + 32))(v89, v10, v38);
    v47 = v87;
    static Date.trustedNow.getter(v87);
    v48 = static Date.> infix(_:_:)();
    v49 = *(v36 + 8);
    v49(v47, v38);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    if (v48)
    {
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v95 = v54;
        *v53 = 136315138;
        if (qword_1005A7ED0 != -1)
        {
          swift_once();
        }

        *(v53 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v95);
        _os_log_impl(&_mh_execute_header, v50, v51, "%s: AutoMe threshold is active, don't publish live locations. Proceed to communicate location & connected devices to server.", v53, 0xCu);
        sub_100004984(v54);

        v49(v89, v90);
LABEL_33:
        if (v37[2])
        {
          v59 = *(a1 + 72);
          if (v59)
          {
            if (v59[2])
            {
              v60 = v37[4];
              v61 = v37[5];
              v62 = v59[5];
              v90 = v59[4];
              v91 = v60;
              v63 = v92;
              v64 = *(v92 + 272);
              v99 = *(v92 + 256);
              v100 = v64;
              v101 = *(v92 + 288);
              v102 = *(v92 + 304);
              v65 = *(v92 + 208);
              v95 = *(v92 + 192);
              v96 = v65;
              v66 = *(v92 + 240);
              v97 = *(v92 + 224);
              v98 = v66;
              v67 = v103;
              v68 = v104;
              v69 = v106;
              *(v92 + 224) = v105;
              *(v63 + 240) = v69;
              *(v63 + 192) = v67;
              *(v63 + 208) = v68;
              v70 = v107;
              v71 = v108;
              v72 = v109;
              *(v63 + 304) = v110;
              *(v63 + 272) = v71;
              *(v63 + 288) = v72;
              *(v63 + 256) = v70;
              sub_1000C7A34(a1, v94);

              sub_100002CE0(&v95, &qword_1005A9E00, &qword_1004C32F8);
              if (*(a1 + 96))
              {
                v73 = *(a1 + 88);
                v74 = *(a1 + 96);
              }

              else
              {
                v74 = 0xE900000000000065;
                v73 = 0x76697463616F7270;
              }

              v83 = type metadata accessor for Transaction();
              __chkstk_darwin(v83);
              v84 = v91;
              *(&v86 - 8) = v92;
              *(&v86 - 7) = v84;
              v85 = v90;
              *(&v86 - 6) = v61;
              *(&v86 - 5) = v85;
              *(&v86 - 4) = v62;
              *(&v86 - 3) = a1;
              *(&v86 - 2) = v73;
              *(&v86 - 1) = v74;

              static Transaction.named<A>(_:with:)();

              return;
            }
          }
        }

        if (qword_1005A7EE0 != -1)
        {
          swift_once();
        }

        v75 = qword_1005DFB60;
        v76 = *(qword_1005DFB60 + 16);
        v77 = swift_allocObject();
        v77[2] = v75;
        v77[3] = 0xD00000000000001BLL;
        v77[4] = 0x80000001004DF450;
        v78 = swift_allocObject();
        *(v78 + 16) = sub_1000C7A6C;
        *(v78 + 24) = v77;
        *&v97 = sub_1000C7A78;
        *(&v97 + 1) = v78;
        *&v95 = _NSConcreteStackBlock;
        *(&v95 + 1) = 1107296256;
        *&v96 = sub_10013EC94;
        *(&v96 + 1) = &unk_10058CE00;
        v79 = _Block_copy(&v95);
        swift_retain_n();

        dispatch_sync(v76, v79);
        _Block_release(v79);
        LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

        if (v79)
        {
          __break(1u);
        }

        else
        {
          sub_1000B01BC(a1);
          if (qword_1005A7EE8 == -1)
          {
LABEL_42:
            sub_10000A6F0(v88, qword_1005DFB98);
            v80 = Logger.logObject.getter();
            v81 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              *v82 = 0;
              _os_log_impl(&_mh_execute_header, v80, v81, "startLocate - no locationId or findMyId specified in push. Cannot start locate", v82, 2u);
            }

            return;
          }
        }

        swift_once();
        goto LABEL_42;
      }
    }

    else
    {
      if (v52)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v95 = v56;
        *v55 = 136315138;
        if (qword_1005A7ED0 != -1)
        {
          swift_once();
        }

        *(v55 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v95);
        _os_log_impl(&_mh_execute_header, v50, v51, "%s: Valid Location monitoring threshold, removing existing value", v55, 0xCu);
        sub_100004984(v56);
      }

      else
      {
      }

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      unsafeFromAsyncTask<A>(_:)();

      v57 = *(v95 + 16);

      v58 = *(a1 + 112);
      if (v58 && *(v58 + 16) == v57)
      {
        sub_1000AFF08();
      }
    }

    v49(v89, v90);
    goto LABEL_33;
  }

  sub_1000A7FE4();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "startLocate - no locationIds received. Possibly me device change or SML was turned ON. Starting location monitor", v46, 2u);
  }

  sub_1000B01BC(a1);
}

void sub_1000AEEA8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 312);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  sub_1000C7A34(a1, v31);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  sub_1000C792C(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    v15 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v15;
    v31[6] = *(a1 + 96);
    v32 = *(a1 + 112);
    v16 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v16;
    v17 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v17;
    sub_1000C7A34(a1, v29);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, &v30);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received stopLocate %s", v13, 0xCu);
    sub_100004984(v14);
  }

  v21 = *(a1 + 72);
  if (v21 && v21[2])
  {
    v23 = v21[4];
    v22 = v21[5];
    if (*(a1 + 96))
    {
      v24 = *(a1 + 88);
      v25 = *(a1 + 96);
    }

    else
    {
      v25 = 0xE900000000000065;
      v24 = 0x76697463616F7270;
    }

    sub_1000C1590(v23, v22, v24, v25, 0);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No findMyId specified for StopLocate", v28, 2u);
    }
  }
}

void sub_1000AF20C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 312);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFB98);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received distributeKeys command", v14, 2u);
  }

  v15 = *(a1 + 72);
  v38 = v15;
  if (v15 && v15[2])
  {
    v17 = v15[4];
    v16 = v15[5];
    if (*(a1 + 104))
    {
      v18 = *(a1 + 104);
    }

    else
    {
      v18 = _swiftEmptyDictionarySingleton;
    }

    v19 = v15[5];

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = v17;
      v23 = v22;
      v35 = swift_slowAlloc();
      v37[0] = v35;
      *v23 = 136315138;
      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      v24 = Dictionary.description.getter();
      v26 = v2;
      v27 = v16;
      v28 = sub_10000D01C(v24, v25, v37);

      *(v23 + 4) = v28;
      v16 = v27;
      v2 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "shareKey pushIdentifiers %s", v23, 0xCu);
      sub_100004984(v35);

      v17 = v36;
    }

    v29 = *(v2 + 24);
    v30 = swift_allocObject();
    v31 = *(a1 + 80);
    *(v30 + 104) = *(a1 + 64);
    *(v30 + 120) = v31;
    *(v30 + 136) = *(a1 + 96);
    v32 = *(a1 + 16);
    *(v30 + 40) = *a1;
    *(v30 + 56) = v32;
    v33 = *(a1 + 48);
    *(v30 + 72) = *(a1 + 32);
    *(v30 + 16) = v2;
    *(v30 + 24) = v17;
    *(v30 + 32) = v16;
    v34 = *(a1 + 112);
    *(v30 + 88) = v33;
    *(v30 + 152) = v34;
    *(v30 + 160) = v15;

    sub_1000C7A34(a1, v37);
    sub_100005F04(&v38, v37, &qword_1005A9E20, &qword_1004C3350);
    sub_1000EB6B4(v15, v18, 0, sub_1000C7E38, v30);
  }
}

uint64_t sub_1000AF5F8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 312);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling FetchLabelledLocations command", v12, 2u);
  }

  sub_1004B775C();
  sub_1000C4F64(0);
  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

void sub_1000AF810(uint64_t a1)
{
  v6 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 312);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v18 = *(v11 + 8);
  v17 = (v11 + 8);
  v18(v14, v10);
  if (v15)
  {
    v19 = *(a1 + 64);
    v4 = &XPC_ACTIVITY_REQUIRES_CLASS_C_ptr;
    p_type = &stru_1005A4FF0.type;
    v17 = &stru_1005A4FF0.type;
    v2 = &off_1005A7000;
    if (v19)
    {
      v20 = *(a1 + 56);
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v44 = 0;
      if (sub_1000B9F08(v20, v19))
      {
        Date.init(timeIntervalSince1970:)();
        v21 = type metadata accessor for Date();
        (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
        sub_100002CE0(v9, &unk_1005AE5B0, &qword_1004C32F0);
        v22 = [objc_opt_self() standardUserDefaults];
        v23 = String._bridgeToObjectiveC()();
        v24 = String._bridgeToObjectiveC()();
        [v22 setValue:v23 forKey:v24];

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_10000A6F0(v25, qword_1005DFB98);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v28 = 136315394;
          if (qword_1005A7ED0 != -1)
          {
            swift_once();
          }

          *(v28 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v44);
          *(v28 + 12) = 2080;
          *(v28 + 14) = sub_10000D01C(v20, v19, &v44);
          _os_log_impl(&_mh_execute_header, v26, v27, "%s: Set %s", v28, 0x16u);
          swift_arrayDestroy();

          v17 = (&stru_1005A4FF0 + 16);
        }

        else
        {
        }

        goto LABEL_20;
      }

      v29 = type metadata accessor for Date();
      (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
      sub_100002CE0(v9, &unk_1005AE5B0, &qword_1004C32F0);
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A6F0(v30, qword_1005DFB98);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;
      if (qword_1005A7ED0 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v44);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s:  Cannot set date", v33, 0xCu);
      sub_100004984(v34);
    }

LABEL_20:
    if (qword_1005A7EF8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_21:
  v35 = v4[74];
  v36 = [objc_opt_self() p_type[500]];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v38 = String._bridgeToObjectiveC()();
  [v36 v17[501]];

  if (v2[477] != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000A6F0(v39, qword_1005DFB98);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Received autoMeIsActive command. Set autoMeActive to true", v42, 2u);
  }
}

void sub_1000AFF08()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 312);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  p_type = (v2 + 8);
  v9(v5, v1);
  if (v6)
  {
    v1 = objc_opt_self();
    p_type = &stru_1005A4FF0.type;
    v10 = [v1 standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    [v10 removeObjectForKey:v11];

    if (qword_1005A7EF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = [v1 p_type[500]];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v14 = String._bridgeToObjectiveC()();
  [v12 setValue:isa forKey:v14];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005DFB98);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received autoMeIsInactive command. Set autoMeActive to false", v18, 2u);
  }
}

void sub_1000B01BC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  __chkstk_darwin(v2);
  v59 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v60);
  v57 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v53 - v9;
  v11 = type metadata accessor for Credentials(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v53[2] = v15;
  v54 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = v53 - v16;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000A6F0(v17, qword_1005DFB98);
  sub_1000C7A34(a1, &v65);
  v53[1] = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_1000C792C(a1);
  v21 = os_log_type_enabled(v19, v20);
  v62 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v53[0] = v2;
    v24 = v23;
    v64 = v23;
    *v22 = 136315138;
    v25 = *(a1 + 80);
    v69 = *(a1 + 64);
    v70 = v25;
    v71 = *(a1 + 96);
    v72 = *(a1 + 112);
    v26 = *(a1 + 16);
    v65 = *a1;
    v66 = v26;
    v27 = *(a1 + 48);
    v67 = *(a1 + 32);
    v68 = v27;
    sub_1000C7A34(a1, v63);
    v28 = String.init<A>(describing:)();
    v30 = sub_10000D01C(v28, v29, &v64);

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "PushAck: Sending ACK for %s", v22, 0xCu);
    sub_100004984(v24);
    v2 = v53[0];
  }

  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v31 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v32 = sub_10000A6F0(v31, qword_1005AF7C0);
  os_unfair_lock_lock(v32);
  sub_100005F04(v32 + *(v31 + 28), v10, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v32);
  v33 = v62;
  if ((*(v62 + 48))(v10, 1, v11) == 1)
  {
    sub_100002CE0(v10, &qword_1005A9DA8, &unk_1004D1130);
    v65 = 0uLL;
    LOBYTE(v66) = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63[0] = v37;
      *v36 = 136315138;
      v65 = 0uLL;
      LOBYTE(v66) = 2;
      v38 = String.init<A>(describing:)();
      v40 = sub_10000D01C(v38, v39, v63);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "PushAck - failed to get credentials error %s", v36, 0xCu);
      sub_100004984(v37);
    }
  }

  else
  {
    v41 = v55;
    sub_1000C9DE8(v10, v55, type metadata accessor for Credentials);
    v42 = v56;
    v43 = *(v56 + 312);
    v44 = v54;
    sub_1000CA264(v41, v54, type metadata accessor for Credentials);
    v45 = (*(v33 + 80) + 144) & ~*(v33 + 80);
    v46 = swift_allocObject();
    v47 = *(a1 + 80);
    *(v46 + 88) = *(a1 + 64);
    *(v46 + 104) = v47;
    *(v46 + 120) = *(a1 + 96);
    v48 = *(a1 + 16);
    *(v46 + 24) = *a1;
    *(v46 + 40) = v48;
    v49 = *(a1 + 48);
    *(v46 + 56) = *(a1 + 32);
    *(v46 + 16) = v42;
    *(v46 + 136) = *(a1 + 112);
    *(v46 + 72) = v49;
    sub_1000C9DE8(v44, v46 + v45, type metadata accessor for Credentials);
    v63[4] = sub_1000C7B98;
    v63[5] = v46;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 1107296256;
    v63[2] = sub_100020828;
    v63[3] = &unk_10058CF18;
    v50 = _Block_copy(v63);
    sub_1000C7A34(a1, &v65);

    v51 = v57;
    static DispatchQoS.unspecified.getter();
    *&v65 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v52 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v50);
    (*(v61 + 8))(v52, v2);
    (*(v58 + 8))(v51, v60);
    sub_1000CA2CC(v41, type metadata accessor for Credentials);
  }
}

uint64_t sub_1000B09A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a2 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = *(a7 + 80);
  *(v16 + 96) = *(a7 + 64);
  *(v16 + 112) = v17;
  *(v16 + 128) = *(a7 + 96);
  v18 = *(a7 + 112);
  v19 = *(a7 + 16);
  *(v16 + 32) = *a7;
  *(v16 + 48) = v19;
  v20 = *(a7 + 48);
  *(v16 + 64) = *(a7 + 32);
  *(v16 + 80) = v20;
  *(v16 + 144) = v18;
  *(v16 + 152) = a5;
  *(v16 + 160) = a6;
  *(v16 + 168) = a8;
  *(v16 + 176) = a9;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = v15;
  v21[7] = sub_1000C7B50;
  v21[8] = v16;
  swift_bridgeObjectRetain_n();

  sub_1000C7A34(a7, v25);

  sub_1000E69C8();
}

void sub_1000B0B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!a1)
  {
    sub_1000A82D8(a5, a6, a7, a8, 0);
    v22 = a4;
    goto LABEL_11;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v14 = String.init<A>(describing:)();
    v16 = sub_10000D01C(v14, v15, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "startLocate - unable to verify locationId. Cannot start monitor %s", v12, 0xCu);
    sub_100004984(v13);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v17 = qword_1005DFB60;
  v18 = *(qword_1005DFB60 + 16);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = 0xD00000000000001ELL;
  v19[4] = 0x80000001004DF4C0;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000CAB60;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1000CAA0C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_10058CEC8;
  v21 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if ((v18 & 1) == 0)
  {
    v22 = a4;
LABEL_11:
    sub_1000B01BC(v22);
    Transaction.capture()();
    return;
  }

  __break(1u);
}

void sub_1000B0E58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (*(a5 + 96))
    {
      v8 = *(a5 + 88);
      v9 = *(a5 + 96);
    }

    else
    {
      v9 = 0xE900000000000065;
      v8 = 0x76697463616F7270;
    }

    sub_1000A82D8(a3, a4, v8, v9, 0);

    if (qword_1005A7EE0 == -1)
    {
      if (static SystemInfo.underTest.getter())
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    swift_once();
    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
LABEL_7:
      v10 = String._bridgeToObjectiveC()();
      v11 = swift_allocObject();
      *(v11 + 16) = 1;
      aBlock[4] = sub_1000C7E4C;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000119E4;
      aBlock[3] = &unk_10058D0A8;
      v12 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v12);
    }
  }

LABEL_8:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFB98);

  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v17 = Array.description.getter();
    v19 = sub_10000D01C(v17, v18, aBlock);

    *(v16 + 14) = v19;
    *(v16 + 22) = 2080;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v20 = String.init<A>(describing:)();
    v22 = sub_10000D01C(v20, v21, aBlock);

    *(v16 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "completed shareKey to %{private,mask.hash}s Error %s", v16, 0x20u);
    swift_arrayDestroy();
  }

  sub_1000B01BC(a5);
}

uint64_t sub_1000B11C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v34 = &v32 - v6;
  v7 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Credentials(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = qword_1005A8098;
  v36 = a2;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v20 = sub_10000A6F0(v19, qword_1005AF7C0);
  os_unfair_lock_lock(v20);
  sub_100005F04(v20 + *(v19 + 28), v10, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100002CE0(v10, &qword_1005A9DA8, &unk_1004D1130);
    v37 = 0;
    v38 = 0;
    v39 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    v21 = swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 2;
    sub_1000C50DC(v21);
  }

  else
  {
    v24 = v12;
    v33 = v16;
    sub_1000C9DE8(v10, v16, type metadata accessor for Credentials);
    v25 = type metadata accessor for TaskPriority();
    v26 = v34;
    (*(*(v25 - 8) + 56))(v34, 1, 1, v25);
    v27 = v16;
    v28 = v35;
    sub_1000CA264(v27, v35, type metadata accessor for Credentials);
    v29 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v36;
    sub_1000C9DE8(v28, v30 + v29, type metadata accessor for Credentials);
    v31 = (v30 + ((v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_1000C7E70;
    v31[1] = v17;

    sub_1001D7F30(0, 0, v26, &unk_1004C3360, v30);

    return sub_1000CA2CC(v33, type metadata accessor for Credentials);
  }
}

void sub_1000B1610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v5 = type metadata accessor for Credentials(0);
  v119 = *(v5 - 8);
  v6 = *(v119 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v106 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v121 = (&v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v118 = &v106 - v17;
  v18 = [objc_opt_self() currentDevice];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 uniqueDeviceIdentifier];

    if (v20)
    {
      v117 = v13;
      v116 = v12;
      v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = *(a1 + 144);
      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      OS_dispatch_queue.sync<A>(execute:)();
      if (!*(&v123 + 1))
      {

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_10000A6F0(v48, qword_1005DFB98);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v49, v50))
        {
          goto LABEL_103;
        }

        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "No APS token. Not proceeding with PushAck";
LABEL_102:
        _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_103:

        return;
      }

      v113 = 0;
      v112 = v22;
      v111 = v123;

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      unsafeFromAsyncTask<A>(_:)();

      v24 = v123;
      v25 = qword_1005A7EE8;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      v27 = sub_10000A6F0(v26, qword_1005DFB98);

      sub_1000C7A34(a2, &v123);
      v109 = v27;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      sub_1000C792C(a2);

      v30 = os_log_type_enabled(v28, v29);
      v114 = a2;
      v110 = v24;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v108 = a1;
        v32 = v31;
        *&v123 = swift_slowAlloc();
        *v32 = 141558787;
        *(v32 + 4) = 1752392040;
        *(v32 + 12) = 2081;
        if (*(a2 + 112))
        {
          v33 = *(a2 + 112);
        }

        v34 = v11;
        v35 = Array.description.getter();
        v107 = v7;
        v37 = v36;

        v38 = sub_10000D01C(v35, v37, &v123);

        *(v32 + 14) = v38;
        v11 = v34;
        *(v32 + 22) = 2160;
        *(v32 + 24) = 1752392040;
        *(v32 + 32) = 2081;
        v39 = Array.description.getter();
        v41 = v40;

        v42 = sub_10000D01C(v39, v41, &v123);

        *(v32 + 34) = v42;
        v7 = v107;
        _os_log_impl(&_mh_execute_header, v28, v29, "Watch Monitoring: Watches to check connection got through Server are %{private,mask.hash}s. Watches connected now sending to pushAck are %{private,mask.hash}s", v32, 0x2Au);
        swift_arrayDestroy();

        a1 = v108;
      }

      else
      {
      }

      v53 = v116;
      if (qword_1005A7EE0 != -1)
      {
        v43 = swift_once();
      }

      v54 = qword_1005DFB60;
      v55 = *(qword_1005DFB60 + 16);
      __chkstk_darwin(v43);
      *(&v106 - 2) = v54;
      *(&v106 - 8) = 1;

      sub_10004B564(&qword_1005A9E18, &qword_1004C3338);
      OS_dispatch_queue.sync<A>(execute:)();

      v56 = v123;
      v57 = v114;
      v59 = *v114;
      v58 = v114[1];
      v60 = HIBYTE(v58) & 0xF;
      v61 = *v114 & 0xFFFFFFFFFFFFLL;
      if ((v58 & 0x2000000000000000) != 0)
      {
        v62 = HIBYTE(v58) & 0xF;
      }

      else
      {
        v62 = *v114 & 0xFFFFFFFFFFFFLL;
      }

      if (!v62)
      {
        goto LABEL_86;
      }

      if ((v58 & 0x1000000000000000) != 0)
      {
        v101 = v114[1];

        v65 = sub_1004BA5C8(v59, v58, 10);
        v103 = v102;

        if ((v103 & 1) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      if ((v58 & 0x2000000000000000) != 0)
      {
        *&v123 = *v114;
        *(&v123 + 1) = v58 & 0xFFFFFFFFFFFFFFLL;
        if (v59 == 43)
        {
          if (v60)
          {
            if (--v60)
            {
              v65 = 0;
              v75 = &v123 + 1;
              while (1)
              {
                v76 = *v75 - 48;
                if (v76 > 9)
                {
                  break;
                }

                v77 = 10 * v65;
                if ((v65 * 10) >> 64 != (10 * v65) >> 63)
                {
                  break;
                }

                v65 = v77 + v76;
                if (__OFADD__(v77, v76))
                {
                  break;
                }

                ++v75;
                if (!--v60)
                {
                  goto LABEL_85;
                }
              }
            }

            goto LABEL_84;
          }

          goto LABEL_110;
        }

        if (v59 != 45)
        {
          if (v60)
          {
            v65 = 0;
            v80 = &v123;
            while (1)
            {
              v81 = *v80 - 48;
              if (v81 > 9)
              {
                break;
              }

              v82 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                break;
              }

              v65 = v82 + v81;
              if (__OFADD__(v82, v81))
              {
                break;
              }

              v80 = (v80 + 1);
              if (!--v60)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_84;
        }

        if (v60)
        {
          if (--v60)
          {
            v65 = 0;
            v69 = &v123 + 1;
            while (1)
            {
              v70 = *v69 - 48;
              if (v70 > 9)
              {
                break;
              }

              v71 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                break;
              }

              v65 = v71 - v70;
              if (__OFSUB__(v71, v70))
              {
                break;
              }

              ++v69;
              if (!--v60)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_84;
        }
      }

      else
      {
        if ((v59 & 0x1000000000000000) != 0)
        {
          v63 = ((v58 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v104 = *v114;
          v105 = v114[1];
          v63 = _StringObject.sharedUTF8.getter();
        }

        v64 = *v63;
        if (v64 == 43)
        {
          if (v61 >= 1)
          {
            v60 = v61 - 1;
            if (v61 != 1)
            {
              v65 = 0;
              if (v63)
              {
                v72 = v63 + 1;
                while (1)
                {
                  v73 = *v72 - 48;
                  if (v73 > 9)
                  {
                    goto LABEL_84;
                  }

                  v74 = 10 * v65;
                  if ((v65 * 10) >> 64 != (10 * v65) >> 63)
                  {
                    goto LABEL_84;
                  }

                  v65 = v74 + v73;
                  if (__OFADD__(v74, v73))
                  {
                    goto LABEL_84;
                  }

                  ++v72;
                  if (!--v60)
                  {
                    goto LABEL_85;
                  }
                }
              }

              goto LABEL_76;
            }

            goto LABEL_84;
          }

          goto LABEL_109;
        }

        if (v64 != 45)
        {
          if (v61)
          {
            v65 = 0;
            if (v63)
            {
              while (1)
              {
                v78 = *v63 - 48;
                if (v78 > 9)
                {
                  goto LABEL_84;
                }

                v79 = 10 * v65;
                if ((v65 * 10) >> 64 != (10 * v65) >> 63)
                {
                  goto LABEL_84;
                }

                v65 = v79 + v78;
                if (__OFADD__(v79, v78))
                {
                  goto LABEL_84;
                }

                ++v63;
                if (!--v61)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_76;
          }

LABEL_84:
          v65 = 0;
          LOBYTE(v60) = 1;
LABEL_85:
          v122 = v60;
          if ((v60 & 1) == 0)
          {
LABEL_87:
            v84 = v121;
            static Date.trustedNow.getter(v121);
            v85 = Date.epoch.getter();
            (*(v117 + 8))(v84, v53);
            v86 = *(v57 + 32);
            if (v86 > 2)
            {
              v87 = v112;
              if (v86 == 3)
              {
                v88 = 0x80000001004DDDA0;
                v89 = 0xD000000000000018;
              }

              else if (v86 == 4)
              {
                v88 = 0xEE00455649544341;
                v89 = 0x5F454D5F4F545541;
              }

              else
              {
                v89 = 0xD000000000000010;
                v88 = 0x80000001004DDDD0;
              }
            }

            else
            {
              v87 = v112;
              if (*(v57 + 32))
              {
                if (v86 == 1)
                {
                  v88 = 0x80000001004DDD60;
                  v89 = 0xD000000000000017;
                }

                else
                {
                  v88 = 0x80000001004DDD80;
                  v89 = 0xD000000000000013;
                }
              }

              else
              {
                v88 = 0x80000001004DDD40;
                v89 = 0xD000000000000014;
              }
            }

            v91 = v57[2];
            v90 = v57[3];
            *&v123 = v65;
            *(&v123 + 1) = v85;
            v124 = v91;
            v125 = v90;
            v126 = v56;
            v127 = v111;
            v128 = v115;
            v129 = v87;
            strcpy(v130, "searchpartyd");
            HIBYTE(v130[6]) = 0;
            v130[7] = -5120;
            v131 = _swiftEmptyDictionarySingleton;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0;
            v136 = v110;
            v137 = v89;
            v138 = v88;

            v92 = sub_10018CB04(&v123);
            if (v92)
            {
              v95 = v92;
              v96 = v93;
              v97 = v94;
              v98 = type metadata accessor for TaskPriority();
              (*(*(v98 - 8) + 56))(v11, 1, 1, v98);
              sub_1000CA264(v120, v7, type metadata accessor for Credentials);
              v99 = (*(v119 + 80) + 64) & ~*(v119 + 80);
              v100 = swift_allocObject();
              v100[2] = 0;
              v100[3] = 0;
              v100[4] = a1;
              v100[5] = v95;
              v100[6] = v96;
              v100[7] = v97;
              sub_1000C9DE8(v7, v100 + v99, type metadata accessor for Credentials);

              sub_1001D7F30(0, 0, v11, &unk_1004C3348, v100);

              return;
            }

            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v49, v50))
            {
              goto LABEL_103;
            }

            v51 = swift_slowAlloc();
            *v51 = 0;
            v52 = "PushAck - unable to create request";
            goto LABEL_102;
          }

LABEL_86:
          v83 = v118;
          static Date.trustedNow.getter(v118);
          v65 = Date.epoch.getter();
          (*(v117 + 8))(v83, v53);
          goto LABEL_87;
        }

        if (v61 >= 1)
        {
          v60 = v61 - 1;
          if (v61 != 1)
          {
            v65 = 0;
            if (v63)
            {
              v66 = v63 + 1;
              while (1)
              {
                v67 = *v66 - 48;
                if (v67 > 9)
                {
                  goto LABEL_84;
                }

                v68 = 10 * v65;
                if ((v65 * 10) >> 64 != (10 * v65) >> 63)
                {
                  goto LABEL_84;
                }

                v65 = v68 - v67;
                if (__OFSUB__(v68, v67))
                {
                  goto LABEL_84;
                }

                ++v66;
                if (!--v60)
                {
                  goto LABEL_85;
                }
              }
            }

LABEL_76:
            LOBYTE(v60) = 0;
            goto LABEL_85;
          }

          goto LABEL_84;
        }

        __break(1u);
      }

      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      return;
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000A6F0(v44, qword_1005DFB98);
  v121 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v121, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v121, v45, "Unable to get device identifier for server PushAck", v46, 2u);
  }

  v47 = v121;
}

uint64_t sub_1000B23E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000B2404, 0, 0);
}

uint64_t sub_1000B2404()
{
  v1 = *(*(v0 + 24) + 64);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000B2498;

  return sub_1000847C8();
}

uint64_t sub_1000B2498(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000B2598, 0, 0);
}

uint64_t sub_1000B25B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for Response();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000B268C, 0, 0);
}

uint64_t sub_1000B268C()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_10000A6F0(v1, qword_1005DFB98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending PushAck server request", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];

  v7 = *(v6 + 56);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1000B2800;
  v9 = v0[11];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];

  return sub_1001CF6CC(v9, v5, v12, v10, 1, v11, 1, 0);
}

uint64_t sub_1000B2800()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1000B2A98;
  }

  else
  {
    v3 = sub_1000B2914;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B2914()
{
  v1 = v0[12];
  (*(v0[9] + 16))(v0[10], v0[11], v0[8]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = Response.statusCode.getter();
    v10 = *(v6 + 8);
    v10(v5, v7);
    *(v8 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "PushAck received status %ld", v8, 0xCu);
  }

  else
  {
    v10 = *(v6 + 8);
    v10(v0[10], v0[8]);
  }

  v11 = v0[11];
  v12 = v0[8];

  v10(v11, v12);
  v14 = v0[10];
  v13 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000B2A98()
{
  v17 = v0;
  v1 = v0[14];
  v2 = v0[12];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "PushAck request failed %s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
    v11 = v0[14];
  }

  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000B2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v10 = *(v9 + 64) + 15;
  v7[23] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v7[27] = v14;
  v15 = *(v14 - 8);
  v7[28] = v15;
  v16 = *(v15 + 64) + 15;
  v7[29] = swift_task_alloc();
  v17 = type metadata accessor for Response();
  v7[30] = v17;
  v18 = *(v17 - 8);
  v7[31] = v18;
  v7[32] = *(v18 + 64);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000B2E34, 0, 0);
}

uint64_t sub_1000B2E34()
{
  v1 = *(v0[17] + 56);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1000B2EEC;
  v3 = v0[35];
  v4 = v0[18];

  return sub_1001CF6CC(v3, 1, 0, 0, 4, v4, 1, 0);
}

uint64_t sub_1000B2EEC()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1000B34E4;
  }

  else
  {
    v3 = sub_1000B3000;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B3000()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);
  v42 = *(v4 + 16);
  v42(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  v10 = v0[30];
  v11 = v0[31];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = Response.statusCode.getter();
    v46 = *(v11 + 8);
    v46(v9, v10);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "FetchLabelledLocations - response code %ld", v12, 0xCu);
  }

  else
  {
    v46 = *(v11 + 8);
    v46(v9, v10);
  }

  v14 = v0[35];
  v15 = v0[33];
  v36 = v0[32];
  v16 = v0[30];
  v17 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[27];
  v39 = v0[26];
  v44 = v0[25];
  v45 = v0[24];
  v43 = v0[22];
  v40 = v0[23];
  v41 = v0[21];
  v37 = v0[19];
  v38 = v0[20];
  v35 = v0[17];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v19 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v20);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v18, v20);
  v42(v15, v14, v16);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v35;
  (*(v17 + 32))(v23 + v22, v15, v16);
  v24 = (v23 + ((v36 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v37;
  v24[1] = v38;
  v0[12] = sub_1000C80CC;
  v0[13] = v23;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058D198;
  v25 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[16] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v43 + 8))(v40, v41);
  (*(v44 + 8))(v39, v45);
  v46(v14, v16);
  v26 = v0[13];

  v28 = v0[34];
  v27 = v0[35];
  v29 = v0[33];
  v30 = v0[29];
  v31 = v0[26];
  v32 = v0[23];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1000B34E4()
{
  v36 = v0;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[37];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    v0[15] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v35);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "FetchLabelledLocations - error fetching labels %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[37];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  v29 = v0[26];
  v33 = v0[25];
  v34 = v0[24];
  v31 = v0[23];
  v32 = v0[22];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v12, v14);
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v16;
  v18[4] = v11;
  v0[6] = sub_1000C7FB8;
  v0[7] = v18;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058D148;
  v19 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v32 + 8))(v31, v15);
  (*(v33 + 8))(v29, v34);
  v20 = v0[7];

  v22 = v0[34];
  v21 = v0[35];
  v23 = v0[33];
  v24 = v0[29];
  v25 = v0[26];
  v26 = v0[23];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000B3930(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v4 = v3;
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000C817C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v9 = v23;
  if (v23)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v13 = 134218242;
      *(v13 + 4) = *(v9 + 16);

      *(v13 + 12) = 2080;
      v14 = Array.description.getter();
      v16 = sub_10000D01C(v14, v15, &v23);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "FetchLabelledLocations - fetched labels %ld %s", v13, 0x16u);
      sub_100004984(v22);
    }

    else
    {
    }

    sub_100105A50(v9, v4, v9);

    a3(v9, 0);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005DFB98);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FetchLabelledLocations Error decoding labels", v20, 2u);
    }

    a3(_swiftEmptyArrayStorage, 0);
  }
}

uint64_t sub_1000B3DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1000C5524(a3, 0, a2, a1, a2, sub_1000C542C);
}

uint64_t sub_1000B3E58(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, void), uint64_t a4)
{
  v91 = a4;
  v92 = a3;
  v109 = a2;
  v94 = type metadata accessor for SecureLocation();
  v6 = *(v94 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v94);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v93 = (&v90 - v12);
  v13 = __chkstk_darwin(v11);
  v15 = (&v90 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = &v90 - v17;
  __chkstk_darwin(v16);
  v20 = &v90 - v19;
  v21 = type metadata accessor for SecureLocationsConfig();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v4;
  if (*(*(v4 + 120) + 16))
  {
    v95 = v10;
    if (qword_1005A7EF8 != -1)
    {
LABEL_56:
      swift_once();
    }

    v25 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v25);
    v26 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v25 + *(v26 + 28), v24, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v25);

    v27 = *(v24 + 16);
    sub_1000CA2CC(v24, type metadata accessor for SecureLocationsConfig);
    v99 = *(a1 + 16);
    if (!v99)
    {
      v103 = _swiftEmptyArrayStorage;
      goto LABEL_55;
    }

    v29 = 0;
    v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v103 = _swiftEmptyArrayStorage;
    v97 = v30;
    v98 = a1 + v30;
    v31 = v6[9];
    *&v28 = 136315906;
    v104 = v28;
    *&v28 = 136315650;
    v102 = v28;
    *&v28 = 136315394;
    v90 = v28;
    v32 = v95;
    v114 = v15;
    v105 = v18;
    v108 = v20;
    v96 = v31;
    while (1)
    {
      v101 = v29;
      sub_1000CA264(v98 + v31 * v29, v20, type metadata accessor for SecureLocation);
      sub_1000CA264(v20, v18, type metadata accessor for SecureLocation);
      v33 = *(v100 + 120);
      v34 = *(v33 + 16);
      if (!v34)
      {
        goto LABEL_40;
      }

      v35 = *(v100 + 120);

      v36 = 0;
      v110 = v34 - 1;
      v24 = 32;
      v106 = v33;
      while (1)
      {
        v37 = *(v33 + v24 + 32);
        v38 = *(v33 + v24 + 48);
        a1 = *(v33 + v24 + 80);
        v119 = *(v33 + v24 + 64);
        v39 = *(v33 + v24 + 16);
        v117[0] = *(v33 + v24);
        v117[1] = v39;
        v120 = a1;
        v117[2] = v37;
        v118 = v38;
        v113 = *(&v119 + 1);
        v112 = v39;
        sub_1000C81D0(v117, v116);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        v41 = sub_10000A6F0(v40, qword_1005DFB98);
        sub_1000CA264(v20, v15, type metadata accessor for SecureLocation);
        sub_1000C81D0(v117, v116);
        v111 = v41;
        v42 = Logger.logObject.getter();
        v6 = static os_log_type_t.info.getter();
        sub_1000C822C(v117);
        if (os_log_type_enabled(v42, v6))
        {
          v43 = v24;
          v44 = swift_slowAlloc();
          v116[0] = swift_slowAlloc();
          *v44 = v104;
          v45 = *(&v112 + 1);

          v46 = sub_10000D01C(v112, v45, v116);

          *(v44 + 4) = v46;
          *(v44 + 12) = 2080;
          if (a1)
          {
            v47 = v113;
          }

          else
          {
            v47 = 1818848800;
          }

          if (a1)
          {
            v48 = a1;
          }

          else
          {
            v48 = 0xE400000000000000;
          }

          v49 = v119;

          v50 = sub_10000D01C(v47, v48, v116);

          *(v44 + 14) = v50;
          *(v44 + 22) = 2080;
          v33 = v106;
          v51 = *v114;
          v52 = v114[1];

          sub_1000CA2CC(v114, type metadata accessor for SecureLocation);
          v53 = sub_10000D01C(v51, v52, v116);
          v20 = v108;

          *(v44 + 24) = v53;
          v18 = v105;
          *(v44 + 32) = 2048;
          *(v44 + 34) = v49;
          _os_log_impl(&_mh_execute_header, v42, v6, "LabelledLocations Checking label %s %s %s %f", v44, 0x2Au);
          swift_arrayDestroy();
          v15 = v114;

          v24 = v43;

          if (!a1)
          {
LABEL_17:
            if ((v109 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }
        }

        else
        {

          sub_1000CA2CC(v15, type metadata accessor for SecureLocation);
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        if ((v109 & 1) != 0 || (v113 != *v20 || a1 != *(v20 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_21:
          sub_1000C822C(v117);
          goto LABEL_35;
        }

LABEL_25:
        v107 = v24;
        v6 = [objc_allocWithZone(CLLocation) initWithLatitude:v118 longitude:?];
        v54 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v20 + 3) longitude:*(v20 + 2)];
        [v6 distanceFromLocation:v54];
        v56 = v55;
        sub_1000C81D0(v117, v116);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.info.getter();
        sub_1000C822C(v117);
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v116[0] = swift_slowAlloc();
          *v59 = v102;
          v60 = *(&v112 + 1);

          v61 = sub_10000D01C(v112, v60, v116);

          *(v59 + 4) = v61;
          *(v59 + 12) = 2080;
          if (a1)
          {
            v62 = v113;
          }

          else
          {
            v62 = 0x206C696E20;
          }

          if (a1)
          {
            v63 = a1;
          }

          else
          {
            v63 = 0xE500000000000000;
          }

          v64 = v62;
          v18 = v105;
          a1 = sub_10000D01C(v64, v63, v116);
          v33 = v106;

          *(v59 + 14) = a1;
          *(v59 + 22) = 2048;
          *(v59 + 24) = v56;
          _os_log_impl(&_mh_execute_header, v57, v58, "LabelledLocations %s %s Label Distance %f", v59, 0x20u);
          swift_arrayDestroy();

          v15 = v114;
        }

        v20 = v108;
        v24 = v107;
        if (v56 <= v27)
        {
          break;
        }

        sub_1000C822C(v117);

LABEL_35:
        if (v110 == v36)
        {

          goto LABEL_39;
        }

        ++v36;
        v24 += 88;
        if (v36 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }
      }

      v113 = v6;

      v70 = *(&v112 + 1);

      sub_1000C822C(v117);
      swift_beginAccess();
      v71 = &v18[*(v94 + 64)];
      v72 = *(v71 + 1);
      v73 = v112;
      *v71 = v112;
      *(v71 + 1) = v70;

      v74 = v93;
      sub_1000CA264(v20, v93, type metadata accessor for SecureLocation);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v77 = v90;
        v116[0] = v73;
        v116[1] = v70;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v78 = String.init<A>(describing:)();
        v79 = v74;
        v81 = sub_10000D01C(v78, v80, &v115);

        *(v77 + 4) = v81;
        *(v77 + 12) = 2080;
        v82 = *v74;
        v83 = *(v79 + 8);

        sub_1000CA2CC(v79, type metadata accessor for SecureLocation);
        v84 = sub_10000D01C(v82, v83, &v115);

        *(v77 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v75, v76, "LabelledLocations Adding label %s to location %s", v77, 0x16u);
        swift_arrayDestroy();
        v18 = v105;
      }

      else
      {

        sub_1000CA2CC(v74, type metadata accessor for SecureLocation);
      }

LABEL_39:
      v32 = v95;
LABEL_40:
      swift_beginAccess();
      sub_1000CA264(v18, v32, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1001FCE44(0, v103[2] + 1, 1, v103);
      }

      v66 = v103[2];
      v65 = v103[3];
      if (v66 >= v65 >> 1)
      {
        v103 = sub_1001FCE44(v65 > 1, v66 + 1, 1, v103);
      }

      v67 = v101 + 1;
      sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
      v68 = v103;
      v103[2] = v66 + 1;
      v29 = v67;
      v69 = v96;
      sub_1000C9DE8(v32, v68 + v97 + v66 * v96, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
      v31 = v69;
      if (v29 == v99)
      {
LABEL_55:
        v92(v103, 0);
      }
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  sub_10000A6F0(v85, qword_1005DFB98);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&_mh_execute_header, v86, v87, "LabelledLocations - No labels - nothing to resolve", v88, 2u);
  }

  return v92(a1, 0);
}

uint64_t sub_1000B4C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v10 = *(v9 + 64) + 15;
  v7[23] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v7[27] = v14;
  v15 = *(v14 - 8);
  v7[28] = v15;
  v16 = *(v15 + 64) + 15;
  v7[29] = swift_task_alloc();
  v17 = type metadata accessor for Response();
  v7[30] = v17;
  v18 = *(v17 - 8);
  v7[31] = v18;
  v7[32] = *(v18 + 64);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000B4E0C, 0, 0);
}