uint64_t sub_1003D7A08()
{
  v199 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 624);

  Logger.init(subsystem:category:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 784);
  v7 = *(v0 + 624);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#### Failed to get paired device", v10, 2u);
  }

  (*(v8 + 8))(v7, v9);
  v11 = *(v0 + 712);
  v12 = *(v0 + 560);
  v13 = *(v0 + 480);
  v14 = *(v0 + 488);
  swift_beginAccess();
  sub_100012400(v11, v12, &qword_1005989E8, &qword_1004B28E8);
  v15 = *(v14 + 48);
  LODWORD(v11) = v15(v12, 1, v13);
  sub_100016290(v12, &qword_1005989E8, &qword_1004B28E8);
  if (v11 == 1)
  {
    v16 = *(v0 + 712);
    v17 = *(v0 + 552);
    v18 = *(v0 + 480);
    v19 = *(v0 + 488);
    v20 = *(v0 + 312);
    v21 = *(v20 + 48);
    v22 = *(v20 + 56);

    WASubscribableService.init(name:)();
    (*(v19 + 56))(v17, 0, 1, v18);
    swift_beginAccess();
    sub_1000B1B78(v17, v16, &qword_1005989E8, &qword_1004B28E8);
  }

  v23 = *(v0 + 520);
  v24 = *(v0 + 504);
  v25 = *(v0 + 512);
  sub_100012400(*(v0 + 328), v24, &qword_1005989E0, &qword_1004B28E0);
  if ((*(v23 + 48))(v24, 1, v25) == 1)
  {
    v26 = *(v0 + 504);
    v27 = &qword_1005989E0;
    v28 = &qword_1004B28E0;
LABEL_11:
    sub_100016290(v26, v27, v28);
    v43 = (v0 + 584);
    v44 = (v0 + 576);
    v45 = (v0 + 592);
    v46 = *(v0 + 592);
    Logger.init(subsystem:category:)();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "#### Failed to get endpoint", v49, 2u);
    }

    goto LABEL_14;
  }

  v29 = *(v0 + 712);
  v30 = *(v0 + 544);
  v31 = *(v0 + 480);
  (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
  swift_beginAccess();
  sub_100012400(v29, v30, &qword_1005989E8, &qword_1004B28E8);
  if (v15(v30, 1, v31) == 1)
  {
    v32 = *(v0 + 544);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    v27 = &qword_1005989E8;
    v28 = &qword_1004B28E8;
    v26 = v32;
    goto LABEL_11;
  }

  v33 = *(v0 + 728);
  v34 = *(v0 + 720);
  v35 = *(v0 + 704);
  v36 = *(v0 + 680);
  v37 = *(v0 + 448);
  (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 544), *(v0 + 480));
  swift_beginAccess();
  sub_100012400(v35, v36, &qword_1005989F0, &qword_1004B28F0);
  v38 = v34(v36, 1, v37);
  v39 = *(v0 + 680);
  if (v38 == 1)
  {
    v40 = *(v0 + 528);
    v41 = *(v0 + 520);
    v42 = *(v0 + 512);
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
    (*(v41 + 8))(v40, v42);
    v27 = &qword_1005989F0;
    v28 = &qword_1004B28F0;
    v26 = v39;
    goto LABEL_11;
  }

  v180 = *(v0 + 536);
  v64 = *(v0 + 520);
  v143 = *(v0 + 512);
  v146 = *(v0 + 528);
  v192 = *(v0 + 496);
  v153 = *(v0 + 488);
  v195 = *(v0 + 480);
  v188 = *(v0 + 472);
  v65 = *(v0 + 456);
  v150 = *(v0 + 448);
  v66 = *(v0 + 432);
  v67 = *(v0 + 440);
  v68 = *(v0 + 416);
  v141 = *(v0 + 408);
  v69 = *(v0 + 400);
  v184 = *(v0 + 392);
  v156 = *(v0 + 352);
  v168 = *(v0 + 336);
  v171 = *(v0 + 344);
  v165 = *(v0 + 793);
  v159 = *(v0 + 792);
  v70 = *(v0 + 320);
  v162 = *(v0 + 312);
  v174 = *(v0 + 304);
  (*(v65 + 32))();
  UUID.init()();
  v140 = *(v68 + 16);
  v140(v66, v67, v141);
  (*(v64 + 16))(v69, v146, v143);
  swift_beginAccess();
  v71 = *(v70 + 16);
  v72 = type metadata accessor for ConnectedSession(0);
  v147 = *(v153 + 16);
  v147(v69 + v72[7], v192, v195);
  v73 = v188;
  v189 = *(v65 + 16);
  v189(v69 + v72[8], v73, v150);
  swift_beginAccess();
  v74 = *(v156 + 16);
  (*(v68 + 56))(v69 + v72[13], 1, 1, v141);
  *(v69 + v72[5]) = v159;
  *(v69 + v72[6]) = v71;
  *(v69 + v72[9]) = v165 & 1;
  *(v69 + v72[10]) = v162;
  v75 = (v69 + v72[11]);
  *v75 = v168;
  v75[1] = v171;
  *(v69 + v72[12]) = v74;
  (*(*(v72 - 1) + 56))(v69, 0, 1, v72);
  swift_beginAccess();

  v76 = v74;

  sub_100338D30(v69, v66);
  swift_endAccess();
  v77 = *(v153 + 56);
  v77(v180, 1, 1, v195);
  v78 = type metadata accessor for WAPublishableService();
  v79 = *(*(v78 - 8) + 56);
  v79(v184, 1, 1, v78);
  if (v165)
  {
    v80 = *(v0 + 496);
    v82 = *(v0 + 384);
    v81 = *(v0 + 392);
    WASubscribableService.name.getter();
    WAPublishableService.init(name:)();
    sub_100016290(v81, &unk_100599490, &qword_1004B2DF8);
    v79(v82, 0, 1, v78);
    sub_10001CEA8(v82, v81, &unk_100599490, &qword_1004B2DF8);
  }

  else
  {
    v83 = *(v0 + 536);
    v84 = *(v0 + 496);
    v85 = *(v0 + 480);
    sub_100016290(v83, &qword_1005989E8, &qword_1004B28E8);
    v147(v83, v84, v85);
    v77(v83, 0, 1, v85);
  }

  v86 = *(v0 + 552);
  v87 = *(v0 + 536);
  v88 = *(v0 + 464);
  v89 = *(v0 + 472);
  v90 = *(v0 + 448);
  v91 = *(v0 + 376);
  v92 = *(v0 + 352);
  v196 = *(v0 + 792);
  sub_100012400(*(v0 + 392), *(v0 + 384), &unk_100599490, &qword_1004B2DF8);
  sub_100012400(v87, v86, &qword_1005989E8, &qword_1004B28E8);
  v189(v88, v89, v90);
  swift_beginAccess();
  v93 = *(v92 + 16);
  v94 = WiFiMACAddress.wifiAddress.getter();

  WiFiAddress.data.getter(v94 & 0xFFFFFFFFFFFFLL);
  WAPathAgentInterface.AgentToPath.init(publishedService:subscribedService:device:datapathID:peerMacAddress:)();
  v95 = WAPathAgentInterface.AgentToPath.encode()();
  v97 = v96;
  v98 = *(v0 + 608);
  v99 = *(v0 + 352);
  v100 = sub_1003D8BBC(v95, v96);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v95, v97);

  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.default.getter();

  v197 = v100;
  if (!os_log_type_enabled(v101, v102))
  {
    v106 = *(v0 + 608);
    v107 = *(v0 + 584);
    v108 = *(v0 + 576);
    sub_1000124C8(v95, v97);

    (*(v107 + 8))(v106, v108);
    v104 = v97 >> 62;
    goto LABEL_33;
  }

  v103 = swift_slowAlloc();
  result = swift_slowAlloc();
  v185 = result;
  v198[0] = result;
  *v103 = 134218242;
  v104 = v97 >> 62;
  if ((v97 >> 62) > 1)
  {
    if (v104 != 2)
    {
      v105 = 0;
      goto LABEL_32;
    }

    v110 = *(v95 + 16);
    v109 = *(v95 + 24);
    v111 = __OFSUB__(v109, v110);
    v105 = v109 - v110;
    if (!v111)
    {
      goto LABEL_32;
    }

    __break(1u);
LABEL_29:
    LODWORD(v105) = HIDWORD(v95) - v95;
    if (__OFSUB__(HIDWORD(v95), v95))
    {
      goto LABEL_46;
    }

    v105 = v105;
    goto LABEL_32;
  }

  if (v104)
  {
    goto LABEL_29;
  }

  v105 = BYTE6(v97);
LABEL_32:
  v112 = *(v0 + 584);
  v177 = *(v0 + 576);
  v181 = *(v0 + 608);
  v113 = *(v0 + 352);
  *(v103 + 4) = v105;
  sub_1000124C8(v95, v97);
  *(v103 + 12) = 2080;
  swift_beginAccess();
  v114 = *(v113 + 16);
  v115 = WiFiMACAddress.wifiAddress.getter();

  v116 = WiFiAddress.description.getter(v115 & 0xFFFFFFFFFFFFLL);
  v118 = sub_100002320(v116, v117, v198);

  *(v103 + 14) = v118;
  _os_log_impl(&_mh_execute_header, v101, v102, "#### remote endpoint assigned with nwPathStat length: %ld WiFiAddress %s", v103, 0x16u);
  sub_100002A00(v185);

  (*(v112 + 8))(v181, v177);
LABEL_33:
  v119 = *(v0 + 312);
  v182 = *(v119 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
  v178 = *(v119 + OBJC_IVAR____TtC12wifip2pdCore19NANConnectionClient_remote);
  v186 = *(v119 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);

  result = nw_interface_create_with_name();
  v175 = result;
  v190 = v97;
  v193 = v95;
  if (v104 <= 1)
  {
    if (!v104)
    {
      v120 = BYTE6(v97);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v104 != 2)
  {
    v138 = 0;
    goto LABEL_44;
  }

  v122 = *(v95 + 16);
  v121 = *(v95 + 24);
  v111 = __OFSUB__(v121, v122);
  v120 = v121 - v122;
  if (v111)
  {
    __break(1u);
LABEL_40:
    LODWORD(v120) = HIDWORD(v95) - v95;
    if (!__OFSUB__(HIDWORD(v95), v95))
    {
      v120 = v120;
      goto LABEL_42;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_42:
  v138 = v120;
LABEL_44:
  v123 = *(v0 + 648);
  v124 = *(v0 + 632);
  v139 = *(v0 + 496);
  v169 = *(v0 + 488);
  v172 = *(v0 + 480);
  v166 = *(v0 + 472);
  v157 = *(v0 + 536);
  v160 = *(v0 + 456);
  v163 = *(v0 + 448);
  v125 = *(v0 + 432);
  v127 = *(v0 + 416);
  v126 = *(v0 + 424);
  v128 = *(v0 + 408);
  v151 = *(v0 + 392);
  v154 = *(v0 + 440);
  v142 = *(v0 + 368);
  v144 = *(v0 + 360);
  v148 = *(v0 + 376);
  v129 = *(v0 + 304);
  v137 = *(v0 + 312);
  (v140)(v125);
  v130 = (*(v127 + 80) + 40) & ~*(v127 + 80);
  v131 = swift_allocObject();
  *(v131 + 2) = v123;
  *(v131 + 3) = v124;
  *(v131 + 4) = v129;
  (*(v127 + 32))(&v131[v130], v125, v128);
  v132 = String.utf8CString.getter();

  v182(0, v178, 0, v175, v132 + 32, v138, v197, sub_1003EA1D8, v131, 0);
  swift_unknownObjectRelease();

  v133 = *(v137 + 72);
  v134 = *(v137 + 80);
  v135 = WASubscribableService.name.getter();
  sub_1003AE988(v133, v134, v135, v136, 2);

  sub_1000124C8(v193, v190);
  (*(v142 + 8))(v148, v144);
  sub_100016290(v151, &unk_100599490, &qword_1004B2DF8);
  sub_100016290(v157, &qword_1005989E8, &qword_1004B28E8);
  (*(v127 + 8))(v154, v128);
  (*(v160 + 8))(v166, v163);
  (*(v169 + 8))(v139, v172);
  v44 = (v0 + 512);
  v43 = (v0 + 520);
  v45 = (v0 + 528);
LABEL_14:
  v50 = *v45;
  v51 = *v44;
  v52 = *v43;
  v53 = *(v0 + 696);
  v54 = *(v0 + 688);
  v55 = *(v0 + 680);
  v56 = *(v0 + 672);
  v57 = *(v0 + 624);
  v58 = *(v0 + 616);
  v59 = *(v0 + 608);
  v60 = *(v0 + 600);
  v61 = *(v0 + 592);
  v145 = *(v0 + 568);
  v149 = *(v0 + 560);
  v152 = *(v0 + 552);
  v155 = *(v0 + 544);
  v158 = *(v0 + 536);
  v161 = *(v0 + 528);
  v164 = *(v0 + 504);
  v167 = *(v0 + 496);
  v170 = *(v0 + 472);
  v173 = *(v0 + 464);
  v176 = *(v0 + 440);
  v179 = *(v0 + 432);
  v183 = *(v0 + 400);
  v187 = *(v0 + 392);
  v191 = *(v0 + 384);
  v194 = *(v0 + 376);
  (*(v52 + 8))(v50, v51);

  v62 = *(v0 + 8);

  return v62();
}

char *sub_1003D8BBC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (!v2)
  {
    return &v8;
  }

  v3 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    a1 = __DataStorage._offset.getter();
    v2 = v3 - a1;
    if (!__OFSUB__(v3, a1))
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (v2 == 2)
    {
      v5 = *(a1 + 16);
      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v6 = __DataStorage._offset.getter();
        v2 = v5 - v6;
        if (!__OFSUB__(v5, v6))
        {
LABEL_11:
          v4 += v2;
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
      }

      goto LABEL_12;
    }

    return &v8;
  }

LABEL_12:
  __DataStorage._length.getter();
  return v4;
}

uint64_t sub_1003D8CA4(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v61 = a3;
  v56 = a1;
  v5 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64);
  __chkstk_darwin();
  v54 = &v51 - v6;
  v58 = type metadata accessor for ConnectedSession(0);
  v55 = *(v58 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin();
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v51 - v21;
  sub_1003AE20C(a2, &v51 - v21);
  v59 = v22;
  v23 = v22;
  v24 = v9;
  v25 = v10;
  sub_100012400(v23, v20, &qword_10058F4D0, &qword_100491AB0);
  if ((*(v10 + 48))(v20, 1, v24) == 1)
  {
    sub_100016290(v20, &qword_10058F4D0, &qword_100491AB0);
    v26 = 0xE100000000000000;
    v27 = 45;
  }

  else
  {
    v27 = UUID.uuidString.getter();
    v26 = v28;
    (*(v10 + 8))(v20, v24);
  }

  Logger.init(subsystem:category:)();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v52 = v10;
    v32 = v31;
    v33 = swift_slowAlloc();
    v63[0] = v33;
    *v32 = 67109378;
    v51 = v13;
    v34 = v56;
    *(v32 + 4) = v56 & 1;
    *(v32 + 8) = 2080;
    v35 = sub_100002320(v27, v26, v63);

    *(v32 + 10) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "#### ASSIGNED FLOW status(%{BOOL}d) flow ID: %s", v32, 0x12u);
    sub_100002A00(v33);

    v25 = v52;

    (*(v14 + 8))(v17, v51);
    v37 = v58;
    v36 = v59;
    v38 = v57;
    if ((v34 & 1) == 0)
    {
LABEL_6:
      swift_beginAccess();
      v39 = v54;
      sub_1003AD998(v60, type metadata accessor for ConnectedSession, type metadata accessor for ConnectedSession, sub_100469890, sub_10046D5AC, v54);
      sub_100016290(v39, &qword_100597578, &qword_1004B1860);
      swift_endAccess();
      return sub_100016290(v36, &qword_10058F4D0, &qword_100491AB0);
    }
  }

  else
  {

    (*(v14 + 8))(v17, v13);
    v37 = v58;
    v36 = v59;
    v38 = v57;
    if ((v56 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  (*(v25 + 16))(v38, v60, v24);
  v40 = sub_1003AE938();
  v41 = sub_10040D190(v62);
  v43 = v42;
  if (!(*(v55 + 48))(v42, 1, v37))
  {
    sub_10036D434(v36, v43 + *(v37 + 52), &qword_10058F4D0, &qword_100491AB0);
  }

  (v41)(v62, 0);
  (*(v25 + 8))(v38, v24);
  (v40)(v63, 0);
  v44 = v61;
  swift_beginAccess();
  v45 = *(v44 + 80);
  if (*(v45 + 16))
  {
    v46 = *(v44 + 80);

    v47 = sub_10002A440(v60);
    if (v48)
    {
      v49 = v53;
      sub_1003E8CDC(*(v45 + 56) + *(v55 + 72) * v47, v53, type metadata accessor for ConnectedSession);

      sub_1003E3ADC(v49, "Starting Stats Monitoring for %s DataPathID: %hhu Flow ID: %s");
      sub_1003E8ED4(v49, type metadata accessor for ConnectedSession);
    }

    else
    {
    }
  }

  return sub_100016290(v36, &qword_10058F4D0, &qword_100491AB0);
}

uint64_t NANAgentHandler.stopConnectionSession(_:notifyClient:error:)(uint64_t a1, int a2, int a3)
{
  v88 = a3;
  v90 = a2;
  v4 = *(*(sub_10005DC58(&qword_100597578, &qword_1004B1860) - 8) + 64);
  __chkstk_darwin();
  v6 = &v86 - v5;
  v7 = type metadata accessor for ConnectedSession(0);
  v102 = *(v7 - 8);
  v103 = v7;
  v8 = *(v102 + 64);
  __chkstk_darwin();
  v86 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v86 - v10;
  v11 = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
  v93 = *(v11 - 8);
  v12 = *(v93 + 64);
  __chkstk_darwin();
  v101 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v86 - v14;
  __chkstk_darwin();
  v100 = &v86 - v15;
  v16 = *(*(sub_10005DC58(&unk_1005989C0, &unk_1004B28C0) - 8) + 64);
  __chkstk_darwin();
  v92 = &v86 - v17;
  v18 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v94 = &v86 - v19;
  v20 = type metadata accessor for UUID();
  v108 = *(v20 - 8);
  v21 = *(v108 + 64);
  __chkstk_darwin();
  v91 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v87 = v6;
  v106 = v11;
  v107 = a1;
  v105 = v20;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v109 = v32;
    *v31 = 136315138;
    v33 = sub_1003F3454(v32);
    v35 = sub_100002320(v33, v34, &v109);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "#### Stopped a connection session:%s", v31, 0xCu);
    sub_100002A00(v32);
  }

  (*(v24 + 8))(v27, v23);
  v36 = v96;
  swift_beginAccess();
  v37 = *(v36 + 80);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  v98 = v108 + 16;
  v104 = (v108 + 8);
  result = swift_bridgeObjectRetain_n();
  v44 = 0;
  v45 = v95;
  v97 = v37 + 64;
  v99 = v37;
  if (v41)
  {
    while (1)
    {
      v46 = v44;
LABEL_10:
      v47 = __clz(__rbit64(v41)) | (v46 << 6);
      v48 = v100;
      v49 = v105;
      (*(v108 + 16))(v100, *(v37 + 48) + *(v108 + 72) * v47, v105);
      v50 = *(v37 + 56) + *(v102 + 72) * v47;
      v51 = v106;
      sub_1003E8CDC(v50, v48 + *(v106 + 48), type metadata accessor for ConnectedSession);
      sub_10001CEA8(v48, v45, &qword_100598A00, &qword_1004B2900);
      v52 = v101;
      sub_100012400(v45, v101, &qword_100598A00, &qword_1004B2900);
      v53 = v52 + *(v51 + 48);
      v54 = v45;
      v55 = *(v53 + *(v103 + 40));

      sub_1003E8ED4(v53, type metadata accessor for ConnectedSession);

      (*(v108 + 8))(v52, v49);
      if (v55 == v107)
      {
        break;
      }

      v41 &= v41 - 1;
      result = sub_100016290(v54, &qword_100598A00, &qword_1004B2900);
      v44 = v46;
      v45 = v54;
      v37 = v99;
      v38 = v97;
      if (!v41)
      {
        goto LABEL_7;
      }
    }

    v58 = v92;
    sub_10001CEA8(v54, v92, &qword_100598A00, &qword_1004B2900);
    v56 = v93;
    v57 = *(v93 + 56);
    v59 = v58;
    v60 = 0;
LABEL_14:
    v61 = v106;
    v57(v59, v60, 1, v106);
    v62 = v107;

    v63 = (*(v56 + 48))(v58, 1, v61);
    v64 = v105;
    v65 = v94;
    if (v63 == 1)
    {
      sub_100016290(v58, &unk_1005989C0, &unk_1004B28C0);
      (*(v108 + 56))(v65, 1, 1, v64);
      return sub_100016290(v65, &qword_10058F4D0, &qword_100491AB0);
    }

    v66 = *(v61 + 48);
    v67 = v108;
    v68 = *(v108 + 32);
    v68(v94, v58, v105);
    (*(v67 + 56))(v65, 0, 1, v64);
    sub_1003E8ED4(v58 + v66, type metadata accessor for ConnectedSession);
    if ((*(v67 + 48))(v65, 1, v64) == 1)
    {
      return sub_100016290(v65, &qword_10058F4D0, &qword_100491AB0);
    }

    v69 = v91;
    v68(v91, v65, v64);
    if (v90)
    {
      v70 = *(v62 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign);
      v71 = *(v62 + OBJC_IVAR____TtC12wifip2pdCore13NANFlowClient_assign + 8);
      v72 = v88;

      v70(0, 0, 0, 0, 0, 0, 0, 0, 0, v72);
    }

    v73 = *(v96 + 80);
    if (*(v73 + 16))
    {
      v74 = *(v96 + 80);

      v75 = sub_10002A440(v69);
      if (v76)
      {
        v77 = v86;
        sub_1003E8CDC(*(v73 + 56) + *(v102 + 72) * v75, v86, type metadata accessor for ConnectedSession);

        v78 = v89;
        sub_100046A08(v77, v89, type metadata accessor for ConnectedSession);
        v79 = v103;
        v80 = v78 + *(v103 + 28);
        v81 = WASubscribableService.name.getter();
        v83 = v82;
        v84 = *(v78 + *(v79 + 20));
        sub_1003E3ADC(v78, "Stopping Stats Monitoring for %s DataPathID: %hhu Flow ID: %s");
        sub_1003AF9F0(*(v62 + 72), *(v62 + 80), v81, v83, 2);

        swift_beginAccess();
        v85 = v87;
        sub_1003AD998(v69, type metadata accessor for ConnectedSession, type metadata accessor for ConnectedSession, sub_100469890, sub_10046D5AC, v87);
        sub_100016290(v85, &qword_100597578, &qword_1004B1860);
        swift_endAccess();
        if (v84)
        {
          sub_1003E42AC(v84);
        }

        sub_1003E8ED4(v89, type metadata accessor for ConnectedSession);
      }

      else
      {
      }
    }

    return (*v104)(v69, v64);
  }

  else
  {
LABEL_7:
    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= v42)
      {

        v56 = v93;
        v57 = *(v93 + 56);
        v58 = v92;
        v59 = v92;
        v60 = 1;
        goto LABEL_14;
      }

      v41 = *(v38 + 8 * v46);
      ++v44;
      if (v41)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *NANAgentHandler.deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unownedRelease();
  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  return v0;
}

