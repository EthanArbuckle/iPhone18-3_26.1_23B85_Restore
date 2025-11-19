uint64_t sub_1003BB2F4()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1072);
  *(v0 + 1192) = (*(v0 + 1176))(*(v0 + 1160), *(v0 + 1168), 1, *(v0 + 960));
  *(v0 + 1200) = 0;

  return _swift_task_switch(sub_1003BB3C8, 0, 0);
}

uint64_t sub_1003BB3C8()
{
  v1 = v0[149];
  [v1 deviceID];
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v250 = v0[142];
  v263 = v0[138];
  v257 = v0[137];
  v220 = v0[136];
  v214 = v0[135];
  v209 = v0[126];
  v4 = v0[125];
  v241 = v0[120];
  v244 = v0[123];
  v231 = v0[122];
  v235 = v0[115];
  v238 = v0[114];
  v261 = v0;
  v5 = v0[100];
  v254 = v0[85];
  v212 = v0[81];
  v217 = v0[61];
  v6 = v0[149];
  v7 = [v6 pairingName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [v6 vendorName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [v6 modelName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)();
  v10 = type metadata accessor for WAPairedDevice.PairingInfo();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = v261;
  WAPairedDevice.init(id:name:pairingInfo:)();
  sub_100016290(v209, &qword_1005989F0, &qword_1004B28F0);
  v214(v4, 0, 1, v212);
  sub_10001CEA8(v4, v209, &qword_1005989F0, &qword_1004B28F0);
  v12 = [v217 serviceName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  WASubscribableService.init(name:)();
  v250(v241, v238);
  sub_100016290(v244, &qword_1005989E8, &qword_1004B28E8);
  v257(v231, 0, 1, v254);
  sub_10001CEA8(v231, v244, &qword_1005989E8, &qword_1004B28E8);
  v13 = v261[141];
  v264 = v261[144];
  if (v264)
  {
    v245 = v261[141];
    v258 = v261[143];
    v14 = v261[150];
    v15 = v261[63];
    v16 = v261[61];
    v17 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
    swift_beginAccess();
    v18 = *(v15 + v17);
    v19 = v16;

    v21 = sub_1003E37EC(v20, v19);
    v23 = v22;
    v25 = v24;
    v229 = v14;
    LODWORD(v14) = ~v24;

    if (v14)
    {
      v26 = v261[96];
      swift_beginAccess();
      sub_10046EB1C(v26, v21, v23);
      sub_1003E8ED4(v26, type metadata accessor for BrowseEndpoints);
      swift_endAccess();
      sub_100085170(v21, v23, v25);
    }

    v251 = v17;
    v255 = v15;
    v27 = v261[93];
    v28 = v261[90];
    v29 = v261[89];
    v30 = v261[61];
    v31 = *(sub_10005DC58(qword_1005994E0, &qword_1004B2E90) + 80);
    *v27 = v258;
    v27[1] = v264;

    v32 = [v30 serviceName];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v261[47] = v33;
    v261[48] = v35;
    v27[2] = String.init<A>(_:)();
    v27[3] = v36;
    v27[4] = 0x6C61636F6CLL;
    v27[5] = 0xE500000000000000;
    NWInterface.init(_:)();
    (*(v28 + 104))(v27, enum case for NWEndpoint.service(_:), v29);
    v261[57] = [v30 signature];
    v37 = sub_1002AAFAC(v261 + 456, 8);
    v39 = v38;
    static WABrowserAgentInterface.browseResultSignatureKey.getter();
    sub_10000AB0C(v37, v39);
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    v236 = v37;
    v239 = v39;
    sub_1000124C8(v37, v39);

    v40 = v261[121];
    v41 = v261[86];
    v42 = v261[85];
    sub_100012400(v261[123], v40, &qword_1005989E8, &qword_1004B28E8);
    if ((*(v41 + 48))(v40, 1, v42) == 1)
    {
      sub_100016290(v261[121], &qword_1005989E8, &qword_1004B28E8);
    }

    else
    {
      v55 = v261[126];
      v56 = v261[124];
      v57 = v261[82];
      v58 = v261[81];
      (*(v261[86] + 32))(v261[88], v261[121], v261[85]);
      sub_100012400(v55, v56, &qword_1005989F0, &qword_1004B28F0);
      v59 = (*(v57 + 48))(v56, 1, v58);
      v60 = v261[124];
      if (v59 == 1)
      {
        (*(v261[86] + 8))(v261[88], v261[85]);
        sub_100016290(v60, &qword_1005989F0, &qword_1004B28F0);
      }

      else
      {
        v224 = v261[110];
        v62 = v261[88];
        v63 = v261[87];
        v64 = v261[86];
        v65 = v261[85];
        v66 = v261[84];
        v67 = v261[83];
        v68 = v261[82];
        v69 = v261[81];
        v221 = v261[80];
        (*(v68 + 32))(v66, v60, v69);
        v227 = *(v64 + 16);
        v227(v63, v62, v65);
        v232 = *(v68 + 16);
        v232(v67, v66, v69);
        WABrowserAgentInterface.AgentToEndpoint.init(service:device:)();
        Logger.init(subsystem:category:)();
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = v261[79];
          v73 = swift_slowAlloc();
          *v73 = 134217984;
          *(v73 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v70, v71, "#### resultDescriptor: %ld", v73, 0xCu);
        }

        v74 = v261[110];
        v75 = v261[102];
        v76 = v261[101];
        v77 = v261[80];

        v245(v74, v76);
        v78 = WABrowserAgentInterface.AgentToEndpoint.encode()();
        if (v229)
        {
          v80 = v261[103];
          Logger.init(subsystem:category:)();
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();
          v83 = os_log_type_enabled(v81, v82);
          v84 = v261[103];
          v85 = v261[101];
          if (v83)
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v81, v82, "#### Encode failed", v86, 2u);
          }

          v245(v84, v85);
        }

        else
        {
          v87 = v261[93];
          v88 = v78;
          v89 = v79;
          static WABrowserAgentInterface.browseResultKey.getter();
          NWEndpoint.setCustomMetadataForKey(key:metadata:)();

          sub_1000124C8(v88, v89);
        }

        v198 = v261[138];
        v196 = v261[137];
        v203 = v261[136];
        v200 = v261[135];
        v205 = v261[95];
        v90 = v261[94];
        v91 = v261[93];
        v92 = v261[90];
        v93 = v261[89];
        v94 = v261[88];
        v246 = v261[86];
        v95 = v261[85];
        v96 = v261[84];
        v225 = v261[82];
        v97 = v261[81];
        v222 = v261[80];
        v215 = v261[78];
        v218 = v261[77];
        v98 = v261[76];
        v99 = v261[61];
        v207 = [v99 signature];
        (*(v92 + 16))(v98, v91, v93);
        v100 = v90[5];
        v210 = v95;
        v227(v98 + v100, v94, v95);
        v196(v98 + v100, 0, 1, v95);
        v11 = v261;
        v101 = v90[6];
        v232(v98 + v101, v96, v97);
        v200(v98 + v101, 0, 1, v97);

        v102 = [v99 serviceName];
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v104;

        v261[51] = v103;
        v261[52] = v105;
        v106 = String.init<A>(_:)();
        v107 = (v98 + v90[7]);
        *v107 = v258;
        v107[1] = v264;
        v108 = (v98 + v90[8]);
        *v108 = v106;
        v108[1] = v109;
        (*(v205 + 56))(v98, 0, 1, v90);
        swift_beginAccess();
        sub_10033869C(v98, v207);
        swift_endAccess();
        (*(v215 + 8))(v222, v218);
        (*(v225 + 8))(v96, v97);
        (*(v246 + 8))(v94, v210);
      }
    }

    v110 = v11[99];
    v111 = v11[98];
    v247 = v11[97];
    v112 = v11[93];
    v113 = v11[60];
    static WABrowserAgentInterface.browseResultIsPairedKey.getter();
    v114 = sub_10002D874(&off_1005730C0);
    v116 = v115;
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    sub_1000124C8(v114, v116);

    static WABrowserAgentInterface.browseResultDeviceNameKey.getter();
    static String.Encoding.utf8.getter();
    v117 = String.data(using:allowLossyConversion:)();
    v119 = v118;

    (*(v111 + 8))(v110, v247);
    NWEndpoint.setCustomMetadataForKey(key:metadata:)();
    sub_100017554(v117, v119);

    v233 = v113;
    v120 = *(v113 + 16);
    if (v120)
    {
      v121 = v11[115];
      v122 = v11[114];
      v123 = v11[74];
      v124 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
      swift_beginAccess();
      (*(v121 + 16))(v123, v120 + v124, v122);
      v125 = 0;
    }

    else
    {
      v125 = 1;
    }

    v242 = v11[95];
    v126 = v11[93];
    v127 = v11[90];
    (*(v11[115] + 56))(v11[74], v125, 1, v11[114]);
    NWEndpoint.preferredAgentIdentifier.setter();
    v128 = *(v255 + v251);
    v131 = *(v128 + 64);
    v130 = v128 + 64;
    v129 = v131;
    v132 = -1;
    v133 = -1 << *(*(v255 + v251) + 32);
    if (-v133 < 64)
    {
      v132 = ~(-1 << -v133);
    }

    v134 = v132 & v129;
    v135 = (63 - v133) >> 6;
    v248 = *(v255 + v251);
    v252 = v127;
    v259 = (v127 + 16);

    v136 = 0;
    v137 = _swiftEmptyArrayStorage;
    v138 = &qword_1005994A8;
    v139 = &unk_1004B2E10;
    if (!v134)
    {
      goto LABEL_28;
    }

LABEL_27:
    v265 = v137;
    v140 = v136;
LABEL_36:
    v143 = v11[96];
    v144 = v11[72];
    v145 = __clz(__rbit64(v134));
    v134 &= v134 - 1;
    v146 = v145 | (v140 << 6);
    v147 = *(*(v248 + 48) + 8 * v146);
    sub_1003E8CDC(*(v248 + 56) + *(v242 + 72) * v146, v143, type metadata accessor for BrowseEndpoints);
    v148 = sub_10005DC58(v138, v139);
    v149 = v139;
    v150 = v138;
    v151 = v148;
    v152 = *(v148 + 48);
    *v144 = v147;
    v11 = v261;
    sub_100046A08(v143, v144 + v152, type metadata accessor for BrowseEndpoints);
    v153 = *(*(v151 - 8) + 56);
    v154 = v151;
    v138 = v150;
    v139 = v149;
    v153(v144, 0, 1, v154);
    v137 = v265;
    while (1)
    {
      v155 = v11[73];
      sub_10001CEA8(v11[72], v155, &qword_1005994A0, &qword_1004B2E08);
      v156 = sub_10005DC58(v138, v139);
      if ((*(*(v156 - 8) + 48))(v155, 1, v156) == 1)
      {
        break;
      }

      v157 = v11[73];
      v158 = *(v156 + 48);
      (*v259)(v11[92], v157 + v158, v11[89]);
      sub_1003E8ED4(v157 + v158, type metadata accessor for BrowseEndpoints);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_1003A7D74(0, v137[2] + 1, 1, v137);
      }

      v160 = v137[2];
      v159 = v137[3];
      if (v160 >= v159 >> 1)
      {
        v137 = sub_1003A7D74(v159 > 1, v160 + 1, 1, v137);
      }

      v161 = v11[92];
      v162 = v11[89];
      v137[2] = v160 + 1;
      (*(v252 + 32))(v137 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v160, v161, v162);
      if (v134)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v135 <= v136 + 1)
      {
        v141 = v136 + 1;
      }

      else
      {
        v141 = v135;
      }

      v142 = v141 - 1;
      while (1)
      {
        v140 = v136 + 1;
        if (__OFADD__(v136, 1))
        {
          __break(1u);
        }

        if (v140 >= v135)
        {
          break;
        }

        v134 = *(v130 + 8 * v140);
        ++v136;
        if (v134)
        {
          v265 = v137;
          v136 = v140;
          goto LABEL_36;
        }
      }

      v163 = v11[72];
      v164 = sub_10005DC58(v138, v139);
      (*(*(v164 - 8) + 56))(v163, 1, 1, v164);
      v134 = 0;
      v136 = v142;
    }

    v61 = v11;
    v165 = v11[134];
    v166 = v61[126];
    v167 = v61[123];
    v168 = v61[93];
    v169 = v61[90];
    v170 = v61[89];
    if (*(v233 + 16))
    {
      v266 = v61[126];
      v172 = v61[61];
      v171 = v61[62];

      sub_1003F90B4(v171, v137);

      sub_1000124C8(v236, v239);

      (*(v169 + 8))(v168, v170);
      sub_100016290(v167, &qword_1005989E8, &qword_1004B28E8);
      sub_100016290(v266, &qword_1005989F0, &qword_1004B28F0);
    }

    else
    {
      v173 = v61[61];

      sub_1000124C8(v236, v239);

      (*(v169 + 8))(v168, v170);
      sub_100016290(v167, &qword_1005989E8, &qword_1004B28E8);
      sub_100016290(v166, &qword_1005989F0, &qword_1004B28F0);
    }
  }

  else
  {
    v43 = v261[109];
    Logger.init(subsystem:category:)();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v261[134];
    v48 = v261[126];
    v49 = v261[123];
    v50 = v261[109];
    v51 = v261[102];
    v52 = v261[101];
    v53 = v261[61];
    if (v46)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "#### DeviceName unknown", v54, 2u);
    }

    v13(v50, v52);
    sub_100016290(v49, &qword_1005989E8, &qword_1004B28E8);
    sub_100016290(v48, &qword_1005989F0, &qword_1004B28F0);
    v61 = v261;
  }

  v174 = v61[133];
  v175 = v61[132];
  v176 = v61[126];
  v177 = v61[125];
  v178 = v61[124];
  v179 = v61[123];
  v180 = v61[122];
  v181 = v61[121];
  v182 = v61[120];
  v183 = v61[119];
  v186 = v61[118];
  v187 = v61[117];
  v188 = v61[116];
  v189 = v61[113];
  v190 = v61[112];
  v191 = v61[111];
  v192 = v61[110];
  v193 = v61[109];
  v194 = v61[108];
  v195 = v61[107];
  v197 = v61[106];
  v199 = v61[105];
  v201 = v61[104];
  v202 = v61[103];
  v204 = v61[100];
  v206 = v61[99];
  v208 = v61[96];
  v211 = v61[93];
  v213 = v61[92];
  v216 = v61[91];
  v219 = v61[88];
  v223 = v61[87];
  v226 = v61[84];
  v228 = v61[83];
  v230 = v61[80];
  v234 = v61[76];
  v237 = v61[75];
  v240 = v61[74];
  v243 = v61[73];
  v249 = v61[72];
  v253 = v61[71];
  v256 = v61[70];
  v260 = v61[69];
  v262 = v61[68];
  v267 = v61[67];

  v184 = v61[1];

  return v184();
}

uint64_t sub_1003BC970()
{
  v273 = v0;
  if ((*(v0 + 1208) & 1) == 0)
  {
    v21 = *(v0 + 1152);
    v22 = *(v0 + 1120);
    v23 = *(v0 + 1112);
    v24 = *(v0 + 960);
    v25 = *(v0 + 928);
    v26 = *(v0 + 912);
    v27 = *(v0 + 832);
    v28 = v271[62];

    Logger.init(subsystem:category:)();
    v23(v25, v24, v26);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v266 = v271[150];
    if (v31)
    {
      v218 = v271[145];
      v220 = v271[146];
      v216 = v271[142];
      v261 = v271[126];
      v251 = v271[141];
      v256 = v271[123];
      v32 = v271[116];
      v33 = v271[115];
      v34 = v271[114];
      v239 = v271[104];
      v244 = v271[120];
      v231 = v271[102];
      v234 = v271[101];
      v224 = v271[134];
      v227 = v271[61];
      v35 = swift_slowAlloc();
      v272[0] = swift_slowAlloc();
      *v35 = 136315394;
      sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v216(v32, v34);
      v39 = v36;
      v40 = v271;
      v41 = sub_100002320(v39, v38, v272);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_100002320(v218, v220, v272);
      _os_log_impl(&_mh_execute_header, v29, v30, "#### Device %s not paired for %s. Dropping the result", v35, 0x16u);
      swift_arrayDestroy();

      v251(v239, v234);
      v216(v244, v34);
    }

    else
    {
      v110 = v271[142];
      v111 = v271[134];
      v261 = v271[126];
      v253 = v271[141];
      v256 = v271[123];
      v247 = v271[120];
      v112 = v271[116];
      v113 = v271[115];
      v114 = v271[114];
      v115 = v271[104];
      v116 = v271[102];
      v117 = v271[101];
      v118 = v271[61];

      v110(v112, v114);
      v119 = v115;
      v40 = v271;
      v253(v119, v117);
      v110(v247, v114);
    }

    sub_100016290(v256, &qword_1005989E8, &qword_1004B28E8);
    v120 = v261;
    goto LABEL_41;
  }

  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 960);
  v4 = *(v0 + 936);
  v5 = *(v0 + 912);
  v6 = *(v0 + 840);
  v7 = *(v0 + 496);
  Logger.init(subsystem:category:)();
  v2(v4, v3, v5);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1200);
  if (v10)
  {
    v230 = *(v0 + 1168);
    v223 = *(v0 + 1160);
    v12 = *(v0 + 1136);
    v255 = *(v0 + 1128);
    v260 = *(v0 + 960);
    v13 = *(v0 + 936);
    v14 = *(v0 + 920);
    v15 = *(v0 + 912);
    v238 = *(v0 + 816);
    v243 = *(v0 + 808);
    v250 = *(v0 + 840);
    v16 = swift_slowAlloc();
    v272[0] = swift_slowAlloc();
    *v16 = 136315394;
    sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v12(v13, v15);
    v20 = sub_100002320(v17, v19, v272);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100002320(v223, v230, v272);
    _os_log_impl(&_mh_execute_header, v8, v9, "#### Device %s not paired for %s. Allowing for DDUI browsing", v16, 0x16u);
    swift_arrayDestroy();

    v255(v250, v243);
    v12(v260, v15);
  }

  else
  {
    v42 = *(v0 + 1136);
    v43 = *(v0 + 1128);
    v262 = *(v0 + 960);
    v44 = *(v0 + 936);
    v45 = *(v0 + 920);
    v46 = *(v0 + 912);
    v47 = *(v0 + 840);
    v48 = *(v0 + 816);
    v49 = *(v0 + 808);

    v42(v44, v46);
    v43(v47, v49);
    v42(v262, v46);
  }

  v40 = v0;
  if (!*(v0 + 1152))
  {
    v121 = *(v0 + 1128);
    v122 = v40[109];
    Logger.init(subsystem:category:)();
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.default.getter();
    v125 = os_log_type_enabled(v123, v124);
    v126 = v40[134];
    v268 = v40[126];
    v127 = v40[123];
    v128 = v40[109];
    v129 = v40[102];
    v130 = v40[101];
    v131 = v40[61];
    if (v125)
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "#### DeviceName unknown", v132, 2u);
      v40 = v271;
    }

    v121(v128, v130);
    sub_100016290(v127, &qword_1005989E8, &qword_1004B28E8);
    v120 = v268;
    goto LABEL_41;
  }

  v252 = *(v0 + 1152);
  v267 = *(v0 + 1144);
  v50 = *(v0 + 504);
  v51 = *(v0 + 488);
  v52 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
  swift_beginAccess();
  v53 = *(v50 + v52);
  v54 = v51;

  v56 = sub_1003E37EC(v55, v54);
  v58 = v57;
  v60 = v59;
  v61 = ~v59;

  if (v61)
  {
    v62 = *(v0 + 768);
    swift_beginAccess();
    sub_10046EB1C(v62, v56, v58);
    sub_1003E8ED4(v62, type metadata accessor for BrowseEndpoints);
    swift_endAccess();
    sub_100085170(v56, v58, v60);
  }

  v63 = *(v0 + 744);
  v64 = *(v0 + 720);
  v65 = *(v0 + 712);
  v66 = *(v0 + 488);
  v67 = *(sub_10005DC58(qword_1005994E0, &qword_1004B2E90) + 80);
  *v63 = v267;
  v63[1] = v252;

  v68 = [v66 serviceName];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v257 = v52;
  v71 = v70;

  *(v0 + 376) = v69;
  *(v0 + 384) = v71;
  v63[2] = String.init<A>(_:)();
  v63[3] = v72;
  v63[4] = 0x6C61636F6CLL;
  v63[5] = 0xE500000000000000;
  NWInterface.init(_:)();
  (*(v64 + 104))(v63, enum case for NWEndpoint.service(_:), v65);
  *(v0 + 456) = [v66 signature];
  v73 = sub_1002AAFAC((v0 + 456), 8);
  v263 = v50;
  v75 = v74;
  static WABrowserAgentInterface.browseResultSignatureKey.getter();
  sub_10000AB0C(v73, v75);
  NWEndpoint.setCustomMetadataForKey(key:metadata:)();
  v221 = v73;
  v225 = v75;
  sub_1000124C8(v73, v75);

  v76 = *(v0 + 1096);
  v228 = *(v0 + 1104);
  v232 = *(v0 + 1080);
  v235 = *(v0 + 1088);
  v240 = *(v0 + 760);
  v77 = *(v0 + 752);
  v78 = *(v0 + 744);
  v79 = *(v0 + 720);
  v80 = *(v0 + 712);
  v81 = *(v0 + 680);
  v82 = *(v0 + 648);
  v83 = *(v0 + 608);
  v84 = *(v0 + 488);
  v245 = [v84 signature];
  (*(v79 + 16))(v83, v78, v80);
  v76(v83 + v77[5], 1, 1, v81);
  v232(v83 + v77[6], 1, 1, v82);

  v85 = [v84 serviceName];
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;

  *(v0 + 392) = v86;
  *(v0 + 400) = v88;
  v89 = String.init<A>(_:)();
  v90 = (v83 + v77[7]);
  *v90 = v267;
  v90[1] = v252;
  v91 = (v83 + v77[8]);
  *v91 = v89;
  v91[1] = v92;
  (*(v240 + 56))(v83, 0, 1, v77);
  swift_beginAccess();
  sub_10033869C(v83, v245);
  swift_endAccess();
  v93 = *(v0 + 792);
  v94 = *(v0 + 784);
  v246 = *(v0 + 776);
  v95 = *(v0 + 744);
  v96 = *(v0 + 480);
  static WABrowserAgentInterface.browseResultIsPairedKey.getter();
  v97 = sub_10002D874(&off_1005730E8);
  v99 = v98;
  NWEndpoint.setCustomMetadataForKey(key:metadata:)();
  sub_1000124C8(v97, v99);

  static WABrowserAgentInterface.browseResultDeviceNameKey.getter();
  static String.Encoding.utf8.getter();
  v100 = String.data(using:allowLossyConversion:)();
  v102 = v101;

  (*(v94 + 8))(v93, v246);
  NWEndpoint.setCustomMetadataForKey(key:metadata:)();
  sub_100017554(v100, v102);

  v236 = v96;
  v103 = *(v96 + 16);
  if (v103)
  {
    v104 = *(v0 + 920);
    v105 = *(v0 + 912);
    v106 = *(v0 + 592);
    v107 = OBJC_IVAR____TtC12wifip2pdCore8NANAgent_agentUUID;
    swift_beginAccess();
    (*(v104 + 16))(v106, v103 + v107, v105);
    v108 = v263;
    v109 = 0;
    v40 = v0;
  }

  else
  {
    v40 = v0;
    v108 = v263;
    v109 = 1;
  }

  v241 = v40[95];
  v133 = v40[93];
  v134 = v40[90];
  (*(v40[115] + 56))(v40[74], v109, 1, v40[114]);
  NWEndpoint.preferredAgentIdentifier.setter();
  v135 = *(v108 + v257);
  v136 = v135 + 64;
  v137 = -1;
  v138 = -1 << *(v135 + 32);
  if (-v138 < 64)
  {
    v137 = ~(-1 << -v138);
  }

  v139 = v137 & *(v135 + 64);
  v140 = (63 - v138) >> 6;
  v258 = (v134 + 16);
  v264 = v134;
  v248 = v135;

  v141 = 0;
  v142 = _swiftEmptyArrayStorage;
  v143 = &qword_1005994A8;
  v144 = &unk_1004B2E10;
  if (!v139)
  {
    goto LABEL_22;
  }

LABEL_21:
  v269 = v142;
  v145 = v141;
LABEL_30:
  v148 = v40[96];
  v149 = v40[72];
  v150 = __clz(__rbit64(v139));
  v139 &= v139 - 1;
  v151 = v150 | (v145 << 6);
  v152 = *(*(v248 + 48) + 8 * v151);
  sub_1003E8CDC(*(v248 + 56) + *(v241 + 72) * v151, v148, type metadata accessor for BrowseEndpoints);
  v153 = sub_10005DC58(v143, v144);
  v154 = v144;
  v155 = v143;
  v156 = v153;
  v157 = *(v153 + 48);
  *v149 = v152;
  v40 = v271;
  sub_100046A08(v148, v149 + v157, type metadata accessor for BrowseEndpoints);
  v158 = *(*(v156 - 8) + 56);
  v159 = v156;
  v143 = v155;
  v144 = v154;
  v158(v149, 0, 1, v159);
  v142 = v269;
  while (1)
  {
    v160 = v40[73];
    sub_10001CEA8(v40[72], v160, &qword_1005994A0, &qword_1004B2E08);
    v161 = sub_10005DC58(v143, v144);
    if ((*(*(v161 - 8) + 48))(v160, 1, v161) == 1)
    {
      break;
    }

    v162 = v40[73];
    v163 = *(v161 + 48);
    (*v258)(v40[92], v162 + v163, v40[89]);
    sub_1003E8ED4(v162 + v163, type metadata accessor for BrowseEndpoints);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_1003A7D74(0, v142[2] + 1, 1, v142);
    }

    v165 = v142[2];
    v164 = v142[3];
    if (v165 >= v164 >> 1)
    {
      v142 = sub_1003A7D74(v164 > 1, v165 + 1, 1, v142);
    }

    v166 = v40[92];
    v167 = v40[89];
    v142[2] = v165 + 1;
    (*(v264 + 32))(v142 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v165, v166, v167);
    if (v139)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (v140 <= v141 + 1)
    {
      v146 = v141 + 1;
    }

    else
    {
      v146 = v140;
    }

    v147 = v146 - 1;
    while (1)
    {
      v145 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        __break(1u);
      }

      if (v145 >= v140)
      {
        break;
      }

      v139 = *(v136 + 8 * v145);
      ++v141;
      if (v139)
      {
        v269 = v142;
        v141 = v145;
        goto LABEL_30;
      }
    }

    v168 = v40[72];
    v169 = sub_10005DC58(v143, v144);
    (*(*(v169 - 8) + 56))(v168, 1, 1, v169);
    v139 = 0;
    v141 = v147;
  }

  v170 = v40[134];
  v171 = v40[126];
  v172 = v40[123];
  v173 = v40[93];
  v174 = v40[90];
  v175 = v40[89];
  if (*(v236 + 16))
  {
    v176 = v271[62];
    v177 = v271[61];
    v178 = *(v236 + 16);

    v179 = v176;
    v40 = v271;
    sub_1003F90B4(v179, v142);

    sub_1000124C8(v221, v225);

    (*(v174 + 8))(v173, v175);
    sub_100016290(v172, &qword_1005989E8, &qword_1004B28E8);
    v120 = v171;
LABEL_41:
    sub_100016290(v120, &qword_1005989F0, &qword_1004B28F0);
    goto LABEL_42;
  }

  v192 = v40[61];
  v193 = v40[134];

  sub_1000124C8(v221, v225);

  (*(v174 + 8))(v173, v175);
  sub_100016290(v172, &qword_1005989E8, &qword_1004B28E8);
  sub_100016290(v171, &qword_1005989F0, &qword_1004B28F0);

LABEL_42:
  v180 = v40[133];
  v181 = v40[132];
  v182 = v40[126];
  v183 = v40[125];
  v184 = v271[124];
  v185 = v271[123];
  v186 = v271[122];
  v187 = v271[121];
  v188 = v271[120];
  v189 = v271[119];
  v194 = v271[118];
  v195 = v271[117];
  v196 = v271[116];
  v197 = v271[113];
  v198 = v271[112];
  v199 = v271[111];
  v200 = v271[110];
  v201 = v271[109];
  v202 = v271[108];
  v203 = v271[107];
  v204 = v271[106];
  v205 = v271[105];
  v206 = v271[104];
  v207 = v271[103];
  v208 = v271[100];
  v209 = v271[99];
  v210 = v271[96];
  v211 = v271[93];
  v212 = v271[92];
  v213 = v271[91];
  v214 = v271[88];
  v215 = v271[87];
  v217 = v271[84];
  v219 = v271[83];
  v222 = v271[80];
  v226 = v271[76];
  v229 = v271[75];
  v233 = v271[74];
  v237 = v271[73];
  v242 = v271[72];
  v249 = v271[71];
  v254 = v271[70];
  v259 = v271[69];
  v265 = v271[68];
  v270 = v271[67];

  v190 = v271[1];

  return v190();
}

