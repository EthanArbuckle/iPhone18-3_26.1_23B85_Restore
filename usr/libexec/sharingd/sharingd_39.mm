void sub_10055D2F8(char a1)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  if (a1)
  {
    if (a1 == 1)
    {
      v18 = String._bridgeToObjectiveC()();
      v19 = getpid();
      sub_100086D20(@"BonjourAdvertise", @"Stop", v18, v19);

      v20 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_bonjourServerStartDate;
      swift_beginAccess();
      sub_1002E4E88(v1 + v20, v9);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_100005508(v9, &qword_10097A7F0, &unk_1007FB600);
      }

      else
      {
        (*(v11 + 32))(v17, v9, v10);
        Date.init()();
        Date.timeIntervalSince(_:)();
        v24 = v23;
        v25 = *(v11 + 8);
        v25(v15, v10);
        sub_100086374(v24);
        v25(v17, v10);
      }

      (*(v11 + 56))(v7, 1, 1, v10);
      swift_beginAccess();
      sub_1003561CC(v7, v1 + v20);
      swift_endAccess();
    }
  }

  else
  {
    v27 = String._bridgeToObjectiveC()();
    v21 = getpid();
    sub_100086D20(@"ApplicationServiceAdvertise", @"Stop", v27, v21);
    v22 = v27;
  }
}

void sub_10055D668(uint64_t a1)
{
  v217 = type metadata accessor for SFAirDropReceive.Failure();
  v216 = *(v217 - 8);
  v4 = *(v216 + 64);
  __chkstk_darwin(v217);
  v220 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v212 = *(v213 - 8);
  v6 = *(v212 + 64);
  __chkstk_darwin(v213);
  v222 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  v230 = *(v232 - 8);
  v8 = v230[8];
  v9 = __chkstk_darwin(v232);
  v193 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v194 = &v190 - v12;
  v13 = __chkstk_darwin(v11);
  v196 = &v190 - v14;
  v15 = __chkstk_darwin(v13);
  v197 = &v190 - v16;
  __chkstk_darwin(v15);
  v202 = &v190 - v17;
  v201 = type metadata accessor for SFNWInterfaceType();
  v200 = *(v201 - 8);
  v18 = *(v200 + 64);
  __chkstk_darwin(v201);
  v199 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for UUID();
  v205 = *(v206 - 8);
  v20 = *(v205 + 64);
  __chkstk_darwin(v206);
  v204 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10028088C(&qword_1009762A8, &qword_1007F9418);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v211 = &v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v209 = (&v190 - v26);
  v27 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v28 = *(v27 - 8);
  v228 = v27;
  v229 = v28;
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v198 = &v190 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v208 = &v190 - v33;
  v34 = __chkstk_darwin(v32);
  v221 = &v190 - v35;
  __chkstk_darwin(v34);
  v37 = &v190 - v36;
  v38 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v192 = &v190 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v195 = &v190 - v43;
  v44 = __chkstk_darwin(v42);
  v215 = &v190 - v45;
  __chkstk_darwin(v44);
  v47 = &v190 - v46;
  v48 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = __chkstk_darwin(v48);
  v214 = &v190 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v203 = &v190 - v54;
  __chkstk_darwin(v53);
  v56 = &v190 - v55;
  v57 = type metadata accessor for Date();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  v60 = __chkstk_darwin(v57);
  v218 = &v190 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v63 = &v190 - v62;
  v64 = a1;
  SFAirDropReceive.Transfer.networkMetrics.getter();
  SFAirDrop.NetworkMetrics.uploadStart.getter();
  v65 = *(v49 + 8);
  v66 = v56;
  v67 = v57;
  v226 = (v49 + 8);
  v227 = v48;
  v225 = v65;
  v65(v66, v48);
  v224 = *(v58 + 48);
  v68 = v224(v47, 1, v57);
  v223 = v57;
  v210 = v58 + 48;
  v219 = v58;
  if (v68 == 1)
  {
    sub_100005508(v47, &qword_10097A7F0, &unk_1007FB600);
    v69 = v231;
    v70 = v222;
  }

  else
  {
    (*(v58 + 32))(v63, v47, v57);
    v207 = a1;
    SFAirDropReceive.Transfer.id.getter();
    v71 = v231;
    swift_beginAccess();
    v72 = *(v71 + 48);
    v73 = v63;
    if (*(v72 + 16))
    {
      v74 = sub_100570848(v37);
      v75 = v209;
      if (v76)
      {
        sub_10056056C(*(v72 + 56) + v230[9] * v74, v209);
        v77 = 0;
      }

      else
      {
        v77 = 1;
      }
    }

    else
    {
      v77 = 1;
      v75 = v209;
    }

    v78 = v230;
    v79 = v230[7];
    v80 = v232;
    (v79)(v75, v77, 1, v232);
    swift_endAccess();
    v81 = v228;
    v82 = *(v229 + 8);
    v82(v37, v228);
    LODWORD(v78) = (v78[6])(v75, 1, v80);
    sub_100005508(v75, &qword_1009762A8, &qword_1007F9418);
    if (v78 == 1)
    {
      v191 = @"Receive";
      v190 = @"Start";
      v83 = v221;
      SFAirDropReceive.Transfer.id.getter();
      v84 = v204;
      SFAirDrop.TransferIdentifier.id.getter();
      v82(v83, v81);
      v85.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v209 = v79;
      isa = v85.super.isa;
      (*(v205 + 8))(v84, v206);
      v87 = v200;
      v88 = v199;
      v89 = v201;
      (*(v200 + 104))(v199, enum case for SFNWInterfaceType.awdl(_:), v201);
      SFNWInterfaceType.description.getter();
      (*(v87 + 8))(v88, v89);
      v90 = String._bridgeToObjectiveC()();

      sub_100086E1C(v191, v190, isa, v90, 0.0);

      v91 = v219;
      v92 = v73;
      v93 = v202;
      v67 = v223;
      (*(v219 + 16))(v202, v92, v223);
      (*(v91 + 56))(v93 + v80[7], 1, 1, v67);
      v94 = v80[5];
      *(v93 + v80[6]) = 0;
      v95 = v203;
      v96 = v207;
      SFAirDropReceive.Transfer.networkMetrics.getter();
      v97 = SFAirDrop.NetworkMetrics.uploadTotalBytes.getter();
      v225(v95, v227);
      *(v93 + v94) = v97;
      v64 = v96;
      v98 = v221;
      SFAirDropReceive.Transfer.id.getter();
      v99 = v211;
      sub_10056056C(v93, v211);
      (v209)(v99, 0, 1, v80);
      v100 = v231;
      swift_beginAccess();
      v101 = v98;
      v69 = v100;
      sub_1002B0EB8(v99, v101);
      swift_endAccess();
      sub_100560634(v93);
      (*(v91 + 8))(v92, v67);
      v102 = *(v100 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated);
      v103 = __OFADD__(v102, 1);
      v104 = v102 + 1;
      if (v103)
      {
        __break(1u);
        goto LABEL_41;
      }

      *(v100 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated) = v104;
      v70 = v222;
    }

    else
    {
      v67 = v223;
      (*(v219 + 8))(v73, v223);
      v70 = v222;
      v69 = v231;
      v64 = v207;
    }
  }

  v105 = v214;
  SFAirDropReceive.Transfer.networkMetrics.getter();
  v106 = v215;
  SFAirDrop.NetworkMetrics.uploadFinish.getter();
  v225(v105, v227);
  v107 = v224(v106, 1, v67);
  v108 = v232;
  if (v107 != 1)
  {
    v109 = v219;
    (*(v219 + 32))(v218, v106, v67);
    v110 = v208;
    SFAirDropReceive.Transfer.id.getter();
    swift_beginAccess();
    v111 = *(v69 + 48);
    if (!*(v111 + 16) || (v112 = sub_100570848(v110), (v113 & 1) == 0))
    {
      swift_endAccess();
      (*(v229 + 8))(v110, v228);
      (*(v109 + 8))(v218, v223);
      goto LABEL_27;
    }

    v114 = *(v111 + 56) + v230[9] * v112;
    v115 = v196;
    sub_10056056C(v114, v196);
    v116 = v115;
    v117 = v197;
    sub_1005605D0(v116, v197);
    swift_endAccess();
    v118 = *(v229 + 8);
    v215 = (v229 + 8);
    v214 = v118;
    (v118)(v110, v228);
    v119 = v108[7];
    v120 = v195;
    sub_1002E4E88(v117 + v119, v195);
    v121 = v223;
    if (v224(v120, 1, v223) != 1)
    {
      (*(v109 + 8))(v218, v121);
      sub_100005508(v120, &qword_10097A7F0, &unk_1007FB600);
      v141 = v117;
      goto LABEL_26;
    }

    sub_100005508(v120, &qword_10097A7F0, &unk_1007FB600);
    sub_100005508(v117 + v119, &qword_10097A7F0, &unk_1007FB600);
    (*(v109 + 16))(v117 + v119, v218, v121);
    (*(v109 + 56))(v117 + v119, 0, 1, v121);
    v122 = v203;
    SFAirDropReceive.Transfer.networkMetrics.getter();
    v67 = SFAirDrop.NetworkMetrics.uploadURLCount.getter();
    v225(v122, v227);
    *(v117 + v108[6]) = v67;
    Date.timeIntervalSince(_:)();
    v2 = v123;
    v1 = *(v117 + v108[5]);
    if (qword_100973A48 == -1)
    {
LABEL_18:
      v207 = v64;
      v124 = type metadata accessor for Logger();
      sub_10000C4AC(v124, qword_1009833E8);
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 134218496;
        *(v127 + 4) = v2;
        *(v127 + 12) = 2048;
        *(v127 + 14) = v1;
        *(v127 + 22) = 2048;
        *(v127 + 24) = v1 / v2;
        _os_log_impl(&_mh_execute_header, v125, v126, "AirDrop receive performance - duration %f - totalBytes %f - bytesPerSecond %f", v127, 0x20u);
      }

      v128 = String._bridgeToObjectiveC()();
      v129 = String._bridgeToObjectiveC()();
      v130 = [*(v69 + 16) discoverableLevel];
      sub_10055FE14();
      v132 = v131;
      sub_10027FD18(_swiftEmptyArrayStorage);
      v133 = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_100085D2C(v128, v129, 0, v130, v132 & 1, v133, v1 / v2, v1);

      if (v67 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v70 = v222;
        v64 = v207;
        v108 = v232;
        if (v67 <= 0x7FFFFFFF)
        {
          sub_10008644C(0, v67);
          v134 = v221;
          SFAirDropReceive.Transfer.id.getter();
          v135 = v204;
          SFAirDrop.TransferIdentifier.id.getter();
          (v214)(v134, v228);
          v136 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v205 + 8))(v135, v206);
          sub_100086E1C(@"Receive", @"Stop", v136, 0, v1);

          SFAirDropReceive.Transfer.id.getter();
          v137 = v197;
          swift_beginAccess();
          v138 = v211;
          sub_10056056C(v137, v211);
          (v230[7])(v138, 0, 1, v108);
          v69 = v231;
          swift_beginAccess();
          sub_1002B0EB8(v138, v134);
          swift_endAccess();
          (*(v219 + 8))(v218, v223);
          v139 = *(v69 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted);
          v103 = __OFADD__(v139, 1);
          v140 = v139 + 1;
          if (!v103)
          {
            *(v69 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted) = v140;
            v141 = v137;
LABEL_26:
            sub_100560634(v141);
            goto LABEL_27;
          }

LABEL_44:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_41:
    swift_once();
    goto LABEL_18;
  }

  sub_100005508(v106, &qword_10097A7F0, &unk_1007FB600);
LABEL_27:
  v142 = v217;
  v143 = v216;
  v144 = v220;
  v145 = v212;
  SFAirDropReceive.Transfer.state.getter();
  v146 = v213;
  v147 = (*(v145 + 88))(v70, v213);
  if (v147 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    (*(v145 + 96))(v70, v146);
    v148 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
    v149 = v148[12];
    v150 = *&v70[v148[16] + 8];

    v151 = *&v70[v148[20]];

    v152 = *&v70[v148[24]];

    v153 = *&v70[v148[28]];

    v154 = v221;
    SFAirDropReceive.Transfer.id.getter();
    v155 = v211;
    (v230[7])(v211, 1, 1, v108);
    swift_beginAccess();
    sub_1002B0EB8(v155, v154);
    swift_endAccess();
    v156 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v156 - 8) + 8))(&v70[v149], v156);
LABEL_38:
    v189 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    (*(*(v189 - 8) + 8))(v70, v189);
    return;
  }

  if (v147 != enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    (*(v145 + 8))(v70, v146);
    return;
  }

  (*(v145 + 96))(v70, v146);
  v157 = sub_10028088C(&qword_10097A670, &unk_100804290);
  (*(v143 + 32))(v144, &v70[*(v157 + 48)], v142);
  v158 = v198;
  SFAirDropReceive.Transfer.id.getter();
  swift_beginAccess();
  v159 = *(v69 + 48);
  if (!*(v159 + 16) || (v160 = sub_100570848(v158), (v161 & 1) == 0))
  {
    swift_endAccess();
    (*(v229 + 8))(v158, v228);
    (*(v143 + 8))(v144, v142);
    goto LABEL_38;
  }

  v162 = v193;
  sub_10056056C(*(v159 + 56) + v230[9] * v160, v193);
  v163 = v162;
  v164 = v194;
  sub_1005605D0(v163, v194);
  swift_endAccess();
  v165 = v158;
  v166 = *(v229 + 8);
  v229 += 8;
  v166(v165, v228);
  v167 = v192;
  sub_1002E4E88(v164 + v108[7], v192);
  if (v224(v167, 1, v223) != 1)
  {
    sub_100560634(v164);
    (*(v143 + 8))(v220, v142);
    sub_100005508(v167, &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_38;
  }

  v227 = v166;
  v207 = v64;
  sub_100005508(v167, &qword_10097A7F0, &unk_1007FB600);
  sub_100560690(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(v143 + 16))(v168, v220, v142);
  v169 = _convertErrorToNSError(_:)();

  v170 = [v169 domain];
  if (!v170)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v170 = String._bridgeToObjectiveC()();
  }

  v171 = CFErrorCreate(kCFAllocatorDefault, v170, [v169 code], 0);

  v172 = String._bridgeToObjectiveC()();
  v173 = String._bridgeToObjectiveC()();
  v174 = v232;
  v175 = *(v232 + 20);
  v176 = *(v69 + 16);
  v226 = v169;
  v177 = v194;
  v178 = *(v194 + v175);
  v179 = [v176 discoverableLevel];
  sub_10055FE14();
  v181 = v180;
  v182 = v178;
  sub_10027FD18(_swiftEmptyArrayStorage);
  v183 = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000860D4(v172, v173, 0, v171, v179, v181 & 1, v183, v182);

  v184 = v221;
  SFAirDropReceive.Transfer.id.getter();
  v185 = v204;
  SFAirDrop.TransferIdentifier.id.getter();
  v227(v184, v228);
  v186 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v205 + 8))(v185, v206);
  sub_100086E1C(@"Receive", @"Failed", v186, 0, v182);

  SFAirDropReceive.Transfer.id.getter();
  v187 = v211;
  (v230[7])(v211, 1, 1, v174);
  swift_beginAccess();
  sub_1002B0EB8(v187, v184);
  swift_endAccess();

  sub_100560634(v177);
  (*(v216 + 8))(v220, v217);
  v188 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v188 - 8) + 8))(v222, v188);
}

uint64_t sub_10055EF80(char *a1)
{
  v2 = v1;
  v5 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID];
  v4 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID + 8];
  swift_beginAccess();
  v6 = *(v1 + 32);
  if (*(v6 + 16) && (v7 = sub_100012854(v5, v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v17 = v9;
  }

  else
  {
    swift_endAccess();
    v17 = _swiftEmptyArrayStorage;
  }

  v10 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (!*(*(v2 + 32) + 16))
  {
    v11 = *(v2 + 24);
    *(v2 + 24) = v17;
  }

  swift_beginAccess();

  v12 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_10057B4A0(v17, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v2 + 32) = v16;
  return swift_endAccess();
}

void sub_10055F118(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v79 - v14;
  v17 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID];
  v16 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID + 8];
  swift_beginAccess();
  v18 = *(v1 + 32);
  if (!*(v18 + 16) || (v19 = sub_100012854(v17, v16), (v20 & 1) == 0))
  {
    swift_endAccess();
    if (qword_100973A48 != -1)
    {
LABEL_34:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_1009833E8);
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v89[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_10000C4E4(v17, v16, v89);
      _os_log_impl(&_mh_execute_header, v33, v34, "No existing clients for bundleID %s", v35, 0xCu);
      sub_10000C60C(v36);
    }

    goto LABEL_18;
  }

  v83 = v17;
  v84 = v16;
  v81 = v8;
  v90 = *(*(v18 + 56) + 8 * v19);
  v21 = v90;
  swift_endAccess();
  v86 = v4;
  v87 = v2;
  v85 = v5;
  v80 = v13;
  v82 = v15;
  v17 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_id;
  v23 = v21 & 0xC000000000000001;
  swift_bridgeObjectRetain_n();
  v24 = 0;
  v25 = v21;
  while (1)
  {
    if (v22 == v24)
    {

      if (qword_100973A48 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000C4AC(v37, qword_1009833E8);
      v38 = a1;
      v33 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v89[0] = v41;
        *v40 = 136315138;
        type metadata accessor for UUID();
        sub_100560690(&qword_100978CE0, &type metadata accessor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = sub_10000C4E4(v42, v43, v89);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v33, v39, "No existing client for id %s", v40, 0xCu);
        sub_10000C60C(v41);
      }

LABEL_18:

      return;
    }

    v26 = v21 + 8 * v24;
    if (v23)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v17 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v27 = *(v26 + 32);
    }

    v16 = v27;
    v28 = a1;
    v29 = static UUID.== infix(_:_:)();

    if (v29)
    {
      break;
    }

    v30 = __OFADD__(v24++, 1);
    a1 = v28;
    v21 = v25;
    if (v30)
    {
      goto LABEL_33;
    }
  }

  if (v23)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v46 = v86;
    v47 = v87;
    v48 = v85;
    goto LABEL_29;
  }

  v46 = v86;
  v47 = v87;
  v48 = v85;
  if (v24 >= *(v17 + 16))
  {
    __break(1u);
    goto LABEL_61;
  }

  v45 = *(v26 + 32);