uint64_t NANAgentHandler.__deallocating_deinit()
{
  NANAgentHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1003D9FD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  return sub_1003E7E84();
}

uint64_t sub_1003DA028@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003DA090(uint64_t a1)
{
  v2 = qword_100598C58;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  swift_weakDestroy();
  v4 = *(a1 + qword_100598C68);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003DA13C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = qword_100598D20;
    swift_beginAccess();
    v13 = *&v6[v12];
    sub_100018AB4(0, &unk_100598600, WiFiAwareDiscoveryResult_ptr);

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = sub_100002320(v14, v16, &v21);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "#### Got result%s", v10, 0xCu);
    sub_100002A00(v11);

    return (*(v2 + 8))(v5, v20);
  }

  else
  {

    return (*(v2 + 8))(v5, v1);
  }
}

char *sub_1003DA39C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v56 = a7;
  v57 = a8;
  v58 = a2;
  v49 = a5;
  v50 = a6;
  v46 = a4;
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v52 - 8);
  v11 = *(v55 + 64);
  __chkstk_darwin();
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  __chkstk_darwin();
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = v17;
  v47 = v16;
  v48 = v17;
  v19 = *(v17 + 64);
  __chkstk_darwin();
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v22 = qword_100598D00;
  *(v8 + v22) = sub_1002DEE78(_swiftEmptyArrayStorage);
  v23 = (v8 + qword_100598D08);
  *v23 = 0;
  v23[1] = 0;
  v24 = qword_100598D10;
  *(v8 + qword_100598D10) = 0;
  *(v8 + qword_100598D18) = 0;
  *(v8 + qword_100598D20) = &_swiftEmptyDictionarySingleton;
  swift_weakAssign();
  v25 = *(v8 + v24);
  *(v8 + v24) = a3;
  v26 = a3;

  (*(v18 + 16))(v21, v58, v16);

  v28 = sub_1003E7C40(v27, v21);

  v29 = &v28[qword_100598D08];
  v30 = *&v28[qword_100598D08];
  v31 = *&v28[qword_100598D08 + 8];
  v32 = v56;
  v33 = v57;
  *v29 = v56;
  *(v29 + 1) = v33;
  v34 = v28;
  sub_10001F89C(v32);
  sub_100010520(v30);
  v35 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = a1;
  v37 = v46;
  *(v36 + 32) = v26;
  *(v36 + 40) = v37;
  v38 = v50;
  *(v36 + 48) = v49;
  *(v36 + 56) = v38;
  *(v36 + 60) = BYTE4(v38) & 1;
  aBlock[4] = sub_1003E9E68;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005793C8;
  v39 = _Block_copy(aBlock);
  v50 = v26;

  v40 = v35;
  v41 = v45;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  v42 = v51;
  v43 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v39);

  sub_100010520(v56);

  (*(v48 + 8))(v58, v47);
  (*(v55 + 8))(v42, v43);
  (*(v53 + 8))(v41, v54);

  return v34;
}

uint64_t sub_1003DA888()
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + qword_100598D00);

  v2 = *(v0 + qword_100598D08 + 8);
  sub_100010520(*(v0 + qword_100598D08));

  v3 = *(v0 + qword_100598D20);
}

uint64_t sub_1003DA954(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();
  v2 = *(a1 + qword_100598D00);

  v3 = *(a1 + qword_100598D08 + 8);
  sub_100010520(*(a1 + qword_100598D08));

  v4 = *(a1 + qword_100598D20);
}

void sub_1003DA9F4(void *a1)
{
  v1 = a1;
  sub_1003E8148();
}

uint64_t sub_1003DAA3C(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000011;
  v5 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v26 = a1;
  if (!v15)
  {

    (*(v9 + 8))(v12, v8);
    goto LABEL_16;
  }

  v25 = v8;
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v27 = v17;
  *v16 = 136315138;
  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      v18 = 0x80000001004BA5E0;
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v18 = 0xE900000000000074;
      v4 = 0x754F2064656D6954;
      goto LABEL_15;
    }

LABEL_14:
    v18 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v18 = 0xEE00646574736575;
    v4 = 0x7165522072657355;
    goto LABEL_15;
  }

  if (a1 == 3)
  {
    v18 = 0xEC0000006572756CLL;
    v4 = 0x6961462070696843;
    goto LABEL_15;
  }

  if (a1 != 4)
  {
    goto LABEL_14;
  }

  v18 = 0x80000001004BA540;
  v4 = 0xD000000000000018;
LABEL_15:
  v19 = sub_100002320(v4, v18, &v27);

  *(v16 + 4) = v19;
  _os_log_impl(&_mh_execute_header, v13, v14, "#### Terminated Reason:%s", v16, 0xCu);
  sub_100002A00(v17);

  (*(v9 + 8))(v12, v25);
LABEL_16:
  swift_unknownObjectWeakAssign();
  *(v2 + qword_100598D18) = 0;
  result = sub_1003E6480();
  v21 = *(v2 + qword_100598D08);
  if (v21)
  {
    v22 = *(v2 + qword_100598D08 + 8);
    sub_1003AE074(0, v26, v7);
    v23 = type metadata accessor for WAError.ErrorCode();
    (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
    sub_10001F89C(v21);
    v21(0, v7);
    sub_100010520(v21);
    return sub_1003E8ED4(v7, type metadata accessor for sessionStatus);
  }

  return result;
}

void sub_1003DAE14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DAA3C(a3);
}

uint64_t sub_1003DAE68(uint64_t a1)
{
  v3 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakAssign();
  *(v1 + qword_100598D18) = 0;
  result = sub_1003E6480();
  v7 = *(v1 + qword_100598D08);
  if (v7)
  {
    v8 = *(v1 + qword_100598D08 + 8);
    sub_1003ADFE4(a1, v5);
    v9 = type metadata accessor for WAError.ErrorCode();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    sub_10001F89C(v7);
    v7(0, v5);
    sub_100010520(v7);
    return sub_1003E8ED4(v5, type metadata accessor for sessionStatus);
  }

  return result;
}

void sub_1003DAFA4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DAE68(a3);
}

uint64_t sub_1003DAFF8(void *a1)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = v6;
    v16 = v15;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v16 = 136315138;
    v17 = [v12 serviceName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v7;
    v19 = v18;
    v21 = v20;

    v22 = sub_100002320(v19, v21, &v38);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "#### Peer service %s", v16, 0xCu);
    sub_100002A00(v34);

    v6 = v36;

    (*(v8 + 8))(v11, v35);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v23 = [v12 signature];
  v24 = qword_100598D20;
  swift_beginAccess();
  v25 = v12;
  v26 = *(v2 + v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v2 + v24);
  *(v2 + v24) = 0x8000000000000000;
  sub_1003E2EB8(v25, v23, isUniquelyReferenced_nonNull_native);
  *(v2 + v24) = v37;
  swift_endAccess();
  result = sub_1003DA13C();
  v29 = v2 + qword_100598D08;
  v30 = *(v2 + qword_100598D08);
  if (v30)
  {
    v31 = *(v29 + 8);
    v32 = type metadata accessor for WAError.ErrorCode();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    sub_10001F89C(v30);
    v30(v25, v6);
    sub_100010520(v30);
    return sub_1003E8ED4(v6, type metadata accessor for sessionStatus);
  }

  return result;
}

void sub_1003DB380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003DAFF8(v4);
}

void sub_1003DB3E8(int a1, void *a2)
{
  v69 = a1;
  v3 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Logger();
  v5 = *(v68 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v61 - v8;
  v65 = &qword_1004B4E88[7];
  Logger.init(subsystem:category:)();
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v71 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v10;
    *v15 = v10;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "#### Lost Peer %@", v14, 0xCu);
    sub_100016290(v15, &qword_10058B780, &qword_100480AC0);
  }

  v17 = *(v5 + 8);
  v66 = v5 + 8;
  v64 = v17;
  v17(v9, v68);
  v18 = qword_100598D20;
  v19 = v74;
  swift_beginAccess();
  v20 = *(v19 + v18);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v67 = qword_100598D20;
  v25 = (v22 + 63) >> 6;
  v62 = enum case for WAError.ErrorCode.error(_:);
  v73 = v20;

  v26 = 0;
  v27 = &unk_100588000;
  *&v28 = 138412290;
  v61 = v28;
  v29 = v69;
  v30 = v71;
  while (v24)
  {
LABEL_14:
    v32 = (v26 << 9) | (8 * __clz(__rbit64(v24)));
    v33 = *(v73 + 56);
    v72 = *(*(v73 + 48) + v32);
    v34 = *(v33 + v32);
    if ([v34 v27[172]] == v29)
    {
      sub_100018AB4(0, &qword_100599470, NSObject_ptr);
      v35 = [v34 publisherAddress];
      v36 = static NSObject.== infix(_:_:)();

      if (v36)
      {
        Logger.init(subsystem:category:)();
        v37 = v30;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = v61;
          *(v40 + 4) = v37;
          *v41 = v71;
          v42 = v37;
          _os_log_impl(&_mh_execute_header, v38, v39, "#### Removing result for Lost Peer %@", v40, 0xCu);
          sub_100016290(v41, &qword_10058B780, &qword_100480AC0);
          v27 = &unk_100588000;
        }

        v64(v70, v68);
        v43 = *(v74 + qword_100598D08);
        if (v43)
        {
          v44 = *(v74 + qword_100598D08 + 8);
          v45 = type metadata accessor for WAError.ErrorCode();
          v46 = *(v45 - 8);
          v47 = v63;
          (*(v46 + 104))(v63, v62, v45);
          (*(v46 + 56))(v47, 0, 1, v45);
          v48 = v34;
          sub_10001F89C(v43);
          v43(v34, v47);

          sub_100010520(v43);
          v49 = v47;
          v27 = &unk_100588000;
          sub_1003E8ED4(v49, type metadata accessor for sessionStatus);
        }

        v50 = v74;
        v51 = v67;
        swift_beginAccess();
        v52 = *(v50 + v51);
        v53 = sub_100085268(v72);
        v29 = v69;
        if (v54)
        {
          v55 = v53;
          v56 = v74;
          v57 = v67;
          v58 = *(v74 + v67);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = *(v56 + v57);
          v75 = v60;
          *(v56 + v57) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10046E0EC();
            v60 = v75;
          }

          sub_100477108(v55, v60);
          *(v74 + v57) = v60;
          v27 = &unk_100588000;
        }

        swift_endAccess();
        sub_1003DA13C();
        v30 = v71;
      }
    }

    v24 &= v24 - 1;
  }

  while (1)
  {
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v31 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v31);
    ++v26;
    if (v24)
    {
      v26 = v31;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1003DBA50(void *a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_1003DB3E8(a3, v6);
}

void sub_1003DBAC0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v12 = a1;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_1000124C8(v9, v11);
}

char *sub_1003DBB7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v55 = a7;
  v56 = a8;
  v57 = a2;
  v46 = a5;
  v47 = a6;
  v45 = a4;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v51 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin();
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  __chkstk_darwin();
  v44 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = v17;
  v48 = v16;
  v49 = v17;
  v19 = *(v17 + 64);
  __chkstk_darwin();
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v22 = (v8 + qword_100598DB8);
  *v22 = 0;
  v22[1] = 0;
  v23 = qword_100598DC0;
  *(v8 + qword_100598DC0) = 0;
  *(v8 + qword_100598DC8[0]) = 0;
  swift_weakAssign();
  v24 = *(v8 + v23);
  *(v8 + v23) = a3;
  v25 = a3;

  (*(v18 + 16))(v21, v57, v16);

  v27 = sub_1003E7C40(v26, v21);

  v28 = &v27[qword_100598DB8];
  v29 = *&v27[qword_100598DB8];
  v30 = *&v27[qword_100598DB8 + 8];
  v32 = v55;
  v31 = v56;
  *v28 = v55;
  *(v28 + 1) = v31;
  v33 = v27;
  sub_10001F89C(v32);
  sub_100010520(v29);
  v34 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = a1;
  v37 = v45;
  v36 = v46;
  *(v35 + 32) = v25;
  *(v35 + 40) = v37;
  *(v35 + 48) = v36;
  BYTE4(v36) = BYTE4(v47);
  *(v35 + 56) = v47;
  *(v35 + 60) = BYTE4(v36) & 1;
  aBlock[4] = sub_1003E9DE0;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100579300;
  v38 = _Block_copy(aBlock);
  v47 = v25;

  v39 = v34;
  v40 = v44;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  v41 = v50;
  v42 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);

  sub_100010520(v55);

  (*(v49 + 8))(v57, v48);
  (*(v54 + 8))(v41, v42);
  (*(v52 + 8))(v40, v53);

  return v33;
}

void sub_1003DC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a8)
{
  v16 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v17 = *(a2 + 24);
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v19 = a7(a3, a1, a4, a5, a6 | ((HIDWORD(a6) & 1) << 32));

  v18 = *a8;
  swift_unknownObjectWeakAssign();
}

void sub_1003DC2FC()
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + qword_100598DB8 + 8);
  sub_100010520(*(v0 + qword_100598DB8));
  v2 = *(v0 + qword_100598DC0);
}

void sub_1003DC3A8(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();
  v2 = *(a1 + qword_100598DB8 + 8);
  sub_100010520(*(a1 + qword_100598DB8));
  v3 = *(a1 + qword_100598DC0);
}

uint64_t sub_1003DC428(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&qword_100597588, &qword_1004B1870) - 8) + 64);
  __chkstk_darwin();
  v9 = &v32 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v34 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = WiFiP2PError.description.getter(a1);
    v23 = sub_100002320(v21, v22, &v35);
    v32 = v10;
    v24 = v2;
    v25 = v6;
    v26 = v23;

    *(v19 + 4) = v26;
    v6 = v25;
    v2 = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "#### Failed to Start with error: %s", v19, 0xCu);
    sub_100002A00(v20);

    (*(v33 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  swift_unknownObjectWeakAssign();
  *(v2 + qword_100598DC8[0]) = 0;
  result = sub_1003E6224();
  v28 = *(v2 + qword_100598DB8);
  if (v28)
  {
    v29 = *(v2 + qword_100598DB8 + 8);
    v30 = type metadata accessor for ListenInBoundConnection(0);
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    sub_1003ADFE4(v34, v6);
    v31 = type metadata accessor for WAError.ErrorCode();
    (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
    sub_10001F89C(v28);
    v28(v9, v6);
    sub_100010520(v28);
    sub_1003E8ED4(v6, type metadata accessor for sessionStatus);
    return sub_100016290(v9, &qword_100597588, &qword_1004B1870);
  }

  return result;
}

void sub_1003DC7F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DC428(a3);
}

uint64_t sub_1003DC84C(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000011;
  v5 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&qword_100597588, &qword_1004B1870) - 8) + 64);
  __chkstk_darwin();
  v10 = &v28 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v32 = a1;
  if (!v18)
  {

    (*(v12 + 8))(v15, v11);
    goto LABEL_16;
  }

  v29 = v11;
  v30 = v10;
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v33 = v20;
  *v19 = 136315138;
  v31 = v7;
  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      v21 = 0x80000001004BA5E0;
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v21 = 0xE900000000000074;
      v4 = 0x754F2064656D6954;
      goto LABEL_15;
    }

LABEL_14:
    v21 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v21 = 0xEE00646574736575;
    v4 = 0x7165522072657355;
    goto LABEL_15;
  }

  if (a1 == 3)
  {
    v21 = 0xEC0000006572756CLL;
    v4 = 0x6961462070696843;
    goto LABEL_15;
  }

  if (a1 != 4)
  {
    goto LABEL_14;
  }

  v21 = 0x80000001004BA540;
  v4 = 0xD000000000000018;
LABEL_15:
  v22 = sub_100002320(v4, v21, &v33);

  *(v19 + 4) = v22;
  _os_log_impl(&_mh_execute_header, v16, v17, "#### Publisher Terminated: %s", v19, 0xCu);
  sub_100002A00(v20);

  (*(v12 + 8))(v15, v29);
  v10 = v30;
  v7 = v31;
LABEL_16:
  swift_unknownObjectWeakAssign();
  *(v2 + qword_100598DC8[0]) = 0;
  result = sub_1003E6224();
  v24 = *(v2 + qword_100598DB8);
  if (v24)
  {
    v25 = *(v2 + qword_100598DB8 + 8);
    v26 = type metadata accessor for ListenInBoundConnection(0);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    sub_1003AE074(1u, v32, v7);
    v27 = type metadata accessor for WAError.ErrorCode();
    (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
    sub_10001F89C(v24);
    v24(v10, v7);
    sub_100010520(v24);
    sub_1003E8ED4(v7, type metadata accessor for sessionStatus);
    return sub_100016290(v10, &qword_100597588, &qword_1004B1870);
  }

  return result;
}

void sub_1003DCCDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DC84C(a3);
}

uint64_t sub_1003DCD30(void *a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = a1;
    sub_1002F9B10(a2, sub_1003E9E10, v6);
  }

  return result;
}

uint64_t sub_1003DCDDC(void *a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003B2DCC(a1, a2);
  }

  return result;
}

uint64_t sub_1003DCE54(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v14 = &v21 - v13;
  if (a6)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  v17 = a3;
  v18 = a5;
  v19 = a1;
  sub_1003E815C(v17, a5, v14, a7);

  return sub_100016290(v14, &qword_10058F4D0, &qword_100491AB0);
}

void *sub_1003DCFC0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WASubscribableService();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  __chkstk_darwin();
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&qword_100597588, &qword_1004B1870) - 8) + 64);
  __chkstk_darwin();
  v13 = &v42 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v19 = a1;
  v20 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v20, v46))
  {

    result = (*(v15 + 8))(v18, v14);
    goto LABEL_16;
  }

  v45 = v14;
  v43 = v2;
  v21 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v51 = v44;
  *v21 = 16777986;
  *(v21 + 4) = [v19 datapathID];

  *(v21 + 5) = 2080;
  v22 = [v19 initiatorDataAddress];
  v23 = a2;
  v24 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
  v26 = v25;

  v27 = v24;
  a2 = v23;
  v28 = sub_100002320(v27, v26, &v51);

  *(v21 + 7) = v28;
  *(v21 + 15) = 2080;
  if (v23 <= 1)
  {
    if (v23 == -1)
    {
      v29 = 0x80000001004BA5E0;
      v3 = v43;
      v30 = 0xD000000000000011;
      goto LABEL_15;
    }

    v3 = v43;
    if (a2 == 1)
    {
      v29 = 0xE900000000000074;
      v30 = 0x754F2064656D6954;
      goto LABEL_15;
    }

LABEL_14:
    v29 = 0xE700000000000000;
    v30 = 0x6E776F6E6B6E55;
    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v29 = 0xEE00646574736575;
    v30 = 0x7165522072657355;
    v3 = v43;
    goto LABEL_15;
  }

  v3 = v43;
  if (a2 == 3)
  {
    v29 = 0xEC0000006572756CLL;
    v30 = 0x6961462070696843;
    goto LABEL_15;
  }

  if (a2 != 4)
  {
    goto LABEL_14;
  }

  v29 = 0x80000001004BA540;
  v30 = 0xD000000000000018;
LABEL_15:
  v32 = sub_100002320(v30, v29, &v51);

  *(v21 + 17) = v32;
  _os_log_impl(&_mh_execute_header, v20, v46, "#### DataPath terminated With Peer: %hhu %s reason: %s", v21, 0x19u);
  swift_arrayDestroy();

  result = (*(v15 + 8))(v18, v45);
