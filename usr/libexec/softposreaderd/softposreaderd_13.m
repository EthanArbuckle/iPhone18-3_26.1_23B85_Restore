void sub_1001337FC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus + 1))
  {
    __break(1u);
  }

  else
  {
    sub_100133910(*(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus));
    sub_100136B9C();
  }
}

void sub_100133910(int a1)
{
  v2 = v1;
  v320 = a1;
  v3 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v293 = &v287 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v298 = &v287 - v8;
  v9 = __chkstk_darwin(v7);
  v297 = &v287 - v10;
  v11 = __chkstk_darwin(v9);
  v291 = &v287 - v12;
  v13 = __chkstk_darwin(v11);
  v295 = &v287 - v14;
  v15 = __chkstk_darwin(v13);
  v288 = &v287 - v16;
  v17 = __chkstk_darwin(v15);
  v292 = &v287 - v18;
  __chkstk_darwin(v17);
  v296 = &v287 - v19;
  v304 = type metadata accessor for TLV();
  v308 = *(v304 - 8);
  v20 = *(v308 + 64);
  v21 = __chkstk_darwin(v304);
  v299 = &v287 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v287 = &v287 - v24;
  v25 = __chkstk_darwin(v23);
  v290 = &v287 - v26;
  v27 = __chkstk_darwin(v25);
  v289 = &v287 - v28;
  __chkstk_darwin(v27);
  v294 = &v287 - v29;
  v303 = type metadata accessor for Data.Endianness();
  v302 = *(v303 - 1);
  v30 = *(v302 + 64);
  __chkstk_darwin(v303);
  v301 = &v287 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for TLVTag();
  v318 = *(v319 - 8);
  v32 = *(v318 + 64);
  v33 = __chkstk_darwin(v319);
  v307 = &v287 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v300 = &v287 - v36;
  v37 = __chkstk_darwin(v35);
  v309 = (&v287 - v38);
  __chkstk_darwin(v37);
  v313 = &v287 - v39;
  v40 = type metadata accessor for OSSignpostError();
  v306 = *(v40 - 8);
  v41 = *(v306 + 8);
  __chkstk_darwin(v40);
  v43 = &v287 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OSSignpostID();
  v45 = *(v44 - 8);
  v46 = v45[8];
  v47 = __chkstk_darwin(v44);
  v49 = &v287 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v47);
  v52 = &v287 - v51;
  __chkstk_darwin(v50);
  v54 = &v287 - v53;
  v55 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
  sub_10011BBA0(&off_10037EE88);
  v314 = v55;
  sub_10011B164(&off_10037EE60);
  if (qword_10039D630 != -1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v56 = type metadata accessor for OSSignposter();
    v57 = sub_10000403C(v56, qword_1003A3AA8);
    v321 = v2;
    v58 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
    OSSignposter.logHandle.getter();
    swift_unknownObjectRetain();
    v322 = v58;
    OSSignpostID.init(log:object:)();
    v59 = v45[2];
    v312 = v45 + 2;
    v311 = v59;
    v59(v52, v54, v44);
    v60 = type metadata accessor for OSSignpostIntervalState();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    v316 = v52;
    v63 = OSSignpostIntervalState.init(id:isOpen:)();
    v315 = v57;
    v64 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    LODWORD(v305) = static os_signpost_type_t.end.getter();
    v65 = OS_os_log.signpostsEnabled.getter();
    v317 = v44;
    v310 = v63;
    if (v65)
    {

      checkForErrorAndConsumeState(state:)();

      v66 = v306;
      if ((*(v306 + 11))(v43, v40) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v67 = 0;
        v68 = 0;
        v306 = "[Error] Interval already ended";
      }

      else
      {
        (*(v66 + 1))(v43, v40);
        v306 = "%s";
        v68 = 2;
        v67 = 1;
      }

      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v324 = v71;
      *v70 = v68;
      *(v70 + 1) = v67;
      *(v70 + 2) = 2080;
      *(v70 + 4) = sub_100008F6C(0xD000000000000010, 0x800000010034F220, &v324);
      v72 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, v305, v72, "reader-payment_read", v306, v70, 0xCu);
      sub_10000959C(v71);

      v69 = v45[1];
      v69(v49, v317);
    }

    else
    {

      v69 = v45[1];
      v69(v49, v44);
    }

    v73 = OSSignposter.logHandle.getter();
    v74 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v324 = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_100008F6C(0xD000000000000026, 0x800000010034F1F0, &v324);
      v77 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, v74, v77, "reader-postProcessing", "%s", v75, 0xCu);
      sub_10000959C(v76);
    }

    v78 = v321;
    v79 = v317;
    v311(v316, v54, v317);
    v80 = *(v60 + 48);
    v81 = *(v60 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();

    v69(v54, v79);
    type metadata accessor for SPRPayAppletStatus(0);
    *(&v325 + 1) = v82;
    LOBYTE(v324) = v320;
    v83 = v320;
    v84 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
    swift_beginAccess();
    sub_10002CFD4(&v324, 0xD000000000000014, 0x800000010034A420);
    swift_endAccess();
    if (v83 == 6)
    {
      v85 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent;
      v86 = v319;
      if ((*(v78 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent) & 1) == 0 && (*(*(v78 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 72) == 32 || *(v78 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lastTransactionOutcomeReceived) == 48))
      {
        v88 = *(v78 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
        sub_100100D88(9, 0);
        *(v78 + v85) = 1;
        v89 = *(v314 + 56);
        os_unfair_lock_lock(v89 + 8);
        v87 = 0;
        sub_10011D358(&v89[4], 5);
        os_unfair_lock_unlock(v89 + 8);
        sub_100186BE8("reader-payment_read_success", 27, 2, v322, 0xD00000000000001CLL, 0x800000010034F150);
      }

      else
      {
        v87 = 0;
      }
    }

    else
    {
      v87 = 0;
      v86 = v319;
    }

    v90 = v313;
    static TLVTag.transactionResultData.getter();
    v91 = sub_10012253C(v90, 0, 0);
    v316 = v84;
    v54 = v91;
    v93 = v92;
    v317 = *(v318 + 8);
    v317(v90, v86);
    *(&v325 + 1) = &type metadata for Data;
    *&v324 = v54;
    *(&v324 + 1) = v93;
    swift_beginAccess();
    sub_1000094F4(v54, v93);
    sub_10002CFD4(&v324, 0xD000000000000015, 0x800000010034A3E0);
    swift_endAccess();
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    v95 = sub_10000403C(v94, qword_1003A3A90);
    sub_1000094F4(v54, v93);
    v315 = v95;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    sub_100009548(v54, v93);
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v324 = v99;
      *v98 = 136315138;
      v100 = Data.hexString()();
      v101 = sub_100008F6C(v100._countAndFlagsBits, v100._object, &v324);

      *(v98 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v96, v97, "DF81FE: %s", v98, 0xCu);
      sub_10000959C(v99);
    }

    sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1002C1660;
    *(v102 + 32) = 26;
    v103 = v102 + 32;
    v104 = v93 >> 62;
    if ((v93 >> 62) > 1)
    {
      if (v104 != 2)
      {
        v105 = 0;
        goto LABEL_31;
      }

      v107 = *(v54 + 2);
      v106 = *(v54 + 3);
      v108 = __OFSUB__(v106, v107);
      v105 = v106 - v107;
      if (!v108)
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else if (!v104)
    {
      v105 = BYTE6(v93);
      goto LABEL_31;
    }

    LODWORD(v105) = HIDWORD(v54) - v54;
    if (__OFSUB__(HIDWORD(v54), v54))
    {
      __break(1u);
      goto LABEL_137;
    }

    v105 = v105;
LABEL_31:
    v109 = v320;
    *(v102 + 64) = &type metadata for Int;
    *(v102 + 40) = v105;
    v110 = sub_10018399C(v102);
    swift_setDeallocating();
    sub_10000BD44(v103, &qword_10039EC60, &qword_1002C1F80);
    v111 = swift_deallocClassInstance();
    v112 = v314;
    v113 = *(v314 + 56);
    __chkstk_darwin(v111);
    *(&v287 - 2) = v110;
    os_unfair_lock_lock((v113 + 32));
    sub_100117CD8((v113 + 16));
    os_unfair_lock_unlock((v113 + 32));

    v114 = v321;
    swift_beginAccess();
    v115 = sub_1000FBA98(v54, v93, v114 + v84, v112);
    v45 = v116;
    v43 = v117;
    LODWORD(v313) = v118;
    swift_endAccess();
    sub_1001371B0(v115);
    sub_100027EDC(v115);
    if (v109 == 7 && (v115 & 0x1FF00) == 0x700)
    {
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&_mh_execute_header, v119, v120, "Error Indication: L2: MAGSTRIPE NOT SUPPORTED", v121, 2u);
      }

      v122 = sub_1000207FC(4035, 0, 0, 0);
      v123 = *(v321 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      *(v321 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v122;
    }

    v44 = 0x1003A3000;
    if (!v43)
    {
      goto LABEL_58;
    }

    v52 = *(v321 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig);
    v124 = OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs;
    v125 = *(*(v52 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinBypassPrefixAIDs) + 16);
    v312 = 0;
    if (!v125)
    {
      break;
    }

    *(&v325 + 1) = &type metadata for Bool;
    LOBYTE(v324) = 1;
    v2 = v316;
    swift_beginAccess();

    sub_10002CFD4(&v324, 0xD000000000000012, 0x800000010034A440);
    swift_endAccess();
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v126, v127, "isPINBypassEnabled true", v44, 2u);
    }

    v311 = v52;
    v49 = *(v52 + v124);
    v128 = *(v49 + 2);

    v129 = (v49 + 40);
    v40 = -v128;
    v52 = -1;
    while (1)
    {
      if (v40 + v52 == -1)
      {

LABEL_49:
        v52 = v311;
        goto LABEL_50;
      }

      if (++v52 >= *(v49 + 2))
      {
        break;
      }

      v2 = (v129 + 2);
      v131 = *(v129 - 1);
      v130 = *v129;

      v132._countAndFlagsBits = v131;
      v132._object = v130;
      v44 = String.hasPrefix(_:)(v132);

      v129 = v2;
      if (v44)
      {

        *(&v325 + 1) = &type metadata for Bool;
        LOBYTE(v324) = 1;
        swift_beginAccess();
        sub_10002CFD4(&v324, 0xD000000000000012, 0x800000010034A460);
        swift_endAccess();
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v133, v134))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v133, v134, "isPINBypassAllowed true", v44, 2u);
        }

        *(v314 + 124) = 1;
        goto LABEL_49;
      }
    }

LABEL_134:
    __break(1u);
LABEL_135:
    swift_once();
  }

LABEL_50:
  v49 = *(v52 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_pinFallbackEnabledPrefixAIDs);
  v135 = *(v49 + 2);

  v136 = (v49 + 40);
  v40 = -v135;
  v2 = -1;
  do
  {
    if (v40 + v2 == -1)
    {

      v87 = v312;
      v44 = &unk_1003A3000;
      goto LABEL_58;
    }

    if (++v2 >= *(v49 + 2))
    {
      __break(1u);
      goto LABEL_134;
    }

    v52 = (v136 + 2);
    v138 = *(v136 - 1);
    v137 = *v136;

    v139._countAndFlagsBits = v138;
    v139._object = v137;
    v44 = String.hasPrefix(_:)(v139);

    v136 = v52;
  }

  while ((v44 & 1) == 0);

  v44 = &unk_1003A3000;
  *(v321 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackFlowEnabled) = 1;
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.default.getter();
  v142 = os_log_type_enabled(v140, v141);
  v87 = v312;
  if (v142)
  {
    v143 = swift_slowAlloc();
    *v143 = 0;
    _os_log_impl(&_mh_execute_header, v140, v141, "fallbackFlowEnabled true", v143, 2u);
  }

LABEL_58:
  v144 = *(v321 + *(v44 + 2960));

  if (v144 != 1)
  {
LABEL_62:
    sub_100009548(v54, v93);
    v146 = v321;
    v147 = &unk_10039D000;
    goto LABEL_66;
  }

  if (v313 & 1) == 0 || (v145 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted, (*(v321 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted)))
  {
    if ((v313 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&_mh_execute_header, v148, v149, "forFallback: true", v150, 2u);
    }

    *(&v325 + 1) = &type metadata for Bool;
    LOBYTE(v324) = 1;
    v146 = v321;
    swift_beginAccess();
    sub_10002CFD4(&v324, 0x626C6C6146726F66, 0xEB000000006B6361);
    swift_endAccess();
    sub_100009548(v54, v93);
    *(v314 + 128) = 1;
    v147 = &unk_10039D000;
LABEL_66:
    sub_10012316C();
    if (v87)
    {
      if (v147[197] != -1)
      {
        swift_once();
      }

      v153 = type metadata accessor for Logger();
      sub_10000403C(v153, qword_1003A3A90);
      swift_errorRetain();
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();

      v156 = os_log_type_enabled(v154, v155);
      v157 = v309;
      if (v156)
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *&v324 = v159;
        *v158 = 136315138;
        v323 = v87;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v160 = String.init<A>(describing:)();
        v162 = sub_100008F6C(v160, v161, &v324);

        *(v158 + 4) = v162;
        _os_log_impl(&_mh_execute_header, v154, v155, "Failed to get payment application type: %s", v158, 0xCu);
        sub_10000959C(v159);
      }

      else
      {
      }

      v177 = v319;
    }

    else
    {
      v163 = v151;
      v164 = v152;
      v165 = v146;
      LODWORD(v315) = v320;
      sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 9;
      v167 = v302;
      v168 = v301;
      v169 = v303;
      (*(v302 + 104))(v301, enum case for Data.Endianness.bigEndian(_:), v303);
      v170 = Data.toUInt16(endianness:)();
      (*(v167 + 8))(v168, v169);
      *(inited + 64) = &type metadata for UInt16;
      *(inited + 40) = v170;
      v171 = sub_10018399C(inited);
      swift_setDeallocating();
      v172 = sub_10000BD44(inited + 32, &qword_10039EC60, &qword_1002C1F80);
      v173 = *(v314 + 56);
      __chkstk_darwin(v172);
      *(&v287 - 2) = v171;
      os_unfair_lock_lock((v173 + 32));
      sub_100117CD8((v173 + 16));
      os_unfair_lock_unlock((v173 + 32));

      v174 = Data._Representation.subscript.getter();
      v175 = SPRPaymentApplicationType.description.getter();
      *(&v325 + 1) = &type metadata for String;
      *&v324 = v175;
      *(&v324 + 1) = v176;
      swift_beginAccess();
      sub_10002CFD4(&v324, 0x7954707041796170, 0xEA00000000006570);
      swift_endAccess();
      if (v315 == 7)
      {
        v177 = v319;
        v157 = v309;
        if (v174)
        {
          sub_100009548(v163, v164);
        }

        else
        {
          v178 = sub_1000207FC(4006, 0, 0, 0);
          sub_100009548(v163, v164);
          v179 = *(v165 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
          *(v165 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v178;
        }
      }

      else
      {
        sub_100009548(v163, v164);
        v177 = v319;
        v157 = v309;
      }
    }

    static TLVTag.trxCipherAndKeyBlobs.getter();
    v180 = sub_10012253C(v157, 0, 0);
    v182 = v181;
    v183 = (v318 + 8);
    v184 = v180;
    v185 = v317;
    v317(v157, v177);
    v186 = static TLV.decode(from:)();
    v315 = 0;
    v311 = v184;
    v312 = v182;
    v310 = v186;
    *&v324 = v186;
    v187 = v300;
    static TLVTag.cipherBlob.getter();
    v188 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
    v189 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0);
    v190 = v296;
    v306 = v188;
    v305 = v189;
    Collection<>.first(tag:)();
    v185(v187, v177);
    v191 = v308;
    v192 = *(v308 + 48);
    v193 = v304;
    v194 = v192(v190, 1, v304);
    v317 = v185;
    v309 = v192;
    v313 = v183;
    if (v194 == 1)
    {
      sub_10000BD44(v190, &unk_10039E210, &unk_1002C65B0);
      goto LABEL_100;
    }

    v195 = *(v191 + 32);
    v196 = v294;
    v303 = v195;
    (v195)(v294, v190, v193);
    static TLVTag.blobDefinition.getter();
    v197 = v292;
    TLV.firstChild(tag:)();
    v185(v187, v177);
    if (v192(v197, 1, v193) == 1)
    {
      (*(v308 + 8))(v196, v193);
      sub_10000BD44(v197, &unk_10039E210, &unk_1002C65B0);
      v177 = v319;
      v185 = v317;
      goto LABEL_100;
    }

    (v303)(v289, v197, v193);
    v201 = TLV.dataRepresentation.getter();
    *(&v325 + 1) = &type metadata for Data;
    *&v324 = v201;
    *(&v324 + 1) = v202;
    swift_beginAccess();
    sub_10002CFD4(&v324, 0x6568706943787274, 0xED0000626F6C4272);
    swift_endAccess();
    sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
    v203 = swift_initStackObject();
    *(v203 + 16) = xmmword_1002C1660;
    *(v203 + 32) = 25;
    static TLVTag.cipheredData.getter();
    v204 = v288;
    TLV.firstChild(tag:)();
    v177 = v319;
    v317(v187, v319);
    if (v192(v204, 1, v193) == 1)
    {
      sub_10000BD44(v204, &unk_10039E210, &unk_1002C65B0);
      *(v203 + 40) = 0u;
      *(v203 + 56) = 0u;
      v205 = v308;
LABEL_99:
      v214 = sub_10018399C(v203);
      swift_setDeallocating();
      v215 = sub_10000BD44(v203 + 32, &qword_10039EC60, &qword_1002C1F80);
      v216 = *(v314 + 56);
      __chkstk_darwin(v215);
      *(&v287 - 2) = v214;
      os_unfair_lock_lock((v216 + 32));
      v217 = v315;
      sub_100117CD8((v216 + 16));
      v315 = v217;
      os_unfair_lock_unlock((v216 + 32));

      v218 = *(v205 + 8);
      v193 = v304;
      v218(v289, v304);
      v218(v294, v193);
      v187 = v300;
      v185 = v317;
LABEL_100:
      *&v324 = v310;
      static TLVTag.keyBlob.getter();
      v219 = v295;
      Collection<>.first(tag:)();
      v185(v187, v177);

      v220 = v309;
      if (v309(v219, 1, v193) == 1)
      {
        sub_100009548(v311, v312);
        sub_10000BD44(v219, &unk_10039E210, &unk_1002C65B0);
        v221 = v321;
      }

      else
      {
        v222 = v185;
        v223 = v290;
        v314 = *(v308 + 32);
        (v314)(v290, v219, v193);
        static TLVTag.blobDefinition.getter();
        v224 = v291;
        v225 = v220;
        TLV.firstChild(tag:)();
        v226 = v224;
        v222(v187, v177);
        if (v225(v224, 1, v193) == 1)
        {
          (*(v308 + 8))(v223, v193);
          sub_100009548(v311, v312);
          sub_10000BD44(v224, &unk_10039E210, &unk_1002C65B0);
          v221 = v321;
        }

        else
        {
          v227 = v287;
          (v314)(v287, v226, v193);
          v228 = TLV.dataRepresentation.getter();
          *(&v325 + 1) = &type metadata for Data;
          *&v324 = v228;
          *(&v324 + 1) = v229;
          v221 = v321;
          swift_beginAccess();
          sub_10002CFD4(&v324, 0x6C4279654B787274, 0xEA0000000000626FLL);
          swift_endAccess();
          sub_100009548(v311, v312);
          v230 = *(v308 + 8);
          v230(v227, v193);
          v230(v223, v193);
        }

        v177 = v319;
      }

      v231 = v307;
      static TLVTag.analyticsData.getter();
      v232 = v315;
      v233 = sub_10012253C(v231, 0, 0);
      if (v232)
      {
        v317(v231, v177);
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v235 = type metadata accessor for Logger();
        sub_10000403C(v235, qword_1003A3A90);
        swift_errorRetain();
        v236 = Logger.logObject.getter();
        v237 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v236, v237))
        {
          v238 = swift_slowAlloc();
          v239 = swift_slowAlloc();
          *&v324 = v239;
          *v238 = 136315138;
          v323 = v232;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v240 = String.init<A>(describing:)();
          v242 = sub_100008F6C(v240, v241, &v324);

          *(v238 + 4) = v242;
          _os_log_impl(&_mh_execute_header, v236, v237, "failed to get pay applet analytics data: %s", v238, 0xCu);
          sub_10000959C(v239);
        }

        else
        {
        }
      }

      else
      {
        v243 = v231;
        v244 = v233;
        v245 = v234;
        v317(v243, v177);
        sub_100137318();
        sub_100009548(v244, v245);
      }

      if (qword_10039D3F0 != -1)
      {
        swift_once();
      }

      v246 = sub_100123E34(0, qword_1003A6AF0, *algn_1003A6AF8, &unk_10039E250, NFSecureElementReaderSession_ptr, sub_1000A0770);
      *(&v325 + 1) = &type metadata for Data;
      *&v324 = v246;
      *(&v324 + 1) = v247;
      v248 = v246;
      v249 = v247;
      swift_beginAccess();
      sub_1000094F4(v248, v249);
      sub_10002CFD4(&v324, 0xD00000000000001CLL, 0x800000010034A2F0);
      swift_endAccess();
      sub_100009548(v248, v249);
      v250 = [*(*sub_10000BE18((v221 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureElement) *(v221 + OBJC:"ecdsaCertificate" IVAR:? :? :? :? TtC14softposreaderd13ReadOperation:?secureElement + 24)) + 24)];
      if (v250)
      {
        v251 = v250;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v252 = Data.init(hexString:)();
        if (v253 >> 60 == 15)
        {
          v252 = 0;
          v253 = 0;
          v254 = 0;
          *&v325 = 0;
        }

        else
        {
          v254 = &type metadata for Data;
        }

        *&v324 = v252;
        *(&v324 + 1) = v253;
        *(&v325 + 1) = v254;
        swift_beginAccess();
        sub_10002CFD4(&v324, 0xD000000000000010, 0x800000010034A340);
        swift_endAccess();
        v255 = sub_100124DB4();
        v257 = v256;
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v258 = type metadata accessor for Logger();
        sub_10000403C(v258, qword_1003A3A90);
        sub_1000094F4(v255, v257);
        v259 = Logger.logObject.getter();
        v260 = static os_log_type_t.default.getter();
        sub_100009548(v255, v257);
        if (os_log_type_enabled(v259, v260))
        {
          v261 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          *&v324 = v262;
          *v261 = 136446210;
          v263 = Data.hexString()();
          v264 = sub_100008F6C(v263._countAndFlagsBits, v263._object, &v324);

          *(v261 + 4) = v264;
          v221 = v321;
          _os_log_impl(&_mh_execute_header, v259, v260, "KEK Hashes: %{public}s", v261, 0xCu);
          sub_10000959C(v262);
        }

        v265 = v299;
        v266 = v297;
        v267 = v317;
        sub_1000094F4(v255, v257);
        TLV.init(dataRepresentation:)();
        v268 = v308;
        v269 = v304;
        (*(v308 + 56))(v266, 0, 1, v304);
        (*(v268 + 32))(v265, v266, v269);
        v270 = v300;
        static TLVTag.transactionKEKHash.getter();
        TLV.firstChild(tag:)();
        v271 = v298;
        v322 = v318 + 8;
        v267(v270, v319);
        v272 = *(v268 + 48);
        v273 = v272(v271, 1, v269);
        v317 = v267;
        if (v273 == 1)
        {
          sub_10000BD44(v271, &unk_10039E210, &unk_1002C65B0);
          v324 = 0u;
          v325 = 0u;
        }

        else
        {
          v274 = TLV.hexStringValue.getter();
          *(&v325 + 1) = &type metadata for String;
          *&v324 = v274;
          *(&v324 + 1) = v275;
          (*(v268 + 8))(v271, v269);
        }

        v276 = v269;
        swift_beginAccess();
        sub_10002CFD4(&v324, 0x61486B654B787274, 0xEA00000000006873);
        swift_endAccess();
        v277 = v300;
        static TLVTag.pinKEKHash.getter();
        v278 = v293;
        v279 = v299;
        TLV.firstChild(tag:)();
        v317(v277, v319);
        if (v272(v278, 1, v276) == 1)
        {
          (*(v308 + 8))(v279, v276);
          sub_100009548(v255, v257);
          sub_10000BD44(v278, &unk_10039E210, &unk_1002C65B0);
        }

        else
        {
          v280 = TLV.hexStringValue.getter();
          v282 = v281;
          v283 = *(v308 + 8);
          v283(v278, v276);
          *(&v325 + 1) = &type metadata for String;
          *&v324 = v280;
          *(&v324 + 1) = v282;
          swift_beginAccess();
          sub_10002CFD4(&v324, 0x61486B654B6E6970, 0xEA00000000006873);
          *(&v325 + 1) = &type metadata for Bool;
          LOBYTE(v324) = 1;
          sub_10002CFD4(&v324, 0x7075536E69507369, 0xEE00646574726F70);
          swift_endAccess();
          sub_100009548(v255, v257);
          v283(v299, v276);
        }

        if (v320 == 7)
        {
          v284 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
          *&v324 = *(v221 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
          type metadata accessor for ReadError(0);
          sub_100138C60(&qword_10039DA08, type metadata accessor for ReadError);
          _BridgedStoredNSError.code.getter();
          if (v323 == 4998)
          {
            v285 = sub_1000207FC(4999, 0, 0, 0);
            v286 = *(v221 + v284);
            *(v221 + v284) = v285;
          }
        }

        return;
      }

LABEL_138:
      __break(1u);
      return;
    }

    v206 = TLV.dataRepresentation.getter();
    v208 = v207;
    (*(v308 + 8))(v204, v193);
    v209 = v208;
    v210 = v208 >> 62;
    if ((v208 >> 62) > 1)
    {
      if (v210 == 2)
      {
        v213 = *(v206 + 16);
        v212 = *(v206 + 24);
        sub_100009548(v206, v209);
        v211 = v212 - v213;
        v205 = v308;
        if (__OFSUB__(v212, v213))
        {
          __break(1u);
          goto LABEL_94;
        }
      }

      else
      {
        sub_100009548(v206, v208);
        v211 = 0;
LABEL_97:
        v205 = v308;
      }

LABEL_98:
      *(v203 + 64) = &type metadata for Int;
      *(v203 + 40) = v211;
      goto LABEL_99;
    }

    if (!v210)
    {
      sub_100009548(v206, v208);
      v211 = BYTE6(v208);
      goto LABEL_97;
    }