LABEL_29:
  v50 = v83;
  v49 = v84;

  v51 = v90;
  if (v90 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_37;
    }

LABEL_31:

    swift_beginAccess();

    sub_1002B1A90(v51, v50, v49);
    swift_endAccess();
LABEL_59:
    sub_100560178();

    return;
  }

  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_37:
  swift_beginAccess();

  sub_1002B1A90(0, v50, v49);
  swift_endAccess();
  v88 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_startTime;
  Date.timeIntervalSinceNow.getter();
  v53 = v52;
  v54 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate;
  swift_beginAccess();
  v55 = v82;
  sub_1002E4E88(v47 + v54, v82);
  v56 = v48[6];
  v57 = v56(v55, 1, v46);
  sub_100005508(v55, &qword_10097A7F0, &unk_1007FB600);
  v58 = 0.0;
  if (v57 == 1)
  {
LABEL_40:
    if (v58 > 0.0)
    {
      v65 = v58;
    }

    else
    {
      v65 = 0.0;
    }

    v67 = *&v45[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID];
    v66 = *&v45[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID + 8];
    v68._countAndFlagsBits = 0x6C7070612E6D6F63;
    v68._object = 0xEA00000000002E65;
    if (String.hasPrefix(_:)(v68))
    {
    }

    v69 = String._bridgeToObjectiveC()();

    Date.timeIntervalSince1970.getter();
    v71 = v70;
    if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v70 > -1.0)
      {
        if (v70 < 1.84467441e19)
        {
          v72 = *(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount);
          if (v72 >= 0xFFFFFFFF80000000)
          {
            if (v72 <= 0x7FFFFFFF)
            {
              v73 = *(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_currentDisplayableEndpointCount);
              if (v73 >= 0xFFFFFFFF80000000)
              {
                if (v73 <= 0x7FFFFFFF)
                {
                  v74 = *(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated);
                  if (v74 >= 0xFFFFFFFF80000000)
                  {
                    if (v74 <= 0x7FFFFFFF)
                    {
                      v75 = *(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted);
                      if (v75 >= 0xFFFFFFFF80000000)
                      {
                        if (v75 <= 0x7FFFFFFF)
                        {
                          v76 = [*(v47 + 16) discoverableLevel];
                          if (v76 >= 0xFFFFFFFF80000000)
                          {
                            v77 = v76;
                            if (v76 <= 0x7FFFFFFF)
                            {
                              sub_10055FE14();
                              sub_1000868F0(0, 0, v69, v71, v72, v73, v74, v75, v53 * -1000.0, v65, v77, v78 & 1);

                              goto LABEL_59;
                            }

LABEL_73:
                            __break(1u);
                            goto LABEL_74;
                          }

LABEL_72:
                          __break(1u);
                          goto LABEL_73;
                        }

LABEL_71:
                        __break(1u);
                        goto LABEL_72;
                      }

LABEL_70:
                      __break(1u);
                      goto LABEL_71;
                    }

LABEL_69:
                    __break(1u);
                    goto LABEL_70;
                  }

LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }

LABEL_67:
                __break(1u);
                goto LABEL_68;
              }

LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v59 = v48[2];
  v84 = v45;
  v60 = v81;
  v59(v81, &v45[v88], v46, 0.0);
  v61 = v80;
  sub_1002E4E88(v47 + v54, v80);
  if (v56(v61, 1, v46) != 1)
  {
    Date.timeIntervalSince(_:)();
    v63 = v62;
    v64 = v48[1];
    v64(v60, v46);
    v64(v61, v46);
    v58 = v63 * -1000.0;
    v45 = v84;
    goto LABEL_40;
  }

LABEL_74:
  __break(1u);
}

uint64_t sub_10055FA90(uint64_t a1)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate;
  swift_beginAccess();
  sub_1002E4E88(v1 + v10, v7);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  sub_100005508(v7, &qword_10097A7F0, &unk_1007FB600);
  if (v13 == 1)
  {
    Date.init()();
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  else
  {
    sub_1002E4E88(v1 + v10, v9);
  }

  swift_beginAccess();
  sub_1003561CC(v9, v1 + v10);
  result = swift_endAccess();
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_currentDisplayableEndpointCount) = a1;
  v15 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount);
  if (v15 <= a1)
  {
    v15 = a1;
  }

  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount) = v15;
  return result;
}

uint64_t sub_10055FC6C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return v1;
  }

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 0;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v1 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID);
    v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID + 8);

    swift_unknownObjectRelease();
    return v1;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = (*(v1 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_bundleID);
    v1 = *v3;
    v4 = v3[1];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10055FD4C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009833E8);
  v1 = sub_10000C4AC(v0, qword_1009833E8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10055FE14()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 32) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v25 = *(v0 + 32);
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v24 = v3;
  if (v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_4:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_36;
    }

    if (v11 >= v8)
    {

      v20 = *(v10 + 2);
      if (v20)
      {
        v21 = v10 + 32;
        v22 = 1;
        do
        {
          v23 = *v21++;
          v22 &= v23;
          --v20;
        }

        while (v20);
      }

      return;
    }

    v7 = *(v3 + 8 * v11);
    ++v9;
  }

  while (!v7);
  v9 = v11;
LABEL_8:
  while (1)
  {
    v26 = v10;
    v12 = *(*(v25 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v13 = v12 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13)
    {
      break;
    }

    v15 = 1;
LABEL_23:

    v10 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10028E848(0, *(v26 + 2) + 1, 1, v26);
    }

    v19 = *(v10 + 2);
    v18 = *(v10 + 3);
    if (v19 >= v18 >> 1)
    {
      v10 = sub_10028E848((v18 > 1), v19 + 1, 1, v10);
    }

    v7 &= v7 - 1;
    *(v10 + 2) = v19 + 1;
    v10[v19 + 32] = v15;
    v3 = v24;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v14 = 0;
  v15 = 1;
  while ((v12 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_34;
    }

LABEL_17:
    if (v15)
    {
      v15 = v16[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_applicationServiceEndpointsOnly];
    }

    else
    {
      v15 = 0;
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_23;
    }
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v16 = *(v12 + 8 * v14 + 32);
  v17 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_17;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

char *sub_100560090(uint64_t a1)
{
  *(v1 + 3) = 0;
  *(v1 + 4) = &_swiftEmptyDictionarySingleton;
  *(v1 + 5) = &_swiftEmptyDictionarySingleton;
  *(v1 + 6) = &_swiftEmptyDictionarySingleton;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_currentDisplayableEndpointCount] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted] = 0;
  v5(&v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_bonjourServerStartDate], 1, 1, v4);
  *(v1 + 2) = a1;
  return v1;
}

uint64_t sub_100560178()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9[-v3];
  result = swift_beginAccess();
  if (!*(*(v0 + 32) + 16))
  {
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_maxDisplayableEndpointCount) = 0;
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_currentDisplayableEndpointCount) = 0;
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersInitiated) = 0;
    *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_transfersCompleted) = 0;
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate;
    swift_beginAccess();
    sub_1003561CC(v4, v0 + v7);
    swift_endAccess();
    v8 = *(v0 + 24);
    *(v0 + 24) = 0;
  }

  return result;
}

uint64_t sub_1005602BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_firstDiscoveredDate, &qword_10097A7F0, &unk_1007FB600);
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_bonjourServerStartDate, &qword_10097A7F0, &unk_1007FB600);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1005603B0()
{
  sub_1002A6BEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1005604C8()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1002A6BEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10056056C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005605D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100560634(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100560690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005606D8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009835C8);
  v1 = sub_10000C4AC(v0, qword_1009835C8);
  if (qword_100973740 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005607A0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (!v2 || (sub_10056089C() & 1) != 0)
  {
    return 1;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v0 BOOLForKey:v4];

  if (!v5 || (sub_1005609D0() & 1) == 0)
  {
    return 0;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v0 BOOLForKey:v6];

  return v7 ^ 1;
}

uint64_t sub_10056089C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 integerForKey:v3];

  if (v4 < 2)
  {
    return 1;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v0 BOOLForKey:v6];

  if (!v7 || (sub_1005609D0() & 1) == 0)
  {
    return 0;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [v0 BOOLForKey:v8];

  return v9 ^ 1;
}

uint64_t sub_1005609D0()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v23);
LABEL_5:
    v6 = String._bridgeToObjectiveC()();
    v7 = [v1 BOOLForKey:v6];

    return v7;
  }

  v23 = 0u;
  v24 = 0u;
  sub_100456B48(&v23);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v0 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v23);
    goto LABEL_5;
  }

  v23 = 0u;
  v24 = 0u;
  sub_100456B48(&v23);
  if (qword_100973A50 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_1009835C8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Requesting value of PKTextInputSettings.supportedKeyboardLocaleExists on main thread...", v12, 2u);
  }

  if ([objc_opt_self() isMainThread])
  {
    sub_100560E10();
    v13 = 0;
    v14 = 0;
LABEL_14:
    v19 = String._bridgeToObjectiveC()();
    v7 = [v1 BOOLForKey:v19];

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v20, v21, "Received value of PKTextInputSettings.supportedKeyboardLocaleExists: %{BOOL}d", v22, 8u);
    }

    sub_1002F5A40(v13, v14);
    return v7;
  }

  sub_1002DDC10();
  v15 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v16 = swift_allocObject();
  v13 = sub_100561E3C;
  *(v16 + 16) = sub_100561E3C;
  *(v16 + 24) = v14;
  v25 = sub_100561E60;
  v26 = v16;
  *&v23 = _NSConcreteStackBlock;
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_100695A9C;
  *(&v24 + 1) = &unk_1008E6FE0;
  v17 = _Block_copy(&v23);
  v18 = v1;

  dispatch_sync(v15, v17);

  _Block_release(v17);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_100560E10()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002DDC10();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = [objc_opt_self() sharedSettings];
    v9 = [v8 supportedKeyboardLocaleExists];

    v10 = String._bridgeToObjectiveC()();
    [v1 setBool:v9 forKey:v10];
  }

  else
  {
    __break(1u);
  }
}

void sub_100560F98(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setInteger:a1 forKey:v3];

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v8 = v6;
    v7 = String._bridgeToObjectiveC()();
    [v8 setInteger:a1 forKey:v7];
  }
}

void sub_1005610DC(char a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setBool:a1 & 1 forKey:v3];

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v8 = v6;
    v7 = String._bridgeToObjectiveC()();
    [v8 setBool:a1 & 1 forKey:v7];
  }
}

void sub_100561220(char a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setBool:a1 & 1 forKey:v3];

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v8 = v6;
    v7 = String._bridgeToObjectiveC()();
    [v8 setBool:a1 & 1 forKey:v7];
  }
}

void sub_100561364(char a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setBool:a1 & 1 forKey:v3];

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v8 = v6;
    v7 = String._bridgeToObjectiveC()();
    [v8 setBool:a1 & 1 forKey:v7];
  }
}

double sub_1005614A0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(v7);
    v3 = String._bridgeToObjectiveC()();
    [v0 doubleForKey:v3];
    v5 = v4;
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_100456B48(v7);
    return 1.5;
  }

  return v5;
}

void sub_100561584()
{
  v1 = v0;
  if (qword_100973A50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009835C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "setting Last Seen UI to Current", v5, 2u);
  }

  sub_1005610DC(1);
  sub_100560F98(2);
  sub_100561364(0);
  v6 = [objc_opt_self() sharedSettings];
  v7 = [v6 supportedKeyboardLocaleExists];

  if (v7)
  {
    sub_100561220(1);
  }

  v8 = String._bridgeToObjectiveC()();
  [v1 removeObjectForKey:v8];
}

void sub_100561714()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v2];

  v3 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v3];

  v4 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v4];

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    [v8 removeObjectForKey:v9];

    v10 = v8;
    v11 = String._bridgeToObjectiveC()();
    [v10 removeObjectForKey:v11];

    v12 = v10;
    v13 = String._bridgeToObjectiveC()();
    [v12 removeObjectForKey:v13];

    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    [v14 removeObjectForKey:v15];
  }

  v16 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v16];
}

void sub_1005619B4()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];

  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v29);
    if (v4)
    {
      v7 = v4;
      v8 = String._bridgeToObjectiveC()();
      v9 = [v0 BOOLForKey:v8];

      v10 = String._bridgeToObjectiveC()();
      [v7 setBool:v9 forKey:v10];
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    sub_100456B48(&v29);
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v0 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v29);
    if (v4)
    {
      v13 = v4;
      v14 = String._bridgeToObjectiveC()();
      v15 = [v0 integerForKey:v14];

      v16 = String._bridgeToObjectiveC()();
      [v13 setInteger:v15 forKey:v16];
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    sub_100456B48(&v29);
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [v0 objectForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v29);
    if (v4)
    {
      v19 = v4;
      v20 = String._bridgeToObjectiveC()();
      v21 = [v0 BOOLForKey:v20];

      v22 = String._bridgeToObjectiveC()();
      [v19 setBool:v21 forKey:v22];
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    sub_100456B48(&v29);
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v0 objectForKey:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100456B48(&v29);
    if (v4)
    {
      v25 = v4;
      v26 = String._bridgeToObjectiveC()();
      v27 = [v0 BOOLForKey:v26];

      v28 = String._bridgeToObjectiveC()();
      [v25 setBool:v27 forKey:v28];
    }
  }

  else
  {

    v29 = 0u;
    v30 = 0u;
    sub_100456B48(&v29);
  }
}