LABEL_16:
  v33 = *(v3 + qword_100598DB8);
  if (v33)
  {
    v34 = *(v3 + qword_100598DB8 + 8);
    sub_10001F89C(*(v3 + qword_100598DB8));
    v35 = [v19 initiatorDataAddress];
    v36 = [v19 datapathID];
    result = *(v3 + qword_100598DC0);
    if (result)
    {
      v37 = [result serviceName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v47;
      WASubscribableService.init(name:)();
      *v13 = v35;
      v13[8] = v36;
      v39 = type metadata accessor for ListenInBoundConnection(0);
      (*(v48 + 32))(&v13[*(v39 + 24)], v38, v49);
      *&v13[*(v39 + 28)] = 0;
      (*(*(v39 - 8) + 56))(v13, 0, 1, v39);
      v40 = v50;
      sub_1003AE074(2u, a2, v50);
      v41 = type metadata accessor for WAError.ErrorCode();
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
      v33(v13, v40);
      sub_100010520(v33);
      sub_1003E8ED4(v40, type metadata accessor for sessionStatus);
      return sub_100016290(v13, &qword_100597588, &qword_1004B1870);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003DD620(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1003DCFC0(v6, a4);
}

void sub_1003DD690(void *a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_1003E89D0(v10, v12, a4, v9);
  sub_1000124C8(v10, v12);
}

void sub_1003DD740(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1000124C8(v8, v10);
}

uint64_t sub_1003DD7D8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_100598E58);
  v4 = *(v2 + qword_100598E58 + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1003DD7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100598E68;
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_1005989E0, &qword_1004B28E0);
}

uint64_t sub_1003DD85C(uint64_t a1)
{
  v3 = qword_100598E68;
  swift_beginAccess();
  sub_1000B1B78(a1, v1 + v3, &qword_1005989E0, &qword_1004B28E0);
  return swift_endAccess();
}

uint64_t sub_1003DD92C(uint64_t a1)
{
  v2 = *(v1 + qword_100598E90);
  *(v1 + qword_100598E90) = a1;
  return _objc_release_x1();
}

id sub_1003DD950(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v44 = a3;
  v36 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v15 = (v6 + qword_100598E58);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v6 + qword_100598E60);
  *v16 = 0;
  v16[1] = 0;
  v17 = qword_100598E68;
  v18 = type metadata accessor for NWEndpoint();
  (*(*(v18 - 8) + 56))(v6 + v17, 1, 1, v18);
  *(v6 + qword_100598E78) = _swiftEmptyArrayStorage;
  *(v6 + qword_100598E80) = 0;
  *(v6 + qword_100598E88) = 0;
  v19 = qword_100598E90;
  *(v6 + qword_100598E90) = 0;
  *(v6 + qword_100598E98) = 0;
  *(v6 + qword_100598EA0) = 0;
  *(v6 + qword_100598E70) = 0;
  *v16 = a5;
  v16[1] = a6;
  *(v6 + v19) = 0;
  v40 = v11;
  v20 = *(v11 + 16);
  v43 = v10;
  v21 = v10;
  v22 = v36;
  v23 = v37;
  v20(v14, v44, v21);
  v39 = a5;
  v41 = a6;
  sub_10001F89C(a5);
  v24 = sub_1003E7C40(a2, v14);
  v42 = a2;
  v25 = *(a2 + 24);
  swift_unownedRetainStrong();
  v26 = v24;
  sub_10040CAE8();

  v27 = *(v22 + 72);
  v28 = *(v22 + 80);
  v29 = *(v22 + 64);

  v45 = 0;
  v30 = v27;
  v31 = v38;
  v32 = sub_1003654A4(v23, v26, v30, v28, v29);
  if (v31)
  {

    sub_100010520(v39);

    (*(v40 + 8))(v44, v43);
  }

  else
  {
    v33 = v32;

    sub_100010520(v39);

    (*(v40 + 8))(v44, v43);
    swift_unknownObjectWeakAssign();
  }

  return v26;
}

void sub_1003DDC80()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + qword_100598E58 + 8);

  v2 = *(v0 + qword_100598E60 + 8);
  sub_100010520(*(v0 + qword_100598E60));
  sub_100016290(v0 + qword_100598E68, &qword_1005989E0, &qword_1004B28E0);
  v3 = *(v0 + qword_100598E78);

  v4 = *(v0 + qword_100598EA0);
}

id sub_1003DDD48(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = *v2;
  v4 = swift_isaMask;
  *(v2 + *a1) = 0;
  v5 = a2(0, *((v4 & v3) + 0xA0), *((v4 & v3) + 0xA8));
  v7.receiver = v2;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1003DDDF0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = *(a1 + qword_100598E58 + 8);

  v3 = *(a1 + qword_100598E60 + 8);
  sub_100010520(*(a1 + qword_100598E60));
  sub_100016290(a1 + qword_100598E68, &qword_1005989E0, &qword_1004B28E0);
  v4 = *(a1 + qword_100598E78);

  v5 = *(a1 + qword_100598EA0);
}

uint64_t sub_1003DDEB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v31 - v12;
  v14 = *(v1 + qword_100598E90);
  if (v14 && *(v1 + qword_100598E80))
  {
    v31 = v11;
    v15 = v14;
    WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    NWEndpoint.Host.init(_:)();
    v16 = *(v2 + qword_100598E80);
    NWEndpoint.Port.init(rawValue:)();
    v17 = type metadata accessor for NWEndpoint.Port();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v6, 1, v17);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v20 = sub_10005DC58(&qword_100599458, &qword_1004B2DA0);
      (*(v18 + 32))(&v13[*(v20 + 48)], v6, v17);
      (*(v31 + 104))(v13, enum case for NWEndpoint.hostPort(_:), v7);
      (*(v31 + 16))(v10, v13, v7);
      v21 = qword_100598E78;
      swift_beginAccess();
      v22 = *(v2 + v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v21) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_1003A7D74(0, v22[2] + 1, 1, v22);
        *(v2 + v21) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      v26 = v31;
      if (v25 >= v24 >> 1)
      {
        v30 = sub_1003A7D74(v24 > 1, v25 + 1, 1, v22);
        v26 = v31;
        v22 = v30;
      }

      v22[2] = v25 + 1;
      v27 = v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25;
      v28 = *(v26 + 32);
      v28(v27, v10, v7);
      *(v2 + v21) = v22;
      swift_endAccess();

      v28(a1, v13, v7);
      return (*(v31 + 56))(a1, 0, 1, v7);
    }
  }

  else
  {
    v29 = *(v11 + 56);

    return v29(a1, 1, 1, v7);
  }

  return result;
}

uint64_t sub_1003DE264(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v63 - v7;
  __chkstk_darwin();
  v10 = &v63 - v9;
  __chkstk_darwin();
  v12 = &v63 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Logger.init(subsystem:category:)();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "No active datapath available for configuration validation", v46, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v64 = v3;
  v65 = Strong;
  v14 = [a1 discoveryResult];
  v15 = [v14 serviceName];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    Logger.init(subsystem:category:)();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Invalid configuration: empty service name", v49, 2u);
    }

    (*(v64 + 8))(v8, v2);
    return 0;
  }

  v63 = v2;
  v20 = [a1 discoveryResult];
  v21 = [v20 serviceName];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [a1 discoveryResult];
  LOBYTE(v21) = [v25 publishID];

  v26 = [a1 discoveryResult];
  v27 = [v26 publisherAddress];

  v28 = WiFiMACAddress.wifiAddress.getter();
  v29 = v65;
  LOBYTE(v27) = sub_10032DA28(v22, v24, v21, v28 & 0xFFFFFFFFFFFFLL);

  if ((v27 & 1) == 0)
  {
    Logger.init(subsystem:category:)();
    v50 = a1;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v64;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66 = v56;
      *v55 = 136315138;
      v57 = [v50 discoveryResult];
      v58 = [v57 serviceName];

      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_100002320(v59, v61, &v66);

      *(v55 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v51, v52, "Datapath configuration validation failed for service: %s", v55, 0xCu);
      sub_100002A00(v56);
    }

    (*(v54 + 8))(v10, v63);
    return 0;
  }

  Logger.init(subsystem:category:)();
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v64;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v66 = v36;
    *v35 = 136315138;
    v37 = [v30 discoveryResult];
    v38 = [v37 serviceName];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_100002320(v39, v41, &v66);

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "Datapath configuration validation successful for service: %s", v35, 0xCu);
    sub_100002A00(v36);
  }

  (*(v34 + 8))(v12, v63);
  return 1;
}

void sub_1003DE944(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = swift_isaMask;
  v36 = type metadata accessor for Logger();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*((v9 & v8) + 0xA8) + 8);
  v15 = *((v9 & v8) + 0xA0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 176))(a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = (v4 + qword_100598E58);
  v20 = *(v4 + qword_100598E58 + 8);
  *v19 = v18;
  v19[1] = v21;

  *(v4 + qword_100598E98) = 1;
  sub_1003E6710();
  *(v4 + qword_100598E70) = a1;
  Logger.init(subsystem:category:)();
  v22 = v4;
  v23 = a2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v24, v25))
  {

    goto LABEL_5;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v37 = v28;
  *v26 = 136315394;
  v29 = (v22 + qword_100598E58);
  v30 = *(v22 + qword_100598E58 + 8);
  if (v30)
  {
    v31 = v28;
    v32 = *v29;
    v33 = v29[1];

    v34 = sub_100002320(v32, v30, &v37);

    *(v26 + 4) = v34;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v23;
    v35 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "#### DataPath Started on %s with address %@", v26, 0x16u);
    sub_100016290(v27, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v31);

LABEL_5:
    (*(v10 + 8))(v13, v36);
    return;
  }

  __break(1u);
}

void sub_1003DEC98(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = a1;
  sub_1003DE944(a3, v8, a5);
}

uint64_t sub_1003DED10(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&unk_100599448, &unk_1004B2D90) - 8) + 64);
  __chkstk_darwin();
  v13 = &v26 - v12;
  swift_unknownObjectWeakAssign();
  *(v1 + qword_100598E98) = 0;
  sub_1003E6710();
  v14 = *(v1 + qword_100598E60);
  if (v14)
  {
    v15 = *(v1 + qword_100598E60 + 8);
    v16 = type metadata accessor for ResolvedSession(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_1003ADFE4(a1, v10);
    v17 = type metadata accessor for WAError.ErrorCode();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    sub_10001F89C(v14);
    v14(v13, v10);
    sub_100010520(v14);
    sub_1003E8ED4(v10, type metadata accessor for sessionStatus);
    sub_100016290(v13, &unk_100599448, &unk_1004B2D90);
  }

  Logger.init(subsystem:category:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    v22 = WiFiP2PError.description.getter(a1);
    v24 = sub_100002320(v22, v23, &v27);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "#### DataPath start failed %s", v20, 0xCu);
    sub_100002A00(v21);
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_1003DF098(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DED10(a3);
}

void sub_1003DF0EC(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_10005DC58(&unk_100599448, &unk_1004B2D90) - 8) + 64);
  __chkstk_darwin();
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v38 - v7;
  v8 = *(*(sub_10005DC58(&qword_1005989E0, &qword_1004B28E0) - 8) + 64);
  __chkstk_darwin();
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v38 - v10;
  __chkstk_darwin();
  v13 = &v38 - v12;
  v14 = qword_100598E68;
  swift_beginAccess();
  sub_100012400(v2 + v14, v13, &qword_1005989E0, &qword_1004B28E0);
  v15 = type metadata accessor for NWEndpoint();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  sub_100016290(v13, &qword_1005989E0, &qword_1004B28E0);
  v19 = v2 + qword_100598E60;
  v20 = *(v2 + qword_100598E60);
  if (v18 == 1)
  {
    if (v20)
    {
      v21 = *(v19 + 8);
      v22 = type metadata accessor for ResolvedSession(0);
      v23 = v40;
      (*(*(v22 - 8) + 56))(v40, 1, 1, v22);
      v24 = v43;
      sub_1003AE074(2u, v42, v43);
      v25 = type metadata accessor for WAError.ErrorCode();
      (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
      sub_10001F89C(v20);
      v20(v23, v24);
      sub_100010520(v20);
      sub_1003E8ED4(v24, type metadata accessor for sessionStatus);
      sub_100016290(v23, &unk_100599448, &unk_1004B2D90);
    }

    goto LABEL_11;
  }

  if (!v20)
  {
LABEL_10:
    v37 = v41;
    (*(v16 + 56))(v41, 1, 1, v15);
    sub_1003DD85C(v37);
LABEL_11:
    swift_unknownObjectWeakAssign();
    *(v2 + qword_100598E98) = 0;
    sub_1003E6710();
    return;
  }

  v26 = *(v19 + 8);
  v27 = qword_100598E68;
  swift_beginAccess();
  sub_100012400(v2 + v27, v11, &qword_1005989E0, &qword_1004B28E0);
  if (v17(v11, 1, v15) != 1)
  {
    v28 = *(v2 + qword_100598E70);
    v29 = *(v2 + qword_100598E90);
    if (v29)
    {
      sub_10001F89C(v20);
      v30 = v29;
    }

    else
    {
      v31 = objc_opt_self();
      sub_10001F89C(v20);
      v30 = [v31 zeroAddress];
      v29 = 0;
    }

    v32 = v39;
    (*(v16 + 32))(v39, v11, v15);
    v33 = type metadata accessor for ResolvedSession(0);
    *(v32 + v33[5]) = v28;
    *(v32 + v33[6]) = 0;
    *(v32 + v33[7]) = v30;
    (*(*(v33 - 1) + 56))(v32, 0, 1, v33);
    v34 = v43;
    sub_1003AE074(2u, v42, v43);
    v35 = type metadata accessor for WAError.ErrorCode();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v29;
    v20(v32, v34);
    sub_100010520(v20);
    sub_1003E8ED4(v34, type metadata accessor for sessionStatus);
    sub_100016290(v32, &unk_100599448, &unk_1004B2D90);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1003DF68C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1003DF0EC(a3);
}

uint64_t sub_1003DF6F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v81 = a4;
  v8 = type metadata accessor for Logger();
  v82 = *(v8 - 8);
  v9 = *(v82 + 64);
  __chkstk_darwin();
  v11 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v79 = &v71[-v12];
  v13 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v15 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(*(sub_10005DC58(&unk_100599448, &unk_1004B2D90) - 8) + 64);
  __chkstk_darwin();
  v78 = &v71[-v17];
  v18 = *(*(sub_10005DC58(&qword_1005989E0, &qword_1004B28E0) - 8) + 64);
  __chkstk_darwin();
  v20 = &v71[-v19];
  v21 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v23 = &v71[-v22];
  v80 = type metadata accessor for NWEndpoint();
  v24 = *(v80 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v27 = &v71[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 && (v28 = [a2 servicePort], *(v5 + qword_100598E58 + 8)))
  {
    v74 = v15;
    v76 = a2;
    v77 = v8;
    *(v5 + qword_100598E88) = v81;
    v29 = v28;
    WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    NWEndpoint.Host.init(_:)();
    NWEndpoint.Port.init(rawValue:)();
    v30 = type metadata accessor for NWEndpoint.Port();
    v31 = a1;
    v32 = *(v30 - 8);
    result = (*(v32 + 48))(v23, 1, v30);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v34 = sub_10005DC58(&qword_100599458, &qword_1004B2DA0);
      (*(v32 + 32))(&v27[*(v34 + 48)], v23, v30);
      v35 = *(v24 + 104);
      v36 = v24;
      v37 = v80;
      v35(v27, enum case for NWEndpoint.hostPort(_:), v80);
      v38 = *(v36 + 16);
      v38(v20, v27, v37);
      v75 = v36;
      (*(v36 + 56))(v20, 0, 1, v37);
      sub_1003DD85C(v20);
      v39 = *(v5 + qword_100598E90);
      *(v5 + qword_100598E90) = v31;
      v73 = v31;
      v40 = v31;

      v72 = v29;
      *(v5 + qword_100598E80) = v29;
      v41 = *(v5 + qword_100598E60);
      if (v41)
      {
        v42 = *(v5 + qword_100598E60 + 8);
        v43 = v78;
        v38(v78, v27, v37);
        v44 = *(v5 + qword_100598E70);
        v45 = type metadata accessor for ResolvedSession(0);
        *(v43 + v45[5]) = v44;
        *(v43 + v45[6]) = v81;
        *(v43 + v45[7]) = v40;
        (*(*(v45 - 1) + 56))(v43, 0, 1, v45);
        v46 = type metadata accessor for WAError.ErrorCode();
        v47 = v74;
        (*(*(v46 - 8) + 56))(v74, 1, 1, v46);
        v48 = v40;
        sub_10001F89C(v41);
        v41(v43, v47);
        sub_100010520(v41);
        sub_1003E8ED4(v47, type metadata accessor for sessionStatus);
        sub_100016290(v43, &unk_100599448, &unk_1004B2D90);
      }

      v49 = v79;
      Logger.init(subsystem:category:)();
      v50 = v40;
      v51 = v76;
      v52 = v76;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v83 = v51;
        v84 = v57;
        *v55 = 138413058;
        *(v55 + 4) = v50;
        *v56 = v73;
        *(v55 + 12) = 2048;
        *(v55 + 14) = v81;
        *(v55 + 22) = 512;
        *(v55 + 24) = v72;
        *(v55 + 26) = 2080;
        v58 = v50;
        v59 = v52;
        sub_10005DC58(&qword_100599460, &qword_1004B2DA8);
        v60 = String.init<A>(describing:)();
        v62 = v49;
        v63 = sub_100002320(v60, v61, &v84);

        *(v55 + 28) = v63;
        _os_log_impl(&_mh_execute_header, v53, v54, "#### Data Confirmed With Peer: %@[deviceID %llu] port: %hu, serviceSpecificInfo: %s", v55, 0x24u);
        sub_100016290(v56, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v57);

        (*(v82 + 8))(v62, v77);
      }

      else
      {

        (*(v82 + 8))(v49, v77);
      }

      return (*(v75 + 8))(v27, v80);
    }
  }

  else
  {
    Logger.init(subsystem:category:)();
    v64 = a1;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = v8;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v64;
      *v69 = v64;
      v70 = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "#### Data Confirmed With Peer %@ but unable to fetch servicePort info(nil serviceSpecificInfo)", v68, 0xCu);
      sub_100016290(v69, &qword_10058B780, &qword_100480AC0);

      v8 = v67;
    }

    return (*(v82 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1003DFF7C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v20 - v12;
  if (a5)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_1003DF6F0(v16, a4, v13, a6);

  return sub_100016290(v13, &qword_10058F4D0, &qword_100491AB0);
}

void sub_1003E00E8(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);

  _Block_release(v4);
}

void sub_1003E0128(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003E0114(v4);
}

void *sub_1003E0190(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Paired device Remove: %@", v12, 0xCu);
    sub_100016290(v13, &qword_10058B780, &qword_100480AC0);
  }

  (*(v5 + 8))(v8, v4);
  v15 = *(v2 + qword_100598F30);
  return sub_1003B2BC8(*(v2 + qword_100598F38), *(v2 + qword_100598F38 + 8), [v9 deviceID]);
}

void sub_1003E039C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003E0190(v4);
}

uint64_t sub_1003E0418(void *a1, const char *a2, const char *a3)
{
  v6 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v6;
    v17 = a3;
    v18 = v16;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v13;
    *v19 = v13;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, a2, v18, 0xCu);
    sub_100016290(v19, &qword_10058B780, &qword_100480AC0);

    a3 = v17;
    v6 = v23;
  }

  (*(v9 + 8))(v12, v8);
  return sub_1003E7784(*(v6 + qword_100598F38), *(v6 + qword_100598F38 + 8), [v13 deviceID], a3);
}

void sub_1003E0634(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003E0404(v4);
}

id sub_1003E0710(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003E0788(uint64_t a1)
{
  v2 = *(a1 + qword_100598F30);

  v3 = *(a1 + qword_100598F38 + 8);

  v4 = qword_100598F40;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

id sub_1003E0818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1003E08F4(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1004B2EBA[a1]);
  v4 = Hasher._finalize()();

  return sub_1003E0BEC(a1, v4);
}

unint64_t sub_1003E096C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1003E0D94(a1, v4, &qword_1005974C0, NSNumber_ptr);
}

unint64_t sub_1003E09E8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1003E0D94(a1, v4, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
}

unint64_t sub_1003E0A38(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1003E0E60(a1, v4);
}

unint64_t sub_1003E0A7C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1003E0F28(a1, v4);
}

unint64_t sub_1003E0B10(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(HIBYTE(a3));
  v8 = Hasher._finalize()();

  return sub_1003E102C(a1, a2, a3 & 0xFF01, v8);
}