LABEL_94:
    sub_100009548(v206, v209);
    LODWORD(v211) = HIDWORD(v206) - v206;
    v205 = v308;
    if (!__OFSUB__(HIDWORD(v206), v206))
    {
      v211 = v211;
      goto LABEL_98;
    }

LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v198 = Logger.logObject.getter();
  v199 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v198, v199))
  {
    v200 = swift_slowAlloc();
    *v200 = 0;
    _os_log_impl(&_mh_execute_header, v198, v199, "switchInterfaceIndication and no fallbackTransactionStarted yet: proceed with fallbackTransaction", v200, 2u);
  }

  sub_100009548(v54, v93);
  *(v321 + v145) = 1;
}

void sub_100136B9C()
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - v13;
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  if (*(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted) == 1 && *(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount) == 1)
  {
    v45 = v2;
    v51 = v0;
    v17 = *(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    sub_10011BBA0(&off_10037EED8);
    sub_10011B164(&off_10037EEB0);
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for OSSignposter();
    v19 = sub_10000403C(v18, qword_1003A3AA8);
    v20 = *(v51 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
    OSSignposter.logHandle.getter();
    swift_unknownObjectRetain();
    OSSignpostID.init(log:object:)();
    v48 = v7[2];
    v49 = v7 + 2;
    v48(v14, v16, v6);
    v21 = type metadata accessor for OSSignpostIntervalState();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v47 = v21;
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v46 = v19;
    v24 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v44 = static os_signpost_type_t.end.getter();
    v25 = OS_os_log.signpostsEnabled.getter();
    v50 = v7;
    if (v25)
    {
      v43 = v24;

      checkForErrorAndConsumeState(state:)();

      v26 = v45;
      if ((*(v45 + 11))(v5, v1) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v27 = 0;
        v28 = 0;
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v26 + 1))(v5, v1);
        v45 = "%s";
        v28 = 2;
        v27 = 1;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52[0] = v31;
      *v30 = v28;
      *(v30 + 1) = v27;
      *(v30 + 2) = 2080;
      *(v30 + 4) = sub_100008F6C(0xD000000000000028, 0x800000010034F1A0, v52);
      v32 = OSSignpostID.rawValue.getter();
      v33 = v43;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v32, "reader-postProcessing", v45, v30, 0xCu);
      sub_10000959C(v31);

      v29 = v50[1];
      v29(v11, v6);
    }

    else
    {

      v29 = v7[1];
      v29(v11, v6);
    }

    v34 = OSSignposter.logHandle.getter();
    v35 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100008F6C(0xD000000000000026, 0x800000010034F170, v52);
      v38 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v38, "reader-between_payment_reads", "%s", v36, 0xCu);
      sub_10000959C(v37);
    }

    v48(v14, v16, v6);
    v39 = *(v47 + 48);
    v40 = *(v47 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();

    v29(v16, v6);
    v41 = v51;
    v42 = (v51 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker);
    swift_beginAccess();
    *v42 = 0;
    *(v41 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent) = 0;
    sub_10012A4DC(1);
  }

  else
  {

    sub_100127CE8(1);
  }
}

uint64_t sub_1001371B0(uint64_t result)
{
  v2 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent;
  if ((*(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent) & 1) == 0 && result == 16)
  {
    v3 = v1;
    v4 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
    sub_100100D88(9, 0);
    *(v3 + v2) = 1;
    v5 = *(*(v3 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 56);
    os_unfair_lock_lock(v5 + 8);
    sub_10011D358(&v5[4], 5);
    os_unfair_lock_unlock(v5 + 8);
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for OSSignposter();
    sub_10000403C(v6, qword_1003A3AA8);
    return sub_100186BE8("reader-payment_read_success", 27, 2, *(v3 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession), 0xD00000000000001CLL, 0x800000010034F150);
  }

  return result;
}

unint64_t sub_1001372CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_100137318()
{
  v1 = type metadata accessor for TLVTag();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v67 - v12;
  __chkstk_darwin(v11);
  v15 = v67 - v14;
  v16 = static TLV.decode(from:)();
  v77 = v0;
  v67[1] = 0;
  v73 = v10;
  v79 = v16;
  v78 = v16;
  static TLVTag.thirdPartyData.getter();
  v17 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
  v18 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0);
  v69 = v17;
  v76 = v18;
  Collection<>.first(tag:)();
  v19 = *(v2 + 8);
  v70 = v1;
  v75 = v19;
  v19(v5, v1);
  v20 = type metadata accessor for TLV();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v15, 1, v20);
  v74 = v2 + 8;
  v68 = v21;
  v72 = v5;
  v71 = v22;
  if (v23 == 1)
  {
    sub_10000BD44(v15, &unk_10039E210, &unk_1002C65B0);
    v79 = v78;
    static TLVTag.cardInterfaceCapabilities.getter();
    v24 = v76;
    Collection<>.first(tag:)();
    v25 = v70;
    v26 = v75;
    v75(v5, v70);
    v27 = v20;
    if (v22(v13, 1, v20) != 1)
    {
      v24 = TLV.hexStringValue.getter();
      v67[0] = v38;
      (*(v68 + 8))(v13, v20);
      if (qword_10039D628 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

    v28 = v26;
    sub_10000BD44(v13, &unk_10039E210, &unk_1002C65B0);
  }

  else
  {
    v29 = TLV.hexStringValue.getter();
    v31 = v30;
    (*(v21 + 8))(v15, v20);
    v32 = *(v77 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
    inited = swift_initStackObject();
    *(inited + 32) = 12;
    v34 = inited + 32;
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v29;
    *(inited + 48) = v31;
    v35 = sub_10018399C(inited);
    swift_setDeallocating();
    v36 = sub_10000BD44(v34, &qword_10039EC60, &qword_1002C1F80);
    v37 = *(v32 + 56);
    __chkstk_darwin(v36);
    v67[-2] = v35;
    os_unfair_lock_lock((v37 + 32));
    sub_100117CD8((v37 + 16));
    os_unfair_lock_unlock((v37 + 32));

    v25 = v70;
    v27 = v20;
    v24 = v76;
    v28 = v75;
  }

  while (1)
  {
    v79 = v78;
    v52 = v72;
    static TLVTag.interacCardTransactionInformation.getter();
    v53 = v73;
    Collection<>.first(tag:)();
    v28(v52, v25);
    v54 = v53;

    if (v71(v53, 1, v27) == 1)
    {
      sub_10000BD44(v53, &unk_10039E210, &unk_1002C65B0);
      goto LABEL_18;
    }

    v55 = TLV.value.getter();
    v57 = v56;
    (*(v68 + 8))(v54, v27);
    v58 = 0;
    v59 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      v60 = v77;
      if (v59 == 2)
      {
        v58 = *(v55 + 16);
      }
    }

    else
    {
      v60 = v77;
      if (v59)
      {
        v58 = v55;
      }
    }

    v61 = *(v60 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    if (!__OFADD__(v58, static TLVTag.OFFSET_BYTE_2.getter()))
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_6:
    v39 = v27;
    v40 = v25;
    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_1003A3A90);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "thirdPartyData absent, get formFactor from cardInterfaceCapabilities", v44, 2u);
    }

    v45 = *(v77 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
    v46 = swift_initStackObject();
    *(v46 + 32) = 12;
    v47 = v46 + 32;
    *(v46 + 16) = xmmword_1002C1660;
    *(v46 + 64) = &type metadata for String;
    v48 = v67[0];
    *(v46 + 40) = v24;
    *(v46 + 48) = v48;
    v49 = sub_10018399C(v46);
    swift_setDeallocating();
    v50 = sub_10000BD44(v47, &qword_10039EC60, &qword_1002C1F80);
    v51 = *(v45 + 56);
    __chkstk_darwin(v50);
    v67[-2] = v49;
    os_unfair_lock_lock((v51 + 32));
    sub_100029720((v51 + 16));
    os_unfair_lock_unlock((v51 + 32));

    v25 = v40;
    v27 = v39;
    v24 = v76;
    v28 = v75;
  }

  LOBYTE(v79) = Data._Representation.subscript.getter();
  sub_100031840();
  v62 = UnsignedInteger.readBit(_:)(0);
  sub_100009548(v55, v57);
  *(v61 + 133) = v62;
LABEL_18:
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_10000403C(v63, qword_1003A3A90);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "ReadOperation.processPayAppletAnalytics() ended", v66, 2u);
  }
}

void sub_100137C74()
{
  v1 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_bundleID);
  v14 = v13[1];
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = *v13;
  v16 = *sub_10000BE18((v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper), *(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper + 24));

  sub_100043268(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_10000BD44(v7, &unk_1003A3BE0, &qword_1002C36F0);
LABEL_4:
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_1003A3A90);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not calculate app usage time", v20, 2u);
    }

    return;
  }

  (*(v9 + 32))(v12, v7, v8);
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  (*(v9 + 16))(v5, v12, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  sub_100171FC8(v15, v14, v5);

  sub_10000BD44(v5, &unk_1003A3BE0, &qword_1002C36F0);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_100138020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StopWatch();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100138084()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001380C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1001380E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0A78, &qword_1002C4D70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v52 - v6;
  v54 = a1;
  v55 = a2;
  strcpy(v53, "\\d+\\.\\d+\\.\\d+");
  v53[7] = -4864;
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v51 = sub_10008AB88();
  v9 = StringProtocol.range<A>(of:options:range:locale:)();
  v11 = v10;
  sub_10000BD44(v7, &qword_1003A0A78, &qword_1002C4D70);
  if (v11)
  {
    return _swiftEmptyArrayStorage;
  }

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A3A90);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    v54 = v52[0];
    *v16 = 136446210;
    sub_1001372CC(v9, a1, a2);
    v17 = static String._fromSubstring(_:)();
    v19 = v18;

    v20 = sub_100008F6C(v17, v19, &v54);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "applet version: %{public}s", v16, 0xCu);
    sub_10000959C(v52[0]);
  }

  v21 = String.subscript.getter();
  v54 = 46;
  v55 = 0xE100000000000000;
  __chkstk_darwin(v21);
  v50 = &v54;
  v25 = sub_100187974(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000642B8, &v52[-4], v22, v23, v24, v52);
  v26 = *(v25 + 2);
  if (v26)
  {
    v27 = (v25 + 56);
    v12 = _swiftEmptyArrayStorage;
    do
    {
      v28 = *(v27 - 3);
      v29 = *(v27 - 2);
      if ((v29 ^ v28) < 0x4000)
      {
        v36 = 0;
      }

      else
      {
        v30 = *(v27 - 1);
        v31 = *v27;
        if ((*v27 & 0x1000000000000000) != 0)
        {
          v39 = *v27;
          v40 = *(v27 - 2);
          v41 = *(v27 - 3);
          v42 = *(v27 - 1);

          v43 = sub_1001882E8(v41, v40, v42, v39, 10);
          v35 = v44;

          v33 = v43;
        }

        else
        {
          if ((v31 & 0x2000000000000000) != 0)
          {
            v54 = *(v27 - 1);
            v55 = v31 & 0xFFFFFFFFFFFFFFLL;
            v32 = &v54;
          }

          else if ((v30 & 0x1000000000000000) != 0)
          {
            v32 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v45 = *(v27 - 3);
            v46 = *v27;
            v47 = *(v27 - 2);
            v48 = *(v27 - 1);
            v32 = _StringObject.sharedUTF8.getter();
            v30 = v48;
            v28 = v45;
            v29 = v47;
            v31 = v46;
          }

          v33 = sub_100188CF4(v32, v28, v29, v30, v31, 10);
          LOBYTE(v53[0]) = v34 & 1;
          v35 = v34 & 1;
        }

        if (v35)
        {
          v36 = 0;
        }

        else
        {
          v36 = v33;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_10004DA78(0, *(v12 + 2) + 1, 1, v12);
      }

      v38 = *(v12 + 2);
      v37 = *(v12 + 3);
      if (v38 >= v37 >> 1)
      {
        v12 = sub_10004DA78((v37 > 1), v38 + 1, 1, v12);
      }

      *(v12 + 2) = v38 + 1;
      *&v12[8 * v38 + 32] = v36;
      v27 += 4;
      --v26;
    }

    while (v26);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  return v12;
}

BOOL sub_1001385A8(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    return *(a1 + 32) > 2;
  }

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "applet version array bad length", v5, 2u);
  }

  return 0;
}

