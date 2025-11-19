uint64_t sub_100101B30(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v258 = a4;
  v259 = a3;
  v256 = a1;
  v7 = *v4;
  v8 = type metadata accessor for OSSignpostError();
  v245 = *(v8 - 8);
  v246 = v8;
  v9 = *(v245 + 64);
  __chkstk_darwin(v8);
  v244 = &v240 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for OSSignpostID();
  v11 = *(v253 - 1);
  v12 = v11[8];
  v13 = __chkstk_darwin(v253);
  v250 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v248 = &v240 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v240 - v18;
  __chkstk_darwin(v17);
  v21 = &v240 - v20;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10000403C(v22, qword_1003A35F0);
  swift_unknownObjectRetain();
  v257 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v26 = os_log_type_enabled(v24, v25);
  v255 = v11;
  v251 = v21;
  v252 = v19;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *&v263 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = _typeName(_:qualified:)();
    v30 = sub_100008F6C(v28, v29, &v263);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002C1670;
    v32 = v5;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 32) = 3026478;
    *(v31 + 40) = 0xE300000000000000;
    v272[0] = a2;
    swift_unknownObjectRetain();
    sub_100004074(&qword_1003A37F8, &unk_1002C7850);
    v33 = String.init<A>(describing:)();
    *(v31 + 88) = &type metadata for String;
    *(v31 + 64) = v33;
    *(v31 + 72) = v34;
    v35 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034E830, v31);
    v37 = v36;

    v38 = sub_100008F6C(v35, v37, &v263);
    v5 = v32;

    *(v27 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s.%s", v27, 0x16u);
    swift_arrayDestroy();
  }

  v39 = swift_allocObject();
  v261 = v39;
  *(v39 + 16) = 0;
  v249 = (v39 + 16);
  v40 = swift_allocObject();
  v260 = v40;
  *(v40 + 16) = 0;
  v254 = v40 + 16;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v247 = (v41 + 16);
  sub_10000CCE4((v5 + 40), v272);
  sub_10000CCE4((v5 + 34), v271);
  v262 = v5[39];
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v42 = static Terminator.shared;
  swift_allocObject();
  v43 = swift_weakInit();
  v44 = v5;
  v45 = *(v42 + 24);
  __chkstk_darwin(v43);

  os_unfair_lock_lock((v45 + 32));
  sub_100064AFC((v45 + 16), &v263);
  os_unfair_lock_unlock((v45 + 32));

  v46 = v263;

  v47 = swift_allocObject();
  swift_weakInit();
  sub_10000CCE4(v271, &v263);
  v48 = swift_allocObject();
  v49 = v259;
  v50 = v260;
  v48[2] = v46;
  v48[3] = v49;
  v48[4] = v258;
  v48[5] = v47;
  v51 = v261;
  v48[6] = v262;
  v48[7] = v51;
  v48[8] = v41;
  v48[9] = v50;
  sub_100029790(&v263, (v48 + 10));
  v48[15] = a2;
  type metadata accessor for ReadDelegateRelay();
  v52 = swift_allocObject();
  v52[2] = a2;
  v52[3] = sub_10011766C;
  v259 = v52;
  v52[4] = v48;
  swift_unknownObjectRetain_n();

  v258 = v41;

  sub_1000278BC();
  sub_10002784C();
  sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1002C1660;
  *(v53 + 32) = 0;
  v54 = v44;
  v55 = [*(*sub_10000BE18(v44 + 56 v44[59]) + 24)];
  if (!v55)
  {
    __break(1u);
  }

  v56 = v55;
  v57 = [v55 unsignedShortValue];

  *(v53 + 64) = &type metadata for UInt16;
  *(v53 + 40) = v57;
  sub_10018399C(v53);
  swift_setDeallocating();
  sub_10000BD44(v53 + 32, &qword_10039EC60, &qword_1002C1F80);
  v58 = swift_deallocClassInstance();
  v59 = v262;
  v60 = v262[7];
  __chkstk_darwin(v58);
  os_unfair_lock_lock(v60 + 8);
  sub_100117CD8(&v60[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v60 + 8);

  if (MKBGetDeviceLockState() - 1 < 2)
  {
    v61 = 4056;
LABEL_25:
    v77 = 0;
    v78 = 0;
LABEL_26:
    v79 = sub_1000207FC(v61, v77, v78, 0);
    *&v263 = v79;
    type metadata accessor for ReadError(0);
    sub_1001178A0(&qword_10039DA08, type metadata accessor for ReadError);
    v59[19] = _BridgedStoredNSError.errorCode.getter();
    v80 = v79;
    sub_100100FC0(v80);

LABEL_27:
    sub_10000959C(v271);
LABEL_28:
    sub_10000959C(v272);
  }

  v62 = objc_opt_self();
  v63 = [v62 sharedHardwareManager];
  v64 = [v63 getHwSupport];

  if (v64 != 2)
  {
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "NFC not available", v69, 2u);
    }

    v61 = 4057;
    goto LABEL_25;
  }

  v65 = [v62 sharedHardwareManager];
  *&v263 = 0;
  v66 = [v65 getRadioEnabledState:&v263];

  if (v66)
  {

LABEL_22:
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "NFC radio disabled", v76, 2u);
    }

    v61 = 4025;
    goto LABEL_25;
  }

  if (v263 != 1)
  {
    goto LABEL_22;
  }

  v70 = *sub_10000BE18(v54 + 56, v54[59]);
  if ((sub_1001392D0() & 1) == 0)
  {
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Incorrect JCOP version", v73, 2u);
    }

    if (*(v54 + 440) == 1)
    {
      v61 = 4043;
      goto LABEL_25;
    }
  }

  v82 = v256;
  if (v256)
  {
    v83 = *(*sub_10000BE18(v54 + 56, v54[59]) + 16);
    v84 = v82;
    v85 = [v83 serialNumber];
    if (!v85)
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v86 = v85;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90 = type metadata accessor for ReaderConfiguration();
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    swift_allocObject();
    v93 = v84;
    sub_100117D74(v93, v87, v89);
    v101 = v100;

    v102 = v254;
    swift_beginAccess();
    v103 = *v102;
    *v102 = v101;
    v256 = v101;

    v104 = v54;
  }

  else
  {
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "SPRReadParameters nil, use ReaderConfiguration from Reader instance", v96, 2u);
    }

    v104 = v54;
    v97 = v54[61];
    v98 = v254;
    swift_beginAccess();
    v99 = *v98;
    *v98 = v97;
    swift_retain_n();

    v256 = v97;
    if (!v97)
    {
      v77 = 0xD00000000000001BLL;
      v78 = 0x800000010034E750;
      v61 = 4000;
      goto LABEL_26;
    }
  }

  v105 = v104[61];
  v104[61] = 0;

  if (qword_10039D618 != -1)
  {
    swift_once();
  }

  v106 = type metadata accessor for OSSignposter();
  v107 = sub_10000403C(v106, qword_1003A3608);
  v108 = v251;
  static OSSignpostID.exclusive.getter();
  v243 = v107;
  v109 = OSSignposter.logHandle.getter();
  v110 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    v112 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v109, v110, v112, "reader-session_start", "begin PreReadVerification and setup", v111, 2u);
  }

  v113 = v255;
  v114 = (v255 + 2);
  v115 = v253;
  v242 = v255[2];
  v242(v252, v108, v253);
  v116 = type metadata accessor for OSSignpostIntervalState();
  v117 = *(v116 + 48);
  v118 = *(v116 + 52);
  swift_allocObject();
  v254 = OSSignpostIntervalState.init(id:isOpen:)();
  v119 = v113[1];
  v119(v108, v115);
  v120 = v256;
  sub_10010FBFC(v256 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID);
  v241 = v116;
  v251 = v114;
  v255 = v113 + 1;
  sub_100110000(v120);

  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.default.getter();

  v123 = os_log_type_enabled(v121, v122);
  v240 = v119;
  if (v123)
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *&v263 = v125;
    *v124 = 136315138;

    v127 = sub_100119CAC(v126);
    v129 = v128;

    v130 = sub_100008F6C(v127, v129, &v263);
    v120 = v256;

    *(v124 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v121, v122, "ReaderConfiguration: %s", v124, 0xCu);
    sub_10000959C(v125);
  }

  sub_100110E58(v120);
  v131 = *sub_10000BE18(v272, v273);
  sub_10017A138(1);
  sub_10000BD44(&v263, &qword_10039E248, &qword_1002C23D0);
  v132 = *sub_10000BE18(v272, v273);
  sub_10017A138(0);
  v133 = v265;
  sub_10000BD44(&v263, &qword_10039E248, &qword_1002C23D0);
  v134 = v262;
  if (v133)
  {
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v135, v136, "PAN from previous transaction not cleared yet", v137, 2u);
      v134 = v262;
    }

    v138 = v247;
    swift_beginAccess();
    *v138 = 1;
  }

  v139 = sub_100114908();
  v140 = v249;
  swift_beginAccess();
  v141 = *v140;
  *v140 = v139;

  if (!v139)
  {
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&_mh_execute_header, v149, v150, "startReaderSession failed", v151, 2u);
    }

    v152 = sub_1000207FC(4040, 0, 0, 0);
    *&v263 = v152;
    type metadata accessor for ReadError(0);
    sub_1001178A0(&qword_10039DA08, type metadata accessor for ReadError);
    v134[19] = _BridgedStoredNSError.errorCode.getter();
    v153 = v152;
    sub_100100FC0(v153);

    sub_10000959C(v271);
    goto LABEL_28;
  }

  v249 = v139;
  v142 = OSSignposter.logHandle.getter();
  v143 = v248;
  OSSignpostIntervalState.signpostID.getter();
  v144 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v145 = v244;
    checkForErrorAndConsumeState(state:)();

    v147 = v245;
    v146 = v246;
    if ((*(v245 + 88))(v145, v246) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v148 = "[Error] Interval already ended";
    }

    else
    {
      (*(v147 + 8))(v145, v146);
      v148 = "end PreReadVerification and setup";
    }

    v154 = swift_slowAlloc();
    *v154 = 0;
    v155 = v248;
    v156 = OSSignpostID.rawValue.getter();
    v157 = v148;
    v143 = v155;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v142, v144, v156, "reader-session_start", v157, v154, 2u);
  }

  v240(v143, v253);
  v158 = v250;
  static OSSignpostID.exclusive.getter();
  v159 = OSSignposter.logHandle.getter();
  v160 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v161 = swift_slowAlloc();
    *v161 = 0;
    v162 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v159, v160, v162, "reader-total_transaction", "begin total transaction", v161, 2u);
    v158 = v250;
  }

  v163 = v158;
  v164 = v158;
  v165 = v253;
  v242(v252, v163, v253);
  v166 = *(v241 + 48);
  v167 = *(v241 + 52);
  swift_allocObject();
  v252 = OSSignpostIntervalState.init(id:isOpen:)();
  v240(v164, v165);
  v168 = v249;
  sub_100186948("reader-preprocessing", 20, 2, v168, 0xD000000000000013, 0x800000010034E7B0);

  v169 = v262;
  v170 = v262[7];
  os_unfair_lock_lock(v170 + 8);
  sub_10011C8AC(&v170[4], 3);
  os_unfair_lock_unlock(v170 + 8);
  sub_10000CCE4(v271, &v263);
  v171 = v54[13];
  sub_10000CCE4(v272, v270);
  sub_10000CCE4((v54 + 56), v269);
  sub_10000CCE4((v54 + 24), v268);
  v172 = objc_allocWithZone(type metadata accessor for ReadOperation());

  v173 = v256;

  v174 = v168;
  v175 = v259;

  v176 = v171;
  v177 = v169;
  sub_10012540C(v174, v173, v175, &v263, v169, v176, v270, v269, v268);
  v255 = v178;
  v179 = v247;
  swift_beginAccess();
  *v179 = 0;
  v84 = *(v173 + 16);
  v253 = v176;
  if (&v84[-1].isa + 6 < 2)
  {
    v180 = swift_allocObject();
    swift_weakInit();
    v181 = swift_allocObject();
    v182 = v255;
    v181[2] = v180;
    v181[3] = v182;
    v181[4] = v173;
    v181[5] = v175;
    v181[6] = v252;
    v181[7] = v174;
    v183 = v258;
    v181[8] = v169;
    v181[9] = v183;
    v266 = sub_10011771C;
    v267 = v181;
    *&v263 = _NSConcreteStackBlock;
    *(&v263 + 1) = 1107296256;
    v264 = sub_100003974;
    v265 = &unk_1003841D8;
    v184 = _Block_copy(&v263);
    v251 = objc_opt_self();

    v262 = v174;
    v185 = v174;

    v186 = v182;

    v187 = [v251 blockOperationWithBlock:v184];
    _Block_release(v184);

    v188 = *(v173 + 16);
    v189 = v186;
    if (v188 == 2)
    {
      v190 = String._bridgeToObjectiveC()();
      v191 = &selRef_currencyCode;
      [v189 setName:v190];

      v84 = Logger.logObject.getter();
      v192 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v192))
      {
        v257 = v187;
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *&v263 = v194;
        *v193 = 136315138;
        v195 = [v189 name];

        if (v195)
        {
          goto LABEL_68;
        }

        goto LABEL_83;
      }
    }

    else
    {
      v205 = String._bridgeToObjectiveC()();
      v191 = &selRef_currencyCode;
      [v189 setName:v205];

      v84 = Logger.logObject.getter();
      v192 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v192))
      {
        v257 = v187;
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *&v263 = v194;
        *v193 = 136315138;
        v195 = [v189 name];

        if (v195)
        {
LABEL_68:
          v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v208 = v207;

          v209 = sub_100008F6C(v206, v208, &v263);

          *(v193 + 4) = v209;
          _os_log_impl(&_mh_execute_header, v84, v192, "%s", v193, 0xCu);
          sub_10000959C(v194);

          v174 = v262;
          v187 = v257;
          v191 = &selRef_currencyCode;
LABEL_77:
          v229 = v187;
          v230 = String._bridgeToObjectiveC()();
          [v229 v191[20]];
          goto LABEL_80;
        }

        goto LABEL_85;
      }
    }

    v174 = v262;
    goto LABEL_77;
  }

  if (!v84)
  {
    v196 = v255;
    v197 = String._bridgeToObjectiveC()();
    [v196 setName:v197];

    v84 = Logger.logObject.getter();
    v198 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v198))
    {
      v199 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *&v263 = v257;
      *v199 = 136315138;
      v200 = [v196 name];

      if (!v200)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v203 = v202;

      v204 = sub_100008F6C(v201, v203, &v263);

      *(v199 + 4) = v204;
      _os_log_impl(&_mh_execute_header, v84, v198, "%s", v199, 0xCu);
      sub_10000959C(v257);

      v177 = v262;
    }

    else
    {
    }

    v220 = swift_allocObject();
    swift_weakInit();
    v221 = swift_allocObject();
    v221[2] = v220;
    v221[3] = v174;
    v221[4] = v252;
    v221[5] = v196;
    v222 = v258;
    v223 = v259;
    v221[6] = v177;
    v221[7] = v223;
    v221[8] = v256;
    v221[9] = v222;
    v266 = sub_10011780C;
    v267 = v221;
    *&v263 = _NSConcreteStackBlock;
    *(&v263 + 1) = 1107296256;
    v264 = sub_100003974;
    v265 = &unk_100384278;
    v224 = _Block_copy(&v263);
    v225 = objc_opt_self();

    v226 = v174;

    v227 = v196;

    v228 = [v225 blockOperationWithBlock:v224];
    _Block_release(v224);

    v229 = v228;
    v230 = String._bridgeToObjectiveC()();
    [v229 setName:{v230, v240}];
LABEL_80:

    v237 = v255;
    [v229 addDependency:v237];
    sub_100004074(&qword_10039E3C0, &unk_1002C7840);
    v238 = swift_allocObject();
    *(v238 + 16) = xmmword_1002C17A0;
    *(v238 + 32) = v237;
    *(v238 + 40) = v229;
    sub_10000411C(0, &qword_10039E3C8, NSOperation_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v253 addOperations:isa waitUntilFinished:0];

    goto LABEL_27;
  }

  if (v84 == 1)
  {
    v210 = v255;
    v211 = String._bridgeToObjectiveC()();
    v212 = &selRef_currencyCode;
    [v210 setName:v211];

    v84 = Logger.logObject.getter();
    v213 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v213))
    {
      v214 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      *&v263 = v257;
      *v214 = 136315138;
      v215 = [v210 name];

      if (!v215)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v218 = v217;

      v219 = sub_100008F6C(v216, v218, &v263);

      *(v214 + 4) = v219;
      _os_log_impl(&_mh_execute_header, v84, v213, "%s", v214, 0xCu);
      sub_10000959C(v257);

      v177 = v262;
      v212 = &selRef_currencyCode;
    }

    else
    {
    }

    v231 = swift_allocObject();
    swift_weakInit();
    v232 = swift_allocObject();
    v232[2] = v231;
    v232[3] = v210;
    v232[4] = v252;
    v232[5] = v177;
    v232[6] = v259;
    v266 = sub_10011778C;
    v267 = v232;
    *&v263 = _NSConcreteStackBlock;
    *(&v263 + 1) = 1107296256;
    v264 = sub_100003974;
    v265 = &unk_100384228;
    v233 = _Block_copy(&v263);
    v234 = objc_opt_self();

    v235 = v210;

    v236 = [v234 blockOperationWithBlock:v233];
    _Block_release(v233);

    v229 = v236;
    v230 = String._bridgeToObjectiveC()();
    [v229 v212[20]];
    goto LABEL_80;
  }

LABEL_87:
  type metadata accessor for SPRReaderMode(0);
  *&v263 = v84;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100104028()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001077C0();
  }

  return result;
}

void sub_100104080(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v18 = *(static Terminator.shared + 24);
  os_unfair_lock_lock(v18 + 8);
  sub_100189B50(&v18[4], a3);
  os_unfair_lock_unlock(v18 + 8);
  a4(a1, a2);
  if (!a1 && a2)
  {
    aBlock[0] = a2;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    type metadata accessor for ReadError(0);
    if (swift_dynamicCast())
    {
      v19 = *&v58[0];
    }

    else
    {
      v19 = sub_1000207FC(4998, 0, 0, 0);
    }

    aBlock[0] = v19;
    *&v58[0] = sub_1000207FC(4013, 0, 0, 0);
    sub_1001178A0(&qword_10039D930, type metadata accessor for ReadError);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_10000CCE4(Strong + 232, aBlock);

        v22 = *sub_10000BE18(aBlock, v55);
        v23 = v19;
        sub_10013FD04(v23, v22);

        sub_10000959C(aBlock);
      }
    }

    sub_100027534();
  }

  swift_beginAccess();
  v24 = *(a8 + 16);
  if (!v24)
  {
    goto LABEL_15;
  }

  v25 = v24;
  if ([v25 didEnd])
  {

LABEL_15:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000403C(v26, qword_1003A35F0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "validation error, no session to end or clear PAN", v29, 2u);
    }

    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      sub_10000CCE4(v30 + 16, aBlock);

      v31 = v55;
      v32 = v56;
      sub_10000BE18(aBlock, v55);
      (*(*(v32 + 1) + 16))(sub_100117CD4, 0, v31);
      sub_10000959C(aBlock);
    }

    return;
  }

  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v33 = a11;
  v34 = type metadata accessor for Logger();
  sub_10000403C(v34, qword_1003A35F0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "completion block after readCard", v37, 2u);
  }

  swift_beginAccess();
  if (*(a9 + 16) == 1)
  {
    sub_100004074(&qword_1003A5D40, &qword_1002C1740);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1660;
    if (qword_10039D3D8 != -1)
    {
      swift_once();
    }

    v39 = *(&xmmword_1003A6AC0 + 1);
    *(v38 + 32) = xmmword_1003A6AC0;
    *(v38 + 40) = v39;

    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[0] = 0;
    v41 = [v25 selectApplets:isa error:aBlock];

    if (v41)
    {
      v42 = aBlock[0];
      sub_100003AD4();
    }

    else
    {
      v43 = aBlock[0];
      v44 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        buf = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock[0] = v53;
        *buf = 136315138;
        *&v58[0] = v44;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v47 = String.init<A>(describing:)();
        v49 = sub_100008F6C(v47, v48, aBlock);

        *(buf + 4) = v49;
        v33 = a11;
        _os_log_impl(&_mh_execute_header, v45, v46, "failed to clear PAN in NVM %s", buf, 0xCu);
        sub_10000959C(v53);
      }

      else
      {
      }
    }
  }

  sub_10000CCE4(v33, v58);
  v50 = swift_allocObject();
  v50[2] = a10;
  sub_100029790(v58, (v50 + 3));
  v50[8] = a12;
  v50[9] = a6;
  v56 = sub_100117890;
  v57 = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  v55 = &unk_1003842C8;
  v51 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v25 endSessionWithCompletion:v51];
  _Block_release(v51);
}

uint64_t sub_100104830(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v42 = sub_10000403C(v13, qword_1003A35F0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "NF SE Reader Session ended in completion block of ReadDelegateRelay", v16, 2u);
  }

  swift_beginAccess();
  v17 = *(a1 + 16);
  if (v17)
  {
    v40 = a3;
    v41 = a4;
    v18 = a2[3];
    v19 = a2[4];
    v39 = sub_10000BE18(a2, v18);
    sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    strcpy((inited + 32), "transactionId");
    *(inited + 46) = -4864;
    (*(v9 + 16))(v12, v17 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v8);

    v21 = UUID.uuidString.getter();
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    *(inited + 48) = v21;
    *(inited + 56) = v23;
    v24 = sub_100183EFC(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
    (*(v19 + 8))(13, 2, v24, v18, v19);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43[0] = v28;
      *v27 = 136315138;
      v29 = *(v17 + 16);
      v30 = SPRReaderMode.description.getter();
      v32 = sub_100008F6C(v30, v31, v43);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "onUpdate(event: .closed, mode: .%s)", v27, 0xCu);
      sub_10000959C(v28);
    }

    if (v40)
    {
      [v40 onUpdateWithEvent:3 mode:*(v17 + 16)];
    }
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "readerConfig was nil in callback completion", v35, 2u);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000CCE4(result + 16, v43);

    v37 = v44;
    v38 = v45;
    sub_10000BE18(v43, v44);
    (*(*(v38 + 8) + 16))(sub_100117CD4, 0, v37);
    return sub_10000959C(v43);
  }

  return result;
}

void sub_100104D18(uint64_t a1)
{
  if (a1)
  {
    v22 = a1;
    swift_errorRetain();
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {
      v1 = v20;
      v2 = v21;
      if (qword_10039D610 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000403C(v3, qword_1003A35F0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      v8 = sub_1000A7598(v1, v2);
      v10 = sub_100008F6C(v8, v9, &v20);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send MPOC logs after readCard: %s", v6, 0xCu);
      sub_10000959C(v7);

LABEL_18:

LABEL_19:

      return;
    }

    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000403C(v14, qword_1003A35F0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v4, v15, "Failed to send MPOC logs after readCard with an unexpected error %@", v16, 0xCu);
      sub_10000BD44(v17, &unk_10039E220, &qword_1002C3D60);

      goto LABEL_18;
    }
  }

  else
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_1003A35F0);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "MPOC logs sent after readCard", v13, 2u);
    }
  }
}

void sub_1001050C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v71 = a7;
  v73 = a2;
  v74 = a3;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v65 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v72 = a8;
    v22 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
    swift_beginAccess();
    v23 = *(a4 + v22);
    if (*(v23 + 16))
    {
      v70 = a5;

      v24 = sub_1000F5A28(0xD000000000000014, 0x800000010034A420);
      if (v25)
      {
        sub_10000BDA4(*(v23 + 56) + 32 * v24, v76);

        type metadata accessor for SPRPayAppletStatus(0);
        if (swift_dynamicCast())
        {
          v69 = a6;
          v26 = v75;
          if (qword_10039D610 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          v68 = sub_10000403C(v27, qword_1003A35F0);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v66 = v26 == 6;
            v30 = swift_slowAlloc();
            v67 = v26;
            *v30 = 67109120;
            *(v30 + 4) = v66;
            _os_log_impl(&_mh_execute_header, v28, v29, "payReadComplete: %{BOOL}d", v30, 8u);
            v26 = v67;
          }

          *(*(v21 + 312) + 121) = v26 == 6;
          if (qword_10039D728 != -1)
          {
            swift_once();
          }

          if ([qword_1003A6EA0 canEvaluatePolicy:2 error:0])
          {
            sub_10000411C(0, &qword_1003A3800, SPRTransactionData_ptr);
            v31 = *(a4 + v22);
            v32 = *(a4 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
            v33 = *(v13 + 16);
            v33(v19, *(a4 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v12);
            v33(v17, v19, v12);

            v58 = sub_10009CCE4(_swiftEmptyArrayStorage, v31, v32, v17);
            (*(v13 + 8))(v19, v12);
            v59 = v58;
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *v62 = 138412290;
              *(v62 + 4) = v59;
              *v63 = v59;
              v64 = v59;
              _os_log_impl(&_mh_execute_header, v60, v61, "SPRTransactionData: %@", v62, 0xCu);
              sub_10000BD44(v63, &unk_10039E220, &qword_1002C3D60);
            }

            sub_100027F94(&off_10037E898);
            sub_100111480(v69, v59, *(v71 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(v71 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8));

            sub_1001074E0(v73, v74, v21, &off_10037E870, &off_10037E848);

            return;
          }

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();
          v56 = os_log_type_enabled(v54, v55);
          v43 = v72;
          if (v56)
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&_mh_execute_header, v54, v55, "no passcode after tap: attestationFailed", v57, 2u);
          }

          v46 = sub_1000207FC(4023, 0, 0, 0);
          swift_willThrow();
          v38 = &unk_10039D000;
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v38 = &unk_10039D000;
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000403C(v39, qword_1003A35F0);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v72;
    if (v42)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "ReadOperation completed but payAppletFinalStatus not found in readResult", v44, 2u);
    }

    v45 = *(a4 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
    swift_willThrow();
    v46 = v45;
LABEL_24:
    sub_1001074E0(v73, v74, v21, &off_10037E870, &off_10037E848);
    if (v38[194] != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000403C(v47, qword_1003A35F0);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Could not init SPRTransactionData or InternalTransactionData", v50, 2u);
    }

    swift_beginAccess();
    *(v43 + 16) = 1;
    v51 = *(v21 + 312);

    v52 = _convertErrorToNSError(_:)();
    v53 = [v52 code];

    *(v51 + 152) = v53;

    sub_100027F94(&off_10037E8C0);
    sub_100100FC0(v46);

    return;
  }

  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000403C(v34, qword_1003A35F0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "reader deinit during after-read operation", v37, 2u);
  }
}

