uint64_t sub_100F6F8AC()
{
  v1 = v0[181];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[249] = v3;
  *v3 = v0;
  v3[1] = sub_100F6F984;
  v4 = v0[212];
  v5 = v0[181];

  return unsafeBlocking<A>(context:_:)(v0 + 59, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_100F6F984()
{
  v1 = *(*v0 + 1992);
  v2 = *(*v0 + 1448);
  v4 = *v0;

  return _swift_task_switch(sub_100F6FA9C, v2, 0);
}

uint64_t sub_100F6FA9C()
{
  v1 = v0[94];
  v0[250] = v0[59];
  return _swift_task_switch(sub_100F6FAC0, v1, 0);
}

uint64_t sub_100F6FAC0()
{
  v0[85] = v0[250];
  v1 = async function pointer to Sequence.asyncFilter(_:)[1];
  v2 = swift_task_alloc();
  v0[251] = v2;
  v3 = sub_1000041A4(&qword_1016BE938, &unk_101698C40, &qword_10138C1C0);
  *v2 = v0;
  v2[1] = sub_100F6FBB0;
  v4 = v0[212];
  v5 = v0[94];

  return Sequence.asyncFilter(_:)(&unk_1013F4F60, v5, v4, v3);
}

uint64_t sub_100F6FBB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2008);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[250];
    v9 = v4[238];
    v10 = v4[228];
    v11 = v4[195];
    v12 = v4[94];

    v4[252] = a1;

    return _swift_task_switch(sub_100F6FD28, v12, 0);
  }
}

uint64_t sub_100F6FD28()
{
  v0[253] = *(v0[252] + 16);

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0[254] = qword_10177B348;

  return _swift_task_switch(sub_100F6FDD4, 0, 0);
}

uint64_t sub_100F6FDD4()
{
  v1 = *(v0 + 2032);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 2040) = v3;
  *v3 = v0;
  v3[1] = sub_100F6FE98;
  v4 = *(v0 + 2032);

  return unsafeBlocking<A>(_:)(v0 + 408, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_100F6FE98()
{
  v1 = *(*v0 + 2040);
  v2 = *(*v0 + 2032);
  v4 = *v0;

  return _swift_task_switch(sub_100F6FFB0, 0, 0);
}

uint64_t sub_100F6FFB0()
{
  v1 = v0[94];
  v0[256] = v0[51];
  return _swift_task_switch(sub_100F6FFD4, v1, 0);
}

uint64_t sub_100F6FFD4()
{
  v138 = v0;
  v1 = *(v0 + 2024);
  v2 = sub_101074AC8(*(v0 + 2048));

  if (v1 >= v2)
  {
    v7 = *(v0 + 1600);
    v8 = *(v0 + 1568);
    v9 = *(v0 + 1328);
    v10 = *(v0 + 1280);

    sub_1000D2A70(v9, v10, &qword_10169EF88, &unk_1013E4B70);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v133 = v12;
      v13 = *(v0 + 2490);
      v14 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v14 = 136316163;
      v135 = v11;
      v137[0] = v131;
      if (v13)
      {
        v15 = 0;
        v16 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 432) = *(v0 + 712);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v22;
      }

      v23 = *(v0 + 2024);
      v127 = *(v0 + 1920);
      v129 = *(v0 + 1928);
      v123 = *(v0 + 1704);
      v125 = *(v0 + 1832);
      v115 = *(v0 + 1672);
      v117 = *(v0 + 1680);
      v119 = *(v0 + 1432);
      v121 = *(v0 + 1440);
      v24 = *(v0 + 1312);
      v25 = *(v0 + 1280);
      v26 = *(v0 + 1232);
      v113 = *(v0 + 952);
      v27 = *(v0 + 872);
      v28 = sub_1000136BC(v15, v16, v137);

      *(v14 + 4) = v28;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v23;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v2;
      *(v14 + 32) = 2160;
      *(v14 + 34) = 1752392040;
      *(v14 + 42) = 2081;
      v29 = v25;
      sub_1000D2A70(v25, v24, &qword_10169EF88, &unk_1013E4B70);
      v30 = v26[12];
      v31 = *(v24 + v26[16] + 8);

      v32 = *(v24 + v26[20] + 8);

      v33 = *(v24 + v26[24] + 8);

      v34 = *(v24 + v26[40] + 8);

      v115(v113, v24, v27);
      sub_10000B3A8(v24 + v30, &qword_1016980D0, &unk_10138F3B0);
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v119(v113, v27);
      v38 = sub_1000136BC(v35, v37, v137);

      *(v14 + 44) = v38;

      sub_10000B3A8(v29, &qword_10169EF88, &unk_1013E4B70);
      _os_log_impl(&_mh_execute_header, v135, v133, "%s Cannot store pending circle offer,\npendingExplicitOffers: %ld >= maxPendingSharedItemOffers: %lu.\nBeaconIdentifier: %{private,mask.hash}s.", v14, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v17 = *(v0 + 1928);
      v18 = *(v0 + 1920);
      v19 = *(v0 + 1832);
      v20 = *(v0 + 1704);
      v21 = *(v0 + 1280);

      sub_10000B3A8(v21, &qword_10169EF88, &unk_1013E4B70);
    }

    v39 = *(v0 + 1136);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 424) = 11;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v40 = *(v0 + 416);
    swift_willThrow();
    sub_100F806B4(v39, type metadata accessor for MemberPeerTrust);
    v41 = *(v0 + 1904);
    v42 = *(v0 + 1560);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000076D4(v43, qword_10177A560);
    swift_errorRetain();
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 2490);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 136315394;
      v137[0] = v48;
      if (v46)
      {
        v49 = 0;
        v50 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 664) = *(v0 + 712);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v52;
      }

      v53 = *(v0 + 1032);
      v54 = sub_1000136BC(v49, v50, v137);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2080;
      swift_getErrorValue();
      v56 = *(v0 + 296);
      v55 = *(v0 + 304);
      v57 = *(v0 + 312);
      v58 = Error.localizedDescription.getter();
      v60 = sub_1000136BC(v58, v59, v137);

      *(v47 + 14) = v60;

      _os_log_impl(&_mh_execute_header, v44, v45, "%s Failure on handleCircleTrust, preparing initial data: %s", v47, 0x16u);
      swift_arrayDestroy();

      sub_10000B3A8(v53, &qword_101698C10, &unk_10138C1E0);
    }

    else
    {
      v51 = *(v0 + 1032);

      sub_10000B3A8(v51, &qword_101698C10, &unk_10138C1E0);
    }

    v61 = *(v0 + 1160);

    sub_100F806B4(v61, type metadata accessor for MemberPeerTrust);
    v62 = *(v0 + 1408);
    v63 = *(v0 + 1400);
    v64 = *(v0 + 1392);
    v65 = *(v0 + 1384);
    v66 = *(v0 + 1376);
    v67 = *(v0 + 1368);
    v68 = *(v0 + 1360);
    v69 = *(v0 + 1352);
    v71 = *(v0 + 1344);
    v72 = *(v0 + 1320);
    v73 = *(v0 + 1312);
    v74 = *(v0 + 1304);
    v75 = *(v0 + 1296);
    v76 = *(v0 + 1288);
    v77 = *(v0 + 1280);
    v78 = *(v0 + 1272);
    v79 = *(v0 + 1264);
    v80 = *(v0 + 1256);
    v81 = *(v0 + 1248);
    v82 = *(v0 + 1240);
    v83 = *(v0 + 1224);
    v84 = *(v0 + 1216);
    v85 = *(v0 + 1208);
    v86 = *(v0 + 1200);
    v87 = *(v0 + 1192);
    v88 = *(v0 + 1160);
    v89 = *(v0 + 1152);
    v90 = *(v0 + 1144);
    v91 = *(v0 + 1136);
    v92 = *(v0 + 1128);
    v93 = *(v0 + 1120);
    v94 = *(v0 + 1096);
    v95 = *(v0 + 1088);
    v96 = *(v0 + 1080);
    v97 = *(v0 + 1072);
    v98 = *(v0 + 1064);
    v99 = *(v0 + 1056);
    v100 = *(v0 + 1032);
    v101 = *(v0 + 1024);
    v102 = *(v0 + 1016);
    v103 = *(v0 + 1008);
    v104 = *(v0 + 1000);
    v105 = *(v0 + 992);
    v106 = *(v0 + 984);
    v107 = *(v0 + 976);
    v108 = *(v0 + 952);
    v109 = *(v0 + 944);
    v110 = *(v0 + 936);
    v111 = *(v0 + 928);
    v112 = *(v0 + 920);
    v114 = *(v0 + 912);
    v116 = *(v0 + 904);
    v118 = *(v0 + 896);
    v120 = *(v0 + 864);
    v122 = *(v0 + 856);
    v124 = *(v0 + 848);
    v126 = *(v0 + 840);
    v128 = *(v0 + 816);
    v130 = *(v0 + 808);
    v132 = *(v0 + 792);
    v134 = *(v0 + 784);
    v136 = *(v0 + 760);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v62, &qword_10169EF90, &unk_10139FCF0);

    v70 = *(v0 + 8);

    return v70();
  }

  else
  {
    v3 = *(v0 + 1136);
    v4 = *(*(v0 + 1104) + 28);
    v5 = swift_task_alloc();
    *(v0 + 2056) = v5;
    *v5 = v0;
    v5[1] = sub_100F70AE0;

    return sub_100E8BEF8(v3 + v4);
  }
}

uint64_t sub_100F70AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 2056);
  v16 = *v4;
  v5[258] = a1;
  v5[259] = a2;
  v5[260] = a3;
  v5[261] = v3;

  if (v3)
  {
    v7 = v5[241];
    v8 = v5[240];
    v9 = v5[229];
    v10 = v5[213];
    v11 = v5[196];
    v12 = v5[94];

    v13 = sub_100F71EC8;
    v14 = v12;
  }

  else
  {
    v14 = v5[94];
    v13 = sub_100F70C54;
  }

  return _swift_task_switch(v13, v14, 0);
}

void sub_100F70C54()
{
  v223 = v0;
  if (*(v0 + 2080))
  {
    v212 = *(v0 + 2088);
    v185 = *(v0 + 2491);
    v153 = *(v0 + 1928);
    v1 = *(v0 + 1920);
    v2 = *(v0 + 1832);
    v3 = *(v0 + 1704);
    v173 = *(v0 + 1672);
    v176 = *(v0 + 1680);
    v179 = *(v0 + 1568);
    v169 = *(v0 + 1424);
    v167 = *(v0 + 1416);
    v4 = *(v0 + 1384);
    v5 = *(v0 + 1376);
    v191 = *(v0 + 1368);
    v194 = *(v0 + 1360);
    v6 = *(v0 + 1336);
    v215 = *(v0 + 1328);
    v219 = *(v0 + 1408);
    v7 = *(v0 + 1272);
    v188 = *(v0 + 1264);
    v197 = *(v0 + 1256);
    v200 = *(v0 + 1248);
    v8 = *(v0 + 1232);
    v182 = *(v0 + 1224);
    v9 = *(v0 + 1200);
    v161 = *(v0 + 1160);
    v164 = *(v0 + 1168);
    v156 = *(v0 + 1104);
    v204 = *(v0 + 1040);
    v208 = *(v0 + 1096);
    v159 = *(v0 + 920);
    v10 = *(v0 + 872);

    sub_1000D2A70(v219, v4, &qword_10169EF90, &unk_10139FCF0);
    v11 = *(v4 + v6[16] + 16);

    v12 = *(v4 + v6[20] + 8);

    v13 = *(v4 + v6[24]);

    sub_100016590(*(v4 + v6[28]), *(v4 + v6[28] + 8));
    sub_1000D2A70(v215, v7, &qword_10169EF88, &unk_1013E4B70);
    v14 = *(v7 + v8[16] + 8);

    v15 = *(v7 + v8[20] + 8);

    v16 = *(v7 + v8[24] + 8);

    v17 = *(v7 + v8[40] + 8);

    sub_1000D2A70(v219, v5, &qword_10169EF90, &unk_10139FCF0);
    v18 = *(v5 + v6[16] + 16);

    v19 = *(v5 + v6[20] + 8);

    v20 = *(v5 + v6[24]);

    sub_100016590(*(v5 + v6[28]), *(v5 + v6[28] + 8));
    v167(v159, v161 + *(v156 + 20), v10);
    v170 = v8[12];
    *v9 = xmmword_10138C660;
    v173(&v9[v164[5]], v4, v10);
    v173(&v9[v164[6]], v7, v10);
    v173(&v9[v164[7]], v5, v10);
    v173(&v9[v164[8]], v159, v10);
    *&v9[v164[9]] = v179;
    v9[v164[10]] = v185;
    sub_10000B3A8(v7 + v170, &qword_1016980D0, &unk_10138F3B0);
    sub_100F80620(v9, v182, type metadata accessor for MemberSharingCircle);
    sub_1000D2A70(v215, v188, &qword_10169EF88, &unk_1013E4B70);
    v21 = *(v188 + v8[16] + 8);

    v22 = *(v188 + v8[20] + 8);

    v23 = *(v188 + v8[24] + 8);

    v24 = *(v188 + v8[40] + 8);

    sub_1000D2A70(v219, v191, &qword_10169EF90, &unk_10139FCF0);
    v25 = *(v191 + v6[16] + 16);

    v26 = *(v191 + v6[20] + 8);

    v27 = *(v191 + v6[24]);

    sub_100016590(*(v191 + v6[28]), *(v191 + v6[28] + 8));
    sub_1000D2A70(v219, v194, &qword_10169EF90, &unk_10139FCF0);
    v28 = *(v194 + v6[16] + 16);

    v29 = (v194 + v6[20]);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v194 + v6[24]);

    sub_100016590(*(v194 + v6[28]), *(v194 + v6[28] + 8));
    sub_1000D2A70(v215, v197, &qword_10169EF88, &unk_1013E4B70);
    v33 = *(v197 + v8[16] + 8);

    v34 = *(v197 + v8[20] + 8);

    v35 = (v197 + v8[24]);
    v36 = *v35;
    v220 = v35[1];
    v37 = *(v197 + v8[40] + 8);

    sub_1000D2A70(v215, v200, &qword_10169EF88, &unk_1013E4B70);
    v38 = *(v200 + v8[16] + 8);

    v39 = (v200 + v8[20]);
    v40 = *v39;
    v41 = v39[1];
    v42 = *(v200 + v8[24] + 8);

    v43 = *(v200 + v8[40] + 8);

    v44 = *(v204 + 72);
    v45 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v182, v208 + v44);
    if (v212)
    {

      objc_autoreleasePoolPop(v45);
    }

    else
    {
      v180 = *(v0 + 2072);
      v183 = *(v0 + 2080);
      v171 = *(v0 + 2064);
      v145 = *(v0 + 1672);
      v147 = *(v0 + 1680);
      v195 = *(v0 + 1432);
      v198 = *(v0 + 1440);
      v149 = *(v0 + 1368);
      v209 = *(v0 + 1360);
      v186 = v40;
      v58 = *(v0 + 1328);
      v174 = v36;
      v59 = *(v0 + 1312);
      v216 = *(v0 + 1264);
      v201 = *(v0 + 1256);
      v192 = *(v0 + 1248);
      v60 = *(v0 + 1232);
      v61 = *(v0 + 1136);
      v62 = *(v0 + 1096);
      v165 = v41;
      v63 = *(v0 + 1040);
      v151 = v30;
      v154 = v31;
      v64 = *(v0 + 880);
      v65 = *(v0 + 872);
      v205 = *(v0 + 2444);
      v162 = *(v0 + 2440);
      v189 = v60[12];
      v177 = *(v0 + 2488);
      objc_autoreleasePoolPop(v45);
      (*(v64 + 56))(&v62[v63[19]], 1, 1, v65);
      sub_1000D2A70(v58, v59, &qword_10169EF88, &unk_1013E4B70);
      v157 = v60[12];
      v66 = *(v59 + v60[16] + 8);

      v67 = *(v59 + v60[20] + 8);

      v68 = *(v59 + v60[24] + 8);

      v69 = *(v59 + v60[40] + 8);

      v70 = v63[14];
      v140 = v63[15];
      sub_100F806B4(v61, type metadata accessor for MemberPeerTrust);
      v71 = &v62[v63[20]];
      v72 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      v142 = *(*(v72 - 8) + 56);
      v142(v71, 1, 1, v72);
      *v62 = xmmword_10138C660;
      v145(&v62[v63[5]], v216, v65);
      v145(&v62[v63[6]], v149, v65);
      v73 = &v62[v63[7]];
      *v73 = v171;
      *(v73 + 1) = v180;
      *(v73 + 2) = v183;
      v74 = &v62[v63[8]];
      *v74 = v151;
      *(v74 + 1) = v154;
      v75 = &v62[v63[9]];
      *v75 = v174;
      *(v75 + 1) = v220;
      v76 = &v62[v63[10]];
      *v76 = v186;
      *(v76 + 1) = v165;
      *&v62[v63[11]] = v162;
      *&v62[v63[12]] = v205;
      v62[v63[13]] = 1;
      v62[v70] = 3;
      *&v62[v140] = -1;
      v62[v63[16]] = v177;
      *&v62[v63[17]] = 1;
      sub_10000B3A8(v71, &unk_1016AF890, &qword_1013926D0);
      *v71 = 1;
      sub_1000D2AD8(v59 + v157, &v71[*(v72 + 20)], &qword_1016980D0, &unk_10138F3B0);
      v142(v71, 0, 1, v72);
      v195(v59, v65);
      sub_10000B3A8(v192 + v189, &qword_1016980D0, &unk_10138F3B0);
      v195(v192, v65);
      sub_10000B3A8(v201 + v189, &qword_1016980D0, &unk_10138F3B0);
      v195(v201, v65);
      v195(v209, v65);
      sub_10000B3A8(v216 + v189, &qword_1016980D0, &unk_10138F3B0);
      v97 = sub_100890F1C(v177, (v162 & v205) == -1);
      v98 = (*(v0 + 1408) + *(v0 + 2448));
      v99 = sub_1000035D0((*(v0 + 752) + 248), *(*(v0 + 752) + 272));
      v100 = *v98;
      v101 = v98[1];
      v102 = *v99;
      v103 = swift_task_alloc();
      *(v0 + 2096) = v103;
      *v103 = v0;
      v103[1] = sub_100F72544;
      v104 = *(v0 + 1224);
      v105 = *(v0 + 1160);

      sub_100C77218(v100, v101, v104, v105, v97);
    }
  }

  else
  {
    v46 = *(v0 + 1904);
    v47 = *(v0 + 1600);
    v48 = *(v0 + 1568);
    v49 = *(v0 + 1560);
    v50 = *(v0 + 1136);
    v51 = *(v0 + 1120);

    sub_100F80550(v50, v51, type metadata accessor for MemberPeerTrust);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 2490);
      v55 = swift_slowAlloc();
      v222[0] = swift_slowAlloc();
      *v55 = 136315651;
      if (v54)
      {
        v56 = 0;
        v57 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 440) = *(v0 + 712);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v86;
      }

      v202 = *(v0 + 1920);
      v206 = *(v0 + 1928);
      v87 = *(v0 + 1832);
      v88 = *(v0 + 1704);
      v210 = *(v0 + 1136);
      v89 = *(v0 + 1120);
      v90 = *(v0 + 1104);
      v213 = *(v0 + 1032);
      v217 = *(v0 + 1160);
      v91 = sub_1000136BC(v56, v57, v222);

      *(v55 + 4) = v91;
      *(v55 + 12) = 2160;
      *(v55 + 14) = 1752392040;
      *(v55 + 22) = 2081;
      v93 = v89 + *(v90 + 28);
      v94 = sub_100988F40(v92);
      v96 = sub_1000136BC(v94, v95, v222);

      *(v55 + 24) = v96;

      sub_100F806B4(v89, type metadata accessor for MemberPeerTrust);
      _os_log_impl(&_mh_execute_header, v52, v53, "%s Failure on handleCircleTrust, can't get owner handle for : %{private,mask.hash}s", v55, 0x20u);
      swift_arrayDestroy();

      sub_100F806B4(v210, type metadata accessor for MemberPeerTrust);
      sub_10000B3A8(v213, &qword_101698C10, &unk_10138C1E0);
      v85 = v217;
    }

    else
    {
      v77 = *(v0 + 1928);
      v78 = *(v0 + 1920);
      v79 = *(v0 + 1832);
      v80 = *(v0 + 1704);
      v81 = *(v0 + 1160);
      v82 = *(v0 + 1136);
      v83 = *(v0 + 1120);
      v84 = *(v0 + 1032);

      sub_100F806B4(v83, type metadata accessor for MemberPeerTrust);

      sub_100F806B4(v82, type metadata accessor for MemberPeerTrust);
      sub_10000B3A8(v84, &qword_101698C10, &unk_10138C1E0);
      v85 = v81;
    }

    sub_100F806B4(v85, type metadata accessor for MemberPeerTrust);
    v106 = *(v0 + 1408);
    v107 = *(v0 + 1400);
    v108 = *(v0 + 1392);
    v109 = *(v0 + 1384);
    v110 = *(v0 + 1376);
    v111 = *(v0 + 1368);
    v112 = *(v0 + 1360);
    v113 = *(v0 + 1352);
    v115 = *(v0 + 1344);
    v116 = *(v0 + 1320);
    v117 = *(v0 + 1312);
    v118 = *(v0 + 1304);
    v119 = *(v0 + 1296);
    v120 = *(v0 + 1288);
    v121 = *(v0 + 1280);
    v122 = *(v0 + 1272);
    v123 = *(v0 + 1264);
    v124 = *(v0 + 1256);
    v125 = *(v0 + 1248);
    v126 = *(v0 + 1240);
    v127 = *(v0 + 1224);
    v128 = *(v0 + 1216);
    v129 = *(v0 + 1208);
    v130 = *(v0 + 1200);
    v131 = *(v0 + 1192);
    v132 = *(v0 + 1160);
    v133 = *(v0 + 1152);
    v134 = *(v0 + 1144);
    v135 = *(v0 + 1136);
    v136 = *(v0 + 1128);
    v137 = *(v0 + 1120);
    v138 = *(v0 + 1096);
    v139 = *(v0 + 1088);
    v141 = *(v0 + 1080);
    v143 = *(v0 + 1072);
    v144 = *(v0 + 1064);
    v146 = *(v0 + 1056);
    v148 = *(v0 + 1032);
    v150 = *(v0 + 1024);
    v152 = *(v0 + 1016);
    v155 = *(v0 + 1008);
    v158 = *(v0 + 1000);
    v160 = *(v0 + 992);
    v163 = *(v0 + 984);
    v166 = *(v0 + 976);
    v168 = *(v0 + 952);
    v172 = *(v0 + 944);
    v175 = *(v0 + 936);
    v178 = *(v0 + 928);
    v181 = *(v0 + 920);
    v184 = *(v0 + 912);
    v187 = *(v0 + 904);
    v190 = *(v0 + 896);
    v193 = *(v0 + 864);
    v196 = *(v0 + 856);
    v199 = *(v0 + 848);
    v203 = *(v0 + 840);
    v207 = *(v0 + 816);
    v211 = *(v0 + 808);
    v214 = *(v0 + 792);
    v218 = *(v0 + 784);
    v221 = *(v0 + 760);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v106, &qword_10169EF90, &unk_10139FCF0);

    v114 = *(v0 + 8);

    v114();
  }
}