uint64_t sub_1001386A4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 16);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      sub_100004074(&qword_10039E2E0, &qword_1002C1720);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002C1680;
      *(v3 + 32) = 362;
      v4 = 1;
LABEL_10:
      *(v3 + 36) = v4;
LABEL_13:
      v5 = sub_10014B8C8(v3);

      return v5;
    }

    if (v1 == 3)
    {
      sub_100004074(&qword_10039E2E0, &qword_1002C1720);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002C1680;
      *(v3 + 32) = 362;
      *(v3 + 36) = 0;
      goto LABEL_13;
    }

LABEL_14:
    type metadata accessor for SPRReaderMode(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      sub_100004074(&qword_10039E2E0, &qword_1002C1720);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002C1680;
      *(v3 + 32) = 362;
      v4 = 2;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  return sub_10014B8C8(&off_10037EBE0);
}

void sub_10013883C(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_1000F5AC4(v11), (v3 & 1) != 0))
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v2, v12);
    sub_10001A124(v11);
    if (swift_dynamicCast())
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_10000403C(v4, qword_1003A3A90);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_10;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "(Reader Mode) didEnd polling A";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);

LABEL_10:

        return;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000403C(v10, qword_1003A3A90);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_10;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "(Reader Mode) didEnd polling B";
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_10001A124(v11);
  }
}

void sub_100138AC8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_100131058(v1);
}

uint64_t sub_100138AF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100138B48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10012C6D8(v1);
}

uint64_t sub_100138B70()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100138BA8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10012BB08(v1);
}

uint64_t sub_100138C10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100138C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100138D38()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3C90);
  sub_10000403C(v0, qword_1003A3C90);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_100138D94()
{
  v1 = v0;
  *(v0 + 32) = 0;
  v2 = [objc_opt_self() sharedHardwareManager];
  v3 = [v2 getHwSupport];

  if (v3 != 2)
  {
    if (qword_10039D638 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A3C90);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "hw not supported at the moment. hw might recover later.", v18, 2u);
    }

    sub_1001394AC();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  v35 = 0;
  v4 = [objc_opt_self() embeddedSecureElementWithError:&v35];
  v5 = v35;
  if (!v4)
  {
    v20 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10039D638 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000403C(v21, qword_1003A3C90);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not get Secure Element, error from embeddedSecureElementWithError(): %@", v24, 0xCu);
      sub_100041D90(v25);
    }

    sub_1001394AC();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();

    goto LABEL_28;
  }

  *(v1 + 16) = v4;
  v6 = v4;
  v7 = v5;
  v8 = [v6 serialNumber];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = [*(v1 + 16) info];
  if (!v9)
  {
    if (qword_10039D638 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000403C(v29, qword_1003A3C90);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Could not get hardware Secure Element info.", v32, 2u);
    }

LABEL_26:
    sub_1001394AC();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    goto LABEL_27;
  }

  v10 = v9;
  v11 = [v9 platformIdentifier];
  if (!v11 || (v11, (v12 = [v10 ecdsaCertificate]) == 0) || (v12, (v13 = objc_msgSend(v10, "sequenceCounter")) == 0) || (v13, (v14 = objc_msgSend(v10, "expectedSequenceCounter")) == 0))
  {
    sub_1001394AC();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();

LABEL_27:
LABEL_28:
    type metadata accessor for SecureElement();
    swift_deallocPartialClassInstance();
    return v1;
  }

  *(v1 + 24) = v10;
  return v1;
}

id sub_1001392D0()
{
  v1 = *(v0 + 24);
  result = [v1 sequenceCounter];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = [result unsignedShortValue];

  result = [v1 expectedSequenceCounter];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result unsignedShortValue];

  if (qword_10039D638 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A3C90);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 33554944;
    *(v10 + 4) = v4;
    *(v10 + 6) = 512;
    *(v10 + 8) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "Current sequence counter: %hu, expected: %hu", v10, 0xAu);
  }

  return (v4 >= v6);
}

uint64_t sub_10013943C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1001394AC()
{
  result = qword_1003A3DD0;
  if (!qword_1003A3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3DD0);
  }

  return result;
}

unint64_t sub_100139514()
{
  result = qword_1003A3DD8;
  if (!qword_1003A3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3DD8);
  }

  return result;
}

uint64_t sub_100139568@<X0>(double **a1@<X8>)
{
  swift_beginAccess();
  sub_10013A12C(v1 + 304, &v4);
  if (v5)
  {
    return sub_100029790(&v4, a1);
  }

  sub_10013A19C(&v4);
  sub_100139720((v1 + 216), a1);
  sub_10000CCE4(a1, &v4);
  swift_beginAccess();
  sub_10013A204(&v4, v1 + 304);
  return swift_endAccess();
}

uint64_t sub_100139628@<X0>(double **a1@<X8>)
{
  swift_beginAccess();
  sub_10013A12C(v1 + 344, &v6);
  if (v7)
  {
    return sub_100029790(&v6, a1);
  }

  sub_10013A19C(&v6);
  v4 = type metadata accessor for NullAuditor();
  inited = swift_initStaticObject();
  v7 = v4;
  v8 = &off_100382E88;
  *&v6 = inited;
  sub_100139720(&v6, a1);
  sub_10000959C(&v6);
  sub_10000CCE4(a1, &v6);
  swift_beginAccess();
  sub_10013A204(&v6, v1 + 344);
  return swift_endAccess();
}

uint64_t sub_100139720@<X0>(void *a1@<X2>, double **a2@<X8>)
{
  v3 = v2;
  v91 = a2;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000BE18(a1, v4);
  sub_1000C24D0(1, v4, v5);
  sub_10000CCE4((v3 + 2), v118);
  sub_10000CCE4((v3 + 7), v116);
  sub_10000CCE4((v3 + 12), v114);
  v6 = *sub_10000BE18(v3 + 17, *(v3 + 20));
  sub_10013B458(v112);
  sub_10000CCE4((v3 + 22), v110);
  v7 = v3[32];
  sub_10000CCE4((v3 + 33), v108);
  v8 = v119;
  v9 = sub_100022438(v118, v119);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v92[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v117;
  v15 = sub_100022438(v116, v117);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v92[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = v115;
  v21 = sub_100022438(v114, v115);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v92[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = v113;
  v27 = sub_100022438(v112, v113);
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v92[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = v111;
  v33 = sub_100022438(v110, v111);
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (&v92[-1] - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = v109;
  v39 = sub_100022438(v108, v109);
  v40 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (&v92[-1] - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v12;
  v45 = *v18;
  v46 = *v24;
  v47 = *v30;
  v48 = *v36;
  v49 = *v42;
  v50 = type metadata accessor for DefaultTimeTokenManager();
  v107[3] = v50;
  v107[4] = &off_100384FB0;
  v107[0] = v44;
  v105 = type metadata accessor for DefaultSecureTimeKeeper();
  v106 = &off_100384E70;
  v104[0] = v45;
  v102 = type metadata accessor for SecureElement();
  v103 = &off_1003849A0;
  v101[0] = v46;
  v99 = type metadata accessor for DefaultSecureChannelCrypto();
  v100 = &off_100384C48;
  v98[0] = v47;
  v96 = type metadata accessor for DefaultSecureChannelHTTP();
  v97 = &off_100384C58;
  v95[0] = v48;
  v93 = type metadata accessor for LaunchFeedbackFramework();
  v94 = &off_1003823C0;
  v92[0] = v49;
  v51 = type metadata accessor for SecureChannel();
  v52 = swift_allocObject();
  v53 = sub_100022438(v107, v50);
  v54 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v53);
  v56 = (&v92[-1] - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = v105;
  v59 = sub_100022438(v104, v105);
  v60 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v59);
  v62 = (&v92[-1] - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v102;
  v65 = sub_100022438(v101, v102);
  v66 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v65);
  v68 = (&v92[-1] - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = v99;
  v71 = sub_100022438(v98, v99);
  v72 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v71);
  v74 = (&v92[-1] - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74);
  v76 = v96;
  v77 = sub_100022438(v95, v96);
  v78 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v77);
  v80 = (&v92[-1] - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80);
  v82 = v93;
  v83 = sub_100022438(v92, v93);
  v84 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v83);
  v86 = (&v92[-1] - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v87 + 16))(v86);
  v88 = sub_10013A274(*v56, *v62, *v68, *v74, *v80, *v86, v52, v7);
  sub_10000959C(v92);
  sub_10000959C(v95);
  sub_10000959C(v98);
  sub_10000959C(v101);
  sub_10000959C(v104);
  sub_10000959C(v107);
  sub_10000959C(v108);
  sub_10000959C(v110);
  sub_10000959C(v112);
  sub_10000959C(v114);
  sub_10000959C(v116);
  result = sub_10000959C(v118);
  v90 = v91;
  v91[3] = v51;
  v90[4] = &off_100384B58;
  *v90 = v88;
  return result;
}

uint64_t sub_10013A090()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  sub_10000959C(v0 + 12);
  sub_10000959C(v0 + 17);
  sub_10000959C(v0 + 22);
  sub_10000959C(v0 + 27);
  sub_10000959C(v0 + 33);
  sub_10013A19C((v0 + 38));
  sub_10013A19C((v0 + 43));

  return swift_deallocClassInstance();
}

uint64_t sub_10013A12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A3F20, &qword_1002C8508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013A19C(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A3F20, &qword_1002C8508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10013A204(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A3F20, &qword_1002C8508);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double *sub_10013A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, double a8)
{
  v16 = *a7;
  v77 = type metadata accessor for DefaultTimeTokenManager();
  v78 = &off_100384FB0;
  *&v76 = a1;
  v74 = type metadata accessor for DefaultSecureTimeKeeper();
  v75 = &off_100384E70;
  *&v73 = a2;
  v71 = type metadata accessor for SecureElement();
  v72 = &off_1003849A0;
  *&v70 = a3;
  v68 = type metadata accessor for DefaultSecureChannelCrypto();
  v69 = &off_100384C48;
  *&v67 = a4;
  v65 = type metadata accessor for DefaultSecureChannelHTTP();
  v66 = &off_100384C58;
  *&v64 = a5;
  v62 = type metadata accessor for LaunchFeedbackFramework();
  v63 = &off_1003823C0;
  *&v61 = a6;
  if (qword_10039D640 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000403C(v17, qword_1003A4008);
  sub_10000CCE4(&v76, v59);
  sub_10000CCE4(&v73, v57);
  sub_10000CCE4(&v70, v55);
  sub_10000CCE4(&v67, v53);
  sub_10000CCE4(&v64, v51);
  sub_10000CCE4(&v61, v49);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v20 = 136315394;
    nullsub_1(*&v16);
    v21 = _typeName(_:qualified:)();
    v23 = sub_100008F6C(v21, v22, &v48);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1002C7740;
    v25 = v60;
    v26 = sub_10000BE18(v59, v60);
    *(v24 + 56) = v25;
    v27 = sub_10000BE5C((v24 + 32));
    (*(*(v25 - 8) + 16))(v27, v26, v25);
    v28 = v58;
    v29 = sub_10000BE18(v57, v58);
    *(v24 + 88) = v28;
    v30 = sub_10000BE5C((v24 + 64));
    (*(*(v28 - 8) + 16))(v30, v29, v28);
    v31 = v56;
    v32 = sub_10000BE18(v55, v56);
    *(v24 + 120) = v31;
    v33 = sub_10000BE5C((v24 + 96));
    (*(*(v31 - 8) + 16))(v33, v32, v31);
    v34 = v54;
    v35 = sub_10000BE18(v53, v54);
    *(v24 + 152) = v34;
    v36 = sub_10000BE5C((v24 + 128));
    (*(*(v34 - 8) + 16))(v36, v35, v34);
    v37 = v52;
    v38 = sub_10000BE18(v51, v52);
    *(v24 + 184) = v37;
    v39 = sub_10000BE5C((v24 + 160));
    (*(*(v37 - 8) + 16))(v39, v38, v37);
    *(v24 + 216) = &type metadata for Double;
    *(v24 + 192) = a8;
    v40 = v50;
    v41 = sub_10000BE18(v49, v50);
    *(v24 + 248) = v40;
    v42 = sub_10000BE5C((v24 + 224));
    (*(*(v40 - 8) + 16))(v42, v41, v40);
    v43 = showFunction(signature:_:)(0xD00000000000006ALL, 0x800000010034F7A0, v24);
    v45 = v44;

    sub_10000959C(v59);
    sub_10000959C(v57);
    sub_10000959C(v55);
    sub_10000959C(v53);
    sub_10000959C(v51);
    sub_10000959C(v49);
    v46 = sub_100008F6C(v43, v45, &v48);

    *(v20 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v59);
    sub_10000959C(v57);
    sub_10000959C(v55);
    sub_10000959C(v53);
    sub_10000959C(v51);
    sub_10000959C(v49);
  }

  sub_100029790(&v76, (a7 + 2));
  sub_100029790(&v73, (a7 + 7));
  sub_100029790(&v70, (a7 + 12));
  sub_100029790(&v67, (a7 + 17));
  sub_100029790(&v64, (a7 + 22));
  a7[27] = a8;
  sub_100029790(&v61, (a7 + 28));
  return a7;
}

uint64_t sub_10013A834(uint64_t a1)
{
  sub_1000EA3F4(v143);
  if (v1)
  {
  }

  else
  {
    sub_1000E4518(v141);
    sub_1000E5844(v139);
    sub_1000EE7EC(v137);
    sub_1000EEE50(v135);
    sub_1000E6B70(v132);
    v5 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v6 = *(v5 + *(type metadata accessor for Settings() + 84));
    sub_1000EAA58(v130);
    v7 = v144;
    v8 = sub_100022438(v143, v144);
    v107 = v89;
    v9 = *(*(v7 - 8) + 64);
    __chkstk_darwin(v8);
    v101 = (v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))();
    v12 = v142;
    v13 = sub_100022438(v141, v142);
    v106 = v89;
    v14 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v13);
    v16 = (v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = v140;
    v19 = sub_100022438(v139, v140);
    v105 = v89;
    v20 = *(*(v18 - 8) + 64);
    __chkstk_darwin(v19);
    v22 = (v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = v138;
    v25 = sub_100022438(v137, v138);
    v104 = v89;
    v26 = *(*(v24 - 8) + 64);
    __chkstk_darwin(v25);
    v28 = (v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = v136;
    v31 = sub_100022438(v135, v136);
    v103 = v89;
    v32 = *(*(v30 - 8) + 64);
    __chkstk_darwin(v31);
    v34 = (v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = v131;
    v37 = sub_100022438(v130, v131);
    v102 = v89;
    v38 = *(*(v36 - 8) + 64);
    __chkstk_darwin(v37);
    v40 = (v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40);
    v42 = *v101;
    v43 = *v16;
    v44 = *v22;
    v45 = *v28;
    v46 = *v34;
    v101 = *v40;
    v47 = type metadata accessor for DefaultTimeTokenManager();
    v129[4] = &off_100384FB0;
    v129[3] = v47;
    v129[0] = v42;
    v99 = type metadata accessor for DefaultSecureTimeKeeper();
    v128 = &off_100384E70;
    v127 = v99;
    v126[0] = v43;
    v98 = type metadata accessor for SecureElement();
    v125 = &off_1003849A0;
    v124 = v98;
    v123[0] = v44;
    v96 = type metadata accessor for SecureChannelCryptoFactory();
    v121 = v96;
    v122 = &off_100384AB8;
    v120[0] = v45;
    v95 = type metadata accessor for DefaultSecureChannelHTTP();
    v118 = v95;
    v119 = &off_100384C58;
    v117[0] = v46;
    v94 = type metadata accessor for LaunchFeedbackFramework();
    v115 = v94;
    v116 = &off_1003823C0;
    v114[0] = v101;
    type metadata accessor for SecureChannelFactory();
    v2 = swift_allocObject();
    v48 = sub_100022438(v129, v47);
    v101 = v89;
    v91 = v47;
    v49 = *(*(v47 - 8) + 64);
    __chkstk_darwin(v48);
    v90 = (v89 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))();
    v52 = v127;
    v53 = sub_100022438(v126, v127);
    v100 = v89;
    v54 = *(*(v52 - 8) + 64);
    __chkstk_darwin(v53);
    v89[0] = v89 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))();
    v57 = v124;
    v58 = sub_100022438(v123, v124);
    v97 = v89;
    v59 = *(*(v57 - 8) + 64);
    __chkstk_darwin(v58);
    v61 = (v89 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v62 + 16))(v61);
    v63 = v121;
    v64 = sub_100022438(v120, v121);
    v93 = v89;
    v65 = *(*(v63 - 8) + 64);
    __chkstk_darwin(v64);
    v67 = (v89 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = v118;
    v70 = sub_100022438(v117, v118);
    v92 = v89;
    v71 = *(*(v69 - 8) + 64);
    __chkstk_darwin(v70);
    v73 = (v89 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v74 + 16))(v73);
    v75 = v115;
    v76 = sub_100022438(v114, v115);
    v89[1] = v89;
    v77 = *(*(v75 - 8) + 64);
    __chkstk_darwin(v76);
    v79 = (v89 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))(v79);
    v81 = *v90;
    v82 = *v89[0];
    v83 = *v61;
    v84 = *v67;
    v85 = *v73;
    v86 = *v79;
    v113[3] = v91;
    v113[4] = &off_100384FB0;
    v113[0] = v81;
    v112[4] = &off_100384E70;
    v112[3] = v99;
    v112[0] = v82;
    v111[3] = v98;
    v111[4] = &off_1003849A0;
    v111[0] = v83;
    v110[3] = v96;
    v110[4] = &off_100384AB8;
    v110[0] = v84;
    v109[3] = v95;
    v109[4] = &off_100384C58;
    v109[0] = v85;
    v108[3] = v94;
    v108[4] = &off_1003823C0;
    v108[0] = v86;
    *(v2 + 304) = 0u;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 352) = 0u;
    *(v2 + 368) = 0u;
    sub_10000CCE4(v113, v2 + 16);
    sub_10000CCE4(v112, v2 + 56);
    sub_10000CCE4(v111, v2 + 96);
    sub_10000CCE4(v110, v2 + 136);
    sub_10000CCE4(v109, v2 + 176);
    sub_10000CCE4(v108, v2 + 264);
    v87 = v133;
    v88 = v134;
    sub_10000BE18(v132, v133);
    sub_1000C289C(5u, v87, v88);

    sub_10000959C(v108);
    sub_10000959C(v109);
    sub_10000959C(v110);
    sub_10000959C(v111);
    sub_10000959C(v112);
    sub_10000959C(v113);
    *(v2 + 256) = v6;
    sub_10000959C(v132);
    sub_10000959C(v114);
    sub_10000959C(v117);
    sub_10000959C(v120);
    sub_10000959C(v123);
    sub_10000959C(v126);
    sub_10000959C(v129);
    sub_10000959C(v130);
    sub_10000959C(v135);
    sub_10000959C(v137);
    sub_10000959C(v139);
    sub_10000959C(v141);
    sub_10000959C(v143);
  }

  return v2;
}