uint64_t sub_1003BDE58()
{
  v1 = v0;
  v74 = *v0;
  v73 = type metadata accessor for Logger();
  v2 = *(v73 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for UUID();
  v6 = *(v82 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v81 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v64 - v9;
  v10 = *(*(sub_10005DC58(&qword_100598978, &qword_1004B2878) - 8) + 64);
  __chkstk_darwin();
  v77 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v64 - v12;
  swift_beginAccess();
  v13 = v1[5];
  v14 = *(v13 + 64);
  v76 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v68 = v13;

  v79 = v1;
  result = swift_beginAccess();
  v19 = 0;
  v20 = (v15 + 63) >> 6;
  v65 = v6 + 16;
  v78 = (v6 + 32);
  v71 = &qword_1004B4E88[7];
  v70 = (v2 + 8);
  v67 = v6;
  v69 = (v6 + 8);
  *&v21 = 136315138;
  v64 = v21;
  v80 = v5;
  v72 = v20;
  while (v17)
  {
    v24 = v19;
LABEL_15:
    v28 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v29 = v28 | (v24 << 6);
    v30 = v68;
    v31 = v67;
    v32 = v66;
    v33 = v82;
    (*(v67 + 16))(v66, *(v68 + 48) + *(v67 + 72) * v29, v82);
    v34 = *(*(v30 + 56) + 8 * v29);
    v35 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
    v36 = *(v35 + 48);
    v37 = *(v31 + 32);
    v27 = v77;
    v37(v77, v32, v33);
    *(v27 + v36) = v34;
    (*(*(v35 - 8) + 56))(v27, 0, 1, v35);

    v5 = v80;
LABEL_16:
    v38 = v75;
    sub_10001CEA8(v27, v75, &qword_100598978, &qword_1004B2878);
    v39 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {

      v63 = v79[13];
      v79[13] = 0;
    }

    v40 = *(v38 + *(v39 + 48));
    (*v78)(v81, v38, v82);
    Logger.init(subsystem:category:)();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v84 = v44;
      *v43 = v64;
      v45 = sub_1003AE2C0();
      v47 = sub_100002320(v45, v46, &v84);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "#### Stop browser session(Defer timeout) :%s", v43, 0xCu);
      sub_100002A00(v44);

      (*v70)(v80, v73);
    }

    else
    {

      (*v70)(v5, v73);
    }

    v48 = *(v40 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier);
    v49 = *(v40 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier + 8);
    v50 = *(v40 + 16);
    v51 = *(v50 + 48);
    v52 = *(v50 + 56);

    v53 = v51;
    v54 = v79;
    sub_1003AF9F0(v48, v49, v53, v52, 0);

    v55 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
    swift_beginAccess();
    v56 = *(v40 + v55);
    *(v40 + v55) = &_swiftEmptyDictionarySingleton;

    swift_beginAccess();
    sub_1003AD75C(v81, sub_10047710C, sub_10046D8EC);
    swift_endAccess();

    v57 = v54[7];
    v58 = *(v74 + 80);
    v59 = *(v74 + 88);
    type metadata accessor for NANAgentHandler.Client();
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

    Dictionary.subscript.getter();

    v61 = v84;
    if (v84)
    {
      (*((swift_isaMask & *v84) + 0x98))(v60);
    }

    swift_beginAccess();
    v22 = v82;
    type metadata accessor for Dictionary();
    v23 = v81;
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    result = (*v69)(v23, v22);
    v5 = v80;
    v20 = v72;
  }

  if (v20 <= v19 + 1)
  {
    v25 = v19 + 1;
  }

  else
  {
    v25 = v20;
  }

  v26 = v25 - 1;
  v27 = v77;
  while (1)
  {
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v62 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
      (*(*(v62 - 8) + 56))(v27, 1, 1, v62);
      v17 = 0;
      v19 = v26;
      goto LABEL_16;
    }

    v17 = *(v76 + 8 * v24);
    ++v19;
    if (v17)
    {
      v19 = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t NANAgentHandler.stopBrowserSession(_:deferred:)(void *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchTimeInterval();
  v135 = *(v7 - 8);
  v8 = *(v135 + 64);
  __chkstk_darwin();
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v131 - v11;
  __chkstk_darwin();
  v14 = &v131 - v13;
  v15 = type metadata accessor for UUID();
  v146 = *(v15 - 8);
  v16 = *(v146 + 64);
  __chkstk_darwin();
  v140 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v131 - v18;
  __chkstk_darwin();
  v144 = &v131 - v19;
  v20 = *(*(sub_10005DC58(&qword_100598978, &qword_1004B2878) - 8) + 64);
  __chkstk_darwin();
  v139 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v143 = &v131 - v22;
  __chkstk_darwin();
  v138 = &v131 - v23;
  __chkstk_darwin();
  v142 = &v131 - v24;
  v145 = type metadata accessor for Logger();
  v25 = *(v145 - 1);
  v26 = *(v25 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v147 = v15;
  v148 = a1;
  v137 = v3;
  v136 = v6;
  if (a2)
  {
    v131 = v7;
    v29 = &v131 - v28;
    Logger.init(subsystem:category:)();

    v143 = v29;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v133 = v10;
    v132 = v12;
    v134 = v14;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v152[0] = v34;
      *v33 = 67109378;
      *(v33 + 4) = 1;
      *(v33 + 8) = 2080;
      v35 = sub_1003F39A8();
      v37 = sub_100002320(v35, v36, v152);

      *(v33 + 10) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "#### Defer(%{BOOL}d) stopping browser session:%s", v33, 0x12u);
      sub_100002A00(v34);
    }

    (*(v25 + 8))(v143, v145);
    swift_beginAccess();
    v38 = v3[4];
    v39 = v38 + 64;
    v40 = 1 << v38[32];
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v38 + 8);
    v43 = (v40 + 63) >> 6;
    v139 = (v146 + 16);
    v145 = (v146 + 32);
    v143 = (v146 + 8);
    v140 = v38;

    v45 = 0;
    v46 = v141;
    for (i = v138; v42; v45 = v50)
    {
      v48 = v45;
LABEL_15:
      v51 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v52 = v51 | (v48 << 6);
      v53 = v140;
      v54 = v146;
      v55 = v144;
      (*(v146 + 16))(v144, *(v140 + 6) + *(v146 + 72) * v52, v15);
      v56 = *(*(v53 + 7) + 8 * v52);
      v57 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
      v58 = v15;
      v59 = *(v57 + 48);
      v60 = *(v54 + 32);
      i = v138;
      v60(v138, v55, v58);
      *(i + v59) = v56;
      (*(*(v57 - 8) + 56))(i, 0, 1, v57);

      v50 = v48;
      v46 = v141;
LABEL_16:
      v61 = v142;
      sub_10001CEA8(i, v142, &qword_100598978, &qword_1004B2878);
      v62 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
      v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
      v64 = v148;
      if (v63 == 1)
      {
      }

      v65 = *&v61[*(v62 + 48)];
      v66 = v61;
      v15 = v147;
      (*v145)(v46, v66, v147);
      if (*(v65 + 16) == v64)
      {
        v100 = v137;
        swift_beginAccess();

        v101 = v100[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v100[5];
        v100[5] = 0x8000000000000000;
        sub_1003E263C(v65, v46, isUniquelyReferenced_nonNull_native, sub_10046D8EC, sub_100313B98, sub_1002E01C4);
        v100[5] = v151;
        swift_endAccess();
        swift_beginAccess();
        sub_1003AD75C(v46, sub_10047710C, sub_10046D8EC);
        swift_endAccess();

        if (v100[13])
        {

          return (*v143)(v46, v15);
        }

        *v134 = 5;
        v116 = enum case for DispatchTimeInterval.seconds(_:);
        v117 = *(v135 + 104);
        v118 = v131;
        v117();
        v148 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v119 = v132;
        *v132 = 5;
        (v117)(v119, v116, v118);
        v120 = swift_allocObject();
        swift_weakInit();
        v121 = swift_allocObject();
        v122 = v136;
        v121[2] = *(v136 + 80);
        v121[3] = *(v122 + 88);
        v121[4] = v120;
        v123 = v133;
        *v133 = 100;
        (v117)(v123, enum case for DispatchTimeInterval.milliseconds(_:), v118);
        v124 = type metadata accessor for P2PTimer();
        v125 = *(v124 + 48);
        v126 = *(v124 + 52);
        swift_allocObject();
        v127 = v15;
        v128 = v148;

        v129 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v134, v128, v119, v123, sub_1003E7AC4, v121);

        (*v143)(v141, v127);

        v130 = v100[13];
        v100[13] = v129;
      }

      (*v143)(v46, v15);
    }

    if (v43 <= v45 + 1)
    {
      v49 = v45 + 1;
    }

    else
    {
      v49 = v43;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v48 >= v43)
      {
        v67 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
        (*(*(v67 - 8) + 56))(i, 1, 1, v67);
        v42 = 0;
        goto LABEL_16;
      }

      v42 = *&v39[8 * v48];
      ++v45;
      if (v42)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v68 = v27;
    Logger.init(subsystem:category:)();

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v152[0] = v72;
      *v71 = 136315138;
      v73 = sub_1003F39A8();
      v75 = sub_100002320(v73, v74, v152);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "#### Stopped a browser session:%s", v71, 0xCu);
      sub_100002A00(v72);
    }

    (*(v25 + 8))(v68, v145);
    v76 = v140;
    v77 = v139;
    swift_beginAccess();
    v78 = v3[4];
    v79 = v78 + 64;
    v80 = 1 << v78[32];
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & *(v78 + 8);
    v83 = (v80 + 63) >> 6;
    v138 = (v146 + 16);
    v145 = (v146 + 32);
    v141 = v78;
    v142 = (v146 + 8);

    for (j = 0; v82; j = v87)
    {
      v85 = j;
LABEL_34:
      v88 = __clz(__rbit64(v82));
      v82 &= v82 - 1;
      v89 = v88 | (v85 << 6);
      v90 = v141;
      v91 = v146;
      (*(v146 + 16))(v144, *(v141 + 6) + *(v146 + 72) * v89, v15);
      v92 = *(*(v90 + 7) + 8 * v89);
      v93 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
      v94 = *(v93 + 48);
      v77 = v139;
      (*(v91 + 32))();
      *(v77 + v94) = v92;
      (*(*(v93 - 8) + 56))(v77, 0, 1, v93);

      v87 = v85;
      v76 = v140;
LABEL_35:
      v95 = v143;
      sub_10001CEA8(v77, v143, &qword_100598978, &qword_1004B2878);
      v96 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
      if ((*(*(v96 - 8) + 48))(v95, 1, v96) == 1)
      {
      }

      v97 = *&v95[*(v96 + 48)];
      v15 = v147;
      (*v145)(v76, v95, v147);
      v98 = *(v97 + 16);
      if (v98 == v148)
      {
        v103 = *(v97 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier);
        v104 = *(v97 + OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_bundleIdentifier + 8);
        v105 = v98[6];
        v106 = v98[7];

        v107 = v137;
        sub_1003AF9F0(v103, v104, v105, v106, 0);

        v108 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
        swift_beginAccess();
        v109 = *(v97 + v108);
        *(v97 + v108) = &_swiftEmptyDictionarySingleton;

        swift_beginAccess();
        sub_1003AD75C(v76, sub_10047710C, sub_10046D8EC);
        swift_endAccess();

        swift_beginAccess();
        v110 = v107[7];
        v111 = *(v136 + 80);
        v112 = *(v136 + 88);
        type metadata accessor for NANAgentHandler.Client();
        sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

        Dictionary.subscript.getter();

        v114 = v149;
        if (v149)
        {
          (*((swift_isaMask & *v149) + 0x98))(v113);
        }

        swift_beginAccess();
        v115 = v147;
        type metadata accessor for Dictionary();
        Dictionary.removeValue(forKey:)();
        swift_endAccess();

        return (*v142)(v76, v115);
      }

      (*v142)(v76, v15);
    }

    if (v83 <= j + 1)
    {
      v86 = j + 1;
    }

    else
    {
      v86 = v83;
    }

    v87 = v86 - 1;
    while (1)
    {
      v85 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v85 >= v83)
      {
        v99 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
        (*(*(v99 - 8) + 56))(v77, 1, 1, v99);
        v82 = 0;
        goto LABEL_35;
      }

      v82 = *&v79[8 * v85];
      ++j;
      if (v82)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t NANAgentHandler.startListenerSession(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v128 = v2;
  v122 = v4;
  v5 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v123 = &v118 - v6;
  v126 = type metadata accessor for WAError.ErrorCode();
  v125 = *(v126 - 8);
  v7 = *(v125 + 64);
  __chkstk_darwin();
  v130 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v133 = v9;
  v134 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v132 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v118 - v13;
  __chkstk_darwin();
  v124 = &v118 - v14;
  __chkstk_darwin();
  v121 = &v118 - v15;
  __chkstk_darwin();
  v118 = &v118 - v16;
  v17 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent();
  v18 = *(v17 - 8);
  v138 = v17;
  v139 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v120 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v20;
  __chkstk_darwin();
  v131 = &v118 - v21;
  v22 = *(*(sub_10005DC58(&qword_100598990, &qword_1004B2888) - 8) + 64);
  __chkstk_darwin();
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v118 - v25;
  __chkstk_darwin();
  v137 = &v118 - v27;
  v28 = type metadata accessor for Data.Deallocator();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin();
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = 0;
  v129 = a1;
  v33 = *(a1 + OBJC_IVAR____TtC12wifip2pdCore17NANListenerClient_descriptor);
  v34 = nw_advertise_descriptor_copy_custom_service();
  v35 = v141;
  (*(v29 + 104))(v32, enum case for Data.Deallocator.free(_:), v28);
  Data.Deallocator._deallocator.getter();
  if (v35)
  {
    v36 = type metadata accessor for __DataStorage();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();

    v39 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    if (v35 <= 14)
    {
      v40 = v137;
      if (v35 < 0)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v44 = __DataStorage._bytes.getter();
      if (v44)
      {
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(0, v45))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v44 -= v45;
      }

      v46 = __DataStorage._length.getter();
      if (v46 >= v35)
      {
        v47 = v35;
      }

      else
      {
        v47 = v46;
      }

      v48 = &v44[v47];
      if (v44)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = sub_10000AD84(v44, v49);
      v52 = v51;

      v53 = v32;
      v41 = v50;
      (*(v29 + 8))(v53, v28);
      v42 = v52 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      (*(v29 + 8))(v32, v28);

      v40 = v137;
      if (v35 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v41 = swift_allocObject();
        *(v41 + 16) = 0;
        *(v41 + 24) = v35;
        v42 = v39 | 0x8000000000000000;
      }

      else
      {
        v41 = v35 << 32;
        v42 = v39 | 0x4000000000000000;
      }
    }
  }

  else
  {
    v43 = Data.Deallocator._deallocator.getter();
    v43(v34, 0);

    (*(v29 + 8))(v32, v28);
    v41 = 0;
    v42 = 0xC000000000000000;
    v40 = v137;
  }

  v54 = v138;
  v55 = *(v139 + 56);
  v55(v40, 1, 1, v138);
  v135 = v42;
  v136 = v41;
  static WAListenerAgentInterface.DescriptorToAgent.decode(from:)();
  sub_100016290(v40, &qword_100598990, &qword_1004B2888);
  v55(v26, 0, 1, v54);
  sub_10001CEA8(v26, v40, &qword_100598990, &qword_1004B2888);
  v56 = v139;
  sub_100012400(v40, v24, &qword_100598990, &qword_1004B2888);
  if ((*(v56 + 48))(v24, 1, v54) != 1)
  {
    v63 = v54;
    v64 = *(v56 + 32);
    v64(v131, v24, v63);
    v65 = v129;
    v66 = *(v129 + 64);
    v67._countAndFlagsBits = 0x6873696C627550;
    v68._countAndFlagsBits = 0xD00000000000001ELL;
    v68._object = 0x80000001004B8650;
    v67._object = 0xE700000000000000;
    if (Int32.checkEntitlement(for_:capabilities:)(v68, v67))
    {
      v69 = *(v65 + 72);
      v70 = *(v65 + 80);
      v142[0] = v69;
      v142[1] = v70;
      strcpy(v140, "wifiawaretool");
      v140[7] = -4864;
      sub_10005E2E4();
      if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v71 = *(v65 + 48), v40 = *(v65 + 56), (static LaunchServiceRecord.isPublishableServiceValid(for:serviceName:)(v66, v71, v40)))
      {
        v72 = v128;
        if (sub_1003E67A8(v69, v70, 1))
        {
          v73 = type metadata accessor for TaskPriority();
          (*(*(v73 - 8) + 56))(v123, 1, 1, v73);
          v74 = v138;
          v75 = v139;
          v76 = v120;
          (*(v139 + 16))(v120, v131, v138);
          v77 = (*(v75 + 80) + 56) & ~*(v75 + 80);
          v78 = (v119 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
          v79 = swift_allocObject();
          *(v79 + 2) = 0;
          *(v79 + 3) = 0;
          v80 = v122;
          *(v79 + 4) = *(v122 + 80);
          *(v79 + 5) = *(v80 + 88);
          *(v79 + 6) = v65;
          v64(&v79[v77], v76, v74);
          *&v79[v78] = v72;

          sub_1003AD150(0, 0, v123, &unk_1004B2898, v79);
          sub_1000124C8(v136, v135);

          (*(v75 + 8))(v131, v74);
          sub_100016290(v137, &qword_100598990, &qword_1004B2888);
          return 0;
        }

        v90 = v121;
        Logger.init(subsystem:category:)();

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v142[0] = v94;
          *v93 = 136315138;
          *(v93 + 4) = sub_100002320(v69, v70, v142);
          _os_log_impl(&_mh_execute_header, v91, v92, "#### Client %s reached max allowed services", v93, 0xCu);
          sub_100002A00(v94);
        }

        (*(v134 + 8))(v90, v133);
        v95 = v138;
        v96 = v126;
        v97 = v125;
        v98 = enum case for WAError.ErrorCode.noRadioResources(_:);
        if (v128[2])
        {
          v99 = *(v125 + 104);
          v100 = v130;
          v99(v130, enum case for WAError.ErrorCode.noRadioResources(_:), v126);

          v101 = WAError.ErrorCode.rawValue.getter();
          (*(v97 + 8))(v100, v96);
          if (v101 < 0xFFFFFFFF80000000)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          if (v101 > 0x7FFFFFFF)
          {
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          sub_1003F97C8(v65, v101);
        }

        else
        {
          v99 = *(v125 + 104);
        }

        v116 = v130;
        v99(v130, v98, v96);
        v61 = WAError.ErrorCode.rawValue.getter();
        sub_1000124C8(v136, v135);
        (*(v97 + 8))(v116, v96);
        (*(v139 + 8))(v131, v95);
        sub_100016290(v137, &qword_100598990, &qword_1004B2888);
        if (v61 >= 0xFFFFFFFF80000000)
        {
          if (v61 <= 0x7FFFFFFF)
          {
            return v61;
          }

          goto LABEL_64;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      v81 = v124;
      Logger.init(subsystem:category:)();

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v142[0] = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_100002320(*(v65 + 72), *(v65 + 80), v142);
        _os_log_impl(&_mh_execute_header, v82, v83, "#### No Publish Entitlement for bundleId: %s", v84, 0xCu);
        sub_100002A00(v85);
      }

      (*(v134 + 8))(v81, v133);
      v71 = v138;
      v86 = v126;
      v87 = v125;
      v69 = v128[2];
      v88 = enum case for WAError.ErrorCode.entitlementMissing(_:);
      if (v69)
      {
        v70 = *(v125 + 104);
        v89 = v130;
        v70(v130, enum case for WAError.ErrorCode.entitlementMissing(_:), v126);

        v65 = WAError.ErrorCode.rawValue.getter();
        (*(v87 + 8))(v89, v86);
        if (v65 < 0xFFFFFFFF80000000)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v65 > 0x7FFFFFFF)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        sub_1003F97C8(v129, v65);
      }

      else
      {
        v70 = *(v125 + 104);
      }

      v102 = v130;
      v70(v130, v88, v86);
      v61 = WAError.ErrorCode.rawValue.getter();
      sub_1000124C8(v136, v135);
      (*(v87 + 8))(v102, v86);
      (*(v139 + 8))(v131, v71);
      sub_100016290(v40, &qword_100598990, &qword_1004B2888);
      if (v61 < 0xFFFFFFFF80000000)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v61 <= 0x7FFFFFFF)
      {
        return v61;
      }

      __break(1u);
    }

    v103 = v118;
    Logger.init(subsystem:category:)();

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v142[0] = swift_slowAlloc();
      *v106 = 136315394;
      *(v106 + 4) = sub_100002320(v69, v70, v142);
      *(v106 + 12) = 2080;
      *(v106 + 14) = sub_100002320(v71, v40, v142);
      _os_log_impl(&_mh_execute_header, v104, v105, "#### Client %s has no service %s in plist", v106, 0x16u);
      swift_arrayDestroy();
    }

    (*(v134 + 8))(v103, v133);
    v107 = v137;
    v108 = v138;
    v109 = v126;
    v110 = v125;
    v111 = enum case for WAError.ErrorCode.serviceNotDeclared(_:);
    if (v128[2])
    {
      v112 = v138;
      v113 = *(v125 + 104);
      v114 = v130;
      v113(v130, enum case for WAError.ErrorCode.serviceNotDeclared(_:), v126);

      v115 = WAError.ErrorCode.rawValue.getter();
      (*(v110 + 8))(v114, v109);
      if (v115 < 0xFFFFFFFF80000000)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

      if (v115 > 0x7FFFFFFF)
      {
        goto LABEL_69;
      }

      sub_1003F97C8(v65, v115);

      v108 = v112;
      v107 = v137;
    }

    else
    {
      v113 = *(v125 + 104);
    }

    v117 = v130;
    v113(v130, v111, v109);
    v61 = WAError.ErrorCode.rawValue.getter();
    sub_1000124C8(v136, v135);
    (*(v110 + 8))(v117, v109);
    (*(v139 + 8))(v131, v108);
    sub_100016290(v107, &qword_100598990, &qword_1004B2888);
    if (v61 < 0xFFFFFFFF80000000)
    {
      goto LABEL_65;
    }

    if (v61 <= 0x7FFFFFFF)
    {
      return v61;
    }

    __break(1u);
    goto LABEL_58;
  }

  sub_100016290(v24, &qword_100598990, &qword_1004B2888);
  v57 = v127;
  Logger.init(subsystem:category:)();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "#### WAListenerIPC.Descriptor2Agent nil", v60, 2u);
  }

  sub_1000124C8(v136, v135);

  (*(v134 + 8))(v57, v133);
  sub_100016290(v40, &qword_100598990, &qword_1004B2888);
  return 255;
}