unint64_t sub_1003E0BEC(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (byte_1004B2EBA[*(*(v2 + 48) + result)] == byte_1004B2EBA[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003E0C6C(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*v7 != a1 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != (0x801004u >> (8 * *(v7 + 4))))
      {
        goto LABEL_4;
      }

      v8 = *(v7 + 5);
      if (v8 <= 3)
      {
        if (v8 == 2)
        {
          if (BYTE5(a1) == 2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 3)
        {
          if (BYTE5(a1) == 3)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else
      {
        switch(v8)
        {
          case 4:
            if (BYTE5(a1) == 4)
            {
              return result;
            }

            goto LABEL_4;
          case 5:
            if (BYTE5(a1) == 5)
            {
              return result;
            }

            goto LABEL_4;
          case 6:
            if (BYTE5(a1) == 6)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      if (BYTE5(a1) - 2 >= 5 && (((a1 >> 40) ^ v8) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003E0D94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100018AB4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1003E0E60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1003E9D30(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1003E9D8C(v8);
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

unint64_t sub_1003E0F28(uint64_t a1, uint64_t a2)
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

unint64_t sub_1003E102C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v10 = ~v5;
    do
    {
      v11 = *(v4 + 48) + 24 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16) | (*(v11 + 17) << 8);

      LOBYTE(v12) = static DNSRecords.Identifier.== infix(_:_:)(v12, v13, v14, a1, a2, a3 & 0xFF01);

      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1003E111C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = static Hasher._hash(seed:_:)();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003E12F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100046A70(a4 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_10046A6CC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10030F6F8(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_100046A70(a4 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v19)
  {
    v24 = *(*v6 + 56) + 24 * v13;
    v25 = *(v24 + 16);
    v28 = *v24;
    v29 = v25;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;
    return sub_100016290(&v28, &qword_100599440, &qword_1004B3620);
  }

  else
  {
    v27 = *v6;

    return sub_1002DD414(v13, a4 & 0xFFFFFFFFFFFFLL, a1 & 0xFFFFFFFFFFFFFFLL, a2, a3, v27);
  }
}

uint64_t sub_1003E1524(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v23 = *v9;
    v14 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v9;
  if (v20)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v14);
    *(v26 + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2 & 0xFFFFFFFFFFFFLL, a1, v25);
  }
}

uint64_t sub_1003E16CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANInternetSharingStatistics.Requester();
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANInternetSharingStatistics.Requester);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046AA20();
    goto LABEL_7;
  }

  sub_10030FDBC(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DD494(v10, a2 & 0xFFFFFFFFFFFFFFLL, a1, v16);
}

uint64_t sub_1003E1820(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000102E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10046AF38();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1003102E4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000102E8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 80 * v11;

    return sub_1003E9CD4(a1, v23);
  }

  else
  {
    sub_1002DD4C0(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1003E1968(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_10000B448(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_10046B0EC();
      result = v16;
      goto LABEL_8;
    }

    sub_100011258(v13, a3 & 1);
    v17 = *v4;
    result = sub_10000B448(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for XPCSession(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {
    sub_1002DD524(result, a2, a1, v19);

    return a2;
  }

  return result;
}

uint64_t sub_1003E1AC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v8 = v7;
  v37 = a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_10002A440(a3);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v34();
      goto LABEL_9;
    }

    v35();
    v25 = *v8;
    v26 = sub_10002A440(a3);
    if ((v23 & 1) == (v27 & 1))
    {
      v19 = v26;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v28 = v37;
  v29 = a1;
  v30 = *v8;
  if (v23)
  {
    v31 = (*(v30 + 56) + 16 * v19);
    v32 = v31[1];
    *v31 = v29;
    v31[1] = v28;
  }

  else
  {
    (*(v13 + 16))(v16, a3, v12);
    return v36(v19, v16, v29, v28, v30);
  }
}

uint64_t sub_1003E1CC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_10046B8B8();
      result = v17;
      goto LABEL_8;
    }

    sub_100310D18(v14, a3 & 1);
    v18 = *v4;
    result = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
  }

  else
  {

    return sub_1002DD3A0(result, a2 & 0xFFFFFFFFFFFFLL, a1, v20);
  }

  return result;
}

uint64_t sub_1003E1E24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000102E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10046BA1C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100311004(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000102E8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1001A9CE8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1003E1F6C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1003E08F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANAttribute(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANAttribute);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046BF70();
    goto LABEL_7;
  }

  sub_1003118E4(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1003E08F4(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DD654(v10, a2, a1, v16);
}

uint64_t sub_1003E20C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANPeer(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANPeer);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046C304();
    goto LABEL_7;
  }

  sub_100311EF4(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_100046A70(a2 & 0xFFFFFFFFFFFFLL, NANClusterChangeEvent.hash(into:), sub_100041EB4);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DD728(v10, a2 & 0xFFFFFFFFFFFFLL, a1, v16);
}

uint64_t sub_1003E2264(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046C560();
    goto LABEL_7;
  }

  sub_1003122C8(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_10007CD94(a2 & 0xFFFFFFFFFFFFFFLL);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DD754(v10, a2 & 0xFFFFFFFFFFFFFFLL, a1, v16);
}

unint64_t sub_1003E23B8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000102E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_10046CFA0();
      result = v19;
      goto LABEL_8;
    }

    sub_10031315C(v16, a4 & 1);
    v20 = *v5;
    result = sub_1000102E8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
  }

  else
  {
    sub_1002DD9F4(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_1003E24E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100085268(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for BrowseEndpoints(0);
      return sub_100046D08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for BrowseEndpoints);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10046DB78();
    goto LABEL_7;
  }

  sub_100313F88(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_100085268(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1002DDA3C(v10, a2, a1, v16);
}

uint64_t sub_1003E263C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_10002A440(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v33();
      goto LABEL_9;
    }

    v34();
    v24 = *v7;
    v25 = sub_10002A440(a2);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = a1;
  v28 = *v7;
  if (v22)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v18);
    *(v29 + 8 * v18) = v27;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    return v35(v18, v15, v27, v28);
  }
}

unint64_t sub_1003E282C(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10007CCC8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_10046D45C();
      result = v17;
      goto LABEL_8;
    }

    sub_100313460(v14, a3 & 1);
    v18 = *v4;
    result = sub_10007CCC8(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + result) = a1 & 1;
  }

  else
  {

    return sub_1002DDB9C(result, a2, a1 & 1, v20);
  }

  return result;
}

uint64_t sub_1003E293C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10002A440(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for ListenInBoundConnection(0);
      return sub_100046D08(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for ListenInBoundConnection);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_10046D130();
    goto LABEL_7;
  }

  sub_100313424(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_10002A440(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1002DDBE4(v15, v12, a1, v21);
}

uint64_t sub_1003E2B10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10002A440(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for ConnectedEndpoints(0);
      return sub_100046D08(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for ConnectedEndpoints);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_10046DDAC();
    goto LABEL_7;
  }

  sub_1003142D0(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_10002A440(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1002DDC10(v15, v12, a1, v21);
}

uint64_t sub_1003E2CE4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10002A440(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for ConnectedSession(0);
      return sub_100046D08(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for ConnectedSession);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_10046D5AC();
    goto LABEL_7;
  }

  sub_1003136D4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_10002A440(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1002DDD30(v15, v12, a1, v21);
}

unint64_t sub_1003E2EB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100085268(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10046E0EC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100314320(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_100085268(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;

    return _objc_release_x1();
  }

  return sub_1002E01C8(v9, a2, a1, v20);
}

uint64_t sub_1003E3118(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_100085268(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v23 = *v9;
    v14 = sub_100085268(a2);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v9;
  if (v20)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v14);
    *(v26 + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v25);
  }
}

uint64_t sub_1003E3270(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1003E3364;

  return v6(v2 + 32);
}

uint64_t sub_1003E3364()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1003E3478(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1003E356C;

  return v6(v2 + 32);
}

uint64_t sub_1003E356C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t *sub_1003E3680(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[4] = &_swiftEmptyDictionarySingleton;
  v1[5] = &_swiftEmptyDictionarySingleton;
  v1[6] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for UUID();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for NANAgentHandler.Client();
  sub_10001ADA4(&unk_10058BB00, &type metadata accessor for UUID);
  v1[7] = Dictionary.init()();
  v1[8] = &_swiftEmptyDictionarySingleton;
  v1[9] = &_swiftEmptyDictionarySingleton;
  v1[10] = &_swiftEmptyDictionarySingleton;
  v1[11] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for NANAgentHandler.ActiveClient();
  v1[12] = 0;
  v1[13] = 0;
  v1[14] = Dictionary.init()();
  v1[3] = a1;
  swift_unownedRetain();
  return v1;
}

uint64_t *sub_1003E37A8(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for NANAgentHandler();
  swift_allocObject();
  return sub_1003E3680(a1);
}

uint64_t sub_1003E37EC(uint64_t a1, void *a2)
{
  v35 = a2;
  v34 = sub_10005DC58(&qword_1005994A8, &unk_1004B2E10);
  v3 = *(*(v34 - 8) + 64);
  __chkstk_darwin();
  v33 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v32 = &v29 - v5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v9 = 1 << *(a1 + 32);
  if (result == v9)
  {
    return 0;
  }

  else
  {
    v10 = result;
    v30 = a1 + 72;
    v31 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < v9)
    {
      v12 = v10 >> 6;
      if ((*(v6 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      v36 = *(a1 + 36);
      v13 = v34;
      v14 = *(v34 + 48);
      v15 = *(a1 + 56);
      v16 = *(*(a1 + 48) + 8 * v10);
      v17 = type metadata accessor for BrowseEndpoints(0);
      v18 = a1;
      v19 = v32;
      sub_1003E8CDC(v15 + *(*(v17 - 8) + 72) * v10, &v32[v14], type metadata accessor for BrowseEndpoints);
      v20 = v33;
      *v33 = v16;
      sub_100046A08(&v19[v14], v20 + *(v13 + 48), type metadata accessor for BrowseEndpoints);
      v21 = [v35 signature];
      result = sub_100016290(v20, &qword_1005994A8, &unk_1004B2E10);
      if (v21 == v16)
      {
        return v10;
      }

      v11 = 1 << *(v18 + 32);
      if (v10 >= v11)
      {
        goto LABEL_22;
      }

      a1 = v18;
      v6 = v31;
      v22 = *(v31 + 8 * v12);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v36 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v12 << 6;
        v25 = v12 + 1;
        v26 = (v30 + 8 * v12);
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10002BEB8(v10, v36, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_5;
          }
        }

        result = sub_10002BEB8(v10, v36, 0);
      }

LABEL_5:
      v9 = 1 << *(a1 + 32);
      v10 = v11;
      if (v11 == v9)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E3ADC(uint64_t a1, const char *a2)
{
  v42 = a2;
  v3 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v36 - v4;
  v6 = type metadata accessor for ConnectedSession(0);
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  sub_1003E8CDC(a1, v13, type metadata accessor for ConnectedSession);
  sub_1003E8CDC(a1, v11, type metadata accessor for ConnectedSession);
  sub_1003E8CDC(a1, v9, type metadata accessor for ConnectedSession);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v38 = v20;
    v39 = v19;
    v40 = v15;
    v41 = v14;
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v21 = 136315650;
    v22 = *&v13[v6[10]];
    v23 = *(v22 + 72);
    v24 = *(v22 + 80);

    sub_1003E8ED4(v13, type metadata accessor for ConnectedSession);
    v25 = sub_100002320(v23, v24, &v43);

    *(v21 + 4) = v25;
    *(v21 + 12) = 256;
    LOBYTE(v25) = v11[v6[5]];
    sub_1003E8ED4(v11, type metadata accessor for ConnectedSession);
    *(v21 + 14) = v25;
    *(v21 + 15) = 2080;
    sub_100012400(&v9[v6[13]], v5, &qword_10058F4D0, &qword_100491AB0);
    v26 = type metadata accessor for UUID();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v5, 1, v26) == 1)
    {
      sub_100016290(v5, &qword_10058F4D0, &qword_100491AB0);
      v28 = 0xE300000000000000;
      v29 = 4271950;
    }

    else
    {
      v29 = UUID.uuidString.getter();
      v28 = v31;
      (*(v27 + 8))(v5, v26);
    }

    v33 = v40;
    v32 = v41;
    sub_1003E8ED4(v9, type metadata accessor for ConnectedSession);
    v34 = sub_100002320(v29, v28, &v43);

    *(v21 + 17) = v34;
    v35 = v39;
    _os_log_impl(&_mh_execute_header, v39, v38, v42, v21, 0x19u);
    swift_arrayDestroy();

    return (*(v33 + 8))(v18, v32);
  }

  else
  {
    sub_1003E8ED4(v11, type metadata accessor for ConnectedSession);

    sub_1003E8ED4(v9, type metadata accessor for ConnectedSession);
    (*(v15 + 8))(v18, v14);
    return sub_1003E8ED4(v13, type metadata accessor for ConnectedSession);
  }
}

id sub_1003E3FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = swift_isaMask & *v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[qword_100598F30] = a1;
  v18 = &v4[qword_100598F38];
  *v18 = a2;
  *(v18 + 1) = a3;

  UUID.init()();
  (*(v14 + 32))(&v4[qword_100598F40], v17, v13);
  Logger.init(subsystem:category:)();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "NANAgentPairedDevicesDelegate Init()", v21, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v22 = *(v27 + 80);
  v23 = *(v27 + 88);
  v24 = type metadata accessor for NANAgentHandler.NANAgentPairedDevicesDelegate();
  v28.receiver = v4;
  v28.super_class = v24;
  return objc_msgSendSuper2(&v28, "init");
}

id sub_1003E4258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  v9 = objc_allocWithZone(type metadata accessor for NANAgentHandler.NANAgentPairedDevicesDelegate());
  return sub_1003E3FB0(a1, a2, a3);
}

uint64_t sub_1003E42AC(int a1)
{
  LODWORD(v261) = a1;
  v2 = *v1;
  *&v254 = type metadata accessor for ConnectedSession(0);
  v263 = *(v254 - 8);
  v3 = v263[8];
  __chkstk_darwin();
  v5 = &v230 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v276 = (&v230 - v6);
  __chkstk_darwin();
  v253 = &v230 - v7;
  __chkstk_darwin();
  v256 = (&v230 - v8);
  v9 = *(*(sub_10005DC58(&unk_1005989C0, &unk_1004B28C0) - 8) + 64);
  __chkstk_darwin();
  v262 = &v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v269 = &v230 - v11;
  v12 = *(*(sub_10005DC58(&qword_100597588, &qword_1004B1870) - 8) + 64);
  __chkstk_darwin();
  v250 = &v230 - v13;
  v255 = *(type metadata accessor for ListenInBoundConnection(0) - 8);
  v14 = v255[8];
  __chkstk_darwin();
  v260 = (&v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  *&v252 = &v230 - v16;
  v17 = *(*(sub_10005DC58(&qword_1005989B8, &qword_1004B28B8) - 8) + 64);
  __chkstk_darwin();
  v259 = (&v230 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v258 = (&v230 - v19);
  v238 = type metadata accessor for DispatchWorkItemFlags();
  v232 = *(v238 - 8);
  v20 = *(v232 + 64);
  __chkstk_darwin();
  v237 = &v230 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for DispatchQoS();
  v231 = *(v236 - 8);
  v22 = *(v231 + 64);
  __chkstk_darwin();
  v235 = &v230 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for Logger();
  v265 = *(v264 - 8);
  v24 = v265[8];
  __chkstk_darwin();
  v268 = &v230 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = &v230 - v26;
  __chkstk_darwin();
  v233 = &v230 - v27;
  __chkstk_darwin();
  v241 = &v230 - v28;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin();
  v257 = &v230 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v242 = &v230 - v33;
  v234 = v34;
  __chkstk_darwin();
  v267 = &v230 - v35;
  v36 = *(v2 + 88);
  v247 = *(v2 + 80);
  v246 = v36;
  type metadata accessor for NANAgentHandler.Client();
  v275 = v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v244 = type metadata accessor for Optional();
  v230 = *(v244 - 8);
  v37 = *(v230 + 64);
  __chkstk_darwin();
  v248 = &v230 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v243 = &v230 - v39;
  i = sub_10005DC58(&qword_100598A00, &qword_1004B2900);
  v239 = *(i - 8);
  v40 = *(v239 + 64);
  __chkstk_darwin();
  v270 = &v230 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v249 = &v230 - v42;
  swift_beginAccess();
  v251 = v1;
  v43 = v1[10];
  v44 = 1 << *(v43 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v43 + 64);
  v47 = (v44 + 63) >> 6;
  v272 = v30 + 16;
  v273 = v30;
  v274 = (v30 + 8);
  result = swift_bridgeObjectRetain_n();
  v49 = 0;
  v50 = 0;
  v271 = v5;
  v51 = v275;
  do
  {
    if (!v46)
    {
      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_94;
        }

        if (v52 >= v47)
        {
          goto LABEL_13;
        }

        v46 = *(v43 + 64 + 8 * v52);
        ++v50;
        if (v46)
        {
          v50 = v52;
          goto LABEL_10;
        }
      }
    }

    v52 = v50;
LABEL_10:
    v53 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v54 = v53 | (v52 << 6);
    v55 = v273;
    v56 = v249;
    (*(v273 + 16))(v249, *(v43 + 48) + *(v273 + 72) * v54, v51);
    v57 = *(v43 + 56) + v263[9] * v54;
    v58 = i;
    sub_1003E8CDC(v57, &v56[*(i + 48)], type metadata accessor for ConnectedSession);
    v59 = v56;
    v60 = v270;
    sub_10001CEA8(v59, v270, &qword_100598A00, &qword_1004B2900);
    v61 = v60 + *(v58 + 48);
    LODWORD(v58) = *(v61 + *(v254 + 20));
    sub_1003E8ED4(v61, type metadata accessor for ConnectedSession);
    v62 = v58 == v261;
    result = (*(v55 + 8))(v60, v51);
    v63 = __OFADD__(v49, v62);
    v49 += v62;
  }

  while (!v63);
  __break(1u);
LABEL_13:

  if (v49)
  {
    v259 = &qword_1004B4E88[7];
    v64 = v240;
    Logger.init(subsystem:category:)();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v261;
    if (v67)
    {
      v69 = swift_slowAlloc();
      *v69 = 16777472;
      v69[4] = v68;
      _os_log_impl(&_mh_execute_header, v65, v66, "#### Not Terminating datapath %hhu. Referenced by other endpoint.", v69, 5u);
    }

    v70 = v265[1];
    ++v265;
    v258 = v70;
    v70(v64, v264);
    v71 = v251[10];
    v72 = (v71 + 64);
    v73 = 1 << *(v71 + 32);
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v75 = v74 & *(v71 + 64);
    v251 = ((v73 + 63) >> 6);
    v261 = (v239 + 56);
    v255 = (v273 + 32);
    v260 = (v239 + 48);
    v270 = v71;

    v76 = 0;
    *&v77 = 136315394;
    v252 = v77;
    v78 = v275;
    v79 = v276;
    v80 = v253;
    v81 = v269;
    v82 = v268;
    v257 = v72;
    while (v75)
    {
      v83 = v79;
      v84 = v76;
LABEL_31:
      v87 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v88 = v87 | (v84 << 6);
      v89 = v270;
      v90 = v273;
      (*(v273 + 16))(v267, *(v270 + 48) + *(v273 + 72) * v88, v78);
      v91 = *(v89 + 56) + v263[9] * v88;
      v92 = v256;
      sub_1003E8CDC(v91, v256, type metadata accessor for ConnectedSession);
      v93 = i;
      v94 = *(i + 48);
      v95 = v262;
      (*(v90 + 32))();
      sub_100046A08(v92, v95 + v94, type metadata accessor for ConnectedSession);
      v96 = 0;
      v81 = v269;
      v82 = v268;
      v79 = v83;
LABEL_32:
      (*v261)(v95, v96, 1, v93);
      sub_10001CEA8(v95, v81, &unk_1005989C0, &unk_1004B28C0);
      if ((*v260)(v81, 1, v93) == 1)
      {
      }

      sub_100046A08(v81 + *(v93 + 48), v80, type metadata accessor for ConnectedSession);
      Logger.init(subsystem:category:)();
      sub_1003E8CDC(v80, v79, type metadata accessor for ConnectedSession);
      v97 = v271;
      sub_1003E8CDC(v80, v271, type metadata accessor for ConnectedSession);
      v98 = v80;
      v99 = Logger.logObject.getter();
      v100 = v79;
      v101 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock[0] = v103;
        *v102 = v252;
        v104 = v254;
        v105 = *(v276 + *(v254 + 40));
        v106 = sub_1003F3454(v103);
        v108 = v107;
        sub_1003E8ED4(v276, type metadata accessor for ConnectedSession);
        v109 = sub_100002320(v106, v108, aBlock);

        *(v102 + 4) = v109;
        v82 = v268;
        *(v102 + 12) = 256;
        LOBYTE(v108) = *(v271 + *(v104 + 20));
        sub_1003E8ED4(v271, type metadata accessor for ConnectedSession);
        *(v102 + 14) = v108;
        v81 = v269;
        _os_log_impl(&_mh_execute_header, v99, v101, "#### nw_connection for %s %hhu  is still connected.", v102, 0xFu);
        sub_100002A00(v103);

        v79 = v276;

        v258(v82, v264);
        v80 = v253;
        sub_1003E8ED4(v253, type metadata accessor for ConnectedSession);
        v72 = v257;
      }

      else
      {
        sub_1003E8ED4(v97, type metadata accessor for ConnectedSession);

        v258(v82, v264);
        sub_1003E8ED4(v98, type metadata accessor for ConnectedSession);
        sub_1003E8ED4(v100, type metadata accessor for ConnectedSession);
        v80 = v98;
        v72 = v257;
        v79 = v100;
      }

      v78 = v275;
      result = (*v274)(v81, v275);
    }

    if (v251 <= v76 + 1)
    {
      v85 = (v76 + 1);
    }

    else
    {
      v85 = v251;
    }

    v86 = v85 - 1;
    while (1)
    {
      v84 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v84 >= v251)
      {
        v75 = 0;
        v96 = 1;
        v76 = v86;
        v95 = v262;
        v93 = i;
        goto LABEL_32;
      }

      v75 = *&v72[8 * v84];
      ++v76;
      if (v75)
      {
        v83 = v79;
        v76 = v84;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_93;
  }

  v110 = v251;
  swift_beginAccess();
  v111 = v110[11];
  v112 = v275;
  v113 = v261;
  if (!*(v111 + 16) || (v114 = sub_10007CCC8(v261), (v115 & 1) == 0) || (*(*(v111 + 56) + v114) & 1) != 0)
  {
    v116 = v233;
    Logger.init(subsystem:category:)();
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 16777472;
      v119[4] = v113;
      _os_log_impl(&_mh_execute_header, v117, v118, "#### Terminating datapath session %hhu for Responder", v119, 5u);
      v112 = v275;
    }

    v265[1](v116, v264);
    v120 = v251;
    swift_beginAccess();
    v121 = v120[9];
    v122 = *(v121 + 64);
    v276 = (v121 + 64);
    v123 = 1 << *(v121 + 32);
    v124 = -1;
    if (v123 < 64)
    {
      v124 = ~(-1 << v123);
    }

    v125 = v124 & v122;
    i = (v123 + 63) >> 6;
    v271 = (v273 + 32);
    v269 = "wifip2pdCore.Client";
    v270 = v121;

    v126 = 0;
    v268 = 0xD000000000000010;
    v127 = v260;
    v128 = v259;
    while (v125)
    {
      v129 = v126;
LABEL_57:
      v132 = __clz(__rbit64(v125));
      v125 &= v125 - 1;
      v133 = v132 | (v129 << 6);
      v134 = v270;
      v135 = v273;
      v136 = v267;
      (*(v273 + 16))(v267, *(v270 + 48) + *(v273 + 72) * v133, v112);
      v137 = v252;
      sub_1003E8CDC(*(v134 + 56) + v255[9] * v133, v252, type metadata accessor for ListenInBoundConnection);
      v138 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
      v139 = *(v138 + 48);
      v140 = *(v135 + 32);
      v141 = v259;
      v140(v259, v136, v112);
      v142 = v137;
      v128 = v141;
      sub_100046A08(v142, v141 + v139, type metadata accessor for ListenInBoundConnection);
      (*(*(v138 - 8) + 56))(v141, 0, 1, v138);
      v113 = v261;
      v127 = v260;
LABEL_58:
      v143 = v258;
      sub_10001CEA8(v128, v258, &qword_1005989B8, &qword_1004B28B8);
      v144 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
      if ((*(*(v144 - 8) + 48))(v143, 1, v144) == 1)
      {
      }

      v145 = *(v144 + 48);
      v146 = v113;
      v147 = v275;
      v148 = v257;
      (*v271)(v257, v143, v275);
      v149 = v143 + v145;
      v150 = v148;
      v112 = v147;
      v113 = v146;
      sub_100046A08(v149, v127, type metadata accessor for ListenInBoundConnection);
      if (*(v127 + 8) == v146)
      {
        v151 = v127;
        v152 = v251;
        v153 = v251[3];
        swift_unownedRetainStrong();
        sub_10040CAE8();

        v154 = *v151;
        v155 = WiFiMACAddress.wifiAddress.getter();
        v156 = WiFiMACAddress.wifiAddress.getter();
        sub_10033975C(v146, v155 & 0xFFFFFFFFFFFFLL, v156 & 0xFFFFFFFFFFFFLL, v268, v269 | 0x8000000000000000);

        swift_beginAccess();
        v157 = v250;
        sub_1003AD998(v150, type metadata accessor for ListenInBoundConnection, type metadata accessor for ListenInBoundConnection, sub_100469704, sub_10046D130, v250);
        sub_100016290(v157, &qword_100597588, &qword_1004B1870);
        swift_endAccess();
        swift_beginAccess();
        v158 = v152[11];
        v159 = sub_10007CCC8(v146);
        if (v160)
        {
          v161 = v159;
          v162 = v152[11];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v164 = v152[11];
          v279 = v164;
          v152[11] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10046D45C();
            v164 = v279;
          }

          sub_10046971C(v161, v164);
          v152[11] = v164;
        }

        swift_endAccess();
        v112 = v275;
        v127 = v260;
        v128 = v259;
      }

      (*v274)(v150, v112);
      result = sub_1003E8ED4(v127, type metadata accessor for ListenInBoundConnection);
    }

    if (i <= v126 + 1)
    {
      v130 = v126 + 1;
    }

    else
    {
      v130 = i;
    }

    v131 = v130 - 1;
    while (1)
    {
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v129 >= i)
      {
        v165 = sub_10005DC58(&qword_100598A08, &qword_1004B2908);
        (*(*(v165 - 8) + 56))(v128, 1, 1, v165);
        v125 = 0;
        v126 = v131;
        goto LABEL_58;
      }

      v125 = v276[v129];
      ++v126;
      if (v125)
      {
        v126 = v129;
        goto LABEL_57;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v166 = v112;
  v167 = v251;
  swift_beginAccess();
  v168 = v167[7];
  v169 = v168 + 64;
  v170 = 1 << *(v168 + 32);
  v171 = -1;
  if (v170 < 64)
  {
    v171 = ~(-1 << v170);
  }

  v172 = v171 & *(v168 + 64);
  v173 = (v170 + 63) >> 6;
  v174 = TupleTypeMetadata2;
  v268 = TupleTypeMetadata2 - 8;
  v276 = (v273 + 32);
  v269 = v230 + 32;
  v260 = &qword_1004B4E88[7];
  v259 = v265 + 1;
  v258 = v278;
  v257 = (v232 + 8);
  v256 = (v231 + 8);
  v270 = v168;

  v175 = 0;
  *&v176 = 16777730;
  v254 = v176;
  v177 = v242;
  for (i = v169; ; v169 = i)
  {
    v179 = v248;
    if (!v172)
    {
      break;
    }

    v180 = v175;
LABEL_80:
    v183 = __clz(__rbit64(v172));
    v172 &= v172 - 1;
    v184 = v183 | (v180 << 6);
    v185 = v270;
    v186 = v273;
    (*(v273 + 16))(v267, *(v270 + 48) + *(v273 + 72) * v184, v166);
    v187 = *(*(v185 + 56) + 8 * v184);
    v188 = *(TupleTypeMetadata2 + 48);
    v189 = *(v186 + 32);
    v174 = TupleTypeMetadata2;
    v179 = v248;
    v189();
    *&v179[v188] = v187;
    v190 = *(v174 - 8);
    (*(v190 + 56))(v179, 0, 1, v174);
    v191 = v187;
    LOBYTE(v113) = v261;
LABEL_81:
    v192 = v243;
    (*v269)(v243, v179, v244);
    if ((*(v190 + 48))(v192, 1, v174) == 1)
    {
    }

    v178 = *&v192[*(v174 + 48)];
    v271 = *v276;
    (v271)(v177, v192, v166);
    type metadata accessor for NANAgentHandler.DataSessionClient();
    v193 = swift_dynamicCastClass();
    if (v193)
    {
      v194 = v193;
      if (*(v193 + qword_100598E70) == v113)
      {
        v195 = v241;
        Logger.init(subsystem:category:)();
        v196 = v178;
        v197 = Logger.logObject.getter();
        v198 = static os_log_type_t.default.getter();
        v263 = v196;

        LODWORD(v262) = v198;
        v199 = v198;
        v200 = v197;
        v201 = os_log_type_enabled(v197, v199);
        v265 = v178;
        if (v201)
        {
          v202 = swift_slowAlloc();
          v255 = swift_slowAlloc();
          aBlock[0] = v255;
          *v202 = v254;
          *(v202 + 4) = v261;
          *(v202 + 5) = 2080;
          v203 = [v194 description];
          v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v206 = v205;

          v207 = sub_100002320(v204, v206, aBlock);

          *(v202 + 7) = v207;
          v208 = v242;
          v209 = v275;
          _os_log_impl(&_mh_execute_header, v200, v262, "#### Terminating datapath %hhu for %s", v202, 0xFu);
          sub_100002A00(v255);

          (*v259)(v241, v264);
        }

        else
        {

          (*v259)(v195, v264);
          v209 = v166;
          v208 = v242;
        }

        v210 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v211 = v273;
        v212 = v267;
        (*(v273 + 16))(v267, v208, v209);
        v213 = (*(v211 + 80) + 48) & ~*(v211 + 80);
        v214 = swift_allocObject();
        v215 = v246;
        v214[2] = v247;
        v214[3] = v215;
        v214[4] = v194;
        v216 = v251;
        v214[5] = v251;
        (v271)(v214 + v213, v212, v209);
        v278[2] = sub_1003EA0BC;
        v278[3] = v214;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v278[0] = sub_10000C8B8;
        v278[1] = &unk_100579508;
        v271 = _Block_copy(aBlock);
        v217 = v263;
        v218 = v210;

        v219 = v235;
        static DispatchQoS.unspecified.getter();
        v279 = _swiftEmptyArrayStorage;
        sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
        v113 = v237;
        v220 = v238;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v221 = v271;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v221);

        (*v257)(v113, v220);
        (*v256)(v219, v236);

        swift_beginAccess();
        v222 = v216[11];
        LOBYTE(v113) = v261;
        v223 = sub_10007CCC8(v261);
        v174 = TupleTypeMetadata2;
        if (v224)
        {
          v225 = v223;
          v226 = v251;
          v227 = v251[11];
          v228 = swift_isUniquelyReferenced_nonNull_native();
          v229 = v226[11];
          v279 = v229;
          v226[11] = 0x8000000000000000;
          if (!v228)
          {
            sub_10046D45C();
            v229 = v279;
          }

          sub_10046971C(v225, v229);
          v226[11] = v229;
        }

        swift_endAccess();
        v166 = v275;
        v177 = v242;
        v178 = v265;
      }
    }

    result = (*v274)(v177, v166);
  }

  if (v173 <= v175 + 1)
  {
    v181 = v175 + 1;
  }

  else
  {
    v181 = v173;
  }

  v182 = v181 - 1;
  while (1)
  {
    v180 = v175 + 1;
    if (__OFADD__(v175, 1))
    {
      break;
    }

    if (v180 >= v173)
    {
      v190 = *(v174 - 8);
      (*(v190 + 56))(v248, 1, 1, v174);
      v172 = 0;
      v175 = v182;
      goto LABEL_81;
    }

    v172 = *(v169 + 8 * v180);
    ++v175;
    if (v172)
    {
      v175 = v180;
      goto LABEL_80;
    }
  }

LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1003E6224()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_100598DC8;
  if ((*(v0 + qword_100598DC8) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_1002F9FB0();
      swift_unknownObjectWeakAssign();
    }
  }

  v9 = *(v0 + v6);
  Logger.init(subsystem:category:)();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    if (v9)
    {
      v12 = 0x676E696E6E7552;
    }

    else
    {
      v12 = 0x646570706F7453;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    v15 = sub_100002320(v12, 0xE700000000000000, &v18);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "#### Publisher state %s", v13, 0xCu);
    sub_100002A00(v14);
  }

  else
  {
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1003E6480()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = qword_100598D18;
  if ((*(v0 + qword_100598D18) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = qword_100598D20;
      swift_beginAccess();
      v10 = *(v0 + v9);
      *(v0 + v9) = &_swiftEmptyDictionarySingleton;

      sub_1003DA13C();
      sub_100391354();
      swift_unknownObjectWeakAssign();
    }
  }

  v11 = *(v0 + v6);
  Logger.init(subsystem:category:)();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    if (v11)
    {
      v14 = 0x676E696E6E7552;
    }

    else
    {
      v14 = 0x646570706F7453;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    v17 = sub_100002320(v14, 0xE700000000000000, &v20);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "#### subscriber state %s", v15, 0xCu);
    sub_100002A00(v16);
  }

  else
  {
  }

  return (*(v2 + 8))(v5, v1);
}

void sub_1003E6710()
{
  if ((*(v0 + qword_100598E98) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_10032DAF8();
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_1003E67A8(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v109) = a3;
  v113 = a1;
  v114 = a2;
  v5 = *v3;
  v6 = type metadata accessor for Logger();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  __chkstk_darwin();
  v102 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v100 - v9;
  __chkstk_darwin();
  v101 = &v100 - v10;
  __chkstk_darwin();
  v105 = &v100 - v11;
  v108 = type metadata accessor for NANDriverCapabilities();
  v12 = *(*(v108 - 8) + 64);
  __chkstk_darwin();
  v104 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v5 + 88) + 8);
  v15 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Preferences();
  v111 = *(v17 - 8);
  v112 = v17;
  v18 = v111[8];
  __chkstk_darwin();
  v20 = &v100 - v19;
  v21 = swift_checkMetadataState();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v25 = &v100 - v24;
  swift_beginAccess();
  v26 = v4[14];
  v115 = v113;
  v116 = v114;
  type metadata accessor for NANAgentHandler.ActiveClient();

  Dictionary.subscript.getter();

  if (!v118)
  {
    return 1;
  }

  v110 = v118;
  v27 = v120;
  v28 = v119;
  v100 = v4;
  v29 = v4[3];
  swift_unownedRetainStrong();
  (*(v22 + 16))(v25, v29 + *(*v29 + 112), v21);

  (*(AssociatedConformanceWitness + 120))(v21, AssociatedConformanceWitness);
  (*(v22 + 8))(v25, v21);
  v30 = v112;
  v31 = Preferences.disableNanMaxCapabilityCheck.getter(v112);
  (v111[1])(v20, v30);
  if (v31)
  {
    goto LABEL_3;
  }

  v32 = v27;
  v112 = v28;
  if (!v109)
  {
    swift_unownedRetainStrong();
    v54 = sub_10040CAE8();

    v55 = *(v54 + *(*v54 + 304));
    swift_unownedRetainStrong();

    v56 = *(*v55 + 736);
    swift_beginAccess();
    v57 = v104;
    sub_1003E8CDC(v55 + v56, v104, type metadata accessor for NANDriverCapabilities);

    v58 = v108;
    v59 = *(v57 + *(v108 + 40));
    sub_1003E8ED4(v57, type metadata accessor for NANDriverCapabilities);
    v60 = v59 / 3;
    if (v59 < 12)
    {
      v60 = 4;
    }

    if (v60 >= v59)
    {
      v60 = v59;
    }

    v111 = v60;
    v109 = &qword_1004B4E88[7];
    Logger.init(subsystem:category:)();
    v61 = v114;

    v62 = v110;

    v63 = v32;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = v57;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v117 = v68;
      *v67 = 136315906;
      *(v67 + 4) = sub_100002320(v113, v61, &v117);
      *(v67 + 12) = 2048;
      *(v67 + 14) = *(v110 + 2);
      v103 = v63;

      *(v67 + 22) = 2048;
      v69 = v111;
      *(v67 + 24) = v111;
      *(v67 + 32) = 2048;
      swift_unownedRetainStrong();
      v70 = v65;
      v71 = sub_10040CAE8();

      v72 = *(v71 + *(*v71 + 304));
      swift_unownedRetainStrong();

      v73 = *(*v72 + 736);
      swift_beginAccess();
      sub_1003E8CDC(v72 + v73, v66, type metadata accessor for NANDriverCapabilities);

      v74 = *(v66 + *(v58 + 40));
      sub_1003E8ED4(v66, type metadata accessor for NANDriverCapabilities);
      *(v67 + 34) = v74;

      _os_log_impl(&_mh_execute_header, v64, v70, "#### Client %s Browser Count : %ld/%ld, nancap: %ld", v67, 0x2Au);
      sub_100002A00(v68);
      v62 = v110;

      v52 = v107;
      v53 = *(v106 + 8);
      v53(v105, v107);
      v75 = v101;
      v76 = v103;
      v77 = v69;
    }

    else
    {

      v52 = v107;
      v53 = *(v106 + 8);
      v53(v105, v107);
      v75 = v101;
      v76 = v63;
      v77 = v111;
    }

    if (*(v62 + 2) < v77)
    {

      goto LABEL_23;
    }

    Logger.init(subsystem:category:)();
    v91 = v114;

    v81 = v76;
    v82 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v92))
    {
      v93 = swift_slowAlloc();
      v110 = v81;
      v111 = v53;
      v94 = v91;
      v95 = v93;
      v96 = swift_slowAlloc();
      v97 = v94;
      v98 = v62;
      v99 = v96;
      v117 = v96;
      *v95 = 136315394;
      *(v95 + 4) = sub_100002320(v113, v97, &v117);
      *(v95 + 12) = 2048;
      *(v95 + 14) = *(v98 + 2);

      _os_log_impl(&_mh_execute_header, v82, v92, "#### Client %s reached MAX Allowed Services : %ld", v95, 0x16u);
      sub_100002A00(v99);

      (v111)(v75, v52);
      return 0;
    }

    goto LABEL_32;
  }

  if (v109 != 1)
  {
LABEL_3:

LABEL_22:

LABEL_23:

    return 1;
  }

  swift_unownedRetainStrong();
  v33 = sub_10040CAE8();

  v34 = *(v33 + *(*v33 + 304));
  swift_unownedRetainStrong();

  v35 = *(*v34 + 736);
  swift_beginAccess();
  v36 = v104;
  sub_1003E8CDC(v34 + v35, v104, type metadata accessor for NANDriverCapabilities);

  v37 = *(v36 + *(v108 + 36));
  sub_1003E8ED4(v36, type metadata accessor for NANDriverCapabilities);
  v38 = v37 / 3;
  if (v37 < 12)
  {
    v38 = 4;
  }

  if (v38 >= v37)
  {
    v38 = v37;
  }

  v111 = v38;
  v109 = &qword_1004B4E88[7];
  v39 = v103;
  Logger.init(subsystem:category:)();
  v40 = v114;

  v41 = v112;

  v42 = v27;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v117 = v46;
    *v45 = 136315906;
    *(v45 + 4) = sub_100002320(v113, v40, &v117);
    *(v45 + 12) = 2048;
    *(v45 + 14) = *(v41 + 16);
    v105 = v42;

    *(v45 + 22) = 2048;
    *(v45 + 24) = v111;
    *(v45 + 32) = 2048;
    swift_unownedRetainStrong();
    v47 = v44;
    v48 = sub_10040CAE8();

    v49 = *(v48 + *(*v48 + 304));
    swift_unownedRetainStrong();

    v50 = *(*v49 + 736);
    swift_beginAccess();
    sub_1003E8CDC(v49 + v50, v36, type metadata accessor for NANDriverCapabilities);

    v51 = *(v36 + *(v108 + 36));
    sub_1003E8ED4(v36, type metadata accessor for NANDriverCapabilities);
    *(v45 + 34) = v51;

    _os_log_impl(&_mh_execute_header, v43, v47, "#### Client %s Browser Count : %ld/%ld, , nancap: %ld", v45, 0x2Au);
    sub_100002A00(v46);

    v52 = v107;
    v53 = *(v106 + 8);
    v53(v103, v107);
    v42 = v105;
  }

  else
  {

    v53 = *(v106 + 8);
    v78 = v39;
    v52 = v107;
    v53(v78, v107);
  }

  v75 = v102;
  if (*(v41 + 16) < v111)
  {

    goto LABEL_22;
  }

  Logger.init(subsystem:category:)();
  v80 = v114;

  v81 = v42;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v82, v83))
  {
LABEL_32:

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v90 = v75;
    goto LABEL_33;
  }

  v85 = v41;
  v86 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  v88 = v80;
  v89 = v87;
  v117 = v87;
  *v86 = 136315394;
  *(v86 + 4) = sub_100002320(v113, v88, &v117);
  *(v86 + 12) = 2048;
  *(v86 + 14) = *(v85 + 16);

  _os_log_impl(&_mh_execute_header, v82, v83, "#### Client %s reached MAX Allowed Services : %ld", v86, 0x16u);
  sub_100002A00(v89);

  v90 = v102;