uint64_t sub_10013B458@<X0>(uint64_t **a1@<X8>)
{
  v2 = v1;
  v4 = *(*sub_10000BE18((v1 + 96), *(v1 + 120)) + 296);
  os_unfair_lock_lock((v4 + 24));
  sub_1000B4F6C((v4 + 16), v24);
  os_unfair_lock_unlock((v4 + 24));
  v5 = v24[0];
  v6 = v24[1];
  sub_10000CCE4(v2 + 16, v24);
  sub_10000CCE4(v2 + 56, v22);
  v7 = v25;
  v8 = sub_100022438(v24, v25);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = v23;
  v14 = sub_100022438(v22, v23);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_10013BA6C(v5, v6, *v11, *v17);
  sub_10000959C(v22);
  sub_10000959C(v24);
  result = type metadata accessor for DefaultSecureChannelCrypto();
  a1[3] = result;
  a1[4] = &off_100384C48;
  *a1 = v19;
  return result;
}

uint64_t sub_10013B66C()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  sub_10000959C(v0 + 12);
  sub_10000959C(v0 + 17);

  return swift_deallocClassInstance();
}

uint64_t *sub_10013B6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v39 = type metadata accessor for DefaultSecureTimeKeeper();
  v40 = &off_100384E70;
  *&v38 = a3;
  v36 = type metadata accessor for SecureElement();
  v37 = &off_1003849A0;
  *&v35 = a4;
  if (qword_10039D648 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A4110);
  sub_10000CCE4(&v38, v33);
  sub_10000CCE4(&v35, v31);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136315394;
    nullsub_1(v10);
    v15 = _typeName(_:qualified:)();
    v17 = sub_100008F6C(v15, v16, &v30);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1002C1790;
    *(v18 + 56) = swift_getObjectType();
    *(v18 + 32) = a1;
    v19 = v34;
    v20 = sub_10000BE18(v33, v34);
    *(v18 + 88) = v19;
    v21 = sub_10000BE5C((v18 + 64));
    (*(*(v19 - 8) + 16))(v21, v20, v19);
    v22 = v32;
    v23 = sub_10000BE18(v31, v32);
    *(v18 + 120) = v22;
    v24 = sub_10000BE5C((v18 + 96));
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    swift_unknownObjectRetain();
    v25 = showFunction(signature:_:)(0xD00000000000002CLL, 0x800000010034F860, v18);
    v27 = v26;

    sub_10000959C(v33);
    sub_10000959C(v31);
    v28 = sub_100008F6C(v25, v27, &v30);

    *(v14 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v33);
    sub_10000959C(v31);
  }

  a5[2] = a1;
  a5[3] = a2;
  sub_100029790(&v38, (a5 + 4));
  sub_100029790(&v35, (a5 + 9));
  return a5;
}

uint64_t *sub_10013BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DefaultSecureTimeKeeper();
  v26[3] = v8;
  v26[4] = &off_100384E70;
  v26[0] = a3;
  v24 = type metadata accessor for SecureElement();
  v25 = &off_1003849A0;
  v23[0] = a4;
  type metadata accessor for DefaultSecureChannelCrypto();
  v9 = swift_allocObject();
  v10 = sub_100022438(v26, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v24;
  v16 = sub_100022438(v23, v24);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_10013B6E0(a1, a2, *v13, *v19, v9);
  sub_10000959C(v23);
  sub_10000959C(v26);
  return v21;
}

uint64_t sub_10013BC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for DefaultSecureTimeKeeper();
  v45[3] = v8;
  v45[4] = &off_100384E70;
  v45[0] = a1;
  v9 = type metadata accessor for SecureElement();
  v43 = v9;
  v44 = &off_1003849A0;
  v42[0] = a2;
  v10 = type metadata accessor for SignerFactory();
  v40 = v10;
  v41 = &off_100385348;
  v39[0] = a3;
  type metadata accessor for SecureChannelCryptoFactory();
  v11 = swift_allocObject();
  v12 = sub_100022438(v45, v8);
  v13 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v36[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v43;
  v18 = sub_100022438(v42, v43);
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v36[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v40;
  v24 = sub_100022438(v39, v40);
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v36[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v15;
  v30 = *v21;
  v31 = *v27;
  v38[3] = v8;
  v38[4] = &off_100384E70;
  v38[0] = v29;
  v37[4] = &off_1003849A0;
  v37[3] = v9;
  v37[0] = v30;
  v36[4] = &off_100385348;
  v36[3] = v10;
  v36[0] = v31;
  sub_10000CCE4(v38, v11 + 16);
  sub_10000CCE4(v37, v11 + 56);
  sub_10000CCE4(v36, v11 + 96);
  v32 = a4[3];
  v33 = a4[4];
  sub_10000BE18(a4, v32);
  sub_1000C289C(5u, v32, v33);
  sub_10000959C(v36);
  sub_10000959C(v37);
  sub_10000959C(v38);
  sub_10000959C(a4);
  sub_10000959C(v39);
  sub_10000959C(v42);
  sub_10000959C(v45);
  return v11;
}

uint64_t sub_10013BFB4()
{
  sub_1000E4518(v26);
  if (v0)
  {
  }

  else
  {
    sub_1000E5844(v24);
    sub_1000E9D90(v22);
    sub_1000E6B70(v21);
    v3 = v27;
    v4 = sub_100022438(v26, v27);
    v5 = *(*(v3 - 8) + 64);
    __chkstk_darwin(v4);
    v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = v25;
    v10 = sub_100022438(v24, v25);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = v23;
    v16 = sub_100022438(v22, v23);
    v17 = *(*(v15 - 8) + 64);
    __chkstk_darwin(v16);
    v19 = (v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v1 = sub_10013BC58(*v7, *v13, *v19, v21);

    sub_10000959C(v22);
    sub_10000959C(v24);
    sub_10000959C(v26);
  }

  return v1;
}

uint64_t sub_10013C2A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v18[-v13];
  static DispatchTime.now()();
  (*(a4 + 8))(a3, a4);
  + infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v12, v7);
  v16 = (*(a4 + 24))(a1, v19 & 1, v14, a3, a4);
  v15(v14, v7);
  return v16;
}

uint64_t HTTPContentType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037EF00, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t HTTPContentType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10013C4C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "reader-payment_read_success";
  }

  else
  {
    v5 = "application/json";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = "application/json";
  }

  else
  {
    v8 = "reader-payment_read_success";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_10013C570()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013C5F0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10013C65C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013C6D8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10037EF00, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10013C738(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "application/json";
  }

  else
  {
    v3 = "reader-payment_read_success";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t SecureChannelProtocol.securingRequest(_:contentType:force:)(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v18 = a2;
  v19 = a1;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v17[-v13];
  static DispatchTime.now()();
  (*(a5 + 8))(a4, a5);
  + infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v12, v7);
  (*(a5 + 16))(v19, v18 & 1, v14, v20, a4, a5);
  return (v15)(v14, v7);
}

unint64_t sub_10013C910()
{
  result = qword_1003A4000;
  if (!qword_1003A4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4000);
  }

  return result;
}

uint64_t sub_10013C974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100065074(a3, v27 - v11, &qword_10039F738, &qword_1002C2AB8);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BD44(v12, &qword_10039F738, &qword_1002C2AB8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000BD44(a3, &qword_10039F738, &qword_1002C2AB8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BD44(a3, &qword_10039F738, &qword_1002C2AB8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10013CC74()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4008);
  sub_10000403C(v0, qword_1003A4008);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_10013CCD0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v158 = a4;
  v164 = a3;
  v156 = a2;
  v155 = a5;
  v6 = type metadata accessor for DateInterval();
  v150 = *(v6 - 8);
  v151 = v6;
  v7 = *(v150 + 64);
  v8 = __chkstk_darwin(v6);
  v148 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v149 = &v140 - v10;
  v11 = type metadata accessor for Date();
  v153 = *(v11 - 8);
  v154 = v11;
  v12 = *(v153 + 64);
  v13 = __chkstk_darwin(v11);
  v152 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v162 = (&v140 - v15);
  v16 = type metadata accessor for DispatchTime();
  v17 = *(v16 - 8);
  v166 = v16;
  v167 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for URLRequest();
  v165 = *(v21 - 8);
  v22 = *(v165 + 64);
  __chkstk_darwin(v21);
  *&v168 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v140 - v26;
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v140 - v34;
  v163 = a1;
  URLRequest.url.getter();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10000BD44(v27, &qword_1003A03D0, &unk_1002C3D50);
    sub_100020EB0(5005, 0xD000000000000019, 0x800000010034F940, 0);
    return swift_willThrow();
  }

  v157 = v20;
  (*(v29 + 32))(v35, v27, v28);
  if (qword_10039D640 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_10000403C(v37, qword_1003A4008);
  v145 = v35;
  v146 = v29;
  v39 = v29 + 16;
  (*(v29 + 16))(v33, v35, v28);
  v40 = v165;
  (*(v165 + 16))(v168, v163, v21);
  v42 = v166;
  v41 = v167;
  v43 = *(v167 + 16);
  v144 = v21;
  v44 = v157;
  v43(v157, v164, v166);
  v160 = v38;
  v45 = Logger.logObject.getter();
  v142 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v45, v142);
  v47 = (v39 - 8);
  v147 = v28;
  if (!v46)
  {
    (*(v41 + 8))(v44, v42);

    (*(v40 + 8))(v168, v144);
    v143 = *v47;
    v143(v33, v28);
    v70 = v161;
    v60 = v159;
    v71 = v162;
    if ((v158 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_13:
    v72 = 0xD00000000000001ALL;
    v73 = 0x800000010034F9F0;
LABEL_18:
    sub_100020EB0(5007, v72, v73, 0);
    swift_willThrow();
    goto LABEL_19;
  }

  v141 = v45;
  v48 = v144;
  v49 = swift_slowAlloc();
  v140 = swift_slowAlloc();
  v169[0] = v140;
  *v49 = 136315906;
  sub_100140654(&qword_1003A3C40, &type metadata accessor for URL);
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  v51 = v47;
  v53 = v52;
  v143 = *v51;
  v143(v33, v28);
  v54 = sub_100008F6C(v50, v53, v169);

  *(v49 + 4) = v54;
  *(v49 + 12) = 2080;
  v55 = v168;
  v56 = URLRequest.allHTTPHeaderFields.getter();
  if (!v56)
  {
    v56 = sub_100183EFC(_swiftEmptyArrayStorage);
  }

  v57 = v159;
  v58 = v167;
  v59 = sub_100144720(v56);
  v60 = v57;

  v61 = *(v59 + 16);

  if (v61)
  {
    *&v171 = 0x203A726564616568;
    *(&v171 + 1) = 0xE800000000000000;
    v62 = URLRequest.allHTTPHeaderFields.getter();
    if (!v62)
    {
      v62 = sub_100183EFC(_swiftEmptyArrayStorage);
    }

    sub_100144720(v62);

    v63 = Dictionary.description.getter();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = 8236;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    v68 = *(&v171 + 1);
    v69 = v171;
    v58 = v167;
    v55 = v168;
  }

  else
  {
    v69 = 0;
    v68 = 0xE000000000000000;
  }

  (*(v165 + 8))(v55, v48);
  v74 = sub_100008F6C(v69, v68, v169);

  *(v49 + 14) = v74;
  *(v49 + 22) = 2048;
  v75 = v157;
  v76 = DispatchTime.rawValue.getter();
  (*(v58 + 8))(v75, v166);
  *(v49 + 24) = v76;
  *(v49 + 32) = 1024;
  LOBYTE(v76) = v158;
  *(v49 + 34) = v158 & 1;
  v77 = v141;
  _os_log_impl(&_mh_execute_header, v141, v142, "SecureChannel.securingRequest(url: %s, %sdeadline: %llu, force: %{BOOL}d\n)", v49, 0x26u);
  swift_arrayDestroy();

  v70 = v161;
  v71 = v162;
  if (v76)
  {
    goto LABEL_13;
  }

LABEL_16:
  v78 = *sub_10000BE18(v70 + 7, v70[10]);
  sub_1001451FC(v192);
  memcpy(v194, v192, sizeof(v194));
  if (sub_100031A30(v194) == 1)
  {
    v73 = 0x800000010034F960;
    v72 = 0xD000000000000018;
    goto LABEL_18;
  }

  memcpy(v195, v194, 0x110uLL);
  v116 = *sub_10000BE18(v70 + 7, v70[10]);
  sub_10004CF70(v195, v71);
  if (v60)
  {
    sub_10000BD44(v192, &qword_10039F268, &qword_1002C2730);
  }

  else
  {
    v120 = v149;
    sub_100175270(v149);
    v121 = v120;
    DateInterval.duration.getter();
    v123 = v122;
    v124 = v151;
    v125 = *(v150 + 8);
    v125(v121, v151);
    if (v123 + -300.0 >= 0.0)
    {
      *&v168 = v125;
      sub_100175270(v121);
      DateInterval.start.getter();
      v126 = v124;
      v127 = v168;
      (v168)(v121, v126);
      v128 = v148;
      DateInterval.init(start:duration:)();
      if (DateInterval.contains(_:)())
      {
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&_mh_execute_header, v129, v130, "Not refreshing time token", v131, 2u);
          v71 = v162;
        }

        v127(v148, v151);
        (*(v153 + 8))(v71, v154);
        v84 = v195;
        goto LABEL_22;
      }

      v132 = sub_10000BE18(v70 + 28, v70[31]);
      v133 = sub_100020EB0(5009, 0, 0, 0);
      sub_10013ECC4(v133, *v132);

      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(67);
      v134._countAndFlagsBits = 0xD000000000000038;
      v134._object = 0x800000010034F9B0;
      String.append(_:)(v134);
      sub_100140654(&qword_1003A4108, &type metadata accessor for DateInterval);
      v135._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v135);

      v136._countAndFlagsBits = 0x203A776F6E202CLL;
      v136._object = 0xE700000000000000;
      String.append(_:)(v136);
      sub_100140654(&qword_10039F3E8, &type metadata accessor for Date);
      v137 = v128;
      v138 = v154;
      v139._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v139);

      sub_100020EB0(5007, v171, *(&v171 + 1), 0);
      swift_willThrow();
      sub_10000BD44(v192, &qword_10039F268, &qword_1002C2730);
      v127(v137, v151);
      (*(v153 + 8))(v71, v138);
    }

    else
    {
      sub_100020EB0(5007, 0xD000000000000028, 0x800000010034F980, 0);
      swift_willThrow();
      sub_10000BD44(v192, &qword_10039F268, &qword_1002C2730);
      (*(v153 + 8))(v71, v154);
    }
  }

LABEL_19:
  swift_errorRetain();
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138412290;
    swift_errorRetain();
    v83 = _swift_stdlib_bridgeErrorToNSError();
    *(v81 + 4) = v83;
    *v82 = v83;
    _os_log_impl(&_mh_execute_header, v79, v80, "Refreshing time token: %@", v81, 0xCu);
    sub_10000BD44(v82, &unk_10039E220, &qword_1002C3D60);
  }

  sub_10000BE18(v70 + 2, v70[5]);
  type metadata accessor for DefaultTimeTokenManager();
  sub_10014AFB0(v193);

  v84 = v193;
LABEL_22:
  v86 = *(v84 + 32);
  v85 = *(v84 + 33);
  v87 = *(v84 + 10);
  v88 = *(v84 + 11);
  v89 = *(v84 + 12);
  v90 = *(v84 + 2);
  v91 = *(v84 + 3);
  v92 = *v84;
  v170 = v84[120] & 1;
  v171 = v92;
  v172 = v90;
  v173 = v91;
  v94 = *(v84 + 3);
  v93 = *(v84 + 4);
  v174 = *(v84 + 2);
  v175 = v94;
  v176 = v93;
  v177 = v87;
  v178 = v88;
  v179 = v89;
  v168 = *(v84 + 104);
  v180 = v168;
  v181 = v170;
  v95 = *(v84 + 9);
  v182 = *(v84 + 8);
  v183 = v95;
  v96 = *(v84 + 11);
  v184 = *(v84 + 10);
  v185 = v96;
  v97 = *(v84 + 13);
  v186 = *(v84 + 12);
  v187 = v97;
  v98 = *(v84 + 15);
  v188 = *(v84 + 14);
  v189 = v98;
  v190 = v86;
  v191 = v85;
  sub_100034958(&v171, v169);
  sub_100034958(&v171, v169);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v167 = v85;
    v102 = v101;
    v165 = swift_slowAlloc();
    v169[0] = v165;
    *v102 = 134218754;
    *(v102 + 4) = v89;
    *(v102 + 12) = 2080;
    v162 = v99;
    v103 = v152;
    Date.init(timeIntervalSince1970:)();
    v159 = sub_100140654(&qword_10039F3E8, &type metadata accessor for Date);
    LODWORD(v161) = v100;
    v104 = v154;
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v166 = v86;
    v106 = v70;
    v108 = v107;
    v160 = 0;
    v109 = *(v153 + 8);
    v109(v103, v104);
    v110 = sub_100008F6C(v105, v108, v169);
    v70 = v106;

    *(v102 + 14) = v110;
    *(v102 + 22) = 2048;
    sub_10008C3EC(&v171);
    *(v102 + 24) = v168;
    sub_10008C3EC(&v171);
    *(v102 + 32) = 2080;
    Date.init(timeIntervalSince1970:)();
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = v112;
    v109(v103, v104);
    v114 = v111;
    v86 = v166;
    v115 = sub_100008F6C(v114, v113, v169);

    *(v102 + 34) = v115;
    v99 = v162;
    _os_log_impl(&_mh_execute_header, v162, v161, "Using Time Token with:\n    iat: %llu -> %s\n    exp: %llu -> %s", v102, 0x2Au);
    swift_arrayDestroy();

    v85 = v167;
  }

  else
  {
    sub_10008C3EC(&v171);
    sub_10008C3EC(&v171);
  }

  v118 = v146;
  v117 = v147;
  v119 = *sub_10000BE18(v70 + 17, v70[20]);
  sub_100140AB0(v163, v156 & 1, v86, v85, v164);
  (*(v118 + 8))(v145, v117);

  return sub_10008C3EC(&v171);
}

uint64_t sub_10013DF50(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v36 = a2;
  v35 = a1;
  v8 = *v3;
  v34 = type metadata accessor for URLRequest();
  v9 = *(v34 - 8);
  v10 = v9[8];
  __chkstk_darwin(v34);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D640 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A4008);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v31) = v15;
    v17 = v16;
    v32 = swift_slowAlloc();
    v39 = v32;
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, &v39);
    v33 = v9;
    v21 = a3;
    v22 = v20;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = showFunction(signature:_:)(0xD000000000000025, 0x800000010034F910, _swiftEmptyArrayStorage);
    v25 = sub_100008F6C(v23, v24, &v39);
    a3 = v21;
    v9 = v33;

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, BYTE4(v31), "%s.%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v33 = v9 + 1;
  v26 = 6;
  while (1)
  {
    sub_10013CCD0(v35, v36 & 1, a3, 0, v12);
    if (!v5)
    {
      v27 = *sub_10000BE18(v6 + 22, v6[25]);
      v29 = sub_100142910(v12, a3);
      (*v33)(v12, v34);
      return v29;
    }

    type metadata accessor for Code(0);
    v39 = 401;
    swift_errorRetain();
    sub_100140654(&qword_10039DF38, type metadata accessor for Code);
    v28 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v28 & 1) == 0)
    {
      break;
    }

    sub_10000BE18(v6 + 2, v6[5]);
    type metadata accessor for DefaultTimeTokenManager();
    sub_10014AFB0(v38);
    v5 = 0;
    sub_10008C3EC(v38);
    if (!--v26)
    {
      type metadata accessor for SPRHTTPError(0);
      v37 = 401;
      sub_100140524(_swiftEmptyArrayStorage);
      sub_100140654(&qword_10039DF50, type metadata accessor for SPRHTTPError);
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }
  }

  return swift_willThrow();
}