uint64_t sub_100F71EC8()
{
  v88 = v0;
  sub_100F806B4(*(v0 + 1136), type metadata accessor for MemberPeerTrust);
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1560);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  swift_errorRetain();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 2490);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315394;
    v87[0] = v9;
    if (v7)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 664) = *(v0 + 712);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v13;
    }

    v14 = *(v0 + 1032);
    v15 = sub_1000136BC(v10, v11, v87);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v18 = *(v0 + 312);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v87);

    *(v8 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v5, v6, "%s Failure on handleCircleTrust, preparing initial data: %s", v8, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v14, &qword_101698C10, &unk_10138C1E0);
  }

  else
  {
    v12 = *(v0 + 1032);

    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
  }

  v22 = *(v0 + 1160);

  sub_100F806B4(v22, type metadata accessor for MemberPeerTrust);
  v23 = *(v0 + 1408);
  v24 = *(v0 + 1400);
  v25 = *(v0 + 1392);
  v26 = *(v0 + 1384);
  v27 = *(v0 + 1376);
  v28 = *(v0 + 1368);
  v29 = *(v0 + 1360);
  v30 = *(v0 + 1352);
  v33 = *(v0 + 1344);
  v34 = *(v0 + 1320);
  v35 = *(v0 + 1312);
  v36 = *(v0 + 1304);
  v37 = *(v0 + 1296);
  v38 = *(v0 + 1288);
  v39 = *(v0 + 1280);
  v40 = *(v0 + 1272);
  v41 = *(v0 + 1264);
  v42 = *(v0 + 1256);
  v43 = *(v0 + 1248);
  v44 = *(v0 + 1240);
  v45 = *(v0 + 1224);
  v46 = *(v0 + 1216);
  v47 = *(v0 + 1208);
  v48 = *(v0 + 1200);
  v49 = *(v0 + 1192);
  v50 = *(v0 + 1160);
  v51 = *(v0 + 1152);
  v52 = *(v0 + 1144);
  v53 = *(v0 + 1136);
  v54 = *(v0 + 1128);
  v55 = *(v0 + 1120);
  v56 = *(v0 + 1096);
  v57 = *(v0 + 1088);
  v58 = *(v0 + 1080);
  v59 = *(v0 + 1072);
  v60 = *(v0 + 1064);
  v61 = *(v0 + 1056);
  v62 = *(v0 + 1032);
  v63 = *(v0 + 1024);
  v64 = *(v0 + 1016);
  v65 = *(v0 + 1008);
  v66 = *(v0 + 1000);
  v67 = *(v0 + 992);
  v68 = *(v0 + 984);
  v69 = *(v0 + 976);
  v70 = *(v0 + 952);
  v71 = *(v0 + 944);
  v72 = *(v0 + 936);
  v73 = *(v0 + 928);
  v74 = *(v0 + 920);
  v75 = *(v0 + 912);
  v76 = *(v0 + 904);
  v77 = *(v0 + 896);
  v78 = *(v0 + 864);
  v79 = *(v0 + 856);
  v80 = *(v0 + 848);
  v81 = *(v0 + 840);
  v82 = *(v0 + 816);
  v83 = *(v0 + 808);
  v84 = *(v0 + 792);
  v85 = *(v0 + 784);
  v86 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v23, &qword_10169EF90, &unk_10139FCF0);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100F72544()
{
  v2 = *v1;
  v3 = *(*v1 + 2096);
  v10 = *v1;
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v4 = v2[238];
    v5 = v2[195];
    v6 = v2[94];

    v7 = sub_100F731C4;
    v8 = v6;
  }

  else
  {
    v8 = v2[181];
    v7 = sub_100F72678;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100F72678()
{
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1672);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1424);
  v5 = *(v0 + 952);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = (*(v0 + 2456) + 24) & ~*(v0 + 2456);
  (*(v0 + 1416))(v5, *(v0 + 1328), v7);
  v9 = swift_allocObject();
  *(v0 + 2112) = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2120) = v11;
  *v11 = v0;
  v11[1] = sub_100F727D4;
  v12 = *(v0 + 816);
  v13 = *(v0 + 800);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100F80278, v9, v13);
}

uint64_t sub_100F727D4()
{
  v1 = *(*v0 + 2120);
  v2 = *(*v0 + 2112);
  v3 = *(*v0 + 752);
  v5 = *v0;

  return _swift_task_switch(sub_100F72900, v3, 0);
}

uint64_t sub_100F72900()
{
  v114 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 808);
  sub_1000D2A70(*(v0 + 816), v3, &unk_101698C30, &unk_101392630);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 808), &unk_101698C30, &unk_101392630);
    v4 = 6;
  }

  else
  {
    v5 = *(v0 + 808);
    v4 = *(v5 + *(*(v0 + 1040) + 64));
    sub_100F806B4(v5, type metadata accessor for SharedBeaconRecord);
  }

  *(v0 + 2492) = v4;
  v6 = *(v0 + 1560);
  v7 = *(v0 + 1440);
  v8 = *(v0 + 1432);
  v9 = *(v0 + 1408);
  v10 = *(v0 + 1352);
  v11 = *(v0 + 1336);
  v12 = *(v0 + 1224);
  v104 = *(v0 + 1096);
  v106 = *(v0 + 1904);
  v13 = *(v0 + 872);
  v14 = *(v0 + 816);
  v108 = *(v0 + 792);
  v110 = *(v0 + 2104);
  sub_1000D2A70(v9, v10, &qword_10169EF90, &unk_10139FCF0);
  *(v0 + 2493) = *(v10 + v11[12]);
  v15 = *(v10 + v11[16] + 16);

  v16 = *(v10 + v11[20] + 8);

  v17 = *(v10 + v11[24]);

  sub_100016590(*(v10 + v11[28]), *(v10 + v11[28] + 8));
  v8(v10, v13);
  v18 = swift_task_alloc();
  v18[2] = v12;
  v18[3] = v106;
  v18[4] = v14;
  v18[5] = v104;
  v18[6] = v9;
  v18[7] = v6;

  sub_100EC0C48(sub_100F802A4, v108);
  v19 = *(v0 + 1904);
  v20 = *(v0 + 1560);
  if (v110)
  {
    v21 = *(v0 + 1560);
    swift_bridgeObjectRelease_n();

    v22 = *(v0 + 1600);
    swift_errorRetain();
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 2490);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v113 = v28;
      *v26 = 136315394;
      if (v25)
      {
        v29 = 0;
        v30 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 480) = *(v0 + 712);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v39;
      }

      v111 = *(v0 + 1160);
      v40 = *(v0 + 1032);
      v41 = sub_1000136BC(v29, v30, &v113);

      *(v26 + 4) = v41;
      *(v26 + 12) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v42;
      *v27 = v42;

      _os_log_impl(&_mh_execute_header, v23, v24, "%s Failure on handleCircleTrust, updating iCloud: %@", v26, 0x16u);
      sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v28);

      sub_10000B3A8(v40, &qword_101698C10, &unk_10138C1E0);
      v38 = v111;
    }

    else
    {
      v36 = *(v0 + 1160);
      v37 = *(v0 + 1032);

      sub_10000B3A8(v37, &qword_101698C10, &unk_10138C1E0);
      v38 = v36;
    }

    sub_100F806B4(v38, type metadata accessor for MemberPeerTrust);
    v43 = *(v0 + 1224);
    v44 = *(v0 + 1096);
    sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
    sub_100F806B4(v44, type metadata accessor for SharedBeaconRecord);
    sub_100F806B4(v43, type metadata accessor for MemberSharingCircle);
    v45 = *(v0 + 1408);
    v46 = *(v0 + 1400);
    v47 = *(v0 + 1392);
    v48 = *(v0 + 1384);
    v49 = *(v0 + 1376);
    v50 = *(v0 + 1368);
    v51 = *(v0 + 1360);
    v52 = *(v0 + 1352);
    v54 = *(v0 + 1344);
    v55 = *(v0 + 1320);
    v56 = *(v0 + 1312);
    v57 = *(v0 + 1304);
    v58 = *(v0 + 1296);
    v59 = *(v0 + 1288);
    v60 = *(v0 + 1280);
    v61 = *(v0 + 1272);
    v62 = *(v0 + 1264);
    v63 = *(v0 + 1256);
    v64 = *(v0 + 1248);
    v65 = *(v0 + 1240);
    v66 = *(v0 + 1224);
    v67 = *(v0 + 1216);
    v68 = *(v0 + 1208);
    v69 = *(v0 + 1200);
    v70 = *(v0 + 1192);
    v71 = *(v0 + 1160);
    v72 = *(v0 + 1152);
    v73 = *(v0 + 1144);
    v74 = *(v0 + 1136);
    v75 = *(v0 + 1128);
    v76 = *(v0 + 1120);
    v77 = *(v0 + 1096);
    v78 = *(v0 + 1088);
    v79 = *(v0 + 1080);
    v80 = *(v0 + 1072);
    v81 = *(v0 + 1064);
    v82 = *(v0 + 1056);
    v83 = *(v0 + 1032);
    v84 = *(v0 + 1024);
    v85 = *(v0 + 1016);
    v86 = *(v0 + 1008);
    v87 = *(v0 + 1000);
    v88 = *(v0 + 992);
    v89 = *(v0 + 984);
    v90 = *(v0 + 976);
    v91 = *(v0 + 952);
    v92 = *(v0 + 944);
    v93 = *(v0 + 936);
    v94 = *(v0 + 928);
    v95 = *(v0 + 920);
    v96 = *(v0 + 912);
    v97 = *(v0 + 904);
    v98 = *(v0 + 896);
    v99 = *(v0 + 864);
    v100 = *(v0 + 856);
    v101 = *(v0 + 848);
    v102 = *(v0 + 840);
    v103 = *(v0 + 816);
    v105 = *(v0 + 808);
    v107 = *(v0 + 792);
    v109 = *(v0 + 784);
    v112 = *(v0 + 760);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v45, &qword_10169EF90, &unk_10139FCF0);

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v31 = *(v0 + 1904);

    v32 = swift_task_alloc();
    *(v0 + 2128) = v32;
    *v32 = v0;
    v32[1] = sub_100F7381C;
    v33 = *(v0 + 1448);
    v34 = *(v0 + 792);

    return sub_100E6CFC4(v34);
  }
}

uint64_t sub_100F731C4()
{
  v88 = v0;
  v1 = *(v0 + 2104);
  v2 = *(v0 + 1600);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2490);
    v6 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v6 = 136315394;
    if (v5)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 456) = *(v0 + 712);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v12;
    }

    v13 = *(v0 + 1160);
    v14 = *(v0 + 1032);
    v15 = sub_1000136BC(v7, v8, v87);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 264);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v87);

    *(v6 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failure on handleCircleTrust, saving initial key packages: %s", v6, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v14, &qword_101698C10, &unk_10138C1E0);
    v11 = v13;
  }

  else
  {
    v9 = *(v0 + 1160);
    v10 = *(v0 + 1032);

    sub_10000B3A8(v10, &qword_101698C10, &unk_10138C1E0);
    v11 = v9;
  }

  sub_100F806B4(v11, type metadata accessor for MemberPeerTrust);
  v22 = *(v0 + 1224);
  sub_100F806B4(*(v0 + 1096), type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v22, type metadata accessor for MemberSharingCircle);
  v23 = *(v0 + 1408);
  v24 = *(v0 + 1400);
  v25 = *(v0 + 1392);
  v26 = *(v0 + 1384);
  v27 = *(v0 + 1376);
  v28 = *(v0 + 1368);
  v29 = *(v0 + 1360);
  v30 = *(v0 + 1352);
  v33 = *(v0 + 1344);
  v34 = *(v0 + 1320);
  v35 = *(v0 + 1312);
  v36 = *(v0 + 1304);
  v37 = *(v0 + 1296);
  v38 = *(v0 + 1288);
  v39 = *(v0 + 1280);
  v40 = *(v0 + 1272);
  v41 = *(v0 + 1264);
  v42 = *(v0 + 1256);
  v43 = *(v0 + 1248);
  v44 = *(v0 + 1240);
  v45 = *(v0 + 1224);
  v46 = *(v0 + 1216);
  v47 = *(v0 + 1208);
  v48 = *(v0 + 1200);
  v49 = *(v0 + 1192);
  v50 = *(v0 + 1160);
  v51 = *(v0 + 1152);
  v52 = *(v0 + 1144);
  v53 = *(v0 + 1136);
  v54 = *(v0 + 1128);
  v55 = *(v0 + 1120);
  v56 = *(v0 + 1096);
  v57 = *(v0 + 1088);
  v58 = *(v0 + 1080);
  v59 = *(v0 + 1072);
  v60 = *(v0 + 1064);
  v61 = *(v0 + 1056);
  v62 = *(v0 + 1032);
  v63 = *(v0 + 1024);
  v64 = *(v0 + 1016);
  v65 = *(v0 + 1008);
  v66 = *(v0 + 1000);
  v67 = *(v0 + 992);
  v68 = *(v0 + 984);
  v69 = *(v0 + 976);
  v70 = *(v0 + 952);
  v71 = *(v0 + 944);
  v72 = *(v0 + 936);
  v73 = *(v0 + 928);
  v74 = *(v0 + 920);
  v75 = *(v0 + 912);
  v76 = *(v0 + 904);
  v77 = *(v0 + 896);
  v78 = *(v0 + 864);
  v79 = *(v0 + 856);
  v80 = *(v0 + 848);
  v81 = *(v0 + 840);
  v82 = *(v0 + 816);
  v83 = *(v0 + 808);
  v84 = *(v0 + 792);
  v85 = *(v0 + 784);
  v86 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v23, &qword_10169EF90, &unk_10139FCF0);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100F7381C()
{
  v2 = *v1;
  v3 = *(*v1 + 2128);
  v9 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v4 = *(v2 + 1560);
    v5 = *(v2 + 752);

    v6 = sub_100F79CE0;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 752);
    v6 = sub_100F73944;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100F73944()
{
  v34 = v0;
  v1 = *(v0 + 2136);
  v2 = *(v0 + 1328);
  v30 = *(v0 + 1224);
  v31 = *(v0 + 1600);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(*(v0 + 752) + 392);
  v8 = *(v7 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  static DispatchWorkItemFlags.barrier.getter();
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v2;
  v9[4] = sub_1000BB4A4;
  v9[5] = 0;
  OS_dispatch_queue.sync<A>(flags:execute:)();

  (*(v5 + 8))(v4, v6);
  sub_100F80550(v30, v3, type metadata accessor for MemberSharingCircle);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 2490);
    v13 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v13 = 136315651;
    if (v12)
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 616) = *(v0 + 712);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v18;
    }

    v19 = *(v0 + 1192);
    v20 = *(v0 + 1168);
    v21 = *(v0 + 872);
    v32 = *(v0 + 792);
    v22 = sub_1000136BC(v14, v15, v33);

    *(v13 + 4) = v22;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v23 = *(v20 + 20);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = sub_1000136BC(v24, v25, v33);

    *(v13 + 24) = v26;
    sub_100F806B4(v19, type metadata accessor for MemberSharingCircle);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Data update on handle circle trust. Create %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();

    v17 = v32;
  }

  else
  {
    v16 = *(v0 + 792);
    sub_100F806B4(*(v0 + 1192), type metadata accessor for MemberSharingCircle);

    v17 = v16;
  }

  sub_10000B3A8(v17, &qword_1016975C8, &qword_10138C1F0);
  v27 = async function pointer to daemon.getter[1];
  v28 = swift_task_alloc();
  *(v0 + 2144) = v28;
  *v28 = v0;
  v28[1] = sub_100F73CD0;

  return daemon.getter();
}

uint64_t sub_100F73CD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2144);
  v12 = *v1;
  v3[269] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[270] = v6;
  v7 = type metadata accessor for Daemon();
  v3[271] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[272] = v9;
  v10 = sub_100F80970(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100F73EB0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F73EB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2160);
  v6 = *v2;
  v4[273] = a1;
  v4[274] = v1;

  if (v1)
  {
    v4[279] = v1;
    v7 = v4[94];
    v8 = sub_100F743E4;
  }

  else
  {
    v8 = sub_100F73FE8;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F73FE8()
{
  v1 = v0[274];
  v2 = v0[273];
  sub_10001B108();
  v0[275] = v3;
  v0[276] = v1;
  v4 = v0[271];
  v5 = v0[269];
  sub_100F80970(&qword_1016969E0, &type metadata accessor for Daemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v8 = sub_100F74374;
  }

  else
  {
    v8 = sub_100F740C4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100F740C4()
{
  v1 = v0[273];
  v2 = v0[269];
  v3 = v0[94];

  return _swift_task_switch(sub_100F7413C, v3, 0);
}

uint64_t sub_100F7413C()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 2490);
  *(v0 + 232) = *(v0 + 1040);
  *(v0 + 240) = sub_100F80970(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v3 = sub_1000280DC((v0 + 208));
  sub_100F80550(v1, v3, type metadata accessor for SharedBeaconRecord);
  v4 = swift_task_alloc();
  *(v0 + 2216) = v4;
  *v4 = v0;
  v4[1] = sub_100F7424C;
  v5 = *(v0 + 2200);
  v6 = *(v0 + 712);

  return sub_1006962EC(v0 + 208, v6, v2 & 1);
}

uint64_t sub_100F7424C()
{
  v2 = *v1;
  v3 = *(*v1 + 2216);
  v8 = *v1;
  *(*v1 + 2224) = v0;

  if (v0)
  {
    v4 = *(v2 + 752);
    v5 = sub_100F7A378;
  }

  else
  {
    v6 = *(v2 + 752);
    sub_100007BAC((v2 + 208));
    v5 = sub_100F747F8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100F74374()
{
  v1 = v0[273];

  v0[279] = v0[276];
  v2 = v0[94];

  return _swift_task_switch(sub_100F743E4, v2, 0);
}

uint64_t sub_100F743E4()
{
  v37 = v0;
  v1 = *(v0 + 2152);

  v2 = *(v0 + 2232);
  v3 = *(v0 + 1600);
  sub_100F80550(*(v0 + 1096), *(v0 + 1056), type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2490);
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v7 = 136315907;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 592) = *(v0 + 712);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v13;
    }

    v14 = *(v0 + 1056);
    v15 = *(v0 + 1040);
    v16 = *(v0 + 872);
    v17 = sub_1000136BC(v8, v9, &v36);

    *(v7 + 4) = v17;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v18 = *(v15 + 20);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_1000136BC(v19, v20, &v36);

    *(v7 + 24) = v21;
    sub_100F806B4(v14, type metadata accessor for SharedBeaconRecord);
    *(v7 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v22;
    *v35 = v22;

    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failed to fetch product info for beacon %{private,mask.hash}s error = %{public}@!", v7, 0x2Au);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 1056);

    sub_100F806B4(v10, type metadata accessor for SharedBeaconRecord);
  }

  v23 = *(v0 + 1560);
  v24 = *(v23 + 2);
  *(v0 + 2240) = v24;
  if (!v24)
  {
    *(v0 + 2272) = 0;
    v34 = *(v0 + 1448);

    v23 = sub_100F754C4;
    v11 = v34;
    v12 = 0;

    return _swift_task_switch(v23, v11, v12);
  }

  v25 = *(v0 + 1112);
  *(v0 + 2248) = 0;
  if (!*(v23 + 2))
  {
    __break(1u);
    return _swift_task_switch(v23, v11, v12);
  }

  v26 = *(v0 + 1424);
  v27 = *(*(v0 + 752) + 288);
  (*(v0 + 1416))(*(v0 + 912), v23 + *(*(v0 + 1104) + 20) + ((*(v25 + 80) + 32) & ~*(v25 + 80)), *(v0 + 872));
  v28 = swift_task_alloc();
  *(v0 + 2256) = v28;
  *v28 = v0;
  v28[1] = sub_100F74B80;
  v29 = *(v0 + 912);
  v30 = *(v0 + 696);
  v31 = *(v0 + 688);
  v32 = *(v0 + 2489);

  return sub_100E853C8(v29, v32, v31, v30);
}

uint64_t sub_100F747F8()
{
  v36 = v0;
  v1 = *(v0 + 1600);
  sub_100F80550(*(v0 + 1096), *(v0 + 1064), type metadata accessor for SharedBeaconRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 2490);
    v5 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v5 = 136315651;
    if (v4)
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 608) = *(v0 + 712);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v12;
    }

    v34 = *(v0 + 2200);
    v13 = *(v0 + 1064);
    v14 = *(v0 + 1040);
    v15 = *(v0 + 872);
    v16 = sub_1000136BC(v6, v7, &v35);

    *(v5 + 4) = v16;
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v17 = *(v14 + 20);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_1000136BC(v18, v19, &v35);

    *(v5 + 24) = v20;
    sub_100F806B4(v13, type metadata accessor for SharedBeaconRecord);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Fetched product info for beacon %{private,mask.hash}s", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v8 = *(v0 + 2200);
    v9 = *(v0 + 1064);

    sub_100F806B4(v9, type metadata accessor for SharedBeaconRecord);
  }

  v21 = *(v0 + 2224);
  v22 = *(v0 + 1560);
  v23 = *(v22 + 2);
  *(v0 + 2240) = v23;
  if (!v23)
  {
    *(v0 + 2272) = v21;
    v33 = *(v0 + 1448);

    v22 = sub_100F754C4;
    v10 = v33;
    v11 = 0;

    return _swift_task_switch(v22, v10, v11);
  }

  v24 = *(v0 + 1112);
  *(v0 + 2248) = 0;
  if (!*(v22 + 2))
  {
    __break(1u);
    return _swift_task_switch(v22, v10, v11);
  }

  v25 = *(v0 + 1424);
  v26 = *(*(v0 + 752) + 288);
  (*(v0 + 1416))(*(v0 + 912), v22 + *(*(v0 + 1104) + 20) + ((*(v24 + 80) + 32) & ~*(v24 + 80)), *(v0 + 872));
  v27 = swift_task_alloc();
  *(v0 + 2256) = v27;
  *v27 = v0;
  v27[1] = sub_100F74B80;
  v28 = *(v0 + 912);
  v29 = *(v0 + 696);
  v30 = *(v0 + 688);
  v31 = *(v0 + 2489);

  return sub_100E853C8(v28, v31, v30, v29);
}

uint64_t sub_100F74B80()
{
  v2 = *v1;
  v3 = *(*v1 + 2256);
  v15 = *v1;
  *(*v1 + 2264) = v0;

  if (v0)
  {
    v4 = v2[195];
    v5 = v2[180];
    v6 = v2[179];
    v7 = v2[114];
    v8 = v2[109];
    v9 = v2[94];

    v6(v7, v8);
    v10 = sub_100F74E48;
    v11 = v9;
  }

  else
  {
    v12 = v2[180];
    v13 = v2[94];
    (v2[179])(v2[114], v2[109]);
    v10 = sub_100F74CEC;
    v11 = v13;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100F74CEC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2248) + 1;
  if (v4 == *(v3 + 2240))
  {
    *(v3 + 2272) = *(v3 + 2264);
    v5 = *(v3 + 1560);
    v6 = *(v3 + 1448);

    a1 = sub_100F754C4;
    a2 = v6;
    a3 = 0;

    return _swift_task_switch(a1, a2, a3);
  }

  *(v3 + 2248) = v4;
  v7 = *(v3 + 1560);
  if (v4 >= *(v7 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v8 = *(v3 + 1424);
  v9 = *(*(v3 + 752) + 288);
  (*(v3 + 1416))(*(v3 + 912), v7 + ((*(*(v3 + 1112) + 80) + 32) & ~*(*(v3 + 1112) + 80)) + *(*(v3 + 1112) + 72) * v4 + *(*(v3 + 1104) + 20), *(v3 + 872));
  v10 = swift_task_alloc();
  *(v3 + 2256) = v10;
  *v10 = v3;
  v10[1] = sub_100F74B80;
  v11 = *(v3 + 912);
  v12 = *(v3 + 696);
  v13 = *(v3 + 688);
  v14 = *(v3 + 2489);

  return sub_100E853C8(v11, v14, v13, v12);
}

uint64_t sub_100F74E48()
{
  v91 = v0;
  v1 = *(v0 + 2264);
  v2 = *(v0 + 1600);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2490);
    v6 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v6 = 136315394;
    if (v5)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 488) = *(v0 + 712);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v13;
    }

    v14 = *(v0 + 2264);
    v15 = *(v0 + 1160);
    v16 = *(v0 + 1032);
    v17 = sub_1000136BC(v7, v8, v90);

    *(v6 + 4) = v17;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v19 = *(v0 + 368);
    v18 = *(v0 + 376);
    v20 = *(v0 + 384);
    v21 = Error.localizedDescription.getter();
    v23 = sub_1000136BC(v21, v22, v90);

    *(v6 + 14) = v23;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failure on handleCircleTrust, sending PeerTrustAck message: %{public}s", v6, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v16, &qword_101698C10, &unk_10138C1E0);
    v12 = v15;
  }

  else
  {
    v9 = *(v0 + 2264);
    v10 = *(v0 + 1160);
    v11 = *(v0 + 1032);

    sub_10000B3A8(v11, &qword_101698C10, &unk_10138C1E0);
    v12 = v10;
  }

  sub_100F806B4(v12, type metadata accessor for MemberPeerTrust);
  v24 = *(v0 + 1224);
  v25 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
  sub_100F806B4(v25, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v24, type metadata accessor for MemberSharingCircle);
  v26 = *(v0 + 1408);
  v27 = *(v0 + 1400);
  v28 = *(v0 + 1392);
  v29 = *(v0 + 1384);
  v30 = *(v0 + 1376);
  v31 = *(v0 + 1368);
  v32 = *(v0 + 1360);
  v33 = *(v0 + 1352);
  v36 = *(v0 + 1344);
  v37 = *(v0 + 1320);
  v38 = *(v0 + 1312);
  v39 = *(v0 + 1304);
  v40 = *(v0 + 1296);
  v41 = *(v0 + 1288);
  v42 = *(v0 + 1280);
  v43 = *(v0 + 1272);
  v44 = *(v0 + 1264);
  v45 = *(v0 + 1256);
  v46 = *(v0 + 1248);
  v47 = *(v0 + 1240);
  v48 = *(v0 + 1224);
  v49 = *(v0 + 1216);
  v50 = *(v0 + 1208);
  v51 = *(v0 + 1200);
  v52 = *(v0 + 1192);
  v53 = *(v0 + 1160);
  v54 = *(v0 + 1152);
  v55 = *(v0 + 1144);
  v56 = *(v0 + 1136);
  v57 = *(v0 + 1128);
  v58 = *(v0 + 1120);
  v59 = *(v0 + 1096);
  v60 = *(v0 + 1088);
  v61 = *(v0 + 1080);
  v62 = *(v0 + 1072);
  v63 = *(v0 + 1064);
  v64 = *(v0 + 1056);
  v65 = *(v0 + 1032);
  v66 = *(v0 + 1024);
  v67 = *(v0 + 1016);
  v68 = *(v0 + 1008);
  v69 = *(v0 + 1000);
  v70 = *(v0 + 992);
  v71 = *(v0 + 984);
  v72 = *(v0 + 976);
  v73 = *(v0 + 952);
  v74 = *(v0 + 944);
  v75 = *(v0 + 936);
  v76 = *(v0 + 928);
  v77 = *(v0 + 920);
  v78 = *(v0 + 912);
  v79 = *(v0 + 904);
  v80 = *(v0 + 896);
  v81 = *(v0 + 864);
  v82 = *(v0 + 856);
  v83 = *(v0 + 848);
  v84 = *(v0 + 840);
  v85 = *(v0 + 816);
  v86 = *(v0 + 808);
  v87 = *(v0 + 792);
  v88 = *(v0 + 784);
  v89 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v26, &qword_10169EF90, &unk_10139FCF0);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100F754C4()
{
  v1 = *(v0 + 1448);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 2280) = v3;
  *v3 = v0;
  v3[1] = sub_100F7559C;
  v4 = *(v0 + 1448);

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_100202178, v4, &type metadata for () + 8);
}