LABEL_33:
  v53(v90, v52);
  return 0;
}

uint64_t sub_1003E7784(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_100002320(a1, a2, &v20);
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v13, v14, v19, v16, 0x16u);
    sub_100002A00(v17);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1003E796C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for WABrowserAgentInterface.DescriptorToAgent() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1002CB380;

  return sub_1003B5B60(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1003E7AF8(uint64_t a1)
{
  v4 = *(type metadata accessor for WAListenerAgentInterface.DescriptorToAgent() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10030BDD0;

  return sub_1003C0AD4(a1, v6, v7, v8, v1 + v5, v9);
}

id sub_1003E7C40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = swift_isaMask;
  swift_weakInit();
  v7 = qword_100598C58;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  swift_weakAssign();
  v10 = UUID.uuidString.getter();
  v12 = sub_1003ADCFC(v10, v11);

  *&v3[qword_100598C68] = v12;
  v13 = *((v6 & v5) + 0x50);
  v14 = *((v6 & v5) + 0x58);
  v17.receiver = v3;
  v17.super_class = type metadata accessor for NANAgentHandler.Client();
  v15 = objc_msgSendSuper2(&v17, "init");
  (*(v9 + 8))(a2, v8);
  return v15;
}

uint64_t sub_1003E7DC0(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  return sub_1003CFF84(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + v8), *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1003E7E84()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    v23 = v8;
    *v7 = 136315138;
    v9 = sub_1003F3454(v8);
    v11 = v10;
    v21 = 0;
    v22 = 0xE000000000000000;
    v12._countAndFlagsBits = 0x6E696F70646E6520;
    v12._object = 0xEA00000000003A74;
    String.append(_:)(v12);
    v19 = v0;
    type metadata accessor for NWEndpoint();
    _print_unlocked<A, B>(_:_:)();
    v14 = v21;
    v13 = v22;
    v21 = v9;
    v22 = v11;

    v15._countAndFlagsBits = v14;
    v15._object = v13;
    String.append(_:)(v15);

    v16 = sub_100002320(v21, v22, &v23);

    *(v7 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "#### Stopped a resolver session:%s", v7, 0xCu);
    sub_100002A00(v20);

    return (*(v1 + 8))(v4, v19);
  }

  else
  {

    return (*(v1 + 8))(v4, v0);
  }
}