uint64_t type metadata accessor for SDAirDropMessage()
{
  result = qword_100983668;
  if (!qword_100983668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100561EB4()
{
  sub_1005621BC(319, &qword_100983678, _s12HelloRequestVMa);
  if (v0 <= 0x3F)
  {
    sub_10056209C();
    if (v1 <= 0x3F)
    {
      sub_1005620CC();
      if (v2 <= 0x3F)
      {
        sub_1005620FC();
        if (v3 <= 0x3F)
        {
          sub_1005621BC(319, &qword_100983698, _s10AskRequestVMa);
          if (v4 <= 0x3F)
          {
            sub_10056212C();
            if (v5 <= 0x3F)
            {
              sub_1005621BC(319, &qword_1009836A8, _s13UploadRequestVMa);
              if (v6 <= 0x3F)
              {
                sub_10056215C();
                if (v7 <= 0x3F)
                {
                  sub_1005621BC(319, &qword_1009836B8, _s15ExchangeRequestVMa);
                  if (v8 <= 0x3F)
                  {
                    sub_1005621BC(319, &qword_1009836C0, _s16ExchangeResponseVMa);
                    if (v9 <= 0x3F)
                    {
                      sub_10056218C();
                      if (v10 <= 0x3F)
                      {
                        sub_1005621BC(319, &unk_1009836D0, _s12ErrorRequestVMa);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_10056209C()
{
  result = qword_100983680;
  if (!qword_100983680)
  {
    result = &_s13HelloResponseVN;
    atomic_store(&_s13HelloResponseVN, &qword_100983680);
  }

  return result;
}

ValueMetadata *sub_1005620CC()
{
  result = qword_100983688;
  if (!qword_100983688)
  {
    result = &_s15DiscoverRequestVN;
    atomic_store(&_s15DiscoverRequestVN, &qword_100983688);
  }

  return result;
}

ValueMetadata *sub_1005620FC()
{
  result = qword_100983690;
  if (!qword_100983690)
  {
    result = &_s16DiscoverResponseVN;
    atomic_store(&_s16DiscoverResponseVN, &qword_100983690);
  }

  return result;
}

ValueMetadata *sub_10056212C()
{
  result = qword_1009836A0;
  if (!qword_1009836A0)
  {
    result = &_s11AskResponseVN;
    atomic_store(&_s11AskResponseVN, &qword_1009836A0);
  }

  return result;
}

void *sub_10056215C()
{
  result = qword_1009836B0;
  if (!qword_1009836B0)
  {
    result = &type metadata for Data;
    atomic_store(&type metadata for Data, &qword_1009836B0);
  }

  return result;
}

ValueMetadata *sub_10056218C()
{
  result = qword_1009836C8;
  if (!qword_1009836C8)
  {
    result = &_s20IdentityShareRequestVN;
    atomic_store(&_s20IdentityShareRequestVN, &qword_1009836C8);
  }

  return result;
}

void sub_1005621BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100562218()
{
  v1 = v0;
  v2 = _s12ErrorRequestVMa();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s16ExchangeResponseVMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15ExchangeRequestVMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s13UploadRequestVMa();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s10AskRequestVMa();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s12HelloRequestVMa();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SDAirDropMessage();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003CC814(v1, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *v29;
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      *&v63 = 0x6572204F4C4C4548;
      *(&v63 + 1) = 0xEF2065736E6F7073;
      LODWORD(v61) = v53;
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);
      goto LABEL_10;
    case 2u:
      v44 = *v29;
      v45 = *(v29 + 1);
      v46 = *(v29 + 2);
      v47 = v29[24];
      v32 = sub_10042304C(*v29, v45);
      sub_10028BCC0(v44, v45);
      return v32;
    case 3u:
      v48 = *(v29 + 7);
      v69 = *(v29 + 6);
      v70 = v48;
      v71 = *(v29 + 8);
      v72 = v29[144];
      v49 = *(v29 + 3);
      v65 = *(v29 + 2);
      v66 = v49;
      v50 = *(v29 + 5);
      v67 = *(v29 + 4);
      v68 = v50;
      v51 = *(v29 + 1);
      v63 = *v29;
      v64 = v51;
      v32 = sub_1004226C0();
      sub_1003CB878(&v63);
      return v32;
    case 4u:
      v33 = _s10AskRequestVMa;
      sub_100566E44(v29, v21, _s10AskRequestVMa);
      v32 = sub_1005A3B18();
      v34 = v21;
      goto LABEL_14;
    case 5u:
      v55 = *(v29 + 5);
      v67 = *(v29 + 4);
      v68 = v55;
      *&v69 = *(v29 + 12);
      v56 = *(v29 + 1);
      v63 = *v29;
      v64 = v56;
      v57 = *(v29 + 3);
      v65 = *(v29 + 2);
      v66 = v57;
      v32 = sub_1005A43F8();
      sub_10030D74C(&v63);
      return v32;
    case 6u:
      v33 = _s13UploadRequestVMa;
      sub_100566E44(v29, v17, _s13UploadRequestVMa);
      sub_100478BA8();
      v32 = v58;
      v34 = v17;
      goto LABEL_14;
    case 7u:
    case 0xBu:
    case 0xDu:
      v30 = *v29;
      v31 = *(v29 + 1);
      v32 = Data.description.getter();
      sub_100026AC0(v30, v31);
      return v32;
    case 8u:
      v33 = _s15ExchangeRequestVMa;
      sub_100566E44(v29, v13, _s15ExchangeRequestVMa);
      v32 = sub_10058280C();
      v34 = v13;
      goto LABEL_14;
    case 9u:
      sub_100566E44(v29, v9, _s16ExchangeResponseVMa);
      v32 = sub_100582C08();
      v34 = v9;
      v59 = _s16ExchangeResponseVMa;
      goto LABEL_15;
    case 0xAu:
      v36 = *(v29 + 1);
      v35 = *(v29 + 2);
      v38 = *(v29 + 3);
      v37 = *(v29 + 4);
      v40 = *(v29 + 5);
      v39 = *(v29 + 6);
      v41 = *(v29 + 7);
      v42 = *(v29 + 9);
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      v43._object = 0x800000010078C5B0;
      v43._countAndFlagsBits = 0xD00000000000002ALL;
      String.append(_:)(v43);
      v61 = v35;
      v62 = v38;
      sub_1002A9924(v35, v38);
      sub_1002F4C88();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      sub_10028BCC0(v61, v62);

      sub_10028BCC0(v35, v38);
      sub_100026AC0(v37, v40);
      sub_100026AC0(v39, v41);
LABEL_10:

      return v63;
    case 0xCu:
      v33 = _s12ErrorRequestVMa;
      sub_100566E44(v29, v5, _s12ErrorRequestVMa);
      v32 = sub_1005462B4();
      v34 = v5;
      goto LABEL_14;
    default:
      v33 = _s12HelloRequestVMa;
      sub_100566E44(v29, v25, _s12HelloRequestVMa);
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(&v63, "HELLO request ");
      HIBYTE(v63) = -18;
      LODWORD(v61) = *&v25[*(v22 + 20)];
      v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v52);

      v32 = v63;
      v34 = v25;
LABEL_14:
      v59 = v33;
LABEL_15:
      sub_100566CCC(v34, v59);
      return v32;
  }
}

uint64_t sub_100562870()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009835E0);
  v1 = sub_10000C4AC(v0, qword_1009835E0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100562938(char a1)
{
  result = 0x7165526F6C6C6568;
  switch(a1)
  {
    case 1:
      v3 = 0x526F6C6C6568;
      goto LABEL_12;
    case 2:
      result = 0x7265766F63736964;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x65757165526B7361;
      break;
    case 5:
      result = 0x6F707365526B7361;
      break;
    case 6:
    case 7:
      result = 0x655264616F6C7075;
      break;
    case 8:
      result = 0x65676E6168637865;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x716552726F727265;
      break;
    case 13:
      v3 = 0x52726F727265;
LABEL_12:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100562AE4(void *a1)
{
  v2 = sub_10028088C(&qword_100983848, &qword_100809D68);
  v175 = *(v2 - 8);
  v176 = v2;
  v3 = *(v175 + 64);
  __chkstk_darwin(v2);
  v173 = &v125 - v4;
  v174 = sub_10028088C(&qword_100983850, &qword_100809D70);
  v172 = *(v174 - 8);
  v5 = *(v172 + 64);
  __chkstk_darwin(v174);
  v171 = &v125 - v6;
  v169 = _s12ErrorRequestVMa();
  v7 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v170 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_100983858, &qword_100809D78);
  v167 = *(v9 - 8);
  v168 = v9;
  v10 = *(v167 + 64);
  __chkstk_darwin(v9);
  v164 = &v125 - v11;
  v12 = sub_10028088C(&qword_100983860, &qword_100809D80);
  v165 = *(v12 - 8);
  v166 = v12;
  v13 = *(v165 + 64);
  __chkstk_darwin(v12);
  v163 = &v125 - v14;
  v15 = sub_10028088C(&qword_100983868, &qword_100809D88);
  v161 = *(v15 - 8);
  v162 = v15;
  v16 = *(v161 + 64);
  __chkstk_darwin(v15);
  v160 = &v125 - v17;
  v158 = _s16ExchangeResponseVMa(0);
  v18 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v159 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10028088C(&qword_100983870, &qword_100809D90);
  v156 = *(v20 - 8);
  v157 = v20;
  v21 = *(v156 + 64);
  __chkstk_darwin(v20);
  v155 = &v125 - v22;
  v153 = _s15ExchangeRequestVMa(0);
  v23 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v153);
  v154 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10028088C(&qword_100983878, &qword_100809D98);
  v151 = *(v25 - 8);
  v152 = v25;
  v26 = *(v151 + 64);
  __chkstk_darwin(v25);
  v149 = &v125 - v27;
  v150 = sub_10028088C(&qword_100983880, &qword_100809DA0);
  v148 = *(v150 - 8);
  v28 = *(v148 + 64);
  __chkstk_darwin(v150);
  v147 = &v125 - v29;
  v143 = _s13UploadRequestVMa();
  v30 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v146 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10028088C(&qword_100983888, &qword_100809DA8);
  v144 = *(v32 - 8);
  v145 = v32;
  v33 = *(v144 + 64);
  __chkstk_darwin(v32);
  v142 = &v125 - v34;
  v35 = sub_10028088C(&qword_100983890, &qword_100809DB0);
  v140 = *(v35 - 8);
  v141 = v35;
  v36 = *(v140 + 64);
  __chkstk_darwin(v35);
  v138 = &v125 - v37;
  v134 = _s10AskRequestVMa();
  v38 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v136 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10028088C(&qword_100983898, &qword_100809DB8);
  v137 = *(v139 - 8);
  v40 = *(v137 + 64);
  __chkstk_darwin(v139);
  v135 = &v125 - v41;
  v42 = sub_10028088C(&qword_1009838A0, &qword_100809DC0);
  v132 = *(v42 - 8);
  v133 = v42;
  v43 = *(v132 + 64);
  __chkstk_darwin(v42);
  v131 = &v125 - v44;
  v45 = sub_10028088C(&qword_1009838A8, &qword_100809DC8);
  v129 = *(v45 - 8);
  v130 = v45;
  v46 = *(v129 + 64);
  __chkstk_darwin(v45);
  v127 = &v125 - v47;
  v128 = sub_10028088C(&qword_1009838B0, &qword_100809DD0);
  v126 = *(v128 - 8);
  v48 = *(v126 + 64);
  __chkstk_darwin(v128);
  v125 = &v125 - v49;
  v50 = _s12HelloRequestVMa();
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = &v125 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SDAirDropMessage();
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v57 = &v125 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10028088C(&qword_1009838B8, &qword_100809DD8);
  v59 = *(v58 - 8);
  v178 = v58;
  v179 = v59;
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v62 = &v125 - v61;
  v63 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100566D9C();
  v177 = v62;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1003CC814(v200, v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v102 = *v57;
      v103 = v57[4];
      LOBYTE(v190) = 1;
      sub_100567398();
      v104 = v127;
      v106 = v177;
      v105 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LODWORD(v190) = v102;
      BYTE4(v190) = v103;
      sub_1005675E4();
      v107 = v130;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v129 + 8))(v104, v107);
      return (*(v179 + 8))(v106, v105);
    case 2u:
      v86 = *v57;
      v87 = *(v57 + 1);
      v88 = *(v57 + 2);
      v89 = v57[24];
      LOBYTE(v190) = 2;
      sub_1005672F0();
      v90 = v131;
      v92 = v177;
      v91 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v190 = v86;
      *(&v190 + 1) = v87;
      *&v191 = v88;
      BYTE8(v191) = v89;
      sub_100567590();
      v93 = v133;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v132 + 8))(v90, v93);
      (*(v179 + 8))(v92, v91);
      return sub_10028BCC0(v86, v87);
    case 3u:
      v94 = *(v57 + 7);
      v196 = *(v57 + 6);
      v197 = v94;
      v198 = *(v57 + 8);
      v199 = v57[144];
      v95 = *(v57 + 3);
      v192 = *(v57 + 2);
      v193 = v95;
      v96 = *(v57 + 5);
      v194 = *(v57 + 4);
      v195 = v96;
      v97 = *(v57 + 1);
      v190 = *v57;
      v191 = v97;
      LOBYTE(v180) = 3;
      sub_100567248();
      v98 = v135;
      v100 = v177;
      v99 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v186 = v196;
      v187 = v197;
      v188 = v198;
      v189 = v199;
      v182 = v192;
      v183 = v193;
      v184 = v194;
      v185 = v195;
      v180 = v190;
      v181 = v191;
      sub_10056753C();
      v101 = v139;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v137 + 8))(v98, v101);
      (*(v179 + 8))(v100, v99);
      return sub_1003CB878(&v190);
    case 4u:
      v76 = v136;
      sub_100566E44(v57, v136, _s10AskRequestVMa);
      LOBYTE(v190) = 4;
      sub_1005671F4();
      v77 = v138;
      v79 = v177;
      v78 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838F0, _s10AskRequestVMa);
      v80 = v141;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v140 + 8))(v77, v80);
      v81 = _s10AskRequestVMa;
      goto LABEL_17;
    case 5u:
      v108 = *(v57 + 5);
      v194 = *(v57 + 4);
      v195 = v108;
      *&v196 = *(v57 + 12);
      v109 = *(v57 + 1);
      v190 = *v57;
      v191 = v109;
      v110 = *(v57 + 3);
      v192 = *(v57 + 2);
      v193 = v110;
      LOBYTE(v180) = 5;
      sub_10056714C();
      v111 = v142;
      v113 = v177;
      v112 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v184 = v194;
      v185 = v195;
      *&v186 = v196;
      v180 = v190;
      v181 = v191;
      v182 = v192;
      v183 = v193;
      sub_1005674E8();
      v114 = v145;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v144 + 8))(v111, v114);
      (*(v179 + 8))(v113, v112);
      return sub_10030D74C(&v190);
    case 6u:
      v76 = v146;
      sub_100566E44(v57, v146, _s13UploadRequestVMa);
      LOBYTE(v190) = 6;
      sub_1005670F8();
      v115 = v147;
      v79 = v177;
      v78 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838E0, _s13UploadRequestVMa);
      v116 = v150;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v148 + 8))(v115, v116);
      v81 = _s13UploadRequestVMa;
      goto LABEL_17;
    case 7u:
      v69 = *v57;
      v70 = *(v57 + 1);
      LOBYTE(v190) = 7;
      sub_1005670A4();
      v71 = v149;
      v73 = v177;
      v72 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v190 = v69;
      *(&v190 + 1) = v70;
      sub_1002F3198();
      v74 = v152;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v75 = v151;
      goto LABEL_13;
    case 8u:
      v76 = v154;
      sub_100566E44(v57, v154, _s15ExchangeRequestVMa);
      LOBYTE(v190) = 8;
      sub_100567050();
      v123 = v155;
      v79 = v177;
      v78 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838D8, _s15ExchangeRequestVMa);
      v124 = v157;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v156 + 8))(v123, v124);
      v81 = _s15ExchangeRequestVMa;
      goto LABEL_17;
    case 9u:
      v76 = v159;
      sub_100566E44(v57, v159, _s16ExchangeResponseVMa);
      LOBYTE(v190) = 9;
      sub_100566FFC();
      v84 = v160;
      v79 = v177;
      v78 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838D0, _s16ExchangeResponseVMa);
      v85 = v162;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v161 + 8))(v84, v85);
      v81 = _s16ExchangeResponseVMa;
      goto LABEL_17;
    case 0xAu:
      v117 = *(v57 + 3);
      v192 = *(v57 + 2);
      v193 = v117;
      v194 = *(v57 + 4);
      *&v195 = *(v57 + 10);
      v118 = *(v57 + 1);
      v190 = *v57;
      v191 = v118;
      LOBYTE(v180) = 10;
      sub_100566F54();
      v119 = v163;
      v121 = v177;
      v120 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v192;
      v183 = v193;
      v184 = v194;
      *&v185 = v195;
      v180 = v190;
      v181 = v191;
      sub_100567494();
      v122 = v166;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v165 + 8))(v119, v122);
      (*(v179 + 8))(v121, v120);
      return sub_1003398D8(&v190);
    case 0xBu:
      v69 = *v57;
      v70 = *(v57 + 1);
      LOBYTE(v190) = 11;
      sub_100566F00();
      v71 = v164;
      v73 = v177;
      v72 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v190 = v69;
      *(&v190 + 1) = v70;
      sub_1002F3198();
      v74 = v168;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v75 = v167;
      goto LABEL_13;
    case 0xCu:
      v76 = v170;
      sub_100566E44(v57, v170, _s12ErrorRequestVMa);
      LOBYTE(v190) = 12;
      sub_100566EAC();
      v82 = v171;
      v79 = v177;
      v78 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_1009838C0, _s12ErrorRequestVMa);
      v83 = v174;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v172 + 8))(v82, v83);
      v81 = _s12ErrorRequestVMa;
LABEL_17:
      sub_100566CCC(v76, v81);
      result = (*(v179 + 8))(v79, v78);
      break;
    case 0xDu:
      v69 = *v57;
      v70 = *(v57 + 1);
      LOBYTE(v190) = 13;
      sub_100566DF0();
      v71 = v173;
      v73 = v177;
      v72 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v190 = v69;
      *(&v190 + 1) = v70;
      sub_1002F3198();
      v74 = v176;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v75 = v175;
LABEL_13:
      (*(v75 + 8))(v71, v74);
      (*(v179 + 8))(v73, v72);
      result = sub_100026AC0(v69, v70);
      break;
    default:
      sub_100566E44(v57, v53, _s12HelloRequestVMa);
      LOBYTE(v190) = 0;
      sub_100567440();
      v64 = v125;
      v66 = v177;
      v65 = v178;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100567638(&qword_100983910, _s12HelloRequestVMa);
      v67 = v128;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v126 + 8))(v64, v67);
      sub_100566CCC(v53, _s12HelloRequestVMa);
      result = (*(v179 + 8))(v66, v65);
      break;
  }

  return result;
}