void sub_100105994(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v77 = *(v9 - 8);
  v10 = *(v77 + 64);
  __chkstk_darwin(v9);
  v78 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignpostError();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OSSignpostID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v79 = v16;
    v80 = a3;
    v22 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound;
    if (a2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound])
    {
      v23 = 1;
    }

    else
    {
      v23 = a2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK];
    }

    v75 = v9;
    v83 = a5;
    v86 = Strong;
    v28 = *(Strong + 312);
    v81 = v23;
    *(v28 + 122) = v23;
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v30 = sub_10000403C(v29, qword_1003A35F0);
    v31 = a2;
    v76 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v82 = a4;
    if (v34)
    {
      v35 = swift_slowAlloc();
      *v35 = 67109632;
      *(v35 + 4) = v81;
      *(v35 + 8) = 1024;
      *(v35 + 10) = a2[v22];
      *(v35 + 14) = 1024;
      *(v35 + 16) = *(&v31->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK);

      _os_log_impl(&_mh_execute_header, v32, v33, "vasReadSuccess: %{BOOL}d, vasDataFound: %{BOOL}d, vasURLOK: %{BOOL}d", v35, 0x14u);
    }

    else
    {

      v32 = v31;
    }

    v36 = v79;

    if (qword_10039D618 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for OSSignposter();
    sub_10000403C(v37, qword_1003A3608);
    v38 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v39 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v41 = v84;
      v40 = v85;
      if ((*(v84 + 88))(v15, v85) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v41 + 8))(v15, v40);
        v42 = "end total transaction";
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v44, "reader-total_transaction", v42, v43, 2u);
    }

    (*(v17 + 8))(v20, v36);
    v45 = v86;
    v46 = *(v86 + 312);
    sub_10011BBA0(&off_10037E910);
    sub_10011B164(&off_10037E8E8);
    if (*(&v31->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty) == 1)
    {
      v47 = sub_1000207FC(4027, 0, 0, 0);
      v48 = *(v45 + 312);
      v88 = v47;
      type metadata accessor for ReadError(0);
      sub_1001178A0(&qword_10039DA08, type metadata accessor for ReadError);

      *(v48 + 144) = _BridgedStoredNSError.errorCode.getter();

      sub_100027F94(&off_10037E938);
      v49 = v47;
      sub_100100FC0(v49);
    }

    else
    {
      if (v81)
      {
        sub_10000411C(0, &qword_1003A3800, SPRTransactionData_ptr);
        v50 = *(&v31->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse);
        v51 = *(&v31->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        v52 = v78;
        (*(v77 + 16))(v78, *(&v31->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v75);

        v53 = v51;
        v54 = sub_10009E360(v50, v53, v52);

        v55 = v54;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          *(v58 + 4) = v55;
          *v59 = v55;
          v60 = v55;
          _os_log_impl(&_mh_execute_header, v56, v57, "SPRTransactionData: %@", v58, 0xCu);
          sub_10000BD44(v59, &unk_10039E220, &qword_1002C3D60);
        }

        sub_100027F94(&off_10037E988);
        v61 = *(v83 + 32);
        (*(v83 + 24))(v55, 0);
      }

      else
      {
        v62 = v31;
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v88 = v66;
          *v65 = 136315138;
          v87 = *(&v62->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
          v67 = v87;
          type metadata accessor for ReadError(0);
          v68 = v67;
          v69 = String.init<A>(describing:)();
          v71 = sub_100008F6C(v69, v70, &v88);

          *(v65 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v63, v64, "readOp.readError: %s", v65, 0xCu);
          sub_10000959C(v66);
          v45 = v86;
        }

        v72 = *(v45 + 312);
        v73 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
        v88 = *(&v62->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        type metadata accessor for ReadError(0);
        sub_1001178A0(&qword_10039DA08, type metadata accessor for ReadError);

        *(v72 + 144) = _BridgedStoredNSError.errorCode.getter();

        sub_100027F94(&off_10037E960);
        v55 = *(&v62->isa + v73);
        sub_100100FC0(v55);
      }
    }
  }

  else
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_1003A35F0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "reader deinit during after-read operation", v27, 2u);
    }
  }
}

void sub_10010632C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v156 = a3;
  v14 = type metadata accessor for OSSignpostError();
  v152 = *(v14 - 8);
  v153 = v14;
  v15 = *(v152 + 64);
  v16 = __chkstk_darwin(v14);
  v142 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v149 = &v139 - v19;
  __chkstk_darwin(v18);
  v148 = &v139 - v20;
  v21 = type metadata accessor for OSSignpostID();
  v155 = *(v21 - 8);
  v22 = *(v155 + 64);
  v23 = __chkstk_darwin(v21);
  v143 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v151 = &v139 - v26;
  __chkstk_darwin(v25);
  v150 = &v139 - v27;
  v28 = type metadata accessor for UUID();
  v157 = *(v28 - 8);
  v158 = v28;
  v29 = *(v157 + 64);
  v30 = __chkstk_darwin(v28);
  v144 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v139 - v32;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v141 = v21;
    v154 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound;
    if (a2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound])
    {
      v36 = 1;
    }

    else
    {
      v36 = a2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK];
    }

    v145 = a8;
    v146 = a6;
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = sub_10000403C(v41, qword_1003A35F0);
    v43 = a2;
    v159 = v42;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v147 = a7;
    if (v46)
    {
      v47 = a4;
      v48 = a5;
      v49 = v35;
      v50 = swift_slowAlloc();
      *v50 = 67109632;
      *(v50 + 4) = v36;
      *(v50 + 8) = 1024;
      *(v50 + 10) = a2[v154];
      *(v50 + 14) = 1024;
      *(v50 + 16) = *(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK);

      _os_log_impl(&_mh_execute_header, v44, v45, "vasReadSuccess: %{BOOL}d, vasDataFound: %{BOOL}d, vasURLOK: %{BOOL}d", v50, 0x14u);
      v35 = v49;
      a5 = v48;
      a4 = v47;
    }

    else
    {

      v44 = v43;
    }

    *(*(v35 + 312) + 122) = v36;
    if (v36)
    {
      v140 = v35;
      sub_10000411C(0, &qword_1003A3800, SPRTransactionData_ptr);
      v51 = *(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse);
      v52 = *(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      (*(v157 + 16))(v33, *(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v158);

      v53 = v52;
      v54 = sub_10009E360(v51, v53, v33);

      v55 = v54;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        *(v58 + 4) = v55;
        *v59 = v55;
        v60 = v55;
        _os_log_impl(&_mh_execute_header, v56, v57, "SPRTransactionData: %@", v58, 0xCu);
        sub_10000BD44(v59, &unk_10039E220, &qword_1002C3D60);
      }

      v61 = v141;
      if (*(v156 + 16) == 2)
      {
        v35 = v140;
        if ((*(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming) & 1) == 0)
        {
          v62 = *(a4 + 32);
          v63 = v55;
          (*(a4 + 24))(v55, 0);
          if (qword_10039D618 != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for OSSignposter();
          sub_10000403C(v64, qword_1003A3608);
          v65 = OSSignposter.logHandle.getter();
          v66 = v150;
          OSSignpostIntervalState.signpostID.getter();
          v67 = static os_signpost_type_t.end.getter();
          v68 = OS_os_log.signpostsEnabled.getter();
          v69 = v148;
          if (v68)
          {

            checkForErrorAndConsumeState(state:)();

            v71 = v152;
            v70 = v153;
            if ((*(v152 + 88))(v69, v153) == enum case for OSSignpostError.doubleEnd(_:))
            {
              v72 = "[Error] Interval already ended";
            }

            else
            {
              (*(v71 + 8))(v69, v70);
              v72 = "end total transaction";
            }

            v119 = swift_slowAlloc();
            *v119 = 0;
            v120 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, v67, v120, "reader-total_transaction", v72, v119, 2u);
          }

          (*(v155 + 8))(v66, v61);
          v121 = *(v35 + 312);
          sub_10011BBA0(&off_10037EA28);
          v122 = &off_10037EA00;
LABEL_61:
          sub_10011B164(v122);

          return;
        }
      }

      else
      {
        v35 = v140;
        if (a2[v154] == 1)
        {
          v73 = *(a4 + 32);
          v63 = v55;
          (*(a4 + 24))(v55, 0);
          if (qword_10039D618 != -1)
          {
            swift_once();
          }

          v74 = type metadata accessor for OSSignposter();
          sub_10000403C(v74, qword_1003A3608);
          v75 = OSSignposter.logHandle.getter();
          v76 = v151;
          OSSignpostIntervalState.signpostID.getter();
          v77 = static os_signpost_type_t.end.getter();
          v78 = OS_os_log.signpostsEnabled.getter();
          v79 = v149;
          if (v78)
          {

            checkForErrorAndConsumeState(state:)();

            v81 = v152;
            v80 = v153;
            if ((*(v152 + 88))(v79, v153) == enum case for OSSignpostError.doubleEnd(_:))
            {
              v82 = "[Error] Interval already ended";
            }

            else
            {
              (*(v81 + 8))(v79, v80);
              v82 = "end total transaction";
            }

            v123 = swift_slowAlloc();
            *v123 = 0;
            v124 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v75, v77, v124, "reader-total_transaction", v82, v123, 2u);
          }

          (*(v155 + 8))(v76, v61);
          v125 = *(v35 + 312);
          sub_10011BBA0(&off_10037EA78);
          v122 = &off_10037EA50;
          goto LABEL_61;
        }

        if (*(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK) == 1 && (*(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming) & 1) == 0)
        {
          v126 = *(a4 + 32);
          v63 = v55;
          (*(a4 + 24))(v55, 0);
          if (qword_10039D618 != -1)
          {
            swift_once();
          }

          v127 = type metadata accessor for OSSignposter();
          sub_10000403C(v127, qword_1003A3608);
          v128 = OSSignposter.logHandle.getter();
          v129 = v143;
          OSSignpostIntervalState.signpostID.getter();
          v130 = static os_signpost_type_t.end.getter();
          v131 = OS_os_log.signpostsEnabled.getter();
          v132 = v142;
          if (v131)
          {

            checkForErrorAndConsumeState(state:)();

            v134 = v152;
            v133 = v153;
            if ((*(v152 + 88))(v132, v153) == enum case for OSSignpostError.doubleEnd(_:))
            {
              v135 = "[Error] Interval already ended";
            }

            else
            {
              (*(v134 + 8))(v132, v133);
              v135 = "end total transaction";
            }

            v136 = swift_slowAlloc();
            *v136 = 0;
            v137 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, v130, v137, "reader-total_transaction", v135, v136, 2u);
          }

          (*(v155 + 8))(v129, v61);
          v138 = *(v35 + 312);
          sub_10011BBA0(&off_10037EAC8);
          v122 = &off_10037EAA0;
          goto LABEL_61;
        }
      }
    }

    if (qword_10039D728 != -1)
    {
      swift_once();
    }

    if ([qword_1003A6EA0 canEvaluatePolicy:2 error:0])
    {
      v83 = a5;
      v84 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
      swift_beginAccess();
      v85 = *(&v43->isa + v84);
      if (*(v85 + 16))
      {
        v86 = *(&v43->isa + v84);

        v87 = sub_1000F5A28(0xD000000000000014, 0x800000010034A420);
        if (v88)
        {
          sub_10000BDA4(*(v85 + 56) + 32 * v87, v161);

          type metadata accessor for SPRPayAppletStatus(0);
          if (swift_dynamicCast())
          {
            v89 = v160;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              *v92 = 67109120;
              *(v92 + 4) = v89 == 6;
              _os_log_impl(&_mh_execute_header, v90, v91, "payReadComplete: %{BOOL}d", v92, 8u);
            }

            *(*(v35 + 312) + 121) = v89 == 6;
            sub_10000411C(0, &qword_1003A3800, SPRTransactionData_ptr);
            v93 = *(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse);
            v94 = *(&v43->isa + v84);
            v95 = *(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
            v96 = *(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID;
            v97 = v144;
            (*(v157 + 16))(v144, v96, v158);

            v98 = sub_10009CCE4(v93, v94, v95, v97);
            v99 = Logger.logObject.getter();
            v100 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              *v101 = 138412290;
              *(v101 + 4) = v98;
              *v102 = v98;
              v103 = v98;
              _os_log_impl(&_mh_execute_header, v99, v100, "SPRTransactionData: %@", v101, 0xCu);
              sub_10000BD44(v102, &unk_10039E220, &qword_1002C3D60);
            }

            sub_100027F94(&off_10037EAF0);
            sub_100111480(a4, v98, *(v156 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(v156 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8));

            sub_1001074E0(v146, v83, v35, &off_10037E9D8, &off_10037E9B0);

            return;
          }
        }

        else
        {
        }
      }

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "ReadOperation completed but payAppletFinalStatus not found in readResult", v110, 2u);
      }

      v111 = *(&v43->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      swift_willThrow();
      v107 = v111;
      a5 = v83;
    }

    else
    {
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&_mh_execute_header, v104, v105, "no passcode after tap: attestationFailed", v106, 2u);
      }

      v107 = sub_1000207FC(4023, 0, 0, 0);
      swift_willThrow();
    }

    v112 = v145;
    sub_1001074E0(v146, a5, v35, &off_10037E9D8, &off_10037E9B0);
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "Could not init SPRTransactionData or InternalTransactionData", v115, 2u);
    }

    swift_beginAccess();
    *(v112 + 16) = 1;
    v116 = *(v35 + 312);

    v117 = _convertErrorToNSError(_:)();
    v118 = [v117 code];

    *(v116 + 152) = v118;

    sub_100027F94(&off_10037EB18);
    sub_100100FC0(v107);
  }

  else
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000403C(v37, qword_1003A35F0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "reader deinit during after-read operation", v40, 2u);
    }
  }
}

void sub_1001074E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v6 = type metadata accessor for OSSignpostError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D618 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSSignposter();
  sub_10000403C(v16, qword_1003A3608);
  sub_100186BE8("reader-postProcessing", 21, 2, a1, 0xD000000000000013, 0x800000010034E880);
  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v7 + 88))(v10, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      v19 = "end total transaction";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v21, "reader-total_transaction", v19, v20, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v22 = *(v24 + 312);
  sub_10011BBA0(v25);
  sub_10011B164(v26);
}

void sub_1001077C0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A35F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v27);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x65526C65636E6163, 0xEC00000029286461, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v27);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[13];
  v14 = [v13 operationCount];
  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(oslog, v15);
  if (v14 < 1)
  {
    if (v16)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "No Reader Operation to cancel", v24, 2u);
    }
  }

  else
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Setting readCancelReason: ReadError(.cancelled)", v17, 2u);
    }

    v18 = sub_10000BE18(v1 + 40, v1[43]);
    type metadata accessor for ReadError(0);
    v27[3] = v19;
    v27[0] = sub_1000207FC(4013, 0, 0, 0);
    v26 = *v18;
    type metadata accessor for DefaultManagedDictionary();
    sub_10017A800(v27, 1, 0, 0, 0.0);
    sub_10000959C(v27);
    v20 = v1[39];
    *(v20 + 152) = 4013;
    *(v20 + 121) = 0;
    *(v20 + 127) = 1;
    sub_10011BBA0(&off_10037E7A8);
    sub_100027F94(&off_10037E7D0);
    [v13 cancelAllOperations];
    [v13 waitUntilAllOperationsAreFinished];
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "All Reader Operations cancelled", v23, 2u);
    }
  }
}