uint64_t sub_100F7559C()
{
  v1 = *(*v0 + 2280);
  v2 = *(*v0 + 1448);
  v4 = *v0;

  return _swift_task_switch(sub_100F756B4, v2, 0);
}

uint64_t sub_100F756D0()
{
  v1 = v0[181];
  v2 = swift_allocObject();
  v0[286] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[287] = v4;
  *v4 = v0;
  v4[1] = sub_100F757D8;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7C4, v2, &type metadata for () + 8);
}

uint64_t sub_100F757D8()
{
  v1 = *(*v0 + 2296);
  v2 = *(*v0 + 2288);
  v3 = *(*v0 + 1448);
  v5 = *v0;

  return _swift_task_switch(sub_100F75904, v3, 0);
}

uint64_t sub_100F75920()
{
  v127 = v0;
  v1 = *(v0 + 720);
  if (v1)
  {
    v2 = *(v0 + 728);
    v3 = *(v0 + 720);
    v121 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 2304) = v5;
    *v5 = v0;
    v5[1] = sub_100F76294;

    return v121();
  }

  else
  {
    v7 = *(v0 + 2272);
    v8 = *(v0 + 1680);
    v9 = *(v0 + 1672);
    v10 = *(v0 + 1400);
    v11 = *(v0 + 1336);
    v12 = *(v0 + 872);
    v13 = *(v0 + 760);
    sub_1000D2A70(*(v0 + 1408), v10, &qword_10169EF90, &unk_10139FCF0);
    v14 = *(v10 + v11[16] + 16);

    v15 = *(v10 + v11[20] + 8);

    v16 = *(v10 + v11[24]);

    sub_100016590(*(v10 + v11[28]), *(v10 + v11[28] + 8));
    v9(v13, v10, v12);
    sub_10053A0D0(2, 1, v13, v124);
    if (v7)
    {
      v17 = *(v0 + 1600);
      swift_errorRetain();
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 2490);
        v21 = swift_slowAlloc();
        v124[0] = swift_slowAlloc();
        *v21 = 136315394;
        if (v20)
        {
          v22 = 0;
          v23 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 512) = *(v0 + 712);
          v22 = dispatch thunk of CustomStringConvertible.description.getter();
          v23 = v43;
        }

        v44 = *(v0 + 1160);
        v45 = *(v0 + 1032);
        v46 = sub_1000136BC(v22, v23, v124);

        *(v21 + 4) = v46;
        *(v21 + 12) = 2082;
        swift_getErrorValue();
        v48 = *(v0 + 344);
        v47 = *(v0 + 352);
        v49 = *(v0 + 360);
        v50 = Error.localizedDescription.getter();
        v52 = sub_1000136BC(v50, v51, v124);

        *(v21 + 14) = v52;

        _os_log_impl(&_mh_execute_header, v18, v19, "%s Failure on handleCircleTrust, sending message: %{public}s", v21, 0x16u);
        swift_arrayDestroy();

        sub_10000B3A8(v45, &qword_101698C10, &unk_10138C1E0);
        v42 = v44;
      }

      else
      {
        v40 = *(v0 + 1160);
        v41 = *(v0 + 1032);

        sub_10000B3A8(v41, &qword_101698C10, &unk_10138C1E0);
        v42 = v40;
      }

      sub_100F806B4(v42, type metadata accessor for MemberPeerTrust);
      v53 = *(v0 + 1224);
      v54 = *(v0 + 1096);
      sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
      sub_100F806B4(v54, type metadata accessor for SharedBeaconRecord);
      sub_100F806B4(v53, type metadata accessor for MemberSharingCircle);
      v55 = *(v0 + 1408);
      v56 = *(v0 + 1400);
      v57 = *(v0 + 1392);
      v58 = *(v0 + 1384);
      v59 = *(v0 + 1376);
      v60 = *(v0 + 1368);
      v61 = *(v0 + 1360);
      v62 = *(v0 + 1352);
      v64 = *(v0 + 1344);
      v65 = *(v0 + 1320);
      v66 = *(v0 + 1312);
      v67 = *(v0 + 1304);
      v68 = *(v0 + 1296);
      v69 = *(v0 + 1288);
      v70 = *(v0 + 1280);
      v71 = *(v0 + 1272);
      v72 = *(v0 + 1264);
      v73 = *(v0 + 1256);
      v74 = *(v0 + 1248);
      v75 = *(v0 + 1240);
      v76 = *(v0 + 1224);
      v77 = *(v0 + 1216);
      v78 = *(v0 + 1208);
      v79 = *(v0 + 1200);
      v80 = *(v0 + 1192);
      v81 = *(v0 + 1160);
      v82 = *(v0 + 1152);
      v83 = *(v0 + 1144);
      v84 = *(v0 + 1136);
      v85 = *(v0 + 1128);
      v86 = *(v0 + 1120);
      v87 = *(v0 + 1096);
      v88 = *(v0 + 1088);
      v89 = *(v0 + 1080);
      v90 = *(v0 + 1072);
      v91 = *(v0 + 1064);
      v92 = *(v0 + 1056);
      v93 = *(v0 + 1032);
      v94 = *(v0 + 1024);
      v95 = *(v0 + 1016);
      v96 = *(v0 + 1008);
      v97 = *(v0 + 1000);
      v98 = *(v0 + 992);
      v99 = *(v0 + 984);
      v100 = *(v0 + 976);
      v101 = *(v0 + 952);
      v102 = *(v0 + 944);
      v103 = *(v0 + 936);
      v104 = *(v0 + 928);
      v105 = *(v0 + 920);
      v106 = *(v0 + 912);
      v107 = *(v0 + 904);
      v108 = *(v0 + 896);
      v109 = *(v0 + 864);
      v110 = *(v0 + 856);
      v111 = *(v0 + 848);
      v112 = *(v0 + 840);
      v114 = *(v0 + 816);
      v116 = *(v0 + 808);
      v118 = *(v0 + 792);
      v120 = *(v0 + 784);
      v123 = *(v0 + 760);
      sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
      sub_10000B3A8(v55, &qword_10169EF90, &unk_10139FCF0);

      v63 = *(v0 + 8);

      return v63();
    }

    else
    {
      v115 = *(v0 + 1432);
      v117 = *(v0 + 1440);
      v24 = *(v0 + 1408);
      v25 = *(v0 + 1400);
      v26 = *(v0 + 1336);
      v113 = *(v0 + 872);
      v27 = *(v0 + 752);
      v28 = v125;
      v122 = v124[1];
      *(v0 + 2312) = v125;
      v29 = v126;
      *(v0 + 2320) = v126;
      v119 = v124[0];
      v30 = sub_1000035D0((v27 + 208), *(v27 + 232));
      sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
      v31 = swift_allocObject();
      *(v0 + 2328) = v31;
      *(v31 + 16) = xmmword_101385D80;
      sub_1000D2A70(v24, v25, &qword_10169EF90, &unk_10139FCF0);
      v32 = v25 + v26[16];
      LOBYTE(v24) = *v32;
      v33 = *(v32 + 8);
      v34 = *(v32 + 16);
      v35 = *(v25 + v26[20] + 8);

      v36 = *(v25 + v26[24]);

      sub_100016590(*(v25 + v26[28]), *(v25 + v26[28] + 8));
      *(v31 + 32) = v24;
      *(v31 + 40) = v33;
      *(v31 + 48) = v34;
      v115(v25, v113);
      v37 = *v30;
      v38 = swift_task_alloc();
      *(v0 + 2336) = v38;
      *v38 = v0;
      v38[1] = sub_100F76C3C;
      v39 = *(v0 + 904);

      return sub_100D1C9D8(v39, v119, v122, v28, v29, v31);
    }
  }
}

uint64_t sub_100F76294()
{
  v1 = *(*v0 + 2304);
  v2 = *(*v0 + 752);
  v4 = *v0;

  return _swift_task_switch(sub_100F763A4, v2, 0);
}

uint64_t sub_100F763A4()
{
  v121 = v0;
  v1 = *(v0 + 2272);
  v2 = *(v0 + 1680);
  v3 = *(v0 + 1672);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1336);
  v6 = *(v0 + 872);
  v7 = *(v0 + 760);
  sub_1000D2A70(*(v0 + 1408), v4, &qword_10169EF90, &unk_10139FCF0);
  v8 = *(v4 + v5[16] + 16);

  v9 = *(v4 + v5[20] + 8);

  v10 = *(v4 + v5[24]);

  sub_100016590(*(v4 + v5[28]), *(v4 + v5[28] + 8));
  v3(v7, v4, v6);
  sub_10053A0D0(2, 1, v7, v118);
  if (v1)
  {
    v11 = *(v0 + 1600);
    swift_errorRetain();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 2490);
      v15 = swift_slowAlloc();
      v118[0] = swift_slowAlloc();
      *v15 = 136315394;
      if (v14)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 512) = *(v0 + 712);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v38;
      }

      v39 = *(v0 + 1160);
      v40 = *(v0 + 1032);
      v41 = sub_1000136BC(v16, v17, v118);

      *(v15 + 4) = v41;
      *(v15 + 12) = 2082;
      swift_getErrorValue();
      v43 = *(v0 + 344);
      v42 = *(v0 + 352);
      v44 = *(v0 + 360);
      v45 = Error.localizedDescription.getter();
      v47 = sub_1000136BC(v45, v46, v118);

      *(v15 + 14) = v47;

      _os_log_impl(&_mh_execute_header, v12, v13, "%s Failure on handleCircleTrust, sending message: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      sub_10000B3A8(v40, &qword_101698C10, &unk_10138C1E0);
      v37 = v39;
    }

    else
    {
      v35 = *(v0 + 1160);
      v36 = *(v0 + 1032);

      sub_10000B3A8(v36, &qword_101698C10, &unk_10138C1E0);
      v37 = v35;
    }

    sub_100F806B4(v37, type metadata accessor for MemberPeerTrust);
    v48 = *(v0 + 1224);
    v49 = *(v0 + 1096);
    sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
    sub_100F806B4(v49, type metadata accessor for SharedBeaconRecord);
    sub_100F806B4(v48, type metadata accessor for MemberSharingCircle);
    v50 = *(v0 + 1408);
    v51 = *(v0 + 1400);
    v52 = *(v0 + 1392);
    v53 = *(v0 + 1384);
    v54 = *(v0 + 1376);
    v55 = *(v0 + 1368);
    v56 = *(v0 + 1360);
    v57 = *(v0 + 1352);
    v59 = *(v0 + 1344);
    v60 = *(v0 + 1320);
    v61 = *(v0 + 1312);
    v62 = *(v0 + 1304);
    v63 = *(v0 + 1296);
    v64 = *(v0 + 1288);
    v65 = *(v0 + 1280);
    v66 = *(v0 + 1272);
    v67 = *(v0 + 1264);
    v68 = *(v0 + 1256);
    v69 = *(v0 + 1248);
    v70 = *(v0 + 1240);
    v71 = *(v0 + 1224);
    v72 = *(v0 + 1216);
    v73 = *(v0 + 1208);
    v74 = *(v0 + 1200);
    v75 = *(v0 + 1192);
    v76 = *(v0 + 1160);
    v77 = *(v0 + 1152);
    v78 = *(v0 + 1144);
    v79 = *(v0 + 1136);
    v80 = *(v0 + 1128);
    v81 = *(v0 + 1120);
    v82 = *(v0 + 1096);
    v83 = *(v0 + 1088);
    v84 = *(v0 + 1080);
    v85 = *(v0 + 1072);
    v86 = *(v0 + 1064);
    v87 = *(v0 + 1056);
    v88 = *(v0 + 1032);
    v89 = *(v0 + 1024);
    v90 = *(v0 + 1016);
    v91 = *(v0 + 1008);
    v92 = *(v0 + 1000);
    v93 = *(v0 + 992);
    v94 = *(v0 + 984);
    v95 = *(v0 + 976);
    v96 = *(v0 + 952);
    v97 = *(v0 + 944);
    v98 = *(v0 + 936);
    v99 = *(v0 + 928);
    v100 = *(v0 + 920);
    v101 = *(v0 + 912);
    v102 = *(v0 + 904);
    v103 = *(v0 + 896);
    v104 = *(v0 + 864);
    v105 = *(v0 + 856);
    v106 = *(v0 + 848);
    v107 = *(v0 + 840);
    v109 = *(v0 + 816);
    v111 = *(v0 + 808);
    v113 = *(v0 + 792);
    v115 = *(v0 + 784);
    v117 = *(v0 + 760);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v50, &qword_10169EF90, &unk_10139FCF0);

    v58 = *(v0 + 8);

    return v58();
  }

  else
  {
    v110 = *(v0 + 1432);
    v112 = *(v0 + 1440);
    v18 = *(v0 + 1408);
    v19 = *(v0 + 1400);
    v20 = *(v0 + 1336);
    v108 = *(v0 + 872);
    v21 = *(v0 + 752);
    v22 = v119;
    v116 = v118[1];
    *(v0 + 2312) = v119;
    v23 = v120;
    *(v0 + 2320) = v120;
    v114 = v118[0];
    v24 = sub_1000035D0((v21 + 208), *(v21 + 232));
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v25 = swift_allocObject();
    *(v0 + 2328) = v25;
    *(v25 + 16) = xmmword_101385D80;
    sub_1000D2A70(v18, v19, &qword_10169EF90, &unk_10139FCF0);
    v26 = v19 + v20[16];
    LOBYTE(v18) = *v26;
    v27 = *(v26 + 8);
    v28 = *(v26 + 16);
    v29 = *(v19 + v20[20] + 8);

    v30 = *(v19 + v20[24]);

    sub_100016590(*(v19 + v20[28]), *(v19 + v20[28] + 8));
    *(v25 + 32) = v18;
    *(v25 + 40) = v27;
    *(v25 + 48) = v28;
    v110(v19, v108);
    v31 = *v24;
    v32 = swift_task_alloc();
    *(v0 + 2336) = v32;
    *v32 = v0;
    v32[1] = sub_100F76C3C;
    v33 = *(v0 + 904);

    return sub_100D1C9D8(v33, v114, v116, v22, v23, v25);
  }
}

uint64_t sub_100F76C3C()
{
  v2 = *v1;
  v3 = *(*v1 + 2336);
  v4 = *v1;
  *(*v1 + 2344) = v0;

  v5 = *(v2 + 2328);
  v6 = *(v2 + 752);

  if (v0)
  {
    v7 = sub_100F77468;
  }

  else
  {
    v7 = sub_100F76D84;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F76D84()
{
  v62 = v0;
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1424);
  (*(v0 + 1416))(*(v0 + 896), *(v0 + 904), *(v0 + 872));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2490);
    v6 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v6 = 136315651;
    if (v5)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 584) = *(v0 + 712);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v15;
    }

    v57 = *(v0 + 2312);
    v58 = *(v0 + 2320);
    v16 = *(v0 + 1440);
    v56 = *(v0 + 1432);
    v59 = *(v0 + 904);
    v17 = *(v0 + 896);
    v18 = *(v0 + 872);
    v19 = sub_1000136BC(v7, v8, &v61);

    *(v6 + 4) = v19;
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_1000136BC(v20, v21, &v61);

    *(v6 + 24) = v22;
    v56(v17, v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Circle Trust Ack message identifier is %{private,mask.hash}s.", v6, 0x20u);
    swift_arrayDestroy();

    sub_100016590(v57, v58);

    v56(v59, v18);
  }

  else
  {
    v9 = *(v0 + 2320);
    v10 = *(v0 + 2312);
    v11 = *(v0 + 1440);
    v12 = *(v0 + 1432);
    v13 = *(v0 + 904);
    v14 = *(v0 + 872);
    v12(*(v0 + 896), v14);
    sub_100016590(v10, v9);

    v12(v13, v14);
  }

  if (*(v0 + 2491) == 1)
  {
    v23 = *(v0 + 736);
    if (v23)
    {
      v24 = *(v0 + 744);
      v25 = *(v0 + 736);
      v60 = (v23 + *v23);
      v26 = v23[1];
      v27 = swift_task_alloc();
      *(v0 + 2352) = v27;
      *v27 = v0;
      v27[1] = sub_100F77AE8;
      v28 = *(v0 + 1328);

      return v60(v28);
    }

    v36 = *(v0 + 1584);
    v37 = *(v0 + 1576);
    v38 = *(v0 + 1104);
    v39 = *(v0 + 1008);
    sub_1000D2A70(*(v0 + 1032), v39, &qword_101698C10, &unk_10138C1E0);
    if (v37(v39, 1, v38) == 1)
    {
      v40 = *(v0 + 1600);
      sub_10000B3A8(*(v0 + 1008), &qword_101698C10, &unk_10138C1E0);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = *(v0 + 2490);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v61 = v45;
        *v44 = 136315138;
        if (v43)
        {
          v46 = 0;
          v47 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 568) = *(v0 + 712);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v51;
        }

        v52 = sub_1000136BC(v46, v47, &v61);

        *(v44 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v41, v42, "%s Failure on handleCircleTrust, accepting of already accepted share: no  owner peer trust record!", v44, 0xCu);
        sub_100007BAC(v45);
      }

      goto LABEL_31;
    }

    v48 = *(v0 + 752);
    sub_100F80620(*(v0 + 1008), *(v0 + 1128), type metadata accessor for MemberPeerTrust);
    v49 = sub_1000035D0((v48 + 344), *(v48 + 368));
    v50 = *v49;
    *(v0 + 2360) = *v49;

    return _swift_task_switch(sub_100F77E90, v50, 0);
  }

  else if (*(v0 + 2488) == 4)
  {
    v30 = *sub_1000035D0((*(v0 + 752) + 344), *(*(v0 + 752) + 368));
    v31 = swift_task_alloc();
    *(v0 + 2376) = v31;
    *v31 = v0;
    v31[1] = sub_100F78280;
    v32 = *(v0 + 1408);

    return sub_100102B40(v32);
  }

  else
  {
    v33 = *(v0 + 2492);
    if (v33 != 6 && v33 == *(v0 + 2493))
    {
LABEL_31:
      v53 = *(v0 + 2488);
      v54 = swift_task_alloc();
      *(v0 + 2432) = v54;
      *v54 = v0;
      v54[1] = sub_100F791F8;
      v55 = *(v0 + 2491);

      return sub_100ECAEAC(v55, v53 == 4);
    }

    v34 = async function pointer to daemon.getter[1];
    v35 = swift_task_alloc();
    *(v0 + 2392) = v35;
    *v35 = v0;
    v35[1] = sub_100F78680;

    return daemon.getter();
  }
}

uint64_t sub_100F77468()
{
  v89 = v0;
  sub_100016590(*(v0 + 2312), *(v0 + 2320));
  v1 = *(v0 + 2344);
  v2 = *(v0 + 1600);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2490);
    v6 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    *v6 = 136315394;
    if (v5)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 512) = *(v0 + 712);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v12;
    }

    v13 = *(v0 + 1160);
    v14 = *(v0 + 1032);
    v15 = sub_1000136BC(v7, v8, v88);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v17 = *(v0 + 344);
    v16 = *(v0 + 352);
    v18 = *(v0 + 360);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v88);

    *(v6 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failure on handleCircleTrust, sending message: %{public}s", v6, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v14, &qword_101698C10, &unk_10138C1E0);
    v11 = v13;
  }

  else
  {
    v9 = *(v0 + 1160);
    v10 = *(v0 + 1032);

    sub_10000B3A8(v10, &qword_101698C10, &unk_10138C1E0);
    v11 = v9;
  }

  sub_100F806B4(v11, type metadata accessor for MemberPeerTrust);
  v22 = *(v0 + 1224);
  v23 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
  sub_100F806B4(v23, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v22, type metadata accessor for MemberSharingCircle);
  v24 = *(v0 + 1408);
  v25 = *(v0 + 1400);
  v26 = *(v0 + 1392);
  v27 = *(v0 + 1384);
  v28 = *(v0 + 1376);
  v29 = *(v0 + 1368);
  v30 = *(v0 + 1360);
  v31 = *(v0 + 1352);
  v34 = *(v0 + 1344);
  v35 = *(v0 + 1320);
  v36 = *(v0 + 1312);
  v37 = *(v0 + 1304);
  v38 = *(v0 + 1296);
  v39 = *(v0 + 1288);
  v40 = *(v0 + 1280);
  v41 = *(v0 + 1272);
  v42 = *(v0 + 1264);
  v43 = *(v0 + 1256);
  v44 = *(v0 + 1248);
  v45 = *(v0 + 1240);
  v46 = *(v0 + 1224);
  v47 = *(v0 + 1216);
  v48 = *(v0 + 1208);
  v49 = *(v0 + 1200);
  v50 = *(v0 + 1192);
  v51 = *(v0 + 1160);
  v52 = *(v0 + 1152);
  v53 = *(v0 + 1144);
  v54 = *(v0 + 1136);
  v55 = *(v0 + 1128);
  v56 = *(v0 + 1120);
  v57 = *(v0 + 1096);
  v58 = *(v0 + 1088);
  v59 = *(v0 + 1080);
  v60 = *(v0 + 1072);
  v61 = *(v0 + 1064);
  v62 = *(v0 + 1056);
  v63 = *(v0 + 1032);
  v64 = *(v0 + 1024);
  v65 = *(v0 + 1016);
  v66 = *(v0 + 1008);
  v67 = *(v0 + 1000);
  v68 = *(v0 + 992);
  v69 = *(v0 + 984);
  v70 = *(v0 + 976);
  v71 = *(v0 + 952);
  v72 = *(v0 + 944);
  v73 = *(v0 + 936);
  v74 = *(v0 + 928);
  v75 = *(v0 + 920);
  v76 = *(v0 + 912);
  v77 = *(v0 + 904);
  v78 = *(v0 + 896);
  v79 = *(v0 + 864);
  v80 = *(v0 + 856);
  v81 = *(v0 + 848);
  v82 = *(v0 + 840);
  v83 = *(v0 + 816);
  v84 = *(v0 + 808);
  v85 = *(v0 + 792);
  v86 = *(v0 + 784);
  v87 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v24, &qword_10169EF90, &unk_10139FCF0);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100F77AE8()
{
  v1 = *(*v0 + 2352);
  v2 = *(*v0 + 752);
  v4 = *v0;

  return _swift_task_switch(sub_100F77BF8, v2, 0);
}