uint64_t sub_1005640C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v214 = a2;
  v195 = sub_10028088C(&qword_100983700, &qword_100809CE8);
  v212 = *(v195 - 8);
  v3 = *(v212 + 64);
  __chkstk_darwin(v195);
  v207 = &v154 - v4;
  v194 = sub_10028088C(&qword_100983708, &qword_100809CF0);
  v208 = *(v194 - 8);
  v5 = *(v208 + 64);
  __chkstk_darwin(v194);
  v206 = &v154 - v6;
  v193 = sub_10028088C(&qword_100983710, &qword_100809CF8);
  v192 = *(v193 - 8);
  v7 = *(v192 + 64);
  __chkstk_darwin(v193);
  v205 = &v154 - v8;
  v191 = sub_10028088C(&qword_100983718, &qword_100809D00);
  v190 = *(v191 - 8);
  v9 = *(v190 + 64);
  __chkstk_darwin(v191);
  v204 = &v154 - v10;
  v189 = sub_10028088C(&qword_100983720, &qword_100809D08);
  v188 = *(v189 - 8);
  v11 = *(v188 + 64);
  __chkstk_darwin(v189);
  v203 = &v154 - v12;
  v187 = sub_10028088C(&qword_100983728, &qword_100809D10);
  v186 = *(v187 - 8);
  v13 = *(v186 + 64);
  __chkstk_darwin(v187);
  v202 = &v154 - v14;
  v185 = sub_10028088C(&qword_100983730, &qword_100809D18);
  v184 = *(v185 - 8);
  v15 = *(v184 + 64);
  __chkstk_darwin(v185);
  v201 = &v154 - v16;
  v183 = sub_10028088C(&qword_100983738, &qword_100809D20);
  v182 = *(v183 - 8);
  v17 = *(v182 + 64);
  __chkstk_darwin(v183);
  v200 = &v154 - v18;
  v181 = sub_10028088C(&qword_100983740, &qword_100809D28);
  v180 = *(v181 - 8);
  v19 = *(v180 + 64);
  __chkstk_darwin(v181);
  v199 = &v154 - v20;
  v179 = sub_10028088C(&qword_100983748, &qword_100809D30);
  v178 = *(v179 - 8);
  v21 = *(v178 + 64);
  __chkstk_darwin(v179);
  v197 = &v154 - v22;
  v177 = sub_10028088C(&qword_100983750, &qword_100809D38);
  v176 = *(v177 - 8);
  v23 = *(v176 + 64);
  __chkstk_darwin(v177);
  v211 = &v154 - v24;
  v175 = sub_10028088C(&qword_100983758, &qword_100809D40);
  v174 = *(v175 - 8);
  v25 = *(v174 + 64);
  __chkstk_darwin(v175);
  v198 = &v154 - v26;
  v173 = sub_10028088C(&qword_100983760, &qword_100809D48);
  v172 = *(v173 - 8);
  v27 = *(v172 + 64);
  __chkstk_darwin(v173);
  v209 = &v154 - v28;
  v171 = sub_10028088C(&qword_100983768, &qword_100809D50);
  v170 = *(v171 - 8);
  v29 = *(v170 + 64);
  __chkstk_darwin(v171);
  v196 = &v154 - v30;
  v210 = sub_10028088C(&qword_100983770, &unk_100809D58);
  v213 = *(v210 - 8);
  v31 = *(v213 + 64);
  __chkstk_darwin(v210);
  v217 = &v154 - v32;
  v215 = type metadata accessor for SDAirDropMessage();
  v33 = *(*(v215 - 8) + 64);
  v34 = __chkstk_darwin(v215);
  v165 = (&v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __chkstk_darwin(v34);
  v169 = &v154 - v37;
  v38 = __chkstk_darwin(v36);
  v163 = (&v154 - v39);
  v40 = __chkstk_darwin(v38);
  v164 = &v154 - v41;
  v42 = __chkstk_darwin(v40);
  v168 = &v154 - v43;
  v44 = __chkstk_darwin(v42);
  v167 = &v154 - v45;
  v46 = __chkstk_darwin(v44);
  v161 = (&v154 - v47);
  v48 = __chkstk_darwin(v46);
  v166 = &v154 - v49;
  v50 = __chkstk_darwin(v48);
  v162 = &v154 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v154 - v53;
  v55 = __chkstk_darwin(v52);
  v57 = &v154 - v56;
  v58 = __chkstk_darwin(v55);
  v60 = &v154 - v59;
  v61 = __chkstk_darwin(v58);
  v63 = &v154 - v62;
  v64 = __chkstk_darwin(v61);
  v66 = &v154 - v65;
  __chkstk_darwin(v64);
  v68 = &v154 - v67;
  v70 = a1[3];
  v69 = a1[4];
  v216 = a1;
  sub_10002CDC0(a1, v70);
  sub_100566D9C();
  v71 = v232;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v232 = v71;
  if (v71)
  {
LABEL_9:
    v95 = v216;
    return sub_10000C60C(v95);
  }

  v155 = v63;
  v158 = v66;
  v156 = v60;
  v159 = v54;
  v157 = v57;
  v72 = v209;
  v73 = v211;
  v74 = v212;
  v160 = v68;
  v75 = v214;
  v76 = v210;
  v77 = v217;
  v78 = KeyedDecodingContainer.allKeys.getter();
  v79 = (2 * *(v78 + 16)) | 1;
  v228 = v78;
  v229 = v78 + 32;
  v230 = 0;
  v231 = v79;
  v80 = sub_1004FF2B4();
  if (v230 != v231 >> 1)
  {
LABEL_7:
    v89 = type metadata accessor for DecodingError();
    v90 = swift_allocError();
    v92 = v91;
    v93 = v76;
    v94 = *(sub_10028088C(&qword_1009820A8, &qword_1008085C0) + 48);
    *v92 = v215;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v89 - 8) + 104))(v92, enum case for DecodingError.typeMismatch(_:), v89);
    v232 = v90;
    swift_willThrow();
    (*(v213 + 8))(v77, v93);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v81 = v208;
  switch(v80)
  {
    case 0:
      LOBYTE(v218) = 0;
      sub_100567440();
      v82 = v196;
      v83 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v83;
      if (v83)
      {
        goto LABEL_53;
      }

      _s12HelloRequestVMa();
      v84 = v76;
      sub_100567638(&qword_100983840, _s12HelloRequestVMa);
      v85 = v158;
      v86 = v171;
      v87 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v170 + 8))(v82, v86);
      (*(v213 + 8))(v77, v84);
      swift_unknownObjectRelease();
      v232 = v87;
      if (v87)
      {
        goto LABEL_9;
      }

      swift_storeEnumTagMultiPayload();
      v88 = v85;
      goto LABEL_69;
    case 1:
      LOBYTE(v218) = 1;
      sub_100567398();
      v122 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v122;
      if (v122)
      {
        goto LABEL_53;
      }

      sub_1005673EC();
      v123 = v173;
      v124 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v125 = v213;
      v232 = v124;
      if (v124)
      {
        (*(v172 + 8))(v72, v123);
        (*(v125 + 8))(v77, v76);
        goto LABEL_8;
      }

      (*(v172 + 8))(v72, v123);
      (*(v125 + 8))(v77, v76);
      swift_unknownObjectRelease();
      v147 = BYTE4(v218);
      v138 = v155;
      *v155 = v218;
      *(v138 + 4) = v147;
      goto LABEL_66;
    case 2:
      LOBYTE(v218) = 2;
      sub_1005672F0();
      v97 = v198;
      v116 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v116;
      if (v116)
      {
        goto LABEL_53;
      }

      sub_100567344();
      v99 = v175;
      v117 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v101 = v213;
      v232 = v117;
      if (v117)
      {
        v102 = &v206;
        goto LABEL_47;
      }

      (*(v174 + 8))(v97, v99);
      (*(v101 + 8))(v77, v76);
      swift_unknownObjectRelease();
      v141 = v219;
      v142 = BYTE8(v219);
      v138 = v156;
      *v156 = v218;
      *(v138 + 2) = v141;
      *(v138 + 24) = v142;
      goto LABEL_66;
    case 3:
      LOBYTE(v218) = 3;
      sub_100567248();
      v97 = v73;
      v118 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v118;
      if (v118)
      {
        goto LABEL_53;
      }

      sub_10056729C();
      v99 = v177;
      v119 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v101 = v213;
      v232 = v119;
      if (v119)
      {
        v102 = &v208;
        goto LABEL_47;
      }

      (*(v176 + 8))(v97, v99);
      (*(v101 + 8))(v77, v76);
      swift_unknownObjectRelease();
      v143 = v225;
      v138 = v157;
      *(v157 + 6) = v224;
      v138[7] = v143;
      v138[8] = v226;
      *(v138 + 144) = v227;
      v144 = v221;
      v138[2] = v220;
      v138[3] = v144;
      v145 = v223;
      v138[4] = v222;
      v138[5] = v145;
      v146 = v219;
      *v138 = v218;
      v138[1] = v146;
      goto LABEL_66;
    case 4:
      LOBYTE(v218) = 4;
      sub_1005671F4();
      v103 = v197;
      v104 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v104;
      if (v104)
      {
        goto LABEL_53;
      }

      _s10AskRequestVMa();
      sub_100567638(&qword_100983800, _s10AskRequestVMa);
      v105 = v159;
      v106 = v179;
      v107 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v232 = v107;
      if (v107)
      {
        v108 = &v210;
        goto LABEL_52;
      }

      (*(v178 + 8))(v103, v106);
      (*(v213 + 8))(v77, v76);
      swift_unknownObjectRelease();
      goto LABEL_68;
    case 5:
      LOBYTE(v218) = 5;
      sub_10056714C();
      v97 = v199;
      v126 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v126;
      if (v126)
      {
        goto LABEL_53;
      }

      sub_1005671A0();
      v99 = v181;
      v127 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v101 = v213;
      v232 = v127;
      if (v127)
      {
        v102 = &v212;
        goto LABEL_47;
      }

      (*(v180 + 8))(v97, v99);
      (*(v101 + 8))(v77, v76);
      swift_unknownObjectRelease();
      v148 = v223;
      v138 = v162;
      *(v162 + 4) = v222;
      v138[5] = v148;
      *(v138 + 12) = v224;
      v150 = v219;
      v149 = v220;
      *v138 = v218;
      v138[1] = v150;
      v151 = v221;
      v138[2] = v149;
      v138[3] = v151;
      goto LABEL_66;
    case 6:
      LOBYTE(v218) = 6;
      sub_1005670F8();
      v103 = v200;
      v132 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v132;
      if (v132)
      {
        goto LABEL_53;
      }

      _s13UploadRequestVMa();
      sub_100567638(&qword_1009837E0, _s13UploadRequestVMa);
      v105 = v166;
      v106 = v183;
      v133 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v232 = v133;
      if (v133)
      {
        v108 = &v214;
        goto LABEL_52;
      }

      (*(v182 + 8))(v103, v106);
      (*(v213 + 8))(v77, v76);
      swift_unknownObjectRelease();
      goto LABEL_68;
    case 7:
      LOBYTE(v218) = 7;
      sub_1005670A4();
      v97 = v201;
      v120 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v120;
      if (v120)
      {
        goto LABEL_53;
      }

      sub_1002F309C();
      v99 = v185;
      v121 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v101 = v213;
      v232 = v121;
      if (v121)
      {
        v102 = &v216;
        goto LABEL_47;
      }

      (*(v184 + 8))(v97, v99);
      (*(v101 + 8))(v77, v76);
      swift_unknownObjectRelease();
      v138 = v161;
      *v161 = v218;
      goto LABEL_66;
    case 8:
      LOBYTE(v218) = 8;
      sub_100567050();
      v103 = v202;
      v136 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v136;
      if (v136)
      {
        goto LABEL_53;
      }

      _s15ExchangeRequestVMa(0);
      sub_100567638(&qword_1009837C8, _s15ExchangeRequestVMa);
      v105 = v167;
      v106 = v187;
      v137 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v232 = v137;
      if (v137)
      {
        v108 = &v218;
        goto LABEL_52;
      }

      (*(v186 + 8))(v103, v106);
      (*(v213 + 8))(v77, v76);
      swift_unknownObjectRelease();
      goto LABEL_68;
    case 9:
      LOBYTE(v218) = 9;
      sub_100566FFC();
      v103 = v203;
      v114 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v114;
      if (v114)
      {
        goto LABEL_53;
      }

      _s16ExchangeResponseVMa(0);
      sub_100567638(&qword_1009837B8, _s16ExchangeResponseVMa);
      v105 = v168;
      v106 = v189;
      v115 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v232 = v115;
      if (v115)
      {
        v108 = &v219;
LABEL_52:
        (*(*(v108 - 32) + 8))(v103, v106);
        goto LABEL_53;
      }

      (*(v188 + 8))(v103, v106);
      (*(v213 + 8))(v77, v76);
      swift_unknownObjectRelease();
LABEL_68:
      swift_storeEnumTagMultiPayload();
      v88 = v105;
      goto LABEL_69;
    case 10:
      LOBYTE(v218) = 10;
      sub_100566F54();
      v97 = v204;
      v134 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v134;
      if (v134)
      {
        goto LABEL_53;
      }

      sub_100566FA8();
      v99 = v191;
      v135 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v101 = v213;
      v232 = v135;
      if (v135)
      {
        v102 = &v220;
        goto LABEL_47;
      }

      (*(v190 + 8))(v97, v99);
      (*(v101 + 8))(v77, v76);
      swift_unknownObjectRelease();
      v152 = v221;
      v138 = v164;
      *(v164 + 2) = v220;
      v138[3] = v152;
      v138[4] = v222;
      *(v138 + 10) = v223;
      v153 = v219;
      *v138 = v218;
      v138[1] = v153;
      goto LABEL_66;
    case 11:
      LOBYTE(v218) = 11;
      sub_100566F00();
      v97 = v205;
      v98 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v98;
      if (v98)
      {
        goto LABEL_53;
      }

      sub_1002F309C();
      v99 = v193;
      v100 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v101 = v213;
      v232 = v100;
      if (!v100)
      {
        (*(v192 + 8))(v97, v99);
        (*(v101 + 8))(v77, v76);
        swift_unknownObjectRelease();
        v138 = v163;
        *v163 = v218;
        goto LABEL_66;
      }

      v102 = &v221;
LABEL_47:
      ((*(v102 - 32))[1])(v97, v99);
      goto LABEL_48;
    case 12:
      LOBYTE(v218) = 12;
      sub_100566EAC();
      v109 = v206;
      v110 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v110;
      if (v110)
      {
        goto LABEL_53;
      }

      _s12ErrorRequestVMa();
      sub_100567638(&qword_100983790, _s12ErrorRequestVMa);
      v111 = v169;
      v112 = v194;
      v113 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v232 = v113;
      if (!v113)
      {
        (*(v81 + 8))(v109, v112);
        (*(v213 + 8))(v77, v76);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v139 = v160;
        sub_100566E44(v111, v160, type metadata accessor for SDAirDropMessage);
        v140 = v216;
        v75 = v214;
        goto LABEL_70;
      }

      (*(v81 + 8))(v109, v112);
LABEL_53:
      (*(v213 + 8))(v77, v76);
      goto LABEL_8;
    case 13:
      LOBYTE(v218) = 13;
      sub_100566DF0();
      v128 = v207;
      v129 = v232;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v232 = v129;
      if (v129)
      {
        goto LABEL_53;
      }

      sub_1002F309C();
      v130 = v195;
      v131 = v232;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v101 = v213;
      v232 = v131;
      if (v131)
      {
        (*(v74 + 8))(v128, v130);
LABEL_48:
        (*(v101 + 8))(v77, v76);
        goto LABEL_8;
      }

      (*(v74 + 8))(v128, v130);
      (*(v101 + 8))(v77, v76);
      swift_unknownObjectRelease();
      v138 = v165;
      *v165 = v218;
LABEL_66:
      swift_storeEnumTagMultiPayload();
      v88 = v138;
LABEL_69:
      v139 = v160;
      sub_100566E44(v88, v160, type metadata accessor for SDAirDropMessage);
      v140 = v216;
LABEL_70:
      v232 = 0;
      sub_100566E44(v139, v75, type metadata accessor for SDAirDropMessage);
      v95 = v140;
      break;
    default:
      goto LABEL_7;
  }

  return sub_10000C60C(v95);
}

uint64_t sub_100565EB0(uint64_t a1)
{
  v2 = sub_1005671F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100565EEC(uint64_t a1)
{
  v2 = sub_1005671F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100565F40(uint64_t a1)
{
  v2 = sub_10056714C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100565F7C(uint64_t a1)
{
  v2 = sub_10056714C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100565FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100568828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100565FF4(uint64_t a1)
{
  v2 = sub_100566D9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566030(uint64_t a1)
{
  v2 = sub_100566D9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056606C(uint64_t a1)
{
  v2 = sub_1005672F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005660A8(uint64_t a1)
{
  v2 = sub_1005672F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005660E4(uint64_t a1)
{
  v2 = sub_100567248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566120(uint64_t a1)
{
  v2 = sub_100567248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056615C(uint64_t a1)
{
  v2 = sub_100566EAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566198(uint64_t a1)
{
  v2 = sub_100566EAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005661D4(uint64_t a1)
{
  v2 = sub_100566DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566210(uint64_t a1)
{
  v2 = sub_100566DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056624C(uint64_t a1)
{
  v2 = sub_100567050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566288(uint64_t a1)
{
  v2 = sub_100567050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005662C4(uint64_t a1)
{
  v2 = sub_100566FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566300(uint64_t a1)
{
  v2 = sub_100566FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056633C(uint64_t a1)
{
  v2 = sub_100567440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566378(uint64_t a1)
{
  v2 = sub_100567440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005663B4(uint64_t a1)
{
  v2 = sub_100567398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005663F0(uint64_t a1)
{
  v2 = sub_100567398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056642C(uint64_t a1)
{
  v2 = sub_100566F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100566468(uint64_t a1)
{
  v2 = sub_100566F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005664A4(uint64_t a1)
{
  v2 = sub_100566F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005664E0(uint64_t a1)
{
  v2 = sub_100566F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056651C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
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

uint64_t sub_1005665A4(uint64_t a1)
{
  v2 = sub_1005670F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005665E0(uint64_t a1)
{
  v2 = sub_1005670F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10056661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
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

uint64_t sub_1005666A4(uint64_t a1)
{
  v2 = sub_1005670A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005666E0(uint64_t a1)
{
  v2 = sub_1005670A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100566750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s12ErrorRequestVMa();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15ExchangeRequestVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s13UploadRequestVMa();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s10AskRequestVMa();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s12HelloRequestVMa();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SDAirDropMessage();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003CC814(v2, v27);
  HIDWORD(v29) = swift_getEnumCaseMultiPayload();
  LODWORD(v29) = HIDWORD(v29);
  v28 = v29 >> 1;
  if (v28 <= 2)
  {
    if (!v28)
    {
      sub_100566E44(v27, v23, _s12HelloRequestVMa);
      v37 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v38 = *(v37 - 8);
      (*(v38 + 32))(a1, v23, v37);
      return (*(v38 + 56))(a1, 0, 1, v37);
    }

    if (v28 != 2)
    {
      goto LABEL_13;
    }

    sub_100566E44(v27, v19, _s10AskRequestVMa);
    sub_100566D2C(v19, a1);
    v34 = v19;
    v35 = _s10AskRequestVMa;
  }

  else
  {
    if (v28 != 3)
    {
      if (v28 == 4)
      {
        sub_100566E44(v27, v11, _s15ExchangeRequestVMa);
        v30 = type metadata accessor for SFAirDrop.TransferIdentifier();
        v31 = *(v30 - 8);
        (*(v31 + 16))(a1, v11, v30);
        v32 = v11;
        v33 = _s15ExchangeRequestVMa;
        goto LABEL_11;
      }

      if (v28 == 6)
      {
        sub_100566E44(v27, v7, _s12ErrorRequestVMa);
        v30 = type metadata accessor for SFAirDrop.TransferIdentifier();
        v31 = *(v30 - 8);
        (*(v31 + 16))(a1, v7, v30);
        v32 = v7;
        v33 = _s12ErrorRequestVMa;
LABEL_11:
        sub_100566CCC(v32, v33);
        return (*(v31 + 56))(a1, 0, 1, v30);
      }

LABEL_13:
      if (qword_100973A58 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000C4AC(v39, qword_1009835E0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unexpected request type for transferID", v42, 2u);
      }

      v43 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v43 - 8) + 56))(a1, 1, 1, v43);
      v35 = type metadata accessor for SDAirDropMessage;
      v34 = v27;
      return sub_100566CCC(v34, v35);
    }

    sub_100566E44(v27, v15, _s13UploadRequestVMa);
    sub_100566D2C(v15, a1);
    v34 = v15;
    v35 = _s13UploadRequestVMa;
  }

  return sub_100566CCC(v34, v35);
}

uint64_t sub_100566CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100566D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100566D9C()
{
  result = qword_100983778;
  if (!qword_100983778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983778);
  }

  return result;
}

unint64_t sub_100566DF0()
{
  result = qword_100983780;
  if (!qword_100983780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983780);
  }

  return result;
}

uint64_t sub_100566E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100566EAC()
{
  result = qword_100983788;
  if (!qword_100983788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983788);
  }

  return result;
}

unint64_t sub_100566F00()
{
  result = qword_100983798;
  if (!qword_100983798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983798);
  }

  return result;
}

unint64_t sub_100566F54()
{
  result = qword_1009837A0;
  if (!qword_1009837A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837A0);
  }

  return result;
}

unint64_t sub_100566FA8()
{
  result = qword_1009837A8;
  if (!qword_1009837A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837A8);
  }

  return result;
}

unint64_t sub_100566FFC()
{
  result = qword_1009837B0;
  if (!qword_1009837B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837B0);
  }

  return result;
}

unint64_t sub_100567050()
{
  result = qword_1009837C0;
  if (!qword_1009837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837C0);
  }

  return result;
}

unint64_t sub_1005670A4()
{
  result = qword_1009837D0;
  if (!qword_1009837D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837D0);
  }

  return result;
}

unint64_t sub_1005670F8()
{
  result = qword_1009837D8;
  if (!qword_1009837D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837D8);
  }

  return result;
}

unint64_t sub_10056714C()
{
  result = qword_1009837E8;
  if (!qword_1009837E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837E8);
  }

  return result;
}

unint64_t sub_1005671A0()
{
  result = qword_1009837F0;
  if (!qword_1009837F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837F0);
  }

  return result;
}

unint64_t sub_1005671F4()
{
  result = qword_1009837F8;
  if (!qword_1009837F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009837F8);
  }

  return result;
}

unint64_t sub_100567248()
{
  result = qword_100983808;
  if (!qword_100983808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983808);
  }

  return result;
}

unint64_t sub_10056729C()
{
  result = qword_100983810;
  if (!qword_100983810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983810);
  }

  return result;
}

unint64_t sub_1005672F0()
{
  result = qword_100983818;
  if (!qword_100983818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983818);
  }

  return result;
}

unint64_t sub_100567344()
{
  result = qword_100983820;
  if (!qword_100983820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983820);
  }

  return result;
}

unint64_t sub_100567398()
{
  result = qword_100983828;
  if (!qword_100983828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983828);
  }

  return result;
}

unint64_t sub_1005673EC()
{
  result = qword_100983830;
  if (!qword_100983830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983830);
  }

  return result;
}

unint64_t sub_100567440()
{
  result = qword_100983838;
  if (!qword_100983838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983838);
  }

  return result;
}

unint64_t sub_100567494()
{
  result = qword_1009838C8;
  if (!qword_1009838C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009838C8);
  }

  return result;
}

unint64_t sub_1005674E8()
{
  result = qword_1009838E8;
  if (!qword_1009838E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009838E8);
  }

  return result;
}

unint64_t sub_10056753C()
{
  result = qword_1009838F8;
  if (!qword_1009838F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009838F8);
  }

  return result;
}

unint64_t sub_100567590()
{
  result = qword_100983900;
  if (!qword_100983900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983900);
  }

  return result;
}

unint64_t sub_1005675E4()
{
  result = qword_100983908;
  if (!qword_100983908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983908);
  }

  return result;
}

uint64_t sub_100567638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SDAirDropMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDAirDropMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1005678B4()
{
  result = qword_100983918;
  if (!qword_100983918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983918);
  }

  return result;
}

unint64_t sub_10056790C()
{
  result = qword_100983920;
  if (!qword_100983920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983920);
  }

  return result;
}