id sub_100107BFC(uint64_t *a1, void (*a2)(char *, uint64_t))
{
  v158 = a2;
  v156 = *v2;
  v157 = a1;
  v3 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v141 = &v133 - v5;
  v151 = type metadata accessor for DateInterval();
  v147 = *(v151 - 8);
  v6 = *(v147 + 64);
  v7 = __chkstk_darwin(v151);
  v146 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v145 = &v133 - v10;
  __chkstk_darwin(v9);
  v12 = &v133 - v11;
  v153 = type metadata accessor for Date();
  v13 = *(v153 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v153);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v142 = &v133 - v19;
  v20 = __chkstk_darwin(v18);
  v140 = (&v133 - v21);
  v22 = __chkstk_darwin(v20);
  v144 = &v133 - v23;
  v24 = __chkstk_darwin(v22);
  v148 = &v133 - v25;
  __chkstk_darwin(v24);
  v152 = &v133 - v26;
  v27 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v155 = &v133 - v29;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v143 = sub_10000403C(v35, qword_1003A35F0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v149 = v12;
  v150 = v13;
  v139 = v17;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v154 = v31;
    v40 = v39;
    v168 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = _typeName(_:qualified:)();
    v43 = v34;
    v44 = v30;
    v45 = sub_100008F6C(v41, v42, &v168);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v46 = showFunction(signature:_:)(0xD000000000000022, 0x800000010034E720, _swiftEmptyArrayStorage);
    v48 = sub_100008F6C(v46, v47, &v168);

    *(v40 + 14) = v48;
    v30 = v44;
    v34 = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s.%s", v40, 0x16u);
    swift_arrayDestroy();

    v31 = v154;
  }

  v49 = v160;
  result = [*(*sub_10000BE18(v160 + 56 v160[59]) + 16)];
  if (!result)
  {
    goto LABEL_39;
  }

  v51 = result;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55 = v158;

  v56 = v55;
  v57 = v159;
  result = sub_10008C068(v157, v56, v52, v54, v161);
  if (v57)
  {
    return result;
  }

  v58 = v155;
  sub_10008B618(v155);
  sub_10006413C(v161);
  if ((*(v31 + 48))(v58, 1, v30) == 1)
  {
    sub_10000BD44(v58, &qword_1003A0178, &unk_1002C3BB0);
    sub_1000207FC(4000, 0xD00000000000002DLL, 0x800000010034E660, 0);
    return swift_willThrow();
  }

  (*(v31 + 32))(v34, v58, v30);
  v59 = *sub_10000BE18(v49 + 50, v49[53]);
  sub_10003D678(v34, &v162);
  if (!v166)
  {
    sub_100041D1C(&v162);
    v65 = 0xD000000000000024;
    v66 = 0x800000010034E690;
    v67 = 4000;
LABEL_16:
    sub_1000207FC(v67, v65, v66, 0);
    swift_willThrow();
    return (*(v31 + 8))(v34, v30);
  }

  v60 = v163;
  if (!v163)
  {
    sub_100041D1C(&v162);
    goto LABEL_15;
  }

  v61 = v164;
  v62 = v165;
  v159 = v34;
  v138 = v30;
  v154 = v31;
  v63 = v162;

  sub_100041D1C(&v162);

  v64 = v63;
  v31 = v154;
  v30 = v138;
  v34 = v159;
  sub_10003F2A0(v64, v60);
  if (!v62)
  {
LABEL_15:
    v65 = 0xD00000000000002ALL;
    v66 = 0x800000010034E6C0;
    v67 = 4062;
    goto LABEL_16;
  }

  sub_100176DD8(v61, v62, v167);
  v68 = v167[12];
  result = Date.init(timeIntervalSince1970:)();
  v69 = v160[12];
  if (v69 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v70 = v153;
  v71 = v150;
  v72 = v144;
  if (__CFADD__(v68, v69))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v73 = v148;
  Date.init(timeIntervalSince1970:)();
  v74 = *(v71 + 16);
  v74(v72, v152, v70);
  v155 = (v71 + 16);
  v137 = v74;
  v74(v140, v73, v70);
  v75 = v149;
  DateInterval.init(start:end:)();
  v76 = v147;
  v77 = *(v147 + 16);
  v78 = v151;
  v77(v145, v75, v151);
  v77(v146, v75, v78);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v168 = v140;
    *v81 = 136315906;
    v82 = _typeName(_:qualified:)();
    v156 = v79;
    v84 = sub_100008F6C(v82, v83, &v168);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2080;
    v85 = showFunction(signature:_:)(0xD000000000000022, 0x800000010034E720, _swiftEmptyArrayStorage);
    v87 = sub_100008F6C(v85, v86, &v168);

    v157 = v81;
    *(v81 + 14) = v87;
    *(v81 + 22) = 2080;
    v88 = v144;
    v89 = v145;
    DateInterval.start.getter();
    v135 = sub_1001178A0(&qword_10039F3E8, &type metadata accessor for Date);
    v136 = v80;
    v90 = v153;
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    v134 = *(v150 + 8);
    v134(v88, v90);
    v158 = *(v76 + 8);
    v158(v89, v151);
    v94 = sub_100008F6C(v91, v93, &v168);
    v31 = v154;

    v95 = v157;
    v157[3] = v94;
    *(v95 + 16) = 2080;
    v96 = v146;
    DateInterval.end.getter();
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    v99 = v98;
    v134(v88, v153);
    v100 = v150;
    v158(v96, v151);
    v101 = sub_100008F6C(v97, v99, &v168);
    v30 = v138;

    v102 = v157;
    *(v157 + 34) = v101;
    v103 = v156;
    _os_log_impl(&_mh_execute_header, v156, v136, "%s.%s Attestation token validity period: %s...%s", v102, 0x2Au);
    swift_arrayDestroy();

    v104 = v141;
    v105 = v142;
  }

  else
  {

    v106 = *(v76 + 8);
    v106(v146, v78);
    v158 = v106;
    v106(v145, v78);
    v104 = v141;
    v105 = v142;
    v100 = v150;
  }

  v107 = *sub_10000BE18(v160 + 24, v160[27]);
  sub_100043268(v104);
  v108 = v153;
  if ((*(v100 + 48))(v104, 1, v153) == 1)
  {
    sub_10000BD44(v104, &unk_1003A3BE0, &qword_1002C36F0);
    sub_1000207FC(4999, 0xD000000000000028, 0x800000010034E6F0, 0);
    swift_willThrow();
    sub_10008C3EC(v167);
    v158(v149, v151);
    v109 = *(v100 + 8);
    v109(v148, v108);
    v109(v152, v108);
    return (*(v31 + 8))(v159, v30);
  }

  (*(v100 + 32))(v105, v104, v108);
  v110 = v149;
  if (DateInterval.contains(_:)())
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v112 = v111;
    Date.timeIntervalSinceReferenceDate.getter();
    v114 = v113;
    sub_10008C3EC(v167);
    v115 = *(v100 + 8);
    v115(v105, v108);
    v158(v110, v151);
    v115(v148, v108);
    v115(v152, v108);
    result = (*(v31 + 8))(v159, v30);
    v116 = v112 - v114;
    if (COERCE__INT64(fabs(v112 - v114)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v116 > -9.22337204e18)
      {
        if (v116 < 9.22337204e18)
        {
          return v116;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v117 = v139;
  v137(v139, v105, v108);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    LODWORD(v160) = v119;
    v121 = v108;
    v156 = v118;
    v122 = v120;
    v123 = v117;
    v124 = v121;
    v157 = swift_slowAlloc();
    v168 = v157;
    *v122 = 136315138;
    sub_1001178A0(&qword_10039F3E8, &type metadata accessor for Date);
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v127 = v126;
    v128 = *(v150 + 8);
    v128(v123, v124);
    v129 = sub_100008F6C(v125, v127, &v168);

    v130 = v122;
    *(v122 + 4) = v129;
    v131 = v156;
    _os_log_impl(&_mh_execute_header, v156, v160, "Current date (%s) is outside of Attestation token validity period", v130, 0xCu);
    sub_10000959C(v157);

    sub_10008C3EC(v167);
    v128(v142, v124);
    v158(v149, v151);
    v128(v148, v124);
    v128(v152, v124);
    (*(v154 + 8))(v159, v138);
  }

  else
  {

    sub_10008C3EC(v167);
    v132 = *(v150 + 8);
    v132(v117, v108);
    v132(v105, v108);
    v158(v149, v151);
    v132(v148, v108);
    v132(v152, v108);
    (*(v31 + 8))(v159, v30);
  }

  return 0;
}

id sub_100108BF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v129 = a7;
  v130 = a6;
  v118 = a5;
  v122 = a4;
  v121 = a3;
  v120 = a2;
  v119 = a1;
  v8 = *v7;
  v9 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v124 = &v114 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v125 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue.Attributes();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v117 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v116 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000403C(v27, qword_1003A35F0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v127 = v12;
  v126 = v13;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v114 = v20;
    v142[0] = v32;
    *v31 = 136315394;
    v33 = _typeName(_:qualified:)();
    v115 = v17;
    v34 = v16;
    v36 = sub_100008F6C(v33, v35, v142);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = showFunction(signature:_:)(0xD000000000000046, 0x800000010034E610, _swiftEmptyArrayStorage);
    v39 = sub_100008F6C(v37, v38, v142);

    *(v31 + 14) = v39;
    v16 = v34;
    v17 = v115;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s.%s", v31, 0x16u);
    swift_arrayDestroy();
    v20 = v114;
  }

  v40 = HIBYTE(v129) & 0xF;
  if ((v129 & 0x2000000000000000) == 0)
  {
    v40 = v130 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
    sub_1000207FC(4000, 0xD000000000000014, 0x800000010034E5F0, 0);
    swift_willThrow();
    return v29;
  }

  v41 = sub_10000BE18(v128 + 19, v128[22]);
  v114 = "config-prepare-renewCertificate";
  v42 = *v41;
  v43 = *(*v41 + 288);
  v115 = *(*v41 + 280);
  sub_10000CCE4((v42 + 2), v142);
  v44 = v42[10];
  v45 = v42[11];
  sub_10000BE18(v42 + 7, v44);

  sub_1000C289C(4u, v44, v45);
  v46 = *sub_10000BE18(v42 + 12, v42[15]);
  sub_10014EDF0(&v135);
  v47 = v42[17];
  sub_10000CCE4((v42 + 25), &v132);
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);

  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v17 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v49 = v134;
  v50 = sub_100022438(&v132, v134);
  v51 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = (&v114 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53);
  v55 = *v53;
  v56 = type metadata accessor for DefaultSecureTimeKeeper();
  v131[4] = &off_100384E70;
  v131[3] = v56;
  v131[0] = v55;
  type metadata accessor for AAASigner();
  v57 = swift_allocObject();
  v58 = sub_100022438(v131, v56);
  v59 = v129;
  v60 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v58);
  v62 = (&v114 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v62;

  v130 = sub_100112354(v115, v43, 203, 0xD000000000000010, v114 | 0x8000000000000000, 0, v130, v59, v142, &v137, &v135, v47, v64, v48, 2592000, v57);
  sub_10000959C(v131);
  sub_10000959C(&v132);
  v117 = sub_1001178A0(&qword_1003A01C0, type metadata accessor for AAASigner);
  v137 = UUID.uuid.getter();
  v138 = v65;
  v66 = sub_100146E20(&v137, v139);
  v68 = v67;
  v69 = v119;
  v70 = v120;
  v132 = v119;
  v133 = v120;
  v140 = &type metadata for Data;
  v141 = &protocol witness table for Data;
  v71 = v121;
  v72 = v122;
  v137 = v121;
  v138 = v122;
  v73 = sub_10000BE18(&v137, &type metadata for Data);
  v74 = *v73;
  v75 = v73[1];
  sub_1000094F4(v69, v70);
  sub_1000094F4(v71, v72);
  v76 = v123;
  sub_1000A1C34(v74, v75);
  sub_10000959C(&v137);
  v77 = v132;
  v78 = v133;
  v135 = v132;
  v136 = v133;
  v140 = &type metadata for Data;
  v141 = &protocol witness table for Data;
  v79 = v66;
  v137 = v66;
  v138 = v68;
  v80 = sub_10000BE18(&v137, &type metadata for Data);
  v81 = *v80;
  v82 = v80[1];
  sub_1000094F4(v77, v78);
  v123 = v79;
  v129 = v68;
  sub_1000094F4(v79, v68);
  sub_1000A1C34(v81, v82);
  v122 = v76;
  sub_100009548(v77, v78);
  sub_10000959C(&v137);
  v29 = v135;
  v83 = v136;
  v84 = v128;
  sub_10000CCE4((v128 + 50), &v137);
  v85 = sub_10000BE18(&v137, v140);
  v86 = v84[61];
  if (!v86)
  {
    v88 = v126;
    v87 = v124;
    v89 = v127;
    (*(v126 + 56))(v124, 1, 1, v127);
    v91 = v125;
LABEL_13:
    UUID.init(uuid:)();
    v93 = (*(v88 + 48))(v87, 1, v89);
    v92 = v117;
    if (v93 != 1)
    {
      sub_10000BD44(v87, &qword_1003A0178, &unk_1002C3BB0);
    }

    goto LABEL_15;
  }

  v87 = v124;
  sub_100065074(&v86[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID], v124, &qword_1003A0178, &unk_1002C3BB0);
  v88 = v126;
  v89 = v127;
  v90 = (*(v126 + 48))(v87, 1, v127);
  v91 = v125;
  if (v90 == 1)
  {
    goto LABEL_13;
  }

  (*(v88 + 32))(v125, v87, v89);
  v92 = v117;
LABEL_15:
  ObjectType = swift_getObjectType();
  v95 = *v85;
  LOBYTE(v95) = sub_10003EFB8(v91);
  (*(v88 + 8))(v91, v89);
  sub_10000959C(&v137);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v128 = &v114;
  v97 = *(AssociatedTypeWitness - 8);
  v98 = *(v97 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v100 = &v114 - v99;
  v101 = v122;
  v102 = sub_100155D44(&v114 - v99, v29, v83, (v95 & 1) == 0, ObjectType, v92);
  if (v101)
  {
    sub_100009548(v123, v129);

    sub_100009548(v29, v83);
  }

  else
  {
    v127 = v102;
    v126 = v103;
    sub_100009548(v29, v83);
    v142[3] = AssociatedTypeWitness;
    v142[4] = swift_getAssociatedConformanceWitness();
    v104 = sub_10000BE5C(v142);
    (*(v97 + 32))(v104, v100, AssociatedTypeWitness);
    sub_10000CCE4(v142, &v137);
    sub_100004074(&qword_1003A37F0, &unk_1002C7830);
    type metadata accessor for AAASigningIdentity();
    swift_dynamicCast();
    v105 = *(v135 + 80);
    v106 = *(v135 + 88);
    sub_1000094F4(v105, v106);

    v107 = objc_allocWithZone(SPRTransactionSignature);
    v108 = v127;
    v109 = v126;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v111 = String._bridgeToObjectiveC()();
    v112 = Data._bridgeToObjectiveC()().super.isa;
    v29 = [v107 initWithSignature:isa algorithm:v111 keyId:v112];

    sub_100009548(v105, v106);
    sub_100009548(v108, v109);
    sub_100009548(v123, v129);

    sub_10000959C(v142);
  }

  return v29;
}

uint64_t sub_100109A08(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v189 = a3;
  v191 = a2;
  v190 = a1;
  v6 = *v4;
  v7 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v177 = &v172 - v9;
  v180 = type metadata accessor for String.Encoding();
  v10 = *(v180 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v180);
  v178 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v184 = *(v185 - 8);
  v13 = *(v184 + 64);
  __chkstk_darwin(v185);
  v183 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v182 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v181 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v176 = &v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v172 - v26;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v192 = sub_10000403C(v28, qword_1003A35F0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v188 = v21;
  v186 = v22;
  v179 = v10;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v204[0] = swift_slowAlloc();
    *v32 = 136315394;
    v33 = _typeName(_:qualified:)();
    v35 = sub_100008F6C(v33, v34, v204);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v36 = showFunction(signature:_:)(0xD00000000000001ELL, 0x800000010034E520, _swiftEmptyArrayStorage);
    v38 = sub_100008F6C(v36, v37, v204);

    *(v32 + 14) = v38;
    v21 = v188;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s.%s", v32, 0x16u);
    swift_arrayDestroy();
    v22 = v186;
  }

  (*(v22 + 16))(v27, v190, v21);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v204[0] = swift_slowAlloc();
    *v41 = 136315650;
    sub_1001178A0(&qword_10039FAD8, &type metadata accessor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v21;
    v45 = v44;
    (*(v22 + 8))(v27, v43);
    v46 = sub_100008F6C(v42, v45, v204);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2048;
    v47 = v191;
    *(v41 + 14) = v191;
    *(v41 + 22) = 2080;
    v48 = v189;
    *(v41 + 24) = sub_100008F6C(v189, a4, v204);
    _os_log_impl(&_mh_execute_header, v39, v40, "BatchId: %s, count: %ld, vtid: %s", v41, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v22 + 8))(v27, v21);
    v47 = v191;
    v48 = v189;
  }

  v49 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v49 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49 || v47 < 1)
  {
    sub_1000207FC(4000, 0xD000000000000035, 0x800000010034E4E0, 0);
    swift_willThrow();
    return v47;
  }

  v50 = sub_10000BE18(v187 + 19, v187[22]);
  v173 = "config-prepare-renewCertificate";
  v51 = *v50;
  v52 = *(*v50 + 288);
  v174 = *(*v50 + 280);
  sub_10000CCE4((v51 + 2), v204);
  v53 = v51[10];
  v54 = v51[11];
  sub_10000BE18(v51 + 7, v53);

  sub_1000C289C(4u, v53, v54);
  v55 = *sub_10000BE18(v51 + 12, v51[15]);
  sub_10014EDF0(&v197);
  v56 = v51[17];
  sub_10000CCE4((v51 + 25), &v194);
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);

  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v184 + 104))(v183, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v185);
  v57 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v58 = v196;
  v59 = sub_100022438(&v194, v196);
  v60 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v59);
  v62 = (&v172 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v62;
  v65 = type metadata accessor for DefaultSecureTimeKeeper();
  v193[4] = &off_100384E70;
  v193[3] = v65;
  v193[0] = v64;
  type metadata accessor for AAASigner();
  v66 = swift_allocObject();
  v67 = sub_100022438(v193, v65);
  v68 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v67);
  v70 = (&v172 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  v72 = *v70;

  v185 = sub_100112354(v174, v52, 203, 0xD000000000000010, v173 | 0x8000000000000000, 0, v189, a4, v204, &v199, &v197, v56, v72, v57, 2592000, v66);
  sub_10000959C(v193);
  sub_10000959C(&v194);
  v73 = sub_1001178A0(&qword_1003A01C0, type metadata accessor for AAASigner);
  v74 = UUID.uuid.getter();
  v75 = v191;
  v199 = v74;
  v200 = v76;
  v77 = sub_100146E20(&v199, v201);
  if (HIDWORD(v75))
  {
    __break(1u);
  }

  v79 = v77;
  v80 = v78;
  v183 = v73;
  LODWORD(v199) = bswap32(v75);
  v81 = sub_100146E20(&v199, &v199 + 4);
  v83 = v82;
  sub_1000094F4(v79, v80);
  sub_1000094F4(v81, v83);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  sub_100009548(v79, v80);
  sub_100009548(v81, v83);
  v86 = os_log_type_enabled(v84, v85);
  v191 = v79;
  v189 = v81;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    *v87 = 136315394;
    v88 = Data.hexString()();
    v89 = sub_100008F6C(v88._countAndFlagsBits, v88._object, &v199);

    *(v87 + 4) = v89;
    *(v87 + 12) = 2080;
    sub_1000094F4(v81, v83);
    v90 = Data.description.getter();
    v92 = v91;
    sub_100009548(v81, v83);
    v93 = sub_100008F6C(v90, v92, &v199);

    *(v87 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v84, v85, "batchIdData: %s, countData: %s", v87, 0x16u);
    swift_arrayDestroy();
  }

  v94 = v188;
  v95 = v180;
  v96 = v179;
  v97 = v178;
  v190 = v83;
  static String.Encoding.utf8.getter();
  v98 = String.data(using:allowLossyConversion:)();
  v100 = v99;
  result = (*(v96 + 8))(v97, v95);
  if (v100 >> 60 != 15)
  {
    v194 = v98;
    v195 = v100;
    v202 = &type metadata for Data;
    v203 = &protocol witness table for Data;
    v102 = v191;
    v199 = v191;
    v200 = v80;
    v103 = sub_10000BE18(&v199, &type metadata for Data);
    v104 = *v103;
    v105 = v103[1];
    sub_1000094F4(v102, v80);
    sub_10001A3E8(v98, v100);
    v106 = v175;
    sub_1000A1C34(v104, v105);
    sub_10001A074(v98, v100);
    sub_10000959C(&v199);
    v107 = v194;
    v108 = v195;
    v197 = v194;
    v198 = v195;
    v202 = &type metadata for Data;
    v203 = &protocol witness table for Data;
    v109 = v189;
    v110 = v190;
    v199 = v189;
    v200 = v190;
    v111 = sub_10000BE18(&v199, &type metadata for Data);
    v112 = *v111;
    v113 = v111[1];
    sub_1000094F4(v109, v110);
    sub_1000094F4(v107, v108);
    sub_1000A1C34(v112, v113);
    v181 = v106;
    sub_100009548(v107, v108);
    sub_10000959C(&v199);
    v114 = v197;
    v115 = v198;
    sub_1000094F4(v197, v198);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();
    sub_100009548(v114, v115);
    v118 = os_log_type_enabled(v116, v117);
    v188 = v114;
    if (v118)
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v199 = v120;
      *v119 = 136315138;
      v121 = Data.hexString()();
      v122 = sub_100008F6C(v121._countAndFlagsBits, v121._object, &v199);

      *(v119 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v116, v117, "payload: %s", v119, 0xCu);
      sub_10000959C(v120);
    }

    v123 = v177;
    v124 = v176;
    v125 = v187;
    sub_10000CCE4((v187 + 50), &v199);
    v126 = sub_10000BE18(&v199, v202);
    v127 = *(v125 + 488);
    v182 = v80;
    v184 = v115;
    if (v127)
    {
      sub_100065074(v127 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID, v123, &qword_1003A0178, &unk_1002C3BB0);
      v128 = v186;
      if ((*(v186 + 48))(v123, 1, v94) != 1)
      {
        (*(v128 + 32))(v124, v123, v94);
LABEL_25:
        v129 = v185;
        ObjectType = swift_getObjectType();
        v131 = *v126;
        v132 = sub_10003EFB8(v124);
        (*(v128 + 8))(v124, v94);
        sub_10000959C(&v199);
        v133 = v183;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v187 = &v172;
        v135 = *(AssociatedTypeWitness - 8);
        v136 = *(v135 + 64);
        __chkstk_darwin(AssociatedTypeWitness);
        v138 = &v172 - v137;
        v139 = (v132 & 1) == 0;
        v140 = v188;
        v141 = v184;
        v47 = v129;
        v142 = v181;
        v143 = sub_100155D44(&v172 - v137, v188, v184, v139, ObjectType, v133);
        v192 = v142;
        if (v142)
        {
          sub_100009548(v191, v182);
          sub_100009548(v189, v190);
          sub_100009548(v140, v141);
        }

        else
        {
          v204[3] = AssociatedTypeWitness;
          v145 = v143;
          v146 = v144;
          v204[4] = swift_getAssociatedConformanceWitness();
          v147 = sub_10000BE5C(v204);
          (*(v135 + 32))(v147, v138, AssociatedTypeWitness);
          sub_10000CCE4(v204, &v199);
          sub_100004074(&qword_1003A37F0, &unk_1002C7830);
          type metadata accessor for AAASigningIdentity();
          swift_dynamicCast();
          v148 = v197;
          v149 = *(v197 + 10);
          v150 = *(v197 + 11);
          v151 = objc_allocWithZone(SPRTransactionSignature);
          sub_1000094F4(v145, v146);
          sub_1000094F4(v149, v150);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v153 = String._bridgeToObjectiveC()();
          v154 = Data._bridgeToObjectiveC()().super.isa;
          v183 = [v151 initWithSignature:isa algorithm:v153 keyId:v154];

          sub_100009548(v149, v150);
          v187 = v145;
          v186 = v146;
          sub_100009548(v145, v146);
          v155 = *(v148 + 5);
          v156 = *(v155 + 16);
          if (v156)
          {
            v181 = v148;
            v199 = _swiftEmptyArrayStorage;

            sub_10004E2DC(0, v156, 0);
            v157 = v199;
            v158 = (v155 + 40);
            do
            {
              v159 = *(v158 - 1);
              v160 = *v158;
              sub_1000094F4(v159, *v158);
              v161 = Data.base64EncodedString(options:)(0);
              sub_100009548(v159, v160);
              v199 = v157;
              v163 = v157[2];
              v162 = v157[3];
              if (v163 >= v162 >> 1)
              {
                sub_10004E2DC((v162 > 1), v163 + 1, 1);
                v157 = v199;
              }

              v158 += 2;
              v157[2] = v163 + 1;
              *&v157[2 * v163 + 4] = v161;
              --v156;
            }

            while (v156);

            v164 = v190;
            v148 = v181;
          }

          else
          {
            v164 = v190;
          }

          v165 = *(v148 + 3);
          v166 = *(v148 + 4);
          sub_1000094F4(v165, v166);
          Data.base64EncodedString(options:)(0);
          sub_100009548(v165, v166);
          v167 = objc_allocWithZone(SPRTransactionBatchSignature);
          v168 = Array._bridgeToObjectiveC()().super.isa;

          v169 = String._bridgeToObjectiveC()();

          v170 = v167;
          v171 = v183;
          v47 = [v170 initWithSignature:v183 intermediates:v168 leaf:v169];

          sub_100009548(v187, v186);
          sub_100009548(v188, v184);
          sub_100009548(v189, v164);
          sub_100009548(v191, v182);
          sub_10000959C(v204);
        }

        return v47;
      }
    }

    else
    {
      v128 = v186;
      (*(v186 + 56))(v123, 1, 1, v94);
    }

    UUID.init(uuid:)();
    if ((*(v128 + 48))(v123, 1, v94) != 1)
    {
      sub_10000BD44(v123, &qword_1003A0178, &unk_1002C3BB0);
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10010AF68(uint64_t a1)
{
  v3 = __chkstk_darwin(a1);
  v400 = v4;
  v401 = v2;
  v5 = v1;
  v404 = v6;
  v387 = v7;
  v399 = v3;
  v8 = *v1;
  v9 = type metadata accessor for BitString();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v371 = v354 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  v376 = *(v12 - 8);
  *&v377 = v12;
  v13 = *(v376 + 64);
  __chkstk_darwin(v12);
  v384 = v354 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v375 = v354 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v380 = v354 - v20;
  v21 = __chkstk_darwin(v19);
  v379 = v354 - v22;
  v23 = __chkstk_darwin(v21);
  *&v378 = v354 - v24;
  v25 = __chkstk_darwin(v23);
  v383 = (v354 - v26);
  v27 = __chkstk_darwin(v25);
  v382 = v354 - v28;
  v29 = __chkstk_darwin(v27);
  v396 = v354 - v30;
  v31 = __chkstk_darwin(v29);
  v389 = v354 - v32;
  v33 = __chkstk_darwin(v31);
  v394 = v354 - v34;
  v35 = __chkstk_darwin(v33);
  v391 = v354 - v36;
  __chkstk_darwin(v35);
  v395 = v354 - v37;
  v38 = type metadata accessor for TLVTag();
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v381 = (v354 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __chkstk_darwin(v40);
  v386 = v354 - v43;
  __chkstk_darwin(v42);
  v397 = v354 - v44;
  v45 = type metadata accessor for TLV();
  v405 = *(v45 - 8);
  v46 = *(v405 + 64);
  v47 = __chkstk_darwin(v45);
  v372 = v354 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v385 = v354 - v50;
  v51 = __chkstk_darwin(v49);
  v370 = v354 - v52;
  v53 = __chkstk_darwin(v51);
  v390 = v354 - v54;
  v55 = __chkstk_darwin(v53);
  v388 = v354 - v56;
  v57 = __chkstk_darwin(v55);
  v374 = v354 - v58;
  __chkstk_darwin(v57);
  v393 = v354 - v59;
  v403 = type metadata accessor for OSSignpostID();
  v60 = *(v403 - 8);
  v61 = *(v60 + 64);
  v62 = __chkstk_darwin(v403);
  v64 = v354 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v66 = v354 - v65;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  v373 = sub_10000403C(v67, qword_1003A35F0);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();
  v70 = os_log_type_enabled(v68, v69);
  v402 = v45;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v392 = v66;
    v72 = v71;
    v73 = swift_slowAlloc();
    v398 = v5;
    v415[0] = v73;
    *v72 = 136315394;
    v74 = _typeName(_:qualified:)();
    v76 = v60;
    v77 = sub_100008F6C(v74, v75, v415);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    v78 = showFunction(signature:_:)(0xD00000000000002ALL, 0x800000010034E1E0, _swiftEmptyArrayStorage);
    v80 = sub_100008F6C(v78, v79, v415);

    *(v72 + 14) = v80;
    v60 = v76;
    _os_log_impl(&_mh_execute_header, v68, v69, "%s.%s", v72, 0x16u);
    swift_arrayDestroy();
    v5 = v398;

    v66 = v392;
  }

  if (qword_10039D618 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for OSSignposter();
  sub_10000403C(v81, qword_1003A3608);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v82 = v66;
  v83 = OSSignposter.logHandle.getter();
  v84 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, v84, v86, "reader-getSecureBlob", "begin generateSecureReaderBlob", v85, 2u);
  }

  v87 = v403;
  (*(v60 + 16))(v64, v82, v403);
  v88 = type metadata accessor for OSSignpostIntervalState();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  v91 = OSSignpostIntervalState.init(id:isOpen:)();
  v92 = v5[39];
  sub_10011BBA0(&off_10037EB90);
  sub_10011B164(&off_10037EB68);
  v93 = (v404 >> 60);
  *(v92 + 130) = v404 >> 60 != 15;
  v94 = v401;
  sub_1001149DC(v399, v400, &v416);
  if (v94)
  {
    *(v92 + 168) = 4034;
    swift_willThrow();
    sub_10010E6DC(v91, v5);

    goto LABEL_76;
  }

  v366 = v446;
  v369 = v60;
  if (v93 >= 0xF)
  {
    v362 = 0;
    v363 = v92;
    v364 = v91;
    v392 = v82;
    sub_100117364(v414);
LABEL_14:
    memcpy(v415, v414, sizeof(v415));
    v97 = v402;
    v93 = v405;
    goto LABEL_15;
  }

  v95 = v387;
  v96 = v404;
  sub_10001A3E8(v387, v404);
  sub_100115998(v95, v96, v447);
  v362 = 0;
  v363 = v92;
  v364 = v91;
  v392 = v82;
  v398 = v5;
  memcpy(v414, v447, sizeof(v414));
  nullsub_1(v414);
  v461 = v429;
  v462 = v430;
  v463 = v431;
  v464 = v432;
  v457 = v425;
  v458 = v426;
  v459 = v427;
  v460 = v428;
  v453 = v421;
  v454 = v422;
  v455 = v423;
  v124 = v417;
  v125 = v418;
  v400 = v419;
  v401 = v420;
  v456 = v424;
  v367 = v434;
  v368 = v433;
  memcpy(v451, v447, sizeof(v451));
  v93 = *(&v451[1] + 1);
  v126 = *&v451[1];
  v127 = *(&v451[2] + 1);
  v399 = *&v451[2];
  if (v416 != v451[0] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v124 != v126 || v125 != v93) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v401)
  {
    if (!v127 || (v400 != v399 || v401 != v127) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (v127)
  {
LABEL_71:
    *(v363 + 168) = 4000;
    v232 = 0xD000000000000032;
    v233 = 0x800000010034E0C0;
LABEL_72:
    sub_1000207FC(4000, v232, v233, 0);
    swift_willThrow();
    sub_10001A074(v387, v404);
    sub_10011750C(v447);
    goto LABEL_73;
  }

  v465[8] = v461;
  v465[9] = v462;
  v465[10] = v463;
  v465[11] = v464;
  v465[4] = v457;
  v465[5] = v458;
  v465[6] = v459;
  v465[7] = v460;
  v465[0] = v453;
  v465[1] = v454;
  v465[2] = v455;
  v465[3] = v456;
  v452[8] = v451[11];
  v452[9] = v451[12];
  v452[10] = v451[13];
  v452[11] = v451[14];
  v452[4] = v451[7];
  v452[5] = v451[8];
  v452[6] = v451[9];
  v452[7] = v451[10];
  v452[0] = v451[3];
  v452[1] = v451[4];
  v452[2] = v451[5];
  v452[3] = v451[6];
  if (!sub_1001769F4(v465, v452))
  {
    goto LABEL_71;
  }

  v226 = *(&v451[15] + 1);
  v225 = *&v451[15];
  sub_100034958(v451, v411);
  LOBYTE(v225) = sub_10017688C(v368, v367, v225, v226);
  sub_10008C3EC(v451);
  if ((v225 & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v436 != v447[17] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    *(v363 + 168) = 4000;
    v233 = 0x800000010034E100;
    v232 = 0xD000000000000033;
    goto LABEL_72;
  }

  v411[2] = v447[20];
  v411[3] = v447[21];
  v411[4] = v447[22];
  v411[0] = v447[18];
  v411[1] = v447[19];
  if (*(&v447[21] + 1))
  {
    v227 = *(&v411[0] + 1);
    v93 = *&v411[0];
    v228 = v437;
    v229 = v411[1];
    v230 = v411[2];
    v400 = *&v411[4];
    v401 = v438;
    v399 = *(&v411[4] + 1);
    sub_1000094F4(*&v411[0], *(&v411[0] + 1));
    sub_1000094F4(v229, *(&v229 + 1));
    sub_1000094F4(v230, *(&v230 + 1));

    sub_1000094F4(v400, v399);
    v231 = sub_10017688C(v228, v401, v93, v227);
    v5 = v398;
    if (v231)
    {
      sub_1001174DC(v411);
      sub_10001A074(v387, v404);
      goto LABEL_14;
    }

    *(v363 + 168) = 4000;
    sub_1000207FC(4000, 0xD000000000000035, 0x800000010034E180, 0);
    swift_willThrow();
    sub_1001174DC(v411);
LABEL_113:
    sub_10001A074(v387, v404);
    sub_10011750C(v447);
    sub_10011739C(&v416);
    v234 = v364;
    v235 = v5;
    goto LABEL_74;
  }

  v5 = v398;
  v97 = v402;
  v93 = v405;
  if ((v366 & 1) == 0)
  {
    sub_1000207FC(4000, 0xD00000000000003FLL, 0x800000010034E140, 0);
    swift_willThrow();
    goto LABEL_113;
  }

  sub_10001A074(v387, v404);
  memcpy(v415, v414, sizeof(v415));
  v366 = 1;
LABEL_15:
  v99 = v5[27];
  v98 = v5[28];
  v398 = v5;
  sub_10000BE18(v5 + 24, v99);
  (*(*(v98 + 8) + 24))(v99);
  v359 = Double.description.getter();
  v367 = v100;
  static TLVTag.asn1Sequence.getter();
  v101 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
  v102 = *(v93 + 9);
  v103 = *(v93 + 80);
  v104 = (v103 + 32) & ~v103;
  v361 = 3 * v102;
  v387 = v103;
  v399 = v101;
  v105 = swift_allocObject();
  v357 = xmmword_1002C1790;
  *(v105 + 16) = xmmword_1002C1790;
  v401 = v104;
  sub_1000094F4(v441, v442);
  static TLVTag.asn1OctetString.getter();
  TLV.init(tag:octetString:)();
  sub_1000094F4(v443, v444);
  static TLVTag.asn1OctetString.getter();
  v400 = v102;
  TLV.init(tag:octetString:)();
  sub_1000094F4(v439, v440);
  static TLVTag.asn1OctetString.getter();
  v360 = 2 * v102;
  v106 = v405;
  TLV.init(tag:octetString:)();
  TLV.init(tag:children:)();
  v107 = *(v106 + 56);
  v107(v395, 1, 1, v97);
  v107(v391, 1, 1, v97);
  v107(v394, 1, 1, v97);
  memcpy(v414, v415, sizeof(v414));
  v108 = sub_100031A30(v414);
  v109 = v97;
  v365 = v106 + 56;
  v368 = v107;
  if (v108 != 1)
  {
    v110 = *(&v414[21] + 1);
    if (*(&v414[21] + 1))
    {
      v111 = *(&v414[22] + 1);
      v112 = *&v414[22];
      v354[0] = *&v414[21];
      v113 = *(&v414[20] + 1);
      v114 = *&v414[20];
      v404 = *(&v414[19] + 1);
      v356 = *&v414[19];
      sub_100065074(v415, v411, &qword_1003A37E8, &unk_1002C7820);
      sub_1001174A4(&v414[18], v411);
      v358 = v110;

      static TLVTag.asn1Sequence.getter();
      *(swift_allocObject() + 16) = v357;
      sub_1000094F4(v114, v113);
      static TLVTag.asn1OctetString.getter();
      TLV.init(tag:octetString:)();
      sub_1000094F4(v112, v111);
      static TLVTag.asn1OctetString.getter();
      v115 = v402;
      TLV.init(tag:octetString:)();
      sub_1000094F4(v356, v404);
      static TLVTag.asn1OctetString.getter();
      v109 = v115;
      TLV.init(tag:octetString:)();
      v116 = v374;
      TLV.init(tag:children:)();
      TLVTag.init(contextSpecific:isConstructed:)();
      v117 = v401;
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1002C1660;
      v119 = v405;
      (*(v405 + 16))(v118 + v117, v116, v109);
      v120 = v389;
      TLV.init(tag:children:)();
      v121 = v395;
      sub_10000BD44(v395, &unk_10039E210, &unk_1002C65B0);
      v368(v120, 0, 1, v109);
      sub_1001173FC(v120, v121);
      static TLVTag.asn1Boolean.getter();
      TLV.init(tag:BOOLean:)();
      sub_1001174DC(&v414[18]);
      sub_10000BD44(v415, &qword_1003A37E8, &unk_1002C7820);
      (*(v119 + 8))(v116, v109);
      v122 = v394;
      sub_10000BD44(v394, &unk_10039E210, &unk_1002C65B0);
      v368(v120, 0, 1, v109);
      v123 = v122;
      v107 = v368;
      sub_1001173FC(v120, v123);
      goto LABEL_31;
    }

    memcpy(v411, v415, sizeof(v411));
    sub_10011746C(v411, &v407);
    static TLVTag.asn1Boolean.getter();
    v128 = v389;
    TLV.init(tag:BOOLean:)();
    sub_10000BD44(v415, &qword_1003A37E8, &unk_1002C7820);
    v129 = v394;
    sub_10000BD44(v394, &unk_10039E210, &unk_1002C65B0);
    v107(v128, 0, 1, v97);
    sub_1001173FC(v128, v129);
  }

  v354[0] = 0;
  v358 = 0;
LABEL_31:
  v107(v396, 1, 1, v109);
  v130 = v400;
  v131 = v401;
  v132 = v405;
  if (v445)
  {

    static TLVTag.asn1IA5String.getter();
    v133 = v374;
    TLV.init(tag:string:)();
    TLVTag.init(contextSpecific:isConstructed:)();
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_1002C1660;
    v135 = *(v132 + 16);
    v136 = v132;
    v137 = v402;
    v135(v134 + v131, v133, v402);
    v138 = v389;
    TLV.init(tag:children:)();
    (*(v136 + 8))(v133, v137);
    v139 = v396;
    sub_10000BD44(v396, &unk_10039E210, &unk_1002C65B0);
    v140 = v137;
    v132 = v136;
    v368(v138, 0, 1, v140);
    sub_1001173FC(v138, v139);
  }

  v141 = swift_allocObject();
  v404 = v141;
  *(v141 + 16) = xmmword_1002C7740;
  v142 = v141 + v131;
  static TLVTag.asn1IA5String.getter();

  TLV.init(tag:string:)();
  static TLVTag.asn1IA5String.getter();

  TLV.init(tag:string:)();
  static TLVTag.asn1IA5String.getter();
  v143 = v436;

  v355 = v143;
  TLV.init(tag:string:)();
  static TLVTag.asn1Boolean.getter();
  TLV.init(tag:BOOLean:)();
  sub_1000094F4(v437, v438);
  static TLVTag.asn1OctetString.getter();
  TLV.init(tag:octetString:)();
  v356 = 4 * v130;
  v144 = *(v132 + 16);
  v354[2] = 5 * v130;
  v145 = v402;
  v374 = v132 + 16;
  v359 = v144;
  v144(v142 + 5 * v130, v393, v402);
  static TLVTag.asn1IA5String.getter();
  v146 = *sub_10000BE18(v398 + 7, v398[10]);
  sub_100034704(v448);
  memcpy(v466, v448, sizeof(v466));
  if (sub_100031A30(v466) != 1)
  {
  }

  v354[1] = 6 * v130;
  TLV.init(tag:string:)();
  v147 = v395;
  v148 = v382;
  sub_100065074(v395, v382, &unk_10039E210, &unk_1002C65B0);
  v149 = *(v405 + 48);
  v150 = (v149)(v148, 1, v145);
  sub_10000BD44(v148, &unk_10039E210, &unk_1002C65B0);
  if (v150 != 1)
  {
    v159 = v383;
    sub_100065074(v147, v383, &unk_10039E210, &unk_1002C65B0);
    v160 = v149;
    v161 = (v149)(v159, 1, v145);
    if (v161 != 1)
    {
      v162 = v145;
      v164 = *(v404 + 16);
      v163 = *(v404 + 24);
      v165 = v164 + 1;
      v166 = v396;
      if (v164 >= v163 >> 1)
      {
        goto LABEL_133;
      }

      goto LABEL_42;
    }

    goto LABEL_137;
  }

  v151 = v396;
  v152 = v378;
  v153 = v388;
  v154 = v149;
  if ((v366 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  sub_100065074(v394, v152, &unk_10039E210, &unk_1002C65B0);
  v155 = v402;
  v156 = (v154)(v152, 1, v402);
  v157 = v404;
  if (v156 == 1)
  {
    static TLVTag.asn1Boolean.getter();
    TLV.init(tag:BOOLean:)();
    v158 = v154;
    if ((v154)(v152, 1, v155) != 1)
    {
      sub_10000BD44(v152, &unk_10039E210, &unk_1002C65B0);
    }
  }

  else
  {
    v158 = v154;
    (*(v405 + 32))(v153, v152, v155);
  }

  TLVTag.init(contextSpecific:isConstructed:)();
  v169 = v401;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1002C1660;
  v359(v170 + v169, v153, v155);
  v171 = v389;
  TLV.init(tag:children:)();
  v172 = v391;
  sub_10000BD44(v391, &unk_10039E210, &unk_1002C65B0);
  v368(v171, 0, 1, v155);
  sub_1001173FC(v171, v172);
  v173 = v172;
  v174 = v379;
  sub_100065074(v173, v379, &unk_10039E210, &unk_1002C65B0);
  v161 = (v158)(v174, 1, v155);
  if (v161 == 1)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v176 = v157[2];
  v175 = v157[3];
  if (v176 >= v175 >> 1)
  {
    v404 = sub_10004D91C(v175 > 1, v176 + 1, 1, v157);
  }

  else
  {
    v404 = v157;
  }

  v177 = v405;
  v168 = v402;
  (*(v405 + 8))(v388, v402);
  v178 = v404;
  *(v404 + 16) = v176 + 1;
  (*(v177 + 32))(v178 + v401 + v176 * v400, v379, v168);
  v151 = v396;
  while (1)
  {
    v179 = v151;
    v180 = v380;
    sub_100065074(v151, v380, &unk_10039E210, &unk_1002C65B0);
    v181 = (v158)(v180, 1, v168);
    sub_10000BD44(v180, &unk_10039E210, &unk_1002C65B0);
    if (v181 == 1)
    {
      v182 = v168;
      v183 = v404;
    }

    else
    {
      v184 = v375;
      sub_100065074(v179, v375, &unk_10039E210, &unk_1002C65B0);
      v161 = (v158)(v184, 1, v168);
      if (v161 == 1)
      {
        goto LABEL_139;
      }

      v183 = v404;
      v185 = v405;
      v187 = *(v404 + 16);
      v186 = *(v404 + 24);
      if (v187 >= v186 >> 1)
      {
        v183 = sub_10004D91C(v186 > 1, v187 + 1, 1, v404);
      }

      v188 = v401;
      v182 = v402;
      v183[2] = v187 + 1;
      (*(v185 + 32))(v183 + v188 + v187 * v400, v375, v182);
    }

    static TLVTag.asn1Sequence.getter();

    v404 = v183;
    TLV.init(tag:children:)();
    v189 = v384;
    static String.Encoding.utf8.getter();
    v190 = String.data(using:allowLossyConversion:)();
    v192 = v191;
    v161 = (*(v376 + 8))(v189, v377);
    if (v192 >> 60 == 15)
    {
      goto LABEL_136;
    }

    v193 = TLV.dataRepresentation.getter();
    v195 = v194;
    v407 = v190;
    v408 = v192;
    *(&v411[1] + 1) = &type metadata for Data;
    *&v411[2] = &protocol witness table for Data;
    *&v411[0] = v193;
    *(&v411[0] + 1) = v194;
    v196 = sub_10000BE18(v411, &type metadata for Data);
    v197 = *v196;
    v198 = v196[1];
    sub_10001A3E8(v190, v192);
    sub_1000094F4(v193, v195);
    v199 = v362;
    sub_1000A1C34(v197, v198);
    sub_100009548(v193, v195);
    sub_10001A074(v190, v192);
    sub_10000959C(v411);
    v200 = v407;
    v201 = v408;
    v202 = Data.sha256Digest.getter();
    v204 = v203;
    sub_100009548(v200, v201);
    v205 = *sub_10000BE18(v398 + 19, v398[22]);
    sub_10014FBB4(201, 0x726564616572, 0xE600000000000000, 4, 0);
    v388 = v204;
    v389 = v202;
    if (v199)
    {

      v207 = v405;
      *(v363 + 168) = 4048;
      swift_errorRetain();
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.error.getter();

      v215 = os_log_type_enabled(v213, v214);
      v60 = v369;
      if (v215)
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *v216 = 138412290;
        swift_errorRetain();
        v218 = _swift_stdlib_bridgeErrorToNSError();
        *(v216 + 4) = v218;
        *v217 = v218;
        _os_log_impl(&_mh_execute_header, v213, v214, "Error attempting to sign: %@", v216, 0xCu);
        sub_10000BD44(v217, &unk_10039E220, &qword_1002C3D60);

        v207 = v405;
      }

      sub_1000207FC(4048, 0xD00000000000001ALL, 0x800000010034DF80, 0);
      swift_willThrow();
      sub_100009548(v389, v388);

      sub_10000BD44(v415, &qword_1003A37E8, &unk_1002C7820);
      v93 = *(v207 + 8);
      v93(v390, v182);
      sub_10000BD44(v396, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v394, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v391, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v395, &unk_10039E210, &unk_1002C65B0);
      v93(v393, v182);
      sub_10011739C(&v416);
      v219 = v364;
      v220 = v398;
LABEL_62:
      sub_10010E6DC(v219, v220);

      v82 = v392;
      v87 = v403;
      goto LABEL_76;
    }

    v208 = v206;
    ObjectType = swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v383 = v354;
    v382 = *(AssociatedTypeWitness - 8);
    v211 = (*(v382 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(AssociatedTypeWitness);
    v166 = v354 - v212;
    v379 = sub_100155ECC(v354 - v212, v202, v204, 1u, ObjectType, v208);
    v380 = v221;
    v409 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v410 = AssociatedConformanceWitness;
    v223 = sub_10000BE5C(&v407);
    (*(v382 + 32))(v223, v166, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v224 = swift_allocObject();
    v378 = xmmword_1002C1660;
    *(v224 + 16) = xmmword_1002C1660;
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    TLV.init(dataRepresentation:)();
    v383 = 0;
    v164 = v409;
    v237 = v410;
    sub_10000BE18(&v407, v409);
    v238 = (*(v237 + 56))(v164, v237);
    v162 = v402;
    v382 = *(v238 + 16);
    if (!v382)
    {
      break;
    }

    v165 = 0;
    v381 = (v405 + 32);
    v160 = (v238 + 40);
    while (1)
    {
      v163 = *(v238 + 16);
      if (v165 >= v163)
      {
        break;
      }

      v166 = v238;
      v164 = *(v160 - 1);
      v239 = *v160;
      sub_1000094F4(v164, *v160);
      sub_1000094F4(v164, v239);
      v240 = v383;
      TLV.init(dataRepresentation:)();
      v383 = v240;
      if (v240)
      {
        goto LABEL_94;
      }

      v242 = *(v224 + 16);
      v241 = *(v224 + 24);
      if (v242 >= v241 >> 1)
      {
        v224 = sub_10004D91C(v241 > 1, v242 + 1, 1, v224);
      }

      ++v165;
      sub_100009548(v164, v239);
      *(v224 + 16) = v242 + 1;
      v243 = v400;
      v244 = v224 + v401 + v242 * v400;
      v162 = v402;
      (*v381)(v244, v385, v402);
      v160 += 2;
      v238 = v166;
      if (v382 == v165)
      {
        goto LABEL_87;
      }
    }

    __break(1u);
LABEL_133:
    v404 = sub_10004D91C(v163 > 1, v165, 1, v404);
LABEL_42:
    v152 = v378;
    v153 = v388;
    v167 = v404;
    *(v404 + 16) = v165;
    (*(v405 + 32))(v167 + v401 + v164 * v400, v383, v162);
    v151 = v166;
    v154 = v160;
    if (v366)
    {
      goto LABEL_37;
    }

LABEL_43:
    v158 = v154;
    v168 = v402;
  }

  v243 = v400;
LABEL_87:

  static TLVTag.asn1Sequence.getter();
  v245 = v401;
  v246 = swift_allocObject();
  v377 = xmmword_1002C1690;
  *(v246 + 16) = xmmword_1002C1690;
  v164 = v246 + v245;
  static TLVTag.asn1IA5String.getter();
  TLV.init(tag:string:)();
  v359(v164 + v243, v390, v162);
  sub_1000094F4(v379, v380);
  BitString.init(data:unusedBits:)();
  static TLVTag.asn1BitString.getter();
  TLV.init(tag:bitString:)();
  static TLVTag.asn1Sequence.getter();
  TLV.init(tag:children:)();
  v247 = v372;
  TLV.init(tag:children:)();
  v248 = TLV.dataRepresentation.getter();
  v250 = v249;
  v376 = sub_100004074(&qword_1003A6740, &unk_1002C2930);
  v239 = swift_allocObject();
  *(v239 + 16) = v378;
  *&v411[0] = 0;
  *(&v411[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(v411, "payloadData[");
  BYTE13(v411[0]) = 0;
  HIWORD(v411[0]) = -5120;
  v251 = v250 >> 62;
  if ((v250 >> 62) <= 1)
  {
    v252 = v405;
    if (!v251)
    {
      v253 = BYTE6(v250);
      goto LABEL_97;
    }

    LODWORD(v253) = HIDWORD(v248) - v248;
    if (!__OFSUB__(HIDWORD(v248), v248))
    {
      v253 = v253;
      goto LABEL_97;
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v253 = 0;
  v252 = v405;
  if (v251 == 2)
  {
    v255 = *(v248 + 16);
    v254 = *(v248 + 24);
    v256 = __OFSUB__(v254, v255);
    v253 = v254 - v255;
    if (v256)
    {
      __break(1u);
LABEL_94:
      sub_100009548(v164, v239);

      v257 = v398;
      v60 = v369;
      v258 = v383;
      *(v363 + 168) = 4048;
      swift_errorRetain();
      sub_1000207FC(4048, 0xD00000000000003BLL, 0x800000010034DFA0, v258);

      swift_willThrow();
      sub_100009548(v389, v388);
      sub_100009548(v379, v380);

      sub_10000BD44(v415, &qword_1003A37E8, &unk_1002C7820);
      v93 = *(v405 + 8);
      v93(v390, v162);
      sub_10000BD44(v396, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v394, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v391, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v395, &unk_10039E210, &unk_1002C65B0);
      v93(v393, v162);
      sub_10000959C(&v407);
      sub_10011739C(&v416);
      v219 = v364;
      v220 = v257;
      goto LABEL_62;
    }
  }

LABEL_97:
  *&v412 = v253;
  v259._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v259);

  v260._countAndFlagsBits = 15709;
  v260._object = 0xE200000000000000;
  String.append(_:)(v260);
  v261 = Data.hexString()();
  String.append(_:)(v261);

  v262 = v411[0];
  *(v239 + 56) = &type metadata for String;
  *(v239 + 32) = v262;
  print(_:separator:terminator:)();

  v263 = *(v252 + 8);
  v405 = v252 + 8;
  v385 = v263;
  (v263)(v247, v162);
  sub_10000BE18(v398 + 14, v398[17]);
  v264 = v435;
  type metadata accessor for CertificateManager();
  v381 = v264;
  v382 = v248;
  v265 = v383;
  sub_10004CEA8(v411);
  if (!v265)
  {
    v371 = v250;
    v267 = v411[0];
    v374 = *(&v411[1] + 1);
    v375 = *&v411[1];
    v268 = *(&v411[2] + 1);
    v383 = *&v411[2];
    static TLVTag.asn1Sequence.getter();
    *(swift_allocObject() + 16) = xmmword_1002C7750;
    static TLVTag.asn1IA5String.getter();
    TLV.init(tag:string:)();
    v372 = *(&v267 + 1);
    v373 = v267;
    sub_1000094F4(v267, *(&v267 + 1));
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    static TLVTag.asn1IA5String.getter();

    TLV.init(tag:string:)();
    static TLVTag.asn1IA5String.getter();

    TLV.init(tag:string:)();
    v270 = v374;
    v269 = v375;
    sub_1000094F4(v375, v374);
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    v271 = v383;
    sub_1000094F4(v383, v268);
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    TLV.init(tag:children:)();
    sub_100009548(v373, v372);
    sub_100009548(v269, v270);
    sub_100009548(v271, v268);
    v161 = Data.init(base64Encoded:options:)();
    if (v272 >> 60 == 15)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v273 = v161;
    v274 = v272;
    sub_1001164D0(v161, v272, v449);
    v401 = 0;
    sub_10001A074(v273, v274);
    v278 = v449[0];
    v279 = v449[1];
    v381 = sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    v280 = swift_allocObject();
    *(v280 + 16) = v357;
    *(v280 + 32) = 0x687469726F676C61;
    *(v280 + 40) = 0xE90000000000006DLL;
    *(v280 + 48) = v278;
    *(v280 + 56) = v279;
    *(v280 + 64) = 30313;
    *(v280 + 72) = 0xE200000000000000;
    v281 = v449[2];
    v282 = v449[3];

    v399 = v282;
    v400 = v281;
    *(v280 + 80) = Data.base64EncodedString(options:)(0);
    strcpy((v280 + 96), "cipheredData");
    *(v280 + 109) = 0;
    *(v280 + 110) = -5120;
    v397 = v449[4];
    v387 = v449[5];
    *(v280 + 112) = Data.base64EncodedString(options:)(0);
    v283 = sub_100183EFC(v280);
    swift_setDeallocating();
    v375 = sub_100004074(&qword_10039FE90, &unk_1002C5970);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v386 = sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    v284 = swift_allocObject();
    *(v284 + 16) = v378;
    *(v284 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v284 + 40) = v285;
    v286 = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v284 + 72) = v286;
    *(v284 + 48) = v283;

    v287 = sub_100182BA0(v284);
    swift_setDeallocating();
    sub_10000BD44(v284 + 32, &qword_10039E4D0, &qword_1002C94A0);
    swift_deallocClassInstance();
    v406 = v287;
    v288 = v370;
    if (v358)
    {
      v383 = v279;
      v289 = Data.init(base64Encoded:options:)();
      v291 = v290;

      if (v291 >> 60 == 15)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        v353 = v161;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v292 = v401;
      sub_1001164D0(v289, v291, v450);
      v60 = v369;
      v362 = v292;
      if (v292)
      {

        sub_10001A074(v289, v291);
        v294 = v401;
        v293 = v402;
        v295 = v362;
        v296 = v389;
        *(v363 + 168) = 4047;
        v93 = v295;
        swift_willThrow();
        sub_100009548(v296, v388);
        sub_100009548(v382, v371);
        sub_100009548(v379, v380);
        sub_10000BD44(v415, &qword_1003A37E8, &unk_1002C7820);
        v275 = v288;
        v276 = v385;
        (v385)(v275, v293);
        (v276)(v390, v293);
        sub_10000BD44(v396, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v394, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v391, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v395, &unk_10039E210, &unk_1002C65B0);
        (v276)(v393, v293);
        sub_10000959C(&v407);
        sub_10011739C(&v416);
        v277 = v398;
        if (!v294)
        {

          sub_100009548(v400, v399);
          sub_100009548(v397, v387);
        }

        sub_10010E6DC(v364, v277);

        v82 = v392;
        v87 = v403;
        goto LABEL_76;
      }

      sub_10001A074(v289, v291);
      v298 = swift_allocObject();
      *(v298 + 32) = 0x687469726F676C61;
      *(v298 + 16) = v357;
      v299 = v450[0];
      v300 = v450[1];
      *(v298 + 40) = 0xE90000000000006DLL;
      *(v298 + 48) = v299;
      *(v298 + 56) = v300;
      *(v298 + 64) = 1953259891;
      *(v298 + 72) = 0xE400000000000000;

      *(v298 + 80) = Data.base64EncodedString(options:)(0);
      *(v298 + 96) = 0x6B636F6C426E6970;
      *(v298 + 104) = 0xE800000000000000;
      *(v298 + 112) = Data.base64EncodedString(options:)(0);
      v301 = sub_100183EFC(v298);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v413 = v286;
      *&v412 = v301;
      v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100112208(&v412, v302, v303, v411);

      sub_1001173CC(v450);
      sub_10000BD44(v411, &qword_10039E248, &qword_1002C23D0);
      v297 = v362;
    }

    else
    {

      v297 = v401;
    }

    v304 = swift_allocObject();
    *(v304 + 16) = v377;
    *(v304 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v304 + 72) = &type metadata for String;
    *(v304 + 40) = v305;
    *(v304 + 48) = 3235636;
    *(v304 + 56) = 0xE300000000000000;
    *(v304 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v304 + 88) = v306;
    v307 = TLV.dataRepresentation.getter();
    v309 = v308;
    v310 = Data.base64EncodedString(options:)(0);
    sub_100009548(v307, v309);
    *(v304 + 120) = &type metadata for String;
    *(v304 + 96) = v310;
    *(v304 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v304 + 136) = v311;
    v312 = v406;
    v313 = sub_100004074(&qword_1003A0190, &unk_1002C4040);
    *(v304 + 168) = v313;
    *(v304 + 144) = v312;
    *(v304 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v304 + 184) = v314;
    *(v304 + 216) = &type metadata for String;
    v315 = *(&v355 + 1);
    *(v304 + 192) = v355;
    *(v304 + 200) = v315;

    v316 = sub_100182BA0(v304);
    swift_setDeallocating();
    sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v411[1] + 1) = v313;
    *&v411[0] = v316;

    v317 = sub_100099560(v411, 8, 0);
    if (v297)
    {

      sub_10000959C(v411);
      *(v363 + 168) = 4048;
      swift_errorRetain();
      sub_1000207FC(4048, 0xD00000000000002ELL, 0x800000010034E010, v297);

      swift_willThrow();
      sub_100009548(v389, v388);
      sub_100009548(v382, v371);

      sub_100009548(v379, v380);
      sub_10000BD44(v415, &qword_1003A37E8, &unk_1002C7820);
      v319 = v402;
      v320 = v385;
      (v385)(v370, v402);
      (v320)(v390, v319);
      v93 = &unk_1002C65B0;
      sub_10000BD44(v396, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v394, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v391, &unk_10039E210, &unk_1002C65B0);
      sub_10000BD44(v395, &unk_10039E210, &unk_1002C65B0);
      (v320)(v393, v319);
      sub_1001173CC(v449);
      sub_10000959C(&v407);
      sub_10011739C(&v416);
      sub_10010E6DC(v364, v398);

      goto LABEL_75;
    }

    v93 = v317;
    v321 = v318;
    v362 = 0;
    sub_10000959C(v411);
    v322 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v411[0] = 0;
    v324 = [v322 dataWithJSONObject:isa options:9 error:v411];

    v161 = *&v411[0];
    if (!v324)
    {
      goto LABEL_143;
    }

    v325 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v327 = v326;

    static String.Encoding.utf8.getter();
    v404 = v325;
    v401 = v327;
    v328 = String.init(data:encoding:)();
    if (v329)
    {
      v330 = v328;
      v331 = v329;
      v332 = swift_allocObject();
      *(v332 + 16) = v378;
      *&v411[0] = 0;
      *(&v411[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v333._object = 0x800000010034E080;
      v333._countAndFlagsBits = 0xD000000000000033;
      String.append(_:)(v333);
      v334._countAndFlagsBits = v330;
      v334._object = v331;
      String.append(_:)(v334);

      v335 = v411[0];
      *(v332 + 56) = &type metadata for String;
      *(v332 + 32) = v335;
      print(_:separator:terminator:)();
    }

    v336 = swift_allocObject();
    *(v336 + 16) = v378;
    *&v411[0] = 0;
    *(&v411[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    *&v411[0] = 0xD000000000000013;
    *(&v411[0] + 1) = 0x800000010034E060;
    v337 = v321 >> 62;
    if ((v321 >> 62) > 1)
    {
      v338 = 0;
      v339 = v398;
      if (v337 != 2)
      {
LABEL_131:
        *&v412 = v338;
        v342._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v342);

        v343._countAndFlagsBits = 15709;
        v343._object = 0xE200000000000000;
        String.append(_:)(v343);
        v344 = Data.hexString()();
        String.append(_:)(v344);

        v345 = v411[0];
        *(v336 + 56) = &type metadata for String;
        *(v336 + 32) = v345;
        print(_:separator:terminator:)();

        sub_100009548(v404, v401);
        v346 = v339[37];
        v347 = v339[38];
        sub_10000BE18(v339 + 34, v346);
        sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
        v348 = swift_allocObject();
        *(v348 + 16) = v378;
        strcpy((v348 + 32), "transactionId");
        *(v348 + 72) = &type metadata for String;
        *(v348 + 80) = &protocol witness table for String;
        v349 = v355;
        *(v348 + 46) = -4864;
        *(v348 + 48) = __PAIR128__(*(&v355 + 1), v349);

        v350 = sub_100184010(v348);
        swift_setDeallocating();
        sub_10000BD44(v348 + 32, &qword_10039FEC8, &unk_1002C37B0);
        swift_deallocClassInstance();
        sub_1000C2288(0x1Cu, v350, v346, v347);

        sub_100009548(v389, v388);
        sub_100009548(v382, v371);
        sub_100009548(v379, v380);
        sub_10000BD44(v415, &qword_1003A37E8, &unk_1002C7820);
        v351 = v402;
        v352 = v385;
        (v385)(v370, v402);
        (v352)(v390, v351);
        sub_10000BD44(v396, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v394, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v391, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v395, &unk_10039E210, &unk_1002C65B0);
        (v352)(v393, v351);
        sub_1001173CC(v449);
        sub_10000959C(&v407);
        sub_10011739C(&v416);
        sub_10010E6DC(v364, v398);

        (*(v369 + 8))(v392, v403);
        return v93;
      }

      v341 = *(v93 + 2);
      v340 = *(v93 + 3);
      v256 = __OFSUB__(v340, v341);
      v338 = v340 - v341;
      if (!v256)
      {
LABEL_130:
        v339 = v398;
        goto LABEL_131;
      }

      __break(1u);
    }

    else if (!v337)
    {
      v338 = BYTE6(v321);
      goto LABEL_130;
    }

    LODWORD(v338) = HIDWORD(v93) - v93;
    if (!__OFSUB__(HIDWORD(v93), v93))
    {
      v338 = v338;
      goto LABEL_130;
    }

LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  *(v363 + 168) = 4048;
  swift_errorRetain();
  sub_1000207FC(4048, 0xD000000000000021, 0x800000010034DFE0, v265);

  swift_willThrow();
  sub_100009548(v389, v388);
  sub_100009548(v382, v250);

  sub_100009548(v379, v380);
  sub_10000BD44(v415, &qword_1003A37E8, &unk_1002C7820);
  v266 = v402;
  v93 = v385;
  (v385)(v390, v402);
  sub_10000BD44(v396, &unk_10039E210, &unk_1002C65B0);
  sub_10000BD44(v394, &unk_10039E210, &unk_1002C65B0);
  sub_10000BD44(v391, &unk_10039E210, &unk_1002C65B0);
  sub_10000BD44(v395, &unk_10039E210, &unk_1002C65B0);
  v93(v393, v266);
  sub_10000959C(&v407);
LABEL_73:
  sub_10011739C(&v416);
  v234 = v364;
  v235 = v398;
LABEL_74:
  sub_10010E6DC(v234, v235);

LABEL_75:
  v87 = v403;
  v60 = v369;
  v82 = v392;
LABEL_76:
  (*(v60 + 8))(v82, v87);
  return v93;
}

void sub_10010E6DC(uint64_t a1, uint64_t a2)
{
  v19[0] = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D618 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  sub_10000403C(v12, qword_1003A3608);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v14 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "end generateSecureReaderBlob";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, "reader-getSecureBlob", v15, v16, 2u);
  }

  (*(v8 + 8))(v11, v7);
  v18 = *(*(v19[0] + 312) + 56);
  os_unfair_lock_lock(v18 + 8);
  sub_10011D358(&v18[4], 12);
  os_unfair_lock_unlock(v18 + 8);
  sub_100027534();
  sub_100027F94(&off_10037EB40);
}

uint64_t sub_10010EB40(unint64_t a1, uint64_t a2)
{
  v126 = a1;
  v127 = a2;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[27];
  v9 = v2[28];
  v125 = v2;
  sub_10000BE18(v2 + 24, v8);
  (*(*(v9 + 8) + 24))(v8);
  v10 = Double.description.getter();
  v12 = v11;
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  v18 = *(v4 + 8);
  v16 = v4 + 8;
  v17 = v18;
  v18(v7, v3);
  if (v15 >> 60 == 15)
  {
    __break(1u);
LABEL_46:
    __break(1u);
  }

  v138 = v13;
  v139 = v15;
  static String.Encoding.utf8.getter();
  object = v10;
  v19 = String.data(using:allowLossyConversion:)();
  v21 = v20;
  v17(v7, v3);
  if (v21 >> 60 == 15)
  {
    goto LABEL_46;
  }

  countAndFlagsBits = &v138;
  Data.append(_:)();
  sub_10001A074(v19, v21);
  static String.Encoding.utf8.getter();
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;
  v17(v7, v3);
  if (v25 >> 60 == 15)
  {

    sub_1000207FC(4000, 0xD00000000000002ELL, 0x800000010034DE00, 0);
    swift_willThrow();
LABEL_7:
    sub_100009548(v138, v139);
    return countAndFlagsBits;
  }

  v119 = v17;
  v120 = v16;
  v121 = v3;
  v122 = v12;
  Data.append(_:)();
  v26 = Data.sha256Digest.getter();
  v28 = v27;
  countAndFlagsBits = *sub_10000BE18(v125 + 19, v125[22]);
  v29 = v124;
  v30 = sub_10014FBB4(201, 0x726564616572, 0xE600000000000000, 4, 0);
  if (v29)
  {
    sub_100009548(v26, v28);
    sub_10001A074(v23, v25);

    goto LABEL_7;
  }

  v33 = v31;
  v117 = v23;
  v118 = v25;
  v34 = v30;
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = v98;
  v115 = *(AssociatedTypeWitness - 8);
  v37 = *(v115 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v39 = v98 - v38;
  v40 = sub_100155ECC(v98 - v38, v26, v28, 1u, ObjectType, v33);
  v116 = 0;
  v110 = v26;
  v111 = v40;
  v112 = v28;
  v113 = v41;
  v114 = v34;
  v136 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = sub_10000BE5C(v135);
  (*(v115 + 32))(v42, v39, AssociatedTypeWitness);

  v43 = Data.init(base64urlEncoded:options:)();
  if (v44 >> 60 == 15)
  {

    countAndFlagsBits = v114;
    v45 = v112;
    v46 = v110;
LABEL_21:
    sub_1000207FC(4000, 0xD000000000000033, 0x800000010034DE30, 0);
    swift_willThrow();
LABEL_22:
    sub_100009548(v111, v113);
    sub_100009548(v46, v45);
    sub_10001A074(v117, v118);
    goto LABEL_23;
  }

  v47 = v43;
  v48 = v44;
  v49 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v130 = 0;
  v51 = [v49 JSONObjectWithData:isa options:0 error:&v130];

  v46 = v110;
  v52 = v122;
  if (!v51)
  {
    countAndFlagsBits = v130;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10001A074(v47, v48);
    sub_100009548(v111, v113);
    sub_100009548(v46, v112);
    sub_10001A074(v117, v118);
    goto LABEL_23;
  }

  v53 = v130;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004074(&qword_1003A0190, &unk_1002C4040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10001A074(v47, v48);

    countAndFlagsBits = v114;
    v45 = v112;
    goto LABEL_21;
  }

  v54 = v128;
  v55 = sub_100116ED8(v128);
  countAndFlagsBits = v114;
  v45 = v112;
  if ((v55 & 1) == 0)
  {

    v64 = "ecoded txnBlob data";
    v65 = 0xD00000000000001ELL;
LABEL_30:
    sub_1000207FC(4000, v65, (v64 | 0x8000000000000000), 0);
    swift_willThrow();
    sub_10001A074(v47, v48);
    goto LABEL_22;
  }

  if (!*(v54 + 16))
  {
    goto LABEL_28;
  }

  v56 = sub_1000F5A28(0x546E6F6973736573, 0xEC0000006E656B6FLL);
  if ((v57 & 1) == 0)
  {

    countAndFlagsBits = v114;
LABEL_29:
    v64 = "txnBlob field missing or empty";
    v65 = 0xD000000000000033;
    goto LABEL_30;
  }

  sub_10000BDA4(*(v54 + 56) + 32 * v56, &v130);
  v58 = swift_dynamicCast();
  countAndFlagsBits = v114;
  if ((v58 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

  v124 = v54;
  v59 = v128;
  v60 = v129;

  v61 = v59;
  v62 = v116;
  sub_100176DD8(v61, v60, v140);
  v116 = v62;
  if (v62)
  {

    v63 = v116;
    swift_errorRetain();
    sub_1000207FC(4000, 0x206E6F6973736573, 0xED00006E656B6F74, v63);

    swift_willThrow();
    sub_10001A074(v47, v48);
    sub_100009548(v111, v113);
    sub_100009548(v46, v45);
    sub_10001A074(v117, v118);

LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:
    sub_100009548(v138, v139);
    sub_10000959C(v135);
    return countAndFlagsBits;
  }

  v108 = v60;
  v109 = v47;
  v115 = v48;
  v106 = v140[11];
  v107 = v140[10];
  v105 = sub_100004074(&unk_1003A3C10, &unk_1002C3760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1690;
  strcpy((inited + 32), "deviceCpuTime");
  *(inited + 46) = -4864;
  *(inited + 48) = object;
  *(inited + 56) = v52;
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x800000010034DED0;
  v67 = v136;
  v68 = AssociatedConformanceWitness;
  sub_10000BE18(v135, v136);
  object = *(v68 + 48);

  v69 = object(v67, v68);
  v71 = v70;
  v72 = Data.base64EncodedString(options:)(0);
  object = v72._object;
  sub_100009548(v69, v71);
  v73 = object;
  *(inited + 80) = v72._countAndFlagsBits;
  *(inited + 88) = v73;
  *(inited + 96) = 0x727574616E676973;
  *(inited + 104) = 0xE900000000000065;
  countAndFlagsBits = v111;
  *(inited + 112) = Data.base64EncodedString(options:)(0);
  *(inited + 128) = 0x626F6C426E7874;
  *(inited + 136) = 0xE700000000000000;
  v74 = v127;
  *(inited + 144) = v126;
  *(inited + 152) = v74;

  v75 = sub_100183EFC(inited);
  swift_setDeallocating();
  v76 = sub_100004074(&qword_10039FE90, &unk_1002C5970);
  swift_arrayDestroy();
  v127 = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
  v132 = v127;
  *&v130 = v75;

  v77 = v116;
  v78 = sub_100099560(&v130, 8, 0);
  if (v77)
  {
    sub_10001A074(v109, v115);
    sub_100009548(countAndFlagsBits, v113);
    sub_100009548(v46, v112);
    sub_10001A074(v117, v118);
    swift_unknownObjectRelease();

    sub_10008C3EC(v140);
    sub_100009548(v138, v139);
    sub_10000959C(&v130);
    sub_10000959C(v135);
    return countAndFlagsBits;
  }

  v104 = v76;
  object = v75;
  v116 = v7;
  v80 = v78;
  v81 = v79;
  sub_10000959C(&v130);
  sub_10000BE18(v125 + 14, v125[17]);
  type metadata accessor for CertificateManager();
  v125 = v80;
  v126 = v81;
  v82 = v107;
  v83 = v106;
  sub_10004CEA8(&v130);
  v84 = v130;
  v102 = v131;
  v103 = v132;
  v99 = *(&v130 + 1);
  v100 = v133;
  v101 = v134;
  countAndFlagsBits = v124;
  if (!v124[2] || (v85 = sub_1000F5A28(0x746361736E617274, 0xED000064496E6F69), (v86 & 1) == 0) || (sub_10000BDA4(countAndFlagsBits[7] + 32 * v85, &v130), (swift_dynamicCast() & 1) == 0))
  {

LABEL_42:

    sub_1000207FC(4000, 0xD00000000000002ELL, 0x800000010034DEF0, 0);
    swift_willThrow();
    sub_10001A074(v109, v115);
    sub_100009548(v100, v101);
    sub_100009548(v102, v103);
    sub_100009548(v84, v99);
    sub_100009548(v125, v126);
    sub_100009548(v111, v113);
    sub_100009548(v110, v112);
    sub_10001A074(v117, v118);
    swift_unknownObjectRelease();
    sub_10008C3EC(v140);
    goto LABEL_24;
  }

  v87 = HIBYTE(v129) & 0xF;
  v98[1] = v128;
  if ((v129 & 0x2000000000000000) == 0)
  {
    v87 = v128 & 0xFFFFFFFFFFFFLL;
  }

  if (!v87)
  {

    goto LABEL_42;
  }

  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1002C7750;
  *(v88 + 32) = 0x496E6F6973726576;
  v105 = v88 + 32;
  *(v88 + 40) = 0xE900000000000064;
  *(v88 + 48) = 3235634;
  *(v88 + 56) = 0xE300000000000000;
  *(v88 + 64) = 0x6172656D65687065;
  *(v88 + 72) = 0xEB000000006B506CLL;
  *(v88 + 80) = Data.base64EncodedString(options:)(0);
  *(v88 + 96) = 0xD00000000000001CLL;
  *(v88 + 104) = 0x800000010034DF20;
  *(v88 + 112) = Data.hexString()();
  *(v88 + 128) = 0x496E6F6973736573;
  *(v88 + 136) = 0xE900000000000064;
  *(v88 + 144) = v82;
  *(v88 + 152) = v83;
  strcpy((v88 + 160), "securePayload");
  *(v88 + 174) = -4864;

  *(v88 + 176) = Data.base64EncodedString(options:)(0);
  strcpy((v88 + 192), "transactionId");
  *(v88 + 206) = -4864;
  v89 = v116;
  static String.Encoding.utf8.getter();
  v90 = String.data(using:allowLossyConversion:)();
  v92 = v91;
  result = v119(v89, v121);
  if (v92 >> 60 != 15)
  {

    v93 = Data.base64urlEncodedString(options:)(0);
    sub_10001A074(v90, v92);
    *(v88 + 208) = v93;
    v94 = sub_100183EFC(v88);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v132 = v127;
    *&v130 = v94;
    v95 = sub_100099560(&v130, 8, 0);
    v97 = v96;
    sub_10000959C(&v130);
    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    sub_10001A074(v109, v115);
    sub_100009548(v95, v97);
    sub_100009548(v100, v101);
    sub_100009548(v102, v103);
    sub_100009548(v84, v99);
    sub_100009548(v125, v126);
    sub_100009548(v111, v113);
    sub_100009548(v110, v112);
    sub_10001A074(v117, v118);
    swift_unknownObjectRelease();
    sub_10008C3EC(v140);
    sub_100009548(v138, v139);
    sub_10000959C(v135);
    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

uint64_t sub_10010FBFC(uint64_t a1)
{
  v3 = v1;
  v5 = v1[13];
  if ([v5 operationCount])
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000403C(v6, qword_1003A35F0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v5 operationCount];

      _os_log_impl(&_mh_execute_header, v7, v8, "%ld operations in Reader OperationQueue", v9, 0xCu);
    }

    else
    {
    }

    v23 = 0x800000010034DDE0;
    v24 = 4019;
    v25 = 0xD00000000000001FLL;
    goto LABEL_16;
  }

  v10 = *sub_10000BE18(v1 + 2, v1[5]);
  result = sub_1000B100C(a1, 120.0);
  if ((result & 1) == 0)
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000403C(v12, qword_1003A35F0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not attested", v15, 2u);
    }

    v17 = v3[5];
    v16 = v3[6];
    sub_10000BE18(v3 + 2, v17);
    (*(*(v16 + 8) + 8))(v17);
    if (v2)
    {
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to send Monitor logs to get a new token: %@", v20, 0xCu);
        sub_10000BD44(v21, &unk_10039E220, &qword_1002C3D60);
      }

      else
      {
      }
    }

    v26 = *sub_10000BE18(v3 + 2, v3[5]);
    result = sub_1000B100C(a1, 120.0);
    if ((result & 1) == 0)
    {
      v27 = *sub_10000BE18(v3 + 7, v3[10]);
      sub_100034704(v28);
      if ((v31 & 1) == 0)
      {
        sub_10009B460(v29, v30 & 1);
        return swift_willThrow();
      }

      v24 = 4023;
      v25 = 0;
      v23 = 0;
LABEL_16:
      sub_1000207FC(v24, v25, v23, 0);
      return swift_willThrow();
    }
  }

  return result;
}

void sub_100110E58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Data.Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[39];
  v10 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF;
  *(v9 + 134) = *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF);
  *&v52 = *(a1 + 16);
  *(v9 + 176) = v52;
  v53 = *(a1 + 72);
  *(v9 + 177) = v53;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  (*(v5 + 104))(v8, enum case for Data.Endianness.bigEndian(_:), v4);
  LOWORD(v11) = Data.toUInt16(endianness:)();
  (*(v5 + 8))(v8, v4);
  *(v9 + 178) = v11;
  v13 = *sub_10000BE18(v2 + 40, v2[43]);
  sub_10017A138(2);
  if (v57)
  {
    if (swift_dynamicCast())
    {
      v14 = v54;
      v15 = v55;
      v16 = sub_10017688C(*(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8), v54, v55);
      sub_100009548(v14, v15);
      *(v9 + 136) = v16 & 1;
    }
  }

  else
  {
    sub_10000BD44(v56, &qword_10039E248, &qword_1002C23D0);
  }

  v17 = sub_10000BE18(v2 + 40, v2[43]);
  v19 = *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf);
  v18 = *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8);
  v57 = &type metadata for Data;
  v56[0] = v19;
  v56[1] = v18;
  v54 = *v17;
  sub_1000094F4(v19, v18);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A800(v56, 2, 0, 0, 60.0);
  sub_10000959C(v56);
  sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1680;
  *(inited + 32) = 7;
  v21 = sub_100055298();
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v21;
  *(inited + 48) = v22;
  *(inited + 72) = 8;
  v23 = *(a1 + 24);
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v47 = *(a1 + 24);
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = v24;
  *(inited + 112) = 17;
  v25 = *(a1 + 112);
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = v25;
  *(inited + 152) = 18;
  v26 = *(a1 + 120);
  *(inited + 184) = &type metadata for Int;
  *(inited + 160) = v26;
  *(inited + 192) = 23;
  v27 = *(a1 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes);
  if (v27)
  {
    v51 = v10;
    v28 = *(v27 + 16);
    v29 = _swiftEmptyArrayStorage;
    if (v28)
    {
      v48[2] = inited + 32;
      v49 = v9;
      v50 = a1;
      v56[0] = _swiftEmptyArrayStorage;

      sub_10004E2DC(0, v28, 0);
      v29 = v56[0];
      v48[1] = v27;
      v30 = (v27 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        sub_1000094F4(v31, *v30);
        v33 = Data.hexString()();
        sub_100009548(v31, v32);
        v56[0] = v29;
        v35 = v29[2];
        v34 = v29[3];
        if (v35 >= v34 >> 1)
        {
          sub_10004E2DC((v34 > 1), v35 + 1, 1);
          v29 = v56[0];
        }

        v30 += 2;
        v29[2] = v35 + 1;
        *&v29[2 * v35 + 4] = v33;
        --v28;
      }

      while (v28);

      v9 = v49;
      a1 = v50;
    }

    v56[0] = v29;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;

    *(inited + 224) = &type metadata for String;
    *(inited + 200) = v36;
    *(inited + 208) = v38;
    v10 = v51;
  }

  else
  {
    *(inited + 216) = 0u;
    *(inited + 200) = 0u;
  }

  v39 = sub_10018399C(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039EC60, &qword_1002C1F80);
  v40 = swift_arrayDestroy();
  v41 = *(v9 + 56);
  __chkstk_darwin(v40);
  v48[-2] = v39;
  os_unfair_lock_lock((v41 + 32));
  sub_100029720((v41 + 16));
  os_unfair_lock_unlock((v41 + 32));

  if (v52 >= 4)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0x3030201u >> (8 * v52);
  }

  sub_100004074(&qword_10039EC58, &unk_1002C1F70);
  v43 = swift_initStackObject();
  v52 = xmmword_1002C1660;
  *(v43 + 16) = xmmword_1002C1660;
  *(v43 + 32) = v42;
  sub_100027F94(v43);
  swift_setDeallocating();
  if (v53 == 32)
  {
    v44 = 6;
  }

  else
  {
    v44 = 7;
  }

  if (v53)
  {
    v45 = v44;
  }

  else
  {
    v45 = 5;
  }

  v46 = swift_initStackObject();
  *(v46 + 16) = v52;
  *(v46 + 32) = v45;
  sub_100027F94(v46);
  swift_setDeallocating();
  if (*(a1 + v10) == 1)
  {
    sub_100027F94(&off_10037E7F8);
  }
}

id sub_100111480(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v76 = a4;
  v75 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A35F0);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v84 = v13;
  v72 = v4;
  v71 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v79 = v70;
    *v17 = 136315906;
    v18 = [v13 transactionUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = UUID.uuidString.getter();
    v73 = v8;
    v21 = v20;
    (*(v73 + 8))(v11, v7);
    v22 = sub_100008F6C(v19, v21, &v79);

    *(v17 + 4) = v22;
    *(v17 + 12) = 1024;
    LODWORD(v22) = [v13 isPINBypassAllowed];

    *(v17 + 14) = v22;
    *(v17 + 18) = 2080;
    v23 = [v13 fingerprint];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = Data.hexString()();
    v28 = v7;
    v29 = v26;
    v13 = v84;
    sub_100009548(v24, v29);
    v30 = sub_100008F6C(v27._countAndFlagsBits, v27._object, &v79);

    *(v17 + 20) = v30;
    *(v17 + 28) = 2080;
    v31 = [v13 pinKekId];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = HIBYTE(v34) & 0xF;
    v36 = (v34 & 0x2000000000000000) == 0;
    v8 = v73;
    if (v36)
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v37 = 0x746E6573657270;
    }

    else
    {
      v37 = 0x7974706D65;
    }

    if (v35)
    {
      v38 = 0xE700000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = sub_100008F6C(v37, v38, &v79);

    *(v17 + 30) = v39;
    v7 = v28;
    v40 = v15;
    v41 = &selRef_currencyCode;
    _os_log_impl(&_mh_execute_header, v14, v40, "onSuccessWithInternalTransactionData, transactionUUID: %s, isPINBypassAllowed: %{BOOL}d, fingerprint: %s, pinKekId: %s", v17, 0x26u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = &selRef_currencyCode;
  }

  v42 = [v13 pinKekId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = Data.init(hexString:)();
  if (v44 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v45 = v43;
  }

  v73 = v45;
  if (v44 >> 60 == 15)
  {
    v46 = 0xC000000000000000;
  }

  else
  {
    v46 = v44;
  }

  v47 = [v13 pinRequired];
  v48 = [v13 v41[151]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  (*(v8 + 8))(v11, v7);
  v49 = String.lowercased()();

  v50 = [v13 isPINBypassAllowed];
  v51 = [v13 fingerprint];
  v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  LOBYTE(v79) = v47;
  *(&v79 + 1) = v49._countAndFlagsBits;
  *&v80 = v49._object;
  v55 = v75;
  v56 = v76;
  *(&v80 + 1) = v75;
  *&v81 = v76;
  *(&v81 + 1) = v73;
  *&v82 = v46;
  BYTE8(v82) = v50;
  *&v83 = v52;
  *(&v83 + 1) = v54;
  v57 = v74[39];
  sub_10000BE18(v74 + 40, v74[43]);
  v78[3] = &type metadata for InternalTransactionData;
  v58 = swift_allocObject();
  v78[0] = v58;
  v59 = v82;
  v58[3] = v81;
  v58[4] = v59;
  v58[5] = v83;
  v60 = v80;
  v58[1] = v79;
  v58[2] = v60;
  sub_1000094F4(v55, v56);
  sub_1000D7454(&v79, v77);
  type metadata accessor for DefaultManagedDictionary();

  sub_10017A800(v78, 0, sub_1001121E8, v57, 60.0);

  sub_10000959C(v78);
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v61 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  v63 = *(v61 + 104);
  v64 = __OFADD__(v63, 1);
  v65 = v63 + 1;
  if (v64)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  *(v61 + 104) = v65;
  v66 = v84;
  while (*(v61 + 96) > 0 || *(v61 + 112) == 1)
  {
    result = [*(v61 + 88) wait];
  }

  v67 = *(v61 + 104);
  v64 = __OFSUB__(v67, 1);
  v68 = v67 - 1;
  if (v64)
  {
    goto LABEL_32;
  }

  *(v61 + 104) = v68;
  *(v61 + 112) = 1;
  [*(v61 + 88) unlock];
  *(v61 + 57) = 1;
  sub_100173040();
  [*(v61 + 88) lock];
  *(v61 + 112) = 0;
  [*(v61 + 88) broadcast];
  [*(v61 + 88) unlock];
  v69 = v71;
  if ([v71 respondsToSelector:"onSuccessWithTransactionData:"])
  {
    [v69 onSuccessWithTransactionData:v66];
  }

  return sub_1000D74B0(&v79);
}

void sub_100111BBC()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &aBlock[-1] - v6;
  static DispatchTime.now()();
  + infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = [objc_opt_self() sharedHardwareManager];
  v10 = NFHardwareManager.startSecureElementManagerSession(deadline:)();

  v11 = v10;
  sub_100111F34();

  aBlock[4] = sub_10010051C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100384098;
  v12 = _Block_copy(aBlock);
  [v11 endSessionWithCompletion:v12];
  _Block_release(v12);

  v8(v7, v0);
  sub_1000278BC();
}

void sub_100111F34()
{
  if (qword_10039D3D0 != -1)
  {
    swift_once();
  }

  NFSecureElementManagerSession.select(_:)(AID_PIN_APPLET, *algn_1003A6AB8);
  if (v0)
  {
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000403C(v1, qword_1003A35F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "failed to select PIN applet to clear PAN in NVM", v4, 2u);
    }
  }

  else
  {
    sub_100003ABC();
  }
}

uint64_t sub_100112198()
{
  v1 = v0[4];

  sub_100009548(v0[5], v0[6]);
  sub_100009548(v0[7], v0[8]);
  sub_100009548(v0[10], v0[11]);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001121F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100112208@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_1000F5A28(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_10017CA5C(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_1000F5A28(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    sub_1001811FC();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_100180EA4(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  sub_100019D3C((v13[7] + 32 * v14), a4);
  result = sub_100019D3C(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t *sub_100112354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t *a16)
{
  v55 = *a16;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v65[3] = &type metadata for SystemRandomNumberGenerator;
  v65[4] = &protocol witness table for SystemRandomNumberGenerator;
  v64[3] = type metadata accessor for DefaultSecureTimeKeeper();
  v64[4] = &off_100384E70;
  aBlock[5] = 0;
  v64[0] = a13;
  a16[9] = 0;
  aBlock[4] = nullsub_1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_1003840C0;
  _Block_copy(aBlock);
  sub_1001178A0(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = type metadata accessor for DispatchWorkItem();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  a16[37] = DispatchWorkItem.init(flags:block:)();
  if (qword_10039D6F8 != -1)
  {
    swift_once();
  }

  v23 = a14;
  v24 = a12;
  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_1003A5460);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = a5;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v29 = 136315394;
    nullsub_1(v55);
    v30 = _typeName(_:qualified:)();
    v32 = sub_100008F6C(v30, v31, aBlock);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1002C1670;
    v54 = v27;
    v34 = a1;
    *(v33 + 32) = a1;
    *(v33 + 40) = a2;
    *(v33 + 88) = &type metadata for String;
    v35 = a4;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = a4;
    *(v33 + 72) = v28;

    v36 = showFunction(signature:_:)(0xD0000000000000A2, 0x800000010034E540, v33);
    v38 = v37;

    v39 = sub_100008F6C(v36, v38, aBlock);

    *(v29 + 14) = v39;
    v23 = a14;
    _os_log_impl(&_mh_execute_header, v26, v54, "%s.%s", v29, 0x16u);
    swift_arrayDestroy();
    v24 = a12;

    v41 = a11;
    v40 = a10;
  }

  else
  {

    v41 = a11;
    v40 = a10;
    v35 = a4;
    v34 = a1;
  }

  a16[2] = v34;
  a16[3] = a2;
  a16[4] = a3;
  a16[5] = v35;
  a16[6] = v28;
  a16[7] = a7;
  a16[8] = a8;
  sub_10000CCE4(a9, (a16 + 10));
  sub_10000CCE4(v40, (a16 + 15));
  sub_10000CCE4(v41, (a16 + 31));
  a16[36] = v24;
  sub_10000CCE4(v64, (a16 + 26));
  a16[20] = v23;
  sub_10000CCE4(v65, (a16 + 21));
  a16[38] = a15;

  v42 = v23;
  v43 = sub_10016D61C();
  if (v43)
  {
    v44 = v43;
    v45 = *(v43 + 24);
    v46 = *(v43 + 32);
    sub_1000094F4(v45, v46);
    v47 = sub_10016FB4C();
    sub_100009548(v45, v46);
    if (v47)
    {
      v48 = a16[9];
      a16[9] = v44;

      sub_10016E648(v44);

LABEL_9:

      goto LABEL_16;
    }

    sub_10016E2B8();
  }

  if ((a6 & 1) == 0)
  {
    sub_10016CEF8();
    v62 = v52;
    sub_10016DC20(v52);
    sub_10016E648(v62);

    goto LABEL_9;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Not allowed to create initial identity", v51, 2u);
  }

LABEL_16:
  sub_10000959C(v41);
  sub_10000959C(v40);
  sub_10000959C(a9);
  sub_10000959C(v65);
  sub_10000959C(v64);
  return a16;
}

uint64_t *sub_100112CE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v76 = *a16;
  v129 = type metadata accessor for MPOCDefaultMonitorManager();
  v130 = &off_100382710;
  *&v128 = a1;
  v126 = type metadata accessor for MPOCDefaultAttestationManager();
  v127 = &off_100380AA8;
  *&v125 = a2;
  v123 = type metadata accessor for CertificateManager();
  v124 = &off_100381288;
  *&v122 = a5;
  v120 = type metadata accessor for SignerFactory();
  v121 = &off_100385348;
  *&v119 = a6;
  v118 = &off_100384E70;
  v117 = type metadata accessor for DefaultSecureTimeKeeper();
  *&v116 = a7;
  v115 = &off_100386190;
  v114 = type metadata accessor for DefaultManagedDictionary();
  *&v113 = a10;
  v112 = &off_100386330;
  v111 = type metadata accessor for SystemInfo();
  *&v110 = a11;
  v109 = &off_1003849A0;
  v108 = type metadata accessor for SecureElement();
  *&v107 = a12;
  v106 = &off_100380E88;
  v105 = type metadata accessor for ProfileManager();
  *&v104 = a14;
  v102 = type metadata accessor for LaunchFeedbackFramework();
  v103 = &off_1003823C0;
  *&v101 = a15;
  a16[61] = 0;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000403C(v21, qword_1003A35F0);
  sub_10000CCE4(&v128, v99);
  sub_10000CCE4(&v125, v97);
  sub_10000CCE4(&v122, v95);
  sub_10000CCE4(&v119, v93);
  sub_10000CCE4(&v116, v91);
  v22 = a8;
  sub_10000CCE4(a8, v89);
  sub_10000CCE4(&v113, v87);
  sub_10000CCE4(&v110, v85);
  sub_10000CCE4(&v107, v83);
  sub_10000CCE4(&v104, v81);
  v23 = a4;
  v24 = a9;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = _typeName(_:qualified:)();
    v30 = sub_100008F6C(v28, v29, &v80);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002C7760;
    v32 = v100;
    v33 = sub_10000BE18(v99, v100);
    *(v31 + 56) = v32;
    v34 = sub_10000BE5C((v31 + 32));
    (*(*(v32 - 8) + 16))(v34, v33, v32);
    v35 = v98;
    v36 = sub_10000BE18(v97, v98);
    *(v31 + 88) = v35;
    v37 = sub_10000BE5C((v31 + 64));
    (*(*(v35 - 8) + 16))(v37, v36, v35);
    *(v31 + 120) = &type metadata for Int;
    *(v31 + 96) = a3;
    v38 = [v23 name];
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = (v31 + 128);
      *(v31 + 152) = &type metadata for String;
      if (v42)
      {
LABEL_10:
        *v43 = v40;
        *(v31 + 136) = v42;
        v47 = v96;
        v48 = sub_10000BE18(v95, v96);
        *(v31 + 184) = v47;
        v49 = sub_10000BE5C((v31 + 160));
        (*(*(v47 - 8) + 16))(v49, v48, v47);
        v50 = v94;
        v51 = sub_10000BE18(v93, v94);
        *(v31 + 216) = v50;
        v52 = sub_10000BE5C((v31 + 192));
        (*(*(v50 - 8) + 16))(v52, v51, v50);
        v53 = v92;
        v54 = sub_10000BE18(v91, v92);
        *(v31 + 248) = v53;
        v55 = sub_10000BE5C((v31 + 224));
        (*(*(v53 - 8) + 16))(v55, v54, v53);
        v56 = v90;
        v57 = sub_10000BE18(v89, v90);
        *(v31 + 280) = v56;
        v58 = sub_10000BE5C((v31 + 256));
        (*(*(v56 - 8) + 16))(v58, v57, v56);
        *(v31 + 312) = type metadata accessor for ReaderAnalytics();
        v24 = a9;
        *(v31 + 288) = a9;
        v59 = v88;
        v60 = sub_10000BE18(v87, v88);
        *(v31 + 344) = v59;
        v61 = sub_10000BE5C((v31 + 320));
        (*(*(v59 - 8) + 16))(v61, v60, v59);
        v62 = v86;
        v63 = sub_10000BE18(v85, v86);
        *(v31 + 376) = v62;
        v64 = sub_10000BE5C((v31 + 352));
        (*(*(v62 - 8) + 16))(v64, v63, v62);
        v65 = v84;
        v66 = sub_10000BE18(v83, v84);
        *(v31 + 408) = v65;
        v67 = sub_10000BE5C((v31 + 384));
        (*(*(v65 - 8) + 16))(v67, v66, v65);
        *(v31 + 440) = &type metadata for Bool;
        v44 = a13 & 1;
        *(v31 + 416) = a13 & 1;
        v68 = v82;
        v69 = sub_10000BE18(v81, v82);
        *(v31 + 472) = v68;
        v70 = sub_10000BE5C((v31 + 448));
        (*(*(v68 - 8) + 16))(v70, v69, v68);

        v71 = showFunction(signature:_:)(0xD0000000000000ECLL, 0x800000010034E8C0, v31);
        v73 = v72;

        sub_10000959C(v99);
        sub_10000959C(v97);
        sub_10000959C(v95);
        sub_10000959C(v93);
        sub_10000959C(v91);
        sub_10000959C(v89);
        sub_10000959C(v87);
        sub_10000959C(v85);
        sub_10000959C(v83);
        sub_10000959C(v81);
        v74 = sub_100008F6C(v71, v73, &v80);

        *(v27 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s.%s", v27, 0x16u);
        swift_arrayDestroy();

        v22 = a8;
        goto LABEL_11;
      }
    }

    else
    {
      v43 = (v31 + 128);
      *(v31 + 152) = &type metadata for String;
    }

    v45 = [v23 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v46;

    goto LABEL_10;
  }

  sub_10000959C(v99);
  sub_10000959C(v97);
  sub_10000959C(v95);
  sub_10000959C(v93);
  sub_10000959C(v91);
  sub_10000959C(v89);
  sub_10000959C(v87);
  sub_10000959C(v85);
  sub_10000959C(v83);
  sub_10000959C(v81);
  v44 = a13 & 1;
LABEL_11:
  sub_100029790(&v128, (a16 + 2));
  sub_100029790(&v125, (a16 + 7));
  a16[12] = a3;
  a16[13] = v23;
  sub_100029790(&v122, (a16 + 14));
  sub_100029790(&v119, (a16 + 19));
  sub_100029790(&v116, (a16 + 24));
  sub_100029790(v22, (a16 + 34));
  a16[39] = v24;
  sub_100029790(&v113, (a16 + 40));
  sub_100029790(&v110, (a16 + 45));
  sub_100029790(&v107, (a16 + 56));
  *(a16 + 440) = v44;
  sub_100029790(&v104, (a16 + 50));
  sub_100029790(&v101, (a16 + 29));
  return a16;
}

uint64_t *sub_10011362C(uint64_t *a1)
{
  v3 = a1;
  sub_1000E6B70(v203);
  if (v1)
  {
  }

  else
  {
    sub_1000E31EC(v201);
    sub_1000E8A64(v199);
    v5 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v6 = type metadata accessor for Settings();
    v7 = *&v5[*(v6 + 32)];
    sub_1000E7D9C(v197);
    sub_1000E9D90(v195);
    sub_1000E4518(v193);
    v8 = v204;
    v9 = v205;
    sub_10000BE18(v203, v204);
    sub_1000C289C(4u, v8, v9);
    sub_1000ED664();
    v11 = v10;
    sub_1000E972C(v190);
    sub_1000E90C8(v188);
    sub_1000E5844(v186);
    v206 = v5[*(v6 + 60)];
    sub_1000E8400(v184);
    sub_1000EAA58(v182);
    v150 = [objc_allocWithZone(NSOperationQueue) init];
    [v150 setMaxConcurrentOperationCount:1];
    [v150 setQualityOfService:33];
    v12 = v202;
    v13 = sub_100022438(v201, v202);
    v153 = &v125;
    v14 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v13);
    v142 = (&v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))();
    v17 = v200;
    v18 = sub_100022438(v199, v200);
    v152 = &v125;
    v19 = *(*(v17 - 8) + 64);
    __chkstk_darwin(v18);
    v141 = (&v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))();
    v22 = v198;
    v23 = sub_100022438(v197, v198);
    v151 = &v125;
    v24 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v23);
    v140 = (&v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))();
    v27 = v196;
    v28 = sub_100022438(v195, v196);
    v149 = &v125;
    v29 = *(*(v27 - 8) + 64);
    __chkstk_darwin(v28);
    v139 = (&v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))();
    v32 = v194;
    v33 = sub_100022438(v193, v194);
    v148 = &v125;
    v34 = *(*(v32 - 8) + 64);
    __chkstk_darwin(v33);
    v138 = (&v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))();
    v37 = v191;
    v38 = sub_100022438(v190, v191);
    v147 = &v125;
    v39 = *(*(v37 - 8) + 64);
    __chkstk_darwin(v38);
    v137 = (&v125 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))();
    v42 = v189;
    v43 = sub_100022438(v188, v189);
    v146 = &v125;
    v44 = *(*(v42 - 8) + 64);
    __chkstk_darwin(v43);
    v136 = (&v125 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))();
    v47 = v187;
    v48 = sub_100022438(v186, v187);
    v145 = &v125;
    v49 = *(*(v47 - 8) + 64);
    __chkstk_darwin(v48);
    v135 = (&v125 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))();
    v52 = v185;
    v53 = sub_100022438(v184, v185);
    v144 = &v125;
    v54 = *(*(v52 - 8) + 64);
    __chkstk_darwin(v53);
    v56 = (&v125 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = v183;
    v59 = sub_100022438(v182, v183);
    v143 = &v125;
    v60 = *(*(v58 - 8) + 64);
    __chkstk_darwin(v59);
    v62 = (&v125 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62);
    v64 = *v142;
    v65 = *v141;
    v66 = *v139;
    v133 = *v140;
    v134 = v66;
    v67 = *v137;
    v138 = *v138;
    v139 = v67;
    v68 = *v135;
    v140 = *v136;
    v141 = v68;
    v69 = *v56;
    v142 = *v62;
    v70 = type metadata accessor for MPOCDefaultMonitorManager();
    v181[4] = &off_100382710;
    v181[3] = v70;
    v181[0] = v64;
    v71 = type metadata accessor for MPOCDefaultAttestationManager();
    v180 = &off_100380AA8;
    v179 = v71;
    v178[0] = v65;
    v72 = type metadata accessor for CertificateManager();
    v177 = &off_100381288;
    v176 = v72;
    v175[0] = v133;
    v173 = type metadata accessor for SignerFactory();
    v174 = &off_100385348;
    v172[0] = v134;
    v170 = type metadata accessor for DefaultSecureTimeKeeper();
    v171 = &off_100384E70;
    v169[0] = v138;
    v167 = type metadata accessor for DefaultManagedDictionary();
    v168 = &off_100386190;
    v166[0] = v139;
    v164 = type metadata accessor for SystemInfo();
    v165 = &off_100386330;
    v163[0] = v140;
    v161 = type metadata accessor for SecureElement();
    v162 = &off_1003849A0;
    v160[0] = v141;
    v158 = type metadata accessor for ProfileManager();
    v159 = &off_100380E88;
    v157[0] = v69;
    v155 = type metadata accessor for LaunchFeedbackFramework();
    v156 = &off_1003823C0;
    v154[0] = v142;
    type metadata accessor for Reader();
    v140 = swift_allocObject();
    v73 = sub_100022438(v181, v70);
    v142 = &v125;
    v74 = *(*(v70 - 8) + 64);
    __chkstk_darwin(v73);
    v138 = (&v125 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v76 + 16))();
    v77 = v179;
    v78 = sub_100022438(v178, v179);
    v141 = &v125;
    v79 = *(*(v77 - 8) + 64);
    __chkstk_darwin(v78);
    v136 = (&v125 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v81 + 16))();
    v82 = v176;
    v83 = sub_100022438(v175, v176);
    v139 = &v125;
    v84 = *(*(v82 - 8) + 64);
    __chkstk_darwin(v83);
    v134 = (&v125 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))();
    v87 = v173;
    v88 = sub_100022438(v172, v173);
    v137 = &v125;
    v89 = *(*(v87 - 8) + 64);
    __chkstk_darwin(v88);
    v132 = (&v125 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v91 + 16))();
    v92 = v170;
    v93 = sub_100022438(v169, v170);
    v135 = &v125;
    v94 = *(*(v92 - 8) + 64);
    __chkstk_darwin(v93);
    v130 = (&v125 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v96 + 16))();
    v97 = v167;
    v98 = sub_100022438(v166, v167);
    v133 = &v125;
    v99 = *(*(v97 - 8) + 64);
    __chkstk_darwin(v98);
    v128 = (&v125 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v101 + 16))();
    v102 = v164;
    v103 = sub_100022438(v163, v164);
    v131 = &v125;
    v104 = *(*(v102 - 8) + 64);
    __chkstk_darwin(v103);
    v126 = (&v125 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v106 + 16))();
    v107 = v161;
    v108 = sub_100022438(v160, v161);
    v129 = &v125;
    v109 = *(*(v107 - 8) + 64);
    __chkstk_darwin(v108);
    v111 = (&v125 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v112 + 16))(v111);
    v113 = v158;
    v114 = sub_100022438(v157, v158);
    v127 = &v125;
    v115 = *(*(v113 - 8) + 64);
    __chkstk_darwin(v114);
    v117 = (&v125 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v118 + 16))(v117);
    v119 = v155;
    v120 = sub_100022438(v154, v155);
    v125 = &v125;
    v121 = *(*(v119 - 8) + 64);
    __chkstk_darwin(v120);
    v123 = (&v125 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v124 + 16))(v123);
    v3 = sub_100112CE0(*v138, *v136, v7, v150, *v134, *v132, *v130, &v192, v11, *v128, *v126, *v111, v206, *v117, *v123, v140);

    sub_10000959C(v154);
    sub_10000959C(v157);
    sub_10000959C(v160);
    sub_10000959C(v163);
    sub_10000959C(v166);
    sub_10000959C(v169);
    sub_10000959C(v172);
    sub_10000959C(v175);
    sub_10000959C(v178);
    sub_10000959C(v181);
    sub_10000959C(v182);
    sub_10000959C(v184);
    sub_10000959C(v186);
    sub_10000959C(v188);
    sub_10000959C(v190);
    sub_10000959C(v193);
    sub_10000959C(v195);
    sub_10000959C(v197);
    sub_10000959C(v199);
    sub_10000959C(v201);
    sub_10000959C(v203);
  }

  return v3;
}