void *sub_1003E815C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  __chkstk_darwin();
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  v9 = *(v72 + 64);
  __chkstk_darwin();
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for sessionStatus(0) - 8) + 64);
  __chkstk_darwin();
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WASubscribableService();
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = *(v68 + 64);
  __chkstk_darwin();
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(sub_10005DC58(&qword_100597588, &qword_1004B1870) - 8) + 64);
  __chkstk_darwin();
  v70 = (&v62 - v17);
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v23 = a2;
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v79 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v28 = 16778242;
    *(v28 + 4) = [v79 datapathID];

    *(v28 + 5) = 2080;
    v29 = [v79 initiatorDataAddress];
    v30 = WiFiMACAddress.ipv6LinkLocalAddressString.getter();
    v64 = v18;
    v31 = v30;
    v63 = v19;
    v33 = v32;

    v34 = sub_100002320(v31, v33, aBlock);
    v35 = v77;

    *(v28 + 7) = v34;
    *(v28 + 15) = 2080;
    v80 = a2;
    v36 = v23;
    sub_10005DC58(&qword_100599460, &qword_1004B2DA8);
    v37 = String.init<A>(describing:)();
    v39 = sub_100002320(v37, v38, aBlock);

    *(v28 + 17) = v39;
    *(v28 + 25) = 2048;
    *(v28 + 27) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "#### Publisher Data Confirmed With Peer: DataPathID[%hhu] %s serviceSpecificInfo: %s deviceID: %llu", v28, 0x23u);
    swift_arrayDestroy();

    v24 = v79;

    (*(v63 + 8))(v22, v64);
  }

  else
  {

    (*(v19 + 8))(v22, v18);
    v35 = v77;
  }

  v40 = v78;
  v41 = *&v78[qword_100598DB8];
  if (!v41)
  {
    goto LABEL_7;
  }

  v42 = v35;
  v43 = *&v78[qword_100598DB8 + 8];

  v44 = [v24 initiatorDataAddress];
  v45 = [v24 datapathID];
  result = *&v40[qword_100598DC0];
  if (result)
  {
    v47 = [result serviceName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v66;
    WASubscribableService.init(name:)();
    v49 = v70;
    *v70 = v44;
    *(v49 + 8) = v45;
    v50 = type metadata accessor for ListenInBoundConnection(0);
    (*(v68 + 32))(v49 + *(v50 + 24), v48, v69);
    *(v49 + *(v50 + 28)) = v42;
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = type metadata accessor for WAError.ErrorCode();
    v52 = v67;
    (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
    v41(v49, v52);
    sub_100010520(v41);
    sub_1003E8ED4(v52, type metadata accessor for sessionStatus);
    sub_100016290(v49, &qword_100597588, &qword_1004B1870);
    v24 = v79;
LABEL_7:
    v53 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v54 = swift_allocObject();
    *(v54 + 16) = v40;
    *(v54 + 24) = v24;
    aBlock[4] = sub_1003E9E08;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100579350;
    v55 = _Block_copy(aBlock);
    v56 = v24;
    v57 = v53;
    v58 = v40;
    v59 = v71;
    static DispatchQoS.unspecified.getter();
    v80 = _swiftEmptyArrayStorage;
    sub_10001ADA4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
    v60 = v73;
    v61 = v76;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v55);

    (*(v75 + 8))(v60, v61);
    (*(v72 + 8))(v59, v74);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E89D0(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  sub_10000AB0C(a1, a2);
  v13 = a4;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_1000124C8(a1, a2);

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = a3;
    v20 = v19;
    v29 = v19;
    *v17 = 136315650;
    v21 = Data.description.getter();
    v23 = sub_100002320(v21, v22, &v29);

    *(v17 + 4) = v23;
    *(v17 + 12) = 256;
    *(v17 + 14) = v27;
    *(v17 + 15) = 2112;
    *(v17 + 17) = v13;
    *v18 = v13;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "#### Publisher received message: %s from subscriber: %hhu in address: %@", v17, 0x19u);
    sub_100016290(v18, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v20);

    return (*(v9 + 8))(v12, v28);
  }

  else
  {

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1003E8CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003E8D44(uint64_t a1)
{
  v3 = *(sub_10005DC58(&qword_1005989E0, &qword_1004B28E0) - 8);
  v4 = ((*(v3 + 80) + 88) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = (v4 + 9) & 0xFFFFFFFFFFFFFFF8;
  v18 = v1[3];
  v19 = v1[2];
  v16 = v1[7];
  v17 = v1[6];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = *(v1 + v4);
  v10 = *(v1 + v4 + 1);
  v11 = *(v1 + v5);
  v12 = *(v1 + v5 + 8);
  v13 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10030BDD0;

  return sub_1003D4D04(a1, v19, v18, v17, v16, v6, v7);
}

uint64_t sub_1003E8ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003E8F5C()
{
  sub_1003E9A78(319, &unk_100598A50, &type metadata accessor for WABrowserAgentInterface.DescriptorToAgent);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1003E9058()
{
  sub_1003E9A78(319, &unk_100598B40, &type metadata accessor for WAListenerAgentInterface.DescriptorToAgent);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003E91A4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1003E9338()
{
  sub_1003E9A78(319, &qword_100598F28, &type metadata accessor for NWEndpoint);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_1003E9444()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E954C()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    result = sub_100018AB4(319, &unk_100599030, WiFiMACAddress_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E9640()
{
  v0 = type metadata accessor for WAError.ErrorCode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1003E96F0()
{
  type metadata accessor for NWEndpoint();
  if (v0 <= 0x3F)
  {
    sub_1003E9A78(319, &qword_100599170, &type metadata accessor for WASubscribableService);
    if (v1 <= 0x3F)
    {
      sub_1003E9A78(319, &qword_100599178, &type metadata accessor for WAPairedDevice);
      if (v2 <= 0x3F)
      {
        sub_1001D6F04();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003E9804()
{
  type metadata accessor for NWEndpoint();
  if (v0 <= 0x3F)
  {
    sub_1003E9A78(319, &qword_100599170, &type metadata accessor for WASubscribableService);
    if (v1 <= 0x3F)
    {
      sub_1003E9A78(319, &qword_100599178, &type metadata accessor for WAPairedDevice);
      if (v2 <= 0x3F)
      {
        sub_100018AB4(319, &unk_100599030, WiFiMACAddress_ptr);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003E9940()
{
  type metadata accessor for NWEndpoint();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WASubscribableService();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WAPairedDevice();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NANConnectionClient(319);
        if (v3 <= 0x3F)
        {
          sub_100018AB4(319, &unk_100599030, WiFiMACAddress_ptr);
          if (v4 <= 0x3F)
          {
            sub_1003E9A78(319, &qword_100593008, &type metadata accessor for UUID);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1003E9A78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003E9AF4()
{
  result = sub_100018AB4(319, &unk_100599030, WiFiMACAddress_ptr);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WASubscribableService();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E9B98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003E9BD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003E9C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003E9C80()
{
  result = qword_100599430;
  if (!qword_100599430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100599430);
  }

  return result;
}

uint64_t sub_1003E9E18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 61, 7);
}

uint64_t sub_1003E9F94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10030BDD0;

  return sub_1003AF434(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

void sub_1003EA068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

void sub_1003EA0BC()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  sub_1003C5BD0(v2);
}

uint64_t sub_1003EA120(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10030BDD0;

  return sub_10030B2B4(a1, v5);
}

uint64_t sub_1003EA1D8(int a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1003D8CA4(a1, a2, v6, v7);
}

uint64_t sub_1003EA25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1002CB380;

  return sub_1003C7FD4(a1, v4, v5, v6, v7, v8);
}

void sub_1003EA324(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  sub_1003C99A0(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), (v2 + v8), *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_1003EA3E4(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v7 + 80);
  return sub_1003CB0F8(a1, a2, v2[4], v2[5], v2[6], v2 + ((v8 + 56) & ~v8), v2 + ((*(v7 + 64) + v8 + ((v8 + 56) & ~v8)) & ~v8), v5, v6);
}

uint64_t sub_1003EA4A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

BOOL sub_1003EA584(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 deviceID];
  return v3 == *(v2 + *(type metadata accessor for ResolvedSession(0) + 24));
}

uint64_t sub_1003EA5E0(uint64_t (**a1)(uint64_t, uint64_t), uint64_t *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1003C302C(a1, a2, v8, v9, v10, v5, v6);
}

uint64_t sub_1003EA678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10030BDD0;

  return sub_1003B00B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003EA740(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10030BDD0;

  return sub_1003E3478(a1, v5);
}

uint64_t sub_1003EA7F8(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for UUID() - 8);
  return sub_1003B80D8(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v7 + 80) + 64) & ~*(v7 + 80)), v5, v6);
}

uint64_t sub_1003EA894(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for sessionStatus(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  v12 = *(v1 + 24);
  v21 = *(v1 + 16);
  v13 = *(v1 + v6);
  v14 = *(v1 + v7);
  v15 = v1 + v8;
  v16 = *(v1 + v8);
  v17 = *(v15 + 8);
  v18 = *(v1 + v9);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_10030BDD0;

  return sub_1003B844C(a1, v21, v12, v1 + v5, v13, v14, v16, v17);
}

uint64_t sub_1003EAA48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10030BDD0;

  return sub_1003E3270(a1, v5);
}

void sub_1003EAB58()
{
  sub_1003F086C(319, &qword_100599568, sub_100125588, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions, type metadata accessor for MutableDriverProperty);
  if (v1 <= 0x3F)
  {
    v25 = *(v0 - 8) + 64;
    sub_1003F0A64(319, &qword_100599570, &type metadata for Bool, &protocol witness table for Bool, type metadata accessor for ObservableWiFiProperty);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1003F0724();
      if (v6 <= 0x3F)
      {
        v26 = *(v5 - 8) + 64;
        sub_1003F086C(319, &qword_100599590, sub_1000C76B4, &type metadata for AutoJoinState, type metadata accessor for ObservableWiFiProperty);
        if (v8 <= 0x3F)
        {
          v27 = *(v7 - 8) + 64;
          sub_1002CA064();
          if (v10 <= 0x3F)
          {
            v11 = *(v9 - 8) + 64;
            v12 = type metadata accessor for DispatchTimeInterval();
            if (v13 <= 0x3F)
            {
              v14 = *(v12 - 8) + 64;
              sub_1003F07C8();
              if (v16 <= 0x3F)
              {
                v28 = *(v15 - 8) + 64;
                sub_1003F086C(319, &qword_1005995A8, sub_1001B8EC4, &type metadata for CountryCode, type metadata accessor for ObservableWiFiProperty);
                if (v18 <= 0x3F)
                {
                  v29 = *(v17 - 8) + 64;
                  sub_1003F08D4();
                  if (v20 <= 0x3F)
                  {
                    v30 = *(v19 - 8) + 64;
                    sub_1003F09C0();
                    if (v22 <= 0x3F)
                    {
                      v31 = *(v21 - 8) + 64;
                      sub_1003F0A64(319, &qword_1005995D8, &type metadata for InfrastructureRadioConstraints, &off_1005799E0, type metadata accessor for RadioConstraint);
                      if (v24 <= 0x3F)
                      {
                        v32 = *(v23 - 8) + 64;
                        swift_initClassMetadata2();
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

uint64_t sub_1003EAF94(char a1)
{
  v5 = a1;
  v2 = *(*v1 + 464);
  swift_beginAccess();
  v3 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  ObservableWiFiProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_1003EB010@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 464);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059B150, &qword_1004B3070);
}

uint64_t sub_1003EB084()
{
  v1 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = *(*v0 + 472);
  swift_beginAccess();
  sub_100012400(v0 + v5, v4, &qword_100594D50, &unk_1004AEBF0);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v8);
  sub_100016290(v4, &qword_100594D50, &unk_1004AEBF0);
  return v8;
}

uint64_t sub_1003EB184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4;
  v10 = WORD2(a4);
  v5 = *(*v4 + 472);
  swift_beginAccess();
  v6 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  ObservableWiFiProperty.wrappedValue.setter(v8, v6);
  return swift_endAccess();
}

uint64_t sub_1003EB210@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 472);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_100594D50, &unk_1004AEBF0);
}

uint64_t sub_1003EB284(char a1)
{
  v5 = a1 & 1;
  v2 = *(*v1 + 480);
  swift_beginAccess();
  v3 = sub_10005DC58(&qword_10059A3E0, &unk_1004B3080);
  ObservableWiFiProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_1003EB304@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 480);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_10059A3E0, &unk_1004B3080);
}

unint64_t sub_1003EB378(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v19 - v9;
  result = sub_1003EB694();
  v12 = a1 & 0xFF00000000;
  if ((result & 0xFF00000000) == 0x300000000)
  {
    if (v12 == 0x300000000)
    {
      return result;
    }
  }

  else if (v12 != 0x300000000 && result == a1 && ((0x801004u >> ((result >> 29) & 0xF8)) & 0xFFC) == ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC))
  {
    if (BYTE5(result) <= 3u)
    {
      if (BYTE5(result) == 2)
      {
        if (BYTE5(a1) == 2)
        {
          return result;
        }

        goto LABEL_25;
      }

      if (BYTE5(result) == 3)
      {
        if (BYTE5(a1) == 3)
        {
          return result;
        }

        goto LABEL_25;
      }
    }

    else
    {
      switch(BYTE5(result))
      {
        case 4u:
          if (BYTE5(a1) == 4)
          {
            return result;
          }

          goto LABEL_25;
        case 5u:
          if (BYTE5(a1) == 5)
          {
            return result;
          }

          goto LABEL_25;
        case 6u:
          if (BYTE5(a1) == 6)
          {
            return result;
          }

          goto LABEL_25;
      }
    }

    if (BYTE5(a1) - 2 >= 5 && (((result >> 40) ^ (a1 >> 40)) & 1) == 0)
    {
      return result;
    }
  }

LABEL_25:
  if ((sub_1003EB694() & 0xFF00000000) == 0x300000000)
  {
    v13 = type metadata accessor for DispatchTime();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  else
  {
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v14 = type metadata accessor for DispatchTime();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  v15 = *(*v1 + 488);
  swift_beginAccess();
  sub_10001AEDC(v10, v2 + v15);
  swift_endAccess();
  v16 = sub_1003EB694();
  v17 = *(*v2 + 592);
  swift_beginAccess();
  sub_100012400(v2 + v17, v7, &qword_1005995E8, &unk_1004B3040);
  v18 = &v7[*(v4 + 36)];
  *(v18 + 10) = WORD2(v16);
  *(v18 + 4) = v16;
  return sub_10001C638(v7);
}

unint64_t sub_1003EB694()
{
  v1 = sub_10005DC58(&qword_100599610, &qword_1004B3078);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = *(*v0 + 512);
  swift_beginAccess();
  sub_100012400(v0 + v5, v4, &qword_100599610, &qword_1004B3078);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v7);
  sub_100016290(v4, &qword_100599610, &qword_1004B3078);
  return v7 | (v8 << 32);
}

unint64_t sub_1003EB78C(uint64_t a1)
{
  v3 = *(*v1 + 512);
  swift_beginAccess();
  v4 = sub_10005DC58(&qword_100599610, &qword_1004B3078);
  ObservableWiFiProperty.wrappedValue.getter(v4, &v7);
  v5 = v7 | (v8 << 32);
  swift_endAccess();
  v8 = WORD2(a1);
  v7 = a1;
  swift_beginAccess();
  ObservableWiFiProperty.wrappedValue.setter(&v7, v4);
  swift_endAccess();
  return sub_1003EB378(v5);
}

uint64_t sub_1003EB86C()
{
  v1 = sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = *(*v0 + 568);
  swift_beginAccess();
  sub_100012400(v0 + v5, v4, &unk_10059A6B0, &unk_1004B4D80);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v7 + 6);
  sub_100016290(v4, &unk_10059A6B0, &unk_1004B4D80);
  return HIWORD(v7);
}

uint64_t sub_1003EB95C(__int16 a1)
{
  v5 = a1;
  v2 = *(*v1 + 568);
  swift_beginAccess();
  v3 = sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80);
  ObservableWiFiProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

uint64_t sub_1003EB9D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 568);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059A6B0, &unk_1004B4D80);
}

uint64_t sub_1003EBA4C(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  v3 = *(*v2 + 576);
  swift_beginAccess();
  v4 = sub_10005DC58(&unk_10059A3C0, &unk_1004B3060);
  ObservableWiFiProperty.wrappedValue.setter(v6, v4);
  return swift_endAccess();
}

uint64_t sub_1003EBAC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 576);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059A3C0, &unk_1004B3060);
}

uint64_t (*sub_1003EBB3C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, AssociatedTypeWitness);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, AssociatedTypeWitness);
  return sub_1003F2EEC;
}

uint64_t sub_1003EBC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 112);
  v8 = swift_checkMetadataState();
  return v7(a1, v8, AssociatedConformanceWitness);
}

uint64_t sub_1003EBD4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return WiFiNetwork.description.getter(*a1, v1, *(a1 + 16) & 0xFFFFFFFFFFFFLL, *(a1 + 24) | (*(a1 + 28) << 32));
  }

  else
  {
    return 0x6F73736120746F6ELL;
  }
}

uint64_t sub_1003EBDAC(uint64_t *a1)
{
  if (a1[1])
  {
    v1 = *a1;
  }

  else
  {
    v1 = 1701736302;
  }

  return v1;
}

uint64_t sub_1003EBDF8(unsigned int *a1, uint64_t a2)
{
  v2 = *a1 | (*(a1 + 2) << 32);
  if ((v2 & 0xFF00000000) == 0x300000000)
  {
    return 1701736302;
  }

  else
  {
    return Channel.description.getter(v2, a2);
  }
}

uint64_t sub_1003EBE40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1003EBA4C(a1, a2);
  }

  return result;
}

uint64_t sub_1003EBEBC()
{
  sub_100016290(v0 + *(*v0 + 448), &qword_100599618, &qword_1004B3090);
  v1 = *(v0 + *(*v0 + 456));

  sub_100016290(v0 + *(*v0 + 464), &unk_10059B150, &qword_1004B3070);
  sub_100016290(v0 + *(*v0 + 472), &qword_100594D50, &unk_1004AEBF0);
  sub_100016290(v0 + *(*v0 + 480), &qword_10059A3E0, &unk_1004B3080);
  sub_100016290(v0 + *(*v0 + 488), &unk_100597330, &unk_100481FA0);
  v2 = *(*v0 + 496);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = *(v0 + *(*v0 + 504));

  sub_100016290(v0 + *(*v0 + 512), &qword_100599610, &qword_1004B3078);
  sub_100016290(v0 + *(*v0 + 520), &unk_100597330, &unk_100481FA0);
  v4(v0 + *(*v0 + 528), v3);
  v6 = *(v0 + *(*v0 + 536));

  sub_100016290(v0 + *(*v0 + 560), &unk_10059B150, &qword_1004B3070);
  sub_100016290(v0 + *(*v0 + 568), &unk_10059A6B0, &unk_1004B4D80);
  sub_100016290(v0 + *(*v0 + 576), &unk_10059A3C0, &unk_1004B3060);
  sub_100016290(v0 + *(*v0 + 584), &unk_100599620, &qword_1004B3098);
  return sub_100016290(v0 + *(*v0 + 592), &qword_1005995E8, &unk_1004B3040);
}

uint64_t sub_1003EC1D4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(*v0 + 440) + 8);
  v4 = *(*v0 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6[8];
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = *(v2 + 96);
  swift_beginAccess();
  v11 = v6[2];
  v11(v9, &v1[v10], AssociatedTypeWitness);
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  (*(v12 + 16))(AssociatedTypeWitness, v12);
  v13 = v6[1];
  v13(v9, AssociatedTypeWitness);
  v11(v9, &v1[v10], AssociatedTypeWitness);
  (*(v12 + 48))(AssociatedTypeWitness, v12);
  v13(v9, AssociatedTypeWitness);
  v14 = WiFiInterface.deinit();
  sub_100016290(v14 + *(*v14 + 448), &qword_100599618, &qword_1004B3090);
  v15 = *(v14 + *(*v14 + 456));

  sub_100016290(v14 + *(*v14 + 464), &unk_10059B150, &qword_1004B3070);
  sub_100016290(v14 + *(*v14 + 472), &qword_100594D50, &unk_1004AEBF0);
  sub_100016290(v14 + *(*v14 + 480), &qword_10059A3E0, &unk_1004B3080);
  sub_100016290(v14 + *(*v14 + 488), &unk_100597330, &unk_100481FA0);
  v16 = *(*v14 + 496);
  v17 = type metadata accessor for DispatchTimeInterval();
  v18 = *(*(v17 - 8) + 8);
  v18(v14 + v16, v17);
  v19 = *(v14 + *(*v14 + 504));

  sub_100016290(v14 + *(*v14 + 512), &qword_100599610, &qword_1004B3078);
  sub_100016290(v14 + *(*v14 + 520), &unk_100597330, &unk_100481FA0);
  v18(v14 + *(*v14 + 528), v17);
  v20 = *(v14 + *(*v14 + 536));

  sub_100016290(v14 + *(*v14 + 560), &unk_10059B150, &qword_1004B3070);
  sub_100016290(v14 + *(*v14 + 568), &unk_10059A6B0, &unk_1004B4D80);
  sub_100016290(v14 + *(*v14 + 576), &unk_10059A3C0, &unk_1004B3060);
  sub_100016290(v14 + *(*v14 + 584), &unk_100599620, &qword_1004B3098);
  sub_100016290(v14 + *(*v14 + 592), &qword_1005995E8, &unk_1004B3040);
  return v14;
}

uint64_t sub_1003EC6A8()
{
  v0 = *sub_1003EC1D4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003EC714()
{
  v0 = type metadata accessor for Logger();
  v54 = *(v0 - 8);
  v1 = *(v54 + 64);
  __chkstk_darwin();
  v55 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTimeInterval();
  v56 = *(v53 - 8);
  v3 = v56[8];
  __chkstk_darwin();
  v52 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v43 - v5;
  __chkstk_darwin();
  v8 = &v43 - v7;
  v9 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v11 = &v43 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v43 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = *(*result + 520);
    swift_beginAccess();
    sub_100012400(v20 + v21, v11, &unk_100597330, &unk_100481FA0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      return sub_100016290(v11, &unk_100597330, &unk_100481FA0);
    }

    else
    {
      (*(v13 + 32))(v18, v11, v12);
      type metadata accessor for P2PTimer();
      variable initialization expression of AWDLPeer.lastUpdated();
      DispatchTime.distance(to:)();
      v50 = *(v13 + 8);
      v50(v16, v12);
      sub_1000288C0(1);
      v22 = v54;
      (*(v54 + 16))(v55, v20 + *(*v20 + 160), v0);
      v49 = v0;
      v23 = v56;
      v24 = v56[2];
      v51 = v8;
      v25 = v8;
      v26 = v53;
      v47 = v24;
      v24(v6, v25, v53);
      swift_retain_n();
      v27 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v48))
      {
        v28 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v57 = v46;
        *v28 = 136315394;
        v45 = v27;
        v29 = DispatchTimeInterval.description.getter();
        v31 = v30;
        v32 = v56[1];
        ++v56;
        v44 = v32;
        v32(v6, v26);
        v33 = sub_100002320(v29, v31, &v57);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2080;
        v34 = v26;
        v35 = v52;
        v47(v52, v20 + *(*v20 + 528), v34);

        v36 = DispatchTimeInterval.description.getter();
        v38 = v37;

        v39 = v44;
        v44(v35, v34);
        v40 = sub_100002320(v36, v38, &v57);

        *(v28 + 14) = v40;
        v41 = v45;
        _os_log_impl(&_mh_execute_header, v45, v48, "Infra scan has timed out, revoked infra scan availability, scan on going for %s, maximum allowed %s", v28, 0x16u);
        swift_arrayDestroy();

        (*(v54 + 8))(v55, v49);
        v39(v51, v34);
      }

      else
      {

        v42 = v23[1];
        v42(v6, v26);
        (*(v22 + 8))(v55, v49);
        v42(v51, v26);
      }

      return (v50)(v18, v12);
    }
  }

  return result;
}