uint64_t sub_100F77BF8()
{
  v25 = v0;
  v1 = *(v0 + 1584);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1008);
  sub_1000D2A70(*(v0 + 1032), v4, &qword_101698C10, &unk_10138C1E0);
  v5 = v2(v4, 1, v3);
  v6 = *(v0 + 1008);
  if (v5 == 1)
  {
    v7 = *(v0 + 1600);
    sub_10000B3A8(v6, &qword_101698C10, &unk_10138C1E0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 2490);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      if (v10)
      {
        v13 = 0;
        v14 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 568) = *(v0 + 712);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v18;
      }

      v19 = sub_1000136BC(v13, v14, &v24);

      *(v11 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Failure on handleCircleTrust, accepting of already accepted share: no  owner peer trust record!", v11, 0xCu);
      sub_100007BAC(v12);
    }

    v20 = *(v0 + 2488);
    v21 = swift_task_alloc();
    *(v0 + 2432) = v21;
    *v21 = v0;
    v21[1] = sub_100F791F8;
    v22 = *(v0 + 2491);

    return sub_100ECAEAC(v22, v20 == 4);
  }

  else
  {
    v15 = *(v0 + 752);
    sub_100F80620(v6, *(v0 + 1128), type metadata accessor for MemberPeerTrust);
    v16 = sub_1000035D0((v15 + 344), *(v15 + 368));
    v17 = *v16;
    *(v0 + 2360) = *v16;

    return _swift_task_switch(sub_100F77E90, v17, 0);
  }
}

uint64_t sub_100F77E90()
{
  v1 = v0[295];
  v2 = v0[178];
  v3 = v0[177];
  v4 = v0[176];
  v5 = v0[141];
  v6 = v0[138];
  v7 = v0[109];
  v0[23] = type metadata accessor for CircleTrustAcceptEnvelopeV1(0);
  v0[24] = sub_100F80970(&qword_1016975E0, type metadata accessor for CircleTrustAcceptEnvelopeV1);
  v0[25] = sub_100F80970(&qword_1016975E8, type metadata accessor for CircleTrustAcceptEnvelopeV1);
  v8 = sub_1000280DC(v0 + 20);
  v3(v8, v4, v7);
  v9 = *(v6 + 28);
  v10 = swift_task_alloc();
  v0[296] = v10;
  *v10 = v0;
  v10[1] = sub_100F78004;

  return sub_10129A758(v1 + 240, (v0 + 20), 3, v5 + v9);
}

uint64_t sub_100F78004()
{
  v2 = *v1;
  v3 = (*v1)[296];
  v4 = *v1;

  if (v0)
  {
    v5 = v2[295];

    v6 = sub_100F78214;
    v7 = v5;
  }

  else
  {
    v8 = v2[94];
    sub_100007BAC(v2 + 20);
    v6 = sub_100F78144;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100F78144()
{
  sub_100F806B4(*(v0 + 1128), type metadata accessor for MemberPeerTrust);
  v1 = *(v0 + 2488);
  v2 = swift_task_alloc();
  *(v0 + 2432) = v2;
  *v2 = v0;
  v2[1] = sub_100F791F8;
  v3 = *(v0 + 2491);

  return sub_100ECAEAC(v3, v1 == 4);
}

uint64_t sub_100F78214()
{
  v1 = *(v0 + 752);
  sub_100007BAC((v0 + 160));

  return _swift_task_switch(sub_100F80E38, v1, 0);
}

uint64_t sub_100F78280()
{
  v2 = *(*v1 + 2376);
  v3 = *v1;
  *(v3 + 2384) = v0;

  if (v0)
  {
    v4 = *(v3 + 752);

    return _swift_task_switch(sub_100F78418, v4, 0);
  }

  else
  {
    v5 = *(v3 + 2488);
    v6 = swift_task_alloc();
    *(v3 + 2432) = v6;
    *v6 = v3;
    v6[1] = sub_100F791F8;
    v7 = *(v3 + 2491);

    return sub_100ECAEAC(v7, v5 == 4);
  }
}

uint64_t sub_100F78418()
{
  v24 = v0;
  v1 = *(v0 + 2384);
  v2 = *(v0 + 1600);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2490);
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    if (v5)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 544) = *(v0 + 712);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v10;
    }

    v11 = *(v0 + 2384);
    v12 = sub_1000136BC(v7, v8, &v23);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 320);
    v13 = *(v0 + 328);
    v15 = *(v0 + 336);
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000136BC(v16, v17, &v23);

    *(v6 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failure on handleCircleTrust, automatic share accepting: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v9 = *(v0 + 2384);
  }

  v19 = *(v0 + 2488);
  v20 = swift_task_alloc();
  *(v0 + 2432) = v20;
  *v20 = v0;
  v20[1] = sub_100F791F8;
  v21 = *(v0 + 2491);

  return sub_100ECAEAC(v21, v19 == 4);
}

uint64_t sub_100F78680(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2392);
  v5 = *v1;
  v3[300] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[301] = v7;
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_100F80970(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  *v7 = v5;
  v7[1] = sub_100F78834;
  v10 = v3[272];
  v11 = v3[271];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F78834(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2408);
  v6 = *v2;
  *(v4 + 2416) = a1;

  v7 = *(v4 + 2400);
  if (v1)
  {
    v8 = *(v4 + 752);

    return _swift_task_switch(sub_100F78BF4, v8, 0);
  }

  else
  {
    v9 = *(v4 + 2490);

    v10 = swift_task_alloc();
    *(v4 + 2424) = v10;
    *v10 = v6;
    v10[1] = sub_100F78A00;
    v11 = *(v4 + 712);
    v12 = *(v4 + 1224);

    return sub_100B3F2D8(v12, v11, v9 & 1);
  }
}

uint64_t sub_100F78A00()
{
  v2 = *v1;
  v3 = *(*v1 + 2424);
  v4 = *v1;

  v5 = *(v2 + 752);
  if (v0)
  {

    v6 = sub_100F80E3C;
  }

  else
  {
    v6 = sub_100F78B38;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F78B38()
{
  v1 = *(v0 + 2416);

  v2 = *(v0 + 2488);
  v3 = swift_task_alloc();
  *(v0 + 2432) = v3;
  *v3 = v0;
  v3[1] = sub_100F791F8;
  v4 = *(v0 + 2491);

  return sub_100ECAEAC(v4, v2 == 4);
}

uint64_t sub_100F78BF4()
{
  v81 = v0;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  sub_1000076D4(*(v0 + 1592), qword_10177BAA0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v80 = v5;
    *v4 = 136315138;
    if (v3)
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 536) = *(v0 + 712);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v11;
    }

    v8 = *(v0 + 1160);
    v12 = *(v0 + 1032);
    v13 = sub_1000136BC(v6, v7, &v80);

    *(v4 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s No ItemSharingNotificationsService available!", v4, 0xCu);
    sub_100007BAC(v5);

    v10 = v12;
  }

  else
  {
    v8 = *(v0 + 1160);
    v9 = *(v0 + 1032);

    v10 = v9;
  }

  sub_10000B3A8(v10, &qword_101698C10, &unk_10138C1E0);
  sub_100F806B4(v8, type metadata accessor for MemberPeerTrust);
  v14 = *(v0 + 1224);
  v15 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
  sub_100F806B4(v15, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v14, type metadata accessor for MemberSharingCircle);
  v16 = *(v0 + 1408);
  v17 = *(v0 + 1400);
  v18 = *(v0 + 1392);
  v19 = *(v0 + 1384);
  v20 = *(v0 + 1376);
  v21 = *(v0 + 1368);
  v22 = *(v0 + 1360);
  v23 = *(v0 + 1352);
  v26 = *(v0 + 1344);
  v27 = *(v0 + 1320);
  v28 = *(v0 + 1312);
  v29 = *(v0 + 1304);
  v30 = *(v0 + 1296);
  v31 = *(v0 + 1288);
  v32 = *(v0 + 1280);
  v33 = *(v0 + 1272);
  v34 = *(v0 + 1264);
  v35 = *(v0 + 1256);
  v36 = *(v0 + 1248);
  v37 = *(v0 + 1240);
  v38 = *(v0 + 1224);
  v39 = *(v0 + 1216);
  v40 = *(v0 + 1208);
  v41 = *(v0 + 1200);
  v42 = *(v0 + 1192);
  v43 = *(v0 + 1160);
  v44 = *(v0 + 1152);
  v45 = *(v0 + 1144);
  v46 = *(v0 + 1136);
  v47 = *(v0 + 1128);
  v48 = *(v0 + 1120);
  v49 = *(v0 + 1096);
  v50 = *(v0 + 1088);
  v51 = *(v0 + 1080);
  v52 = *(v0 + 1072);
  v53 = *(v0 + 1064);
  v54 = *(v0 + 1056);
  v55 = *(v0 + 1032);
  v56 = *(v0 + 1024);
  v57 = *(v0 + 1016);
  v58 = *(v0 + 1008);
  v59 = *(v0 + 1000);
  v60 = *(v0 + 992);
  v61 = *(v0 + 984);
  v62 = *(v0 + 976);
  v63 = *(v0 + 952);
  v64 = *(v0 + 944);
  v65 = *(v0 + 936);
  v66 = *(v0 + 928);
  v67 = *(v0 + 920);
  v68 = *(v0 + 912);
  v69 = *(v0 + 904);
  v70 = *(v0 + 896);
  v71 = *(v0 + 864);
  v72 = *(v0 + 856);
  v73 = *(v0 + 848);
  v74 = *(v0 + 840);
  v75 = *(v0 + 816);
  v76 = *(v0 + 808);
  v77 = *(v0 + 792);
  v78 = *(v0 + 784);
  v79 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v16, &qword_10169EF90, &unk_10139FCF0);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100F791F8()
{
  v1 = *(*v0 + 2432);
  v2 = *(*v0 + 752);
  v4 = *v0;

  return _swift_task_switch(sub_100F79308, v2, 0);
}

uint64_t sub_100F79308()
{
  v1 = v0[153];
  v2 = v0[145];
  v3 = v0[137];
  v4 = v0[102];
  sub_10000B3A8(v0[129], &qword_101698C10, &unk_10138C1E0);
  sub_100F806B4(v2, type metadata accessor for MemberPeerTrust);
  sub_10000B3A8(v4, &unk_101698C30, &unk_101392630);
  sub_100F806B4(v3, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v1, type metadata accessor for MemberSharingCircle);
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[171];
  v11 = v0[170];
  v12 = v0[169];
  v15 = v0[168];
  v16 = v0[165];
  v17 = v0[164];
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[159];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[156];
  v26 = v0[155];
  v27 = v0[153];
  v28 = v0[152];
  v29 = v0[151];
  v30 = v0[150];
  v31 = v0[149];
  v32 = v0[145];
  v33 = v0[144];
  v34 = v0[143];
  v35 = v0[142];
  v36 = v0[141];
  v37 = v0[140];
  v38 = v0[137];
  v39 = v0[136];
  v40 = v0[135];
  v41 = v0[134];
  v42 = v0[133];
  v43 = v0[132];
  v44 = v0[129];
  v45 = v0[128];
  v46 = v0[127];
  v47 = v0[126];
  v48 = v0[125];
  v49 = v0[124];
  v50 = v0[123];
  v51 = v0[122];
  v52 = v0[119];
  v53 = v0[118];
  v54 = v0[117];
  v55 = v0[116];
  v56 = v0[115];
  v57 = v0[114];
  v58 = v0[113];
  v59 = v0[112];
  v60 = v0[108];
  v61 = v0[107];
  v62 = v0[106];
  v63 = v0[105];
  v64 = v0[102];
  v65 = v0[101];
  v66 = v0[99];
  v67 = v0[98];
  v68 = v0[95];
  sub_10000B3A8(v0[166], &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v5, &qword_10169EF90, &unk_10139FCF0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100F797AC()
{
  v56 = v0;
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1344);
  sub_1000D2A70(*(v0 + 1328), *(v0 + 1240), &qword_10169EF88, &unk_1013E4B70);
  sub_1000D2A70(v3, v4, &qword_10169EF90, &unk_10139FCF0);
  swift_errorRetain();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v52 = v6;
    v7 = *(v0 + 2490);
    v8 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v8 = 136316419;
    log = v5;
    if (v7)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 648) = *(v0 + 712);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v14;
    }

    v54 = *(v0 + 1432);
    v15 = *(v0 + 1400);
    v48 = *(v0 + 1440);
    v49 = *(v0 + 1344);
    v50 = *(v0 + 1336);
    v51 = *(v0 + 1632);
    v16 = *(v0 + 1312);
    v17 = *(v0 + 1240);
    v18 = *(v0 + 1232);
    v46 = *(v0 + 952);
    v19 = *(v0 + 880);
    v20 = *(v0 + 872);
    v21 = sub_1000136BC(v9, v10, &v55);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_1000D2A70(v17, v16, &qword_10169EF88, &unk_1013E4B70);
    v22 = v18[12];
    v23 = *(v16 + v18[16] + 8);

    v24 = *(v16 + v18[20] + 8);

    v25 = *(v16 + v18[24] + 8);

    v26 = *(v16 + v18[40] + 8);

    v47 = *(v19 + 32);
    v47(v46, v16, v20);
    sub_10000B3A8(v16 + v22, &qword_1016980D0, &unk_10138F3B0);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v54(v46, v20);
    v30 = sub_1000136BC(v27, v29, &v55);

    *(v8 + 24) = v30;
    sub_10000B3A8(v17, &qword_10169EF88, &unk_1013E4B70);
    *(v8 + 32) = 2160;
    *(v8 + 34) = 1752392040;
    *(v8 + 42) = 2081;
    sub_1000D2A70(v49, v15, &qword_10169EF90, &unk_10139FCF0);
    v31 = *(v15 + v50[16] + 16);

    v32 = *(v15 + v50[20] + 8);

    v33 = *(v15 + v50[24]);

    sub_100016590(*(v15 + v50[28]), *(v15 + v50[28] + 8));
    v47(v46, v15, v20);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v54(v46, v20);
    v37 = sub_1000136BC(v34, v36, &v55);

    *(v8 + 44) = v37;
    sub_10000B3A8(v49, &qword_10169EF90, &unk_10139FCF0);
    *(v8 + 52) = 2082;
    swift_getErrorValue();
    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    v40 = *(v0 + 288);
    v41 = Error.localizedDescription.getter();
    v43 = sub_1000136BC(v41, v42, &v55);

    *(v8 + 54) = v43;

    _os_log_impl(&_mh_execute_header, log, v52, "%s Failure on updating beacon attributes, beaconIdentifier: %{private,mask.hash}s, shareIdentifier: %{private,mask.hash}s,\nerror: %{public}s.", v8, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v11 = *(v0 + 1632);
    v12 = *(v0 + 1344);
    v13 = *(v0 + 1240);

    sub_10000B3A8(v13, &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v12, &qword_10169EF90, &unk_10139FCF0);
  }

  *(v0 + 1656) = 0;
  v44 = *(v0 + 1448);

  return _swift_task_switch(sub_100F6BD90, v44, 0);
}

uint64_t sub_100F79CE0()
{
  v86 = v0;
  sub_10000B3A8(*(v0 + 792), &qword_1016975C8, &qword_10138C1F0);
  v1 = *(v0 + 2136);
  v2 = *(v0 + 1600);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2490);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v85 = v8;
    *v6 = 136315394;
    if (v5)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 480) = *(v0 + 712);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v14;
    }

    v83 = *(v0 + 1160);
    v15 = *(v0 + 1032);
    v16 = sub_1000136BC(v9, v10, &v85);

    *(v6 + 4) = v16;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v17;
    *v7 = v17;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failure on handleCircleTrust, updating iCloud: %@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);

    sub_10000B3A8(v15, &qword_101698C10, &unk_10138C1E0);
    v13 = v83;
  }

  else
  {
    v11 = *(v0 + 1160);
    v12 = *(v0 + 1032);

    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
    v13 = v11;
  }

  sub_100F806B4(v13, type metadata accessor for MemberPeerTrust);
  v18 = *(v0 + 1224);
  v19 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
  sub_100F806B4(v19, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v18, type metadata accessor for MemberSharingCircle);
  v20 = *(v0 + 1408);
  v21 = *(v0 + 1400);
  v22 = *(v0 + 1392);
  v23 = *(v0 + 1384);
  v24 = *(v0 + 1376);
  v25 = *(v0 + 1368);
  v26 = *(v0 + 1360);
  v27 = *(v0 + 1352);
  v30 = *(v0 + 1344);
  v31 = *(v0 + 1320);
  v32 = *(v0 + 1312);
  v33 = *(v0 + 1304);
  v34 = *(v0 + 1296);
  v35 = *(v0 + 1288);
  v36 = *(v0 + 1280);
  v37 = *(v0 + 1272);
  v38 = *(v0 + 1264);
  v39 = *(v0 + 1256);
  v40 = *(v0 + 1248);
  v41 = *(v0 + 1240);
  v42 = *(v0 + 1224);
  v43 = *(v0 + 1216);
  v44 = *(v0 + 1208);
  v45 = *(v0 + 1200);
  v46 = *(v0 + 1192);
  v47 = *(v0 + 1160);
  v48 = *(v0 + 1152);
  v49 = *(v0 + 1144);
  v50 = *(v0 + 1136);
  v51 = *(v0 + 1128);
  v52 = *(v0 + 1120);
  v53 = *(v0 + 1096);
  v54 = *(v0 + 1088);
  v55 = *(v0 + 1080);
  v56 = *(v0 + 1072);
  v57 = *(v0 + 1064);
  v58 = *(v0 + 1056);
  v59 = *(v0 + 1032);
  v60 = *(v0 + 1024);
  v61 = *(v0 + 1016);
  v62 = *(v0 + 1008);
  v63 = *(v0 + 1000);
  v64 = *(v0 + 992);
  v65 = *(v0 + 984);
  v66 = *(v0 + 976);
  v67 = *(v0 + 952);
  v68 = *(v0 + 944);
  v69 = *(v0 + 936);
  v70 = *(v0 + 928);
  v71 = *(v0 + 920);
  v72 = *(v0 + 912);
  v73 = *(v0 + 904);
  v74 = *(v0 + 896);
  v75 = *(v0 + 864);
  v76 = *(v0 + 856);
  v77 = *(v0 + 848);
  v78 = *(v0 + 840);
  v79 = *(v0 + 816);
  v80 = *(v0 + 808);
  v81 = *(v0 + 792);
  v82 = *(v0 + 784);
  v84 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v20, &qword_10169EF90, &unk_10139FCF0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100F7A378()
{
  v37 = v0;
  v1 = *(v0 + 2200);

  sub_100007BAC((v0 + 208));
  v2 = *(v0 + 2224);
  v3 = *(v0 + 1600);
  sub_100F80550(*(v0 + 1096), *(v0 + 1056), type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2490);
    v7 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v7 = 136315907;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 592) = *(v0 + 712);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v13;
    }

    v14 = *(v0 + 1056);
    v15 = *(v0 + 1040);
    v16 = *(v0 + 872);
    v17 = sub_1000136BC(v8, v9, &v36);

    *(v7 + 4) = v17;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v18 = *(v15 + 20);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_1000136BC(v19, v20, &v36);

    *(v7 + 24) = v21;
    sub_100F806B4(v14, type metadata accessor for SharedBeaconRecord);
    *(v7 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 34) = v22;
    *v35 = v22;

    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failed to fetch product info for beacon %{private,mask.hash}s error = %{public}@!", v7, 0x2Au);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 1056);

    sub_100F806B4(v10, type metadata accessor for SharedBeaconRecord);
  }

  v23 = *(v0 + 1560);
  v24 = *(v23 + 2);
  *(v0 + 2240) = v24;
  if (!v24)
  {
    *(v0 + 2272) = 0;
    v34 = *(v0 + 1448);

    v23 = sub_100F754C4;
    v11 = v34;
    v12 = 0;

    return _swift_task_switch(v23, v11, v12);
  }

  v25 = *(v0 + 1112);
  *(v0 + 2248) = 0;
  if (!*(v23 + 2))
  {
    __break(1u);
    return _swift_task_switch(v23, v11, v12);
  }

  v26 = *(v0 + 1424);
  v27 = *(*(v0 + 752) + 288);
  (*(v0 + 1416))(*(v0 + 912), v23 + *(*(v0 + 1104) + 20) + ((*(v25 + 80) + 32) & ~*(v25 + 80)), *(v0 + 872));
  v28 = swift_task_alloc();
  *(v0 + 2256) = v28;
  *v28 = v0;
  v28[1] = sub_100F74B80;
  v29 = *(v0 + 912);
  v30 = *(v0 + 696);
  v31 = *(v0 + 688);
  v32 = *(v0 + 2489);

  return sub_100E853C8(v29, v32, v31, v30);
}

uint64_t sub_100F7A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v4 = type metadata accessor for UUID();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v7 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v9 = &v35 - v8;
  v10 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v35 - v12;
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v37 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v35 - v19;
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  v23 = type metadata accessor for SharedBeaconRecord(0);
  v24 = *(v23 + 20);
  v35 = sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_1000D2A70(a1 + *(v23 + 80), v13, &unk_1016AF890, &qword_1013926D0);
    v26 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v26 - 8) + 48))(v13, 1, v26) == 1)
    {
      sub_10000B3A8(v13, &unk_1016AF890, &qword_1013926D0);
      v27 = v40;
      (*(v40 + 56))(v22, 1, 1, v4);
    }

    else
    {
      sub_1000D2A70(&v13[*(v26 + 20)], v22, &qword_1016980D0, &unk_10138F3B0);
      sub_100F806B4(v13, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v27 = v40;
    }

    (*(v27 + 16))(v20, v39, v4);
    (*(v27 + 56))(v20, 0, 1, v4);
    v28 = *(v38 + 48);
    sub_1000D2A70(v22, v9, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v20, &v9[v28], &qword_1016980D0, &unk_10138F3B0);
    v29 = *(v27 + 48);
    if (v29(v9, 1, v4) == 1)
    {
      sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
      if (v29(&v9[v28], 1, v4) == 1)
      {
        sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
        v25 = 1;
        return v25 & 1;
      }
    }

    else
    {
      v30 = v37;
      sub_1000D2A70(v9, v37, &qword_1016980D0, &unk_10138F3B0);
      if (v29(&v9[v28], 1, v4) != 1)
      {
        v31 = v40;
        v32 = v36;
        (*(v40 + 32))(v36, &v9[v28], v4);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v31 + 8);
        v33(v32, v4);
        sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
        v33(v37, v4);
        sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
        return v25 & 1;
      }

      sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
      (*(v40 + 8))(v30, v4);
    }

    sub_10000B3A8(v9, &qword_1016AF880, &unk_10138CE20);
    v25 = 0;
    return v25 & 1;
  }

  v25 = 0;
  return v25 & 1;
}

BOOL sub_100F7AD50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = a3;
  v7 = type metadata accessor for MemberSharingCircle();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  if (*(a2 + 16) && (v19 = sub_1000210EC(a1 + v7[6]), (v20 & 1) != 0))
  {
    sub_100F80550(*(a2 + 56) + *(v12 + 72) * v19, v16, type metadata accessor for SharedBeaconRecord);
    sub_100F80620(v16, v18, type metadata accessor for SharedBeaconRecord);
    v21 = *(a1 + v7[10]);
    v22 = v21 > 4;
    v23 = (1 << v21) & 0x16;
    v25 = !v22 && v23 != 0 && v18[*(v11 + 64)] == 2;
    sub_100F806B4(v18, type metadata accessor for SharedBeaconRecord);
    return v25;
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177A560);
    sub_100F80550(a1, v10, type metadata accessor for MemberSharingCircle);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v29 = 136315394;
      if (a4)
      {
        v30 = 0;
        v31 = 0xE000000000000000;
      }

      else
      {
        v42 = v41;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v32;
      }

      v33 = sub_1000136BC(v30, v31, &v43);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = v7[7];
      type metadata accessor for UUID();
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_100F806B4(v10, type metadata accessor for MemberSharingCircle);
      v38 = sub_1000136BC(v35, v37, &v43);

      *(v29 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s No sharedBeaconRecord for existing sharing circle %s!", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100F806B4(v10, type metadata accessor for MemberSharingCircle);
    }

    return 0;
  }
}

uint64_t sub_100F7B17C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100F7B280, 0, 0);
}

uint64_t sub_100F7B280()
{
  v1 = *(*(v0 + 24) + 160);
  *(v0 + 80) = v1;
  v2 = type metadata accessor for MemberSharingCircle();
  *(v0 + 88) = v2;
  *(v0 + 112) = *(v2 + 24);

  return _swift_task_switch(sub_100F7B300, v1, 0);
}

uint64_t sub_100F7B300()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 112), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_100F7B468;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E60, v6, v10);
}

uint64_t sub_100F7B468()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100F7B580, 0, 0);
}