uint64_t sub_1003C0AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a1;
  v6[10] = a4;
  v7 = *a6;
  v8 = *(*a6 + 88);
  v6[13] = v8;
  v9 = *(v8 + 8);
  v6[14] = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  v6[15] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Preferences();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v13 = type metadata accessor for WAPerformanceMode();
  v6[19] = v13;
  v14 = *(v13 - 8);
  v6[20] = v14;
  v15 = *(v14 + 64) + 15;
  v6[21] = swift_task_alloc();
  v16 = sub_10005DC58(&qword_1005994B8, &qword_1004B2E38);
  v6[22] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v18 = *(*(sub_10005DC58(&unk_1005994C0, &unk_1004B2E40) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v19 = *(*(sub_10005DC58(&unk_1005989A8, &qword_1004B28B0) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v20 = type metadata accessor for WAError.ErrorCode();
  v6[29] = v20;
  v21 = *(v20 - 8);
  v6[30] = v21;
  v22 = *(v21 + 64) + 15;
  v6[31] = swift_task_alloc();
  v23 = type metadata accessor for Logger();
  v6[32] = v23;
  v24 = *(v23 - 8);
  v6[33] = v24;
  v25 = *(v24 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v26 = swift_checkMetadataState();
  v6[39] = v26;
  v27 = *(v26 - 8);
  v6[40] = v27;
  v28 = *(v27 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v29 = type metadata accessor for WADevicesAgentInterface.Devices();
  v6[43] = v29;
  v30 = *(v29 - 8);
  v6[44] = v30;
  v31 = *(v30 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v32 = type metadata accessor for WAListenerAgentInterface.DescriptorToAgent();
  v6[47] = v32;
  v33 = *(v32 - 8);
  v6[48] = v33;
  v34 = *(v33 + 64) + 15;
  v6[49] = swift_task_alloc();
  v35 = type metadata accessor for UUID();
  v6[50] = v35;
  v36 = *(v35 - 8);
  v6[51] = v36;
  v6[52] = *(v36 + 64);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return _swift_task_switch(sub_1003C103C, 0, 0);
}

uint64_t sub_1003C103C()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v31 = v0[46];
  v32 = v0[40];
  v33 = v0[39];
  v34 = v0[42];
  v35 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v30 = v0[56];
  v6 = v0[10];
  UUID.init()();
  v7 = *(v2 + 16);
  v7(v1, v4, v3);
  v29 = v6[9];
  v0[57] = v29;
  v28 = v6[10];
  v0[58] = v28;
  v8 = type metadata accessor for WifiAwareListener(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v0[59] = v11;
  *(v11 + 16) = v6;
  v12 = OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_wifiAwareDescriptor;
  v7(v11 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_wifiAwareDescriptor, v1, v3);
  (*(v2 + 56))(v11 + v12, 0, 1, v3);
  v13 = *(v2 + 8);

  v13(v1, v3);
  v14 = (v11 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier);
  *v14 = v29;
  v14[1] = v28;
  swift_beginAccess();

  v15 = *(v5 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v5 + 48);
  *(v5 + 48) = 0x8000000000000000;
  sub_1003E263C(v11, v30, isUniquelyReferenced_nonNull_native, sub_10046D8D8, sub_100313B84, sub_1002E01C4);
  *(v5 + 48) = v36;
  swift_endAccess();
  v0[60] = v6[6];
  v0[61] = v6[7];
  v17 = objc_allocWithZone(WiFiAwarePublishConfiguration);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithServiceName:v18];
  v0[62] = v19;

  [v19 setAuthenticationType:0];
  WAListenerAgentInterface.DescriptorToAgent.devices.getter();
  v20 = *(v5 + 24);
  v0[63] = v20;
  swift_unownedRetainStrong();
  v21 = *(*v20 + 112);
  v22 = *(v32 + 16);
  v0[64] = v22;
  v0[65] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v34, v20 + v21, v33);

  v23 = (*(v35 + 136))(v33);
  v0[66] = v23;
  v24 = *(v32 + 8);
  v0[67] = v24;
  v0[68] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v34, v33);
  v25 = swift_task_alloc();
  v0[69] = v25;
  *v25 = v0;
  v25[1] = sub_1003C13CC;
  v26 = v0[46];

  return sub_1002BCA00(v23, v29, v28);
}

uint64_t sub_1003C13CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  v7 = v3[66];
  v8 = v3[46];
  v9 = v3[44];
  v10 = v3[43];
  v13 = *(v9 + 8);
  v11 = v9 + 8;
  v12 = v13;
  if (v1)
  {
    v12(v8, v10);

    v14 = sub_1003C2BF4;
  }

  else
  {
    v4[72] = v12;
    v4[73] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v10);

    v14 = sub_1003C1588;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_1003C1588()
{
  v260 = v0;
  v1 = *(v0 + 560);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 352);
    v2 = *(v0 + 360);
    v4 = *(v0 + 344);
    v5 = *(v0 + 88);
    WAListenerAgentInterface.DescriptorToAgent.devices.getter();
    v6 = (*(v3 + 88))(v2, v4);
    v7 = *(v0 + 344);
    if (v6 == enum case for WADevicesAgentInterface.Devices.selected(_:))
    {
      v8 = *(v0 + 568);
      v9 = *(v0 + 560);
      v10 = *(v0 + 360);
      (*(*(v0 + 352) + 96))(v10, v7);
      v11 = sub_1003AC920(*v10);

      v12 = sub_100475D3C(v11);

      v14 = sub_100475D3C(v13);

      LOBYTE(v9) = sub_1003E111C(v12, v14);

      if ((v9 & 1) == 0)
      {
        v15 = *(v0 + 560);
        v16 = *(v0 + 296);
        v17 = *(v0 + 80);

        Logger.init(subsystem:category:)();

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v21 = *(v0 + 456);
          v20 = *(v0 + 464);
          v22 = *(v0 + 296);
          v23 = *(v0 + 256);
          v24 = *(v0 + 264);
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v259[0] = v26;
          *v25 = 136315138;
          *(v25 + 4) = sub_100002320(v21, v20, v259);
          _os_log_impl(&_mh_execute_header, v18, v19, "#### ListenerClient:%s Invalid Paired Devices", v25, 0xCu);
          sub_100002A00(v26);

          (*(v24 + 8))(v22, v23);
        }

        else
        {
          v185 = *(v0 + 296);
          v186 = *(v0 + 256);
          v187 = *(v0 + 264);

          (*(v187 + 8))(v185, v186);
        }

        v188 = enum case for WAError.ErrorCode.deviceInvalid(_:);
        if (*(*(v0 + 96) + 16))
        {
          v189 = *(v0 + 240);
          v190 = *(v0 + 248);
          v191 = *(v0 + 232);
          v192 = *(v189 + 104);
          v193 = enum case for WAError.ErrorCode.deviceInvalid(_:);
          v192(v190);

          v194 = WAError.ErrorCode.rawValue.getter();
          result = (*(v189 + 8))(v190, v191);
          if (v194 < 0xFFFFFFFF80000000)
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          if (v194 > 0x7FFFFFFF)
          {
LABEL_72:
            __break(1u);
            return result;
          }

          sub_1003F97C8(*(v0 + 80), v194);

          v195 = *(v0 + 240);
          v188 = v193;
        }

        else
        {
          v195 = *(v0 + 240);
          v192 = *(v195 + 104);
        }

        v196 = *(v0 + 496);
        v197 = *(v0 + 472);
        v256 = *(v0 + 448);
        v199 = *(v0 + 400);
        v198 = *(v0 + 408);
        v200 = *(v0 + 248);
        v201 = *(v0 + 232);
        (v192)(v200, v188, v201);
        v102 = WAError.ErrorCode.rawValue.getter();

        (*(v195 + 8))(v200, v201);
        result = (*(v198 + 8))(v256, v199);
        if (v102 >= 0xFFFFFFFF80000000)
        {
          if (v102 <= 0x7FFFFFFF)
          {
            goto LABEL_59;
          }

          goto LABEL_70;
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {
      v39 = *(v0 + 584);
      (*(v0 + 576))(*(v0 + 360), v7);
      v8 = *(v0 + 568);
    }

    v250 = v8;
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100476378(_swiftEmptyArrayStorage);
    }

    v40 = *(v0 + 496);
    sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
    sub_100388B0C();
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v40 setAllowedDeviceIDs:isa];

    v42 = *(v1 + 16);
    if (v42)
    {
      v43 = (*(v0 + 560) + 32);
      do
      {
        while (1)
        {
          v44 = *v43++;
          v45 = [*(v0 + 496) allowedDeviceIDs];
          if (v45)
          {
            break;
          }

          [*(v0 + 496) setAllowedDeviceIDs:0];
          if (!--v42)
          {
            goto LABEL_18;
          }
        }

        v46 = v45;
        v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v259[0] = v47;
        v48.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        sub_10046F988(&v258, v48.super.super.isa);

        if (v259[0])
        {
          v49.super.isa = Set._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v49.super.isa = 0;
        }

        [*(v0 + 496) setAllowedDeviceIDs:v49.super.isa];

        --v42;
      }

      while (v42);
    }

LABEL_18:
    v50 = *(v0 + 560);
    v51 = *(v0 + 496);
    v52 = *(v0 + 216);
    v53 = *(v0 + 224);
    v54 = *(v0 + 80);

    v55 = *(v54 + 40);
    sub_1003ADDD0(v53);
    v56 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
    [v51 setServiceSpecificInfo:v56];
    sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1004B1170;
    *(v57 + 32) = Int._bridgeToObjectiveC()();
    v58 = objc_allocWithZone(WiFiAwarePairingConfiguration);
    v59 = Array._bridgeToObjectiveC()().super.isa;

    v60 = [v58 initWithSupportedPairSetupMethods:v59 pairingCachingEnabled:1];

    v61 = [objc_allocWithZone(WiFiAwarePublishDatapathSecurityConfiguration) initWithPairingConfiguration:v60 usingPairingDelegate:0];
    sub_100012400(v53, v52, &unk_1005989A8, &qword_1004B28B0);
    v62 = type metadata accessor for WAParametersAgentInterface.Parameters();
    v63 = *(v62 - 8);
    v64 = (*(v63 + 48))(v52, 1, v62);
    v65 = *(v0 + 216);
    v253 = v56;
    v248 = v60;
    if (v64 == 1)
    {
      sub_100016290(v65, &unk_1005989A8, &qword_1004B28B0);
      v66 = 1;
    }

    else
    {
      v67 = *(v0 + 208);
      WAParametersAgentInterface.Parameters.performanceMode.getter();
      (*(v63 + 8))(v65, v62);
      v66 = 0;
    }

    v69 = *(v0 + 200);
    v68 = *(v0 + 208);
    v71 = *(v0 + 176);
    v70 = *(v0 + 184);
    v72 = *(v0 + 152);
    v73 = *(v0 + 160);
    v74 = *(v73 + 56);
    v74(v68, v66, 1, v72);
    (*(v73 + 104))(v69, enum case for WAPerformanceMode.realtime(_:), v72);
    v74(v69, 0, 1, v72);
    v75 = *(v71 + 48);
    sub_100012400(v68, v70, &unk_1005994C0, &unk_1004B2E40);
    sub_100012400(v69, &v75[v70], &unk_1005994C0, &unk_1004B2E40);
    v76 = *(v73 + 48);
    v255 = v61;
    if (v76(v70, 1, v72) == 1)
    {
      v77 = *(v0 + 208);
      v78 = *(v0 + 152);
      sub_100016290(*(v0 + 200), &unk_1005994C0, &unk_1004B2E40);
      sub_100016290(v77, &unk_1005994C0, &unk_1004B2E40);
      if (v76(&v75[v70], 1, v78) == 1)
      {
        sub_100016290(*(v0 + 184), &unk_1005994C0, &unk_1004B2E40);
        v79 = 1;
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    v80 = *(v0 + 152);
    sub_100012400(*(v0 + 184), *(v0 + 192), &unk_1005994C0, &unk_1004B2E40);
    v81 = v76(&v75[v70], 1, v80);
    v83 = *(v0 + 200);
    v82 = *(v0 + 208);
    v84 = *(v0 + 192);
    if (v81 == 1)
    {
      v85 = *(v0 + 152);
      v86 = *(v0 + 160);
      sub_100016290(*(v0 + 200), &unk_1005994C0, &unk_1004B2E40);
      sub_100016290(v82, &unk_1005994C0, &unk_1004B2E40);
      (*(v86 + 8))(v84, v85);
LABEL_26:
      sub_100016290(*(v0 + 184), &qword_1005994B8, &qword_1004B2E38);
      v79 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v27 = *(v0 + 304);
    v28 = *(v0 + 80);
    v29 = *(v0 + 560);

    Logger.init(subsystem:category:)();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = *(v0 + 456);
      v32 = *(v0 + 464);
      v34 = *(v0 + 304);
      v35 = *(v0 + 256);
      v36 = *(v0 + 264);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v259[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100002320(v33, v32, v259);
      _os_log_impl(&_mh_execute_header, v30, v31, "#### ListenerClient:%s has no Paired Devices", v37, 0xCu);
      sub_100002A00(v38);

      (*(v36 + 8))(v34, v35);
    }

    else
    {
      v87 = *(v0 + 304);
      v88 = *(v0 + 256);
      v89 = *(v0 + 264);

      (*(v89 + 8))(v87, v88);
    }

    v90 = enum case for WAError.ErrorCode.noPairedDevices(_:);
    if (*(*(v0 + 96) + 16))
    {
      v91 = *(v0 + 240);
      v92 = *(v0 + 248);
      v93 = *(v0 + 232);
      v94 = *(v91 + 104);
      v95 = enum case for WAError.ErrorCode.noPairedDevices(_:);
      v94(v92);

      v96 = WAError.ErrorCode.rawValue.getter();
      result = (*(v91 + 8))(v92, v93);
      if (v96 < 0xFFFFFFFF80000000)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v96 > 0x7FFFFFFF)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_1003F97C8(*(v0 + 80), v96);

      v98 = *(v0 + 240);
      v90 = v95;
    }

    else
    {
      v98 = *(v0 + 240);
      v94 = *(v98 + 104);
    }

    v75 = *(v0 + 496);
    v99 = *(v0 + 472);
    v255 = *(v0 + 448);
    v83 = *(v0 + 400);
    v100 = *(v0 + 408);
    v70 = *(v0 + 248);
    v101 = *(v0 + 232);
    (v94)(v70, v90, v101);
    v102 = WAError.ErrorCode.rawValue.getter();

    v103 = *(v98 + 8);
    v84 = v98 + 8;
    v103(v70, v101);
    v104 = *(v100 + 8);
    v82 = v100 + 8;
    result = v104(v255, v83);
    if (v102 < 0xFFFFFFFF80000000)
    {
      goto LABEL_65;
    }

    if (v102 <= 0x7FFFFFFF)
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  v245 = *(v0 + 184);
  v106 = *(v0 + 160);
  v105 = *(v0 + 168);
  v107 = *(v0 + 152);
  (*(v106 + 32))(v105, &v75[v70], v107);
  sub_10001ADA4(&unk_1005994D0, &type metadata accessor for WAPerformanceMode);
  v108 = dispatch thunk of static Equatable.== infix(_:_:)();
  v109 = *(v106 + 8);
  v109(v105, v107);
  sub_100016290(v83, &unk_1005994C0, &unk_1004B2E40);
  sub_100016290(v82, &unk_1005994C0, &unk_1004B2E40);
  v109(v84, v107);
  v61 = v255;
  sub_100016290(v245, &unk_1005994C0, &unk_1004B2E40);
  v79 = v108 & 1;
LABEL_37:
  v110 = *(v0 + 496);
  v112 = *(v0 + 80);
  v111 = *(v0 + 88);
  v113 = [objc_allocWithZone(WiFiAwarePublishDatapathConfiguration) initWithServiceType:v79 securityConfiguration:v61];
  v114 = [objc_allocWithZone(WiFiAwarePublishDatapathServiceSpecificInfo) initWithProtocolType:*(v112 + 90) == 17 servicePort:*(v112 + 88)];
  [v113 setServiceSpecificInfo:v114];
  [v113 setConnectionMode:1];
  [v110 setDatapathConfiguration:v113];
  WAListenerAgentInterface.DescriptorToAgent.requestedDuration.getter();
  result = Duration.components.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v115 = result;
  v243 = v114;
  v246 = v113;
  v221 = *(v0 + 536);
  v224 = *(v0 + 544);
  v218 = *(v0 + 520);
  v116 = *(v0 + 504);
  v117 = *(v0 + 512);
  v118 = *(v0 + 328);
  v119 = *(v0 + 312);
  v227 = *(v0 + 496);
  v230 = *(v0 + 288);
  v120 = *(v0 + 136);
  v121 = *(v0 + 144);
  v122 = *(v0 + 120);
  v123 = *(v0 + 128);
  v234 = *(v0 + 80);
  v237 = *(v0 + 472);
  swift_unownedRetainStrong();
  v117(v118, v116 + *(*v116 + 112), v119);

  (*(v122 + 120))(v119, v122);
  v221(v118, v119);
  v124 = Preferences.nanServiceTimeout.getter(v123);
  (*(v120 + 8))(v121, v123);
  if (v115 - 1 >= v124)
  {
    v125 = v124;
  }

  else
  {
    v125 = v115;
  }

  [v227 setTimeoutAfterSeconds:v125];
  Logger.init(subsystem:category:)();

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = *(v0 + 472);
    v238 = *(v0 + 288);
    v129 = *(v0 + 256);
    v130 = *(v0 + 264);
    v131 = *(v0 + 80);
    v132 = swift_slowAlloc();
    v259[0] = swift_slowAlloc();
    *v132 = 136315394;
    v133 = sub_1003F3D58();
    v135 = sub_100002320(v133, v134, v259);

    *(v132 + 4) = v135;
    *(v132 + 12) = 2080;
    v136 = sub_1003AE604();
    v138 = sub_100002320(v136, v137, v259);

    *(v132 + 14) = v138;
    _os_log_impl(&_mh_execute_header, v126, v127, "#### Starting a Listener session:%s with custom service:%s", v132, 0x16u);
    swift_arrayDestroy();

    v213 = *(v130 + 8);
    v213(v238, v129);
  }

  else
  {
    v139 = *(v0 + 288);
    v140 = *(v0 + 256);
    v141 = *(v0 + 264);

    v213 = *(v141 + 8);
    v213(v139, v140);
  }

  v225 = *(v0 + 464);
  v239 = *(v0 + 456);
  v143 = *(v0 + 440);
  v142 = *(v0 + 448);
  v228 = v143;
  v231 = *(v0 + 496);
  v144 = *(v0 + 408);
  v219 = *(v0 + 416);
  v145 = *(v0 + 400);
  v146 = *(v0 + 104);
  v215 = *(v0 + 432);
  v216 = *(v0 + 112);
  v214 = *(v0 + 96);
  v147 = *(v0 + 80);
  type metadata accessor for NANAgentHandler.PublisherClient();
  v148 = *(v144 + 16);
  v148(v143, v142, v145);
  v222 = *(v147 + 64);
  v149 = swift_allocObject();
  swift_weakInit();
  v212 = v148;
  v148(v215, v142, v145);
  v150 = (*(v144 + 80) + 48) & ~*(v144 + 80);
  v151 = swift_allocObject();
  *(v151 + 2) = v216;
  *(v151 + 3) = v146;
  *(v151 + 4) = v149;
  *(v151 + 5) = v147;
  (*(v144 + 32))(&v151[v150], v215, v145);

  v152 = v231;

  LOBYTE(v259[0]) = 0;
  v153 = v250;
  result = sub_1003C52B0(v214, v228, v152, v239, v225, v222, sub_1003EA5E0, v151);
  v251 = *(v0 + 496);
  if (!v153)
  {
    goto LABEL_48;
  }

  v154 = *(v0 + 472);
  v155 = *(v0 + 448);
  v156 = *(v0 + 400);
  v157 = *(v0 + 408);
  v159 = *(v0 + 240);
  v158 = *(v0 + 248);
  v160 = *(v0 + 224);
  v161 = *(v0 + 232);

  (*(v159 + 104))(v158, enum case for WAError.ErrorCode.error(_:), v161);
  v102 = WAError.ErrorCode.rawValue.getter();

  (*(v159 + 8))(v158, v161);
  sub_100016290(v160, &unk_1005989A8, &qword_1004B28B0);
  result = (*(v157 + 8))(v155, v156);
  if (v102 < 0xFFFFFFFF80000000)
  {
    goto LABEL_66;
  }

  if (v102 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_48:
    v162 = *(v0 + 480);
    v163 = *(v0 + 488);
    v164 = *(v0 + 456);
    v165 = *(v0 + 464);
    v166 = *(v0 + 448);
    v167 = *(v0 + 424);
    v168 = *(v0 + 400);
    v235 = *(v0 + 280);
    v240 = *(v0 + 112);
    v232 = *(v0 + 104);
    v169 = *(v0 + 96);
    v170 = result;

    sub_1003AE988(v164, v165, v162, v163, 1);
    v212(v167, v166, v168);
    *(v0 + 64) = v170;
    swift_beginAccess();
    type metadata accessor for NANAgentHandler.Client();
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
    type metadata accessor for Dictionary();
    v241 = v170;
    Dictionary.subscript.setter();
    swift_endAccess();
    Logger.init(subsystem:category:)();
    v171 = v251;
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v172, v173))
    {
      v174 = *(v0 + 496);
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *v175 = 138412290;
      *(v175 + 4) = v174;
      *v176 = v174;
      v177 = v174;
      _os_log_impl(&_mh_execute_header, v172, v173, "#### Started NAN Publish session:%@", v175, 0xCu);
      sub_100016290(v176, &qword_10058B780, &qword_100480AC0);
    }

    v178 = *(v0 + 472);
    v179 = *(v0 + 448);
    v180 = *(v0 + 400);
    v102 = *(v0 + 408);
    v181 = *(v0 + 280);
    v183 = *(v0 + 256);
    v182 = *(v0 + 264);
    v184 = *(v0 + 224);

    v213(v181, v183);
    sub_100016290(v184, &unk_1005989A8, &qword_1004B28B0);
    (*(v102 + 8))(v179, v180);
    LODWORD(v102) = 0;
  }

LABEL_59:
  v203 = *(v0 + 440);
  v202 = *(v0 + 448);
  v205 = *(v0 + 424);
  v204 = *(v0 + 432);
  v206 = *(v0 + 392);
  v207 = *(v0 + 360);
  v208 = *(v0 + 368);
  v210 = *(v0 + 328);
  v209 = *(v0 + 336);
  v217 = *(v0 + 304);
  v220 = *(v0 + 296);
  v223 = *(v0 + 288);
  v226 = *(v0 + 280);
  v229 = *(v0 + 272);
  v233 = *(v0 + 248);
  v236 = *(v0 + 224);
  v242 = *(v0 + 216);
  v244 = *(v0 + 208);
  v247 = *(v0 + 200);
  v249 = *(v0 + 192);
  v252 = *(v0 + 184);
  v254 = *(v0 + 168);
  v257 = *(v0 + 144);
  **(v0 + 72) = v102;

  v211 = *(v0 + 8);

  return v211();
}

uint64_t sub_1003C2BF4()
{
  v58 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 80);
  Logger.init(subsystem:category:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 456);
    v5 = *(v0 + 464);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v57 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100002320(v6, v5, &v57);
    _os_log_impl(&_mh_execute_header, v3, v4, "#### ListenerClient:%s failed to get Paired Devices", v10, 0xCu);
    sub_100002A00(v11);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    v14 = *(v0 + 256);

    (*(v13 + 8))(v12, v14);
  }

  v15 = enum case for WAError.ErrorCode.noPairedDevices(_:);
  if (*(*(v0 + 96) + 16))
  {
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v18 = *(v0 + 232);
    v19 = *(v17 + 104);
    v20 = enum case for WAError.ErrorCode.noPairedDevices(_:);
    v19(v16);

    v21 = WAError.ErrorCode.rawValue.getter();
    result = (*(v17 + 8))(v16, v18);
    if (v21 < 0xFFFFFFFF80000000)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v21 > 0x7FFFFFFF)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    sub_1003F97C8(*(v0 + 80), v21);

    v23 = *(v0 + 240);
    v15 = v20;
  }

  else
  {
    v23 = *(v0 + 240);
    v19 = *(v23 + 104);
  }

  v24 = *(v0 + 568);
  v25 = *(v0 + 496);
  v26 = *(v0 + 472);
  v55 = *(v0 + 448);
  v27 = *(v0 + 408);
  v53 = *(v0 + 400);
  v28 = *(v0 + 248);
  v29 = *(v0 + 232);
  (v19)(v28, v15, v29);
  v30 = WAError.ErrorCode.rawValue.getter();

  (*(v23 + 8))(v28, v29);
  result = (*(v27 + 8))(v55, v53);
  if (v30 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v30 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = *(v0 + 440);
  v31 = *(v0 + 448);
  v34 = *(v0 + 424);
  v33 = *(v0 + 432);
  v35 = *(v0 + 392);
  v36 = *(v0 + 360);
  v37 = *(v0 + 368);
  v39 = *(v0 + 328);
  v38 = *(v0 + 336);
  v41 = *(v0 + 304);
  v42 = *(v0 + 296);
  v43 = *(v0 + 288);
  v44 = *(v0 + 280);
  v45 = *(v0 + 272);
  v46 = *(v0 + 248);
  v47 = *(v0 + 224);
  v48 = *(v0 + 216);
  v49 = *(v0 + 208);
  v50 = *(v0 + 200);
  v51 = *(v0 + 192);
  v52 = *(v0 + 184);
  v54 = *(v0 + 168);
  v56 = *(v0 + 144);
  **(v0 + 72) = v30;

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1003C302C(uint64_t (**a1)(uint64_t, uint64_t), uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v243 = a7;
  v238 = a6;
  v244 = a5;
  v245 = a4;
  v257 = a2;
  v249 = a1;
  v7 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64);
  __chkstk_darwin();
  v233 = &v210 - v8;
  v259 = type metadata accessor for ConnectedSession(0);
  v251 = *(v259 - 1);
  v9 = *(v251 + 64);
  __chkstk_darwin();
  v241 = &v210 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = &v210 - v11;
  __chkstk_darwin();
  v258 = &v210 - v12;
  __chkstk_darwin();
  v247 = &v210 - v13;
  v14 = *(*(sub_10005DC58(&unk_1005989C0, &unk_1004B28C0) - 8) + 64);
  __chkstk_darwin();
  v260 = &v210 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v254 = &v210 - v16;
  v17 = *(*(sub_10005DC58(&qword_1005989B8, &qword_1004B28B8) - 8) + 64);
  __chkstk_darwin();
  v224 = &v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v227 = &v210 - v19;
  v248 = type metadata accessor for WAError.ErrorCode();
  v20 = *(v248 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v223 = (&v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v235 = &v210 - v23;
  __chkstk_darwin();
  v246 = &v210 - v24;
  __chkstk_darwin();
  v242 = &v210 - v25;
  v237 = type metadata accessor for UUID();
  v252 = *(v237 - 8);
  v26 = *(v252 + 64);
  __chkstk_darwin();
  v255 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v230 = &v210 - v28;
  __chkstk_darwin();
  v231 = &v210 - v29;
  __chkstk_darwin();
  v250 = &v210 - v30;
  v236 = type metadata accessor for Logger();
  v256 = *(v236 - 8);
  v31 = *(v256 + 64);
  __chkstk_darwin();
  v222 = &v210 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v34 = &v210 - v33;
  __chkstk_darwin();
  v234 = &v210 - v35;
  __chkstk_darwin();
  v221 = (&v210 - v36);
  __chkstk_darwin();
  v38 = &v210 - v37;
  __chkstk_darwin();
  v40 = &v210 - v39;
  v41 = *(*(sub_10005DC58(&qword_100597588, &qword_1004B1870) - 8) + 64);
  __chkstk_darwin();
  v43 = &v210 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v226 = &v210 - v44;
  __chkstk_darwin();
  v46 = &v210 - v45;
  v47 = type metadata accessor for ListenInBoundConnection(0);
  v232 = *(v47 - 8);
  v48 = *(v232 + 64);
  __chkstk_darwin();
  v225 = &v210 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v253 = (&v210 - v50);
  __chkstk_darwin();
  v52 = &v210 - v51;
  v53 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v55 = &v210 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v239 = result;
  if (!result)
  {
    return result;
  }

  sub_1003E8CDC(v257, v55, type metadata accessor for sessionStatus);
  if ((*(v20 + 48))(v55, 1, v248) != 1)
  {
    v61 = v242;
    v62 = v248;
    (*(v20 + 32))(v242, v55, v248);
    v63 = *(v20 + 16);
    v64 = v246;
    v229 = v20 + 16;
    v228 = v63;
    v63(v246, v61, v62);
    v65 = (*(v20 + 88))(v64, v62);
    v66 = v236;
    if (v65 == enum case for WAError.ErrorCode.publisherTimeout(_:))
    {
      Logger.init(subsystem:category:)();
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v239;
      if (v69)
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "#### Publisher Timeout", v71, 2u);
      }

      (*(v256 + 8))(v34, v66);
      v72 = v245;
      sub_1003AF9F0(*(v245 + 72), *(v245 + 80), *(v245 + 48), *(v245 + 56), 1);
      if (!*(v70 + 16))
      {
        goto LABEL_14;
      }

      v73 = *(v70 + 16);

      result = WAError.ErrorCode.rawValue.getter();
      if (result >= 0xFFFFFFFF80000000)
      {
        if (result <= 0x7FFFFFFF)
        {
          sub_1003F97C8(v72, result);

LABEL_14:
          swift_beginAccess();
          sub_1003AD75C(v244, sub_10047710C, sub_10046D8D8);
          swift_endAccess();

          swift_beginAccess();
          type metadata accessor for NANAgentHandler.Client();
          sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
          type metadata accessor for Dictionary();
          Dictionary.removeValue(forKey:)();
          swift_endAccess();

          return (*(v20 + 8))(v61, v248);
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v83 = v239;
    if (v65 == enum case for WAError.ErrorCode.connectionFailed(_:))
    {
      Logger.init(subsystem:category:)();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v84, v85, "#### Connection Failed", v86, 2u);
      }

      (*(v256 + 8))(v38, v66);
    }

    else
    {
      if (v65 != enum case for WAError.ErrorCode.connectionIdleTimeout(_:) && v65 != enum case for WAError.ErrorCode.connectionTerminated(_:))
      {
        v87 = v222;
        Logger.init(subsystem:category:)();
        v88 = v223;
        v228(v223, v242, v248);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 134217984;
          v92 = WAError.ErrorCode.rawValue.getter();
          v93 = *(v20 + 8);
          v93(v88, v248);
          *(v91 + 4) = v92;
          _os_log_impl(&_mh_execute_header, v89, v90, "#### Publisher error %ld", v91, 0xCu);
        }

        else
        {
          v93 = *(v20 + 8);
          v93(v88, v248);
        }

        v206 = v256;

        (*(v206 + 8))(v87, v236);
        v207 = v245;
        sub_1003AF9F0(*(v245 + 72), *(v245 + 80), *(v245 + 48), *(v245 + 56), 1);
        if (*(v83 + 16))
        {
          v208 = *(v83 + 16);

          result = WAError.ErrorCode.rawValue.getter();
          if (result < 0xFFFFFFFF80000000)
          {
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if (result > 0x7FFFFFFF)
          {
LABEL_101:
            __break(1u);
            return result;
          }

          sub_1003F97C8(v207, result);
        }

        swift_beginAccess();
        sub_1003AD75C(v244, sub_10047710C, sub_10046D8D8);
        swift_endAccess();

        swift_beginAccess();
        type metadata accessor for NANAgentHandler.Client();
        sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
        type metadata accessor for Dictionary();
        Dictionary.removeValue(forKey:)();
        swift_endAccess();

        v209 = v248;
        v93(v242, v248);
        return (v93)(v64, v209);
      }

      sub_100012400(v249, v43, &qword_100597588, &qword_1004B1870);
      if ((*(v232 + 48))(v43, 1, v47) != 1)
      {
        sub_100046A08(v43, v253, type metadata accessor for ListenInBoundConnection);
        swift_beginAccess();
        v98 = *(v83 + 72);
        v99 = *(v98 + 64);
        v211 = v98 + 64;
        v100 = 1 << *(v98 + 32);
        if (v100 < 64)
        {
          v101 = ~(-1 << v100);
        }

        else
        {
          v101 = -1;
        }

        v102 = v101 & v99;
        v212 = v98;

        result = swift_beginAccess();
        v103 = 0;
        v104 = (v100 + 63) >> 6;
        v245 = v252 + 16;
        v257 = (v252 + 32);
        v249 = (v252 + 8);
        v222 = &qword_1004B4E88[7];
        v223 = (v20 + 8);
        v221 = (v256 + 8);
        v220 = (v251 + 56);
        *&v105 = 136315906;
        v216 = v105;
        v106 = v237;
        v107 = v254;
        v108 = v224;
        v109 = v227;
        v213 = v104;
        while (v102)
        {
          v112 = v108;
          v113 = v103;
LABEL_46:
          v215 = (v102 - 1) & v102;
          v116 = __clz(__rbit64(v102)) | (v113 << 6);
          v117 = v212;
          v118 = v252;
          v119 = v250;
          (*(v252 + 16))(v250, *(v212 + 48) + *(v252 + 72) * v116, v106);
          v120 = v225;
          sub_1003E8CDC(*(v117 + 56) + *(v232 + 72) * v116, v225, type metadata accessor for ListenInBoundConnection);
          v121 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
          v122 = *(v121 + 48);
          v123 = v119;
          v108 = v112;
          (*(v118 + 32))(v112, v123, v106);
          sub_100046A08(v120, v112 + v122, type metadata accessor for ListenInBoundConnection);
          (*(*(v121 - 8) + 56))(v112, 0, 1, v121);
          v115 = v113;
          v109 = v227;
LABEL_47:
          sub_10001CEA8(v108, v109, &qword_1005989B8, &qword_1004B28B8);
          v124 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
          if ((*(*(v124 - 8) + 48))(v109, 1, v124) == 1)
          {
            goto LABEL_94;
          }

          v125 = *(v124 + 48);
          v256 = *v257;
          (v256)(v230, v109, v106);
          v126 = *(v109 + v125);
          sub_1003E8ED4(v109 + v125, type metadata accessor for ListenInBoundConnection);
          v127 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
          v129 = v128;

          v130 = *v253;
          if (WiFiMACAddress.ipv6LinkLocalAddressString.getter() == v127 && v131 == v129)
          {

            v134 = v260;
LABEL_55:
            v238 = v127;
            v243 = v129;
            v214 = v115;
            v136 = *(v239 + 80);
            v139 = *(v136 + 64);
            v138 = v136 + 64;
            v137 = v139;
            v140 = 1 << *(*(v239 + 80) + 32);
            if (v140 < 64)
            {
              v141 = ~(-1 << v140);
            }

            else
            {
              v141 = -1;
            }

            v142 = v141 & v137;
            v143 = (v140 + 63) >> 6;
            v246 = *(v239 + 80);

            v144 = 0;
            v145 = v255;
            v106 = v237;
            v244 = v138;
            while (v142)
            {
              v149 = v144;
LABEL_72:
              v152 = __clz(__rbit64(v142));
              v142 &= v142 - 1;
              v153 = v152 | (v149 << 6);
              v154 = v246;
              v155 = v250;
              (*(v252 + 16))(v250, *(v246 + 6) + *(v252 + 72) * v153, v106);
              v156 = *(v154 + 7) + *(v251 + 72) * v153;
              v157 = v247;
              sub_1003E8CDC(v156, v247, type metadata accessor for ConnectedSession);
              v158 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
              v159 = *(v158 + 48);
              v160 = v260;
              (v256)(v260, v155, v106);
              v161 = &v160[v159];
              v134 = v160;
              sub_100046A08(v157, v161, type metadata accessor for ConnectedSession);
              (*(*(v158 - 8) + 56))(v160, 0, 1, v158);
              v107 = v254;
              v145 = v255;
              v138 = v244;
LABEL_73:
              sub_10001CEA8(v134, v107, &unk_1005989C0, &unk_1004B28C0);
              v162 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
              if ((*(*(v162 - 8) + 48))(v107, 1, v162) == 1)
              {

                swift_beginAccess();
                v110 = v226;
                v111 = v230;
                sub_1003AD998(v230, type metadata accessor for ListenInBoundConnection, type metadata accessor for ListenInBoundConnection, sub_100469704, sub_10046D130, v226);
                sub_100016290(v110, &qword_100597588, &qword_1004B1870);
                swift_endAccess();
                result = (*v249)(v111, v106);
                v103 = v214;
                v108 = v224;
                v109 = v227;
                goto LABEL_35;
              }

              v163 = *(v162 + 48);
              (v256)(v145, v107, v106);
              v164 = v107 + v163;
              v148 = v258;
              sub_100046A08(v164, v258, type metadata accessor for ConnectedSession);
              if (*(v148 + v259[5]) == *(v253 + 8))
              {
                v165 = (v148 + v259[11]);
                v167 = *v165;
                v166 = v165[1];
                v263[0] = v167;
                v263[1] = v166;
                v261 = v238;
                v262 = v243;
                sub_10005E2E4();
                if (StringProtocol.contains<A>(_:)())
                {
                  v168 = v234;
                  Logger.init(subsystem:category:)();
                  sub_1003E8CDC(v148, v240, type metadata accessor for ConnectedSession);
                  sub_1003E8CDC(v148, v241, type metadata accessor for ConnectedSession);
                  v169 = v235;
                  v228(v235, v242, v248);
                  v170 = v243;

                  v171 = Logger.logObject.getter();
                  v172 = static os_log_type_t.default.getter();

                  LODWORD(v231) = v172;
                  if (os_log_type_enabled(v171, v172))
                  {
                    v173 = swift_slowAlloc();
                    v219 = swift_slowAlloc();
                    v263[0] = v219;
                    *v173 = v216;
                    *(v173 + 4) = sub_100002320(v238, v170, v263);
                    *(v173 + 12) = 2080;
                    v174 = v259;
                    v175 = (v240 + v259[11]);
                    v218 = v171;
                    v176 = v175[1];
                    v217 = *v175;
                    v177 = v240;
                    v178 = v241;

                    sub_1003E8ED4(v177, type metadata accessor for ConnectedSession);
                    v179 = sub_100002320(v217, v176, v263);

                    *(v173 + 14) = v179;
                    *(v173 + 22) = 2080;
                    v180 = (v178 + v174[11]);
                    v181 = *v180;
                    v182 = v180[1];

                    sub_1003E8ED4(v178, type metadata accessor for ConnectedSession);
                    v183 = sub_100002320(v181, v182, v263);

                    *(v173 + 24) = v183;
                    *(v173 + 32) = 2048;
                    v184 = v235;
                    v185 = WAError.ErrorCode.rawValue.getter();
                    (*v223)(v184, v248);
                    *(v173 + 34) = v185;
                    v186 = v218;
                    _os_log_impl(&_mh_execute_header, v218, v231, "#### Terminated InBoundConnection %s datapath:id: %s connectedSession RemoteAddress %s error: %ld", v173, 0x2Au);
                    swift_arrayDestroy();

                    (*v221)(v234, v236);
                  }

                  else
                  {
                    (*v223)(v169, v248);

                    sub_1003E8ED4(v241, type metadata accessor for ConnectedSession);
                    sub_1003E8ED4(v240, type metadata accessor for ConnectedSession);
                    (*v221)(v168, v236);
                    v174 = v259;
                  }

                  v188 = *(v258 + v174[10]);
                  v189 = *(v188 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
                  v190 = *(v188 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);

                  result = WAError.ErrorCode.rawValue.getter();
                  v191 = v239;
                  if (result < -32768)
                  {
                    goto LABEL_96;
                  }

                  if (result >= 0x8000)
                  {
                    goto LABEL_97;
                  }

                  v189(0, 0, 0, 0, 0, 0, 0, 0, 0, result);

                  v192 = *(v188 + 72);
                  v193 = *(v188 + 80);
                  v194 = v259[7];

                  v195 = WASubscribableService.name.getter();
                  sub_1003AF9F0(v192, v193, v195, v196, 2);

                  swift_beginAccess();
                  v197 = *(v191 + 80);
                  v145 = v255;
                  v198 = sub_10002A440(v255);
                  if (v199)
                  {
                    v200 = v198;
                    v201 = *(v191 + 80);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v203 = *(v191 + 80);
                    v261 = v203;
                    *(v191 + 80) = 0x8000000000000000;
                    v106 = v237;
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      sub_10046D5AC();
                      v203 = v261;
                    }

                    (*(v252 + 8))(*(v203 + 48) + *(v252 + 72) * v200, v106);
                    v147 = v233;
                    sub_100046A08(*(v203 + 56) + *(v251 + 72) * v200, v233, type metadata accessor for ConnectedSession);
                    sub_100469890(v200, v203);
                    v204 = *(v191 + 80);
                    *(v191 + 80) = v203;

                    v146 = 0;
                  }

                  else
                  {
                    v146 = 1;
                    v106 = v237;
                    v147 = v233;
                  }

                  (*v220)(v147, v146, 1, v259);
                  sub_100016290(v147, &qword_100597578, &qword_1004B1860);
                  swift_endAccess();
                  v148 = v258;
                  v107 = v254;
                }
              }

              (*v249)(v145, v106);
              sub_1003E8ED4(v148, type metadata accessor for ConnectedSession);
              v134 = v260;
            }

            if (v143 <= v144 + 1)
            {
              v150 = v144 + 1;
            }

            else
            {
              v150 = v143;
            }

            v151 = v150 - 1;
            while (1)
            {
              v149 = v144 + 1;
              if (__OFADD__(v144, 1))
              {
                break;
              }

              if (v149 >= v143)
              {
                v144 = v151;
                v187 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
                (*(*(v187 - 8) + 56))(v134, 1, 1, v187);
                v142 = 0;
                goto LABEL_73;
              }

              v142 = *(v138 + 8 * v149);
              ++v144;
              if (v142)
              {
                v144 = v149;
                goto LABEL_72;
              }
            }

            __break(1u);
LABEL_94:
            (*v223)(v242, v248);

            return sub_1003E8ED4(v253, type metadata accessor for ListenInBoundConnection);
          }

          v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v134 = v260;
          if (v133)
          {
            goto LABEL_55;
          }

          v135 = v237;
          (*v249)(v230, v237);
          v106 = v135;

          v103 = v115;
LABEL_35:
          v104 = v213;
          v102 = v215;
        }

        if (v104 <= v103 + 1)
        {
          v114 = v103 + 1;
        }

        else
        {
          v114 = v104;
        }

        v115 = v114 - 1;
        while (1)
        {
          v113 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            break;
          }

          if (v113 >= v104)
          {
            v205 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
            (*(*(v205 - 8) + 56))(v108, 1, 1, v205);
            v215 = 0;
            goto LABEL_47;
          }

          v102 = *(v211 + 8 * v113);
          ++v103;
          if (v102)
          {
            v112 = v108;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      sub_100016290(v43, &qword_100597588, &qword_1004B1870);
      v94 = v221;
      Logger.init(subsystem:category:)();
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&_mh_execute_header, v95, v96, "#### Listener DataPath terminated error (nil)", v97, 2u);
      }

      (*(v256 + 8))(v94, v66);
    }

    return (*(v20 + 8))(v242, v248);
  }

  sub_100012400(v249, v46, &qword_100597588, &qword_1004B1870);
  v57 = v232;
  if ((*(v232 + 48))(v46, 1, v47) == 1)
  {
    sub_100016290(v46, &qword_100597588, &qword_1004B1870);
    Logger.init(subsystem:category:)();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "#### Listener Received InBound Connection error (nil)", v60, 2u);
    }

    return (*(v256 + 8))(v40, v236);
  }

  else
  {
    sub_100046A08(v46, v52, type metadata accessor for ListenInBoundConnection);
    v74 = v250;
    UUID.init()();
    v75 = v252;
    v76 = v231;
    v77 = v237;
    (*(v252 + 16))(v231, v74, v237);
    v78 = v226;
    sub_1003E8CDC(v52, v226, type metadata accessor for ListenInBoundConnection);
    (*(v57 + 56))(v78, 0, 1, v47);
    v79 = v239;
    swift_beginAccess();
    sub_1003388F0(v78, v76);
    swift_endAccess();
    v80 = v52[8];
    swift_beginAccess();
    v81 = *(v79 + 88);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v264 = *(v79 + 88);
    *(v79 + 88) = 0x8000000000000000;
    sub_1003E282C(1, v80, v82);
    *(v79 + 88) = v264;
    swift_endAccess();

    (*(v75 + 8))(v74, v77);
    return sub_1003E8ED4(v52, type metadata accessor for ListenInBoundConnection);
  }
}