unint64_t sub_100567964()
{
  result = qword_100983928;
  if (!qword_100983928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983928);
  }

  return result;
}

unint64_t sub_1005679BC()
{
  result = qword_100983930;
  if (!qword_100983930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983930);
  }

  return result;
}

unint64_t sub_100567A14()
{
  result = qword_100983938;
  if (!qword_100983938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983938);
  }

  return result;
}

unint64_t sub_100567A6C()
{
  result = qword_100983940;
  if (!qword_100983940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983940);
  }

  return result;
}

unint64_t sub_100567AC4()
{
  result = qword_100983948;
  if (!qword_100983948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983948);
  }

  return result;
}

unint64_t sub_100567B1C()
{
  result = qword_100983950;
  if (!qword_100983950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983950);
  }

  return result;
}

unint64_t sub_100567B74()
{
  result = qword_100983958;
  if (!qword_100983958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983958);
  }

  return result;
}

unint64_t sub_100567BCC()
{
  result = qword_100983960;
  if (!qword_100983960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983960);
  }

  return result;
}

unint64_t sub_100567C24()
{
  result = qword_100983968;
  if (!qword_100983968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983968);
  }

  return result;
}

unint64_t sub_100567C7C()
{
  result = qword_100983970;
  if (!qword_100983970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983970);
  }

  return result;
}

unint64_t sub_100567CD4()
{
  result = qword_100983978;
  if (!qword_100983978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983978);
  }

  return result;
}

unint64_t sub_100567D2C()
{
  result = qword_100983980;
  if (!qword_100983980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983980);
  }

  return result;
}

unint64_t sub_100567D84()
{
  result = qword_100983988;
  if (!qword_100983988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983988);
  }

  return result;
}

unint64_t sub_100567DDC()
{
  result = qword_100983990;
  if (!qword_100983990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983990);
  }

  return result;
}

unint64_t sub_100567E34()
{
  result = qword_100983998;
  if (!qword_100983998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983998);
  }

  return result;
}

unint64_t sub_100567E8C()
{
  result = qword_1009839A0;
  if (!qword_1009839A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839A0);
  }

  return result;
}

unint64_t sub_100567EE4()
{
  result = qword_1009839A8;
  if (!qword_1009839A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839A8);
  }

  return result;
}

unint64_t sub_100567F3C()
{
  result = qword_1009839B0;
  if (!qword_1009839B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839B0);
  }

  return result;
}

unint64_t sub_100567F94()
{
  result = qword_1009839B8;
  if (!qword_1009839B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839B8);
  }

  return result;
}

unint64_t sub_100567FEC()
{
  result = qword_1009839C0;
  if (!qword_1009839C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839C0);
  }

  return result;
}

unint64_t sub_100568044()
{
  result = qword_1009839C8;
  if (!qword_1009839C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839C8);
  }

  return result;
}

unint64_t sub_10056809C()
{
  result = qword_1009839D0;
  if (!qword_1009839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839D0);
  }

  return result;
}

unint64_t sub_1005680F4()
{
  result = qword_1009839D8;
  if (!qword_1009839D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839D8);
  }

  return result;
}

unint64_t sub_10056814C()
{
  result = qword_1009839E0;
  if (!qword_1009839E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839E0);
  }

  return result;
}

unint64_t sub_1005681A4()
{
  result = qword_1009839E8;
  if (!qword_1009839E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839E8);
  }

  return result;
}

unint64_t sub_1005681FC()
{
  result = qword_1009839F0;
  if (!qword_1009839F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839F0);
  }

  return result;
}

unint64_t sub_100568254()
{
  result = qword_1009839F8;
  if (!qword_1009839F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009839F8);
  }

  return result;
}

unint64_t sub_1005682AC()
{
  result = qword_100983A00;
  if (!qword_100983A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A00);
  }

  return result;
}

unint64_t sub_100568304()
{
  result = qword_100983A08;
  if (!qword_100983A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A08);
  }

  return result;
}

unint64_t sub_10056835C()
{
  result = qword_100983A10;
  if (!qword_100983A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A10);
  }

  return result;
}

unint64_t sub_1005683B4()
{
  result = qword_100983A18;
  if (!qword_100983A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A18);
  }

  return result;
}

unint64_t sub_10056840C()
{
  result = qword_100983A20;
  if (!qword_100983A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A20);
  }

  return result;
}

unint64_t sub_100568464()
{
  result = qword_100983A28;
  if (!qword_100983A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A28);
  }

  return result;
}

unint64_t sub_1005684BC()
{
  result = qword_100983A30;
  if (!qword_100983A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A30);
  }

  return result;
}

unint64_t sub_100568514()
{
  result = qword_100983A38;
  if (!qword_100983A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A38);
  }

  return result;
}

unint64_t sub_10056856C()
{
  result = qword_100983A40;
  if (!qword_100983A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A40);
  }

  return result;
}

unint64_t sub_1005685C4()
{
  result = qword_100983A48;
  if (!qword_100983A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A48);
  }

  return result;
}

unint64_t sub_10056861C()
{
  result = qword_100983A50;
  if (!qword_100983A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A50);
  }

  return result;
}

unint64_t sub_100568674()
{
  result = qword_100983A58;
  if (!qword_100983A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A58);
  }

  return result;
}

unint64_t sub_1005686CC()
{
  result = qword_100983A60;
  if (!qword_100983A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A60);
  }

  return result;
}

unint64_t sub_100568724()
{
  result = qword_100983A68;
  if (!qword_100983A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A68);
  }

  return result;
}

unint64_t sub_10056877C()
{
  result = qword_100983A70;
  if (!qword_100983A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A70);
  }

  return result;
}

unint64_t sub_1005687D4()
{
  result = qword_100983A78;
  if (!qword_100983A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983A78);
  }

  return result;
}

uint64_t sub_100568828(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165526F6C6C6568 && a2 == 0xEC00000074736575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365526F6C6C6568 && a2 == 0xED000065736E6F70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEF74736575716552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001007958F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65757165526B7361 && a2 == 0xEA00000000007473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F707365526B7361 && a2 == 0xEB0000000065736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x655264616F6C7075 && a2 == 0xED00007473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x655264616F6C7075 && a2 == 0xEE0065736E6F7073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEF74736575716552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100795910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100795930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100795950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x716552726F727265 && a2 == 0xEC00000074736575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x736552726F727265 && a2 == 0xED000065736E6F70)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