id sub_100114908()
{
  v0 = [objc_opt_self() sharedHardwareManager];
  v5 = 0;
  v1 = [v0 startSecureElementReaderSessionAndReturnError:&v5];

  v2 = v5;
  if (!v1)
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v1;
}

uint64_t sub_1001149DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_15;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v116[0] = 0;
  v8 = [v6 JSONObjectWithData:isa options:0 error:v116];

  if (!v8)
  {
    v22 = v116[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v9 = v116[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004074(&qword_1003A0190, &unk_1002C4040);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_1003A35F0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "trxBlob.isEmpty or could not deserialize trxBlob to JSON", v20, 2u);
    }

    sub_1000207FC(4034, 0xD000000000000038, 0x800000010034E440, 0);
    return swift_willThrow();
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v113 + 16))
  {
    v12 = sub_1000F5A28(v10, v11);
    v14 = v13;

    if (v14)
    {
      sub_10000BDA4(*(v113 + 56) + 32 * v12, v116);
      if (swift_dynamicCast())
      {
        v15 = v113;
        v16 = v114;
        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  v15 = 0;
  v16 = 0xE000000000000000;
LABEL_24:
  sub_100176DD8(v15, v16, __src);
  if (v3)
  {

    swift_errorRetain();
    sub_1000207FC(4034, 0x546E6F6973736573, 0xEC0000006E656B6FLL, v3);

    swift_willThrow();
  }

  memcpy(__dst, __src, sizeof(__dst));
  v23 = __src[10];
  v24 = __src[11];
  v25 = HIBYTE(__src[11]) & 0xFLL;
  if ((__src[11] & 0x2000000000000000) == 0)
  {
    v25 = __src[10] & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    v42 = 0xD00000000000001BLL;
    v43 = 0x800000010034E4C0;
LABEL_48:
    sub_1000207FC(4034, v42, v43, 0);
    swift_willThrow();
    return sub_10008C3EC(__src);
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (!*(v113 + 16) || (v29 = v26, , v30 = sub_1000F5A28(v29, v28), v32 = v31, , (v32 & 1) == 0) || (sub_10000BDA4(*(v113 + 56) + 32 * v30, v116), (swift_dynamicCast() & 1) == 0))
  {
LABEL_47:

    v42 = 0x746361736E617274;
    v43 = 0xED000064496E6F69;
    goto LABEL_48;
  }

  v33 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v33 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_47;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

LABEL_50:

    v42 = 0x7472654364736163;
    v43 = 0xEF65746163696669;
    goto LABEL_48;
  }

  v108 = v23;
  v36 = sub_1000F5A28(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v36, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  v39 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v39 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39 || (, v40 = Data.init(hexString:)(), v41 >> 60 == 15))
  {

    goto LABEL_50;
  }

  v106 = v40;
  v107 = v41;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

LABEL_61:

    sub_1000207FC(4034, 0x7473657474416573, 0xED00006E6F697461, 0);
    swift_willThrow();
    sub_10008C3EC(__src);
    return sub_10001A074(v106, v107);
  }

  v105 = sub_1000F5A28(v44, v45);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_61;
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v105, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  v48 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v48 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48 || (v103 = Data.init(base64Encoded:options:)(), v104 = v49, v49 >> 60 == 15))
  {

    goto LABEL_61;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

    goto LABEL_71;
  }

  v52 = sub_1000F5A28(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_71:

LABEL_74:

    sub_1000207FC(4034, 0x64496B654B6E6170, 0xE800000000000000, 0);
    swift_willThrow();
    sub_10008C3EC(__src);
    sub_10001A074(v106, v107);
    return sub_10001A074(v103, v104);
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v52, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_73;
  }

  v55 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v55 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55 || (, v101 = Data.init(hexString:)(), v102 = v56, v56 >> 60 == 15))
  {

LABEL_73:

    goto LABEL_74;
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

    goto LABEL_90;
  }

  v59 = sub_1000F5A28(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_90:

LABEL_94:

    v71 = 0xD000000000000015;
    v72 = 0x800000010034E480;
LABEL_95:
    sub_1000207FC(4034, v71, v72, 0);
    swift_willThrow();
    sub_10008C3EC(__src);
    sub_10001A074(v106, v107);
    sub_10001A074(v103, v104);
    return sub_10001A074(v101, v102);
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v59, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_93:

    goto LABEL_94;
  }

  v62 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v62 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {

    goto LABEL_93;
  }

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

    goto LABEL_97;
  }

  v65 = sub_1000F5A28(v63, v64);
  v67 = v66;

  if ((v67 & 1) == 0)
  {
LABEL_97:

LABEL_100:

    v72 = 0x800000010034E4A0;
    v71 = 0xD000000000000012;
    goto LABEL_95;
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v65, v116);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_99;
  }

  v68 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v68 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v68 || (v69 = Data.init(base64Encoded:options:)(), v99 = v70, v100 = v69, v70 >> 60 == 15))
  {

LABEL_99:

    goto LABEL_100;
  }

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v113 + 16))
  {
    v75 = sub_1000F5A28(v73, v74);
    v77 = v76;

    if (v77)
    {
      sub_10000BDA4(*(v113 + 56) + 32 * v75, v116);
      if ((swift_dynamicCast() & 1) != 0 && v112 != 2)
      {
        goto LABEL_112;
      }
    }
  }

  else
  {
  }

  v112 = 1;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  sub_10000403C(v78, qword_1003A35F0);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 67109120;
    swift_beginAccess();
    *(v81 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v79, v80, "trxBlob missing isPinSupported. Set to: %{BOOL}d", v81, 8u);
  }