uint64_t NANAgentHandler.stopListenerSession(_:)(uint64_t a1)
{
  v2 = v1;
  v65 = *v1;
  v4 = type metadata accessor for UUID();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  __chkstk_darwin();
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v64 - v7;
  v8 = *(*(sub_10005DC58(&qword_100598998, &qword_1004B28A0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v64 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  LODWORD(v78) = v19;
  v20 = os_log_type_enabled(v18, v19);
  v75 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v81 = v74;
    *v21 = 136315138;
    v76 = v13;
    v22 = sub_1003F3D58();
    v24 = sub_100002320(v22, v23, &v81);

    *(v21 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v78, "#### Stopped a listener session:%s", v21, 0xCu);
    sub_100002A00(v74);

    (*(v14 + 8))(v17, v76);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  swift_beginAccess();
  v66 = v2;
  v25 = v2[6];
  v26 = *(v25 + 64);
  v67 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v68 = v73 + 16;
  v78 = (v73 + 32);
  v74 = (v73 + 8);
  v72 = v25;

  v32 = 0;
  v76 = v4;
  v69 = v12;
  v70 = v10;
  if (v29)
  {
    while (1)
    {
      v33 = v32;
LABEL_15:
      v36 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v37 = v36 | (v33 << 6);
      v38 = v72;
      v39 = v73;
      v40 = v71;
      (*(v73 + 16))(v71, *(v72 + 48) + *(v73 + 72) * v37, v4);
      v41 = *(*(v38 + 56) + 8 * v37);
      v42 = sub_10005DC58(&qword_1005989A0, &qword_1004B28A8);
      v43 = v4;
      v44 = *(v42 + 48);
      v45 = *(v39 + 32);
      v10 = v70;
      v45(v70, v40, v43);
      *&v10[v44] = v41;
      (*(*(v42 - 8) + 56))(v10, 0, 1, v42);

      v35 = v33;
      v12 = v69;
LABEL_16:
      sub_10001CEA8(v10, v12, &qword_100598998, &qword_1004B28A0);
      v46 = sub_10005DC58(&qword_1005989A0, &qword_1004B28A8);
      v47 = (*(*(v46 - 8) + 48))(v12, 1, v46);
      v48 = v77;
      if (v47 == 1)
      {
      }

      v49 = *&v12[*(v46 + 48)];
      v4 = v76;
      (*v78)(v77, v12, v76);
      v50 = *(v49 + 16);
      if (v50 == v75)
      {
        break;
      }

      (*v74)(v48, v4);

      v32 = v35;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

    v52 = *(v49 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier);
    v53 = *(v49 + OBJC_IVAR____TtC12wifip2pdCore17WifiAwareListener_bundleIdentifier + 8);
    v54 = *(v50 + 48);
    v55 = *(v50 + 56);

    v56 = v66;
    sub_1003AF9F0(v52, v53, v54, v55, 1);
    v57 = v77;

    swift_beginAccess();
    sub_1003AD75C(v57, sub_10047710C, sub_10046D8D8);
    swift_endAccess();

    swift_beginAccess();
    v58 = v56[7];
    v59 = *(v65 + 80);
    v60 = *(v65 + 88);
    type metadata accessor for NANAgentHandler.Client();
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

    Dictionary.subscript.getter();

    v62 = v79;
    if (v79)
    {
      (*((swift_isaMask & *v79) + 0x98))(v61);
    }

    swift_beginAccess();
    v63 = v76;
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    return (*v74)(v57, v63);
  }

  else
  {
LABEL_8:
    if (v30 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = v30;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
        v51 = sub_10005DC58(&qword_1005989A0, &qword_1004B28A8);
        (*(*(v51 - 8) + 56))(v10, 1, 1, v51);
        v29 = 0;
        goto LABEL_16;
      }

      v29 = *(v67 + 8 * v33);
      ++v32;
      if (v29)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1003C5BD0(void *a1)
{
  v1 = *a1;
  v2 = swift_isaMask;
  *(a1 + qword_100598E98) = 0;
  sub_1003E6710();
  swift_beginAccess();
  type metadata accessor for UUID();
  v3 = *((v2 & v1) + 0xA0);
  v4 = *((v2 & v1) + 0xA8);
  type metadata accessor for NANAgentHandler.Client();
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

uint64_t sub_1003C5CF0()
{
  v1 = v0;
  v2 = *(*(sub_10005DC58(&qword_100597580, &qword_1004B1868) - 8) + 64);
  __chkstk_darwin();
  v4 = v68 - v3;
  v84 = type metadata accessor for ConnectedEndpoints(0);
  v81 = *(v84 - 8);
  v5 = *(v81 + 64);
  __chkstk_darwin();
  v71 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  __chkstk_darwin();
  v83 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = v68 - v10;
  v11 = *(*(sub_10005DC58(&qword_1005989D8, &qword_1004B28D8) - 8) + 64);
  __chkstk_darwin();
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = v68 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = v68 - v20;
  swift_beginAccess();
  if (*(*(v0 + 64) + 16))
  {
    Logger.init(subsystem:category:)();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v77 = v4;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = *(*(v1 + 64) + 16);

      _os_log_impl(&_mh_execute_header, v22, v23, "#### Monitoring endpoints: %ld", v25, 0xCu);
    }

    else
    {
    }

    (*(v16 + 8))(v19, v15);
    v78 = v1;
    v31 = *(v1 + 64);
    v32 = v31 + 64;
    v33 = 1 << *(v31 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v31 + 64);
    v68[0] = (v33 + 63) >> 6;
    v68[1] = v80 + 16;
    v82 = (v80 + 32);
    v74 = (v80 + 8);
    v75 = (v81 + 56);
    v72 = v31;

    v36 = 0;
    v76 = v7;
    v69 = v13;
    v73 = v32;
    while (v35)
    {
      v42 = v36;
LABEL_23:
      v45 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v46 = v45 | (v42 << 6);
      v47 = v72;
      v48 = v80;
      (*(v80 + 16))(v70, *(v72 + 48) + *(v80 + 72) * v46, v7);
      v49 = v71;
      sub_1003E8CDC(*(v47 + 56) + *(v81 + 72) * v46, v71, type metadata accessor for ConnectedEndpoints);
      v50 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
      v51 = *(v50 + 48);
      v13 = v69;
      (*(v48 + 32))();
      sub_100046A08(v49, &v13[v51], type metadata accessor for ConnectedEndpoints);
      (*(*(v50 - 8) + 56))(v13, 0, 1, v50);
LABEL_24:
      v52 = v79;
      sub_10001CEA8(v13, v79, &qword_1005989D8, &qword_1004B28D8);
      v53 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
      if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
      {

        v67 = *(v78 + 96);
        *(v78 + 96) = 0;
      }

      v54 = v52 + *(v53 + 48);
      v55 = v83;
      v56 = v76;
      (*v82)(v83, v52, v76);
      v57 = *(v54 + *(v84 + 20));
      sub_1003E8ED4(v54, type metadata accessor for ConnectedEndpoints);
      v58 = v78;
      sub_1003E42AC(v57);
      swift_beginAccess();
      v59 = *(v58 + 64);
      v60 = sub_10002A440(v55);
      if (v61)
      {
        v62 = v60;
        v37 = v13;
        v63 = *(v58 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = *(v58 + 64);
        v85 = v65;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10046DDAC();
          v65 = v85;
        }

        v41 = v74;
        (*(v80 + 8))(*(v65 + 48) + *(v80 + 72) * v62, v56);
        v39 = v56;
        v40 = v77;
        sub_100046A08(*(v65 + 56) + *(v81 + 72) * v62, v77, type metadata accessor for ConnectedEndpoints);
        sub_100469D74(v62, v65);
        v38 = 0;
        *(v58 + 64) = v65;
      }

      else
      {
        v37 = v13;
        v38 = 1;
        v39 = v56;
        v40 = v77;
        v41 = v74;
      }

      (*v75)(v40, v38, 1, v84);
      sub_100016290(v40, &qword_100597580, &qword_1004B1868);
      swift_endAccess();
      result = (*v41)(v83, v39);
      v7 = v39;
      v13 = v37;
      v32 = v73;
    }

    if (v68[0] <= v36 + 1)
    {
      v43 = v36 + 1;
    }

    else
    {
      v43 = v68[0];
    }

    v44 = v43 - 1;
    while (1)
    {
      v42 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v42 >= v68[0])
      {
        v66 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
        (*(*(v66 - 8) + 56))(v13, 1, 1, v66);
        v35 = 0;
        v36 = v44;
        goto LABEL_24;
      }

      v35 = *(v32 + 8 * v42);
      ++v36;
      if (v35)
      {
        v36 = v42;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = *(v0 + 96);
    *(v0 + 96) = 0;

    Logger.init(subsystem:category:)();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "#### All endpoints connected, timer stopped.", v29, 2u);
    }

    return (*(v16 + 8))(v21, v15);
  }

  return result;
}

uint64_t sub_1003C6608()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v22 - v8;
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = v1[12];
  v1[12] = 0;

  *v11 = 5;
  v13 = *(v4 + 104);
  v13(v11, enum case for DispatchTimeInterval.seconds(_:), v3);
  v23 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = *(v2 + 80);
  v15[3] = *(v2 + 88);
  v15[4] = v14;
  v13(v9, enum case for DispatchTimeInterval.never(_:), v3);
  *v7 = 100;
  v13(v7, enum case for DispatchTimeInterval.milliseconds(_:), v3);
  v16 = type metadata accessor for P2PTimer();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v11, v23, v9, v7, sub_1003E9EE0, v15);
  v20 = v1[12];
  v1[12] = v19;
}

uint64_t sub_1003C6864(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
  }

  return result;
}

uint64_t sub_1003C68C4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[7];
  type metadata accessor for UUID();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for NANAgentHandler.Client();
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

  Dictionary.subscript.getter();

  if (!v8)
  {
    return 0;
  }

  type metadata accessor for NANAgentHandler.DataSessionClient();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    return 0;
  }

  v6 = *(v5 + qword_100598E70);

  return v6;
}

BOOL sub_1003C6A1C(uint64_t a1, void *a2)
{
  v126 = a2;
  v120 = a1;
  v3 = *v2;
  v4 = *(*(sub_10005DC58(&qword_1005989F0, &qword_1004B28F0) - 8) + 64);
  __chkstk_darwin();
  v110 = &v103 - v5;
  v6 = *(*(sub_10005DC58(&qword_1005989E8, &qword_1004B28E8) - 8) + 64);
  __chkstk_darwin();
  v109 = &v103 - v7;
  v8 = *(*(sub_10005DC58(&qword_100597580, &qword_1004B1868) - 8) + 64);
  __chkstk_darwin();
  v103 = &v103 - v9;
  v10 = *(*(sub_10005DC58(&qword_1005989E0, &qword_1004B28E0) - 8) + 64);
  __chkstk_darwin();
  v125 = &v103 - v11;
  v121 = type metadata accessor for NWEndpoint();
  v112 = *(v121 - 8);
  v12 = v112[8];
  __chkstk_darwin();
  v104 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v103 - v14;
  __chkstk_darwin();
  v111 = &v103 - v15;
  v119 = type metadata accessor for Logger();
  v137 = *(v119 - 8);
  v16 = *(v137 + 64);
  __chkstk_darwin();
  v105 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v103 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v108 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v103 - v23;
  v24 = *(v3 + 80);
  v135 = *(v3 + 88);
  v136 = v24;
  type metadata accessor for NANAgentHandler.Client();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v141 = type metadata accessor for Optional();
  v26 = *(v141 - 1);
  v27 = *(v26 + 64);
  __chkstk_darwin();
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v103 - v30;
  swift_beginAccess();
  v106 = v2;
  v32 = v2[7];
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;
  v128 = v20 + 32;
  v129 = v20 + 16;
  v139 = (v26 + 32);
  v140 = TupleTypeMetadata2 - 8;
  v117 = &qword_1004B4E88[7];
  v118 = (v137 + 8);
  v116 = (v112 + 6);
  v133 = v20;
  v134 = v32;
  v137 = v20 + 8;

  v38 = 0;
  *&v39 = 136315138;
  v113 = v39;
  v130 = v29;
  v131 = TupleTypeMetadata2;
  v115 = v19;
  for (i = v31; ; (*v137)(i, v19))
  {
    if (!v36)
    {
      if (v37 <= (v38 + 1))
      {
        v41 = (v38 + 1);
      }

      else
      {
        v41 = v37;
      }

      v42 = (v41 - 1);
      while (1)
      {
        v40 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v40 >= v37)
        {
          v50 = *(TupleTypeMetadata2 - 8);
          (*(v50 + 56))(v29, 1, 1, TupleTypeMetadata2);
          v36 = 0;
          v38 = v42;
          goto LABEL_17;
        }

        v36 = *(v33 + 8 * v40);
        ++v38;
        if (v36)
        {
          v38 = v40;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v40 = v38;
LABEL_16:
    v43 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v44 = v43 | (v40 << 6);
    v46 = v133;
    v45 = v134;
    (*(v133 + 16))(v132, *(v134 + 48) + *(v133 + 72) * v44, v19);
    v47 = *(*(v45 + 56) + 8 * v44);
    v48 = *(v131 + 48);
    v49 = *(v46 + 32);
    TupleTypeMetadata2 = v131;
    v29 = v130;
    v49();
    *&v29[v48] = v47;
    v50 = *(TupleTypeMetadata2 - 8);
    (*(v50 + 56))(v29, 0, 1, TupleTypeMetadata2);
    v51 = v47;
LABEL_17:
    (*v139)(v31, v29, v141);
    v52 = (*(v50 + 48))(v31, 1, TupleTypeMetadata2);
    v53 = v31;
    LODWORD(v31) = v52;
    if (v52 == 1)
    {

      return v31 != 1;
    }

    v54 = *&v53[*(TupleTypeMetadata2 + 48)];
    type metadata accessor for NANAgentHandler.DataSessionClient();
    v55 = swift_dynamicCastClass();
    if (!v55 || (v56 = v55, *(v55 + qword_100598E98) != 1))
    {

      goto LABEL_5;
    }

    v127 = v54;
    if ((sub_1003DE264(v126) & 1) == 0)
    {

      goto LABEL_5;
    }

    v123 = v31;
    Logger.init(subsystem:category:)();
    v57 = v120;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    v122 = v59;
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v114 = v58;
      v61 = v60;
      v62 = swift_slowAlloc();
      v143 = v62;
      *v61 = v113;
      *(v61 + 4) = sub_100002320(*(v57 + 72), *(v57 + 80), &v143);
      v63 = v114;
      _os_log_impl(&_mh_execute_header, v114, v122, "#### Data path already active for %s", v61, 0xCu);
      sub_100002A00(v62);
    }

    else
    {
    }

    v19 = *v118;
    (*v118)(v124, v119);
    sub_1003DDEB4(v125);
    v64 = v125;
    v65 = (*v116)(v125, 1, v121);
    LODWORD(v31) = v123;
    if (v65 != 1)
    {
      break;
    }

    sub_100016290(v64, &qword_1005989E0, &qword_1004B28E0);
    v19 = v115;
LABEL_5:
    v31 = i;
  }

  v67 = v112;
  TupleTypeMetadata2 = v112[4];
  v68 = v111;
  v69 = v64;
  v70 = v121;
  (TupleTypeMetadata2)(v111, v69, v121);
  UUID.init()();
  v141 = v67[2];
  (v141)(v107, v68, v70);
  LODWORD(v140) = *(v56 + qword_100598E70);
  v36 = *(v56 + qword_100598E88);
  v71 = *(v120 + 48);
  v72 = *(v120 + 56);

  v73 = v109;
  WASubscribableService.init(name:)();
  v74 = type metadata accessor for WASubscribableService();
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
  v75 = type metadata accessor for WAPairedDevice();
  (*(*(v75 - 8) + 56))(v110, 1, 1, v75);
  v42 = *(v56 + qword_100598E90);
  if (v42)
  {
    v76 = v42;
    goto LABEL_34;
  }

LABEL_33:
  v76 = [objc_opt_self() zeroAddress];
LABEL_34:
  v77 = v103;
  v78 = v121;
  (TupleTypeMetadata2)(v103, v107, v121);
  v79 = v78;
  v80 = type metadata accessor for ConnectedEndpoints(0);
  *(v77 + v80[5]) = v140;
  *(v77 + v80[6]) = v36;
  sub_10001CEA8(v109, v77 + v80[7], &qword_1005989E8, &qword_1004B28E8);
  sub_10001CEA8(v110, v77 + v80[8], &qword_1005989F0, &qword_1004B28F0);
  *(v77 + v80[9]) = v76;
  (*(*(v80 - 1) + 56))(v77, 0, 1, v80);
  v81 = v106;
  swift_beginAccess();
  v82 = v42;
  sub_100338B10(v77, v108);
  swift_endAccess();
  v83 = nw_array_create();
  v84 = v111;
  v139 = NWEndpoint.nw.getter();
  nw_array_append();
  v85 = v120;
  v86 = *(v120 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve);
  v87 = *(v120 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve + 8);
  v140 = v83;
  v86(v83);
  v88 = v105;
  Logger.init(subsystem:category:)();
  v89 = v104;
  (v141)(v104, v84, v79);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v89;
    v93 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v143 = v141;
    *v93 = v113;
    v142 = NWEndpoint.nw.getter();
    sub_10005DC58(&qword_1005994B0, &qword_1004B2E20);
    v94 = Optional.debugDescription.getter();
    v96 = v95;
    v97 = v112[1];
    v97(v92, v121);
    v81 = v106;
    swift_unknownObjectRelease();
    v98 = sub_100002320(v94, v96, &v143);
    v79 = v121;

    *(v93 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v90, v91, "####Existing Endpoint Resolved. %s", v93, 0xCu);
    sub_100002A00(v141);
    v85 = v120;

    v99 = v97;

    v100 = v105;
  }

  else
  {

    v99 = v112[1];
    v99(v89, v79);
    v100 = v88;
  }

  (v19)(v100, v119);
  v101 = v115;
  if (v81[2])
  {
    v102 = v81[2];

    sub_1003FCA7C(v85);
  }

  sub_1003C6608();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v99(v111, v79);
  (*v137)(i, v101);
  return v31 != 1;
}

uint64_t sub_1003C7948(uint64_t a1)
{
  v2 = type metadata accessor for WAError.ErrorCode();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  __chkstk_darwin();
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  __chkstk_darwin();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v42 = &v41 - v11;
  v12 = type metadata accessor for WAPerformanceMode();
  v41 = *(v12 - 1);
  v13 = *(v41 + 64);
  __chkstk_darwin();
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v41 - v16;
  v18 = *(*(sub_10005DC58(&unk_1005989A8, &qword_1004B28B0) - 8) + 64);
  __chkstk_darwin();
  v20 = &v41 - v19;
  v21 = type metadata accessor for WAParametersAgentInterface.Parameters();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 64);
  v27._countAndFlagsBits = 0x6269726373627553;
  v28._countAndFlagsBits = 0xD00000000000001ELL;
  v28._object = 0x80000001004B8650;
  v27._object = 0xE900000000000065;
  if (Int32.checkEntitlement(for_:capabilities:)(v28, v27))
  {
    v5 = swift_allocObject();
    v5[16] = 0;
    v29 = *(a1 + 40);
    sub_1003ADDD0(v20);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_100016290(v20, &unk_1005989A8, &qword_1004B28B0);
LABEL_11:
      v37 = type metadata accessor for TaskPriority();
      v38 = v42;
      (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v40 = v47;
      v39[4] = a1;
      v39[5] = v40;
      v39[6] = v5;

      sub_1003587D4(0, 0, v38, &unk_1004B2E30, v39);

      return 0;
    }

LABEL_9:
    (*(v22 + 32))(v25, v20, v21);
    WAParametersAgentInterface.Parameters.performanceMode.getter();
    v35 = v41;
    (*(v41 + 104))(v15, enum case for WAPerformanceMode.realtime(_:), v12);
    LODWORD(v46) = static WAPerformanceMode.== infix(_:_:)();
    v36 = *(v35 + 8);
    v36(v15, v12);
    v36(v17, v12);
    (*(v22 + 8))(v25, v21);
    if (v46)
    {
      v5[16] = 1;
    }

    goto LABEL_11;
  }

  Logger.init(subsystem:category:)();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v20 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v20 = 136315138;
    *(v20 + 4) = sub_100002320(*(a1 + 72), *(a1 + 80), &v48);
    _os_log_impl(&_mh_execute_header, v30, v31, "#### No Browse Entitlement for bundleId: %s", v20, 0xCu);
    sub_100002A00(v12);
  }

  (*(v43 + 8))(v9, v44);
  v32 = v45;
  v22 = v46;
  (*(v45 + 104))(v5, enum case for WAError.ErrorCode.entitlementMissing(_:), v46);
  v25 = v5;
  a1 = WAError.ErrorCode.rawValue.getter();
  v33 = *(v32 + 8);
  v21 = v32 + 8;
  result = v33(v5, v22);
  if (a1 >= 0xFFFFFFFF80000000)
  {
    if (a1 <= 0x7FFFFFFF)
    {
      return a1;
    }

    __break(1u);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C7FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = *a5;
  v8 = type metadata accessor for WAError.ErrorCode();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = *(v7 + 88);
  v6[12] = v11;
  v6[13] = *(v11 + 8);
  v6[14] = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v6[16] = v13;
  v14 = *(v13 + 64) + 15;
  v6[17] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v6[18] = v15;
  v16 = *(v15 - 8);
  v6[19] = v16;
  v17 = *(v16 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v18 = type metadata accessor for WAPairedDevice();
  v6[25] = v18;
  v19 = *(v18 - 8);
  v6[26] = v19;
  v20 = *(v19 + 64) + 15;
  v6[27] = swift_task_alloc();
  v21 = type metadata accessor for WABrowserAgentInterface.AgentToEndpoint();
  v6[28] = v21;
  v22 = *(v21 - 8);
  v6[29] = v22;
  v23 = *(v22 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v24 = type metadata accessor for UUID();
  v6[32] = v24;
  v25 = *(v24 - 8);
  v6[33] = v25;
  v6[34] = *(v25 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_1003C8328, 0, 0);
}

uint64_t sub_1003C8328()
{
  v61 = v0;
  v1 = v0[39];
  v2 = v0[24];
  v3 = v0[6];
  UUID.init()();
  v4 = swift_allocObject();
  v0[40] = v4;
  *(v4 + 16) = 0;
  Logger.init(subsystem:category:)();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  v10 = v0[18];
  v9 = v0[19];
  if (v7)
  {
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v60 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(*(v11 + 72), *(v11 + 80), &v60);
    _os_log_impl(&_mh_execute_header, v5, v6, "#### startBrowserSession: bundleId: %s", v12, 0xCu);
    sub_100002A00(v13);
  }

  v14 = *(v9 + 8);
  v14(v8, v10);
  v0[41] = v14;
  v15 = v0[6];
  static WABrowserAgentInterface.browseResultKey.getter();
  v16 = NWEndpoint.customMetadataForKey(key:)();
  v18 = v17;

  v0[42] = v16;
  v0[43] = v18;
  if (v18 >> 60 == 15)
  {
    v19 = v0[23];
    Logger.init(subsystem:category:)();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[39];
    v25 = v0[32];
    v24 = v0[33];
    v26 = v0[23];
    v28 = v0[18];
    v27 = v0[19];
    if (v22)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch WABrowseResult in resolve endpoint", v29, 2u);
    }

    v14(v26, v28);
    (*(v24 + 8))(v23, v25);

    v44 = v0[38];
    v43 = v0[39];
    v46 = v0[36];
    v45 = v0[37];
    v47 = v0[35];
    v49 = v0[30];
    v48 = v0[31];
    v50 = v0[27];
    v52 = v0[23];
    v51 = v0[24];
    v55 = v0[22];
    v56 = v0[21];
    v57 = v0[20];
    v58 = v0[17];
    v59 = v0[11];

    v53 = v0[1];

    return v53();
  }

  else
  {
    v30 = v0[30];
    static WABrowserAgentInterface.AgentToEndpoint.decode(from:)();
    v0[44] = 0;
    v31 = v0[27];
    v33 = v0[16];
    v32 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[13];
    v37 = v0[6];
    v38 = v0[7];
    (*(v0[29] + 32))(v0[31], v0[30], v0[28]);
    WABrowserAgentInterface.AgentToEndpoint.device.getter();
    v0[45] = swift_allocObject();
    v39 = *(v38 + 24);
    swift_unownedRetainStrong();
    (*(v33 + 16))(v32, v39 + *(*v39 + 112), v34);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v41 = (*(AssociatedConformanceWitness + 136))(v34, AssociatedConformanceWitness);
    v0[46] = v41;
    (*(v33 + 8))(v32, v34);
    v0[47] = *(v37 + 72);
    v0[48] = *(v37 + 80);
    v42 = *v41;
    v0[49] = *(v42 + 408);
    v0[50] = (v42 + 408) & 0xFFFFFFFFFFFFLL | 0xEB81000000000000;

    return _swift_task_switch(sub_1003C8A20, v41, 0);
  }
}

uint64_t sub_1003C8A20()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  *(v0 + 408) = (*(v0 + 392))(*(v0 + 376), *(v0 + 384), 1);
  *(v0 + 416) = v3;

  if (v3)
  {
    v4 = sub_1003C97F4;
  }

  else
  {
    v4 = sub_1003C8AC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1003C8AC0()
{
  v154 = v0;
  v1 = v0[45];
  v2 = v0[6];
  *(v1 + 16) = v0[51];
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  v5 = objc_allocWithZone(WiFiAwareSubscribeConfiguration);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithServiceName:v6];

  [v7 setAuthenticationType:0];
  v8 = *(v1 + 16);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v72 = *(v1 + 16);
    }

    v148 = v7;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_35:
    v73 = v0[22];
    v74 = v0[6];
    Logger.init(subsystem:category:)();

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v78 = v0[47];
      v77 = v0[48];
      v146 = v0[41];
      v79 = v0[22];
      v81 = v0[18];
      v80 = v0[19];
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v153[0] = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_100002320(v78, v77, v153);
      _os_log_impl(&_mh_execute_header, v75, v76, "#### BrowserClient:%s has no Paired Devices", v82, 0xCu);
      sub_100002A00(v83);

      v146(v79, v81);
    }

    else
    {
      v84 = v0[41];
      v85 = v0[22];
      v86 = v0[18];
      v87 = v0[19];

      v84(v85, v86);
    }

    if (*(v0[7] + 16))
    {
      v88 = v0[10];
      v89 = v0[11];
      v90 = v0[9];
      (*(v88 + 104))(v89, enum case for WAError.ErrorCode.deviceInvalid(_:), v90);

      v91 = WAError.ErrorCode.rawValue.getter();
      (*(v88 + 8))(v89, v90);
      if (v91 < 0xFFFFFFFF80000000)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (v91 > 0x7FFFFFFF)
      {
LABEL_58:
        __break(1u);
        return;
      }

      v93 = v0[42];
      v92 = v0[43];
      sub_1003F99E8(v0[6], v91);
      sub_100017554(v93, v92);
    }

    else
    {
      sub_100017554(v0[42], v0[43]);
    }

    goto LABEL_44;
  }

  v148 = v7;
  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_3:
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100476378(_swiftEmptyArrayStorage);
  }

  v9 = v0[45];
  sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
  sub_100388B0C();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v11 = v148;
  [v148 setAllowedDeviceIDs:isa];

  v12 = *(v9 + 16);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  if (v12 < 0)
  {
    v113 = *(v9 + 16);
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (v13)
  {
LABEL_6:
    if (v13 >= 1)
    {
      v14 = v12 & 0xC000000000000001;

      v15 = 0;
      v138 = v0;
      v139 = v12;
      while (1)
      {
        if (v14)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v0[27];
        v19 = [v16 deviceID];
        if (v19 == WAPairedDevice.id.getter())
        {
          v20 = [v148 allowedDeviceIDs];
          if (v20)
          {
            v21 = v20;
            v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            v153[0] = v22;
            [v17 deviceID];
            v23.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
            sub_10046F988(&v152, v23.super.super.isa);

            if (v153[0])
            {
              v24.super.isa = Set._bridgeToObjectiveC()().super.isa;
            }

            else
            {
              v24.super.isa = 0;
            }

            [v148 setAllowedDeviceIDs:v24.super.isa];

            v0 = v138;
            v12 = v139;
            goto LABEL_10;
          }

          [v148 setAllowedDeviceIDs:0];
        }

LABEL_10:
        if (v13 == ++v15)
        {

          v11 = v148;
          goto LABEL_21;
        }
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_21:
  v142 = v0[48];
  v144 = v0[47];
  v149 = v0[52];
  v25 = v0[39];
  v26 = v0[38];
  v133 = v26;
  v135 = v0[45];
  v27 = v0[33];
  v120 = v0[37];
  v122 = v0[34];
  v28 = v11;
  v29 = v0[32];
  v30 = v0[12];
  v118 = v0[14];
  v31 = v0[7];
  v127 = v0[8];
  v130 = v0[40];
  v32 = v0[6];
  v115 = v31;
  v116 = v32;
  v117 = v28;
  [v117 setDiscoveryMode:2];
  [v117 setTimeoutAfterSeconds:120];
  type metadata accessor for NANAgentHandler.SubscriberClient();
  v33 = *(v27 + 16);
  v33(v26, v25, v29);
  v124 = *(v32 + 64);
  v34 = swift_allocObject();
  swift_weakInit();
  v114 = v33;
  v33(v120, v25, v29);
  v35 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v118;
  *(v36 + 3) = v30;
  *(v36 + 4) = v34;
  *(v36 + 5) = v130;
  *(v36 + 6) = v127;
  *(v36 + 7) = v116;
  (*(v27 + 32))(&v36[v35], v120, v29);
  *&v36[(v122 + v35 + 7) & 0xFFFFFFFFFFFFFFF8] = v135;

  LOBYTE(v153[0]) = 0;
  v37 = sub_1003BDE24(v115, v133, v117, v144, v142, v124, sub_1003EA324, v36);
  if (!v149)
  {
    v150 = v37;
    v45 = v0[39];
    v46 = v0[36];
    v47 = v0[32];
    v48 = v0[21];

    Logger.init(subsystem:category:)();
    v114(v46, v45, v47);
    v49 = v117;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[41];
    v54 = v0[36];
    v55 = v0[32];
    v56 = v0[33];
    v131 = v0[19];
    v134 = v0[18];
    v136 = v0[21];
    v140 = v49;
    if (v52)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v153[0] = v125;
      *v57 = 138412546;
      *(v57 + 4) = v49;
      *v58 = v49;
      *(v57 + 12) = 2080;
      sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
      v128 = v53;
      v59 = v49;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v145 = *(v56 + 8);
      v145(v54, v55);
      v63 = sub_100002320(v60, v62, v153);

      *(v57 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v50, v51, "#### BrowserClient for :%@ ID: %s", v57, 0x16u);
      sub_100016290(v58, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v125);

      v128(v136, v134);
    }

    else
    {

      v145 = *(v56 + 8);
      v145(v54, v55);
      v53(v136, v134);
    }

    v119 = v0[42];
    v121 = v0[43];
    v64 = v0[39];
    v65 = v0[32];
    v66 = v0[29];
    v129 = v0[28];
    v132 = v0[31];
    v67 = v0[26];
    v123 = v0[25];
    v126 = v0[27];
    v68 = v0[14];
    v69 = v0[12];
    v70 = v0[7];
    v114(v0[35], v64, v65);
    v0[5] = v150;
    swift_beginAccess();
    type metadata accessor for NANAgentHandler.Client();
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
    type metadata accessor for Dictionary();
    v71 = v150;
    Dictionary.subscript.setter();
    swift_endAccess();
    sub_100017554(v119, v121);

    (*(v67 + 8))(v126, v123);
    (*(v66 + 8))(v132, v129);
    v145(v64, v65);

    goto LABEL_45;
  }

  v38 = v0[7];

  if (*(v38 + 16))
  {
    v39 = v0[10];
    v40 = v0[11];
    v41 = v0[9];
    (*(v39 + 104))(v40, enum case for WAError.ErrorCode.connectionFailed(_:), v41);

    v42 = WAError.ErrorCode.rawValue.getter();
    (*(v39 + 8))(v40, v41);
    if (v42 < 0xFFFFFFFF80000000)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v42 > 0x7FFFFFFF)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v44 = v0[42];
    v43 = v0[43];
    sub_1003F99E8(v0[6], v42);
    sub_100017554(v44, v43);
  }

  else
  {
    sub_100017554(v0[42], v0[43]);
  }

LABEL_44:
  v94 = v0[45];
  v96 = v0[39];
  v95 = v0[40];
  v97 = v0[32];
  v98 = v0[33];
  v99 = v0[31];
  v100 = v0[28];
  v101 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v101 + 8))(v99, v100);
  (*(v98 + 8))(v96, v97);