id sub_10013E3D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a3;
  v9 = *v4;
  v10 = type metadata accessor for DispatchTime();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v51 - v15;
  v16 = type metadata accessor for URLRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v59 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  if (qword_10039D640 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000403C(v23, qword_1003A4008);
  (*(v17 + 16))(v22, a1, v16);
  v24 = v17;
  v25 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v25, v57);
  v61 = a1;
  v58 = v24;
  if (v26)
  {
    v53 = v14;
    v54 = v16;
    v55 = a4;
    v27 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v65[0] = v52;
    *v27 = 136315394;
    v28 = _typeName(_:qualified:)();
    v30 = sub_100008F6C(v28, v29, v65);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002C1790;
    v32 = URLRequest.allHTTPHeaderFields.getter();
    if (!v32)
    {
      v32 = sub_100183EFC(_swiftEmptyArrayStorage);
    }

    v33 = sub_100144720(v32);

    *(v31 + 56) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v31 + 32) = v33;
    v34 = a2 & 1;
    *(v31 + 64) = a2 & 1;
    *(v31 + 120) = &type metadata for String;
    *(v31 + 88) = &type metadata for HTTPContentType;
    *(v31 + 96) = 0x3E6B636F6C623CLL;
    *(v31 + 104) = 0xE700000000000000;
    v35 = showFunction(signature:_:)(0xD000000000000030, 0x800000010034F8D0, v31);
    v37 = v36;

    v38 = v22;
    v39 = v54;
    v56 = *(v58 + 8);
    v56(v38, v54);
    v40 = sub_100008F6C(v35, v37, v65);

    *(v27 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v25, v57, "%s.%s", v27, 0x16u);
    swift_arrayDestroy();

    v41 = v39;
    a4 = v55;
    v14 = v53;
  }

  else
  {

    v56 = *(v24 + 8);
    v56(v22, v16);
    v34 = a2 & 1;
    v41 = v16;
  }

  static DispatchTime.now()();
  v42 = v5[27];
  v43 = v60;
  + infix(_:_:)();
  v44 = *(v62 + 8);
  v45 = v14;
  v46 = v63;
  v44(v45, v63);
  v47 = v59;
  sub_10013CCD0(v61, v34, v43, 0, v59);
  v44(v43, v46);
  v48 = *sub_10000BE18(v5 + 22, v5[25]);
  v49 = sub_100143314(v47, v64, a4);
  v56(v47, v41);
  return v49;
}

uint64_t sub_10013E954()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  sub_10000959C(v0 + 12);
  sub_10000959C(v0 + 17);
  sub_10000959C(v0 + 22);
  sub_10000959C(v0 + 28);

  return swift_deallocClassInstance();
}

uint64_t sub_10013EA5C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10013EB54;

  return v7(a1);
}

uint64_t sub_10013EB54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10013EC4C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000F6058(a1, a2, v6);
}

uint64_t sub_10013ECC4(void *a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for SecureChannelError(0);
  v50[3] = v5;
  v50[4] = &off_100382410;
  v45[1] = v5;
  v50[0] = a1;
  v6 = qword_10039D4C8;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A1270);
  sub_10000CCE4(v50, &v48);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *&v46 = swift_slowAlloc();
    *v11 = 136315394;
    nullsub_1(v4);
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, &v46);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    v16 = v49;
    v17 = sub_10000BE18(&v48, v49);
    *(v15 + 56) = v16;
    v18 = sub_10000BE5C((v15 + 32));
    (*(*(v16 - 1) + 16))(v18, v17, v16);
    v19 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034FA10, v15);
    v21 = v20;

    sub_10000959C(&v48);
    v22 = sub_100008F6C(v19, v21, &v46);

    *(v11 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(&v48);
  }

  v23 = a2[7];
  v24 = a2[8];
  v25 = objc_allocWithZone(type metadata accessor for FBKSForm());

  v26 = FBKSForm.init(identifier:)();
  v27 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  sub_10000BE18(a2 + 2, a2[5]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944();
  if (v49)
  {
    if (swift_dynamicCast() & 1) != 0 && (v46)
    {
      if (sub_1000A5C44())
      {
        if (&class metadata base offset for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &type metadata accessor for FBKSFeedbackCount && &nominal type descriptor for FBKSFeedbackCount && &type metadata for FBKSFeedbackCount && &class metadata base offset for FBKSForm && &protocol conformance descriptor for FBKSForm && &protocol conformance descriptor for FBKSForm && &type metadata accessor for FBKSForm && &nominal type descriptor for FBKSForm && &type metadata for FBKSForm && &class metadata base offset for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &type metadata accessor for FBKSLaunchConfiguration && &nominal type descriptor for FBKSLaunchConfiguration && &type metadata for FBKSLaunchConfiguration && &class metadata base offset for FBKSDraftLauncher && &type metadata accessor for FBKSDraftLauncher && &nominal type descriptor for FBKSDraftLauncher && &type metadata for FBKSDraftLauncher)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
          v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v29 - 8);
          v32 = v45 - v31;
          v33 = type metadata accessor for TaskPriority();
          (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
          sub_10000CCE4(v50, &v48);
          v34 = swift_allocObject();
          v34[2] = 0;
          v34[3] = 0;
          sub_100029790(&v48, (v34 + 4));
          v34[9] = v26;
          v34[10] = v27;
          v34[11] = a2;
          v26 = v26;
          v27 = v27;

          sub_10013C974(0, 0, v32, &unk_1002C86F0, v34);

          objc_autoreleasePoolPop(v28);
        }

LABEL_46:

        return sub_10000959C(v50);
      }

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Not reporting FeedbackFrameworkError: error not to be reported", v42, 2u);
      }

      v38 = a2[9];
      if (!v38)
      {
        goto LABEL_46;
      }

      v43 = a2[10];
      sub_10000BE18(a2 + 2, a2[5]);

      sub_10017A944();
      if (!v47)
      {
        v49 = &type metadata for Bool;
        LOBYTE(v48) = 0;
        goto LABEL_40;
      }

      goto LABEL_38;
    }
  }

  else
  {
    sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Not reporting FeedbackFrameworkError: diagnostic mode not on", v37, 2u);
  }

  v38 = a2[9];
  if (!v38)
  {
    goto LABEL_46;
  }

  v39 = a2[10];
  sub_10000BE18(a2 + 2, a2[5]);

  sub_10017A944();
  if (!v47)
  {
    v49 = &type metadata for Bool;
    LOBYTE(v48) = 0;
    goto LABEL_40;
  }

LABEL_38:
  sub_100019D3C(&v46, &v48);
LABEL_40:
  v38(v26, v27, &v48);

  sub_1000048A0(v38);
  sub_10000959C(&v48);
  return sub_10000959C(v50);
}

uint64_t sub_10013F4E4(void *a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for ConfigurationError(0);
  v50[3] = v5;
  v50[4] = &off_1003823D0;
  v45[1] = v5;
  v50[0] = a1;
  v6 = qword_10039D4C8;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A1270);
  sub_10000CCE4(v50, &v48);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *&v46 = swift_slowAlloc();
    *v11 = 136315394;
    nullsub_1(v4);
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, &v46);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    v16 = v49;
    v17 = sub_10000BE18(&v48, v49);
    *(v15 + 56) = v16;
    v18 = sub_10000BE5C((v15 + 32));
    (*(*(v16 - 1) + 16))(v18, v17, v16);
    v19 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034FA10, v15);
    v21 = v20;

    sub_10000959C(&v48);
    v22 = sub_100008F6C(v19, v21, &v46);

    *(v11 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(&v48);
  }

  v23 = a2[7];
  v24 = a2[8];
  v25 = objc_allocWithZone(type metadata accessor for FBKSForm());

  v26 = FBKSForm.init(identifier:)();
  v27 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  sub_10000BE18(a2 + 2, a2[5]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944();
  if (v49)
  {
    if (swift_dynamicCast() & 1) != 0 && (v46)
    {
      if (sub_1000A5748())
      {
        if (&class metadata base offset for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &type metadata accessor for FBKSFeedbackCount && &nominal type descriptor for FBKSFeedbackCount && &type metadata for FBKSFeedbackCount && &class metadata base offset for FBKSForm && &protocol conformance descriptor for FBKSForm && &protocol conformance descriptor for FBKSForm && &type metadata accessor for FBKSForm && &nominal type descriptor for FBKSForm && &type metadata for FBKSForm && &class metadata base offset for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &type metadata accessor for FBKSLaunchConfiguration && &nominal type descriptor for FBKSLaunchConfiguration && &type metadata for FBKSLaunchConfiguration && &class metadata base offset for FBKSDraftLauncher && &type metadata accessor for FBKSDraftLauncher && &nominal type descriptor for FBKSDraftLauncher && &type metadata for FBKSDraftLauncher)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
          v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v29 - 8);
          v32 = v45 - v31;
          v33 = type metadata accessor for TaskPriority();
          (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
          sub_10000CCE4(v50, &v48);
          v34 = swift_allocObject();
          v34[2] = 0;
          v34[3] = 0;
          sub_100029790(&v48, (v34 + 4));
          v34[9] = v26;
          v34[10] = v27;
          v34[11] = a2;
          v26 = v26;
          v27 = v27;

          sub_10013C974(0, 0, v32, &unk_1002C8718, v34);

          objc_autoreleasePoolPop(v28);
        }

LABEL_46:

        return sub_10000959C(v50);
      }

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Not reporting FeedbackFrameworkError: error not to be reported", v42, 2u);
      }

      v38 = a2[9];
      if (!v38)
      {
        goto LABEL_46;
      }

      v43 = a2[10];
      sub_10000BE18(a2 + 2, a2[5]);

      sub_10017A944();
      if (!v47)
      {
        v49 = &type metadata for Bool;
        LOBYTE(v48) = 0;
        goto LABEL_40;
      }

      goto LABEL_38;
    }
  }

  else
  {
    sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Not reporting FeedbackFrameworkError: diagnostic mode not on", v37, 2u);
  }

  v38 = a2[9];
  if (!v38)
  {
    goto LABEL_46;
  }

  v39 = a2[10];
  sub_10000BE18(a2 + 2, a2[5]);

  sub_10017A944();
  if (!v47)
  {
    v49 = &type metadata for Bool;
    LOBYTE(v48) = 0;
    goto LABEL_40;
  }

LABEL_38:
  sub_100019D3C(&v46, &v48);
LABEL_40:
  v38(v26, v27, &v48);

  sub_1000048A0(v38);
  sub_10000959C(&v48);
  return sub_10000959C(v50);
}

uint64_t sub_10013FD04(void *a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for ReadError(0);
  v50[3] = v5;
  v50[4] = &off_1003823F0;
  v45[1] = v5;
  v50[0] = a1;
  v6 = qword_10039D4C8;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A1270);
  sub_10000CCE4(v50, &v48);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *&v46 = swift_slowAlloc();
    *v11 = 136315394;
    nullsub_1(v4);
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, &v46);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    v16 = v49;
    v17 = sub_10000BE18(&v48, v49);
    *(v15 + 56) = v16;
    v18 = sub_10000BE5C((v15 + 32));
    (*(*(v16 - 1) + 16))(v18, v17, v16);
    v19 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034FA10, v15);
    v21 = v20;

    sub_10000959C(&v48);
    v22 = sub_100008F6C(v19, v21, &v46);

    *(v11 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(&v48);
  }

  v23 = a2[7];
  v24 = a2[8];
  v25 = objc_allocWithZone(type metadata accessor for FBKSForm());

  v26 = FBKSForm.init(identifier:)();
  v27 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  sub_10000BE18(a2 + 2, a2[5]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944();
  if (v49)
  {
    if (swift_dynamicCast() & 1) != 0 && (v46)
    {
      if (sub_1000A59E0())
      {
        if (&class metadata base offset for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &protocol conformance descriptor for FBKSFeedbackCount && &type metadata accessor for FBKSFeedbackCount && &nominal type descriptor for FBKSFeedbackCount && &type metadata for FBKSFeedbackCount && &class metadata base offset for FBKSForm && &protocol conformance descriptor for FBKSForm && &protocol conformance descriptor for FBKSForm && &type metadata accessor for FBKSForm && &nominal type descriptor for FBKSForm && &type metadata for FBKSForm && &class metadata base offset for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &protocol conformance descriptor for FBKSLaunchConfiguration && &type metadata accessor for FBKSLaunchConfiguration && &nominal type descriptor for FBKSLaunchConfiguration && &type metadata for FBKSLaunchConfiguration && &class metadata base offset for FBKSDraftLauncher && &type metadata accessor for FBKSDraftLauncher && &nominal type descriptor for FBKSDraftLauncher && &type metadata for FBKSDraftLauncher)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
          v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v29 - 8);
          v32 = v45 - v31;
          v33 = type metadata accessor for TaskPriority();
          (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
          sub_10000CCE4(v50, &v48);
          v34 = swift_allocObject();
          v34[2] = 0;
          v34[3] = 0;
          sub_100029790(&v48, (v34 + 4));
          v34[9] = v26;
          v34[10] = v27;
          v34[11] = a2;
          v26 = v26;
          v27 = v27;

          sub_10013C974(0, 0, v32, &unk_1002C8710, v34);

          objc_autoreleasePoolPop(v28);
        }

LABEL_46:

        return sub_10000959C(v50);
      }

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Not reporting FeedbackFrameworkError: error not to be reported", v42, 2u);
      }

      v38 = a2[9];
      if (!v38)
      {
        goto LABEL_46;
      }

      v43 = a2[10];
      sub_10000BE18(a2 + 2, a2[5]);

      sub_10017A944();
      if (!v47)
      {
        v49 = &type metadata for Bool;
        LOBYTE(v48) = 0;
        goto LABEL_40;
      }

      goto LABEL_38;
    }
  }

  else
  {
    sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Not reporting FeedbackFrameworkError: diagnostic mode not on", v37, 2u);
  }

  v38 = a2[9];
  if (!v38)
  {
    goto LABEL_46;
  }

  v39 = a2[10];
  sub_10000BE18(a2 + 2, a2[5]);

  sub_10017A944();
  if (!v47)
  {
    v49 = &type metadata for Bool;
    LOBYTE(v48) = 0;
    goto LABEL_40;
  }

LABEL_38:
  sub_100019D3C(&v46, &v48);
LABEL_40:
  v38(v26, v27, &v48);

  sub_1000048A0(v38);
  sub_10000959C(&v48);
  return sub_10000959C(v50);
}

unint64_t sub_100140524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004074(&qword_1003A0180, &unk_1002C3BC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100065074(v4, &v13, &qword_10039E4D0, &qword_1002C94A0);
      v5 = v13;
      v6 = v14;
      result = sub_10013EC4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100019D3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100140654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001406A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100037B84;

  return sub_1000A4034(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_100140774()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001407AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100037B84;

  return sub_10013EA5C(a1, v5);
}

uint64_t sub_100140864(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000375E8;

  return sub_10013EA5C(a1, v5);
}

uint64_t sub_10014091C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000959C((v0 + 32));

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100140974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000375E8;

  return sub_1000A4034(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_100140A54()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4110);
  sub_10000403C(v0, qword_1003A4110);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_1001425B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 4);
  sub_10000959C(v0 + 9);

  return swift_deallocClassInstance();
}

uint64_t sub_10014261C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100142664()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A41E8);
  sub_10000403C(v0, qword_1003A41E8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

void *sub_1001426C0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_10039D650 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A41E8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0x7365732874696E69, 0xEE00293A6E6F6973, &_swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v16);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v2[2] = a1;
  return v2;
}

uint64_t sub_1001428A4()
{
  [*(v0 + 16) finishTasksAndInvalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_100142910(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v5 = *v2;
  v6 = type metadata accessor for URLRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D650 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A41E8);
  v12 = *(v7 + 16);
  v42 = a1;
  v12(v10, a1, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v40 = v14;
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, aBlock);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1002C1660;
    v20 = URLRequest.allHTTPHeaderFields.getter();
    if (!v20)
    {
      v20 = sub_100183EFC(_swiftEmptyArrayStorage);
    }

    v21 = sub_100144720(v20);
    v38 = v3;

    *(v19 + 56) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v19 + 32) = v21;
    v22 = showFunction(signature:_:)(0xD000000000000013, 0x800000010034FC50, v19);
    v24 = v23;

    (*(v7 + 8))(v10, v6);
    v25 = sub_100008F6C(v22, v24, aBlock);

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v40, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = v26 + 16;
  *(v26 + 24) = 0;
  *(v26 + 32) = -1;
  v28 = dispatch_semaphore_create(0);
  v29 = *(v41 + 16);
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = v28;
  aBlock[4] = sub_100144E28;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014324C;
  aBlock[3] = &unk_100384D68;
  v32 = _Block_copy(aBlock);

  v33 = v28;

  v34 = [v29 dataTaskWithRequest:isa completionHandler:v32];
  _Block_release(v32);

  [v34 resume];
  OS_dispatch_semaphore.wait(timeout:)();
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0 || (swift_beginAccess(), v35 = *(v26 + 32), v35 == 255))
  {
    [v34 cancel];
    sub_100020EB0(5003, 0, 0, 0);
    swift_willThrow();
  }

  else
  {
    v27 = *(v26 + 16);
    v36 = *(v26 + 24);
    if (v35)
    {
      aBlock[7] = *(v26 + 16);
      sub_100144E30(v27, v36, v35);
      sub_100144E48(v27, v36, 1);
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      swift_willThrowTypedImpl();

      sub_100144E54(v27, v36, v35);
    }

    else
    {
      sub_1000094F4(*(v26 + 16), *(v26 + 24));
    }
  }

  return v27;
}

Swift::Int sub_100142EAC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URLError.Code();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    if (a3)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        sub_10001A3E8(a1, a2);
        v17 = a3;
        v18 = [v16 statusCode];
        if (SPRHTTPStatusIsSuccess())
        {
          if (qword_10039D650 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_10000403C(v19, qword_1003A41E8);
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v20, v21, "SecureChannel.httpData: Success. Received payload", v22, 2u);
          }

          swift_beginAccess();
          v23 = *(a5 + 16);
          v24 = *(a5 + 24);
          *(a5 + 16) = a1;
          *(a5 + 24) = a2;
          v25 = *(a5 + 32);
          *(a5 + 32) = 0;
          goto LABEL_21;
        }

        if (qword_10039D650 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000403C(v30, qword_1003A41E8);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v31, v32, "SecureChannel.httpData: Received HTTP error %ld", v33, 0xCu);
        }

        v29 = related decl 'e' for SPRHTTPErrorCode.init(_:serverCode:payload:)();
LABEL_20:
        swift_beginAccess();
        v23 = *(a5 + 16);
        v24 = *(a5 + 24);
        *(a5 + 16) = v29;
        *(a5 + 24) = 0;
        v25 = *(a5 + 32);
        *(a5 + 32) = 1;
LABEL_21:
        sub_100144E54(v23, v24, v25);
        return OS_dispatch_semaphore.signal()();
      }
    }
  }

  if (a4)
  {
    swift_errorRetain();
    static URLError.timedOut.getter();
    sub_100144D3C();
    v26 = static _ErrorCodeProtocol.~= infix(_:_:)();
    (*(v11 + 8))(v14, v10);
    if (v26)
    {
      v27 = 5003;
      v28 = 0;
    }

    else
    {
      v27 = 5005;
      v28 = a4;
    }

    v29 = sub_100020EB0(v27, 0, 0, v28);

    goto LABEL_20;
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10014324C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_10001A074(v6, v11);
}