uint64_t sub_100F7B580()
{
  v1 = v0[9];
  v2 = type metadata accessor for SharedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
  }

  else
  {
    v3 = *(v1 + *(v2 + 64));
    sub_100F806B4(v1, type metadata accessor for SharedBeaconRecord);
    if (v3 == 2)
    {
      v4 = *(v0[2] + *(v0[11] + 40)) == 0;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7(v4);
}

void sub_100F7B6A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v45 = a8;
  v46 = a7;
  v47 = a6;
  v48 = a2;
  v49 = a5;
  v12 = type metadata accessor for MemberPeerTrust();
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v39 - v18;
  v20 = type metadata accessor for SharedBeaconRecord(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100D43B14(a3);
  if (!v8)
  {
    v41 = v21;
    v42 = v20;
    v43 = v19;
    v39 = v15;
    v40 = v24;
    v25 = v48;
    v26 = v49;
    v27 = 0;
    v28 = *(a4 + 16);
    while (v28 != v27)
    {
      v29 = *(sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20) - 8);
      sub_100F7BAC0((a4 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27++), a1, v25, v26);
    }

    v30 = v26;
    v31 = v43;
    sub_1000D2A70(v30, v43, &unk_101698C30, &unk_101392630);
    if ((*(v41 + 48))(v31, 1, v42) == 1)
    {
      sub_10000B3A8(v31, &unk_101698C30, &unk_101392630);
      sub_100D43AE8(v47);
    }

    else
    {
      v32 = v40;
      v33 = sub_100F80620(v31, v40, type metadata accessor for SharedBeaconRecord);
      __chkstk_darwin(v33);
      v34 = v46;
      *(&v39 - 2) = v47;
      *(&v39 - 1) = v34;
      sub_100D447B4(v32, sub_100F8034C, (&v39 - 4));
      sub_100F806B4(v32, type metadata accessor for SharedBeaconRecord);
    }

    v35 = *(v45 + 16);
    v36 = v39;
    if (v35)
    {
      v37 = v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v38 = *(v44 + 72);
      do
      {
        sub_100F80550(v37, v36, type metadata accessor for MemberPeerTrust);
        sub_100D43B40(v36);
        sub_100F806B4(v36, type metadata accessor for MemberPeerTrust);
        v37 += v38;
        --v35;
      }

      while (v35);
    }
  }
}

void sub_100F7BAC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v143 = a4;
  v146 = a3;
  v6 = type metadata accessor for BeaconNamingRecord();
  v138 = *(v6 - 8);
  v139 = v6;
  v7 = *(v138 + 64);
  __chkstk_darwin(v6);
  v142 = (&v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = type metadata accessor for UUID();
  v144 = *(v136 - 8);
  v9 = *(v144 + 64);
  __chkstk_darwin(v136);
  v128 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v11 = *(*(v137 - 8) + 64);
  v12 = __chkstk_darwin(v137);
  v131 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v121 - v14;
  v15 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v130 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v132 = &v121 - v19;
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v127 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v134 = &v121 - v25;
  v26 = __chkstk_darwin(v24);
  v140 = &v121 - v27;
  v28 = __chkstk_darwin(v26);
  v129 = &v121 - v29;
  v30 = __chkstk_darwin(v28);
  v135 = &v121 - v31;
  __chkstk_darwin(v30);
  v141 = &v121 - v32;
  v147 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v33 = *(*(v147 - 1) + 64);
  v34 = __chkstk_darwin(v147);
  v36 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v121 - v37;
  v39 = type metadata accessor for SharedBeaconRecord(0);
  v145 = *(v39 - 8);
  v40 = *(v145 + 64);
  __chkstk_darwin(v39);
  v42 = (&v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for MemberPeerTrust();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43 - 8);
  v47 = (&v121 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v148;
  sub_100D45CB0(a1);
  if (v48)
  {
    return;
  }

  v124 = v38;
  v125 = v42;
  v123 = v36;
  v126 = v39;
  v49 = v147;
  sub_1001BA354(*(a1 + v147[20]));
  v148 = a2;
  v50 = *(a1 + v49[24]);
  v51 = *(v50 + 16);
  if (!v51)
  {
    v53 = v126;
LABEL_8:
    v146 = a1;
    v54 = v124;
    sub_1000D2A70(a1, v124, &qword_10169A608, &unk_1013BCC20);
    v55 = v147;
    v56 = v147[12];
    v57 = v147[16];
    v58 = *&v54[v147[20]];

    v59 = *&v54[v55[24]];

    v60 = v145 + 48;
    v61 = *(v145 + 48);
    v62 = v61(&v54[v56], 1, v53);
    v145 = v60;
    v122 = v61;
    if (v62 == 1)
    {
      sub_10000B3A8(&v54[v57], &unk_1016B29E0, &unk_1013B70E0);
      sub_10000B3A8(&v54[v56], &unk_101698C30, &unk_101392630);
      sub_100F806B4(v54, type metadata accessor for MemberSharingCircle);
      v63 = v142;
      v64 = v143;
      v65 = v138;
      v66 = v139;
      goto LABEL_22;
    }

    v67 = &v54[v56];
    v68 = v125;
    sub_100F80620(v67, v125, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(&v54[v57], &unk_1016B29E0, &unk_1013B70E0);
    sub_100F806B4(v54, type metadata accessor for MemberSharingCircle);
    v69 = v144;
    v70 = v68 + *(v53 + 20);
    v71 = v141;
    v72 = v136;
    v121 = *(v144 + 16);
    v121(v141, v70, v136);
    v124 = *(v69 + 56);
    (v124)(v71, 0, 1, v72);
    v73 = v132;
    sub_1000D2A70(v143, v132, &unk_101698C30, &unk_101392630);
    if (v61(v73, 1, v53) == 1)
    {
      sub_10000B3A8(v73, &unk_101698C30, &unk_101392630);
      v74 = 1;
      v75 = v135;
    }

    else
    {
      v75 = v135;
      v121(v135, v73 + *(v53 + 20), v72);
      sub_100F806B4(v73, type metadata accessor for SharedBeaconRecord);
      v74 = 0;
    }

    (v124)(v75, v74, 1, v72);
    v76 = *(v137 + 48);
    v77 = v141;
    v78 = v133;
    sub_1000D2A70(v141, v133, &qword_1016980D0, &unk_10138F3B0);
    v79 = v72;
    sub_1000D2A70(v75, v78 + v76, &qword_1016980D0, &unk_10138F3B0);
    v80 = *(v144 + 48);
    if (v80(v78, 1, v79) == 1)
    {
      sub_10000B3A8(v75, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v77, &qword_1016980D0, &unk_10138F3B0);
      v81 = v80(v78 + v76, 1, v79);
      v63 = v142;
      v64 = v143;
      v65 = v138;
      if (v81 == 1)
      {
        sub_10000B3A8(v78, &qword_1016980D0, &unk_10138F3B0);
        v66 = v139;
        v82 = v125;
LABEL_21:
        sub_100F806B4(v82, type metadata accessor for SharedBeaconRecord);
LABEL_22:
        v90 = v123;
        sub_1000D2A70(v146, v123, &qword_10169A608, &unk_1013BCC20);
        v91 = v147;
        v92 = v147[12];
        v93 = v147[16];
        v94 = *(v90 + v147[20]);

        v95 = *(v90 + v91[24]);

        if ((*(v65 + 48))(v90 + v93, 1, v66) == 1)
        {
          sub_10000B3A8(v90 + v93, &unk_1016B29E0, &unk_1013B70E0);
          sub_10000B3A8(v90 + v92, &unk_101698C30, &unk_101392630);
          v96 = type metadata accessor for MemberSharingCircle;
          v97 = v90;
LABEL_35:
          sub_100F806B4(v97, v96);
          return;
        }

        sub_100F80620(v90 + v93, v63, type metadata accessor for BeaconNamingRecord);
        sub_10000B3A8(v90 + v92, &unk_101698C30, &unk_101392630);
        sub_100F806B4(v90, type metadata accessor for MemberSharingCircle);
        v98 = *(v144 + 16);
        v99 = v63 + *(v66 + 24);
        v100 = v140;
        v101 = v144;
        v102 = v136;
        v98(v140, v99, v136);
        v103 = *(v101 + 56);
        v103(v100, 0, 1, v102);
        v104 = v130;
        sub_1000D2A70(v64, v130, &unk_101698C30, &unk_101392630);
        v105 = v126;
        if (v122(v104, 1, v126) == 1)
        {
          sub_10000B3A8(v104, &unk_101698C30, &unk_101392630);
          v106 = 1;
          v107 = v131;
          v108 = v134;
        }

        else
        {
          v108 = v134;
          v98(v134, v104 + *(v105 + 20), v102);
          sub_100F806B4(v104, type metadata accessor for SharedBeaconRecord);
          v106 = 0;
          v107 = v131;
        }

        v109 = v137;
        v103(v108, v106, 1, v102);
        v110 = *(v109 + 48);
        v111 = v140;
        sub_1000D2A70(v140, v107, &qword_1016980D0, &unk_10138F3B0);
        v147 = v110;
        sub_1000D2A70(v108, v110 + v107, &qword_1016980D0, &unk_10138F3B0);
        v112 = *(v144 + 48);
        if (v112(v107, 1, v102) == 1)
        {
          sub_10000B3A8(v108, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v111, &qword_1016980D0, &unk_10138F3B0);
          if (v112(v147 + v107, 1, v102) == 1)
          {
            sub_10000B3A8(v107, &qword_1016980D0, &unk_10138F3B0);
            v113 = v142;
LABEL_34:
            v96 = type metadata accessor for BeaconNamingRecord;
            v97 = v113;
            goto LABEL_35;
          }
        }

        else
        {
          v114 = v127;
          sub_1000D2A70(v107, v127, &qword_1016980D0, &unk_10138F3B0);
          v115 = v147;
          if (v112(v147 + v107, 1, v102) != 1)
          {
            v116 = v144;
            v117 = v115 + v107;
            v118 = v128;
            (*(v144 + 32))(v128, v117, v102);
            sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID);
            v119 = dispatch thunk of static Equatable.== infix(_:_:)();
            v120 = *(v116 + 8);
            v120(v118, v102);
            sub_10000B3A8(v134, &qword_1016980D0, &unk_10138F3B0);
            sub_10000B3A8(v140, &qword_1016980D0, &unk_10138F3B0);
            v120(v114, v102);
            sub_10000B3A8(v107, &qword_1016980D0, &unk_10138F3B0);
            v113 = v142;
            if (v119)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

          sub_10000B3A8(v134, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v140, &qword_1016980D0, &unk_10138F3B0);
          (*(v144 + 8))(v114, v102);
        }

        sub_10000B3A8(v107, &qword_1016AF880, &unk_10138CE20);
        v113 = v142;
LABEL_33:
        sub_100D4555C(v113);
        goto LABEL_34;
      }
    }

    else
    {
      v83 = v129;
      sub_1000D2A70(v78, v129, &qword_1016980D0, &unk_10138F3B0);
      v84 = v80(v78 + v76, 1, v79);
      v64 = v143;
      v85 = v79;
      if (v84 != 1)
      {
        v86 = v144;
        v87 = v128;
        (*(v144 + 32))(v128, v78 + v76, v85);
        sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID);
        v88 = dispatch thunk of static Equatable.== infix(_:_:)();
        v89 = *(v86 + 8);
        v89(v87, v85);
        sub_10000B3A8(v135, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8(v141, &qword_1016980D0, &unk_10138F3B0);
        v89(v129, v85);
        sub_10000B3A8(v78, &qword_1016980D0, &unk_10138F3B0);
        v63 = v142;
        v65 = v138;
        v66 = v139;
        v82 = v125;
        if (v88)
        {
          goto LABEL_21;
        }

LABEL_19:
        sub_100D458E8(v82);
        sub_100F806B4(v82, type metadata accessor for SharedBeaconRecord);
        goto LABEL_22;
      }

      sub_10000B3A8(v135, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v141, &qword_1016980D0, &unk_10138F3B0);
      (*(v144 + 8))(v83, v79);
      v63 = v142;
      v65 = v138;
    }

    sub_10000B3A8(v78, &qword_1016AF880, &unk_10138CE20);
    v66 = v139;
    v82 = v125;
    goto LABEL_19;
  }

  v52 = 0;
  v53 = v126;
  while (v52 < *(v50 + 16))
  {
    sub_100F80550(v50 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v52, v47, type metadata accessor for MemberPeerTrust);
    sub_100D46078(v47);
    ++v52;
    sub_100F806B4(v47, type metadata accessor for MemberPeerTrust);
    if (v51 == v52)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100F7CAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v12 = *(v11 + 28);
  v13 = *(a2 + v12);
  v15 = *(a2 + v12 + 8);
  v14 = *(a2 + v12 + 16);
  v16 = a1 + v12;
  v17 = *(a1 + v12 + 16);

  *v16 = v13;
  *(v16 + 8) = v15;
  *(v16 + 16) = v14;
  sub_1000D2A70(a3, v10, &qword_10169EF90, &unk_10139FCF0);
  LOBYTE(a3) = v10[v7[14]];
  v18 = *&v10[v7[18] + 16];

  v19 = *&v10[v7[22] + 8];

  v20 = *&v10[v7[26]];

  sub_100016590(*&v10[v7[30]], *&v10[v7[30] + 8]);
  *(a1 + *(v11 + 64)) = a3;
  v21 = type metadata accessor for UUID();
  return (*(*(v21 - 8) + 8))(v10, v21);
}

uint64_t *sub_100F7CC38()
{
  sub_100007BAC(v0 + 14);
  v1 = v0[20];

  sub_100007BAC(v0 + 21);
  sub_100007BAC(v0 + 26);
  sub_100007BAC(v0 + 31);
  v2 = v0[36];
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 43);
  v3 = v0[48];

  v4 = v0[49];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100F7CCA8()
{
  sub_100F7CC38();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100F7CCF8(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 96) = a3;
  *(v5 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v5 + 40) = v7;
  v8 = *(v7 - 8);
  *(v5 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v5 + 56) = v10;
  *(v5 + 64) = v11;

  return _swift_task_switch(sub_100F7CDC8, 0, 0);
}

uint64_t sub_100F7CDC8()
{
  if (*(v0 + 96) == 2)
  {
    v8 = *(v0 + 24);
    v9 = *(v8 + 288);
    v10 = *(v8 + 160);
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_100F7D498;
    v12 = *(v0 + 64);
    v13 = *(v0 + 16);

    return sub_100E82E40(v13, v12, v10);
  }

  else if (*(v0 + 96))
  {
    sub_100F80870();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v1 = *(v0 + 24);
    v2 = *(v1 + 288);
    v3 = *(v1 + 160);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_100F7CF70;
    v5 = *(v0 + 64);
    v6 = *(v0 + 16);

    return sub_100E81F7C(v6, v5, v3);
  }
}

uint64_t sub_100F7CF70()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100F7D130;
  }

  else
  {
    v3 = sub_100F7D084;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F7D084()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for OwnerPeerTrust();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100F7D130()
{
  v36 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A560);
  (*(v5 + 16))(v2, v6, v4);
  v8 = v3;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[10];
  if (v11)
  {
    v13 = v0[8];
    v33 = v0[7];
    v14 = v0[5];
    v15 = v0[6];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v16 = 141559043;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2113;
    *(v16 + 14) = v13;
    *v17 = v13;
    *(v16 + 22) = 2114;
    v18 = v13;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v19;
    v17[1] = v19;
    *(v16 + 32) = 2160;
    *(v16 + 34) = 1752392040;
    *(v16 + 42) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v15 + 8))(v33, v14);
    v23 = sub_1000136BC(v20, v22, &v35);

    *(v16 + 44) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Cannot add family member to utfs circle %{private,mask.hash}@. error: %{public}@, BeaconIdentifier: %{private,mask.hash}s.", v16, 0x34u);
    sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
    swift_arrayDestroy();

    sub_100007BAC(v34);
  }

  else
  {
    v25 = v0[6];
    v24 = v0[7];
    v26 = v0[5];
    v27 = v0[10];

    (*(v25 + 8))(v24, v26);
  }

  v28 = v0[7];
  v29 = v0[2];
  v30 = type metadata accessor for OwnerPeerTrust();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);

  v31 = v0[1];

  return v31();
}

uint64_t sub_100F7D498()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100F80E28, 0, 0);
  }
}

uint64_t sub_100F7D5E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100F7D6E8, 0, 0);
}

uint64_t sub_100F7D6E8()
{
  v1 = *(*(v0 + 24) + 160);
  *(v0 + 80) = v1;
  v2 = type metadata accessor for OwnerPeerTrust();
  *(v0 + 88) = v2;
  *(v0 + 112) = *(v2 + 20);

  return _swift_task_switch(sub_100F7D768, v1, 0);
}

uint64_t sub_100F7D768()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 112), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_100F7D8D0;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E68, v6, v10);
}

uint64_t sub_100F7D8D0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100F7D9E8, 0, 0);
}

uint64_t sub_100F7D9E8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = (*(*(v0[11] - 8) + 48))(v1, 1) == 1;
  sub_10000B3A8(v1, &qword_101697798, &unk_10138C4F0);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100F7DABC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for OwnerSharingCircle();
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v2[12] = *(v7 + 64);
  v2[13] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v2[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v2[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100F7DC94, v1, 0);
}

uint64_t sub_100F7DC94()
{
  *(v0 + 16) = _swiftEmptyDictionarySingleton;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v4 = *(*(v0 + 32) + *(*(v0 + 48) + 32));
  *(v0 + 168) = v4;
  v5 = *(v4 + 32);
  *(v0 + 304) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v4 + 64);
  *(v0 + 176) = _swiftEmptyDictionarySingleton;

  if (v8)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 184) = v8;
    *(v0 + 192) = v9;
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 80);
    v14 = __clz(__rbit64(v8)) | (v9 << 6);
    v15 = *(v4 + 48);
    v16 = v2[9];
    *(v0 + 200) = v16;
    v17 = v15 + v16 * v14;
    v18 = v2[2];
    *(v0 + 208) = v18;
    *(v0 + 216) = (v2 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v11, v17, v13);
    v19 = *(*(v4 + 56) + v14);
    v20 = *(v1 + 48);
    v21 = v2[4];
    *(v0 + 224) = v21;
    *(v0 + 232) = (v2 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v12, v11, v13);
    *(v12 + v20) = v19;
    v22 = *(v3 + 160);
    *(v0 + 240) = v22;
    v23 = sub_100F7E1C8;
    goto LABEL_9;
  }

  v10 = 0;
  while (((63 - v7) >> 6) - 1 != v10)
  {
    v9 = v10 + 1;
    v8 = *(v4 + 8 * v10++ + 72);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  if ((sub_100DE7CB4(_swiftEmptyDictionarySingleton, v4) & 1) == 0)
  {
    v24 = *(v0 + 72);
    v25 = *(v0 + 32);
    v26 = swift_task_alloc();
    *(v26 + 16) = v25;
    *(v26 + 24) = v0 + 16;
    sub_100EC0C48(sub_100F80A40, v24);
    v27 = *(v0 + 40);

    v22 = *(v27 + 160);
    *(v0 + 264) = v22;
    v23 = sub_100F7EBBC;
LABEL_9:

    return _swift_task_switch(v23, v22, 0);
  }

  v28 = *(v0 + 152);
  v29 = *(v0 + 160);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 120);
  v33 = *(v0 + 104);
  v35 = *(v0 + 64);
  v34 = *(v0 + 72);
  v36 = *(v0 + 56);
  v37 = *(v0 + 16);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100F7E1C8()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  (*(v0 + 208))(v5, *(v0 + 152), v6);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v0 + 248) = v9;
  *(v9 + 16) = v1;
  v4(v9 + v8, v5, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *v11 = v0;
  v11[1] = sub_100F7E314;
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E68, v9, v13);
}

uint64_t sub_100F7E314()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_100F7E440, v3, 0);
}

uint64_t sub_100F7E440()
{
  v92 = v0;
  v1 = *(v0 + 120);
  v2 = type metadata accessor for OwnerPeerTrust();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v4 = *(v0 + 176);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    sub_10000B3A8(v1, &qword_101697798, &unk_10138C4F0);
    sub_1000D2A70(v5, v6, &qword_1016BBEE0, &unk_10139CBF0);
    sub_1000D2A70(v5, v7, &qword_1016BBEE0, &unk_10139CBF0);
    v9 = *(v7 + *(v8 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 24) = v4;
    v11 = sub_1000210EC(v6);
    v13 = *(v4 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v5) = v12;
      if (*(*(v0 + 176) + 24) < v16)
      {
        v17 = *(v0 + 144);
        sub_100FE88DC(v16, isUniquelyReferenced_nonNull_native);
        v18 = *(v0 + 24);
        v11 = sub_1000210EC(v17);
        if ((v5 & 1) != (v19 & 1))
        {
          v20 = *(v0 + 80);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_10:
        v3 = *(v0 + 24);
        if (v5)
        {
LABEL_11:
          v22 = *(v0 + 152);
          *(v3[7] + v11) = v9;
          sub_10000B3A8(v22, &qword_1016BBEE0, &unk_10139CBF0);
LABEL_16:
          v33 = *(v0 + 136);
          v34 = *(v0 + 80);
          v35 = *(*(v0 + 88) + 8);
          v35(*(v0 + 144), v34);
          *(v0 + 16) = v3;
          v35(v33, v34);
          goto LABEL_17;
        }

LABEL_14:
        v25 = *(v0 + 208);
        v24 = *(v0 + 216);
        v26 = *(v0 + 200);
        v27 = *(v0 + 144);
        v28 = *(v0 + 152);
        v29 = *(v0 + 80);
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v30 = v11;
        v25(v3[6] + v26 * v11, v27, v29);
        *(v3[7] + v30) = v9;
        sub_10000B3A8(v28, &qword_1016BBEE0, &unk_10139CBF0);
        v31 = v3[2];
        v15 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v15)
        {
LABEL_36:
          __break(1u);
          swift_once();
          v61 = *(v0 + 56);
          v62 = *(v0 + 32);
          v63 = type metadata accessor for Logger();
          sub_1000076D4(v63, qword_10177A560);
          sub_100F80550(v62, v61, type metadata accessor for OwnerSharingCircle);
          swift_errorRetain();
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = *(v0 + 80);
            v67 = *(v0 + 48);
            v68 = *(v0 + 56);
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v91 = v71;
            *v69 = 141558531;
            *(v69 + 4) = 1752392040;
            *(v69 + 12) = 2081;
            v72 = *(v67 + 20);
            sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
            v73 = dispatch thunk of CustomStringConvertible.description.getter();
            v75 = v74;
            sub_100F806B4(v68, type metadata accessor for OwnerSharingCircle);
            v76 = sub_1000136BC(v73, v75, &v91);

            *(v69 + 14) = v76;
            *(v69 + 22) = 2114;
            swift_errorRetain();
            v77 = _swift_stdlib_bridgeErrorToNSError();
            *(v69 + 24) = v77;
            *v70 = v77;
            _os_log_impl(&_mh_execute_header, v64, v65, "Detected stale member list on circle %{private,mask.hash}s but failed to recover %{public}@.", v69, 0x20u);
            sub_10000B3A8(v70, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v71);
          }

          else
          {
            v79 = *(v0 + 56);

            sub_100F806B4(v79, type metadata accessor for OwnerSharingCircle);
          }

LABEL_32:
          v80 = *(v0 + 152);
          v81 = *(v0 + 160);
          v83 = *(v0 + 136);
          v82 = *(v0 + 144);
          v84 = *(v0 + 120);
          v85 = *(v0 + 104);
          v87 = *(v0 + 64);
          v86 = *(v0 + 72);
          v88 = *(v0 + 56);
          v89 = *(v0 + 16);

          v90 = *(v0 + 8);

          return v90();
        }

        v3[2] = v32;
        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }
    }

    v23 = v11;
    sub_1010062B8();
    v11 = v23;
    v3 = *(v0 + 24);
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  sub_10000B3A8(*(v0 + 152), &qword_1016BBEE0, &unk_10139CBF0);
  sub_10000B3A8(v1, &qword_101697798, &unk_10138C4F0);
  v3 = *(v0 + 176);
LABEL_17:
  v37 = *(v0 + 184);
  v36 = *(v0 + 192);
  *(v0 + 176) = v3;
  v38 = (v37 - 1) & v37;
  if (v38)
  {
    v39 = *(v0 + 168);
LABEL_23:
    *(v0 + 184) = v38;
    *(v0 + 192) = v36;
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);
    v43 = *(v0 + 128);
    v44 = *(v0 + 80);
    v45 = *(v0 + 88);
    v46 = *(v0 + 40);
    v47 = __clz(__rbit64(v38)) | (v36 << 6);
    v48 = *(v39 + 48);
    v49 = v45[9];
    *(v0 + 200) = v49;
    v50 = v48 + v49 * v47;
    v51 = v45[2];
    *(v0 + 208) = v51;
    *(v0 + 216) = (v45 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v51(v41, v50, v44);
    v52 = *(*(v39 + 56) + v47);
    v53 = *(v43 + 48);
    v54 = v45[4];
    *(v0 + 224) = v54;
    *(v0 + 232) = (v45 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v54(v42, v41, v44);
    *(v42 + v53) = v52;
    v55 = *(v46 + 160);
    *(v0 + 240) = v55;
    v56 = sub_100F7E1C8;
  }

  else
  {
    while (1)
    {
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      v39 = *(v0 + 168);
      if (v40 >= (((1 << *(v0 + 304)) + 63) >> 6))
      {
        break;
      }

      v38 = *(v39 + 8 * v40 + 64);
      ++v36;
      if (v38)
      {
        v36 = v40;
        goto LABEL_23;
      }
    }

    v57 = *(v0 + 168);

    if (sub_100DE7CB4(v3, v39))
    {
      goto LABEL_32;
    }

    v58 = *(v0 + 72);
    v59 = *(v0 + 32);
    v60 = swift_task_alloc();
    *(v60 + 16) = v59;
    *(v60 + 24) = v0 + 16;
    sub_100EC0C48(sub_100F80A40, v58);
    v78 = *(v0 + 40);

    v55 = *(v78 + 160);
    *(v0 + 264) = v55;
    v56 = sub_100F7EBBC;
  }

  return _swift_task_switch(v56, v55, 0);
}