LABEL_45:

  v103 = v0[38];
  v102 = v0[39];
  v105 = v0[36];
  v104 = v0[37];
  v106 = v0[35];
  v108 = v0[30];
  v107 = v0[31];
  v109 = v0[27];
  v111 = v0[23];
  v110 = v0[24];
  v137 = v0[22];
  v141 = v0[21];
  v143 = v0[20];
  v147 = v0[17];
  v151 = v0[11];

  v112 = v0[1];

  v112();
}

uint64_t sub_1003C97F4()
{
  v1 = v0[39];
  v13 = v0[45];
  v14 = v0[40];
  v15 = v0[38];
  v16 = v0[37];
  v17 = v0[36];
  v18 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  v19 = v0[30];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[11];
  sub_100017554(v0[42], v0[43]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  swift_deallocUninitializedObject();

  v10 = v0[1];
  v11 = v0[52];

  return v10();
}

void sub_1003C99A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void *a6, unsigned __int8 *a7, uint64_t a8, NSObject *a9, uint64_t a10)
{
  v157 = a8;
  v164 = a7;
  v162 = a6;
  v159 = a5;
  v155 = type metadata accessor for DispatchWorkItemFlags();
  v154 = *(v155 - 1);
  v13 = *(v154 + 8);
  __chkstk_darwin();
  v152 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for DispatchQoS();
  v150 = *(v153 - 8);
  v15 = *(v150 + 64);
  __chkstk_darwin();
  v149 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for UUID();
  v169 = *(v166 - 8);
  v17 = *(v169 + 64);
  __chkstk_darwin();
  v151 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v136 - v18;
  __chkstk_darwin();
  v160 = &v136 - v19;
  __chkstk_darwin();
  v21 = &v136 - v20;
  __chkstk_darwin();
  v161 = &v136 - v22;
  __chkstk_darwin();
  v163 = &v136 - v23;
  __chkstk_darwin();
  v158 = &v136 - v24;
  __chkstk_darwin();
  v26 = &v136 - v25;
  __chkstk_darwin();
  v165 = &v136 - v27;
  v168 = type metadata accessor for Logger();
  v167 = *(v168 - 8);
  v28 = *(v167 + 64);
  __chkstk_darwin();
  v156 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v136 - v30;
  __chkstk_darwin();
  v32 = &v136 - v31;
  __chkstk_darwin();
  v34 = &v136 - v33;
  v35 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v37 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    sub_1003E8CDC(a2, v37, type metadata accessor for sessionStatus);
    v40 = type metadata accessor for WAError.ErrorCode();
    if ((*(*(v40 - 8) + 48))(v37, 1, v40) == 1)
    {
      if (a1)
      {
        swift_beginAccess();
        if (*(a4 + 16))
        {
          v41 = a1;
          Logger.init(subsystem:category:)();
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v42, v43, "Ignore result: Datapath inprogress", v44, 2u);
          }

          else
          {
          }

          (*(v167 + 8))(v34, v168);
        }

        else
        {
          swift_beginAccess();
          *(a4 + 16) = 1;
          v45 = a1;
          v46 = [v45 pairedUUID];
          if (v46)
          {
            v47 = v165;
            v48 = v46;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v139 = &qword_1004B4E88[7];
            Logger.init(subsystem:category:)();
            v49 = v169;
            v50 = v169 + 16;
            v143 = *(v169 + 16);
            v143(v26, v47, v166);
            v51 = v45;
            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.default.getter();
            v146 = v51;

            LODWORD(v145) = v53;
            v54 = os_log_type_enabled(v52, v53);
            v141 = v39;
            v142 = v50;
            if (v54)
            {
              v144 = v52;
              v55 = v49;
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v178 = v138;
              *v56 = 138412802;
              v58 = v146;
              v59 = [v146 publisherAddress];
              *(v56 + 4) = v59;
              v137 = v57;
              *v57 = v59;
              *(v56 + 12) = 2080;
              sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
              v60 = v166;
              v61 = dispatch thunk of CustomStringConvertible.description.getter();
              v63 = v62;
              v140 = *(v55 + 8);
              v140(v26, v60);
              v64 = sub_100002320(v61, v63, &v178);

              *(v56 + 14) = v64;
              *(v56 + 22) = 2080;
              v65 = [v58 pairedDeviceName];
              if (v65)
              {
                v66 = v65;
                v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v69 = v68;
              }

              else
              {
                v67 = 0;
                v69 = 0;
              }

              v39 = v141;
              aBlock = v67;
              v172 = v69;
              sub_10005DC58(&unk_100599FD0, &qword_100482530);
              v72 = String.init<A>(describing:)();
              v74 = sub_100002320(v72, v73, &v178);

              *(v56 + 24) = v74;
              v75 = v144;
              _os_log_impl(&_mh_execute_header, v144, v145, "#### paired peer: %@, UUID: %s, DeviceName: %s", v56, 0x20u);
              sub_100016290(v137, &qword_10058B780, &qword_100480AC0);

              swift_arrayDestroy();

              v71 = *(v167 + 8);
              v71(v32, v168);
              v70 = v166;
            }

            else
            {

              v70 = v166;
              v140 = *(v49 + 8);
              (v140)(v26);
              v71 = *(v167 + 8);
              v71(v32, v168);
            }

            v145 = a10;
            v144 = a9;
            v76 = v159;
            swift_beginAccess();
            v77 = v76[16];
            v78 = objc_allocWithZone(WiFiAwareDatapathConfiguration);
            LOBYTE(v135) = 1;
            v79 = [v78 initWithDiscoveryResult:v146 serviceType:v77 passphrase:0 pmk:0 pmkID:0 serviceSpecificInfo:0 internetSharingConfiguration:0 pairingMethod:2 pairingCachingEnabled:v135 pairSetupServiceSpecificInfo:0 connectionMode:1 pairingMetadata:0];
            v80 = v162;
            LOBYTE(v77) = sub_1003C6A1C(v162, v79);
            v159 = v79;

            v81 = v164;
            v82 = v143;
            if (v77)
            {
              swift_beginAccess();
              v83 = *(v39 + 56);
              type metadata accessor for NANAgentHandler.Client();
              sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

              Dictionary.subscript.getter();

              if (aBlock)
              {

                v84 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
                v85 = v158;
                v143(v158, v81, v70);
                v86 = v169;
                v87 = (*(v169 + 80) + 40) & ~*(v169 + 80);
                v88 = swift_allocObject();
                v89 = v145;
                *(v88 + 2) = v144;
                *(v88 + 3) = v89;
                *(v88 + 4) = v39;
                v90 = *(v86 + 32);
                v169 = v86 + 32;
                v90(&v88[v87], v85, v70);
                v175 = sub_1003EAB2C;
                v176 = v88;
                aBlock = _NSConcreteStackBlock;
                v172 = 1107296256;
                v173 = sub_10000C8B8;
                v174 = &unk_100579698;
                v91 = _Block_copy(&aBlock);
                v92 = v84;

                v93 = v149;
                static DispatchQoS.unspecified.getter();
                v170 = _swiftEmptyArrayStorage;
                sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
                sub_10005DC58(&unk_100595270, &unk_1004AEC80);
                sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
                v94 = v152;
                v95 = v155;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v91);

                (*(v154 + 1))(v94, v95);
                (*(v150 + 8))(v93, v153);

                sub_1003AF9F0(v80[9], v80[10], v80[6], v80[7], 0);

                v96 = v165;
                v97 = v166;
              }

              else
              {

                v96 = v165;
                v97 = v70;
              }

              v140(v96, v97);
            }

            else
            {
              v155 = v71;
              v98 = v163;
              UUID.init()();
              v154 = type metadata accessor for NANAgentHandler.DataSessionClient();
              v82(v161, v98, v70);
              v153 = swift_allocObject();
              swift_weakInit();
              v82(v21, v98, v70);
              v82(v160, v81, v70);
              v99 = *(v169 + 80);
              v100 = (v99 + 56) & ~v99;
              v101 = (v17 + v99 + v100) & ~v99;
              v102 = v169;
              v103 = swift_allocObject();
              v104 = v145;
              *(v103 + 2) = v144;
              *(v103 + 3) = v104;
              v105 = v157;
              *(v103 + 4) = v153;
              *(v103 + 5) = v105;
              *(v103 + 6) = v80;
              v106 = v80;
              v107 = v70;
              v108 = *(v102 + 32);
              v108(&v103[v100], v21, v107);
              v109 = &v103[v101];
              v110 = v141;
              v108(v109, v160, v107);
              swift_retain_n();
              v111 = v159;

              v112 = objc_allocWithZone(v154);
              v113 = sub_1003DD950(v106, v110, v161, v111, sub_1003EA3E4, v103);

              v114 = v107;
              v115 = v163;
              v116 = v143;
              v143(v158, v163, v114);
              v177 = v113;
              swift_beginAccess();
              type metadata accessor for NANAgentHandler.Client();
              sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
              type metadata accessor for Dictionary();
              v162 = v113;
              Dictionary.subscript.setter();
              swift_endAccess();
              v117 = v148;
              Logger.init(subsystem:category:)();
              v118 = v147;
              v116(v147, v164, v114);
              v119 = Logger.logObject.getter();
              v120 = static os_log_type_t.default.getter();
              v121 = os_log_type_enabled(v119, v120);
              v122 = v114;
              v123 = v115;
              v124 = v146;
              if (v121)
              {
                v125 = swift_slowAlloc();
                v126 = swift_slowAlloc();
                aBlock = v126;
                *v125 = 136315138;
                sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
                v127 = dispatch thunk of CustomStringConvertible.description.getter();
                v164 = v111;
                v129 = v128;
                v130 = v118;
                v131 = v140;
                v140(v130, v122);
                v132 = sub_100002320(v127, v129, &aBlock);

                *(v125 + 4) = v132;
                _os_log_impl(&_mh_execute_header, v119, v120, "#### DataPath for:%s success", v125, 0xCu);
                sub_100002A00(v126);

                (v155)(v148, v168);
                v131(v163, v122);
                v131(v165, v122);
              }

              else
              {

                v133 = v118;
                v134 = v140;
                v140(v133, v114);
                (v155)(v117, v168);
                v134(v123, v114);
                v134(v165, v114);
              }
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1003E8ED4(v37, type metadata accessor for sessionStatus);
    }
  }
}

uint64_t sub_1003CB0F8(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v208 = a8;
  v207 = a7;
  v189 = a6;
  v203 = a5;
  *&v188 = a4;
  v216 = a2;
  v202 = a1;
  v201 = type metadata accessor for DispatchWorkItemFlags();
  v200 = *(v201 - 8);
  v9 = *(v200 + 64);
  __chkstk_darwin();
  v198 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for DispatchQoS();
  v197 = *(v199 - 8);
  v11 = *(v197 + 64);
  __chkstk_darwin();
  v196 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64);
  __chkstk_darwin();
  v209 = &v182 - v14;
  v225 = type metadata accessor for ConnectedSession(0);
  v215 = *(v225 - 1);
  v15 = *(v215 + 64);
  __chkstk_darwin();
  v223 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v214 = &v182 - v17;
  v18 = *(*(sub_10005DC58(&unk_1005989C0, &unk_1004B28C0) - 8) + 64);
  __chkstk_darwin();
  v222 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = &v182 - v20;
  v21 = type metadata accessor for WAError.ErrorCode();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v211 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v182 - v25;
  __chkstk_darwin();
  v224 = &v182 - v27;
  __chkstk_darwin();
  v183 = &v182 - v28;
  v29 = *(*(sub_10005DC58(&qword_100597580, &qword_1004B1868) - 8) + 64);
  __chkstk_darwin();
  v186 = &v182 - v30;
  v226 = type metadata accessor for UUID();
  v218 = *(v226 - 8);
  v31 = *(v218 + 64);
  __chkstk_darwin();
  v220 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = v32;
  __chkstk_darwin();
  v219 = &v182 - v33;
  v194 = type metadata accessor for WASubscribableService();
  v193 = *(v194 - 8);
  v34 = v193[8];
  __chkstk_darwin();
  v192 = (&v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(*(sub_10005DC58(&qword_100594A30, &qword_1004B2E00) - 8) + 64);
  __chkstk_darwin();
  v184 = &v182 - v37;
  v187 = type metadata accessor for WAPairedDevice();
  v191 = *(v187 - 8);
  v38 = v191[8];
  __chkstk_darwin();
  v190 = &v182 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for Logger();
  v204 = *(v213 - 8);
  v40 = *(v204 + 64);
  __chkstk_darwin();
  v210 = &v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v182 - v42;
  __chkstk_darwin();
  v45 = &v182 - v44;
  __chkstk_darwin();
  v185 = &v182 - v46;
  __chkstk_darwin();
  v48 = &v182 - v47;
  v49 = *(*(sub_10005DC58(&unk_100599448, &unk_1004B2D90) - 8) + 64);
  __chkstk_darwin();
  v51 = &v182 - v50;
  v206 = type metadata accessor for ResolvedSession(0);
  v52 = *(v206 - 8);
  v53 = *(v52 + 64);
  __chkstk_darwin();
  v205 = &v182 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v57 = &v182 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v217 = result;
  if (!result)
  {
    return result;
  }

  sub_1003E8CDC(v216, v57, type metadata accessor for sessionStatus);
  v59 = (*(v22 + 48))(v57, 1, v21);
  v212 = v21;
  if (v59 == 1)
  {
    sub_100012400(v202, v51, &unk_100599448, &unk_1004B2D90);
    if ((*(v52 + 48))(v51, 1, v206) == 1)
    {

      return sub_100016290(v51, &unk_100599448, &unk_1004B2D90);
    }

    v71 = v205;
    sub_100046A08(v51, v205, type metadata accessor for ResolvedSession);
    v72 = v188;
    swift_beginAccess();
    v73 = *(v72 + 16);
    __chkstk_darwin();
    v181 = v71;

    v74 = sub_1002C8014(sub_1003EA584, (&v182 - 4), v73);

    if (v74)
    {
      v75 = v74;
      v76 = [v75 deviceID];
      v77 = [v75 name];
      v224 = v76;
      if (v77)
      {
        v78 = v77;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v133 = v184;
      v134 = [v75 pairingName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v135 = [v75 vendorName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v136 = [v75 modelName];
      v225 = v75;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)();
      v137 = type metadata accessor for WAPairedDevice.PairingInfo();
      (*(*(v137 - 8) + 56))(v133, 0, 1, v137);
      v138 = v190;
      WAPairedDevice.init(id:name:pairingInfo:)();
      v139 = *(v203 + 48);
      v140 = *(v203 + 56);

      v141 = v192;
      WASubscribableService.init(name:)();
      (*(v218 + 16))(v219, v189, v226);
      v142 = type metadata accessor for NWEndpoint();
      v143 = v186;
      v144 = v205;
      (*(*(v142 - 8) + 16))(v186, v205, v142);
      v145 = v206;
      v146 = *(v144 + *(v206 + 24));
      v147 = *(v144 + *(v206 + 20));
      v148 = type metadata accessor for ConnectedEndpoints(0);
      v149 = v148[7];
      v150 = v193;
      v151 = v141;
      v152 = v194;
      (v193[2])(v143 + v149, v151, v194);
      (v150[7])(v143 + v149, 0, 1, v152);
      v153 = v148[8];
      v154 = v191;
      v155 = v187;
      (v191[2])(v143 + v153, v138, v187);
      (v154[7])(v143 + v153, 0, 1, v155);
      v156 = *(v144 + *(v145 + 28));
      *(v143 + v148[5]) = v147;
      *(v143 + v148[6]) = v146;
      *(v143 + v148[9]) = v156;
      (*(*(v148 - 1) + 56))(v143, 0, 1, v148);
      v68 = v217;
      swift_beginAccess();
      v157 = v156;
      sub_100338B10(v143, v219);
      swift_endAccess();
      swift_beginAccess();
      v158 = v68[11];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v229 = v68[11];
      v68[11] = 0x8000000000000000;
      sub_1003E282C(0, v147, isUniquelyReferenced_nonNull_native);
      v68[11] = v229;
      swift_endAccess();
      v160 = nw_array_create();
      NWEndpoint.nw.getter();
      nw_array_append();
      v161 = *(v203 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve + 8);
      (*(v203 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve))(v160);
      v162 = v185;
      Logger.init(subsystem:category:)();
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 0;
        _os_log_impl(&_mh_execute_header, v163, v164, "#### Endpoint Resolved.", v165, 2u);
      }

      (*(v204 + 8))(v162, v213);
      v66 = v208;
      v67 = v207;
      if (v68[2])
      {
        v166 = v68[2];

        sub_1003FCA7C(v203);
      }

      sub_1003C6608();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (v193[1])(v192, v194);
      (v191[1])(v190, v155);
      sub_1003E8ED4(v205, type metadata accessor for ResolvedSession);
      goto LABEL_60;
    }

    Logger.init(subsystem:category:)();
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.default.getter();
    v124 = os_log_type_enabled(v122, v123);
    v125 = v217;
    if (v124)
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "#### DeviceID not match", v126, 2u);
    }

    (*(v204 + 8))(v48, v213);
    if (!v125[2])
    {
LABEL_50:

      return sub_1003E8ED4(v205, type metadata accessor for ResolvedSession);
    }

    v127 = v183;
    v128 = v212;
    (*(v22 + 104))(v183, enum case for WAError.ErrorCode.deviceInvalid(_:), v212);

    v129 = WAError.ErrorCode.rawValue.getter();
    result = (*(v22 + 8))(v127, v128);
    if (v129 >= 0xFFFFFFFF80000000)
    {
      if (v129 <= 0x7FFFFFFF)
      {
        sub_1003F99E8(v203, v129);

        goto LABEL_50;
      }

LABEL_71:
      __break(1u);
      return result;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v60 = v224;
  (*(v22 + 32))(v224, v57, v21);
  v61 = *(v22 + 16);
  v194 = v22 + 16;
  v193 = v61;
  (v61)(v26, v60, v21);
  v62 = (*(v22 + 88))(v26, v21);
  if (v62 == enum case for WAError.ErrorCode.connectionFailed(_:))
  {
    Logger.init(subsystem:category:)();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v208;
    v67 = v207;
    v68 = v217;
    if (v65)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "#### Connection failed", v69, 2u);
      v21 = v212;
    }

    (*(v204 + 8))(v45, v213);
    if (!v68[2])
    {
      goto LABEL_12;
    }

    v70 = v68[2];

    result = WAError.ErrorCode.rawValue.getter();
    if (result >= 0xFFFFFFFF80000000)
    {
      if (result <= 0x7FFFFFFF)
      {
        sub_1003F99E8(v203, result);

LABEL_12:
        (*(v22 + 8))(v224, v21);
LABEL_60:
        swift_beginAccess();
        v167 = v68[7];
        type metadata accessor for NANAgentHandler.Client();
        sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

        Dictionary.subscript.getter();

        if (aBlock[0])
        {

          v168 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
          v169 = v226;
          v170 = v67;
          v171 = v66;
          v172 = v218;
          v173 = v219;
          (*(v218 + 16))(v219, v170, v226);
          v174 = (*(v172 + 80) + 40) & ~*(v172 + 80);
          v175 = swift_allocObject();
          *(v175 + 2) = v171;
          *(v175 + 3) = a9;
          *(v175 + 4) = v68;
          (*(v172 + 32))(&v175[v174], v173, v169);
          aBlock[4] = sub_1003EA56C;
          aBlock[5] = v175;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10000C8B8;
          aBlock[3] = &unk_1005796E8;
          v176 = _Block_copy(aBlock);
          v177 = v168;

          v178 = v196;
          static DispatchQoS.unspecified.getter();
          v227 = _swiftEmptyArrayStorage;
          sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10005DC58(&unk_100595270, &unk_1004AEC80);
          sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
          v179 = v198;
          v180 = v201;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v176);

          (*(v200 + 8))(v179, v180);
          (*(v197 + 8))(v178, v199);
        }
      }

LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v66 = v208;
  v67 = v207;
  v68 = v217;
  if (v62 != enum case for WAError.ErrorCode.connectionIdleTimeout(_:) && v62 != enum case for WAError.ErrorCode.connectionTerminated(_:))
  {
    v79 = *(v22 + 8);
    v79(v224, v21);
    v79(v26, v21);
    goto LABEL_60;
  }

  v206 = sub_1003C68C4();
  if ((v206 & 0x100000000) == 0)
  {
    swift_beginAccess();
    v80 = v68[10];
    v81 = *(v80 + 64);
    v205 = v80 + 64;
    v82 = 1 << *(v80 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & v81;
    v189 = (v82 + 63) >> 6;
    v202 = v218 + 16;
    v216 = (v218 + 32);
    v203 = v218 + 8;
    v191 = &qword_1004B4E88[7];
    v192 = (v22 + 8);
    v190 = (v204 + 8);
    v204 = v80;

    v85 = 0;
    *&v86 = 134217984;
    v188 = v86;
    v87 = v223;
    v88 = v222;
    v89 = v221;
    v90 = v220;
    while (v84)
    {
      v91 = v85;
LABEL_34:
      v94 = __clz(__rbit64(v84));
      v84 &= v84 - 1;
      v95 = v94 | (v91 << 6);
      v96 = v204;
      v97 = v218;
      (*(v218 + 16))(v219, *(v204 + 48) + *(v218 + 72) * v95, v226);
      v98 = v214;
      sub_1003E8CDC(*(v96 + 56) + *(v215 + 72) * v95, v214, type metadata accessor for ConnectedSession);
      v99 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
      v100 = *(v99 + 48);
      v88 = v222;
      (*(v97 + 32))();
      sub_100046A08(v98, v88 + v100, type metadata accessor for ConnectedSession);
      (*(*(v99 - 8) + 56))(v88, 0, 1, v99);
      v21 = v212;
      v87 = v223;
      v89 = v221;
      v90 = v220;
LABEL_35:
      sub_10001CEA8(v88, v89, &unk_1005989C0, &unk_1004B28C0);
      v101 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
      if ((*(*(v101 - 8) + 48))(v89, 1, v101) == 1)
      {
        (*v192)(v224, v21);

        v66 = v208;
        v67 = v207;
        v68 = v217;
        goto LABEL_60;
      }

      v102 = *(v101 + 48);
      v103 = v226;
      (*v216)(v90, v89, v226);
      sub_100046A08(v89 + v102, v87, type metadata accessor for ConnectedSession);
      if (*(v87 + v225[5]) == v206)
      {
        v104 = v210;
        Logger.init(subsystem:category:)();
        v105 = v211;
        (v193)(v211, v224, v21);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = v188;
          v109 = WAError.ErrorCode.rawValue.getter();
          (*v192)(v105, v21);
          *(v108 + 4) = v109;
          _os_log_impl(&_mh_execute_header, v106, v107, "#### Connection Terminated error:%ld", v108, 0xCu);
          v87 = v223;
        }

        else
        {
          (*v192)(v105, v21);
        }

        (*v190)(v104, v213);
        v110 = *(v87 + v225[10]);
        v112 = *(v110 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
        v111 = *(v110 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);

        result = WAError.ErrorCode.rawValue.getter();
        if (result < -32768)
        {
          goto LABEL_66;
        }

        if (result >= 0x8000)
        {
          goto LABEL_67;
        }

        v112(0, 0, 0, 0, 0, 0, 0, 0, 0, result);

        v113 = *(v110 + 72);
        v114 = *(v110 + 80);
        v115 = v225[7];

        v116 = v21;
        v117 = v223;
        v118 = WASubscribableService.name.getter();
        sub_1003AF9F0(v113, v114, v118, v119, 2);

        v87 = v117;
        v21 = v116;
        v90 = v220;
        v88 = v222;

        swift_beginAccess();
        v120 = v209;
        sub_1003AD998(v90, type metadata accessor for ConnectedSession, type metadata accessor for ConnectedSession, sub_100469890, sub_10046D5AC, v209);
        sub_100016290(v120, &qword_100597578, &qword_1004B1860);
        swift_endAccess();
        v103 = v226;
        v89 = v221;
      }

      (*v203)(v90, v103);
      result = sub_1003E8ED4(v87, type metadata accessor for ConnectedSession);
    }

    if (v189 <= v85 + 1)
    {
      v92 = v85 + 1;
    }

    else
    {
      v92 = v189;
    }

    v93 = v92 - 1;
    while (1)
    {
      v91 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v91 >= v189)
      {
        v121 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        (*(*(v121 - 8) + 56))(v88, 1, 1, v121);
        v84 = 0;
        v85 = v93;
        goto LABEL_35;
      }

      v84 = *(v205 + 8 * v91);
      ++v85;
      if (v84)
      {
        v85 = v91;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  Logger.init(subsystem:category:)();
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    _os_log_impl(&_mh_execute_header, v130, v131, "#### Failure", v132, 2u);
  }

  (*(v204 + 8))(v43, v213);
  return (*(v22 + 8))(v224, v21);
}

void sub_1003CD060(void *a1, uint64_t a2)
{
  v56 = *a1;
  v57 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v45 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v15 = v4[2];
  v54 = v9;
  v16 = v9;
  v17 = v57;
  v15(v16, v57, v3);
  v15(v7, v17, v3);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v55 = a1;
  if (v20)
  {
    v48 = v19;
    v50 = v18;
    v51 = v4;
    v49 = v7;
    v52 = v11;
    v53 = v10;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60 = v47;
    *v21 = 138412546;
    swift_beginAccess();
    v22 = a1[7];
    v23 = *(v56 + 80);
    v24 = *(v56 + 88);
    type metadata accessor for NANAgentHandler.Client();
    sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

    v25 = v54;
    Dictionary.subscript.getter();

    v26 = v58;
    v45 = v14;
    if (v58)
    {
      v27 = v58;
    }

    else
    {
      v27 = 0;
    }

    v29 = v49;
    v30 = v51;
    *(v21 + 4) = v27;
    v31 = v46;
    *v46 = v26;
    v32 = v30[1];
    v32(v25, v3);
    *(v21 + 12) = 2080;
    sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v32(v29, v3);
    v36 = sub_100002320(v33, v35, &v60);

    *(v21 + 14) = v36;
    v37 = v50;
    _os_log_impl(&_mh_execute_header, v50, v48, "#### Terminating BrowserClient for :%@ ID: %s", v21, 0x16u);
    sub_100016290(v31, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v47);

    (*(v52 + 8))(v45, v53);
  }

  else
  {

    v28 = v4[1];
    v28(v7, v3);
    v28(v54, v3);
    (*(v11 + 8))(v14, v10);
  }

  v39 = v55;
  v38 = v56;
  swift_beginAccess();
  v40 = v39[7];
  v41 = *(v38 + 80);
  v42 = *(v38 + 88);
  type metadata accessor for NANAgentHandler.Client();
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

  Dictionary.subscript.getter();

  v44 = v58;
  if (v58)
  {
    (*((swift_isaMask & *v58) + 0x98))(v43);
  }

  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

uint64_t NANAgentHandler.startResolverSession(_:)(uint64_t a1)
{
  v296 = *v1;
  v3 = type metadata accessor for WAError.ErrorCode();
  v294 = *(v3 - 8);
  v4 = *(v294 + 8);
  __chkstk_darwin();
  v6 = &v255 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for WAPerformanceMode();
  v282 = *(v283 - 8);
  v7 = *(v282 + 64);
  __chkstk_darwin();
  v281 = &v255 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v280 = &v255 - v9;
  v10 = *(*(sub_10005DC58(&unk_1005989A8, &qword_1004B28B0) - 8) + 64);
  __chkstk_darwin();
  v287 = &v255 - v11;
  v289 = type metadata accessor for WAParametersAgentInterface.Parameters();
  v288 = *(v289 - 8);
  v12 = *(v288 + 64);
  __chkstk_darwin();
  v279 = &v255 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for UUID();
  v306 = *(v312 - 8);
  v14 = *(v306 + 64);
  __chkstk_darwin();
  v274 = &v255 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v271 = (&v255 - v16);
  __chkstk_darwin();
  v276 = &v255 - v17;
  __chkstk_darwin();
  v278 = &v255 - v18;
  __chkstk_darwin();
  v284 = &v255 - v19;
  __chkstk_darwin();
  v292 = &v255 - v20;
  __chkstk_darwin();
  v22 = &v255 - v21;
  v277 = v23;
  __chkstk_darwin();
  v305 = &v255 - v24;
  v25 = *(*(sub_10005DC58(&qword_100598978, &qword_1004B2878) - 8) + 64);
  __chkstk_darwin();
  v311 = &v255 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v310 = &v255 - v27;
  v300 = type metadata accessor for Logger();
  v299 = *(v300 - 8);
  v28 = v299[8];
  __chkstk_darwin();
  v30 = &v255 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v293 = &v255 - v31;
  __chkstk_darwin();
  v275 = &v255 - v32;
  __chkstk_darwin();
  v273 = &v255 - v33;
  __chkstk_darwin();
  v272 = &v255 - v34;
  __chkstk_darwin();
  v286 = &v255 - v35;
  __chkstk_darwin();
  v291 = &v255 - v36;
  __chkstk_darwin();
  v290 = &v255 - v37;
  __chkstk_darwin();
  v295 = &v255 - v38;
  __chkstk_darwin();
  v285 = &v255 - v39;
  __chkstk_darwin();
  v41 = &v255 - v40;
  __chkstk_darwin();
  v43 = &v255 - v42;
  v44 = OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_endpoint;
  static WABrowserAgentInterface.browseResultKey.getter();
  v297 = v44;
  v45 = NWEndpoint.customMetadataForKey(key:)();
  v47 = v46;

  if (v47 >> 60 == 15)
  {
    Logger.init(subsystem:category:)();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "ResolveHandler: Not WiFiAware Endpoint", v50, 2u);
    }

    (v299[1])(v30, v300);
    return 255;
  }

  v264 = v41;
  v269 = v47;
  Logger.init(subsystem:category:)();

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  v54 = os_log_type_enabled(v52, v53);
  v266 = v6;
  v309 = a1;
  v265 = v3;
  v270 = v45;
  v267 = &qword_1004B4E88[7];
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v313 = v56;
    v315 = v56;
    *v55 = 136315394;
    v308 = sub_1003F3454(v56);
    v6 = v57;
    v316 = 0;
    v317 = 0xE000000000000000;
    v58._countAndFlagsBits = 0x6E696F70646E6520;
    v58._object = 0xEA00000000003A74;
    String.append(_:)(v58);
    type metadata accessor for NWEndpoint();
    _print_unlocked<A, B>(_:_:)();
    v59 = v316;
    v60 = v317;
    v316 = v308;
    v317 = v6;

    v61._countAndFlagsBits = v59;
    v61._object = v60;
    String.append(_:)(v61);

    v62 = sub_100002320(v316, v317, &v315);

    *(v55 + 4) = v62;
    *(v55 + 12) = 2080;
    *(v55 + 14) = sub_100002320(*(a1 + 48), *(a1 + 56), &v315);
    _os_log_impl(&_mh_execute_header, v52, v53, "#### Started a resolver session:%s serviceName:%s", v55, 0x16u);
    swift_arrayDestroy();
  }

  v268 = v299[1];
  v268(v43, v300);
  v63 = v312;
  v64 = v298;
  swift_beginAccess();
  v65 = *(v64 + 32);
  v66 = v65 + 64;
  v67 = 1 << *(v65 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v65 + 64);
  v70 = ((v67 + 63) >> 6);
  v302 = (v306 + 16);
  v71 = (v306 + 32);
  v308 = (v306 + 8);
  v304 = v65;

  v72 = 0;
  v303 = v22;
  v301 = v71;
  v307 = v66;
  while (1)
  {
    if (v69)
    {
      v73 = v72;
      goto LABEL_22;
    }

    if (v70 <= v72 + 1)
    {
      v74 = (v72 + 1);
    }

    else
    {
      v74 = v70;
    }

    v75 = &v74[-1].isa + 7;
    do
    {
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v73 >= v70)
      {
        v96 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
        v84 = v311;
        (*(*(v96 - 8) + 56))(v311, 1, 1, v96);
        v69 = 0;
        v72 = v75;
        goto LABEL_23;
      }

      v69 = *(v66 + 8 * v73);
      ++v72;
    }

    while (!v69);
    v72 = v73;
LABEL_22:
    v76 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v77 = v76 | (v73 << 6);
    v78 = v304;
    v79 = v306;
    v80 = v305;
    (*(v306 + 16))(v305, v304[6].isa + *(v306 + 72) * v77, v63);
    v81 = *(v78[7].isa + v77);
    v6 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
    v82 = v63;
    v83 = *(v6 + 12);
    v84 = v311;
    v85 = v80;
    v71 = v301;
    (*(v79 + 32))(v311, v85, v82);
    *&v84[v83] = v81;
    (*(*(v6 - 1) + 56))(v84, 0, 1, v6);

    v22 = v303;
LABEL_23:
    v86 = v84;
    v87 = v310;
    sub_10001CEA8(v86, v310, &qword_100598978, &qword_1004B2878);
    v88 = sub_10005DC58(&unk_100598980, &qword_1004B2880);
    if ((*(*(v88 - 8) + 48))(v87, 1, v88) == 1)
    {

      v66 = v270;
LABEL_42:
      v51 = sub_1003C7948(v309);
      sub_100017554(v66, v269);
      return v51;
    }

    v89 = *(v87 + *(v88 + 48));
    v90 = *v71;
    v91 = v87;
    v63 = v312;
    (*v71)(v22, v91, v312);
    v313 = v89;
    v92 = *(v89 + 16);
    v66 = v307;
    if (*(v92 + 64) == *(v309 + 64))
    {
      v75 = *(v309 + 48);
      v6 = *(v309 + 56);
      if (*(v92 + 48) == v75 && *(v92 + 56) == v6)
      {
        v75 = *(v92 + 48);
        break;
      }

      v94 = *(v309 + 48);
      v95 = *(v309 + 56);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }
    }

    (*v308)(v22, v63);
  }

  v311 = v90;
  v97 = v298;
  swift_beginAccess();
  v98 = v22;
  v99 = *(v97 + 56);
  v100 = v296[10];
  v70 = v296[11];
  v101 = type metadata accessor for NANAgentHandler.Client();
  v102 = sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);

  v310 = v102;
  Dictionary.subscript.getter();

  v103 = v316;
  v66 = v270;
  if (!v316)
  {
    (*v308)(v98, v63);

    goto LABEL_42;
  }

  v263 = v100;
  type metadata accessor for NANAgentHandler.SubscriberClient();
  v104 = swift_dynamicCastClass();
  if (!v104)
  {

    (*v308)(v303, v63);
    goto LABEL_42;
  }

  v262 = v70;
  v261 = v101;
  v72 = v104;

  v69 = v103;
  static WABrowserAgentInterface.browseResultSignatureKey.getter();
  v307 = NWEndpoint.customMetadataForKey(key:)();
  v106 = v105;

  v296 = v69;
  if (v106 >> 60 == 15)
  {

    v107 = v291;
    Logger.init(subsystem:category:)();
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "No metadata found for the specified key", v110, 2u);
    }