id sub_100143314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for URLRequest();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D650 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A41E8);
  v15 = *(v10 + 16);
  v39 = a1;
  v15(v13, a1, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v36 = v3;
    v37 = a2;
    v18 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, aBlock);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1660;
    v23 = URLRequest.allHTTPHeaderFields.getter();
    v38 = a3;
    if (!v23)
    {
      v23 = sub_100183EFC(_swiftEmptyArrayStorage);
    }

    v24 = sub_100144720(v23);

    *(v22 + 56) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v22 + 32) = v24;
    v25 = showFunction(signature:_:)(0xD00000000000001ELL, 0x800000010034FC00, v22);
    v27 = v26;

    (*(v10 + 8))(v13, v9);
    v28 = sub_100008F6C(v25, v27, aBlock);

    *(v18 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();

    a2 = v37;
    a3 = v38;
    v4 = v36;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v29 = v4[2];
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  aBlock[4] = sub_1001446A0;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100143ED8;
  aBlock[3] = &unk_100384CF0;
  v32 = _Block_copy(aBlock);

  v33 = [v29 downloadTaskWithRequest:isa completionHandler:v32];
  _Block_release(v32);

  return v33;
}

uint64_t sub_100143740(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void *), uint64_t a5)
{
  v54 = a5;
  v55 = a4;
  v8 = type metadata accessor for URLError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v51[-v18];
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v51[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a1;
  v27 = v26;
  sub_1000BDC6C(v25, v19);
  if ((*(v21 + 48))(v19, 1, v27) == 1)
  {
    result = sub_1000E14B4(v19);
    if (!a3)
    {
      return result;
    }

    goto LABEL_13;
  }

  (*(v21 + 32))(v24, v19, v27);
  if (!a2 || (objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) == 0))
  {
    result = (*(v21 + 8))(v24, v27);
    if (!a3)
    {
      return result;
    }

LABEL_13:
    swift_errorRetain();
    static URLError.timedOut.getter();
    sub_100144D3C();
    v37 = static _ErrorCodeProtocol.~= infix(_:_:)();
    v38 = *(v9 + 8);
    v38(v12, v8);
    if (v37)
    {
      (*(v21 + 56))(v17, 1, 1, v27);
      v39 = 5003;
    }

    else
    {
      swift_errorRetain();
      static URLError.cancelled.getter();
      v40 = static _ErrorCodeProtocol.~= infix(_:_:)();

      v38(v12, v8);
      (*(v21 + 56))(v17, 1, 1, v27);
      if ((v40 & 1) == 0)
      {
        swift_errorRetain();
        v41 = sub_100020EB0(5005, 0, 0, a3);

        goto LABEL_19;
      }

      v39 = 5008;
    }

    v41 = sub_100020EB0(v39, 0, 0, 0);
LABEL_19:
    v55(v17, v41);

    return sub_1000E14B4(v17);
  }

  v30 = v29;
  v31 = a2;
  v32 = [v30 statusCode];
  if (SPRHTTPStatusIsSuccess())
  {
    if (qword_10039D650 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000403C(v33, qword_1003A41E8);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "SecureChannel.httpDownloadTask: Success. Received payload", v36, 2u);
    }

    (*(v21 + 16))(v17, v24, v27);
    (*(v21 + 56))(v17, 0, 1, v27);
    v55(v17, 0);

    sub_1000E14B4(v17);
    return (*(v21 + 8))(v24, v27);
  }

  else
  {
    v53 = v31;
    if (qword_10039D650 != -1)
    {
      swift_once();
    }

    v52 = v27;
    v42 = type metadata accessor for Logger();
    sub_10000403C(v42, qword_1003A41E8);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v43, v44, "SecureChannel.httpDownloadTask: Received HTTP error %ld", v45, 0xCu);
    }

    v46 = Data.init(contentsOf:options:)();
    v48 = v47;
    v49 = v52;
    (*(v21 + 56))(v17, 1, 1, v52);
    sub_10001A3E8(v46, v48);
    v50 = related decl 'e' for SPRHTTPErrorCode.init(_:serverCode:payload:)();
    v55(v17, v50);

    sub_10001A074(v46, v48);
    sub_1000E14B4(v17);
    return (*(v21 + 8))(v24, v49);
  }
}

uint64_t sub_100143ED8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_1000E14B4(v11);
}

uint64_t sub_10014403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D650 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000403C(v17, qword_1003A41E8);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v51 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v49 = a3;
    v22 = v21;
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v22 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = sub_100008F6C(v23, v24, aBlock);
    v48 = a2;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v46 = "NSURLResponse16@NSError24";
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1002C1660;
    swift_getErrorValue();
    v28 = v16;
    v29 = v12;
    v31 = v52;
    v30 = v53;
    *(v27 + 56) = v53;
    v32 = sub_10000BE5C((v27 + 32));
    (*(*(v30 - 8) + 16))(v32, v31, v30);
    v33 = showFunction(signature:_:)(0xD000000000000022, v46 | 0x8000000000000000, v27);
    v35 = v34;

    v36 = v33;
    v12 = v29;
    v16 = v28;
    v37 = sub_100008F6C(v36, v35, aBlock);
    a2 = v48;

    *(v22 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v22, 0x16u);
    swift_arrayDestroy();

    a3 = v49;
  }

  URL.init(string:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v39 = v12;
    baseURL = v50->_baseURL;
    URL._bridgeToObjectiveC()(v50);
    v42 = v41;
    v43 = swift_allocObject();
    v43[2] = a2;
    v43[3] = a3;
    v43[4] = v51;
    aBlock[4] = sub_100144644;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100143ED8;
    aBlock[3] = &unk_100384CA0;
    v44 = _Block_copy(aBlock);
    swift_errorRetain();

    v45 = [(NSURL *)baseURL downloadTaskWithURL:v42 completionHandler:v44];
    _Block_release(v44);

    (*(v13 + 8))(v16, v39);
    return v45;
  }

  return result;
}

uint64_t sub_10014452C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  a4(v11, a6);
  return sub_1000E14B4(v11);
}

uint64_t sub_100144604()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100144650(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100144668()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1001446A8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100144880(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100144720(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100144880(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1001446A8(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100144880(uint64_t result, uint64_t a2, uint64_t a3)
{
  v27 = result;
  v28 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v29 = v9 | (v3 << 6);
    v12 = (*(a3 + 48) + 16 * v29);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(a3 + 56) + 16 * v29 + 8);
    v16 = qword_10039D490;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1003A6B80;
    if (*(qword_1003A6B80 + 16) && (v18 = *(qword_1003A6B80 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v19 = Hasher._finalize()(), v20 = -1 << *(v17 + 32), v21 = v19 & ~v20, ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(v17 + 48) + 16 * v21);
        v24 = *v23 == v13 && v23[1] == v14;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v7 = v31;
    }

    else
    {
LABEL_24:

      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v25 = __OFADD__(v28++, 1);
      v7 = v31;
      if (v25)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_100144AE4(v27, a2, v28, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100144AE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100004074(&qword_1003A0FD8, &qword_1002C4F60);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100144D3C()
{
  result = qword_1003A42D0;
  if (!qword_1003A42D0)
  {
    type metadata accessor for URLError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A42D0);
  }

  return result;
}

uint64_t sub_100144D94()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_100144DDC(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100144DDC(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100009548(a1, a2);
  }
}

uint64_t sub_100144DE8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100144E30(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100144E48(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100144E48(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_1000094F4(a1, a2);
  }
}

uint64_t sub_100144E54(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100144DDC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100144E7C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A42D8);
  sub_10000403C(v0, qword_1003A42D8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

unint64_t sub_100144EEC()
{
  result = qword_1003A42F0;
  if (!qword_1003A42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A42F0);
  }

  return result;
}

id sub_100144F74()
{
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v0 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v0 + 104) > 0 || *(v0 + 112) == 1)
  {
    result = [*(v0 + 88) wait];
  }

  v2 = *(v0 + 96);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v0 + 96) = v4;
  [*(v0 + 88) unlock];
  v5 = *(v0 + 52);
  v6 = *(v0 + 56);
  result = [*(v0 + 88) lock];
  v7 = *(v0 + 96);
  v3 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v3)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(v0 + 96) = v8;
  if (!v8)
  {
    [*(v0 + 88) broadcast];
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  [*(v0 + 88) unlock];
  return v9;
}

uint64_t sub_100145090()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A43C8);
  sub_10000403C(v0, qword_1003A43C8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_1001450EC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6DD0 = v5;
    *algn_1003A6DD8 = v7;
  }

  return result;
}

void *sub_1001451FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  if (qword_10039D660 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A43C8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, v31);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0x54656D6954746567, 0xEE0029286E656B6FLL, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, v31);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v2[5];
  v16 = v2[6];
  sub_10000BE18(v2 + 2, v15);
  if (qword_10039D668 != -1)
  {
    swift_once();
  }

  v17 = (*(v16 + 32))(qword_1003A6DD0, *algn_1003A6DD8, v15, v16);
  v19 = v18;
  type metadata accessor for JSONDecoder();
  sub_10009A814(_swiftEmptyArrayStorage);
  sub_100146398();
  static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
  sub_100009548(v17, v19);

  v21 = v31[0];
  v22 = v31[1];
  v23 = v31[2];
  v24 = v2[10];
  v25 = v2[11];
  sub_10000BE18(v2 + 7, v24);
  if (v23 == (*(v25 + 32))(v24, v25))
  {
    sub_100176DD8(v21, v22, v31);
    memcpy(v29, v31, 0x110uLL);
    nullsub_1(v29);
    memcpy(__src, v29, sizeof(__src));
  }

  else
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "RTC was reset since token issuance", v28, 2u);
    }

    sub_100031B14(__src);
  }

  return memcpy(a1, __src, 0x110uLL);
}

void *sub_1001457B8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v4;
  v6 = v3;
  v9 = *v3;
  if (qword_10039D660 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A43C8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = a3;
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v29);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1670;
    v18 = String.redactedTokenFromBase64()();
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = v18;
    *(v17 + 88) = &type metadata for UInt32;
    *(v17 + 64) = v26;
    v19 = showFunction(signature:_:)(0xD000000000000021, 0x800000010034FD30, v17);
    v21 = v20;

    v22 = sub_100008F6C(v19, v21, &v29);

    *(v13 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
    v5 = v4;

    a3 = v26;
  }

  v23 = v6[10];
  v24 = v6[11];
  sub_10000BE18(v6 + 7, v23);
  if ((*(v24 + 32))(v23, v24) == a3)
  {

    result = sub_100176DD8(a1, a2, v28);
    if (!v5)
    {
      sub_10008C3EC(v28);
      return sub_100145AEC(a1, a2, a3);
    }
  }

  else
  {
    sub_100020C74(10007, 0xD000000000000026, 0x800000010034FD00, 0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100145AEC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  v21[1] = a1;
  v21[2] = a2;
  v22 = a3;
  v23 = _swiftEmptyArrayStorage;
  sub_100146350(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10009AAB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1001462FC();
  v14 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v4)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v17 = v15;
  v18 = v14;
  (*(v10 + 8))(v13, v9);
  v19 = v5[5];
  v20 = v5[6];
  sub_10000BE18(v5 + 2, v19);
  if (qword_10039D668 != -1)
  {
    swift_once();
  }

  (*(v20 + 40))(qword_1003A6DD0, *algn_1003A6DD8, v18, v17, v19, v20);
  return sub_100009548(v18, v17);
}

uint64_t sub_100145D44(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_100004074(&qword_1003A44F8, &qword_1002C8A60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1001465BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100145ED4()
{
  if (*v0)
  {
    result = 0x7465736552637472;
  }

  else
  {
    result = 0x6E656B6F54776172;
  }

  *v0;
  return result;
}

uint64_t sub_100145F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F54776172 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7465736552637472 && a2 == 0xED0000746E756F43)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100146000(uint64_t a1)
{
  v2 = sub_1001465BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014603C(uint64_t a1)
{
  v2 = sub_1001465BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100146078@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100146610(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL sub_1001460C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_100146128()
{
  sub_10000959C((v0 + 16));
  sub_10000959C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10014618C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_10000BE18((*v0 + 56), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1001461EC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_10000BE18((*v0 + 56), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_10014624C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_10000BE18((*v0 + 56), v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1001462A4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_10000BE18((*v0 + 56), v1);
  return (*(v2 + 32))(v1, v2);
}

unint64_t sub_1001462FC()
{
  result = qword_1003A44E8;
  if (!qword_1003A44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A44E8);
  }

  return result;
}

uint64_t sub_100146350(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100146398()
{
  result = qword_1003A44F0;
  if (!qword_1003A44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A44F0);
  }

  return result;
}

uint64_t sub_1001463EC(uint64_t a1)
{
  sub_1000E5EA8(v9);
  if (v1)
  {
  }

  else
  {
    v3 = v10;
    v4 = v11;
    sub_10000BE18(v9, v10);
    sub_1000C7DD8(v3, v4);
    sub_10000CCE4(v8, v7);
    sub_1000EDC24(v6);
    sub_10000959C(v8);

    type metadata accessor for DefaultSecureTimeKeeper();
    a1 = swift_allocObject();
    sub_100029790(v7, a1 + 16);
    sub_100029790(v6, a1 + 56);
    sub_10000959C(v9);
  }

  return a1;
}

__n128 sub_100146510(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100146524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_10014656C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001465BC()
{
  result = qword_1003A4500;
  if (!qword_1003A4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4500);
  }

  return result;
}

uint64_t sub_100146610(uint64_t *a1)
{
  v3 = sub_100004074(&qword_1003A4508, &qword_1002C8A68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1001465BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000959C(a1);
  return v8;
}

unint64_t sub_1001467FC()
{
  result = qword_1003A4510;
  if (!qword_1003A4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4510);
  }

  return result;
}

unint64_t sub_100146854()
{
  result = qword_1003A4518;
  if (!qword_1003A4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4518);
  }

  return result;
}

unint64_t sub_1001468AC()
{
  result = qword_1003A4520;
  if (!qword_1003A4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4520);
  }

  return result;
}

uint64_t sub_100146900(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100004074(&qword_1003A4700, &qword_1002C8C40);
  if (swift_dynamicCast())
  {
    sub_100029790(__src, &v41);
    sub_10000BE18(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_10000959C(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000BD44(__src, &qword_1003A4708, &qword_1002C8C48);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10014B04C(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10014B9A4(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_10014B114(sub_10014BAF0);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100188C78(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100188C78(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10001A074(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_10001A074(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000094F4(*&__src[0], *(&__src[0] + 1));

  sub_100009548(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100146E20(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10000BE18(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10014B710(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10014B7C8(v3, v4);
    }

    else
    {
      v6 = sub_10014B844(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000959C(v8);
  return v6;
}

uint64_t sub_100146EDC(uint64_t a1, uint64_t a2)
{
  v10[3] = &type metadata for UnsafeMutableRawBufferPointer;
  v10[4] = &protocol witness table for UnsafeMutableRawBufferPointer;
  v10[0] = a1;
  v10[1] = a2;
  v2 = sub_10000BE18(v10, &type metadata for UnsafeMutableRawBufferPointer);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = &v4[-v3];
    if (v4 == v3)
    {
      v3 = 0;
    }

    else if (v5 <= 14)
    {
      v3 = sub_10014B710(*v2, v4);
    }

    else
    {
      v7 = type metadata accessor for __DataStorage();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      if (v5 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v3 = swift_allocObject();
        *(v3 + 16) = 0;
        *(v3 + 24) = v5;
      }

      else
      {
        v3 = v5 << 32;
      }
    }
  }

  sub_10000959C(v10);
  return v3;
}

uint64_t sub_100146FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100147050@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1001470C8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4528);
  sub_10000403C(v0, qword_1003A4528);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.common.getter();
}

uint64_t sub_100147134()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6DE0 = v5;
    *algn_1003A6DE8 = v7;
  }

  return result;
}

void *sub_100147244()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v34);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A4528);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v3;
    aBlock[0] = v15;
    *v14 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, aBlock);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();
    v3 = v33;
  }

  v22 = OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer;
  v23 = *(v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer);
  swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100385050;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  sub_1000039BC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v24);
  swift_unknownObjectRelease();
  (*(v35 + 8))(v6, v3);
  (*(v7 + 8))(v10, v34);
  v25 = *(v1 + v22);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((*(v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) & 1) == 0)
  {
    v26 = *(v1 + v22);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  v27 = OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_url;
  v28 = type metadata accessor for URL();
  (*(*(v28 - 8) + 8))(v1 + v27, v28);
  sub_10000959C((v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist));
  sub_10000959C((v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper));
  sub_10000959C((v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_crypto));
  sub_10000959C((v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_http));
  v29 = *(v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_signer);
  swift_unknownObjectRelease();

  v30 = *(v1 + v22);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10014770C()
{
  sub_100147244();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DefaultTimeTokenManager()
{
  result = qword_1003A4580;
  if (!qword_1003A4580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001477B8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void *sub_100147898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for DispatchTimeInterval();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v30 - v16;
  v18 = v37;
  result = sub_1001499A0(v38);
  if (!v18)
  {
    v33 = v9;
    v34 = v17;
    v31 = v11;
    v32 = v7;
    if (*(a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) == 1)
    {
      sub_1001495DC(v38);
      v37 = 0;
      v30[1] = *(a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer);
      v30[0] = swift_getObjectType();
      v20 = (a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper);
      v22 = *(a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24);
      v21 = *(a1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 32);
      sub_10000BE18(v20, v22);
      (*(*(v21 + 8) + 16))(v22);
      + infix(_:_:)();
      v31 = *(v31 + 8);
      (v31)(v15, v10);
      v23 = v35;
      v24 = *(v35 + 104);
      v25 = v33;
      v26 = v3;
      v24(v33, enum case for DispatchTimeInterval.never(_:), v3);
      v27 = v32;
      *v32 = 0;
      v24(v27, enum case for DispatchTimeInterval.nanoseconds(_:), v26);
      v28 = v34;
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      v29 = *(v23 + 8);
      v29(v27, v26);
      v29(v25, v26);
      (v31)(v28, v10);
    }

    else
    {
      v37 = 0;
    }

    return memcpy(v36, v38, 0x110uLL);
  }

  return result;
}

void sub_100147BC4(char a1)
{
  v3 = v1;
  v5 = *v1;
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A4528);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v42);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002C1660;
    *(v13 + 56) = &type metadata for MPOCOperationMode;
    v14 = a1 & 1;
    *(v13 + 32) = a1 & 1;
    v15 = showFunction(signature:_:)(0x6F4D686374697773, 0xEF293A6F74286564, v13);
    v17 = v16;

    v18 = sub_100008F6C(v15, v17, &v42);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v14 = a1 & 1;
  }

  if (*(v3 + 16) == (a1 & 1))
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      if (a1)
      {
        v28 = 0x656E696C66666FLL;
      }

      else
      {
        v28 = 0x656E696C6E6FLL;
      }

      if (a1)
      {
        v29 = 0xE700000000000000;
      }

      else
      {
        v29 = 0xE600000000000000;
      }

      v30 = sub_100008F6C(v28, v29, &v42);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "DefaultTimeTokenManager: Already in %s mode.", v26, 0xCu);
      sub_10000959C(v27);
    }
  }

  else
  {
    if (a1)
    {
      v19 = *sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24));
      sub_1001451FC(__src);
      memcpy(__dst, __src, 0x110uLL);
      if (sub_100031A30(__dst) == 1)
      {
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Cannot switch offline - no time token", v22, 2u);
        }

        sub_10014BA44();
        swift_allocError();
        *v23 = 0;
        swift_willThrow();
        return;
      }

      sub_10000BD44(__src, &qword_10039F268, &qword_1002C2730);
    }

    v31 = *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist + 24);
    v32 = *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist + 32);
    sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist), v31);
    if (qword_10039D678 != -1)
    {
      swift_once();
    }

    v33 = qword_1003A6DE0;
    v34 = *algn_1003A6DE8;
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1002C1660;
    *(v35 + 32) = v14;
    v39 = v14;
    v36 = sub_10014B8C8(v35);
    v38 = v37;

    (*(v32 + 40))(v33, v34, v36, v38, v31, v32);
    sub_100009548(v36, v38);
    if (!v2)
    {
      *(v3 + 16) = v39;
    }
  }
}