LABEL_112:
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v113 + 16))
  {
    v84 = sub_1000F5A28(v82, v83);
    v86 = v85;

    if (v86)
    {
      sub_10000BDA4(*(v113 + 56) + 32 * v84, v116);
      if ((swift_dynamicCast() & 1) != 0 && v111 != 2)
      {
        goto LABEL_123;
      }
    }
  }

  else
  {
  }

  v111 = 0;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_10000403C(v87, qword_1003A35F0);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 67109120;
    swift_beginAccess();
    *(v90 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v88, v89, "trxBlob missing isPINBypassEnabled. Set to: %{BOOL}d", v90, 8u);
  }

LABEL_123:
  result = swift_beginAccess();
  if (v112 == 2)
  {
    __break(1u);
    goto LABEL_137;
  }

  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {

    goto LABEL_133;
  }

  v93 = sub_1000F5A28(v91, v92);
  v95 = v94;

  if ((v95 & 1) == 0)
  {
LABEL_133:
    v97 = 0;
    v98 = 0;
    goto LABEL_134;
  }

  sub_10000BDA4(*(v113 + 56) + 32 * v93, v116);
  v96 = swift_dynamicCast();
  if (v96)
  {
    v97 = v109;
  }

  else
  {
    v97 = 0;
  }

  if (v96)
  {
    v98 = v110;
  }

  else
  {
    v98 = 0;
  }