char *sub_100568CF0@<X0>(int a1@<W0>, unint64_t a2@<X1>, char *a3@<X3>, unint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v4 = a2;
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  LODWORD(v5) = a1;
  a3 = sub_10028E4A4(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(a3 + 2);
  a4 = *(a3 + 3);
  v6 = v7 + 1;
  if (v7 >= a4 >> 1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    *(a3 + 2) = v6;
    a3[v7 + 32] = v5;
    if (v4 == 1)
    {
      break;
    }

    v8 = *(a3 + 3);
    if (v6 >= v8 >> 1)
    {
      a3 = sub_10028E4A4((v8 > 1), v7 + 2, 1, a3);
    }

    a4 = v5 >> 8;
    *(a3 + 2) = v7 + 2;
    a3[v6 + 32] = BYTE1(v5);
    v5 = v4 - 2;
    if (v4 == 2)
    {
      break;
    }

    v6 = v7 + 34;
    for (i = 0xFFFFFFFFFFFFFFELL; i; --i)
    {
      a4 = *(a3 + 3);
      v4 = v6 - 31;
      if (v6 - 32 >= a4 >> 1)
      {
        a3 = sub_10028E4A4((a4 > 1), v6 - 31, 1, a3);
      }

      *(a3 + 2) = v4;
      a3[v6++] = 0;
      if (!--v5)
      {
        return a3;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    a3 = sub_10028E4A4((a4 > 1), v6, 1, a3);
  }

  return a3;
}

uint64_t sub_100568E38(uint64_t result, uint64_t a2)
{
  v22 = *(result + 16);
  if (!v22)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a2;
  v3 = 0;
  v20 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  while ((v2 & 0x8000000000000000) == 0)
  {
    if (v2)
    {
      v5 = *(v20 + 8 * v3);
      result = sub_10028E4A4(0, 1, 1, _swiftEmptyArrayStorage);
      v6 = result;
      v7 = 0;
      v8 = 0x1000000000000000;
      while (v8)
      {
        if (v7 >= 0x40)
        {
          v9 = 0;
        }

        else
        {
          v9 = v5 >> v7;
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          result = sub_10028E4A4((v10 > 1), v11 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v12;
        v6[v11 + 32] = v9;
        --v8;
        v7 += 8;
        if (!--v2)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

    v12 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage;
LABEL_17:
    v13 = *(v4 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_34;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v14 <= *(v4 + 3) >> 1)
    {
      if (*(v6 + 2))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_10028E4A4(result, v15, 1, v4);
      v4 = result;
      if (*(v6 + 2))
      {
LABEL_26:
        v16 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v16 < v12)
        {
          goto LABEL_36;
        }

        memcpy(&v4[v16 + 32], v6 + 32, v12);

        if (v12)
        {
          v17 = *(v4 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_37;
          }

          *(v4 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_35;
    }

LABEL_4:
    ++v3;
    v2 = a2;
    if (v3 == v22)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_100569018(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_10000D494(&qword_100976170, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_10000D494(&qword_1009761E0, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100569230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100569328(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CodableError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_10000D494(&qword_10097F080, &type metadata accessor for CodableError), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_10000D494(&qword_10097F088, &type metadata accessor for CodableError);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100569540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v9 = *(a2 + 40), Hasher.init(_seed:)(), sub_10032D3D4(), v10 = Hasher._finalize()(), v11 = -1 << *(a2 + 32), v12 = v10 & ~v11, ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    do
    {
      sub_1005816A0(*(a2 + 48) + v14 * v12, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v15 = sub_100331F88(v8, a1);
      sub_100294130(v8);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1005696B4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 11) | (32 * v9)));
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];

      sub_10046FBBC(&v15, v11, v12, v13, v14);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1005697DC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10046DAAC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1005698E0(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10002CDC0(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1004E5318(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10057E97C(v3, v4);
    }

    else
    {
      v6 = sub_10057E9F8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000C60C(v8);
  return v6;
}

uint64_t sub_10056999C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100975010, &qword_1007F83B8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v43 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v41 - v6;
  v8 = sub_10028088C(&qword_100983CB8, &unk_10080B050);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v41 - v10;
  v12 = sub_10028088C(&qword_100975018, &qword_1007F83C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v41 - v14;
  v44 = a1;
  *&v45 = a1;

  sub_10028088C(&qword_100983CC0, &qword_10080B060);
  sub_10028088C(&qword_100983CC8, &qword_10080B068);
  if (swift_dynamicCast())
  {
    sub_1000121F8(v46, v48);
    sub_10002CDC0(v48, v48[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v46[0] = v45;
    sub_10000C60C(v48);
    goto LABEL_42;
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v16 = sub_100005508(v46, &qword_100983CD0, &unk_10080B070);
  v46[0] = xmmword_1007FAD30;
  __chkstk_darwin(v16);
  v41[-2] = &v44;
  sub_10057D3E8(sub_1005814F4);
  v17 = *&v11[*(v8 + 48)];
  sub_10058154C(v11, v15);
  v18 = *(&v46[0] + 1) >> 62;
  if ((*(&v46[0] + 1) >> 62) <= 1)
  {
    if (!v18)
    {
      if (v17 == BYTE14(v46[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v46[0]), v46[0]))
    {
      goto LABEL_46;
    }

    if (v17 != DWORD1(v46[0]) - LODWORD(v46[0]))
    {
LABEL_13:
      if (v18 == 2)
      {
        v23 = *(*&v46[0] + 24);
      }

      else if (v18 == 1)
      {
        v23 = *&v46[0] >> 32;
      }

      else
      {
        v23 = BYTE14(v46[0]);
      }

      goto LABEL_40;
    }

LABEL_18:
    v41[0] = 0;
    v41[1] = a1;
    v24 = 0;
    memset(v48, 0, 15);
    v25 = *(v12 + 44);
LABEL_19:
    v42 = v24;
    while (1)
    {
      sub_10000FF90(&v15[v25], v7, &qword_100975010, &qword_1007F83B8);
      v27 = type metadata accessor for Data.Iterator();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      v30 = v29(v7, 1, v27);
      sub_100005508(v7, &qword_100975010, &qword_1007F83B8);
      if (v30 != 1)
      {
        if (v29(&v15[v25], 1, v27) == 1)
        {
          goto LABEL_48;
        }

        sub_10000D494(&unk_100975020, &type metadata accessor for Data.Iterator);
        dispatch thunk of IteratorProtocol.next()();
        if (BYTE1(v45) != 1)
        {
          v38 = v42;
          *(v48 + v42) = v45;
          v24 = (v38 + 1);
          if ((v24 >> 8))
          {
            goto LABEL_47;
          }

          if ((v38 + 1) == 14)
          {
            *&v45 = v48[0];
            *(&v45 + 6) = *(v48 + 6);
            Data._Representation.append(contentsOf:)();
            v24 = 0;
          }

          goto LABEL_19;
        }
      }

      v31 = *(v15 + 1);
      v32 = *(*v15 + 16);
      if (v31 == v32)
      {
        if (v42)
        {
          *&v45 = v48[0];
          *(&v45 + 6) = *(v48 + 6);
          Data._Representation.append(contentsOf:)();
        }

        sub_100005508(v15, &qword_100975018, &qword_1007F83C0);
        goto LABEL_42;
      }

      if (v31 >= v32)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v33 = *v15 + 16 * v31;
      v34 = *(v33 + 32);
      v35 = *(v33 + 40);
      *(v15 + 1) = v31 + 1;
      v36 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        if (v36 == 2)
        {
          v37 = *(v34 + 16);
LABEL_20:
          sub_100294008(v34, v35);
        }
      }

      else if (v36)
      {
        goto LABEL_20;
      }

      v26 = v43;
      Data.Iterator.init(_:at:)();
      (*(v28 + 56))(v26, 0, 1, v27);
      sub_10029405C(v26, &v15[v25]);
    }
  }

  if (v18 == 2)
  {
    v20 = *(*&v46[0] + 16);
    v19 = *(*&v46[0] + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (v21)
    {
      goto LABEL_45;
    }

    if (v17 != v22)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    goto LABEL_18;
  }

  v23 = 0;
LABEL_40:
  if (v23 < v17)
  {
    goto LABEL_44;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100005508(v15, &qword_100975018, &qword_1007F83C0);
LABEL_42:
  v39 = v46[0];
  sub_100294008(*&v46[0], *(&v46[0] + 1));

  sub_100026AC0(v39, *(&v39 + 1));
  return v39;
}

id cdbDatabaseInfo()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  result = sub_1001F149C();
  if (result)
  {
    v9 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    URL.appendingPathComponent(_:)();
    v10 = *(v1 + 8);
    v10(v7, v0);
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    return (v10)(v5, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10056A1A8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983A80);
  v1 = sub_10000C4AC(v0, qword_100983A80);
  if (qword_100973728 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10056A27C()
{
  result = sub_1002FB5DC(44, 0xE100000000000000);
  if ((result & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    byte_1009A0C88 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.load()()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  v9 = __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  __chkstk_darwin(v15);
  v22 = &v43 - v21;
  if (*(v2 + 48))
  {
    return;
  }

  v45 = v20;
  v46 = v19;
  v47 = v18;
  v48 = v1;
  v44 = v2;
  sub_10057FC30();
  v23 = sub_1001F149C();
  if (!v23)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v24 = v23;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();
  v25 = *(v4 + 8);
  v25(v14, v3);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v25(v11, v3);
  v25(v17, v3);
  v26 = v48;
  sub_10056A834(v22);
  if (v26)
  {
    v25(v22, v3);
    return;
  }

  v48 = 0;
  v25(v22, v3);
  v27 = sub_1001F149C();
  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = v27;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v45;
  URL.init(fileURLWithPath:)();

  v30 = v46;
  URL.appendingPathComponent(_:)();
  v25(v29, v3);
  URL.appendingPathComponent(_:)();
  v31 = v47;
  URL.appendingPathExtension(_:)();
  v25(v11, v3);
  v25(v30, v3);
  URL.path.getter();
  v25(v31, v3);
  v32 = v48;
  sub_100580034();
  if (v32)
  {
  }

  else
  {
    v33 = *(v44 + 16);
    v34 = String._bridgeToObjectiveC()();

    v49 = 0;
    v35 = [v33 openAtPath:v34 error:&v49];

    if (v35)
    {
      v36 = qword_100973A60;
      v37 = v49;
      if (v36 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000C4AC(v38, qword_100983A80);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "CDB: store loaded", v41, 2u);
      }

      *(v44 + 48) = 1;
    }

    else
    {
      v42 = v49;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_10056A834(uint64_t a1)
{
  v35 = type metadata accessor for URLResourceValues();
  v34 = *(v35 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v35);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v36 = v11;
  v10(v9, a1);
  if (qword_100973A60 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100983A80);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136315138;
    swift_beginAccess();
    v17 = URL.path.getter();
    v19 = sub_10000C4E4(v17, v18, &v38);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Making AirDrop hash DB folder if doesn't exist: %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  v20 = [objc_opt_self() defaultManager];
  swift_beginAccess();
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  sub_10028088C(&qword_100978960, &unk_1007FBB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v25;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v26 = NSFileProtectionKey;
  v27 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  sub_100281848(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009746C0, &qword_1007F65A0);
  type metadata accessor for FileAttributeKey(0);
  sub_10000D494(&qword_100974750, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37[0] = 0;
  v29 = [v20 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:isa error:v37];

  if (v29)
  {
    v30 = v37[0];
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    swift_beginAccess();
    URL.setResourceValues(_:)();
    swift_endAccess();
    (*(v34 + 8))(v4, v35);
  }

  else
  {
    v31 = v37[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v6 + 8))(v9, v36);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.stageAddEntries(_:)(Swift::OpaquePointer a1)
{
  if (*(v1 + 48) != 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    v2 = 2;
LABEL_5:
    sub_10055A164();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    return;
  }

  v4 = *(a1._rawValue + 2);
  if (v4)
  {
    sub_10028FBDC(0, v4, 0);
    v5 = (a1._rawValue + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];

      if (v9 >= v8 >> 1)
      {
        sub_10028FBDC((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v7;
      v10[5] = v6;
      v5 += 9;
      --v4;
    }

    while (v4);
  }

  swift_beginAccess();
  sub_10056AE98(_swiftEmptyArrayStorage);
  swift_endAccess();

  swift_beginAccess();

  sub_100403B10(v11);
  swift_endAccess();
}

uint64_t sub_10056AE98(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_10036DB18(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.stageDeleteEntriesForContact(withID:)(Swift::String withID)
{
  if (*(v1 + 48) != 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    v2 = 2;
LABEL_5:
    sub_10055A164();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    return;
  }

  object = withID._object;
  countAndFlagsBits = withID._countAndFlagsBits;
  v6 = v1;
  if (qword_100973A60 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100983A80);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000C4E4(countAndFlagsBits, object, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "CDB: Staging deletion of entries for contact id: %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  swift_beginAccess();

  v12 = sub_1005801A4((v6 + 32), countAndFlagsBits, object);

  v13 = *(*(v6 + 32) + 16);
  if (v13 < v12)
  {
    __break(1u);
  }

  else
  {
    sub_1005804C8(v12, v13, sub_10028EFE0, sub_1005803F4);
    swift_endAccess();
    swift_beginAccess();

    sub_10046DAAC(&v14, countAndFlagsBits, object);
    swift_endAccess();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.preparePersist()()
{
  v28 = type metadata accessor for URL();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - v10;
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = [objc_allocWithZone(CUKeyValueStoreWriter) init];
  v15 = *(v0 + 24);
  v29 = v0;
  *(v0 + 24) = v14;

  v16 = sub_1001F149C();
  if (!v16)
  {
    __break(1u);
  }

  v17 = v16;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();
  v18 = *(v1 + 8);
  v19 = v8;
  v20 = v28;
  v18(v19, v28);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v18(v5, v20);
  v18(v13, v20);
  URL.path.getter();
  v18(v11, v20);
  v21 = *(v29 + 24);
  if (v21)
  {
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();

    v30 = 0;
    v24 = [v22 startAtPath:v23 error:&v30];

    if (v24)
    {
      v25 = v30;
    }

    else
    {
      v26 = v30;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.finishPersist()()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - v13;
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = *(v2 + 24);
  if (v17)
  {
    v37 = 0;
    v18 = [v17 finishAndReturnError:&v37];
    v19 = v37;
    if (!v18)
    {
LABEL_8:
      v34 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v35 = v1;
    v36 = v14;
    v20 = *(v2 + 24);
    v21 = v37;
  }

  else
  {
    v35 = v1;
    v36 = v14;
    v20 = 0;
  }

  *(v2 + 24) = 0;

  [*(v2 + 16) close];
  sub_1000276B4(0, &qword_100973C78, NSData_ptr);
  v22 = objc_allocWithZone(CUKeyValueStoreReader);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [v22 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
  v25 = *(v2 + 16);
  *(v2 + 16) = v24;

  v26 = sub_1001F149C();
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    URL.appendingPathComponent(_:)();
    v28 = *(v4 + 8);
    v28(v11, v3);
    URL.appendingPathComponent(_:)();
    v29 = v36;
    URL.appendingPathExtension(_:)();
    v28(v8, v3);
    v28(v16, v3);
    URL.path.getter();
    v28(v29, v3);
    v30 = *(v2 + 16);
    v31 = String._bridgeToObjectiveC()();

    v37 = 0;
    v32 = [v30 openAtPath:v31 error:&v37];

    v19 = v37;
    if (v32)
    {
      v33 = v37;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.persist()()
{
  if (*(v0 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v4 = 1;
    goto LABEL_5;
  }

  v2 = v0;
  if (*(v0 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v4 = 2;
LABEL_5:
    *v3 = v4;
    swift_willThrow();
    return;
  }

  v147 = v1;
  swift_beginAccess();
  v5 = *(*(v0 + 32) + 16);
  swift_beginAccess();
  v6 = *(*(v0 + 40) + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    goto LABEL_88;
  }

  if (v8 < 0)
  {
    goto LABEL_89;
  }

  if (!v8)
  {
    if (qword_100973A60 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100983A80);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "CDB: Nothing to persist.", v20, 2u);
    }

    goto LABEL_18;
  }

  if (qword_100973A60 != -1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100983A80);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      v13 = *(*(v2 + 32) + 16);
      v14 = *(*(v2 + 40) + 16);
      v7 = __OFADD__(v13, v14);
      v15 = v13 + v14;
      if (v7)
      {
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (v15 < 0)
      {
        goto LABEL_92;
      }

      *(v12 + 4) = v15;
      v16 = v12;

      _os_log_impl(&_mh_execute_header, v10, v11, "CDB: Persist %lu changes.", v16, 0xCu);
    }

    else
    {
    }

    v125 = mach_absolute_time();
    v21 = swift_allocObject();
    *(v21 + 16) = &_swiftEmptyDictionarySingleton;
    v148 = v21 + 16;
    v22 = *(v2 + 32);
    v23 = _swiftEmptyArrayStorage;
    v126 = v2;
    v127 = v21;
    *(v2 + 32) = _swiftEmptyArrayStorage;
    v24 = *(v22 + 16);
    v133 = v22;
    if (v24)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10028FBDC(0, v24, 0);
      v23 = aBlock[0];
      v25 = (v22 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        aBlock[0] = v23;
        v29 = v23[2];
        v28 = v23[3];

        if (v29 >= v28 >> 1)
        {
          sub_10028FBDC((v28 > 1), v29 + 1, 1);
          v23 = aBlock[0];
        }

        v23[2] = v29 + 1;
        v30 = &v23[2 * v29];
        v30[4] = v27;
        v30[5] = v26;
        v25 += 9;
        --v24;
      }

      while (v24);
      v31 = v127;
    }

    else
    {
      v31 = v21;
    }

    v32 = sub_100292D28(v23);

    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = *(v2 + 16);
    sub_1000276B4(0, &qword_100973C78, NSData_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v36 = swift_allocObject();
    v36[2] = v2;
    v36[3] = v33;
    v36[4] = v32;
    v36[5] = v31;
    v156 = sub_1005805A0;
    v157 = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10032765C;
    v155 = &unk_1008E7910;
    v37 = _Block_copy(aBlock);

    v38 = v34;

    aBlock[0] = 0;
    v2 = [v38 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:aBlock handler:v37];
    _Block_release(v37);

    v39 = aBlock[0];
    if ((v2 & 1) == 0)
    {
      v42 = aBlock[0];

      _convertNSErrorToError(_:)();

      swift_willThrow();

      return;
    }

    swift_beginAccess();
    v40 = v133;
    if (*(v33 + 16))
    {
      v41 = v39;
      swift_errorRetain();

      swift_willThrow();

      return;
    }

    v43 = *(v126 + 40);
    *(v126 + 40) = _swiftEmptySetSingleton;
    v44 = v39;

    v128 = *(v133 + 16);
    if (v128)
    {
      break;
    }

LABEL_55:

    v92 = *(v126 + 24);
    if (!v92)
    {
      v18 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&_mh_execute_header, v18, v122, "Writer not prepared for persist operation", v123, 2u);
      }

LABEL_18:

      return;
    }

    swift_beginAccess();
    v93 = *v148;
    v94 = *v148 + 64;
    v95 = 1 << *(*v148 + 32);
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    else
    {
      v96 = -1;
    }

    v97 = v96 & *(v93 + 64);
    v2 = (v95 + 63) >> 6;
    v141 = v92;
    v132 = v93;

    v98 = 0;
    v129 = v2;
    v131 = v93 + 64;
LABEL_61:
    if (!v97)
    {
      while (1)
      {
        v99 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_87;
        }

        if (v99 >= v2)
        {
          break;
        }

        v97 = *(v94 + 8 * v99);
        ++v98;
        if (v97)
        {
          goto LABEL_66;
        }
      }

      if (mach_absolute_time() >= v125)
      {
        v118 = UpTicksToMilliseconds();
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 134217984;
          *(v121 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v119, v120, "CDB: Persist completed. Operation took %llu ms.", v121, 0xCu);
        }

        return;
      }

LABEL_93:
      __break(1u);
    }

    v99 = v98;
LABEL_66:
    v134 = v99;
    v137 = (v97 - 1) & v97;
    v100 = __clz(__rbit64(v97)) | (v99 << 6);
    v101 = (*(v132 + 48) + 16 * v100);
    v102 = *v101;
    v103 = v101[1];
    v104 = *(*(v132 + 56) + 8 * v100);
    v105 = v104 + 56;
    v106 = 1 << *(v104 + 32);
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    else
    {
      v107 = -1;
    }

    v108 = v107 & *(v104 + 56);
    v146 = v102;
    v149 = v103;
    sub_100294008(v102, v103);
    v2 = (v106 + 63) >> 6;
    v143 = v104;

    v109 = 0;
    if (v108)
    {
      while (1)
      {
        v110 = v109;
LABEL_74:
        v111 = (*(v143 + 48) + ((v110 << 10) | (16 * __clz(__rbit64(v108)))));
        v112 = *v111;
        v113 = v111[1];
        sub_100294008(*v111, v113);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v115 = Data._bridgeToObjectiveC()().super.isa;
        v150 = 0;
        v116 = [v141 addKey:isa value:v115 error:&v150];

        if (!v116)
        {
          break;
        }

        v108 &= v108 - 1;
        v117 = v150;
        sub_100026AC0(v112, v113);
        v109 = v110;
        if (!v108)
        {
          goto LABEL_71;
        }
      }

      v124 = v150;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_100026AC0(v112, v113);
      sub_100026AC0(v146, v149);

      return;
    }

LABEL_71:
    while (1)
    {
      v110 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      if (v110 >= v2)
      {
        sub_100026AC0(v146, v149);

        v98 = v134;
        v97 = v137;
        v2 = v129;
        v94 = v131;
        goto LABEL_61;
      }

      v108 = *(v105 + 8 * v110);
      ++v109;
      if (v108)
      {
        goto LABEL_74;
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
    swift_once();
  }

  v45 = 0;
  v46 = v133 + 56;
  while (1)
  {
    if (v45 >= *(v40 + 16))
    {
      goto LABEL_86;
    }

    v142 = v45;
    v49 = *(v46 - 8);
    v50 = *v46;
    *v138 = *(v46 + 24);
    v144 = *(v46 + 8);
    v51 = *(v46 + 42);
    v135 = *(v46 + 40);
    v52 = *(v46 + 43);
    v53 = *(v46 - 24);
    v54 = *(v46 - 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v55 = sub_100016004(v53, v54);
    sub_10028088C(&unk_100987410, &unk_1007FB010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    if (qword_100973A68 != -1)
    {
      v91 = inited;
      swift_once();
      inited = v91;
    }

    *(inited + 32) = byte_1009A0C88;
    aBlock[0] = v55;
    sub_10040367C(inited);
    v57 = aBlock[0];
    v58 = sub_100016004(v49, v50);
    aBlock[0] = v57;
    sub_10040367C(v58);
    v59 = aBlock[0];
    sub_10028088C(&qword_100975038, &qword_1007F83D8);
    v60 = swift_initStackObject();
    v60[1] = xmmword_1007FA7E0;
    v60[2] = v144;
    v60[3] = *v138;
    v61 = sub_100568E38(v60, 8);
    swift_setDeallocating();
    if (v52)
    {

      v136 = 0;
      v139 = 0;
    }

    else
    {
      v62 = v135 | (v51 << 16);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1007F5670;
      *(v63 + 32) = BYTE2(v62);
      aBlock[0] = v63;

      sub_10040367C(v64);
      v136 = aBlock[0];
      v139 = sub_100568CF0(v62, 2uLL, v65, aBlock[0]);
    }

    v66 = sub_10028088C(&qword_100983A98, &qword_10080AF30);
    v155 = v66;
    v67 = sub_1005805AC();
    v156 = v67;
    aBlock[0] = v61;
    v68 = sub_10002CDC0(aBlock, v66);
    v69 = (*v68 + 32);
    v70 = *(*v68 + 16);
    swift_bridgeObjectRetain_n();
    sub_10057D698(v69, &v69[v70], &v150);
    if (v147)
    {
      break;
    }

    v71 = v150;
    v72 = v151;
    sub_10000C60C(aBlock);
    v155 = v66;
    v156 = v67;
    aBlock[0] = v59;
    v73 = sub_10002CDC0(aBlock, v66);
    v74 = (*v73 + 32);
    v75 = *(*v73 + 16);
    swift_bridgeObjectRetain_n();
    sub_10057D698(v74, &v74[v75], &v150);
    v147 = 0;

    v76 = v151;
    v145 = v150;
    sub_10000C60C(aBlock);
    swift_beginAccess();
    if (!*(*v148 + 16) || (sub_100011780(v71, v72, &Data.hash(into:), sub_100570EAC), (v77 & 1) == 0))
    {
      swift_endAccess();
      swift_beginAccess();
      sub_100294008(v71, v72);
      v78 = *v148;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = *v148;
      *v148 = 0x8000000000000000;
      sub_10057BF04(_swiftEmptySetSingleton, v71, v72, isUniquelyReferenced_nonNull_native);
      sub_100026AC0(v71, v72);
      *v148 = v150;
    }

    swift_endAccess();
    swift_beginAccess();
    v2 = sub_10056CEA4(aBlock, v71, v72);
    if (*v80)
    {
      sub_100294008(v145, v76);
      sub_10046E8A8(&v152, v145, v76);
      (v2)(aBlock, 0);
      swift_endAccess();
      sub_100026AC0(v152, v153);
    }

    else
    {
      (v2)(aBlock, 0);
      swift_endAccess();
    }

    if (v139)
    {
      v81 = sub_10057EA7C(v139);
      v83 = v82;

      v84 = sub_10057EA7C(v136);
      v140 = v85;

      swift_beginAccess();
      v130 = v76;
      if (!*(*v148 + 16) || (sub_100011780(v81, v83, &Data.hash(into:), sub_100570EAC), (v86 & 1) == 0))
      {
        swift_endAccess();
        swift_beginAccess();
        sub_100294008(v81, v83);
        v87 = *v148;
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v150 = *v148;
        *v148 = 0x8000000000000000;
        sub_10057BF04(_swiftEmptySetSingleton, v81, v83, v88);
        sub_100026AC0(v81, v83);
        *v148 = v150;
      }

      swift_endAccess();
      swift_beginAccess();
      v89 = sub_10056CEA4(aBlock, v81, v83);
      if (*v90)
      {
        v2 = v140;
        sub_100294008(v84, v140);
        sub_10046E8A8(&v152, v84, v140);
        (v89)(aBlock, 0);
        swift_endAccess();
        sub_100026AC0(v84, v140);
        sub_100026AC0(v81, v83);
        sub_100026AC0(v145, v130);
        sub_100026AC0(v71, v72);
        v47 = v152;
        v48 = v153;
      }

      else
      {
        (v89)(aBlock, 0);
        swift_endAccess();
        sub_100026AC0(v71, v72);
        sub_100026AC0(v145, v130);
        sub_100026AC0(v81, v83);
        v47 = v84;
        v48 = v140;
      }
    }

    else
    {
      sub_100026AC0(v71, v72);
      v47 = v145;
      v48 = v76;
    }

    sub_100026AC0(v47, v48);
    v45 = v142 + 1;
    v46 += 72;
    v40 = v133;
    if (v128 == v142 + 1)
    {
      goto LABEL_55;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_10056C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v14 != 2)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v17 = *(v9 + 16);
    v16 = *(v9 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(v11);
    goto LABEL_10;
  }

  LODWORD(v15) = HIDWORD(v9) - v9;
  if (__OFSUB__(HIDWORD(v9), v9))
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v15 = v15;
LABEL_10:
  v51 = v9;
  if (v15 == 2)
  {
    if (v14 == 2)
    {
      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      v21 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        v19 = v12;
        v20 = v13;
LABEL_21:
        v12 = sub_100294008(v9, v11);
        if (v21 == 2)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }

      goto LABEL_52;
    }

    if (v14 == 1)
    {
      if (!__OFSUB__(HIDWORD(v9), v9))
      {
        v19 = v12;
        v20 = v13;
        v21 = HIDWORD(v9) - v9;
        goto LABEL_21;
      }

      goto LABEL_50;
    }
  }

  else
  {
    if (v14 != 2)
    {
      if (v14 != 1)
      {
LABEL_30:
        v22 = BYTE6(v11);
        goto LABEL_31;
      }

      LODWORD(v22) = HIDWORD(v9) - v9;
      if (!__OFSUB__(HIDWORD(v9), v9))
      {
        v22 = v22;
        goto LABEL_31;
      }

      goto LABEL_51;
    }

    v29 = *(v9 + 16);
    v28 = *(v9 + 24);
    v18 = __OFSUB__(v28, v29);
    v22 = v28 - v29;
    if (!v18)
    {
LABEL_31:
      if (v22 == 32)
      {
        v30 = a4;
        v19 = v12;
        v20 = v13;
        v31 = sub_100580610(v12, v13);
        v33 = v32;
        v49 = a6;
        goto LABEL_39;
      }

      goto LABEL_53;
    }

    __break(1u);
  }

  v19 = v12;
  v20 = v13;
  if (BYTE6(v11) != 2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_22:
  sub_1002F15B0(v9, v11);
  sub_100026AC0(v9, v11);
  Data._Representation.subscript.getter();
  v25 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v25 == 2)
    {
      v26 = *(v19 + 16);
      v27 = *(v19 + 24);
      goto LABEL_36;
    }

LABEL_54:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v25)
  {
    v26 = v19;
    v27 = v19 >> 32;
  }

  else
  {
    v26 = 0;
    v27 = BYTE6(v20);
  }

LABEL_36:
  if (v27 < 1 || v27 < v26)
  {
    goto LABEL_54;
  }

  v30 = a4;
  v49 = a6;
  v34 = Data._Representation.subscript.getter();
  v36 = v35;
  v31 = sub_100580610(v34, v35);
  v33 = v37;
  sub_100026AC0(v34, v36);
LABEL_39:

  swift_beginAccess();
  v38 = *(v30 + 40);

  v39 = sub_100569230(v31, v33, v38);

  v40 = sub_100569230(v31, v33, v49);

  if (v39 & 1) != 0 || (v40)
  {
    sub_100026AC0(v19, v20);
    v41 = v51;
    v42 = v11;
  }

  else
  {
    swift_beginAccess();
    if (!*(*(a7 + 16) + 16) || (sub_100011780(v51, v11, &Data.hash(into:), sub_100570EAC), (v44 & 1) == 0))
    {
      swift_endAccess();
      swift_beginAccess();
      sub_100294008(v51, v11);
      v45 = *(a7 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_10057BF04(_swiftEmptySetSingleton, v51, v11, isUniquelyReferenced_nonNull_native);
      sub_100026AC0(v51, v11);
      *(a7 + 16) = v53;
    }

    swift_endAccess();
    swift_beginAccess();
    v47 = sub_10056CEA4(v52, v51, v11);
    if (*v48)
    {
      sub_100294008(v19, v20);
      sub_10046E8A8(v54, v19, v20);
      (v47)(v52, 0);
      swift_endAccess();
      sub_100026AC0(v19, v20);
      sub_100026AC0(v51, v11);
      v41 = v54[0];
      v42 = v54[1];
    }

    else
    {
      (v47)(v52, 0);
      swift_endAccess();
      sub_100026AC0(v51, v11);
      v41 = v19;
      v42 = v20;
    }
  }

  return sub_100026AC0(v41, v42);
}

uint64_t (*sub_10056CE1C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10057D85C(v6, a2, a3);
  return sub_1005818A0;
}

uint64_t (*sub_10056CEA4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10057D908(v6, a2, a3);
  return sub_10056CF2C;
}

void sub_10056CF30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.destroy()()
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  if ((*(v0 + 49) & 1) == 0)
  {
    v32 = v12;
    *(v0 + 49) = 1;
    if (*(v0 + 48) == 1)
    {
      [*(v0 + 16) close];
    }

    if (qword_100973A60 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100983A80);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "CDB: Destroy called", v18, 2u);
    }

    v31 = v1;

    v19 = sub_1001F149C();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      URL.appendingPathComponent(_:)();
      v21 = *(v3 + 8);
      v21(v10, v2);
      URL.appendingPathComponent(_:)();
      v22 = v32;
      URL.appendingPathExtension(_:)();
      v21(v7, v2);
      v21(v14, v2);
      URL.path.getter();
      v21(v22, v2);
      v23 = objc_opt_self();
      v24 = [v23 defaultManager];
      v25 = String._bridgeToObjectiveC()();
      LODWORD(v22) = [v24 fileExistsAtPath:v25];

      if (v22)
      {
        v26 = [v23 defaultManager];
        v27 = String._bridgeToObjectiveC()();

        v33 = 0;
        v28 = [v26 removeItemAtPath:v27 error:&v33];

        if (v28)
        {
          v29 = v33;
        }

        else
        {
          v30 = v33;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *SDAirDropHashStoreCDB.contact(forLongHash:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  if (*(v4 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v8 = 1;
    goto LABEL_5;
  }

  if (*(v4 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v8 = 2;
LABEL_5:
    *v7 = v8;
LABEL_6:
    swift_willThrow();
    return v6;
  }

  swift_beginAccess();
  v42 = v4;
  v10 = *(v4 + 32);
  v44 = v10;
  v45 = -*(v10 + 16);
  v11 = (v10 + 48);
  v12 = -1;
  while (v45 + v12 != -1)
  {
    if (++v12 >= *(v44 + 16))
    {
      __break(1u);
    }

    v50 = v11 + 9;
    v6 = *(v11 - 1);
    v43 = *(v11 - 2);
    v13 = *v11;
    v14 = v11[1];
    v16 = v11[4];
    v15 = v11[5];
    v18 = v11[2];
    v17 = v11[3];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v18);
    Hasher._combine(_:)(v17);
    Hasher._combine(_:)(v16);
    Hasher._combine(_:)(v15);
    v19 = Hasher._finalize()();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1);
    Hasher._combine(_:)(a2);
    Hasher._combine(_:)(a3);
    Hasher._combine(_:)(a4);
    v20 = Hasher._finalize()();
    v11 = v50;
    if (v19 == v20)
    {

      return v43;
    }
  }

  v21 = *(v4 + 16);
  sub_10028088C(&qword_100975038, &qword_1007F83D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007FA7E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v23 = v21;
  v24 = sub_100568E38(inited, 8);
  swift_setDeallocating();
  v25 = sub_10057EA7C(v24);
  v27 = v26;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v25, v27);
  sub_1000276B4(0, &qword_100973C78, NSData_ptr);
  v51[0] = 0;
  v29 = [v23 valueForKey:isa valueType:swift_getObjCClassFromMetadata() error:v51];

  if (v51[0])
  {
    v51[0];

    goto LABEL_6;
  }

  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v6 = sub_100580610(v31, v33);
  v35 = v34;
  sub_100026AC0(v31, v33);
  if (v5)
  {
  }

  else
  {
    swift_beginAccess();
    v36 = *(v42 + 40);

    v37 = sub_100569230(v6, v35, v36);

    v38 = *(v42 + 32);
    v39 = (v38 + 40);
    v40 = *(v38 + 16) + 1;
    while (--v40)
    {
      if (*(v39 - 1) != v6 || *v39 != v35)
      {
        v39 += 9;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    if ((v37 & 1) == 0)
    {
      return v6;
    }

LABEL_28:

    return 0;
  }

  return v6;
}

uint64_t *SDAirDropHashStoreCDB.contacts(forLongHash:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  if (*(v4 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v7 = 1;
    goto LABEL_5;
  }

  if (*(v4 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v7 = 2;
LABEL_5:
    *v6 = v7;
    swift_willThrow();
    return v5;
  }

  v61 = swift_allocObject();
  *(v61 + 16) = _swiftEmptySetSingleton;
  swift_beginAccess();
  v60 = v4;
  v9 = *(*(v4 + 32) + 16);

  if (v9)
  {
    v11 = 0;
    v12 = v10 + 32;
    v62 = v10;
    v59 = v10 + 32;
    do
    {
      v13 = v12 + 72 * v11;
      v14 = v11;
      while (1)
      {
        if (v14 >= *(v10 + 16))
        {
          __break(1u);
        }

        v15 = *(v13 + 64);
        v16 = *(v13 + 48);
        v17 = *(v13 + 16);
        v74 = *(v13 + 32);
        v75 = v16;
        v18 = *v13;
        v76 = v15;
        v72 = v18;
        v73 = v17;
        v11 = v14 + 1;
        v19 = v74;
        v20 = v75;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v19);
        Hasher._combine(_:)(*(&v19 + 1));
        Hasher._combine(_:)(v20);
        Hasher._combine(_:)(*(&v20 + 1));
        v21 = Hasher._finalize()();
        Hasher.init(_seed:)();
        Hasher._combine(_:)(a1);
        Hasher._combine(_:)(a2);
        Hasher._combine(_:)(a3);
        Hasher._combine(_:)(a4);
        if (v21 == Hasher._finalize()())
        {
          break;
        }

        v13 += 72;
        ++v14;
        v10 = v62;
        if (v9 == v11)
        {
          goto LABEL_19;
        }
      }

      sub_10055A394(&v72, &aBlock);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10028FF34(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_10028FF34((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[9 * v23];
      *(v24 + 2) = v72;
      v25 = v73;
      v26 = v74;
      v27 = v75;
      *(v24 + 24) = v76;
      *(v24 + 4) = v26;
      *(v24 + 5) = v27;
      *(v24 + 3) = v25;
      v12 = v59;
      v10 = v62;
    }

    while (v9 - 1 != v14);
  }

LABEL_19:

  v28 = _swiftEmptyArrayStorage[2];
  if (v28)
  {
    sub_10028FF74(0, v28, 0);
    v29 = v28 - 1;
    v30 = 4;
    v31 = v61;
    while (1)
    {
      aBlock = *&_swiftEmptyArrayStorage[v30];
      v32 = *&_swiftEmptyArrayStorage[v30 + 2];
      v33 = *&_swiftEmptyArrayStorage[v30 + 4];
      v34 = *&_swiftEmptyArrayStorage[v30 + 6];
      v71 = _swiftEmptyArrayStorage[v30 + 8];
      v69 = v33;
      v70 = v34;
      v68 = v32;
      sub_10055A394(&aBlock, &v72);
      v36 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      if (v36 >= v35 >> 1)
      {
        sub_10028FF74((v35 > 1), v36 + 1, 1);
      }

      v37 = aBlock;
      v38 = v68;
      _swiftEmptyArrayStorage[2] = v36 + 1;
      v39 = &_swiftEmptyArrayStorage[4 * v36];
      *(v39 + 2) = v37;
      *(v39 + 3) = v38;
      if (!v29)
      {
        break;
      }

      --v29;
      v30 += 9;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_26;
    }
  }

  else
  {

    v31 = v61;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_26:
      v40 = sub_100293120(_swiftEmptyArrayStorage);

      sub_1005696B4(v40);
      goto LABEL_29;
    }
  }

LABEL_29:
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v5 = (v41 + 16);
  sub_10028088C(&qword_100975038, &qword_1007F83D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007FA7E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v43 = sub_100568E38(inited, 8);
  swift_setDeallocating();
  v44 = sub_10057EA7C(v43);
  v46 = v45;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v44, v46);
  v48 = *(v60 + 16);
  v49 = swift_allocObject();
  v49[2] = v60;
  v49[3] = v31;
  v49[4] = v41;
  *&v69 = sub_10058085C;
  *(&v69 + 1) = v49;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v68 = sub_10056E078;
  *(&v68 + 1) = &unk_1008E7988;
  v50 = _Block_copy(&aBlock);
  v51 = v48;
  v52 = isa;

  *&aBlock = 0;
  v53 = [v51 enumerateValuesForKey:v52 error:&aBlock handler:v50];
  _Block_release(v50);

  v54 = aBlock;
  if (v53)
  {
    swift_beginAccess();
    if (*v5)
    {
      v55 = *v5;
      swift_willThrow();
      v56 = v54;
      swift_errorRetain();
    }

    else
    {
      v58 = v54;

      swift_beginAccess();
      v5 = *(v31 + 16);
    }
  }

  else
  {
    v57 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10056DEB0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = sub_100580610(v5, v6);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100026AC0(v5, v7);
  swift_beginAccess();
  v15 = *(a3 + 40);

  v16 = sub_100569230(v8, v10, v15);

  swift_beginAccess();
  v17 = *(a3 + 32);
  v18 = (v17 + 40);
  v19 = *(v17 + 16) + 1;
  while (--v19)
  {
    if (*(v18 - 1) != v8 || *v18 != v10)
    {
      v18 += 9;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  if (v16)
  {
LABEL_10:
  }

  swift_beginAccess();
  sub_10046FBBC(&v22, v8, v10, v14, v12);
  swift_endAccess();

  *a2 = 0;
  return result;
}

void sub_10056E078(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10056E47C(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, void *a5)
{
  v6 = BYTE2(a4);
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  result = Data._Representation.subscript.getter();
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_28;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    if (v14 < 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v13)
    {
      v14 = v9 >> 32;
    }

    else
    {
      v14 = BYTE6(v11);
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    if (v14 < 1)
    {
      goto LABEL_28;
    }
  }

  if (v14 < v15)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = v6;
  v37 = a5;
  v38 = a3;
  v41 = a2;
  v16 = Data._Representation.subscript.getter();
  v18 = v17;
  v19 = sub_100580610(v16, v17);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_100026AC0(v16, v18);
  sub_100026AC0(v9, v11);
  v26 = v25;
  if (v39 == v40)
  {
    swift_beginAccess();
    v27 = *(v38 + 40);

    v28 = sub_100569230(v19, v21, v27);

    swift_beginAccess();
    v29 = *(v38 + 32);
    v30 = (v29 + 40);
    v31 = *(v29 + 16) + 1;
    while (--v31)
    {
      if (*(v30 - 1) != v19 || *v30 != v21)
      {
        v30 += 9;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    if (v28)
    {
LABEL_26:
    }

    swift_beginAccess();
    v33 = v37[2];
    v34 = v37[3];
    v35 = v37[4];
    v36 = v37[5];
    v37[2] = v19;
    v37[3] = v21;
    v37[4] = v23;
    v37[5] = v26;
    result = sub_100581770(v33, v34);
    *v41 = 1;
  }

  else
  {
  }

  return result;
}

uint64_t SDAirDropHashStoreCDB.contacts(forMediumHash:)(int a1)
{
  if (*(v1 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v3 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v3 = 2;
LABEL_5:
    *v2 = v3;
    swift_willThrow();
    return v1;
  }

  v6 = BYTE2(a1);
  v58 = swift_allocObject();
  *(v58 + 16) = _swiftEmptySetSingleton;
  swift_beginAccess();
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  v57 = v6;
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    v11 = v8 - 1;
    do
    {
      v12 = (v10 + 72 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= *(v7 + 16))
        {
          __break(1u);
        }

        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
        v64 = *(v12 + 16);
        v17 = *v12;
        v62 = v15;
        v63 = v16;
        aBlock = v17;
        v61 = v14;
        if ((v64 & 0x1000000) == 0 && v64 == a1 && v6 == (v64 | (BYTE2(v64) << 16)) >> 16)
        {
          break;
        }

        ++v13;
        v12 = (v12 + 72);
        if (v8 == v13)
        {
          goto LABEL_20;
        }
      }

      v53 = v11;
      v54 = v10;
      sub_10055A394(&aBlock, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10028FF34(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = v53;
      v10 = v54;
      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_10028FF34((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        v11 = v53;
        v10 = v54;
        v6 = v57;
      }

      v9 = v13 + 1;
      _swiftEmptyArrayStorage[2] = v20;
      v21 = &_swiftEmptyArrayStorage[9 * v19];
      *(v21 + 2) = aBlock;
      v22 = v61;
      v23 = v62;
      v24 = v63;
      *(v21 + 24) = v64;
      *(v21 + 4) = v23;
      *(v21 + 5) = v24;
      *(v21 + 3) = v22;
    }

    while (v11 != v13);
  }

LABEL_20:

  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v55 = v1;
    sub_10028FF74(0, v25, 0);
    v26 = v25 - 1;
    for (i = 4; ; i += 9)
    {
      aBlock = *&_swiftEmptyArrayStorage[i];
      v28 = *&_swiftEmptyArrayStorage[i + 2];
      v29 = *&_swiftEmptyArrayStorage[i + 4];
      v30 = *&_swiftEmptyArrayStorage[i + 6];
      v64 = _swiftEmptyArrayStorage[i + 8];
      v62 = v29;
      v63 = v30;
      v61 = v28;
      sub_10055A394(&aBlock, v59);
      v32 = _swiftEmptyArrayStorage[2];
      v31 = _swiftEmptyArrayStorage[3];
      if (v32 >= v31 >> 1)
      {
        sub_10028FF74((v31 > 1), v32 + 1, 1);
        v1 = v55;
      }

      v33 = aBlock;
      v34 = v61;
      _swiftEmptyArrayStorage[2] = v32 + 1;
      v35 = &_swiftEmptyArrayStorage[4 * v32];
      *(v35 + 2) = v33;
      *(v35 + 3) = v34;
      if (!v26)
      {
        break;
      }

      --v26;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (_swiftEmptyArrayStorage[2])
    {
LABEL_27:
      v36 = sub_100293120(_swiftEmptyArrayStorage);

      sub_1005696B4(v36);
      goto LABEL_30;
    }
  }

LABEL_30:
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v56 = (v37 + 16);
  v39 = sub_100568CF0(a1, 2uLL, v38, v37 + 16);
  v40 = sub_10057EA7C(v39);
  v42 = v41;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v40, v42);
  v44 = *(v1 + 16);
  v45 = swift_allocObject();
  *(v45 + 16) = v1;
  *(v45 + 24) = a1;
  *(v45 + 26) = v57;
  *(v45 + 32) = v58;
  *(v45 + 40) = v37;
  *&v62 = sub_1005808C4;
  *(&v62 + 1) = v45;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_10056E078;
  *(&v61 + 1) = &unk_1008E7A50;
  v46 = _Block_copy(&aBlock);
  v47 = v44;
  v48 = isa;

  *&aBlock = 0;
  LODWORD(isa) = [v47 enumerateValuesForKey:v48 error:&aBlock handler:v46];
  _Block_release(v46);

  v1 = aBlock;
  if (isa)
  {
    swift_beginAccess();
    if (*v56)
    {
      v49 = *v56;
      swift_willThrow();
      v50 = v1;
      swift_errorRetain();
    }

    else
    {
      v52 = v1;

      swift_beginAccess();
      v1 = *(v58 + 16);
    }
  }

  else
  {
    v51 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10056ED20(uint64_t a1, _BYTE *a2, uint64_t a3, int a4)
{
  v4 = BYTE2(a4);
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  result = Data._Representation.subscript.getter();
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_28;
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v12 < 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v11)
    {
      v12 = v7 >> 32;
    }

    else
    {
      v12 = BYTE6(v9);
    }

    if (v11)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    if (v12 < 1)
    {
      goto LABEL_28;
    }
  }

  if (v12 < v13)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v32 = result;
  v33 = v4;
  v31 = a3;
  v34 = a2;
  v14 = Data._Representation.subscript.getter();
  v16 = v15;
  v17 = sub_100580610(v14, v15);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_100026AC0(v14, v16);
  sub_100026AC0(v7, v9);
  v24 = v23;
  if (v32 == v33)
  {
    swift_beginAccess();
    v25 = *(v31 + 40);

    v26 = sub_100569230(v17, v19, v25);

    swift_beginAccess();
    v27 = *(v31 + 32);
    v28 = (v27 + 40);
    v29 = *(v27 + 16) + 1;
    while (--v29)
    {
      if (*(v28 - 1) != v17 || *v28 != v19)
      {
        v28 += 9;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    if (v26)
    {
LABEL_26:
    }

    swift_beginAccess();
    sub_10046FBBC(&v35, v17, v19, v21, v24);
    swift_endAccess();

    *v34 = 0;
  }

  else
  {
  }

  return result;
}

uint64_t SDAirDropHashStoreCDB.contacts(forShortHash:)(int a1)
{
  if (*(v1 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v3 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v3 = 2;
LABEL_5:
    *v2 = v3;
    swift_willThrow();
    return v1;
  }

  v53 = swift_allocObject();
  *(v53 + 16) = _swiftEmptySetSingleton;
  swift_beginAccess();
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = v7 - 1;
    do
    {
      v10 = v6 + 32 + 72 * v8;
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v6 + 16))
        {
          __break(1u);
        }

        v12 = *(v10 + 16);
        v13 = *(v10 + 32);
        v14 = *(v10 + 48);
        v59 = *(v10 + 64);
        v15 = *v10;
        v57 = v13;
        v58 = v14;
        aBlock = v15;
        v56 = v12;
        if ((v59 & 0x1000000) == 0 && v59 == a1)
        {
          break;
        }

        ++v11;
        v10 += 72;
        if (v7 == v11)
        {
          goto LABEL_19;
        }
      }

      v50 = v9;
      sub_10055A394(&aBlock, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10028FF34(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10028FF34((v16 > 1), v17 + 1, 1);
      }

      v8 = v11 + 1;
      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[9 * v17];
      *(v18 + 2) = aBlock;
      v19 = v56;
      v20 = v57;
      v21 = v58;
      *(v18 + 24) = v59;
      *(v18 + 4) = v20;
      *(v18 + 5) = v21;
      *(v18 + 3) = v19;
      v9 = v50;
    }

    while (v50 != v11);
  }

LABEL_19:

  v22 = _swiftEmptyArrayStorage[2];
  if (v22)
  {
    v51 = v1;
    sub_10028FF74(0, v22, 0);
    v23 = v22 - 1;
    for (i = 4; ; i += 9)
    {
      aBlock = *&_swiftEmptyArrayStorage[i];
      v25 = *&_swiftEmptyArrayStorage[i + 2];
      v26 = *&_swiftEmptyArrayStorage[i + 4];
      v27 = *&_swiftEmptyArrayStorage[i + 6];
      v59 = _swiftEmptyArrayStorage[i + 8];
      v57 = v26;
      v58 = v27;
      v56 = v25;
      sub_10055A394(&aBlock, v54);
      v29 = _swiftEmptyArrayStorage[2];
      v28 = _swiftEmptyArrayStorage[3];
      if (v29 >= v28 >> 1)
      {
        sub_10028FF74((v28 > 1), v29 + 1, 1);
        v1 = v51;
      }

      v30 = aBlock;
      v31 = v56;
      _swiftEmptyArrayStorage[2] = v29 + 1;
      v32 = &_swiftEmptyArrayStorage[4 * v29];
      *(v32 + 2) = v30;
      *(v32 + 3) = v31;
      if (!v23)
      {
        break;
      }

      --v23;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (_swiftEmptyArrayStorage[2])
    {
LABEL_26:
      v33 = sub_100293120(_swiftEmptyArrayStorage);

      sub_1005696B4(v33);
      goto LABEL_29;
    }
  }

LABEL_29:
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v52 = (v34 + 16);
  v36 = sub_100568CF0(a1, 2uLL, v35, v34 + 16);
  v37 = sub_10057EA7C(v36);
  v39 = v38;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v37, v39);
  v41 = *(v1 + 16);
  v42 = swift_allocObject();
  *(v42 + 16) = v1;
  *(v42 + 24) = a1;
  *(v42 + 32) = v53;
  *(v42 + 40) = v34;
  *&v57 = sub_100580944;
  *(&v57 + 1) = v42;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v56 = sub_10056E078;
  *(&v56 + 1) = &unk_1008E7AA0;
  v43 = _Block_copy(&aBlock);
  v44 = v41;
  v45 = isa;

  *&aBlock = 0;
  LODWORD(isa) = [v44 enumerateValuesForKey:v45 error:&aBlock handler:v43];
  _Block_release(v43);

  v1 = aBlock;
  if (isa)
  {
    swift_beginAccess();
    if (*v52)
    {
      v46 = *v52;
      swift_willThrow();
      v47 = v1;
      swift_errorRetain();
    }

    else
    {
      v49 = v1;

      swift_beginAccess();
      v1 = *(v53 + 16);
    }
  }

  else
  {
    v48 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10056F5B4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  result = Data._Representation.subscript.getter();
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_25;
    }

    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v10 < 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v9)
    {
      v10 = v5 >> 32;
    }

    else
    {
      v10 = BYTE6(v7);
    }

    if (v9)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    if (v10 < 1)
    {
      goto LABEL_25;
    }
  }

  if (v10 < v11)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v28 = a2;
  v12 = Data._Representation.subscript.getter();
  v14 = v13;
  v15 = sub_100580610(v12, v13);
  v17 = v16;
  v27 = v18;
  v20 = v19;
  sub_100026AC0(v12, v14);
  sub_100026AC0(v5, v7);
  swift_beginAccess();
  v21 = *(a3 + 40);

  v22 = sub_100569230(v15, v17, v21);

  swift_beginAccess();
  v23 = *(a3 + 32);
  v24 = (v23 + 40);
  v25 = *(v23 + 16) + 1;
  while (--v25)
  {
    if (*(v24 - 1) != v15 || *v24 != v17)
    {
      v24 += 9;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  if (v22)
  {
LABEL_22:
  }

  swift_beginAccess();
  sub_10046FBBC(&v29, v15, v17, v27, v20);
  swift_endAccess();

  *v28 = 0;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.contains(shortHash:)(DaemoniOSLibrary::ShortHash shortHash)
{
  if (*(v1 + 48) != 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    v2 = 2;
LABEL_5:
    sub_10055A164();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    return v2 & 1;
  }

  v5 = *&shortHash;
  swift_beginAccess();
  v6 = *(v1 + 32);
  v7 = (v6 + 99);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7;
    v7 += 72;
    if ((*v9 & 1) == 0 && *(v9 - 3) == v5)
    {
      v2 = 1;
      return v2 & 1;
    }
  }

  v10 = *(v1 + 16);
  v11 = v5;
  v12 = v10;
  v15 = sub_100568CF0(v11, 2uLL, v13, v14);
  v16 = sub_10057EA7C(v15);
  v18 = v17;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v16, v18);
  v2 = [v12 valueExistsForKey:isa];

  return v2 & 1;
}

uint64_t SDAirDropHashStoreCDB.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t SDAirDropHashStoreCDB.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t SDAirDropHashStoreCDB.dumpDB(atFileURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v6 = *(v2 + 16);
  sub_1000276B4(0, &qword_100973C78, NSData_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v5;
  aBlock[4] = sub_10058099C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10032765C;
  aBlock[3] = &unk_1008E7B18;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  aBlock[0] = 0;
  LODWORD(ObjCClassFromMetadata) = [v10 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:aBlock handler:v9];
  _Block_release(v9);

  if (ObjCClassFromMetadata)
  {
    v11 = aBlock[0];
  }

  else
  {
    v12 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_beginAccess();
  v14 = *(v4 + 16);
  v13 = *(v4 + 24);
  swift_beginAccess();
  v16 = *(v5 + 16);
  v15 = *(v5 + 24);

  sub_1005809A8(a1, v14, v13, v16, v15);

  return 1;
}

void *sub_10056FEA0(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  result = SDAirDropHashStoreCDB.contact(forLongHash:)(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_10056FF64()
{
  v0 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  result = sub_100580DAC(v0, v2, v3, v4);
  v8 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v8 != 2 || !__OFSUB__(*(v0 + 24), *(v0 + 16)))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (!v8 || !__OFSUB__(HIDWORD(v0), v0))
  {
LABEL_8:
    v10._countAndFlagsBits = result;
    v10._object = v7;

    v9._countAndFlagsBits = 10;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);

    swift_beginAccess();
    String.append(_:)(v10);
    swift_endAccess();
    sub_100026AC0(v3, v5);
    sub_100026AC0(v0, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100570178(uint64_t result, int a2, uint64_t (*a3)(_BYTE *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = __stack_chk_guard;
  if (result < 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v6 = a6;
  v9 = a5;
  v13 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v14 = 0;
    if (v13 == 2)
    {
      v14 = *(a5 + 16);
    }
  }

  else
  {
    v11 = a5;
    if (v13)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }
  }

  if (!result)
  {
    goto LABEL_18;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_25;
    }

    v11 = *(a5 + 16);
    if (v11 != *(a5 + 24))
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v13 <= 1)
    {
      if (v13)
      {
        v16 = a5 >> 32;
        if (v14 != a5 >> 32)
        {
          goto LABEL_30;
        }

LABEL_28:
        if (a2)
        {
          sub_100026AC0(a5, a6);
          return _swiftEmptyArrayStorage;
        }

LABEL_30:
        if (v16 >= v14)
        {
          v7 = Data._Representation.subscript.getter();
          v10 = v17;
          sub_100026AC0(v9, v6);
          result = sub_10028EEAC(0, 1, 1, _swiftEmptyArrayStorage);
          v9 = *(result + 16);
          v11 = *(result + 24);
          v6 = v9 + 1;
          if (v9 < v11 >> 1)
          {
LABEL_32:
            *(result + 16) = v6;
            v18 = result + 16 * v9;
            *(v18 + 32) = v7;
            *(v18 + 40) = v10;
            return result;
          }

LABEL_87:
          result = sub_10028EEAC((v11 > 1), v6, 1, result);
          goto LABEL_32;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_20:
      v16 = BYTE6(a6);
      if (v14 != BYTE6(a6))
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (v13 == 2)
    {
      v16 = *(a5 + 24);
      if (v14 != v16)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_25:
    v16 = 0;
    if (v14)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!v13)
  {
    if ((a6 & 0xFF000000000000) != 0)
    {
      v15 = BYTE6(a6);
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v11 = a5;
  if (a5 == a5 >> 32)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v13 == 2)
  {
    v15 = *(a5 + 24);
  }

  else
  {
    v15 = a5 >> 32;
  }

LABEL_34:
  v46 = a5;
  v42 = -v15;
  v43 = a5 >> 32;
  v19 = _swiftEmptyArrayStorage;
  v44 = BYTE6(a6);
  while (2)
  {
    if (v14 == v15)
    {
      v14 = v15;
      goto LABEL_70;
    }

    v38 = result;
    v40 = a2;
    if (v13 == 3)
    {
      __break(1u);
      return result;
    }

    v41 = v19;
    v45 = &v51[v14];
    v39 = v15;
LABEL_38:
    v20 = 0;
    v21 = v42 + v14;
    v47 = v14;
    while (1)
    {
      v22 = v14 + v20;
      if (v13 == 1)
      {
        v11 = v46;
        if (v22 < v46)
        {
          goto LABEL_81;
        }

        v11 = v43;
        if (v22 >= v43)
        {
          goto LABEL_81;
        }

        v24 = v8;
        v25 = __DataStorage._bytes.getter();
        if (!v25)
        {
          goto LABEL_91;
        }

        v10 = v25;
        v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        result = __DataStorage._offset.getter();
        v11 = v22 - result;
        if (__OFSUB__(v22, result))
        {
          goto LABEL_83;
        }

LABEL_53:
        v23 = *(v10 + v11);
        v8 = v24;
        v14 = v47;
        goto LABEL_54;
      }

      if (v13)
      {
        v11 = *(v9 + 16);
        if (v22 < v11)
        {
          goto LABEL_80;
        }

        v11 = *(v9 + 24);
        if (v22 >= v11)
        {
          goto LABEL_82;
        }

        v24 = v8;
        v26 = __DataStorage._bytes.getter();
        if (!v26)
        {
          goto LABEL_92;
        }

        v10 = v26;
        v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        result = __DataStorage._offset.getter();
        v11 = v22 - result;
        if (__OFSUB__(v22, result))
        {
          goto LABEL_84;
        }

        goto LABEL_53;
      }

      v11 = v44;
      if (v22 >= v44)
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v51[0] = v46;
      v51[1] = BYTE1(v9);
      v51[2] = BYTE2(v9);
      v51[3] = BYTE3(v9);
      v51[4] = BYTE4(v9);
      v51[5] = BYTE5(v9);
      v51[6] = BYTE6(v9);
      v51[7] = HIBYTE(v9);
      v52 = v6;
      v53 = BYTE2(v6);
      v54 = BYTE3(v6);
      v55 = BYTE4(v6);
      v56 = BYTE5(v6);
      v23 = v45[v20];
LABEL_54:
      v51[0] = v23;
      v7 = a4;
      result = a3(v51);
      if (v8)
      {
        sub_100026AC0(v9, v6);
      }

      if (result)
      {
        break;
      }

      ++v20;
      if (!(v21 + v20))
      {
        LOBYTE(a2) = v40;
        v19 = v41;
        v15 = v39;
        goto LABEL_70;
      }
    }

    if (v20 || (v40 & 1) == 0)
    {
      v27 = v41;
      if (v14 + v20 < v14)
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
      }

      v10 = 0;
      v48 = Data._Representation.subscript.getter();
      v29 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_10028EEAC(0, *(v41 + 2) + 1, 1, v41);
      }

      v31 = *(v27 + 2);
      v30 = *(v27 + 3);
      v32 = v27;
      v7 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v32 = sub_10028EEAC((v30 > 1), v31 + 1, 1, v32);
      }

      *(v32 + 2) = v7;
      v33 = &v32[16 * v31];
      v19 = v32;
      *(v33 + 4) = v48;
      *(v33 + 5) = v29;
      v14 += v20 + 1;
      result = v38;
      v15 = v39;
      a2 = v40;
      if (v7 == v38)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  ++v14;
  ++v45;
  v15 = v39;
  if (v14 != v39)
  {
    goto LABEL_38;
  }

  v14 = v39;
  LOBYTE(a2) = v40;
  v19 = v41;
LABEL_70:
  if (v14 == v15 && (a2 & 1) != 0)
  {
    sub_100026AC0(v9, v6);
    return v19;
  }

  if (v15 < v14)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v10 = v34;
    sub_100026AC0(v9, v6);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_75;
    }
  }

  v19 = sub_10028EEAC(0, *(v19 + 2) + 1, 1, v19);
LABEL_75:
  result = v19;
  v36 = *(v19 + 2);
  v35 = *(v19 + 3);
  if (v36 >= v35 >> 1)
  {
    result = sub_10028EEAC((v35 > 1), v36 + 1, 1, v19);
  }

  *(result + 16) = v36 + 1;
  v37 = result + 16 * v36;
  *(v37 + 32) = v7;
  *(v37 + 40) = v10;
  return result;
}

unint64_t sub_100570754(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100570B34(a1, v4);
}

unint64_t sub_100570798(Swift::UInt32 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100570BFC(a1, v4);
}

unint64_t sub_100570804(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100570C68(a1, v4);
}

unint64_t sub_100570848(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_10000D494(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10000D524(a1, v5, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_100983CA8, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
}

unint64_t sub_10057091C(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100570D3C(a1, v4);
}

unint64_t sub_100570988(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for URL();
  sub_10000D494(&unk_100975170, &type metadata accessor for URL);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10000D524(a1, v5, &type metadata accessor for URL, &unk_10097F0F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100570A5C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100570DA8(a1, v4);
}

unint64_t sub_100570AEC(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_100570BFC(a1, v4);
}

unint64_t sub_100570B34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100010684(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100285E74(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100570BFC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100570C68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100570D3C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100570DA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100570EAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_100294008(v17, v16);
          sub_100330108(v45, v9, v8, &v44);
          sub_100026AC0(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_100294008(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_100294008(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_100330108(v34, a1, a2, v45);
        sub_100026AC0(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100294008(v17, v16);
      sub_100330108(v45, v9, v8, &v44);
      sub_100026AC0(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

uint64_t sub_1005712AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10028088C(&qword_100974630, &unk_1007F6570);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1000106E0(v22, v34);
      }

      else
      {
        sub_10000C5B0(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_10000D494(&qword_100975420, type metadata accessor for CFString);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1000106E0(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10057158C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10028088C(&unk_1009744B0, &unk_1007F9630);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_1000106E0((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100010684(v24, &v37);
        sub_10000C5B0(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1000106E0(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100571858(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10028088C(&qword_1009762B8, &qword_1007F9428);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10000D494(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}