void sub_100148128()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v99 = type metadata accessor for DispatchTimeInterval();
  v103 = *(v99 - 8);
  v5 = *(v103 + 64);
  v6 = __chkstk_darwin(v99);
  v102 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v94 - v8;
  v106 = type metadata accessor for DispatchTime();
  v113 = *(v106 - 8);
  v9 = *(v113 + 64);
  v10 = __chkstk_darwin(v106);
  v100 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v94 - v12;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v111 = *(v13 - 8);
  v112 = v13;
  v14 = *(v111 + 64);
  __chkstk_darwin(v13);
  v109 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchQoS();
  v108 = *(v110 - 8);
  v16 = *(v108 + 64);
  __chkstk_darwin(v110);
  v107 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000403C(v18, qword_1003A4528);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v104 = v19;
    v23 = v22;
    *&v116[0] = swift_slowAlloc();
    *v23 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100008F6C(v24, v25, v116);
    v98 = v3;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = showFunction(signature:_:)(0x29287472617473, 0xE700000000000000, _swiftEmptyArrayStorage);
    v30 = sub_100008F6C(v28, v29, v116);

    *(v23 + 14) = v30;
    v2 = v1;
    v3 = v98;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();

    v19 = v104;
  }

  v31 = OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started;
  if (*(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started))
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Background process already started", v34, 2u);
    }

    return;
  }

  v35 = (v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper);
  v36 = *sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24));
  sub_1001451FC(v138);
  if (sub_100031A30(v138) == 1)
  {
    sub_1001499A0(v117);
    if (v2)
    {
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v41;
        *v40 = v41;
        _os_log_impl(&_mh_execute_header, v37, v38, "Error refreshing time token: %@.", v39, 0xCu);
        sub_10000BD44(v40, &unk_10039E220, &qword_1002C3D60);
      }

      sub_10014BA44();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();

      return;
    }

    v95 = v35;
    v96 = v31;
    v104 = 0;
    v65 = v136;
    v66 = v137;
    v48 = v120;
    v49 = v121;
    v50 = v122;
    v51 = v123;
    v52 = v125;
    v53 = v124;
    v54 = v126;
    v55 = v127;
    v56 = v128;
    v57 = v129;
    v58 = v130;
    v59 = v131;
    v60 = v132;
    v61 = v133;
    v63 = v134;
    v62 = v135;
    v43 = v117[1];
    v44 = v117[2];
    v47 = v119;
    v46 = v117[3];
    v64 = v117;
    v45 = v118;
  }

  else
  {
    v95 = v35;
    v96 = v31;
    v104 = v2;
    v43 = v138[1];
    v44 = v138[2];
    v45 = v139;
    v46 = v138[3];
    v47 = v140;
    v48 = v141;
    v49 = v142;
    v50 = v143;
    v51 = v144;
    v52 = v146;
    v53 = v145;
    v54 = v147;
    v55 = v148;
    v56 = v149;
    v57 = v150;
    v58 = v151;
    v59 = v152;
    v60 = v153;
    v61 = v154;
    v63 = v155;
    v62 = v156;
    v64 = v138;
    v65 = v157;
    v66 = v158;
  }

  v67 = *v64;
  v115 = v55 & 1;
  *&v116[0] = v67;
  *(&v116[0] + 1) = v43;
  *&v116[1] = v44;
  *(&v116[1] + 1) = v46;
  v116[2] = v45;
  *&v116[3] = v47;
  *(&v116[3] + 1) = v48;
  *&v116[4] = v49;
  *(&v116[4] + 1) = v50;
  *&v116[5] = v51;
  *(&v116[5] + 1) = v53;
  v116[6] = v52;
  *&v116[7] = v54;
  BYTE8(v116[7]) = v55 & 1;
  v116[8] = v56;
  v116[9] = v57;
  v116[10] = v58;
  v116[11] = v59;
  v116[12] = v60;
  v116[13] = v61;
  v116[14] = v63;
  v116[15] = v62;
  *&v116[16] = v65;
  *(&v116[16] + 1) = v66;
  memcpy(v159, v116, 0x110uLL);
  v68 = *(v3 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer);
  ObjectType = swift_getObjectType();
  v70 = swift_allocObject();
  swift_weakInit();
  v114[4] = sub_10014BAE8;
  v114[5] = v70;
  v114[0] = _NSConcreteStackBlock;
  v114[1] = 1107296256;
  v114[2] = sub_100003974;
  v114[3] = &unk_100385028;
  v71 = _Block_copy(v114);

  v72 = v107;
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  v73 = v109;
  sub_1000039BC();
  v97 = v68;
  v98 = ObjectType;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v71);
  (*(v111 + 8))(v73, v112);
  (*(v108 + 8))(v72, v110);

  v74 = v104;
  sub_1001495DC(v159);
  if (v74)
  {
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      swift_errorRetain();
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 4) = v79;
      *v78 = v79;
      _os_log_impl(&_mh_execute_header, v75, v76, "Error getting renewal time: %@.", v77, 0xCu);
      sub_10000BD44(v78, &unk_10039E220, &qword_1002C3D60);
    }

    sub_10014BA44();
    swift_allocError();
    *v80 = 2;
    swift_willThrow();

    sub_10008C3EC(v116);
  }

  else
  {
    v82 = v95[3];
    v81 = v95[4];
    sub_10000BE18(v95, v82);
    v83 = v100;
    (*(*(v81 + 8) + 16))(v82);
    + infix(_:_:)();
    v112 = *(v113 + 8);
    v113 += 8;
    v112(v83, v106);
    v84 = v103;
    v85 = *(v103 + 104);
    v104 = v19;
    v86 = v101;
    v87 = v99;
    v85(v101, enum case for DispatchTimeInterval.never(_:), v99);
    v88 = v102;
    *v102 = 0;
    v85(v88, enum case for DispatchTimeInterval.nanoseconds(_:), v87);
    v89 = v105;
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v90 = *(v84 + 8);
    v90(v88, v87);
    v90(v86, v87);
    v112(v89, v106);
    *(v3 + v96) = 1;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Background process started", v93, 2u);
    }

    OS_dispatch_source.resume()();
    sub_10008C3EC(v116);
  }
}

uint64_t sub_100148C70()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v30 - v6;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v30 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = v0;
    v34 = v5;
    v32 = v7;
    v17 = result;
    sub_1001499A0(v35);
    v31 = v9;
    v18 = v17;
    sub_1001495DC(v35);
    v19 = v15;
    v20 = v8;
    sub_10008C3EC(v35);
    v30[1] = *(v18 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer);
    v30[2] = v18;
    v30[0] = swift_getObjectType();
    v22 = *(v18 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24);
    v21 = *(v18 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 32);
    sub_10000BE18((v18 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), v22);
    (*(*(v21 + 8) + 16))(v22);
    v23 = v19;
    + infix(_:_:)();
    v31 = *(v31 + 8);
    (v31)(v13, v20);
    v24 = v1;
    v25 = *(v1 + 104);
    v26 = v32;
    v27 = v33;
    v25(v32, enum case for DispatchTimeInterval.never(_:), v33);
    v28 = v34;
    *v34 = 0;
    v25(v28, enum case for DispatchTimeInterval.nanoseconds(_:), v27);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v29 = *(v24 + 8);
    v29(v28, v27);
    v29(v26, v27);
    (v31)(v23, v20);
  }

  return result;
}

void sub_100149100()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v3 - 8);
  isa = v33[8].isa;
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A4528);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v3;
    v15 = v14;
    aBlock[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, aBlock);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = showFunction(signature:_:)(0x2928706F7473, 0xE600000000000000, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, aBlock);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();

    v3 = v30;
  }

  if (*(v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) == 1)
  {
    *(v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) = 0;
    v22 = *(v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer);
    swift_getObjectType();
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100384FD8;
    v23 = _Block_copy(aBlock);
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
    sub_1000039BC();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v23);
    (v33[1].isa)(v6, v3);
    (*(v31 + 8))(v10, v32);
    OS_dispatch_source.suspend()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Background process stopped", v26, 2u);
    }
  }

  else
  {
    v33 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v33, v27, "Background process already stopped", v28, 2u);
    }

    v29 = v33;
  }
}

double sub_1001495DC(void *a1)
{
  v4 = v1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) == 1)
  {
    if (qword_10039D670 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000403C(v12, qword_1003A4528);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 16777728;
      *(v15 + 4) = *(v4 + 16);

      *(v15 + 5) = 2048;
      *(v15 + 7) = *(v4 + 24);
      _os_log_impl(&_mh_execute_header, v13, v14, "Mode is %hhu, using default renewal time: %f", v15, 0xFu);
    }

    else
    {
    }

    return *(v4 + 24);
  }

  else
  {
    v16 = v9;
    v17 = *sub_10000BE18((v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), *(v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24));
    sub_10004CF70(a1, v11);
    if (!v2)
    {
      v18 = a1[13];
      Date.timeIntervalSince1970.getter();
      v3 = v18 - v19 + -300.0;
      if (v3 <= 0.0)
      {
        if (qword_10039D670 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_10000403C(v20, qword_1003A4528);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Time token in renewal period buffer, scheduling for immediate renewal", v23, 2u);
        }

        v3 = 0.0;
      }

      if (qword_10039D670 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000403C(v24, qword_1003A4528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v3;
        _os_log_impl(&_mh_execute_header, v25, v26, "Time token renewal time: %f", v27, 0xCu);
      }

      (*(v7 + 8))(v11, v16);
    }
  }

  return v3;
}

void *sub_1001499A0@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = *v1;
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A4528);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, &v36);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = showFunction(signature:_:)(0x687365726665725FLL, 0xEF29286E656B6F54, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, &v36);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
    v3 = v2;
  }

  if (v4[2])
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cannot refresh token when not online", v19, 2u);
    }

    sub_10014BA44();
    swift_allocError();
    *v20 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = (v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper);
    v23 = *(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24);
    v24 = *(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 32);
    sub_10000BE18((v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), v23);
    v25 = (*(*(v24 + 8) + 32))(v23);
    sub_100149E1C(v4 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_url, __src);
    if (v3)
    {
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36 = v30;
        *v29 = 136315138;
        swift_getErrorValue();
        v31 = Error.localizedDescription.getter();
        v33 = sub_100008F6C(v31, v32, &v36);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "Could not refresh token: %s", v29, 0xCu);
        sub_10000959C(v30);
      }

      sub_10014BA44();
      swift_allocError();
      *v34 = 1;
      swift_willThrow();
    }

    else
    {
      v26 = *sub_10000BE18(v22, v22[3]);
      sub_1001457B8(__src[32], __src[33], v25);
      return memcpy(a1, __src, 0x110uLL);
    }
  }
}