void sub_1003ECD6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v33 - v10;
  __chkstk_darwin();
  v13 = &v33 - v12;
  v33 = a1;
  sub_1003EB78C(a1 & 0xFFFFFFFFFFFFLL);
  (*(v6 + 16))(v13, v1 + *(*v1 + 496), v5);
  v14 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = *(v4 + 432);
  v16[3] = *(v4 + 440);
  v16[4] = v15;
  v17 = *(v6 + 104);
  v17(v11, enum case for DispatchTimeInterval.never(_:), v5);
  *v9 = 100;
  v17(v9, enum case for DispatchTimeInterval.milliseconds(_:), v5);
  v18 = type metadata accessor for P2PTimer();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v13, v14, v11, v9, sub_1003F2D24, v16);
  v22 = *(*v2 + 504);
  v23 = *(v2 + v22);
  *(v2 + v22) = v21;

  v24 = v2 + *(*v2 + 160);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    v30 = Channel.description.getter(v33 & 0xFFFFFFFFFFFFLL, v29);
    v32 = sub_100002320(v30, v31, &v34);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Infra association started on channel %s", v27, 0xCu);
    sub_100002A00(v28);
  }
}

uint64_t sub_1003ED0C4()
{
  v0 = type metadata accessor for Logger();
  v60 = *(v0 - 8);
  v61 = v0;
  v1 = *(v60 + 64);
  __chkstk_darwin();
  v59 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchTimeInterval();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = v62[8];
  __chkstk_darwin();
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v51 - v7;
  __chkstk_darwin();
  v10 = v51 - v9;
  v11 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v13 = v51 - v12;
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v51 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = *(*result + 488);
    swift_beginAccess();
    sub_100012400(v22 + v23, v13, &unk_100597330, &unk_100481FA0);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      return sub_100016290(v13, &unk_100597330, &unk_100481FA0);
    }

    else
    {
      (*(v15 + 32))(v20, v13, v14);
      v24 = sub_1003EB694();
      if ((v24 & 0xFF00000000) == 0x300000000)
      {
        (*(v15 + 8))(v20, v14);
      }

      else
      {
        v56 = v24;
        type metadata accessor for P2PTimer();
        variable initialization expression of AWDLPeer.lastUpdated();
        DispatchTime.distance(to:)();
        v58 = *(v15 + 8);
        v58(v18, v14);
        sub_1003F2B34();
        (*(v60 + 16))(v59, v22 + *(*v22 + 160), v61);
        v25 = v62;
        v26 = v62 + 2;
        v55 = v62[2];
        v55(v8, v10, v63);
        swift_retain_n();
        v27 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v57))
        {
          v28 = swift_slowAlloc();
          v54 = v28;
          v53 = swift_slowAlloc();
          v64 = v53;
          *v28 = 136315650;
          v30 = Channel.description.getter(v56, v29);
          v32 = sub_100002320(v30, v31, &v64);
          v56 = v27;
          v33 = v32;

          v34 = v54;
          *(v54 + 1) = v33;
          *(v34 + 6) = 2080;
          v35 = DispatchTimeInterval.description.getter();
          v37 = v36;
          v38 = v62[1];
          ++v62;
          v51[1] = v26;
          v52 = v38;
          v39 = v63;
          v38(v8, v63);
          v40 = sub_100002320(v35, v37, &v64);

          v41 = v54;
          *(v54 + 14) = v40;
          *(v41 + 11) = 2080;
          v55(v6, (v22 + *(*v22 + 496)), v39);

          v42 = DispatchTimeInterval.description.getter();
          v44 = v43;

          v45 = v6;
          v46 = v52;
          v52(v45, v39);
          v47 = sub_100002320(v42, v44, &v64);

          *(v41 + 3) = v47;
          v48 = v56;
          _os_log_impl(&_mh_execute_header, v56, v57, "Infra association has timed out, revoked infra association availability on channel %s, on going for %s, maximum allowed %s", v41, 0x20u);
          swift_arrayDestroy();

          (*(v60 + 8))(v59, v61);
          v46(v10, v63);
        }

        else
        {

          v49 = v25[1];
          v50 = v63;
          v49(v8, v63);
          (*(v60 + 8))(v59, v61);
          v49(v10, v50);
        }

        return (v58)(v20, v14);
      }
    }
  }

  return result;
}

uint64_t sub_1003ED770(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a3;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v61 - v12;
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v61 - v19;
  result = __chkstk_darwin();
  v70 = &v61 - v22;
  v23 = *(*v4 + 552);
  v24 = *(v4 + v23);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v67 = v7;
    v68 = v6;
    *(v4 + v23) = v26;
    result = sub_1003EB694();
    if ((result & 0xFF00000000) != 0x300000000)
    {
      v27 = result;
      v28 = *(*v4 + 488);
      swift_beginAccess();
      sub_100012400(v4 + v28, v13, &unk_100597330, &unk_100481FA0);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        return sub_100016290(v13, &unk_100597330, &unk_100481FA0);
      }

      else
      {
        v29 = v15;
        v30 = v14;
        v31 = HIDWORD(a2);
        v66 = v29;
        v32 = v70;
        (*(v29 + 32))(v70, v13, v30);
        v33 = *(*v4 + 160);
        v65 = v31;
        if (v31)
        {
          (*(v66 + 16))(v20, v32, v30);
          swift_bridgeObjectRetain_n();
          v43 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v43, v64))
          {
            v44 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v71 = v63;
            *v44 = 136315650;
            v46 = Channel.description.getter(v27, v45);
            v62 = v43;
            v48 = sub_100002320(v46, v47, &v71);

            v61 = v44;
            *(v44 + 4) = v48;
            *(v44 + 12) = 1024;

            *(v44 + 14) = v65;

            *(v44 + 18) = 2080;
            type metadata accessor for P2PTimer();
            variable initialization expression of AWDLPeer.lastUpdated();
            DispatchTime.distance(to:)();
            v49 = *(v66 + 8);
            v49(v18, v30);
            v50 = DispatchTimeInterval.description.getter();
            v52 = v51;
            v53 = v10;
            v54 = v49;
            (*(v67 + 8))(v53, v68);
            v49(v20, v30);
            v55 = sub_100002320(v50, v52, &v71);
            v56 = v70;

            v57 = v61;
            *(v61 + 20) = v55;
            v58 = v62;
            _os_log_impl(&_mh_execute_header, v62, v64, "Infra association failed on %s with status code %u (duration: %s)", v57, 0x1Cu);
            swift_arrayDestroy();
          }

          else
          {
            v56 = v32;

            swift_bridgeObjectRelease_n();
            v54 = *(v66 + 8);
            v54(v20, v30);
          }

          v59 = *(*v4 + 504);
          v60 = *(v4 + v59);
          *(v4 + v59) = 0;

          sub_1003EB78C(0x300000000);
          return (v54)(v56, v30);
        }

        else
        {
          v34 = v66;
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v71 = v38;
            *v37 = 136315138;
            v40 = Channel.description.getter(v27, v39);
            v42 = sub_100002320(v40, v41, &v71);

            *(v37 + 4) = v42;
            _os_log_impl(&_mh_execute_header, v35, v36, "Infra association on %s handshake complete, waiting for IP address", v37, 0xCu);
            sub_100002A00(v38);
          }

          return (*(v34 + 8))(v70, v30);
        }
      }
    }
  }

  return result;
}

unint64_t sub_1003EDDB4(int a1)
{
  v2 = v1;
  v62 = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v61 = *(v3 - 8);
  v4 = *(v61 + 64);
  __chkstk_darwin();
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v8 = &v53 - v7;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v53 - v14;
  __chkstk_darwin();
  v17 = &v53 - v16;
  result = sub_1003EB694();
  if ((result & 0xFF00000000) != 0x300000000)
  {
    v19 = result;
    v20 = *(*v1 + 488);
    swift_beginAccess();
    sub_100012400(v2 + v20, v8, &unk_100597330, &unk_100481FA0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_100016290(v8, &unk_100597330, &unk_100481FA0);
    }

    else
    {
      v59 = v3;
      v21 = v62;
      (*(v10 + 32))(v17, v8, v9);
      v22 = *(*v2 + 160);
      if (v21)
      {
        (*(v10 + 16))(v15, v17, v9);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v56 = v24;
          v25 = v62;
          v57 = v23;
          v54 = BYTE1(v62);
          v26 = v17;
          v27 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v63 = v55;
          *v27 = 136315906;
          v29 = Channel.description.getter(v19, v28);
          v31 = sub_100002320(v29, v30, &v63);

          *(v27 + 4) = v31;
          v58 = v26;
          *(v27 + 12) = 2080;
          v32 = IEEE80211Status.description.getter(v25);
          v34 = sub_100002320(v32, v33, &v63);

          *(v27 + 14) = v34;
          *(v27 + 22) = 2080;
          v35 = IEEE80211Reason.description.getter(v54);
          v37 = sub_100002320(v35, v36, &v63);

          v53 = v27;
          *(v27 + 24) = v37;
          *(v27 + 32) = 2080;
          type metadata accessor for P2PTimer();
          variable initialization expression of AWDLPeer.lastUpdated();
          v38 = v60;
          DispatchTime.distance(to:)();
          v39 = *(v10 + 8);
          v39(v13, v9);
          v40 = DispatchTimeInterval.description.getter();
          v42 = v41;
          v43 = v38;
          v44 = v39;
          (*(v61 + 8))(v43, v59);
          v39(v15, v9);
          v45 = sub_100002320(v40, v42, &v63);

          v46 = v53;
          *(v53 + 34) = v45;
          v47 = v57;
          _os_log_impl(&_mh_execute_header, v57, v56, "Infra association failed on %s with status code %s reason: %s (duration: %s)", v46, 0x2Au);
          swift_arrayDestroy();

          v17 = v58;
        }

        else
        {

          v44 = *(v10 + 8);
          v44(v15, v9);
        }

        v51 = *(*v2 + 504);
        v52 = *(v2 + v51);
        *(v2 + v51) = 0;

        sub_1003EB78C(0x300000000);
        return (v44)(v17, v9);
      }

      else
      {
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "Infra association complete", v50, 2u);
        }

        return (*(v10 + 8))(v17, v9);
      }
    }
  }

  return result;
}

unint64_t sub_1003EE388()
{
  v1 = *(*v0 + 504);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return sub_1003EB78C(0x300000000);
}

uint64_t sub_1003EE3D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[55];
  v6 = *(v5 + 8);
  v7 = v4[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin();
  v13 = &v36 - v12;
  if (!a1)
  {
    if (*&v2[v4[75]] < 1)
    {
      return result;
    }

    v23 = v4[20];

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = v5;
      v27 = v26;
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v27 = 136315138;
      v28 = WiFiInterface.description.getter();
      v30 = v29;

      v31 = sub_100002320(v28, v30, v39);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s disabling auto-join", v27, 0xCu);
      sub_100002A00(v37);
    }

    else
    {
    }

    v32 = *(*v2 + 96);
    swift_beginAccess();
    (*(v9 + 16))(v13, &v2[v32], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v9 + 8))(v13, AssociatedTypeWitness);
  }

  if (a1 >= 1 && !*&v2[v4[75]])
  {
    v14 = v4[20];

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v38 = v5;
      v18 = v17;
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v18 = 136315138;
      v19 = WiFiInterface.description.getter();
      v21 = v20;

      v22 = sub_100002320(v19, v21, v39);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s enabling auto-join", v18, 0xCu);
      sub_100002A00(v37);
    }

    else
    {
    }

    v34 = *(*v2 + 96);
    swift_beginAccess();
    (*(v9 + 16))(v13, &v2[v34], AssociatedTypeWitness);
    v35 = swift_getAssociatedConformanceWitness();
    (*(v35 + 48))(AssociatedTypeWitness, v35);
    return (*(v9 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1003EE850(uint64_t a1)
{
  v2 = *(*v1 + 600);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return sub_1003EE3D0(v3);
}

uint64_t sub_1003EE894(uint64_t a1)
{
  v2 = *(*a1 + 600);
  result = *(a1 + v2);
  if (result >= 1)
  {
    *(a1 + v2) = result - 1;
    return sub_1003EE3D0(result);
  }

  return result;
}

uint64_t sub_1003EE8FC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  aBlock[4] = a1;
  v22 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);
  v15 = v13;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v8, v5);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_1003EEB80(uint64_t a1)
{
  v2 = *(*a1 + 600);
  result = *(a1 + v2);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + v2) = result + 1;
    return sub_1003EE3D0(result);
  }

  return result;
}

