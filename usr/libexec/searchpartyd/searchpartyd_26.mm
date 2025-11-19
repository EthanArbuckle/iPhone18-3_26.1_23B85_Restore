uint64_t sub_1002BD4EC()
{
  v1 = v0[174];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[202] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[203] = v4;
  *v3 = v0;
  v3[1] = sub_1002BD5D0;
  v5 = v0[174];

  return unsafeBlocking<A>(context:_:)(v0 + 68, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1002BD5D0()
{
  v1 = *(*v0 + 1616);
  v2 = *(*v0 + 1392);
  v4 = *v0;

  return _swift_task_switch(sub_1002BD6E8, v2, 0);
}

uint64_t sub_1002BD6E8()
{
  v1 = v0[81];
  v0[204] = v0[68];
  return _swift_task_switch(sub_1002BD70C, v1, 0);
}

uint64_t sub_1002BD70C()
{
  v1 = v0[204];
  v2 = v0[185];
  v3 = v0[184];
  v4 = swift_allocObject();
  v0[205] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  sub_10002E98C(v3, v2);
  v5 = async function pointer to unsafeBlocking<A>(_:)[1];

  v6 = swift_task_alloc();
  v0[206] = v6;
  v7 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  *v6 = v0;
  v6[1] = sub_1002BD824;

  return unsafeBlocking<A>(_:)(v0 + 67, sub_1002DB658, v4, v7);
}

uint64_t sub_1002BD824()
{
  v1 = *(*v0 + 1648);
  v2 = *(*v0 + 1640);
  v3 = *(*v0 + 648);
  v5 = *v0;

  return _swift_task_switch(sub_1002BD950, v3, 0);
}

uint64_t sub_1002BD950()
{
  v689 = v0;
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v5 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 536);
  *(swift_task_alloc() + 16) = v2;
  sub_1012BC12C(sub_1002DB664, v7, v3);
  *(v0 + 1656) = v1;

  sub_1000D2A70(v3, v4, &unk_1016C1120, &qword_1013C49D0);
  v8 = (*(v5 + 48))(v4, 1, v6);
  v9 = *(v0 + 984);
  if (v8 == 1)
  {
    v680 = v1;
    sub_10000B3A8(v9, &unk_1016C1120, &qword_1013C49D0);
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 1456);
    v11 = *(v0 + 1448);
    v12 = *(v0 + 1336);
    v13 = *(v0 + 1312);
    v14 = *(v0 + 1272);
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177A818);
    v11(v13, v12, v14);
    swift_bridgeObjectRetain_n();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1312);
    v20 = *(v0 + 1280);
    v21 = *(v0 + 1272);
    if (v18)
    {
      v671 = *(v0 + 920);
      v22 = swift_slowAlloc();
      v687 = swift_slowAlloc();
      *v22 = 141558787;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v20 + 8))(v19, v21);
      v26 = sub_1000136BC(v23, v25, &v687);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      v27 = Array.description.getter();
      v29 = v28;

      v30 = sub_1000136BC(v27, v29, &v687);

      *(v22 + 24) = v30;
      *(v22 + 32) = 2048;
      v31 = *(v7 + 16);

      *(v22 + 34) = v31;

      _os_log_impl(&_mh_execute_header, v16, v17, "Could not reconcile beacon: %{private,mask.hash}s,found beacons: %s, found count: %ld.", v22, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      swift_bridgeObjectRelease_n();

      (*(v20 + 8))(v19, v21);
    }

    goto LABEL_11;
  }

  v32 = *(v0 + 960);

  sub_1002DB7C8(v9, v32, type metadata accessor for BeaconKeyManager.IndexInformation);
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 960);
  v34 = *(v0 + 952);
  v35 = *(v0 + 944);
  v36 = type metadata accessor for Logger();
  *(v0 + 1664) = sub_1000076D4(v36, qword_10177A818);
  sub_1002DB760(v33, v34, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_1002DB760(v33, v35, type metadata accessor for BeaconKeyManager.IndexInformation);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v681 = v1;
    v39 = *(v0 + 1272);
    v40 = *(v0 + 952);
    v41 = *(v0 + 944);
    v676 = *(v0 + 920);
    v42 = swift_slowAlloc();
    v687 = swift_slowAlloc();
    *v42 = 141558531;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_1002DBBF0(v40, type metadata accessor for BeaconKeyManager.IndexInformation);
    v46 = sub_1000136BC(v43, v45, &v687);

    *(v42 + 14) = v46;
    *(v42 + 22) = 2082;
    v47 = (v41 + *(v676 + 20));
    v48 = v47[4];
    sub_1000035D0(v47, v47[3]);
    v49 = *(v48 + 16);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    sub_1002DBBF0(v41, type metadata accessor for BeaconKeyManager.IndexInformation);
    v53 = sub_1000136BC(v50, v52, &v687);
    v1 = v681;

    *(v42 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v37, v38, "Reconciled beacon: %{private,mask.hash}s, index: %{public}s.", v42, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v85 = *(v0 + 952);
    v86 = *(v0 + 944);

    sub_1002DBBF0(v85, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_1002DBBF0(v86, type metadata accessor for BeaconKeyManager.IndexInformation);
  }

  v87 = *(v0 + 960);
  v88 = *(*(v0 + 920) + 20);
  *(v0 + 1780) = v88;
  v90 = *(v87 + v88 + 24);
  v89 = *(v87 + v88 + 32);
  sub_1000035D0((v87 + v88), v90);
  if (sub_10002BD40(v90, v89))
  {

LABEL_29:
    v92 = *(v0 + 1392);
    v93 = sub_1002C1B94;
    goto LABEL_30;
  }

  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v91)
  {
    goto LABEL_29;
  }

  *(v0 + 1728) = v1;
  v390 = (*(v0 + 960) + *(v0 + 1780));
  v392 = v390[3];
  v391 = v390[4];
  sub_1000035D0(v390, v392);
  v393 = sub_10002BD40(v392, v391);
  v394 = (*(v0 + 960) + *(v0 + 1780));
  if (v393)
  {
    sub_10001F280(v394, v0 + 216);
  }

  else
  {
    v423 = v394[4];
    sub_1000035D0(v394, v394[3]);
    v424 = *(v423 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v425 = *(v0 + 608);
    *(v0 + 240) = &type metadata for PrimaryWildIndex;
    *(v0 + 248) = sub_10022A528();
    *(v0 + 216) = v425;
  }

  sub_1000D2A70(v0 + 216, v0 + 136, &qword_10169C988, &unk_1013B3320);
  if (*(v0 + 160))
  {
    v426 = *(v0 + 1392);
    sub_10000A748((v0 + 136), v0 + 176);
    v93 = sub_1002C99B0;
    v92 = v426;
LABEL_30:
    v94 = 0;

    return _swift_task_switch(v93, v92, v94);
  }

  v680 = v1;
  v433 = *(v0 + 960);
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v433, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v0 + 136, &qword_10169C988, &unk_1013B3320);
LABEL_11:
  v54 = *(v0 + 1336);
  swift_beginAccess();
  v55 = sub_1005CAD18(v54, *(v0 + 520));
  if (v55)
  {
    v56 = v55;
    v57 = *(v0 + 1152);
    v58 = *(v0 + 1136);
    v59 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v57, v58, &qword_10169C970, &qword_101398A18);
    v60 = (v58 + *(v59 + 48));
    v61 = *(v56 + 40);
    Hasher.init(_seed:)();
    sub_100D15128();
    v62 = Hasher._finalize()();
    v63 = -1 << *(v56 + 32);
    v64 = v62 & ~v63;
    if ((*(v56 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
    {
      v65 = ~v63;
      v66 = *v60;
      v67 = *(*(v0 + 808) + 72);
      do
      {
        v68 = *(v0 + 824);
        sub_1002DB760(*(v56 + 48) + v64 * v67, v68, type metadata accessor for RawSearchResult);
        v69 = *(v0 + 824);
        if (*v68 == v66 && (v70 = *(*(v0 + 800) + 20), v71 = static Date.== infix(_:_:)(), v69 = *(v0 + 824), (v71 & 1) != 0) && (v72 = *(v0 + 800), *(v69 + v72[6]) == *&v60[v72[6]]) && *(v69 + v72[7]) == *&v60[v72[7]] && *(v69 + v72[8]) == *&v60[v72[8]])
        {
          v73 = v72[12];
          v74 = *(v0 + 824);
          v75 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v74, type metadata accessor for RawSearchResult);
          if (v75)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1002DBBF0(v69, type metadata accessor for RawSearchResult);
        }

        v64 = (v64 + 1) & v65;
      }

      while (((*(v56 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0);
    }

    v76 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v60, v76, type metadata accessor for RawSearchResult);
    v687 = v56;
    sub_100DFE348(v76, v64, isUniquelyReferenced_nonNull_native);
    v56 = v687;
LABEL_24:
    sub_1002DBBF0(v60, type metadata accessor for RawSearchResult);
    v78 = *(v0 + 1456);
    v79 = *(v0 + 1448);
    v80 = *(v0 + 1336);
    v81 = *(v0 + 1328);
    v82 = *(v0 + 1272);
    v672 = *(*(v0 + 1280) + 8);
    (v672)(*(v0 + 1136), v82);
    v79(v81, v80, v82);
    swift_beginAccess();
    v83 = v56;
    v84 = v81;
  }

  else
  {
    v95 = *(v0 + 1456);
    v96 = *(v0 + 1448);
    v97 = *(v0 + 1336);
    v98 = *(v0 + 1328);
    v99 = *(v0 + 1280);
    v100 = *(v0 + 1272);
    v101 = *(v0 + 1152);
    v102 = *(v0 + 1128);
    v673 = *(v0 + 1016);
    v103 = *(v0 + 808);
    swift_endAccess();
    v96(v98, v97, v100);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v104 = *(v103 + 72);
    v105 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_101385D80;
    sub_1000D2A70(v101, v102, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v102 + *(v673 + 48), v106 + v105, type metadata accessor for RawSearchResult);
    v672 = *(v99 + 8);
    (v672)(v102, v100);
    v107 = sub_10112A090(v106);
    swift_setDeallocating();
    sub_1002DBBF0(v106 + v105, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v83 = v107;
    v84 = v98;
  }

  sub_1001DE1B0(v83, v84);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_348;
  }

  while (1)
  {
    v108 = *(v0 + 1456);
    v109 = *(v0 + 1448);
    v110 = *(v0 + 1336);
    v111 = *(v0 + 1304);
    v112 = *(v0 + 1272);
    v113 = *(v0 + 1152);
    v114 = *(v0 + 1120);
    v115 = *(v0 + 1112);
    v666 = *(v0 + 1104);
    v677 = type metadata accessor for Logger();
    sub_1000076D4(v677, qword_10177A818);
    v109(v111, v110, v112);
    sub_1000D2A70(v113, v114, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v113, v115, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v113, v666, &qword_10169C970, &qword_101398A18);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v640 = v117;
      log = v116;
      v118 = *(v0 + 1304);
      v119 = *(v0 + 1272);
      v120 = *(v0 + 1128);
      v648 = *(v0 + 1120);
      v633 = *(v0 + 1104);
      v626 = *(v0 + 1112);
      v630 = *(v0 + 1096);
      v655 = *(v0 + 1016);
      v121 = *(v0 + 848);
      v616 = *(v0 + 840);
      v622 = *(v0 + 856);
      v122 = *(v0 + 1280) + 8;
      v659 = *(v0 + 800);
      v123 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v123 = 141559043;
      *(v123 + 4) = 1752392040;
      *(v123 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v124 = dispatch thunk of CustomStringConvertible.description.getter();
      v126 = v125;
      (v672)(v118, v119);
      v127 = sub_1000136BC(v124, v126, (v0 + 528));

      *(v123 + 14) = v127;
      *(v123 + 22) = 2082;
      sub_1000D2A70(v648, v120, &qword_10169C970, &qword_101398A18);
      v128 = v120 + *(v655 + 48);
      (*(v121 + 16))(v622, v128 + *(v659 + 20), v616);
      sub_1002DBBF0(v128, type metadata accessor for RawSearchResult);
      (v672)(v120, v119);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
      v129 = dispatch thunk of CustomStringConvertible.description.getter();
      v131 = v130;
      (*(v121 + 8))(v622, v616);
      sub_10000B3A8(v648, &qword_10169C970, &qword_101398A18);
      v132 = sub_1000136BC(v129, v131, (v0 + 528));

      *(v123 + 24) = v132;
      *(v123 + 32) = 2082;
      sub_1000D2A70(v626, v120, &qword_10169C970, &qword_101398A18);
      v133 = v120 + *(v655 + 48);
      LOBYTE(v132) = *(v133 + *(v659 + 36));
      sub_1002DBBF0(v133, type metadata accessor for RawSearchResult);
      (v672)(v120, v119);
      v134 = sub_100013454(v132);
      v136 = v135;
      sub_10000B3A8(v626, &qword_10169C970, &qword_101398A18);
      v137 = sub_1000136BC(v134, v136, (v0 + 528));

      *(v123 + 34) = v137;
      *(v123 + 42) = 2048;
      sub_1000D2A70(v633, v630, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v138 = *(v0 + 520);
      if (*(v138 + 16) && (v139 = sub_1000210EC(*(v0 + 1096)), (v140 & 1) != 0))
      {
        v141 = *(*(v138 + 56) + 8 * v139);
        swift_endAccess();
        v142 = *(v141 + 16);
      }

      else
      {
        swift_endAccess();
        v142 = 0;
      }

      v150 = *(v0 + 1632);
      v144 = *(v0 + 1568);
      v151 = *(v0 + 1560);
      v152 = *(v0 + 1272);
      v661 = *(v0 + 1152);
      v153 = *(v0 + 1104);
      v154 = *(v0 + 1096);
      v145 = *(v0 + 992);
      sub_1002DBBF0(v154 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      (v672)(v154, v152);
      sub_10000B3A8(v153, &qword_10169C970, &qword_101398A18);
      *(v123 + 44) = v142;
      _os_log_impl(&_mh_execute_header, log, v640, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v123, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v151, v144);
      sub_10000B3A8(v145, &unk_1016C1120, &qword_1013C49D0);
      v149 = v661;
    }

    else
    {
      v143 = *(v0 + 1632);
      v144 = *(v0 + 1568);
      v145 = *(v0 + 1560);
      v655 = *(v0 + 1272);
      v660 = *(v0 + 1304);
      v667 = *(v0 + 1152);
      v146 = *(v0 + 1120);
      v147 = *(v0 + 1112);
      v148 = *(v0 + 1280) + 8;
      v649 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v145, v144);
      sub_10000B3A8(v147, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v146, &qword_10169C970, &qword_101398A18);
      (v672)(v660, v655);
      sub_10000B3A8(v649, &unk_1016C1120, &qword_1013C49D0);
      v149 = v667;
    }

    sub_10000B3A8(v149, &qword_10169C970, &qword_101398A18);
    v155 = *(v0 + 1552) + 1;
    if (v155 != *(v0 + 1544))
    {
      *(v0 + 1552) = v155;
      v367 = *(v0 + 1536);
      if (v155 >= *(v367 + 16))
      {
LABEL_352:
        __break(1u);
        goto LABEL_353;
      }

      v368 = *(v0 + 1480);
      v369 = v368 >> 62;
      v370 = v367 + 24 * v155;
      v371 = *(v370 + 32);
      *(v0 + 1560) = v371;
      v144 = *(v370 + 40);
      *(v0 + 1568) = v144;
      v372 = *(v370 + 48);
      *(v0 + 1580) = *(v370 + 52);
      *(v0 + 1576) = v372;
      if ((v368 >> 62) > 1)
      {
        if (v369 != 2)
        {
          v145 = 0;
          v373 = 0;
          v375 = 0;
          v374 = 0;
          goto LABEL_254;
        }

        v389 = *(v0 + 1472);
        v373 = *(v389 + 16);
        v145 = *(v389 + 24);
      }

      else
      {
        if (!v369)
        {
          v373 = 0;
          v374 = 0;
          v145 = BYTE6(v368);
          v375 = BYTE6(v368);
          goto LABEL_254;
        }

        v389 = *(v0 + 1472);
        v145 = v389 >> 32;
        v373 = v389;
      }

      sub_10002E98C(v389, v368);
      if (v145 < v373)
      {
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
        goto LABEL_355;
      }

      v368 = *(v0 + 1480);
      v416 = *(v0 + 1472);
      if (v368 >> 62 == 2)
      {
        v374 = *(v416 + 16);
        v375 = *(v416 + 24);
      }

      else
      {
        v375 = v416 >> 32;
        v374 = v416;
      }

LABEL_254:
      if (v375 < v145 || v145 < v374)
      {
        goto LABEL_354;
      }

      if (__OFSUB__(v145, v373))
      {
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
        goto LABEL_364;
      }

      if ((v145 - v373) >= 0x39)
      {
        v145 = v373 + 57;
        if (__OFADD__(v373, 57))
        {
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
          __break(1u);
          goto LABEL_368;
        }

        v418 = v368 >> 62;
        if ((v368 >> 62) > 1)
        {
          if (v418 == 2)
          {
            v422 = *(v0 + 1472);
            v419 = *(v422 + 16);
            v420 = *(v422 + 24);
          }

          else
          {
            v420 = 0;
            v419 = 0;
          }
        }

        else if (v418)
        {
          v419 = *(v0 + 1472);
          v420 = v419 >> 32;
          v419 = v419;
        }

        else
        {
          v419 = 0;
          v420 = BYTE6(v368);
        }

        if (v420 < v145 || v145 < v419)
        {
          goto LABEL_365;
        }

        v435 = 0;
        if (v418 <= 1)
        {
          if (v418)
          {
            v435 = *(v0 + 1472);
          }

LABEL_287:
          if (v145 < v435)
          {
            goto LABEL_356;
          }

LABEL_288:
          v436 = *(v0 + 1472);
          sub_100017D5C(v371, v144);
          sub_100017D5C(v371, v144);
          v437 = Data._Representation.subscript.getter();
          v439 = v438;
          sub_100006654(v436, v368);
          v440 = v439 >> 62;
          if ((v439 >> 62) > 1)
          {
            if (v440 != 2)
            {
              goto LABEL_302;
            }

            v442 = *(v437 + 16);
            v441 = *(v437 + 24);
            v200 = __OFSUB__(v441, v442);
            v443 = v441 - v442;
            if (!v200)
            {
              if (v443 != 57)
              {
                goto LABEL_302;
              }

              goto LABEL_295;
            }

            __break(1u);
          }

          else
          {
            if (!v440)
            {
              if (BYTE6(v439) != 57)
              {
LABEL_302:
                v457 = v437;
                v458 = v439;
LABEL_303:
                sub_100016590(v457, v458);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_295:
              v145 = v680;
              v444 = sub_100A7A194(v437, v439);
              if (v680)
              {
                v144 = v0 + 560;
                static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_298:
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v447 = swift_allocObject();
                  *(v447 + 16) = xmmword_101385D80;
                  *v144 = v145;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v448 = String.init<A>(describing:)();
                  v450 = v449;
                  *(v447 + 56) = &type metadata for String;
                  *(v447 + 64) = sub_100008C00();
                  *(v447 + 32) = v448;
                  *(v447 + 40) = v450;
                  os_log(_:dso:log:_:_:)();

                  sub_1001BAF88();
                  v451 = swift_allocError();
                  *v452 = 0;
                  swift_willThrow();

LABEL_299:
                  v687 = 0;
                  v688 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v453 = v688;
                  *(v0 + 504) = v687;
                  *(v0 + 512) = v453;
                  v454._countAndFlagsBits = 0xD000000000000021;
                  v454._object = 0x800000010134CB30;
                  String.append(_:)(v454);
                  *(v0 + 552) = v451;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  v455 = *(v0 + 504);
                  v456 = *(v0 + 512);
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_368:
                swift_once();
                goto LABEL_298;
              }

              v445 = sub_100A7829C(v444, 0);
              *(v0 + 1584) = v445;
              *(v0 + 1592) = v446;
              v460 = v445;
              v461 = v446;
              v93 = CCECCryptorRelease();
              v462 = v461 >> 62;
              if ((v461 >> 62) > 1)
              {
                if (v462 != 2)
                {
                  v490 = 0;
                  goto LABEL_342;
                }

                v472 = v460[2];
                v471 = v460[3];
                v200 = __OFSUB__(v471, v472);
                v463 = v471 - v472;
                if (v200)
                {
                  __break(1u);
                  v473 = *(v0 + 792);
                  v474 = *(v0 + 712);

                  sub_100016590(v371, v437);

                  sub_100016590(v655, v630);

                  sub_1002DBBF0(v473, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v474, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
                  v475 = *(v0 + 1384);
                  v476 = *(v0 + 1376);
                  v477 = *(v0 + 1368);
                  v478 = *(v0 + 1344);
                  v479 = *(v0 + 1336);
                  v480 = *(v0 + 1328);
                  v481 = *(v0 + 1320);
                  v482 = *(v0 + 1312);
                  v495 = *(v0 + 1304);
                  v497 = *(v0 + 1296);
                  v500 = *(v0 + 1264);
                  v502 = *(v0 + 1256);
                  v505 = *(v0 + 1248);
                  v508 = *(v0 + 1240);
                  v510 = *(v0 + 1232);
                  v512 = *(v0 + 1208);
                  v515 = *(v0 + 1192);
                  v518 = *(v0 + 1168);
                  v521 = *(v0 + 1152);
                  v524 = *(v0 + 1144);
                  v527 = *(v0 + 1136);
                  v530 = *(v0 + 1128);
                  v533 = *(v0 + 1120);
                  v535 = *(v0 + 1112);
                  v537 = *(v0 + 1104);
                  v541 = *(v0 + 1096);
                  v545 = *(v0 + 1088);
                  v548 = *(v0 + 1080);
                  v552 = *(v0 + 1072);
                  v556 = *(v0 + 1064);
                  v559 = *(v0 + 1056);
                  v562 = *(v0 + 1048);
                  v565 = *(v0 + 1040);
                  v568 = *(v0 + 1032);
                  v571 = *(v0 + 1008);
                  v574 = *(v0 + 1000);
                  v576 = *(v0 + 992);
                  v581 = *(v0 + 984);
                  v587 = *(v0 + 976);
                  v590 = *(v0 + 968);
                  v593 = *(v0 + 960);
                  v596 = *(v0 + 952);
                  v599 = *(v0 + 944);
                  v602 = *(v0 + 936);
                  v605 = *(v0 + 912);
                  v608 = *(v0 + 888);
                  v611 = *(v0 + 864);
                  v615 = *(v0 + 856);
                  v621 = *(v0 + 832);
                  v625 = *(v0 + 824);
                  v629 = *(v0 + 816);
                  v632 = *(v0 + 792);
                  v636 = *(v0 + 784);
                  v639 = *(v0 + 776);
                  v643 = *(v0 + 768);
                  logc = *(v0 + 760);
                  v654 = *(v0 + 736);
                  v658 = *(v0 + 712);
                  v665 = *(v0 + 696);
                  v670 = *(v0 + 688);
                  v675 = *(v0 + 680);
                  v679 = *(v0 + 672);
                  v684 = *(v0 + 656);
                  v483 = *(v0 + 520);

                  v484 = *(v0 + 8);

                  return v484();
                }
              }

              else if (v462)
              {
                LODWORD(v463) = HIDWORD(v460) - v460;
                if (__OFSUB__(HIDWORD(v460), v460))
                {
                  goto LABEL_375;
                }

                v463 = v463;
              }

              else
              {
                v463 = BYTE6(v461);
              }

              if (v463 == 28)
              {
                sub_100016590(v437, v439);
                v485 = swift_task_alloc();
                *(v0 + 1600) = v485;
                *v485 = v0;
                v485[1] = sub_1002BA248;
                v486 = *(v0 + 1528);
                v487 = *(v0 + 1336);
                v488 = *(v0 + 1008);
                v489 = *(v0 + 648);

                return sub_1002D7014(v488, v371, v144, v486, v460, v461, 0, v487);
              }

              if (v462 == 2)
              {
                v492 = v460[2];
                v491 = v460[3];
                v490 = v491 - v492;
                if (!__OFSUB__(v491, v492))
                {
                  goto LABEL_342;
                }

                __break(1u);
              }

              else if (v462 == 1)
              {
                if (__OFSUB__(HIDWORD(v460), v460))
                {
                  goto LABEL_376;
                }

                v490 = HIDWORD(v460) - v460;
                goto LABEL_342;
              }

              v490 = BYTE6(v461);
LABEL_342:
              sub_100018350();
              v451 = swift_allocError();
              *v493 = 28;
              *(v493 + 8) = v490;
              *(v493 + 16) = 0;
              swift_willThrow();
              sub_100016590(v460, v461);
              goto LABEL_299;
            }

            if (!__OFSUB__(HIDWORD(v437), v437))
            {
              if (HIDWORD(v437) - v437 != 57)
              {
                goto LABEL_302;
              }

              goto LABEL_295;
            }
          }

          __break(1u);
LABEL_371:
          swift_once();
          goto LABEL_273;
        }

        if (v418 != 2)
        {
          goto LABEL_287;
        }

        v421 = *(v0 + 1472);
      }

      else
      {
        v417 = v368 >> 62;
        if ((v368 >> 62) <= 1)
        {
          if (!v417)
          {
            v145 = BYTE6(v368);
            goto LABEL_288;
          }

          v434 = *(v0 + 1472);
          v145 = v434 >> 32;
          v435 = v434;
          goto LABEL_287;
        }

        if (v417 != 2)
        {
          v145 = 0;
          goto LABEL_288;
        }

        v421 = *(v0 + 1472);
        v145 = *(v421 + 24);
      }

      v435 = *(v421 + 16);
      goto LABEL_287;
    }

    v156 = *(v0 + 1480);
    v144 = *(v0 + 1472);
    v145 = *(v0 + 1384);
    v157 = *(v0 + 1344);
    v158 = *(v0 + 1336);
    v159 = *(v0 + 1280);
    v160 = *(v0 + 1272);

    sub_100006654(v144, v156);
    v161 = *(v159 + 8);
    v161(v157, v160);
    sub_1002DBBF0(v145, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v161(v158, v160);
    v162 = *(v0 + 1408) + 1;
    p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
    if (v162 == *(v0 + 1400))
    {
      break;
    }

    v144 = &qword_1016980D0;
    v145 = &unk_10138F3B0;
    while (1)
    {
      *(v0 + 1408) = v162;
      v377 = *(v0 + 632);
      if (!v377)
      {
        v377 = _swiftEmptyArrayStorage;
      }

      if (v162 >= v377[2])
      {
        break;
      }

      v378 = *(v0 + 1384);
      v379 = *(v0 + 1352);
      v380 = *(v0 + 1280);
      v381 = *(v0 + 1272);
      v382 = *(v0 + 1264);
      sub_1002DB760(v377 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v162, v378, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v383 = *(v378 + 16);
      v384 = *(v378 + 24);
      sub_1000D2A70(v378 + *(v379 + 28), v382, &qword_1016980D0, &unk_10138F3B0);
      v385 = *(v380 + 48);
      *(v0 + 1416) = v385;
      *(v0 + 1424) = (v380 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v385(v382, 1, v381) != 1)
      {
        v406 = *(v0 + 1344);
        v407 = *(v0 + 1280);
        v408 = *(v0 + 1272);
        v409 = *(v0 + 1264);
        v410 = *(v0 + 1256);
        v411 = *(v407 + 32);
        *(v0 + 1432) = v411;
        *(v0 + 1440) = (v407 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v411(v406, v409, v408);
        v412 = *(v407 + 16);
        *(v0 + 1448) = v412;
        *(v0 + 1456) = (v407 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v412(v410, v406, v408);
        (*(v407 + 56))(v410, 0, 1, v408);
        v413 = swift_task_alloc();
        *(v0 + 1464) = v413;
        *v413 = v0;
        v413[1] = sub_1002B09AC;
        v414 = *(v0 + 1256);
        v415 = *(v0 + 648);

        return sub_1002D5B7C(v383, v384, v414);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v677, qword_10177A818);
      v386 = Logger.logObject.getter();
      v387 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v386, v387))
      {
        v388 = swift_slowAlloc();
        *v388 = 0;
        _os_log_impl(&_mh_execute_header, v386, v387, "Missing share id in payload.", v388, 2u);
      }

      v376 = *(v0 + 1384);

      sub_1002DBBF0(v376, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v162 = *(v0 + 1408) + 1;
      if (v162 == *(v0 + 1400))
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    swift_once();
  }

LABEL_44:
  if (*(v0 + 632))
  {
    v164 = *(v0 + 632);
  }

  if (*(v0 + 624))
  {
    v165 = *(v0 + 624);
  }

  else
  {
    v165 = _swiftEmptyArrayStorage;
  }

  v588 = v165[2];
  if (!v588)
  {

LABEL_242:

    v395 = *(v0 + 1384);
    v396 = *(v0 + 1376);
    v397 = *(v0 + 1368);
    v398 = *(v0 + 1344);
    v399 = *(v0 + 1336);
    v400 = *(v0 + 1328);
    v401 = *(v0 + 1320);
    v402 = *(v0 + 1312);
    v403 = *(v0 + 1304);
    v494 = *(v0 + 1296);
    v496 = *(v0 + 1264);
    v499 = *(v0 + 1256);
    v501 = *(v0 + 1248);
    v504 = *(v0 + 1240);
    v507 = *(v0 + 1232);
    v509 = *(v0 + 1208);
    v511 = *(v0 + 1192);
    v514 = *(v0 + 1168);
    v517 = *(v0 + 1152);
    v520 = *(v0 + 1144);
    v523 = *(v0 + 1136);
    v526 = *(v0 + 1128);
    v529 = *(v0 + 1120);
    v532 = *(v0 + 1112);
    v534 = *(v0 + 1104);
    v536 = *(v0 + 1096);
    v540 = *(v0 + 1088);
    v544 = *(v0 + 1080);
    v547 = *(v0 + 1072);
    v551 = *(v0 + 1064);
    v555 = *(v0 + 1056);
    v558 = *(v0 + 1048);
    v561 = *(v0 + 1040);
    v564 = *(v0 + 1032);
    v567 = *(v0 + 1008);
    v570 = *(v0 + 1000);
    v573 = *(v0 + 992);
    v575 = *(v0 + 984);
    v580 = *(v0 + 976);
    v586 = *(v0 + 968);
    v589 = *(v0 + 960);
    v592 = *(v0 + 952);
    v595 = *(v0 + 944);
    v598 = *(v0 + 936);
    v601 = *(v0 + 912);
    v604 = *(v0 + 888);
    v607 = *(v0 + 864);
    v610 = *(v0 + 856);
    v614 = *(v0 + 832);
    v620 = *(v0 + 824);
    v624 = *(v0 + 816);
    v628 = *(v0 + 792);
    v631 = *(v0 + 784);
    v635 = *(v0 + 776);
    v638 = *(v0 + 768);
    v642 = *(v0 + 760);
    logb = *(v0 + 736);
    v653 = *(v0 + 712);
    v657 = *(v0 + 696);
    v664 = *(v0 + 688);
    v669 = *(v0 + 680);
    v674 = *(v0 + 672);
    v683 = *(v0 + 656);
    swift_beginAccess();
    v678 = *(v0 + 520);

    v404 = *(v0 + 8);

    return v404(v678);
  }

  v166 = *(v0 + 1280);
  v503 = (v0 + 600);
  v167 = *(v0 + 1024);
  v603 = *(v0 + 1016);
  v168 = *(v0 + 848);
  v506 = *(v0 + 808);
  v627 = *(v0 + 800);
  v609 = *(v0 + 792);
  v668 = *(v0 + 776);
  v606 = *(v0 + 744);
  v169 = *(v0 + 728);
  v597 = v165 + 4;
  v641 = (v169 + 8);
  loga = (v169 + 104);
  v623 = *(v0 + 704);
  v531 = (*(v0 + 928) + 56);
  v566 = (v168 + 16);
  v569 = *(v0 + 752);
  v528 = *(v0 + 664);
  v525 = (v168 + 56);
  v560 = *(v0 + 712);
  v563 = (v168 + 8);
  v522 = (v166 + 16);
  v516 = (v167 + 48);
  v519 = (v167 + 56);
  v594 = *(*(v0 + 640) + 16);
  v572 = (v166 + 8);
  v637 = enum case for HashAlgorithm.sha256(_:);

  v170 = 0;
  v513 = xmmword_101385D80;
  v591 = v165;
  while (2)
  {
    if (v170 >= v165[2])
    {
      goto LABEL_357;
    }

    v600 = v170;
    v171 = &v597[3 * v170];
    v173 = *v171;
    v172 = v171[1];
    v630 = v172;
    v656 = *v171;
    v634 = v171[2];
    if (!v594)
    {
      sub_100017D5C(v173, v172);

LABEL_161:
      if (p_weak_ivar_lyt[162] != -1)
      {
        swift_once();
      }

      sub_1000076D4(v677, qword_10177A818);
      sub_100017D5C(v656, v630);

      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.error.getter();
      sub_100016590(v656, v630);

      v165 = v591;
      if (os_log_type_enabled(v144, v145))
      {
        v225 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        v687 = v226;
        *v225 = 141558275;
        *(v225 + 4) = 1752392040;
        *(v225 + 12) = 2081;
        *(v0 + 488) = v656;
        *(v0 + 496) = v630;
        sub_10025DB08();
        v227 = RawRepresentable<>.hexString.getter();
        v229 = sub_1000136BC(v227, v228, &v687);

        *(v225 + 14) = v229;
        _os_log_impl(&_mh_execute_header, v144, v145, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v225, 0x16u);
        sub_100007BAC(v226);
        v165 = v591;
      }

      sub_100016590(v656, v630);

      goto LABEL_166;
    }

    v174 = *(v0 + 640) + ((*(v569 + 80) + 32) & ~*(v569 + 80));
    sub_100017D5C(v173, v172);
    if (v173)
    {
      v175 = 0;
    }

    else
    {
      v175 = v172 == 0xC000000000000000;
    }

    v176 = !v175;
    v617 = v176;
    v662 = v172 >> 62;
    v612 = BYTE6(v172);
    v650 = *(v569 + 72);
    v177 = __OFSUB__(HIDWORD(v173), v173);
    v582 = v177;
    v577 = HIDWORD(v173) - v173;

    v178 = v594;
LABEL_66:
    v180 = *(v0 + 776);
    sub_1002DB760(v174, v180, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v181 = *v180;
    v182 = *(v668 + 8);
    v144 = v182 >> 62;
    if ((v182 >> 62) > 1)
    {
      v145 = v680;
      if (v144 == 2)
      {
        v183 = *(v181 + 16);
        v185 = *(v181 + 24);
        sub_100017D5C(v181, *(v668 + 8));
        v184 = *(v181 + 16);
        v186 = *(v181 + 24);
      }

      else
      {
        v183 = 0;
        v185 = 0;
        v186 = 0;
        v184 = 0;
      }
    }

    else
    {
      v145 = v680;
      if (v144)
      {
        v183 = v181;
        v185 = v181 >> 32;
        sub_100017D5C(v181, *(v668 + 8));
        v186 = v181 >> 32;
        v184 = v181;
      }

      else
      {
        v183 = 0;
        v184 = 0;
        v185 = BYTE6(v182);
        v186 = BYTE6(v182);
      }
    }

    if (v186 < v183 || v183 < v184)
    {
      goto LABEL_344;
    }

    if (v144 > 1)
    {
      if (v144 == 2)
      {
        v187 = *(v181 + 16);
        v188 = *(v181 + 24);
      }

      else
      {
        v188 = 0;
        v187 = 0;
      }
    }

    else if (v144)
    {
      v187 = v181;
      v188 = v181 >> 32;
    }

    else
    {
      v187 = 0;
      v188 = BYTE6(v182);
    }

    if (v188 < v185 || v185 < v187)
    {
      goto LABEL_345;
    }

    if (__OFSUB__(v185, v183))
    {
      goto LABEL_346;
    }

    if ((v185 - v183) >= 0x39)
    {
      v189 = v183 + 57;
      if (!__OFADD__(v183, 57))
      {
        if (v144 > 1)
        {
          if (v144 == 2)
          {
            v190 = *(v181 + 16);
            v191 = *(v181 + 24);
          }

          else
          {
            v191 = 0;
            v190 = 0;
          }
        }

        else if (v144)
        {
          v190 = v181;
          v191 = v181 >> 32;
        }

        else
        {
          v190 = 0;
          v191 = BYTE6(v182);
        }

        if (v191 < v189 || v189 < v190)
        {
          goto LABEL_350;
        }

        v192 = 0;
        if (v144 <= 1)
        {
          if (v144)
          {
            goto LABEL_105;
          }

          goto LABEL_108;
        }

        if (v144 == 3)
        {
          goto LABEL_108;
        }

        goto LABEL_107;
      }

      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
      goto LABEL_352;
    }

    if (v144 > 1)
    {
      if (v144 != 2)
      {
        goto LABEL_109;
      }

      v189 = *(v181 + 24);
LABEL_107:
      v192 = *(v181 + 16);
      goto LABEL_108;
    }

    if (!v144)
    {
      goto LABEL_109;
    }

    v189 = v181 >> 32;
LABEL_105:
    v192 = v181;
LABEL_108:
    if (v189 < v192)
    {
      goto LABEL_347;
    }

LABEL_109:
    v672 = v178;
    v193 = Data._Representation.subscript.getter();
    v195 = v194;
    sub_100016590(v181, v182);
    v196 = v195 >> 62;
    if ((v195 >> 62) > 1)
    {
      if (v196 != 2)
      {
        goto LABEL_305;
      }

      v199 = *(v193 + 16);
      v198 = *(v193 + 24);
      v200 = __OFSUB__(v198, v199);
      v197 = v198 - v199;
      if (v200)
      {
        goto LABEL_358;
      }
    }

    else if (v196)
    {
      LODWORD(v197) = HIDWORD(v193) - v193;
      if (__OFSUB__(HIDWORD(v193), v193))
      {
        goto LABEL_359;
      }

      v197 = v197;
    }

    else
    {
      v197 = BYTE6(v195);
    }

    if (v197 != 57)
    {
LABEL_305:
      v457 = v193;
      v458 = v195;
      goto LABEL_303;
    }

    v201 = sub_100A7A194(v193, v195);
    if (!v145)
    {
      v202 = sub_100A7829C(v201, 0);
      v144 = v203;
      v93 = CCECCryptorRelease();
      v204 = v144 >> 62;
      if ((v144 >> 62) > 1)
      {
        if (v204 == 2)
        {
          v207 = *(v202 + 16);
          v206 = *(v202 + 24);
          v200 = __OFSUB__(v206, v207);
          v205 = v206 - v207;
          if (v200)
          {
            goto LABEL_361;
          }

          goto LABEL_129;
        }

        v459 = 0;
LABEL_318:
        sub_100018350();
        v431 = swift_allocError();
        *v466 = 28;
        *(v466 + 8) = v459;
        *(v466 + 16) = 0;
        swift_willThrow();
        sub_100016590(v202, v144);
        goto LABEL_319;
      }

      if (v204)
      {
        LODWORD(v205) = HIDWORD(v202) - v202;
        if (__OFSUB__(HIDWORD(v202), v202))
        {
          goto LABEL_360;
        }

        v205 = v205;
      }

      else
      {
        v205 = BYTE6(v144);
      }

LABEL_129:
      if (v205 == 28)
      {
        v208 = *(v0 + 736);
        v209 = *(v0 + 720);
        sub_100016590(v193, v195);
        (loga->isa)(v208, v637, v209);
        v210 = Data.hash(algorithm:)();
        v212 = v211;
        sub_100016590(v202, v144);
        (*v641)(v208, v209);
        v213 = v212 >> 62;
        if (v212 >> 62 == 3)
        {
          if (v210)
          {
            v214 = 0;
          }

          else
          {
            v214 = v212 == 0xC000000000000000;
          }

          v215 = v662;
          v217 = !v214 || v662 < 3;
          p_weak_ivar_lyt = (&BeaconKeyManager + 56);
          if (((v217 | v617) & 1) == 0)
          {
            v230 = 0;
            v231 = 0xC000000000000000;
            goto LABEL_170;
          }

          v218 = 0;
          if (v662 > 1)
          {
LABEL_154:
            if (v215 != 2)
            {
              if (!v218)
              {
                goto LABEL_168;
              }

LABEL_64:
              sub_100016590(v210, v212);
              v680 = 0;
              v179 = v672;
              goto LABEL_65;
            }

            v223 = *(v656 + 16);
            v222 = *(v656 + 24);
            v200 = __OFSUB__(v222, v223);
            v221 = v222 - v223;
            if (v200)
            {
              goto LABEL_362;
            }

            goto LABEL_156;
          }
        }

        else
        {
          p_weak_ivar_lyt = (&BeaconKeyManager + 56);
          v215 = v662;
          if (v213 == 2)
          {
            v220 = *(v210 + 16);
            v219 = *(v210 + 24);
            v200 = __OFSUB__(v219, v220);
            v218 = v219 - v220;
            if (v200)
            {
              goto LABEL_367;
            }

            if (v662 > 1)
            {
              goto LABEL_154;
            }
          }

          else if (v213 == 1)
          {
            LODWORD(v218) = HIDWORD(v210) - v210;
            if (__OFSUB__(HIDWORD(v210), v210))
            {
              goto LABEL_366;
            }

            v218 = v218;
            if (v662 > 1)
            {
              goto LABEL_154;
            }
          }

          else
          {
            v218 = BYTE6(v212);
            if (v662 > 1)
            {
              goto LABEL_154;
            }
          }
        }

        v221 = v612;
        if (v215)
        {
          v221 = v577;
          if (v582)
          {
            goto LABEL_363;
          }
        }

LABEL_156:
        if (v218 != v221)
        {
          goto LABEL_64;
        }

        if (v218 < 1)
        {
LABEL_168:
          v230 = v210;
          v231 = v212;
LABEL_170:
          sub_100016590(v230, v231);
          v680 = 0;
LABEL_171:
          v232 = *(v0 + 792);
          v144 = *(v0 + 784);
          v145 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey;
          sub_1002DB7C8(*(v0 + 776), v144, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v144, v232, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v233 = *(v634 + 16);
          v165 = v591;
          if (v233)
          {
            v672 = (v634 + ((*(v623 + 80) + 32) & ~*(v623 + 80)));

            v234 = 0;
            v663 = v233;
            while (v234 < *(v634 + 16))
            {
              v236 = *(v0 + 792);
              sub_1002DB760(&v672[*(v623 + 72) * v234], *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v237 = *v236;
              v238 = *(v609 + 8);
              v682 = v234;
              v239 = sub_100496ABC();
              v240 = **(v0 + 712);
              v241 = *(v560 + 8);
              v242 = **(v0 + 792);
              v243 = *(v609 + 8);
              sub_100017D5C(v242, v243);
              sub_10002EA98(57, v242, v243, &v687);
              sub_100496F68(v687, v688, &v685);
              v244 = v686;
              if (v686 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v618 = *(v0 + 792);
              v245 = v685;
              v246 = PublicKey.advertisement.getter(v685, v686);
              v248 = v247;
              v93 = sub_100006654(v245, v244);
              v249 = v241 >> 62;
              v651 = *(v606 + 20);
              if ((v241 >> 62) > 1)
              {
                if (v249 == 2)
                {
                  v252 = *(v240 + 16);
                  v251 = *(v240 + 24);
                  v250 = v251 - v252;
                  if (__OFSUB__(v251, v252))
                  {
                    goto LABEL_373;
                  }
                }

                else
                {
                  v250 = 0;
                }
              }

              else if (v249)
              {
                if (__OFSUB__(HIDWORD(v240), v240))
                {
                  __break(1u);
LABEL_373:
                  __break(1u);
                  goto LABEL_374;
                }

                v250 = HIDWORD(v240) - v240;
              }

              else
              {
                v250 = BYTE6(v241);
              }

              sub_100A2A240(3);
              v254 = v253;
              v255 = v239;
              sub_100017D5C(v240, v241);
              sub_100017D5C(v246, v248);
              if (v250 >= v254)
              {
                v256 = (v0 + 672);
                sub_100A2AA58(v255, v240, v241, v246, v248, *(v0 + 672));
              }

              else
              {
                v256 = (v0 + 680);
                sub_100A2B118(v255, v240, v241, v246, v248, *(v0 + 680));
              }

              v549 = v246;
              v613 = v255;
              v257 = *v256;
              v578 = *(v0 + 1272);
              v583 = *(v0 + 1016);
              v557 = *(v0 + 1000);
              v258 = *(v0 + 976);
              v538 = *(v0 + 968);
              v259 = *(v0 + 920);
              v260 = *(v0 + 856);
              v261 = *(v0 + 840);
              v262 = *(v0 + 832);
              v263 = *(v0 + 696);
              v264 = *(v0 + 688);
              v265 = *(v0 + 656);
              sub_1002DB7C8(v257, v264, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v264, v263, type metadata accessor for BeaconPayloadv1);
              v266 = v258;
              v542 = v258;
              (*v531)(v258, 1, 1, v259);
              v553 = *(v263 + v528[10]);
              v267 = *v566;
              (*v566)(v260, v263 + v528[5], v261);
              v268 = *(v263 + v528[7]);
              v269 = *(v263 + v528[8]);
              v270 = *(v263 + v528[9]);
              (*v525)(v265, 1, 1, v261);
              sub_1000D2A70(v266, v538, &unk_1016C1120, &qword_1013C49D0);
              v498 = v267;
              v267(&v262[v627[5]], v260, v261);
              sub_1000D2A70(v265, &v262[v627[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v538, &v262[v627[11]], &unk_1016C1120, &qword_1013C49D0);
              v271 = &v262[v627[12]];
              UUID.init()();
              sub_100016590(v549, v248);
              sub_10000B3A8(v538, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v265, &unk_101696900, &unk_10138B1E0);
              v272 = *v563;
              (*v563)(v260, v261);
              sub_10000B3A8(v542, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v263, type metadata accessor for BeaconPayloadv1);
              *v262 = v553;
              *&v262[v627[6]] = v268;
              *&v262[v627[7]] = v269;
              *&v262[v627[8]] = v270;
              v262[v627[9]] = 15;
              *&v262[v627[13]] = 256;
              v273 = *(v603 + 48);
              (*v522)(v557, v618 + v651, v578);
              sub_1002DB7C8(v262, v557 + v273, type metadata accessor for RawSearchResult);
              (*v519)(v557, 0, 1, v583);
              if ((*v516)(v557, 1, v583) == 1)
              {
                v274 = *(v0 + 1000);

                sub_10000B3A8(v274, &qword_10169C968, &qword_101398A10);
                p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
                v275 = v663;
                v276 = v682;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v277 = *(v0 + 792);
                v278 = *(v0 + 760);
                sub_1000076D4(v677, qword_10177A818);
                sub_1002DB760(v277, v278, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v144 = Logger.logObject.getter();
                v145 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v144, v145))
                {
                  v279 = *(v0 + 1272);
                  v280 = *(v0 + 760);
                  v281 = swift_slowAlloc();
                  v282 = swift_slowAlloc();
                  v687 = v282;
                  *v281 = 141558275;
                  *(v281 + 4) = 1752392040;
                  *(v281 + 12) = 2081;
                  v283 = *(v606 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v284 = dispatch thunk of CustomStringConvertible.description.getter();
                  v286 = v285;
                  v287 = v280;
                  p_weak_ivar_lyt = (&BeaconKeyManager + 56);
                  sub_1002DBBF0(v287, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v288 = sub_1000136BC(v284, v286, &v687);

                  *(v281 + 14) = v288;
                  _os_log_impl(&_mh_execute_header, v144, v145, "Could not create search result for beacon: %{private,mask.hash}s.", v281, 0x16u);
                  sub_100007BAC(v282);
                  v275 = v663;
                }

                else
                {
                  v235 = *(v0 + 760);

                  sub_1002DBBF0(v235, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v619 = v272;
                v289 = *(v0 + 1088);
                v290 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v289, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v289, v290, &qword_10169C970, &qword_101398A18);
                v291 = *(v603 + 48);
                swift_beginAccess();
                v292 = sub_1005CAD18(v290, *(v0 + 520));
                v293 = *(v0 + 1272);
                if (v292)
                {
                  v294 = v292;
                  v584 = *(v0 + 1088);
                  v295 = *(v0 + 1080);
                  v296 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v290 + v291, type metadata accessor for RawSearchResult);
                  v652 = *v572;
                  (*v572)(v295, v293);
                  sub_1000D2A70(v584, v296, &qword_10169C970, &qword_101398A18);
                  v297 = (v296 + *(v603 + 48));
                  v298 = *(v294 + 40);
                  Hasher.init(_seed:)();
                  sub_100D15128();
                  v299 = Hasher._finalize()();
                  v300 = -1 << *(v294 + 32);
                  v301 = v299 & ~v300;
                  if ((*(v294 + 56 + ((v301 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v301))
                  {
                    v302 = ~v300;
                    v303 = *v297;
                    v304 = *(v506 + 72);
                    do
                    {
                      v305 = *(v0 + 816);
                      sub_1002DB760(*(v294 + 48) + v301 * v304, v305, type metadata accessor for RawSearchResult);
                      v306 = *(v0 + 816);
                      if (*v305 == v303 && (v307 = v627[5], v308 = static Date.== infix(_:_:)(), v306 = *(v0 + 816), (v308 & 1) != 0) && *(v306 + v627[6]) == *&v297[v627[6]] && *(v306 + v627[7]) == *&v297[v627[7]] && *(v306 + v627[8]) == *&v297[v627[8]])
                      {
                        v309 = v627[12];
                        v310 = *(v0 + 816);
                        v311 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v310, type metadata accessor for RawSearchResult);
                        if (v311)
                        {
                          goto LABEL_208;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v306, type metadata accessor for RawSearchResult);
                      }

                      v301 = (v301 + 1) & v302;
                    }

                    while (((*(v294 + 56 + ((v301 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v301) & 1) != 0);
                  }

                  v312 = *(v0 + 832);
                  v313 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v297, v312, type metadata accessor for RawSearchResult);
                  v687 = v294;
                  sub_100DFE348(v312, v301, v313);
                  v294 = v687;
LABEL_208:
                  sub_1002DBBF0(v297, type metadata accessor for RawSearchResult);
                  v314 = *(v0 + 1128);
                  v315 = *(v0 + 1088);
                  v652(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v315, v314, &qword_10169C970, &qword_101398A18);
                  v316 = *(v603 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v294, v314);
                }

                else
                {
                  v317 = *(v0 + 1128);
                  v318 = *(v0 + 1088);
                  v319 = *(v0 + 1080);
                  v320 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v290 + v291, type metadata accessor for RawSearchResult);
                  v652 = *v572;
                  (*v572)(v319, v293);
                  sub_1000D2A70(v318, v317, &qword_10169C970, &qword_101398A18);
                  v316 = *(v603 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v321 = *(v506 + 72);
                  v322 = (*(v506 + 80) + 32) & ~*(v506 + 80);
                  v323 = swift_allocObject();
                  *(v323 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v318, v320, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v320 + *(v603 + 48), v323 + v322, type metadata accessor for RawSearchResult);
                  v652(v320, v293);
                  v324 = sub_10112A090(v323);
                  swift_setDeallocating();
                  sub_1002DBBF0(v323 + v322, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v325 = *(v0 + 520);
                  v326 = swift_isUniquelyReferenced_nonNull_native();
                  v687 = *(v0 + 520);
                  sub_100FFC200(v324, v317, v326);
                  v652(v317, v293);
                  *(v0 + 520) = v687;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v316, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v327 = *(v0 + 1088);
                v328 = *(v0 + 1056);
                v329 = *(v0 + 1048);
                v330 = *(v0 + 1040);
                v331 = *(v0 + 792);
                v332 = *(v0 + 768);
                sub_1000076D4(v677, qword_10177A818);
                sub_1002DB760(v331, v332, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v327, v328, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v327, v329, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v327, v330, &qword_10169C970, &qword_101398A18);
                v333 = Logger.logObject.getter();
                v334 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v333, v334))
                {
                  v579 = v334;
                  v585 = v333;
                  v335 = *(v0 + 1272);
                  v336 = *(v0 + 1128);
                  v337 = *(v0 + 1056);
                  v554 = *(v0 + 1040);
                  v546 = *(v0 + 1048);
                  v550 = *(v0 + 1032);
                  v539 = *(v0 + 840);
                  v543 = *(v0 + 856);
                  v338 = *(v0 + 768);
                  v339 = swift_slowAlloc();
                  v687 = swift_slowAlloc();
                  *v339 = 141559043;
                  *(v339 + 4) = 1752392040;
                  *(v339 + 12) = 2081;
                  v340 = *(v606 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v341 = dispatch thunk of CustomStringConvertible.description.getter();
                  v343 = v342;
                  sub_1002DBBF0(v338, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v344 = sub_1000136BC(v341, v343, &v687);

                  *(v339 + 14) = v344;
                  *(v339 + 22) = 2082;
                  sub_1000D2A70(v337, v336, &qword_10169C970, &qword_101398A18);
                  v345 = v336 + *(v603 + 48);
                  v498(v543, v345 + v627[5], v539);
                  sub_1002DBBF0(v345, type metadata accessor for RawSearchResult);
                  v652(v336, v335);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
                  v346 = dispatch thunk of CustomStringConvertible.description.getter();
                  v348 = v347;
                  v619(v543, v539);
                  sub_10000B3A8(v337, &qword_10169C970, &qword_101398A18);
                  v349 = sub_1000136BC(v346, v348, &v687);

                  *(v339 + 24) = v349;
                  *(v339 + 32) = 2082;
                  sub_1000D2A70(v546, v336, &qword_10169C970, &qword_101398A18);
                  v350 = v336 + *(v603 + 48);
                  LOBYTE(v349) = *(v350 + v627[9]);
                  sub_1002DBBF0(v350, type metadata accessor for RawSearchResult);
                  v652(v336, v335);
                  v351 = sub_100013454(v349);
                  v353 = v352;
                  sub_10000B3A8(v546, &qword_10169C970, &qword_101398A18);
                  v354 = sub_1000136BC(v351, v353, &v687);

                  *(v339 + 34) = v354;
                  *(v339 + 42) = 2048;
                  sub_1000D2A70(v554, v550, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v355 = *(v0 + 520);
                  if (*(v355 + 16) && (v356 = sub_1000210EC(*(v0 + 1032)), (v357 & 1) != 0))
                  {
                    v358 = *(*(v355 + 56) + 8 * v356);
                    swift_endAccess();
                    v359 = *(v358 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v359 = 0;
                  }

                  p_weak_ivar_lyt = (&BeaconKeyManager + 56);
                  v275 = v663;
                  v362 = *(v0 + 1272);
                  v363 = *(v0 + 1088);
                  v364 = *(v0 + 1040);
                  v365 = *(v0 + 1032);
                  sub_1002DBBF0(v365 + *(v603 + 48), type metadata accessor for RawSearchResult);
                  v652(v365, v362);
                  v366 = v364;
                  v144 = &qword_10169C970;
                  v145 = &qword_101398A18;
                  sub_10000B3A8(v366, &qword_10169C970, &qword_101398A18);
                  *(v339 + 44) = v359;
                  _os_log_impl(&_mh_execute_header, v585, v579, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v339, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v363, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v360 = *(v0 + 1088);
                  v144 = *(v0 + 1056);
                  v145 = *(v0 + 1048);
                  v361 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v145, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v144, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v361, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v360, &qword_10169C970, &qword_101398A18);
                  p_weak_ivar_lyt = (&BeaconKeyManager + 56);
                  v275 = v663;
                }

                v276 = v682;
              }

              v234 = v276 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              if (v234 == v275)
              {

                sub_100016590(v656, v630);

                v680 = 0;
                v165 = v591;
                goto LABEL_222;
              }
            }

            goto LABEL_351;
          }

          sub_100016590(v656, v630);

LABEL_222:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_166:
          v170 = v600 + 1;
          if (v600 + 1 == v588)
          {
            goto LABEL_242;
          }

          continue;
        }

        sub_100017D5C(v656, v630);
        sub_100017D5C(v656, v630);
        sub_100017D5C(v210, v212);
        v224 = sub_100F0B1BC(v210, v212, v656, v630);
        v680 = 0;
        sub_100016590(v210, v212);
        sub_100016590(v210, v212);
        sub_100016590(v656, v630);
        v179 = v672;
        if (v224)
        {
          goto LABEL_171;
        }

LABEL_65:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v174 += v650;
        v178 = v179 - 1;
        if (!v178)
        {
          goto LABEL_161;
        }

        goto LABEL_66;
      }

      if (v204 == 2)
      {
        v465 = *(v202 + 16);
        v464 = *(v202 + 24);
        v459 = v464 - v465;
        if (!__OFSUB__(v464, v465))
        {
          goto LABEL_318;
        }

        __break(1u);
      }

      else if (v204 == 1)
      {
        if (!__OFSUB__(HIDWORD(v202), v202))
        {
          v459 = HIDWORD(v202) - v202;
          goto LABEL_318;
        }

LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
        return _swift_task_switch(v93, v92, v94);
      }

      v459 = BYTE6(v144);
      goto LABEL_318;
    }

    break;
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_371;
  }

LABEL_273:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v427 = swift_allocObject();
  *(v427 + 16) = v513;
  *v503 = v145;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v428 = String.init<A>(describing:)();
  v430 = v429;
  *(v427 + 56) = &type metadata for String;
  *(v427 + 64) = sub_100008C00();
  *(v427 + 32) = v428;
  *(v427 + 40) = v430;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v431 = swift_allocError();
  *v432 = 0;
  swift_willThrow();

LABEL_319:
  v687 = 0;
  v688 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v467 = v688;
  *(v0 + 472) = v687;
  *(v0 + 480) = v467;
  v468._countAndFlagsBits = 0xD000000000000021;
  v468._object = 0x800000010134CB30;
  String.append(_:)(v468);
  *(v0 + 584) = v431;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v469 = *(v0 + 472);
  v470 = *(v0 + 480);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002C1B94()
{
  v1 = v0[174];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[209] = v3;
  *v3 = v0;
  v3[1] = sub_1002C1C6C;
  v4 = v0[203];
  v5 = v0[174];

  return unsafeBlocking<A>(context:_:)(v0 + 77, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1002C1C6C()
{
  v1 = *(*v0 + 1672);
  v2 = *(*v0 + 1392);
  v4 = *v0;

  return _swift_task_switch(sub_1002C1D84, v2, 0);
}

uint64_t sub_1002C1D84()
{
  v1 = v0[81];
  v0[210] = v0[77];
  return _swift_task_switch(sub_1002C1DA8, v1, 0);
}

uint64_t sub_1002C1DA8()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[165];
  v4 = *(v0[210] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v0[211] = v4;

  v5 = PrivateKey.publicKey.getter(v2, v1);
  v7 = v6;
  v0[212] = PublicKey.advertisement.getter(v5, v6);
  v0[213] = v8;
  sub_100016590(v5, v7);
  v9 = getuid();
  sub_1000294F0(v9);

  return _swift_task_switch(sub_1002C1E84, v4, 0);
}

uint64_t sub_1002C1E84()
{
  v1 = *(v0 + 1688);
  v2 = *(v1 + 112);
  if (!v2)
  {
    v22 = *(v0 + 1704);
    v23 = *(v0 + 1696);

    sub_100016590(v23, v22);
LABEL_7:
    v21 = *(v0 + 1656);
    goto LABEL_8;
  }

  v3 = *(v1 + 112);

  v4 = sub_1002072CC();
  v5 = *(v0 + 1704);
  v6 = *(v0 + 1696);
  if (!v4)
  {
    v24 = *(v0 + 1688);

    sub_100016590(v6, v5);

    goto LABEL_7;
  }

  v7 = v4;
  v46 = *(v0 + 1656);
  v43 = *(v0 + 1772);
  v8 = *(v0 + 1320);
  v9 = *(v0 + 960);
  v10 = *(v0 + 912);
  v35 = v8;
  v37 = *(v0 + 888);
  v11 = *(v0 + 880);
  v40 = *(v0 + 872);
  v33 = *(v0 + 1704);
  v12 = (v9 + *(v0 + 1780));
  (*(*(v0 + 904) + 16))(v10, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys, *(v0 + 896));
  v13 = v12[3];
  v14 = v12[4];
  sub_1000035D0(v12, v13);
  LOBYTE(v14) = sub_10002BD40(v13, v14);
  v15 = swift_task_alloc();
  *(v15 + 16) = v10;
  *(v15 + 24) = v35;
  *(v15 + 32) = v9;
  *(v15 + 40) = v14 & 1;
  *(v15 + 48) = v12;
  *(v15 + 56) = v6;
  *(v15 + 64) = v33;
  *(v15 + 72) = v7;
  (*(v11 + 104))(v37, v43, v40);
  Connection.transaction(_:block:)();
  *(v0 + 1712) = v46;
  v16 = *(v0 + 1704);
  v17 = *(v0 + 1696);
  v18 = *(v0 + 1688);
  if (v46)
  {
    v19 = *(v0 + 904);
    v44 = *(v0 + 896);
    v47 = *(v0 + 912);
    v20 = *(v0 + 880);
    v38 = *(v0 + 872);
    v41 = *(v0 + 888);

    sub_100016590(v17, v16);

    (*(v20 + 8))(v41, v38);

    (*(v19 + 8))(v47, v44);

    v21 = 0;
LABEL_8:
    *(v0 + 1720) = v21;
    v25 = *(v0 + 648);
    (*(*(v0 + 1280) + 8))(*(v0 + 1320), *(v0 + 1272));
    v26 = sub_1002C5DC4;
    v27 = v25;
    goto LABEL_9;
  }

  v28 = *(v0 + 1280);
  v42 = *(v0 + 1272);
  v45 = *(v0 + 1320);
  v29 = *(v0 + 904);
  v36 = *(v0 + 896);
  v39 = *(v0 + 912);
  v30 = *(v0 + 880);
  v32 = *(v0 + 872);
  v34 = *(v0 + 888);
  v48 = *(v0 + 648);

  sub_100016590(v17, v16);

  (*(v30 + 8))(v34, v32);

  (*(v29 + 8))(v39, v36);
  (*(v28 + 8))(v45, v42);
  v26 = sub_1002C21D8;
  v27 = v48;
LABEL_9:

  return _swift_task_switch(v26, v27, 0);
}

uint64_t sub_1002C21D8()
{
  v634 = v0;
  v1 = *(v0 + 1712);
  *(v0 + 1728) = v1;
  v2 = (*(v0 + 960) + *(v0 + 1780));
  v4 = v2[3];
  v3 = v2[4];
  sub_1000035D0(v2, v4);
  if (sub_10002BD40(v4, v3))
  {
    sub_10001F280(*(v0 + 960) + *(v0 + 1780), v0 + 216);
  }

  else
  {
    v5 = (*(v0 + 960) + *(v0 + 1780));
    v6 = v5[4];
    sub_1000035D0(v5, v5[3]);
    v7 = *(v6 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v8 = *(v0 + 608);
    *(v0 + 240) = &type metadata for PrimaryWildIndex;
    *(v0 + 248) = sub_10022A528();
    *(v0 + 216) = v8;
  }

  sub_1000D2A70(v0 + 216, v0 + 136, &qword_10169C988, &unk_1013B3320);
  if (*(v0 + 160))
  {
    v9 = *(v0 + 1392);
    sub_10000A748((v0 + 136), v0 + 176);
    v10 = sub_1002C99B0;
    v11 = v9;
    v12 = 0;

    return _swift_task_switch(v10, v11, v12);
  }

  v613 = v1;
  v13 = *(v0 + 960);
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v13, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v0 + 136, &qword_10169C988, &unk_1013B3320);
  v14 = *(v0 + 1336);
  swift_beginAccess();
  v15 = sub_1005CAD18(v14, *(v0 + 520));
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 1152);
    v18 = *(v0 + 1136);
    v19 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v17, v18, &qword_10169C970, &qword_101398A18);
    v20 = (v18 + *(v19 + 48));
    v21 = *(v16 + 40);
    Hasher.init(_seed:)();
    sub_100D15128();
    v22 = Hasher._finalize()();
    v23 = -1 << *(v16 + 32);
    v24 = v22 & ~v23;
    if ((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      v26 = *v20;
      v27 = *(*(v0 + 808) + 72);
      do
      {
        v28 = *(v0 + 824);
        sub_1002DB760(*(v16 + 48) + v24 * v27, v28, type metadata accessor for RawSearchResult);
        v29 = *(v0 + 824);
        if (*v28 == v26 && (v30 = *(*(v0 + 800) + 20), v31 = static Date.== infix(_:_:)(), v29 = *(v0 + 824), (v31 & 1) != 0) && (v32 = *(v0 + 800), *(v29 + v32[6]) == *&v20[v32[6]]) && *(v29 + v32[7]) == *&v20[v32[7]] && *(v29 + v32[8]) == *&v20[v32[8]])
        {
          v33 = v32[12];
          v34 = *(v0 + 824);
          v35 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v34, type metadata accessor for RawSearchResult);
          if (v35)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1002DBBF0(v29, type metadata accessor for RawSearchResult);
        }

        v24 = (v24 + 1) & v25;
      }

      while (((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }

    v36 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v20, v36, type metadata accessor for RawSearchResult);
    v632 = v16;
    sub_100DFE348(v36, v24, isUniquelyReferenced_nonNull_native);
LABEL_21:
    sub_1002DBBF0(v20, type metadata accessor for RawSearchResult);
    v38 = *(v0 + 1456);
    v39 = *(v0 + 1448);
    v40 = *(v0 + 1336);
    v41 = *(v0 + 1328);
    v42 = *(v0 + 1272);
    v623 = *(*(v0 + 1280) + 8);
    v623(*(v0 + 1136), v42);
    v39(v41, v40, v42);
    swift_beginAccess();
    v43 = v16;
    v44 = v41;
  }

  else
  {
    v45 = *(v0 + 1456);
    v46 = *(v0 + 1448);
    v47 = *(v0 + 1336);
    v48 = *(v0 + 1328);
    v49 = *(v0 + 1280);
    v50 = *(v0 + 1272);
    v51 = *(v0 + 1152);
    v52 = *(v0 + 1128);
    v624 = *(v0 + 1016);
    v53 = *(v0 + 808);
    swift_endAccess();
    v46(v48, v47, v50);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_101385D80;
    sub_1000D2A70(v51, v52, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v52 + *(v624 + 48), v56 + v55, type metadata accessor for RawSearchResult);
    v623 = *(v49 + 8);
    v623(v52, v50);
    v57 = sub_10112A090(v56);
    swift_setDeallocating();
    sub_1002DBBF0(v56 + v55, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v43 = v57;
    v44 = v48;
  }

  sub_1001DE1B0(v43, v44);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_330;
  }

  while (1)
  {
    v58 = *(v0 + 1456);
    v59 = *(v0 + 1448);
    v60 = *(v0 + 1336);
    v61 = *(v0 + 1304);
    v62 = *(v0 + 1272);
    v63 = *(v0 + 1152);
    v64 = *(v0 + 1120);
    v65 = *(v0 + 1112);
    v617 = *(v0 + 1104);
    v627 = type metadata accessor for Logger();
    sub_1000076D4(v627, qword_10177A818);
    v59(v61, v60, v62);
    sub_1000D2A70(v63, v64, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v63, v65, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v63, v617, &qword_10169C970, &qword_101398A18);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v592 = v67;
      v596 = v66;
      v68 = *(v0 + 1304);
      v69 = *(v0 + 1272);
      v70 = *(v0 + 1128);
      v563 = *(v0 + 1120);
      v585 = *(v0 + 1104);
      v578 = *(v0 + 1112);
      v582 = *(v0 + 1096);
      v601 = *(v0 + 1016);
      v71 = *(v0 + 848);
      logc = *(v0 + 840);
      v574 = *(v0 + 856);
      v618 = *(v0 + 1280) + 8;
      v608 = *(v0 + 800);
      v72 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v72 = 141559043;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v623(v68, v69);
      v76 = sub_1000136BC(v73, v75, (v0 + 528));

      *(v72 + 14) = v76;
      *(v72 + 22) = 2082;
      sub_1000D2A70(v563, v70, &qword_10169C970, &qword_101398A18);
      v77 = v70 + *(v601 + 48);
      (*(v71 + 16))(v574, v77 + *(v608 + 20), logc);
      sub_1002DBBF0(v77, type metadata accessor for RawSearchResult);
      v623(v70, v69);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      (*(v71 + 8))(v574, logc);
      sub_10000B3A8(v563, &qword_10169C970, &qword_101398A18);
      v81 = sub_1000136BC(v78, v80, (v0 + 528));

      *(v72 + 24) = v81;
      *(v72 + 32) = 2082;
      sub_1000D2A70(v578, v70, &qword_10169C970, &qword_101398A18);
      v82 = v70 + *(v601 + 48);
      LOBYTE(v81) = *(v82 + *(v608 + 36));
      sub_1002DBBF0(v82, type metadata accessor for RawSearchResult);
      v623(v70, v69);
      v83 = sub_100013454(v81);
      v85 = v84;
      sub_10000B3A8(v578, &qword_10169C970, &qword_101398A18);
      v86 = sub_1000136BC(v83, v85, (v0 + 528));

      *(v72 + 34) = v86;
      *(v72 + 42) = 2048;
      sub_1000D2A70(v585, v582, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v87 = *(v0 + 520);
      if (*(v87 + 16) && (v88 = sub_1000210EC(*(v0 + 1096)), (v89 & 1) != 0))
      {
        v90 = *(*(v87 + 56) + 8 * v88);
        swift_endAccess();
        v91 = *(v90 + 16);
      }

      else
      {
        swift_endAccess();
        v91 = 0;
      }

      v99 = *(v0 + 1632);
      v93 = *(v0 + 1568);
      v100 = *(v0 + 1560);
      v101 = *(v0 + 1272);
      v609 = *(v0 + 1152);
      v102 = *(v0 + 1104);
      v103 = *(v0 + 1096);
      v94 = *(v0 + 992);
      sub_1002DBBF0(v103 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      v623(v103, v101);
      sub_10000B3A8(v102, &qword_10169C970, &qword_101398A18);
      *(v72 + 44) = v91;
      _os_log_impl(&_mh_execute_header, v596, v592, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v72, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v100, v93);
      sub_10000B3A8(v94, &unk_1016C1120, &qword_1013C49D0);
      v98 = v609;
    }

    else
    {
      v92 = *(v0 + 1632);
      v93 = *(v0 + 1568);
      v94 = *(v0 + 1560);
      v602 = *(v0 + 1272);
      v609 = *(v0 + 1304);
      v619 = *(v0 + 1152);
      v95 = *(v0 + 1120);
      v96 = *(v0 + 1112);
      v97 = *(v0 + 1280) + 8;
      v597 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v94, v93);
      sub_10000B3A8(v96, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v95, &qword_10169C970, &qword_101398A18);
      v623(v609, v602);
      sub_10000B3A8(v597, &unk_1016C1120, &qword_1013C49D0);
      v98 = v619;
    }

    sub_10000B3A8(v98, &qword_10169C970, &qword_101398A18);
    v104 = *(v0 + 1552) + 1;
    if (v104 != *(v0 + 1544))
    {
      *(v0 + 1552) = v104;
      v324 = *(v0 + 1536);
      if (v104 >= *(v324 + 16))
      {
LABEL_334:
        __break(1u);
        goto LABEL_335;
      }

      v325 = *(v0 + 1480);
      v326 = v325 >> 62;
      v327 = v324 + 24 * v104;
      v328 = *(v327 + 32);
      *(v0 + 1560) = v328;
      v93 = *(v327 + 40);
      *(v0 + 1568) = v93;
      v329 = *(v327 + 48);
      *(v0 + 1580) = *(v327 + 52);
      *(v0 + 1576) = v329;
      if ((v325 >> 62) > 1)
      {
        if (v326 != 2)
        {
          v94 = 0;
          v330 = 0;
          v332 = 0;
          v331 = 0;
          goto LABEL_240;
        }

        v346 = *(v0 + 1472);
        v330 = *(v346 + 16);
        v94 = *(v346 + 24);
      }

      else
      {
        if (!v326)
        {
          v330 = 0;
          v331 = 0;
          v94 = BYTE6(v325);
          v332 = BYTE6(v325);
          goto LABEL_240;
        }

        v346 = *(v0 + 1472);
        v94 = v346 >> 32;
        v330 = v346;
      }

      sub_10002E98C(v346, v325);
      if (v94 < v330)
      {
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
        goto LABEL_337;
      }

      v325 = *(v0 + 1480);
      v368 = *(v0 + 1472);
      if (v325 >> 62 == 2)
      {
        v331 = *(v368 + 16);
        v332 = *(v368 + 24);
      }

      else
      {
        v332 = v368 >> 32;
        v331 = v368;
      }

LABEL_240:
      if (v332 < v94 || v94 < v331)
      {
        goto LABEL_336;
      }

      if (__OFSUB__(v94, v330))
      {
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
        goto LABEL_346;
      }

      if ((v94 - v330) >= 0x39)
      {
        v370 = v330 + 57;
        if (__OFADD__(v330, 57))
        {
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

        v371 = v325 >> 62;
        if ((v325 >> 62) > 1)
        {
          if (v371 == 2)
          {
            v375 = *(v0 + 1472);
            v372 = *(v375 + 16);
            v373 = *(v375 + 24);
          }

          else
          {
            v373 = 0;
            v372 = 0;
          }
        }

        else if (v371)
        {
          v372 = *(v0 + 1472);
          v373 = v372 >> 32;
          v372 = v372;
        }

        else
        {
          v372 = 0;
          v373 = BYTE6(v325);
        }

        if (v373 < v370 || v370 < v372)
        {
          goto LABEL_347;
        }

        v94 = 0;
        if (v371 <= 1)
        {
          if (v371)
          {
            v94 = *(v0 + 1472);
          }

LABEL_269:
          if (v370 < v94)
          {
            goto LABEL_338;
          }

LABEL_270:
          v383 = *(v0 + 1472);
          sub_100017D5C(v328, v93);
          sub_100017D5C(v328, v93);
          v384 = Data._Representation.subscript.getter();
          v386 = v385;
          sub_100006654(v383, v325);
          v387 = v386 >> 62;
          if ((v386 >> 62) > 1)
          {
            v94 = v613;
            if (v387 != 2)
            {
              goto LABEL_284;
            }

            v390 = *(v384 + 16);
            v389 = *(v384 + 24);
            v149 = __OFSUB__(v389, v390);
            v391 = v389 - v390;
            if (!v149)
            {
              if (v391 != 57)
              {
                goto LABEL_284;
              }

              goto LABEL_276;
            }

            __break(1u);
          }

          else
          {
            if (!v387)
            {
              v388 = BYTE6(v386);
              goto LABEL_283;
            }

            LODWORD(v388) = HIDWORD(v384) - v384;
            if (!__OFSUB__(HIDWORD(v384), v384))
            {
              v388 = v388;
LABEL_283:
              v94 = v613;
              if (v388 != 57)
              {
LABEL_284:
                v406 = v384;
                v407 = v386;
LABEL_285:
                sub_100016590(v406, v407);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_276:
              v392 = sub_100A7A194(v384, v386);
              if (v94)
              {
                v93 = v0 + 560;
                static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_279:
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v396 = swift_allocObject();
                  *(v396 + 16) = xmmword_101385D80;
                  *v93 = v94;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v397 = String.init<A>(describing:)();
                  v399 = v398;
                  *(v396 + 56) = &type metadata for String;
                  *(v396 + 64) = sub_100008C00();
                  *(v396 + 32) = v397;
                  *(v396 + 40) = v399;
                  os_log(_:dso:log:_:_:)();

                  sub_1001BAF88();
                  v400 = swift_allocError();
                  *v401 = 0;
                  swift_willThrow();

LABEL_280:
                  v632 = 0;
                  v633 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v402 = v633;
                  *(v0 + 504) = v632;
                  *(v0 + 512) = v402;
                  v403._countAndFlagsBits = 0xD000000000000021;
                  v403._object = 0x800000010134CB30;
                  String.append(_:)(v403);
                  *(v0 + 552) = v400;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  v404 = *(v0 + 504);
                  v405 = *(v0 + 512);
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_350:
                swift_once();
                goto LABEL_279;
              }

              v393 = v392;
              v394 = sub_100A7829C(v392, 0);
              *(v0 + 1584) = v394;
              *(v0 + 1592) = v395;
              v409 = v394;
              v410 = v395;
              v10 = CCECCryptorRelease();
              v411 = v410 >> 62;
              if ((v410 >> 62) > 1)
              {
                if (v411 != 2)
                {
                  v439 = 0;
                  goto LABEL_324;
                }

                v421 = v409[2];
                v420 = v409[3];
                v149 = __OFSUB__(v420, v421);
                v412 = v420 - v421;
                if (v149)
                {
                  __break(1u);
                  v422 = *(v0 + 792);
                  v423 = *(v0 + 712);

                  sub_100016590(v393, v328);

                  sub_100016590(v609, v582);

                  sub_1002DBBF0(v422, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v423, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
                  v424 = *(v0 + 1384);
                  v425 = *(v0 + 1376);
                  v426 = *(v0 + 1368);
                  v427 = *(v0 + 1344);
                  v428 = *(v0 + 1336);
                  v429 = *(v0 + 1328);
                  v430 = *(v0 + 1320);
                  v431 = *(v0 + 1312);
                  v444 = *(v0 + 1304);
                  v447 = *(v0 + 1296);
                  v449 = *(v0 + 1264);
                  v452 = *(v0 + 1256);
                  v455 = *(v0 + 1248);
                  v457 = *(v0 + 1240);
                  v459 = *(v0 + 1232);
                  v462 = *(v0 + 1208);
                  v465 = *(v0 + 1192);
                  v468 = *(v0 + 1168);
                  v471 = *(v0 + 1152);
                  v474 = *(v0 + 1144);
                  v477 = *(v0 + 1136);
                  v480 = *(v0 + 1128);
                  v482 = *(v0 + 1120);
                  v484 = *(v0 + 1112);
                  v486 = *(v0 + 1104);
                  v489 = *(v0 + 1096);
                  v493 = *(v0 + 1088);
                  v497 = *(v0 + 1080);
                  v501 = *(v0 + 1072);
                  v505 = *(v0 + 1064);
                  v509 = *(v0 + 1056);
                  v512 = *(v0 + 1048);
                  v515 = *(v0 + 1040);
                  v518 = *(v0 + 1032);
                  v521 = *(v0 + 1008);
                  v524 = *(v0 + 1000);
                  v527 = *(v0 + 992);
                  v530 = *(v0 + 984);
                  v532 = *(v0 + 976);
                  v537 = *(v0 + 968);
                  v541 = *(v0 + 960);
                  v544 = *(v0 + 952);
                  v547 = *(v0 + 944);
                  v550 = *(v0 + 936);
                  v553 = *(v0 + 912);
                  v556 = *(v0 + 888);
                  v559 = *(v0 + 864);
                  v562 = *(v0 + 856);
                  v567 = *(v0 + 832);
                  loge = *(v0 + 824);
                  v577 = *(v0 + 816);
                  v581 = *(v0 + 792);
                  v584 = *(v0 + 784);
                  v588 = *(v0 + 776);
                  v591 = *(v0 + 768);
                  v595 = *(v0 + 760);
                  v600 = *(v0 + 736);
                  v607 = *(v0 + 712);
                  v612 = *(v0 + 696);
                  v616 = *(v0 + 688);
                  v622 = *(v0 + 680);
                  v626 = *(v0 + 672);
                  v629 = *(v0 + 656);
                  v432 = *(v0 + 520);

                  v433 = *(v0 + 8);

                  return v433();
                }
              }

              else if (v411)
              {
                LODWORD(v412) = HIDWORD(v409) - v409;
                if (__OFSUB__(HIDWORD(v409), v409))
                {
                  goto LABEL_357;
                }

                v412 = v412;
              }

              else
              {
                v412 = BYTE6(v410);
              }

              if (v412 == 28)
              {
                sub_100016590(v384, v386);
                v434 = swift_task_alloc();
                *(v0 + 1600) = v434;
                *v434 = v0;
                v434[1] = sub_1002BA248;
                v435 = *(v0 + 1528);
                v436 = *(v0 + 1336);
                v437 = *(v0 + 1008);
                v438 = *(v0 + 648);

                return sub_1002D7014(v437, v328, v93, v435, v409, v410, 0, v436);
              }

              if (v411 == 2)
              {
                v441 = v409[2];
                v440 = v409[3];
                v439 = v440 - v441;
                if (!__OFSUB__(v440, v441))
                {
                  goto LABEL_324;
                }

                __break(1u);
              }

              else if (v411 == 1)
              {
                if (__OFSUB__(HIDWORD(v409), v409))
                {
                  goto LABEL_358;
                }

                v439 = HIDWORD(v409) - v409;
                goto LABEL_324;
              }

              v439 = BYTE6(v410);
LABEL_324:
              sub_100018350();
              v400 = swift_allocError();
              *v442 = 28;
              *(v442 + 8) = v439;
              *(v442 + 16) = 0;
              swift_willThrow();
              sub_100016590(v409, v410);
              goto LABEL_280;
            }
          }

          __break(1u);
LABEL_353:
          swift_once();
          goto LABEL_256;
        }

        if (v371 != 2)
        {
          goto LABEL_269;
        }

        v374 = *(v0 + 1472);
      }

      else
      {
        v369 = v325 >> 62;
        if ((v325 >> 62) <= 1)
        {
          if (!v369)
          {
            v94 = 0;
            goto LABEL_270;
          }

          v382 = *(v0 + 1472);
          v370 = v382 >> 32;
          v94 = v382;
          goto LABEL_269;
        }

        if (v369 != 2)
        {
          v94 = 0;
          goto LABEL_270;
        }

        v374 = *(v0 + 1472);
        v370 = *(v374 + 24);
      }

      v94 = *(v374 + 16);
      goto LABEL_269;
    }

    v105 = *(v0 + 1480);
    v106 = *(v0 + 1472);
    v107 = *(v0 + 1384);
    v108 = *(v0 + 1344);
    v109 = *(v0 + 1336);
    v110 = *(v0 + 1280);
    v111 = *(v0 + 1272);

    sub_100006654(v106, v105);
    v112 = *(v110 + 8);
    v112(v108, v111);
    sub_1002DBBF0(v107, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v112(v109, v111);
    v113 = *(v0 + 1408) + 1;
    if (v113 == *(v0 + 1400))
    {
      break;
    }

    while (1)
    {
      *(v0 + 1408) = v113;
      v334 = *(v0 + 632);
      if (!v334)
      {
        v334 = _swiftEmptyArrayStorage;
      }

      if (v113 >= v334[2])
      {
        break;
      }

      v335 = *(v0 + 1384);
      v336 = *(v0 + 1352);
      v337 = *(v0 + 1280);
      v338 = *(v0 + 1272);
      v339 = *(v0 + 1264);
      sub_1002DB760(v334 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v113, v335, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v341 = *(v335 + 16);
      v340 = *(v335 + 24);
      sub_1000D2A70(v335 + *(v336 + 28), v339, &qword_1016980D0, &unk_10138F3B0);
      v342 = *(v337 + 48);
      *(v0 + 1416) = v342;
      *(v0 + 1424) = (v337 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v342(v339, 1, v338) != 1)
      {
        v358 = *(v0 + 1344);
        v359 = *(v0 + 1280);
        v360 = *(v0 + 1272);
        v361 = *(v0 + 1264);
        v362 = *(v0 + 1256);
        v363 = *(v359 + 32);
        *(v0 + 1432) = v363;
        *(v0 + 1440) = (v359 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v363(v358, v361, v360);
        v364 = *(v359 + 16);
        *(v0 + 1448) = v364;
        *(v0 + 1456) = (v359 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v364(v362, v358, v360);
        (*(v359 + 56))(v362, 0, 1, v360);
        v365 = swift_task_alloc();
        *(v0 + 1464) = v365;
        *v365 = v0;
        v365[1] = sub_1002B09AC;
        v366 = *(v0 + 1256);
        v367 = *(v0 + 648);

        return sub_1002D5B7C(v341, v340, v366);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v627, qword_10177A818);
      v343 = Logger.logObject.getter();
      v344 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v343, v344))
      {
        v345 = swift_slowAlloc();
        *v345 = 0;
        _os_log_impl(&_mh_execute_header, v343, v344, "Missing share id in payload.", v345, 2u);
      }

      v333 = *(v0 + 1384);

      sub_1002DBBF0(v333, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v113 = *(v0 + 1408) + 1;
      if (v113 == *(v0 + 1400))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    swift_once();
  }

LABEL_33:
  if (*(v0 + 632))
  {
    v114 = *(v0 + 632);
  }

  if (*(v0 + 624))
  {
    v93 = *(v0 + 624);
  }

  else
  {
    v93 = _swiftEmptyArrayStorage;
  }

  v542 = *(v93 + 16);
  if (!v542)
  {

LABEL_228:

    v347 = *(v0 + 1384);
    v348 = *(v0 + 1376);
    v349 = *(v0 + 1368);
    v350 = *(v0 + 1344);
    v351 = *(v0 + 1336);
    v352 = *(v0 + 1328);
    v353 = *(v0 + 1320);
    v354 = *(v0 + 1312);
    v355 = *(v0 + 1304);
    v443 = *(v0 + 1296);
    v446 = *(v0 + 1264);
    v448 = *(v0 + 1256);
    v451 = *(v0 + 1248);
    v454 = *(v0 + 1240);
    v456 = *(v0 + 1232);
    v458 = *(v0 + 1208);
    v461 = *(v0 + 1192);
    v464 = *(v0 + 1168);
    v467 = *(v0 + 1152);
    v470 = *(v0 + 1144);
    v473 = *(v0 + 1136);
    v476 = *(v0 + 1128);
    v479 = *(v0 + 1120);
    v481 = *(v0 + 1112);
    v483 = *(v0 + 1104);
    v485 = *(v0 + 1096);
    v488 = *(v0 + 1088);
    v492 = *(v0 + 1080);
    v496 = *(v0 + 1072);
    v500 = *(v0 + 1064);
    v504 = *(v0 + 1056);
    v508 = *(v0 + 1048);
    v511 = *(v0 + 1040);
    v514 = *(v0 + 1032);
    v517 = *(v0 + 1008);
    v520 = *(v0 + 1000);
    v523 = *(v0 + 992);
    v526 = *(v0 + 984);
    v529 = *(v0 + 976);
    v531 = *(v0 + 968);
    v536 = *(v0 + 960);
    v540 = *(v0 + 952);
    v543 = *(v0 + 944);
    v546 = *(v0 + 936);
    v549 = *(v0 + 912);
    v552 = *(v0 + 888);
    v555 = *(v0 + 864);
    v558 = *(v0 + 856);
    v561 = *(v0 + 832);
    v566 = *(v0 + 824);
    logd = *(v0 + 816);
    v576 = *(v0 + 792);
    v580 = *(v0 + 784);
    v583 = *(v0 + 776);
    v587 = *(v0 + 768);
    v590 = *(v0 + 760);
    v594 = *(v0 + 736);
    v599 = *(v0 + 712);
    v606 = *(v0 + 696);
    v611 = *(v0 + 688);
    v615 = *(v0 + 680);
    v621 = *(v0 + 672);
    v628 = *(v0 + 656);
    swift_beginAccess();
    v625 = *(v0 + 520);

    v356 = *(v0 + 8);

    return v356(v625);
  }

  v115 = *(v0 + 1280);
  v450 = (v0 + 600);
  v116 = *(v0 + 1024);
  v117 = *(v0 + 1016);
  v118 = *(v0 + 848);
  v453 = *(v0 + 808);
  v579 = *(v0 + 800);
  v560 = *(v0 + 792);
  v620 = *(v0 + 776);
  v522 = *(v0 + 752);
  v557 = *(v0 + 744);
  v119 = *(v0 + 728);
  v548 = v93 + 32;
  v513 = *(v0 + 712);
  v598 = (v119 + 104);
  v593 = (v119 + 8);
  v575 = *(v0 + 704);
  v478 = (*(v0 + 928) + 56);
  v519 = (v118 + 16);
  v475 = *(v0 + 664);
  v472 = (v118 + 56);
  v516 = (v118 + 8);
  v469 = (v115 + 16);
  v463 = (v116 + 48);
  v466 = (v116 + 56);
  v545 = *(*(v0 + 640) + 16);
  v528 = (v115 + 8);
  v589 = enum case for HashAlgorithm.sha256(_:);

  v120 = 0;
  v460 = xmmword_101385D80;
  v94 = v613;
  v525 = v93;
  v551 = v117;
  while (2)
  {
    if (v120 >= *(v93 + 16))
    {
      goto LABEL_339;
    }

    v554 = v120;
    v121 = (v548 + 24 * v120);
    v123 = *v121;
    v122 = v121[1];
    v582 = v122;
    v610 = *v121;
    v586 = v121[2];
    if (!v545)
    {
      sub_100017D5C(v123, v122);

LABEL_150:
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v627, qword_10177A818);
      sub_100017D5C(v610, v582);

      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.error.getter();
      sub_100016590(v610, v582);

      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v632 = v180;
        *v179 = 141558275;
        *(v179 + 4) = 1752392040;
        *(v179 + 12) = 2081;
        *(v0 + 488) = v610;
        *(v0 + 496) = v582;
        sub_10025DB08();
        v181 = RawRepresentable<>.hexString.getter();
        v183 = sub_1000136BC(v181, v182, &v632);

        *(v179 + 14) = v183;
        _os_log_impl(&_mh_execute_header, v177, v178, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v179, 0x16u);
        sub_100007BAC(v180);
      }

      sub_100016590(v610, v582);

      v93 = v525;
      goto LABEL_155;
    }

    v124 = *(v0 + 640) + ((*(v522 + 80) + 32) & ~*(v522 + 80));
    sub_100017D5C(v123, v122);
    if (v123)
    {
      v125 = 0;
    }

    else
    {
      v125 = v122 == 0xC000000000000000;
    }

    v126 = !v125;
    log = v126;
    v613 = v122 >> 62;
    v564 = BYTE6(v122);
    v603 = *(v522 + 72);
    v127 = __OFSUB__(HIDWORD(v123), v123);
    v538 = v127;
    v533 = HIDWORD(v123) - v123;

    v128 = v545;
LABEL_55:
    v129 = *(v0 + 776);
    sub_1002DB760(v124, v129, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v130 = *v129;
    v131 = *(v620 + 8);
    v93 = v131 >> 62;
    v132 = v94;
    if ((v131 >> 62) > 1)
    {
      if (v93 == 2)
      {
        v94 = *(v130 + 16);
        v134 = *(v130 + 24);
        sub_100017D5C(v130, *(v620 + 8));
        v133 = *(v130 + 16);
        v135 = *(v130 + 24);
      }

      else
      {
        v94 = 0;
        v134 = 0;
        v135 = 0;
        v133 = 0;
      }
    }

    else if (v93)
    {
      v94 = v130;
      v134 = v130 >> 32;
      sub_100017D5C(v130, *(v620 + 8));
      v135 = v130 >> 32;
      v133 = v130;
    }

    else
    {
      v94 = 0;
      v133 = 0;
      v134 = BYTE6(v131);
      v135 = BYTE6(v131);
    }

    if (v135 < v94 || v94 < v133)
    {
      goto LABEL_326;
    }

    if (v93 > 1)
    {
      if (v93 == 2)
      {
        v136 = *(v130 + 16);
        v137 = *(v130 + 24);
      }

      else
      {
        v137 = 0;
        v136 = 0;
      }
    }

    else if (v93)
    {
      v136 = v130;
      v137 = v130 >> 32;
    }

    else
    {
      v136 = 0;
      v137 = BYTE6(v131);
    }

    if (v137 < v134 || v134 < v136)
    {
      goto LABEL_327;
    }

    if (__OFSUB__(v134, v94))
    {
      goto LABEL_328;
    }

    if ((v134 - v94) >= 0x39)
    {
      v138 = v94 + 57;
      if (!__OFADD__(v94, 57))
      {
        v94 = v132;
        if (v93 > 1)
        {
          if (v93 == 2)
          {
            v139 = *(v130 + 16);
            v140 = *(v130 + 24);
          }

          else
          {
            v140 = 0;
            v139 = 0;
          }
        }

        else if (v93)
        {
          v139 = v130;
          v140 = v130 >> 32;
        }

        else
        {
          v139 = 0;
          v140 = BYTE6(v131);
        }

        if (v140 < v138 || v138 < v139)
        {
          goto LABEL_332;
        }

        v141 = 0;
        if (v93 <= 1)
        {
          if (v93)
          {
            goto LABEL_94;
          }

          goto LABEL_97;
        }

        if (v93 == 3)
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }

      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
      goto LABEL_334;
    }

    v94 = v132;
    if (v93 > 1)
    {
      if (v93 != 2)
      {
        goto LABEL_98;
      }

      v138 = *(v130 + 24);
LABEL_96:
      v141 = *(v130 + 16);
      goto LABEL_97;
    }

    if (!v93)
    {
      goto LABEL_98;
    }

    v138 = v130 >> 32;
LABEL_94:
    v141 = v130;
LABEL_97:
    if (v138 < v141)
    {
      goto LABEL_329;
    }

LABEL_98:
    v142 = Data._Representation.subscript.getter();
    v144 = v143;
    sub_100016590(v130, v131);
    v145 = v144 >> 62;
    if ((v144 >> 62) > 1)
    {
      if (v145 != 2)
      {
        goto LABEL_287;
      }

      v148 = *(v142 + 16);
      v147 = *(v142 + 24);
      v149 = __OFSUB__(v147, v148);
      v146 = v147 - v148;
      if (v149)
      {
        goto LABEL_340;
      }
    }

    else if (v145)
    {
      LODWORD(v146) = HIDWORD(v142) - v142;
      if (__OFSUB__(HIDWORD(v142), v142))
      {
        goto LABEL_341;
      }

      v146 = v146;
    }

    else
    {
      v146 = BYTE6(v144);
    }

    if (v146 != 57)
    {
LABEL_287:
      v406 = v142;
      v407 = v144;
      goto LABEL_285;
    }

    v150 = sub_100A7A194(v142, v144);
    if (!v94)
    {
      v151 = sub_100A7829C(v150, 0);
      v93 = v152;
      v10 = CCECCryptorRelease();
      v153 = v93 >> 62;
      if ((v93 >> 62) > 1)
      {
        if (v153 == 2)
        {
          v156 = *(v151 + 16);
          v155 = *(v151 + 24);
          v149 = __OFSUB__(v155, v156);
          v154 = v155 - v156;
          if (v149)
          {
            goto LABEL_343;
          }

          goto LABEL_118;
        }

        v408 = 0;
LABEL_300:
        sub_100018350();
        v380 = swift_allocError();
        *v415 = 28;
        *(v415 + 8) = v408;
        *(v415 + 16) = 0;
        swift_willThrow();
        sub_100016590(v151, v93);
        goto LABEL_301;
      }

      if (v153)
      {
        LODWORD(v154) = HIDWORD(v151) - v151;
        if (__OFSUB__(HIDWORD(v151), v151))
        {
          goto LABEL_342;
        }

        v154 = v154;
      }

      else
      {
        v154 = BYTE6(v93);
      }

LABEL_118:
      if (v154 == 28)
      {
        v623 = v124;
        v157 = v128;
        v158 = *(v0 + 736);
        v159 = *(v0 + 720);
        sub_100016590(v142, v144);
        (*v598)(v158, v589, v159);
        v160 = Data.hash(algorithm:)();
        v162 = v161;
        sub_100016590(v151, v93);
        (*v593)(v158, v159);
        v163 = v162 >> 62;
        if (v162 >> 62 == 3)
        {
          if (v160)
          {
            v164 = 0;
          }

          else
          {
            v164 = v162 == 0xC000000000000000;
          }

          v165 = v613;
          v167 = !v164 || v613 < 3;
          if (((v167 | log) & 1) == 0)
          {
            v184 = 0;
            v185 = 0xC000000000000000;
            goto LABEL_159;
          }

          v168 = v157;
          v169 = 0;
          v170 = v623;
          if (v613 > 1)
          {
LABEL_143:
            if (v165 != 2)
            {
              if (!v169)
              {
                goto LABEL_157;
              }

LABEL_53:
              sub_100016590(v160, v162);
              v94 = 0;
              goto LABEL_54;
            }

            v175 = *(v610 + 16);
            v174 = *(v610 + 24);
            v149 = __OFSUB__(v174, v175);
            v173 = v174 - v175;
            if (v149)
            {
              goto LABEL_344;
            }

            goto LABEL_145;
          }
        }

        else
        {
          v165 = v613;
          v168 = v157;
          if (v163 == 2)
          {
            v172 = *(v160 + 16);
            v171 = *(v160 + 24);
            v149 = __OFSUB__(v171, v172);
            v169 = v171 - v172;
            v170 = v623;
            if (v149)
            {
              goto LABEL_349;
            }

            if (v613 > 1)
            {
              goto LABEL_143;
            }
          }

          else
          {
            v170 = v623;
            if (v163 == 1)
            {
              LODWORD(v169) = HIDWORD(v160) - v160;
              if (__OFSUB__(HIDWORD(v160), v160))
              {
                goto LABEL_348;
              }

              v169 = v169;
              if (v613 > 1)
              {
                goto LABEL_143;
              }
            }

            else
            {
              v169 = BYTE6(v162);
              if (v613 > 1)
              {
                goto LABEL_143;
              }
            }
          }
        }

        v173 = v564;
        if (v165)
        {
          v173 = v533;
          if (v538)
          {
            goto LABEL_345;
          }
        }

LABEL_145:
        if (v169 != v173)
        {
          goto LABEL_53;
        }

        if (v169 < 1)
        {
LABEL_157:
          v184 = v160;
          v185 = v162;
LABEL_159:
          sub_100016590(v184, v185);
          v94 = 0;
LABEL_160:
          v186 = *(v0 + 792);
          v187 = *(v0 + 784);
          sub_1002DB7C8(*(v0 + 776), v187, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v187, v186, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v93 = v525;
          v623 = *(v586 + 16);
          if (v623)
          {
            v614 = v586 + ((*(v575 + 80) + 32) & ~*(v575 + 80));

            v188 = 0;
            while (v188 < *(v586 + 16))
            {
              v190 = *(v0 + 792);
              sub_1002DB760(v614 + *(v575 + 72) * v188, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v191 = *v190;
              v192 = *(v560 + 8);
              v193 = sub_100496ABC();
              v194 = **(v0 + 712);
              v195 = *(v513 + 8);
              v196 = **(v0 + 792);
              v197 = *(v560 + 8);
              sub_100017D5C(v196, v197);
              sub_10002EA98(57, v196, v197, &v632);
              sub_100496F68(v632, v633, &v630);
              v198 = v631;
              if (v631 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v604 = *(v0 + 792);
              v199 = v630;
              v200 = PublicKey.advertisement.getter(v630, v631);
              v202 = v201;
              v10 = sub_100006654(v199, v198);
              v203 = v195 >> 62;
              loga = *(v557 + 20);
              if ((v195 >> 62) > 1)
              {
                if (v203 == 2)
                {
                  v206 = *(v194 + 16);
                  v205 = *(v194 + 24);
                  v204 = v205 - v206;
                  if (__OFSUB__(v205, v206))
                  {
                    goto LABEL_355;
                  }
                }

                else
                {
                  v204 = 0;
                }
              }

              else if (v203)
              {
                if (__OFSUB__(HIDWORD(v194), v194))
                {
                  __break(1u);
LABEL_355:
                  __break(1u);
                  goto LABEL_356;
                }

                v204 = HIDWORD(v194) - v194;
              }

              else
              {
                v204 = BYTE6(v195);
              }

              sub_100A2A240(3);
              v208 = v207;
              v209 = v193;
              sub_100017D5C(v194, v195);
              sub_100017D5C(v200, v202);
              if (v204 >= v208)
              {
                v210 = (v0 + 672);
                sub_100A2AA58(v209, v194, v195, v200, v202, *(v0 + 672));
              }

              else
              {
                v210 = (v0 + 680);
                sub_100A2B118(v209, v194, v195, v200, v202, *(v0 + 680));
              }

              v494 = v202;
              v498 = v200;
              v565 = v188;
              v211 = *v210;
              v534 = *(v0 + 1016);
              v539 = v209;
              v506 = *(v0 + 1000);
              v510 = *(v0 + 1272);
              v212 = *(v0 + 976);
              v487 = *(v0 + 968);
              v213 = *(v0 + 920);
              v214 = *(v0 + 856);
              v215 = *(v0 + 840);
              v216 = *(v0 + 832);
              v217 = *(v0 + 696);
              v218 = *(v0 + 688);
              v219 = *(v0 + 656);
              sub_1002DB7C8(v211, v218, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v218, v217, type metadata accessor for BeaconPayloadv1);
              v220 = v212;
              v490 = v212;
              (*v478)(v212, 1, 1, v213);
              v502 = *(v217 + v475[10]);
              v221 = *v519;
              (*v519)(v214, v217 + v475[5], v215);
              v222 = *(v217 + v475[7]);
              v223 = *(v217 + v475[8]);
              v224 = *(v217 + v475[9]);
              (*v472)(v219, 1, 1, v215);
              sub_1000D2A70(v220, v487, &unk_1016C1120, &qword_1013C49D0);
              v445 = v221;
              v221(&v216[v579[5]], v214, v215);
              sub_1000D2A70(v219, &v216[v579[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v487, &v216[v579[11]], &unk_1016C1120, &qword_1013C49D0);
              v225 = &v216[v579[12]];
              UUID.init()();
              sub_100016590(v498, v494);
              sub_10000B3A8(v487, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v219, &unk_101696900, &unk_10138B1E0);
              v226 = *v516;
              (*v516)(v214, v215);
              sub_10000B3A8(v490, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v217, type metadata accessor for BeaconPayloadv1);
              *v216 = v502;
              *&v216[v579[6]] = v222;
              *&v216[v579[7]] = v223;
              *&v216[v579[8]] = v224;
              v216[v579[9]] = 15;
              *&v216[v579[13]] = 256;
              v227 = *(v551 + 48);
              (*v469)(v506, loga + v604, v510);
              sub_1002DB7C8(v216, v506 + v227, type metadata accessor for RawSearchResult);
              (*v466)(v506, 0, 1, v534);
              if ((*v463)(v506, 1, v534) == 1)
              {
                v228 = *(v0 + 1000);

                sub_10000B3A8(v228, &qword_10169C968, &qword_101398A10);
                v229 = v565;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v230 = *(v0 + 792);
                v231 = *(v0 + 760);
                sub_1000076D4(v627, qword_10177A818);
                sub_1002DB760(v230, v231, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v93 = Logger.logObject.getter();
                v232 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v93, v232))
                {
                  v233 = *(v0 + 1272);
                  v234 = *(v0 + 760);
                  v235 = swift_slowAlloc();
                  v236 = swift_slowAlloc();
                  v632 = v236;
                  *v235 = 141558275;
                  *(v235 + 4) = 1752392040;
                  *(v235 + 12) = 2081;
                  v237 = *(v557 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v238 = dispatch thunk of CustomStringConvertible.description.getter();
                  v240 = v239;
                  v241 = v234;
                  v229 = v565;
                  sub_1002DBBF0(v241, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v242 = sub_1000136BC(v238, v240, &v632);

                  *(v235 + 14) = v242;
                  _os_log_impl(&_mh_execute_header, v93, v232, "Could not create search result for beacon: %{private,mask.hash}s.", v235, 0x16u);
                  sub_100007BAC(v236);
                }

                else
                {
                  v189 = *(v0 + 760);

                  sub_1002DBBF0(v189, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v243 = *(v0 + 1088);
                v244 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v243, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v243, v244, &qword_10169C970, &qword_101398A18);
                v245 = *(v551 + 48);
                swift_beginAccess();
                v246 = sub_1005CAD18(v244, *(v0 + 520));
                v247 = *(v0 + 1272);
                v499 = v226;
                if (v246)
                {
                  v248 = v246;
                  v249 = *(v0 + 1088);
                  v250 = *(v0 + 1080);
                  v251 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v244 + v245, type metadata accessor for RawSearchResult);
                  v605 = *v528;
                  (*v528)(v250, v247);
                  sub_1000D2A70(v249, v251, &qword_10169C970, &qword_101398A18);
                  v252 = (v251 + *(v551 + 48));
                  v253 = *(v248 + 40);
                  Hasher.init(_seed:)();
                  sub_100D15128();
                  v254 = Hasher._finalize()();
                  v255 = -1 << *(v248 + 32);
                  v256 = v254 & ~v255;
                  if ((*(v248 + 56 + ((v256 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v256))
                  {
                    v257 = ~v255;
                    v258 = *v252;
                    v259 = *(v453 + 72);
                    do
                    {
                      v260 = *(v0 + 816);
                      sub_1002DB760(*(v248 + 48) + v256 * v259, v260, type metadata accessor for RawSearchResult);
                      v261 = *(v0 + 816);
                      if (*v260 == v258 && (v262 = v579[5], v263 = static Date.== infix(_:_:)(), v261 = *(v0 + 816), (v263 & 1) != 0) && *(v261 + v579[6]) == *&v252[v579[6]] && *(v261 + v579[7]) == *&v252[v579[7]] && *(v261 + v579[8]) == *&v252[v579[8]])
                      {
                        v264 = v579[12];
                        v265 = *(v0 + 816);
                        v266 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v265, type metadata accessor for RawSearchResult);
                        if (v266)
                        {
                          goto LABEL_197;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v261, type metadata accessor for RawSearchResult);
                      }

                      v256 = (v256 + 1) & v257;
                    }

                    while (((*(v248 + 56 + ((v256 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v256) & 1) != 0);
                  }

                  v267 = *(v0 + 832);
                  v268 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v252, v267, type metadata accessor for RawSearchResult);
                  v632 = v248;
                  sub_100DFE348(v267, v256, v268);
                  v248 = v632;
LABEL_197:
                  sub_1002DBBF0(v252, type metadata accessor for RawSearchResult);
                  v269 = *(v0 + 1128);
                  v270 = *(v0 + 1088);
                  v605(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v270, v269, &qword_10169C970, &qword_101398A18);
                  v271 = *(v551 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v248, v269);
                }

                else
                {
                  v272 = *(v0 + 1128);
                  v273 = *(v0 + 1088);
                  v274 = *(v0 + 1080);
                  v275 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v244 + v245, type metadata accessor for RawSearchResult);
                  v276 = *v528;
                  (*v528)(v274, v247);
                  sub_1000D2A70(v273, v272, &qword_10169C970, &qword_101398A18);
                  v271 = *(v551 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v277 = *(v453 + 72);
                  v278 = (*(v453 + 80) + 32) & ~*(v453 + 80);
                  v279 = swift_allocObject();
                  *(v279 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v273, v275, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v275 + *(v551 + 48), v279 + v278, type metadata accessor for RawSearchResult);
                  v276(v275, v247);
                  v280 = sub_10112A090(v279);
                  swift_setDeallocating();
                  sub_1002DBBF0(v279 + v278, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v281 = *(v0 + 520);
                  v282 = swift_isUniquelyReferenced_nonNull_native();
                  v632 = *(v0 + 520);
                  sub_100FFC200(v280, v272, v282);
                  v605 = v276;
                  v276(v272, v247);
                  *(v0 + 520) = v632;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v271, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v283 = *(v0 + 1088);
                v284 = *(v0 + 1056);
                v285 = *(v0 + 1048);
                v286 = *(v0 + 1040);
                v287 = *(v0 + 792);
                v288 = *(v0 + 768);
                sub_1000076D4(v627, qword_10177A818);
                sub_1002DB760(v287, v288, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v283, v284, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v283, v285, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v283, v286, &qword_10169C970, &qword_101398A18);
                v289 = Logger.logObject.getter();
                v290 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v289, v290))
                {
                  v535 = v290;
                  logb = v289;
                  v291 = *(v0 + 1272);
                  v292 = *(v0 + 1128);
                  v293 = *(v0 + 1056);
                  v503 = *(v0 + 1032);
                  v507 = *(v0 + 1040);
                  v491 = *(v0 + 856);
                  v495 = *(v0 + 1048);
                  v294 = *(v0 + 840);
                  v295 = *(v0 + 768);
                  v296 = swift_slowAlloc();
                  v632 = swift_slowAlloc();
                  *v296 = 141559043;
                  *(v296 + 4) = 1752392040;
                  *(v296 + 12) = 2081;
                  v297 = *(v557 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v298 = dispatch thunk of CustomStringConvertible.description.getter();
                  v300 = v299;
                  sub_1002DBBF0(v295, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v301 = sub_1000136BC(v298, v300, &v632);

                  *(v296 + 14) = v301;
                  *(v296 + 22) = 2082;
                  sub_1000D2A70(v293, v292, &qword_10169C970, &qword_101398A18);
                  v302 = v292 + *(v551 + 48);
                  v445(v491, v302 + v579[5], v294);
                  sub_1002DBBF0(v302, type metadata accessor for RawSearchResult);
                  v605(v292, v291);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
                  v303 = dispatch thunk of CustomStringConvertible.description.getter();
                  v305 = v304;
                  v499(v491, v294);
                  sub_10000B3A8(v293, &qword_10169C970, &qword_101398A18);
                  v306 = sub_1000136BC(v303, v305, &v632);

                  *(v296 + 24) = v306;
                  *(v296 + 32) = 2082;
                  sub_1000D2A70(v495, v292, &qword_10169C970, &qword_101398A18);
                  v307 = v292 + *(v551 + 48);
                  LOBYTE(v306) = *(v307 + v579[9]);
                  sub_1002DBBF0(v307, type metadata accessor for RawSearchResult);
                  v605(v292, v291);
                  v308 = sub_100013454(v306);
                  v310 = v309;
                  sub_10000B3A8(v495, &qword_10169C970, &qword_101398A18);
                  v311 = sub_1000136BC(v308, v310, &v632);

                  *(v296 + 34) = v311;
                  *(v296 + 42) = 2048;
                  sub_1000D2A70(v507, v503, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v312 = *(v0 + 520);
                  if (*(v312 + 16) && (v313 = sub_1000210EC(*(v0 + 1032)), (v314 & 1) != 0))
                  {
                    v315 = *(*(v312 + 56) + 8 * v313);
                    swift_endAccess();
                    v316 = *(v315 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v316 = 0;
                  }

                  v229 = v565;
                  v320 = *(v0 + 1272);
                  v321 = *(v0 + 1088);
                  v322 = *(v0 + 1040);
                  v323 = *(v0 + 1032);
                  sub_1002DBBF0(v323 + *(v551 + 48), type metadata accessor for RawSearchResult);
                  v605(v323, v320);
                  v93 = &qword_10169C970;
                  sub_10000B3A8(v322, &qword_10169C970, &qword_101398A18);
                  *(v296 + 44) = v316;
                  _os_log_impl(&_mh_execute_header, logb, v535, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v296, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v321, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v317 = *(v0 + 1088);
                  v93 = *(v0 + 1056);
                  v318 = *(v0 + 1048);
                  v319 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v318, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v93, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v319, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v317, &qword_10169C970, &qword_101398A18);
                  v229 = v565;
                }
              }

              v188 = v229 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v94 = 0;
              if (v188 == v623)
              {

                sub_100016590(v610, v582);

                v94 = 0;
                v93 = v525;
                goto LABEL_210;
              }
            }

            goto LABEL_333;
          }

          sub_100016590(v610, v582);

LABEL_210:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_155:
          v120 = v554 + 1;
          if (v554 + 1 == v542)
          {
            goto LABEL_228;
          }

          continue;
        }

        sub_100017D5C(v610, v582);
        sub_100017D5C(v610, v582);
        sub_100017D5C(v160, v162);
        v176 = sub_100F0B1BC(v160, v162, v610, v582);
        sub_100016590(v160, v162);
        sub_100016590(v160, v162);
        sub_100016590(v610, v582);
        if (v176)
        {
          goto LABEL_160;
        }

LABEL_54:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v124 = v170 + v603;
        v128 = v168 - 1;
        if (!v128)
        {
          goto LABEL_150;
        }

        goto LABEL_55;
      }

      if (v153 == 2)
      {
        v414 = *(v151 + 16);
        v413 = *(v151 + 24);
        v408 = v413 - v414;
        if (!__OFSUB__(v413, v414))
        {
          goto LABEL_300;
        }

        __break(1u);
      }

      else if (v153 == 1)
      {
        if (!__OFSUB__(HIDWORD(v151), v151))
        {
          v408 = HIDWORD(v151) - v151;
          goto LABEL_300;
        }

LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
        return _swift_task_switch(v10, v11, v12);
      }

      v408 = BYTE6(v93);
      goto LABEL_300;
    }

    break;
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_353;
  }

LABEL_256:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v376 = swift_allocObject();
  *(v376 + 16) = v460;
  *v450 = v94;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v377 = String.init<A>(describing:)();
  v379 = v378;
  *(v376 + 56) = &type metadata for String;
  *(v376 + 64) = sub_100008C00();
  *(v376 + 32) = v377;
  *(v376 + 40) = v379;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v380 = swift_allocError();
  *v381 = 0;
  swift_willThrow();

LABEL_301:
  v632 = 0;
  v633 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v416 = v633;
  *(v0 + 472) = v632;
  *(v0 + 480) = v416;
  v417._countAndFlagsBits = 0xD000000000000021;
  v417._object = 0x800000010134CB30;
  String.append(_:)(v417);
  *(v0 + 584) = v380;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v418 = *(v0 + 472);
  v419 = *(v0 + 480);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002C5DC4()
{
  v634 = v0;
  v1 = *(v0 + 1720);
  *(v0 + 1728) = v1;
  v2 = (*(v0 + 960) + *(v0 + 1780));
  v4 = v2[3];
  v3 = v2[4];
  sub_1000035D0(v2, v4);
  if (sub_10002BD40(v4, v3))
  {
    sub_10001F280(*(v0 + 960) + *(v0 + 1780), v0 + 216);
  }

  else
  {
    v5 = (*(v0 + 960) + *(v0 + 1780));
    v6 = v5[4];
    sub_1000035D0(v5, v5[3]);
    v7 = *(v6 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v8 = *(v0 + 608);
    *(v0 + 240) = &type metadata for PrimaryWildIndex;
    *(v0 + 248) = sub_10022A528();
    *(v0 + 216) = v8;
  }

  sub_1000D2A70(v0 + 216, v0 + 136, &qword_10169C988, &unk_1013B3320);
  if (*(v0 + 160))
  {
    v9 = *(v0 + 1392);
    sub_10000A748((v0 + 136), v0 + 176);
    v10 = sub_1002C99B0;
    v11 = v9;
    v12 = 0;

    return _swift_task_switch(v10, v11, v12);
  }

  v613 = v1;
  v13 = *(v0 + 960);
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v13, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8(v0 + 136, &qword_10169C988, &unk_1013B3320);
  v14 = *(v0 + 1336);
  swift_beginAccess();
  v15 = sub_1005CAD18(v14, *(v0 + 520));
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 1152);
    v18 = *(v0 + 1136);
    v19 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v17, v18, &qword_10169C970, &qword_101398A18);
    v20 = (v18 + *(v19 + 48));
    v21 = *(v16 + 40);
    Hasher.init(_seed:)();
    sub_100D15128();
    v22 = Hasher._finalize()();
    v23 = -1 << *(v16 + 32);
    v24 = v22 & ~v23;
    if ((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      v26 = *v20;
      v27 = *(*(v0 + 808) + 72);
      do
      {
        v28 = *(v0 + 824);
        sub_1002DB760(*(v16 + 48) + v24 * v27, v28, type metadata accessor for RawSearchResult);
        v29 = *(v0 + 824);
        if (*v28 == v26 && (v30 = *(*(v0 + 800) + 20), v31 = static Date.== infix(_:_:)(), v29 = *(v0 + 824), (v31 & 1) != 0) && (v32 = *(v0 + 800), *(v29 + v32[6]) == *&v20[v32[6]]) && *(v29 + v32[7]) == *&v20[v32[7]] && *(v29 + v32[8]) == *&v20[v32[8]])
        {
          v33 = v32[12];
          v34 = *(v0 + 824);
          v35 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v34, type metadata accessor for RawSearchResult);
          if (v35)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1002DBBF0(v29, type metadata accessor for RawSearchResult);
        }

        v24 = (v24 + 1) & v25;
      }

      while (((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }

    v36 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v20, v36, type metadata accessor for RawSearchResult);
    v632 = v16;
    sub_100DFE348(v36, v24, isUniquelyReferenced_nonNull_native);
LABEL_21:
    sub_1002DBBF0(v20, type metadata accessor for RawSearchResult);
    v38 = *(v0 + 1456);
    v39 = *(v0 + 1448);
    v40 = *(v0 + 1336);
    v41 = *(v0 + 1328);
    v42 = *(v0 + 1272);
    v623 = *(*(v0 + 1280) + 8);
    v623(*(v0 + 1136), v42);
    v39(v41, v40, v42);
    swift_beginAccess();
    v43 = v16;
    v44 = v41;
  }

  else
  {
    v45 = *(v0 + 1456);
    v46 = *(v0 + 1448);
    v47 = *(v0 + 1336);
    v48 = *(v0 + 1328);
    v49 = *(v0 + 1280);
    v50 = *(v0 + 1272);
    v51 = *(v0 + 1152);
    v52 = *(v0 + 1128);
    v624 = *(v0 + 1016);
    v53 = *(v0 + 808);
    swift_endAccess();
    v46(v48, v47, v50);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_101385D80;
    sub_1000D2A70(v51, v52, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v52 + *(v624 + 48), v56 + v55, type metadata accessor for RawSearchResult);
    v623 = *(v49 + 8);
    v623(v52, v50);
    v57 = sub_10112A090(v56);
    swift_setDeallocating();
    sub_1002DBBF0(v56 + v55, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v43 = v57;
    v44 = v48;
  }

  sub_1001DE1B0(v43, v44);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_330;
  }

  while (1)
  {
    v58 = *(v0 + 1456);
    v59 = *(v0 + 1448);
    v60 = *(v0 + 1336);
    v61 = *(v0 + 1304);
    v62 = *(v0 + 1272);
    v63 = *(v0 + 1152);
    v64 = *(v0 + 1120);
    v65 = *(v0 + 1112);
    v617 = *(v0 + 1104);
    v627 = type metadata accessor for Logger();
    sub_1000076D4(v627, qword_10177A818);
    v59(v61, v60, v62);
    sub_1000D2A70(v63, v64, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v63, v65, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v63, v617, &qword_10169C970, &qword_101398A18);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v592 = v67;
      v596 = v66;
      v68 = *(v0 + 1304);
      v69 = *(v0 + 1272);
      v70 = *(v0 + 1128);
      v563 = *(v0 + 1120);
      v585 = *(v0 + 1104);
      v578 = *(v0 + 1112);
      v582 = *(v0 + 1096);
      v601 = *(v0 + 1016);
      v71 = *(v0 + 848);
      logc = *(v0 + 840);
      v574 = *(v0 + 856);
      v618 = *(v0 + 1280) + 8;
      v608 = *(v0 + 800);
      v72 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v72 = 141559043;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v623(v68, v69);
      v76 = sub_1000136BC(v73, v75, (v0 + 528));

      *(v72 + 14) = v76;
      *(v72 + 22) = 2082;
      sub_1000D2A70(v563, v70, &qword_10169C970, &qword_101398A18);
      v77 = v70 + *(v601 + 48);
      (*(v71 + 16))(v574, v77 + *(v608 + 20), logc);
      sub_1002DBBF0(v77, type metadata accessor for RawSearchResult);
      v623(v70, v69);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      (*(v71 + 8))(v574, logc);
      sub_10000B3A8(v563, &qword_10169C970, &qword_101398A18);
      v81 = sub_1000136BC(v78, v80, (v0 + 528));

      *(v72 + 24) = v81;
      *(v72 + 32) = 2082;
      sub_1000D2A70(v578, v70, &qword_10169C970, &qword_101398A18);
      v82 = v70 + *(v601 + 48);
      LOBYTE(v81) = *(v82 + *(v608 + 36));
      sub_1002DBBF0(v82, type metadata accessor for RawSearchResult);
      v623(v70, v69);
      v83 = sub_100013454(v81);
      v85 = v84;
      sub_10000B3A8(v578, &qword_10169C970, &qword_101398A18);
      v86 = sub_1000136BC(v83, v85, (v0 + 528));

      *(v72 + 34) = v86;
      *(v72 + 42) = 2048;
      sub_1000D2A70(v585, v582, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v87 = *(v0 + 520);
      if (*(v87 + 16) && (v88 = sub_1000210EC(*(v0 + 1096)), (v89 & 1) != 0))
      {
        v90 = *(*(v87 + 56) + 8 * v88);
        swift_endAccess();
        v91 = *(v90 + 16);
      }

      else
      {
        swift_endAccess();
        v91 = 0;
      }

      v99 = *(v0 + 1632);
      v93 = *(v0 + 1568);
      v100 = *(v0 + 1560);
      v101 = *(v0 + 1272);
      v609 = *(v0 + 1152);
      v102 = *(v0 + 1104);
      v103 = *(v0 + 1096);
      v94 = *(v0 + 992);
      sub_1002DBBF0(v103 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      v623(v103, v101);
      sub_10000B3A8(v102, &qword_10169C970, &qword_101398A18);
      *(v72 + 44) = v91;
      _os_log_impl(&_mh_execute_header, v596, v592, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v72, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v100, v93);
      sub_10000B3A8(v94, &unk_1016C1120, &qword_1013C49D0);
      v98 = v609;
    }

    else
    {
      v92 = *(v0 + 1632);
      v93 = *(v0 + 1568);
      v94 = *(v0 + 1560);
      v602 = *(v0 + 1272);
      v609 = *(v0 + 1304);
      v619 = *(v0 + 1152);
      v95 = *(v0 + 1120);
      v96 = *(v0 + 1112);
      v97 = *(v0 + 1280) + 8;
      v597 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v94, v93);
      sub_10000B3A8(v96, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v95, &qword_10169C970, &qword_101398A18);
      v623(v609, v602);
      sub_10000B3A8(v597, &unk_1016C1120, &qword_1013C49D0);
      v98 = v619;
    }

    sub_10000B3A8(v98, &qword_10169C970, &qword_101398A18);
    v104 = *(v0 + 1552) + 1;
    if (v104 != *(v0 + 1544))
    {
      *(v0 + 1552) = v104;
      v324 = *(v0 + 1536);
      if (v104 >= *(v324 + 16))
      {
LABEL_334:
        __break(1u);
        goto LABEL_335;
      }

      v325 = *(v0 + 1480);
      v326 = v325 >> 62;
      v327 = v324 + 24 * v104;
      v328 = *(v327 + 32);
      *(v0 + 1560) = v328;
      v93 = *(v327 + 40);
      *(v0 + 1568) = v93;
      v329 = *(v327 + 48);
      *(v0 + 1580) = *(v327 + 52);
      *(v0 + 1576) = v329;
      if ((v325 >> 62) > 1)
      {
        if (v326 != 2)
        {
          v94 = 0;
          v330 = 0;
          v332 = 0;
          v331 = 0;
          goto LABEL_240;
        }

        v346 = *(v0 + 1472);
        v330 = *(v346 + 16);
        v94 = *(v346 + 24);
      }

      else
      {
        if (!v326)
        {
          v330 = 0;
          v331 = 0;
          v94 = BYTE6(v325);
          v332 = BYTE6(v325);
          goto LABEL_240;
        }

        v346 = *(v0 + 1472);
        v94 = v346 >> 32;
        v330 = v346;
      }

      sub_10002E98C(v346, v325);
      if (v94 < v330)
      {
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
        goto LABEL_337;
      }

      v325 = *(v0 + 1480);
      v368 = *(v0 + 1472);
      if (v325 >> 62 == 2)
      {
        v331 = *(v368 + 16);
        v332 = *(v368 + 24);
      }

      else
      {
        v332 = v368 >> 32;
        v331 = v368;
      }

LABEL_240:
      if (v332 < v94 || v94 < v331)
      {
        goto LABEL_336;
      }

      if (__OFSUB__(v94, v330))
      {
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
        goto LABEL_346;
      }

      if ((v94 - v330) >= 0x39)
      {
        v370 = v330 + 57;
        if (__OFADD__(v330, 57))
        {
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

        v371 = v325 >> 62;
        if ((v325 >> 62) > 1)
        {
          if (v371 == 2)
          {
            v375 = *(v0 + 1472);
            v372 = *(v375 + 16);
            v373 = *(v375 + 24);
          }

          else
          {
            v373 = 0;
            v372 = 0;
          }
        }

        else if (v371)
        {
          v372 = *(v0 + 1472);
          v373 = v372 >> 32;
          v372 = v372;
        }

        else
        {
          v372 = 0;
          v373 = BYTE6(v325);
        }

        if (v373 < v370 || v370 < v372)
        {
          goto LABEL_347;
        }

        v94 = 0;
        if (v371 <= 1)
        {
          if (v371)
          {
            v94 = *(v0 + 1472);
          }

LABEL_269:
          if (v370 < v94)
          {
            goto LABEL_338;
          }

LABEL_270:
          v383 = *(v0 + 1472);
          sub_100017D5C(v328, v93);
          sub_100017D5C(v328, v93);
          v384 = Data._Representation.subscript.getter();
          v386 = v385;
          sub_100006654(v383, v325);
          v387 = v386 >> 62;
          if ((v386 >> 62) > 1)
          {
            v94 = v613;
            if (v387 != 2)
            {
              goto LABEL_284;
            }

            v390 = *(v384 + 16);
            v389 = *(v384 + 24);
            v149 = __OFSUB__(v389, v390);
            v391 = v389 - v390;
            if (!v149)
            {
              if (v391 != 57)
              {
                goto LABEL_284;
              }

              goto LABEL_276;
            }

            __break(1u);
          }

          else
          {
            if (!v387)
            {
              v388 = BYTE6(v386);
              goto LABEL_283;
            }

            LODWORD(v388) = HIDWORD(v384) - v384;
            if (!__OFSUB__(HIDWORD(v384), v384))
            {
              v388 = v388;
LABEL_283:
              v94 = v613;
              if (v388 != 57)
              {
LABEL_284:
                v406 = v384;
                v407 = v386;
LABEL_285:
                sub_100016590(v406, v407);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_276:
              v392 = sub_100A7A194(v384, v386);
              if (v94)
              {
                v93 = v0 + 560;
                static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_279:
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v396 = swift_allocObject();
                  *(v396 + 16) = xmmword_101385D80;
                  *v93 = v94;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v397 = String.init<A>(describing:)();
                  v399 = v398;
                  *(v396 + 56) = &type metadata for String;
                  *(v396 + 64) = sub_100008C00();
                  *(v396 + 32) = v397;
                  *(v396 + 40) = v399;
                  os_log(_:dso:log:_:_:)();

                  sub_1001BAF88();
                  v400 = swift_allocError();
                  *v401 = 0;
                  swift_willThrow();

LABEL_280:
                  v632 = 0;
                  v633 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v402 = v633;
                  *(v0 + 504) = v632;
                  *(v0 + 512) = v402;
                  v403._countAndFlagsBits = 0xD000000000000021;
                  v403._object = 0x800000010134CB30;
                  String.append(_:)(v403);
                  *(v0 + 552) = v400;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  v404 = *(v0 + 504);
                  v405 = *(v0 + 512);
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_350:
                swift_once();
                goto LABEL_279;
              }

              v393 = v392;
              v394 = sub_100A7829C(v392, 0);
              *(v0 + 1584) = v394;
              *(v0 + 1592) = v395;
              v409 = v394;
              v410 = v395;
              v10 = CCECCryptorRelease();
              v411 = v410 >> 62;
              if ((v410 >> 62) > 1)
              {
                if (v411 != 2)
                {
                  v439 = 0;
                  goto LABEL_324;
                }

                v421 = v409[2];
                v420 = v409[3];
                v149 = __OFSUB__(v420, v421);
                v412 = v420 - v421;
                if (v149)
                {
                  __break(1u);
                  v422 = *(v0 + 792);
                  v423 = *(v0 + 712);

                  sub_100016590(v393, v328);

                  sub_100016590(v609, v582);

                  sub_1002DBBF0(v422, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v423, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
                  v424 = *(v0 + 1384);
                  v425 = *(v0 + 1376);
                  v426 = *(v0 + 1368);
                  v427 = *(v0 + 1344);
                  v428 = *(v0 + 1336);
                  v429 = *(v0 + 1328);
                  v430 = *(v0 + 1320);
                  v431 = *(v0 + 1312);
                  v444 = *(v0 + 1304);
                  v447 = *(v0 + 1296);
                  v449 = *(v0 + 1264);
                  v452 = *(v0 + 1256);
                  v455 = *(v0 + 1248);
                  v457 = *(v0 + 1240);
                  v459 = *(v0 + 1232);
                  v462 = *(v0 + 1208);
                  v465 = *(v0 + 1192);
                  v468 = *(v0 + 1168);
                  v471 = *(v0 + 1152);
                  v474 = *(v0 + 1144);
                  v477 = *(v0 + 1136);
                  v480 = *(v0 + 1128);
                  v482 = *(v0 + 1120);
                  v484 = *(v0 + 1112);
                  v486 = *(v0 + 1104);
                  v489 = *(v0 + 1096);
                  v493 = *(v0 + 1088);
                  v497 = *(v0 + 1080);
                  v501 = *(v0 + 1072);
                  v505 = *(v0 + 1064);
                  v509 = *(v0 + 1056);
                  v512 = *(v0 + 1048);
                  v515 = *(v0 + 1040);
                  v518 = *(v0 + 1032);
                  v521 = *(v0 + 1008);
                  v524 = *(v0 + 1000);
                  v527 = *(v0 + 992);
                  v530 = *(v0 + 984);
                  v532 = *(v0 + 976);
                  v537 = *(v0 + 968);
                  v541 = *(v0 + 960);
                  v544 = *(v0 + 952);
                  v547 = *(v0 + 944);
                  v550 = *(v0 + 936);
                  v553 = *(v0 + 912);
                  v556 = *(v0 + 888);
                  v559 = *(v0 + 864);
                  v562 = *(v0 + 856);
                  v567 = *(v0 + 832);
                  loge = *(v0 + 824);
                  v577 = *(v0 + 816);
                  v581 = *(v0 + 792);
                  v584 = *(v0 + 784);
                  v588 = *(v0 + 776);
                  v591 = *(v0 + 768);
                  v595 = *(v0 + 760);
                  v600 = *(v0 + 736);
                  v607 = *(v0 + 712);
                  v612 = *(v0 + 696);
                  v616 = *(v0 + 688);
                  v622 = *(v0 + 680);
                  v626 = *(v0 + 672);
                  v629 = *(v0 + 656);
                  v432 = *(v0 + 520);

                  v433 = *(v0 + 8);

                  return v433();
                }
              }

              else if (v411)
              {
                LODWORD(v412) = HIDWORD(v409) - v409;
                if (__OFSUB__(HIDWORD(v409), v409))
                {
                  goto LABEL_357;
                }

                v412 = v412;
              }

              else
              {
                v412 = BYTE6(v410);
              }

              if (v412 == 28)
              {
                sub_100016590(v384, v386);
                v434 = swift_task_alloc();
                *(v0 + 1600) = v434;
                *v434 = v0;
                v434[1] = sub_1002BA248;
                v435 = *(v0 + 1528);
                v436 = *(v0 + 1336);
                v437 = *(v0 + 1008);
                v438 = *(v0 + 648);

                return sub_1002D7014(v437, v328, v93, v435, v409, v410, 0, v436);
              }

              if (v411 == 2)
              {
                v441 = v409[2];
                v440 = v409[3];
                v439 = v440 - v441;
                if (!__OFSUB__(v440, v441))
                {
                  goto LABEL_324;
                }

                __break(1u);
              }

              else if (v411 == 1)
              {
                if (__OFSUB__(HIDWORD(v409), v409))
                {
                  goto LABEL_358;
                }

                v439 = HIDWORD(v409) - v409;
                goto LABEL_324;
              }

              v439 = BYTE6(v410);
LABEL_324:
              sub_100018350();
              v400 = swift_allocError();
              *v442 = 28;
              *(v442 + 8) = v439;
              *(v442 + 16) = 0;
              swift_willThrow();
              sub_100016590(v409, v410);
              goto LABEL_280;
            }
          }

          __break(1u);
LABEL_353:
          swift_once();
          goto LABEL_256;
        }

        if (v371 != 2)
        {
          goto LABEL_269;
        }

        v374 = *(v0 + 1472);
      }

      else
      {
        v369 = v325 >> 62;
        if ((v325 >> 62) <= 1)
        {
          if (!v369)
          {
            v94 = 0;
            goto LABEL_270;
          }

          v382 = *(v0 + 1472);
          v370 = v382 >> 32;
          v94 = v382;
          goto LABEL_269;
        }

        if (v369 != 2)
        {
          v94 = 0;
          goto LABEL_270;
        }

        v374 = *(v0 + 1472);
        v370 = *(v374 + 24);
      }

      v94 = *(v374 + 16);
      goto LABEL_269;
    }

    v105 = *(v0 + 1480);
    v106 = *(v0 + 1472);
    v107 = *(v0 + 1384);
    v108 = *(v0 + 1344);
    v109 = *(v0 + 1336);
    v110 = *(v0 + 1280);
    v111 = *(v0 + 1272);

    sub_100006654(v106, v105);
    v112 = *(v110 + 8);
    v112(v108, v111);
    sub_1002DBBF0(v107, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v112(v109, v111);
    v113 = *(v0 + 1408) + 1;
    if (v113 == *(v0 + 1400))
    {
      break;
    }

    while (1)
    {
      *(v0 + 1408) = v113;
      v334 = *(v0 + 632);
      if (!v334)
      {
        v334 = _swiftEmptyArrayStorage;
      }

      if (v113 >= v334[2])
      {
        break;
      }

      v335 = *(v0 + 1384);
      v336 = *(v0 + 1352);
      v337 = *(v0 + 1280);
      v338 = *(v0 + 1272);
      v339 = *(v0 + 1264);
      sub_1002DB760(v334 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v113, v335, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v341 = *(v335 + 16);
      v340 = *(v335 + 24);
      sub_1000D2A70(v335 + *(v336 + 28), v339, &qword_1016980D0, &unk_10138F3B0);
      v342 = *(v337 + 48);
      *(v0 + 1416) = v342;
      *(v0 + 1424) = (v337 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v342(v339, 1, v338) != 1)
      {
        v358 = *(v0 + 1344);
        v359 = *(v0 + 1280);
        v360 = *(v0 + 1272);
        v361 = *(v0 + 1264);
        v362 = *(v0 + 1256);
        v363 = *(v359 + 32);
        *(v0 + 1432) = v363;
        *(v0 + 1440) = (v359 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v363(v358, v361, v360);
        v364 = *(v359 + 16);
        *(v0 + 1448) = v364;
        *(v0 + 1456) = (v359 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v364(v362, v358, v360);
        (*(v359 + 56))(v362, 0, 1, v360);
        v365 = swift_task_alloc();
        *(v0 + 1464) = v365;
        *v365 = v0;
        v365[1] = sub_1002B09AC;
        v366 = *(v0 + 1256);
        v367 = *(v0 + 648);

        return sub_1002D5B7C(v341, v340, v366);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v627, qword_10177A818);
      v343 = Logger.logObject.getter();
      v344 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v343, v344))
      {
        v345 = swift_slowAlloc();
        *v345 = 0;
        _os_log_impl(&_mh_execute_header, v343, v344, "Missing share id in payload.", v345, 2u);
      }

      v333 = *(v0 + 1384);

      sub_1002DBBF0(v333, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v113 = *(v0 + 1408) + 1;
      if (v113 == *(v0 + 1400))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    swift_once();
  }

LABEL_33:
  if (*(v0 + 632))
  {
    v114 = *(v0 + 632);
  }

  if (*(v0 + 624))
  {
    v93 = *(v0 + 624);
  }

  else
  {
    v93 = _swiftEmptyArrayStorage;
  }

  v542 = *(v93 + 16);
  if (!v542)
  {

LABEL_228:

    v347 = *(v0 + 1384);
    v348 = *(v0 + 1376);
    v349 = *(v0 + 1368);
    v350 = *(v0 + 1344);
    v351 = *(v0 + 1336);
    v352 = *(v0 + 1328);
    v353 = *(v0 + 1320);
    v354 = *(v0 + 1312);
    v355 = *(v0 + 1304);
    v443 = *(v0 + 1296);
    v446 = *(v0 + 1264);
    v448 = *(v0 + 1256);
    v451 = *(v0 + 1248);
    v454 = *(v0 + 1240);
    v456 = *(v0 + 1232);
    v458 = *(v0 + 1208);
    v461 = *(v0 + 1192);
    v464 = *(v0 + 1168);
    v467 = *(v0 + 1152);
    v470 = *(v0 + 1144);
    v473 = *(v0 + 1136);
    v476 = *(v0 + 1128);
    v479 = *(v0 + 1120);
    v481 = *(v0 + 1112);
    v483 = *(v0 + 1104);
    v485 = *(v0 + 1096);
    v488 = *(v0 + 1088);
    v492 = *(v0 + 1080);
    v496 = *(v0 + 1072);
    v500 = *(v0 + 1064);
    v504 = *(v0 + 1056);
    v508 = *(v0 + 1048);
    v511 = *(v0 + 1040);
    v514 = *(v0 + 1032);
    v517 = *(v0 + 1008);
    v520 = *(v0 + 1000);
    v523 = *(v0 + 992);
    v526 = *(v0 + 984);
    v529 = *(v0 + 976);
    v531 = *(v0 + 968);
    v536 = *(v0 + 960);
    v540 = *(v0 + 952);
    v543 = *(v0 + 944);
    v546 = *(v0 + 936);
    v549 = *(v0 + 912);
    v552 = *(v0 + 888);
    v555 = *(v0 + 864);
    v558 = *(v0 + 856);
    v561 = *(v0 + 832);
    v566 = *(v0 + 824);
    logd = *(v0 + 816);
    v576 = *(v0 + 792);
    v580 = *(v0 + 784);
    v583 = *(v0 + 776);
    v587 = *(v0 + 768);
    v590 = *(v0 + 760);
    v594 = *(v0 + 736);
    v599 = *(v0 + 712);
    v606 = *(v0 + 696);
    v611 = *(v0 + 688);
    v615 = *(v0 + 680);
    v621 = *(v0 + 672);
    v628 = *(v0 + 656);
    swift_beginAccess();
    v625 = *(v0 + 520);

    v356 = *(v0 + 8);

    return v356(v625);
  }

  v115 = *(v0 + 1280);
  v450 = (v0 + 600);
  v116 = *(v0 + 1024);
  v117 = *(v0 + 1016);
  v118 = *(v0 + 848);
  v453 = *(v0 + 808);
  v579 = *(v0 + 800);
  v560 = *(v0 + 792);
  v620 = *(v0 + 776);
  v522 = *(v0 + 752);
  v557 = *(v0 + 744);
  v119 = *(v0 + 728);
  v548 = v93 + 32;
  v513 = *(v0 + 712);
  v598 = (v119 + 104);
  v593 = (v119 + 8);
  v575 = *(v0 + 704);
  v478 = (*(v0 + 928) + 56);
  v519 = (v118 + 16);
  v475 = *(v0 + 664);
  v472 = (v118 + 56);
  v516 = (v118 + 8);
  v469 = (v115 + 16);
  v463 = (v116 + 48);
  v466 = (v116 + 56);
  v545 = *(*(v0 + 640) + 16);
  v528 = (v115 + 8);
  v589 = enum case for HashAlgorithm.sha256(_:);

  v120 = 0;
  v460 = xmmword_101385D80;
  v94 = v613;
  v525 = v93;
  v551 = v117;
  while (2)
  {
    if (v120 >= *(v93 + 16))
    {
      goto LABEL_339;
    }

    v554 = v120;
    v121 = (v548 + 24 * v120);
    v123 = *v121;
    v122 = v121[1];
    v582 = v122;
    v610 = *v121;
    v586 = v121[2];
    if (!v545)
    {
      sub_100017D5C(v123, v122);

LABEL_150:
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v627, qword_10177A818);
      sub_100017D5C(v610, v582);

      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.error.getter();
      sub_100016590(v610, v582);

      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v632 = v180;
        *v179 = 141558275;
        *(v179 + 4) = 1752392040;
        *(v179 + 12) = 2081;
        *(v0 + 488) = v610;
        *(v0 + 496) = v582;
        sub_10025DB08();
        v181 = RawRepresentable<>.hexString.getter();
        v183 = sub_1000136BC(v181, v182, &v632);

        *(v179 + 14) = v183;
        _os_log_impl(&_mh_execute_header, v177, v178, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v179, 0x16u);
        sub_100007BAC(v180);
      }

      sub_100016590(v610, v582);

      v93 = v525;
      goto LABEL_155;
    }

    v124 = *(v0 + 640) + ((*(v522 + 80) + 32) & ~*(v522 + 80));
    sub_100017D5C(v123, v122);
    if (v123)
    {
      v125 = 0;
    }

    else
    {
      v125 = v122 == 0xC000000000000000;
    }

    v126 = !v125;
    log = v126;
    v613 = v122 >> 62;
    v564 = BYTE6(v122);
    v603 = *(v522 + 72);
    v127 = __OFSUB__(HIDWORD(v123), v123);
    v538 = v127;
    v533 = HIDWORD(v123) - v123;

    v128 = v545;
LABEL_55:
    v129 = *(v0 + 776);
    sub_1002DB760(v124, v129, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v130 = *v129;
    v131 = *(v620 + 8);
    v93 = v131 >> 62;
    v132 = v94;
    if ((v131 >> 62) > 1)
    {
      if (v93 == 2)
      {
        v94 = *(v130 + 16);
        v134 = *(v130 + 24);
        sub_100017D5C(v130, *(v620 + 8));
        v133 = *(v130 + 16);
        v135 = *(v130 + 24);
      }

      else
      {
        v94 = 0;
        v134 = 0;
        v135 = 0;
        v133 = 0;
      }
    }

    else if (v93)
    {
      v94 = v130;
      v134 = v130 >> 32;
      sub_100017D5C(v130, *(v620 + 8));
      v135 = v130 >> 32;
      v133 = v130;
    }

    else
    {
      v94 = 0;
      v133 = 0;
      v134 = BYTE6(v131);
      v135 = BYTE6(v131);
    }

    if (v135 < v94 || v94 < v133)
    {
      goto LABEL_326;
    }

    if (v93 > 1)
    {
      if (v93 == 2)
      {
        v136 = *(v130 + 16);
        v137 = *(v130 + 24);
      }

      else
      {
        v137 = 0;
        v136 = 0;
      }
    }

    else if (v93)
    {
      v136 = v130;
      v137 = v130 >> 32;
    }

    else
    {
      v136 = 0;
      v137 = BYTE6(v131);
    }

    if (v137 < v134 || v134 < v136)
    {
      goto LABEL_327;
    }

    if (__OFSUB__(v134, v94))
    {
      goto LABEL_328;
    }

    if ((v134 - v94) >= 0x39)
    {
      v138 = v94 + 57;
      if (!__OFADD__(v94, 57))
      {
        v94 = v132;
        if (v93 > 1)
        {
          if (v93 == 2)
          {
            v139 = *(v130 + 16);
            v140 = *(v130 + 24);
          }

          else
          {
            v140 = 0;
            v139 = 0;
          }
        }

        else if (v93)
        {
          v139 = v130;
          v140 = v130 >> 32;
        }

        else
        {
          v139 = 0;
          v140 = BYTE6(v131);
        }

        if (v140 < v138 || v138 < v139)
        {
          goto LABEL_332;
        }

        v141 = 0;
        if (v93 <= 1)
        {
          if (v93)
          {
            goto LABEL_94;
          }

          goto LABEL_97;
        }

        if (v93 == 3)
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }

      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
      goto LABEL_334;
    }

    v94 = v132;
    if (v93 > 1)
    {
      if (v93 != 2)
      {
        goto LABEL_98;
      }

      v138 = *(v130 + 24);
LABEL_96:
      v141 = *(v130 + 16);
      goto LABEL_97;
    }

    if (!v93)
    {
      goto LABEL_98;
    }

    v138 = v130 >> 32;
LABEL_94:
    v141 = v130;
LABEL_97:
    if (v138 < v141)
    {
      goto LABEL_329;
    }

LABEL_98:
    v142 = Data._Representation.subscript.getter();
    v144 = v143;
    sub_100016590(v130, v131);
    v145 = v144 >> 62;
    if ((v144 >> 62) > 1)
    {
      if (v145 != 2)
      {
        goto LABEL_287;
      }

      v148 = *(v142 + 16);
      v147 = *(v142 + 24);
      v149 = __OFSUB__(v147, v148);
      v146 = v147 - v148;
      if (v149)
      {
        goto LABEL_340;
      }
    }

    else if (v145)
    {
      LODWORD(v146) = HIDWORD(v142) - v142;
      if (__OFSUB__(HIDWORD(v142), v142))
      {
        goto LABEL_341;
      }

      v146 = v146;
    }

    else
    {
      v146 = BYTE6(v144);
    }

    if (v146 != 57)
    {
LABEL_287:
      v406 = v142;
      v407 = v144;
      goto LABEL_285;
    }

    v150 = sub_100A7A194(v142, v144);
    if (!v94)
    {
      v151 = sub_100A7829C(v150, 0);
      v93 = v152;
      v10 = CCECCryptorRelease();
      v153 = v93 >> 62;
      if ((v93 >> 62) > 1)
      {
        if (v153 == 2)
        {
          v156 = *(v151 + 16);
          v155 = *(v151 + 24);
          v149 = __OFSUB__(v155, v156);
          v154 = v155 - v156;
          if (v149)
          {
            goto LABEL_343;
          }

          goto LABEL_118;
        }

        v408 = 0;
LABEL_300:
        sub_100018350();
        v380 = swift_allocError();
        *v415 = 28;
        *(v415 + 8) = v408;
        *(v415 + 16) = 0;
        swift_willThrow();
        sub_100016590(v151, v93);
        goto LABEL_301;
      }

      if (v153)
      {
        LODWORD(v154) = HIDWORD(v151) - v151;
        if (__OFSUB__(HIDWORD(v151), v151))
        {
          goto LABEL_342;
        }

        v154 = v154;
      }

      else
      {
        v154 = BYTE6(v93);
      }

LABEL_118:
      if (v154 == 28)
      {
        v623 = v124;
        v157 = v128;
        v158 = *(v0 + 736);
        v159 = *(v0 + 720);
        sub_100016590(v142, v144);
        (*v598)(v158, v589, v159);
        v160 = Data.hash(algorithm:)();
        v162 = v161;
        sub_100016590(v151, v93);
        (*v593)(v158, v159);
        v163 = v162 >> 62;
        if (v162 >> 62 == 3)
        {
          if (v160)
          {
            v164 = 0;
          }

          else
          {
            v164 = v162 == 0xC000000000000000;
          }

          v165 = v613;
          v167 = !v164 || v613 < 3;
          if (((v167 | log) & 1) == 0)
          {
            v184 = 0;
            v185 = 0xC000000000000000;
            goto LABEL_159;
          }

          v168 = v157;
          v169 = 0;
          v170 = v623;
          if (v613 > 1)
          {
LABEL_143:
            if (v165 != 2)
            {
              if (!v169)
              {
                goto LABEL_157;
              }

LABEL_53:
              sub_100016590(v160, v162);
              v94 = 0;
              goto LABEL_54;
            }

            v175 = *(v610 + 16);
            v174 = *(v610 + 24);
            v149 = __OFSUB__(v174, v175);
            v173 = v174 - v175;
            if (v149)
            {
              goto LABEL_344;
            }

            goto LABEL_145;
          }
        }

        else
        {
          v165 = v613;
          v168 = v157;
          if (v163 == 2)
          {
            v172 = *(v160 + 16);
            v171 = *(v160 + 24);
            v149 = __OFSUB__(v171, v172);
            v169 = v171 - v172;
            v170 = v623;
            if (v149)
            {
              goto LABEL_349;
            }

            if (v613 > 1)
            {
              goto LABEL_143;
            }
          }

          else
          {
            v170 = v623;
            if (v163 == 1)
            {
              LODWORD(v169) = HIDWORD(v160) - v160;
              if (__OFSUB__(HIDWORD(v160), v160))
              {
                goto LABEL_348;
              }

              v169 = v169;
              if (v613 > 1)
              {
                goto LABEL_143;
              }
            }

            else
            {
              v169 = BYTE6(v162);
              if (v613 > 1)
              {
                goto LABEL_143;
              }
            }
          }
        }

        v173 = v564;
        if (v165)
        {
          v173 = v533;
          if (v538)
          {
            goto LABEL_345;
          }
        }

LABEL_145:
        if (v169 != v173)
        {
          goto LABEL_53;
        }

        if (v169 < 1)
        {
LABEL_157:
          v184 = v160;
          v185 = v162;
LABEL_159:
          sub_100016590(v184, v185);
          v94 = 0;
LABEL_160:
          v186 = *(v0 + 792);
          v187 = *(v0 + 784);
          sub_1002DB7C8(*(v0 + 776), v187, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v187, v186, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v93 = v525;
          v623 = *(v586 + 16);
          if (v623)
          {
            v614 = v586 + ((*(v575 + 80) + 32) & ~*(v575 + 80));

            v188 = 0;
            while (v188 < *(v586 + 16))
            {
              v190 = *(v0 + 792);
              sub_1002DB760(v614 + *(v575 + 72) * v188, *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v191 = *v190;
              v192 = *(v560 + 8);
              v193 = sub_100496ABC();
              v194 = **(v0 + 712);
              v195 = *(v513 + 8);
              v196 = **(v0 + 792);
              v197 = *(v560 + 8);
              sub_100017D5C(v196, v197);
              sub_10002EA98(57, v196, v197, &v632);
              sub_100496F68(v632, v633, &v630);
              v198 = v631;
              if (v631 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v604 = *(v0 + 792);
              v199 = v630;
              v200 = PublicKey.advertisement.getter(v630, v631);
              v202 = v201;
              v10 = sub_100006654(v199, v198);
              v203 = v195 >> 62;
              loga = *(v557 + 20);
              if ((v195 >> 62) > 1)
              {
                if (v203 == 2)
                {
                  v206 = *(v194 + 16);
                  v205 = *(v194 + 24);
                  v204 = v205 - v206;
                  if (__OFSUB__(v205, v206))
                  {
                    goto LABEL_355;
                  }
                }

                else
                {
                  v204 = 0;
                }
              }

              else if (v203)
              {
                if (__OFSUB__(HIDWORD(v194), v194))
                {
                  __break(1u);
LABEL_355:
                  __break(1u);
                  goto LABEL_356;
                }

                v204 = HIDWORD(v194) - v194;
              }

              else
              {
                v204 = BYTE6(v195);
              }

              sub_100A2A240(3);
              v208 = v207;
              v209 = v193;
              sub_100017D5C(v194, v195);
              sub_100017D5C(v200, v202);
              if (v204 >= v208)
              {
                v210 = (v0 + 672);
                sub_100A2AA58(v209, v194, v195, v200, v202, *(v0 + 672));
              }

              else
              {
                v210 = (v0 + 680);
                sub_100A2B118(v209, v194, v195, v200, v202, *(v0 + 680));
              }

              v494 = v202;
              v498 = v200;
              v565 = v188;
              v211 = *v210;
              v534 = *(v0 + 1016);
              v539 = v209;
              v506 = *(v0 + 1000);
              v510 = *(v0 + 1272);
              v212 = *(v0 + 976);
              v487 = *(v0 + 968);
              v213 = *(v0 + 920);
              v214 = *(v0 + 856);
              v215 = *(v0 + 840);
              v216 = *(v0 + 832);
              v217 = *(v0 + 696);
              v218 = *(v0 + 688);
              v219 = *(v0 + 656);
              sub_1002DB7C8(v211, v218, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v218, v217, type metadata accessor for BeaconPayloadv1);
              v220 = v212;
              v490 = v212;
              (*v478)(v212, 1, 1, v213);
              v502 = *(v217 + v475[10]);
              v221 = *v519;
              (*v519)(v214, v217 + v475[5], v215);
              v222 = *(v217 + v475[7]);
              v223 = *(v217 + v475[8]);
              v224 = *(v217 + v475[9]);
              (*v472)(v219, 1, 1, v215);
              sub_1000D2A70(v220, v487, &unk_1016C1120, &qword_1013C49D0);
              v445 = v221;
              v221(&v216[v579[5]], v214, v215);
              sub_1000D2A70(v219, &v216[v579[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v487, &v216[v579[11]], &unk_1016C1120, &qword_1013C49D0);
              v225 = &v216[v579[12]];
              UUID.init()();
              sub_100016590(v498, v494);
              sub_10000B3A8(v487, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v219, &unk_101696900, &unk_10138B1E0);
              v226 = *v516;
              (*v516)(v214, v215);
              sub_10000B3A8(v490, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v217, type metadata accessor for BeaconPayloadv1);
              *v216 = v502;
              *&v216[v579[6]] = v222;
              *&v216[v579[7]] = v223;
              *&v216[v579[8]] = v224;
              v216[v579[9]] = 15;
              *&v216[v579[13]] = 256;
              v227 = *(v551 + 48);
              (*v469)(v506, loga + v604, v510);
              sub_1002DB7C8(v216, v506 + v227, type metadata accessor for RawSearchResult);
              (*v466)(v506, 0, 1, v534);
              if ((*v463)(v506, 1, v534) == 1)
              {
                v228 = *(v0 + 1000);

                sub_10000B3A8(v228, &qword_10169C968, &qword_101398A10);
                v229 = v565;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v230 = *(v0 + 792);
                v231 = *(v0 + 760);
                sub_1000076D4(v627, qword_10177A818);
                sub_1002DB760(v230, v231, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v93 = Logger.logObject.getter();
                v232 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v93, v232))
                {
                  v233 = *(v0 + 1272);
                  v234 = *(v0 + 760);
                  v235 = swift_slowAlloc();
                  v236 = swift_slowAlloc();
                  v632 = v236;
                  *v235 = 141558275;
                  *(v235 + 4) = 1752392040;
                  *(v235 + 12) = 2081;
                  v237 = *(v557 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v238 = dispatch thunk of CustomStringConvertible.description.getter();
                  v240 = v239;
                  v241 = v234;
                  v229 = v565;
                  sub_1002DBBF0(v241, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v242 = sub_1000136BC(v238, v240, &v632);

                  *(v235 + 14) = v242;
                  _os_log_impl(&_mh_execute_header, v93, v232, "Could not create search result for beacon: %{private,mask.hash}s.", v235, 0x16u);
                  sub_100007BAC(v236);
                }

                else
                {
                  v189 = *(v0 + 760);

                  sub_1002DBBF0(v189, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v243 = *(v0 + 1088);
                v244 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v243, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v243, v244, &qword_10169C970, &qword_101398A18);
                v245 = *(v551 + 48);
                swift_beginAccess();
                v246 = sub_1005CAD18(v244, *(v0 + 520));
                v247 = *(v0 + 1272);
                v499 = v226;
                if (v246)
                {
                  v248 = v246;
                  v249 = *(v0 + 1088);
                  v250 = *(v0 + 1080);
                  v251 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v244 + v245, type metadata accessor for RawSearchResult);
                  v605 = *v528;
                  (*v528)(v250, v247);
                  sub_1000D2A70(v249, v251, &qword_10169C970, &qword_101398A18);
                  v252 = (v251 + *(v551 + 48));
                  v253 = *(v248 + 40);
                  Hasher.init(_seed:)();
                  sub_100D15128();
                  v254 = Hasher._finalize()();
                  v255 = -1 << *(v248 + 32);
                  v256 = v254 & ~v255;
                  if ((*(v248 + 56 + ((v256 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v256))
                  {
                    v257 = ~v255;
                    v258 = *v252;
                    v259 = *(v453 + 72);
                    do
                    {
                      v260 = *(v0 + 816);
                      sub_1002DB760(*(v248 + 48) + v256 * v259, v260, type metadata accessor for RawSearchResult);
                      v261 = *(v0 + 816);
                      if (*v260 == v258 && (v262 = v579[5], v263 = static Date.== infix(_:_:)(), v261 = *(v0 + 816), (v263 & 1) != 0) && *(v261 + v579[6]) == *&v252[v579[6]] && *(v261 + v579[7]) == *&v252[v579[7]] && *(v261 + v579[8]) == *&v252[v579[8]])
                      {
                        v264 = v579[12];
                        v265 = *(v0 + 816);
                        v266 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v265, type metadata accessor for RawSearchResult);
                        if (v266)
                        {
                          goto LABEL_197;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v261, type metadata accessor for RawSearchResult);
                      }

                      v256 = (v256 + 1) & v257;
                    }

                    while (((*(v248 + 56 + ((v256 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v256) & 1) != 0);
                  }

                  v267 = *(v0 + 832);
                  v268 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v252, v267, type metadata accessor for RawSearchResult);
                  v632 = v248;
                  sub_100DFE348(v267, v256, v268);
                  v248 = v632;
LABEL_197:
                  sub_1002DBBF0(v252, type metadata accessor for RawSearchResult);
                  v269 = *(v0 + 1128);
                  v270 = *(v0 + 1088);
                  v605(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v270, v269, &qword_10169C970, &qword_101398A18);
                  v271 = *(v551 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v248, v269);
                }

                else
                {
                  v272 = *(v0 + 1128);
                  v273 = *(v0 + 1088);
                  v274 = *(v0 + 1080);
                  v275 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v244 + v245, type metadata accessor for RawSearchResult);
                  v276 = *v528;
                  (*v528)(v274, v247);
                  sub_1000D2A70(v273, v272, &qword_10169C970, &qword_101398A18);
                  v271 = *(v551 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v277 = *(v453 + 72);
                  v278 = (*(v453 + 80) + 32) & ~*(v453 + 80);
                  v279 = swift_allocObject();
                  *(v279 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v273, v275, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v275 + *(v551 + 48), v279 + v278, type metadata accessor for RawSearchResult);
                  v276(v275, v247);
                  v280 = sub_10112A090(v279);
                  swift_setDeallocating();
                  sub_1002DBBF0(v279 + v278, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v281 = *(v0 + 520);
                  v282 = swift_isUniquelyReferenced_nonNull_native();
                  v632 = *(v0 + 520);
                  sub_100FFC200(v280, v272, v282);
                  v605 = v276;
                  v276(v272, v247);
                  *(v0 + 520) = v632;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v271, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v283 = *(v0 + 1088);
                v284 = *(v0 + 1056);
                v285 = *(v0 + 1048);
                v286 = *(v0 + 1040);
                v287 = *(v0 + 792);
                v288 = *(v0 + 768);
                sub_1000076D4(v627, qword_10177A818);
                sub_1002DB760(v287, v288, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v283, v284, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v283, v285, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v283, v286, &qword_10169C970, &qword_101398A18);
                v289 = Logger.logObject.getter();
                v290 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v289, v290))
                {
                  v535 = v290;
                  logb = v289;
                  v291 = *(v0 + 1272);
                  v292 = *(v0 + 1128);
                  v293 = *(v0 + 1056);
                  v503 = *(v0 + 1032);
                  v507 = *(v0 + 1040);
                  v491 = *(v0 + 856);
                  v495 = *(v0 + 1048);
                  v294 = *(v0 + 840);
                  v295 = *(v0 + 768);
                  v296 = swift_slowAlloc();
                  v632 = swift_slowAlloc();
                  *v296 = 141559043;
                  *(v296 + 4) = 1752392040;
                  *(v296 + 12) = 2081;
                  v297 = *(v557 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v298 = dispatch thunk of CustomStringConvertible.description.getter();
                  v300 = v299;
                  sub_1002DBBF0(v295, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v301 = sub_1000136BC(v298, v300, &v632);

                  *(v296 + 14) = v301;
                  *(v296 + 22) = 2082;
                  sub_1000D2A70(v293, v292, &qword_10169C970, &qword_101398A18);
                  v302 = v292 + *(v551 + 48);
                  v445(v491, v302 + v579[5], v294);
                  sub_1002DBBF0(v302, type metadata accessor for RawSearchResult);
                  v605(v292, v291);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
                  v303 = dispatch thunk of CustomStringConvertible.description.getter();
                  v305 = v304;
                  v499(v491, v294);
                  sub_10000B3A8(v293, &qword_10169C970, &qword_101398A18);
                  v306 = sub_1000136BC(v303, v305, &v632);

                  *(v296 + 24) = v306;
                  *(v296 + 32) = 2082;
                  sub_1000D2A70(v495, v292, &qword_10169C970, &qword_101398A18);
                  v307 = v292 + *(v551 + 48);
                  LOBYTE(v306) = *(v307 + v579[9]);
                  sub_1002DBBF0(v307, type metadata accessor for RawSearchResult);
                  v605(v292, v291);
                  v308 = sub_100013454(v306);
                  v310 = v309;
                  sub_10000B3A8(v495, &qword_10169C970, &qword_101398A18);
                  v311 = sub_1000136BC(v308, v310, &v632);

                  *(v296 + 34) = v311;
                  *(v296 + 42) = 2048;
                  sub_1000D2A70(v507, v503, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v312 = *(v0 + 520);
                  if (*(v312 + 16) && (v313 = sub_1000210EC(*(v0 + 1032)), (v314 & 1) != 0))
                  {
                    v315 = *(*(v312 + 56) + 8 * v313);
                    swift_endAccess();
                    v316 = *(v315 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v316 = 0;
                  }

                  v229 = v565;
                  v320 = *(v0 + 1272);
                  v321 = *(v0 + 1088);
                  v322 = *(v0 + 1040);
                  v323 = *(v0 + 1032);
                  sub_1002DBBF0(v323 + *(v551 + 48), type metadata accessor for RawSearchResult);
                  v605(v323, v320);
                  v93 = &qword_10169C970;
                  sub_10000B3A8(v322, &qword_10169C970, &qword_101398A18);
                  *(v296 + 44) = v316;
                  _os_log_impl(&_mh_execute_header, logb, v535, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v296, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v321, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v317 = *(v0 + 1088);
                  v93 = *(v0 + 1056);
                  v318 = *(v0 + 1048);
                  v319 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v318, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v93, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v319, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v317, &qword_10169C970, &qword_101398A18);
                  v229 = v565;
                }
              }

              v188 = v229 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v94 = 0;
              if (v188 == v623)
              {

                sub_100016590(v610, v582);

                v94 = 0;
                v93 = v525;
                goto LABEL_210;
              }
            }

            goto LABEL_333;
          }

          sub_100016590(v610, v582);

LABEL_210:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_155:
          v120 = v554 + 1;
          if (v554 + 1 == v542)
          {
            goto LABEL_228;
          }

          continue;
        }

        sub_100017D5C(v610, v582);
        sub_100017D5C(v610, v582);
        sub_100017D5C(v160, v162);
        v176 = sub_100F0B1BC(v160, v162, v610, v582);
        sub_100016590(v160, v162);
        sub_100016590(v160, v162);
        sub_100016590(v610, v582);
        if (v176)
        {
          goto LABEL_160;
        }

LABEL_54:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v124 = v170 + v603;
        v128 = v168 - 1;
        if (!v128)
        {
          goto LABEL_150;
        }

        goto LABEL_55;
      }

      if (v153 == 2)
      {
        v414 = *(v151 + 16);
        v413 = *(v151 + 24);
        v408 = v413 - v414;
        if (!__OFSUB__(v413, v414))
        {
          goto LABEL_300;
        }

        __break(1u);
      }

      else if (v153 == 1)
      {
        if (!__OFSUB__(HIDWORD(v151), v151))
        {
          v408 = HIDWORD(v151) - v151;
          goto LABEL_300;
        }

LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
        return _swift_task_switch(v10, v11, v12);
      }

      v408 = BYTE6(v93);
      goto LABEL_300;
    }

    break;
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_353;
  }

LABEL_256:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v376 = swift_allocObject();
  *(v376 + 16) = v460;
  *v450 = v94;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v377 = String.init<A>(describing:)();
  v379 = v378;
  *(v376 + 56) = &type metadata for String;
  *(v376 + 64) = sub_100008C00();
  *(v376 + 32) = v377;
  *(v376 + 40) = v379;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v380 = swift_allocError();
  *v381 = 0;
  swift_willThrow();

LABEL_301:
  v632 = 0;
  v633 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v416 = v633;
  *(v0 + 472) = v632;
  *(v0 + 480) = v416;
  v417._countAndFlagsBits = 0xD000000000000021;
  v417._object = 0x800000010134CB30;
  String.append(_:)(v417);
  *(v0 + 584) = v380;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v418 = *(v0 + 472);
  v419 = *(v0 + 480);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002C99B0()
{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1392);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1272);
  v8 = (*(v0 + 1776) + 24) & ~*(v0 + 1776);
  (*(v0 + 1448))(v5, *(v0 + 1336), v7);
  v9 = swift_allocObject();
  *(v0 + 1736) = v9;
  *(v9 + 16) = v4;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1744) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_1002C9B20;

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v9, v12);
}

uint64_t sub_1002C9B20()
{
  v1 = *(*v0 + 1744);
  v2 = *(*v0 + 1736);
  v3 = *(*v0 + 648);
  v5 = *v0;

  return _swift_task_switch(sub_1002C9C4C, v3, 0);
}

uint64_t sub_1002C9C4C()
{
  v646 = v0;
  if (v0[10])
  {
    v638 = *(v0 + 1580);
    v633 = *(v0 + 1576);
    v1 = v0[182];
    v2 = v0[181];
    v3 = v0[167];
    v4 = v0[159];
    v5 = v0[144];
    v6 = v0[143];
    v7 = v0[127];
    v8 = v0[117];
    v9 = v0;
    v10 = v0[115];
    v627 = v9[108];
    v11 = v9[106];
    v613 = v7;
    v620 = v9[105];
    v608 = v9[100];
    sub_10000A748((v9 + 7), (v9 + 12));
    v2(v8, v3, v4);
    sub_10001F280((v9 + 22), v8 + *(v10 + 20));
    sub_1000D2A70(v5, v6, &qword_10169C970, &qword_101398A18);
    v12 = v6 + *(v613 + 48);
    (*(v11 + 16))(v627, v12 + *(v608 + 20), v620);
    sub_1002DBBF0(v12, type metadata accessor for RawSearchResult);
    v13 = swift_task_alloc();
    v14 = v638;
    v9[219] = v13;
    if (v633 == 3)
    {
      v14 = 0;
    }

    *v13 = v9;
    v13[1] = sub_1002CD898;
    v15 = v9[108];
    v16 = v9[117];

    return sub_1010B7D4C(v16, v15, v14 | ((v633 == 3) << 8), (v9 + 12));
  }

  v18 = v0[120];
  sub_100007BAC(v0 + 22);
  sub_10000B3A8((v0 + 27), &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v18, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_10000B3A8((v0 + 7), &qword_101696920, &unk_10138B200);
  v19 = v0[216];
  v20 = v0[167];
  swift_beginAccess();
  v21 = sub_1005CAD18(v20, v0[65]);
  v604 = v19;
  if (v21)
  {
    v22 = v21;
    v23 = v0[144];
    v24 = v0[142];
    v25 = v0;
    v26 = v0[127];
    swift_endAccess();
    sub_1000D2A70(v23, v24, &qword_10169C970, &qword_101398A18);
    v27 = (v24 + *(v26 + 48));
    v28 = *(v22 + 40);
    Hasher.init(_seed:)();
    sub_100D15128();
    v29 = Hasher._finalize()();
    v30 = -1 << *(v22 + 32);
    v31 = v29 & ~v30;
    if ((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v32 = ~v30;
      v33 = *v27;
      v34 = *(v25[101] + 72);
      v35 = v25;
      do
      {
        v36 = v35[103];
        sub_1002DB760(*(v22 + 48) + v31 * v34, v36, type metadata accessor for RawSearchResult);
        v37 = v35[103];
        if (*v36 == v33 && (v38 = *(v35[100] + 20), v39 = static Date.== infix(_:_:)(), v37 = v35[103], (v39 & 1) != 0) && (v40 = v35[100], *(v37 + v40[6]) == *&v27[v40[6]]) && *(v37 + v40[7]) == *&v27[v40[7]] && *(v37 + v40[8]) == *&v27[v40[8]])
        {
          v41 = v40[12];
          v42 = v35[103];
          v43 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v42, type metadata accessor for RawSearchResult);
          if (v43)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1002DBBF0(v37, type metadata accessor for RawSearchResult);
        }

        v31 = (v31 + 1) & v32;
      }

      while (((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
    }

    else
    {
      v35 = v25;
    }

    v59 = v35[104];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v27, v59, type metadata accessor for RawSearchResult);
    v644 = v22;
    sub_100DFE348(v59, v31, isUniquelyReferenced_nonNull_native);
LABEL_23:
    sub_1002DBBF0(v27, type metadata accessor for RawSearchResult);
    v61 = v35;
    v62 = v35[182];
    v63 = v61[181];
    v64 = v61[167];
    v65 = v61[166];
    v66 = v61[159];
    v635 = *(v61[160] + 8);
    (v635)(v61[142], v66);
    v63(v65, v64, v66);
    v0 = v61;
    swift_beginAccess();
    v57 = v22;
    v58 = v65;
  }

  else
  {
    v44 = v0[182];
    v45 = v0[181];
    v46 = v0[167];
    v47 = v0[166];
    v48 = v0[160];
    v49 = v0[159];
    v50 = v0[144];
    v51 = v0[141];
    v634 = v0[127];
    v52 = v0[101];
    swift_endAccess();
    v45(v47, v46, v49);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v53 = *(v52 + 72);
    v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_101385D80;
    sub_1000D2A70(v50, v51, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v51 + *(v634 + 48), v55 + v54, type metadata accessor for RawSearchResult);
    v635 = *(v48 + 8);
    (v635)(v51, v49);
    v56 = sub_10112A090(v55);
    swift_setDeallocating();
    sub_1002DBBF0(v55 + v54, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v57 = v56;
    v58 = v47;
  }

  sub_1001DE1B0(v57, v58);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_332;
  }

  while (1)
  {
    v67 = v0[182];
    v68 = v0[181];
    v69 = v0[167];
    v70 = v0[163];
    v71 = v0[159];
    v72 = v0[144];
    v73 = v0[140];
    v74 = v0[139];
    v628 = v0[138];
    v639 = type metadata accessor for Logger();
    sub_1000076D4(v639, qword_10177A818);
    v68(v70, v69, v71);
    sub_1000D2A70(v72, v73, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v72, v74, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v72, v628, &qword_10169C970, &qword_101398A18);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v596 = v76;
      log = v75;
      v77 = v0[163];
      v78 = v0[159];
      v79 = v0[141];
      v609 = v0[140];
      v589 = v0[138];
      v582 = v0[139];
      v586 = v0[137];
      v614 = v0[127];
      v80 = v0[106];
      v571 = v0[105];
      v578 = v0[107];
      v81 = v0[160] + 8;
      v621 = v0[100];
      v82 = swift_slowAlloc();
      v0[66] = swift_slowAlloc();
      *v82 = 141559043;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      (v635)(v77, v78);
      v86 = sub_1000136BC(v83, v85, v0 + 66);

      *(v82 + 14) = v86;
      *(v82 + 22) = 2082;
      sub_1000D2A70(v609, v79, &qword_10169C970, &qword_101398A18);
      v87 = v79 + *(v614 + 48);
      (*(v80 + 16))(v578, v87 + *(v621 + 20), v571);
      sub_1002DBBF0(v87, type metadata accessor for RawSearchResult);
      (v635)(v79, v78);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      (*(v80 + 8))(v578, v571);
      sub_10000B3A8(v609, &qword_10169C970, &qword_101398A18);
      v91 = sub_1000136BC(v88, v90, v0 + 66);

      *(v82 + 24) = v91;
      *(v82 + 32) = 2082;
      sub_1000D2A70(v582, v79, &qword_10169C970, &qword_101398A18);
      v92 = v79 + *(v614 + 48);
      LOBYTE(v91) = *(v92 + *(v621 + 36));
      sub_1002DBBF0(v92, type metadata accessor for RawSearchResult);
      (v635)(v79, v78);
      v93 = sub_100013454(v91);
      v95 = v94;
      sub_10000B3A8(v582, &qword_10169C970, &qword_101398A18);
      v96 = sub_1000136BC(v93, v95, v0 + 66);

      *(v82 + 34) = v96;
      *(v82 + 42) = 2048;
      sub_1000D2A70(v589, v586, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v97 = v0[65];
      if (*(v97 + 16) && (v98 = sub_1000210EC(v0[137]), (v99 & 1) != 0))
      {
        v100 = *(*(v97 + 56) + 8 * v98);
        swift_endAccess();
        v101 = *(v100 + 16);
      }

      else
      {
        swift_endAccess();
        v101 = 0;
      }

      v109 = v0[204];
      v103 = v0[196];
      v110 = v0[195];
      v111 = v0[159];
      v623 = v0[144];
      v112 = v0[138];
      v113 = v0[137];
      v104 = v0[124];
      sub_1002DBBF0(v113 + *(v0[127] + 48), type metadata accessor for RawSearchResult);
      (v635)(v113, v111);
      sub_10000B3A8(v112, &qword_10169C970, &qword_101398A18);
      *(v82 + 44) = v101;
      _os_log_impl(&_mh_execute_header, log, v596, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v82, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v110, v103);
      sub_10000B3A8(v104, &unk_1016C1120, &qword_1013C49D0);
      v108 = v623;
    }

    else
    {
      v102 = v0[204];
      v103 = v0[196];
      v104 = v0[195];
      v615 = v0[159];
      v622 = v0[163];
      v629 = v0[144];
      v105 = v0[140];
      v106 = v0[139];
      v107 = v0[160] + 8;
      v609 = v0[124];
      sub_10000B3A8(v0[138], &qword_10169C970, &qword_101398A18);

      sub_100016590(v104, v103);
      sub_10000B3A8(v106, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v105, &qword_10169C970, &qword_101398A18);
      (v635)(v622, v615);
      sub_10000B3A8(v609, &unk_1016C1120, &qword_1013C49D0);
      v108 = v629;
    }

    sub_10000B3A8(v108, &qword_10169C970, &qword_101398A18);
    v114 = v0[194] + 1;
    if (v114 != v0[193])
    {
      v0[194] = v114;
      v332 = v0[192];
      if (v114 >= *(v332 + 16))
      {
LABEL_336:
        __break(1u);
        goto LABEL_337;
      }

      v333 = v0[185];
      v334 = v333 >> 62;
      v335 = v332 + 24 * v114;
      v336 = *(v335 + 32);
      v0[195] = v336;
      v103 = *(v335 + 40);
      v0[196] = v103;
      v337 = *(v335 + 48);
      *(v0 + 1580) = *(v335 + 52);
      *(v0 + 394) = v337;
      if ((v333 >> 62) > 1)
      {
        if (v334 != 2)
        {
          v104 = 0;
          v338 = 0;
          v340 = 0;
          v339 = 0;
          goto LABEL_242;
        }

        v354 = v0[184];
        v338 = *(v354 + 16);
        v104 = *(v354 + 24);
      }

      else
      {
        if (!v334)
        {
          v338 = 0;
          v339 = 0;
          v104 = BYTE6(v333);
          v340 = BYTE6(v333);
          goto LABEL_242;
        }

        v354 = v0[184];
        v104 = v354 >> 32;
        v338 = v354;
      }

      sub_10002E98C(v354, v333);
      if (v104 < v338)
      {
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
        goto LABEL_339;
      }

      v333 = v0[185];
      v375 = v0[184];
      if (v333 >> 62 == 2)
      {
        v339 = *(v375 + 16);
        v340 = *(v375 + 24);
      }

      else
      {
        v340 = v375 >> 32;
        v339 = v375;
      }

LABEL_242:
      if (v340 < v104 || v104 < v339)
      {
        goto LABEL_338;
      }

      if (__OFSUB__(v104, v338))
      {
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
        goto LABEL_348;
      }

      if ((v104 - v338) >= 0x39)
      {
        v104 = v338 + 57;
        if (__OFADD__(v338, 57))
        {
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
          goto LABEL_352;
        }

        v377 = v333 >> 62;
        if ((v333 >> 62) > 1)
        {
          if (v377 == 2)
          {
            v381 = v0[184];
            v378 = *(v381 + 16);
            v379 = *(v381 + 24);
          }

          else
          {
            v379 = 0;
            v378 = 0;
          }
        }

        else if (v377)
        {
          v378 = v0[184];
          v379 = v378 >> 32;
          v378 = v378;
        }

        else
        {
          v378 = 0;
          v379 = BYTE6(v333);
        }

        if (v379 < v104 || v104 < v378)
        {
          goto LABEL_349;
        }

        v389 = 0;
        if (v377 <= 1)
        {
          if (v377)
          {
            v389 = v0[184];
          }

LABEL_271:
          if (v104 < v389)
          {
            goto LABEL_340;
          }

LABEL_272:
          v390 = v0[184];
          sub_100017D5C(v336, v103);
          sub_100017D5C(v336, v103);
          v391 = Data._Representation.subscript.getter();
          v393 = v392;
          sub_100006654(v390, v333);
          v394 = v393 >> 62;
          if ((v393 >> 62) > 1)
          {
            if (v394 != 2)
            {
              goto LABEL_286;
            }

            v396 = *(v391 + 16);
            v395 = *(v391 + 24);
            v160 = __OFSUB__(v395, v396);
            v397 = v395 - v396;
            if (!v160)
            {
              if (v397 != 57)
              {
                goto LABEL_286;
              }

              goto LABEL_279;
            }

            __break(1u);
          }

          else
          {
            if (!v394)
            {
              if (BYTE6(v393) != 57)
              {
LABEL_286:
                v411 = v391;
                v412 = v393;
LABEL_287:
                sub_100016590(v411, v412);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_279:
              v104 = v604;
              v398 = sub_100A7A194(v391, v393);
              if (v604)
              {
                v103 = (v0 + 70);
                static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_282:
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v401 = swift_allocObject();
                  *(v401 + 16) = xmmword_101385D80;
                  *v103 = v104;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v402 = String.init<A>(describing:)();
                  v404 = v403;
                  *(v401 + 56) = &type metadata for String;
                  *(v401 + 64) = sub_100008C00();
                  *(v401 + 32) = v402;
                  *(v401 + 40) = v404;
                  os_log(_:dso:log:_:_:)();

                  sub_1001BAF88();
                  v405 = swift_allocError();
                  *v406 = 0;
                  swift_willThrow();

LABEL_283:
                  v644 = 0;
                  v645 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v407 = v645;
                  v0[63] = v644;
                  v0[64] = v407;
                  v408._countAndFlagsBits = 0xD000000000000021;
                  v408._object = 0x800000010134CB30;
                  String.append(_:)(v408);
                  v0[69] = v405;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  v409 = v0[63];
                  v410 = v0[64];
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_352:
                swift_once();
                goto LABEL_282;
              }

              v399 = sub_100A7829C(v398, 0);
              v0[198] = v399;
              v0[199] = v400;
              v414 = v399;
              v415 = v400;
              result = CCECCryptorRelease();
              v416 = v415 >> 62;
              if ((v415 >> 62) > 1)
              {
                if (v416 != 2)
                {
                  v444 = 0;
                  goto LABEL_326;
                }

                v426 = v414[2];
                v425 = v414[3];
                v160 = __OFSUB__(v425, v426);
                v417 = v425 - v426;
                if (v160)
                {
                  __break(1u);
                  v427 = v0[99];
                  v428 = v0[89];

                  sub_100016590(v336, v391);

                  sub_100016590(v609, v586);

                  sub_1002DBBF0(v427, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v428, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
                  v429 = v0[173];
                  v430 = v0[172];
                  v431 = v0[171];
                  v432 = v0[168];
                  v433 = v0[167];
                  v434 = v0[166];
                  v435 = v0[165];
                  v436 = v0[164];
                  v449 = v0[163];
                  v452 = v0[162];
                  v454 = v0[158];
                  v457 = v0[157];
                  v460 = v0[156];
                  v462 = v0[155];
                  v464 = v0[154];
                  v467 = v0[151];
                  v470 = v0[149];
                  v473 = v0[146];
                  v476 = v0[144];
                  v479 = v0[143];
                  v482 = v0[142];
                  v485 = v0[141];
                  v487 = v0[140];
                  v489 = v0[139];
                  v493 = v0[138];
                  v497 = v0[137];
                  v500 = v0[136];
                  v504 = v0[135];
                  v508 = v0[134];
                  v511 = v0[133];
                  v515 = v0[132];
                  v518 = v0[131];
                  v521 = v0[130];
                  v524 = v0[129];
                  v527 = v0[126];
                  v530 = v0[125];
                  v532 = v0[124];
                  v537 = v0[123];
                  v541 = v0[122];
                  v544 = v0[121];
                  v547 = v0[120];
                  v550 = v0[119];
                  v553 = v0[118];
                  v556 = v0[117];
                  v559 = v0[114];
                  v562 = v0[111];
                  v565 = v0[108];
                  v570 = v0[107];
                  v577 = v0[104];
                  v581 = v0[103];
                  v585 = v0[102];
                  v588 = v0[99];
                  v592 = v0[98];
                  v595 = v0[97];
                  v599 = v0[96];
                  logc = v0[95];
                  v607 = v0[92];
                  v612 = v0[89];
                  v619 = v0[87];
                  v626 = v0[86];
                  v632 = v0[85];
                  v637 = v0[84];
                  v641 = v0[82];
                  v437 = v0[65];

                  v438 = v0[1];

                  return v438();
                }
              }

              else if (v416)
              {
                LODWORD(v417) = HIDWORD(v414) - v414;
                if (__OFSUB__(HIDWORD(v414), v414))
                {
                  goto LABEL_359;
                }

                v417 = v417;
              }

              else
              {
                v417 = BYTE6(v415);
              }

              if (v417 == 28)
              {
                sub_100016590(v391, v393);
                v439 = swift_task_alloc();
                v0[200] = v439;
                *v439 = v0;
                v439[1] = sub_1002BA248;
                v440 = v0[191];
                v441 = v0[167];
                v442 = v0[126];
                v443 = v0[81];

                return sub_1002D7014(v442, v336, v103, v440, v414, v415, 0, v441);
              }

              if (v416 == 2)
              {
                v446 = v414[2];
                v445 = v414[3];
                v444 = v445 - v446;
                if (!__OFSUB__(v445, v446))
                {
                  goto LABEL_326;
                }

                __break(1u);
              }

              else if (v416 == 1)
              {
                if (__OFSUB__(HIDWORD(v414), v414))
                {
                  goto LABEL_360;
                }

                v444 = HIDWORD(v414) - v414;
                goto LABEL_326;
              }

              v444 = BYTE6(v415);
LABEL_326:
              sub_100018350();
              v405 = swift_allocError();
              *v447 = 28;
              *(v447 + 8) = v444;
              *(v447 + 16) = 0;
              swift_willThrow();
              sub_100016590(v414, v415);
              goto LABEL_283;
            }

            if (!__OFSUB__(HIDWORD(v391), v391))
            {
              if (HIDWORD(v391) - v391 != 57)
              {
                goto LABEL_286;
              }

              goto LABEL_279;
            }
          }

          __break(1u);
LABEL_355:
          swift_once();
          goto LABEL_258;
        }

        if (v377 != 2)
        {
          goto LABEL_271;
        }

        v380 = v0[184];
      }

      else
      {
        v376 = v333 >> 62;
        if ((v333 >> 62) <= 1)
        {
          if (!v376)
          {
            v104 = BYTE6(v333);
            goto LABEL_272;
          }

          v388 = v0[184];
          v104 = v388 >> 32;
          v389 = v388;
          goto LABEL_271;
        }

        if (v376 != 2)
        {
          v104 = 0;
          goto LABEL_272;
        }

        v380 = v0[184];
        v104 = *(v380 + 24);
      }

      v389 = *(v380 + 16);
      goto LABEL_271;
    }

    v115 = v0[191];
    v116 = v0[185];
    v117 = v0[184];
    v104 = v0[173];
    v118 = v0[168];
    v119 = v0[167];
    v630 = v0;
    v120 = v0[160];
    v121 = v630[159];

    sub_100006654(v117, v116);
    v122 = *(v120 + 8);
    v122(v118, v121);
    sub_1002DBBF0(v104, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v122(v119, v121);
    v0 = v630;
    v123 = v630[176] + 1;
    if (v123 == v630[175])
    {
      break;
    }

    v104 = &unk_10138F3B0;
    while (1)
    {
      v630[176] = v123;
      v342 = v630[79];
      if (!v342)
      {
        v342 = _swiftEmptyArrayStorage;
      }

      if (v123 >= v342[2])
      {
        break;
      }

      v343 = v630[173];
      v344 = v630[169];
      v345 = v630[160];
      v346 = v630[159];
      v347 = v630[158];
      sub_1002DB760(v342 + ((*(v630 + 1768) + 32) & ~*(v630 + 1768)) + *(v630[170] + 72) * v123, v343, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v348 = *(v343 + 16);
      v349 = *(v343 + 24);
      sub_1000D2A70(v343 + *(v344 + 28), v347, &qword_1016980D0, &unk_10138F3B0);
      v350 = *(v345 + 48);
      v630[177] = v350;
      v630[178] = (v345 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v350(v347, 1, v346) != 1)
      {
        v365 = v630[168];
        v366 = v630[160];
        v367 = v630[159];
        v368 = v630[158];
        v369 = v630[157];
        v370 = *(v366 + 32);
        v630[179] = v370;
        v630[180] = (v366 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v370(v365, v368, v367);
        v371 = *(v366 + 16);
        v630[181] = v371;
        v630[182] = (v366 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v371(v369, v365, v367);
        (*(v366 + 56))(v369, 0, 1, v367);
        v372 = swift_task_alloc();
        v630[183] = v372;
        *v372 = v630;
        v372[1] = sub_1002B09AC;
        v373 = v630[157];
        v374 = v630[81];

        return sub_1002D5B7C(v348, v349, v373);
      }

      sub_10000B3A8(v630[158], &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v639, qword_10177A818);
      v351 = Logger.logObject.getter();
      v352 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v351, v352))
      {
        v353 = swift_slowAlloc();
        *v353 = 0;
        _os_log_impl(&_mh_execute_header, v351, v352, "Missing share id in payload.", v353, 2u);
      }

      v341 = v630[173];

      sub_1002DBBF0(v341, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v123 = v630[176] + 1;
      if (v123 == v630[175])
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    swift_once();
  }

LABEL_34:
  if (v630[79])
  {
    v124 = v630[79];
  }

  if (v630[78])
  {
    v103 = v630[78];
  }

  else
  {
    v103 = _swiftEmptyArrayStorage;
  }

  v542 = *(v103 + 16);
  if (!v542)
  {

LABEL_230:

    v355 = v0[173];
    v356 = v0[172];
    v357 = v0[171];
    v358 = v0[168];
    v359 = v0[167];
    v360 = v0[166];
    v361 = v0[165];
    v362 = v0[164];
    v363 = v0[163];
    v448 = v0[162];
    v451 = v0[158];
    v453 = v0[157];
    v456 = v0[156];
    v459 = v0[155];
    v461 = v0[154];
    v463 = v0[151];
    v466 = v0[149];
    v469 = v0[146];
    v472 = v0[144];
    v475 = v0[143];
    v478 = v0[142];
    v481 = v0[141];
    v484 = v0[140];
    v486 = v0[139];
    v488 = v0[138];
    v492 = v0[137];
    v496 = v0[136];
    v499 = v0[135];
    v503 = v0[134];
    v507 = v0[133];
    v510 = v0[132];
    v514 = v0[131];
    v517 = v0[130];
    v520 = v0[129];
    v523 = v0[126];
    v526 = v0[125];
    v529 = v0[124];
    v531 = v0[123];
    v536 = v0[122];
    v540 = v0[121];
    v543 = v0[120];
    v546 = v0[119];
    v549 = v0[118];
    v552 = v0[117];
    v555 = v0[114];
    v558 = v0[111];
    v561 = v0[108];
    v564 = v0[107];
    v569 = v0[104];
    v576 = v0[103];
    v580 = v0[102];
    v584 = v0[99];
    v587 = v0[98];
    v591 = v0[97];
    v594 = v0[96];
    v598 = v0[95];
    logb = v0[92];
    v606 = v0[89];
    v611 = v0[87];
    v618 = v0[86];
    v625 = v0[85];
    v631 = v0[84];
    v640 = v0[82];
    swift_beginAccess();
    v636 = v0[65];

    v364 = v0[1];

    return v364(v636);
  }

  v125 = v630[160];
  v455 = v630 + 75;
  v126 = v630[128];
  v127 = v630[127];
  v128 = v630[106];
  v458 = v630[101];
  v583 = v630[100];
  v563 = v630[99];
  v624 = v630[97];
  v557 = v630[93];
  v129 = v630[91];
  v551 = v103 + 32;
  v516 = v630[89];
  v597 = (v129 + 8);
  loga = (v129 + 104);
  v579 = v630[88];
  v483 = (v630[116] + 56);
  v525 = (v128 + 16);
  v528 = v630[94];
  v480 = v630[83];
  v477 = (v128 + 56);
  v522 = (v128 + 8);
  v474 = (v125 + 16);
  v468 = (v126 + 48);
  v471 = (v126 + 56);
  v548 = *(v630[80] + 16);
  v545 = (v125 + 8);
  v593 = enum case for HashAlgorithm.sha256(_:);

  v130 = 0;
  v465 = xmmword_101385D80;
  v131 = v604;
  v519 = v103;
  v560 = v127;
  while (2)
  {
    if (v130 >= *(v103 + 16))
    {
      goto LABEL_341;
    }

    v554 = v130;
    v132 = (v551 + 24 * v130);
    v134 = *v132;
    v133 = v132[1];
    v586 = v133;
    v610 = *v132;
    v590 = v132[2];
    if (!v548)
    {
      sub_100017D5C(v134, v133);

LABEL_151:
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v639, qword_10177A818);
      sub_100017D5C(v610, v586);

      v185 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      sub_100016590(v610, v586);

      if (os_log_type_enabled(v185, v104))
      {
        v186 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v644 = v187;
        *v186 = 141558275;
        *(v186 + 4) = 1752392040;
        *(v186 + 12) = 2081;
        v0[61] = v610;
        v0[62] = v586;
        sub_10025DB08();
        v188 = RawRepresentable<>.hexString.getter();
        v190 = sub_1000136BC(v188, v189, &v644);

        *(v186 + 14) = v190;
        _os_log_impl(&_mh_execute_header, v185, v104, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v186, 0x16u);
        sub_100007BAC(v187);
      }

      sub_100016590(v610, v586);

      goto LABEL_156;
    }

    v135 = v0[80] + ((*(v528 + 80) + 32) & ~*(v528 + 80));
    sub_100017D5C(v134, v133);
    if (v134)
    {
      v136 = 0;
    }

    else
    {
      v136 = v133 == 0xC000000000000000;
    }

    v137 = !v136;
    v572 = v137;
    v616 = v133 >> 62;
    v566 = BYTE6(v133);
    v604 = *(v528 + 72);
    v138 = __OFSUB__(HIDWORD(v134), v134);
    v538 = v138;
    v533 = (HIDWORD(v134) - v134);

    v139 = v548;
LABEL_56:
    v141 = v0[97];
    sub_1002DB760(v135, v141, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v142 = *v141;
    v143 = *(v624 + 8);
    v103 = v143 >> 62;
    if ((v143 >> 62) > 1)
    {
      if (v103 == 2)
      {
        v104 = *(v142 + 16);
        v145 = *(v142 + 24);
        sub_100017D5C(v142, *(v624 + 8));
        v144 = *(v142 + 16);
        v146 = *(v142 + 24);
      }

      else
      {
        v104 = 0;
        v145 = 0;
        v146 = 0;
        v144 = 0;
      }
    }

    else if (v103)
    {
      v104 = v142;
      v145 = v142 >> 32;
      sub_100017D5C(v142, *(v624 + 8));
      v146 = v142 >> 32;
      v144 = v142;
    }

    else
    {
      v104 = 0;
      v144 = 0;
      v145 = BYTE6(v143);
      v146 = BYTE6(v143);
    }

    if (v146 < v104 || v104 < v144)
    {
      goto LABEL_328;
    }

    if (v103 > 1)
    {
      if (v103 == 2)
      {
        v147 = *(v142 + 16);
        v148 = *(v142 + 24);
      }

      else
      {
        v148 = 0;
        v147 = 0;
      }
    }

    else if (v103)
    {
      v147 = v142;
      v148 = v142 >> 32;
    }

    else
    {
      v147 = 0;
      v148 = BYTE6(v143);
    }

    if (v148 < v145 || v145 < v147)
    {
      goto LABEL_329;
    }

    if (__OFSUB__(v145, v104))
    {
      goto LABEL_330;
    }

    if ((v145 - v104) >= 0x39)
    {
      v149 = v104 + 57;
      if (!__OFADD__(v104, 57))
      {
        if (v103 > 1)
        {
          if (v103 == 2)
          {
            v150 = *(v142 + 16);
            v151 = *(v142 + 24);
          }

          else
          {
            v151 = 0;
            v150 = 0;
          }
        }

        else if (v103)
        {
          v150 = v142;
          v151 = v142 >> 32;
        }

        else
        {
          v150 = 0;
          v151 = BYTE6(v143);
        }

        if (v151 < v149 || v149 < v150)
        {
          goto LABEL_334;
        }

        v152 = 0;
        if (v103 <= 1)
        {
          if (v103)
          {
            goto LABEL_95;
          }

          goto LABEL_98;
        }

        if (v103 == 3)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      }

      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
      goto LABEL_336;
    }

    if (v103 > 1)
    {
      if (v103 != 2)
      {
        goto LABEL_99;
      }

      v149 = *(v142 + 24);
LABEL_97:
      v152 = *(v142 + 16);
      goto LABEL_98;
    }

    if (!v103)
    {
      goto LABEL_99;
    }

    v149 = v142 >> 32;
LABEL_95:
    v152 = v142;
LABEL_98:
    if (v149 < v152)
    {
      goto LABEL_331;
    }

LABEL_99:
    v635 = v139;
    v153 = Data._Representation.subscript.getter();
    v155 = v154;
    sub_100016590(v142, v143);
    v156 = v155 >> 62;
    if ((v155 >> 62) > 1)
    {
      if (v156 != 2)
      {
        goto LABEL_289;
      }

      v159 = *(v153 + 16);
      v158 = *(v153 + 24);
      v160 = __OFSUB__(v158, v159);
      v157 = v158 - v159;
      if (v160)
      {
        goto LABEL_342;
      }
    }

    else if (v156)
    {
      LODWORD(v157) = HIDWORD(v153) - v153;
      if (__OFSUB__(HIDWORD(v153), v153))
      {
        goto LABEL_343;
      }

      v157 = v157;
    }

    else
    {
      v157 = BYTE6(v155);
    }

    if (v157 != 57)
    {
LABEL_289:
      v411 = v153;
      v412 = v155;
      goto LABEL_287;
    }

    v104 = v131;
    v161 = sub_100A7A194(v153, v155);
    if (!v131)
    {
      v162 = sub_100A7829C(v161, 0);
      v103 = v163;
      result = CCECCryptorRelease();
      v164 = v103 >> 62;
      if ((v103 >> 62) > 1)
      {
        if (v164 == 2)
        {
          v167 = *(v162 + 16);
          v166 = *(v162 + 24);
          v160 = __OFSUB__(v166, v167);
          v165 = v166 - v167;
          if (v160)
          {
            goto LABEL_345;
          }

          goto LABEL_119;
        }

        v413 = 0;
LABEL_302:
        sub_100018350();
        v386 = swift_allocError();
        *v420 = 28;
        *(v420 + 8) = v413;
        *(v420 + 16) = 0;
        swift_willThrow();
        sub_100016590(v162, v103);
        goto LABEL_303;
      }

      if (v164)
      {
        LODWORD(v165) = HIDWORD(v162) - v162;
        if (__OFSUB__(HIDWORD(v162), v162))
        {
          goto LABEL_344;
        }

        v165 = v165;
      }

      else
      {
        v165 = BYTE6(v103);
      }

LABEL_119:
      if (v165 == 28)
      {
        v168 = v0[92];
        v169 = v0[90];
        sub_100016590(v153, v155);
        (loga->isa)(v168, v593, v169);
        v170 = Data.hash(algorithm:)();
        v172 = v171;
        sub_100016590(v162, v103);
        (*v597)(v168, v169);
        v173 = v172 >> 62;
        if (v172 >> 62 == 3)
        {
          if (v170)
          {
            v174 = 0;
          }

          else
          {
            v174 = v172 == 0xC000000000000000;
          }

          v175 = v616;
          v177 = !v174 || v616 < 3;
          if (((v177 | v572) & 1) == 0)
          {
            v191 = 0;
            v192 = 0xC000000000000000;
            goto LABEL_160;
          }

          v178 = 0;
          if (v616 > 1)
          {
LABEL_144:
            if (v175 != 2)
            {
              if (!v178)
              {
                goto LABEL_158;
              }

LABEL_54:
              sub_100016590(v170, v172);
              v131 = 0;
              v140 = v635;
              goto LABEL_55;
            }

            v183 = *(v610 + 16);
            v182 = *(v610 + 24);
            v160 = __OFSUB__(v182, v183);
            v181 = (v182 - v183);
            if (v160)
            {
              goto LABEL_346;
            }

            goto LABEL_146;
          }
        }

        else
        {
          v175 = v616;
          if (v173 == 2)
          {
            v180 = *(v170 + 16);
            v179 = *(v170 + 24);
            v160 = __OFSUB__(v179, v180);
            v178 = v179 - v180;
            if (v160)
            {
              goto LABEL_351;
            }

            if (v616 > 1)
            {
              goto LABEL_144;
            }
          }

          else if (v173 == 1)
          {
            LODWORD(v178) = HIDWORD(v170) - v170;
            if (__OFSUB__(HIDWORD(v170), v170))
            {
              goto LABEL_350;
            }

            v178 = v178;
            if (v616 > 1)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v178 = BYTE6(v172);
            if (v616 > 1)
            {
              goto LABEL_144;
            }
          }
        }

        v181 = v566;
        if (v175)
        {
          v181 = v533;
          if (v538)
          {
            goto LABEL_347;
          }
        }

LABEL_146:
        if (v178 != v181)
        {
          goto LABEL_54;
        }

        if (v178 < 1)
        {
LABEL_158:
          v191 = v170;
          v192 = v172;
LABEL_160:
          sub_100016590(v191, v192);
          v131 = 0;
LABEL_161:
          v193 = v0[99];
          v103 = v0[98];
          v104 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey;
          sub_1002DB7C8(v0[97], v103, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v103, v193, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v194 = *(v590 + 16);
          if (v194)
          {
            v635 = (v590 + ((*(v579 + 80) + 32) & ~*(v579 + 80)));

            v195 = 0;
            v104 = 0;
            v617 = v194;
            while (v195 < *(v590 + 16))
            {
              v197 = v0[99];
              sub_1002DB760(&v635[*(v579 + 72) * v195], v0[89], type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v198 = *v197;
              v199 = *(v563 + 8);
              v605 = v195;
              v200 = sub_100496ABC();
              v201 = *v0[89];
              v202 = *(v516 + 8);
              v203 = *v0[99];
              v204 = *(v563 + 8);
              sub_100017D5C(v203, v204);
              sub_10002EA98(57, v203, v204, &v644);
              sub_100496F68(v644, v645, &v642);
              v205 = v643;
              if (v643 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v567 = v0[99];
              v206 = v642;
              v207 = PublicKey.advertisement.getter(v642, v643);
              v209 = v208;
              result = sub_100006654(v206, v205);
              v210 = v202 >> 62;
              v573 = *(v557 + 20);
              if ((v202 >> 62) > 1)
              {
                if (v210 == 2)
                {
                  v213 = *(v201 + 16);
                  v212 = *(v201 + 24);
                  v211 = v212 - v213;
                  if (__OFSUB__(v212, v213))
                  {
                    goto LABEL_357;
                  }
                }

                else
                {
                  v211 = 0;
                }
              }

              else if (v210)
              {
                if (__OFSUB__(HIDWORD(v201), v201))
                {
                  __break(1u);
LABEL_357:
                  __break(1u);
                  goto LABEL_358;
                }

                v211 = HIDWORD(v201) - v201;
              }

              else
              {
                v211 = BYTE6(v202);
              }

              sub_100A2A240(3);
              v215 = v214;
              v216 = v200;
              sub_100017D5C(v201, v202);
              sub_100017D5C(v207, v209);
              if (v211 >= v215)
              {
                v217 = v630 + 84;
                sub_100A2AA58(v216, v201, v202, v207, v209, v630[84]);
              }

              else
              {
                v217 = v630 + 85;
                sub_100A2B118(v216, v201, v202, v207, v209, v630[85]);
              }

              v501 = v207;
              v218 = *v217;
              v534 = v0[127];
              v539 = v216;
              v509 = v0[125];
              v512 = v0[159];
              v219 = v0[122];
              v490 = v0[121];
              v220 = v0[115];
              v221 = v0[107];
              v222 = v0[105];
              v223 = v0[104];
              v224 = v0[87];
              v225 = v0[86];
              v226 = v0[82];
              sub_1002DB7C8(v218, v225, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v225, v224, type metadata accessor for BeaconPayloadv1);
              v227 = v219;
              v494 = v219;
              (*v483)(v219, 1, 1, v220);
              v505 = *(v224 + v480[10]);
              v228 = *v525;
              (*v525)(v221, v224 + v480[5], v222);
              v229 = *(v224 + v480[7]);
              v230 = *(v224 + v480[8]);
              v231 = *(v224 + v480[9]);
              (*v477)(v226, 1, 1, v222);
              sub_1000D2A70(v227, v490, &unk_1016C1120, &qword_1013C49D0);
              v450 = v228;
              v228(&v223[v583[5]], v221, v222);
              sub_1000D2A70(v226, &v223[v583[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v490, &v223[v583[11]], &unk_1016C1120, &qword_1013C49D0);
              v232 = &v223[v583[12]];
              UUID.init()();
              sub_100016590(v501, v209);
              sub_10000B3A8(v490, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v226, &unk_101696900, &unk_10138B1E0);
              v233 = *v522;
              (*v522)(v221, v222);
              sub_10000B3A8(v494, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v224, type metadata accessor for BeaconPayloadv1);
              *v223 = v505;
              *&v223[v583[6]] = v229;
              *&v223[v583[7]] = v230;
              *&v223[v583[8]] = v231;
              v223[v583[9]] = 15;
              *&v223[v583[13]] = 256;
              v234 = *(v560 + 48);
              (*v474)(v509, v567 + v573, v512);
              sub_1002DB7C8(v223, v509 + v234, type metadata accessor for RawSearchResult);
              (*v471)(v509, 0, 1, v534);
              if ((*v468)(v509, 1, v534) == 1)
              {
                v235 = v0[125];

                sub_10000B3A8(v235, &qword_10169C968, &qword_101398A10);
                v236 = v617;
                v237 = v605;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v238 = v0[99];
                v239 = v0[95];
                sub_1000076D4(v639, qword_10177A818);
                sub_1002DB760(v238, v239, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v103 = Logger.logObject.getter();
                v240 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v103, v240))
                {
                  v241 = v0[159];
                  v242 = v0[95];
                  v243 = swift_slowAlloc();
                  v244 = swift_slowAlloc();
                  v644 = v244;
                  *v243 = 141558275;
                  *(v243 + 4) = 1752392040;
                  *(v243 + 12) = 2081;
                  v245 = *(v557 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v246 = dispatch thunk of CustomStringConvertible.description.getter();
                  v248 = v247;
                  sub_1002DBBF0(v242, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v249 = sub_1000136BC(v246, v248, &v644);

                  *(v243 + 14) = v249;
                  _os_log_impl(&_mh_execute_header, v103, v240, "Could not create search result for beacon: %{private,mask.hash}s.", v243, 0x16u);
                  sub_100007BAC(v244);

                  v236 = v617;
                }

                else
                {
                  v196 = v0[95];

                  sub_1002DBBF0(v196, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v568 = v233;
                v250 = v0[136];
                v251 = v0[135];
                sub_1000D2AD8(v0[125], v250, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v250, v251, &qword_10169C970, &qword_101398A18);
                v252 = *(v560 + 48);
                swift_beginAccess();
                v253 = sub_1005CAD18(v251, v0[65]);
                v254 = v0[159];
                if (v253)
                {
                  v255 = v253;
                  v256 = v0[136];
                  v257 = v0[135];
                  v258 = v0[134];
                  swift_endAccess();
                  sub_1002DBBF0(v251 + v252, type metadata accessor for RawSearchResult);
                  v574 = *v545;
                  (*v545)(v257, v254);
                  sub_1000D2A70(v256, v258, &qword_10169C970, &qword_101398A18);
                  v259 = (v258 + *(v560 + 48));
                  v260 = *(v255 + 40);
                  Hasher.init(_seed:)();
                  sub_100D15128();
                  v261 = Hasher._finalize()();
                  v262 = -1 << *(v255 + 32);
                  v263 = v261 & ~v262;
                  if ((*(v255 + 56 + ((v263 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v263))
                  {
                    v264 = ~v262;
                    v265 = *v259;
                    v266 = *(v458 + 72);
                    do
                    {
                      v267 = v0[102];
                      sub_1002DB760(*(v255 + 48) + v263 * v266, v267, type metadata accessor for RawSearchResult);
                      v268 = v0[102];
                      if (*v267 == v265 && (v269 = v583[5], v270 = static Date.== infix(_:_:)(), v268 = v0[102], (v270 & 1) != 0) && *(v268 + v583[6]) == *&v259[v583[6]] && *(v268 + v583[7]) == *&v259[v583[7]] && *(v268 + v583[8]) == *&v259[v583[8]])
                      {
                        v271 = v583[12];
                        v272 = v0[102];
                        v273 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v272, type metadata accessor for RawSearchResult);
                        if (v273)
                        {
                          goto LABEL_198;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v268, type metadata accessor for RawSearchResult);
                      }

                      v263 = (v263 + 1) & v264;
                    }

                    while (((*(v255 + 56 + ((v263 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v263) & 1) != 0);
                  }

                  v274 = v0[104];
                  v275 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v259, v274, type metadata accessor for RawSearchResult);
                  v644 = v255;
                  sub_100DFE348(v274, v263, v275);
                  v255 = v644;
LABEL_198:
                  sub_1002DBBF0(v259, type metadata accessor for RawSearchResult);
                  v276 = v0[141];
                  v277 = v0[136];
                  v574(v0[134], v0[159]);
                  sub_1000D2A70(v277, v276, &qword_10169C970, &qword_101398A18);
                  v278 = *(v560 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v255, v276);
                }

                else
                {
                  v279 = v0[141];
                  v575 = v279;
                  v280 = v0[136];
                  v281 = v0[135];
                  v282 = v0[133];
                  swift_endAccess();
                  sub_1002DBBF0(v251 + v252, type metadata accessor for RawSearchResult);
                  v283 = *v545;
                  (*v545)(v281, v254);
                  sub_1000D2A70(v280, v279, &qword_10169C970, &qword_101398A18);
                  v278 = *(v560 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v284 = *(v458 + 72);
                  v285 = (*(v458 + 80) + 32) & ~*(v458 + 80);
                  v286 = swift_allocObject();
                  *(v286 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v280, v282, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v282 + *(v560 + 48), v286 + v285, type metadata accessor for RawSearchResult);
                  v283(v282, v254);
                  v287 = sub_10112A090(v286);
                  swift_setDeallocating();
                  v288 = v286 + v285;
                  v0 = v630;
                  sub_1002DBBF0(v288, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v289 = v630[65];
                  v290 = swift_isUniquelyReferenced_nonNull_native();
                  v644 = v630[65];
                  v291 = v575;
                  sub_100FFC200(v287, v575, v290);
                  v574 = v283;
                  v283(v291, v254);
                  v630[65] = v644;
                }

                swift_endAccess();
                sub_1002DBBF0(v0[141] + v278, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v292 = v0[136];
                v293 = v0[132];
                v294 = v0[131];
                v295 = v0[130];
                v296 = v0[99];
                v297 = v0[96];
                sub_1000076D4(v639, qword_10177A818);
                sub_1002DB760(v296, v297, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v292, v293, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v292, v294, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v292, v295, &qword_10169C970, &qword_101398A18);
                v298 = Logger.logObject.getter();
                v299 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v298, v299))
                {
                  v513 = v299;
                  v535 = v298;
                  v300 = v0[159];
                  v301 = v0[141];
                  v302 = v0[132];
                  v506 = v0[130];
                  v498 = v0[131];
                  v502 = v0[129];
                  v491 = v0[105];
                  v495 = v0[107];
                  v303 = v0[96];
                  v304 = swift_slowAlloc();
                  v644 = swift_slowAlloc();
                  *v304 = 141559043;
                  *(v304 + 4) = 1752392040;
                  *(v304 + 12) = 2081;
                  v305 = *(v557 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v306 = dispatch thunk of CustomStringConvertible.description.getter();
                  v308 = v307;
                  sub_1002DBBF0(v303, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v309 = sub_1000136BC(v306, v308, &v644);

                  *(v304 + 14) = v309;
                  *(v304 + 22) = 2082;
                  sub_1000D2A70(v302, v301, &qword_10169C970, &qword_101398A18);
                  v310 = v301 + *(v560 + 48);
                  v450(v495, v310 + v583[5], v491);
                  sub_1002DBBF0(v310, type metadata accessor for RawSearchResult);
                  v574(v301, v300);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
                  v311 = dispatch thunk of CustomStringConvertible.description.getter();
                  v313 = v312;
                  v568(v495, v491);
                  sub_10000B3A8(v302, &qword_10169C970, &qword_101398A18);
                  v314 = sub_1000136BC(v311, v313, &v644);

                  *(v304 + 24) = v314;
                  *(v304 + 32) = 2082;
                  sub_1000D2A70(v498, v301, &qword_10169C970, &qword_101398A18);
                  v315 = v301 + *(v560 + 48);
                  LOBYTE(v314) = *(v315 + v583[9]);
                  sub_1002DBBF0(v315, type metadata accessor for RawSearchResult);
                  v574(v301, v300);
                  v316 = sub_100013454(v314);
                  v318 = v317;
                  sub_10000B3A8(v498, &qword_10169C970, &qword_101398A18);
                  v319 = sub_1000136BC(v316, v318, &v644);

                  *(v304 + 34) = v319;
                  *(v304 + 42) = 2048;
                  sub_1000D2A70(v506, v502, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v320 = v0[65];
                  if (*(v320 + 16) && (v321 = sub_1000210EC(v0[129]), (v322 & 1) != 0))
                  {
                    v323 = *(*(v320 + 56) + 8 * v321);
                    swift_endAccess();
                    v324 = *(v323 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v324 = 0;
                  }

                  v236 = v617;
                  v328 = v0[159];
                  v329 = v0[136];
                  v330 = v0[130];
                  v331 = v0[129];
                  sub_1002DBBF0(v331 + *(v560 + 48), type metadata accessor for RawSearchResult);
                  v574(v331, v328);
                  v103 = &qword_10169C970;
                  sub_10000B3A8(v330, &qword_10169C970, &qword_101398A18);
                  *(v304 + 44) = v324;
                  _os_log_impl(&_mh_execute_header, v535, v513, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v304, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v329, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v325 = v0[136];
                  v103 = v0[132];
                  v326 = v0[131];
                  v327 = v0[96];
                  sub_10000B3A8(v0[130], &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v326, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v103, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v327, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v325, &qword_10169C970, &qword_101398A18);
                  v236 = v617;
                }

                v237 = v605;
              }

              v195 = v237 + 1;
              sub_1002DBBF0(v0[89], type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v104 = 0;
              if (v195 == v236)
              {

                sub_100016590(v610, v586);

                v131 = 0;
                goto LABEL_212;
              }
            }

            goto LABEL_335;
          }

          sub_100016590(v610, v586);

LABEL_212:
          sub_1002DBBF0(v0[99], type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_156:
          v103 = v519;
          v130 = v554 + 1;
          if (v554 + 1 == v542)
          {
            goto LABEL_230;
          }

          continue;
        }

        sub_100017D5C(v610, v586);
        sub_100017D5C(v610, v586);
        sub_100017D5C(v170, v172);
        v184 = sub_100F0B1BC(v170, v172, v610, v586);
        v131 = 0;
        sub_100016590(v170, v172);
        sub_100016590(v170, v172);
        sub_100016590(v610, v586);
        v140 = v635;
        if (v184)
        {
          goto LABEL_161;
        }

LABEL_55:
        sub_1002DBBF0(v0[97], type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v135 += v604;
        v139 = v140 - 1;
        if (!v139)
        {
          goto LABEL_151;
        }

        goto LABEL_56;
      }

      if (v164 == 2)
      {
        v419 = *(v162 + 16);
        v418 = *(v162 + 24);
        v413 = v418 - v419;
        if (!__OFSUB__(v418, v419))
        {
          goto LABEL_302;
        }

        __break(1u);
      }

      else if (v164 == 1)
      {
        if (!__OFSUB__(HIDWORD(v162), v162))
        {
          v413 = HIDWORD(v162) - v162;
          goto LABEL_302;
        }

LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
        return result;
      }

      v413 = BYTE6(v103);
      goto LABEL_302;
    }

    break;
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_355;
  }

LABEL_258:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v382 = swift_allocObject();
  *(v382 + 16) = v465;
  *v455 = v104;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v383 = String.init<A>(describing:)();
  v385 = v384;
  *(v382 + 56) = &type metadata for String;
  *(v382 + 64) = sub_100008C00();
  *(v382 + 32) = v383;
  *(v382 + 40) = v385;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v386 = swift_allocError();
  *v387 = 0;
  swift_willThrow();

LABEL_303:
  v644 = 0;
  v645 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v421 = v645;
  v0[59] = v644;
  v0[60] = v421;
  v422._countAndFlagsBits = 0xD000000000000021;
  v422._object = 0x800000010134CB30;
  String.append(_:)(v422);
  v0[73] = v386;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v423 = v0[59];
  v424 = v0[60];
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002CD898()
{
  v2 = *v1;
  v3 = *(*v1 + 1752);
  v18 = *v1;
  *(*v1 + 1760) = v0;

  if (v0)
  {
    v4 = v2[117];
    v5 = v2[108];
    v6 = v2[106];
    v7 = v2[105];
    v8 = v2[81];
    (*(v6 + 8))(v5, v7);
    sub_1002DBBF0(v4, type metadata accessor for BeaconKeyManager.IndexInformation);
    v9 = sub_1002D1DAC;
  }

  else
  {
    v10 = v2[160];
    v11 = v2[159];
    v12 = v2[143];
    v13 = v2[117];
    v14 = v2[108];
    v15 = v2[106];
    v16 = v2[105];
    v8 = v2[81];
    (*(v15 + 8))(v14, v16);
    sub_1002DBBF0(v13, type metadata accessor for BeaconKeyManager.IndexInformation);
    (*(v10 + 8))(v12, v11);
    v9 = sub_1002CDA60;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002CDA60()
{
  v614 = v0;
  v1 = *(v0 + 960);
  sub_100007BAC((v0 + 96));
  sub_100007BAC((v0 + 176));
  sub_10000B3A8(v0 + 216, &qword_10169C988, &unk_1013B3320);
  sub_1002DBBF0(v1, type metadata accessor for BeaconKeyManager.IndexInformation);
  v567 = *(v0 + 1760);
  v2 = *(v0 + 1336);
  swift_beginAccess();
  v3 = sub_1005CAD18(v2, *(v0 + 520));
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 1152);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1016);
    swift_endAccess();
    sub_1000D2A70(v5, v6, &qword_10169C970, &qword_101398A18);
    v8 = (v6 + *(v7 + 48));
    v9 = *(v4 + 40);
    Hasher.init(_seed:)();
    sub_100D15128();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v4 + 32);
    v12 = v10 & ~v11;
    if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      v14 = *v8;
      v15 = *(*(v0 + 808) + 72);
      do
      {
        v16 = *(v0 + 824);
        sub_1002DB760(*(v4 + 48) + v12 * v15, v16, type metadata accessor for RawSearchResult);
        v17 = *(v0 + 824);
        if (*v16 == v14 && (v18 = *(*(v0 + 800) + 20), v19 = static Date.== infix(_:_:)(), v17 = *(v0 + 824), (v19 & 1) != 0) && (v20 = *(v0 + 800), *(v17 + v20[6]) == *&v8[v20[6]]) && *(v17 + v20[7]) == *&v8[v20[7]] && *(v17 + v20[8]) == *&v8[v20[8]])
        {
          v21 = v20[12];
          v22 = *(v0 + 824);
          v23 = static UUID.== infix(_:_:)();
          sub_1002DBBF0(v22, type metadata accessor for RawSearchResult);
          if (v23)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_1002DBBF0(v17, type metadata accessor for RawSearchResult);
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    v24 = *(v0 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002DB760(v8, v24, type metadata accessor for RawSearchResult);
    v612 = v4;
    sub_100DFE348(v24, v12, isUniquelyReferenced_nonNull_native);
LABEL_14:
    sub_1002DBBF0(v8, type metadata accessor for RawSearchResult);
    v26 = *(v0 + 1456);
    v27 = *(v0 + 1448);
    v28 = *(v0 + 1336);
    v29 = *(v0 + 1328);
    v30 = *(v0 + 1272);
    v603 = *(*(v0 + 1280) + 8);
    (v603)(*(v0 + 1136), v30);
    v27(v29, v28, v30);
    swift_beginAccess();
    v31 = v4;
    v32 = v29;
  }

  else
  {
    v33 = *(v0 + 1456);
    v34 = *(v0 + 1448);
    v35 = *(v0 + 1336);
    v36 = *(v0 + 1328);
    v37 = *(v0 + 1280);
    v38 = *(v0 + 1272);
    v39 = *(v0 + 1152);
    v40 = *(v0 + 1128);
    v604 = *(v0 + 1016);
    v41 = *(v0 + 808);
    swift_endAccess();
    v34(v36, v35, v38);
    sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
    v42 = *(v41 + 72);
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_101385D80;
    sub_1000D2A70(v39, v40, &qword_10169C970, &qword_101398A18);
    sub_1002DB7C8(v40 + *(v604 + 48), v44 + v43, type metadata accessor for RawSearchResult);
    v603 = *(v37 + 8);
    (v603)(v40, v38);
    v45 = sub_10112A090(v44);
    swift_setDeallocating();
    sub_1002DBBF0(v44 + v43, type metadata accessor for RawSearchResult);
    swift_deallocClassInstance();
    swift_beginAccess();
    v31 = v45;
    v32 = v36;
  }

  sub_1001DE1B0(v31, v32);
  swift_endAccess();
  if (qword_101694510 != -1)
  {
    goto LABEL_324;
  }

  while (1)
  {
    v46 = *(v0 + 1456);
    v47 = *(v0 + 1448);
    v48 = *(v0 + 1336);
    v49 = *(v0 + 1304);
    v50 = *(v0 + 1272);
    v51 = *(v0 + 1152);
    v52 = *(v0 + 1120);
    v53 = *(v0 + 1112);
    v598 = *(v0 + 1104);
    v607 = type metadata accessor for Logger();
    sub_1000076D4(v607, qword_10177A818);
    v47(v49, v48, v50);
    sub_1000D2A70(v51, v52, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v51, v53, &qword_10169C970, &qword_101398A18);
    sub_1000D2A70(v51, v598, &qword_10169C970, &qword_101398A18);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v573 = v55;
      v56 = *(v0 + 1304);
      v57 = *(v0 + 1272);
      v58 = *(v0 + 1128);
      v577 = v54;
      v581 = *(v0 + 1120);
      v564 = *(v0 + 1104);
      v556 = *(v0 + 1112);
      v560 = *(v0 + 1096);
      v587 = *(v0 + 1016);
      v59 = *(v0 + 848);
      v544 = *(v0 + 840);
      v550 = *(v0 + 856);
      v60 = *(v0 + 1280) + 8;
      v591 = *(v0 + 800);
      v61 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v61 = 141559043;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (v603)(v56, v57);
      v65 = sub_1000136BC(v62, v64, (v0 + 528));

      *(v61 + 14) = v65;
      *(v61 + 22) = 2082;
      sub_1000D2A70(v581, v58, &qword_10169C970, &qword_101398A18);
      v66 = v58 + *(v587 + 48);
      (*(v59 + 16))(v550, v66 + *(v591 + 20), v544);
      sub_1002DBBF0(v66, type metadata accessor for RawSearchResult);
      (v603)(v58, v57);
      sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      (*(v59 + 8))(v550, v544);
      sub_10000B3A8(v581, &qword_10169C970, &qword_101398A18);
      v70 = sub_1000136BC(v67, v69, (v0 + 528));

      *(v61 + 24) = v70;
      *(v61 + 32) = 2082;
      sub_1000D2A70(v556, v58, &qword_10169C970, &qword_101398A18);
      v71 = v58 + *(v587 + 48);
      LOBYTE(v70) = *(v71 + *(v591 + 36));
      sub_1002DBBF0(v71, type metadata accessor for RawSearchResult);
      (v603)(v58, v57);
      v72 = sub_100013454(v70);
      v74 = v73;
      sub_10000B3A8(v556, &qword_10169C970, &qword_101398A18);
      v75 = sub_1000136BC(v72, v74, (v0 + 528));

      *(v61 + 34) = v75;
      *(v61 + 42) = 2048;
      sub_1000D2A70(v564, v560, &qword_10169C970, &qword_101398A18);
      swift_beginAccess();
      v76 = *(v0 + 520);
      if (*(v76 + 16) && (v77 = sub_1000210EC(*(v0 + 1096)), (v78 & 1) != 0))
      {
        v79 = *(*(v76 + 56) + 8 * v77);
        swift_endAccess();
        v80 = *(v79 + 16);
      }

      else
      {
        swift_endAccess();
        v80 = 0;
      }

      v88 = *(v0 + 1632);
      v82 = *(v0 + 1568);
      v89 = *(v0 + 1560);
      v90 = *(v0 + 1272);
      v593 = *(v0 + 1152);
      v91 = *(v0 + 1104);
      v92 = *(v0 + 1096);
      v83 = *(v0 + 992);
      sub_1002DBBF0(v92 + *(*(v0 + 1016) + 48), type metadata accessor for RawSearchResult);
      (v603)(v92, v90);
      sub_10000B3A8(v91, &qword_10169C970, &qword_101398A18);
      *(v61 + 44) = v80;
      _os_log_impl(&_mh_execute_header, v577, v573, "Return search result for beacon (wild): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v61, 0x34u);
      swift_arrayDestroy();

      sub_100016590(v89, v82);
      sub_10000B3A8(v83, &unk_1016C1120, &qword_1013C49D0);
      v87 = v593;
    }

    else
    {
      v81 = *(v0 + 1632);
      v82 = *(v0 + 1568);
      v83 = *(v0 + 1560);
      v587 = *(v0 + 1272);
      v592 = *(v0 + 1304);
      v599 = *(v0 + 1152);
      v84 = *(v0 + 1120);
      v85 = *(v0 + 1112);
      v86 = *(v0 + 1280) + 8;
      v582 = *(v0 + 992);
      sub_10000B3A8(*(v0 + 1104), &qword_10169C970, &qword_101398A18);

      sub_100016590(v83, v82);
      sub_10000B3A8(v85, &qword_10169C970, &qword_101398A18);
      sub_10000B3A8(v84, &qword_10169C970, &qword_101398A18);
      (v603)(v592, v587);
      sub_10000B3A8(v582, &unk_1016C1120, &qword_1013C49D0);
      v87 = v599;
    }

    sub_10000B3A8(v87, &qword_10169C970, &qword_101398A18);
    v93 = *(v0 + 1552) + 1;
    if (v93 != *(v0 + 1544))
    {
      *(v0 + 1552) = v93;
      v308 = *(v0 + 1536);
      if (v93 >= *(v308 + 16))
      {
LABEL_328:
        __break(1u);
        goto LABEL_329;
      }

      v309 = *(v0 + 1480);
      v310 = v309 >> 62;
      v311 = v308 + 24 * v93;
      v312 = *(v311 + 32);
      *(v0 + 1560) = v312;
      v82 = *(v311 + 40);
      *(v0 + 1568) = v82;
      v313 = *(v311 + 48);
      *(v0 + 1580) = *(v311 + 52);
      *(v0 + 1576) = v313;
      if ((v309 >> 62) > 1)
      {
        if (v310 != 2)
        {
          v83 = 0;
          v314 = 0;
          v316 = 0;
          v315 = 0;
          goto LABEL_234;
        }

        v330 = *(v0 + 1472);
        v314 = *(v330 + 16);
        v83 = *(v330 + 24);
      }

      else
      {
        if (!v310)
        {
          v314 = 0;
          v315 = 0;
          v83 = BYTE6(v309);
          v316 = BYTE6(v309);
          goto LABEL_234;
        }

        v330 = *(v0 + 1472);
        v83 = v330 >> 32;
        v314 = v330;
      }

      sub_10002E98C(v330, v309);
      if (v83 < v314)
      {
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
        goto LABEL_331;
      }

      v309 = *(v0 + 1480);
      v351 = *(v0 + 1472);
      if (v309 >> 62 == 2)
      {
        v315 = *(v351 + 16);
        v316 = *(v351 + 24);
      }

      else
      {
        v316 = v351 >> 32;
        v315 = v351;
      }

LABEL_234:
      if (v316 < v83 || v83 < v315)
      {
        goto LABEL_330;
      }

      if (__OFSUB__(v83, v314))
      {
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
        goto LABEL_340;
      }

      if ((v83 - v314) >= 0x39)
      {
        v83 = v314 + 57;
        if (__OFADD__(v314, 57))
        {
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
          goto LABEL_344;
        }

        v353 = v309 >> 62;
        if ((v309 >> 62) > 1)
        {
          if (v353 == 2)
          {
            v357 = *(v0 + 1472);
            v354 = *(v357 + 16);
            v355 = *(v357 + 24);
          }

          else
          {
            v355 = 0;
            v354 = 0;
          }
        }

        else if (v353)
        {
          v354 = *(v0 + 1472);
          v355 = v354 >> 32;
          v354 = v354;
        }

        else
        {
          v354 = 0;
          v355 = BYTE6(v309);
        }

        if (v355 < v83 || v83 < v354)
        {
          goto LABEL_341;
        }

        v365 = 0;
        if (v353 <= 1)
        {
          if (v353)
          {
            v365 = *(v0 + 1472);
          }

LABEL_263:
          if (v83 < v365)
          {
            goto LABEL_332;
          }

LABEL_264:
          v366 = *(v0 + 1472);
          sub_100017D5C(v312, v82);
          sub_100017D5C(v312, v82);
          v367 = Data._Representation.subscript.getter();
          v369 = v368;
          sub_100006654(v366, v309);
          v370 = v369 >> 62;
          if ((v369 >> 62) > 1)
          {
            if (v370 != 2)
            {
              goto LABEL_278;
            }

            v372 = *(v367 + 16);
            v371 = *(v367 + 24);
            v138 = __OFSUB__(v371, v372);
            v373 = v371 - v372;
            if (!v138)
            {
              if (v373 != 57)
              {
                goto LABEL_278;
              }

              goto LABEL_271;
            }

            __break(1u);
          }

          else
          {
            if (!v370)
            {
              if (BYTE6(v369) != 57)
              {
LABEL_278:
                v387 = v367;
                v388 = v369;
LABEL_279:
                sub_100016590(v387, v388);
                return _assertionFailure(_:_:file:line:flags:)();
              }

LABEL_271:
              v83 = v567;
              v374 = sub_100A7A194(v367, v369);
              if (v567)
              {
                v82 = v0 + 560;
                static os_log_type_t.error.getter();
                if (qword_101694BE0 == -1)
                {
LABEL_274:
                  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                  v377 = swift_allocObject();
                  *(v377 + 16) = xmmword_101385D80;
                  *v82 = v83;
                  swift_errorRetain();
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  v378 = String.init<A>(describing:)();
                  v380 = v379;
                  *(v377 + 56) = &type metadata for String;
                  *(v377 + 64) = sub_100008C00();
                  *(v377 + 32) = v378;
                  *(v377 + 40) = v380;
                  os_log(_:dso:log:_:_:)();

                  sub_1001BAF88();
                  v381 = swift_allocError();
                  *v382 = 0;
                  swift_willThrow();

LABEL_275:
                  v612 = 0;
                  v613 = 0xE000000000000000;
                  _StringGuts.grow(_:)(35);
                  v383 = v613;
                  *(v0 + 504) = v612;
                  *(v0 + 512) = v383;
                  v384._countAndFlagsBits = 0xD000000000000021;
                  v384._object = 0x800000010134CB30;
                  String.append(_:)(v384);
                  *(v0 + 552) = v381;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                  v385 = *(v0 + 504);
                  v386 = *(v0 + 512);
                  return _assertionFailure(_:_:file:line:flags:)();
                }

LABEL_344:
                swift_once();
                goto LABEL_274;
              }

              v375 = sub_100A7829C(v374, 0);
              *(v0 + 1584) = v375;
              *(v0 + 1592) = v376;
              v390 = v375;
              v391 = v376;
              result = CCECCryptorRelease();
              v392 = v391 >> 62;
              if ((v391 >> 62) > 1)
              {
                if (v392 != 2)
                {
                  v420 = 0;
                  goto LABEL_318;
                }

                v402 = v390[2];
                v401 = v390[3];
                v138 = __OFSUB__(v401, v402);
                v393 = v401 - v402;
                if (v138)
                {
                  __break(1u);
                  v403 = *(v0 + 792);
                  v404 = *(v0 + 712);

                  sub_100016590(v312, v367);

                  sub_100016590(v587, v564);

                  sub_1002DBBF0(v403, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_1002DBBF0(v404, type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
                  v405 = *(v0 + 1384);
                  v406 = *(v0 + 1376);
                  v407 = *(v0 + 1368);
                  v408 = *(v0 + 1344);
                  v409 = *(v0 + 1336);
                  v410 = *(v0 + 1328);
                  v411 = *(v0 + 1320);
                  v412 = *(v0 + 1312);
                  v425 = *(v0 + 1304);
                  v427 = *(v0 + 1296);
                  v430 = *(v0 + 1264);
                  v432 = *(v0 + 1256);
                  v435 = *(v0 + 1248);
                  v438 = *(v0 + 1240);
                  v440 = *(v0 + 1232);
                  v442 = *(v0 + 1208);
                  v445 = *(v0 + 1192);
                  v448 = *(v0 + 1168);
                  v451 = *(v0 + 1152);
                  v454 = *(v0 + 1144);
                  v457 = *(v0 + 1136);
                  v460 = *(v0 + 1128);
                  v463 = *(v0 + 1120);
                  v465 = *(v0 + 1112);
                  v467 = *(v0 + 1104);
                  v471 = *(v0 + 1096);
                  v475 = *(v0 + 1088);
                  v478 = *(v0 + 1080);
                  v482 = *(v0 + 1072);
                  v486 = *(v0 + 1064);
                  v489 = *(v0 + 1056);
                  v493 = *(v0 + 1048);
                  v496 = *(v0 + 1040);
                  v499 = *(v0 + 1032);
                  v502 = *(v0 + 1008);
                  v505 = *(v0 + 1000);
                  v508 = *(v0 + 992);
                  v511 = *(v0 + 984);
                  v513 = *(v0 + 976);
                  logd = *(v0 + 968);
                  v522 = *(v0 + 960);
                  v525 = *(v0 + 952);
                  v528 = *(v0 + 944);
                  v531 = *(v0 + 936);
                  v534 = *(v0 + 912);
                  v537 = *(v0 + 888);
                  v540 = *(v0 + 864);
                  v543 = *(v0 + 856);
                  v549 = *(v0 + 832);
                  v555 = *(v0 + 824);
                  v559 = *(v0 + 816);
                  v563 = *(v0 + 792);
                  v566 = *(v0 + 784);
                  v569 = *(v0 + 776);
                  v572 = *(v0 + 768);
                  v576 = *(v0 + 760);
                  v580 = *(v0 + 736);
                  v586 = *(v0 + 712);
                  v590 = *(v0 + 696);
                  v597 = *(v0 + 688);
                  v602 = *(v0 + 680);
                  v606 = *(v0 + 672);
                  v609 = *(v0 + 656);
                  v413 = *(v0 + 520);

                  v414 = *(v0 + 8);

                  return v414();
                }
              }

              else if (v392)
              {
                LODWORD(v393) = HIDWORD(v390) - v390;
                if (__OFSUB__(HIDWORD(v390), v390))
                {
                  goto LABEL_351;
                }

                v393 = v393;
              }

              else
              {
                v393 = BYTE6(v391);
              }

              if (v393 == 28)
              {
                sub_100016590(v367, v369);
                v415 = swift_task_alloc();
                *(v0 + 1600) = v415;
                *v415 = v0;
                v415[1] = sub_1002BA248;
                v416 = *(v0 + 1528);
                v417 = *(v0 + 1336);
                v418 = *(v0 + 1008);
                v419 = *(v0 + 648);

                return sub_1002D7014(v418, v312, v82, v416, v390, v391, 0, v417);
              }

              if (v392 == 2)
              {
                v422 = v390[2];
                v421 = v390[3];
                v420 = v421 - v422;
                if (!__OFSUB__(v421, v422))
                {
                  goto LABEL_318;
                }

                __break(1u);
              }

              else if (v392 == 1)
              {
                if (__OFSUB__(HIDWORD(v390), v390))
                {
                  goto LABEL_352;
                }

                v420 = HIDWORD(v390) - v390;
                goto LABEL_318;
              }

              v420 = BYTE6(v391);
LABEL_318:
              sub_100018350();
              v381 = swift_allocError();
              *v423 = 28;
              *(v423 + 8) = v420;
              *(v423 + 16) = 0;
              swift_willThrow();
              sub_100016590(v390, v391);
              goto LABEL_275;
            }

            if (!__OFSUB__(HIDWORD(v367), v367))
            {
              if (HIDWORD(v367) - v367 != 57)
              {
                goto LABEL_278;
              }

              goto LABEL_271;
            }
          }

          __break(1u);
LABEL_347:
          swift_once();
          goto LABEL_250;
        }

        if (v353 != 2)
        {
          goto LABEL_263;
        }

        v356 = *(v0 + 1472);
      }

      else
      {
        v352 = v309 >> 62;
        if ((v309 >> 62) <= 1)
        {
          if (!v352)
          {
            v83 = BYTE6(v309);
            goto LABEL_264;
          }

          v364 = *(v0 + 1472);
          v83 = v364 >> 32;
          v365 = v364;
          goto LABEL_263;
        }

        if (v352 != 2)
        {
          v83 = 0;
          goto LABEL_264;
        }

        v356 = *(v0 + 1472);
        v83 = *(v356 + 24);
      }

      v365 = *(v356 + 16);
      goto LABEL_263;
    }

    v94 = *(v0 + 1480);
    v95 = *(v0 + 1472);
    v83 = *(v0 + 1384);
    v96 = *(v0 + 1344);
    v97 = *(v0 + 1336);
    v98 = *(v0 + 1280);
    v99 = *(v0 + 1272);

    sub_100006654(v95, v94);
    v100 = *(v98 + 8);
    v100(v96, v99);
    sub_1002DBBF0(v83, type metadata accessor for KeyDropFetchResponse.LocationPayload);
    v100(v97, v99);
    v101 = *(v0 + 1408) + 1;
    if (v101 == *(v0 + 1400))
    {
      break;
    }

    v83 = &unk_10138F3B0;
    while (1)
    {
      *(v0 + 1408) = v101;
      v318 = *(v0 + 632);
      if (!v318)
      {
        v318 = _swiftEmptyArrayStorage;
      }

      if (v101 >= v318[2])
      {
        break;
      }

      v319 = *(v0 + 1384);
      v320 = *(v0 + 1352);
      v321 = *(v0 + 1280);
      v322 = *(v0 + 1272);
      v323 = *(v0 + 1264);
      sub_1002DB760(v318 + ((*(v0 + 1768) + 32) & ~*(v0 + 1768)) + *(*(v0 + 1360) + 72) * v101, v319, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v324 = *(v319 + 16);
      v325 = *(v319 + 24);
      sub_1000D2A70(v319 + *(v320 + 28), v323, &qword_1016980D0, &unk_10138F3B0);
      v326 = *(v321 + 48);
      *(v0 + 1416) = v326;
      *(v0 + 1424) = (v321 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v326(v323, 1, v322) != 1)
      {
        v341 = *(v0 + 1344);
        v342 = *(v0 + 1280);
        v343 = *(v0 + 1272);
        v344 = *(v0 + 1264);
        v345 = *(v0 + 1256);
        v346 = *(v342 + 32);
        *(v0 + 1432) = v346;
        *(v0 + 1440) = (v342 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v346(v341, v344, v343);
        v347 = *(v342 + 16);
        *(v0 + 1448) = v347;
        *(v0 + 1456) = (v342 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v347(v345, v341, v343);
        (*(v342 + 56))(v345, 0, 1, v343);
        v348 = swift_task_alloc();
        *(v0 + 1464) = v348;
        *v348 = v0;
        v348[1] = sub_1002B09AC;
        v349 = *(v0 + 1256);
        v350 = *(v0 + 648);

        return sub_1002D5B7C(v324, v325, v349);
      }

      sub_10000B3A8(*(v0 + 1264), &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v607, qword_10177A818);
      v327 = Logger.logObject.getter();
      v328 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v327, v328))
      {
        v329 = swift_slowAlloc();
        *v329 = 0;
        _os_log_impl(&_mh_execute_header, v327, v328, "Missing share id in payload.", v329, 2u);
      }

      v317 = *(v0 + 1384);

      sub_1002DBBF0(v317, type metadata accessor for KeyDropFetchResponse.LocationPayload);
      v101 = *(v0 + 1408) + 1;
      if (v101 == *(v0 + 1400))
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    __break(1u);
LABEL_323:
    __break(1u);
LABEL_324:
    swift_once();
  }

LABEL_26:
  if (*(v0 + 632))
  {
    v102 = *(v0 + 632);
  }

  if (*(v0 + 624))
  {
    v82 = *(v0 + 624);
  }

  else
  {
    v82 = _swiftEmptyArrayStorage;
  }

  v523 = *(v82 + 16);
  if (!v523)
  {

LABEL_222:

    v331 = *(v0 + 1384);
    v332 = *(v0 + 1376);
    v333 = *(v0 + 1368);
    v334 = *(v0 + 1344);
    v335 = *(v0 + 1336);
    v336 = *(v0 + 1328);
    v337 = *(v0 + 1320);
    v338 = *(v0 + 1312);
    v339 = *(v0 + 1304);
    v424 = *(v0 + 1296);
    v426 = *(v0 + 1264);
    v429 = *(v0 + 1256);
    v431 = *(v0 + 1248);
    v434 = *(v0 + 1240);
    v437 = *(v0 + 1232);
    v439 = *(v0 + 1208);
    v441 = *(v0 + 1192);
    v444 = *(v0 + 1168);
    v447 = *(v0 + 1152);
    v450 = *(v0 + 1144);
    v453 = *(v0 + 1136);
    v456 = *(v0 + 1128);
    v459 = *(v0 + 1120);
    v462 = *(v0 + 1112);
    v464 = *(v0 + 1104);
    v466 = *(v0 + 1096);
    v470 = *(v0 + 1088);
    v474 = *(v0 + 1080);
    v477 = *(v0 + 1072);
    v481 = *(v0 + 1064);
    v485 = *(v0 + 1056);
    v488 = *(v0 + 1048);
    v492 = *(v0 + 1040);
    v495 = *(v0 + 1032);
    v498 = *(v0 + 1008);
    v501 = *(v0 + 1000);
    v504 = *(v0 + 992);
    v507 = *(v0 + 984);
    v510 = *(v0 + 976);
    v512 = *(v0 + 968);
    logc = *(v0 + 960);
    v521 = *(v0 + 952);
    v524 = *(v0 + 944);
    v527 = *(v0 + 936);
    v530 = *(v0 + 912);
    v533 = *(v0 + 888);
    v536 = *(v0 + 864);
    v539 = *(v0 + 856);
    v542 = *(v0 + 832);
    v548 = *(v0 + 824);
    v554 = *(v0 + 816);
    v558 = *(v0 + 792);
    v562 = *(v0 + 784);
    v565 = *(v0 + 776);
    v568 = *(v0 + 768);
    v571 = *(v0 + 760);
    v575 = *(v0 + 736);
    v579 = *(v0 + 712);
    v585 = *(v0 + 696);
    v589 = *(v0 + 688);
    v596 = *(v0 + 680);
    v601 = *(v0 + 672);
    v608 = *(v0 + 656);
    swift_beginAccess();
    v605 = *(v0 + 520);

    v340 = *(v0 + 8);

    return v340(v605);
  }

  v103 = *(v0 + 1280);
  v433 = (v0 + 600);
  v104 = *(v0 + 1024);
  v105 = *(v0 + 1016);
  v106 = *(v0 + 848);
  v436 = *(v0 + 808);
  v561 = *(v0 + 800);
  v541 = *(v0 + 792);
  v600 = *(v0 + 776);
  v506 = *(v0 + 752);
  v535 = *(v0 + 744);
  v107 = *(v0 + 728);
  v529 = v82 + 32;
  v494 = *(v0 + 712);
  v578 = (v107 + 104);
  v574 = (v107 + 8);
  v557 = *(v0 + 704);
  v461 = (*(v0 + 928) + 56);
  v503 = (v106 + 16);
  v458 = *(v0 + 664);
  v455 = (v106 + 56);
  v500 = (v106 + 8);
  v452 = (v103 + 16);
  v446 = (v104 + 48);
  v449 = (v104 + 56);
  v526 = *(*(v0 + 640) + 16);
  v509 = (v103 + 8);
  v570 = enum case for HashAlgorithm.sha256(_:);

  v108 = 0;
  v443 = xmmword_101385D80;
  v109 = v567;
  v497 = v82;
  v538 = v105;
  while (2)
  {
    if (v108 >= *(v82 + 16))
    {
      goto LABEL_333;
    }

    v532 = v108;
    v110 = (v529 + 24 * v108);
    v112 = *v110;
    v111 = v110[1];
    v564 = v111;
    v588 = *v110;
    v567 = v110[2];
    if (!v526)
    {
      sub_100017D5C(v112, v111);

LABEL_143:
      if (qword_101694510 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v607, qword_10177A818);
      sub_100017D5C(v588, v564);

      v164 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      sub_100016590(v588, v564);

      if (os_log_type_enabled(v164, v83))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v612 = v166;
        *v165 = 141558275;
        *(v165 + 4) = 1752392040;
        *(v165 + 12) = 2081;
        *(v0 + 488) = v588;
        *(v0 + 496) = v564;
        sub_10025DB08();
        v167 = RawRepresentable<>.hexString.getter();
        v169 = sub_1000136BC(v167, v168, &v612);

        *(v165 + 14) = v169;
        _os_log_impl(&_mh_execute_header, v164, v83, "No member ownded device decryption key found for advt: %{private,mask.hash}s.", v165, 0x16u);
        sub_100007BAC(v166);
      }

      sub_100016590(v588, v564);

      goto LABEL_148;
    }

    v113 = *(v0 + 640) + ((*(v506 + 80) + 32) & ~*(v506 + 80));
    sub_100017D5C(v112, v111);
    if (v112)
    {
      v114 = 0;
    }

    else
    {
      v114 = v111 == 0xC000000000000000;
    }

    v115 = !v114;
    v551 = v115;
    v594 = v111 >> 62;
    v545 = BYTE6(v111);
    v583 = *(v506 + 72);
    v116 = __OFSUB__(HIDWORD(v112), v112);
    v519 = v116;
    log = (HIDWORD(v112) - v112);

    v117 = v526;
LABEL_48:
    v119 = *(v0 + 776);
    sub_1002DB760(v113, v119, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v120 = *v119;
    v121 = *(v600 + 8);
    v82 = v121 >> 62;
    if ((v121 >> 62) > 1)
    {
      if (v82 == 2)
      {
        v83 = *(v120 + 16);
        v123 = *(v120 + 24);
        sub_100017D5C(v120, *(v600 + 8));
        v122 = *(v120 + 16);
        v124 = *(v120 + 24);
      }

      else
      {
        v83 = 0;
        v123 = 0;
        v124 = 0;
        v122 = 0;
      }
    }

    else if (v82)
    {
      v83 = v120;
      v123 = v120 >> 32;
      sub_100017D5C(v120, *(v600 + 8));
      v124 = v120 >> 32;
      v122 = v120;
    }

    else
    {
      v83 = 0;
      v122 = 0;
      v123 = BYTE6(v121);
      v124 = BYTE6(v121);
    }

    if (v124 < v83 || v83 < v122)
    {
      goto LABEL_320;
    }

    if (v82 > 1)
    {
      if (v82 == 2)
      {
        v125 = *(v120 + 16);
        v126 = *(v120 + 24);
      }

      else
      {
        v126 = 0;
        v125 = 0;
      }
    }

    else if (v82)
    {
      v125 = v120;
      v126 = v120 >> 32;
    }

    else
    {
      v125 = 0;
      v126 = BYTE6(v121);
    }

    if (v126 < v123 || v123 < v125)
    {
      goto LABEL_321;
    }

    if (__OFSUB__(v123, v83))
    {
      goto LABEL_322;
    }

    if ((v123 - v83) >= 0x39)
    {
      v127 = v83 + 57;
      if (!__OFADD__(v83, 57))
      {
        if (v82 > 1)
        {
          if (v82 == 2)
          {
            v128 = *(v120 + 16);
            v129 = *(v120 + 24);
          }

          else
          {
            v129 = 0;
            v128 = 0;
          }
        }

        else if (v82)
        {
          v128 = v120;
          v129 = v120 >> 32;
        }

        else
        {
          v128 = 0;
          v129 = BYTE6(v121);
        }

        if (v129 < v127 || v127 < v128)
        {
          goto LABEL_326;
        }

        v130 = 0;
        if (v82 <= 1)
        {
          if (v82)
          {
            goto LABEL_87;
          }

          goto LABEL_90;
        }

        if (v82 == 3)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
      goto LABEL_328;
    }

    if (v82 > 1)
    {
      if (v82 != 2)
      {
        goto LABEL_91;
      }

      v127 = *(v120 + 24);
LABEL_89:
      v130 = *(v120 + 16);
      goto LABEL_90;
    }

    if (!v82)
    {
      goto LABEL_91;
    }

    v127 = v120 >> 32;
LABEL_87:
    v130 = v120;
LABEL_90:
    if (v127 < v130)
    {
      goto LABEL_323;
    }

LABEL_91:
    v603 = v117;
    v131 = Data._Representation.subscript.getter();
    v133 = v132;
    sub_100016590(v120, v121);
    v134 = v133 >> 62;
    if ((v133 >> 62) > 1)
    {
      if (v134 != 2)
      {
        goto LABEL_281;
      }

      v137 = *(v131 + 16);
      v136 = *(v131 + 24);
      v138 = __OFSUB__(v136, v137);
      v135 = v136 - v137;
      if (v138)
      {
        goto LABEL_334;
      }
    }

    else if (v134)
    {
      LODWORD(v135) = HIDWORD(v131) - v131;
      if (__OFSUB__(HIDWORD(v131), v131))
      {
        goto LABEL_335;
      }

      v135 = v135;
    }

    else
    {
      v135 = BYTE6(v133);
    }

    if (v135 != 57)
    {
LABEL_281:
      v387 = v131;
      v388 = v133;
      goto LABEL_279;
    }

    v83 = v109;
    v139 = sub_100A7A194(v131, v133);
    if (!v109)
    {
      v140 = sub_100A7829C(v139, 0);
      v82 = v141;
      result = CCECCryptorRelease();
      v143 = v82 >> 62;
      if ((v82 >> 62) > 1)
      {
        if (v143 == 2)
        {
          v146 = *(v140 + 16);
          v145 = *(v140 + 24);
          v138 = __OFSUB__(v145, v146);
          v144 = v145 - v146;
          if (v138)
          {
            goto LABEL_337;
          }

          goto LABEL_111;
        }

        v389 = 0;
LABEL_294:
        sub_100018350();
        v362 = swift_allocError();
        *v396 = 28;
        *(v396 + 8) = v389;
        *(v396 + 16) = 0;
        swift_willThrow();
        sub_100016590(v140, v82);
        goto LABEL_295;
      }

      if (v143)
      {
        LODWORD(v144) = HIDWORD(v140) - v140;
        if (__OFSUB__(HIDWORD(v140), v140))
        {
          goto LABEL_336;
        }

        v144 = v144;
      }

      else
      {
        v144 = BYTE6(v82);
      }

LABEL_111:
      if (v144 == 28)
      {
        v147 = *(v0 + 736);
        v148 = *(v0 + 720);
        sub_100016590(v131, v133);
        (*v578)(v147, v570, v148);
        v149 = Data.hash(algorithm:)();
        v151 = v150;
        sub_100016590(v140, v82);
        (*v574)(v147, v148);
        v152 = v151 >> 62;
        if (v151 >> 62 == 3)
        {
          if (v149)
          {
            v153 = 0;
          }

          else
          {
            v153 = v151 == 0xC000000000000000;
          }

          v154 = v594;
          v156 = !v153 || v594 < 3;
          if (((v156 | v551) & 1) == 0)
          {
            v170 = 0;
            v171 = 0xC000000000000000;
            goto LABEL_152;
          }

          v157 = 0;
          if (v594 > 1)
          {
LABEL_136:
            if (v154 != 2)
            {
              if (!v157)
              {
                goto LABEL_150;
              }

LABEL_46:
              sub_100016590(v149, v151);
              v109 = 0;
              v118 = v603;
              goto LABEL_47;
            }

            v162 = *(v588 + 16);
            v161 = *(v588 + 24);
            v138 = __OFSUB__(v161, v162);
            v160 = (v161 - v162);
            if (v138)
            {
              goto LABEL_338;
            }

            goto LABEL_138;
          }
        }

        else
        {
          v154 = v594;
          if (v152 == 2)
          {
            v159 = *(v149 + 16);
            v158 = *(v149 + 24);
            v138 = __OFSUB__(v158, v159);
            v157 = v158 - v159;
            if (v138)
            {
              goto LABEL_343;
            }

            if (v594 > 1)
            {
              goto LABEL_136;
            }
          }

          else if (v152 == 1)
          {
            LODWORD(v157) = HIDWORD(v149) - v149;
            if (__OFSUB__(HIDWORD(v149), v149))
            {
              goto LABEL_342;
            }

            v157 = v157;
            if (v594 > 1)
            {
              goto LABEL_136;
            }
          }

          else
          {
            v157 = BYTE6(v151);
            if (v594 > 1)
            {
              goto LABEL_136;
            }
          }
        }

        v160 = v545;
        if (v154)
        {
          v160 = log;
          if (v519)
          {
            goto LABEL_339;
          }
        }

LABEL_138:
        if (v157 != v160)
        {
          goto LABEL_46;
        }

        if (v157 < 1)
        {
LABEL_150:
          v170 = v149;
          v171 = v151;
LABEL_152:
          sub_100016590(v170, v171);
          v109 = 0;
LABEL_153:
          v172 = *(v0 + 792);
          v82 = *(v0 + 784);
          v83 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey;
          sub_1002DB7C8(*(v0 + 776), v82, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          sub_1002DB7C8(v82, v172, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
          v173 = *(v567 + 16);
          if (v173)
          {
            v603 = (v567 + ((*(v557 + 80) + 32) & ~*(v557 + 80)));

            v174 = 0;
            v83 = 0;
            v595 = v173;
            while (v174 < *(v567 + 16))
            {
              v176 = *(v0 + 792);
              sub_1002DB760(&v603[*(v557 + 72) * v174], *(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v177 = *v176;
              v178 = *(v541 + 8);
              v584 = v174;
              v179 = sub_100496ABC();
              v180 = **(v0 + 712);
              v181 = *(v494 + 8);
              v182 = **(v0 + 792);
              v183 = *(v541 + 8);
              sub_100017D5C(v182, v183);
              sub_10002EA98(57, v182, v183, &v612);
              sub_100496F68(v612, v613, &v610);
              v184 = v611;
              if (v611 >> 60 == 15)
              {
                return _assertionFailure(_:_:file:line:flags:)();
              }

              v546 = *(v0 + 792);
              v185 = v610;
              v186 = PublicKey.advertisement.getter(v610, v611);
              v188 = v187;
              result = sub_100006654(v185, v184);
              v189 = v181 >> 62;
              v552 = *(v535 + 20);
              if ((v181 >> 62) > 1)
              {
                if (v189 == 2)
                {
                  v192 = *(v180 + 16);
                  v191 = *(v180 + 24);
                  v190 = v191 - v192;
                  if (__OFSUB__(v191, v192))
                  {
                    goto LABEL_349;
                  }
                }

                else
                {
                  v190 = 0;
                }
              }

              else if (v189)
              {
                if (__OFSUB__(HIDWORD(v180), v180))
                {
                  __break(1u);
LABEL_349:
                  __break(1u);
                  goto LABEL_350;
                }

                v190 = HIDWORD(v180) - v180;
              }

              else
              {
                v190 = BYTE6(v181);
              }

              sub_100A2A240(3);
              v194 = v193;
              v195 = v179;
              sub_100017D5C(v180, v181);
              sub_100017D5C(v186, v188);
              if (v190 >= v194)
              {
                v196 = (v0 + 672);
                sub_100A2AA58(v195, v180, v181, v186, v188, *(v0 + 672));
              }

              else
              {
                v196 = (v0 + 680);
                sub_100A2B118(v195, v180, v181, v186, v188, *(v0 + 680));
              }

              v479 = v186;
              v197 = *v196;
              logb = *(v0 + 1016);
              v520 = v195;
              v487 = *(v0 + 1000);
              v490 = *(v0 + 1272);
              v198 = *(v0 + 976);
              v468 = *(v0 + 968);
              v199 = *(v0 + 920);
              v200 = *(v0 + 856);
              v201 = *(v0 + 840);
              v202 = *(v0 + 832);
              v203 = *(v0 + 696);
              v204 = *(v0 + 688);
              v205 = *(v0 + 656);
              sub_1002DB7C8(v197, v204, type metadata accessor for BeaconPayloadv1);
              sub_1002DB7C8(v204, v203, type metadata accessor for BeaconPayloadv1);
              v206 = v198;
              v472 = v198;
              (*v461)(v198, 1, 1, v199);
              v483 = *(v203 + v458[10]);
              v207 = *v503;
              (*v503)(v200, v203 + v458[5], v201);
              v208 = *(v203 + v458[7]);
              v209 = *(v203 + v458[8]);
              v210 = *(v203 + v458[9]);
              (*v455)(v205, 1, 1, v201);
              sub_1000D2A70(v206, v468, &unk_1016C1120, &qword_1013C49D0);
              v428 = v207;
              v207(&v202[v561[5]], v200, v201);
              sub_1000D2A70(v205, &v202[v561[10]], &unk_101696900, &unk_10138B1E0);
              sub_1000D2A70(v468, &v202[v561[11]], &unk_1016C1120, &qword_1013C49D0);
              v211 = &v202[v561[12]];
              UUID.init()();
              sub_100016590(v479, v188);
              sub_10000B3A8(v468, &unk_1016C1120, &qword_1013C49D0);
              sub_10000B3A8(v205, &unk_101696900, &unk_10138B1E0);
              v212 = *v500;
              (*v500)(v200, v201);
              sub_10000B3A8(v472, &unk_1016C1120, &qword_1013C49D0);
              sub_1002DBBF0(v203, type metadata accessor for BeaconPayloadv1);
              *v202 = v483;
              *&v202[v561[6]] = v208;
              *&v202[v561[7]] = v209;
              *&v202[v561[8]] = v210;
              v202[v561[9]] = 15;
              *&v202[v561[13]] = 256;
              v213 = *(v538 + 48);
              (*v452)(v487, v546 + v552, v490);
              sub_1002DB7C8(v202, v487 + v213, type metadata accessor for RawSearchResult);
              (*v449)(v487, 0, 1, logb);
              if ((*v446)(v487, 1, logb) == 1)
              {
                v214 = *(v0 + 1000);

                sub_10000B3A8(v214, &qword_10169C968, &qword_101398A10);
                v215 = v595;
                v216 = v584;
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v217 = *(v0 + 792);
                v218 = *(v0 + 760);
                sub_1000076D4(v607, qword_10177A818);
                sub_1002DB760(v217, v218, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                v82 = Logger.logObject.getter();
                v219 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v82, v219))
                {
                  v220 = *(v0 + 1272);
                  v221 = *(v0 + 760);
                  v222 = swift_slowAlloc();
                  v223 = swift_slowAlloc();
                  v612 = v223;
                  *v222 = 141558275;
                  *(v222 + 4) = 1752392040;
                  *(v222 + 12) = 2081;
                  v224 = *(v535 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v225 = dispatch thunk of CustomStringConvertible.description.getter();
                  v227 = v226;
                  sub_1002DBBF0(v221, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v228 = sub_1000136BC(v225, v227, &v612);

                  *(v222 + 14) = v228;
                  _os_log_impl(&_mh_execute_header, v82, v219, "Could not create search result for beacon: %{private,mask.hash}s.", v222, 0x16u);
                  sub_100007BAC(v223);

                  v215 = v595;
                }

                else
                {
                  v175 = *(v0 + 760);

                  sub_1002DBBF0(v175, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                }
              }

              else
              {
                v547 = v212;
                v229 = *(v0 + 1088);
                v230 = *(v0 + 1080);
                sub_1000D2AD8(*(v0 + 1000), v229, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v229, v230, &qword_10169C970, &qword_101398A18);
                v231 = *(v538 + 48);
                swift_beginAccess();
                v232 = sub_1005CAD18(v230, *(v0 + 520));
                v233 = *(v0 + 1272);
                if (v232)
                {
                  v234 = v232;
                  v235 = *(v0 + 1088);
                  v236 = *(v0 + 1080);
                  v237 = *(v0 + 1072);
                  swift_endAccess();
                  sub_1002DBBF0(v230 + v231, type metadata accessor for RawSearchResult);
                  v553 = *v509;
                  (*v509)(v236, v233);
                  sub_1000D2A70(v235, v237, &qword_10169C970, &qword_101398A18);
                  v238 = (v237 + *(v538 + 48));
                  v239 = *(v234 + 40);
                  Hasher.init(_seed:)();
                  sub_100D15128();
                  v240 = Hasher._finalize()();
                  v241 = -1 << *(v234 + 32);
                  v242 = v240 & ~v241;
                  if ((*(v234 + 56 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242))
                  {
                    v243 = ~v241;
                    v244 = *v238;
                    v245 = *(v436 + 72);
                    do
                    {
                      v246 = *(v0 + 816);
                      sub_1002DB760(*(v234 + 48) + v242 * v245, v246, type metadata accessor for RawSearchResult);
                      v247 = *(v0 + 816);
                      if (*v246 == v244 && (v248 = v561[5], v249 = static Date.== infix(_:_:)(), v247 = *(v0 + 816), (v249 & 1) != 0) && *(v247 + v561[6]) == *&v238[v561[6]] && *(v247 + v561[7]) == *&v238[v561[7]] && *(v247 + v561[8]) == *&v238[v561[8]])
                      {
                        v250 = v561[12];
                        v251 = *(v0 + 816);
                        v252 = static UUID.== infix(_:_:)();
                        sub_1002DBBF0(v251, type metadata accessor for RawSearchResult);
                        if (v252)
                        {
                          goto LABEL_190;
                        }
                      }

                      else
                      {
                        sub_1002DBBF0(v247, type metadata accessor for RawSearchResult);
                      }

                      v242 = (v242 + 1) & v243;
                    }

                    while (((*(v234 + 56 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242) & 1) != 0);
                  }

                  v253 = *(v0 + 832);
                  v254 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1002DB760(v238, v253, type metadata accessor for RawSearchResult);
                  v612 = v234;
                  sub_100DFE348(v253, v242, v254);
                  v234 = v612;
LABEL_190:
                  sub_1002DBBF0(v238, type metadata accessor for RawSearchResult);
                  v255 = *(v0 + 1128);
                  v256 = *(v0 + 1088);
                  v553(*(v0 + 1072), *(v0 + 1272));
                  sub_1000D2A70(v256, v255, &qword_10169C970, &qword_101398A18);
                  v257 = *(v538 + 48);
                  swift_beginAccess();
                  sub_1001DE1B0(v234, v255);
                }

                else
                {
                  v258 = *(v0 + 1128);
                  v259 = *(v0 + 1088);
                  v260 = *(v0 + 1080);
                  v261 = *(v0 + 1064);
                  swift_endAccess();
                  sub_1002DBBF0(v230 + v231, type metadata accessor for RawSearchResult);
                  v553 = *v509;
                  (*v509)(v260, v233);
                  sub_1000D2A70(v259, v258, &qword_10169C970, &qword_101398A18);
                  v257 = *(v538 + 48);
                  sub_1000BC4D4(&qword_10169C978, &unk_10139FBF0);
                  v262 = *(v436 + 72);
                  v263 = (*(v436 + 80) + 32) & ~*(v436 + 80);
                  v264 = swift_allocObject();
                  *(v264 + 16) = xmmword_101385D80;
                  sub_1000D2A70(v259, v261, &qword_10169C970, &qword_101398A18);
                  sub_1002DB7C8(v261 + *(v538 + 48), v264 + v263, type metadata accessor for RawSearchResult);
                  v553(v261, v233);
                  v265 = sub_10112A090(v264);
                  swift_setDeallocating();
                  sub_1002DBBF0(v264 + v263, type metadata accessor for RawSearchResult);
                  swift_deallocClassInstance();
                  swift_beginAccess();
                  v266 = *(v0 + 520);
                  v267 = swift_isUniquelyReferenced_nonNull_native();
                  v612 = *(v0 + 520);
                  sub_100FFC200(v265, v258, v267);
                  v553(v258, v233);
                  *(v0 + 520) = v612;
                }

                swift_endAccess();
                sub_1002DBBF0(*(v0 + 1128) + v257, type metadata accessor for RawSearchResult);
                if (qword_101694510 != -1)
                {
                  swift_once();
                }

                v268 = *(v0 + 1088);
                v269 = *(v0 + 1056);
                v270 = *(v0 + 1048);
                v271 = *(v0 + 1040);
                v272 = *(v0 + 792);
                v273 = *(v0 + 768);
                sub_1000076D4(v607, qword_10177A818);
                sub_1002DB760(v272, v273, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                sub_1000D2A70(v268, v269, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v268, v270, &qword_10169C970, &qword_101398A18);
                sub_1000D2A70(v268, v271, &qword_10169C970, &qword_101398A18);
                v274 = Logger.logObject.getter();
                v275 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v274, v275))
                {
                  v491 = v275;
                  loga = v274;
                  v276 = *(v0 + 1272);
                  v277 = *(v0 + 1128);
                  v278 = *(v0 + 1056);
                  v484 = *(v0 + 1040);
                  v476 = *(v0 + 1048);
                  v480 = *(v0 + 1032);
                  v469 = *(v0 + 840);
                  v473 = *(v0 + 856);
                  v279 = *(v0 + 768);
                  v280 = swift_slowAlloc();
                  v612 = swift_slowAlloc();
                  *v280 = 141559043;
                  *(v280 + 4) = 1752392040;
                  *(v280 + 12) = 2081;
                  v281 = *(v535 + 20);
                  sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
                  v282 = dispatch thunk of CustomStringConvertible.description.getter();
                  v284 = v283;
                  sub_1002DBBF0(v279, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  v285 = sub_1000136BC(v282, v284, &v612);

                  *(v280 + 14) = v285;
                  *(v280 + 22) = 2082;
                  sub_1000D2A70(v278, v277, &qword_10169C970, &qword_101398A18);
                  v286 = v277 + *(v538 + 48);
                  v428(v473, v286 + v561[5], v469);
                  sub_1002DBBF0(v286, type metadata accessor for RawSearchResult);
                  v553(v277, v276);
                  sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
                  v287 = dispatch thunk of CustomStringConvertible.description.getter();
                  v289 = v288;
                  v547(v473, v469);
                  sub_10000B3A8(v278, &qword_10169C970, &qword_101398A18);
                  v290 = sub_1000136BC(v287, v289, &v612);

                  *(v280 + 24) = v290;
                  *(v280 + 32) = 2082;
                  sub_1000D2A70(v476, v277, &qword_10169C970, &qword_101398A18);
                  v291 = v277 + *(v538 + 48);
                  LOBYTE(v290) = *(v291 + v561[9]);
                  sub_1002DBBF0(v291, type metadata accessor for RawSearchResult);
                  v553(v277, v276);
                  v292 = sub_100013454(v290);
                  v294 = v293;
                  sub_10000B3A8(v476, &qword_10169C970, &qword_101398A18);
                  v295 = sub_1000136BC(v292, v294, &v612);

                  *(v280 + 34) = v295;
                  *(v280 + 42) = 2048;
                  sub_1000D2A70(v484, v480, &qword_10169C970, &qword_101398A18);
                  swift_beginAccess();
                  v296 = *(v0 + 520);
                  if (*(v296 + 16) && (v297 = sub_1000210EC(*(v0 + 1032)), (v298 & 1) != 0))
                  {
                    v299 = *(*(v296 + 56) + 8 * v297);
                    swift_endAccess();
                    v300 = *(v299 + 16);
                  }

                  else
                  {
                    swift_endAccess();
                    v300 = 0;
                  }

                  v215 = v595;
                  v304 = *(v0 + 1272);
                  v305 = *(v0 + 1088);
                  v306 = *(v0 + 1040);
                  v307 = *(v0 + 1032);
                  sub_1002DBBF0(v307 + *(v538 + 48), type metadata accessor for RawSearchResult);
                  v553(v307, v304);
                  v82 = &qword_10169C970;
                  sub_10000B3A8(v306, &qword_10169C970, &qword_101398A18);
                  *(v280 + 44) = v300;
                  _os_log_impl(&_mh_execute_header, loga, v491, "Return search result for beacon (own beacon): %{private,mask.hash}s,\nlocation timestamp %{public}s,\nsource: %{public}s,\ntotal found: %ld.", v280, 0x34u);
                  swift_arrayDestroy();

                  sub_10000B3A8(v305, &qword_10169C970, &qword_101398A18);
                }

                else
                {
                  v301 = *(v0 + 1088);
                  v82 = *(v0 + 1056);
                  v302 = *(v0 + 1048);
                  v303 = *(v0 + 768);
                  sub_10000B3A8(*(v0 + 1040), &qword_10169C970, &qword_101398A18);

                  sub_10000B3A8(v302, &qword_10169C970, &qword_101398A18);
                  sub_10000B3A8(v82, &qword_10169C970, &qword_101398A18);
                  sub_1002DBBF0(v303, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
                  sub_10000B3A8(v301, &qword_10169C970, &qword_101398A18);
                  v215 = v595;
                }

                v216 = v584;
              }

              v174 = v216 + 1;
              sub_1002DBBF0(*(v0 + 712), type metadata accessor for KeyDropFetchResponse.OwnedLocationInfo);
              v83 = 0;
              if (v174 == v215)
              {

                sub_100016590(v588, v564);

                v109 = 0;
                goto LABEL_204;
              }
            }

            goto LABEL_327;
          }

          sub_100016590(v588, v564);

LABEL_204:
          sub_1002DBBF0(*(v0 + 792), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
LABEL_148:
          v82 = v497;
          v108 = v532 + 1;
          if (v532 + 1 == v523)
          {
            goto LABEL_222;
          }

          continue;
        }

        sub_100017D5C(v588, v564);
        sub_100017D5C(v588, v564);
        sub_100017D5C(v149, v151);
        v163 = sub_100F0B1BC(v149, v151, v588, v564);
        v109 = 0;
        sub_100016590(v149, v151);
        sub_100016590(v149, v151);
        sub_100016590(v588, v564);
        v118 = v603;
        if (v163)
        {
          goto LABEL_153;
        }

LABEL_47:
        sub_1002DBBF0(*(v0 + 776), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
        v113 += v583;
        v117 = v118 - 1;
        if (!v117)
        {
          goto LABEL_143;
        }

        goto LABEL_48;
      }

      if (v143 == 2)
      {
        v395 = *(v140 + 16);
        v394 = *(v140 + 24);
        v389 = v394 - v395;
        if (!__OFSUB__(v394, v395))
        {
          goto LABEL_294;
        }

        __break(1u);
      }

      else if (v143 == 1)
      {
        if (!__OFSUB__(HIDWORD(v140), v140))
        {
          v389 = HIDWORD(v140) - v140;
          goto LABEL_294;
        }

LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
        return result;
      }

      v389 = BYTE6(v82);
      goto LABEL_294;
    }

    break;
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_347;
  }

LABEL_250:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v358 = swift_allocObject();
  *(v358 + 16) = v443;
  *v433 = v83;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v359 = String.init<A>(describing:)();
  v361 = v360;
  *(v358 + 56) = &type metadata for String;
  *(v358 + 64) = sub_100008C00();
  *(v358 + 32) = v359;
  *(v358 + 40) = v361;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v362 = swift_allocError();
  *v363 = 0;
  swift_willThrow();

LABEL_295:
  v612 = 0;
  v613 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v397 = v613;
  *(v0 + 472) = v612;
  *(v0 + 480) = v397;
  v398._countAndFlagsBits = 0xD000000000000021;
  v398._object = 0x800000010134CB30;
  String.append(_:)(v398);
  *(v0 + 584) = v362;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v399 = *(v0 + 472);
  v400 = *(v0 + 480);
  return _assertionFailure(_:_:file:line:flags:)();
}