void *sub_100149E1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v111 = a2;
  v128 = *v2;
  v4 = type metadata accessor for Date();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  __chkstk_darwin(v4);
  v107 = &v102[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for URLRequest();
  v123 = *(v7 - 8);
  v124 = v7;
  v8 = *(v123 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v102[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v122 = &v102[-v12];
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v116 = &v102[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v121 = &v102[-v18];
  v19 = type metadata accessor for URL.DirectoryHint();
  v113 = *(v19 - 8);
  v114 = v19;
  v20 = v113[8];
  __chkstk_darwin(v19);
  v112 = &v102[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v115 = &v102[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v125 = &v102[-v28];
  __chkstk_darwin(v27);
  v30 = &v102[-v29];
  if (qword_10039D670 != -1)
  {
    swift_once();
  }

  v118 = v2;
  v31 = type metadata accessor for Logger();
  v32 = sub_10000403C(v31, qword_1003A4528);
  v126 = v23[2];
  v127 = v23 + 2;
  v126(v30, a1, v22);
  v110 = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v133 = v22;
  v35 = v34;
  v36 = os_log_type_enabled(v33, v34);
  v129 = v13;
  v120 = v23;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v106 = v11;
    v38 = v37;
    v104 = swift_slowAlloc();
    v130 = v104;
    *v38 = 136315394;
    v39 = _typeName(_:qualified:)();
    v128 = v14;
    v41 = sub_100008F6C(v39, v40, &v130);
    v105 = a1;
    v42 = v41;

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1002C1660;
    v103 = v35;
    v44 = v133;
    *(v43 + 56) = v133;
    v45 = sub_10000BE5C((v43 + 32));
    v126(v45, v30, v44);
    v46 = showFunction(signature:_:)(0xD000000000000016, 0x800000010034FE00, v43);
    v48 = v47;

    v119 = v23[1];
    v119(v30, v44);
    v49 = sub_100008F6C(v46, v48, &v130);

    *(v38 + 14) = v49;
    v50 = v128;
    _os_log_impl(&_mh_execute_header, v33, v103, "%s.%s", v38, 0x16u);
    swift_arrayDestroy();

    v11 = v106;
  }

  else
  {

    v119 = v23[1];
    v119(v30, v133);
    v50 = v14;
  }

  v130 = 0xD000000000000011;
  v131 = 0x800000010034FDE0;
  v52 = v112;
  v51 = v113;
  v53 = v114;
  (v113[13])(v112, enum case for URL.DirectoryHint.inferFromPath(_:), v114);
  sub_10008AB88();
  v54 = v125;
  URL.appending<A>(path:directoryHint:)();
  (v51[1])(v52, v53);
  v55 = v118;
  v57 = *(v118 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 24);
  v56 = *(v118 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper + 32);
  sub_10000BE18((v118 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper), v57);
  v58 = v116;
  (*(*(v56 + 8) + 16))(v57);
  v59 = *(v55 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_resourceTimeout);
  v60 = v121;
  + infix(_:_:)();
  v61 = *(v50 + 8);
  v128 = v50 + 8;
  v61(v58, v129);
  v62 = sub_10000BE18((v55 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_crypto), *(v55 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_crypto + 24));
  v63 = v133;
  v126(v115, v54, v133);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v64 = *v62;
  v65 = v122;
  v66 = v117;
  sub_100140AB0(v11, 0, 0, 0, v60);
  if (v66)
  {
    (*(v123 + 8))(v11, v124);
    v61(v60, v129);
    return (v119)(v54, v63);
  }

  else
  {
    v114 = v61;
    v69 = v123 + 8;
    v68 = *(v123 + 8);
    (v68)(v11, v124);
    v70 = *sub_10000BE18((v55 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_http), *(v55 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_http + 24));
    v71 = sub_100142910(v65, v60);
    v73 = v72;
    v74 = v68;
    v123 = v69;
    type metadata accessor for JSONDecoder();
    sub_10009A814(_swiftEmptyArrayStorage);
    sub_10014B6BC();
    static JSONDecoder.decodeClean<A>(_:from:userInfo:)();
    v75 = v71;
    v76 = v73;

    sub_100176DD8(v130, v131, v132);
    v77 = v122;
    v78 = v125;
    v127 = 0;
    v79 = v114;
    v80 = v74;
    sub_100034958(v132, &v130);
    sub_100034958(v132, &v130);
    sub_100034958(v132, &v130);
    sub_100034958(v132, &v130);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    v83 = v82;
    if (os_log_type_enabled(v81, v82))
    {
      v84 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v130 = v126;
      *v84 = 136316162;
      v115 = v132[12];
      v116 = v132[13];
      if (v132[27])
      {
        v85 = v132[26];
      }

      else
      {
        v85 = 7104878;
      }

      v117 = v81;
      if (v132[27])
      {
        v86 = v132[27];
      }

      else
      {
        v86 = 0xE300000000000000;
      }

      v87 = sub_100008F6C(v85, v86, &v130);
      v118 = v75;
      v88 = v87;

      *(v84 + 4) = v88;
      *(v84 + 12) = 2048;
      sub_10008C3EC(v132);
      *(v84 + 14) = v115;
      sub_10008C3EC(v132);
      *(v84 + 22) = 2080;
      v89 = v107;
      Date.init(timeIntervalSince1970:)();
      v112 = sub_10014CE54(&qword_10039F3E8, &type metadata accessor for Date);
      v90 = v109;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      LODWORD(v115) = v83;
      v113 = v80;
      v94 = *(v108 + 8);
      v94(v89, v90);
      v95 = sub_100008F6C(v91, v93, &v130);

      *(v84 + 24) = v95;
      *(v84 + 32) = 2048;
      sub_10008C3EC(v132);
      *(v84 + 34) = v116;
      sub_10008C3EC(v132);
      *(v84 + 42) = 2080;
      Date.init(timeIntervalSince1970:)();
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v94(v89, v90);
      v99 = sub_100008F6C(v96, v98, &v130);

      *(v84 + 44) = v99;
      v100 = v117;
      _os_log_impl(&_mh_execute_header, v117, v115, "new time token:\n  cput: %s\n  iat: %llu -> %s\n  exp: %llu -> %s", v84, 0x34u);
      swift_arrayDestroy();

      sub_100009548(v118, v76);

      (v113)(v122, v124);
      v114(v121, v129);
      v101 = v125;
    }

    else
    {
      sub_10008C3EC(v132);
      sub_10008C3EC(v132);
      sub_100009548(v75, v76);

      sub_10008C3EC(v132);
      sub_10008C3EC(v132);
      (v80)(v77, v124);
      v79(v121, v129);
      v101 = v78;
    }

    v119(v101, v133);
    return memcpy(v111, v132, 0x110uLL);
  }
}

Swift::Int sub_10014AB1C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10014AB88()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10014ABE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656B6F54656D6974 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_10014AC80(uint64_t a1)
{
  v2 = sub_10014CF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014ACBC(uint64_t a1)
{
  v2 = sub_10014CF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014ACF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A4710, &qword_1002C8CD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_10014CF30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_10000959C(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_10014AE74(void *a1)
{
  v3 = sub_100004074(&qword_1003A4720, &qword_1002C8CE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_10014CF30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void *sub_10014AFB0@<X0>(void *a1@<X8>)
{
  v4 = *(*v1 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_queue);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    return memcpy(a1, v6, 0x110uLL);
  }

  return result;
}

uint64_t sub_10014B04C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10014B710(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_10014B114(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100009548(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100009548(v6, v5);
    *v3 = xmmword_1002BDC30;
    sub_100009548(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_10014B5B8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100009548(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1002BDC30;
    sub_100009548(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10014B5B8(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_10014B4B8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10014B710(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10014B7C8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10014B844(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10014B54C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10014B5B8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10014B66C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10014B6BC()
{
  result = qword_1003A46E0;
  if (!qword_1003A46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A46E0);
  }

  return result;
}

uint64_t sub_10014B710(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10014B7C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10014B844(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10014B8C8(uint64_t a1)
{
  v9 = sub_100004074(&qword_1003A46F0, &qword_1002C8C38);
  v10 = sub_10001A570(&qword_1003A46F8, &qword_1003A46F0, &qword_1002C8C38);
  v8[0] = a1;
  v2 = sub_10000BE18(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10014B4B8(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000959C(v8);
  return v5;
}

uint64_t sub_10014B9A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_10014BA44()
{
  result = qword_1003A46E8;
  if (!qword_1003A46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A46E8);
  }

  return result;
}

uint64_t sub_10014BA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014BAB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10014BAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10014B54C(sub_10014BB58, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void sub_10014BB78(uint64_t a1)
{
  v2 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v133 = *(v2 - 8);
  v134 = v2;
  v3 = *(v133 + 64);
  __chkstk_darwin(v2);
  v132 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v131 = *(v8 - 8);
  v9 = v131[8];
  __chkstk_darwin(v8);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v135;
  sub_1000E3850(v166);
  if (v21)
  {

    return;
  }

  v125 = v8;
  v126 = v15;
  v127 = v7;
  v128 = v11;
  v22 = v134;
  v129 = v20;
  v135 = v17;
  sub_1000E5EA8(v163);
  v23 = a1;
  v124 = v16;
  v24 = v164;
  v25 = v165;
  sub_10000BE18(v163, v164);
  sub_1000C7DD8(v24, v25);
  sub_1000EE7EC(v159);
  sub_1000E9D90(v158);
  sub_1000E6B70(v155);
  v26 = v161;
  v27 = v162;
  sub_10000BE18(v160, v161);
  if (qword_10039D678 != -1)
  {
    swift_once();
  }

  v28 = (*(v27 + 32))(qword_1003A6DE0, *algn_1003A6DE8, v26, v27);
  v30 = v28;
  v31 = v29;
  *&v123 = 0;
  v32 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_16;
    }

    v33 = *(v28 + 16);
    v34 = *(v28 + 24);
  }

  else
  {
    if (!v32)
    {
      if ((v29 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v33 = v28;
    v34 = v28 >> 32;
  }

  if (v33 == v34)
  {
    goto LABEL_16;
  }

LABEL_13:
  v35 = Data._Representation.subscript.getter();
  if (v35 != 1)
  {
    if (!v35)
    {
      sub_100009548(v30, v31);
LABEL_21:
      v120 = 0;
      goto LABEL_22;
    }

LABEL_16:
    if (qword_10039D670 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000403C(v36, qword_1003A4528);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Found invalid mode data in persistence. Using .online", v39, 2u);
    }

    sub_100009548(v30, v31);

    goto LABEL_21;
  }

  sub_100009548(v30, v31);
  v120 = 1;
LABEL_22:
  v40 = v123;
  v41 = *(*sub_10000BE18(v158, v158[3]) + 296);
  os_unfair_lock_lock((v41 + 24));
  sub_1000B4F6C((v41 + 16), &v152);
  os_unfair_lock_unlock((v41 + 24));
  if (v40)
  {
    __break(1u);
  }

  else
  {
    v123 = v152;
    v42 = v23 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v121 = type metadata accessor for Settings();
    v122 = v42;
    v43 = *(v42 + *(v121 + 19));
    v44 = sub_10000BE18(v166, v166[3]);
    v46 = v135 + 16;
    v45 = *(v135 + 16);
    (v45)(v129, *v44 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v124);
    sub_10000CCE4(v160, &v152);
    sub_1000E4518(v150);
    v47 = v121;
    v48 = v122;
    v117 = v45;
    v118 = v46;
    v119 = sub_10000BE18(v159, v159[3]);
    v49 = v156;
    v50 = v157;
    sub_10000BE18(v155, v156);
    sub_1000C289C(8u, v49, v50);
    v51 = *v119;
    sub_10013B458(v148);
    sub_10000959C(v146);
    sub_1000EEE50(v146);
    v52 = *(v48 + *(v47 + 21));
    v53 = v151;
    v54 = sub_100022438(v150, v151);
    v121 = &v111;
    v55 = *(*(v53 - 8) + 64);
    __chkstk_darwin(v54);
    v57 = (&v111 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    v59 = v149;
    v60 = sub_100022438(v148, v149);
    v119 = &v111;
    v61 = *(*(v59 - 8) + 64);
    __chkstk_darwin(v60);
    v63 = (&v111 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v64 + 16))(v63);
    v65 = v147;
    v66 = sub_100022438(v146, v147);
    v116 = &v111;
    v67 = *(*(v65 - 8) + 64);
    __chkstk_darwin(v66);
    v69 = (&v111 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    v71 = *v57;
    v72 = *v63;
    v73 = *v69;
    v74 = type metadata accessor for DefaultSecureTimeKeeper();
    v145[3] = v74;
    v145[4] = &off_100384E70;
    v145[0] = v71;
    v112 = type metadata accessor for DefaultSecureChannelCrypto();
    v143 = v112;
    v144 = &off_100384C48;
    v142[0] = v72;
    v111 = type metadata accessor for DefaultSecureChannelHTTP();
    v140 = v111;
    v141 = &off_100384C58;
    v139[0] = v73;
    v75 = type metadata accessor for DefaultTimeTokenManager();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    v122 = swift_allocObject();
    v78 = sub_100022438(v145, v74);
    v115 = &v111;
    v79 = *(*(v74 - 8) + 64);
    __chkstk_darwin(v78);
    v81 = (&v111 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    v83 = v143;
    v84 = sub_100022438(v142, v143);
    v114 = &v111;
    v85 = *(*(v83 - 8) + 64);
    __chkstk_darwin(v84);
    v87 = (&v111 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    v89 = v140;
    v90 = sub_100022438(v139, v140);
    v113 = &v111;
    v91 = *(*(v89 - 8) + 64);
    __chkstk_darwin(v90);
    v93 = (&v111 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v94 + 16))(v93);
    v95 = *v81;
    v96 = *v87;
    v97 = *v93;
    v138[3] = v74;
    v138[4] = &off_100384E70;
    v138[0] = v95;
    v137[3] = v112;
    v137[4] = &off_100384C48;
    v137[0] = v96;
    v136[3] = v111;
    v136[4] = &off_100384C58;
    v136[0] = v97;
    v98 = v122;
    *(v122 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_started) = 0;
    *(v98 + 16) = v120;
    *(v98 + 24) = v43;
    (v117)(v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_url, v129, v124);
    sub_10000CCE4(&v152, v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_persist);
    sub_10000CCE4(v138, v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_secureTimeKeeper);
    sub_10000CCE4(v137, v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_crypto);
    sub_10000CCE4(v136, v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_http);
    *(v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_signer) = v123;
    *(v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_resourceTimeout) = v52;
    v99 = sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
    v117 = "TimeTokenManagerMode";
    v118 = v99;
    swift_unknownObjectRetain();
    static DispatchQoS.background.getter();
    (v131[13])(v128, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v125);
    v167 = _swiftEmptyArrayStorage;
    v125 = sub_10014CE54(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
    v131 = &protocol conformance descriptor for [A];
    sub_10001A570(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v100 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_queue) = v100;
    v130 = sub_10000411C(0, &qword_10039D7E8, OS_dispatch_source_ptr);
    v167 = _swiftEmptyArrayStorage;
    v127 = sub_10014CE54(&qword_1003A1668, &type metadata accessor for OS_dispatch_source.TimerFlags);
    v128 = v100;
    sub_100004074(&qword_1003A1670, &qword_1002C59A8);
    sub_10001A570(&qword_1003A1678, &qword_1003A1670, &qword_1002C59A8);
    v101 = v132;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v102 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v133 + 8))(v101, v22);
    *(v98 + OBJC_IVAR____TtC14softposreaderd23DefaultTimeTokenManager_timer) = v102;
    v103 = v153;
    v104 = v154;
    v105 = sub_10000BE18(&v152, v153);
    v106 = qword_1003A6DE0;
    v133 = *algn_1003A6DE8;
    v134 = v105;
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1002C1660;
    *(v107 + 32) = v120;
    v108 = sub_10014B8C8(v107);
    v110 = v109;

    (*(v104 + 40))(v106, v133, v108, v110, v103, v104);
    swift_unknownObjectRelease();
    sub_100009548(v108, v110);

    (*(v135 + 8))(v129, v124);
    sub_10000959C(v136);
    sub_10000959C(v137);
    sub_10000959C(v138);
    sub_10000959C(&v152);
    sub_10000959C(v139);
    sub_10000959C(v142);
    sub_10000959C(v145);
    sub_10000959C(v146);
    sub_10000959C(v148);
    sub_10000959C(v150);
    sub_10000959C(v155);
    sub_10000959C(v158);
    sub_10000959C(v159);
    sub_10000959C(v160);
    sub_10000959C(v163);
    sub_10000959C(v166);
  }
}

uint64_t sub_10014CE54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014CE9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10014CEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014CF30()
{
  result = qword_1003A4718;
  if (!qword_1003A4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4718);
  }

  return result;
}

unint64_t sub_10014CF98()
{
  result = qword_1003A4728;
  if (!qword_1003A4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4728);
  }

  return result;
}

unint64_t sub_10014CFF0()
{
  result = qword_1003A4730;
  if (!qword_1003A4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4730);
  }

  return result;
}

unint64_t sub_10014D048()
{
  result = qword_1003A4738;
  if (!qword_1003A4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4738);
  }

  return result;
}

__n128 sub_10014D218(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10014D22C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014D274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014D2D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014D31C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_10014D378(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10014D478()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4740);
  sub_10000403C(v0, qword_1003A4740);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_10014D4D4(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D680 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v49 = sub_10000403C(v12, qword_1003A4740);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v48 = v2;
    v16 = v15;
    v47 = swift_slowAlloc();
    v51 = v47;
    *v16 = 136315394;
    *(v16 + 4) = sub_100008F6C(0xD000000000000017, 0x80000001002C8E80, &v51);
    *(v16 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD000000000000015, 0x800000010034FEE0, _swiftEmptyArrayStorage);
    v46 = v6;
    v19 = v11;
    v20 = v8;
    v21 = v7;
    v22 = sub_100008F6C(v17, v18, &v51);
    v6 = v46;

    *(v16 + 14) = v22;
    v7 = v21;
    v8 = v20;
    v11 = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();

    v2 = v48;
  }

  v23 = *sub_10000BE18((v2 + 8), *(v2 + 32));
  sub_100043268(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10014E40C(v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "CertificateTimeVerifier using wall time to verify certificate", v26, 2u);
    }

    v27 = *(v2 + 32);
    v28 = *(v2 + 40);
    sub_10000BE18((v2 + 8), v27);
    (*(*(v28 + 8) + 8))(v27);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  SecCertificateNotValidBefore();
  v30 = v29;
  Date.timeIntervalSinceReferenceDate.getter();
  v32 = v30 - v31;
  if (v32 > 5.0)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    Double.write<A>(to:)();
    v33._countAndFlagsBits = 0x73646E6F63657320;
    v33._object = 0xEE00796C72616520;
    String.append(_:)(v33);
    v34 = v51;
    v35 = v52;
    v36 = 10011;
LABEL_21:
    sub_100020C74(v36, v34, v35, 0);
    swift_willThrow();
    return (*(v8 + 8))(v11, v7);
  }

  if (v32 > 0.0)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v37, v38, "Certificate valid with allowed drift: %f", v39, 0xCu);
    }
  }

  SecCertificateNotValidAfter();
  v41 = v40;
  Date.timeIntervalSinceReferenceDate.getter();
  v43 = v41 - v42;
  if (v43 < 0.0)
  {
    v36 = 10012;
LABEL_20:
    v34 = 0;
    v35 = 0;
    goto LABEL_21;
  }

  if (v43 < *v2)
  {
    v36 = 10014;
    goto LABEL_20;
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_10014DA88(unint64_t a1)
{
  v2 = v1;
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v60 - v6;
  v8 = type metadata accessor for Date();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v62 = a1;
  if (a1 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v8;
  if (v15 != 1)
  {

    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {

    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v16 = *(a1 + 32);

    v17 = v16;
  }

  v18 = v17;
  v19 = sub_10014E474();

  if (v19)
  {
    a1 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_9:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_11;
    }

LABEL_50:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_9;
  }

LABEL_11:
  trust = 0;
  type metadata accessor for SecCertificate(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21 = SecTrustCreateWithCertificates(isa, *(v2 + 40), &trust);

  if (!v21 && trust)
  {
    v22 = *(v2 + 48);
    v23 = trust;
    v24 = Array._bridgeToObjectiveC()().super.isa;
    v25 = SecTrustSetAnchorCertificates(v23, v24);

    if (v25)
    {
      v26 = v25;
LABEL_17:
      sub_10009C9F0(v26, 0);
      swift_willThrow();

      goto LABEL_18;
    }

    v26 = SecTrustSetAnchorCertificatesOnly(v23, 0);
    if (v26)
    {
      goto LABEL_17;
    }

    v28 = *sub_10000BE18(v2, *(v2 + 24));
    sub_100043268(v7);
    v30 = v60;
    v29 = v61;
    if ((*(v61 + 48))(v7, 1, v60) == 1)
    {
      sub_10014E40C(v7);
      if (qword_10039D680 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000403C(v31, qword_1003A4740);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "CertificateTrustVerifier using wall time to verify certificate", v34, 2u);
      }

      v36 = *(v2 + 24);
      v35 = *(v2 + 32);
      sub_10000BE18(v2, v36);
      (*(*(v35 + 8) + 8))(v36);
      v30 = v60;
      v37 = v61;
    }

    else
    {
      (*(v29 + 32))(v14, v7, v30);
      v37 = v29;
    }

    v38 = *(v2 + 56);
    static Date.+ infix(_:_:)();
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v41 = *(v37 + 8);
    v40 = v37 + 8;
    v42 = v12;
    v43 = v41;
    v41(v42, v30);
    v44 = v30;
    v45 = SecTrustSetVerifyDate(v23, v39);

    if (v45)
    {
      sub_10009C9F0(v45, 0);
      swift_willThrow();

      v43(v14, v44);
      goto LABEL_18;
    }

    v61 = v40;
    error = 0;
    if (SecTrustEvaluateWithError(v23, &error))
    {
      v43(v14, v60);

LABEL_46:
      goto LABEL_18;
    }

    if (!error)
    {
      v52 = 0;
      v53 = 0;
LABEL_45:
      v59 = v52;
      sub_100020C74(10997, 0, 0, v53);

      swift_willThrow();

      v43(v14, v60);
      goto LABEL_46;
    }

    v46 = v43;
    v47 = error;
    v48 = CFErrorGetDomain(v47);
    if (v48)
    {
      v49 = v48;
      if (kCFErrorDomainOSStatus)
      {
        type metadata accessor for CFString(0);
        sub_10014E63C(&qword_10039DF60, type metadata accessor for CFString);
        v50 = kCFErrorDomainOSStatus;
        v51 = static _CFObject.== infix(_:_:)();

        if ((v51 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_37:
        Code = CFErrorGetCode(v47);

        if (Code < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (Code <= 0x7FFFFFFF)
        {
          type metadata accessor for CFError(0);
          sub_10014E63C(&qword_1003A4758, type metadata accessor for CFError);
          v55 = swift_allocError();
          *v56 = v47;
          v57 = v47;
          sub_10009C9F0(Code, v55);

          swift_willThrow();

          v46(v14, v60);
          goto LABEL_46;
        }

        __break(1u);
      }
    }

    else if (!kCFErrorDomainOSStatus)
    {
      goto LABEL_37;
    }

LABEL_41:

    v52 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_10014E63C(&qword_1003A4758, type metadata accessor for CFError);
      v53 = swift_allocError();
      *v58 = v52;
    }

    else
    {
      v53 = 0;
    }

    v43 = v46;
    goto LABEL_45;
  }

  sub_10009C9F0(v21, 0);
  swift_willThrow();
LABEL_18:
  v27 = trust;
}

uint64_t sub_10014E224()
{
  sub_100004074(&qword_10039E3C0, &unk_1002C7840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C8E00;
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v0 + 32) = result;
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 40) = result;
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v0 + 48) = result;
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v0 + 56) = result;
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (result)
  {
    *(v0 + 64) = result;
    qword_1003A6E28 = v0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10014E34C(void *a1)
{
  sub_100004074(&qword_10039E3C0, &unk_1002C7840);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002C6960;
  *(v2 + 32) = a1;
  v3 = a1;
  sub_10014DA88(v2);
}

uint64_t sub_10014E40C(uint64_t a1)
{
  v2 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10014E474()
{
  AuthorityKeyID = SecCertificateGetAuthorityKeyID();
  if (!AuthorityKeyID)
  {
    return 0;
  }

  v2 = qword_10039D688;
  v12 = AuthorityKeyID;
  if (v2 != -1)
  {
    goto LABEL_19;
  }

LABEL_3:
  v3 = qword_1003A6E28;
  if (!(qword_1003A6E28 >> 62))
  {
    v4 = *((qword_1003A6E28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_5;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
LABEL_5:
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:

          return v0;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_19:
          swift_once();
          goto LABEL_3;
        }

        v6 = *(v3 + 8 * v5 + 32);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      v0 = v6;
      SubjectKeyID = SecCertificateGetSubjectKeyID();
      if (SubjectKeyID)
      {
        v9 = SubjectKeyID;
        type metadata accessor for CFData(0);
        sub_10014E63C(&qword_1003A4760, type metadata accessor for CFData);
        v10 = v9;
        LOBYTE(v9) = static _CFObject.== infix(_:_:)();

        if (v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      ++v5;
    }

    while (v7 != v4);
  }

LABEL_21:

  return 0;
}

uint64_t sub_10014E63C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014E684()
{
  sub_100004074(&qword_1003A4908, &qword_1002C8FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C1670;
  *(v0 + 32) = SecPolicyCreateBasicX509();
  *(v0 + 40) = SecPolicyCreateRevocation(3uLL);
  sub_100004074(&qword_1003A4910, &qword_1002C8FC8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  qword_1003A6E30 = isa;
  return result;
}

void sub_10014E718(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 56, &v17);
  if (v18)
  {
    goto LABEL_10;
  }

  sub_10014F0D0(&v17);
  sub_10000CCE4(v1 + 280, v16);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  ApplePinned = SecPolicyCreateApplePinned();

  if (ApplePinned)
  {
    v7 = *(v1 + 320);
    sub_100004074(&qword_10039E3C0, &unk_1002C7840);
    if (v7 == 1)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1002C17A0;
      if (qword_10039D6A0 != -1)
      {
        swift_once();
      }

      v9 = qword_1003A6E40;
      *(v8 + 32) = qword_1003A6E40;
      v10 = (v8 + 40);
      v11 = qword_10039D698;
      v12 = v9;
      if (v11 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1002C6960;
      v10 = (v8 + 32);
      if (qword_10039D698 == -1)
      {
        goto LABEL_9;
      }
    }

    swift_once();
LABEL_9:
    v13 = qword_1003A6E38;
    *v10 = qword_1003A6E38;
    v14 = v13;
    v18 = &type metadata for CertificateTrustVerifier;
    v19 = &off_100385290;
    v15 = swift_allocObject();
    *&v17 = v15;
    sub_100029790(v16, (v15 + 2));
    v15[7] = ApplePinned;
    v15[8] = v8;
    v15[9] = 0;
    sub_10000CCE4(&v17, v16);
    swift_beginAccess();
    sub_10014F170(v16, v1 + 56);
    swift_endAccess();
LABEL_10:
    sub_100029790(&v17, a1);
    return;
  }

  __break(1u);
}