LABEL_64:
    v268(v107, v300);
    (*v308)(v303, v312);
    v125 = v265;
    v126 = v294;
    v127 = v266;
LABEL_65:
    v128 = v293;

    Logger.init(subsystem:category:)();
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "#### Failed to find discovery result", v131, 2u);
    }

    v268(v128, v300);
    (*(v126 + 13))(v127, enum case for WAError.ErrorCode.deviceNoLongerAvailable(_:), v125);
    v51 = WAError.ErrorCode.rawValue.getter();

    sub_100017554(v66, v269);

    (*(v126 + 1))(v127, v125);
    if (v51 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v51 <= 0x7FFFFFFF)
    {
      return v51;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v297 = v106;
  v73 = v106 >> 62;
  if ((v106 >> 62) <= 1)
  {
    v112 = v264;
    if (!v73)
    {
      v113 = BYTE6(v297);
      goto LABEL_54;
    }

LABEL_52:
    LODWORD(v113) = HIDWORD(v307) - v307;
    if (__OFSUB__(HIDWORD(v307), v307))
    {
      goto LABEL_131;
    }

    v113 = v113;
    goto LABEL_54;
  }

LABEL_48:
  v112 = v264;
  if (v73 != 2)
  {
    goto LABEL_61;
  }

  v115 = *(v307 + 16);
  v114 = *(v307 + 24);
  v116 = __OFSUB__(v114, v115);
  v113 = v114 - v115;
  if (v116)
  {
    __break(1u);
    goto LABEL_52;
  }

LABEL_54:
  if (v113 != 8)
  {
LABEL_61:

    v107 = v290;
    Logger.init(subsystem:category:)();
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "Data size does not match expected size for Int", v124, 2u);
    }

    sub_100017554(v307, v297);
    goto LABEL_64;
  }

  v290 = v307;
  if (v73)
  {
    if (v73 == 2)
    {
      v117 = *(v307 + 16);
      v118 = __DataStorage._bytes.getter();
      if (!v118)
      {
        goto LABEL_139;
      }

      v119 = v118;
      v120 = __DataStorage._offset.getter();
      if (__OFSUB__(v117, v120))
      {
        goto LABEL_133;
      }

      v121 = (v117 - v120 + v119);
      __DataStorage._length.getter();
      v112 = v264;
      if (!v121)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v132 = v307;
      if (v307 > v307 >> 32)
      {
        goto LABEL_132;
      }

      v133 = __DataStorage._bytes.getter();
      if (!v133)
      {
        goto LABEL_141;
      }

      v134 = v133;
      v135 = __DataStorage._offset.getter();
      if (__OFSUB__(v132, v135))
      {
        goto LABEL_134;
      }

      v121 = (v132 - v135 + v134);
      result = __DataStorage._length.getter();
      v112 = v264;
      if (!v121)
      {
        goto LABEL_142;
      }
    }

    v290 = *v121;
  }

  Logger.init(subsystem:category:)();
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    *v138 = 134217984;
    *(v138 + 4) = v290;
    _os_log_impl(&_mh_execute_header, v136, v137, "#### Endpoint siganture %ld", v138, 0xCu);
    v112 = v264;
  }

  v264 = (v299 + 1);
  v268(v112, v300);
  v139 = qword_100598D20;
  swift_beginAccess();
  v140 = *(v72 + v139);

  v142 = 0;
  v144 = v140 + 64;
  v143 = *(v140 + 8);
  v291 = v140;
  v145 = 1 << v140[32];
  v146 = -1;
  if (v145 < 64)
  {
    v146 = ~(-1 << v145);
  }

  v147 = v146 & v143;
  v148 = (v145 + 63) >> 6;
  *&v141 = 136315394;
  v255 = v141;
  v149 = v312;
  v150 = v303;
  v259 = v148;
  v260 = v144;
  while (2)
  {
    if (!v147)
    {
      while (1)
      {
        v151 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          break;
        }

        if (v151 >= v148)
        {
          (*v308)(v150, v149);

          sub_100017554(v307, v297);

          v125 = v265;
          v126 = v294;
          v127 = v266;
          v66 = v270;
          goto LABEL_65;
        }

        v147 = v144[v151];
        ++v142;
        if (v147)
        {
          goto LABEL_87;
        }
      }

      __break(1u);
      goto LABEL_114;
    }

    v151 = v142;
LABEL_87:
    v152 = *(*(v291 + 7) + ((v151 << 9) | (8 * __clz(__rbit64(v147)))));
    v153 = [v152 serviceName];
    v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v156 = v155;

    if (v154 == v75 && v156 == v6)
    {
    }

    else
    {
      v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v158 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    v159 = [v152 signature];
    if (v290 != v159)
    {
LABEL_95:
      v147 &= v147 - 1;
      Logger.init(subsystem:category:)();
      v160 = v292;
      v150 = v303;
      v161 = v312;
      (*v302)(v292, v303, v312);
      v162 = v152;
      v137 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v137, v70))
      {
        v163 = swift_slowAlloc();
        v257 = v70;
        v164 = v160;
        v165 = v163;
        v258 = swift_slowAlloc();
        v314[0] = v258;
        *v165 = v255;
        sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
        v256 = v137;
        v166 = dispatch thunk of CustomStringConvertible.description.getter();
        v168 = v167;
        (*v308)(v164, v161);
        v169 = sub_100002320(v166, v168, v314);

        *(v165 + 4) = v169;
        *(v165 + 12) = 2048;
        v170 = [v162 signature];

        *(v165 + 14) = v170;
        v150 = v303;

        v70 = v256;
        _os_log_impl(&_mh_execute_header, v256, v257, "#### No result for %s  %ld", v165, 0x16u);
        v137 = v258;
        sub_100002A00(v258);
      }

      else
      {

        (*v308)(v160, v161);
      }

      v268(v295, v300);
      v142 = v151;
      v149 = v161;
      v144 = v260;
      v148 = v259;
      continue;
    }

    break;
  }

  v171 = v285;
  Logger.init(subsystem:category:)();
  v172 = v152;
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    *v175 = 138412290;
    *(v175 + 4) = v172;
    *v176 = v172;
    v177 = v172;
    _os_log_impl(&_mh_execute_header, v173, v174, "#### Discovered Result%@", v175, 0xCu);
    sub_100016290(v176, &qword_10058B780, &qword_100480AC0);
  }

  v268(v171, v300);
  v178 = v172;
  v299 = [v178 signature];

  sub_100017554(v307, v297);
  v179 = *v308;
  (*v308)(v303, v312);

  v180 = v286;
  Logger.init(subsystem:category:)();
  v144 = v178;
  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.default.getter();

  v183 = os_log_type_enabled(v181, v182);
  v6 = v294;
  if (v183)
  {
    v184 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *v184 = 138412290;
    *(v184 + 4) = v144;
    *v185 = v144;
    v186 = v144;
    _os_log_impl(&_mh_execute_header, v181, v182, "#### Connection to:%@", v184, 0xCu);
    sub_100016290(v185, &qword_10058B780, &qword_100480AC0);
  }

  v268(v180, v300);
  v187 = *(v309 + 40);
  v188 = v287;
  sub_1003ADDD0(v287);
  v189 = v288;
  v70 = v289;
  v190 = (*(v288 + 48))(v188, 1, v289);
  v307 = v179;
  if (v190 == 1)
  {
    sub_100016290(v188, &unk_1005989A8, &qword_1004B28B0);
    v191 = v262;
    goto LABEL_106;
  }

  v192 = v279;
  (*(v189 + 32))(v279, v188, v70);
  v193 = v144;
  v194 = v280;
  WAParametersAgentInterface.Parameters.performanceMode.getter();
  v195 = v282;
  v196 = v281;
  v197 = v283;
  (*(v282 + 104))(v281, enum case for WAPerformanceMode.realtime(_:), v283);
  v198 = static WAPerformanceMode.== infix(_:_:)();
  v199 = *(v195 + 8);
  v199(v196, v197);
  v200 = v194;
  v144 = v193;
  v6 = v294;
  v199(v200, v197);
  (*(v189 + 8))(v192, v70);
  v191 = v262;
  if (v198)
  {
    v201 = 1;
  }

  else
  {
LABEL_106:
    v201 = 0;
  }

  LOBYTE(v254) = 1;
  v150 = [objc_allocWithZone(WiFiAwareDatapathConfiguration) initWithDiscoveryResult:v144 serviceType:v201 passphrase:0 pmk:0 pmkID:0 serviceSpecificInfo:0 internetSharingConfiguration:0 pairingMethod:2 pairingCachingEnabled:v254 pairSetupServiceSpecificInfo:0 connectionMode:1 pairingMetadata:0];
  v202 = v309;
  v203 = sub_1003C6A1C(v309, v150);

  if (v203)
  {

    sub_100017554(v270, v269);
    return 255;
  }

  v204 = *(v202 + 72);
  v205 = *(v202 + 80);
  if (sub_1003B23A4(v204, v205))
  {
    v303 = v144;
    v206 = v284;
    UUID.init()();
    v297 = type metadata accessor for NANAgentHandler.DataSessionClient();
    v207 = v306;
    v208 = *(v306 + 16);
    v209 = v312;
    v208(v278, v206, v312);
    v210 = swift_allocObject();
    swift_weakInit();
    v211 = v276;
    v304 = v208;
    v208(v276, v206, v209);
    v212 = *(v207 + 80);
    v213 = v191;
    v214 = (v212 + 56) & ~v212;
    v215 = (v277 + v214 + 7) & 0xFFFFFFFFFFFFFFF8;
    v216 = swift_allocObject();
    v216[2] = v263;
    v216[3] = v213;
    v217 = v313;
    v216[4] = v210;
    v216[5] = v217;
    v216[6] = v299;
    (v311)(v216 + v214, v211, v209);
    *(v216 + v215) = v202;
    swift_retain_n();

    v218 = v150;
    v219 = v298;

    v220 = objc_allocWithZone(v297);
    v230 = sub_1003DD950(v202, v219, v278, v218, sub_1003E7DC0, v216);
    v311 = v218;

    v51 = v272;
    Logger.init(subsystem:category:)();
    v70 = v271;
    v150 = v284;
    v231 = v209;
    v232 = v304;
    (v304)(v271, v284, v209);
    v233 = Logger.logObject.getter();
    v234 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v233, v234))
    {
      v236 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v314[0] = v237;
      *v236 = 136315138;
      sub_10001ADA4(&qword_100597520, &type metadata accessor for UUID);
      v238 = dispatch thunk of CustomStringConvertible.description.getter();
      v240 = v239;
      v241 = v209;
      v242 = v307;
      (v307)(v70, v241);
      v243 = sub_100002320(v238, v240, v314);
      v244 = v242;
      v245 = v284;

      *(v236 + 4) = v243;
      _os_log_impl(&_mh_execute_header, v233, v234, "#### DataPath for:%s success", v236, 0xCu);
      sub_100002A00(v237);
      v246 = v304;

      v247 = v272;
LABEL_128:
      v268(v247, v300);
      (v246)(v305, v245, v231);
      v314[3] = v230;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v253 = v230;
      Dictionary.subscript.setter();
      swift_endAccess();

      sub_100017554(v270, v269);

      v244(v245, v231);
      return 0;
    }

LABEL_127:
    v245 = v150;
    v246 = v232;

    v244 = v307;
    (v307)(v70, v231);
    v247 = v51;
    goto LABEL_128;
  }

  v147 = v275;
  Logger.init(subsystem:category:)();

  v137 = Logger.logObject.getter();
  v221 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v137, v221))
  {
    v222 = v147;
    v223 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v314[0] = v70;
    *v223 = 136315138;
    *(v223 + 4) = sub_100002320(v204, v205, v314);
    _os_log_impl(&_mh_execute_header, v137, v221, "#### Client %s reached max allowed services", v223, 0xCu);
    sub_100002A00(v70);
    v224 = v298;

    v268(v222, v300);
    goto LABEL_115;
  }

LABEL_114:

  v268(v147, v300);
  v224 = v298;
LABEL_115:
  v225 = v265;
  v226 = *(v224 + 16);
  v227 = enum case for WAError.ErrorCode.noRadioResources(_:);
  if (!v226)
  {
    v228 = *(v6 + 13);
LABEL_122:
    v248 = v266;
    v228(v266, v227, v225);
    v51 = WAError.ErrorCode.rawValue.getter();

    sub_100017554(v270, v269);

    v250 = *(v6 + 1);
    v249 = v6 + 8;
    v250(v248, v225);
    if (v51 < 0xFFFFFFFF80000000)
    {
      goto LABEL_135;
    }

    if (v51 > 0x7FFFFFFF)
    {
      __break(1u);

      v231 = v307;
      (v307)(v144, v249);
      v268(v70, v300);
      v251 = v294;
      v232 = v266;
      v233 = v265;
      (*(v294 + 13))(v266, enum case for WAError.ErrorCode.connectionFailed(_:), v265);
      v51 = WAError.ErrorCode.rawValue.getter();

      sub_100017554(v270, v269);

      v252 = *(v251 + 1);
      v230 = v251 + 8;
      v252(v232, v233);
      v231(v228, v249);
      if (v51 < 0xFFFFFFFF80000000)
      {
        goto LABEL_137;
      }

      if (v51 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_127;
      }
    }

    return v51;
  }

  v228 = *(v6 + 13);
  v70 = v266;
  v228(v266, enum case for WAError.ErrorCode.noRadioResources(_:), v265);

  v229 = WAError.ErrorCode.rawValue.getter();
  (*(v6 + 1))(v70, v225);
  if (v229 < 0xFFFFFFFF80000000)
  {
    goto LABEL_136;
  }

  if (v229 <= 0x7FFFFFFF)
  {
    sub_1003F99E8(v309, v229);

    goto LABEL_122;
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __DataStorage._length.getter();
LABEL_140:
  __break(1u);
LABEL_141:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1003CFF84(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t, uint64_t, uint64_t), void *a6, uint64_t a7)
{
  v190 = a7;
  v187 = a6;
  v213 = a5;
  *&v185 = a4;
  v195 = a2;
  v188 = a1;
  v7 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64);
  __chkstk_darwin();
  v193 = &v179 - v8;
  v211 = type metadata accessor for ConnectedSession(0);
  v198 = *(v211 - 8);
  v9 = *(v198 + 64);
  __chkstk_darwin();
  v204 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v197 = &v179 - v11;
  v12 = *(*(sub_10005DC58(&unk_1005989C0, &unk_1004B28C0) - 8) + 64);
  __chkstk_darwin();
  v203 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v202 = &v179 - v14;
  v196 = type metadata accessor for Logger();
  v191 = *(v196 - 8);
  v15 = *(v191 + 64);
  __chkstk_darwin();
  v199 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v180 = &v179 - v17;
  __chkstk_darwin();
  v184 = &v179 - v18;
  __chkstk_darwin();
  v186 = &v179 - v19;
  v20 = *(*(sub_10005DC58(&qword_100597580, &qword_1004B1868) - 8) + 64);
  __chkstk_darwin();
  v182 = &v179 - v21;
  v207 = type metadata accessor for UUID();
  v200 = *(v207 - 8);
  v22 = *(v200 + 64);
  __chkstk_darwin();
  v206 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v179 - v24;
  v181 = type metadata accessor for BrowseEndpoints(0);
  v210 = *(v181 - 8);
  v25 = *(v210 + 64);
  __chkstk_darwin();
  v212 = &v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v209 = (&v179 - v27);
  v28 = *(*(sub_10005DC58(&qword_1005994A0, &qword_1004B2E08) - 8) + 64);
  __chkstk_darwin();
  v30 = (&v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v32 = (&v179 - v31);
  v33 = type metadata accessor for WAError.ErrorCode();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin();
  v194 = &v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v179 - v37;
  __chkstk_darwin();
  v208 = &v179 - v39;
  v40 = *(*(sub_10005DC58(&unk_100599448, &unk_1004B2D90) - 8) + 64);
  __chkstk_darwin();
  v42 = &v179 - v41;
  v192 = type metadata accessor for ResolvedSession(0);
  v43 = *(v192 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin();
  v183 = &v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v189 = &v179 - v46;
  v47 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v49 = &v179 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v51 = result;
    sub_1003E8CDC(v195, v49, type metadata accessor for sessionStatus);
    if ((*(v34 + 48))(v49, 1, v33) == 1)
    {
      sub_100012400(v188, v42, &unk_100599448, &unk_1004B2D90);
      if ((*(v43 + 48))(v42, 1, v192) == 1)
      {

        return sub_100016290(v42, &unk_100599448, &unk_1004B2D90);
      }

      v179 = v51;
      sub_100046A08(v42, v189, type metadata accessor for ResolvedSession);
      v61 = OBJC_IVAR____TtC12wifip2pdCore16WifiAwareBrowser_browseEndpoints;
      v62 = v185;
      swift_beginAccess();
      v63 = *(v62 + v61);
      v64 = v63 + 64;
      v65 = 1 << *(v63 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v67 = v66 & *(v63 + 64);
      v68 = (v65 + 63) >> 6;
      v211 = v63;

      v69 = 0;
      while (v67)
      {
        v70 = v69;
LABEL_25:
        v73 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
        v74 = v73 | (v70 << 6);
        v75 = *(*(v211 + 48) + 8 * v74);
        v76 = v209;
        sub_1003E8CDC(*(v211 + 56) + *(v210 + 72) * v74, v209, type metadata accessor for BrowseEndpoints);
        v77 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
        v78 = *(v77 + 48);
        *v30 = v75;
        sub_100046A08(v76, v30 + v78, type metadata accessor for BrowseEndpoints);
        (*(*(v77 - 8) + 56))(v30, 0, 1, v77);
        v72 = v70;
LABEL_26:
        sub_10001CEA8(v30, v32, &qword_1005994A0, &qword_1004B2E08);
        v79 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
        if ((*(*(v79 - 8) + 48))(v32, 1, v79) == 1)
        {

          (*(v200 + 16))(v201, v187, v207);
          v131 = type metadata accessor for NWEndpoint();
          v132 = v182;
          v133 = v189;
          (*(*(v131 - 8) + 16))(v182, v189, v131);
          v134 = v192;
          v135 = *(v133 + *(v192 + 20));
          v136 = *(v133 + *(v192 + 24));
          v137 = type metadata accessor for ConnectedEndpoints(0);
          v138 = v137[7];
          v139 = v190;
          v140 = *(v190 + 48);
          v141 = *(v190 + 56);

          WASubscribableService.init(name:)();
          v142 = type metadata accessor for WASubscribableService();
          (*(*(v142 - 8) + 56))(v132 + v138, 0, 1, v142);
          v143 = v137[8];
          v144 = type metadata accessor for WAPairedDevice();
          (*(*(v144 - 8) + 56))(v132 + v143, 1, 1, v144);
          v145 = *(v133 + *(v134 + 28));
          *(v132 + v137[5]) = v135;
          *(v132 + v137[6]) = v136;
          *(v132 + v137[9]) = v145;
          (*(*(v137 - 1) + 56))(v132, 0, 1, v137);
          v146 = v179;
          swift_beginAccess();
          v147 = v145;
          sub_100338B10(v132, v201);
          swift_endAccess();
LABEL_60:
          swift_beginAccess();
          v160 = *(v146 + 88);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v214 = *(v146 + 88);
          *(v146 + 88) = 0x8000000000000000;
          sub_1003E282C(0, v135, isUniquelyReferenced_nonNull_native);
          *(v146 + 88) = v214;
          swift_endAccess();
          v162 = nw_array_create();
          NWEndpoint.nw.getter();
          nw_array_append();
          v163 = *(v139 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve + 8);
          (*(v139 + OBJC_IVAR____TtC12wifip2pdCore17NANResolverClient_resolve))(v162);
          v164 = v186;
          Logger.init(subsystem:category:)();
          v165 = v183;
          sub_1003E8CDC(v133, v183, type metadata accessor for ResolvedSession);
          v166 = Logger.logObject.getter();
          v167 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v166, v167))
          {
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v215 = v169;
            *v168 = 136315138;
            v214 = NWEndpoint.nw.getter();
            sub_10005DC58(&qword_1005994B0, &qword_1004B2E20);
            v170 = Optional.debugDescription.getter();
            v172 = v171;
            sub_1003E8ED4(v165, type metadata accessor for ResolvedSession);
            swift_unknownObjectRelease();
            v173 = sub_100002320(v170, v172, &v215);
            v133 = v189;

            *(v168 + 4) = v173;
            _os_log_impl(&_mh_execute_header, v166, v167, "#### Endpoint Resolved. %s", v168, 0xCu);
            sub_100002A00(v169);
            v146 = v179;

            v139 = v190;

            (*(v191 + 8))(v186, v196);
          }

          else
          {

            sub_1003E8ED4(v165, type metadata accessor for ResolvedSession);
            (*(v191 + 8))(v164, v196);
          }

          if (*(v146 + 16))
          {
            v174 = *(v146 + 16);

            sub_1003FCA7C(v139);
          }

          sub_1003C6608();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return sub_1003E8ED4(v133, type metadata accessor for ResolvedSession);
        }

        v80 = *v32;
        v81 = v32 + *(v79 + 48);
        v82 = v212;
        sub_100046A08(v81, v212, type metadata accessor for BrowseEndpoints);
        if (v80 == v213)
        {
          v148 = v201;
          (*(v200 + 16))(v201, v187, v207);
          v149 = type metadata accessor for NWEndpoint();
          v150 = v182;
          v133 = v189;
          (*(*(v149 - 8) + 16))(v182, v189, v149);
          v151 = v192;
          v152 = v82;
          v135 = *(v133 + *(v192 + 20));
          v153 = *(v133 + *(v192 + 24));
          v154 = v181;
          v155 = *(v181 + 20);
          v156 = type metadata accessor for ConnectedEndpoints(0);
          sub_100012400(v152 + v155, v150 + v156[7], &qword_1005989E8, &qword_1004B28E8);
          sub_100012400(v152 + *(v154 + 24), v150 + v156[8], &qword_1005989F0, &qword_1004B28F0);
          v157 = *(v133 + *(v151 + 28));
          *(v150 + v156[5]) = v135;
          *(v150 + v156[6]) = v153;
          *(v150 + v156[9]) = v157;
          (*(*(v156 - 1) + 56))(v150, 0, 1, v156);
          v158 = v179;
          swift_beginAccess();
          v159 = v157;
          sub_100338B10(v150, v148);
          swift_endAccess();
          v146 = v158;

          sub_1003E8ED4(v152, type metadata accessor for BrowseEndpoints);
          v139 = v190;
          goto LABEL_60;
        }

        result = sub_1003E8ED4(v82, type metadata accessor for BrowseEndpoints);
        v69 = v72;
      }

      if (v68 <= v69 + 1)
      {
        v71 = v69 + 1;
      }

      else
      {
        v71 = v68;
      }

      v72 = v71 - 1;
      while (1)
      {
        v70 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v70 >= v68)
        {
          v83 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
          (*(*(v83 - 8) + 56))(v30, 1, 1, v83);
          v67 = 0;
          goto LABEL_26;
        }

        v67 = *(v64 + 8 * v70);
        ++v69;
        if (v67)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    v52 = v208;
    (*(v34 + 32))(v208, v49, v33);
    v53 = *(v34 + 16);
    v189 = v34 + 16;
    v188 = v53;
    v53(v38, v52, v33);
    v54 = (*(v34 + 88))(v38, v33);
    if (v54 == enum case for WAError.ErrorCode.connectionFailed(_:))
    {
      v55 = v184;
      Logger.init(subsystem:category:)();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "#### Connection failed", v58, 2u);
      }

      (*(v191 + 8))(v55, v196);
      v59 = v190;
      if (*(v51 + 16))
      {
        v60 = *(v51 + 16);

        result = WAError.ErrorCode.rawValue.getter();
        if (result < 0xFFFFFFFF80000000)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (result > 0x7FFFFFFF)
        {
LABEL_77:
          __break(1u);
          return result;
        }

        sub_1003F99E8(v59, result);
      }
    }

    else
    {
      if (v54 != enum case for WAError.ErrorCode.connectionIdleTimeout(_:) && v54 != enum case for WAError.ErrorCode.connectionTerminated(_:))
      {
        v84 = *(v34 + 8);
        v84(v208, v33);

        return (v84)(v38, v33);
      }

      v212 = sub_1003C68C4();
      if ((v212 & 0x100000000) == 0)
      {
        swift_beginAccess();
        v179 = v51;
        v85 = *(v51 + 80);
        v86 = *(v85 + 64);
        v210 = v85 + 64;
        v87 = 1 << *(v85 + 32);
        v88 = -1;
        if (v87 < 64)
        {
          v88 = ~(-1 << v87);
        }

        v89 = v88 & v86;
        v186 = ((v87 + 63) >> 6);
        v192 = v200 + 16;
        v213 = (v200 + 32);
        v209 = (v200 + 8);
        v187 = &qword_1004B4E88[7];
        v190 = v34 + 8;
        v191 += 8;
        v195 = v85;

        v90 = 0;
        *&v91 = 134217984;
        v185 = v91;
        v92 = v207;
        v205 = v33;
        v94 = v203;
        v93 = v204;
        v95 = v202;
        while (v89)
        {
          v96 = v90;
LABEL_48:
          v99 = __clz(__rbit64(v89));
          v89 &= v89 - 1;
          v100 = v99 | (v96 << 6);
          v101 = v195;
          v102 = v200;
          v103 = v201;
          v92 = v207;
          (*(v200 + 16))(v201, *(v195 + 48) + *(v200 + 72) * v100, v207);
          v104 = v197;
          sub_1003E8CDC(*(v101 + 56) + *(v198 + 72) * v100, v197, type metadata accessor for ConnectedSession);
          v105 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
          v106 = *(v105 + 48);
          v107 = *(v102 + 32);
          v108 = v203;
          v107(v203, v103, v92);
          v109 = &v108[v106];
          v94 = v108;
          sub_100046A08(v104, v109, type metadata accessor for ConnectedSession);
          (*(*(v105 - 8) + 56))(v108, 0, 1, v105);
          v93 = v204;
          v33 = v205;
          v95 = v202;
LABEL_49:
          sub_10001CEA8(v94, v95, &unk_1005989C0, &unk_1004B28C0);
          v110 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
          if ((*(*(v110 - 8) + 48))(v95, 1, v110) == 1)
          {
            (*v190)(v208, v33);
          }

          v111 = *(v110 + 48);
          v112 = v206;
          (*v213)(v206, v95, v92);
          sub_100046A08(v95 + v111, v93, type metadata accessor for ConnectedSession);
          if (*(v93 + *(v211 + 20)) == v212)
          {
            Logger.init(subsystem:category:)();
            v113 = v194;
            v114 = v205;
            v188(v194, v208, v205);
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v115, v116))
            {
              v117 = v113;
              v118 = swift_slowAlloc();
              *v118 = v185;
              v119 = WAError.ErrorCode.rawValue.getter();
              (*v190)(v117, v114);
              *(v118 + 4) = v119;
              _os_log_impl(&_mh_execute_header, v115, v116, "#### Connection Terminated error:%ld", v118, 0xCu);
            }

            else
            {
              (*v190)(v113, v114);
            }

            (*v191)(v199, v196);
            v120 = *(v93 + *(v211 + 40));
            v122 = *(v120 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
            v121 = *(v120 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);

            result = WAError.ErrorCode.rawValue.getter();
            if (result < -32768)
            {
              goto LABEL_74;
            }

            if (result >= 0x8000)
            {
              goto LABEL_75;
            }

            v122(0, 0, 0, 0, 0, 0, 0, 0, 0, result);

            v123 = *(v120 + 72);
            v124 = *(v120 + 80);
            v125 = *(v211 + 28);

            v126 = WASubscribableService.name.getter();
            sub_1003AF9F0(v123, v124, v126, v127, 2);

            swift_beginAccess();
            v128 = v193;
            v112 = v206;
            sub_1003AD998(v206, type metadata accessor for ConnectedSession, type metadata accessor for ConnectedSession, sub_100469890, sub_10046D5AC, v193);
            v129 = v128;
            v93 = v204;
            sub_100016290(v129, &qword_100597578, &qword_1004B1860);
            swift_endAccess();
            v92 = v207;
            v94 = v203;
            v95 = v202;
          }

          (*v209)(v112, v92);
          result = sub_1003E8ED4(v93, type metadata accessor for ConnectedSession);
          v33 = v205;
        }

        if (v186 <= v90 + 1)
        {
          v97 = (v90 + 1);
        }

        else
        {
          v97 = v186;
        }

        v98 = v97 - 1;
        while (1)
        {
          v96 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            break;
          }

          if (v96 >= v186)
          {
            v130 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
            (*(*(v130 - 8) + 56))(v94, 1, 1, v130);
            v89 = 0;
            v90 = v98;
            goto LABEL_49;
          }

          v89 = *(v210 + 8 * v96);
          ++v90;
          if (v89)
          {
            v90 = v96;
            goto LABEL_48;
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v175 = v180;
      Logger.init(subsystem:category:)();
      v176 = Logger.logObject.getter();
      v177 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&_mh_execute_header, v176, v177, "#### Failure", v178, 2u);
      }

      (*(v191 + 8))(v175, v196);
    }

    return (*(v34 + 8))(v208, v33);
  }

  return result;
}