LABEL_134:
  result = swift_beginAccess();
  if (v111 != 2)
  {

    result = memcpy(a3, __dst, 0x110uLL);
    *(a3 + 272) = v108;
    *(a3 + 280) = v24;
    *(a3 + 288) = v113;
    *(a3 + 296) = v114;
    *(a3 + 304) = v106;
    *(a3 + 312) = v107;
    *(a3 + 320) = v103;
    *(a3 + 328) = v104;
    *(a3 + 336) = v101;
    *(a3 + 344) = v102;
    *(a3 + 352) = v113;
    *(a3 + 360) = v114;
    *(a3 + 368) = v100;
    *(a3 + 376) = v99;
    *(a3 + 384) = v112 & 1;
    *(a3 + 392) = v97;
    *(a3 + 400) = v98;
    *(a3 + 408) = v111 & 1;
    return result;
  }

LABEL_137:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void *sub_100115998@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_15;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v99[0] = 0;
  v8 = [v6 JSONObjectWithData:isa options:0 error:v99];

  if (!v8)
  {
    v23 = v99[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v9 = v99[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004074(&qword_1003A0190, &unk_1002C4040);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A35F0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "pinBlob.isEmpty or could not deserialize pinBlob to JSON", v21, 2u);
    }

    sub_1000207FC(4032, 0xD000000000000038, 0x800000010034E210, 0);
    return swift_willThrow();
  }

  v10 = v96;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v96 + 16))
  {

LABEL_23:
    v16 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_24;
  }

  v13 = sub_1000F5A28(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10000BDA4(*(v96 + 56) + 32 * v13, v99);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = v96;
  v17 = v97;
LABEL_24:
  sub_100176DD8(v16, v17, __src);
  if (v3)
  {

    swift_errorRetain();
    sub_1000207FC(4032, 0x206E6F6973736573, 0xED00006E656B6F74, v3);

    swift_willThrow();
  }

  memcpy(__dst, __src, sizeof(__dst));
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v96 + 16))
  {
    goto LABEL_38;
  }

  v26 = sub_1000F5A28(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_10000BDA4(*(v96 + 56) + 32 * v26, v99);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v96;
  v29 = v97;
  v31 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v31 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
LABEL_38:

LABEL_39:

    v41 = 0x800000010034E250;
    v42 = 0xD00000000000001ELL;
LABEL_40:
    sub_1000207FC(4032, v42, v41, 0);
    swift_willThrow();
    return sub_10008C3EC(__src);
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v96 + 16))
  {

LABEL_42:

    v43 = "missing or empty transactionId";
    v42 = 0xD000000000000013;
LABEL_43:
    v41 = (v43 | 0x8000000000000000);
    goto LABEL_40;
  }

  v34 = sub_1000F5A28(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_10000BDA4(*(v96 + 56) + 32 * v34, v99);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v95)
  {

    v86 = 0;
    v87 = 0;
    v89 = 0;
    v90 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v91 = 0;
    v92 = 0;
    v40 = 0;
LABEL_37:
    result = memcpy(a3, __dst, 0x110uLL);
    a3[34] = v30;
    a3[35] = v29;
    a3[36] = v87;
    a3[37] = v86;
    a3[38] = v90;
    a3[39] = v89;
    a3[40] = v37;
    a3[41] = v38;
    a3[42] = v39;
    a3[43] = v92;
    a3[44] = v40;
    a3[45] = v91;
    return result;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v96 + 16))
  {

    goto LABEL_81;
  }

  v46 = sub_1000F5A28(v44, v45);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_81:

LABEL_82:

    v43 = "missing isPinBypass";
    v42 = 0xD000000000000019;
    goto LABEL_43;
  }

  sub_10000BDA4(*(v96 + 56) + 32 * v46, &v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_85;
  }

  v88 = v10;
  v49 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v49 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

    goto LABEL_85;
  }

  v84 = Data.init(hexString:)();
  v85 = v50;
  if (v50 >> 60 == 15)
  {
LABEL_85:

    goto LABEL_82;
  }

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {
    goto LABEL_88;
  }

  v53 = sub_1000F5A28(v51, v52);
  v55 = v54;

  if ((v55 & 1) == 0)
  {
    goto LABEL_89;
  }

  sub_10000BDA4(*(v88 + 56) + 32 * v53, &v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_89;
  }

  v56 = HIBYTE(v94) & 0xF;
  v92 = v94;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v56 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
LABEL_88:

LABEL_89:

    v81 = 0x800000010034E2B0;
    v82 = 0xD00000000000001ELL;
LABEL_90:
    sub_1000207FC(4032, v82, v81, 0);
    swift_willThrow();
    sub_10008C3EC(__src);
    return sub_10001A074(v84, v85);
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v88 + 16))
  {
    goto LABEL_93;
  }

  v59 = sub_1000F5A28(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    goto LABEL_94;
  }

  sub_10000BDA4(*(v88 + 56) + 32 * v59, &v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_94;
  }

  v62 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v62 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
LABEL_93:

    goto LABEL_94;
  }

  v83 = Data.init(base64Encoded:options:)();
  v64 = v63;

  v91 = v64;
  if (v64 >> 60 == 15)
  {
LABEL_94:

    v82 = 0xD00000000000001BLL;
    v81 = 0x800000010034E2D0;
    goto LABEL_90;
  }

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v88 + 16))
  {
    goto LABEL_97;
  }

  v67 = sub_1000F5A28(v65, v66);
  v69 = v68;

  if ((v69 & 1) == 0)
  {
    goto LABEL_98;
  }

  sub_10000BDA4(*(v88 + 56) + 32 * v67, &v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_98;
  }

  v70 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v70 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {
    v90 = Data.init(base64Encoded:options:)();
    v72 = v71;

    v89 = v72;
    if (v72 >> 60 != 15)
    {
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v88 + 16))
      {
        v75 = sub_1000F5A28(v73, v74);
        v77 = v76;

        if (v77)
        {
          sub_10000BDA4(*(v88 + 56) + 32 * v75, &v96);

          if (swift_dynamicCast())
          {
            v78 = HIBYTE(v94) & 0xF;
            if ((v94 & 0x2000000000000000) == 0)
            {
              v78 = v93 & 0xFFFFFFFFFFFFLL;
            }

            if (v78)
            {
              v79 = Data.init(hexString:)();
              if (v80 >> 60 != 15)
              {
                v37 = v84;
                v38 = v85;
                v40 = v83;
                v39 = v93;
                v86 = v80;
                v87 = v79;
                goto LABEL_37;
              }
            }

            else
            {
            }
          }

          goto LABEL_104;
        }
      }

      else
      {
      }

LABEL_104:

      sub_1000207FC(4032, 0xD000000000000020, 0x800000010034E310, 0);
      swift_willThrow();
      sub_10008C3EC(__src);
      sub_10001A074(v90, v72);
      goto LABEL_99;
    }
  }

  else
  {
LABEL_97:
  }

LABEL_98:

  sub_1000207FC(4032, 0xD00000000000001ELL, 0x800000010034E2F0, 0);
  swift_willThrow();
  sub_10008C3EC(__src);
LABEL_99:
  sub_10001A074(v84, v85);
  return sub_10001A074(v83, v91);
}