uint64_t sub_100F7EBE4()
{
  v1 = v0[34];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_100F7ECDC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_100F7ECDC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_100F7F108;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_100F7EDF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F7EE14()
{
  v33 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_100F80550(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[8];
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v9 + 20);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100F806B4(v8, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v32);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Detected stale member list on circle %{private,mask.hash}s and corrected it.", v10, 0x16u);
    sub_100007BAC(v11);

    v17 = v6;
  }

  else
  {
    v19 = v0[8];
    v18 = v0[9];

    sub_100F806B4(v19, type metadata accessor for OwnerSharingCircle);
    v17 = v18;
  }

  sub_10000B3A8(v17, &qword_1016975C8, &qword_10138C1F0);
  v20 = v0[19];
  v21 = v0[20];
  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[15];
  v25 = v0[13];
  v27 = v0[8];
  v26 = v0[9];
  v28 = v0[7];
  v29 = v0[2];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100F7F108()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_100F7F174, v2, 0);
}

uint64_t sub_100F7F174()
{
  v33 = v0;
  sub_10000B3A8(v0[9], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[37];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = v0[4];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_100F80550(v3, v2, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = v0[6];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v8 + 20);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100F806B4(v9, type metadata accessor for OwnerSharingCircle);
    v17 = sub_1000136BC(v14, v16, &v32);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Detected stale member list on circle %{private,mask.hash}s but failed to recover %{public}@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v19 = v0[7];

    sub_100F806B4(v19, type metadata accessor for OwnerSharingCircle);
  }

  v20 = v0[19];
  v21 = v0[20];
  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[15];
  v25 = v0[13];
  v27 = v0[8];
  v26 = v0[9];
  v28 = v0[7];
  v29 = v0[2];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100F7F4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100F7F59C, a3, 0);
}

uint64_t sub_100F7F59C()
{
  v1 = *(*(v0 + 40) + 160);
  *(v0 + 80) = v1;
  *(v0 + 112) = *(type metadata accessor for OwnerSharingCircle() + 20);

  return _swift_task_switch(sub_100F7F618, v1, 0);
}

uint64_t sub_100F7F618()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  (*(v3 + 16))(v1, *(v0 + 32) + *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v8 = v0;
  v8[1] = sub_10010D574;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E64, v6, v9);
}

uint64_t sub_100F7F798(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v51 = a4;
  v6 = type metadata accessor for OwnerPeerTrust();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v53 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = (&v50 - v10);
  v12 = type metadata accessor for SharingCircleSecret();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v50 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v17 = (&v50 - v16);
  v18 = type metadata accessor for OwnerSharingCircle();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18 - 8);
  v52 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v21);
  v25 = (&v50 - v24);
  v55 = a3;
  v26 = a3[2];
  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_6:
    v29 = *v55;
    v30 = *(*v55 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = v54;
      while (v31 < *(v29 + 16))
      {
        sub_100F80550(v29 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v31, v17, type metadata accessor for SharingCircleSecret);
        sub_100D44DD8(v17);
        if (v4)
        {
          v33 = type metadata accessor for SharingCircleSecret;
          v34 = v17;
          return sub_100F806B4(v34, v33);
        }

        ++v31;
        result = sub_100F806B4(v17, type metadata accessor for SharingCircleSecret);
        if (v30 == v31)
        {
          goto LABEL_14;
        }
      }

LABEL_45:
      __break(1u);
    }

    else
    {
      v32 = v54;
LABEL_14:
      v35 = v55[4];
      v36 = *(v35 + 16);
      if (!v36)
      {
LABEL_19:
        v38 = v55[3];
        v39 = *(v38 + 16);
        if (!v39)
        {
LABEL_24:
          v42 = v55[1];
          v43 = *(v42 + 16);
          if (!v43)
          {
            v45 = v53;
LABEL_34:
            v47 = *(v51 + 16);
            if (v47)
            {
              v48 = v51 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
              v49 = *(v32 + 72);
              while (1)
              {
                sub_100F80550(v48, v45, type metadata accessor for OwnerPeerTrust);
                sub_100D467FC(v45);
                if (v4)
                {
                  break;
                }

                result = sub_100F806B4(v45, type metadata accessor for OwnerPeerTrust);
                v48 += v49;
                if (!--v47)
                {
                  return result;
                }
              }

              return sub_100F806B4(v45, type metadata accessor for OwnerPeerTrust);
            }

            return result;
          }

          v44 = 0;
          v45 = v53;
          v11 = v50;
          while (v44 < *(v42 + 16))
          {
            sub_100F80550(v42 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v44, v11, type metadata accessor for SharingCircleSecret);
            sub_100D4346C(v11);
            if (v4)
            {
              v46 = type metadata accessor for SharingCircleSecret;
              goto LABEL_40;
            }

            ++v44;
            result = sub_100F806B4(v11, type metadata accessor for SharingCircleSecret);
            if (v43 == v44)
            {
              goto LABEL_34;
            }
          }

LABEL_48:
          __break(1u);
          return result;
        }

        v40 = 0;
        v41 = v52;
        while (v40 < *(v38 + 16))
        {
          sub_100F80550(v38 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v40, v41, type metadata accessor for OwnerSharingCircle);
          sub_100D43440(v41);
          if (v4)
          {
            v33 = type metadata accessor for OwnerSharingCircle;
            v34 = v41;
            return sub_100F806B4(v34, v33);
          }

          ++v40;
          result = sub_100F806B4(v41, type metadata accessor for OwnerSharingCircle);
          if (v39 == v40)
          {
            goto LABEL_24;
          }
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v37 = 0;
      while (v37 < *(v35 + 16))
      {
        sub_100F80550(v35 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v37, v11, type metadata accessor for OwnerPeerTrust);
        sub_100D437C0(v11);
        if (v4)
        {
          v46 = type metadata accessor for OwnerPeerTrust;
LABEL_40:
          v33 = v46;
          v34 = v11;
          return sub_100F806B4(v34, v33);
        }

        ++v37;
        result = sub_100F806B4(v11, type metadata accessor for OwnerPeerTrust);
        if (v36 == v37)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v28 = 0;
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    sub_100F80550(v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v28, v25, type metadata accessor for OwnerSharingCircle);
    sub_100D45194(v25);
    if (v4)
    {
      break;
    }

    ++v28;
    result = sub_100F806B4(v25, type metadata accessor for OwnerSharingCircle);
    if (v27 == v28)
    {
      goto LABEL_6;
    }
  }

  v33 = type metadata accessor for OwnerSharingCircle;
  v34 = v25;
  return sub_100F806B4(v34, v33);
}

uint64_t sub_100F7FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100F7FEB8, a3, 0);
}

uint64_t sub_100F7FEB8()
{
  v1 = *(*(v0 + 40) + 160);
  *(v0 + 80) = v1;
  *(v0 + 112) = *(type metadata accessor for OwnerSharingCircle() + 20);

  return _swift_task_switch(sub_100F7FF34, v1, 0);
}

uint64_t sub_100F7FF34()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  (*(v3 + 16))(v1, *(v0 + 32) + *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v8 = v0;
  v8[1] = sub_10010ED18;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100F805B8, v6, v9);
}

BOOL sub_100F800F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(type metadata accessor for MemberSharingCircle() - 8);
    v13 = sub_100F7AD50(a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11, a2, a3, a4 & 1);
    if (v4)
    {
      break;
    }

    v9 = v11 + 1;
  }

  while (!v13);
  return v10 != v11;
}

uint64_t sub_100F801E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100F80E40;

  return sub_100F7B17C(a1, v1);
}

uint64_t sub_100F802C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F80380(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100F675E0(a1, a2, v2);
}

uint64_t type metadata accessor for ShareCreateUseCase.ShareCreationData()
{
  result = qword_1016C16C8;
  if (!qword_1016C16C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F804A4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100F7FDE8(a1, a2, v2);
}

uint64_t sub_100F80550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F80620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F806B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F80714(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_100F7CCF8(a1, a2, v8, v6, v7);
}

uint64_t sub_100F807D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001BA6C8;

  return sub_100F7D5E4(a1, v1);
}

unint64_t sub_100F80870()
{
  result = qword_1016C1668;
  if (!qword_1016C1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1668);
  }

  return result;
}

uint64_t sub_100F808C4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100F7F4CC(a1, a2, v2);
}

uint64_t sub_100F80970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100F809B8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100F80A60(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100F5A028(a1, a2, v2);
}

unint64_t sub_100F80B0C()
{
  result = qword_101698D00;
  if (!qword_101698D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101698D00);
  }

  return result;
}

uint64_t sub_100F80B58(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_100F80BE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100F80E40;

  return sub_100044C20();
}

void sub_100F80CA0()
{
  sub_1005C3874(319, &qword_1016A5498, type metadata accessor for SharingCircleSecret);
  if (v0 <= 0x3F)
  {
    sub_1005C3874(319, &qword_1016A54A0, type metadata accessor for OwnerSharingCircle);
    if (v1 <= 0x3F)
    {
      sub_1005C3874(319, &unk_1016A54A8, type metadata accessor for OwnerPeerTrust);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OwnedBeaconRecord();
        if (v3 <= 0x3F)
        {
          type metadata accessor for BeaconNamingRecord();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100F80DD4()
{
  result = qword_1016C1718;
  if (!qword_1016C1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1718);
  }

  return result;
}

void *sub_100F80E6C(void *a1)
{
  v69 = a1;
  v1 = type metadata accessor for TimeBasedKey();
  v2 = *(v1 - 8);
  v72 = v1;
  v73 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v67 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for DateInterval();
  v13 = *(v75 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v75);
  v70 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v74 = &v67 - v18;
  __chkstk_darwin(v17);
  v20 = &v67 - v19;
  if (qword_101694940 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v21 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073BF4(v78);

    static Date.trustedNow.getter(v12);
    DateInterval.init(start:duration:)();
    v12 = sub_100F822B0(v20);
    v22 = [objc_opt_self() standardUserDefaults];
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 BOOLForKey:v23];

    v71 = v12;
    if ((v24 & 1) == 0)
    {
      if (v69)
      {
        break;
      }
    }

    v6 = v12[2];
    if (!v6)
    {
      goto LABEL_36;
    }

    v67 = v20;
    v77 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = 0;
    v69 = (v12 + ((*(v73 + 80) + 32) & ~*(v73 + 80)));
    v68 = (v13 + 16);
    v70 = (v13 + 8);
    while (v25 < v12[2])
    {
      sub_100F84FE0(v69 + *(v73 + 72) * v25, v8, type metadata accessor for TimeBasedKey);
      v13 = v72;
      (*v68)(v74, &v8[*(v72 + 20)], v75);
      v26 = sub_100A7A194(*&v8[*(v13 + 24) + 16], *&v8[*(v13 + 24) + 24]);
      v23 = sub_100A7829C(v26, 0);
      v24 = v27;
      CCECCryptorRelease();
      v28 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v28 != 2)
        {
          goto LABEL_65;
        }

        v31 = v23[2];
        v30 = v23[3];
        v32 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v32)
        {
          goto LABEL_39;
        }
      }

      else if (v28)
      {
        LODWORD(v29) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_40;
        }

        v29 = v29;
      }

      else
      {
        v29 = BYTE6(v24);
      }

      if (v29 != 28)
      {
        if (v28 == 1)
        {
          LODWORD(v28) = HIDWORD(v23) - v23;
          if (!__OFSUB__(HIDWORD(v23), v23))
          {
            v41 = v28;
            goto LABEL_66;
          }

          __break(1u);
        }

        if (v28 != 2)
        {
          v41 = BYTE6(v24);
          goto LABEL_66;
        }

        v53 = v23[2];
        v43 = v23[3];
        v41 = v43 - v53;
        if (!__OFSUB__(v43, v53))
        {
          while (1)
          {
LABEL_66:
            sub_100018350();
            v59 = swift_allocError();
            *v63 = 28;
            *(v63 + 8) = v41;
            *(v63 + 16) = 0;
            swift_willThrow();
            sub_100016590(v23, v24);
LABEL_62:
            v78 = 0;
            v79 = 0xE000000000000000;
            _StringGuts.grow(_:)(35);
            v61._object = 0x800000010134CB30;
            v61._countAndFlagsBits = 0xD000000000000021;
            String.append(_:)(v61);
            v76 = v59;
LABEL_63:
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            _print_unlocked<A, B>(_:_:)();
LABEL_64:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_65:
            v41 = 0;
          }
        }

        __break(1u);
LABEL_52:
        if (v43 == 1)
        {
          LODWORD(v43) = HIDWORD(v41) - v41;
          if (!__OFSUB__(HIDWORD(v41), v41))
          {
            v66 = v43;
            goto LABEL_68;
          }

          __break(1u);
        }

        if (v43 == 2)
        {
          v54 = *(v41 + 16);
          v55 = *(v41 + 24);
          v66 = v55 - v54;
          if (__OFSUB__(v55, v54))
          {
            __break(1u);
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v23 = swift_allocObject();
            *(v23 + 1) = xmmword_101385D80;
            v78 = v66;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v56 = String.init<A>(describing:)();
            v58 = v57;
            v23[7] = &type metadata for String;
            v23[8] = sub_100008C00();
            v23[4] = v56;
            v23[5] = v58;
            os_log(_:dso:log:_:_:)();

            sub_1001BAF88();
            v59 = swift_allocError();
            *v60 = 0;
            swift_willThrow();

            goto LABEL_62;
          }
        }

        else
        {
          v66 = BYTE6(v13);
        }

LABEL_68:
        sub_100018350();
        v23 = swift_allocError();
        *v64 = 28;
        *(v64 + 8) = v66;
        *(v64 + 16) = 0;
        swift_willThrow();
        sub_100016590(v41, v13);
        v78 = 0;
        v79 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v62._object = 0x800000010134CB30;
        v62._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v62);
        v76 = v23;
        goto LABEL_63;
      }

      ++v25;
      v33 = objc_allocWithZone(SPBeaconingKey);
      v20 = v74;
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v35 = Data._bridgeToObjectiveC()().super.isa;
      [v33 initWithDateInterval:isa key:v35];

      sub_100016590(v23, v24);
      v36 = *v70;
      (*v70)(v20, v75);
      sub_100018D60(v8, type metadata accessor for TimeBasedKey);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v77[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 = v71;
      if (v6 == v25)
      {
        v37 = v67;
        v38 = v75;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_38:
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
    swift_once();
  }

  if (v69 != 1)
  {
    if (v69 != -1)
    {
      v78 = 0;
      v79 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);
      v65._countAndFlagsBits = 0xD000000000000013;
      v65._object = 0x8000000101374B60;
      String.append(_:)(v65);
      v77 = v69;
      type metadata accessor for BeaconingKeyType(0);
      _print_unlocked<A, B>(_:_:)();
    }

    goto LABEL_64;
  }

  v39 = v12[2];
  if (v39)
  {
    v67 = v20;
    v77 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v24 = 0;
    v69 = (v12 + ((*(v73 + 80) + 32) & ~*(v73 + 80)));
    v68 = (v13 + 16);
    v74 = (v13 + 8);
    while (v24 < v12[2])
    {
      sub_100F84FE0(v69 + *(v73 + 72) * v24, v6, type metadata accessor for TimeBasedKey);
      v40 = v72;
      (*v68)(v70, &v6[*(v72 + 20)], v75);
      v8 = sub_100A7A194(*&v6[*(v40 + 24) + 16], *&v6[*(v40 + 24) + 24]);
      v41 = sub_100A7829C(v8, 0);
      v13 = v42;
      CCECCryptorRelease();
      v43 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v43 != 2)
        {
          v66 = 0;
          goto LABEL_68;
        }

        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        v32 = __OFSUB__(v45, v46);
        v44 = v45 - v46;
        if (v32)
        {
          goto LABEL_41;
        }
      }

      else if (v43)
      {
        LODWORD(v44) = HIDWORD(v41) - v41;
        if (__OFSUB__(HIDWORD(v41), v41))
        {
          goto LABEL_42;
        }

        v44 = v44;
      }

      else
      {
        v44 = BYTE6(v13);
      }

      if (v44 != 28)
      {
        goto LABEL_52;
      }

      v20 = v39;
      ++v24;
      sub_10002EA98(6, v41, v13, &v78);
      v47 = v78;
      v48 = v79;
      v49 = objc_allocWithZone(SPBeaconingKey);
      v50 = v70;
      v51 = DateInterval._bridgeToObjectiveC()().super.isa;
      v8 = Data._bridgeToObjectiveC()().super.isa;
      [v49 initWithDateInterval:v51 key:v8];

      sub_100016590(v47, v48);
      v36 = *v74;
      (*v74)(v50, v75);
      sub_100018D60(v6, type metadata accessor for TimeBasedKey);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v77[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v39 = v20;
      v12 = v71;
      if (v20 == v24)
      {
        v37 = v67;
        v38 = v75;
LABEL_35:
        v36(v37, v38);

        return v77;
      }
    }

    goto LABEL_38;
  }

LABEL_36:

  (*(v13 + 8))(v20, v75);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_100F81B48@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100F81CCC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v25 = v24 - v7;
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v24 - v18;
  *(v2 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_runningMacOSDaemon) = 0;
  sub_1000D2A70(a1, v2 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconRecord, &unk_1016A9A20, &qword_10138B280);
  v24[1] = a2;
  *(v2 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconKeyManager) = a2;
  v26 = a1;
  sub_1000D2A70(a1, v11, &unk_1016A9A20, &qword_10138B280);
  v20 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v20 - 8) + 48))(v11, 1, v20) == 1)
  {
    sub_10000B3A8(v11, &unk_1016A9A20, &qword_10138B280);
    sub_10000B3A8(v26, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v21 = *(v13 + 16);
    v21(v17, &v11[*(v20 + 32)], v12);

    sub_100018D60(v11, type metadata accessor for OwnedBeaconRecord);
    (*(v13 + 32))(v19, v17, v12);
    v22 = v25;
    v21(v25, v19, v12);
    (*(v13 + 56))(v22, 0, 1, v12);
    sub_100F845C8(v22);

    sub_10000B3A8(v26, &unk_1016A9A20, &qword_10138B280);
    (*(v13 + 8))(v19, v12);
  }

  return v2;
}

uint64_t sub_100F82010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(v1 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconRecord, v6, &unk_1016A9A20, &qword_10138B280);
  v12 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v12 - 8) + 48))(v6, 1, v12) == 1)
  {
    sub_10000B3A8(v6, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v13 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v14 = v17[1];
    KeyPath = swift_getKeyPath();
    sub_101075400(KeyPath, v14, a1);
  }

  else
  {
    (*(v8 + 16))(v11, &v6[*(v12 + 20)], v7);
    sub_100018D60(v6, type metadata accessor for OwnedBeaconRecord);
    (*(v8 + 32))(a1, v11, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

void *sub_100F822B0(uint64_t a1)
{
  v80 = a1;
  v2 = type metadata accessor for DateInterval();
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = *(v82 + 64);
  __chkstk_darwin(v2);
  v79 = v4;
  v81 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v74 - v10;
  v87 = type metadata accessor for OwnedBeaconRecord();
  v84 = *(v87 - 8);
  v11 = *(v84 + 64);
  v12 = __chkstk_darwin(v87);
  v78 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v74 - v13;
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v74 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v88 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v74 - v24;
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F81B48(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v31 = &unk_101696900;
    v32 = &unk_10138B1E0;
    v33 = v25;
LABEL_11:
    sub_10000B3A8(v33, v31, v32);
    static os_log_type_t.error.getter();
    sub_10039722C();
    v42 = static OS_os_log.default.getter();
    v43 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();

    return v43;
  }

  (*(v27 + 32))(v30, v25, v26);
  sub_100F82010(v17);
  v34 = (*(v19 + 48))(v17, 1, v18);
  v35 = v26;
  if (v34 == 1)
  {
    (*(v27 + 8))(v30, v26);
    v31 = &qword_1016980D0;
    v32 = &unk_10138F3B0;
    v33 = v17;
    goto LABEL_11;
  }

  v76 = v18;
  v77 = v30;
  v36 = v27;
  v74 = v19;
  v75 = v35;
  v37 = v88;
  (*(v19 + 32))(v88, v17, v18);
  sub_1000D2A70(v1 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconRecord, v9, &unk_1016A9A20, &qword_10138B280);
  v38 = v84;
  v39 = *(v84 + 48);
  v40 = v87;
  if (v39(v9, 1, v87) == 1)
  {
    v41 = v85;
    sub_100F82D28(v37, v77, v85);
    if (v39(v9, 1, v40) != 1)
    {
      sub_10000B3A8(v9, &unk_1016A9A20, &qword_10138B280);
    }
  }

  else
  {
    v41 = v85;
    sub_10002AE4C(v9, v85, type metadata accessor for OwnedBeaconRecord);
    (*(v38 + 56))(v41, 0, 1, v40);
  }

  if (v39(v41, 1, v40) == 1)
  {
    (*(v74 + 8))(v37, v76);
    (*(v36 + 8))(v77, v75);
    v31 = &unk_1016A9A20;
    v32 = &qword_10138B280;
    v33 = v41;
    goto LABEL_11;
  }

  v85 = v36;
  v45 = v86;
  sub_10002AE4C(v41, v86, type metadata accessor for OwnedBeaconRecord);
  v46 = v78;
  sub_100F84FE0(v45, v78, type metadata accessor for OwnedBeaconRecord);
  v47 = v38;
  v49 = v81;
  v48 = v82;
  v50 = v83;
  (*(v82 + 16))(v81, v80, v83);
  v51 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v52 = (v11 + *(v48 + 80) + v51) & ~*(v48 + 80);
  v53 = v52 + v79;
  v54 = swift_allocObject();
  *(v54 + 16) = v1;
  sub_10002AE4C(v46, v54 + v51, type metadata accessor for OwnedBeaconRecord);
  (*(v48 + 32))(v54 + v52, v49, v50);
  *(v54 + v53) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v43 = v89;
  v55 = v90;
  if (v91 > 1u)
  {
    v67 = v85;
    if (v91 == 2)
    {
      sub_100018D60(v86, type metadata accessor for OwnedBeaconRecord);
      (*(v74 + 8))(v88, v76);
      (*(v67 + 1))(v77, v75);
      sub_100359088(v43, v55, 2u);
    }

    else
    {
      static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_101385D80;
      v69 = v86;
      v70 = v86 + *(v87 + 20);
      v71 = UUID.uuidString.getter();
      v73 = v72;
      *(v68 + 56) = &type metadata for String;
      *(v68 + 64) = sub_100008C00();
      *(v68 + 32) = v71;
      *(v68 + 40) = v73;
      os_log(_:dso:log:_:_:)();

      sub_100018D60(v69, type metadata accessor for OwnedBeaconRecord);
      (*(v74 + 8))(v88, v76);
      (*(v67 + 1))(v77, v75);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v57 = v75;
    v56 = v76;
    v58 = v74;
    v59 = v77;
    v60 = v85;
    if (v91)
    {
      sub_100018D60(v86, type metadata accessor for OwnedBeaconRecord);
      (*(v58 + 8))(v88, v56);
      (*(v60 + 1))(v59, v57);
    }

    else
    {

      static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_101385D80;
      v62 = v86;
      v63 = v86 + *(v87 + 20);
      v64 = UUID.uuidString.getter();
      v66 = v65;
      *(v61 + 56) = &type metadata for String;
      *(v61 + 64) = sub_100008C00();
      *(v61 + 32) = v64;
      *(v61 + 40) = v66;
      os_log(_:dso:log:_:_:)();

      sub_100018D60(v62, type metadata accessor for OwnedBeaconRecord);
      (*(v74 + 8))(v88, v76);
      (*(v60 + 1))(v77, v75);
      sub_100359088(v43, v55, 0);
    }
  }

  return v43;
}

uint64_t sub_100F82D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for StableIdentifier();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = 0x4944552D454B4146;
  v9[1] = 0xE900000000000044;
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for OwnedBeaconRecord();
  v11 = v10[5];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a3[v11], a1, v12);
  sub_100F84FE0(v9, &a3[v10[6]], type metadata accessor for StableIdentifier);
  (*(v13 + 56))(&a3[v10[7]], 1, 1, v12);
  v14 = v10[8];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 16))(&a3[v14], a2, v15);
  v16 = type metadata accessor for __DataStorage();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = __DataStorage.init(length:)() | 0x4000000000000000;
  v20 = *(v16 + 48);
  v21 = *(v16 + 52);
  swift_allocObject();
  v22 = __DataStorage.init(length:)() | 0x4000000000000000;
  v23 = *(v16 + 48);
  v24 = *(v16 + 52);
  swift_allocObject();
  v25 = __DataStorage.init(length:)() | 0x4000000000000000;
  sub_100018D60(v9, type metadata accessor for StableIdentifier);
  *a3 = xmmword_10138C660;
  v26 = &a3[v10[9]];
  *v26 = 0x2000000000;
  *(v26 + 1) = v19;
  *&a3[v10[10]] = xmmword_10138BBF0;
  *&a3[v10[11]] = xmmword_10138BBF0;
  v27 = &a3[v10[12]];
  *v27 = 0x5500000000;
  *(v27 + 1) = v22;
  v28 = &a3[v10[13]];
  *v28 = 0x3900000000;
  *(v28 + 1) = v25;
  v29 = &a3[v10[14]];
  *v29 = 65;
  *(v29 + 1) = 0xE100000000000000;
  v30 = &a3[v10[15]];
  *v30 = 16706;
  *(v30 + 1) = 0xE200000000000000;
  *&a3[v10[16]] = -1;
  *&a3[v10[17]] = -1;
  a3[v10[18]] = 3;
  a3[v10[19]] = 0;
  a3[v10[20]] = 0;
  return (*(*(v10 - 1) + 56))(a3, 0, 1, v10);
}