uint64_t NANAgentHandler.stopResolverSession(_:)()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  return sub_1003E7E84();
}

uint64_t NANAgentHandler.startConnectionSession(_:remote:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v332 = a1;
  v302 = *v3;
  v5 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v306 = &v291 - v6;
  v310 = type metadata accessor for WAError.ErrorCode();
  v303 = *(v310 - 8);
  v7 = *(v303 + 64);
  __chkstk_darwin();
  v309 = &v291 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for ListenInBoundConnection(0);
  v334 = *(v316 - 8);
  v9 = *(v334 + 64);
  __chkstk_darwin();
  v352 = &v291 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v333 = &v291 - v11;
  v12 = *(*(sub_10005DC58(&qword_1005989B8, &qword_1004B28B8) - 8) + 64);
  __chkstk_darwin();
  v342 = &v291 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v341 = &v291 - v14;
  v297 = type metadata accessor for ConnectedSession(0);
  v322 = *(v297 - 8);
  v15 = *(v322 + 64);
  __chkstk_darwin();
  v347 = &v291 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v321 = &v291 - v17;
  v18 = *(*(sub_10005DC58(&unk_1005989C0, &unk_1004B28C0) - 8) + 64);
  __chkstk_darwin();
  v343 = &v291 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v344 = &v291 - v20;
  v21 = *(*(sub_10005DC58(&qword_100597580, &qword_1004B1868) - 8) + 64);
  __chkstk_darwin();
  v299 = &v291 - v22;
  v345 = type metadata accessor for NWEndpoint();
  v308 = *(v345 - 8);
  v23 = *(v308 + 64);
  __chkstk_darwin();
  v313 = &v291 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = sub_10005DC58(&qword_1005989D0, &qword_1004B28D0);
  v25 = *(*(v348 - 8) + 64);
  __chkstk_darwin();
  v330 = &v291 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v326 = &v291 - v27;
  v298 = type metadata accessor for ConnectedEndpoints(0);
  v324 = *(v298 - 8);
  v28 = *(v324 + 64);
  __chkstk_darwin();
  v351 = &v291 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v323 = &v291 - v30;
  v356 = type metadata accessor for UUID();
  v355 = *(v356 - 8);
  v31 = *(v355 + 64);
  __chkstk_darwin();
  v350 = &v291 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v354 = &v291 - v33;
  v34 = *(*(sub_10005DC58(&qword_1005989D8, &qword_1004B28D8) - 8) + 64);
  __chkstk_darwin();
  v346 = &v291 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v329 = &v291 - v36;
  v37 = type metadata accessor for Logger();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin();
  v291 = &v291 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v338 = &v291 - v41;
  __chkstk_darwin();
  v296 = &v291 - v42;
  __chkstk_darwin();
  v311 = (&v291 - v43);
  __chkstk_darwin();
  v339 = &v291 - v44;
  __chkstk_darwin();
  v46 = &v291 - v45;
  v300 = *(sub_10005DC58(&qword_1005989E0, &qword_1004B28E0) - 8);
  v47 = *(v300 + 64);
  __chkstk_darwin();
  v305 = &v291 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v312 = &v291 - v49;
  __chkstk_darwin();
  v337 = &v291 - v50;
  __chkstk_darwin();
  v325 = &v291 - v51;
  __chkstk_darwin();
  v340 = &v291 - v52;
  v301 = v53;
  __chkstk_darwin();
  v55 = &v291 - v54;
  sub_10005DC58(&qword_1005989E8, &qword_1004B28E8);
  v315 = swift_allocBox();
  v57 = v56;
  v58 = type metadata accessor for WASubscribableService();
  v307 = *(v58 - 8);
  v59 = *(v307 + 56);
  v320 = v57;
  v319 = v58;
  v318 = v307 + 56;
  v317 = v59;
  (v59)(v57, 1, 1);
  sub_10005DC58(&qword_1005989F0, &qword_1004B28F0);
  v314 = swift_allocBox();
  v61 = v60;
  v62 = type metadata accessor for WAPairedDevice();
  v292 = *(v62 - 8);
  v63 = *(v292 + 56);
  v304 = v61;
  v295 = v62;
  v294 = v292 + 56;
  v293 = v63;
  (v63)(v61, 1, 1);
  v336 = swift_allocObject();
  *(v336 + 16) = 0;
  v64 = swift_allocObject();
  v65 = [objc_opt_self() zeroAddress];
  v335 = v64;
  *(v64 + 16) = v65;
  nw_endpoint_copy_address_string(a2);
  v66 = String.init(cString:)();
  v68 = v67;
  swift_unknownObjectRetain();
  v353 = v55;
  NWEndpoint.init(_:)();
  v362 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  v71 = os_log_type_enabled(v69, v70);
  v363 = v66;
  v364 = v68;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v66;
    v75 = v73;
    v371 = v73;
    *v72 = 136315138;
    *(v72 + 4) = sub_100002320(v74, v68, &v371);
    _os_log_impl(&_mh_execute_header, v69, v70, "#### Start Connection Session to remote:%s", v72, 0xCu);
    sub_100002A00(v75);
  }

  v76 = *(v38 + 8);
  v359 = v38 + 8;
  v361 = v76;
  v76(v46, v37);
  v77 = *(v332 + 72);
  v78 = *(v332 + 80);
  v365 = sub_10005E2E4();
  v79 = 0;
  *&v80 = 138412546;
  v357 = v80;
  v331 = v3;
  v358 = v37;
  v328 = v77;
  v327 = v78;
  do
  {
    v81 = *(&off_100573110 + 2 * v79 + 4);
    v82 = *(&off_100573110 + 2 * v79 + 5);
    v371 = v77;
    v372 = v78;
    v369 = v81;
    v370 = v82;
    if (StringProtocol.contains<A>(_:)())
    {
      v349 = v79;
      v83 = v3[3];
      swift_unownedRetainStrong();
      sub_10040CAE8();

      v84 = sub_10033ABB0();

      v366 = v84;
      v86 = v339;
      v360 = *(v84 + 16);
      if (v360)
      {
        v87 = 0;
        v88 = (v366 + 34);
        while (1)
        {
          if (v87 >= *(v366 + 16))
          {
            goto LABEL_114;
          }

          v89 = (*v88 << 16) | (*(v88 - 1) << 8);
          v367 = *(v88 - 2);
          v90 = WiFiAddress.apiAddress.getter(v89 | v367);
          v368 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
          v92 = v91;

          Logger.init(subsystem:category:)();

          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v371 = v97;
            *v95 = v357;
            v98 = WiFiAddress.apiAddress.getter(v89 | v367);
            *(v95 + 4) = v98;
            *v96 = v98;
            *(v95 + 12) = 2080;
            v99 = v368;
            *(v95 + 14) = sub_100002320(v368, v92, &v371);
            _os_log_impl(&_mh_execute_header, v93, v94, "#### Current Datapath mac:%@ ipv6: %s", v95, 0x16u);
            sub_100016290(v96, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v97);

            v37 = v358;

            v361(v86, v37);
          }

          else
          {

            v361(v86, v37);
            v99 = v368;
          }

          v371 = v363;
          v372 = v364;
          v369 = v99;
          v370 = v92;
          if (StringProtocol.contains<A>(_:)())
          {
            break;
          }

          ++v87;

          v88 = (v88 + 6);
          if (v360 == v87)
          {
            goto LABEL_4;
          }
        }

        v100 = v99;

        v101 = v311;
        Logger.init(subsystem:category:)();
        v102 = v364;

        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = v92;
          v106 = swift_slowAlloc();
          v371 = swift_slowAlloc();
          *v106 = 136315394;
          v107 = sub_100002320(v363, v102, &v371);

          *(v106 + 4) = v107;
          *(v106 + 12) = 2080;
          v108 = sub_100002320(v100, v105, &v371);

          *(v106 + 14) = v108;
          _os_log_impl(&_mh_execute_header, v103, v104, "#### Found matching remote endpoint:%s ipv6: %s", v106, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v361(v101, v37);
        v110 = *(v332 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
        v109 = *(v332 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);
        v111 = *(v332 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);

        v112 = nw_interface_create_with_name();
        v113 = String.utf8CString.getter();
        v110(0, v111, 0, v112, v113 + 32, 0, 0, sub_1003D49A0, 0, 0);

        swift_unknownObjectRelease();
        sub_100016290(v353, &qword_1005989E0, &qword_1004B28E0);

LABEL_20:

        v114 = 0;
LABEL_21:

        return v114;
      }

LABEL_4:

      v3 = v331;
      v77 = v328;
      v78 = v327;
      v79 = v349;
    }

    ++v79;
  }

  while (v79 != 12);
  v115 = *(v332 + 64);
  v116._countAndFlagsBits = 0x6269726373627553;
  v117._countAndFlagsBits = 0xD00000000000001ELL;
  v117._object = 0x80000001004B8650;
  v116._object = 0xE900000000000065;
  if (Int32.checkEntitlement(for_:capabilities:)(v117, v116) || (v118._countAndFlagsBits = 0x6873696C627550, v119._countAndFlagsBits = 0xD00000000000001ELL, v119._object = 0x80000001004B8650, v118._object = 0xE700000000000000, Int32.checkEntitlement(for_:capabilities:)(v119, v118)))
  {
    swift_beginAccess();
    v120 = v3[8];
    v121 = v120 + 64;
    v122 = 1 << *(v120 + 32);
    v123 = -1;
    if (v122 < 64)
    {
      v123 = ~(-1 << v122);
    }

    v124 = v123 & *(v120 + 64);
    v291 = ((v122 + 63) >> 6);
    v365 = v355 + 16;
    v367 = v355 + 32;
    *&v357 = v308 + 16;
    v349 = (v308 + 56);
    v360 = v308 + 48;
    v311 = (v308 + 32);
    v328 = (v308 + 8);
    v366 = v355 + 8;
    v327 = v120;

    v125 = 0;
    v126 = v356;
    v127 = v345;
    v368 = v121;
    while (1)
    {
      v130 = v346;
      if (v124)
      {
        v131 = v125;
        goto LABEL_40;
      }

      if (v291 <= v125 + 1)
      {
        v132 = (v125 + 1);
      }

      else
      {
        v132 = v291;
      }

      v133 = v132 - 1;
      do
      {
        v131 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          goto LABEL_116;
        }

        if (v131 >= v291)
        {
          v162 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
          (*(*(v162 - 8) + 56))(v130, 1, 1, v162);
          v124 = 0;
          v125 = v133;
          goto LABEL_41;
        }

        v124 = *(v121 + 8 * v131);
        ++v125;
      }

      while (!v124);
      v125 = v131;
LABEL_40:
      v134 = __clz(__rbit64(v124));
      v124 &= v124 - 1;
      v135 = v134 | (v131 << 6);
      v136 = v327;
      v137 = v355;
      v138 = v354;
      (*(v355 + 16))(v354, *(v327 + 48) + *(v355 + 72) * v135, v126);
      v139 = v126;
      v140 = v323;
      sub_1003E8CDC(*(v136 + 56) + *(v324 + 72) * v135, v323, type metadata accessor for ConnectedEndpoints);
      v141 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
      v142 = *(v141 + 48);
      v143 = *(v137 + 32);
      v144 = v346;
      v143(v346, v138, v139);
      v145 = &v144[v142];
      v130 = v144;
      sub_100046A08(v140, v145, type metadata accessor for ConnectedEndpoints);
      (*(*(v141 - 8) + 56))(v144, 0, 1, v141);
      v127 = v345;
LABEL_41:
      v146 = v130;
      v147 = v329;
      sub_10001CEA8(v146, v329, &qword_1005989D8, &qword_1004B28D8);
      v148 = sub_10005DC58(&qword_1005989F8, &qword_1004B28F8);
      v149 = (*(*(v148 - 8) + 48))(v147, 1, v148);
      LODWORD(v339) = v149 != 1;
      v150 = v340;
      if (v149 == 1)
      {

        LODWORD(v346) = 0;
        v163 = v331;
        v126 = v356;
        goto LABEL_56;
      }

      v151 = *(v148 + 48);
      (*v367)(v350, v147, v356);
      v152 = v147 + v151;
      v153 = v351;
      sub_100046A08(v152, v351, type metadata accessor for ConnectedEndpoints);
      (*v357)(v150, v153, v127);
      (*v349)(v150, 0, 1, v127);
      v154 = *(v348 + 48);
      v155 = v326;
      sub_100012400(v150, v326, &qword_1005989E0, &qword_1004B28E0);
      sub_100012400(v353, v155 + v154, &qword_1005989E0, &qword_1004B28E0);
      v156 = *v360;
      if ((*v360)(v155, 1, v127) == 1)
      {
        break;
      }

      v157 = v325;
      sub_100012400(v155, v325, &qword_1005989E0, &qword_1004B28E0);
      if (v156(v155 + v154, 1, v127) == 1)
      {
        sub_100016290(v340, &qword_1005989E0, &qword_1004B28E0);
        (*v328)(v157, v127);
        v129 = v155;
        v121 = v368;
LABEL_28:
        sub_100016290(v129, &qword_1005989D0, &qword_1004B28D0);
        v126 = v356;
        goto LABEL_29;
      }

      v158 = v313;
      (*v311)(v313, v155 + v154, v127);
      sub_10001ADA4(&qword_100598A10, &type metadata accessor for NWEndpoint);
      v159 = dispatch thunk of static Equatable.== infix(_:_:)();
      v160 = *v328;
      v161 = v325;
      (*v328)(v158, v127);
      sub_100016290(v340, &qword_1005989E0, &qword_1004B28E0);
      v160(v161, v127);
      sub_100016290(v155, &qword_1005989E0, &qword_1004B28E0);
      v126 = v356;
      v121 = v368;
      if (v159)
      {
        goto LABEL_55;
      }

LABEL_29:
      sub_1003E8ED4(v351, type metadata accessor for ConnectedEndpoints);
      result = (*v366)(v350, v126);
    }

    sub_100016290(v150, &qword_1005989E0, &qword_1004B28E0);
    v128 = v156(v155 + v154, 1, v127) == 1;
    v129 = v155;
    v121 = v368;
    if (v128)
    {
      sub_100016290(v155, &qword_1005989E0, &qword_1004B28E0);
      v126 = v356;
LABEL_55:
      v172 = v298;
      v173 = v351;
      LODWORD(v346) = *(v351 + *(v298 + 20));
      sub_10036D434(v351 + *(v298 + 28), v320, &qword_1005989E8, &qword_1004B28E8);
      sub_10036D434(v173 + v172[8], v304, &qword_1005989F0, &qword_1004B28F0);
      *(v336 + 16) = *(v173 + v172[6]);
      v163 = v331;
      swift_beginAccess();
      v174 = v299;
      v175 = v350;
      sub_1003AD998(v350, type metadata accessor for ConnectedEndpoints, type metadata accessor for ConnectedEndpoints, sub_100469D74, sub_10046DDAC, v299);
      sub_100016290(v174, &qword_100597580, &qword_1004B1868);
      swift_endAccess();

      (*v366)(v175, v126);
      v176 = *(v173 + v172[9]);
      sub_1003E8ED4(v173, type metadata accessor for ConnectedEndpoints);
      v177 = *(v335 + 16);
      *(v335 + 16) = v176;

LABEL_56:
      swift_beginAccess();
      v178 = v163[10];
      v179 = *(v178 + 64);
      v368 = v178 + 64;
      v180 = 1 << *(v178 + 32);
      v181 = -1;
      if (v180 < 64)
      {
        v181 = ~(-1 << v180);
      }

      v182 = v181 & v179;
      v340 = (v180 + 63) >> 6;
      v351 = v178;

      v183 = 0;
      v184 = v344;
      v185 = v330;
      v186 = v360;
      v187 = v343;
      while (2)
      {
        if (!v182)
        {
          if (v340 <= v183 + 1)
          {
            v190 = v183 + 1;
          }

          else
          {
            v190 = v340;
          }

          v191 = v190 - 1;
          while (1)
          {
            v189 = v183 + 1;
            if (__OFADD__(v183, 1))
            {
              goto LABEL_117;
            }

            if (v189 >= v340)
            {
              v215 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
              (*(*(v215 - 8) + 56))(v187, 1, 1, v215);
              v182 = 0;
              v183 = v191;
              goto LABEL_73;
            }

            v182 = *(v368 + 8 * v189);
            ++v183;
            if (v182)
            {
              v183 = v189;
              goto LABEL_72;
            }
          }
        }

        v189 = v183;
LABEL_72:
        v192 = __clz(__rbit64(v182));
        v182 &= v182 - 1;
        v193 = v192 | (v189 << 6);
        v194 = v351;
        v195 = v355;
        v196 = v354;
        (*(v355 + 16))(v354, *(v351 + 48) + *(v355 + 72) * v193, v126);
        v197 = v321;
        sub_1003E8CDC(*(v194 + 56) + *(v322 + 72) * v193, v321, type metadata accessor for ConnectedSession);
        v198 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        v199 = *(v198 + 48);
        v200 = *(v195 + 32);
        v201 = v343;
        v200(v343, v196, v126);
        v202 = &v201[v199];
        v187 = v201;
        sub_100046A08(v197, v202, type metadata accessor for ConnectedSession);
        (*(*(v198 - 8) + 56))(v201, 0, 1, v198);
        v184 = v344;
        v185 = v330;
        v186 = v360;
LABEL_73:
        sub_10001CEA8(v187, v184, &unk_1005989C0, &unk_1004B28C0);
        v203 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
        if ((*(*(v203 - 8) + 48))(v184, 1, v203) == 1)
        {

          LODWORD(v357) = 0;
          v216 = v331;
          v217 = v307;
          v126 = v356;
          goto LABEL_85;
        }

        v204 = v184 + *(v203 + 48);
        v205 = v347;
        sub_100046A08(v204, v347, type metadata accessor for ConnectedSession);
        v206 = v337;
        v207 = v345;
        (*v357)(v337, v205, v345);
        (*v349)(v206, 0, 1, v207);
        v208 = *(v348 + 48);
        sub_100012400(v206, v185, &qword_1005989E0, &qword_1004B28E0);
        sub_100012400(v353, v185 + v208, &qword_1005989E0, &qword_1004B28E0);
        v209 = *v186;
        if ((*v186)(v185, 1, v207) == 1)
        {
          sub_100016290(v206, &qword_1005989E0, &qword_1004B28E0);
          v188 = v209(v185 + v208, 1, v207);
          v187 = v343;
          v184 = v344;
          v126 = v356;
          if (v188 == 1)
          {
            sub_100016290(v185, &qword_1005989E0, &qword_1004B28E0);
LABEL_82:
            v218 = v297;
            v219 = v347;
            LODWORD(v346) = *(v347 + *(v297 + 20));
            v220 = v320;
            sub_100016290(v320, &qword_1005989E8, &qword_1004B28E8);
            v217 = v307;
            v221 = v319;
            (*(v307 + 16))(v220, v219 + v218[7], v319);
            v317(v220, 0, 1, v221);
            v222 = v304;
            sub_100016290(v304, &qword_1005989F0, &qword_1004B28F0);
            v223 = v295;
            (*(v292 + 16))(v222, v219 + v218[8], v295);
            v293(v222, 0, 1, v223);
            *(v336 + 16) = *(v219 + v218[6]);
            v224 = v296;
            Logger.init(subsystem:category:)();
            v225 = Logger.logObject.getter();
            v226 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v225, v226))
            {
              v227 = swift_slowAlloc();
              *v227 = 0;
              _os_log_impl(&_mh_execute_header, v225, v226, "#### Connection Ready", v227, 2u);
            }

            v361(v224, v358);
            v228 = v347;
            LODWORD(v357) = *(v347 + v218[9]);
            v229 = *(v347 + v218[12]);
            sub_1003E8ED4(v228, type metadata accessor for ConnectedSession);
            v230 = *(v335 + 16);
            *(v335 + 16) = v229;

            (*v366)(v344, v126);
            LODWORD(v339) = 1;
            v216 = v331;
LABEL_85:
            swift_beginAccess();
            v231 = v216[9];
            v232 = *(v231 + 64);
            v368 = v231 + 64;
            v233 = 1 << *(v231 + 32);
            v234 = -1;
            if (v233 < 64)
            {
              v234 = ~(-1 << v233);
            }

            v235 = v234 & v232;
            v350 = (v233 + 63) >> 6;
            v351 = v217 + 16;
            v360 = v231;

            v236 = 0;
            while (1)
            {
              if (!v235)
              {
                if (v350 <= v236 + 1)
                {
                  v239 = v236 + 1;
                }

                else
                {
                  v239 = v350;
                }

                v240 = v239 - 1;
                while (1)
                {
                  v238 = v236 + 1;
                  if (__OFADD__(v236, 1))
                  {
                    goto LABEL_115;
                  }

                  if (v238 >= v350)
                  {
                    v268 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
                    v250 = v342;
                    (*(*(v268 - 8) + 56))(v342, 1, 1, v268);
                    v235 = 0;
                    v236 = v240;
                    goto LABEL_101;
                  }

                  v235 = *(v368 + 8 * v238);
                  ++v236;
                  if (v235)
                  {
                    v236 = v238;
                    goto LABEL_100;
                  }
                }
              }

              v238 = v236;
LABEL_100:
              v241 = __clz(__rbit64(v235));
              v235 &= v235 - 1;
              v242 = v241 | (v238 << 6);
              v243 = v360;
              v244 = v355;
              v245 = v354;
              (*(v355 + 16))(v354, *(v360 + 48) + *(v355 + 72) * v242, v126);
              v246 = v333;
              sub_1003E8CDC(*(v243 + 56) + *(v334 + 72) * v242, v333, type metadata accessor for ListenInBoundConnection);
              v247 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
              v248 = *(v247 + 48);
              v249 = v126;
              v250 = v342;
              (*(v244 + 32))(v342, v245, v249);
              sub_100046A08(v246, &v250[v248], type metadata accessor for ListenInBoundConnection);
              (*(*(v247 - 8) + 56))(v250, 0, 1, v247);
LABEL_101:
              v251 = v250;
              v252 = v341;
              sub_10001CEA8(v251, v341, &qword_1005989B8, &qword_1004B28B8);
              v253 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
              if ((*(*(v253 - 8) + 48))(v252, 1, v253) == 1)
              {
                break;
              }

              v254 = v352;
              sub_100046A08(v252 + *(v253 + 48), v352, type metadata accessor for ListenInBoundConnection);
              v255 = *v254;
              v256._countAndFlagsBits = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
              v257 = String.hasPrefix(_:)(v256);

              if (v257)
              {
                Logger.init(subsystem:category:)();
                v258 = Logger.logObject.getter();
                v259 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v258, v259))
                {
                  v260 = swift_slowAlloc();
                  *v260 = 0;
                  _os_log_impl(&_mh_execute_header, v258, v259, "#### Found InBoundConnection", v260, 2u);
                }

                v361(v338, v358);
                v261 = v352;
                LODWORD(v346) = *(v352 + 8);
                v262 = v316;
                *(v336 + 16) = *(v352 + *(v316 + 28));
                v263 = v320;
                sub_100016290(v320, &qword_1005989E8, &qword_1004B28E8);
                v264 = v261 + *(v262 + 24);
                v265 = v319;
                (*v351)(v263, v264, v319);
                LODWORD(v357) = 1;
                v317(v263, 0, 1, v265);
                v266 = v255;
                sub_1003E8ED4(v261, type metadata accessor for ListenInBoundConnection);
                v267 = *(v335 + 16);
                *(v335 + 16) = v266;

                LODWORD(v339) = 1;
              }

              else
              {
                sub_1003E8ED4(v254, type metadata accessor for ListenInBoundConnection);
              }

              v237 = v252;
              v126 = v356;
              result = (*v366)(v237, v356);
            }

            if (v339)
            {
              v269 = type metadata accessor for TaskPriority();
              (*(*(v269 - 8) + 56))(v306, 1, 1, v269);
              sub_100012400(v353, v305, &qword_1005989E0, &qword_1004B28E0);
              v270 = (*(v300 + 80) + 88) & ~*(v300 + 80);
              v271 = v270 + v301;
              v272 = (v270 + v301 + 9) & 0xFFFFFFFFFFFFFFF8;
              v273 = swift_allocObject();
              v273[2] = 0;
              v273[3] = 0;
              v274 = v302;
              v273[4] = *(v302 + 80);
              v275 = v314;
              v273[5] = *(v274 + 88);
              v273[6] = v275;
              v276 = v332;
              v273[7] = v331;
              v273[8] = v276;
              v277 = v315;
              v273[9] = v336;
              v273[10] = v277;
              sub_10001CEA8(v305, v273 + v270, &qword_1005989E0, &qword_1004B28E0);
              v278 = v273 + v271;
              *v278 = v346;
              v278[1] = v357 & 1;
              v279 = (v273 + v272);
              v280 = v364;
              *v279 = v363;
              v279[1] = v280;
              *(v273 + ((v272 + 23) & 0xFFFFFFFFFFFFFFF8)) = v335;

              sub_1003ACB3C(0, 0, v306, &unk_1004B2918, v273);

              sub_100016290(v353, &qword_1005989E0, &qword_1004B28E0);
              goto LABEL_20;
            }

            v282 = *(v332 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
            v281 = *(v332 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);
            v283 = v303;
            v284 = *(v303 + 104);
            v285 = v309;
            v286 = v310;
            v284(v309, enum case for WAError.ErrorCode.connectionTerminated(_:), v310);

            v287 = WAError.ErrorCode.rawValue.getter();
            v288 = *(v283 + 8);
            result = v288(v285, v286);
            if (v287 < -32768)
            {
              goto LABEL_118;
            }

            if (v287 >= 0x8000)
            {
              goto LABEL_119;
            }

            v282(0, 0, 0, 0, 0, 0, 0, 0, 0, v287);

            v289 = v309;
            v290 = v310;
            v284(v309, enum case for WAError.ErrorCode.connectionFailed(_:), v310);
            v114 = WAError.ErrorCode.rawValue.getter();
            v288(v289, v290);
            sub_100016290(v353, &qword_1005989E0, &qword_1004B28E0);

            if (v114 < 0xFFFFFFFF80000000)
            {
              goto LABEL_120;
            }

            if (v114 <= 0x7FFFFFFF)
            {
              goto LABEL_21;
            }

            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

LABEL_60:
          sub_100016290(v185, &qword_1005989D0, &qword_1004B28D0);
        }

        else
        {
          v210 = v312;
          sub_100012400(v185, v312, &qword_1005989E0, &qword_1004B28E0);
          if (v209(v185 + v208, 1, v207) == 1)
          {
            sub_100016290(v337, &qword_1005989E0, &qword_1004B28E0);
            (*v328)(v210, v207);
            v126 = v356;
            v186 = v360;
            v187 = v343;
            v184 = v344;
            goto LABEL_60;
          }

          v211 = v185 + v208;
          v212 = v313;
          (*v311)(v313, v211, v207);
          sub_10001ADA4(&qword_100598A10, &type metadata accessor for NWEndpoint);
          LODWORD(v350) = dispatch thunk of static Equatable.== infix(_:_:)();
          v213 = *v328;
          v214 = v212;
          v185 = v330;
          (*v328)(v214, v207);
          sub_100016290(v337, &qword_1005989E0, &qword_1004B28E0);
          v213(v210, v207);
          sub_100016290(v185, &qword_1005989E0, &qword_1004B28E0);
          v126 = v356;
          v186 = v360;
          v187 = v343;
          v184 = v344;
          if (v350)
          {
            goto LABEL_82;
          }
        }

        sub_1003E8ED4(v347, type metadata accessor for ConnectedSession);
        result = (*v366)(v184, v126);
        continue;
      }
    }

    goto LABEL_28;
  }

  v164 = v291;
  Logger.init(subsystem:category:)();

  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v371 = v168;
    *v167 = 136315138;
    *(v167 + 4) = sub_100002320(v77, v78, &v371);
    _os_log_impl(&_mh_execute_header, v165, v166, "#### No Entitlement for bundleId: %s", v167, 0xCu);
    sub_100002A00(v168);
  }

  v361(v164, v37);
  v169 = v303;
  v170 = v309;
  v171 = v310;
  (*(v303 + 104))(v309, enum case for WAError.ErrorCode.entitlementMissing(_:), v310);
  v114 = WAError.ErrorCode.rawValue.getter();
  (*(v169 + 8))(v170, v171);
  sub_100016290(v353, &qword_1005989E0, &qword_1004B28E0);

  if (v114 < 0xFFFFFFFF80000000)
  {
    goto LABEL_121;
  }

  if (v114 <= 0x7FFFFFFF)
  {
    goto LABEL_21;
  }

LABEL_122:
  __break(1u);
  return result;
}

uint64_t sub_1003D49A0(char a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v26 - v12;
  sub_1003AE20C(a2, &v26 - v12);
  sub_100012400(v13, v11, &qword_10058F4D0, &qword_100491AB0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_100016290(v11, &qword_10058F4D0, &qword_100491AB0);
    v16 = 0xE100000000000000;
    v17 = 45;
  }

  else
  {
    v17 = UUID.uuidString.getter();
    v16 = v18;
    (*(v15 + 8))(v11, v14);
  }

  Logger.init(subsystem:category:)();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v4;
    v27 = v22;
    v23 = v22;
    *v21 = 67109378;
    *(v21 + 4) = a1 & 1;
    *(v21 + 8) = 2080;
    v24 = sub_100002320(v17, v16, &v27);

    *(v21 + 10) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "#### ASSIGNED FLOW status(%{BOOL}d) flow ID: %s", v21, 0x12u);
    sub_100002A00(v23);

    (*(v5 + 8))(v8, v26);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return sub_100016290(v13, &qword_10058F4D0, &qword_100491AB0);
}

uint64_t sub_1003D4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 344) = v41;
  *(v7 + 352) = v42;
  *(v7 + 328) = v38;
  *(v7 + 336) = v40;
  *(v7 + 792) = v39;
  *(v7 + 312) = a6;
  *(v7 + 320) = a7;
  *(v7 + 304) = a5;
  v8 = *a5;
  v9 = type metadata accessor for WAPathAgentInterface.AgentToPath();
  *(v7 + 360) = v9;
  v10 = *(v9 - 8);
  *(v7 + 368) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  v12 = *(*(sub_10005DC58(&unk_100599490, &qword_1004B2DF8) - 8) + 64) + 15;
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  v13 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64) + 15;
  *(v7 + 400) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v7 + 408) = v14;
  v15 = *(v14 - 8);
  *(v7 + 416) = v15;
  *(v7 + 424) = *(v15 + 64);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  v16 = type metadata accessor for WAPairedDevice();
  *(v7 + 448) = v16;
  v17 = *(v16 - 8);
  *(v7 + 456) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  v19 = type metadata accessor for WASubscribableService();
  *(v7 + 480) = v19;
  v20 = *(v19 - 8);
  *(v7 + 488) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 496) = swift_task_alloc();
  v22 = *(*(sub_10005DC58(&qword_1005989E0, &qword_1004B28E0) - 8) + 64) + 15;
  *(v7 + 504) = swift_task_alloc();
  v23 = type metadata accessor for NWEndpoint();
  *(v7 + 512) = v23;
  v24 = *(v23 - 8);
  *(v7 + 520) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 528) = swift_task_alloc();
  v26 = *(*(sub_10005DC58(&qword_1005989E8, &qword_1004B28E8) - 8) + 64) + 15;
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 560) = swift_task_alloc();
  v27 = *(*(sub_10005DC58(&qword_100594A30, &qword_1004B2E00) - 8) + 64) + 15;
  *(v7 + 568) = swift_task_alloc();
  v28 = type metadata accessor for Logger();
  *(v7 + 576) = v28;
  v29 = *(v28 - 8);
  *(v7 + 584) = v29;
  v30 = *(v29 + 64) + 15;
  *(v7 + 592) = swift_task_alloc();
  *(v7 + 600) = swift_task_alloc();
  *(v7 + 608) = swift_task_alloc();
  *(v7 + 616) = swift_task_alloc();
  *(v7 + 624) = swift_task_alloc();
  v31 = *(v8 + 88);
  *(v7 + 632) = v31;
  *(v7 + 640) = *(v31 + 8);
  *(v7 + 648) = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 656) = AssociatedTypeWitness;
  v33 = *(AssociatedTypeWitness - 8);
  *(v7 + 664) = v33;
  v34 = *(v33 + 64) + 15;
  *(v7 + 672) = swift_task_alloc();
  v35 = *(*(sub_10005DC58(&qword_1005989F0, &qword_1004B28F0) - 8) + 64) + 15;
  *(v7 + 680) = swift_task_alloc();
  *(v7 + 688) = swift_task_alloc();
  *(v7 + 696) = swift_task_alloc();
  *(v7 + 704) = swift_projectBox();
  *(v7 + 712) = swift_projectBox();

  return _swift_task_switch(sub_1003D5278, 0, 0);
}