uint64_t sub_1001164D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v101 = a3;
  v102 = type metadata accessor for TLVTag();
  v5 = *(v102 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v102);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v90 - v15;
  __chkstk_darwin(v14);
  v18 = &v90 - v17;
  v19 = type metadata accessor for TLV();
  v103 = *(v19 - 8);
  v20 = v103[8];
  __chkstk_darwin(v19);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094F4(a1, a2);
  v23 = v104;
  result = TLV.init(dataRepresentation:)();
  if (!v23)
  {
    v99 = v16;
    v97 = v13;
    v104 = 0;
    static TLVTag.blobInformation.getter();
    TLV.firstChild(tag:)();
    v27 = *(v5 + 8);
    v26 = v5 + 8;
    v25 = v27;
    v28 = v102;
    v27(v8, v102);
    v100 = v103[6];
    v29 = v22;
    if (v100(v18, 1, v19) == 1)
    {
      sub_10000BD44(v18, &unk_10039E210, &unk_1002C65B0);
      v30 = v103;
LABEL_19:
      sub_1000207FC(4047, 0xD00000000000002FLL, 0x800000010034E340, 0);
      swift_willThrow();
      return (v30[1])(v29, v19);
    }

    v94 = v25;
    v95 = v8;
    v96 = v26;
    v98 = TLV.value.getter();
    v32 = v31;
    v33 = v103;
    v34 = v103[1];
    v34(v18, v19);
    v35 = v32;
    v36 = v32 >> 62;
    v30 = v33;
    if ((v32 >> 62) > 1)
    {
      if (v36 != 2)
      {
        v38 = v98;
        goto LABEL_18;
      }

      v37 = v98;
      v40 = *(v98 + 16);
      v39 = *(v98 + 24);
      v41 = __OFSUB__(v39, v40);
      v42 = v39 - v40;
      if (!v41)
      {
        if (v42 != 2)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }

      __break(1u);
    }

    else
    {
      if (!v36)
      {
        v37 = v98;
        if (BYTE6(v35) != 2)
        {
LABEL_7:
          v38 = v37;
LABEL_18:
          sub_100009548(v38, v35);
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v37 = v98;
      if (!__OFSUB__(HIDWORD(v98), v98))
      {
        if (HIDWORD(v98) - v98 != 2)
        {
          goto LABEL_7;
        }

LABEL_11:
        v108[3] = &type metadata for Data;
        v108[4] = &protocol witness table for Data;
        v108[0] = v37;
        v108[1] = v35;
        v103 = v35;
        v43 = sub_10000BE18(v108, &type metadata for Data);
        v44 = *v43;
        v45 = v43[1];
        v46 = v45 >> 62;
        v93 = v19;
        v92 = v34;
        if ((v45 >> 62) > 1)
        {
          if (v46 != 2)
          {
            memset(v105, 0, 14);
            sub_1000094F4(v37, v103);
            v47 = v105;
            v48 = v105;
            goto LABEL_40;
          }

          v49 = *(v44 + 16);
          v91 = *(v44 + 24);
          sub_1000094F4(v37, v103);
          v50 = __DataStorage._bytes.getter();
          if (v50)
          {
            v51 = __DataStorage._offset.getter();
            if (__OFSUB__(v49, v51))
            {
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            v50 += v49 - v51;
          }

          v41 = __OFSUB__(v91, v49);
          v52 = v91 - v49;
          if (!v41)
          {
            v53 = __DataStorage._length.getter();
            if (v53 >= v52)
            {
              v54 = v52;
            }

            else
            {
              v54 = v53;
            }

LABEL_35:
            v59 = (v54 + v50);
            if (v50)
            {
              v48 = v59;
            }

            else
            {
              v48 = 0;
            }

            v47 = v50;
            goto LABEL_40;
          }

LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (!v46)
        {
          v105[0] = v44;
          LOWORD(v105[1]) = v45;
          BYTE2(v105[1]) = BYTE2(v45);
          BYTE3(v105[1]) = BYTE3(v45);
          BYTE4(v105[1]) = BYTE4(v45);
          BYTE5(v105[1]) = BYTE5(v45);
          sub_1000094F4(v37, v103);
          v47 = v105;
          v48 = v105 + BYTE6(v45);
LABEL_40:
          v60 = v104;
          sub_10014B4B8(v47, v48, &v106);
          v104 = v60;
          v61 = v106;
          v62 = v107;
          sub_1000094F4(v106, v107);
          sub_10000959C(v108);
          v63 = Data._Representation.subscript.getter();
          sub_100009548(v61, v62);
          sub_100009548(v61, v62);
          if ((v63 & 0x80) == 0)
          {
            sub_1000207FC(4047, 0xD000000000000035, 0x800000010034E370, 0);
            swift_willThrow();
            sub_100009548(v37, v103);
            return v92(v29, v93);
          }

          v64 = 0xEA00000000004342;
          v65 = (v63 >> 4) & 7;
          if (v65)
          {
            if (v65 == 2)
            {
              v64 = 0xE500000000000000;
              v66 = 0x342D4F5349;
            }

            else if (v65 == 1)
            {
              v66 = 0x432D363532534541;
            }

            else
            {
              v64 = 0x800000010034E3B0;
              v66 = 0xD000000000000021;
            }

            v90 = v66;
          }

          else
          {
            v90 = 0x432D383231534541;
          }

          v67 = v95;
          static TLVTag.cipherBlobIVOrSalt.getter();
          v68 = v99;
          TLV.firstChild(tag:)();
          v94(v67, v28);
          v69 = v68;
          v70 = v93;
          if (v100(v68, 1, v93) == 1)
          {

            sub_10000BD44(v68, &unk_10039E210, &unk_1002C65B0);
LABEL_65:
            sub_1000207FC(4047, 0xD00000000000002BLL, 0x800000010034E3E0, 0);
            swift_willThrow();
            sub_100009548(v98, v103);
            return v92(v29, v93);
          }

          v91 = TLV.value.getter();
          v72 = v71;
          v92(v69, v70);
          v73 = v72 >> 62;
          if ((v72 >> 62) > 1)
          {
            v74 = v101;
            if (v73 != 2)
            {
              goto LABEL_64;
            }

            v77 = *(v91 + 16);
            v76 = *(v91 + 24);
            v41 = __OFSUB__(v76, v77);
            v75 = v76 - v77;
            if (!v41)
            {
LABEL_61:
              if (v75 == 16)
              {
                v101 = v72;
                v78 = v95;
                static TLVTag.cipheredData.getter();
                v79 = v97;
                TLV.firstChild(tag:)();
                v80 = v28;
                v81 = v79;
                v94(v78, v80);
                v82 = v79;
                v83 = v93;
                if (v100(v82, 1, v93) == 1)
                {

                  sub_10000BD44(v81, &unk_10039E210, &unk_1002C65B0);
                  sub_1000207FC(4047, 0xD000000000000025, 0x800000010034E410, 0);
                  swift_willThrow();
                  sub_100009548(v91, v101);
                  sub_100009548(v98, v103);
                  return v92(v29, v83);
                }

                else
                {
                  v84 = TLV.value.getter();
                  v86 = v85;
                  sub_100009548(v98, v103);
                  v87 = v29;
                  v88 = v92;
                  v92(v87, v83);
                  result = v88(v81, v83);
                  *v74 = v90;
                  v74[1] = v64;
                  v89 = v101;
                  v74[2] = v91;
                  v74[3] = v89;
                  v74[4] = v84;
                  v74[5] = v86;
                }

                return result;
              }

LABEL_64:

              sub_100009548(v91, v72);
              goto LABEL_65;
            }

            __break(1u);
          }

          else
          {
            v74 = v101;
            if (!v73)
            {
              v75 = BYTE6(v72);
              goto LABEL_61;
            }
          }

          LODWORD(v75) = HIDWORD(v91) - v91;
          if (!__OFSUB__(HIDWORD(v91), v91))
          {
            v75 = v75;
            goto LABEL_61;
          }

LABEL_73:
          __break(1u);
        }

        v55 = v44;
        v56 = v44 >> 32;
        v91 = v56 - v55;
        if (v56 >= v55)
        {
          sub_1000094F4(v37, v103);
          v50 = __DataStorage._bytes.getter();
          if (!v50)
          {
            goto LABEL_33;
          }

          v57 = __DataStorage._offset.getter();
          if (!__OFSUB__(v55, v57))
          {
            v50 += v55 - v57;
LABEL_33:
            v58 = __DataStorage._length.getter();
            v54 = v91;
            if (v58 < v91)
            {
              v54 = v58;
            }

            goto LABEL_35;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

  return result;
}

uint64_t sub_100116ED8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v2 = sub_1000F5A28(0x64496B656BLL, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_10000BDA4(*(a1 + 56) + 32 * v2, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v4 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v4 = *v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_26:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A35F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_31;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Error obtaining kekId from txnBlobJson";
    goto LABEL_30;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v5 = sub_1000F5A28(0xD000000000000013, 0x800000010034DF40);
  if ((v6 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_10000BDA4(*(a1 + 56) + 32 * v5, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v7 = *v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_32:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000403C(v20, qword_1003A35F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_31;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Error obtaining transactionDataBlob from txnBlobJson";
    goto LABEL_30;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  v8 = sub_1000F5A28(0xD000000000000011, 0x800000010034DF60);
  if ((v9 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_10000BDA4(*(a1 + 56) + 32 * v8, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v10 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v10 = *v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_36:
    if (qword_10039D610 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000403C(v21, qword_1003A35F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_31;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Error obtaining seAttestationBlob from txnBlobJson";
    goto LABEL_30;
  }

  if (*(a1 + 16))
  {
    v11 = sub_1000F5A28(0x7472654364736163, 0xEF65746163696669);
    if (v12)
    {
      sub_10000BDA4(*(a1 + 56) + 32 * v11, v25);
      if (swift_dynamicCast())
      {

        v13 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v13 = *v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          return 1;
        }
      }
    }
  }

  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000403C(v22, qword_1003A35F0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Error obtaining casdCertificate from txnBlobJson";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);
  }

LABEL_31:

  return 0;
}

double sub_100117364(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001173FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011753C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100117574()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001175BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001175FC()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  sub_10000959C(v0 + 10);
  v7 = v0[15];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1001176AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100117734()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10011779C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100117840()
{
  v1 = v0[2];

  sub_10000959C(v0 + 3);
  v2 = v0[8];
  swift_unknownObjectRelease();
  v3 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001178A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001178E8(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100117900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100117950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

double sub_1001179B0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 56) = (a2 - 1);
  }

  return result;
}

__n128 sub_1001179F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100117A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100117A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100117AB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 409))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100117B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 408) = 0;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 409) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 409) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100117BC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100117C0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100117D08()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3808);
  sub_10000403C(v0, qword_1003A3808);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.reader.getter();
}

void sub_100117D74(void *a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t))
{
  v271 = a2;
  v4 = v3;
  v283 = a3;
  v6 = *v4;
  v7 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v265 = &v254 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v264 = &v254 - v12;
  v13 = __chkstk_darwin(v11);
  v267 = &v254 - v14;
  __chkstk_darwin(v13);
  v270 = &v254 - v15;
  v16 = type metadata accessor for UUID();
  v274 = *(v16 - 8);
  v275 = v16;
  v17 = *(v274 + 64);
  v18 = __chkstk_darwin(v16);
  v269 = &v254 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v273 = (&v254 - v20);
  v280 = type metadata accessor for URL();
  v276 = *(v280 - 8);
  v21 = *(v276 + 8);
  __chkstk_darwin(v280);
  v23 = &v254 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v277 = &v254 - v26;
  v282 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes;
  *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes) = 0;
  v27 = (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID);
  *v27 = 0;
  v27[1] = 0;
  *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF) = 0;
  v28 = (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_vtid);
  *v28 = 0;
  v28[1] = 0;
  v268 = v28;
  *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinFallbackEnabledPrefixAIDs) = _swiftEmptyArrayStorage;
  v29 = &off_1003A6000;
  v30 = (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_bundleID);
  *v30 = 0;
  v30[1] = 0;
  v266 = v30;
  if (qword_10039D620 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000403C(v31, qword_1003A3808);
  v33 = a1;
  v278 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v279 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v281 = v4;
    v38 = v33;
    v39 = v37;
    v286[0] = swift_slowAlloc();
    *v39 = 136315394;
    v40 = _typeName(_:qualified:)();
    v42 = sub_100008F6C(v40, v41, v286);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1002C1660;
    *(v43 + 56) = sub_10000411C(0, &qword_1003A3A88, SPRReadParameters_ptr);
    *(v43 + 32) = v38;
    v44 = v38;
    v45 = showFunction(signature:_:)(0xD00000000000001ALL, 0x800000010034EF00, v43);
    v47 = v46;

    v48 = sub_100008F6C(v45, v47, v286);

    *(v39 + 14) = v48;
    v29 = &off_1003A6000;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s.%s", v39, 0x16u);
    swift_arrayDestroy();

    v33 = v38;
    v4 = v281;
  }

  v49 = 0x64696C61766E69;
  [v33 mode];
  if (SPRReaderMode.description.getter() == 0x64696C61766E69 && v50 == 0xE700000000000000)
  {

    goto LABEL_9;
  }

  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v51)
  {
LABEL_9:

    v52 = 0xD000000000000012;
    v53 = 0x800000010034EEE0;
    v54 = 4017;
LABEL_10:
    sub_1000207FC(v54, v52, v53, 0);
    swift_willThrow();

    goto LABEL_11;
  }

  v4[2] = [v33 mode];
  [v33 transactionType];
  if (SPRTransactionType.description.getter() == 0x64696C61766E69 && v66 == 0xE700000000000000)
  {

LABEL_18:

    v57 = &off_1003A6000;
    sub_1000207FC(4000, 0xD000000000000017, 0x800000010034EEC0, 0);
    swift_willThrow();

    v29 = &off_1003A6000;
    v55 = &off_1003A6000;
    v56 = &off_1003A6000;
    goto LABEL_12;
  }

  v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v67)
  {
    goto LABEL_18;
  }

  *(v4 + 72) = [v33 transactionType];
  v68 = [v33 timeoutReadPay];
  v4[14] = v68;
  v281 = v4;
  if ((v68 - 41) <= 0xFFFFFFFFFFFFFFD7)
  {
    v69 = v33;
    v70 = v33;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 134218240;
      *(v73 + 4) = [v70 timeoutReadPay];

      *(v73 + 12) = 2048;
      *(v73 + 14) = 40;
      _os_log_impl(&_mh_execute_header, v71, v72, "Input timeoutReadPay of %ld was invalid. Using maximum of %ld.", v73, 0x16u);
    }

    else
    {

      v71 = v70;
    }

    v74 = v281;
    v281[14] = 40;
    v33 = v69;
    v4 = v74;
  }

  v75 = &selRef_currencyCode;
  v76 = [v33 timeoutReadVas];
  v4[15] = v76;
  if ((v76 - 41) <= 0xFFFFFFFFFFFFFFD7)
  {
    v77 = v33;
    v78 = v33;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 134218240;
      *(v81 + 4) = [v78 timeoutReadVas];

      *(v81 + 12) = 2048;
      *(v81 + 14) = 40;
      _os_log_impl(&_mh_execute_header, v79, v80, "Input timeoutReadVas of %ld was invalid. Using maximum of %ld.", v81, 0x16u);
    }

    else
    {

      v79 = v78;
    }

    v82 = v281;
    v281[15] = 40;
    v33 = v77;
    v4 = v82;
  }

  if ([v33 mode] - 1 <= 2)
  {
    v83 = [v33 vasRequests];
    sub_10000411C(0, &qword_1003A3A80, SPRVASRequest_ptr);
    v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v84 >> 62)
    {
      goto LABEL_65;
    }

    for (i = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v29 = &off_1003A6000;

      if (!i)
      {

        v52 = 0xD000000000000011;
        v53 = 0x800000010034EEA0;
        v54 = 4000;
        goto LABEL_10;
      }

      v86 = [v33 vasRequests];
      v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v255 = v33;
      if (v75 >> 62)
      {
        v87 = _CocoaArrayWrapper.endIndex.getter();
        if (!v87)
        {
LABEL_67:

          v33 = v255;
          break;
        }
      }

      else
      {
        v87 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v87)
        {
          goto LABEL_67;
        }
      }

      v33 = 0;
      v261 = v75 & 0xFFFFFFFFFFFFFF8;
      v262 = v75 & 0xC000000000000001;
      v259 = v75;
      v260 = SPRVASTerminalProtocolSignUpOnly;
      v256 = (v276 + 56);
      v257 = v276 + 8;
      v258 = v87;
      while (1)
      {
        if (v262)
        {
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v261 + 16))
          {
            goto LABEL_64;
          }

          v88 = *(v75 + 8 * v33 + 32);
        }

        v89 = v88;
        v263 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          break;
        }

        v90 = [v88 vasTerminalProtocol];
        v91 = SPRVASTerminalProtocol.description.getter();
        v93 = v92;

        if (v91 == 0x64696C61766E69 && v93 == 0xE700000000000000)
        {
          v112 = v89;

LABEL_59:

          sub_1000207FC(4000, 0xD000000000000029, 0x800000010034EE70, 0);
          swift_willThrow();

          goto LABEL_83;
        }

        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v95)
        {
          v112 = v89;

          goto LABEL_59;
        }

        v96 = [v89 merchantId];
        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;

        v100 = HIBYTE(v99) & 0xF;
        if ((v99 & 0x2000000000000000) == 0)
        {
          v100 = v97 & 0xFFFFFFFFFFFFLL;
        }

        if (!v100)
        {

          sub_1000207FC(4000, 0xD00000000000001ELL, 0x800000010034EE50, 0);
          swift_willThrow();

          goto LABEL_83;
        }

        v101 = [v89 vasTerminalProtocol];
        sub_10000411C(0, &qword_1003A2308, NSNumber_ptr);
        v102 = v101;
        v103 = v89;
        v104 = v260;
        LOBYTE(v101) = static NSObject.== infix(_:_:)();

        v105 = v279;
        v29 = &off_1003A6000;
        v276 = v103;
        if (v101)
        {
          v106 = [v103 vasUrl];
          if (!v106)
          {

            v113 = v277;
            (*v256)(v277, 1, 1, v280);
            sub_10000BD44(v113, &qword_1003A03D0, &unk_1002C3D50);
            sub_1000207FC(4000, 0xD000000000000037, 0x800000010034EE10, 0);
            swift_willThrow();

            goto LABEL_11;
          }

          v107 = v106;
          v108 = v277;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*v256)(v108, 0, 1, v280);
          sub_10000BD44(v108, &qword_1003A03D0, &unk_1002C3D50);
          v103 = v276;
        }

        v109 = [v103 vasUrl];
        v75 = v259;
        if (v109)
        {
          v110 = v109;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL.absoluteString.getter();
          v111 = String.count.getter();

          if (v111 > 64)
          {

            sub_1000207FC(4000, 0xD00000000000001DLL, 0x800000010034EDF0, 0);
            swift_willThrow();

            (*v257)(v105, v280);
            goto LABEL_11;
          }

          (*v257)(v105, v280);
        }

        ++v33;
        if (v263 == v258)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      ;
    }
  }

  v114 = [v33 vasRequests];
  sub_10000411C(0, &qword_1003A3A80, SPRVASRequest_ptr);
  v115 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4[3] = v115;
  v116 = &selRef_currencyCode;
  v117 = [v33 currencyCode];
  v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v119;

  v121 = v120;
  v122 = v120 >> 62;
  if ((v120 >> 62) <= 1)
  {
    if (!v122)
    {
      sub_100009548(v118, v120);
      v118 = BYTE6(v120);
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  if (v122 != 2)
  {
    sub_100009548(v118, v120);
    v118 = 0;
    goto LABEL_78;
  }

  v120 = *(v118 + 16);
  v123 = *(v118 + 24);
  sub_100009548(v118, v121);
  v118 = v123 - v120;
  if (__OFSUB__(v123, v120))
  {
    __break(1u);
LABEL_75:
    sub_100009548(v118, v121);
    if (__OFSUB__(HIDWORD(v118), v118))
    {
      __break(1u);
      goto LABEL_185;
    }

    v118 = HIDWORD(v118) - v118;
  }

LABEL_78:
  if (v118 != static TLVTag.TAG_5F2A_LENGTH.getter())
  {

    sub_1000207FC(4002, 0xD000000000000017, 0x800000010034EC40, 0);
    swift_willThrow();

    v132 = v4[3];

LABEL_83:
    v29 = &off_1003A6000;
LABEL_11:
    v55 = &off_1003A6000;
    v56 = &off_1003A6000;
    v57 = &off_1003A6000;
LABEL_12:
    v58 = *(&v282->isa + v4);

LABEL_13:
    v59 = *(&v56[436]->Name + v4);

    v60 = *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_vtid + 8);

    v61 = *(&v57[439]->Flags + v4);

    v62 = *(&v55[440]->Flags + v4);

    v63 = *(&v29[441]->Name + v4);

    type metadata accessor for ReaderConfiguration();
    v64 = *(*v4 + 48);
    v65 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return;
  }

  v124 = [v33 currencyCode];
  v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v126;

  v4[7] = v125;
  v4[8] = v127;
  v116 = &selRef_currencyCode;
  v128 = [v33 merchantCategoryCode];
  v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v129;

  v130 = v120;
  v131 = v120 >> 62;
  if ((v120 >> 62) <= 1)
  {
    if (!v131)
    {
      sub_100009548(v118, v120);
      v118 = BYTE6(v120);
      goto LABEL_91;
    }

    goto LABEL_88;
  }

  if (v131 != 2)
  {
    sub_100009548(v118, v120);
    v118 = 0;
    goto LABEL_91;
  }

  v120 = *(v118 + 16);
  v133 = *(v118 + 24);
  sub_100009548(v118, v130);
  v118 = v133 - v120;
  if (__OFSUB__(v133, v120))
  {
    __break(1u);
LABEL_88:
    sub_100009548(v118, v130);
    LODWORD(v134) = HIDWORD(v118) - v118;
    if (__OFSUB__(HIDWORD(v118), v118))
    {
      __break(1u);
      goto LABEL_195;
    }

    v118 = v134;
  }

LABEL_91:
  if (v118 != static TLVTag.TAG_9F15_LENGTH.getter())
  {

    v144 = 0x800000010034EC60;
    v143 = 0xD000000000000017;
LABEL_97:
    sub_1000207FC(4000, v143, v144, 0);
    swift_willThrow();

    v145 = 0;
    v146 = 0;
    v147 = 0;
LABEL_106:
    v55 = &off_1003A6000;
    v56 = &off_1003A6000;
    v165 = v4[3];

    sub_100009548(v4[7], v4[8]);
    if (v145)
    {
      sub_100009548(v4[10], v4[11]);
    }

    if (v146)
    {
      sub_100009548(v4[12], v4[13]);
      (*(v274 + 8))(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v275);
      v166 = *(&v282->isa + v4);

      sub_100009548(*(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf), *(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8));
      v29 = &off_1003A6000;
      if (!v147)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v167 = *(&v282->isa + v4);

      v29 = &off_1003A6000;
      if ((v147 & 1) == 0)
      {
LABEL_113:
        v57 = &off_1003A6000;
        goto LABEL_13;
      }
    }

    memcpy(v286, v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken, sizeof(v286));
    sub_10006413C(v286);
    goto LABEL_113;
  }

  v135 = [v33 merchantCategoryCode];
  v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v138 = v137;

  v139 = Data.hexDigits.getter();
  sub_100009548(v136, v138);
  v140 = *(v139 + 16);
  v141 = (v139 + 32);
  while (v140)
  {
    v142 = *v141++;
    --v140;
    if (v142 > 9)
    {

      v143 = 0xD00000000000002ELL;
      v144 = 0x800000010034EC80;
      goto LABEL_97;
    }
  }

  v148 = [v33 merchantCategoryCode];
  v149 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v151 = v150;

  v4[10] = v149;
  v4[11] = v151;
  [v33 amount];
  if ((NSDecimal.isSignMinus.getter() & 1) != 0 || ([v33 amount], NSDecimal.init(integerLiteral:)(v152, 10), pow(_:_:)(v155, v153, v154), (static NSDecimal.< infix(_:_:)() & 1) == 0) || (objc_msgSend(v33, "amount"), NSDecimal.exponent.getter() < 0))
  {

    v162 = 0xD000000000000036;
    v163 = 0x800000010034ECB0;
    v164 = 4001;
LABEL_105:
    sub_1000207FC(v164, v162, v163, 0);
    swift_willThrow();

    v146 = 0;
    v147 = 0;
    v145 = 1;
    goto LABEL_106;
  }

  [v33 amount];
  *(v4 + 2) = v284;
  *(v4 + 12) = v285;
  v156 = [v33 interfaceDeviceSerial];
  v157 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v159 = v158;

  v160 = v159;
  v161 = v159 >> 62;
  if ((v159 >> 62) <= 1)
  {
    if (!v161)
    {
      sub_100009548(v157, v159);
      v157 = BYTE6(v159);
      goto LABEL_121;
    }

    goto LABEL_118;
  }

  if (v161 != 2)
  {
    sub_100009548(v157, v159);
    v157 = 0;
    goto LABEL_121;
  }

  v169 = *(v157 + 16);
  v168 = *(v157 + 24);
  sub_100009548(v157, v160);
  v157 = v168 - v169;
  if (__OFSUB__(v168, v169))
  {
    __break(1u);
LABEL_118:
    sub_100009548(v157, v160);
    if (__OFSUB__(HIDWORD(v157), v157))
    {
      __break(1u);
      goto LABEL_218;
    }

    v157 = HIDWORD(v157) - v157;
  }

LABEL_121:
  if (v157 != static TLVTag.TAG_9F1E_LENGTH.getter())
  {

    v163 = 0x800000010034ECF0;
    v164 = 4000;
    v162 = 0xD000000000000017;
    goto LABEL_105;
  }

  v170 = [v33 interfaceDeviceSerial];
  v171 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v173 = v172;

  v4[12] = v171;
  v4[13] = v173;
  v174 = [v33 transactionUUID];
  v175 = v273;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v177 = v274;
  v176 = v275;
  v276 = *(v274 + 32);
  (v276)(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v175, v275);
  v178 = [v33 transactionUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v279 = *(v177 + 8);
  v277 = (v177 + 8);
  v279(v175, v176);
  v179 = String.lowercased()();

  v180 = sub_100146900(v179._countAndFlagsBits, v179._object);
  v182 = v181;
  v75 = Data.sha256Digest.getter();
  v49 = v183;
  sub_100009548(v180, v182);
  v184 = Data.subdata(in:)();
  v185 = (v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf);
  *v185 = v184;
  v185[1] = v186;
  v255 = v33;
  v187 = [v33 preferredSchemes];
  if (!v187)
  {
    goto LABEL_128;
  }

  v188 = v187;
  v189 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v116 = *(v189 + 2);
  if (v116)
  {
    if (v116 > 4)
    {

      sub_1000207FC(4000, 0xD00000000000002CLL, 0x800000010034EDC0, 0);
      swift_willThrow();
LABEL_149:
      sub_100009548(v75, v49);

      v147 = 0;
      v145 = 1;
      goto LABEL_150;
    }

    if (!*(v189 + 2))
    {
      goto LABEL_218;
    }

    v118 = *(v189 + 4);
    v120 = *(v189 + 5);
    v273 = v189;
    v198 = v120 >> 62;
    if ((v120 >> 62) > 1)
    {
      if (v198 != 2)
      {
LABEL_148:

        sub_1000207FC(4000, 0xD000000000000036, 0x800000010034ED80, 0);
        swift_willThrow();
        sub_100009548(v118, v120);
        goto LABEL_149;
      }

      v215 = *(v118 + 16);
      v214 = *(v118 + 24);
      v199 = v214 - v215;
      if (__OFSUB__(v214, v215))
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (!v198)
      {
        v199 = BYTE6(v120);
LABEL_147:
        if ((v199 - 17) < 0xFFFFFFFFFFFFFFF4)
        {
          goto LABEL_148;
        }

        sub_100009548(v118, v120);
        if (v116 == 1)
        {
          goto LABEL_152;
        }

        if (*(v273 + 2) < 2uLL)
        {
          goto LABEL_218;
        }

        v118 = *(v273 + 6);
        v120 = *(v273 + 7);
        v217 = v120 >> 62;
        if ((v120 >> 62) > 1)
        {
          if (v217 == 3)
          {
            goto LABEL_148;
          }

          v223 = *(v118 + 16);
          v222 = *(v118 + 24);
          v218 = v222 - v223;
          if (__OFSUB__(v222, v223))
          {
            goto LABEL_142;
          }

          goto LABEL_187;
        }

        if (!v217)
        {
          v218 = BYTE6(v120);
          goto LABEL_188;
        }

LABEL_185:
        if (__OFSUB__(HIDWORD(v118), v118))
        {
          goto LABEL_219;
        }

        v218 = HIDWORD(v118) - v118;
LABEL_187:
        sub_1000094F4(v118, v120);
LABEL_188:
        if ((v218 - 17) < 0xFFFFFFFFFFFFFFF4)
        {
          goto LABEL_148;
        }

        sub_100009548(v118, v120);
        if (v116 == 2)
        {
          goto LABEL_152;
        }

        if (*(v273 + 2) < 3uLL)
        {
          goto LABEL_218;
        }

        v118 = *(v273 + 8);
        v120 = *(v273 + 9);
        v134 = v120 >> 62;
        if ((v120 >> 62) <= 1)
        {
          if (!v134)
          {
            v247 = BYTE6(v120);
            goto LABEL_202;
          }

          if (__OFSUB__(HIDWORD(v118), v118))
          {
            goto LABEL_219;
          }

          v247 = HIDWORD(v118) - v118;
LABEL_201:
          sub_1000094F4(v118, v120);
LABEL_202:
          if ((v247 - 17) < 0xFFFFFFFFFFFFFFF4)
          {
            goto LABEL_148;
          }

          sub_100009548(v118, v120);
          if (v116 == 3)
          {
            goto LABEL_152;
          }

          if (*(v273 + 2) >= 4uLL)
          {
            v118 = *(v273 + 10);
            v120 = *(v273 + 11);
            v250 = v120 >> 62;
            if ((v120 >> 62) <= 1)
            {
              if (!v250)
              {
                v251 = BYTE6(v120);
LABEL_215:
                if ((v251 - 17) < 0xFFFFFFFFFFFFFFF4)
                {
                  goto LABEL_148;
                }

                sub_100009548(v118, v120);
LABEL_152:
                v216 = *(&v282->isa + v4);
                *(&v282->isa + v4) = v273;
                goto LABEL_127;
              }

              if (!__OFSUB__(HIDWORD(v118), v118))
              {
                v251 = HIDWORD(v118) - v118;
LABEL_214:
                sub_1000094F4(v118, v120);
                goto LABEL_215;
              }

LABEL_219:
              __break(1u);
              return;
            }

            if (v250 == 3)
            {
              goto LABEL_148;
            }

            v253 = *(v118 + 16);
            v252 = *(v118 + 24);
            v251 = v252 - v253;
            if (!__OFSUB__(v252, v253))
            {
              goto LABEL_214;
            }

LABEL_142:
            __break(1u);
LABEL_143:

            goto LABEL_166;
          }

LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

LABEL_195:
        if (v134 == 3)
        {
          goto LABEL_148;
        }

        v249 = *(v118 + 16);
        v248 = *(v118 + 24);
        v247 = v248 - v249;
        if (__OFSUB__(v248, v249))
        {
          goto LABEL_142;
        }

        goto LABEL_201;
      }

      if (__OFSUB__(HIDWORD(v118), v118))
      {
        goto LABEL_219;
      }

      v199 = HIDWORD(v118) - v118;
    }

    sub_1000094F4(v118, v120);
    goto LABEL_147;
  }

LABEL_127:

LABEL_128:
  v280 = v75;
  v190 = v255;
  v191 = [v255 kernelToken];
  v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v194 = v193;

  v195 = v272;
  sub_10008C068(v192, v194, v271, v283, v287);
  if (v195)
  {
    swift_errorRetain();
    sub_1000207FC(4004, 0, 0, v195);

    swift_willThrow();
    sub_100009548(v280, v49);

    v147 = 0;
    v145 = 1;
LABEL_150:
    v146 = 1;
    goto LABEL_106;
  }

  v196 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken;
  memcpy(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken, v287, 0x120uLL);
  memcpy(v289, v287, 0x120uLL);
  sub_100064B9C(v289, v286);
  v197 = v270;
  sub_10008BD6C(v270);
  sub_10006413C(v289);
  v283 = *(v274 + 48);
  if (v283(v197, 1, v275) == 1)
  {
    sub_10000BD44(v197, &qword_1003A0178, &unk_1002C3BB0);
    sub_1000207FC(4004, 0xD00000000000003ELL, 0x800000010034ED10, 0);
    swift_willThrow();
    sub_100009548(v280, v49);

    v145 = 1;
    v146 = 1;
    v147 = 1;
    goto LABEL_106;
  }

  v200 = v269;
  v201 = v275;
  (v276)(v269, v197, v275);
  (*(v274 + 16))(v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_tpid, v200, v201);
  memcpy(v288, v4 + v196, sizeof(v288));
  sub_100064B9C(v288, v286);
  v202 = v267;
  sub_10008B618(v267);
  sub_10006413C(v288);
  v276 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID;
  sub_100064190(v202, v4 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID);

  v203 = Logger.logObject.getter();
  LODWORD(v202) = static os_log_type_t.default.getter();

  LODWORD(v278) = v202;
  v282 = v203;
  if (!os_log_type_enabled(v203, v202))
  {
    goto LABEL_143;
  }

  v204 = swift_slowAlloc();
  v274 = swift_slowAlloc();
  v290 = v274;
  *v204 = 136315394;
  v205 = v281;
  v206 = sub_100055298();
  v208 = sub_100008F6C(v206, v207, &v290);

  *(v204 + 4) = v208;
  *(v204 + 12) = 2080;
  v209 = &v276[v205];
  v210 = v264;
  sub_10011A858(v209, v264);
  v211 = v283(v210, 1, v275);
  sub_10000BD44(v210, &qword_1003A0178, &unk_1002C3BB0);
  if (v211 == 1)
  {
    v212 = 0xE100000000000000;
    v213 = 32;
  }

  else
  {
    v286[0] = 0x495054666173202CLL;
    v286[1] = 0xEB00000000203A44;
    v219 = v265;
    sub_10011A858(&v276[v281], v265);
    if (v283(v219, 1, v275) == 1)
    {
      sub_10000BD44(v265, &qword_1003A0178, &unk_1002C3BB0);
      v220 = 0;
      v221 = 0xE000000000000000;
    }

    else
    {
      v224 = v265;
      v220 = sub_100055298();
      v221 = v225;
      v279(v224, v275);
    }

    v226._countAndFlagsBits = v220;
    v226._object = v221;
    String.append(_:)(v226);

    v213 = v286[0];
    v212 = v286[1];
  }

  v227 = sub_100008F6C(v213, v212, &v290);

  *(v204 + 14) = v227;
  v228 = v282;
  _os_log_impl(&_mh_execute_header, v282, v278, "tpid: %s%s from SPRReadParameters kernelToken", v204, 0x16u);
  swift_arrayDestroy();

LABEL_166:
  v229 = [v255 vtid];
  if (v229)
  {
    v230 = v229;
    v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v233 = v232;
  }

  else
  {
    v231 = 0;
    v233 = 0;
  }

  v234 = v268;
  v235 = v268[1];
  *v268 = v231;
  v234[1] = v233;

  if (!v233)
  {
    goto LABEL_173;
  }

  v236 = HIBYTE(v233) & 0xF;
  if ((v233 & 0x2000000000000000) == 0)
  {
    v236 = v231 & 0xFFFFFFFFFFFFLL;
  }

  if (!v236)
  {
    v245 = "config-prepare-totalTime";
    v246 = 0xD00000000000001CLL;
  }

  else
  {
LABEL_173:
    v237 = [v255 bundleID];
    if (v237)
    {
      v238 = v237;
      v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v241 = v240;
    }

    else
    {
      v239 = 0;
      v241 = 0;
    }

    v242 = v266;
    v243 = v266[1];
    *v266 = v239;
    v242[1] = v241;

    if (!v241)
    {
      goto LABEL_180;
    }

    v244 = HIBYTE(v241) & 0xF;
    if ((v241 & 0x2000000000000000) == 0)
    {
      v244 = v239 & 0xFFFFFFFFFFFFLL;
    }

    if (v244)
    {
LABEL_180:
      v279(v269, v275);
      sub_100009548(v280, v49);

      return;
    }

    v245 = "incorrectly configured for SAF";
    v246 = 0xD000000000000020;
  }

  sub_1000207FC(4000, v246, (v245 | 0x8000000000000000), 0);
  swift_willThrow();
  sub_100009548(v280, v49);

  v279(v269, v275);
}

char *sub_10011A468()
{
  v1 = *(v0 + 3);

  sub_100009548(*(v0 + 7), *(v0 + 8));
  sub_100009548(*(v0 + 10), *(v0 + 11));
  sub_100009548(*(v0 + 12), *(v0 + 13));
  v2 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  v5 = *&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes];

  sub_100009548(*&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf], *&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8]);
  memcpy(v12, &v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_kernelToken], sizeof(v12));
  sub_10006413C(v12);
  v4(&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_tpid], v3);
  sub_10000BD44(&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID], &qword_1003A0178, &unk_1002C3BB0);
  v6 = *&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID + 8];

  v7 = *&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_vtid + 8];

  v8 = *&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs];

  v9 = *&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinFallbackEnabledPrefixAIDs];

  v10 = *&v0[OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_bundleID + 8];

  return v0;
}

uint64_t sub_10011A5E0()
{
  sub_10011A468();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReaderConfiguration()
{
  result = qword_1003A3848;
  if (!qword_1003A3848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011A68C()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10011A7DC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10011A7DC()
{
  if (!qword_1003A04D0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003A04D0);
    }
  }
}

uint64_t sub_10011A858(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011A8C8()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_10011AA24(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}