uint64_t sub_100F83034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for KeyGenerationBeaconInfo();
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v9 = *(v8 + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for BeaconIdentifier();
  v4[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100F83198, 0, 0);
}

uint64_t sub_100F83198()
{
  v1 = v0[9];
  v0[18] = *(v0[8] + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconKeyManager);
  v2 = type metadata accessor for OwnedBeaconRecord();
  v0[19] = v2;
  v0[5] = v2;
  v0[6] = sub_100F84F98(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v3 = sub_1000280DC(v0 + 2);
  v0[20] = v3;
  sub_100F84FE0(v1, v3, type metadata accessor for OwnedBeaconRecord);
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_100F832B0;

  return daemon.getter();
}

uint64_t sub_100F832B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  *(v3 + 176) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F84F98(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F84F98(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100F8348C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F8348C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *v2;
  *(*v2 + 192) = a1;

  v6 = *(v3 + 176);
  if (v1)
  {

    v7 = sub_100F837EC;
  }

  else
  {

    v7 = sub_100F835DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F835DC()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = *(v4 + 20);
  v7 = *(v2 + 20);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v3 + v6, v1 + v7, v8);
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_100F836D8;
  v10 = v0[24];
  v11 = v0[17];
  v12 = v0[12];

  return sub_10098F404(v12, v11);
}

uint64_t sub_100F836D8()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100F83BE0;
  }

  else
  {
    v3 = sub_100F83A04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F837EC()
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
  sub_100F84F98(&qword_101697368, &type metadata accessor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000101351540;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = v0[7];
  sub_100007BAC(v0 + 2);
  *v7 = 0;
  v7[1] = 0;
  v8 = v0[17];
  v9 = v0[15];
  v11 = v0[11];
  v10 = v0[12];
  *(v0[7] + 16) = 3;

  v12 = v0[1];

  return v12();
}

uint64_t sub_100F83A04()
{
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
LABEL_7:
    v14 = swift_task_alloc();
    v0[29] = v14;
    *v14 = v0;
    v14[1] = sub_100F83D8C;
    v15 = v0[18];
    v16 = v0[11];

    return sub_1007383E8(v16, (v0 + 2));
  }

  v3 = v0[15];
  sub_10002AE4C(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = *(v3 + *(v1 + 28));
  sub_100018D60(v3, type metadata accessor for KeyGenerationBeaconInfo);
  if (v4 != 3)
  {
    goto LABEL_7;
  }

  v5 = v0[24];
  v6 = v0[17];

  sub_100018D60(v6, type metadata accessor for BeaconIdentifier);
  sub_100007BAC(v0 + 2);
  v7 = v0[7];
  *v7 = 0;
  v7[1] = 0;
  v8 = v0[17];
  v9 = v0[15];
  v11 = v0[11];
  v10 = v0[12];
  *(v0[7] + 16) = 3;

  v12 = v0[1];

  return v12();
}

uint64_t sub_100F83BE0()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[17];

  sub_100018D60(v3, type metadata accessor for BeaconIdentifier);

  v4 = v0[7];
  sub_100007BAC(v0 + 2);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0[17];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  *(v0[7] + 16) = 3;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F83CB8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);

  sub_100018D60(v2, type metadata accessor for BeaconIdentifier);
  sub_100007BAC((v0 + 16));
  v3 = *(v0 + 264);
  **(v0 + 56) = vextq_s8(*(v0 + 216), *(v0 + 216), 8uLL);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  *(*(v0 + 56) + 16) = v3;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100F83D8C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100F83EA0;
  }

  else
  {
    v3 = sub_100F83F78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F83EA0()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[17];

  sub_100018D60(v3, type metadata accessor for BeaconIdentifier);

  v4 = v0[7];
  sub_100007BAC(v0 + 2);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0[17];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  *(v0[7] + 16) = 3;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F83F78()
{
  v1 = v0[20];
  v3 = v0[10];
  v2 = v0[11];
  sub_1000322C8();
  v4 = sub_100F84768(v1, v3, v2);
  v6 = v5;
  sub_10000B3A8(v2, &unk_1016C8FC0, &unk_10139D7D0);
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_100F84068;
  v8 = v0[18];

  return sub_100731BF4((v0 + 2), v4, v6, 0, 0, 0);
}

uint64_t sub_100F84068(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 248);
  v10 = *v4;
  *(*v4 + 256) = v3;

  if (v3)
  {
    v11 = sub_100F841A4;
  }

  else
  {
    *(v8 + 264) = a3;
    *(v8 + 216) = a2;
    *(v8 + 224) = a1;
    v11 = sub_100F83CB8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100F841A4()
{
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[17];

  sub_100018D60(v3, type metadata accessor for BeaconIdentifier);

  v4 = v0[7];
  sub_100007BAC(v0 + 2);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0[17];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  *(v0[7] + 16) = 3;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F8427C()
{
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconRecord, &unk_1016A9A20, &qword_10138B280);
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconKeyManager);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalBeaconingManager()
{
  result = qword_1016C1760;
  if (!qword_1016C1760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100F84354()
{
  sub_100F843FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100F843FC()
{
  if (!qword_1016C1770)
  {
    type metadata accessor for OwnedBeaconRecord();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C1770);
    }
  }
}

uint64_t sub_100F84454(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DateInterval() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = v1 + v9;
  v12 = *(v1 + v9 + *(v8 + 64));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014650;

  return sub_100F83034(a1, v10, v1 + v6, v11);
}

uint64_t sub_100F845C8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a1, v5, &unk_101696900, &unk_10138B1E0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v10];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_100F84768(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v72 = a2;
  v76 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v61[-v10];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v67 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v71 = &v61[-v18];
  __chkstk_darwin(v17);
  v20 = &v61[-v19];
  v21 = type metadata accessor for OwnedBeaconRecord();
  v22 = (v21 - 8);
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v61[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100F84FE0(v76, v25, type metadata accessor for OwnedBeaconRecord);
  v26 = *(v22 + 7);
  v74 = v13;
  v28 = *(v13 + 16);
  v27 = v13 + 16;
  v73 = v28;
  v28(v20, &v25[v26], v12);
  v29 = *(v5 + 16);
  v30 = &v25[*(v22 + 10)];
  v76 = v4;
  v29(v11, v30, v4);
  v31 = v25;
  v32 = v20;
  sub_100018D60(v31, type metadata accessor for OwnedBeaconRecord);
  v33 = *a3;
  v34 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v35 = sub_10088756C(v20, v11, a3 + *(v34 + 36), 0);
  if (((v35 | v33) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v70 = v27;
  v65 = v35;
  v66 = v33;
  v36 = v35 - v33;
  DateInterval.start.getter();
  v37 = sub_10088756C(v20, v11, v9, 0);
  v38 = *(v5 + 8);
  v39 = v76;
  v38(v9, v76);
  DateInterval.end.getter();
  v75 = v20;
  v72 = v11;
  v40 = v11;
  v11 = v36;
  v32 = sub_10088756C(v20, v40, v9, 0);
  v68 = v38;
  result = (v38)(v9, v39);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v69 = v5 + 8;
  v64 = v36;
  if ((v36 & 0x8000000000000000) == 0 && v36 >= v37)
  {
    if (qword_101694A18 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177B538);
      v44 = v67;
      v73(v67, v75, v12);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v77 = v63;
        *v47 = 141558787;
        *(v47 + 4) = 1752392040;
        *(v47 + 12) = 2081;
        sub_100F84F98(&qword_101696930, &type metadata accessor for UUID);
        v62 = v46;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v11;
        v51 = v50;
        (*(v74 + 8))(v44, v12);
        v52 = sub_1000136BC(v48, v51, &v77);
        v11 = v49;

        *(v47 + 14) = v52;
        *(v47 + 22) = 2048;
        *(v47 + 24) = v37;
        *(v47 + 32) = 2048;
        *(v47 + 34) = v49;
        _os_log_impl(&_mh_execute_header, v45, v62, "        Buckets clamped for beacon %{private,mask.hash}s,starting secondary index %llu <= factor %lld -- clamping to 1.", v47, 0x2Au);
        sub_100007BAC(v63);

        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      }

      else
      {

        (*(v74 + 8))(v44, v12);
      }

      v5 = 1;
      v22 = v71;
      if (v65 != v66)
      {
LABEL_14:
        if (v32 < v11)
        {
          if (v5 <= v32)
          {
            v53 = v32;
          }

          else
          {
            v53 = v5;
          }

          goto LABEL_23;
        }
      }

LABEL_18:
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v53 = v32 - v11;
      if (__OFSUB__(v32, v11))
      {
        goto LABEL_33;
      }

      if ((v53 & 0x8000000000000000) == 0)
      {
        if (v5 > v53)
        {
          v53 = v5;
        }

LABEL_23:
        v71 = v53;
        v11 = v75;
        if (p_weak_ivar_lyt[323] != -1)
        {
LABEL_30:
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_1000076D4(v54, qword_10177B538);
        v73(v22, v11, v12);
        v37 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        v56 = v12;
        if (os_log_type_enabled(v37, v55))
        {
          v32 = swift_slowAlloc();
          p_weak_ivar_lyt = swift_slowAlloc();
          v77 = p_weak_ivar_lyt;
          *v32 = 141559043;
          *(v32 + 4) = 1752392040;
          *(v32 + 12) = 2081;
          sub_100F84F98(&qword_101696930, &type metadata accessor for UUID);
          v57 = dispatch thunk of CustomStringConvertible.description.getter();
          v11 = v58;
          v12 = *(v74 + 8);
          (v12)(v22, v56);
          v59 = sub_1000136BC(v57, v11, &v77);

          *(v32 + 14) = v59;
          *(v32 + 22) = 2048;
          *(v32 + 24) = v5;
          *(v32 + 32) = 2048;
          v60 = v71;
          *(v32 + 34) = v71;
          *(v32 + 42) = 2048;
          *(v32 + 44) = v64;
          _os_log_impl(&_mh_execute_header, v37, v55, "        Buckets for beacon %{private,mask.hash}s,secondary index %llu - %llu (factor %lld).", v32, 0x34u);
          sub_100007BAC(p_weak_ivar_lyt);

          v68(v72, v76);
          (v12)(v75, v56);
        }

        else
        {

          p_weak_ivar_lyt = *(v74 + 8);
          (p_weak_ivar_lyt)(v22, v12);
          v68(v72, v76);
          (p_weak_ivar_lyt)(v11, v12);
          v60 = v71;
        }

        if (v60 >= v5)
        {
          return v5;
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v5 = v37 - v36;
  if (__OFSUB__(v37, v36))
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0)
  {
    v22 = v71;
    if (v36 < 1)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100F84F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100F84FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F85058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100207390();
  if (v9)
  {
    v10 = __chkstk_darwin(v9);
    v13[-4] = a2;
    v13[-3] = a1;
    v13[-2] = v10;
    (*(v5 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100F8520C(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for Connection.TransactionMode();
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Table();
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100207390();
  if (v15)
  {
    v16 = v15;
    v25 = v1;
    if (qword_1016949A0 != -1)
    {
      swift_once();
    }

    v17 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v17, qword_10177B410);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    v18 = v27;
    QueryType.filter(_:)();
    v19 = (*(v6 + 8))(v9, v5);
    __chkstk_darwin(v19);
    *(&v24 - 2) = v16;
    *(&v24 - 1) = v14;
    v20 = v29;
    v21 = v25;
    (*(v29 + 104))(v4, enum case for Connection.TransactionMode.deferred(_:), v25);
    Connection.transaction(_:block:)();
    (*(v20 + 8))(v4, v21);

    return (*(v28 + 8))(v14, v18);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    return swift_willThrow();
  }
}

void *sub_100F855A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24StandaloneBeaconDatabase_standaloneBeacon;
  v4 = type metadata accessor for Table();
  v10[3] = v4;
  v10[4] = &protocol witness table for Table;
  v5 = sub_1000280DC(v10);
  (*(*(v4 - 1) + 16))(v5, a1 + v3, v4);
  v6 = sub_1002182F4();
  if (!v6)
  {
    sub_10020223C();
    swift_allocError();
    *v8 = 2;
    *(v8 + 4) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v6;
  v7 = Connection.prepare(_:)();

  if (v1)
  {
LABEL_5:
    sub_100007BAC(v10);
    return v4;
  }

  sub_1000BC4D4(&unk_1016C1800, &qword_1013F51C8);
  v4 = swift_allocObject();
  v4[2] = v7;
  v4[3] = sub_100F86728;
  v4[4] = 0;
  sub_100007BAC(v10);
  return v4;
}

uint64_t sub_100F856F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v19[6] = a1;
  v2 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - v5;
  v7 = type metadata accessor for Table();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177B410);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v3 + 8))(v6, v2);
  v19[3] = v7;
  v19[4] = &protocol witness table for Table;
  v13 = sub_1000280DC(v19);
  (*(v8 + 16))(v13, v11, v7);
  if (!sub_1002182F4())
  {
    sub_10020223C();
    swift_allocError();
    *v15 = 2;
    *(v15 + 4) = 1;
    swift_willThrow();
    (*(v8 + 8))(v11, v7);
    return sub_100007BAC(v19);
  }

  v14 = v18[1];
  Connection.prepare(_:)();
  if (v14)
  {
    (*(v8 + 8))(v11, v7);

    return sub_100007BAC(v19);
  }

  sub_100007BAC(v19);

  v17 = dispatch thunk of _AnySequenceBox._makeIterator()();

  v18[4] = v17;
  v18[5] = sub_100F86728;
  v18[6] = 0;
  sub_10061E644(v18[0]);

  return (*(v8 + 8))(v11, v7);
}

void *sub_100F85ABC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24[0] = a5;
  v30 = a2;
  v25 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v25);
  v10 = v24 - v9;
  v11 = type metadata accessor for Table();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v16, a4);
  v26 = MACAddress.data.getter();
  v27 = v17;
  sub_100F875B8();
  == infix<A>(_:_:)();
  sub_100016590(v26, v27);
  QueryType.filter(_:)();
  (*(v7 + 8))(v10, v25);
  v28 = v11;
  v29 = &protocol witness table for Table;
  v18 = sub_1000280DC(&v26);
  (*(v12 + 16))(v18, v15, v11);
  if (sub_1002182F4())
  {
    v19 = v24[1];
    v20 = Connection.prepare(_:)();
    if (!v19)
    {
      v22 = v20;
      (*(v12 + 8))(v15, v11);

      sub_1000BC4D4(&unk_1016C1800, &qword_1013F51C8);
      v11 = swift_allocObject();
      v11[2] = v22;
      v11[3] = sub_100F86728;
      v11[4] = 0;
      sub_100007BAC(&v26);
      return v11;
    }

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();
    (*(v12 + 8))(v15, v11);
  }

  sub_100007BAC(&v26);
  return v11;
}

uint64_t sub_100F85E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v51 = a3;
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v41[1] = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Setter();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v49);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Insert();
  v46 = *(v48 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v48);
  v44 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v13, qword_10177B410);
  type metadata accessor for UUID();
  v45 = v10;
  <- infix<A>(_:_:)();
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v14 = *(v7 + 72);
  v47 = v7;
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1013B0DB0;
  v43 = v16;
  if (qword_1016949A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v17, qword_10177B428);
  v18 = type metadata accessor for StandaloneBeacon();
  v19 = a2 + v18[5];
  v52 = MACAddress.data.getter();
  v53 = v20;
  <- infix<A>(_:_:)();
  sub_100016590(v52, v53);
  if (qword_1016949B0 != -1)
  {
    swift_once();
  }

  v42 = v17;
  sub_1000076D4(v17, qword_10177B440);
  v21 = a2 + v18[6];
  v52 = MACAddress.data.getter();
  v53 = v22;
  <- infix<A>(_:_:)();
  sub_100016590(v52, v53);
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v23, qword_10177B458);
  v24 = (a2 + v18[7]);
  v25 = v24[1];
  v52 = *v24;
  v53 = v25;

  <- infix<A>(_:_:)();

  if (qword_1016949C0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v26, qword_10177B470);
  v27 = v18[8];
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  if (qword_1016949C8 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v28, qword_10177B488);
  v29 = a2 + v18[9];
  v30 = sub_100313A28(*v29, *(v29 + 8));
  if (v30 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v30 <= 0x7FFFFFFF)
  {
    LODWORD(v52) = v30;
    sub_10022A60C();
    <- infix<A>(_:_:)();
    if (qword_1016949D0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_16:
  sub_1000076D4(v28, qword_10177B4A0);
  sub_100313B54(*v29, *(v29 + 8));
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  v31 = v52;
  if (BYTE4(v52))
  {
    v31 = 0;
  }

  LODWORD(v52) = v31;
  <- infix<A>(_:_:)();
  if (qword_1016949D8 != -1)
  {
    swift_once();
  }

  v32 = v42;
  sub_1000076D4(v42, qword_10177B4B8);
  v33 = (a2 + v18[10]);
  v34 = v33[3];
  v52 = v33[2];
  v53 = v34;
  sub_100017D5C(v52, v34);
  <- infix<A>(_:_:)();
  sub_100016590(v52, v53);
  if (qword_1016949E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177B4D0);
  v35 = v33[5];
  v52 = v33[4];
  v53 = v35;
  sub_100017D5C(v52, v35);
  <- infix<A>(_:_:)();
  sub_100016590(v52, v53);
  if (qword_1016949E8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v32, qword_10177B4E8);
  v36 = (a2 + v18[11]);
  v37 = v36[1];
  v52 = *v36;
  v53 = v37;
  sub_100017D5C(v52, v37);
  <- infix<A>(_:_:)();
  sub_100016590(v52, v53);
  type metadata accessor for Table();
  v39 = v44;
  v38 = v45;
  QueryType.insert(_:_:)();

  (*(v47 + 8))(v38, v49);
  Connection.run(_:)();
  return (*(v46 + 8))(v39, v48);
}

uint64_t sub_100F8662C()
{
  v0 = type metadata accessor for Delete();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100F86728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Row();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return sub_100F867F4(v7, a2);
}

uint64_t sub_100F867F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v70[1] = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v73 = (v70 - v8);
  v9 = __chkstk_darwin(v7);
  v72 = (v70 - v10);
  __chkstk_darwin(v9);
  v12 = v70 - v11;
  v13 = type metadata accessor for MACAddress();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v79 = v70 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v70 - v22;
  __chkstk_darwin(v21);
  v83 = v70 - v24;
  if (qword_1016949D8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v25, qword_10177B4B8);
  Row.subscript.getter();
  sub_1004970DC(v85, v86, v87);
  v26 = *(&v87[0] + 1);
  if (*(&v87[0] + 1) >> 60 == 15)
  {
    goto LABEL_57;
  }

  v77 = *&v87[0];
  if (qword_1016949E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v25, qword_10177B4D0);
  Row.subscript.getter();
  sub_1004A4740(v85, v86);
  if (*(&v87[0] + 1) >> 60 == 15)
  {
    goto LABEL_58;
  }

  v71 = v18;
  v81 = v14;
  v74 = v87[0];
  if (qword_1016949C8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v27, qword_10177B488);
  sub_10022A60C();
  Row.subscript.getter();
  v76 = SLODWORD(v87[0]);
  if (qword_1016949D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v27, qword_10177B4A0);
  Row.subscript.getter();
  v75 = SLODWORD(v87[0]);
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v28, qword_10177B410);
  type metadata accessor for UUID();
  Row.subscript.getter();
  v29 = v81;
  if (qword_1016949A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v25, qword_10177B428);
  Row.subscript.getter();
  v31 = *(&v87[0] + 1);
  v30 = *&v87[0];
  v32 = *(&v87[0] + 1) >> 62;
  v80 = v13;
  v82 = v25;
  v78 = v26;
  if ((*(&v87[0] + 1) >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_26;
    }

    v34 = *(*&v87[0] + 16);
    v33 = *(*&v87[0] + 24);
    v35 = __OFSUB__(v33, v34);
    v36 = v33 - v34;
    if (!v35)
    {
      if (v36 == 6)
      {
        goto LABEL_22;
      }

LABEL_26:
      MACAddress.init(dataRepresentation:)();
      v12 = v23;
      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:

    __break(1u);
LABEL_60:
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_61;
  }

  if (v32)
  {
    if (!__OFSUB__(DWORD1(v87[0]), v87[0]))
    {
      if (DWORD1(v87[0]) - LODWORD(v87[0]) == 6)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    goto LABEL_54;
  }

  if (BYTE14(v87[0]) != 6)
  {
    goto LABEL_26;
  }

LABEL_22:
  sub_100017D5C(*&v87[0], *(&v87[0] + 1));
  MACAddress.init(data:type:)();
  if ((*(v29 + 48))(v12, 1, v13) == 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_100016590(v30, v31);
LABEL_27:
  v37 = *(v29 + 32);
  v38 = v83;
  v37(v83, v12, v13);
  v39 = type metadata accessor for StandaloneBeacon();
  v40 = v84 + v39[5];
  v73 = *(v29 + 16);
  v73(v40, v38, v13);
  if (qword_1016949B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v82, qword_10177B440);
  Row.subscript.getter();
  v42 = *(&v87[0] + 1);
  v41 = *&v87[0];
  v43 = *(&v87[0] + 1) >> 62;
  if ((*(&v87[0] + 1) >> 62) > 1)
  {
    if (v43 != 2)
    {
      goto LABEL_40;
    }

    v45 = *(*&v87[0] + 16);
    v44 = *(*&v87[0] + 24);
    v35 = __OFSUB__(v44, v45);
    v46 = v44 - v45;
    if (!v35)
    {
      if (v46 == 6)
      {
        goto LABEL_36;
      }

LABEL_40:
      v72 = v37;
      v49 = v71;
      MACAddress.init(dataRepresentation:)();
      v48 = v49;
      v37 = v72;
      goto LABEL_41;
    }

    goto LABEL_55;
  }

  if (v43)
  {
    if (!__OFSUB__(DWORD1(v87[0]), v87[0]))
    {
      if (DWORD1(v87[0]) - LODWORD(v87[0]) == 6)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    goto LABEL_56;
  }

  if (BYTE14(v87[0]) != 6)
  {
    goto LABEL_40;
  }

LABEL_36:
  sub_100017D5C(*&v87[0], *(&v87[0] + 1));
  v47 = v72;
  MACAddress.init(data:type:)();
  if ((*(v29 + 48))(v47, 1, v13) == 1)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_100016590(v41, v42);
  v48 = v72;
LABEL_41:
  v50 = v79;
  v37(v79, v48, v13);
  v73(v84 + v39[6], v50, v13);
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v51 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v51, qword_10177B458);
  Row.subscript.getter();
  v52 = *(&v87[0] + 1);
  v53 = HIBYTE(*(&v87[0] + 1)) & 0xFLL;
  if ((*(&v87[0] + 1) & 0x2000000000000000) == 0)
  {
    v53 = *&v87[0] & 0xFFFFFFFFFFFFLL;
  }

  v54 = v82;
  v55 = v78;
  if (!v53)
  {
    goto LABEL_59;
  }

  v56 = (v84 + v39[7]);
  *v56 = *&v87[0];
  v56[1] = v52;
  if (qword_1016949C0 != -1)
  {
    swift_once();
  }

  v57 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v57, qword_10177B470);
  v58 = v39[8];
  type metadata accessor for Date();
  Row.subscript.getter();
  v59 = sub_100314604(v76, v75);
  if (v60 >> 60 == 15)
  {
    goto LABEL_60;
  }

  v61 = (v84 + v39[9]);
  *v61 = v59;
  v61[1] = v60;
  v62 = v77;
  sub_100017D5C(v77, v55);
  sub_10002EA98(57, v62, v55, &v85);
  sub_100496F68(v85, v86, v87);
  v63 = *(&v87[0] + 1);
  if (*(&v87[0] + 1) >> 60 == 15)
  {
LABEL_63:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v64 = (v84 + v39[10]);
  *v64 = *&v87[0];
  v64[1] = v63;
  v64[2] = v62;
  v64[3] = v55;
  v65 = *(&v74 + 1);
  v64[4] = v74;
  v64[5] = v65;
  if (qword_1016949E8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v54, qword_10177B4E8);
  Row.subscript.getter();
  v66 = type metadata accessor for Row();
  (*(*(v66 - 8) + 8))(a1, v66);
  v67 = *(v29 + 8);
  v68 = v80;
  v67(v50, v80);
  result = (v67)(v83, v68);
  *(v84 + v39[11]) = v87[0];
  return result;
}

unint64_t sub_100F875B8()
{
  result = qword_101699DC8;
  if (!qword_101699DC8)
  {
    type metadata accessor for Blob();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DC8);
  }

  return result;
}

uint64_t sub_100F87610()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C1810);
  v1 = sub_1000076D4(v0, qword_1016C1810);
  if (qword_1016950F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_1016C1828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100F876D8(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  *(v3 + 40) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100F877F8, 0, 0);
}

uint64_t sub_100F877F8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  swift_defaultActor_initialize();
  *(v7 + 112) = _swiftEmptyDictionarySingleton;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v0[2] = _swiftEmptyArrayStorage;
  sub_100F8A0F8(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v7 + 136) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v7 + 144) = 0;
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  LODWORD(v8) = [v8 authorizationStatusForBundlePath:v9];

  *(v7 + 144) = v8;
  v10 = [objc_allocWithZone(type metadata accessor for LocationManagerDelegateTrampoline()) init];
  *(v7 + 128) = v10;
  v11 = *(v7 + 136);
  v12 = objc_allocWithZone(CLLocationManager);
  v13 = v10;
  v14 = v11;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v12 initWithEffectiveBundlePath:v15 delegate:v13 onQueue:v14];

  if (v16)
  {
    v18 = v0[4];
    *(v18 + 120) = v16;
    v17 = sub_100F87A80;
    v19 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100F87A80()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 24);
    [*(v1 + 120) setDesiredAccuracy:v2];
    [*(v1 + 120) setDistanceFilter:v2 * 0.5];
  }

  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(*(v0 + 32) + 128);
  swift_weakAssign();

  v7 = *(v0 + 8);
  v8 = *(v0 + 32);

  return v7(v8);
}