uint64_t sub_1003D5278()
{
  v205 = v0;
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  swift_beginAccess();
  sub_100012400(v1, v2, &qword_1005989F0, &qword_1004B28F0);
  v5 = *(v4 + 48);
  *(v0 + 720) = v5;
  *(v0 + 728) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v5(v2, 1, v3);
  sub_100016290(v2, &qword_1005989F0, &qword_1004B28F0);
  if (v1 == 1)
  {
    v6 = *(v0 + 672);
    v7 = *(v0 + 664);
    v8 = *(v0 + 656);
    v9 = *(v0 + 648);
    v10 = *(v0 + 640);
    v11 = *(v0 + 312);
    v12 = *(*(v0 + 304) + 24);
    swift_unownedRetainStrong();
    (*(v7 + 16))(v6, v12 + *(*v12 + 112), v8);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = (*(AssociatedConformanceWitness + 136))(v8, AssociatedConformanceWitness);
    *(v0 + 736) = v14;
    (*(v7 + 8))(v6, v8);
    *(v0 + 744) = *(v11 + 72);
    *(v0 + 752) = *(v11 + 80);
    v15 = *v14;
    *(v0 + 760) = *(*v14 + 408);
    *(v0 + 768) = (v15 + 408) & 0xFFFFFFFFFFFFLL | 0xEB81000000000000;
    v16 = sub_1003D6534;
    v17 = v14;
    v18 = 0;

    return _swift_task_switch(v16, v17, v18);
  }

  v19 = *(v0 + 712);
  v20 = *(v0 + 560);
  v21 = *(v0 + 480);
  v22 = *(v0 + 488);
  swift_beginAccess();
  sub_100012400(v19, v20, &qword_1005989E8, &qword_1004B28E8);
  v23 = *(v22 + 48);
  LODWORD(v19) = v23(v20, 1, v21);
  sub_100016290(v20, &qword_1005989E8, &qword_1004B28E8);
  if (v19 == 1)
  {
    v24 = *(v0 + 712);
    v25 = *(v0 + 552);
    v26 = *(v0 + 480);
    v27 = *(v0 + 488);
    v28 = *(v0 + 312);
    v29 = *(v28 + 48);
    v30 = *(v28 + 56);

    WASubscribableService.init(name:)();
    (*(v27 + 56))(v25, 0, 1, v26);
    swift_beginAccess();
    sub_1000B1B78(v25, v24, &qword_1005989E8, &qword_1004B28E8);
  }

  v31 = *(v0 + 520);
  v32 = *(v0 + 504);
  v33 = *(v0 + 512);
  sub_100012400(*(v0 + 328), v32, &qword_1005989E0, &qword_1004B28E0);
  if ((*(v31 + 48))(v32, 1, v33) == 1)
  {
    v34 = *(v0 + 504);
    v35 = &qword_1005989E0;
    v36 = &qword_1004B28E0;
LABEL_13:
    sub_100016290(v34, v35, v36);
    v51 = (v0 + 592);
    v52 = *(v0 + 592);
    Logger.init(subsystem:category:)();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "#### Failed to get endpoint", v55, 2u);
    }

    v56 = v0 + 584;
    v57 = (v0 + 576);
    goto LABEL_16;
  }

  v37 = *(v0 + 712);
  v38 = *(v0 + 544);
  v39 = *(v0 + 480);
  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
  swift_beginAccess();
  sub_100012400(v37, v38, &qword_1005989E8, &qword_1004B28E8);
  if (v23(v38, 1, v39) == 1)
  {
    v40 = *(v0 + 544);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    v35 = &qword_1005989E8;
    v36 = &qword_1004B28E8;
    v34 = v40;
    goto LABEL_13;
  }

  v41 = *(v0 + 728);
  v42 = *(v0 + 720);
  v43 = *(v0 + 704);
  v44 = *(v0 + 680);
  v45 = *(v0 + 448);
  (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 544), *(v0 + 480));
  swift_beginAccess();
  sub_100012400(v43, v44, &qword_1005989F0, &qword_1004B28F0);
  v46 = v42(v44, 1, v45);
  v47 = *(v0 + 680);
  if (v46 == 1)
  {
    v48 = *(v0 + 528);
    v49 = *(v0 + 520);
    v50 = *(v0 + 512);
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
    (*(v49 + 8))(v48, v50);
    v35 = &qword_1005989F0;
    v36 = &qword_1004B28F0;
    v34 = v47;
    goto LABEL_13;
  }

  v187 = *(v0 + 536);
  v153 = *(v0 + 528);
  v70 = *(v0 + 520);
  v150 = *(v0 + 512);
  v199 = *(v0 + 496);
  v160 = *(v0 + 488);
  v202 = *(v0 + 480);
  v195 = *(v0 + 472);
  v71 = *(v0 + 456);
  v157 = *(v0 + 448);
  v72 = *(v0 + 432);
  v73 = *(v0 + 440);
  v75 = *(v0 + 408);
  v74 = *(v0 + 416);
  v76 = *(v0 + 400);
  v191 = *(v0 + 392);
  v163 = *(v0 + 352);
  v175 = *(v0 + 336);
  v178 = *(v0 + 344);
  v172 = *(v0 + 793);
  v166 = *(v0 + 792);
  v77 = *(v0 + 320);
  v169 = *(v0 + 312);
  v181 = *(v0 + 304);
  (*(v71 + 32))();
  UUID.init()();
  v149 = *(v74 + 16);
  v149(v72, v73, v75);
  (*(v70 + 16))(v76, v153, v150);
  swift_beginAccess();
  v78 = *(v77 + 16);
  v79 = type metadata accessor for ConnectedSession(0);
  v154 = *(v160 + 16);
  v154(v76 + v79[7], v199, v202);
  v80 = v195;
  v196 = *(v71 + 16);
  v196(v76 + v79[8], v80, v157);
  swift_beginAccess();
  v81 = *(v163 + 16);
  (*(v74 + 56))(v76 + v79[13], 1, 1, v75);
  *(v76 + v79[5]) = v166;
  *(v76 + v79[6]) = v78;
  *(v76 + v79[9]) = v172 & 1;
  *(v76 + v79[10]) = v169;
  v82 = (v76 + v79[11]);
  *v82 = v175;
  v82[1] = v178;
  *(v76 + v79[12]) = v81;
  (*(*(v79 - 1) + 56))(v76, 0, 1, v79);
  swift_beginAccess();

  v83 = v81;

  sub_100338D30(v76, v72);
  swift_endAccess();
  v84 = *(v160 + 56);
  v84(v187, 1, 1, v202);
  v85 = type metadata accessor for WAPublishableService();
  v86 = *(*(v85 - 8) + 56);
  v86(v191, 1, 1, v85);
  if (v172)
  {
    v87 = *(v0 + 496);
    v89 = *(v0 + 384);
    v88 = *(v0 + 392);
    WASubscribableService.name.getter();
    WAPublishableService.init(name:)();
    sub_100016290(v88, &unk_100599490, &qword_1004B2DF8);
    v86(v89, 0, 1, v85);
    sub_10001CEA8(v89, v88, &unk_100599490, &qword_1004B2DF8);
  }

  else
  {
    v90 = *(v0 + 536);
    v91 = *(v0 + 496);
    v92 = *(v0 + 480);
    sub_100016290(v90, &qword_1005989E8, &qword_1004B28E8);
    v154(v90, v91, v92);
    v84(v90, 0, 1, v92);
  }

  v93 = *(v0 + 552);
  v94 = *(v0 + 536);
  v95 = *(v0 + 464);
  v96 = *(v0 + 472);
  v97 = *(v0 + 448);
  v98 = *(v0 + 376);
  v99 = *(v0 + 352);
  v100 = *(v0 + 792);
  sub_100012400(*(v0 + 392), *(v0 + 384), &unk_100599490, &qword_1004B2DF8);
  sub_100012400(v94, v93, &qword_1005989E8, &qword_1004B28E8);
  v196(v95, v96, v97);
  swift_beginAccess();
  v101 = *(v99 + 16);
  v102 = WiFiMACAddress.wifiAddress.getter();

  WiFiAddress.data.getter(v102 & 0xFFFFFFFFFFFFLL);
  WAPathAgentInterface.AgentToPath.init(publishedService:subscribedService:device:datapathID:peerMacAddress:)();
  v103 = WAPathAgentInterface.AgentToPath.encode()();
  v105 = v104;
  v106 = *(v0 + 608);
  v107 = *(v0 + 352);
  v108 = sub_1003D8BBC(v103, v104);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v103, v105);

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();

  v203 = v108;
  if (!os_log_type_enabled(v109, v110))
  {
    v114 = *(v0 + 608);
    v115 = *(v0 + 584);
    v116 = *(v0 + 576);
    sub_1000124C8(v103, v105);

    (*(v115 + 8))(v114, v116);
    v112 = v105 >> 62;
    goto LABEL_35;
  }

  v111 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v192 = v16;
  v204 = v16;
  *v111 = 134218242;
  v112 = v105 >> 62;
  if ((v105 >> 62) > 1)
  {
    if (v112 != 2)
    {
      v113 = 0;
      goto LABEL_34;
    }

    v118 = *(v103 + 16);
    v117 = *(v103 + 24);
    v119 = __OFSUB__(v117, v118);
    v113 = v117 - v118;
    if (!v119)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_31:
    LODWORD(v113) = HIDWORD(v103) - v103;
    if (__OFSUB__(HIDWORD(v103), v103))
    {
      goto LABEL_48;
    }

    v113 = v113;
    goto LABEL_34;
  }

  if (v112)
  {
    goto LABEL_31;
  }

  v113 = BYTE6(v105);
LABEL_34:
  v120 = *(v0 + 584);
  v184 = *(v0 + 576);
  v188 = *(v0 + 608);
  v121 = *(v0 + 352);
  *(v111 + 4) = v113;
  sub_1000124C8(v103, v105);
  *(v111 + 12) = 2080;
  swift_beginAccess();
  v122 = *(v121 + 16);
  v123 = WiFiMACAddress.wifiAddress.getter();

  v124 = WiFiAddress.description.getter(v123 & 0xFFFFFFFFFFFFLL);
  v126 = sub_100002320(v124, v125, &v204);

  *(v111 + 14) = v126;
  _os_log_impl(&_mh_execute_header, v109, v110, "#### remote endpoint assigned with nwPathStat length: %ld WiFiAddress %s", v111, 0x16u);
  sub_100002A00(v192);

  (*(v120 + 8))(v188, v184);
LABEL_35:
  v127 = *(v0 + 312);
  v189 = *(v127 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
  v185 = *(v127 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);
  v193 = *(v127 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);

  v16 = nw_interface_create_with_name();
  v182 = v16;
  v197 = v105;
  v200 = v103;
  if (v112 <= 1)
  {
    if (!v112)
    {
      v128 = BYTE6(v105);
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v112 != 2)
  {
    v146 = 0;
    goto LABEL_46;
  }

  v130 = *(v103 + 16);
  v129 = *(v103 + 24);
  v119 = __OFSUB__(v129, v130);
  v128 = v129 - v130;
  if (v119)
  {
    __break(1u);
LABEL_42:
    LODWORD(v128) = HIDWORD(v103) - v103;
    if (!__OFSUB__(HIDWORD(v103), v103))
    {
      v128 = v128;
      goto LABEL_44;
    }

    __break(1u);
LABEL_48:
    __break(1u);
    return _swift_task_switch(v16, v17, v18);
  }

LABEL_44:
  v146 = v128;
LABEL_46:
  v131 = *(v0 + 648);
  v132 = *(v0 + 632);
  v147 = *(v0 + 496);
  v176 = *(v0 + 488);
  v179 = *(v0 + 480);
  v173 = *(v0 + 472);
  v164 = *(v0 + 536);
  v167 = *(v0 + 456);
  v170 = *(v0 + 448);
  v133 = *(v0 + 432);
  v135 = *(v0 + 416);
  v134 = *(v0 + 424);
  v136 = *(v0 + 408);
  v158 = *(v0 + 392);
  v161 = *(v0 + 440);
  v148 = *(v0 + 368);
  v151 = *(v0 + 360);
  v155 = *(v0 + 376);
  v137 = *(v0 + 304);
  v145 = *(v0 + 312);
  (v149)(v133);
  v138 = (*(v135 + 80) + 40) & ~*(v135 + 80);
  v139 = swift_allocObject();
  *(v139 + 2) = v131;
  *(v139 + 3) = v132;
  *(v139 + 4) = v137;
  (*(v135 + 32))(&v139[v138], v133, v136);
  v140 = String.utf8CString.getter();

  v189(0, v185, 0, v182, v140 + 32, v146, v203, sub_1003EA1D8, v139, 0);
  swift_unknownObjectRelease();

  v141 = *(v145 + 72);
  v142 = *(v145 + 80);
  v143 = WASubscribableService.name.getter();
  sub_1003AE988(v141, v142, v143, v144, 2);

  sub_1000124C8(v200, v197);
  (*(v148 + 8))(v155, v151);
  sub_100016290(v158, &unk_100599490, &qword_1004B2DF8);
  sub_100016290(v164, &qword_1005989E8, &qword_1004B28E8);
  (*(v135 + 8))(v161, v136);
  (*(v167 + 8))(v173, v170);
  (*(v176 + 8))(v147, v179);
  v56 = v0 + 520;
  v51 = (v0 + 528);
  v57 = (v0 + 512);
LABEL_16:
  v58 = *v51;
  v59 = *(v0 + 696);
  v60 = *(v0 + 688);
  v61 = *(v0 + 680);
  v62 = *(v0 + 672);
  v63 = *(v0 + 624);
  v64 = *(v0 + 616);
  v65 = *(v0 + 608);
  v66 = *(v0 + 600);
  v67 = *(v0 + 592);
  v152 = *(v0 + 568);
  v156 = *(v0 + 560);
  v159 = *(v0 + 552);
  v162 = *(v0 + 544);
  v165 = *(v0 + 536);
  v168 = *(v0 + 528);
  v171 = *(v0 + 504);
  v174 = *(v0 + 496);
  v177 = *(v0 + 472);
  v180 = *(v0 + 464);
  v183 = *(v0 + 440);
  v186 = *(v0 + 432);
  v190 = *(v0 + 400);
  v194 = *(v0 + 392);
  v198 = *(v0 + 384);
  v201 = *(v0 + 376);
  (*(*v56 + 8))(v58, *v57);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1003D6534()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 736);
  *(v0 + 776) = (*(v0 + 760))(*(v0 + 744), *(v0 + 752), 1);
  *(v0 + 784) = 0;
  v3 = *(v0 + 736);

  return _swift_task_switch(sub_1003D65E0, 0, 0);
}

void sub_1003D65E0()
{
  v244 = v0;
  v3 = *(v0 + 776);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v162 = *(v0 + 776);
    }

    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v0 + 320);
  swift_beginAccess();
  if (!v4)
  {
LABEL_13:
    v14 = *(v0 + 776);
    v15 = (v0 + 616);
    v16 = *(v0 + 616);

    Logger.init(subsystem:category:)();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "#### DeviceID not match";
      goto LABEL_27;
    }

LABEL_28:

    v66 = v0 + 584;
    v10 = (v0 + 576);
LABEL_29:
    v67 = *v15;
    v68 = *v10;
    v69 = *(v0 + 696);
    v70 = *(v0 + 688);
    v71 = *(v0 + 680);
    v72 = *(v0 + 672);
    v73 = *(v0 + 624);
    v74 = *(v0 + 616);
    v75 = *(v0 + 608);
    v76 = *(v0 + 600);
    v77 = *(v0 + 592);
    v176 = *(v0 + 568);
    v179 = *(v0 + 560);
    v182 = *(v0 + 552);
    v185 = *(v0 + 544);
    v188 = *(v0 + 536);
    v192 = *(v0 + 528);
    v196 = *(v0 + 504);
    v200 = *(v0 + 496);
    v204 = *(v0 + 472);
    v208 = *(v0 + 464);
    v213 = *(v0 + 440);
    v220 = *(v0 + 432);
    v225 = *(v0 + 400);
    v229 = *(v0 + 392);
    v234 = *(v0 + 384);
    v238 = *(v0 + 376);
    (*(*v66 + 8))(v67, v68);

    v78 = *(v0 + 8);

    v78();
    return;
  }

  v6 = 0;
  v7 = (v3 & 0xC000000000000001);
  v8 = v3 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v0 + 776) + 32;
  v10 = &unk_100588000;
  while (1)
  {
    if (v7)
    {
      v13 = *(v0 + 776);
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_46;
      }

      v11 = *(v9 + 8 * v6);
    }

    v12 = v11;
    v1 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v2 = *(v0 + 320);
    if ([v11 deviceID] == *(v2 + 16))
    {
      break;
    }

    ++v6;
    if (v1 == v4)
    {
      goto LABEL_13;
    }
  }

  v21 = *(v0 + 776);

  v22 = v12;
  [v22 deviceID];
  v23 = [v22 name];
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v25 = *(v0 + 688);
  v26 = *(v0 + 568);
  v27 = *(v0 + 456);
  v219 = *(v0 + 448);
  v224 = *(v0 + 704);
  v28 = [v22 pairingName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = [v22 vendorName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = [v22 modelName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)();
  v31 = type metadata accessor for WAPairedDevice.PairingInfo();
  (*(*(v31 - 8) + 56))(v26, 0, 1, v31);
  WAPairedDevice.init(id:name:pairingInfo:)();

  (*(v27 + 56))(v25, 0, 1, v219);
  swift_beginAccess();
  sub_1000B1B78(v25, v224, &qword_1005989F0, &qword_1004B28F0);
  v32 = *(v0 + 784);
  v33 = *(v0 + 712);
  v34 = *(v0 + 560);
  v35 = *(v0 + 480);
  v36 = *(v0 + 488);
  swift_beginAccess();
  sub_100012400(v33, v34, &qword_1005989E8, &qword_1004B28E8);
  v37 = *(v36 + 48);
  LODWORD(v33) = v37(v34, 1, v35);
  sub_100016290(v34, &qword_1005989E8, &qword_1004B28E8);
  if (v33 == 1)
  {
    v38 = *(v0 + 712);
    v39 = *(v0 + 552);
    v40 = *(v0 + 480);
    v41 = *(v0 + 488);
    v42 = *(v0 + 312);
    v43 = *(v42 + 48);
    v44 = *(v42 + 56);

    WASubscribableService.init(name:)();
    (*(v41 + 56))(v39, 0, 1, v40);
    swift_beginAccess();
    sub_1000B1B78(v39, v38, &qword_1005989E8, &qword_1004B28E8);
  }

  v45 = *(v0 + 520);
  v46 = *(v0 + 504);
  v47 = *(v0 + 512);
  sub_100012400(*(v0 + 328), v46, &qword_1005989E0, &qword_1004B28E0);
  if ((*(v45 + 48))(v46, 1, v47) == 1)
  {
    v48 = *(v0 + 504);
    v49 = &qword_1005989E0;
    v50 = &qword_1004B28E0;
    goto LABEL_25;
  }

  v51 = *(v0 + 712);
  v52 = *(v0 + 544);
  v53 = *(v0 + 480);
  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
  swift_beginAccess();
  sub_100012400(v51, v52, &qword_1005989E8, &qword_1004B28E8);
  if (v37(v52, 1, v53) == 1)
  {
    v54 = *(v0 + 544);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    v49 = &qword_1005989E8;
    v50 = &qword_1004B28E8;
    v48 = v54;
    goto LABEL_25;
  }

  v55 = *(v0 + 728);
  v56 = *(v0 + 720);
  v57 = *(v0 + 704);
  v58 = *(v0 + 680);
  v59 = *(v0 + 448);
  (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 544), *(v0 + 480));
  swift_beginAccess();
  sub_100012400(v57, v58, &qword_1005989F0, &qword_1004B28F0);
  v60 = v56(v58, 1, v59);
  v61 = *(v0 + 680);
  if (v60 == 1)
  {
    v62 = *(v0 + 528);
    v63 = *(v0 + 520);
    v64 = *(v0 + 512);
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
    (*(v63 + 8))(v62, v64);
    v49 = &qword_1005989F0;
    v50 = &qword_1004B28F0;
    v48 = v61;
LABEL_25:
    sub_100016290(v48, v49, v50);
    v15 = (v0 + 592);
    v65 = *(v0 + 592);
    Logger.init(subsystem:category:)();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_28;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "#### Failed to get endpoint";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

    goto LABEL_28;
  }

  v230 = v32;
  v167 = v0 + 520;
  v209 = *(v0 + 536);
  v10 = (v0 + 512);
  v168 = (v0 + 528);
  v221 = *(v0 + 528);
  v79 = *(v0 + 520);
  v171 = *(v0 + 512);
  v226 = *(v0 + 496);
  v235 = *(v0 + 480);
  v239 = *(v0 + 488);
  v80 = *(v0 + 448);
  v81 = *(v0 + 456);
  v174 = v80;
  v177 = *(v0 + 472);
  v82 = *(v0 + 432);
  v83 = *(v0 + 440);
  v84 = *(v0 + 416);
  v169 = *(v0 + 408);
  v85 = *(v0 + 400);
  v214 = *(v0 + 392);
  v180 = *(v0 + 352);
  v193 = *(v0 + 336);
  v197 = *(v0 + 344);
  v189 = *(v0 + 793);
  v183 = *(v0 + 792);
  v86 = *(v0 + 320);
  v186 = *(v0 + 312);
  v201 = *(v0 + 304);
  (*(v81 + 32))();
  UUID.init()();
  v165 = *(v84 + 16);
  v165(v82, v83, v169);
  (*(v79 + 16))(v85, v221, v171);
  swift_beginAccess();
  v87 = *(v86 + 16);
  v88 = type metadata accessor for ConnectedSession(0);
  v172 = *(v239 + 16);
  v172(v85 + v88[7], v226, v235);
  v222 = *(v81 + 16);
  v222(v85 + v88[8], v177, v174);
  swift_beginAccess();
  v89 = *(v180 + 16);
  (*(v84 + 56))(v85 + v88[13], 1, 1, v169);
  *(v85 + v88[5]) = v183;
  *(v85 + v88[6]) = v87;
  *(v85 + v88[9]) = v189 & 1;
  *(v85 + v88[10]) = v186;
  v90 = (v85 + v88[11]);
  *v90 = v193;
  v90[1] = v197;
  *(v85 + v88[12]) = v89;
  (*(*(v88 - 1) + 56))(v85, 0, 1, v88);
  swift_beginAccess();

  v91 = v89;

  sub_100338D30(v85, v82);
  swift_endAccess();
  v92 = *(v239 + 56);
  v92(v209, 1, 1, v235);
  v93 = type metadata accessor for WAPublishableService();
  v94 = *(*(v93 - 8) + 56);
  v94(v214, 1, 1, v93);
  if (v189)
  {
    v95 = *(v0 + 496);
    v97 = *(v0 + 384);
    v96 = *(v0 + 392);
    WASubscribableService.name.getter();
    WAPublishableService.init(name:)();
    sub_100016290(v96, &unk_100599490, &qword_1004B2DF8);
    v94(v97, 0, 1, v93);
    sub_10001CEA8(v97, v96, &unk_100599490, &qword_1004B2DF8);
  }

  else
  {
    v98 = *(v0 + 536);
    v99 = *(v0 + 496);
    v100 = *(v0 + 480);
    sub_100016290(v98, &qword_1005989E8, &qword_1004B28E8);
    v172(v98, v99, v100);
    v92(v98, 0, 1, v100);
  }

  v101 = *(v0 + 552);
  v102 = *(v0 + 536);
  v103 = *(v0 + 464);
  v104 = *(v0 + 472);
  v105 = *(v0 + 448);
  v106 = *(v0 + 376);
  v107 = *(v0 + 352);
  v240 = *(v0 + 792);
  sub_100012400(*(v0 + 392), *(v0 + 384), &unk_100599490, &qword_1004B2DF8);
  sub_100012400(v102, v101, &qword_1005989E8, &qword_1004B28E8);
  v222(v103, v104, v105);
  swift_beginAccess();
  v108 = *(v107 + 16);
  v109 = WiFiMACAddress.wifiAddress.getter();

  WiFiAddress.data.getter(v109 & 0xFFFFFFFFFFFFLL);
  WAPathAgentInterface.AgentToPath.init(publishedService:subscribedService:device:datapathID:peerMacAddress:)();
  v110 = WAPathAgentInterface.AgentToPath.encode()();
  if (v230)
  {
    v112 = *(v0 + 600);
    Logger.init(subsystem:category:)();
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    v115 = os_log_type_enabled(v113, v114);
    v116 = *(v0 + 584);
    v194 = *(v0 + 576);
    v198 = *(v0 + 600);
    v117 = *(v0 + 488);
    v118 = *(v0 + 496);
    v236 = *(v0 + 456);
    v241 = *(v0 + 480);
    v227 = *(v0 + 448);
    v231 = *(v0 + 472);
    v210 = *(v0 + 536);
    v215 = *(v0 + 440);
    v223 = *(v0 + 416);
    v202 = *(v0 + 392);
    v205 = *(v0 + 408);
    v119 = *(v0 + 368);
    v120 = *(v0 + 376);
    v190 = *(v0 + 360);
    if (v115)
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "#### Encode failed", v121, 2u);
    }

    (*(v116 + 8))(v198, v194);
    (*(v119 + 8))(v120, v190);
    sub_100016290(v202, &unk_100599490, &qword_1004B2DF8);
    sub_100016290(v210, &qword_1005989E8, &qword_1004B28E8);
    (*(v223 + 8))(v215, v205);
    (*(v236 + 8))(v231, v227);
    (*(v117 + 8))(v118, v241);
    goto LABEL_67;
  }

  v1 = v110;
  v2 = v111;
  v122 = *(v0 + 608);
  v123 = *(v0 + 352);
  v124 = sub_1003D8BBC(v110, v111);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v1, v2);

  v7 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();

  v233 = v124;
  if (!os_log_type_enabled(v7, v125))
  {
    v128 = *(v0 + 608);
    v129 = *(v0 + 584);
    v130 = *(v0 + 576);
    sub_1000124C8(v1, v2);

    (*(v129 + 8))(v128, v130);
    v9 = v2 >> 62;
    goto LABEL_55;
  }

  v6 = swift_slowAlloc();
  v126 = swift_slowAlloc();
  v243[0] = v126;
  *v6 = 134218242;
  v9 = v2 >> 62;
  v237 = v125;
  v218 = v126;
  if ((v2 >> 62) > 1)
  {
LABEL_47:
    if (v9 == 2)
    {
      v132 = *(v1 + 16);
      v131 = *(v1 + 24);
      v133 = __OFSUB__(v131, v132);
      v127 = v131 - v132;
      if (v133)
      {
        __break(1u);
        goto LABEL_51;
      }
    }

    else
    {
      v127 = 0;
    }

LABEL_54:
    v216 = *(v0 + 608);
    v206 = *(v0 + 584);
    v211 = *(v0 + 576);
    v134 = *(v0 + 352);
    *(v6 + 4) = v127;
    sub_1000124C8(v1, v2);
    *(v6 + 12) = 2080;
    swift_beginAccess();
    v135 = *(v134 + 16);
    v136 = v2;
    v137 = v1;
    v138 = WiFiMACAddress.wifiAddress.getter();

    v139 = WiFiAddress.description.getter(v138 & 0xFFFFFFFFFFFFLL);
    v141 = sub_100002320(v139, v140, v243);

    *(v6 + 14) = v141;
    v1 = v137;
    v2 = v136;
    _os_log_impl(&_mh_execute_header, v7, v237, "#### remote endpoint assigned with nwPathStat length: %ld WiFiAddress %s", v6, 0x16u);
    sub_100002A00(v218);

    (*(v206 + 8))(v216, v211);
LABEL_55:
    v142 = *(v0 + 312);
    v143 = *(v142 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
    v144 = *(v142 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);
    v145 = *(v142 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);

    v228 = v2;
    v232 = v1;
    v217 = v143;
    v212 = v145;
    v207 = nw_interface_create_with_name();
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        v203 = 0;
        goto LABEL_66;
      }

      v148 = *(v1 + 16);
      v147 = *(v1 + 24);
      v133 = __OFSUB__(v147, v148);
      v146 = v147 - v148;
      if (!v133)
      {
LABEL_64:
        v203 = v146;
LABEL_66:
        v163 = *(v0 + 632);
        v164 = *(v0 + 648);
        v181 = *(v0 + 536);
        v242 = *(v0 + 496);
        v195 = *(v0 + 488);
        v199 = *(v0 + 480);
        v184 = *(v0 + 456);
        v187 = *(v0 + 448);
        v191 = *(v0 + 472);
        v149 = *(v0 + 432);
        v150 = *(v0 + 416);
        v151 = *(v0 + 424);
        v152 = *(v0 + 408);
        v175 = *(v0 + 392);
        v178 = *(v0 + 440);
        v166 = *(v0 + 368);
        v170 = *(v0 + 360);
        v173 = *(v0 + 376);
        v153 = *(v0 + 304);
        v154 = *(v0 + 312);
        (v165)(v149);
        v155 = (*(v150 + 80) + 40) & ~*(v150 + 80);
        v156 = swift_allocObject();
        *(v156 + 2) = v164;
        *(v156 + 3) = v163;
        *(v156 + 4) = v153;
        (*(v150 + 32))(&v156[v155], v149, v152);
        v157 = String.utf8CString.getter();

        v217(0, v212, 0, v207, v157 + 32, v203, v233, sub_1003EA1D8, v156, 0);
        swift_unknownObjectRelease();

        v159 = *(v154 + 72);
        v158 = *(v154 + 80);
        v160 = WASubscribableService.name.getter();
        sub_1003AE988(v159, v158, v160, v161, 2);

        sub_1000124C8(v232, v228);
        (*(v166 + 8))(v173, v170);
        sub_100016290(v175, &unk_100599490, &qword_1004B2DF8);
        sub_100016290(v181, &qword_1005989E8, &qword_1004B28E8);
        (*(v150 + 8))(v178, v152);
        (*(v184 + 8))(v191, v187);
        (*(v195 + 8))(v242, v199);
LABEL_67:
        v66 = v167;
        v15 = v168;
        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v146 = BYTE6(v2);
      goto LABEL_64;
    }

    LODWORD(v146) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      goto LABEL_72;
    }

    v146 = v146;
    goto LABEL_64;
  }

  if (!v9)
  {
    v127 = BYTE6(v2);
    goto LABEL_54;
  }

LABEL_51:
  LODWORD(v127) = HIDWORD(v1) - v1;
  if (!__OFSUB__(HIDWORD(v1), v1))
  {
    v127 = v127;
    goto LABEL_54;
  }

LABEL_72:
  __break(1u);
}