uint64_t sub_1003EEBCC()
{
  v1 = *v0;
  v2 = *(*(*v0 + 440) + 8);
  v3 = *(*v0 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = *(v1 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v9, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t sub_1003EED68(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  *(v14 + 32) = v2;
  aBlock[4] = sub_1003F2D04;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100579B80;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  (*(v9 + 8))(v12, v19);
}

uint64_t sub_1003EF02C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(*a3 + 440);
  v7 = *(v6 + 8);
  v8 = *(*a3 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v61 = &v56 - v12;
  v62 = v8;
  if (!*(a1 + 16))
  {
    v20 = &_swiftEmptySetSingleton;
    if (*(&_swiftEmptySetSingleton + 2))
    {
      goto LABEL_57;
    }

LABEL_60:
  }

  v59 = v10;
  v57 = a2;
  v13 = *(a1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = a1 + 56;
  v16 = -1 << *(a1 + 32);
  v17 = v14 & ~v16;
  v18 = *(a1 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17;
  v58 = AssociatedTypeWitness;
  v60 = v6;
  if ((v18 & 1) == 0)
  {
    v20 = &_swiftEmptySetSingleton;
    LOBYTE(a2) = v57;
    if (*(a1 + 16))
    {
      goto LABEL_34;
    }

    goto LABEL_59;
  }

  v19 = ~v16;
  v20 = &_swiftEmptySetSingleton;
  do
  {
    v21 = *(*(a1 + 48) + v17);
    if (v21 <= 2 && v21 != 1 && v21 != 2)
    {

LABEL_16:
      v23 = *(*a3 + 608);
      v24 = *(a3 + v23);
      LOBYTE(a2) = v57;
      if (v57)
      {
        v25 = v24 + 1;
        AssociatedTypeWitness = v58;
        if (!__OFADD__(v24, 1))
        {
          goto LABEL_22;
        }

        __break(1u);
      }

      AssociatedTypeWitness = v58;
      if (v24 <= 0)
      {
        v20 = &_swiftEmptySetSingleton;
        goto LABEL_33;
      }

      v25 = --v24;
LABEL_22:
      *(a3 + v23) = v25;
      v20 = &_swiftEmptySetSingleton;
      if (!v24)
      {
        v26 = *(&_swiftEmptySetSingleton + 5);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v27 = Hasher._finalize()();
        v28 = -1 << *(&_swiftEmptySetSingleton + 32);
        v29 = v27 & ~v28;
        if ((*(&_swiftEmptySetSingleton + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v29))
        {
          v56 = ~v28;
          while (1)
          {
            v30 = *(*(&_swiftEmptySetSingleton + 6) + v29);
            if (v30 <= 2 && v30 != 1 && v30 != 2)
            {
              break;
            }

            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v31)
            {
              goto LABEL_33;
            }

            v29 = (v29 + 1) & v56;
            if (((*(&_swiftEmptySetSingleton + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v29) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          v20 = &_swiftEmptySetSingleton;
          if (*(a1 + 16))
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_30:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = &_swiftEmptySetSingleton;
          sub_100472848(0, v29, isUniquelyReferenced_nonNull_native);
          v20 = v63;
          if (*(a1 + 16))
          {
            goto LABEL_34;
          }
        }

LABEL_59:
        v10 = v59;
        if (v20[2])
        {
          goto LABEL_57;
        }

        goto LABEL_60;
      }

LABEL_33:
      if (!*(a1 + 16))
      {
        goto LABEL_59;
      }

      goto LABEL_34;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_16;
    }

    v17 = (v17 + 1) & v19;
  }

  while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  LOBYTE(a2) = v57;
  AssociatedTypeWitness = v58;
  if (!*(a1 + 16))
  {
    goto LABEL_59;
  }

LABEL_34:
  v33 = *(a1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v34 = Hasher._finalize()();
  v35 = -1 << *(a1 + 32);
  v36 = v34 & ~v35;
  if (((*(v15 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
  {
    goto LABEL_59;
  }

  v37 = ~v35;
  while (1)
  {
    v38 = *(*(a1 + 48) + v36);
    if (v38 > 2 && v38 != 4)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_42;
    }

    v36 = (v36 + 1) & v37;
    if (((*(v15 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
      AssociatedTypeWitness = v58;
LABEL_55:
      v10 = v59;
      goto LABEL_56;
    }
  }

LABEL_42:
  v41 = *(*a3 + 616);
  v42 = *(a3 + v41);
  if (a2)
  {
    AssociatedTypeWitness = v58;
    v10 = v59;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return result;
    }

    *(a3 + v41) = v42 + 1;
    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
    AssociatedTypeWitness = v58;
    v10 = v59;
    if (v42 > 0)
    {
      v43 = v42 - 1;
      *(a3 + v41) = v43;
      if (!v43)
      {
LABEL_48:
        v44 = v20[5];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v45 = Hasher._finalize()();
        v46 = -1 << *(v20 + 32);
        v47 = v45 & ~v46;
        if ((*(v20 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v47))
        {
          v48 = ~v46;
          while (1)
          {
            v49 = *(v20[6] + v47);
            if (v49 > 2 && v49 != 4)
            {
              break;
            }

            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v50)
            {
              goto LABEL_55;
            }

            v47 = (v47 + 1) & v48;
            if (((*(v20 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v47) & 1) == 0)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
LABEL_54:
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v63 = v20;
          sub_100472848(3, v47, v51);
          v20 = v63;
        }

        goto LABEL_55;
      }
    }
  }

LABEL_56:
  if (!v20[2])
  {
    goto LABEL_60;
  }

LABEL_57:
  v52 = *(*a3 + 96);
  swift_beginAccess();
  v53 = a3 + v52;
  v54 = v61;
  (*(v10 + 16))(v61, v53, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(a2 & 1, v20, AssociatedTypeWitness, AssociatedConformanceWitness);

  return (*(v10 + 8))(v54, AssociatedTypeWitness);
}

uint64_t sub_1003EF930(char a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*(*v1 + 440) + 8);
  v6 = *(*v1 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = *(v1 + *(v3 + 632));
  if (v13 != 3 && a1 == 3)
  {
    v15 = *(v4 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v12, v1 + v15, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v8 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1003EFB14(char a1)
{
  v2 = *(*v1 + 632);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return sub_1003EF930(v3);
}

uint64_t sub_1003EFB60(uint64_t a1, char a2)
{
  v3 = *(*a1 + 600);
  result = *(a1 + v3);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + v3) = result + 1;
    sub_1003EE3D0(result);
    v6 = *(*a1 + 632);
    v7 = *(a1 + v6);
    *(a1 + v6) = a2;
    result = sub_1003EF930(v7);
    v8 = *(*a1 + 624);
    v9 = *(a1 + v8);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      *(a1 + v8) = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003EFC18(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 624);
  v4 = *(a1 + v3);
  if (v4 >= 1)
  {
    *(a1 + v3) = v4 - 1;
    v2 = *a1;
    --v4;
  }

  if (!v4)
  {
    v5 = *(v2 + 632);
    v6 = *(a1 + v5);
    *(a1 + v5) = 3;
    sub_1003EF930(v6);
    v2 = *a1;
  }

  v7 = *(v2 + 600);
  result = *(a1 + v7);
  if (result >= 1)
  {
    *(a1 + v7) = result - 1;
    return sub_1003EE3D0(result);
  }

  return result;
}

uint64_t sub_1003EFCC0(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1003F2CE4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100579AB8;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v6, v3);
  (*(v7 + 8))(v10, v17);
}

uint64_t sub_1003EFF74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*(*a1 + 440) + 8);
  v6 = *(*a1 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v15 - v10;
  v12 = *(v4 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v11, a1 + v12, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 120))(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1003F013C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_1003F03E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*(*a1 + 440) + 8);
  v6 = *(*a1 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v15 - v10;
  v12 = *(v4 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v11, a1 + v12, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 152))(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1003F05A8(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1 + *(*a1 + 592);
  result = swift_beginAccess();
  v10 = *(v8 + *(v4 + 36) + 31);
  if (v10 != 6)
  {
    if (v10 == v3)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v3 != 6)
  {
LABEL_5:
    sub_100012400(v8, v7, &qword_1005995E8, &unk_1004B3040);
    v7[*(v4 + 36) + 31] = v3;
    return sub_10001C638(v7);
  }

  return result;
}

void sub_1003F0724()
{
  if (!qword_100599578)
  {
    sub_10005DD04(&qword_100599580, &qword_1004B2F10);
    sub_10001D6F4(&qword_100599588, &qword_100599580, &qword_1004B2F10, sub_1000C765C);
    v0 = type metadata accessor for ObservableWiFiProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_100599578);
    }
  }
}

void sub_1003F07C8()
{
  if (!qword_100599598)
  {
    sub_10005DD04(&unk_10059A5B0, &unk_1004B2F30);
    sub_10001D6F4(&qword_1005995A0, &unk_10059A5B0, &unk_1004B2F30, sub_100218C7C);
    v0 = type metadata accessor for ObservableWiFiProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_100599598);
    }
  }
}

void sub_1003F086C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1003F08D4()
{
  if (!qword_1005995B0)
  {
    sub_10005DD04(&unk_100599FD0, &qword_100482530);
    sub_1003F0944();
    v0 = type metadata accessor for ObservableWiFiProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1005995B0);
    }
  }
}

unint64_t sub_1003F0944()
{
  result = qword_1005995B8;
  if (!qword_1005995B8)
  {
    sub_10005DD04(&unk_100599FD0, &qword_100482530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005995B8);
  }

  return result;
}

void sub_1003F09C0()
{
  if (!qword_1005995C0)
  {
    sub_10005DD04(&qword_1005995C8, &qword_1004B2F40);
    sub_10001D6F4(&qword_1005995D0, &qword_1005995C8, &qword_1004B2F40, sub_10023758C);
    v0 = type metadata accessor for ObservableWiFiProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1005995C0);
    }
  }
}

void sub_1003F0A64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1003F0AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1003F0B0C()
{
  v0 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
  v1 = *TimeBitmap.Slot.FO.unsafeMutableAddressor();
  v2 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
  v3 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v0, v0, v1, *v2);
  v5 = v4;
  v7 = v6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 32);
  v10 = swift_checkMetadataState();
  return v9(v3, v5, v7, 3, 2, 8, v10, AssociatedConformanceWitness);
}

void sub_1003F0C08(int a1, Swift::UInt a2, Swift::UInt a3, uint64_t a4, unint64_t a5)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  if ((a4 & 0xFF00000000) == 0x300000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Channel.hash(into:)(a1, a4 & 0xFFFFFFFFFFFFLL);
  }

  if ((a5 & 0xFF00000000) == 0x300000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Channel.hash(into:)(a1, a5 & 0xFFFFFFFFFFFFLL);
  }

  v9 = HIBYTE(a5);
  if ((a5 & 0xFF000000000000) == 0x4000000000000)
  {
    Hasher._combine(_:)(0);
    if (v9 != 6)
    {
LABEL_9:
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(HIBYTE(a5));
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(BYTE6(a5) + 1);
    if (v9 != 6)
    {
      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int sub_1003F0D08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  sub_1003F0C08(&v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_1003F0D8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  sub_1003F0C08(&v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

unint64_t sub_1003F0DF8()
{
  result = qword_1005995E0;
  if (!qword_1005995E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005995E0);
  }

  return result;
}

uint64_t sub_1003F0E4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1003F0B0C();
}

uint64_t sub_1003F0E54(unsigned __int8 *a1)
{
  BYTE8(v2) = 0;
  *&v2 = *a1;
  sub_10005DC58(&qword_1005995C8, &qword_1004B2F40);
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t sub_1003F0EB8(unsigned __int16 *a1)
{
  WORD4(v2) = 0;
  *&v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 2);
}

uint64_t sub_1003F0F18(uint64_t *a1)
{
  v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_1003F0F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v203 = a2;
  v211 = a1;
  v4 = *v2;
  v200 = v4[55];
  v5 = *(v200 + 8);
  v6 = v4[54];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v205 = *(AssociatedTypeWitness - 8);
  v7 = *(v205 + 64);
  __chkstk_darwin();
  v185[0] = v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v187 = v185 - v9;
  v215 = v5;
  v207 = v6;
  v10 = swift_getAssociatedTypeWitness();
  v198 = *(v10 - 8);
  v11 = *(v198 + 64);
  __chkstk_darwin();
  v199 = v185 - v12;
  v13 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v197 = v185 - v14;
  v15 = *(*(sub_10005DC58(&qword_100599610, &qword_1004B3078) - 8) + 64);
  __chkstk_darwin();
  v196 = v185 - v16;
  v17 = *(*(sub_10005DC58(&unk_100599620, &qword_1004B3098) - 8) + 64);
  __chkstk_darwin();
  v195 = v185 - v18;
  v19 = *(*(sub_10005DC58(&unk_10059A3C0, &unk_1004B3060) - 8) + 64);
  __chkstk_darwin();
  v194 = v185 - v20;
  v21 = *(*(sub_10005DC58(&unk_10059A6B0, &unk_1004B4D80) - 8) + 64);
  __chkstk_darwin();
  v193 = v185 - v22;
  v23 = *(*(sub_10005DC58(&qword_10059A3E0, &unk_1004B3080) - 8) + 64);
  __chkstk_darwin();
  v192 = v185 - v24;
  v25 = *(*(sub_10005DC58(&qword_100594D50, &unk_1004AEBF0) - 8) + 64);
  __chkstk_darwin();
  v191 = v185 - v26;
  v27 = *(*(sub_10005DC58(&unk_10059B150, &qword_1004B3070) - 8) + 64);
  __chkstk_darwin();
  v201 = v185 - v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v209 = AssociatedConformanceWitness;
  v202 = v10;
  swift_getAssociatedConformanceWitness();
  v204 = type metadata accessor for Preferences();
  v190 = *(v204 - 8);
  v30 = *(v190 + 64);
  __chkstk_darwin();
  v189 = v185 - v31;
  v32 = *(*(sub_10005DC58(&qword_100599618, &qword_1004B3090) - 8) + 64);
  __chkstk_darwin();
  v212 = (v185 - v33);
  v217 = type metadata accessor for Logger();
  v206 = *(v217 - 8);
  v34 = *(v206 + 64);
  __chkstk_darwin();
  v186 = v185 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v208 = v185 - v36;
  v185[1] = v37;
  __chkstk_darwin();
  v214 = v185 - v38;
  v210 = type metadata accessor for UUID();
  v188 = *(v210 - 8);
  v39 = *(v188 + 64);
  __chkstk_darwin();
  v41 = v185 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4[57];
  type metadata accessor for Lock();
  swift_allocObject();
  v43 = Lock.init()();
  v213 = v42;
  *(v42 + v3) = v43;
  v44 = *(*v3 + 488);
  v45 = type metadata accessor for DispatchTime();
  v46 = *(*(v45 - 8) + 56);
  v46(&v3[v44], 1, 1, v45);
  v47 = *(*v3 + 496);
  *&v3[v47] = 24;
  v48 = enum case for DispatchTimeInterval.seconds(_:);
  v49 = type metadata accessor for DispatchTimeInterval();
  v50 = *(*(v49 - 8) + 104);
  v50(&v3[v47], v48, v49);
  *&v3[*(*v3 + 504)] = 0;
  v46(&v3[*(*v3 + 520)], 1, 1, v45);
  v51 = *(*v3 + 528);
  *&v3[v51] = 24;
  v50(&v3[v51], v48, v49);
  *&v3[*(*v3 + 536)] = 0;
  *&v3[*(*v3 + 544)] = 0;
  *&v3[*(*v3 + 552)] = 0;
  v52 = &v3[*(*v3 + 592)];
  UUID.init()();
  v53 = &v52[*(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) + 36)];
  *v53 = 0;
  *(v53 + 1) = 0;
  *(v53 + 10) = 3;
  *(v53 + 4) = 0;
  *(v53 + 3) = 0x604000300000000;
  (*(v188 + 32))(v52, v41, v210);
  *&v3[*(*v3 + 600)] = 0;
  *&v3[*(*v3 + 608)] = 0;
  *&v3[*(*v3 + 616)] = 0;
  *&v3[*(*v3 + 624)] = 0;
  v3[*(*v3 + 632)] = 3;
  v54 = AssociatedTypeWitness;
  v55 = swift_getAssociatedConformanceWitness();
  v210 = (*(v55 + 40))(v54, v55);
  v57 = v56;
  v58 = (*(v55 + 32))(v54, v55);
  if (v58 > 1)
  {
    if (v58 - 2 < 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    v59 = v200;
    goto LABEL_7;
  }

  if (!v58)
  {
    goto LABEL_5;
  }

LABEL_6:
  v59 = v200;
LABEL_7:
  v60 = v212;
  v61 = v209;
  v62 = v204;
  v63 = v214;
  Logger.init(subsystem:category:)();
  v220 = v210;
  v221 = v57;

  v64._countAndFlagsBits = 0x74706F2050325020;
  v64._object = 0xEC000000736E6F69;
  String.append(_:)(v64);
  v204 = v220;
  v188 = v221;
  v65 = *(v206 + 16);
  v212 = (v206 + 16);
  v209 = v65;
  v66 = v208;
  v65(v208, v63, v217);
  v220 = 0;
  LOBYTE(v221) = 1;
  v67 = v189;
  (*(v61 + 15))(v202, v61);
  v68 = Preferences.enableUserspaceP2POptions.getter(v62);
  (*(v190 + 8))(v67, v62);
  v218 = v68;
  v69 = sub_1003EBB3C(v211, v207, v59);
  v71 = v70;
  v72 = swift_allocObject();
  v215 = v57;
  v73 = v72;
  *(v72 + 16) = v69;
  *(v72 + 24) = v71;
  sub_100125588();
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v204, v188, v66, &v220, &v218, sub_1003F2EB4, v73, sub_1003F0F18, v60, 0, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions);
  sub_10001CEA8(v60, &v3[*(*v3 + 448)], &qword_100599618, &qword_1004B3090);
  v74 = *(v213 + v3);
  v75 = AssociatedTypeWitness;
  v76 = swift_getAssociatedConformanceWitness();
  v77 = *(v76 + 72);

  LOBYTE(v218) = v77(v75, v76) & 1;
  v78 = v210;
  v220 = v210;
  v221 = v215;

  v79._countAndFlagsBits = 0x702069462D695720;
  v79._object = 0xEC0000007265776FLL;
  String.append(_:)(v79);
  v80 = v220;
  v81 = v221;
  v82 = v66;
  v83 = v66;
  v84 = v209;
  v209(v83, v214, v217);
  v85 = v201;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v74, &v218, v80, v81, v82, sub_10001BCD8, 0, &type metadata for Bool, v201);
  sub_10001CEA8(v85, &v3[*(*v3 + 464)], &unk_10059B150, &qword_1004B3070);
  v86 = *(v213 + v3);
  v204 = v76;
  v87 = *(v76 + 80);

  v220 = v87(AssociatedTypeWitness, v76);
  v221 = v88;
  v222 = v89;
  v223 = v90;
  v224 = v91;
  v218 = 0;
  v219 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v218 = v78;
  v219 = v215;
  v92._countAndFlagsBits = 0x6E206172666E6920;
  v92._object = 0xEE006B726F777465;
  String.append(_:)(v92);
  v93 = v218;
  v94 = v219;
  v95 = v208;
  v96 = v214;
  v97 = v217;
  v84(v208, v214, v217);
  v98 = sub_10005DC58(&qword_100599580, &qword_1004B2F10);
  sub_10001D6F4(&qword_100599588, &qword_100599580, &qword_1004B2F10, sub_1000C765C);
  v99 = v191;
  v100 = v94;
  v101 = v215;
  v102 = v95;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v86, &v220, v93, v100, v95, sub_1003EBD4C, 0, v98, v191);
  sub_10001CEA8(v99, &v3[*(*v3 + 472)], &qword_100594D50, &unk_1004AEBF0);
  v103 = v213;
  v104 = *(v213 + v3);
  LOBYTE(v218) = 1;
  v220 = 0;
  v221 = 0xE000000000000000;

  _StringGuts.grow(_:)(18);

  v220 = v210;
  v221 = v101;
  v105 = v101;
  v106._object = 0x80000001004C11C0;
  v106._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v106);
  v107 = v220;
  v108 = v221;
  v209(v102, v96, v97);
  sub_1000C76B4();
  v109 = v192;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v104, &v218, v107, v108, v102, sub_1003F0F0C, 0, &type metadata for AutoJoinState, v192);
  sub_10001CEA8(v109, &v3[*(*v3 + 480)], &qword_10059A3E0, &unk_1004B3080);
  v110 = *(v103 + v3);
  v111 = v204;
  v112 = *(v204 + 88);

  v113 = v112(AssociatedTypeWitness, v111);
  if ((v113 & 0x10000) != 0)
  {
    v114 = CountryCode.unknown.unsafeMutableAddressor();
    LOBYTE(v113) = *v114;
    LOBYTE(v114) = *(v114 + 1);
  }

  else
  {
    LODWORD(v114) = v113 >> 8;
  }

  LOBYTE(v218) = v113;
  BYTE1(v218) = v114;
  v115 = v210;
  v220 = v210;
  v221 = v105;
  v116 = v105;

  v117._countAndFlagsBits = 0x7972746E756F6320;
  v117._object = 0xED000065646F6320;
  String.append(_:)(v117);
  v118 = v220;
  v119 = v221;
  v120 = v208;
  v121 = v209;
  v122 = v214;
  v209(v208, v214, v217);
  sub_1001B8EC4();
  v123 = v193;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v110, &v218, v118, v119, v120, sub_1003F0EB8, 0, &type metadata for CountryCode, v193);
  sub_10001CEA8(v123, &v3[*(*v3 + 568)], &unk_10059A6B0, &unk_1004B4D80);
  v124 = *(v213 + v3);
  LOBYTE(v218) = 0;
  v220 = 0;
  v221 = 0xE000000000000000;

  _StringGuts.grow(_:)(19);

  v220 = v115;
  v221 = v116;
  v125._countAndFlagsBits = 0xD000000000000011;
  v125._object = 0x80000001004C11E0;
  String.append(_:)(v125);
  v126 = v220;
  v127 = v221;
  v128 = v217;
  v121(v120, v122, v217);
  v129 = v201;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v124, &v218, v126, v127, v120, sub_10001BCD8, 0, &type metadata for Bool, v201);
  sub_10001CEA8(v129, &v3[*(*v3 + 560)], &unk_10059B150, &qword_1004B3070);
  v130 = v213;
  v131 = *(v213 + v3);
  v220 = 0;
  v221 = 0;
  v121(v120, v122, v128);

  v132 = sub_10005DC58(&unk_100599FD0, &qword_100482530);
  sub_1003F0944();
  v133 = v194;
  v134 = v131;
  v135 = v120;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v134, &v220, 0xD000000000000018, 0x80000001004C1200, v120, sub_1003EBDAC, 0, v132, v194);
  sub_10001CEA8(v133, &v3[*(*v3 + 576)], &unk_10059A3C0, &unk_1004B3060);
  v136 = *(v130 + v3);
  LOBYTE(v218) = 4;
  v220 = v210;
  v221 = v215;

  v137._countAndFlagsBits = 1399804192;
  v137._object = 0xE400000000000000;
  String.append(_:)(v137);
  v139 = v220;
  v138 = v221;
  v121(v135, v122, v217);
  v140 = sub_10005DC58(&qword_1005995C8, &qword_1004B2F40);
  sub_10001D6F4(&qword_1005995D0, &qword_1005995C8, &qword_1004B2F40, sub_10023758C);
  v141 = v195;
  v142 = v139;
  v143 = v138;
  v144 = v135;
  v145 = v217;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v136, &v218, v142, v143, v135, sub_1003F0E54, 0, v140, v195);
  sub_10001CEA8(v141, &v3[*(*v3 + 584)], &unk_100599620, &qword_1004B3098);
  v146 = *(v213 + v3);
  WORD2(v220) = 3;
  LODWORD(v220) = 0;
  v147 = v122;
  v148 = v145;
  v149 = v209;
  v209(v144, v147, v145);

  v150 = sub_10005DC58(&unk_10059A5B0, &unk_1004B2F30);
  sub_10001D6F4(&qword_1005995A0, &unk_10059A5B0, &unk_1004B2F30, sub_100218C7C);
  v151 = v196;
  ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)(v146, &v220, 0xD000000000000017, 0x80000001004C1220, v144, sub_1003EBDF8, 0, v150, v196);
  sub_10001CEA8(v151, &v3[*(*v3 + 512)], &qword_100599610, &qword_1004B3078);
  v152 = v205;
  v153 = v197;
  v154 = AssociatedTypeWitness;
  (*(v205 + 16))(v197, v211, AssociatedTypeWitness);
  (*(v152 + 56))(v153, 0, 1, v154);
  v155 = v199;
  (*(v198 + 16))(v199, v203, v202);
  v149(v144, v214, v148);
  result = WiFiInterface.init(driver:components:logger:)(v153, v155, v144);
  if (result)
  {
    v157 = result;

    v158 = *(*v157 + 168);
    v159 = *v157 + 168;

    v161 = v187;
    v213 = v158;
    v210 = v159;
    v158(v160);
    v162 = swift_allocObject();
    swift_weakInit();

    v163 = v186;
    v149(v186, v214, v148);
    v215 = v157;
    v164 = v206;
    v165 = (*(v206 + 80) + 40) & ~*(v206 + 80);
    v166 = swift_allocObject();
    v167 = v207;
    v168 = v200;
    *(v166 + 2) = v207;
    *(v166 + 3) = v168;
    *(v166 + 4) = v162;
    (*(v164 + 32))(&v166[v165], v163, v148);
    v169 = v204;
    v170 = *(v204 + 24);

    v170(sub_100012864, v166, AssociatedTypeWitness, v169);
    v171 = *(v205 + 8);
    v205 += 8;
    v212 = v171;
    (v171)(v161, AssociatedTypeWitness);

    v173 = v185[0];
    v213(v172);
    v174 = swift_allocObject();
    swift_weakInit();
    v175 = swift_allocObject();
    v175[2] = v167;
    v175[3] = v168;
    v175[4] = v174;
    v176 = *(v169 + 8);
    v177 = *(v176 + 40);

    v178 = v173;
    v179 = AssociatedTypeWitness;
    v180 = v177(sub_1003F2EE0, v175, AssociatedTypeWitness, v176);
    v182 = v181;

    (v212)(v178, v179);

    sub_1003EBA4C(v180, v182);
    v183 = v217;
    v184 = v214;
    (*(*(v169 + 8) + 8))(v179);
    (*(v169 + 168))(v179, v169);
    (*(v206 + 8))(v184, v183);
    return v215;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F2AE0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 432);
  v6 = *(v2 + 440);
  v7 = type metadata accessor for InfrastructureWiFiInterface();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1003F0F6C(a1, a2);
}

void sub_1003F2B34()
{
  v1 = *(*v0 + 504);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_1003EB78C(0x300000000);
  v3 = v0 + *(*v0 + 160);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Infra association ready", v5, 2u);
  }
}

void sub_1003F2C14()
{
  v1 = v0 + *(*v0 + 160);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Infra authentication complete", v3, 2u);
  }
}

uint64_t sub_1003F2D24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1003ED0C4();
}

uint64_t sub_1003F2D30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1003EC714();
}

uint64_t sub_1003F2D3C(uint64_t a1)
{
  v2 = type metadata accessor for DriverEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003F2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7 == 5)
  {
    return sub_100185484(a2, a3, a4, a5, a6);
  }

  if (a7 == 4 || a7 == 1)
  {
  }

  return result;
}

unint64_t sub_1003F2DDC()
{
  result = qword_1005995F8;
  if (!qword_1005995F8)
  {
    sub_10005DD04(&qword_1005995E8, &unk_1004B3040);
    sub_1003F2E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005995F8);
  }

  return result;
}

unint64_t sub_1003F2E60()
{
  result = qword_100599600;
  if (!qword_100599600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100599600);
  }

  return result;
}

uint64_t sub_1003F2EB4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1003F2EE0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1003EBE40(a1, a2);
}

uint64_t sub_1003F2EEC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v4 + 8);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1003EBC8C(a1, v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3, v4);
}

uint64_t sub_1003F2FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_10036A544(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t NANAgentClient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1003F30F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  UUID.init()();
  v12 = nw_agent_client_copy_parameters();
  if (v12)
  {
    *(v5 + 40) = v12;
    swift_unknownObjectRetain();
    v13 = nw_agent_client_copy_path();
    if (v13)
    {
      v14 = nw_path_copy_effective_local_endpoint(v13);
      if (v14)
      {
        port = nw_endpoint_get_port(v14);
        swift_unknownObjectRelease();
      }

      else
      {
        port = 0;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      port = 0;
    }

    swift_unknownObjectRetain();
    *(v5 + 90) = nw_parameters_get_ip_protocol();
    *(v5 + 88) = port;
    *(v5 + 16) = a1;
    *(v5 + 24) = a4;
    *(v5 + 32) = a5;
    swift_unknownObjectRetain();
    sub_10001F89C(a4);
    pid = nw_parameters_get_pid();
    swift_unknownObjectRelease();
    *(v5 + 64) = pid;
    Int32.peerCodeIdentity.getter(pid, &v23);
    v20 = v24;
    if (v24)
    {
      v21 = v23;
      v26 = v25;
      sub_100016290(&v26, &unk_100599FD0, &qword_100482530);
      swift_unknownObjectRelease();
      sub_100010520(a4);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_100010520(a4);
      swift_unknownObjectRelease();
      v20 = 0xE700000000000000;
      v21 = 0x6E776F6E6B6E55;
    }

    *(v5 + 72) = v21;
    *(v5 + 80) = v20;
    *(v5 + 48) = a2;
    *(v5 + 56) = a3;
  }

  else
  {
    sub_100010520(a4);
    swift_unknownObjectRelease();

    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v5 + v11, v16);
    type metadata accessor for NANAgentClient(0);
    v17 = *(*v5 + 48);
    v18 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_1003F3330()
{
  UUID.uuidString.getter();
  sub_1003FC9E0(8);

  v1 = static String._fromSubstring(_:)();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x3A646970202CLL;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v9 = *(v0 + 64);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 93;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 979659099;
}

char *NANAgentClient.deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);
  sub_100010520(*(v0 + 3));
  v3 = *(v0 + 5);
  swift_unknownObjectRelease();
  v4 = *(v0 + 7);

  v5 = *(v0 + 10);

  v6 = OBJC_IVAR____TtC12wifip2pdCore14NANAgentClient_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}