uint64_t sub_100F87B58()
{
  v1[3] = v0;
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  v1[21] = v11;
  v12 = *(v11 - 8);
  v1[22] = v12;
  v13 = *(v12 + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100F87D8C, v0, 0);
}

uint64_t sub_100F87D8C()
{
  v73 = v0;
  v1 = static SystemInfo.underTest.getter();
  v2 = v0[23];
  v3 = v0[20];
  if (v1)
  {
    v5 = v0[18];
    v4 = v0[19];
    v7 = v0[16];
    v6 = v0[17];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v64 = v0[12];
    v67 = v0[9];
    v70 = v0[6];

    v11 = v0[1];

    return v11(0);
  }

  else
  {
    v13 = v0[3];
    v14 = v0[23];
    ContinuousClock.init()();
    ContinuousClock.now.getter();
    if ((*(v13 + 144) - 3) > 1)
    {
      v22 = v0[23];
      v23 = v0[14];
      ContinuousClock.now.getter();
      if (qword_1016950F0 != -1)
      {
        swift_once();
      }

      v24 = v0[20];
      v26 = v0[13];
      v25 = v0[14];
      v28 = v0[11];
      v27 = v0[12];
      v29 = v0[10];
      v30 = type metadata accessor for Logger();
      sub_1000076D4(v30, qword_1016C1810);
      v31 = *(v28 + 16);
      v31(v26, v24, v29);
      v31(v27, v25, v29);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      v34 = os_log_type_enabled(v32, v33);
      v36 = v0[12];
      v35 = v0[13];
      v37 = v0[10];
      v38 = v0[11];
      if (v34)
      {
        v71 = v33;
        v39 = v0[5];
        v40 = v0[6];
        v65 = v0[4];
        v41 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v72 = v68;
        *v41 = 136446210;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_100F8A0F8(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
        v63 = static Duration.description<A>(_:_:units:)();
        v43 = v42;
        (*(v39 + 8))(v40, v65);
        v44 = *(v38 + 8);
        v44(v36, v37);
        v44(v35, v37);
        v45 = sub_1000136BC(v63, v43, &v72);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v32, v71, "No location (unauthorized) in: %{public}s", v41, 0xCu);
        sub_100007BAC(v68);
      }

      else
      {

        v44 = *(v38 + 8);
        v44(v36, v37);
        v44(v35, v37);
      }

      v47 = v0[22];
      v46 = v0[23];
      v49 = v0[20];
      v48 = v0[21];
      v50 = v0[14];
      v51 = v0[10];
      sub_100F8A09C();
      swift_allocError();
      swift_willThrow();
      v44(v50, v51);
      v44(v49, v51);
      (*(v47 + 8))(v46, v48);
      v52 = v0[23];
      v54 = v0[19];
      v53 = v0[20];
      v56 = v0[17];
      v55 = v0[18];
      v58 = v0[15];
      v57 = v0[16];
      v60 = v0[13];
      v59 = v0[14];
      v61 = v0[12];
      v66 = v0[9];
      v69 = v0[6];

      v62 = v0[1];

      return v62();
    }

    else
    {
      v16 = v0[3];
      v17 = sub_100F8A0F8(&unk_1016C1980, v15, type metadata accessor for OneShotLocationWrapper);
      v18 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v19 = swift_task_alloc();
      v0[24] = v19;
      v20 = sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
      *v19 = v0;
      v19[1] = sub_100F88360;
      v21 = v0[3];

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v16, v17, 0xD000000000000011, 0x8000000101374D90, sub_100F8A0F0, v21, v20);
    }
  }
}

uint64_t sub_100F88360()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100F88C80;
  }

  else
  {
    v6 = sub_100F8848C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F8848C()
{
  v105 = v0;
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[2];
  ContinuousClock.now.getter();
  v103 = v3;
  if (v3)
  {
    v4 = qword_1016950F0;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v7 = v0[19];
    v6 = v0[20];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[10];
    v11 = v0[11];
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_1016C1810);
    v13 = *(v11 + 16);
    v13(v8, v6, v10);
    v13(v9, v7, v10);
    v14 = v5;
    v15 = Logger.logObject.getter();
    LOBYTE(v6) = static os_log_type_t.default.getter();

    v95 = v6;
    v16 = os_log_type_enabled(v15, v6);
    v17 = v0[22];
    v18 = v0[23];
    v20 = v0[20];
    v19 = v0[21];
    v21 = v0[19];
    v22 = v0[17];
    v97 = v22;
    v100 = v0[18];
    v23 = v0[10];
    v24 = v0[11];
    if (v16)
    {
      log = v15;
      v91 = v0[22];
      v93 = v0[23];
      v25 = v0[8];
      v26 = v0[9];
      v27 = v0[7];
      v80 = v0[6];
      v82 = v0[5];
      v83 = v0[4];
      v89 = v0[21];
      v28 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v28 = 134218498;
      [v14 horizontalAccuracy];
      *(v28 + 4) = v29;
      *(v28 + 12) = 2082;
      v85 = v20;
      v30 = [v14 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100F8A0F8(&qword_1016969A0, 255, &type metadata accessor for Date);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v21;
      v33 = v32;
      (*(v25 + 8))(v26, v27);
      v34 = sub_1000136BC(v31, v33, &v104);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2082;
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_100F8A0F8(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
      v35 = static Duration.description<A>(_:_:units:)();
      v37 = v36;
      (*(v82 + 8))(v80, v83);
      v38 = *(v24 + 8);
      v38(v97, v23);
      v38(v100, v23);
      v39 = sub_1000136BC(v35, v37, &v104);

      *(v28 + 24) = v39;
      _os_log_impl(&_mh_execute_header, log, v95, "Obtained %fm / %{public}s location in: %{public}s", v28, 0x20u);
      swift_arrayDestroy();

      v38(v81, v23);
      v38(v85, v23);
      (v91[1].isa)(v93, v89);
    }

    else
    {

      v66 = *(v24 + 8);
      v66(v97, v23);
      v66(v100, v23);
      v66(v21, v23);
      v66(v20, v23);
      (*(v17 + 8))(v18, v19);
    }
  }

  else
  {
    if (qword_1016950F0 != -1)
    {
      swift_once();
    }

    v40 = v0[19];
    v41 = v0[20];
    v43 = v0[15];
    v42 = v0[16];
    v44 = v0[10];
    v45 = v0[11];
    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_1016C1810);
    v47 = *(v45 + 16);
    v47(v42, v41, v44);
    v47(v43, v40, v44);
    v48 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v48, v98);
    v50 = v0[22];
    v51 = v0[23];
    v53 = v0[20];
    v52 = v0[21];
    v101 = v0[19];
    v54 = v0[15];
    v55 = v0[16];
    v57 = v0[10];
    v56 = v0[11];
    if (v49)
    {
      v92 = v48;
      v96 = v0[22];
      v59 = v0[5];
      v58 = v0[6];
      v84 = v0[4];
      v94 = v0[20];
      v60 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v104 = v90;
      *v60 = 136446210;
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_100F8A0F8(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
      v86 = v52;
      loga = v51;
      v61 = static Duration.description<A>(_:_:units:)();
      v63 = v62;
      (*(v59 + 8))(v58, v84);
      v64 = *(v56 + 8);
      v64(v54, v57);
      v64(v55, v57);
      v65 = sub_1000136BC(v61, v63, &v104);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v92, v98, "No location in: %{public}s", v60, 0xCu);
      sub_100007BAC(v90);

      v64(v101, v57);
      v64(v94, v57);
      (*(v96 + 8))(loga, v86);
    }

    else
    {

      v67 = *(v56 + 8);
      v67(v54, v57);
      v67(v55, v57);
      v67(v101, v57);
      v67(v53, v57);
      (*(v50 + 8))(v51, v52);
    }
  }

  v68 = v0[23];
  v69 = v0[19];
  v70 = v0[20];
  v72 = v0[17];
  v71 = v0[18];
  v74 = v0[15];
  v73 = v0[16];
  v76 = v0[13];
  v75 = v0[14];
  v77 = v0[12];
  v99 = v0[9];
  v102 = v0[6];

  v78 = v0[1];

  return v78(v103);
}

uint64_t sub_100F88C80()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[11] + 8))(v0[20], v0[10]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  v16 = v0[9];
  v17 = v0[6];
  v18 = v0[25];

  v14 = v0[1];

  return v14();
}

id sub_100F88DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101699880, &qword_1013F52E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v12 = *(*(a2 + 112) + 16);
  UUID.init()();
  v13 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, a1, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  swift_beginAccess();
  sub_1001E1A5C(v7, v11);
  result = swift_endAccess();
  if (!v12)
  {
    return [*(a2 + 120) requestLocation];
  }

  return result;
}

uint64_t sub_100F88F70()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100F88FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014744;

  return sub_100F89080(a5);
}

uint64_t sub_100F89080(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100F8914C, v1, 0);
}

uint64_t sub_100F8914C()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
LABEL_23:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v20 = v0[6];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[6] + 32);
  }

  v4 = v3;
  v5 = v3;
  v6 = sub_1010E1130();

  if (v6)
  {

    goto LABEL_8;
  }

LABEL_9:
  v7 = v0[9];
  v1 = v0[7];
  swift_beginAccess();
  v8 = *(v1 + 112);
  *(v1 + 112) = _swiftEmptyDictionarySingleton;
  v9 = -1;
  v10 = -1 << *(v8 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v8 + 64);
  v12 = (63 - v10) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_17:
      v1 = v0[10];
      v15 = v0[8];
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v7 + 16))(v1, *(v8 + 56) + *(v7 + 72) * (v16 | (v14 << 6)), v15);
      v0[5] = v4;
      v17 = v4;
      CheckedContinuation.resume(returning:)();
      (*(v7 + 8))(v1, v15);
      if (!v11)
      {
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
LABEL_13:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_17;
    }
  }

  v18 = v0[10];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F894FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014650;

  return sub_100F89598(a5);
}

uint64_t sub_100F89598(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100F89664, v1, 0);
}

uint64_t sub_100F89664()
{
  v1 = v0[7];
  swift_beginAccess();
  v24 = *(v1 + 112);
  *(v1 + 112) = _swiftEmptyDictionarySingleton;
  if (qword_1016950F0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016C1810);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "CLLocationManager error: %{public}@", v7, 0xCu);
    sub_100288C6C(v8);
  }

  v10 = v0[9];

  v11 = -1;
  v12 = -1 << *(v24 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v24 + 64);
  v14 = (63 - v12) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v17 = v0[10];
      v18 = v0[8];
      v19 = v0[6];
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v10 + 16))(v17, *(v24 + 56) + *(v10 + 72) * (v20 | (v16 << 6)), v18);
      v0[5] = v19;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
      (*(v10 + 8))(v17, v18);
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v24 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  v21 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100F89A84()
{
  v1 = *(v0 + 16);
  *(v1 + 144) = [*(v1 + 120) authorizationStatus];
  if (qword_1016950F0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016C1810);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = *(v1 + 144);

    _os_log_impl(&_mh_execute_header, v4, v5, "Authorization status: %d", v8, 8u);
  }

  else
  {
    v9 = *(v0 + 16);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100F89D8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100F89A64(a1, v4, v5, v6);
}

uint64_t sub_100F89E40()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C1828);
  sub_1000076D4(v0, qword_1016C1828);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100F89EC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100F894FC(a1, v4, v5, v7, v6);
}

uint64_t sub_100F89F84(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[5]);

  return _swift_deallocObject(v1, 48);
}

uint64_t sub_100F89FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100F88FE4(a1, v4, v5, v7, v6);
}

unint64_t sub_100F8A09C()
{
  result = qword_1016C1970;
  if (!qword_1016C1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1970);
  }

  return result;
}

uint64_t sub_100F8A0F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100F8A154()
{
  result = qword_1016C1990;
  if (!qword_1016C1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1990);
  }

  return result;
}

void sub_100F8A1C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100F8A2C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v19 - v8;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  v19[1] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD000000000000023;
  *(v10 + 80) = 0x80000001013752F0;
  os_log(_:dso:log:_:_:)();

  v15 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;

  sub_10025EDD4(0, 0, v9, &unk_1013F5498, v17);
}

uint64_t sub_100F8A580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000001BLL;
  *(v6 + 80) = 0x80000001013752D0;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *v11;

  sub_10069B0D0(sub_100F98DE4, v12);
}

uint64_t sub_100F8A7EC(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = a1;
  a5(v12, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100F8A914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000017;
  *(v6 + 80) = 0x80000001013752B0;
  os_log(_:dso:log:_:_:)();

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138C0D0;
  v12 = SPBeaconTypeSelfBeaconing;
  *(inited + 32) = SPBeaconTypeSelfBeaconing;
  v13 = SPBeaconTypeDurian;
  v14 = SPBeaconTypeAccessory;
  *(inited + 40) = SPBeaconTypeDurian;
  *(inited + 48) = v14;
  v15 = SPBeaconTypeHele;
  v16 = SPBeaconTypeLocalFindable;
  *(inited + 56) = SPBeaconTypeHele;
  *(inited + 64) = v16;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = sub_100B11268(inited);
  swift_setDeallocating();
  type metadata accessor for SPBeaconType(0);
  swift_arrayDestroy();
  v23 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10000AC0C(v22, 0, 0, a1, a2);
}

uint64_t sub_100F8AB94(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD00000000000003ALL;
  *(v9 + 80) = 0x8000000101375270;
  os_log(_:dso:log:_:_:)();

  v14 = *sub_1000035D0((v5 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v5 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_10000AC0C(a1, a2 & 1, a3 & 1, a4, a5);
}

uint64_t sub_100F8AD24(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD00000000000001ELL;
  *(v5 + 80) = 0x8000000101375250;
  os_log(_:dso:log:_:_:)();

  v10 = *sub_1000035D0((v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006AFA18(a1, a2);
}

uint64_t sub_100F8AED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000026;
  *(v7 + 80) = 0x8000000101375220;
  os_log(_:dso:log:_:_:)();

  v12 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_100697FA8(a1, a2, a3);
}

uint64_t sub_100F8B55C()
{
  v1 = *(*sub_1000035D0((v0 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v0 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24)) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);
  type metadata accessor for Transaction();
  result = static Transaction.named<A>(_:with:)();
  if (*(v1 + 120))
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100F8B7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v21 - v9;
  v21[3] = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  ObjectType = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 64) = v15;
  *(v11 + 72) = 0xD000000000000037;
  *(v11 + 80) = 0x80000001013751C0;
  os_log(_:dso:log:_:_:)();

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  (*(v4 + 16))(v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v3);
  v17 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v24;
  *(v18 + 4) = v23;
  *(v18 + 5) = v19;
  (*(v4 + 32))(&v18[v17], v6, v3);

  sub_10025EDD4(0, 0, v10, &unk_1013F5488, v18);
}

uint64_t sub_100F8BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD00000000000001CLL;
  *(v7 + 80) = 0x800000010135CBE0;
  os_log(_:dso:log:_:_:)();

  v12 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006B3738(a1, a2, a3);
}

void sub_100F8BD10(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1000BC4D4(&unk_1016C1A90, &unk_1013F54D0);
  sub_100F989D0(&qword_1016967B0, &type metadata accessor for UUID);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100F8BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000029;
  *(v8 + 80) = 0x800000010135CAD0;
  os_log(_:dso:log:_:_:)();

  v13 = *sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006B2B64(a1, a2, a3, a4);
}

uint64_t sub_100F8C2D8(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD000000000000017;
  *(v5 + 80) = 0x800000010135CA10;
  os_log(_:dso:log:_:_:)();

  v10 = *sub_1000035D0((v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006C371C(a1, a2);
}

uint64_t sub_100F8C4D4(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, void (*a6)(char *, id, id, void *))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v15);
  v16 = a4;
  v17 = a1;
  a6(v14, v16, v17, v15);
  _Block_release(v15);
  _Block_release(v15);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100F8C750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v74 = a4;
  v75 = a5;
  v78 = a3;
  v79 = a2;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v81 = &v62 - v11;
  v76 = type metadata accessor for UUID();
  v80 = *(v76 - 8);
  v12 = *(v80 + 64);
  v13 = __chkstk_darwin(v76);
  v73 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v14;
  __chkstk_darwin(v13);
  v68 = &v62 - v15;
  v82 = type metadata accessor for Date();
  v72 = *(v82 - 8);
  v16 = *(v72 + 64);
  v17 = __chkstk_darwin(v82);
  v71 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v18;
  __chkstk_darwin(v17);
  v67 = &v62 - v19;
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  v66 = xmmword_10138BBE0;
  *(v20 + 16) = xmmword_10138BBE0;
  v83[0] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v21 = String.init<A>(describing:)();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  v24 = sub_100008C00();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v24;
  *(v20 + 64) = v24;
  *(v20 + 72) = 0xD000000000000038;
  *(v20 + 80) = 0x8000000101375180;
  os_log(_:dso:log:_:_:)();

  v25 = sub_1000035D0((v6 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v6 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v77 = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = *v25;
    static os_log_type_t.info.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v66;
    v28 = *v26;
    *&v66 = v26;
    v83[0] = v28;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v29 = String.init<A>(describing:)();
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v24;
    *(v27 + 32) = v29;
    *(v27 + 40) = v30;
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v24;
    *(v27 + 72) = 0xD000000000000038;
    *(v27 + 80) = 0x8000000101375180;
    os_log(_:dso:log:_:_:)();

    if (qword_101694B80 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v31 = type metadata accessor for Logger();
  sub_1000076D4(v31, qword_10177B7F8);
  v32 = v72;
  v33 = v67;
  v34 = v82;
  v65 = *(v72 + 16);
  v65(v67, v79, v82);
  v35 = v80;
  v36 = v68;
  v37 = v76;
  v64 = *(v80 + 16);
  v64(v68, v78, v76);
  v38 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v38, v63);
  v40 = v77;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v83[0] = v62;
    *v41 = 134219011;
    *(v41 + 4) = a6;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v40;
    *(v41 + 22) = 2080;
    sub_100F989D0(&qword_1016969A0, &type metadata accessor for Date);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v32 + 8))(v33, v82);
    v45 = sub_1000136BC(v42, v44, v83);
    v37 = v76;

    *(v41 + 24) = v45;
    *(v41 + 32) = 2160;
    *(v41 + 34) = 1752392040;
    *(v41 + 42) = 2081;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v80 + 8))(v36, v37);
    v49 = sub_1000136BC(v46, v48, v83);
    v35 = v80;

    *(v41 + 44) = v49;
    _os_log_impl(&_mh_execute_header, v38, v63, "        setAlignmentUncertainty called: uncertainty: %f, index: %llu, date: %s, beaconUUID: %{private,mask.hash}s", v41, 0x34u);
    swift_arrayDestroy();

    v34 = v82;
  }

  else
  {

    (*(v35 + 8))(v36, v37);
    (*(v32 + 8))(v33, v34);
  }

  v50 = type metadata accessor for TaskPriority();
  (*(*(v50 - 8) + 56))(v81, 1, 1, v50);
  v51 = v73;
  v64(v73, v78, v37);
  v52 = v71;
  v65(v71, v79, v34);
  v53 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v54 = v35;
  v55 = (v70 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (*(v32 + 80) + v55 + 8) & ~*(v32 + 80);
  v57 = (v69 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 2) = 0;
  *(v58 + 3) = 0;
  v59 = v37;
  v60 = v75;
  *(v58 + 4) = v74;
  *(v58 + 5) = v60;
  (*(v54 + 32))(&v58[v53], v51, v59);
  *&v58[v55] = v77;
  (*(v32 + 32))(&v58[v56], v52, v82);
  *&v58[v57] = v66;

  sub_10025EDD4(0, 0, v81, &unk_1013F5480, v58);
}

uint64_t sub_100F8D1EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void (*a6)(uint64_t, char *, id, void *))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v15);
  v16 = a1;
  a6(a3, v14, v16, v15);
  _Block_release(v15);
  _Block_release(v15);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100F8D444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000025;
  *(v8 + 80) = 0x8000000101375150;
  os_log(_:dso:log:_:_:)();

  sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  type metadata accessor for BeaconManagerService();

  sub_1006DC930(a1, sub_100F98B04, v13);
}

void sub_100F8D638(uint64_t a1, void (*a2)(id))
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v4;
  v25 = *(a1 + 64);
  v21 = *a1;
  v22 = v3;
  if (*(a1 + 8) >> 60 == 11)
  {
    v5 = 0;
  }

  else
  {
    v17 = *(a1 + 64);
    v14 = *(a1 + 56);
    v15 = *(a1 + 60);
    v6 = *(a1 + 48);
    v13 = *(a1 + 52);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 24);
    v10 = *(a1 + 18);
    v11 = *(a1 + 16);
    v12 = objc_allocWithZone(SPTagUserStats);
    v19[2] = v23;
    v19[3] = v24;
    v20 = v25;
    v19[0] = v21;
    v19[1] = v22;
    sub_100766AC0(v19, v18);
    v5 = [v12 init];
    [v5 setOverflowFlag:v11];
    [v5 setCrashCount:v10];
    [v5 setMultiTime:v9];
    [v5 setNearOwnerTime:v7];
    [v5 setWildTime:v8];
    [v5 setOwnerPlaySoundCount:v6];
    [v5 setOwnerPlaySoundTime:v13];
    [v5 setRangingCount:v14];
    [v5 setRangingTime:v15];
    [v5 setVersion:v17];

    sub_10000B3A8(a1, &qword_1016C1A48, &unk_1013F5470);
  }

  a2(v5);
}

uint64_t sub_100F8D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD00000000000002BLL;
  *(v7 + 80) = 0x8000000101375120;
  os_log(_:dso:log:_:_:)();

  v12 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_10069C89C(a1, a2, a3);
}