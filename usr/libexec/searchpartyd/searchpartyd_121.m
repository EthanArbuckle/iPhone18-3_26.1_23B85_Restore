uint64_t sub_100CB3A20()
{
  sub_100018D00(v0[199], type metadata accessor for OwnedBeaconRecord);
  v1 = v0[212];
  v2 = v0[211];
  v3 = v0[210];
  v4 = v0[209];
  v5 = v0[208];
  v6 = v0[207];
  v7 = v0[206];
  v8 = v0[205];
  v9 = v0[204];
  v10 = v0[203];
  v13 = v0[218];
  v14 = v0[202];
  v15 = v0[201];
  v16 = v0[199];
  v17 = v0[196];
  v18 = v0[194];
  v19 = v0[190];
  v20 = v0[188];
  v21 = v0[187];
  v22 = v0[186];
  v23 = v0[183];
  v24 = v0[180];
  v25 = v0[179];
  v26 = v0[178];
  v27 = v0[176];
  v28 = v0[175];
  v29 = v0[174];
  v30 = v0[173];
  v31 = v0[172];
  v32 = v0[171];
  v33 = v0[170];
  v34 = v0[169];
  v35 = v0[168];
  v36 = v0[167];
  v37 = v0[166];
  v38 = v0[165];
  v39 = v0[164];
  v40 = v0[163];
  v41 = v0[162];
  v42 = v0[161];
  v43 = v0[160];
  v44 = v0[159];
  v45 = v0[158];
  v46 = v0[157];
  v47 = v0[156];
  v48 = v0[155];
  v49 = v0[154];
  v50 = v0[153];
  v51 = v0[152];
  v52 = v0[149];
  v53 = v0[146];
  v54 = v0[145];
  v55 = v0[142];
  v56 = v0[139];
  v57 = v0[136];
  v58 = v0[135];
  v59 = v0[132];
  v60 = v0[129];
  v61 = v0[127];
  v62 = v0[126];
  v63 = v0[123];
  v64 = v0[122];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100CB3E30()
{
  v116 = v0;
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 960);
  sub_100D11DC8(v5, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v108 = v7;
    v8 = *(v0 + 1624);
    v9 = *(v0 + 1616);
    v110 = *(v0 + 1608);
    v10 = *(v0 + 1600);
    v106 = *(v0 + 1528);
    v11 = *(v0 + 1924);
    v12 = swift_slowAlloc();
    v115[0] = swift_slowAlloc();
    *v12 = 136447747;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v115);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = sub_10125403C(v11);
    v19 = sub_1000136BC(v17, v18, v115);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v20 = *(v10 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v115);

    *(v12 + 34) = v24;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2081;
    v25 = v110 + *(v10 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v110, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v115);

    *(v12 + 54) = v29;
    *(v12 + 62) = 2082;
    swift_getErrorValue();
    v30 = *(v0 + 736);
    v31 = *(v0 + 744);
    v32 = *(v0 + 752);
    v33 = Error.localizedDescription.getter();
    v35 = sub_1000136BC(v33, v34, v115);

    *(v12 + 64) = v35;
    _os_log_impl(&_mh_execute_header, v6, v108, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v12, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v36 = *(v0 + 1624);
    v37 = *(v0 + 1616);
    v38 = *(v0 + 1608);

    sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v39 = *(v0 + 1768);
  v40 = *(v0 + 1760);
  v41 = *(v0 + 1752);
  v111 = *(v0 + 1592);
  v113 = *(v0 + 1520);
  v42 = *(v0 + 1504);
  v43 = *(v0 + 1464);
  v44 = *(v0 + 1456);
  v45 = *(v0 + 1448);
  v46 = *(v0 + 1432);
  swift_willThrow();

  sub_100006654(v41, v40);
  sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v44 + 8))(v43, v45);
  sub_100018D00(v42, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v111, type metadata accessor for OwnedBeaconRecord);
  sub_100018D00(v113, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
  v47 = *(v0 + 1696);
  v48 = *(v0 + 1688);
  v49 = *(v0 + 1680);
  v50 = *(v0 + 1672);
  v51 = *(v0 + 1664);
  v52 = *(v0 + 1656);
  v53 = *(v0 + 1648);
  v54 = *(v0 + 1640);
  v55 = *(v0 + 1632);
  v56 = *(v0 + 1624);
  v59 = *(v0 + 1616);
  v60 = *(v0 + 1608);
  v61 = *(v0 + 1592);
  v62 = *(v0 + 1568);
  v63 = *(v0 + 1552);
  v64 = *(v0 + 1520);
  v65 = *(v0 + 1504);
  v66 = *(v0 + 1496);
  v67 = *(v0 + 1488);
  v68 = *(v0 + 1464);
  v69 = *(v0 + 1440);
  v70 = *(v0 + 1432);
  v71 = *(v0 + 1424);
  v72 = *(v0 + 1408);
  v73 = *(v0 + 1400);
  v74 = *(v0 + 1392);
  v75 = *(v0 + 1384);
  v76 = *(v0 + 1376);
  v77 = *(v0 + 1368);
  v78 = *(v0 + 1360);
  v79 = *(v0 + 1352);
  v80 = *(v0 + 1344);
  v81 = *(v0 + 1336);
  v82 = *(v0 + 1328);
  v83 = *(v0 + 1320);
  v84 = *(v0 + 1312);
  v85 = *(v0 + 1304);
  v86 = *(v0 + 1296);
  v87 = *(v0 + 1288);
  v88 = *(v0 + 1280);
  v89 = *(v0 + 1272);
  v90 = *(v0 + 1264);
  v91 = *(v0 + 1256);
  v92 = *(v0 + 1248);
  v93 = *(v0 + 1240);
  v94 = *(v0 + 1232);
  v95 = *(v0 + 1224);
  v96 = *(v0 + 1216);
  v97 = *(v0 + 1192);
  v98 = *(v0 + 1168);
  v99 = *(v0 + 1160);
  v100 = *(v0 + 1136);
  v101 = *(v0 + 1112);
  v102 = *(v0 + 1088);
  v103 = *(v0 + 1080);
  v104 = *(v0 + 1056);
  v105 = *(v0 + 1032);
  v107 = *(v0 + 1016);
  v109 = *(v0 + 1008);
  v112 = *(v0 + 984);
  v114 = *(v0 + 976);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100CB4648()
{
  v116 = v0;
  sub_100007BAC((v0 + 616));
  v1 = *(v0 + 1848);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 960);
  sub_100D11DC8(v5, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v108 = v7;
    v8 = *(v0 + 1624);
    v9 = *(v0 + 1616);
    v110 = *(v0 + 1608);
    v10 = *(v0 + 1600);
    v106 = *(v0 + 1528);
    v11 = *(v0 + 1924);
    v12 = swift_slowAlloc();
    v115[0] = swift_slowAlloc();
    *v12 = 136447747;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v115);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = sub_10125403C(v11);
    v19 = sub_1000136BC(v17, v18, v115);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v20 = *(v10 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v115);

    *(v12 + 34) = v24;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2081;
    v25 = v110 + *(v10 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v110, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v115);

    *(v12 + 54) = v29;
    *(v12 + 62) = 2082;
    swift_getErrorValue();
    v30 = *(v0 + 736);
    v31 = *(v0 + 744);
    v32 = *(v0 + 752);
    v33 = Error.localizedDescription.getter();
    v35 = sub_1000136BC(v33, v34, v115);

    *(v12 + 64) = v35;
    _os_log_impl(&_mh_execute_header, v6, v108, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v12, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v36 = *(v0 + 1624);
    v37 = *(v0 + 1616);
    v38 = *(v0 + 1608);

    sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v39 = *(v0 + 1768);
  v40 = *(v0 + 1760);
  v41 = *(v0 + 1752);
  v111 = *(v0 + 1592);
  v113 = *(v0 + 1520);
  v42 = *(v0 + 1504);
  v43 = *(v0 + 1464);
  v44 = *(v0 + 1456);
  v45 = *(v0 + 1448);
  v46 = *(v0 + 1432);
  swift_willThrow();

  sub_100006654(v41, v40);
  sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v44 + 8))(v43, v45);
  sub_100018D00(v42, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v111, type metadata accessor for OwnedBeaconRecord);
  sub_100018D00(v113, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
  v47 = *(v0 + 1696);
  v48 = *(v0 + 1688);
  v49 = *(v0 + 1680);
  v50 = *(v0 + 1672);
  v51 = *(v0 + 1664);
  v52 = *(v0 + 1656);
  v53 = *(v0 + 1648);
  v54 = *(v0 + 1640);
  v55 = *(v0 + 1632);
  v56 = *(v0 + 1624);
  v59 = *(v0 + 1616);
  v60 = *(v0 + 1608);
  v61 = *(v0 + 1592);
  v62 = *(v0 + 1568);
  v63 = *(v0 + 1552);
  v64 = *(v0 + 1520);
  v65 = *(v0 + 1504);
  v66 = *(v0 + 1496);
  v67 = *(v0 + 1488);
  v68 = *(v0 + 1464);
  v69 = *(v0 + 1440);
  v70 = *(v0 + 1432);
  v71 = *(v0 + 1424);
  v72 = *(v0 + 1408);
  v73 = *(v0 + 1400);
  v74 = *(v0 + 1392);
  v75 = *(v0 + 1384);
  v76 = *(v0 + 1376);
  v77 = *(v0 + 1368);
  v78 = *(v0 + 1360);
  v79 = *(v0 + 1352);
  v80 = *(v0 + 1344);
  v81 = *(v0 + 1336);
  v82 = *(v0 + 1328);
  v83 = *(v0 + 1320);
  v84 = *(v0 + 1312);
  v85 = *(v0 + 1304);
  v86 = *(v0 + 1296);
  v87 = *(v0 + 1288);
  v88 = *(v0 + 1280);
  v89 = *(v0 + 1272);
  v90 = *(v0 + 1264);
  v91 = *(v0 + 1256);
  v92 = *(v0 + 1248);
  v93 = *(v0 + 1240);
  v94 = *(v0 + 1232);
  v95 = *(v0 + 1224);
  v96 = *(v0 + 1216);
  v97 = *(v0 + 1192);
  v98 = *(v0 + 1168);
  v99 = *(v0 + 1160);
  v100 = *(v0 + 1136);
  v101 = *(v0 + 1112);
  v102 = *(v0 + 1088);
  v103 = *(v0 + 1080);
  v104 = *(v0 + 1056);
  v105 = *(v0 + 1032);
  v107 = *(v0 + 1016);
  v109 = *(v0 + 1008);
  v112 = *(v0 + 984);
  v114 = *(v0 + 976);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100CB4E68()
{
  v116 = v0;
  sub_100007BAC((v0 + 656));
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 960);
  sub_100D11DC8(v5, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v108 = v7;
    v8 = *(v0 + 1624);
    v9 = *(v0 + 1616);
    v110 = *(v0 + 1608);
    v10 = *(v0 + 1600);
    v106 = *(v0 + 1528);
    v11 = *(v0 + 1924);
    v12 = swift_slowAlloc();
    v115[0] = swift_slowAlloc();
    *v12 = 136447747;
    v13 = sub_100C71778();
    v15 = v14;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v16 = sub_1000136BC(v13, v15, v115);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = sub_10125403C(v11);
    v19 = sub_1000136BC(v17, v18, v115);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v20 = *(v10 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v24 = sub_1000136BC(v21, v23, v115);

    *(v12 + 34) = v24;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2081;
    v25 = v110 + *(v10 + 24);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v110, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, v115);

    *(v12 + 54) = v29;
    *(v12 + 62) = 2082;
    swift_getErrorValue();
    v30 = *(v0 + 736);
    v31 = *(v0 + 744);
    v32 = *(v0 + 752);
    v33 = Error.localizedDescription.getter();
    v35 = sub_1000136BC(v33, v34, v115);

    *(v12 + 64) = v35;
    _os_log_impl(&_mh_execute_header, v6, v108, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v12, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v36 = *(v0 + 1624);
    v37 = *(v0 + 1616);
    v38 = *(v0 + 1608);

    sub_100018D00(v38, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v37, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v39 = *(v0 + 1768);
  v40 = *(v0 + 1760);
  v41 = *(v0 + 1752);
  v111 = *(v0 + 1592);
  v113 = *(v0 + 1520);
  v42 = *(v0 + 1504);
  v43 = *(v0 + 1464);
  v44 = *(v0 + 1456);
  v45 = *(v0 + 1448);
  v46 = *(v0 + 1432);
  swift_willThrow();

  sub_100006654(v41, v40);
  sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v44 + 8))(v43, v45);
  sub_100018D00(v42, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v111, type metadata accessor for OwnedBeaconRecord);
  sub_100018D00(v113, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
  v47 = *(v0 + 1696);
  v48 = *(v0 + 1688);
  v49 = *(v0 + 1680);
  v50 = *(v0 + 1672);
  v51 = *(v0 + 1664);
  v52 = *(v0 + 1656);
  v53 = *(v0 + 1648);
  v54 = *(v0 + 1640);
  v55 = *(v0 + 1632);
  v56 = *(v0 + 1624);
  v59 = *(v0 + 1616);
  v60 = *(v0 + 1608);
  v61 = *(v0 + 1592);
  v62 = *(v0 + 1568);
  v63 = *(v0 + 1552);
  v64 = *(v0 + 1520);
  v65 = *(v0 + 1504);
  v66 = *(v0 + 1496);
  v67 = *(v0 + 1488);
  v68 = *(v0 + 1464);
  v69 = *(v0 + 1440);
  v70 = *(v0 + 1432);
  v71 = *(v0 + 1424);
  v72 = *(v0 + 1408);
  v73 = *(v0 + 1400);
  v74 = *(v0 + 1392);
  v75 = *(v0 + 1384);
  v76 = *(v0 + 1376);
  v77 = *(v0 + 1368);
  v78 = *(v0 + 1360);
  v79 = *(v0 + 1352);
  v80 = *(v0 + 1344);
  v81 = *(v0 + 1336);
  v82 = *(v0 + 1328);
  v83 = *(v0 + 1320);
  v84 = *(v0 + 1312);
  v85 = *(v0 + 1304);
  v86 = *(v0 + 1296);
  v87 = *(v0 + 1288);
  v88 = *(v0 + 1280);
  v89 = *(v0 + 1272);
  v90 = *(v0 + 1264);
  v91 = *(v0 + 1256);
  v92 = *(v0 + 1248);
  v93 = *(v0 + 1240);
  v94 = *(v0 + 1232);
  v95 = *(v0 + 1224);
  v96 = *(v0 + 1216);
  v97 = *(v0 + 1192);
  v98 = *(v0 + 1168);
  v99 = *(v0 + 1160);
  v100 = *(v0 + 1136);
  v101 = *(v0 + 1112);
  v102 = *(v0 + 1088);
  v103 = *(v0 + 1080);
  v104 = *(v0 + 1056);
  v105 = *(v0 + 1032);
  v107 = *(v0 + 1016);
  v109 = *(v0 + 1008);
  v112 = *(v0 + 984);
  v114 = *(v0 + 976);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100CB5688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for UUID();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v11 = type metadata accessor for DateInterval();
  v4[32] = v11;
  v12 = *(v11 - 8);
  v4[33] = v12;
  v13 = *(v12 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  v4[37] = v15;
  *v15 = v4;
  v15[1] = sub_100CB5864;

  return daemon.getter();
}

uint64_t sub_100CB5864(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v12 = *v1;
  *(v3 + 304) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 312) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100CB5A40;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100CB5A40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v5 = *(*v2 + 184);
  v6 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v7 = sub_100CB7110;
  }

  else
  {
    v8 = v3[38];

    v7 = sub_100CB5B80;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100CB5B80()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[21];
  v8 = v0[22];
  v9 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074BF4(v0[17]);

  v10 = *(type metadata accessor for SharingCircleKeyManager.Instruction(0) + 48);
  v11 = *(v5 + 16);
  v0[42] = v11;
  v0[43] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v3, v8 + v10, v4);
  DateInterval.init(start:duration:)();
  v13 = v7[3];
  v12 = v7[4];
  sub_1000035D0(v7, v13);
  (*(*(*(v12 + 8) + 8) + 32))(v13);
  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = sub_100CB5D60;
  v15 = v0[40];
  v16 = v0[36];
  v17 = v0[26];

  return sub_1010D07D0((v0 + 12), v17, v16);
}

uint64_t sub_100CB5D60()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;

  v5 = v2[26];
  v6 = v2[25];
  v7 = v2[24];
  v8 = v2[23];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_100CB7424;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_100CB5F0C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100CB5F0C()
{
  *(v0 + 360) = *(v0 + 112);
  if (*(v0 + 128))
  {
    v2 = *(v0 + 336);
    v1 = *(v0 + 344);
    v3 = *(v0 + 280);
    v4 = *(v0 + 240);
    v5 = *(v0 + 232);
    v6 = *(v0 + 216);
    v7 = *(v0 + 184);
    static Date.trustedNow.getter(v4);
    Date.addingTimeInterval(_:)();
    v2(v5, v4, v6);
    DateInterval.init(start:end:)();
    *(v0 + 488) = *(v7 + 120);
    v8 = swift_task_alloc();
    *(v0 + 496) = v8;
    *v8 = v0;
    v8[1] = sub_100CB6C28;
    v9 = *(v0 + 280);
    v10 = *(v0 + 168);

    return sub_100E725BC(v10, v9, 0, 1, 0);
  }

  else
  {
    v12 = *(v0 + 184);
    *(v0 + 376) = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
    v13 = *(v12 + 120);
    *(v0 + 392) = v13;

    return _swift_task_switch(sub_100CB6090, v13, 0);
  }
}

uint64_t sub_100CB6090()
{
  v1 = v0[49];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[50] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[51] = v4;
  *v3 = v0;
  v3[1] = sub_100CB6174;
  v5 = v0[49];

  return unsafeBlocking<A>(context:_:)(v0 + 18, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100CB6174()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);
  v4 = *v0;

  return _swift_task_switch(sub_100CB628C, v2, 0);
}

uint64_t sub_100CB628C()
{
  v0[52] = v0[18];
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = sub_100CB6338;
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[21];

  return sub_100731BF4(v4, v2, v3, 0, 0, 0);
}

uint64_t sub_100CB6338(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *(*v4 + 424);
  v12 = *v4;
  *(v5 + 432) = a1;
  *(v5 + 440) = a2;
  *(v5 + 129) = a3;
  *(v5 + 448) = v3;

  if (v3)
  {
    v7 = *(v5 + 392);
    v8 = sub_100CB683C;
  }

  else
  {
    v9 = *(v5 + 416);
    v10 = *(v5 + 392);

    v8 = sub_100CB6468;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100CB6468()
{
  v1 = v0[49];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_100CB6540;
  v4 = v0[51];
  v5 = v0[49];

  return unsafeBlocking<A>(context:_:)(v0 + 19, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100CB6540()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 392);
  v4 = *v0;

  return _swift_task_switch(sub_100CB6658, v2, 0);
}

uint64_t sub_100CB6658()
{
  v0[58] = v0[19];
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_100CB6704;
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[21];

  return sub_100731BF4(v4, v2, v3, 1, 0, 0);
}

uint64_t sub_100CB6704(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 48) = v3;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = v4;
  v7 = *(v5 + 472);
  v13 = *v4;
  *(v6 + 480) = v3;

  if (v3)
  {
    v8 = *(v6 + 392);
    v9 = sub_100CB6AB8;
  }

  else
  {
    v10 = *(v6 + 464);
    v11 = *(v6 + 184);

    v9 = sub_100CB698C;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100CB683C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_100CB68A8, v2, 0);
}

uint64_t sub_100CB68A8()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];

  (*(v4 + 8))(v2, v3);
  v5 = v0[56];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[34];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v12 = v0[26];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100CB698C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);

  v17 = *(v0 + 40);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v14 = *(v0 + 129);
  v12 = *(v0 + 432);
  v13 = *(v0 + 440);
  v3 = *(v0 + 280);
  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(v0 + 160);
  (*(v2 + 8))(*(v0 + 288), *(v0 + 256));

  *v9 = v12;
  *(v9 + 8) = v13;
  *(v9 + 16) = v14;
  *(v9 + 24) = v15;
  *(v9 + 32) = v16;
  *(v9 + 40) = v17;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100CB6AB8()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 184);
  v5 = *(v0 + 129);

  sub_100359088(v2, v3, v5);

  return _swift_task_switch(sub_100CB6B44, v4, 0);
}

uint64_t sub_100CB6B44()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];

  (*(v4 + 8))(v2, v3);
  v5 = v0[60];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[34];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v12 = v0[26];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100CB6C28(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 496);
  v8 = *v4;
  *(v6 + 504) = a1;
  *(v6 + 512) = a2;
  *(v6 + 130) = a3;
  *(v6 + 520) = v3;

  v9 = *(v5 + 184);
  if (v3)
  {
    v10 = sub_100CB71D4;
  }

  else
  {
    v10 = sub_100CB6D64;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100CB6D64()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 272);
  v3 = *(v0 + 232);
  (*(v0 + 336))(*(v0 + 248), *(v0 + 240), *(v0 + 216));
  Date.addingTimeInterval(_:)();
  DateInterval.init(start:end:)();
  v4 = swift_task_alloc();
  *(v0 + 528) = v4;
  *v4 = v0;
  v4[1] = sub_100CB6E58;
  v5 = *(v0 + 488);
  v6 = *(v0 + 272);
  v7 = *(v0 + 168);

  return sub_100E725BC(v7, v6, 1, 1, 0);
}

uint64_t sub_100CB6E58(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 88) = v3;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  *(v6 + 56) = v4;
  v7 = *(v5 + 528);
  v12 = *v4;
  *(v6 + 536) = v3;

  if (v3)
  {
    v8 = *(v6 + 184);
    sub_100359088(*(v6 + 504), *(v6 + 512), *(v6 + 130));
    v9 = sub_100CB72EC;
    v10 = v8;
  }

  else
  {
    v10 = *(v6 + 184);
    v9 = sub_100CB6F94;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100CB6F94()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);

  v9 = *(v5 + 8);
  v9(v2, v4);
  v9(v3, v4);
  (*(v8 + 8))(v6, v7);
  v24 = *(v0 + 80);
  v22 = *(v0 + 64);
  v23 = *(v0 + 72);
  v21 = *(v0 + 130);
  v19 = *(v0 + 504);
  v20 = *(v0 + 512);
  v10 = *(v0 + 280);
  v11 = *(v0 + 272);
  v12 = *(v0 + 248);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v18 = *(v0 + 208);
  v15 = *(v0 + 160);
  v9(*(v0 + 288), *(v0 + 256));

  *v15 = v19;
  *(v15 + 8) = v20;
  *(v15 + 16) = v21;
  *(v15 + 24) = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v24;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100CB7110()
{
  v1 = v0[38];

  v2 = v0[41];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v9 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100CB71D4()
{
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[28];

  v9 = *(v5 + 8);
  v9(v2, v4);
  (*(v8 + 8))(v6, v7);
  v9(v3, v4);
  v10 = v0[65];
  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[34];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];
  v17 = v0[26];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100CB72EC()
{
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[28];

  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v2, v6);
  (*(v9 + 8))(v7, v8);
  v10(v3, v6);
  v11 = v0[67];
  v13 = v0[35];
  v12 = v0[36];
  v14 = v0[34];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[29];
  v18 = v0[26];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100CB7424()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[29];
  v6 = v0[27];
  v7 = v0[23];
  static Date.trustedNow.getter(v4);
  Date.addingTimeInterval(_:)();
  v2(v5, v4, v6);
  DateInterval.init(start:end:)();
  v0[61] = *(v7 + 120);
  v8 = swift_task_alloc();
  v0[62] = v8;
  *v8 = v0;
  v8[1] = sub_100CB6C28;
  v9 = v0[35];
  v10 = v0[21];

  return sub_100E725BC(v10, v9, 0, 1, 0);
}

uint64_t sub_100CB753C(uint64_t a1, char a2)
{
  *(v3 + 1128) = v2;
  *(v3 + 2508) = a2;
  *(v3 + 1120) = a1;
  v4 = type metadata accessor for KeyDropLostItemDates(0);
  *(v3 + 1136) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 1144) = swift_task_alloc();
  v6 = type metadata accessor for StableIdentifier();
  *(v3 + 1152) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 1160) = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v3 + 1168) = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016B9B20, &qword_1013E3680) - 8) + 64) + 15;
  *(v3 + 1176) = swift_task_alloc();
  v10 = type metadata accessor for KeyDropBeaconGroupAttributes();
  *(v3 + 1184) = v10;
  v11 = *(v10 - 8);
  *(v3 + 1192) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 1200) = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  *(v3 + 1208) = swift_task_alloc();
  *(v3 + 1216) = swift_task_alloc();
  *(v3 + 1224) = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&qword_1016B9B28, &unk_1013E3688) - 8) + 64) + 15;
  *(v3 + 1232) = swift_task_alloc();
  v15 = type metadata accessor for Date();
  *(v3 + 1240) = v15;
  v16 = *(v15 - 8);
  *(v3 + 1248) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 1256) = swift_task_alloc();
  *(v3 + 1264) = swift_task_alloc();
  *(v3 + 1272) = swift_task_alloc();
  *(v3 + 1280) = swift_task_alloc();
  *(v3 + 1288) = swift_task_alloc();
  *(v3 + 1296) = swift_task_alloc();
  v18 = sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
  *(v3 + 1304) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v3 + 1312) = swift_task_alloc();
  *(v3 + 1320) = swift_task_alloc();
  *(v3 + 1328) = swift_task_alloc();
  *(v3 + 1336) = swift_task_alloc();
  *(v3 + 1344) = swift_task_alloc();
  *(v3 + 1352) = swift_task_alloc();
  *(v3 + 1360) = swift_task_alloc();
  *(v3 + 1368) = swift_task_alloc();
  *(v3 + 1376) = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_1016B9B30, &unk_1013E3698) - 8) + 64) + 15;
  *(v3 + 1384) = swift_task_alloc();
  *(v3 + 1392) = swift_task_alloc();
  *(v3 + 1400) = swift_task_alloc();
  *(v3 + 1408) = swift_task_alloc();
  v21 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  *(v3 + 1416) = v21;
  v22 = *(v21 - 8);
  *(v3 + 1424) = v22;
  v23 = *(v22 + 64) + 15;
  *(v3 + 1432) = swift_task_alloc();
  *(v3 + 1440) = swift_task_alloc();
  *(v3 + 1448) = swift_task_alloc();
  *(v3 + 1456) = swift_task_alloc();
  *(v3 + 1464) = swift_task_alloc();
  *(v3 + 1472) = swift_task_alloc();
  *(v3 + 1480) = swift_task_alloc();
  *(v3 + 1488) = swift_task_alloc();
  *(v3 + 1496) = swift_task_alloc();
  *(v3 + 1504) = swift_task_alloc();
  *(v3 + 1512) = swift_task_alloc();
  *(v3 + 1520) = swift_task_alloc();
  *(v3 + 1528) = swift_task_alloc();
  *(v3 + 1536) = swift_task_alloc();
  *(v3 + 1544) = swift_task_alloc();
  *(v3 + 1552) = swift_task_alloc();
  *(v3 + 1560) = swift_task_alloc();
  *(v3 + 1568) = swift_task_alloc();
  *(v3 + 1576) = swift_task_alloc();
  *(v3 + 1584) = swift_task_alloc();
  *(v3 + 1592) = swift_task_alloc();
  *(v3 + 1600) = swift_task_alloc();
  *(v3 + 1608) = swift_task_alloc();
  *(v3 + 1616) = swift_task_alloc();
  *(v3 + 1624) = swift_task_alloc();
  *(v3 + 1632) = swift_task_alloc();
  *(v3 + 1640) = swift_task_alloc();
  *(v3 + 1648) = swift_task_alloc();
  *(v3 + 1656) = swift_task_alloc();
  *(v3 + 1664) = swift_task_alloc();
  *(v3 + 1672) = swift_task_alloc();
  v24 = *(*(sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0) - 8) + 64) + 15;
  *(v3 + 1680) = swift_task_alloc();
  v25 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v3 + 1688) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  *(v3 + 1696) = swift_task_alloc();
  v27 = *(*(sub_1000BC4D4(&qword_10169BA30, &unk_101395620) - 8) + 64) + 15;
  *(v3 + 1704) = swift_task_alloc();
  v28 = type metadata accessor for BookmarkMetaData();
  *(v3 + 1712) = v28;
  v29 = *(v28 - 8);
  *(v3 + 1720) = v29;
  v30 = *(v29 + 64) + 15;
  *(v3 + 1728) = swift_task_alloc();
  *(v3 + 1736) = swift_task_alloc();
  *(v3 + 1744) = swift_task_alloc();
  *(v3 + 1752) = swift_task_alloc();
  v31 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  *(v3 + 1760) = v31;
  v32 = *(v31 - 8);
  *(v3 + 1768) = v32;
  v33 = *(v32 + 64) + 15;
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1808) = swift_task_alloc();
  v34 = type metadata accessor for UUID();
  *(v3 + 1816) = v34;
  v35 = *(v34 - 8);
  *(v3 + 1824) = v35;
  *(v3 + 1832) = *(v35 + 64);
  *(v3 + 1840) = swift_task_alloc();
  *(v3 + 1848) = swift_task_alloc();
  v36 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  *(v3 + 1856) = v36;
  v37 = *(*(v36 - 8) + 64) + 15;
  *(v3 + 1864) = swift_task_alloc();
  v38 = type metadata accessor for OwnedBeaconRecord();
  *(v3 + 1872) = v38;
  v39 = *(v38 - 8);
  *(v3 + 1880) = v39;
  v40 = *(v39 + 64) + 15;
  *(v3 + 1888) = swift_task_alloc();
  *(v3 + 1896) = swift_task_alloc();
  v41 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v3 + 1904) = v41;
  v42 = *(*(v41 - 8) + 64) + 15;
  *(v3 + 1912) = swift_task_alloc();
  *(v3 + 1920) = swift_task_alloc();
  *(v3 + 1928) = swift_task_alloc();
  *(v3 + 1936) = swift_task_alloc();
  *(v3 + 1944) = swift_task_alloc();
  *(v3 + 1952) = swift_task_alloc();
  *(v3 + 1960) = swift_task_alloc();
  *(v3 + 1968) = swift_task_alloc();
  *(v3 + 1976) = swift_task_alloc();
  *(v3 + 1984) = swift_task_alloc();
  *(v3 + 1992) = swift_task_alloc();
  *(v3 + 2000) = swift_task_alloc();
  *(v3 + 2008) = swift_task_alloc();
  *(v3 + 2016) = swift_task_alloc();
  *(v3 + 2024) = swift_task_alloc();
  *(v3 + 2032) = swift_task_alloc();
  *(v3 + 2040) = swift_task_alloc();
  *(v3 + 2048) = swift_task_alloc();
  *(v3 + 2056) = swift_task_alloc();
  *(v3 + 2064) = swift_task_alloc();
  *(v3 + 2072) = swift_task_alloc();

  return _swift_task_switch(sub_100CB7E9C, v2, 0);
}

uint64_t sub_100CB7E9C()
{
  v34 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2072);
  v2 = *(v0 + 2064);
  v3 = *(v0 + 2056);
  v4 = *(v0 + 1120);
  v5 = type metadata accessor for Logger();
  *(v0 + 2080) = sub_1000076D4(v5, qword_10177BF08);
  sub_100D11DC8(v4, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2072);
  v10 = *(v0 + 2064);
  v11 = *(v0 + 2056);
  if (v8)
  {
    v31 = *(v0 + 1904);
    v32 = v7;
    v12 = *(v0 + 1816);
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v13 = 136447235;
    v14 = sub_100C71778();
    v16 = v15;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v18 = *(v31 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = sub_1000136BC(v19, v21, &v33);

    *(v13 + 24) = v22;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v23 = v11 + *(v31 + 24);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v27 = sub_1000136BC(v24, v26, &v33);

    *(v13 + 44) = v27;
    _os_log_impl(&_mh_execute_header, v6, v32, "Keys to upload: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v28 = *(v0 + 1904);
  v29 = *(*(v0 + 1128) + 120);
  *(v0 + 2088) = v29;
  *(v0 + 2504) = *(v28 + 24);

  return _swift_task_switch(sub_100CB823C, v29, 0);
}

uint64_t sub_100CB823C()
{
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1816);
  (*(v4 + 16))(v2, *(v0 + 1120) + *(v0 + 2504), v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 2096) = v7;
  *(v7 + 16) = v1;
  v8 = *(v4 + 32);
  *(v0 + 2104) = v8;
  *(v0 + 2112) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v5);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 2120) = v10;
  *v10 = v0;
  v10[1] = sub_100CB83C0;
  v11 = *(v0 + 1864);
  v12 = *(v0 + 1856);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100D12B50, v7, v12);
}

uint64_t sub_100CB83C0()
{
  v1 = *(*v0 + 2120);
  v2 = *(*v0 + 2096);
  v3 = *(*v0 + 1128);
  v5 = *v0;

  return _swift_task_switch(sub_100CB84EC, v3, 0);
}

uint64_t sub_100CB84EC()
{
  v1 = v0[233];
  if ((*(v0[235] + 48))(v1, 1, v0[234]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    sub_1001BAEE0();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
    v3 = v0[259];
    v4 = v0[258];
    v5 = v0[257];
    v6 = v0[256];
    v7 = v0[255];
    v8 = v0[254];
    v9 = v0[253];
    v10 = v0[252];
    v11 = v0[251];
    v12 = v0[250];
    v20 = v0[249];
    v21 = v0[248];
    v22 = v0[247];
    v23 = v0[246];
    v24 = v0[245];
    v25 = v0[244];
    v26 = v0[243];
    v27 = v0[242];
    v28 = v0[241];
    v29 = v0[240];
    v30 = v0[239];
    v31 = v0[237];
    v32 = v0[236];
    v33 = v0[233];
    v34 = v0[231];
    v35 = v0[230];
    v36 = v0[226];
    v37 = v0[225];
    v38 = v0[224];
    v39 = v0[223];
    v40 = v0[222];
    v41 = v0[219];
    v42 = v0[218];
    v43 = v0[217];
    v44 = v0[216];
    v45 = v0[213];
    v46 = v0[212];
    v47 = v0[210];
    v48 = v0[209];
    v49 = v0[208];
    v50 = v0[207];
    v51 = v0[206];
    v52 = v0[205];
    v53 = v0[204];
    v54 = v0[203];
    v55 = v0[202];
    v56 = v0[201];
    v57 = v0[200];
    v58 = v0[199];
    v59 = v0[198];
    v60 = v0[197];
    v61 = v0[196];
    v62 = v0[195];
    v63 = v0[194];
    v64 = v0[193];
    v65 = v0[192];
    v66 = v0[191];
    v67 = v0[190];
    v68 = v0[189];
    v69 = v0[188];
    v70 = v0[187];
    v71 = v0[186];
    v72 = v0[185];
    v73 = v0[184];
    v74 = v0[183];
    v75 = v0[182];
    v76 = v0[181];
    v77 = v0[180];
    v78 = v0[179];
    v79 = v0[176];
    v80 = v0[175];
    v81 = v0[174];
    v82 = v0[173];
    v83 = v0[172];
    v84 = v0[171];
    v85 = v0[170];
    v86 = v0[169];
    v87 = v0[168];
    v88 = v0[167];
    v89 = v0[166];
    v90 = v0[165];
    v91 = v0[164];
    v92 = v0[162];
    v93 = v0[161];
    v94 = v0[160];
    v95 = v0[159];
    v96 = v0[158];
    v97 = v0[157];
    v98 = v0[154];
    v99 = v0[153];
    v100 = v0[152];
    v101 = v0[151];
    v102 = v0[150];
    v103 = v0[147];
    v104 = v0[146];
    v105 = v0[145];
    v106 = v0[143];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[238];
    v16 = v0[140];
    sub_100D12974(v1, v0[237], type metadata accessor for OwnedBeaconRecord);
    v17 = *(v15 + 20);
    v18 = swift_task_alloc();
    v0[266] = v18;
    *v18 = v0;
    v18[1] = sub_100CB8BD4;
    v19 = v0[141];

    return sub_100C7BA0C((v0 + 110), v16 + v17);
  }
}

uint64_t sub_100CB8BD4()
{
  v2 = *v1;
  v3 = *(*v1 + 2128);
  v4 = *v1;
  *(*v1 + 2136) = v0;

  v5 = *(v2 + 1128);
  if (v0)
  {
    v6 = sub_100CDF00C;
  }

  else
  {
    v6 = sub_100CB8D00;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100CB8D00()
{
  v530 = v0;
  v1 = *(v0 + 880);
  *(v0 + 2144) = v1;
  v2 = *(v0 + 888);
  *(v0 + 2152) = v2;
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 1896);
    sub_1001BAEE0();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();
    sub_1001BAF34(v0 + 880);
    sub_100018D00(v3, type metadata accessor for OwnedBeaconRecord);
    v5 = *(v0 + 2072);
    v6 = *(v0 + 2064);
    v7 = *(v0 + 2056);
    v8 = *(v0 + 2048);
    v9 = *(v0 + 2040);
    v10 = *(v0 + 2032);
    v11 = *(v0 + 2024);
    v12 = *(v0 + 2016);
    v13 = *(v0 + 2008);
    v14 = *(v0 + 2000);
    v339 = *(v0 + 1992);
    v341 = *(v0 + 1984);
    v343 = *(v0 + 1976);
    v345 = *(v0 + 1968);
    v347 = *(v0 + 1960);
    v349 = *(v0 + 1952);
    v351 = *(v0 + 1944);
    v353 = *(v0 + 1936);
    v355 = *(v0 + 1928);
    v357 = *(v0 + 1920);
    v359 = *(v0 + 1912);
    v361 = *(v0 + 1896);
    v363 = *(v0 + 1888);
    v365 = *(v0 + 1864);
    v367 = *(v0 + 1848);
    v369 = *(v0 + 1840);
    v371 = *(v0 + 1808);
    v373 = *(v0 + 1800);
    v375 = *(v0 + 1792);
    v377 = *(v0 + 1784);
    v379 = *(v0 + 1776);
    v381 = *(v0 + 1752);
    v383 = *(v0 + 1744);
    v385 = *(v0 + 1736);
    v387 = *(v0 + 1728);
    v389 = *(v0 + 1704);
    v391 = *(v0 + 1696);
    v393 = *(v0 + 1680);
    v395 = *(v0 + 1672);
    v397 = *(v0 + 1664);
    v399 = *(v0 + 1656);
    v401 = *(v0 + 1648);
    v403 = *(v0 + 1640);
    v405 = *(v0 + 1632);
    v407 = *(v0 + 1624);
    v409 = *(v0 + 1616);
    v411 = *(v0 + 1608);
    v413 = *(v0 + 1600);
    v415 = *(v0 + 1592);
    v417 = *(v0 + 1584);
    v419 = *(v0 + 1576);
    v421 = *(v0 + 1568);
    v423 = *(v0 + 1560);
    v425 = *(v0 + 1552);
    v427 = *(v0 + 1544);
    v429 = *(v0 + 1536);
    v431 = *(v0 + 1528);
    v433 = *(v0 + 1520);
    v435 = *(v0 + 1512);
    v437 = *(v0 + 1504);
    v439 = *(v0 + 1496);
    v441 = *(v0 + 1488);
    v443 = *(v0 + 1480);
    v445 = *(v0 + 1472);
    v447 = *(v0 + 1464);
    v449 = *(v0 + 1456);
    v451 = *(v0 + 1448);
    v453 = *(v0 + 1440);
    v455 = *(v0 + 1432);
    v457 = *(v0 + 1408);
    v459 = *(v0 + 1400);
    v461 = *(v0 + 1392);
    v463 = *(v0 + 1384);
    v465 = *(v0 + 1376);
    v467 = *(v0 + 1368);
    v469 = *(v0 + 1360);
    v471 = *(v0 + 1352);
    v473 = *(v0 + 1344);
    v475 = *(v0 + 1336);
    v477 = *(v0 + 1328);
    v479 = *(v0 + 1320);
    v481 = *(v0 + 1312);
    v483 = *(v0 + 1296);
    v485 = *(v0 + 1288);
    v487 = *(v0 + 1280);
    v489 = *(v0 + 1272);
    v491 = *(v0 + 1264);
    v494 = *(v0 + 1256);
    v497 = *(v0 + 1232);
    v500 = *(v0 + 1224);
    v503 = *(v0 + 1216);
    v508 = *(v0 + 1208);
    v512 = *(v0 + 1200);
    v515 = *(v0 + 1176);
    v517 = *(v0 + 1168);
    v519 = *(v0 + 1160);
    v522 = *(v0 + 1144);

    v15 = *(v0 + 8);

    v15();
    return;
  }

  v16 = *(v0 + 2136);
  v17 = *(v0 + 1904);
  v18 = *(v0 + 1808);
  v19 = *(v0 + 1768);
  v20 = *(v0 + 1760);
  v21 = *(v0 + 1304);
  v22 = *(v0 + 1120);
  sub_100017D5C(v1, v2);
  static Date.trustedNow.getter(v18);
  static Date.trustedNow.getter(v18 + *(v20 + 24));
  *(v18 + *(v20 + 20)) = 1;
  *(v0 + 2160) = swift_allocBox();
  *(v0 + 2168) = v23;
  (*(v19 + 56))(v23, 1, 1, v20);
  v24 = *(v22 + *(v17 + 32));

  v529[0] = sub_10126D89C(v25);

  sub_100C71518(v529);
  if (v16)
  {

    return;
  }

  v26 = v529[0];
  *(v0 + 2176) = v529[0];
  v27 = *(v26 + 2);
  *(v0 + 2184) = v27;
  if (!v27)
  {

    v527 = _swiftEmptyArrayStorage;
    goto LABEL_76;
  }

  v520 = (v0 + 232);
  v513 = (v0 + 808);
  swift_beginAccess();
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  while (2)
  {
    *(v0 + 2208) = v29;
    *(v0 + 2200) = v28;
    *(v0 + 2192) = 0;
    v30 = *(v0 + 2176);
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
      return;
    }

    v31 = v29;
    v32 = *(v0 + 2080);
    v33 = *(v0 + 2048);
    v34 = *(v0 + 1120);
    v35 = *(v30 + v28 + 32);
    *(v0 + 2509) = v35;
    sub_100D11DC8(v34, v33, type metadata accessor for SharingCircleKeyManager.Instruction);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 2048);
    if (v38)
    {
      v40 = swift_slowAlloc();
      v529[0] = swift_slowAlloc();
      *v40 = 136446466;
      v41 = sub_100C71778();
      v43 = v42;
      sub_100018D00(v39, type metadata accessor for SharingCircleKeyManager.Instruction);
      v44 = sub_1000136BC(v41, v43, v529);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      v45 = sub_10125403C(v35);
      v47 = sub_1000136BC(v45, v46, v529);

      *(v40 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "Keys to upload: %{public}s. Creating package for %{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v39, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v29 = v31;
    switch(v35)
    {
      case 1:
        v289 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v289 + 16) && (v290 = sub_100771F0C(1), (v291 & 1) != 0))
        {
          v292 = *(v0 + 1752);
          sub_100D11DC8(*(v289 + 56) + *(*(v0 + 1720) + 72) * v290, v292, type metadata accessor for BookmarkMetaData);
          v293 = *(v292 + 8);
          sub_100018D00(v292, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v293 = 0;
        }

        *(v0 + 2216) = v293;
        v332 = *(v0 + 2504);
        v333 = *(v0 + 1120);
        v334 = swift_task_alloc();
        *(v0 + 2224) = v334;
        *v334 = v0;
        v334[1] = sub_100CBBD44;
        v335 = *(v0 + 1704);
        v336 = *(v0 + 1128);

        sub_100CFC71C(v335, v333 + v332);
        return;
      case 4:
        v298 = swift_task_alloc();
        *(v0 + 2328) = v298;
        *v298 = v0;
        v298[1] = sub_100CC4E24;
        v299 = *(v0 + 1896);
        v300 = *(v0 + 1408);
        v301 = *(v0 + 1128);
        v302 = *(v0 + 1120);

        sub_100CF172C(v300, v302, v299, v0 + 880);
        return;
      case 5:
        v69 = *(v0 + 1768);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v71, &qword_1016B0478, &unk_1013CDC10);
        v72 = *(v69 + 48);
        *(v0 + 2344) = v72;
        *(v0 + 2352) = (v69 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v70) = v72(v71, 1, v70);
        sub_10000B3A8(v71, &qword_1016B0478, &unk_1013CDC10);
        if (v70 == 1)
        {
          v308 = swift_task_alloc();
          *(v0 + 2360) = v308;
          *v308 = v0;
          v309 = sub_100CC7CAC;
          goto LABEL_94;
        }

        v73 = *(v0 + 2352);
        v74 = *(v0 + 2344);
        v75 = *(v0 + 1760);
        v76 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v76, &qword_1016B0478, &unk_1013CDC10);
        v77 = v74(v76, 1, v75);
        v78 = *(v0 + 1368);
        if (v77 != 1)
        {
          sub_100D12974(v78, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
          v313 = swift_task_alloc();
          *(v0 + 2376) = v313;
          *v313 = v0;
          v313[1] = sub_100CCA6E8;
          v314 = *(v0 + 2152);
          v315 = *(v0 + 2144);
          v316 = *(v0 + 1896);
          v317 = *(v0 + 1792);
          v318 = *(v0 + 1400);
          v319 = *(v0 + 1128);
          v320 = *(v0 + 1120);
          v321 = 0;
          goto LABEL_99;
        }

        v79 = *(v0 + 2080);
        v80 = *(v0 + 2000);
        v81 = *(v0 + 1120);
        sub_10000B3A8(v78, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v81, v80, type metadata accessor for SharingCircleKeyManager.Instruction);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 2000);
        if (!v84)
        {
          goto LABEL_11;
        }

        v86 = swift_slowAlloc();
        v529[0] = swift_slowAlloc();
        *v86 = 136446466;
        v87 = sub_100C71778();
        v89 = v88;
        sub_100018D00(v85, type metadata accessor for SharingCircleKeyManager.Instruction);
        v90 = sub_1000136BC(v87, v89, v529);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2082;
        v91 = 5;
        goto LABEL_36;
      case 6:
        v92 = *(v0 + 1768);
        v93 = *(v0 + 1760);
        v94 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v94, &qword_1016B0478, &unk_1013CDC10);
        v95 = *(v92 + 48);
        *(v0 + 2392) = v95;
        *(v0 + 2400) = (v92 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v93) = v95(v94, 1, v93);
        sub_10000B3A8(v94, &qword_1016B0478, &unk_1013CDC10);
        if (v93 != 1)
        {
          v96 = *(v0 + 2400);
          v97 = *(v0 + 2392);
          v98 = *(v0 + 1760);
          v99 = *(v0 + 1352);
          sub_1000D2A70(*(v0 + 2168), v99, &qword_1016B0478, &unk_1013CDC10);
          v100 = v97(v99, 1, v98);
          v101 = *(v0 + 1352);
          if (v100 != 1)
          {
            sub_100D12974(v101, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
            v322 = swift_task_alloc();
            *(v0 + 2424) = v322;
            *v322 = v0;
            v322[1] = sub_100CD0008;
            v314 = *(v0 + 2152);
            v315 = *(v0 + 2144);
            v316 = *(v0 + 1896);
            v317 = *(v0 + 1784);
            v318 = *(v0 + 1392);
            v323 = *(v0 + 1128);
            v320 = *(v0 + 1120);
            v321 = 1;
LABEL_99:

            sub_100CF2904(v318, v320, v316, v317, v321, v315, v314);
            return;
          }

          v102 = *(v0 + 2080);
          v103 = *(v0 + 1984);
          v104 = *(v0 + 1120);
          sub_10000B3A8(v101, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v104, v103, type metadata accessor for SharingCircleKeyManager.Instruction);
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();
          v105 = os_log_type_enabled(v82, v83);
          v85 = *(v0 + 1984);
          if (v105)
          {
            v86 = swift_slowAlloc();
            v529[0] = swift_slowAlloc();
            *v86 = 136446466;
            v106 = sub_100C71778();
            v108 = v107;
            sub_100018D00(v85, type metadata accessor for SharingCircleKeyManager.Instruction);
            v109 = sub_1000136BC(v106, v108, v529);

            *(v86 + 4) = v109;
            *(v86 + 12) = 2082;
            v91 = 6;
LABEL_36:
            v128 = sub_10125403C(v91);
            v130 = sub_1000136BC(v128, v129, v529);

            *(v86 + 14) = v130;
            _os_log_impl(&_mh_execute_header, v82, v83, "No key alignment available for %{public}s. No package created for %{public}s", v86, 0x16u);
            swift_arrayDestroy();

            goto LABEL_12;
          }

          goto LABEL_11;
        }

        v308 = swift_task_alloc();
        *(v0 + 2408) = v308;
        *v308 = v0;
        v309 = sub_100CCD5CC;
        goto LABEL_94;
      case 8:
      case 10:
        v48 = *(v0 + 936);
        if (*(v48 + 16))
        {
          v49 = sub_100771F0C(v35);
          if (v50)
          {
            v51 = *(v0 + 2152);
            v52 = *(v0 + 2144);
            v53 = *(v0 + 1680);
            v54 = (*(v48 + 56) + 16 * v49);
            v55 = *v54;
            v56 = v54[1];
            v57 = type metadata accessor for EncryptedData();
            (*(*(v57 - 8) + 56))(v53, 1, 1, v57);
            sub_100017D5C(v55, v56);
            sub_100017D5C(v55, v56);
            sub_10125A120(1, v55, v56, v53, v520);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v58 = swift_allocObject();
            v59 = *(v0 + 264);
            v60 = *(v0 + 280);
            v61 = *v520;
            *(v58 + 48) = *(v0 + 248);
            *(v58 + 64) = v59;
            *(v58 + 80) = v60;
            *(v58 + 96) = *(v0 + 296);
            *(v58 + 16) = xmmword_101385D80;
            *(v58 + 32) = v61;
            sub_10002E98C(v52, v51);
            sub_1003914F8(v520, v0 + 736);
            v62 = sub_100D11764(v58, v52, v51);
            v523 = v56;
            v153 = *(v0 + 1808);
            v154 = *(v0 + 1520);
            v504 = *(v0 + 1512);
            v509 = v55;
            v155 = *(v0 + 1416);
            v156 = v62;
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v58 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v153, &v154[*(v155 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v154 = v35;
            v157 = *(v155 + 24);
            v29 = v31;
            *&v154[v157] = v156;
            sub_100D11DC8(v154, v504, type metadata accessor for KeyDropInterface.KeyPackage);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v29 = sub_100A5BE40(0, v31[2] + 1, 1, v31);
            }

            v160 = v29[2];
            v159 = v29[3];
            if (v160 >= v159 >> 1)
            {
              v29 = sub_100A5BE40(v159 > 1, v160 + 1, 1, v29);
            }

            v161 = *(v0 + 2080);
            v162 = *(v0 + 1960);
            v163 = *(v0 + 1520);
            v164 = *(v0 + 1512);
            v165 = *(v0 + 1504);
            v166 = *(v0 + 1424);
            v167 = *(v0 + 1120);
            v29[2] = v160 + 1;
            sub_100D12974(v164, v29 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v160, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v167, v162, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v163, v165, type metadata accessor for KeyDropInterface.KeyPackage);
            v168 = Logger.logObject.getter();
            v169 = static os_log_type_t.default.getter();
            v170 = os_log_type_enabled(v168, v169);
            v171 = *(v0 + 1960);
            v172 = *(v0 + 1520);
            v173 = *(v0 + 1504);
            if (v170)
            {
              v174 = swift_slowAlloc();
              v529[0] = swift_slowAlloc();
              *v174 = 136446466;
              v505 = v172;
              v175 = sub_100C71778();
              v177 = v176;
              sub_100018D00(v171, type metadata accessor for SharingCircleKeyManager.Instruction);
              v178 = sub_1000136BC(v175, v177, v529);

              *(v174 + 4) = v178;
              *(v174 + 12) = 2082;
              v179 = sub_101255410();
              v181 = v180;
              sub_100018D00(v173, type metadata accessor for KeyDropInterface.KeyPackage);
              v182 = sub_1000136BC(v179, v181, v529);

              *(v174 + 14) = v182;
              _os_log_impl(&_mh_execute_header, v168, v169, "Keys to upload: %{public}s,\nadded: %{public}s.", v174, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v520);
              sub_100016590(v509, v523);
              v183 = v505;
            }

            else
            {

              sub_100391554(v520);
              sub_100016590(v509, v523);
              sub_100018D00(v173, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v171, type metadata accessor for SharingCircleKeyManager.Instruction);
              v183 = v172;
            }

            sub_100018D00(v183, type metadata accessor for KeyDropInterface.KeyPackage);
          }
        }

        goto LABEL_13;
      case 9:
        v110 = *(v0 + 1768);
        v111 = *(v0 + 1760);
        v112 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v112, &qword_1016B0478, &unk_1013CDC10);
        v113 = *(v110 + 48);
        *(v0 + 2440) = v113;
        *(v0 + 2448) = (v110 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v111) = v113(v112, 1, v111);
        sub_10000B3A8(v112, &qword_1016B0478, &unk_1013CDC10);
        if (v111 == 1)
        {
          v308 = swift_task_alloc();
          *(v0 + 2456) = v308;
          *v308 = v0;
          v309 = sub_100CD2EEC;
LABEL_94:
          v308[1] = v309;
          v310 = *(v0 + 2160);
          v311 = *(v0 + 1896);
          v312 = *(v0 + 1128);

          sub_100CF0FB4(v311, v310, v312);
          return;
        }

        v114 = *(v0 + 2448);
        v115 = *(v0 + 2440);
        v116 = *(v0 + 1760);
        v117 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v117, &qword_1016B0478, &unk_1013CDC10);
        v118 = v115(v117, 1, v116);
        v119 = *(v0 + 1336);
        if (v118 != 1)
        {
          sub_100D12974(v119, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v324 = swift_task_alloc();
          *(v0 + 2472) = v324;
          *v324 = v0;
          v324[1] = sub_100CD5928;
          v325 = *(v0 + 2152);
          v326 = *(v0 + 2144);
          v327 = *(v0 + 1896);
          v328 = *(v0 + 1776);
          v329 = *(v0 + 1384);
          v330 = *(v0 + 1128);
          v331 = *(v0 + 1120);

          sub_100CF3F94(v329, v331, v327, v328, v326, v325);
          return;
        }

        v120 = *(v0 + 2080);
        v121 = *(v0 + 1968);
        v122 = *(v0 + 1120);
        sub_10000B3A8(v119, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v122, v121, type metadata accessor for SharingCircleKeyManager.Instruction);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        v123 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 1968);
        if (v123)
        {
          v86 = swift_slowAlloc();
          v529[0] = swift_slowAlloc();
          *v86 = 136446466;
          v124 = sub_100C71778();
          v126 = v125;
          sub_100018D00(v85, type metadata accessor for SharingCircleKeyManager.Instruction);
          v127 = sub_1000136BC(v124, v126, v529);

          *(v86 + 4) = v127;
          *(v86 + 12) = 2082;
          v91 = 9;
          goto LABEL_36;
        }

LABEL_11:

        sub_100018D00(v85, type metadata accessor for SharingCircleKeyManager.Instruction);
LABEL_12:
        v29 = *(v0 + 2208);
LABEL_13:
        v28 = *(v0 + 2200) + 1;
        if (v28 != *(v0 + 2184))
        {
          continue;
        }

        v278 = *(v0 + 2176);

        v527 = v29;
LABEL_76:
        v279 = *(v0 + 2160);
        v280 = *(v0 + 2072);
        v281 = *(v0 + 2064);
        v282 = *(v0 + 2056);
        v283 = *(v0 + 2048);
        v284 = *(v0 + 2040);
        v285 = *(v0 + 2032);
        v337 = *(v0 + 2024);
        v338 = *(v0 + 2016);
        v340 = *(v0 + 2008);
        v342 = *(v0 + 2000);
        v344 = *(v0 + 1992);
        v346 = *(v0 + 1984);
        v348 = *(v0 + 1976);
        v350 = *(v0 + 1968);
        v352 = *(v0 + 1960);
        v354 = *(v0 + 1952);
        v356 = *(v0 + 1944);
        v358 = *(v0 + 1936);
        v360 = *(v0 + 1928);
        v362 = *(v0 + 1920);
        v286 = *(v0 + 1896);
        v364 = *(v0 + 1912);
        v366 = *(v0 + 1888);
        v368 = *(v0 + 1864);
        v370 = *(v0 + 1848);
        v287 = *(v0 + 1808);
        v372 = *(v0 + 1840);
        v374 = *(v0 + 1800);
        v376 = *(v0 + 1792);
        v378 = *(v0 + 1784);
        v380 = *(v0 + 1776);
        v382 = *(v0 + 1752);
        v384 = *(v0 + 1744);
        v386 = *(v0 + 1736);
        v388 = *(v0 + 1728);
        v390 = *(v0 + 1704);
        v392 = *(v0 + 1696);
        v394 = *(v0 + 1680);
        v396 = *(v0 + 1672);
        v398 = *(v0 + 1664);
        v400 = *(v0 + 1656);
        v402 = *(v0 + 1648);
        v404 = *(v0 + 1640);
        v406 = *(v0 + 1632);
        v408 = *(v0 + 1624);
        v410 = *(v0 + 1616);
        v412 = *(v0 + 1608);
        v414 = *(v0 + 1600);
        v416 = *(v0 + 1592);
        v418 = *(v0 + 1584);
        v420 = *(v0 + 1576);
        v422 = *(v0 + 1568);
        v424 = *(v0 + 1560);
        v426 = *(v0 + 1552);
        v428 = *(v0 + 1544);
        v430 = *(v0 + 1536);
        v432 = *(v0 + 1528);
        v434 = *(v0 + 1520);
        v436 = *(v0 + 1512);
        v438 = *(v0 + 1504);
        v440 = *(v0 + 1496);
        v442 = *(v0 + 1488);
        v444 = *(v0 + 1480);
        v446 = *(v0 + 1472);
        v448 = *(v0 + 1464);
        v450 = *(v0 + 1456);
        v452 = *(v0 + 1448);
        v454 = *(v0 + 1440);
        v456 = *(v0 + 1432);
        v458 = *(v0 + 1408);
        v460 = *(v0 + 1400);
        v462 = *(v0 + 1392);
        v464 = *(v0 + 1384);
        v466 = *(v0 + 1376);
        v468 = *(v0 + 1368);
        v470 = *(v0 + 1360);
        v472 = *(v0 + 1352);
        v474 = *(v0 + 1344);
        v476 = *(v0 + 1336);
        v478 = *(v0 + 1328);
        v480 = *(v0 + 1320);
        v482 = *(v0 + 1312);
        v484 = *(v0 + 1296);
        v486 = *(v0 + 1288);
        v488 = *(v0 + 1280);
        v490 = *(v0 + 1272);
        v493 = *(v0 + 1264);
        v496 = *(v0 + 1256);
        v499 = *(v0 + 1232);
        v502 = *(v0 + 1224);
        v507 = *(v0 + 1216);
        v511 = *(v0 + 1208);
        v514 = *(v0 + 1200);
        v516 = *(v0 + 1176);
        v518 = *(v0 + 1168);
        v521 = *(v0 + 1160);
        v528 = *(v0 + 1144);
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        sub_1001BAF34(v0 + 880);
        sub_100018D00(v287, type metadata accessor for KeyDropInterface.KeyAlignment);
        sub_100018D00(v286, type metadata accessor for OwnedBeaconRecord);

        v288 = *(v0 + 8);

        v288(v527);
        return;
      case 12:
        v63 = *(v0 + 1824);
        v64 = *(v0 + 1816);
        v65 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v65, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v63 + 48))(v65, 1, v64) == 1)
        {
          v66 = *(v0 + 1192);
          v67 = *(v0 + 1184);
          v68 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v66 + 56))(v68, 1, 1, v67);
          goto LABEL_54;
        }

        v131 = *(v0 + 2112);
        v132 = *(v0 + 1896);
        v133 = *(v0 + 1872);
        v134 = *(v0 + 1160);
        v135 = *(v0 + 1152);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v132 + *(v133 + 24), v134, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_49:
            v191 = *(v0 + 1192);
            v192 = *(v0 + 1184);
            v193 = *(v0 + 1176);
            v194 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v194, type metadata accessor for StableIdentifier);
            (*(v191 + 56))(v193, 1, 1, v192);
            goto LABEL_54;
          }

          v184 = *(v0 + 1824);
          v185 = *(v0 + 1816);
          v186 = *(v0 + 1160);
          v187 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v188 = *(v186 + 8 + v187[12]);

          v189 = *(v186 + 8 + v187[16]);

          v190 = *(v186 + 8 + v187[20]);

          v145 = *(v186 + v187[24]);
          (*(v184 + 8))(v186, v185);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_49;
          }

          v137 = *(v0 + 1824);
          v138 = *(v0 + 1160);
          v139 = v138 + 8;
          v140 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v141 = *(v138 + 8 + v140[12]);

          v142 = *(v138 + 8 + v140[16]);

          v143 = *(v138 + 8 + v140[20]);

          v144 = (v138 + v140[24]);
          v145 = *v144;
          LOBYTE(v138) = v144[1];
          v146 = *(v139 + v140[28]);

          v147 = *(v137 + 8);
          if (v138)
          {
            v148 = *(v0 + 1816);
            v149 = *(v0 + 1192);
            v150 = *(v0 + 1184);
            v151 = *(v0 + 1176);
            v152 = *(v0 + 1160);
            v147(*(v0 + 1840), v148);
            (*(v149 + 56))(v151, 1, 1, v150);
            v147(v152, v148);
            goto LABEL_54;
          }

          v147(*(v0 + 1160), *(v0 + 1816));
        }

        v195 = *(v0 + 2112);
        v196 = *(v0 + 1192);
        v197 = *(v0 + 1184);
        v198 = *(v0 + 1176);
        (*(v0 + 2104))(v198, *(v0 + 1840), *(v0 + 1816));
        *(v198 + *(v197 + 20)) = v145;
        (*(v196 + 56))(v198, 0, 1, v197);
LABEL_54:
        v199 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v199, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v199, &qword_1016B9B20, &qword_1013E3680);
LABEL_65:
          v29 = v31;
          goto LABEL_13;
        }

        v200 = *(v0 + 1904);
        v201 = *(v0 + 1120);
        sub_100D12974(v199, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v202 = *(v201 + *(v200 + 44));
        if (!*(v202 + 16))
        {
          goto LABEL_60;
        }

        v203 = sub_100771F0C(12);
        if ((v204 & 1) == 0)
        {
          goto LABEL_60;
        }

        v205 = *(v0 + 1768);
        v206 = *(v0 + 1760);
        v207 = *(v0 + 1736);
        v208 = *(v0 + 1712);
        v209 = *(v0 + 1320);
        sub_100D11DC8(*(v202 + 56) + *(*(v0 + 1720) + 72) * v203, v207, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v207 + *(v208 + 20), v209, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v207, type metadata accessor for BookmarkMetaData);
        if ((*(v205 + 48))(v209, 1, v206) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_60:
          v210 = *(v0 + 1280);
          v211 = *(v0 + 1248);
          v212 = *(v0 + 1240);
          v213 = *(v0 + 1216);
          (*(v211 + 56))(v213, 1, 1, v212);
          static Date.distantPast.getter();
          if ((*(v211 + 48))(v213, 1, v212) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v214 = *(v0 + 1320);
          v215 = *(v0 + 1280);
          v216 = *(v0 + 1248);
          v217 = *(v0 + 1240);
          v218 = *(v0 + 1216);
          (*(v216 + 16))(v218, v214 + *(*(v0 + 1760) + 24), v217);
          sub_100018D00(v214, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v216 + 56))(v218, 0, 1, v217);
          (*(v216 + 32))(v215, v218, v217);
        }

        v219 = *(v0 + 1896);
        v220 = *(v0 + 1272);
        v221 = objc_autoreleasePoolPush();
        sub_100D088CC(v219, v220);
        v222 = *(v0 + 1280);
        v223 = *(v0 + 1272);
        v224 = *(v0 + 1248);
        v225 = *(v0 + 1240);
        objc_autoreleasePoolPop(v221);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
        LOBYTE(v221) = dispatch thunk of static Comparable.< infix(_:_:)();
        v226 = *(v224 + 8);
        v226(v223, v225);
        if (v221)
        {
          v227 = *(v0 + 1200);
          v226(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v227, type metadata accessor for KeyDropBeaconGroupAttributes);
          goto LABEL_65;
        }

        v510 = v226;
        v228 = *(v0 + 1200);
        v229 = *(v0 + 1184);
        v230 = type metadata accessor for PropertyListEncoder();
        v231 = *(v230 + 48);
        v232 = *(v230 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
        v233 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v235 = v234;
        v524 = *(v0 + 2152);
        v236 = *(v0 + 2144);
        v237 = *(v0 + 1680);
        v238 = v233;

        v239 = type metadata accessor for EncryptedData();
        (*(*(v239 - 8) + 56))(v237, 1, 1, v239);
        sub_100017D5C(v238, v235);
        sub_10125A120(1, v238, v235, v237, v513);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v240 = swift_allocObject();
        v241 = *(v0 + 840);
        v242 = *(v0 + 856);
        v243 = *v513;
        *(v240 + 48) = *(v0 + 824);
        *(v240 + 64) = v241;
        *(v240 + 80) = v242;
        *(v240 + 96) = *(v0 + 872);
        *(v240 + 16) = xmmword_101385D80;
        *(v240 + 32) = v243;
        sub_10002E98C(v236, v524);
        sub_1003914F8(v513, v0 + 448);
        v244 = sub_100D11764(v240, v236, v524);
        v501 = v238;
        v506 = v235;
        v245 = *(v0 + 1808);
        v246 = *(v0 + 1472);
        v525 = *(v0 + 1464);
        v247 = *(v0 + 1416);
        v248 = v244;
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v240 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v245, &v246[*(v247 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v246 = 12;
        *&v246[*(v247 + 24)] = v248;
        sub_100D11DC8(v246, v525, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100A5BE40(0, v31[2] + 1, 1, v31);
        }

        v250 = v31[2];
        v249 = v31[3];
        v526 = v31;
        if (v250 >= v249 >> 1)
        {
          v526 = sub_100A5BE40(v249 > 1, v250 + 1, 1, v31);
        }

        v251 = *(v0 + 2080);
        v252 = *(v0 + 1944);
        v253 = *(v0 + 1472);
        v254 = *(v0 + 1464);
        v255 = *(v0 + 1456);
        v256 = *(v0 + 1424);
        v257 = *(v0 + 1120);
        *(v526 + 16) = v250 + 1;
        sub_100D12974(v254, v526 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v250, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v257, v252, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v253, v255, type metadata accessor for KeyDropInterface.KeyPackage);
        v258 = Logger.logObject.getter();
        v259 = static os_log_type_t.default.getter();
        v260 = os_log_type_enabled(v258, v259);
        v261 = *(v0 + 1944);
        v262 = *(v0 + 1472);
        v263 = *(v0 + 1456);
        v264 = *(v0 + 1280);
        v265 = *(v0 + 1240);
        v266 = *(v0 + 1200);
        if (v260)
        {
          v495 = *(v0 + 1200);
          v267 = v259;
          v268 = swift_slowAlloc();
          v529[0] = swift_slowAlloc();
          *v268 = 136446466;
          v492 = v262;
          v269 = sub_100C71778();
          v498 = v265;
          v271 = v270;
          sub_100018D00(v261, type metadata accessor for SharingCircleKeyManager.Instruction);
          v272 = sub_1000136BC(v269, v271, v529);

          *(v268 + 4) = v272;
          *(v268 + 12) = 2082;
          v273 = sub_101255410();
          v275 = v274;
          sub_100018D00(v263, type metadata accessor for KeyDropInterface.KeyPackage);
          v276 = sub_1000136BC(v273, v275, v529);

          *(v268 + 14) = v276;
          _os_log_impl(&_mh_execute_header, v258, v267, "Keys to upload: %{public}s,\nadded: %{public}s.", v268, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v513);
          sub_100016590(v501, v506);
          sub_100018D00(v492, type metadata accessor for KeyDropInterface.KeyPackage);
          v510(v264, v498);
          v277 = v495;
        }

        else
        {

          sub_100391554(v513);
          sub_100016590(v501, v506);
          sub_100018D00(v263, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v261, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v262, type metadata accessor for KeyDropInterface.KeyPackage);
          v510(v264, v265);
          v277 = v266;
        }

        sub_100018D00(v277, type metadata accessor for KeyDropBeaconGroupAttributes);
        v29 = v526;
        goto LABEL_13;
      case 13:
        v294 = swift_task_alloc();
        *(v0 + 2488) = v294;
        *v294 = v0;
        v294[1] = sub_100CD880C;
        v295 = *(v0 + 1896);
        v296 = *(v0 + 1232);
        v297 = *(v0 + 1128);

        sub_100CF5FBC(v296, v295);
        return;
      case 16:
        v303 = swift_task_alloc();
        *(v0 + 2496) = v303;
        *v303 = v0;
        v303[1] = sub_100CDBC44;
        v304 = *(v0 + 1896);
        v305 = *(v0 + 1264);
        v306 = *(v0 + 1144);
        v307 = *(v0 + 1128);

        sub_100CF6C9C(v305, v306, v304);
        return;
      default:
        goto LABEL_13;
    }
  }
}

uint64_t sub_100CBBD44()
{
  v1 = *(*v0 + 2224);
  v2 = *(*v0 + 1128);
  v4 = *v0;

  return _swift_task_switch(sub_100CBBE54, v2, 0);
}

void sub_100CBBE54()
{
  v501 = v0;
  v1 = *(v0 + 1704);
  v2 = type metadata accessor for TimeBasedKey();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v16 = *(v0 + 2192);
    v17 = (v1 + *(v2 + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = v17[4];
    v23 = v17[5];
    sub_10002E98C(*v17, v19);
    sub_100017D5C(v20, v21);
    sub_10002E98C(v22, v23);
    sub_100018D00(v1, type metadata accessor for TimeBasedKey);
    v24 = sub_100A7A194(v20, v21);
    if (v16)
    {
      v6 = v0 + 1080;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
LABEL_7:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_101385D80;
        *v6 = v16;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v28 = String.init<A>(describing:)();
        v30 = v29;
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = sub_100008C00();
        *(v27 + 32) = v28;
        *(v27 + 40) = v30;
        os_log(_:dso:log:_:_:)();

        sub_1001BAF88();
        v31 = swift_allocError();
        *v32 = 0;
        swift_willThrow();

LABEL_8:
        v499 = 0;
        v500 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v33 = v500;
        *(v0 + 992) = v499;
        *(v0 + 1000) = v33;
        v34._object = 0x800000010134CB30;
        v34._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v34);
        *(v0 + 1088) = v31;
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        _print_unlocked<A, B>(_:_:)();
        v35 = *(v0 + 992);
        v36 = *(v0 + 1000);
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

LABEL_141:
      swift_once();
      goto LABEL_7;
    }

    v25 = sub_100A7829C(v24, 0);
    *(v0 + 2232) = v25;
    *(v0 + 2240) = v26;
    v325 = v25;
    v326 = v26;
    CCECCryptorRelease();
    v327 = v326;
    v328 = v326 >> 62;
    if ((v326 >> 62) > 1)
    {
      v329 = v325;
      if (v328 != 2)
      {
        v338 = v326;
        v339 = v325;
        v340 = 0;
        goto LABEL_132;
      }

      v332 = *(v325 + 16);
      v331 = *(v325 + 24);
      v333 = __OFSUB__(v331, v332);
      v330 = v331 - v332;
      if (!v333)
      {
        goto LABEL_94;
      }

      __break(1u);
    }

    else
    {
      v329 = v325;
      if (!v328)
      {
        v330 = BYTE6(v326);
        goto LABEL_94;
      }
    }

    LODWORD(v330) = HIDWORD(v329) - v329;
    if (__OFSUB__(HIDWORD(v329), v329))
    {
      __break(1u);
      goto LABEL_143;
    }

    v330 = v330;
LABEL_94:
    if (v330 == 28)
    {
      v334 = *(v0 + 1896);
      v335 = *(v0 + 1888);
      sub_100006654(v18, v19);
      sub_100016590(v20, v21);
      sub_100006654(v22, v23);
      sub_100D11DC8(v334, v335, type metadata accessor for OwnedBeaconRecord);
      v336 = async function pointer to daemon.getter[1];
      v337 = swift_task_alloc();
      *(v0 + 2248) = v337;
      *v337 = v0;
      v337[1] = sub_100CBED44;

      goto _$s19FindMyDaemonSupport6daemonAA0C0Cvg;
    }

    if (v328 == 2)
    {
      v385 = *(v329 + 16);
      v384 = *(v329 + 24);
      v340 = v384 - v385;
      if (!__OFSUB__(v384, v385))
      {
        v338 = v326;
        v339 = v329;
        goto LABEL_132;
      }

LABEL_144:
      __break(1u);
_$s19FindMyDaemonSupport6daemonAA0C0Cvg:
      daemon.getter();
      return;
    }

    if (v328 != 1)
    {
      v339 = v329;
      v338 = v327;
      v340 = BYTE6(v327);
      goto LABEL_132;
    }

    if (!__OFSUB__(HIDWORD(v329), v329))
    {
      v338 = v326;
      v339 = v329;
      v340 = HIDWORD(v329) - v329;
LABEL_132:
      sub_100018350();
      v31 = swift_allocError();
      *v386 = 28;
      *(v386 + 8) = v340;
      *(v386 + 16) = 0;
      swift_willThrow();
      sub_100016590(v339, v338);
      goto LABEL_8;
    }

LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v3 = *(v0 + 2080);
  v4 = *(v0 + 2024);
  v5 = *(v0 + 1120);
  sub_10000B3A8(v1, &qword_10169BA30, &unk_101395620);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2024);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v499 = v11;
    *v10 = 136446210;
    v12 = sub_100C71778();
    v14 = v13;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v15 = sub_1000136BC(v12, v14, &v499);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "No secondary key available for %{public}s.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v497 = *(v0 + 2208);
  v37 = *(v0 + 2200) + 1;
  if (v37 == *(v0 + 2184))
  {
LABEL_11:
    v38 = *(v0 + 2176);

    v39 = *(v0 + 2160);
    v40 = *(v0 + 2072);
    v41 = *(v0 + 2064);
    v42 = *(v0 + 2056);
    v43 = *(v0 + 2048);
    v44 = *(v0 + 2040);
    v45 = *(v0 + 2032);
    v392 = *(v0 + 2024);
    v393 = *(v0 + 2016);
    v394 = *(v0 + 2008);
    v395 = *(v0 + 2000);
    v396 = *(v0 + 1992);
    v397 = *(v0 + 1984);
    v398 = *(v0 + 1976);
    v399 = *(v0 + 1968);
    v400 = *(v0 + 1960);
    v401 = *(v0 + 1952);
    v402 = *(v0 + 1944);
    v403 = *(v0 + 1936);
    v404 = *(v0 + 1928);
    v405 = *(v0 + 1920);
    v46 = *(v0 + 1896);
    v406 = *(v0 + 1912);
    v407 = *(v0 + 1888);
    v408 = *(v0 + 1864);
    v409 = *(v0 + 1848);
    v47 = *(v0 + 1808);
    v410 = *(v0 + 1840);
    v411 = *(v0 + 1800);
    v412 = *(v0 + 1792);
    v413 = *(v0 + 1784);
    v414 = *(v0 + 1776);
    v415 = *(v0 + 1752);
    v416 = *(v0 + 1744);
    v417 = *(v0 + 1736);
    v418 = *(v0 + 1728);
    v419 = *(v0 + 1704);
    v420 = *(v0 + 1696);
    v421 = *(v0 + 1680);
    v422 = *(v0 + 1672);
    v423 = *(v0 + 1664);
    v424 = *(v0 + 1656);
    v425 = *(v0 + 1648);
    v426 = *(v0 + 1640);
    v427 = *(v0 + 1632);
    v428 = *(v0 + 1624);
    v429 = *(v0 + 1616);
    v430 = *(v0 + 1608);
    v431 = *(v0 + 1600);
    v432 = *(v0 + 1592);
    v433 = *(v0 + 1584);
    v434 = *(v0 + 1576);
    v435 = *(v0 + 1568);
    v436 = *(v0 + 1560);
    v437 = *(v0 + 1552);
    v438 = *(v0 + 1544);
    v439 = *(v0 + 1536);
    v440 = *(v0 + 1528);
    v441 = *(v0 + 1520);
    v442 = *(v0 + 1512);
    v443 = *(v0 + 1504);
    v444 = *(v0 + 1496);
    v445 = *(v0 + 1488);
    v446 = *(v0 + 1480);
    v447 = *(v0 + 1472);
    v448 = *(v0 + 1464);
    v449 = *(v0 + 1456);
    v450 = *(v0 + 1448);
    v451 = *(v0 + 1440);
    v452 = *(v0 + 1432);
    v453 = *(v0 + 1408);
    v454 = *(v0 + 1400);
    v455 = *(v0 + 1392);
    v456 = *(v0 + 1384);
    v457 = *(v0 + 1376);
    v458 = *(v0 + 1368);
    v459 = *(v0 + 1360);
    v460 = *(v0 + 1352);
    v461 = *(v0 + 1344);
    v462 = *(v0 + 1336);
    v463 = *(v0 + 1328);
    v464 = *(v0 + 1320);
    v465 = *(v0 + 1312);
    v466 = *(v0 + 1296);
    v467 = *(v0 + 1288);
    v468 = *(v0 + 1280);
    v469 = *(v0 + 1272);
    v471 = *(v0 + 1264);
    v472 = *(v0 + 1256);
    v475 = *(v0 + 1232);
    v478 = *(v0 + 1224);
    v481 = *(v0 + 1216);
    v486 = *(v0 + 1208);
    v490 = *(v0 + 1200);
    v491 = *(v0 + 1176);
    v492 = *(v0 + 1168);
    v494 = *(v0 + 1160);
    v495 = *(v0 + 1144);
    sub_100006654(*(v0 + 2144), *(v0 + 2152));
    sub_1001BAF34(v0 + 880);
    sub_100018D00(v47, type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_100018D00(v46, type metadata accessor for OwnedBeaconRecord);

    v48 = *(v0 + 8);

    v48(v497);
    return;
  }

  v49 = v0 + 232;
  v50 = v0 + 808;
  v16 = *(v0 + 2192);
  v493 = v0 + 232;
  v496 = v0 + 808;
  while (2)
  {
    *(v0 + 2208) = v497;
    *(v0 + 2200) = v37;
    *(v0 + 2192) = v16;
    v51 = *(v0 + 2176);
    if (v37 >= *(v51 + 16))
    {
      __break(1u);
      goto LABEL_141;
    }

    v52 = *(v0 + 2080);
    v53 = *(v0 + 2048);
    v54 = *(v0 + 1120);
    v55 = *(v51 + v37 + 32);
    *(v0 + 2509) = v55;
    sub_100D11DC8(v54, v53, type metadata accessor for SharingCircleKeyManager.Instruction);
    v6 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v57 = os_log_type_enabled(v6, v56);
    v58 = *(v0 + 2048);
    if (v57)
    {
      v59 = swift_slowAlloc();
      v499 = swift_slowAlloc();
      *v59 = 136446466;
      v60 = sub_100C71778();
      v62 = v61;
      sub_100018D00(v58, type metadata accessor for SharingCircleKeyManager.Instruction);
      v63 = sub_1000136BC(v60, v62, &v499);
      v49 = v0 + 232;

      *(v59 + 4) = v63;
      *(v59 + 12) = 2082;
      v64 = sub_10125403C(v55);
      v66 = sub_1000136BC(v64, v65, &v499);

      *(v59 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v6, v56, "Keys to upload: %{public}s. Creating package for %{public}s", v59, 0x16u);
      swift_arrayDestroy();
      v50 = v0 + 808;
    }

    else
    {

      sub_100018D00(v58, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v55)
    {
      case 1:
        v341 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v341 + 16) && (v342 = sub_100771F0C(1), (v343 & 1) != 0))
        {
          v344 = *(v0 + 1752);
          sub_100D11DC8(*(v341 + 56) + *(*(v0 + 1720) + 72) * v342, v344, type metadata accessor for BookmarkMetaData);
          v345 = *(v344 + 8);
          sub_100018D00(v344, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v345 = 0;
        }

        *(v0 + 2216) = v345;
        v387 = *(v0 + 2504);
        v388 = *(v0 + 1120);
        v389 = swift_task_alloc();
        *(v0 + 2224) = v389;
        *v389 = v0;
        v389[1] = sub_100CBBD44;
        v390 = *(v0 + 1704);
        v391 = *(v0 + 1128);

        sub_100CFC71C(v390, v388 + v387);
        return;
      case 4:
        v350 = swift_task_alloc();
        *(v0 + 2328) = v350;
        *v350 = v0;
        v350[1] = sub_100CC4E24;
        v351 = *(v0 + 1896);
        v352 = *(v0 + 1408);
        v353 = *(v0 + 1128);
        v354 = *(v0 + 1120);

        sub_100CF172C(v352, v354, v351, v0 + 880);
        return;
      case 5:
        v89 = *(v0 + 1768);
        v90 = *(v0 + 1760);
        v91 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v91, &qword_1016B0478, &unk_1013CDC10);
        v92 = *(v89 + 48);
        *(v0 + 2344) = v92;
        *(v0 + 2352) = (v89 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v90) = v92(v91, 1, v90);
        sub_10000B3A8(v91, &qword_1016B0478, &unk_1013CDC10);
        if (v90 == 1)
        {
          v360 = swift_task_alloc();
          *(v0 + 2360) = v360;
          *v360 = v0;
          v361 = sub_100CC7CAC;
          goto LABEL_118;
        }

        v93 = *(v0 + 2352);
        v94 = *(v0 + 2344);
        v95 = *(v0 + 1760);
        v96 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v96, &qword_1016B0478, &unk_1013CDC10);
        v97 = v94(v96, 1, v95);
        v98 = *(v0 + 1368);
        if (v97 != 1)
        {
          sub_100D12974(v98, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
          v365 = swift_task_alloc();
          *(v0 + 2376) = v365;
          *v365 = v0;
          v365[1] = sub_100CCA6E8;
          v366 = *(v0 + 2152);
          v367 = *(v0 + 2144);
          v368 = *(v0 + 1896);
          v369 = *(v0 + 1792);
          v370 = *(v0 + 1400);
          v371 = *(v0 + 1128);
          v372 = *(v0 + 1120);
          v373 = 0;
          goto LABEL_123;
        }

        v99 = *(v0 + 2080);
        v100 = *(v0 + 2000);
        v101 = *(v0 + 1120);
        sub_10000B3A8(v98, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v101, v100, type metadata accessor for SharingCircleKeyManager.Instruction);
        v6 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        v103 = os_log_type_enabled(v6, v102);
        v104 = *(v0 + 2000);
        if (!v103)
        {
          goto LABEL_41;
        }

        v105 = swift_slowAlloc();
        v499 = swift_slowAlloc();
        *v105 = 136446466;
        v106 = sub_100C71778();
        v108 = v107;
        sub_100018D00(v104, type metadata accessor for SharingCircleKeyManager.Instruction);
        v109 = sub_1000136BC(v106, v108, &v499);

        *(v105 + 4) = v109;
        *(v105 + 12) = 2082;
        v110 = 5;
        goto LABEL_40;
      case 6:
        v111 = *(v0 + 1768);
        v112 = *(v0 + 1760);
        v113 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v113, &qword_1016B0478, &unk_1013CDC10);
        v114 = *(v111 + 48);
        *(v0 + 2392) = v114;
        *(v0 + 2400) = (v111 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v112) = v114(v113, 1, v112);
        sub_10000B3A8(v113, &qword_1016B0478, &unk_1013CDC10);
        if (v112 == 1)
        {
          v360 = swift_task_alloc();
          *(v0 + 2408) = v360;
          *v360 = v0;
          v361 = sub_100CCD5CC;
LABEL_118:
          v360[1] = v361;
          v362 = *(v0 + 2160);
          v363 = *(v0 + 1896);
          v364 = *(v0 + 1128);

          sub_100CF0FB4(v363, v362, v364);
          return;
        }

        v115 = *(v0 + 2400);
        v116 = *(v0 + 2392);
        v117 = *(v0 + 1760);
        v118 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v118, &qword_1016B0478, &unk_1013CDC10);
        v119 = v116(v118, 1, v117);
        v120 = *(v0 + 1352);
        if (v119 == 1)
        {
          v121 = *(v0 + 2080);
          v122 = *(v0 + 1984);
          v123 = *(v0 + 1120);
          sub_10000B3A8(v120, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v123, v122, type metadata accessor for SharingCircleKeyManager.Instruction);
          v6 = Logger.logObject.getter();
          v102 = static os_log_type_t.error.getter();
          v124 = os_log_type_enabled(v6, v102);
          v104 = *(v0 + 1984);
          if (v124)
          {
            v105 = swift_slowAlloc();
            v499 = swift_slowAlloc();
            *v105 = 136446466;
            v125 = sub_100C71778();
            v127 = v126;
            sub_100018D00(v104, type metadata accessor for SharingCircleKeyManager.Instruction);
            v128 = sub_1000136BC(v125, v127, &v499);

            *(v105 + 4) = v128;
            *(v105 + 12) = 2082;
            v110 = 6;
LABEL_40:
            v147 = sub_10125403C(v110);
            v149 = sub_1000136BC(v147, v148, &v499);

            *(v105 + 14) = v149;
            v50 = v0 + 808;
            _os_log_impl(&_mh_execute_header, v6, v102, "No key alignment available for %{public}s. No package created for %{public}s", v105, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
LABEL_41:

            sub_100018D00(v104, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

LABEL_42:
          v497 = *(v0 + 2208);
LABEL_16:
          v37 = *(v0 + 2200) + 1;
          if (v37 == *(v0 + 2184))
          {
            goto LABEL_11;
          }

          continue;
        }

        sub_100D12974(v120, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
        v374 = swift_task_alloc();
        *(v0 + 2424) = v374;
        *v374 = v0;
        v374[1] = sub_100CD0008;
        v366 = *(v0 + 2152);
        v367 = *(v0 + 2144);
        v368 = *(v0 + 1896);
        v369 = *(v0 + 1784);
        v370 = *(v0 + 1392);
        v375 = *(v0 + 1128);
        v372 = *(v0 + 1120);
        v373 = 1;
LABEL_123:

        sub_100CF2904(v370, v372, v368, v369, v373, v367, v366);
        return;
      case 8:
      case 10:
        v67 = *(v0 + 936);
        if (!*(v67 + 16))
        {
          goto LABEL_16;
        }

        v68 = sub_100771F0C(v55);
        if ((v69 & 1) == 0)
        {
          goto LABEL_16;
        }

        v70 = *(v0 + 2152);
        v71 = *(v0 + 2144);
        v72 = *(v0 + 1680);
        v73 = (*(v67 + 56) + 16 * v68);
        v75 = *v73;
        v74 = v73[1];
        v76 = type metadata accessor for EncryptedData();
        (*(*(v76 - 8) + 56))(v72, 1, 1, v76);
        sub_100017D5C(v75, v74);
        sub_100017D5C(v75, v74);
        sub_10125A120(1, v75, v74, v72, v49);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v77 = swift_allocObject();
        v78 = *(v49 + 32);
        v79 = *(v49 + 48);
        v80 = *v49;
        *(v77 + 48) = *(v49 + 16);
        *(v77 + 64) = v78;
        *(v77 + 80) = v79;
        *(v77 + 96) = *(v49 + 64);
        *(v77 + 16) = xmmword_101385D80;
        *(v77 + 32) = v80;
        sub_10002E98C(v71, v70);
        sub_1003914F8(v49, v0 + 736);
        v81 = sub_100D11764(v77, v71, v70);
        v82 = *(v0 + 2152);
        v83 = *(v0 + 2144);
        if (v16)
        {
          sub_100016590(v75, v74);
          sub_100391554(v49);
          sub_100006654(v83, v82);
          swift_setDeallocating();
          sub_100391554(v77 + 32);
          swift_deallocClassInstance();
          v50 = v0 + 808;
          v260 = *(v0 + 2080);
          v261 = *(v0 + 1920);
          v262 = *(v0 + 1912);
          v263 = *(v0 + 1120);
          sub_100D11DC8(v263, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v263, v261, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v263, v262, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v264 = Logger.logObject.getter();
          v265 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v264, v265))
          {
            v498 = v265;
            v266 = *(v0 + 1928);
            v267 = *(v0 + 1920);
            v484 = *(v0 + 1912);
            v473 = *(v0 + 1904);
            v476 = *(v0 + 1816);
            v268 = *(v0 + 2509);
            v269 = swift_slowAlloc();
            v499 = swift_slowAlloc();
            *v269 = 136447747;
            v270 = sub_100C71778();
            v272 = v271;
            sub_100018D00(v266, type metadata accessor for SharingCircleKeyManager.Instruction);
            v273 = sub_1000136BC(v270, v272, &v499);

            *(v269 + 4) = v273;
            *(v269 + 12) = 2082;
            v274 = sub_10125403C(v268);
            v276 = sub_1000136BC(v274, v275, &v499);

            *(v269 + 14) = v276;
            *(v269 + 22) = 2160;
            *(v269 + 24) = 1752392040;
            *(v269 + 32) = 2081;
            v277 = *(v473 + 20);
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
            v278 = dispatch thunk of CustomStringConvertible.description.getter();
            v280 = v279;
            v281 = v267;
            v49 = v0 + 232;
            sub_100018D00(v281, type metadata accessor for SharingCircleKeyManager.Instruction);
            v282 = sub_1000136BC(v278, v280, &v499);

            *(v269 + 34) = v282;
            *(v269 + 42) = 2160;
            *(v269 + 44) = 1752392040;
            *(v269 + 52) = 2081;
            v283 = v484 + *(v473 + 24);
            v50 = v0 + 808;
            v284 = dispatch thunk of CustomStringConvertible.description.getter();
            v286 = v285;
            sub_100018D00(v484, type metadata accessor for SharingCircleKeyManager.Instruction);
            v287 = sub_1000136BC(v284, v286, &v499);

            *(v269 + 54) = v287;
            *(v269 + 62) = 2082;
            swift_getErrorValue();
            v288 = *(v0 + 968);
            v289 = *(v0 + 976);
            v290 = *(v0 + 984);
            v291 = Error.localizedDescription.getter();
            v293 = sub_1000136BC(v291, v292, &v499);

            *(v269 + 64) = v293;
            v6 = v264;
            _os_log_impl(&_mh_execute_header, v264, v498, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v269, 0x48u);
            swift_arrayDestroy();
          }

          else
          {
            v294 = *(v0 + 1928);
            v6 = *(v0 + 1920);
            v295 = *(v0 + 1912);

            sub_100018D00(v295, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v6, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v294, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          v16 = 0;
          goto LABEL_42;
        }

        v171 = v81;
        v172 = *(v0 + 1808);
        v173 = *(v0 + 1520);
        v482 = *(v0 + 1512);
        v487 = v74;
        v174 = *(v0 + 1416);
        sub_100006654(v83, v82);
        swift_setDeallocating();
        sub_100391554(v77 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v172, &v173[*(v174 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v173 = v55;
        *&v173[*(v174 + 24)] = v171;
        sub_100D11DC8(v173, v482, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v497 = sub_100A5BE40(0, v497[2] + 1, 1, v497);
        }

        v176 = v497[2];
        v175 = v497[3];
        if (v176 >= v175 >> 1)
        {
          v497 = sub_100A5BE40(v175 > 1, v176 + 1, 1, v497);
        }

        v177 = *(v0 + 2080);
        v178 = *(v0 + 1960);
        v179 = *(v0 + 1520);
        v180 = *(v0 + 1512);
        v181 = *(v0 + 1504);
        v182 = *(v0 + 1424);
        v183 = *(v0 + 1120);
        v497[2] = v176 + 1;
        sub_100D12974(v180, v497 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v176, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v183, v178, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v179, v181, type metadata accessor for KeyDropInterface.KeyPackage);
        v184 = Logger.logObject.getter();
        v185 = static os_log_type_t.default.getter();
        v186 = os_log_type_enabled(v184, v185);
        v187 = *(v0 + 1960);
        v188 = *(v0 + 1520);
        v189 = *(v0 + 1504);
        if (v186)
        {
          v6 = swift_slowAlloc();
          v499 = swift_slowAlloc();
          *v6 = 136446466;
          v190 = sub_100C71778();
          v483 = v188;
          v192 = v191;
          sub_100018D00(v187, type metadata accessor for SharingCircleKeyManager.Instruction);
          v193 = sub_1000136BC(v190, v192, &v499);

          *(v6 + 4) = v193;
          *(v6 + 12) = 2082;
          v194 = sub_101255410();
          v196 = v195;
          sub_100018D00(v189, type metadata accessor for KeyDropInterface.KeyPackage);
          v197 = sub_1000136BC(v194, v196, &v499);

          *(v6 + 14) = v197;
          _os_log_impl(&_mh_execute_header, v184, v185, "Keys to upload: %{public}s,\nadded: %{public}s.", v6, 0x16u);
          swift_arrayDestroy();

          v49 = v0 + 232;
          sub_100391554(v493);
          sub_100016590(v75, v487);
          v198 = v483;
        }

        else
        {

          sub_100391554(v493);
          sub_100016590(v75, v487);
          v6 = type metadata accessor for KeyDropInterface.KeyPackage;
          v209 = v189;
          v49 = v0 + 232;
          sub_100018D00(v209, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v187, type metadata accessor for SharingCircleKeyManager.Instruction);
          v198 = v188;
        }

        sub_100018D00(v198, type metadata accessor for KeyDropInterface.KeyPackage);
        v16 = 0;
        v50 = v0 + 808;
        goto LABEL_16;
      case 9:
        v129 = *(v0 + 1768);
        v130 = *(v0 + 1760);
        v131 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v131, &qword_1016B0478, &unk_1013CDC10);
        v132 = *(v129 + 48);
        *(v0 + 2440) = v132;
        *(v0 + 2448) = (v129 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v130) = v132(v131, 1, v130);
        sub_10000B3A8(v131, &qword_1016B0478, &unk_1013CDC10);
        if (v130 == 1)
        {
          v360 = swift_task_alloc();
          *(v0 + 2456) = v360;
          *v360 = v0;
          v361 = sub_100CD2EEC;
          goto LABEL_118;
        }

        v133 = *(v0 + 2448);
        v134 = *(v0 + 2440);
        v135 = *(v0 + 1760);
        v136 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v136, &qword_1016B0478, &unk_1013CDC10);
        v137 = v134(v136, 1, v135);
        v138 = *(v0 + 1336);
        if (v137 != 1)
        {
          sub_100D12974(v138, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v376 = swift_task_alloc();
          *(v0 + 2472) = v376;
          *v376 = v0;
          v376[1] = sub_100CD5928;
          v377 = *(v0 + 2152);
          v378 = *(v0 + 2144);
          v379 = *(v0 + 1896);
          v380 = *(v0 + 1776);
          v381 = *(v0 + 1384);
          v382 = *(v0 + 1128);
          v383 = *(v0 + 1120);

          sub_100CF3F94(v381, v383, v379, v380, v378, v377);
          return;
        }

        v139 = *(v0 + 2080);
        v140 = *(v0 + 1968);
        v141 = *(v0 + 1120);
        sub_10000B3A8(v138, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v141, v140, type metadata accessor for SharingCircleKeyManager.Instruction);
        v6 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        v142 = os_log_type_enabled(v6, v102);
        v104 = *(v0 + 1968);
        if (!v142)
        {
          goto LABEL_41;
        }

        v105 = swift_slowAlloc();
        v499 = swift_slowAlloc();
        *v105 = 136446466;
        v143 = sub_100C71778();
        v145 = v144;
        sub_100018D00(v104, type metadata accessor for SharingCircleKeyManager.Instruction);
        v146 = sub_1000136BC(v143, v145, &v499);

        *(v105 + 4) = v146;
        *(v105 + 12) = 2082;
        v110 = 9;
        goto LABEL_40;
      case 12:
        v84 = *(v0 + 1824);
        v85 = *(v0 + 1816);
        v86 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v86, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v84 + 48))(v86, 1, v85) == 1)
        {
          v87 = *(v0 + 1192);
          v88 = *(v0 + 1184);
          v6 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v87 + 56))(v6, 1, 1, v88);
          goto LABEL_60;
        }

        v150 = *(v0 + 2112);
        v151 = *(v0 + 1896);
        v152 = *(v0 + 1872);
        v153 = *(v0 + 1160);
        v154 = *(v0 + 1152);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v151 + *(v152 + 24), v153, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_55:
            v206 = *(v0 + 1192);
            v207 = *(v0 + 1184);
            v6 = *(v0 + 1176);
            v208 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v208, type metadata accessor for StableIdentifier);
            (*(v206 + 56))(v6, 1, 1, v207);
            goto LABEL_60;
          }

          v199 = *(v0 + 1824);
          v200 = *(v0 + 1816);
          v201 = *(v0 + 1160);
          v202 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v203 = *(v201 + 8 + v202[12]);

          v204 = *(v201 + 8 + v202[16]);

          v205 = *(v201 + 8 + v202[20]);

          v164 = *(v201 + v202[24]);
          (*(v199 + 8))(v201, v200);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_55;
          }

          v156 = *(v0 + 1824);
          v157 = *(v0 + 1160);
          v158 = v157 + 8;
          v159 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v160 = *(v157 + 8 + v159[12]);

          v161 = *(v157 + 8 + v159[16]);

          v162 = *(v157 + 8 + v159[20]);

          v163 = (v157 + v159[24]);
          v164 = *v163;
          LOBYTE(v157) = v163[1];
          v165 = *(v158 + v159[28]);

          v166 = *(v156 + 8);
          if (v157)
          {
            v167 = *(v0 + 1816);
            v168 = *(v0 + 1192);
            v6 = *(v0 + 1184);
            v169 = *(v0 + 1176);
            v170 = *(v0 + 1160);
            v166(*(v0 + 1840), v167);
            (*(v168 + 56))(v169, 1, 1, v6);
            v166(v170, v167);
            v50 = v0 + 808;
            goto LABEL_60;
          }

          v166(*(v0 + 1160), *(v0 + 1816));
          v50 = v0 + 808;
        }

        v210 = *(v0 + 2112);
        v211 = *(v0 + 1192);
        v212 = *(v0 + 1184);
        v6 = *(v0 + 1176);
        (*(v0 + 2104))(v6, *(v0 + 1840), *(v0 + 1816));
        *(v6 + *(v212 + 20)) = v164;
        (*(v211 + 56))(v6, 0, 1, v212);
LABEL_60:
        v213 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v213, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v213, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_16;
        }

        v214 = *(v0 + 1904);
        v215 = *(v0 + 1120);
        sub_100D12974(v213, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v216 = *(v215 + *(v214 + 44));
        if (!*(v216 + 16))
        {
          goto LABEL_65;
        }

        v217 = sub_100771F0C(12);
        if ((v218 & 1) == 0)
        {
          goto LABEL_65;
        }

        v219 = *(v0 + 1768);
        v220 = *(v0 + 1760);
        v221 = *(v0 + 1736);
        v222 = *(v0 + 1712);
        v223 = *(v0 + 1320);
        sub_100D11DC8(*(v216 + 56) + *(*(v0 + 1720) + 72) * v217, v221, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v221 + *(v222 + 20), v223, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v221, type metadata accessor for BookmarkMetaData);
        if ((*(v219 + 48))(v223, 1, v220) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
          v50 = v0 + 808;
LABEL_65:
          v224 = *(v0 + 1280);
          v225 = *(v0 + 1248);
          v226 = *(v0 + 1240);
          v227 = *(v0 + 1216);
          (*(v225 + 56))(v227, 1, 1, v226);
          static Date.distantPast.getter();
          if ((*(v225 + 48))(v227, 1, v226) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v228 = *(v0 + 1320);
          v229 = *(v0 + 1280);
          v230 = *(v0 + 1248);
          v231 = *(v0 + 1240);
          v232 = *(v0 + 1216);
          (*(v230 + 16))(v232, v228 + *(*(v0 + 1760) + 24), v231);
          sub_100018D00(v228, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v230 + 56))(v232, 0, 1, v231);
          (*(v230 + 32))(v229, v232, v231);
          v50 = v0 + 808;
        }

        v233 = *(v0 + 1896);
        v234 = *(v0 + 1272);
        v235 = objc_autoreleasePoolPush();
        sub_100D088CC(v233, v234);
        if (v16)
        {

          objc_autoreleasePoolPop(v235);
          return;
        }

        v6 = *(v0 + 1280);
        v236 = *(v0 + 1272);
        v237 = *(v0 + 1248);
        v238 = *(v0 + 1240);
        objc_autoreleasePoolPop(v235);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
        v239 = dispatch thunk of static Comparable.< infix(_:_:)();
        v240 = *(v237 + 8);
        v240(v236, v238);
        if (v239)
        {
          v241 = *(v0 + 1200);
          v240(*(v0 + 1280), *(v0 + 1240));
          v242 = v241;
        }

        else
        {
          v243 = *(v0 + 1200);
          v244 = *(v0 + 1184);
          v245 = type metadata accessor for PropertyListEncoder();
          v246 = *(v245 + 48);
          v247 = *(v245 + 52);
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
          v248 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v250 = v249;
          v488 = *(v0 + 2152);
          v251 = *(v0 + 2144);
          v252 = *(v0 + 1680);
          v253 = v248;

          v254 = type metadata accessor for EncryptedData();
          (*(*(v254 - 8) + 56))(v252, 1, 1, v254);
          sub_100017D5C(v253, v250);
          sub_10125A120(1, v253, v250, v252, v50);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v255 = swift_allocObject();
          v256 = *(v50 + 32);
          v257 = *(v50 + 48);
          v258 = *v50;
          *(v255 + 48) = *(v50 + 16);
          *(v255 + 64) = v256;
          *(v255 + 80) = v257;
          *(v255 + 96) = *(v50 + 64);
          *(v255 + 16) = xmmword_101385D80;
          *(v255 + 32) = v258;
          sub_10002E98C(v251, v488);
          sub_1003914F8(v50, v0 + 448);
          v259 = sub_100D11764(v255, v251, v488);
          v485 = v253;
          v489 = v250;
          v296 = *(v0 + 1808);
          v297 = *(v0 + 1472);
          v479 = *(v0 + 1464);
          v298 = *(v0 + 1416);
          v299 = v259;
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v255 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v296, &v297[*(v298 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v297 = 12;
          *&v297[*(v298 + 24)] = v299;
          sub_100D11DC8(v297, v479, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v497 = sub_100A5BE40(0, v497[2] + 1, 1, v497);
          }

          v301 = v497[2];
          v300 = v497[3];
          if (v301 >= v300 >> 1)
          {
            v497 = sub_100A5BE40(v300 > 1, v301 + 1, 1, v497);
          }

          v302 = *(v0 + 2080);
          v303 = *(v0 + 1944);
          v304 = *(v0 + 1472);
          v305 = *(v0 + 1464);
          v306 = *(v0 + 1456);
          v307 = *(v0 + 1424);
          v308 = *(v0 + 1120);
          v497[2] = v301 + 1;
          sub_100D12974(v305, v497 + ((*(v307 + 80) + 32) & ~*(v307 + 80)) + *(v307 + 72) * v301, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v308, v303, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v304, v306, type metadata accessor for KeyDropInterface.KeyPackage);
          v6 = Logger.logObject.getter();
          v309 = static os_log_type_t.default.getter();
          v310 = os_log_type_enabled(v6, v309);
          v311 = *(v0 + 1944);
          v480 = *(v0 + 1472);
          v312 = *(v0 + 1456);
          v313 = *(v0 + 1280);
          v314 = *(v0 + 1240);
          v315 = *(v0 + 1200);
          if (v310)
          {
            v470 = v309;
            v316 = swift_slowAlloc();
            v499 = swift_slowAlloc();
            *v316 = 136446466;
            v474 = v313;
            v477 = v314;
            v317 = sub_100C71778();
            v319 = v318;
            sub_100018D00(v311, type metadata accessor for SharingCircleKeyManager.Instruction);
            v320 = sub_1000136BC(v317, v319, &v499);

            *(v316 + 4) = v320;
            *(v316 + 12) = 2082;
            v321 = sub_101255410();
            v323 = v322;
            sub_100018D00(v312, type metadata accessor for KeyDropInterface.KeyPackage);
            v324 = sub_1000136BC(v321, v323, &v499);

            *(v316 + 14) = v324;
            _os_log_impl(&_mh_execute_header, v6, v470, "Keys to upload: %{public}s,\nadded: %{public}s.", v316, 0x16u);
            swift_arrayDestroy();

            v50 = v0 + 808;
            sub_100391554(v496);
            sub_100016590(v485, v489);
            sub_100018D00(v480, type metadata accessor for KeyDropInterface.KeyPackage);
            v240(v474, v477);
          }

          else
          {

            v50 = v0 + 808;
            sub_100391554(v496);
            sub_100016590(v485, v489);
            v6 = type metadata accessor for KeyDropInterface.KeyPackage;
            sub_100018D00(v312, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v311, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v480, type metadata accessor for KeyDropInterface.KeyPackage);
            v240(v313, v314);
          }

          v242 = v315;
        }

        sub_100018D00(v242, type metadata accessor for KeyDropBeaconGroupAttributes);
        v16 = 0;
        v49 = v0 + 232;
        goto LABEL_16;
      case 13:
        v346 = swift_task_alloc();
        *(v0 + 2488) = v346;
        *v346 = v0;
        v346[1] = sub_100CD880C;
        v347 = *(v0 + 1896);
        v348 = *(v0 + 1232);
        v349 = *(v0 + 1128);

        sub_100CF5FBC(v348, v347);
        return;
      case 16:
        v355 = swift_task_alloc();
        *(v0 + 2496) = v355;
        *v355 = v0;
        v355[1] = sub_100CDBC44;
        v356 = *(v0 + 1896);
        v357 = *(v0 + 1264);
        v358 = *(v0 + 1144);
        v359 = *(v0 + 1128);

        sub_100CF6C9C(v357, v358, v356);
        return;
      default:
        goto LABEL_16;
    }
  }
}

uint64_t sub_100CBED44(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2248);
  v12 = *v1;
  *(v3 + 2256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 2264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100CBEF20;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100CBEF20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2264);
  v6 = *v2;
  *(*v2 + 2272) = v1;

  if (v1)
  {
    v7 = v4[141];

    return _swift_task_switch(sub_100CBF2C0, v7, 0);
  }

  else
  {
    v8 = v4[282];
    v9 = v4[236];
    v10 = v4[234];

    v4[285] = a1;
    v11 = *(v10 + 20);
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    v4[286] = v13;
    *v13 = v6;
    v13[1] = sub_100CBF0D4;
    v14 = v4[212];

    return sub_1010CD424(v14, v9 + v11, v9 + v12);
  }
}

uint64_t sub_100CBF0D4()
{
  v1 = *(*v0 + 2288);
  v2 = *(*v0 + 1128);
  v4 = *v0;

  return _swift_task_switch(sub_100CBF1E4, v2, 0);
}

uint64_t sub_100CBF1E4()
{
  v1 = v0[285];
  v2 = v0[236];
  v3 = v0[212];

  sub_100018D00(v2, type metadata accessor for OwnedBeaconRecord);
  v4 = *v3;
  v0[287] = *v3;
  if (v4)
  {
    v5 = v4 / 0x60 + 1;
  }

  else
  {
    v5 = 0;
  }

  v0[288] = v5;
  v6 = swift_task_alloc();
  v0[289] = v6;
  *v6 = v0;
  v6[1] = sub_100CC1B30;

  return sub_100C721E8();
}

void sub_100CBF2C0()
{
  v450 = v0;
  v446 = (v0 + 232);
  v443 = (v0 + 808);
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2232);
  v4 = *(v0 + 1888);

  sub_100016590(v3, v2);
  sub_100018D00(v4, type metadata accessor for OwnedBeaconRecord);
  v5 = *(v0 + 2272);
  v6 = *(v0 + 2080);
  v7 = *(v0 + 1920);
  v8 = *(v0 + 1912);
  v9 = *(v0 + 1120);
  sub_100D11DC8(v9, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v9, v7, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v9, v8, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v438 = v11;
    v12 = *(v0 + 1928);
    v428 = v10;
    v13 = *(v0 + 1920);
    v431 = *(v0 + 1912);
    v14 = *(v0 + 1904);
    v425 = *(v0 + 1816);
    v15 = *(v0 + 2509);
    v16 = swift_slowAlloc();
    v449[0] = swift_slowAlloc();
    *v16 = 136447747;
    v17 = sub_100C71778();
    v19 = v18;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, v449);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = sub_10125403C(v15);
    v23 = sub_1000136BC(v21, v22, v449);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    v24 = *(v14 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v28 = sub_1000136BC(v25, v27, v449);

    *(v16 + 34) = v28;
    *(v16 + 42) = 2160;
    *(v16 + 44) = 1752392040;
    *(v16 + 52) = 2081;
    v29 = v431 + *(v14 + 24);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_100018D00(v431, type metadata accessor for SharingCircleKeyManager.Instruction);
    v33 = sub_1000136BC(v30, v32, v449);

    *(v16 + 54) = v33;
    *(v16 + 62) = 2082;
    swift_getErrorValue();
    v34 = *(v0 + 968);
    v35 = *(v0 + 976);
    v36 = *(v0 + 984);
    v37 = Error.localizedDescription.getter();
    v39 = sub_1000136BC(v37, v38, v449);

    *(v16 + 64) = v39;
    v40 = v428;
    _os_log_impl(&_mh_execute_header, v428, v438, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v16, 0x48u);
    swift_arrayDestroy();

    goto LABEL_4;
  }

  v41 = *(v0 + 1928);
  v42 = *(v0 + 1920);
  v43 = *(v0 + 1912);

  sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v42, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100018D00(v41, type metadata accessor for SharingCircleKeyManager.Instruction);
  while (1)
  {
    v44 = *(v0 + 2208);
LABEL_6:
    v45 = *(v0 + 2200) + 1;
    if (v45 == *(v0 + 2184))
    {
      v286 = *(v0 + 2176);

      v287 = *(v0 + 2160);
      v288 = *(v0 + 2072);
      v289 = *(v0 + 2064);
      v290 = *(v0 + 2056);
      v291 = *(v0 + 2048);
      v292 = *(v0 + 2040);
      v344 = *(v0 + 2032);
      v345 = *(v0 + 2024);
      v346 = *(v0 + 2016);
      v347 = *(v0 + 2008);
      v348 = *(v0 + 2000);
      v349 = *(v0 + 1992);
      v350 = *(v0 + 1984);
      v351 = *(v0 + 1976);
      v352 = *(v0 + 1968);
      v353 = *(v0 + 1960);
      v354 = *(v0 + 1952);
      v355 = *(v0 + 1944);
      v356 = *(v0 + 1936);
      v357 = *(v0 + 1928);
      v358 = *(v0 + 1920);
      v359 = *(v0 + 1912);
      v293 = *(v0 + 1896);
      v360 = *(v0 + 1888);
      v361 = *(v0 + 1864);
      v362 = *(v0 + 1848);
      v363 = *(v0 + 1840);
      v294 = *(v0 + 1808);
      v364 = *(v0 + 1800);
      v365 = *(v0 + 1792);
      v366 = *(v0 + 1784);
      v367 = *(v0 + 1776);
      v368 = *(v0 + 1752);
      v369 = *(v0 + 1744);
      v370 = *(v0 + 1736);
      v371 = *(v0 + 1728);
      v372 = *(v0 + 1704);
      v373 = *(v0 + 1696);
      v374 = *(v0 + 1680);
      v375 = *(v0 + 1672);
      v376 = *(v0 + 1664);
      v377 = *(v0 + 1656);
      v378 = *(v0 + 1648);
      v379 = *(v0 + 1640);
      v380 = *(v0 + 1632);
      v381 = *(v0 + 1624);
      v382 = *(v0 + 1616);
      v383 = *(v0 + 1608);
      v384 = *(v0 + 1600);
      v385 = *(v0 + 1592);
      v386 = *(v0 + 1584);
      v387 = *(v0 + 1576);
      v388 = *(v0 + 1568);
      v389 = *(v0 + 1560);
      v390 = *(v0 + 1552);
      v391 = *(v0 + 1544);
      v392 = *(v0 + 1536);
      v393 = *(v0 + 1528);
      v394 = *(v0 + 1520);
      v395 = *(v0 + 1512);
      v396 = *(v0 + 1504);
      v397 = *(v0 + 1496);
      v398 = *(v0 + 1488);
      v399 = *(v0 + 1480);
      v400 = *(v0 + 1472);
      v401 = *(v0 + 1464);
      v402 = *(v0 + 1456);
      v403 = *(v0 + 1448);
      v404 = *(v0 + 1440);
      v405 = *(v0 + 1432);
      v406 = *(v0 + 1408);
      v407 = *(v0 + 1400);
      v408 = *(v0 + 1392);
      v409 = *(v0 + 1384);
      v410 = *(v0 + 1376);
      v411 = *(v0 + 1368);
      v412 = *(v0 + 1360);
      v413 = *(v0 + 1352);
      v414 = *(v0 + 1344);
      v415 = *(v0 + 1336);
      v416 = *(v0 + 1328);
      v417 = *(v0 + 1320);
      v418 = *(v0 + 1312);
      v419 = *(v0 + 1296);
      v420 = *(v0 + 1288);
      v422 = *(v0 + 1280);
      v423 = *(v0 + 1272);
      v424 = *(v0 + 1264);
      v427 = *(v0 + 1256);
      v430 = *(v0 + 1232);
      v434 = *(v0 + 1224);
      v437 = *(v0 + 1216);
      v441 = *(v0 + 1208);
      v442 = *(v0 + 1200);
      v444 = *(v0 + 1176);
      v445 = *(v0 + 1168);
      v447 = *(v0 + 1160);
      v448 = *(v0 + 1144);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v294, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v293, type metadata accessor for OwnedBeaconRecord);

      v295 = *(v0 + 8);

      v295(v44);
      return;
    }

    *(v0 + 2208) = v44;
    *(v0 + 2200) = v45;
    *(v0 + 2192) = 0;
    v46 = *(v0 + 2176);
    if (v45 >= *(v46 + 16))
    {
      __break(1u);
      return;
    }

    v47 = *(v0 + 2080);
    v48 = *(v0 + 2048);
    v49 = *(v0 + 1120);
    v50 = *(v46 + v45 + 32);
    *(v0 + 2509) = v50;
    sub_100D11DC8(v49, v48, type metadata accessor for SharingCircleKeyManager.Instruction);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 2048);
    if (v53)
    {
      v55 = swift_slowAlloc();
      v449[0] = swift_slowAlloc();
      *v55 = 136446466;
      v56 = sub_100C71778();
      v58 = v57;
      sub_100018D00(v54, type metadata accessor for SharingCircleKeyManager.Instruction);
      v59 = sub_1000136BC(v56, v58, v449);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v60 = sub_10125403C(v50);
      v62 = sub_1000136BC(v60, v61, v449);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v51, v52, "Keys to upload: %{public}s. Creating package for %{public}s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100018D00(v54, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v50)
    {
      case 1:
        v301 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
        if (*(v301 + 16) && (v302 = sub_100771F0C(1), (v303 & 1) != 0))
        {
          v304 = *(v0 + 1752);
          sub_100D11DC8(*(v301 + 56) + *(*(v0 + 1720) + 72) * v302, v304, type metadata accessor for BookmarkMetaData);
          v305 = *(v304 + 8);
          sub_100018D00(v304, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v305 = 0;
        }

        *(v0 + 2216) = v305;
        v339 = *(v0 + 2504);
        v340 = *(v0 + 1120);
        v341 = swift_task_alloc();
        *(v0 + 2224) = v341;
        *v341 = v0;
        v341[1] = sub_100CBBD44;
        v342 = *(v0 + 1704);
        v343 = *(v0 + 1128);

        sub_100CFC71C(v342, v340 + v339);
        return;
      case 4:
        v306 = swift_task_alloc();
        *(v0 + 2328) = v306;
        *v306 = v0;
        v306[1] = sub_100CC4E24;
        v307 = *(v0 + 1896);
        v308 = *(v0 + 1408);
        v309 = *(v0 + 1128);
        v310 = *(v0 + 1120);

        sub_100CF172C(v308, v310, v307, v0 + 880);
        return;
      case 5:
        v255 = *(v0 + 1768);
        v256 = *(v0 + 1760);
        v257 = *(v0 + 1376);
        sub_1000D2A70(*(v0 + 2168), v257, &qword_1016B0478, &unk_1013CDC10);
        v258 = *(v255 + 48);
        *(v0 + 2344) = v258;
        *(v0 + 2352) = (v255 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v256) = v258(v257, 1, v256);
        sub_10000B3A8(v257, &qword_1016B0478, &unk_1013CDC10);
        if (v256 == 1)
        {
          v315 = swift_task_alloc();
          *(v0 + 2360) = v315;
          *v315 = v0;
          v316 = sub_100CC7CAC;
          goto LABEL_83;
        }

        v259 = *(v0 + 2352);
        v260 = *(v0 + 2344);
        v261 = *(v0 + 1760);
        v262 = *(v0 + 1368);
        sub_1000D2A70(*(v0 + 2168), v262, &qword_1016B0478, &unk_1013CDC10);
        v263 = v260(v262, 1, v261);
        v264 = *(v0 + 1368);
        if (v263 == 1)
        {
          v265 = *(v0 + 2080);
          v266 = *(v0 + 2000);
          v267 = *(v0 + 1120);
          sub_10000B3A8(v264, &qword_1016B0478, &unk_1013CDC10);
          sub_100D11DC8(v267, v266, type metadata accessor for SharingCircleKeyManager.Instruction);
          v40 = Logger.logObject.getter();
          v238 = static os_log_type_t.error.getter();
          v268 = os_log_type_enabled(v40, v238);
          v240 = *(v0 + 2000);
          if (v268)
          {
            v273 = swift_slowAlloc();
            v449[0] = swift_slowAlloc();
            *v273 = 136446466;
            v279 = sub_100C71778();
            v281 = v280;
            sub_100018D00(v240, type metadata accessor for SharingCircleKeyManager.Instruction);
            v282 = sub_1000136BC(v279, v281, v449);

            *(v273 + 4) = v282;
            *(v273 + 12) = 2082;
            v278 = 5;
LABEL_64:
            v283 = sub_10125403C(v278);
            v285 = sub_1000136BC(v283, v284, v449);

            *(v273 + 14) = v285;
            _os_log_impl(&_mh_execute_header, v40, v238, "No key alignment available for %{public}s. No package created for %{public}s", v273, 0x16u);
            swift_arrayDestroy();

LABEL_4:

            continue;
          }

          goto LABEL_62;
        }

        sub_100D12974(v264, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v329 = swift_task_alloc();
        *(v0 + 2376) = v329;
        *v329 = v0;
        v329[1] = sub_100CCA6E8;
        v321 = *(v0 + 2152);
        v322 = *(v0 + 2144);
        v323 = *(v0 + 1896);
        v324 = *(v0 + 1792);
        v325 = *(v0 + 1400);
        v330 = *(v0 + 1128);
        v327 = *(v0 + 1120);
        v328 = 0;
LABEL_88:

        sub_100CF2904(v325, v327, v323, v324, v328, v322, v321);
        return;
      case 6:
        v241 = *(v0 + 1768);
        v242 = *(v0 + 1760);
        v243 = *(v0 + 1360);
        sub_1000D2A70(*(v0 + 2168), v243, &qword_1016B0478, &unk_1013CDC10);
        v244 = *(v241 + 48);
        *(v0 + 2392) = v244;
        *(v0 + 2400) = (v241 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v242) = v244(v243, 1, v242);
        sub_10000B3A8(v243, &qword_1016B0478, &unk_1013CDC10);
        if (v242 == 1)
        {
          v315 = swift_task_alloc();
          *(v0 + 2408) = v315;
          *v315 = v0;
          v316 = sub_100CCD5CC;
          goto LABEL_83;
        }

        v245 = *(v0 + 2400);
        v246 = *(v0 + 2392);
        v247 = *(v0 + 1760);
        v248 = *(v0 + 1352);
        sub_1000D2A70(*(v0 + 2168), v248, &qword_1016B0478, &unk_1013CDC10);
        v249 = v246(v248, 1, v247);
        v250 = *(v0 + 1352);
        if (v249 != 1)
        {
          sub_100D12974(v250, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
          v320 = swift_task_alloc();
          *(v0 + 2424) = v320;
          *v320 = v0;
          v320[1] = sub_100CD0008;
          v321 = *(v0 + 2152);
          v322 = *(v0 + 2144);
          v323 = *(v0 + 1896);
          v324 = *(v0 + 1784);
          v325 = *(v0 + 1392);
          v326 = *(v0 + 1128);
          v327 = *(v0 + 1120);
          v328 = 1;
          goto LABEL_88;
        }

        v251 = *(v0 + 2080);
        v252 = *(v0 + 1984);
        v253 = *(v0 + 1120);
        sub_10000B3A8(v250, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v253, v252, type metadata accessor for SharingCircleKeyManager.Instruction);
        v40 = Logger.logObject.getter();
        v238 = static os_log_type_t.error.getter();
        v254 = os_log_type_enabled(v40, v238);
        v240 = *(v0 + 1984);
        if (v254)
        {
          v273 = swift_slowAlloc();
          v449[0] = swift_slowAlloc();
          *v273 = 136446466;
          v269 = sub_100C71778();
          v271 = v270;
          sub_100018D00(v240, type metadata accessor for SharingCircleKeyManager.Instruction);
          v272 = sub_1000136BC(v269, v271, v449);

          *(v273 + 4) = v272;
          *(v273 + 12) = 2082;
          v278 = 6;
          goto LABEL_64;
        }

        goto LABEL_62;
      case 8:
      case 10:
        v63 = *(v0 + 936);
        if (*(v63 + 16))
        {
          v64 = sub_100771F0C(v50);
          if (v65)
          {
            v66 = *(v0 + 2152);
            v67 = *(v0 + 2144);
            v68 = *(v0 + 1680);
            v69 = (*(v63 + 56) + 16 * v64);
            v71 = *v69;
            v70 = v69[1];
            v72 = type metadata accessor for EncryptedData();
            (*(*(v72 - 8) + 56))(v68, 1, 1, v72);
            sub_100017D5C(v71, v70);
            sub_100017D5C(v71, v70);
            sub_10125A120(1, v71, v70, v68, v446);
            sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
            v73 = swift_allocObject();
            v74 = *(v0 + 264);
            v75 = *(v0 + 280);
            v76 = *v446;
            *(v73 + 48) = *(v0 + 248);
            *(v73 + 64) = v74;
            *(v73 + 80) = v75;
            *(v73 + 96) = *(v0 + 296);
            *(v73 + 16) = xmmword_101385D80;
            *(v73 + 32) = v76;
            sub_10002E98C(v67, v66);
            sub_1003914F8(v446, v0 + 736);
            v77 = sub_100D11764(v73, v67, v66);
            v439 = v71;
            v78 = *(v0 + 1808);
            v79 = *(v0 + 1520);
            v80 = *(v0 + 1512);
            v81 = *(v0 + 1416);
            sub_100006654(*(v0 + 2144), *(v0 + 2152));
            swift_setDeallocating();
            sub_100391554(v73 + 32);
            swift_deallocClassInstance();
            sub_100D11DC8(v78, &v79[*(v81 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
            *v79 = v50;
            *&v79[*(v81 + 24)] = v77;
            sub_100D11DC8(v79, v80, type metadata accessor for KeyDropInterface.KeyPackage);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_100A5BE40(0, v44[2] + 1, 1, v44);
            }

            v83 = v44[2];
            v82 = v44[3];
            if (v83 >= v82 >> 1)
            {
              v44 = sub_100A5BE40(v82 > 1, v83 + 1, 1, v44);
            }

            v84 = *(v0 + 2080);
            v85 = *(v0 + 1960);
            v86 = *(v0 + 1520);
            v87 = *(v0 + 1512);
            v88 = *(v0 + 1504);
            v89 = *(v0 + 1424);
            v90 = *(v0 + 1120);
            v44[2] = v83 + 1;
            sub_100D12974(v87, v44 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v83, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100D11DC8(v90, v85, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100D11DC8(v86, v88, type metadata accessor for KeyDropInterface.KeyPackage);
            v91 = Logger.logObject.getter();
            v92 = static os_log_type_t.default.getter();
            v93 = os_log_type_enabled(v91, v92);
            v94 = *(v0 + 1960);
            v95 = *(v0 + 1520);
            v96 = *(v0 + 1504);
            if (v93)
            {
              v97 = swift_slowAlloc();
              v449[0] = swift_slowAlloc();
              *v97 = 136446466;
              v432 = v70;
              v435 = v95;
              v98 = sub_100C71778();
              v100 = v99;
              sub_100018D00(v94, type metadata accessor for SharingCircleKeyManager.Instruction);
              v101 = sub_1000136BC(v98, v100, v449);

              *(v97 + 4) = v101;
              *(v97 + 12) = 2082;
              v102 = sub_101255410();
              v104 = v103;
              sub_100018D00(v96, type metadata accessor for KeyDropInterface.KeyPackage);
              v105 = sub_1000136BC(v102, v104, v449);

              *(v97 + 14) = v105;
              _os_log_impl(&_mh_execute_header, v91, v92, "Keys to upload: %{public}s,\nadded: %{public}s.", v97, 0x16u);
              swift_arrayDestroy();

              sub_100391554(v446);
              sub_100016590(v439, v432);
              sub_100018D00(v435, type metadata accessor for KeyDropInterface.KeyPackage);
            }

            else
            {

              sub_100391554(v446);
              sub_100016590(v439, v70);
              sub_100018D00(v96, type metadata accessor for KeyDropInterface.KeyPackage);
              sub_100018D00(v94, type metadata accessor for SharingCircleKeyManager.Instruction);
              sub_100018D00(v95, type metadata accessor for KeyDropInterface.KeyPackage);
            }
          }
        }

        goto LABEL_6;
      case 9:
        v225 = *(v0 + 1768);
        v226 = *(v0 + 1760);
        v227 = *(v0 + 1344);
        sub_1000D2A70(*(v0 + 2168), v227, &qword_1016B0478, &unk_1013CDC10);
        v228 = *(v225 + 48);
        *(v0 + 2440) = v228;
        *(v0 + 2448) = (v225 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v226) = v228(v227, 1, v226);
        sub_10000B3A8(v227, &qword_1016B0478, &unk_1013CDC10);
        if (v226 == 1)
        {
          v315 = swift_task_alloc();
          *(v0 + 2456) = v315;
          *v315 = v0;
          v316 = sub_100CD2EEC;
LABEL_83:
          v315[1] = v316;
          v317 = *(v0 + 2160);
          v318 = *(v0 + 1896);
          v319 = *(v0 + 1128);

          sub_100CF0FB4(v318, v317, v319);
          return;
        }

        v229 = *(v0 + 2448);
        v230 = *(v0 + 2440);
        v231 = *(v0 + 1760);
        v232 = *(v0 + 1336);
        sub_1000D2A70(*(v0 + 2168), v232, &qword_1016B0478, &unk_1013CDC10);
        v233 = v230(v232, 1, v231);
        v234 = *(v0 + 1336);
        if (v233 != 1)
        {
          sub_100D12974(v234, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
          v331 = swift_task_alloc();
          *(v0 + 2472) = v331;
          *v331 = v0;
          v331[1] = sub_100CD5928;
          v332 = *(v0 + 2152);
          v333 = *(v0 + 2144);
          v334 = *(v0 + 1896);
          v335 = *(v0 + 1776);
          v336 = *(v0 + 1384);
          v337 = *(v0 + 1128);
          v338 = *(v0 + 1120);

          sub_100CF3F94(v336, v338, v334, v335, v333, v332);
          return;
        }

        v235 = *(v0 + 2080);
        v236 = *(v0 + 1968);
        v237 = *(v0 + 1120);
        sub_10000B3A8(v234, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v237, v236, type metadata accessor for SharingCircleKeyManager.Instruction);
        v40 = Logger.logObject.getter();
        v238 = static os_log_type_t.error.getter();
        v239 = os_log_type_enabled(v40, v238);
        v240 = *(v0 + 1968);
        if (v239)
        {
          v273 = swift_slowAlloc();
          v449[0] = swift_slowAlloc();
          *v273 = 136446466;
          v274 = sub_100C71778();
          v276 = v275;
          sub_100018D00(v240, type metadata accessor for SharingCircleKeyManager.Instruction);
          v277 = sub_1000136BC(v274, v276, v449);

          *(v273 + 4) = v277;
          *(v273 + 12) = 2082;
          v278 = 9;
          goto LABEL_64;
        }

LABEL_62:

        sub_100018D00(v240, type metadata accessor for SharingCircleKeyManager.Instruction);
        break;
      case 12:
        v106 = *(v0 + 1824);
        v107 = *(v0 + 1816);
        v108 = *(v0 + 1168);
        sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v108, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v106 + 48))(v108, 1, v107) == 1)
        {
          v109 = *(v0 + 1192);
          v110 = *(v0 + 1184);
          v111 = *(v0 + 1176);
          sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
          (*(v109 + 56))(v111, 1, 1, v110);
          goto LABEL_32;
        }

        v112 = *(v0 + 2112);
        v113 = *(v0 + 1896);
        v114 = *(v0 + 1872);
        v115 = *(v0 + 1160);
        v116 = *(v0 + 1152);
        (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
        sub_100D11DC8(v113 + *(v114 + 24), v115, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_29:
            v141 = *(v0 + 1192);
            v142 = *(v0 + 1184);
            v143 = *(v0 + 1176);
            v144 = *(v0 + 1160);
            (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
            sub_100018D00(v144, type metadata accessor for StableIdentifier);
            (*(v141 + 56))(v143, 1, 1, v142);
            goto LABEL_32;
          }

          v134 = *(v0 + 1824);
          v135 = *(v0 + 1816);
          v136 = *(v0 + 1160);
          v137 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v138 = *(v136 + 8 + v137[12]);

          v139 = *(v136 + 8 + v137[16]);

          v140 = *(v136 + 8 + v137[20]);

          v126 = *(v136 + v137[24]);
          (*(v134 + 8))(v136, v135);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_29;
          }

          v118 = *(v0 + 1824);
          v119 = *(v0 + 1160);
          v120 = v119 + 8;
          v121 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v122 = *(v119 + 8 + v121[12]);

          v123 = *(v119 + 8 + v121[16]);

          v124 = *(v119 + 8 + v121[20]);

          v125 = (v119 + v121[24]);
          v126 = *v125;
          LOBYTE(v119) = v125[1];
          v127 = *(v120 + v121[28]);

          v128 = *(v118 + 8);
          if (v119)
          {
            v129 = *(v0 + 1816);
            v130 = *(v0 + 1192);
            v131 = *(v0 + 1184);
            v132 = *(v0 + 1176);
            v133 = *(v0 + 1160);
            v128(*(v0 + 1840), v129);
            (*(v130 + 56))(v132, 1, 1, v131);
            v128(v133, v129);
            goto LABEL_32;
          }

          v128(*(v0 + 1160), *(v0 + 1816));
        }

        v145 = *(v0 + 2112);
        v146 = *(v0 + 1192);
        v147 = *(v0 + 1184);
        v148 = *(v0 + 1176);
        (*(v0 + 2104))(v148, *(v0 + 1840), *(v0 + 1816));
        *(v148 + *(v147 + 20)) = v126;
        (*(v146 + 56))(v148, 0, 1, v147);
LABEL_32:
        v149 = *(v0 + 1176);
        if ((*(*(v0 + 1192) + 48))(v149, 1, *(v0 + 1184)) == 1)
        {
          sub_10000B3A8(v149, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_6;
        }

        v150 = *(v0 + 1904);
        v151 = *(v0 + 1120);
        sub_100D12974(v149, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
        v152 = *(v151 + *(v150 + 44));
        if (!*(v152 + 16))
        {
          goto LABEL_38;
        }

        v153 = sub_100771F0C(12);
        if ((v154 & 1) == 0)
        {
          goto LABEL_38;
        }

        v155 = *(v0 + 1768);
        v156 = *(v0 + 1760);
        v157 = *(v0 + 1736);
        v158 = *(v0 + 1712);
        v159 = *(v0 + 1320);
        sub_100D11DC8(*(v152 + 56) + *(*(v0 + 1720) + 72) * v153, v157, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v157 + *(v158 + 20), v159, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v157, type metadata accessor for BookmarkMetaData);
        if ((*(v155 + 48))(v159, 1, v156) == 1)
        {
          sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_38:
          v160 = *(v0 + 1280);
          v161 = *(v0 + 1248);
          v162 = *(v0 + 1240);
          v163 = *(v0 + 1216);
          (*(v161 + 56))(v163, 1, 1, v162);
          static Date.distantPast.getter();
          if ((*(v161 + 48))(v163, 1, v162) != 1)
          {
            sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v164 = *(v0 + 1320);
          v165 = *(v0 + 1280);
          v166 = *(v0 + 1248);
          v167 = *(v0 + 1240);
          v168 = *(v0 + 1216);
          (*(v166 + 16))(v168, v164 + *(*(v0 + 1760) + 24), v167);
          sub_100018D00(v164, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v166 + 56))(v168, 0, 1, v167);
          (*(v166 + 32))(v165, v168, v167);
        }

        v169 = *(v0 + 1896);
        v170 = *(v0 + 1272);
        v171 = objc_autoreleasePoolPush();
        sub_100D088CC(v169, v170);
        v172 = *(v0 + 1280);
        v173 = *(v0 + 1272);
        v174 = *(v0 + 1248);
        v175 = *(v0 + 1240);
        objc_autoreleasePoolPop(v171);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
        LOBYTE(v171) = dispatch thunk of static Comparable.< infix(_:_:)();
        v176 = *(v174 + 8);
        v176(v173, v175);
        if (v171)
        {
          v177 = *(v0 + 1200);
          v176(*(v0 + 1280), *(v0 + 1240));
          sub_100018D00(v177, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        else
        {
          v178 = *(v0 + 1200);
          v179 = *(v0 + 1184);
          v180 = type metadata accessor for PropertyListEncoder();
          v181 = *(v180 + 48);
          v182 = *(v180 + 52);
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
          v183 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v185 = v184;
          v440 = v176;
          v186 = *(v0 + 2152);
          v187 = *(v0 + 2144);
          v188 = *(v0 + 1680);
          v189 = v183;

          v190 = type metadata accessor for EncryptedData();
          (*(*(v190 - 8) + 56))(v188, 1, 1, v190);
          sub_100017D5C(v189, v185);
          v433 = v189;
          v436 = v185;
          sub_10125A120(1, v189, v185, v188, v443);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v191 = swift_allocObject();
          v192 = *(v0 + 840);
          v193 = *(v0 + 856);
          v194 = *v443;
          *(v191 + 48) = *(v0 + 824);
          *(v191 + 64) = v192;
          *(v191 + 80) = v193;
          *(v191 + 96) = *(v0 + 872);
          *(v191 + 16) = xmmword_101385D80;
          *(v191 + 32) = v194;
          sub_10002E98C(v187, v186);
          sub_1003914F8(v443, v0 + 448);
          v195 = sub_100D11764(v191, v187, v186);
          v196 = *(v0 + 1808);
          v197 = *(v0 + 1472);
          v198 = *(v0 + 1464);
          v199 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v191 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v196, &v197[*(v199 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v197 = 12;
          *&v197[*(v199 + 24)] = v195;
          sub_100D11DC8(v197, v198, type metadata accessor for KeyDropInterface.KeyPackage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_100A5BE40(0, v44[2] + 1, 1, v44);
          }

          v201 = v44[2];
          v200 = v44[3];
          if (v201 >= v200 >> 1)
          {
            v44 = sub_100A5BE40(v200 > 1, v201 + 1, 1, v44);
          }

          v202 = *(v0 + 2080);
          v203 = *(v0 + 1944);
          v204 = *(v0 + 1472);
          v205 = *(v0 + 1464);
          v206 = *(v0 + 1456);
          v207 = *(v0 + 1424);
          v208 = *(v0 + 1120);
          v44[2] = v201 + 1;
          sub_100D12974(v205, v44 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v201, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v208, v203, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v204, v206, type metadata accessor for KeyDropInterface.KeyPackage);
          v209 = Logger.logObject.getter();
          v210 = static os_log_type_t.default.getter();
          v211 = os_log_type_enabled(v209, v210);
          v212 = *(v0 + 1944);
          v213 = *(v0 + 1456);
          v214 = *(v0 + 1280);
          v426 = *(v0 + 1472);
          v429 = *(v0 + 1240);
          v215 = *(v0 + 1200);
          if (v211)
          {
            v216 = swift_slowAlloc();
            v449[0] = swift_slowAlloc();
            *v216 = 136446466;
            v421 = v214;
            v217 = sub_100C71778();
            v219 = v218;
            sub_100018D00(v212, type metadata accessor for SharingCircleKeyManager.Instruction);
            v220 = sub_1000136BC(v217, v219, v449);

            *(v216 + 4) = v220;
            *(v216 + 12) = 2082;
            v221 = sub_101255410();
            v223 = v222;
            sub_100018D00(v213, type metadata accessor for KeyDropInterface.KeyPackage);
            v224 = sub_1000136BC(v221, v223, v449);

            *(v216 + 14) = v224;
            _os_log_impl(&_mh_execute_header, v209, v210, "Keys to upload: %{public}s,\nadded: %{public}s.", v216, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v443);
            sub_100016590(v433, v436);
            sub_100018D00(v426, type metadata accessor for KeyDropInterface.KeyPackage);
            v440(v421, v429);
          }

          else
          {

            sub_100391554(v443);
            sub_100016590(v433, v436);
            sub_100018D00(v213, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v212, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v426, type metadata accessor for KeyDropInterface.KeyPackage);
            v440(v214, v429);
          }

          sub_100018D00(v215, type metadata accessor for KeyDropBeaconGroupAttributes);
        }

        goto LABEL_6;
      case 13:
        v311 = swift_task_alloc();
        *(v0 + 2488) = v311;
        *v311 = v0;
        v311[1] = sub_100CD880C;
        v312 = *(v0 + 1896);
        v313 = *(v0 + 1232);
        v314 = *(v0 + 1128);

        sub_100CF5FBC(v313, v312);
        return;
      case 16:
        v296 = swift_task_alloc();
        *(v0 + 2496) = v296;
        *v296 = v0;
        v296[1] = sub_100CDBC44;
        v297 = *(v0 + 1896);
        v298 = *(v0 + 1264);
        v299 = *(v0 + 1144);
        v300 = *(v0 + 1128);

        sub_100CF6C9C(v298, v299, v297);
        return;
      default:
        goto LABEL_6;
    }
  }
}

uint64_t sub_100CC1B30(double a1)
{
  v2 = *(*v1 + 2312);
  v3 = *(*v1 + 1128);
  v5 = *v1;
  *(*v1 + 2320) = a1;

  return _swift_task_switch(sub_100CC1C44, v3, 0);
}

void sub_100CC1C44()
{
  v529 = v0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2272);
  v2 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v524 = v1;
  v3 = sub_101073C10(*(v0 + 1096));

  if (v3 < 0)
  {
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v511 = v0 + 232;
  v505 = v0 + 808;
  v5 = *(v0 + 2304);
  v6 = *(v0 + 2216);
  if (!v6)
  {
    goto LABEL_12;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_137;
  }

  v7 = *(v0 + 2320);
  v8 = v3 * 60.0;
  v9 = v7 / v8;
  v10 = v5 >= v6;
  v11 = v5 - v6;
  if (v11 != 0 && v10)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v7 / v8)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v9 > -1.0)
      {
        if (v9 < 1.84467441e19)
        {
          if (v11 <= v9)
          {
            goto LABEL_87;
          }

LABEL_12:
          v501 = *(v0 + 2296);
          v503 = *(v0 + 2304);
          v507 = *(v0 + 2240);
          v12 = *(v0 + 2232);
          v513 = *(v0 + 2144);
          v519 = *(v0 + 2152);
          v13 = *(v0 + 1800);
          v14 = *(v0 + 1760);
          v15 = *(v0 + 1696);
          v16 = *(v0 + 1688);
          v17 = *(v0 + 1680);
          v18 = *(v0 + 1240);
          v19 = *(*(v0 + 1248) + 16);
          v19(v13, *(v0 + 1896) + *(*(v0 + 1872) + 32), v18);
          v19(v13 + *(v14 + 24), v15 + *(v16 + 36), v18);
          *(v13 + *(v14 + 20)) = v501;
          v20 = type metadata accessor for EncryptedData();
          (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
          sub_100017D5C(v12, v507);
          sub_10125A120(v503, v12, v507, v17, (v0 + 304));
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v21 = swift_allocObject();
          v22 = *(v0 + 336);
          v23 = *(v0 + 352);
          v24 = *(v0 + 304);
          *(v21 + 48) = *(v0 + 320);
          *(v21 + 64) = v22;
          *(v21 + 80) = v23;
          *(v21 + 96) = *(v0 + 368);
          *(v21 + 16) = xmmword_101385D80;
          *(v21 + 32) = v24;
          sub_10002E98C(v513, v519);
          sub_1003914F8(v0 + 304, v0 + 88);
          v25 = sub_100D11764(v21, v513, v519);
          v26 = *(v0 + 2152);
          v27 = *(v0 + 2144);
          v28 = *(v0 + 1800);
          if (v524)
          {
            v29 = *(v0 + 1696);
            sub_100016590(*(v0 + 2232), *(v0 + 2240));
            sub_100391554(v0 + 304);
            sub_100006654(v27, v26);
            swift_setDeallocating();
            sub_100391554(v21 + 32);
            swift_deallocClassInstance();
            sub_100018D00(v28, type metadata accessor for KeyDropInterface.KeyAlignment);
            sub_10000B3A8(v29, &unk_1016C8FC0, &unk_10139D7D0);
            goto LABEL_14;
          }

          v326 = v25;
          v327 = *(v0 + 2208);
          v328 = *(v0 + 1672);
          v329 = *(v0 + 1664);
          v330 = *(v0 + 1416);
          sub_100006654(*(v0 + 2144), *(v0 + 2152));
          swift_setDeallocating();
          sub_100391554(v21 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v28, &v328[*(v330 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v328 = 1;
          *&v328[*(v330 + 24)] = v326;
          sub_100D11DC8(v328, v329, type metadata accessor for KeyDropInterface.KeyPackage);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4 = *(v0 + 2208);
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_95;
          }

          goto LABEL_145;
        }

LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

LABEL_87:
  v309 = *(v0 + 2080);
  sub_100D11DC8(*(v0 + 1120), *(v0 + 2032), type metadata accessor for SharingCircleKeyManager.Instruction);
  v63 = Logger.logObject.getter();
  v310 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v63, v310))
  {
    v62 = *(v0 + 2240);
    v323 = *(v0 + 2232);
    v324 = *(v0 + 2032);
    v325 = *(v0 + 1696);

    sub_100016590(v323, v62);
    sub_100018D00(v324, type metadata accessor for SharingCircleKeyManager.Instruction);
    v64 = sub_10000B3A8(v325, &unk_1016C8FC0, &unk_10139D7D0);
    goto LABEL_18;
  }

  v311 = *(v0 + 2304);
  v312 = swift_slowAlloc();
  v313 = swift_slowAlloc();
  *(v0 + 1104) = v313;
  *v312 = 134218498;
  *(v312 + 4) = v311;
  *(v312 + 12) = 2048;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_141;
  }

  if (v9 <= -1.0)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v314 = *(v0 + 2304);
  v10 = __CFADD__(v9, v314);
  v315 = v9 + v314;
  if (v10)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    v4 = sub_100A5BE40(0, v4[2] + 1, 1, v4);
LABEL_95:
    v333 = v4[2];
    v332 = v4[3];
    if (v333 >= v332 >> 1)
    {
      v518 = sub_100A5BE40(v332 > 1, v333 + 1, 1, v4);
    }

    else
    {
      v518 = v4;
    }

    v334 = *(v0 + 2080);
    v335 = *(v0 + 2040);
    v336 = *(v0 + 1672);
    v337 = *(v0 + 1664);
    v338 = *(v0 + 1656);
    v339 = *(v0 + 1424);
    v340 = *(v0 + 1120);
    *(v518 + 16) = v333 + 1;
    sub_100D12974(v337, v518 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v333, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v340, v335, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v336, v338, type metadata accessor for KeyDropInterface.KeyPackage);
    v341 = Logger.logObject.getter();
    v342 = static os_log_type_t.default.getter();
    v343 = os_log_type_enabled(v341, v342);
    v344 = *(v0 + 2240);
    v345 = *(v0 + 2232);
    v62 = *(v0 + 2040);
    v346 = *(v0 + 1800);
    v347 = *(v0 + 1696);
    v348 = *(v0 + 1672);
    v349 = *(v0 + 1656);
    if (v343)
    {
      v523 = *(v0 + 2240);
      v63 = swift_slowAlloc();
      v528[0] = swift_slowAlloc();
      *v63 = 136446466;
      v510 = v346;
      v350 = sub_100C71778();
      v503 = v348;
      v352 = v351;
      sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
      v353 = sub_1000136BC(v350, v352, v528);

      *(v63 + 4) = v353;
      *(v63 + 12) = 2082;
      v354 = sub_101255410();
      v356 = v355;
      v62 = type metadata accessor for KeyDropInterface.KeyPackage;
      sub_100018D00(v349, type metadata accessor for KeyDropInterface.KeyPackage);
      v357 = sub_1000136BC(v354, v356, v528);

      *(v63 + 14) = v357;
      _os_log_impl(&_mh_execute_header, v341, v342, "Keys to upload: %{public}s,\nadded: %{public}s.", v63, 0x16u);
      swift_arrayDestroy();

      sub_100391554(v0 + 304);
      sub_100016590(v345, v523);
      sub_100018D00(v503, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v510, type metadata accessor for KeyDropInterface.KeyAlignment);
    }

    else
    {

      sub_100391554(v0 + 304);
      sub_100016590(v345, v344);
      v63 = type metadata accessor for KeyDropInterface.KeyPackage;
      sub_100018D00(v349, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v348, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v346, type metadata accessor for KeyDropInterface.KeyAlignment);
    }

    v64 = sub_10000B3A8(v347, &unk_1016C8FC0, &unk_10139D7D0);
    v524 = 0;
    v67 = v518;
    goto LABEL_19;
  }

  v316 = v313;
  v522 = *(v0 + 2240);
  v317 = *(v0 + 2232);
  v318 = *(v0 + 2032);
  v319 = *(v0 + 1696);
  *(v312 + 14) = v315;
  *(v312 + 22) = 2082;
  v320 = sub_100C71778();
  v322 = v321;
  sub_100018D00(v318, type metadata accessor for SharingCircleKeyManager.Instruction);
  v62 = sub_1000136BC(v320, v322, (v0 + 1104));

  *(v312 + 24) = v62;
  _os_log_impl(&_mh_execute_header, v63, v310, "Secondary key %llu is not beyond low water %llu for %{public}s.", v312, 0x20u);
  sub_100007BAC(v316);

  sub_100016590(v317, v522);
  v64 = sub_10000B3A8(v319, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_18:
  while (1)
  {
    v67 = *(v0 + 2208);
LABEL_19:
    v68 = *(v0 + 2200) + 1;
    if (v68 == *(v0 + 2184))
    {
LABEL_84:
      v298 = *(v0 + 2176);

      v299 = *(v0 + 2160);
      v300 = *(v0 + 2072);
      v301 = *(v0 + 2064);
      v302 = *(v0 + 2056);
      v303 = v67;
      v304 = *(v0 + 2048);
      v305 = *(v0 + 2040);
      v415 = *(v0 + 2032);
      v416 = *(v0 + 2024);
      v417 = *(v0 + 2016);
      v418 = *(v0 + 2008);
      v419 = *(v0 + 2000);
      v420 = *(v0 + 1992);
      v421 = *(v0 + 1984);
      v422 = *(v0 + 1976);
      v423 = *(v0 + 1968);
      v424 = *(v0 + 1960);
      v425 = *(v0 + 1952);
      v426 = *(v0 + 1944);
      v427 = *(v0 + 1936);
      v428 = *(v0 + 1928);
      v429 = *(v0 + 1920);
      v430 = *(v0 + 1912);
      v306 = *(v0 + 1896);
      v431 = *(v0 + 1888);
      v432 = *(v0 + 1864);
      v433 = *(v0 + 1848);
      v434 = *(v0 + 1840);
      v307 = *(v0 + 1808);
      v435 = *(v0 + 1800);
      v436 = *(v0 + 1792);
      v437 = *(v0 + 1784);
      v438 = *(v0 + 1776);
      v439 = *(v0 + 1752);
      v440 = *(v0 + 1744);
      v441 = *(v0 + 1736);
      v442 = *(v0 + 1728);
      v443 = *(v0 + 1704);
      v444 = *(v0 + 1696);
      v445 = *(v0 + 1680);
      v446 = *(v0 + 1672);
      v447 = *(v0 + 1664);
      v448 = *(v0 + 1656);
      v449 = *(v0 + 1648);
      v450 = *(v0 + 1640);
      v451 = *(v0 + 1632);
      v452 = *(v0 + 1624);
      v453 = *(v0 + 1616);
      v454 = *(v0 + 1608);
      v455 = *(v0 + 1600);
      v456 = *(v0 + 1592);
      v457 = *(v0 + 1584);
      v458 = *(v0 + 1576);
      v459 = *(v0 + 1568);
      v460 = *(v0 + 1560);
      v461 = *(v0 + 1552);
      v462 = *(v0 + 1544);
      v463 = *(v0 + 1536);
      v464 = *(v0 + 1528);
      v465 = *(v0 + 1520);
      v466 = *(v0 + 1512);
      v467 = *(v0 + 1504);
      v468 = *(v0 + 1496);
      v469 = *(v0 + 1488);
      v470 = *(v0 + 1480);
      v471 = *(v0 + 1472);
      v472 = *(v0 + 1464);
      v473 = *(v0 + 1456);
      v474 = *(v0 + 1448);
      v475 = *(v0 + 1440);
      v476 = *(v0 + 1432);
      v477 = *(v0 + 1408);
      v478 = *(v0 + 1400);
      v479 = *(v0 + 1392);
      v480 = *(v0 + 1384);
      v481 = *(v0 + 1376);
      v482 = *(v0 + 1368);
      v483 = *(v0 + 1360);
      v484 = *(v0 + 1352);
      v485 = *(v0 + 1344);
      v486 = *(v0 + 1336);
      v487 = *(v0 + 1328);
      v488 = *(v0 + 1320);
      v489 = *(v0 + 1312);
      v490 = *(v0 + 1296);
      v491 = *(v0 + 1288);
      v492 = *(v0 + 1280);
      v494 = *(v0 + 1272);
      v496 = *(v0 + 1264);
      v498 = *(v0 + 1256);
      v500 = *(v0 + 1232);
      v502 = *(v0 + 1224);
      v504 = *(v0 + 1216);
      v506 = *(v0 + 1208);
      v509 = *(v0 + 1200);
      v512 = *(v0 + 1176);
      v517 = *(v0 + 1168);
      v521 = *(v0 + 1160);
      v527 = *(v0 + 1144);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v307, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v306, type metadata accessor for OwnedBeaconRecord);

      v308 = *(v0 + 8);

      v308(v303);
      return;
    }

LABEL_24:
    *(v0 + 2208) = v67;
    *(v0 + 2200) = v68;
    *(v0 + 2192) = v524;
    v69 = *(v0 + 2176);
    if (v68 < *(v69 + 16))
    {
      break;
    }

    __break(1u);
    v409 = *(v0 + 1280);
    v410 = *(v0 + 1240);
    v411 = *(v0 + 1200);
    v412 = v64;
    v413 = v63;
    v414 = v65;
    sub_100016590(v413, v501);
    sub_100391554(v505);
    sub_100006654(v412, v414);
    swift_setDeallocating();
    sub_100391554(v62 + 32);
    swift_deallocClassInstance();
    v503(v409, v410);
    sub_100018D00(v411, type metadata accessor for KeyDropBeaconGroupAttributes);
LABEL_14:
    v30 = *(v0 + 2080);
    v31 = *(v0 + 1920);
    v32 = *(v0 + 1912);
    v33 = *(v0 + 1120);
    sub_100D11DC8(v33, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v33, v31, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v33, v32, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    LODWORD(v30) = static os_log_type_t.error.getter();

    LODWORD(v503) = v30;
    v501 = v34;
    if (os_log_type_enabled(v34, v30))
    {
      v35 = *(v0 + 1928);
      v36 = *(v0 + 1920);
      v508 = *(v0 + 1904);
      v514 = *(v0 + 1816);
      v520 = *(v0 + 1912);
      v37 = *(v0 + 2509);
      v38 = swift_slowAlloc();
      v525 = swift_slowAlloc();
      v528[0] = v525;
      *v38 = 136447747;
      v39 = sub_100C71778();
      v41 = v40;
      sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
      v42 = sub_1000136BC(v39, v41, v528);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      v43 = sub_10125403C(v37);
      v45 = sub_1000136BC(v43, v44, v528);

      *(v38 + 14) = v45;
      *(v38 + 22) = 2160;
      *(v38 + 24) = 1752392040;
      *(v38 + 32) = 2081;
      v46 = *(v508 + 20);
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_100018D00(v36, type metadata accessor for SharingCircleKeyManager.Instruction);
      v50 = sub_1000136BC(v47, v49, v528);

      *(v38 + 34) = v50;
      *(v38 + 42) = 2160;
      *(v38 + 44) = 1752392040;
      *(v38 + 52) = 2081;
      v51 = v520 + *(v508 + 24);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      sub_100018D00(v520, type metadata accessor for SharingCircleKeyManager.Instruction);
      v55 = sub_1000136BC(v52, v54, v528);

      *(v38 + 54) = v55;
      *(v38 + 62) = 2082;
      swift_getErrorValue();
      v56 = *(v0 + 968);
      v57 = *(v0 + 976);
      v58 = *(v0 + 984);
      v59 = Error.localizedDescription.getter();
      v61 = sub_1000136BC(v59, v60, v528);

      *(v38 + 64) = v61;
      v62 = v501;
      _os_log_impl(&_mh_execute_header, v501, v503, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v38, 0x48u);
      v63 = v525;
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1928);
      v63 = *(v0 + 1920);
      v66 = *(v0 + 1912);

      sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v63, type metadata accessor for SharingCircleKeyManager.Instruction);
      v64 = sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v524 = 0;
  }

  v70 = *(v0 + 2080);
  v71 = *(v0 + 2048);
  v72 = *(v0 + 1120);
  v73 = *(v69 + v68 + 32);
  *(v0 + 2509) = v73;
  sub_100D11DC8(v72, v71, type metadata accessor for SharingCircleKeyManager.Instruction);
  v63 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v75 = os_log_type_enabled(v63, v74);
  v62 = *(v0 + 2048);
  if (v75)
  {
    v76 = swift_slowAlloc();
    v528[0] = swift_slowAlloc();
    *v76 = 136446466;
    v77 = sub_100C71778();
    v79 = v78;
    sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
    v80 = sub_1000136BC(v77, v79, v528);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2082;
    v81 = sub_10125403C(v73);
    v62 = v82;
    v83 = sub_1000136BC(v81, v82, v528);

    *(v76 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v63, v74, "Keys to upload: %{public}s. Creating package for %{public}s", v76, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v64 = sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  switch(v73)
  {
    case 1:
      v362 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
      if (*(v362 + 16) && (v363 = sub_100771F0C(1), (v364 & 1) != 0))
      {
        v365 = *(v0 + 1752);
        sub_100D11DC8(*(v362 + 56) + *(*(v0 + 1720) + 72) * v363, v365, type metadata accessor for BookmarkMetaData);
        v366 = *(v365 + 8);
        sub_100018D00(v365, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v366 = 0;
      }

      *(v0 + 2216) = v366;
      v401 = *(v0 + 2504);
      v402 = *(v0 + 1120);
      v403 = swift_task_alloc();
      *(v0 + 2224) = v403;
      *v403 = v0;
      v403[1] = sub_100CBBD44;
      v404 = *(v0 + 1704);
      v405 = *(v0 + 1128);

      sub_100CFC71C(v404, v402 + v401);
      return;
    case 4:
      v372 = swift_task_alloc();
      *(v0 + 2328) = v372;
      *v372 = v0;
      v372[1] = sub_100CC4E24;
      v373 = *(v0 + 1896);
      v374 = *(v0 + 1408);
      v375 = *(v0 + 1128);
      v376 = *(v0 + 1120);

      sub_100CF172C(v374, v376, v373, v0 + 880);
      return;
    case 5:
      v131 = *(v0 + 1768);
      v132 = *(v0 + 1760);
      v133 = *(v0 + 1376);
      sub_1000D2A70(*(v0 + 2168), v133, &qword_1016B0478, &unk_1013CDC10);
      v134 = *(v131 + 48);
      *(v0 + 2344) = v134;
      *(v0 + 2352) = (v131 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v132) = v134(v133, 1, v132);
      sub_10000B3A8(v133, &qword_1016B0478, &unk_1013CDC10);
      if (v132 == 1)
      {
        v377 = swift_task_alloc();
        *(v0 + 2360) = v377;
        *v377 = v0;
        v378 = sub_100CC7CAC;
        goto LABEL_116;
      }

      v135 = *(v0 + 2352);
      v136 = *(v0 + 2344);
      v137 = *(v0 + 1760);
      v138 = *(v0 + 1368);
      sub_1000D2A70(*(v0 + 2168), v138, &qword_1016B0478, &unk_1013CDC10);
      v139 = v136(v138, 1, v137);
      v140 = *(v0 + 1368);
      if (v139 != 1)
      {
        sub_100D12974(v140, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v382 = swift_task_alloc();
        *(v0 + 2376) = v382;
        *v382 = v0;
        v382[1] = sub_100CCA6E8;
        v383 = *(v0 + 2152);
        v384 = *(v0 + 2144);
        v385 = *(v0 + 1896);
        v386 = *(v0 + 1792);
        v387 = *(v0 + 1400);
        v388 = *(v0 + 1128);
        v389 = *(v0 + 1120);
        v390 = 0;
        goto LABEL_124;
      }

      v141 = *(v0 + 2080);
      v142 = *(v0 + 2000);
      v143 = *(v0 + 1120);
      sub_10000B3A8(v140, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v143, v142, type metadata accessor for SharingCircleKeyManager.Instruction);
      v63 = Logger.logObject.getter();
      v144 = static os_log_type_t.error.getter();
      v145 = os_log_type_enabled(v63, v144);
      v62 = *(v0 + 2000);
      if (!v145)
      {
        goto LABEL_21;
      }

      v146 = swift_slowAlloc();
      v528[0] = swift_slowAlloc();
      *v146 = 136446466;
      v147 = sub_100C71778();
      v149 = v148;
      sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
      v150 = sub_1000136BC(v147, v149, v528);

      *(v146 + 4) = v150;
      *(v146 + 12) = 2082;
      v151 = 5;
      goto LABEL_52;
    case 6:
      v152 = *(v0 + 1768);
      v153 = *(v0 + 1760);
      v154 = *(v0 + 1360);
      sub_1000D2A70(*(v0 + 2168), v154, &qword_1016B0478, &unk_1013CDC10);
      v155 = *(v152 + 48);
      *(v0 + 2392) = v155;
      *(v0 + 2400) = (v152 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v153) = v155(v154, 1, v153);
      sub_10000B3A8(v154, &qword_1016B0478, &unk_1013CDC10);
      if (v153 == 1)
      {
        v377 = swift_task_alloc();
        *(v0 + 2408) = v377;
        *v377 = v0;
        v378 = sub_100CCD5CC;
LABEL_116:
        v377[1] = v378;
        v379 = *(v0 + 2160);
        v380 = *(v0 + 1896);
        v381 = *(v0 + 1128);

        sub_100CF0FB4(v380, v379, v381);
        return;
      }

      v156 = *(v0 + 2400);
      v157 = *(v0 + 2392);
      v158 = *(v0 + 1760);
      v159 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 2168), v159, &qword_1016B0478, &unk_1013CDC10);
      v160 = v157(v159, 1, v158);
      v161 = *(v0 + 1352);
      if (v160 == 1)
      {
        v162 = *(v0 + 2080);
        v163 = *(v0 + 1984);
        v164 = *(v0 + 1120);
        sub_10000B3A8(v161, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v164, v163, type metadata accessor for SharingCircleKeyManager.Instruction);
        v63 = Logger.logObject.getter();
        v144 = static os_log_type_t.error.getter();
        v165 = os_log_type_enabled(v63, v144);
        v62 = *(v0 + 1984);
        if (v165)
        {
          v146 = swift_slowAlloc();
          v528[0] = swift_slowAlloc();
          *v146 = 136446466;
          v166 = sub_100C71778();
          v168 = v167;
          sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
          v169 = sub_1000136BC(v166, v168, v528);

          *(v146 + 4) = v169;
          *(v146 + 12) = 2082;
          v151 = 6;
LABEL_52:
          v188 = sub_10125403C(v151);
          v62 = v189;
          v190 = sub_1000136BC(v188, v189, v528);

          *(v146 + 14) = v190;
          _os_log_impl(&_mh_execute_header, v63, v144, "No key alignment available for %{public}s. No package created for %{public}s", v146, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_21:

          v64 = sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v67 = *(v0 + 2208);
LABEL_23:
        v68 = *(v0 + 2200) + 1;
        if (v68 == *(v0 + 2184))
        {
          goto LABEL_84;
        }

        goto LABEL_24;
      }

      sub_100D12974(v161, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
      v399 = swift_task_alloc();
      *(v0 + 2424) = v399;
      *v399 = v0;
      v399[1] = sub_100CD0008;
      v383 = *(v0 + 2152);
      v384 = *(v0 + 2144);
      v385 = *(v0 + 1896);
      v386 = *(v0 + 1784);
      v387 = *(v0 + 1392);
      v400 = *(v0 + 1128);
      v389 = *(v0 + 1120);
      v390 = 1;
LABEL_124:

      sub_100CF2904(v387, v389, v385, v386, v390, v384, v383);
      return;
    case 8:
    case 10:
      v62 = *(v0 + 936);
      if (!*(v62 + 16))
      {
        goto LABEL_23;
      }

      v64 = sub_100771F0C(v73);
      if ((v65 & 1) == 0)
      {
        goto LABEL_23;
      }

      v84 = v67;
      v85 = *(v0 + 2152);
      v86 = *(v0 + 2144);
      v87 = *(v0 + 1680);
      v88 = (*(v62 + 56) + 16 * v64);
      v90 = *v88;
      v89 = v88[1];
      v91 = type metadata accessor for EncryptedData();
      (*(*(v91 - 8) + 56))(v87, 1, 1, v91);
      sub_100017D5C(v90, v89);
      sub_100017D5C(v90, v89);
      v503 = v89;
      sub_10125A120(1, v90, v89, v87, v511);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v92 = swift_allocObject();
      v93 = *(v511 + 32);
      v94 = *(v511 + 48);
      v95 = *v511;
      *(v92 + 48) = *(v511 + 16);
      *(v92 + 64) = v93;
      *(v92 + 80) = v94;
      *(v92 + 96) = *(v511 + 64);
      *(v92 + 16) = xmmword_101385D80;
      *(v92 + 32) = v95;
      sub_10002E98C(v86, v85);
      sub_1003914F8(v511, v0 + 736);
      v96 = sub_100D11764(v92, v86, v85);
      if (v524)
      {
        v406 = *(v0 + 2144);
        v407 = v90;
        v408 = *(v0 + 2152);
        sub_100016590(v407, v503);
        sub_100391554(v511);
        sub_100006654(v406, v408);
        swift_setDeallocating();
        sub_100391554(v92 + 32);
        swift_deallocClassInstance();
        goto LABEL_14;
      }

      v97 = *(v0 + 1808);
      v98 = *(v0 + 1520);
      v99 = *(v0 + 1512);
      v100 = *(v0 + 1416);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      swift_setDeallocating();
      sub_100391554(v92 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v97, &v98[*(v100 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v98 = v73;
      *&v98[*(v100 + 24)] = v96;
      sub_100D11DC8(v98, v99, type metadata accessor for KeyDropInterface.KeyPackage);
      v101 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_100A5BE40(0, v84[2] + 1, 1, v84);
      }

      v103 = v101[2];
      v102 = v101[3];
      v515 = v101;
      if (v103 >= v102 >> 1)
      {
        v515 = sub_100A5BE40(v102 > 1, v103 + 1, 1, v101);
      }

      v104 = *(v0 + 2080);
      v105 = *(v0 + 1960);
      v106 = *(v0 + 1520);
      v107 = *(v0 + 1512);
      v108 = *(v0 + 1504);
      v109 = *(v0 + 1424);
      v110 = *(v0 + 1120);
      *(v515 + 16) = v103 + 1;
      sub_100D12974(v107, v515 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v103, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v110, v105, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v106, v108, type metadata accessor for KeyDropInterface.KeyPackage);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();
      v113 = os_log_type_enabled(v111, v112);
      v62 = *(v0 + 1960);
      v114 = *(v0 + 1520);
      v115 = *(v0 + 1504);
      if (v113)
      {
        v116 = swift_slowAlloc();
        v528[0] = swift_slowAlloc();
        *v116 = 136446466;
        v526 = v114;
        v117 = sub_100C71778();
        v119 = v118;
        sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
        v120 = sub_1000136BC(v117, v119, v528);

        *(v116 + 4) = v120;
        *(v116 + 12) = 2082;
        v121 = sub_101255410();
        v123 = v122;
        v62 = type metadata accessor for KeyDropInterface.KeyPackage;
        sub_100018D00(v115, type metadata accessor for KeyDropInterface.KeyPackage);
        v63 = sub_1000136BC(v121, v123, v528);

        *(v116 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v111, v112, "Keys to upload: %{public}s,\nadded: %{public}s.", v116, 0x16u);
        swift_arrayDestroy();

        sub_100391554(v511);
        sub_100016590(v90, v503);
        v124 = v526;
      }

      else
      {

        sub_100391554(v511);
        sub_100016590(v90, v503);
        v63 = type metadata accessor for KeyDropInterface.KeyPackage;
        sub_100018D00(v115, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
        v124 = v114;
      }

      v64 = sub_100018D00(v124, type metadata accessor for KeyDropInterface.KeyPackage);
      v524 = 0;
      v67 = v515;
      goto LABEL_23;
    case 9:
      v170 = *(v0 + 1768);
      v171 = *(v0 + 1760);
      v172 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 2168), v172, &qword_1016B0478, &unk_1013CDC10);
      v173 = *(v170 + 48);
      *(v0 + 2440) = v173;
      *(v0 + 2448) = (v170 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v171) = v173(v172, 1, v171);
      sub_10000B3A8(v172, &qword_1016B0478, &unk_1013CDC10);
      if (v171 == 1)
      {
        v377 = swift_task_alloc();
        *(v0 + 2456) = v377;
        *v377 = v0;
        v378 = sub_100CD2EEC;
        goto LABEL_116;
      }

      v174 = *(v0 + 2448);
      v175 = *(v0 + 2440);
      v176 = *(v0 + 1760);
      v177 = *(v0 + 1336);
      sub_1000D2A70(*(v0 + 2168), v177, &qword_1016B0478, &unk_1013CDC10);
      v178 = v175(v177, 1, v176);
      v179 = *(v0 + 1336);
      if (v178 != 1)
      {
        sub_100D12974(v179, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
        v391 = swift_task_alloc();
        *(v0 + 2472) = v391;
        *v391 = v0;
        v391[1] = sub_100CD5928;
        v392 = *(v0 + 2152);
        v393 = *(v0 + 2144);
        v394 = *(v0 + 1896);
        v395 = *(v0 + 1776);
        v396 = *(v0 + 1384);
        v397 = *(v0 + 1128);
        v398 = *(v0 + 1120);

        sub_100CF3F94(v396, v398, v394, v395, v393, v392);
        return;
      }

      v180 = *(v0 + 2080);
      v181 = *(v0 + 1968);
      v182 = *(v0 + 1120);
      sub_10000B3A8(v179, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v182, v181, type metadata accessor for SharingCircleKeyManager.Instruction);
      v63 = Logger.logObject.getter();
      v144 = static os_log_type_t.error.getter();
      v183 = os_log_type_enabled(v63, v144);
      v62 = *(v0 + 1968);
      if (!v183)
      {
        goto LABEL_21;
      }

      v146 = swift_slowAlloc();
      v528[0] = swift_slowAlloc();
      *v146 = 136446466;
      v184 = sub_100C71778();
      v186 = v185;
      sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
      v187 = sub_1000136BC(v184, v186, v528);

      *(v146 + 4) = v187;
      *(v146 + 12) = 2082;
      v151 = 9;
      goto LABEL_52;
    case 12:
      v125 = v67;
      v126 = *(v0 + 1824);
      v127 = *(v0 + 1816);
      v128 = *(v0 + 1168);
      sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v128, &qword_1016980D0, &unk_10138F3B0);
      if ((*(v126 + 48))(v128, 1, v127) == 1)
      {
        v129 = *(v0 + 1192);
        v130 = *(v0 + 1184);
        v63 = *(v0 + 1176);
        sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
        (*(v129 + 56))(v63, 1, 1, v130);
        goto LABEL_64;
      }

      v191 = *(v0 + 2112);
      v192 = *(v0 + 1896);
      v193 = *(v0 + 1872);
      v194 = *(v0 + 1160);
      v195 = *(v0 + 1152);
      (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
      sub_100D11DC8(v192 + *(v193 + 24), v194, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_61:
          v219 = *(v0 + 1192);
          v220 = *(v0 + 1184);
          v63 = *(v0 + 1176);
          v221 = *(v0 + 1160);
          (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
          sub_100018D00(v221, type metadata accessor for StableIdentifier);
          (*(v219 + 56))(v63, 1, 1, v220);
          goto LABEL_64;
        }

        v212 = *(v0 + 1824);
        v213 = *(v0 + 1816);
        v214 = *(v0 + 1160);
        v215 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v216 = *(v214 + 8 + v215[12]);

        v217 = *(v214 + 8 + v215[16]);

        v218 = *(v214 + 8 + v215[20]);

        v205 = *(v214 + v215[24]);
        (*(v212 + 8))(v214, v213);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_61;
        }

        v197 = *(v0 + 1824);
        v198 = *(v0 + 1160);
        v199 = v198 + 8;
        v200 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v201 = *(v198 + 8 + v200[12]);

        v202 = *(v198 + 8 + v200[16]);

        v203 = *(v198 + 8 + v200[20]);

        v204 = (v198 + v200[24]);
        v205 = *v204;
        LOBYTE(v198) = v204[1];
        v206 = *(v199 + v200[28]);

        v207 = *(v197 + 8);
        if (v198)
        {
          v208 = *(v0 + 1816);
          v209 = *(v0 + 1192);
          v63 = *(v0 + 1184);
          v210 = *(v0 + 1176);
          v211 = *(v0 + 1160);
          v207(*(v0 + 1840), v208);
          (*(v209 + 56))(v210, 1, 1, v63);
          v207(v211, v208);
          goto LABEL_64;
        }

        v207(*(v0 + 1160), *(v0 + 1816));
      }

      v222 = *(v0 + 2112);
      v223 = *(v0 + 1192);
      v224 = *(v0 + 1184);
      v63 = *(v0 + 1176);
      (*(v0 + 2104))(v63, *(v0 + 1840), *(v0 + 1816));
      *(v63 + *(v224 + 20)) = v205;
      (*(v223 + 56))(v63, 0, 1, v224);
LABEL_64:
      v62 = *(v0 + 1176);
      if ((*(*(v0 + 1192) + 48))(v62, 1, *(v0 + 1184)) == 1)
      {
        v64 = sub_10000B3A8(v62, &qword_1016B9B20, &qword_1013E3680);
        v67 = v125;
        goto LABEL_23;
      }

      v225 = *(v0 + 1904);
      v226 = *(v0 + 1120);
      sub_100D12974(v62, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
      v227 = *(v226 + *(v225 + 44));
      if (!*(v227 + 16))
      {
        goto LABEL_70;
      }

      v228 = sub_100771F0C(12);
      if ((v229 & 1) == 0)
      {
        goto LABEL_70;
      }

      v230 = *(v0 + 1768);
      v231 = *(v0 + 1760);
      v232 = *(v0 + 1736);
      v233 = *(v0 + 1712);
      v234 = *(v0 + 1320);
      sub_100D11DC8(*(v227 + 56) + *(*(v0 + 1720) + 72) * v228, v232, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v232 + *(v233 + 20), v234, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v232, type metadata accessor for BookmarkMetaData);
      if ((*(v230 + 48))(v234, 1, v231) == 1)
      {
        sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
LABEL_70:
        v235 = *(v0 + 1280);
        v236 = *(v0 + 1248);
        v237 = *(v0 + 1240);
        v238 = *(v0 + 1216);
        (*(v236 + 56))(v238, 1, 1, v237);
        static Date.distantPast.getter();
        if ((*(v236 + 48))(v238, 1, v237) != 1)
        {
          sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v239 = *(v0 + 1320);
        v240 = *(v0 + 1280);
        v241 = *(v0 + 1248);
        v242 = *(v0 + 1240);
        v243 = *(v0 + 1216);
        (*(v241 + 16))(v243, v239 + *(*(v0 + 1760) + 24), v242);
        sub_100018D00(v239, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v241 + 56))(v243, 0, 1, v242);
        (*(v241 + 32))(v240, v243, v242);
      }

      v244 = *(v0 + 1896);
      v245 = *(v0 + 1272);
      v246 = objc_autoreleasePoolPush();
      sub_100D088CC(v244, v245);
      if (v524)
      {

        objc_autoreleasePoolPop(v246);
        return;
      }

      v63 = *(v0 + 1280);
      v247 = *(v0 + 1272);
      v248 = *(v0 + 1248);
      v249 = *(v0 + 1240);
      objc_autoreleasePoolPop(v246);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
      v250 = dispatch thunk of static Comparable.< infix(_:_:)();
      v251 = *(v248 + 8);
      v251(v247, v249);
      if (v250)
      {
        v62 = *(v0 + 1200);
        v251(*(v0 + 1280), *(v0 + 1240));
        v64 = sub_100018D00(v62, type metadata accessor for KeyDropBeaconGroupAttributes);
        v524 = 0;
        v67 = v125;
      }

      else
      {
        v252 = *(v0 + 1200);
        v253 = *(v0 + 1184);
        v254 = type metadata accessor for PropertyListEncoder();
        v255 = *(v254 + 48);
        v256 = *(v254 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
        v63 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v258 = v257;
        v503 = v251;
        v259 = *(v0 + 2152);
        v260 = *(v0 + 2144);
        v261 = *(v0 + 1680);

        v262 = type metadata accessor for EncryptedData();
        (*(*(v262 - 8) + 56))(v261, 1, 1, v262);
        sub_100017D5C(v63, v258);
        v501 = v258;
        sub_10125A120(1, v63, v258, v261, v505);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v263 = swift_allocObject();
        v264 = *(v505 + 32);
        v265 = *(v505 + 48);
        v266 = *v505;
        *(v263 + 48) = *(v505 + 16);
        *(v263 + 64) = v264;
        *(v263 + 80) = v265;
        *(v263 + 96) = *(v505 + 64);
        *(v263 + 16) = xmmword_101385D80;
        *(v263 + 32) = v266;
        sub_10002E98C(v260, v259);
        sub_1003914F8(v505, v0 + 448);
        v267 = sub_100D11764(v263, v260, v259);
        v268 = *(v0 + 1808);
        v269 = *(v0 + 1472);
        v270 = *(v0 + 1464);
        v271 = *(v0 + 1416);
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v263 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v268, &v269[*(v271 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v269 = 12;
        *&v269[*(v271 + 24)] = v267;
        sub_100D11DC8(v269, v270, type metadata accessor for KeyDropInterface.KeyPackage);
        v272 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v272 = sub_100A5BE40(0, v125[2] + 1, 1, v125);
        }

        v274 = v272[2];
        v273 = v272[3];
        v516 = v272;
        if (v274 >= v273 >> 1)
        {
          v516 = sub_100A5BE40(v273 > 1, v274 + 1, 1, v272);
        }

        v275 = *(v0 + 2080);
        v276 = *(v0 + 1944);
        v277 = *(v0 + 1472);
        v278 = *(v0 + 1464);
        v279 = *(v0 + 1456);
        v280 = *(v0 + 1424);
        v281 = *(v0 + 1120);
        *(v516 + 16) = v274 + 1;
        v67 = v516;
        sub_100D12974(v278, v516 + ((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v274, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v281, v276, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v277, v279, type metadata accessor for KeyDropInterface.KeyPackage);
        v282 = Logger.logObject.getter();
        v283 = static os_log_type_t.default.getter();
        v284 = os_log_type_enabled(v282, v283);
        v62 = *(v0 + 1944);
        v285 = *(v0 + 1456);
        v286 = *(v0 + 1280);
        v497 = *(v0 + 1472);
        v499 = *(v0 + 1240);
        v287 = *(v0 + 1200);
        if (v284)
        {
          v288 = swift_slowAlloc();
          v528[0] = swift_slowAlloc();
          *v288 = 136446466;
          v493 = v286;
          v495 = v287;
          v289 = sub_100C71778();
          v291 = v290;
          sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
          v292 = sub_1000136BC(v289, v291, v528);

          *(v288 + 4) = v292;
          *(v288 + 12) = 2082;
          v293 = sub_101255410();
          v295 = v294;
          v62 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v285, type metadata accessor for KeyDropInterface.KeyPackage);
          v296 = sub_1000136BC(v293, v295, v528);

          *(v288 + 14) = v296;
          _os_log_impl(&_mh_execute_header, v282, v283, "Keys to upload: %{public}s,\nadded: %{public}s.", v288, 0x16u);
          swift_arrayDestroy();

          v67 = v516;

          sub_100391554(v505);
          sub_100016590(v63, v501);
          sub_100018D00(v497, type metadata accessor for KeyDropInterface.KeyPackage);
          v503(v493, v499);
          v297 = v495;
        }

        else
        {

          sub_100391554(v505);
          sub_100016590(v63, v501);
          v63 = type metadata accessor for KeyDropInterface.KeyPackage;
          sub_100018D00(v285, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v62, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v497, type metadata accessor for KeyDropInterface.KeyPackage);
          v503(v286, v499);
          v297 = v287;
        }

        v64 = sub_100018D00(v297, type metadata accessor for KeyDropBeaconGroupAttributes);
        v524 = 0;
      }

      goto LABEL_23;
    case 13:
      v358 = swift_task_alloc();
      *(v0 + 2488) = v358;
      *v358 = v0;
      v358[1] = sub_100CD880C;
      v359 = *(v0 + 1896);
      v360 = *(v0 + 1232);
      v361 = *(v0 + 1128);

      sub_100CF5FBC(v360, v359);
      return;
    case 16:
      v367 = swift_task_alloc();
      *(v0 + 2496) = v367;
      *v367 = v0;
      v367[1] = sub_100CDBC44;
      v368 = *(v0 + 1896);
      v369 = *(v0 + 1264);
      v370 = *(v0 + 1144);
      v371 = *(v0 + 1128);

      sub_100CF6C9C(v369, v370, v368);
      return;
    default:
      goto LABEL_23;
  }
}

uint64_t sub_100CC4E24()
{
  v2 = *v1;
  v3 = *(*v1 + 2328);
  v4 = *v1;
  *(*v1 + 2336) = v0;

  v5 = *(v2 + 1128);
  if (v0)
  {
    v6 = sub_100CDF5F4;
  }

  else
  {
    v6 = sub_100CC4F50;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100CC4F50()
{
  v507 = v0;
  v1 = *(v0 + 1408);
  if ((*(*(v0 + 1424) + 48))(v1, 1, *(v0 + 1416)) != 1)
  {
    v2 = *(v0 + 2208);
    v3 = *(v0 + 1648);
    v4 = *(v0 + 1640);
    sub_100D12974(v1, v3, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v3, v4, type metadata accessor for KeyDropInterface.KeyPackage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v504 = *(v0 + 2208);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_125;
  }

  sub_10000B3A8(v1, &qword_1016B9B30, &unk_1013E3698);
  v504 = *(v0 + 2208);
  while (1)
  {
    v51 = *(v0 + 2200) + 1;
    if (v51 == *(v0 + 2184))
    {
LABEL_17:
      v52 = *(v0 + 2176);

      v53 = *(v0 + 2160);
      v54 = *(v0 + 2072);
      v55 = *(v0 + 2064);
      v56 = *(v0 + 2056);
      v57 = *(v0 + 2048);
      v58 = *(v0 + 2040);
      v59 = *(v0 + 2032);
      v398 = *(v0 + 2024);
      v399 = *(v0 + 2016);
      v400 = *(v0 + 2008);
      v401 = *(v0 + 2000);
      v402 = *(v0 + 1992);
      v403 = *(v0 + 1984);
      v404 = *(v0 + 1976);
      v405 = *(v0 + 1968);
      v406 = *(v0 + 1960);
      v407 = *(v0 + 1952);
      v408 = *(v0 + 1944);
      v409 = *(v0 + 1936);
      v410 = *(v0 + 1928);
      v411 = *(v0 + 1920);
      v60 = *(v0 + 1896);
      v412 = *(v0 + 1912);
      v413 = *(v0 + 1888);
      v414 = *(v0 + 1864);
      v415 = *(v0 + 1848);
      v61 = *(v0 + 1808);
      v416 = *(v0 + 1840);
      v417 = *(v0 + 1800);
      v418 = *(v0 + 1792);
      v419 = *(v0 + 1784);
      v420 = *(v0 + 1776);
      v421 = *(v0 + 1752);
      v422 = *(v0 + 1744);
      v423 = *(v0 + 1736);
      v424 = *(v0 + 1728);
      v425 = *(v0 + 1704);
      v426 = *(v0 + 1696);
      v427 = *(v0 + 1680);
      v428 = *(v0 + 1672);
      v429 = *(v0 + 1664);
      v430 = *(v0 + 1656);
      v431 = *(v0 + 1648);
      v432 = *(v0 + 1640);
      v433 = *(v0 + 1632);
      v434 = *(v0 + 1624);
      v435 = *(v0 + 1616);
      v436 = *(v0 + 1608);
      v437 = *(v0 + 1600);
      v438 = *(v0 + 1592);
      v439 = *(v0 + 1584);
      v440 = *(v0 + 1576);
      v441 = *(v0 + 1568);
      v442 = *(v0 + 1560);
      v443 = *(v0 + 1552);
      v444 = *(v0 + 1544);
      v445 = *(v0 + 1536);
      v446 = *(v0 + 1528);
      v447 = *(v0 + 1520);
      v448 = *(v0 + 1512);
      v449 = *(v0 + 1504);
      v450 = *(v0 + 1496);
      v451 = *(v0 + 1488);
      v452 = *(v0 + 1480);
      v453 = *(v0 + 1472);
      v454 = *(v0 + 1464);
      v455 = *(v0 + 1456);
      v456 = *(v0 + 1448);
      v457 = *(v0 + 1440);
      v458 = *(v0 + 1432);
      v459 = *(v0 + 1408);
      v460 = *(v0 + 1400);
      v461 = *(v0 + 1392);
      v462 = *(v0 + 1384);
      v463 = *(v0 + 1376);
      v464 = *(v0 + 1368);
      v465 = *(v0 + 1360);
      v466 = *(v0 + 1352);
      v467 = *(v0 + 1344);
      v468 = *(v0 + 1336);
      v469 = *(v0 + 1328);
      v470 = *(v0 + 1320);
      v471 = *(v0 + 1312);
      v472 = *(v0 + 1296);
      v473 = *(v0 + 1288);
      v474 = *(v0 + 1280);
      v475 = *(v0 + 1272);
      v477 = *(v0 + 1264);
      v478 = *(v0 + 1256);
      v481 = *(v0 + 1232);
      v484 = *(v0 + 1224);
      v487 = *(v0 + 1216);
      v492 = *(v0 + 1208);
      v496 = *(v0 + 1200);
      v497 = *(v0 + 1176);
      v498 = *(v0 + 1168);
      v500 = *(v0 + 1160);
      v502 = *(v0 + 1144);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v61, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v60, type metadata accessor for OwnedBeaconRecord);

      v62 = *(v0 + 8);

      v62(v504);
      return;
    }

    v63 = v0 + 232;
    v64 = v0 + 808;
    v65 = *(v0 + 2336);
    v499 = v0 + 232;
    v503 = v0 + 808;
LABEL_23:
    *(v0 + 2208) = v504;
    *(v0 + 2200) = v51;
    *(v0 + 2192) = v65;
    v66 = *(v0 + 2176);
    if (v51 < *(v66 + 16))
    {
      break;
    }

    __break(1u);
LABEL_125:
    v504 = sub_100A5BE40(0, v504[2] + 1, 1, v504);
LABEL_4:
    v7 = v504[2];
    v6 = v504[3];
    if (v7 >= v6 >> 1)
    {
      v504 = sub_100A5BE40(v6 > 1, v7 + 1, 1, v504);
    }

    v8 = *(v0 + 2080);
    v9 = *(v0 + 2016);
    v10 = *(v0 + 1648);
    v11 = *(v0 + 1640);
    v12 = *(v0 + 1632);
    v13 = *(v0 + 1624);
    v14 = *(v0 + 1424);
    v15 = *(v0 + 1120);
    v504[2] = v7 + 1;
    sub_100D12974(v11, v504 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v7, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v15, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v10, v12, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v10, v13, type metadata accessor for KeyDropInterface.KeyPackage);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 2016);
    if (v18)
    {
      v501 = v17;
      v20 = *(v0 + 1632);
      v21 = *(v0 + 1624);
      v22 = *(v0 + 1416);
      v23 = swift_slowAlloc();
      *(v0 + 1064) = swift_slowAlloc();
      *v23 = 136446722;
      v24 = sub_100C71778();
      v26 = v25;
      sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      v27 = sub_1000136BC(v24, v26, (v0 + 1064));

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v28 = sub_101255410();
      v30 = v29;
      sub_100018D00(v20, type metadata accessor for KeyDropInterface.KeyPackage);
      v31 = sub_1000136BC(v28, v30, (v0 + 1064));

      *(v23 + 14) = v31;
      *(v23 + 22) = 2082;
      v32 = *(v21 + *(v22 + 24));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (v0 + 1072);
        *(v0 + 1072) = _swiftEmptyArrayStorage;
        sub_101123BF8(0, v33, 0);
        v35 = *(v0 + 1072);
        v36 = (v32 + 32);
        v37 = *(v35 + 16);
        do
        {
          v39 = *v36;
          v36 += 9;
          v38 = v39;
          *v34 = v35;
          v40 = *(v35 + 24);
          if (v37 >= v40 >> 1)
          {
            sub_101123BF8((v40 > 1), v37 + 1, 1);
            v35 = *v34;
          }

          *(v35 + 16) = v37 + 1;
          *(v35 + 8 * v37++ + 32) = v38;
          --v33;
        }

        while (v33);
      }

      v45 = *(v0 + 1648);
      v46 = *(v0 + 1624);
      v47 = Array.description.getter();
      v49 = v48;

      sub_100018D00(v46, type metadata accessor for KeyDropInterface.KeyPackage);
      v50 = sub_1000136BC(v47, v49, (v0 + 1064));

      *(v23 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v16, v501, "Keys to upload: %{public}s,\nadded: %{public}s,\nkey indexes: %{public}s.", v23, 0x20u);
      swift_arrayDestroy();

      v44 = v45;
    }

    else
    {
      v41 = *(v0 + 1648);
      v42 = *(v0 + 1632);
      v43 = *(v0 + 1624);

      sub_100018D00(v42, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v41, type metadata accessor for KeyDropInterface.KeyPackage);
      v44 = v43;
    }

    sub_100018D00(v44, type metadata accessor for KeyDropInterface.KeyPackage);
  }

  v67 = *(v0 + 2080);
  v68 = *(v0 + 2048);
  v69 = *(v0 + 1120);
  v70 = *(v66 + v51 + 32);
  *(v0 + 2509) = v70;
  sub_100D11DC8(v69, v68, type metadata accessor for SharingCircleKeyManager.Instruction);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v73 = os_log_type_enabled(v71, v72);
  v74 = *(v0 + 2048);
  if (v73)
  {
    v75 = swift_slowAlloc();
    v506[0] = swift_slowAlloc();
    *v75 = 136446466;
    v76 = sub_100C71778();
    v78 = v77;
    sub_100018D00(v74, type metadata accessor for SharingCircleKeyManager.Instruction);
    v79 = sub_1000136BC(v76, v78, v506);
    v63 = v0 + 232;

    *(v75 + 4) = v79;
    *(v75 + 12) = 2082;
    v80 = sub_10125403C(v70);
    v82 = sub_1000136BC(v80, v81, v506);

    *(v75 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v71, v72, "Keys to upload: %{public}s. Creating package for %{public}s", v75, 0x16u);
    swift_arrayDestroy();
    v64 = v0 + 808;
  }

  else
  {

    sub_100018D00(v74, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  switch(v70)
  {
    case 1:
      v350 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
      if (*(v350 + 16) && (v351 = sub_100771F0C(1), (v352 & 1) != 0))
      {
        v353 = *(v0 + 1752);
        sub_100D11DC8(*(v350 + 56) + *(*(v0 + 1720) + 72) * v351, v353, type metadata accessor for BookmarkMetaData);
        v354 = *(v353 + 8);
        sub_100018D00(v353, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v354 = 0;
      }

      *(v0 + 2216) = v354;
      v393 = *(v0 + 2504);
      v394 = *(v0 + 1120);
      v395 = swift_task_alloc();
      *(v0 + 2224) = v395;
      *v395 = v0;
      v395[1] = sub_100CBBD44;
      v396 = *(v0 + 1704);
      v397 = *(v0 + 1128);

      sub_100CFC71C(v396, v394 + v393);
      return;
    case 4:
      v359 = swift_task_alloc();
      *(v0 + 2328) = v359;
      *v359 = v0;
      v359[1] = sub_100CC4E24;
      v360 = *(v0 + 1896);
      v361 = *(v0 + 1408);
      v362 = *(v0 + 1128);
      v363 = *(v0 + 1120);

      sub_100CF172C(v361, v363, v360, v0 + 880);
      return;
    case 5:
      v106 = *(v0 + 1768);
      v107 = *(v0 + 1760);
      v108 = *(v0 + 1376);
      sub_1000D2A70(*(v0 + 2168), v108, &qword_1016B0478, &unk_1013CDC10);
      v109 = *(v106 + 48);
      *(v0 + 2344) = v109;
      *(v0 + 2352) = (v106 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v107) = v109(v108, 1, v107);
      sub_10000B3A8(v108, &qword_1016B0478, &unk_1013CDC10);
      if (v107 == 1)
      {
        v369 = swift_task_alloc();
        *(v0 + 2360) = v369;
        *v369 = v0;
        v370 = sub_100CC7CAC;
        goto LABEL_106;
      }

      v110 = *(v0 + 2352);
      v111 = *(v0 + 2344);
      v112 = *(v0 + 1760);
      v113 = *(v0 + 1368);
      sub_1000D2A70(*(v0 + 2168), v113, &qword_1016B0478, &unk_1013CDC10);
      v114 = v111(v113, 1, v112);
      v115 = *(v0 + 1368);
      if (v114 != 1)
      {
        sub_100D12974(v115, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v374 = swift_task_alloc();
        *(v0 + 2376) = v374;
        *v374 = v0;
        v374[1] = sub_100CCA6E8;
        v375 = *(v0 + 2152);
        v376 = *(v0 + 2144);
        v377 = *(v0 + 1896);
        v378 = *(v0 + 1792);
        v379 = *(v0 + 1400);
        v380 = *(v0 + 1128);
        v381 = *(v0 + 1120);
        v382 = 0;
        goto LABEL_111;
      }

      v116 = *(v0 + 2080);
      v117 = *(v0 + 2000);
      v118 = *(v0 + 1120);
      sub_10000B3A8(v115, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v118, v117, type metadata accessor for SharingCircleKeyManager.Instruction);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      v121 = os_log_type_enabled(v119, v120);
      v122 = *(v0 + 2000);
      if (!v121)
      {
        goto LABEL_47;
      }

      v123 = swift_slowAlloc();
      v506[0] = swift_slowAlloc();
      *v123 = 136446466;
      v124 = sub_100C71778();
      v126 = v125;
      sub_100018D00(v122, type metadata accessor for SharingCircleKeyManager.Instruction);
      v127 = sub_1000136BC(v124, v126, v506);

      *(v123 + 4) = v127;
      *(v123 + 12) = 2082;
      v128 = 5;
      goto LABEL_46;
    case 6:
      v129 = *(v0 + 1768);
      v130 = *(v0 + 1760);
      v131 = *(v0 + 1360);
      sub_1000D2A70(*(v0 + 2168), v131, &qword_1016B0478, &unk_1013CDC10);
      v132 = *(v129 + 48);
      *(v0 + 2392) = v132;
      *(v0 + 2400) = (v129 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v130) = v132(v131, 1, v130);
      sub_10000B3A8(v131, &qword_1016B0478, &unk_1013CDC10);
      if (v130 == 1)
      {
        v369 = swift_task_alloc();
        *(v0 + 2408) = v369;
        *v369 = v0;
        v370 = sub_100CCD5CC;
LABEL_106:
        v369[1] = v370;
        v371 = *(v0 + 2160);
        v372 = *(v0 + 1896);
        v373 = *(v0 + 1128);

        sub_100CF0FB4(v372, v371, v373);
        return;
      }

      v133 = *(v0 + 2400);
      v134 = *(v0 + 2392);
      v135 = *(v0 + 1760);
      v136 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 2168), v136, &qword_1016B0478, &unk_1013CDC10);
      v137 = v134(v136, 1, v135);
      v138 = *(v0 + 1352);
      if (v137 == 1)
      {
        v139 = *(v0 + 2080);
        v140 = *(v0 + 1984);
        v141 = *(v0 + 1120);
        sub_10000B3A8(v138, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v141, v140, type metadata accessor for SharingCircleKeyManager.Instruction);
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.error.getter();
        v142 = os_log_type_enabled(v119, v120);
        v122 = *(v0 + 1984);
        if (v142)
        {
          v123 = swift_slowAlloc();
          v506[0] = swift_slowAlloc();
          *v123 = 136446466;
          v143 = sub_100C71778();
          v145 = v144;
          sub_100018D00(v122, type metadata accessor for SharingCircleKeyManager.Instruction);
          v146 = sub_1000136BC(v143, v145, v506);

          *(v123 + 4) = v146;
          *(v123 + 12) = 2082;
          v128 = 6;
LABEL_46:
          v165 = sub_10125403C(v128);
          v167 = sub_1000136BC(v165, v166, v506);

          *(v123 + 14) = v167;
          v64 = v0 + 808;
          _os_log_impl(&_mh_execute_header, v119, v120, "No key alignment available for %{public}s. No package created for %{public}s", v123, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_47:

          sub_100018D00(v122, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

LABEL_48:
        v504 = *(v0 + 2208);
LABEL_22:
        v51 = *(v0 + 2200) + 1;
        if (v51 == *(v0 + 2184))
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      sub_100D12974(v138, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
      v383 = swift_task_alloc();
      *(v0 + 2424) = v383;
      *v383 = v0;
      v383[1] = sub_100CD0008;
      v375 = *(v0 + 2152);
      v376 = *(v0 + 2144);
      v377 = *(v0 + 1896);
      v378 = *(v0 + 1784);
      v379 = *(v0 + 1392);
      v384 = *(v0 + 1128);
      v381 = *(v0 + 1120);
      v382 = 1;
LABEL_111:

      sub_100CF2904(v379, v381, v377, v378, v382, v376, v375);
      return;
    case 8:
    case 10:
      v83 = *(v0 + 936);
      if (!*(v83 + 16))
      {
        goto LABEL_22;
      }

      v84 = sub_100771F0C(v70);
      if ((v85 & 1) == 0)
      {
        goto LABEL_22;
      }

      v86 = *(v0 + 2152);
      v87 = *(v0 + 2144);
      v88 = *(v0 + 1680);
      v89 = (*(v83 + 56) + 16 * v84);
      v91 = *v89;
      v90 = v89[1];
      v92 = type metadata accessor for EncryptedData();
      (*(*(v92 - 8) + 56))(v88, 1, 1, v92);
      sub_100017D5C(v91, v90);
      sub_100017D5C(v91, v90);
      sub_10125A120(1, v91, v90, v88, v63);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v93 = swift_allocObject();
      v94 = *(v63 + 32);
      v95 = *(v63 + 48);
      v96 = *v63;
      *(v93 + 48) = *(v63 + 16);
      *(v93 + 64) = v94;
      *(v93 + 80) = v95;
      *(v93 + 96) = *(v63 + 64);
      *(v93 + 16) = xmmword_101385D80;
      *(v93 + 32) = v96;
      sub_10002E98C(v87, v86);
      sub_1003914F8(v63, v0 + 736);
      v97 = sub_100D11764(v93, v87, v86);
      v98 = *(v0 + 2152);
      v99 = *(v0 + 2144);
      if (v65)
      {
        sub_100016590(v91, v90);
        sub_100391554(v63);
        sub_100006654(v99, v98);
        swift_setDeallocating();
        sub_100391554(v93 + 32);
        swift_deallocClassInstance();
        v64 = v0 + 808;
        v283 = *(v0 + 2080);
        v284 = *(v0 + 1920);
        v285 = *(v0 + 1912);
        v286 = *(v0 + 1120);
        sub_100D11DC8(v286, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v286, v284, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v286, v285, type metadata accessor for SharingCircleKeyManager.Instruction);
        swift_errorRetain();
        v287 = Logger.logObject.getter();
        v288 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v287, v288))
        {
          v505 = v288;
          v289 = *(v0 + 1928);
          v290 = *(v0 + 1920);
          v490 = *(v0 + 1912);
          v479 = *(v0 + 1904);
          v482 = *(v0 + 1816);
          v291 = *(v0 + 2509);
          v292 = swift_slowAlloc();
          v506[0] = swift_slowAlloc();
          *v292 = 136447747;
          v293 = sub_100C71778();
          v295 = v294;
          sub_100018D00(v289, type metadata accessor for SharingCircleKeyManager.Instruction);
          v296 = sub_1000136BC(v293, v295, v506);

          *(v292 + 4) = v296;
          *(v292 + 12) = 2082;
          v297 = sub_10125403C(v291);
          v299 = sub_1000136BC(v297, v298, v506);

          *(v292 + 14) = v299;
          *(v292 + 22) = 2160;
          *(v292 + 24) = 1752392040;
          *(v292 + 32) = 2081;
          v300 = *(v479 + 20);
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
          v301 = dispatch thunk of CustomStringConvertible.description.getter();
          v303 = v302;
          v304 = v290;
          v63 = v0 + 232;
          sub_100018D00(v304, type metadata accessor for SharingCircleKeyManager.Instruction);
          v305 = sub_1000136BC(v301, v303, v506);

          *(v292 + 34) = v305;
          *(v292 + 42) = 2160;
          *(v292 + 44) = 1752392040;
          *(v292 + 52) = 2081;
          v306 = v490 + *(v479 + 24);
          v64 = v0 + 808;
          v307 = dispatch thunk of CustomStringConvertible.description.getter();
          v309 = v308;
          sub_100018D00(v490, type metadata accessor for SharingCircleKeyManager.Instruction);
          v310 = sub_1000136BC(v307, v309, v506);

          *(v292 + 54) = v310;
          *(v292 + 62) = 2082;
          swift_getErrorValue();
          v311 = *(v0 + 968);
          v312 = *(v0 + 976);
          v313 = *(v0 + 984);
          v314 = Error.localizedDescription.getter();
          v316 = sub_1000136BC(v314, v315, v506);

          *(v292 + 64) = v316;
          _os_log_impl(&_mh_execute_header, v287, v505, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v292, 0x48u);
          swift_arrayDestroy();
        }

        else
        {
          v317 = *(v0 + 1928);
          v318 = *(v0 + 1920);
          v319 = *(v0 + 1912);

          sub_100018D00(v319, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v318, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v317, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v65 = 0;
        goto LABEL_48;
      }

      v190 = v97;
      v191 = *(v0 + 1808);
      v192 = *(v0 + 1520);
      v488 = *(v0 + 1512);
      v493 = v90;
      v193 = *(v0 + 1416);
      sub_100006654(v99, v98);
      swift_setDeallocating();
      sub_100391554(v93 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v191, &v192[*(v193 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v192 = v70;
      *&v192[*(v193 + 24)] = v190;
      sub_100D11DC8(v192, v488, type metadata accessor for KeyDropInterface.KeyPackage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v504 = sub_100A5BE40(0, v504[2] + 1, 1, v504);
      }

      v195 = v504[2];
      v194 = v504[3];
      if (v195 >= v194 >> 1)
      {
        v504 = sub_100A5BE40(v194 > 1, v195 + 1, 1, v504);
      }

      v196 = *(v0 + 2080);
      v197 = *(v0 + 1960);
      v198 = *(v0 + 1520);
      v199 = *(v0 + 1512);
      v200 = *(v0 + 1504);
      v201 = *(v0 + 1424);
      v202 = *(v0 + 1120);
      v504[2] = v195 + 1;
      sub_100D12974(v199, v504 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v195, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v202, v197, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v198, v200, type metadata accessor for KeyDropInterface.KeyPackage);
      v203 = Logger.logObject.getter();
      v204 = static os_log_type_t.default.getter();
      v205 = os_log_type_enabled(v203, v204);
      v206 = *(v0 + 1960);
      v207 = *(v0 + 1520);
      v208 = *(v0 + 1504);
      if (v205)
      {
        v209 = swift_slowAlloc();
        v506[0] = swift_slowAlloc();
        *v209 = 136446466;
        v210 = sub_100C71778();
        v489 = v207;
        v212 = v211;
        sub_100018D00(v206, type metadata accessor for SharingCircleKeyManager.Instruction);
        v213 = sub_1000136BC(v210, v212, v506);

        *(v209 + 4) = v213;
        *(v209 + 12) = 2082;
        v214 = sub_101255410();
        v216 = v215;
        sub_100018D00(v208, type metadata accessor for KeyDropInterface.KeyPackage);
        v217 = sub_1000136BC(v214, v216, v506);

        *(v209 + 14) = v217;
        _os_log_impl(&_mh_execute_header, v203, v204, "Keys to upload: %{public}s,\nadded: %{public}s.", v209, 0x16u);
        swift_arrayDestroy();

        v63 = v0 + 232;
        sub_100391554(v499);
        sub_100016590(v91, v493);
        v218 = v489;
      }

      else
      {

        sub_100391554(v499);
        sub_100016590(v91, v493);
        v230 = v208;
        v63 = v0 + 232;
        sub_100018D00(v230, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v206, type metadata accessor for SharingCircleKeyManager.Instruction);
        v218 = v207;
      }

      sub_100018D00(v218, type metadata accessor for KeyDropInterface.KeyPackage);
      v65 = 0;
      v64 = v0 + 808;
      goto LABEL_22;
    case 9:
      v147 = *(v0 + 1768);
      v148 = *(v0 + 1760);
      v149 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 2168), v149, &qword_1016B0478, &unk_1013CDC10);
      v150 = *(v147 + 48);
      *(v0 + 2440) = v150;
      *(v0 + 2448) = (v147 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v148) = v150(v149, 1, v148);
      sub_10000B3A8(v149, &qword_1016B0478, &unk_1013CDC10);
      if (v148 == 1)
      {
        v369 = swift_task_alloc();
        *(v0 + 2456) = v369;
        *v369 = v0;
        v370 = sub_100CD2EEC;
        goto LABEL_106;
      }

      v151 = *(v0 + 2448);
      v152 = *(v0 + 2440);
      v153 = *(v0 + 1760);
      v154 = *(v0 + 1336);
      sub_1000D2A70(*(v0 + 2168), v154, &qword_1016B0478, &unk_1013CDC10);
      v155 = v152(v154, 1, v153);
      v156 = *(v0 + 1336);
      if (v155 != 1)
      {
        sub_100D12974(v156, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
        v385 = swift_task_alloc();
        *(v0 + 2472) = v385;
        *v385 = v0;
        v385[1] = sub_100CD5928;
        v386 = *(v0 + 2152);
        v387 = *(v0 + 2144);
        v388 = *(v0 + 1896);
        v389 = *(v0 + 1776);
        v390 = *(v0 + 1384);
        v391 = *(v0 + 1128);
        v392 = *(v0 + 1120);

        sub_100CF3F94(v390, v392, v388, v389, v387, v386);
        return;
      }

      v157 = *(v0 + 2080);
      v158 = *(v0 + 1968);
      v159 = *(v0 + 1120);
      sub_10000B3A8(v156, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v159, v158, type metadata accessor for SharingCircleKeyManager.Instruction);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      v160 = os_log_type_enabled(v119, v120);
      v122 = *(v0 + 1968);
      if (!v160)
      {
        goto LABEL_47;
      }

      v123 = swift_slowAlloc();
      v506[0] = swift_slowAlloc();
      *v123 = 136446466;
      v161 = sub_100C71778();
      v163 = v162;
      sub_100018D00(v122, type metadata accessor for SharingCircleKeyManager.Instruction);
      v164 = sub_1000136BC(v161, v163, v506);

      *(v123 + 4) = v164;
      *(v123 + 12) = 2082;
      v128 = 9;
      goto LABEL_46;
    case 12:
      v100 = *(v0 + 1824);
      v101 = *(v0 + 1816);
      v102 = *(v0 + 1168);
      sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v102, &qword_1016980D0, &unk_10138F3B0);
      if ((*(v100 + 48))(v102, 1, v101) == 1)
      {
        v103 = *(v0 + 1192);
        v104 = *(v0 + 1184);
        v105 = *(v0 + 1176);
        sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
        (*(v103 + 56))(v105, 1, 1, v104);
        goto LABEL_66;
      }

      v168 = *(v0 + 2112);
      v169 = *(v0 + 1896);
      v170 = *(v0 + 1872);
      v171 = *(v0 + 1160);
      v172 = *(v0 + 1152);
      (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
      sub_100D11DC8(v169 + *(v170 + 24), v171, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_61:
          v226 = *(v0 + 1192);
          v227 = *(v0 + 1184);
          v228 = *(v0 + 1176);
          v229 = *(v0 + 1160);
          (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
          sub_100018D00(v229, type metadata accessor for StableIdentifier);
          (*(v226 + 56))(v228, 1, 1, v227);
          goto LABEL_66;
        }

        v219 = *(v0 + 1824);
        v220 = *(v0 + 1816);
        v221 = *(v0 + 1160);
        v222 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v223 = *(v221 + 8 + v222[12]);

        v224 = *(v221 + 8 + v222[16]);

        v225 = *(v221 + 8 + v222[20]);

        v182 = *(v221 + v222[24]);
        (*(v219 + 8))(v221, v220);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_61;
        }

        v174 = *(v0 + 1824);
        v175 = *(v0 + 1160);
        v176 = v175 + 8;
        v177 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v178 = *(v175 + 8 + v177[12]);

        v179 = *(v175 + 8 + v177[16]);

        v180 = *(v175 + 8 + v177[20]);

        v181 = (v175 + v177[24]);
        v182 = *v181;
        LOBYTE(v175) = v181[1];
        v183 = *(v176 + v177[28]);

        v184 = *(v174 + 8);
        if (v175)
        {
          v185 = *(v0 + 1816);
          v186 = *(v0 + 1192);
          v187 = *(v0 + 1184);
          v188 = *(v0 + 1176);
          v189 = *(v0 + 1160);
          v184(*(v0 + 1840), v185);
          (*(v186 + 56))(v188, 1, 1, v187);
          v184(v189, v185);
          v64 = v0 + 808;
          goto LABEL_66;
        }

        v184(*(v0 + 1160), *(v0 + 1816));
        v64 = v0 + 808;
      }

      v231 = *(v0 + 2112);
      v232 = *(v0 + 1192);
      v233 = *(v0 + 1184);
      v234 = *(v0 + 1176);
      (*(v0 + 2104))(v234, *(v0 + 1840), *(v0 + 1816));
      *(v234 + *(v233 + 20)) = v182;
      (*(v232 + 56))(v234, 0, 1, v233);
LABEL_66:
      v235 = *(v0 + 1176);
      if ((*(*(v0 + 1192) + 48))(v235, 1, *(v0 + 1184)) == 1)
      {
        sub_10000B3A8(v235, &qword_1016B9B20, &qword_1013E3680);
        goto LABEL_22;
      }

      v236 = *(v0 + 1904);
      v237 = *(v0 + 1120);
      sub_100D12974(v235, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
      v238 = *(v237 + *(v236 + 44));
      if (!*(v238 + 16))
      {
        goto LABEL_71;
      }

      v239 = sub_100771F0C(12);
      if ((v240 & 1) == 0)
      {
        goto LABEL_71;
      }

      v241 = *(v0 + 1768);
      v242 = *(v0 + 1760);
      v243 = *(v0 + 1736);
      v244 = *(v0 + 1712);
      v245 = *(v0 + 1320);
      sub_100D11DC8(*(v238 + 56) + *(*(v0 + 1720) + 72) * v239, v243, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v243 + *(v244 + 20), v245, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v243, type metadata accessor for BookmarkMetaData);
      if ((*(v241 + 48))(v245, 1, v242) == 1)
      {
        sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
        v64 = v0 + 808;
LABEL_71:
        v246 = *(v0 + 1280);
        v247 = *(v0 + 1248);
        v248 = *(v0 + 1240);
        v249 = *(v0 + 1216);
        (*(v247 + 56))(v249, 1, 1, v248);
        static Date.distantPast.getter();
        if ((*(v247 + 48))(v249, 1, v248) != 1)
        {
          sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v250 = *(v0 + 1320);
        v251 = *(v0 + 1280);
        v252 = *(v0 + 1248);
        v253 = *(v0 + 1240);
        v254 = *(v0 + 1216);
        (*(v252 + 16))(v254, v250 + *(*(v0 + 1760) + 24), v253);
        sub_100018D00(v250, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v252 + 56))(v254, 0, 1, v253);
        (*(v252 + 32))(v251, v254, v253);
        v64 = v0 + 808;
      }

      v255 = *(v0 + 1896);
      v256 = *(v0 + 1272);
      v257 = objc_autoreleasePoolPush();
      sub_100D088CC(v255, v256);
      if (v65)
      {

        objc_autoreleasePoolPop(v257);
        return;
      }

      v258 = *(v0 + 1280);
      v259 = *(v0 + 1272);
      v260 = *(v0 + 1248);
      v261 = *(v0 + 1240);
      objc_autoreleasePoolPop(v257);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
      v262 = dispatch thunk of static Comparable.< infix(_:_:)();
      v263 = *(v260 + 8);
      v263(v259, v261);
      if (v262)
      {
        v264 = *(v0 + 1200);
        v263(*(v0 + 1280), *(v0 + 1240));
        v265 = v264;
      }

      else
      {
        v266 = *(v0 + 1200);
        v267 = *(v0 + 1184);
        v268 = type metadata accessor for PropertyListEncoder();
        v269 = *(v268 + 48);
        v270 = *(v268 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
        v271 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v273 = v272;
        v494 = *(v0 + 2152);
        v274 = *(v0 + 2144);
        v275 = *(v0 + 1680);
        v276 = v271;

        v277 = type metadata accessor for EncryptedData();
        (*(*(v277 - 8) + 56))(v275, 1, 1, v277);
        sub_100017D5C(v276, v273);
        sub_10125A120(1, v276, v273, v275, v64);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v278 = swift_allocObject();
        v279 = *(v64 + 32);
        v280 = *(v64 + 48);
        v281 = *v64;
        *(v278 + 48) = *(v64 + 16);
        *(v278 + 64) = v279;
        *(v278 + 80) = v280;
        *(v278 + 96) = *(v64 + 64);
        *(v278 + 16) = xmmword_101385D80;
        *(v278 + 32) = v281;
        sub_10002E98C(v274, v494);
        sub_1003914F8(v64, v0 + 448);
        v282 = sub_100D11764(v278, v274, v494);
        v491 = v276;
        v495 = v273;
        v320 = *(v0 + 1808);
        v321 = *(v0 + 1472);
        v485 = *(v0 + 1464);
        v322 = *(v0 + 1416);
        v323 = v282;
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v278 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v320, &v321[*(v322 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v321 = 12;
        *&v321[*(v322 + 24)] = v323;
        sub_100D11DC8(v321, v485, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v504 = sub_100A5BE40(0, v504[2] + 1, 1, v504);
        }

        v325 = v504[2];
        v324 = v504[3];
        if (v325 >= v324 >> 1)
        {
          v504 = sub_100A5BE40(v324 > 1, v325 + 1, 1, v504);
        }

        v326 = *(v0 + 2080);
        v327 = *(v0 + 1944);
        v328 = *(v0 + 1472);
        v329 = *(v0 + 1464);
        v330 = *(v0 + 1456);
        v331 = *(v0 + 1424);
        v332 = *(v0 + 1120);
        v504[2] = v325 + 1;
        sub_100D12974(v329, v504 + ((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v325, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v332, v327, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v328, v330, type metadata accessor for KeyDropInterface.KeyPackage);
        v333 = Logger.logObject.getter();
        v334 = static os_log_type_t.default.getter();
        v335 = os_log_type_enabled(v333, v334);
        v336 = *(v0 + 1944);
        v486 = *(v0 + 1472);
        v337 = *(v0 + 1456);
        v338 = *(v0 + 1280);
        v339 = *(v0 + 1240);
        v340 = *(v0 + 1200);
        if (v335)
        {
          v476 = v334;
          v341 = swift_slowAlloc();
          v506[0] = swift_slowAlloc();
          *v341 = 136446466;
          v480 = v338;
          v483 = v339;
          v342 = sub_100C71778();
          v344 = v343;
          sub_100018D00(v336, type metadata accessor for SharingCircleKeyManager.Instruction);
          v345 = sub_1000136BC(v342, v344, v506);

          *(v341 + 4) = v345;
          *(v341 + 12) = 2082;
          v346 = sub_101255410();
          v348 = v347;
          sub_100018D00(v337, type metadata accessor for KeyDropInterface.KeyPackage);
          v349 = sub_1000136BC(v346, v348, v506);

          *(v341 + 14) = v349;
          _os_log_impl(&_mh_execute_header, v333, v476, "Keys to upload: %{public}s,\nadded: %{public}s.", v341, 0x16u);
          swift_arrayDestroy();

          v64 = v0 + 808;
          sub_100391554(v503);
          sub_100016590(v491, v495);
          sub_100018D00(v486, type metadata accessor for KeyDropInterface.KeyPackage);
          v263(v480, v483);
        }

        else
        {

          v64 = v0 + 808;
          sub_100391554(v503);
          sub_100016590(v491, v495);
          sub_100018D00(v337, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v336, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v486, type metadata accessor for KeyDropInterface.KeyPackage);
          v263(v338, v339);
        }

        v265 = v340;
      }

      sub_100018D00(v265, type metadata accessor for KeyDropBeaconGroupAttributes);
      v65 = 0;
      v63 = v0 + 232;
      goto LABEL_22;
    case 13:
      v355 = swift_task_alloc();
      *(v0 + 2488) = v355;
      *v355 = v0;
      v355[1] = sub_100CD880C;
      v356 = *(v0 + 1896);
      v357 = *(v0 + 1232);
      v358 = *(v0 + 1128);

      sub_100CF5FBC(v357, v356);
      return;
    case 16:
      v364 = swift_task_alloc();
      *(v0 + 2496) = v364;
      *v364 = v0;
      v364[1] = sub_100CDBC44;
      v365 = *(v0 + 1896);
      v366 = *(v0 + 1264);
      v367 = *(v0 + 1144);
      v368 = *(v0 + 1128);

      sub_100CF6C9C(v366, v367, v365);
      return;
    default:
      goto LABEL_22;
  }
}

uint64_t sub_100CC7CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 2360);
  v4 = *v1;
  *(*v1 + 2368) = v0;

  v5 = *(v2 + 1128);
  if (v0)
  {
    v6 = sub_100CE1E28;
  }

  else
  {
    v6 = sub_100CC7DD8;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100CC7DD8()
{
  v467 = v0;
  v454 = (v0 + 29);
  v450 = (v0 + 101);
  v1 = v0[296];
LABEL_2:
  v2 = v0[294];
  v3 = v0[293];
  v4 = v0[220];
  v5 = v0[171];
  sub_1000D2A70(v0[271], v5, &qword_1016B0478, &unk_1013CDC10);
  v6 = v3(v5, 1, v4);
  v7 = v0[171];
  if (v6 != 1)
  {
    sub_100D12974(v7, v0[224], type metadata accessor for KeyDropInterface.KeyAlignment);
    v351 = swift_task_alloc();
    v0[297] = v351;
    *v351 = v0;
    v351[1] = sub_100CCA6E8;
    v343 = v0[269];
    v344 = v0[268];
    v345 = v0[237];
    v346 = v0[224];
    v347 = v0[175];
    v352 = v0[141];
    v349 = v0[140];
    v350 = 0;
    goto LABEL_95;
  }

  v8 = v0[260];
  v9 = v0[250];
  v10 = v0[140];
  sub_10000B3A8(v7, &qword_1016B0478, &unk_1013CDC10);
  sub_100D11DC8(v10, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[250];
  if (!v13)
  {
    goto LABEL_67;
  }

  v15 = swift_slowAlloc();
  v466[0] = swift_slowAlloc();
  *v15 = 136446466;
  v16 = sub_100C71778();
  v18 = v17;
  sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
  v19 = sub_1000136BC(v16, v18, v466);

  *(v15 + 4) = v19;
  *(v15 + 12) = 2082;
  v20 = 5;
LABEL_5:
  v21 = sub_10125403C(v20);
  v23 = sub_1000136BC(v21, v22, v466);

  *(v15 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v11, v12, "No key alignment available for %{public}s. No package created for %{public}s", v15, 0x16u);
  swift_arrayDestroy();
  v24 = v464;

  while (1)
  {
    v25 = v24[276];
LABEL_7:
    v26 = v24[275] + 1;
    if (v26 == v24[273])
    {
      break;
    }

    v24[276] = v25;
    v24[275] = v26;
    v24[274] = v1;
    v27 = v24[272];
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    v28 = v24[260];
    v29 = v24[256];
    v30 = v24[140];
    v31 = *(v27 + v26 + 32);
    *(v24 + 2509) = v31;
    sub_100D11DC8(v30, v29, type metadata accessor for SharingCircleKeyManager.Instruction);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v24[256];
    if (v34)
    {
      v36 = swift_slowAlloc();
      v466[0] = swift_slowAlloc();
      *v36 = 136446466;
      v37 = sub_100C71778();
      v38 = v25;
      v40 = v39;
      sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
      v41 = sub_1000136BC(v37, v40, v466);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2082;
      v42 = sub_10125403C(v31);
      v44 = sub_1000136BC(v42, v43, v466);

      *(v36 + 14) = v44;
      v25 = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Keys to upload: %{public}s. Creating package for %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      v24 = v464;
    }

    else
    {

      sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v31)
    {
      case 1:
        v317 = *(v24[140] + *(v24[238] + 44));
        if (*(v317 + 16) && (v318 = sub_100771F0C(1), (v319 & 1) != 0))
        {
          v320 = v24[219];
          sub_100D11DC8(*(v317 + 56) + *(v24[215] + 72) * v318, v320, type metadata accessor for BookmarkMetaData);
          v321 = *(v320 + 8);
          sub_100018D00(v320, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v321 = 0;
        }

        v24[277] = v321;
        v353 = *(v24 + 626);
        v354 = v24[140];
        v355 = swift_task_alloc();
        v24[278] = v355;
        *v355 = v24;
        v355[1] = sub_100CBBD44;
        v356 = v24[213];
        v357 = v24[141];

        sub_100CFC71C(v356, v354 + v353);
        return;
      case 4:
        v322 = swift_task_alloc();
        v24[291] = v322;
        *v322 = v24;
        v322[1] = sub_100CC4E24;
        v323 = v24[237];
        v324 = v24[176];
        v325 = v24[141];
        v326 = v24[140];

        sub_100CF172C(v324, v326, v323, (v24 + 110));
        return;
      case 5:
        v293 = v24[221];
        v294 = v24[220];
        v295 = v24[172];
        v0 = v24;
        sub_1000D2A70(v24[271], v295, &qword_1016B0478, &unk_1013CDC10);
        v296 = *(v293 + 48);
        v24[293] = v296;
        v24[294] = (v293 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v294) = v296(v295, 1, v294);
        sub_10000B3A8(v295, &qword_1016B0478, &unk_1013CDC10);
        if (v294 != 1)
        {
          goto LABEL_2;
        }

        v297 = swift_task_alloc();
        v24[295] = v297;
        *v297 = v24;
        v298 = sub_100CC7CAC;
        goto LABEL_87;
      case 6:
        v275 = v24[221];
        v276 = v24[220];
        v277 = v24[170];
        v0 = v24;
        sub_1000D2A70(v24[271], v277, &qword_1016B0478, &unk_1013CDC10);
        v278 = *(v275 + 48);
        v24[299] = v278;
        v24[300] = (v275 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v276) = v278(v277, 1, v276);
        sub_10000B3A8(v277, &qword_1016B0478, &unk_1013CDC10);
        if (v276 == 1)
        {
          v297 = swift_task_alloc();
          v24[301] = v297;
          *v297 = v24;
          v298 = sub_100CCD5CC;
LABEL_87:
          v297[1] = v298;
          v331 = v0[270];
          v332 = v0[141];
          v333 = v0[237];

          sub_100CF0FB4(v333, v331, v332);
          return;
        }

        v279 = v24[300];
        v280 = v24[299];
        v281 = v24[220];
        v282 = v24[169];
        sub_1000D2A70(v24[271], v282, &qword_1016B0478, &unk_1013CDC10);
        v283 = v280(v282, 1, v281);
        v284 = v24[169];
        if (v283 != 1)
        {
          sub_100D12974(v284, v24[223], type metadata accessor for KeyDropInterface.KeyAlignment);
          v342 = swift_task_alloc();
          v24[303] = v342;
          *v342 = v24;
          v342[1] = sub_100CD0008;
          v343 = v24[269];
          v344 = v24[268];
          v345 = v24[237];
          v346 = v24[223];
          v347 = v24[174];
          v348 = v24[141];
          v349 = v24[140];
          v350 = 1;
LABEL_95:

          sub_100CF2904(v347, v349, v345, v346, v350, v344, v343);
          return;
        }

        v285 = v24[260];
        v286 = v24[248];
        v287 = v24[140];
        sub_10000B3A8(v284, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v287, v286, type metadata accessor for SharingCircleKeyManager.Instruction);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();
        v288 = os_log_type_enabled(v11, v12);
        v14 = v24[248];
        if (v288)
        {
          v15 = swift_slowAlloc();
          v466[0] = swift_slowAlloc();
          *v15 = 136446466;
          v289 = sub_100C71778();
          v291 = v290;
          sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
          v292 = sub_1000136BC(v289, v291, v466);

          *(v15 + 4) = v292;
          *(v15 + 12) = 2082;
          v20 = 6;
          goto LABEL_5;
        }

        break;
      case 8:
      case 10:
        v45 = v24[117];
        if (!*(v45 + 16))
        {
          goto LABEL_7;
        }

        v46 = sub_100771F0C(v31);
        if ((v47 & 1) == 0)
        {
          goto LABEL_7;
        }

        v456 = v25;
        v48 = v24[269];
        v49 = v24[268];
        v50 = *(v464 + 1680);
        v51 = (*(v45 + 56) + 16 * v46);
        v53 = *v51;
        v52 = v51[1];
        v54 = type metadata accessor for EncryptedData();
        (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
        sub_100017D5C(v53, v52);
        sub_100017D5C(v53, v52);
        v55 = v50;
        v24 = v464;
        sub_10125A120(1, v53, v52, v55, v454);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v56 = swift_allocObject();
        v57 = *(v454 + 32);
        v58 = *(v454 + 48);
        v59 = *v454;
        *(v56 + 48) = *(v454 + 16);
        *(v56 + 64) = v57;
        *(v56 + 80) = v58;
        *(v56 + 96) = *(v454 + 64);
        *(v56 + 16) = xmmword_101385D80;
        *(v56 + 32) = v59;
        sub_10002E98C(v49, v48);
        sub_1003914F8(v454, v464 + 736);
        v60 = sub_100D11764(v56, v49, v48);
        v61 = *(v464 + 2152);
        v62 = *(v464 + 2144);
        if (v1)
        {
          sub_100016590(v53, v52);
          sub_100391554(v454);
          sub_100006654(v62, v61);
          swift_setDeallocating();
          sub_100391554(v56 + 32);
          swift_deallocClassInstance();
          v220 = *(v464 + 2080);
          v221 = *(v464 + 1920);
          v222 = *(v464 + 1912);
          v223 = *(v464 + 1120);
          sub_100D11DC8(v223, *(v464 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v223, v221, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v223, v222, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v224 = Logger.logObject.getter();
          v225 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v224, v225))
          {
            v444 = v225;
            v226 = *(v464 + 1928);
            v440 = *(v464 + 1920);
            v448 = *(v464 + 1912);
            v227 = *(v464 + 1904);
            v228 = *(v464 + 1816);
            v229 = *(v464 + 2509);
            v230 = swift_slowAlloc();
            v466[0] = swift_slowAlloc();
            *v230 = 136447747;
            v231 = sub_100C71778();
            v233 = v232;
            sub_100018D00(v226, type metadata accessor for SharingCircleKeyManager.Instruction);
            v234 = sub_1000136BC(v231, v233, v466);

            *(v230 + 4) = v234;
            *(v230 + 12) = 2082;
            v235 = sub_10125403C(v229);
            v237 = sub_1000136BC(v235, v236, v466);

            *(v230 + 14) = v237;
            *(v230 + 22) = 2160;
            *(v230 + 24) = 1752392040;
            *(v230 + 32) = 2081;
            v238 = *(v227 + 20);
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
            v239 = dispatch thunk of CustomStringConvertible.description.getter();
            v241 = v240;
            sub_100018D00(v440, type metadata accessor for SharingCircleKeyManager.Instruction);
            v242 = sub_1000136BC(v239, v241, v466);

            *(v230 + 34) = v242;
            *(v230 + 42) = 2160;
            *(v230 + 44) = 1752392040;
            *(v230 + 52) = 2081;
            v243 = v448 + *(v227 + 24);
            v24 = v464;
            v244 = dispatch thunk of CustomStringConvertible.description.getter();
            v246 = v245;
            sub_100018D00(v448, type metadata accessor for SharingCircleKeyManager.Instruction);
            v247 = sub_1000136BC(v244, v246, v466);

            *(v230 + 54) = v247;
            *(v230 + 62) = 2082;
            swift_getErrorValue();
            v248 = *(v464 + 968);
            v249 = *(v464 + 976);
            v250 = *(v464 + 984);
            v251 = Error.localizedDescription.getter();
            v253 = sub_1000136BC(v251, v252, v466);

            *(v230 + 64) = v253;
            _os_log_impl(&_mh_execute_header, v224, v444, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v230, 0x48u);
            swift_arrayDestroy();
          }

          else
          {
            v254 = *(v464 + 1928);
            v255 = *(v464 + 1920);
            v256 = *(v464 + 1912);

            sub_100018D00(v256, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v255, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v254, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          v1 = 0;
          continue;
        }

        v442 = v53;
        v63 = *(v464 + 1808);
        v64 = *(v464 + 1520);
        v65 = *(v464 + 1512);
        v66 = *(v464 + 1416);
        v67 = v60;
        sub_100006654(v62, v61);
        swift_setDeallocating();
        sub_100391554(v56 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v63, &v64[*(v66 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v64 = v31;
        *&v64[*(v66 + 24)] = v67;
        sub_100D11DC8(v64, v65, type metadata accessor for KeyDropInterface.KeyPackage);
        v68 = v456;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_100A5BE40(0, v456[2] + 1, 1, v456);
        }

        v70 = v68[2];
        v69 = v68[3];
        v457 = v68;
        v446 = v52;
        if (v70 >= v69 >> 1)
        {
          v457 = sub_100A5BE40(v69 > 1, v70 + 1, 1, v68);
        }

        v71 = *(v464 + 2080);
        v72 = *(v464 + 1960);
        v73 = *(v464 + 1520);
        v74 = *(v464 + 1512);
        v75 = *(v464 + 1504);
        v76 = *(v464 + 1424);
        v77 = *(v464 + 1120);
        *(v457 + 16) = v70 + 1;
        sub_100D12974(v74, v457 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v70, type metadata accessor for KeyDropInterface.KeyPackage);
        v78 = v77;
        v24 = v464;
        sub_100D11DC8(v78, v72, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v73, v75, type metadata accessor for KeyDropInterface.KeyPackage);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        v81 = os_log_type_enabled(v79, v80);
        v82 = *(v464 + 1960);
        v83 = *(v464 + 1520);
        v84 = *(v464 + 1504);
        if (v81)
        {
          v85 = swift_slowAlloc();
          v466[0] = swift_slowAlloc();
          *v85 = 136446466;
          v86 = sub_100C71778();
          v88 = v87;
          sub_100018D00(v82, type metadata accessor for SharingCircleKeyManager.Instruction);
          v89 = sub_1000136BC(v86, v88, v466);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2082;
          v90 = sub_101255410();
          v92 = v91;
          sub_100018D00(v84, type metadata accessor for KeyDropInterface.KeyPackage);
          v93 = v90;
          v24 = v464;
          v94 = sub_1000136BC(v93, v92, v466);

          *(v85 + 14) = v94;
          _os_log_impl(&_mh_execute_header, v79, v80, "Keys to upload: %{public}s,\nadded: %{public}s.", v85, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v454);
          sub_100016590(v442, v446);
        }

        else
        {

          sub_100391554(v454);
          sub_100016590(v442, v446);
          sub_100018D00(v84, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v82, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        sub_100018D00(v83, type metadata accessor for KeyDropInterface.KeyPackage);
        v1 = 0;
        v25 = v457;
        goto LABEL_7;
      case 9:
        v257 = v24[221];
        v258 = v24[220];
        v259 = v24[168];
        v0 = v24;
        sub_1000D2A70(v24[271], v259, &qword_1016B0478, &unk_1013CDC10);
        v260 = *(v257 + 48);
        v24[305] = v260;
        v24[306] = (v257 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v258) = v260(v259, 1, v258);
        sub_10000B3A8(v259, &qword_1016B0478, &unk_1013CDC10);
        if (v258 == 1)
        {
          v297 = swift_task_alloc();
          v24[307] = v297;
          *v297 = v24;
          v298 = sub_100CD2EEC;
          goto LABEL_87;
        }

        v261 = v24[306];
        v262 = v24[305];
        v263 = v24[220];
        v264 = v24[167];
        sub_1000D2A70(v24[271], v264, &qword_1016B0478, &unk_1013CDC10);
        v265 = v262(v264, 1, v263);
        v266 = v24[167];
        if (v265 != 1)
        {
          sub_100D12974(v266, v24[222], type metadata accessor for KeyDropInterface.KeyAlignment);
          v334 = swift_task_alloc();
          v24[309] = v334;
          *v334 = v24;
          v334[1] = sub_100CD5928;
          v335 = v24[269];
          v336 = v24[268];
          v337 = v24[237];
          v338 = v24[222];
          v339 = v24[173];
          v340 = v24[141];
          v341 = v24[140];

          sub_100CF3F94(v339, v341, v337, v338, v336, v335);
          return;
        }

        v267 = v24[260];
        v268 = v24[246];
        v269 = v24[140];
        sub_10000B3A8(v266, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v269, v268, type metadata accessor for SharingCircleKeyManager.Instruction);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();
        v270 = os_log_type_enabled(v11, v12);
        v14 = v24[246];
        if (v270)
        {
          v15 = swift_slowAlloc();
          v466[0] = swift_slowAlloc();
          *v15 = 136446466;
          v271 = sub_100C71778();
          v273 = v272;
          sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
          v274 = sub_1000136BC(v271, v273, v466);

          *(v15 + 4) = v274;
          *(v15 + 12) = 2082;
          v20 = 9;
          goto LABEL_5;
        }

        break;
      case 12:
        v95 = v24[228];
        v96 = v24[227];
        v97 = v24[146];
        sub_1000D2A70(v24[237] + *(v24[234] + 28), v97, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v95 + 48))(v97, 1, v96) == 1)
        {
          v98 = v24[149];
          v99 = v24[148];
          v100 = v24[147];
          sub_10000B3A8(v24[146], &qword_1016980D0, &unk_10138F3B0);
          (*(v98 + 56))(v100, 1, 1, v99);
          goto LABEL_35;
        }

        v101 = v24[264];
        v102 = v24[237];
        v103 = v24[234];
        v104 = v24[145];
        v105 = v24[144];
        (v24[263])(v24[230], v24[146], v24[227]);
        sub_100D11DC8(v102 + *(v103 + 24), v104, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_30:
            v130 = v24[149];
            v131 = v24[148];
            v132 = v24[147];
            v133 = v24[145];
            (*(v24[228] + 8))(v24[230], v24[227]);
            sub_100018D00(v133, type metadata accessor for StableIdentifier);
            (*(v130 + 56))(v132, 1, 1, v131);
            goto LABEL_35;
          }

          v123 = v24[228];
          v124 = v24[227];
          v125 = v24[145];
          v126 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v127 = *(v125 + 8 + v126[12]);

          v128 = *(v125 + 8 + v126[16]);

          v129 = *(v125 + 8 + v126[20]);

          v115 = *(v125 + v126[24]);
          (*(v123 + 8))(v125, v124);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_30;
          }

          v107 = v24[228];
          v108 = v24[145];
          v109 = v108 + 8;
          v110 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v111 = *(v108 + 8 + v110[12]);

          v112 = *(v108 + 8 + v110[16]);

          v113 = *(v108 + 8 + v110[20]);

          v114 = (v108 + v110[24]);
          v115 = *v114;
          LOBYTE(v108) = v114[1];
          v116 = *(v109 + v110[28]);

          v117 = *(v107 + 8);
          if (v108)
          {
            v118 = v24[227];
            v458 = v25;
            v119 = v24[149];
            v120 = v24[148];
            v121 = v24[147];
            v122 = v24[145];
            v117(v24[230], v118);
            (*(v119 + 56))(v121, 1, 1, v120);
            v25 = v458;
            v117(v122, v118);
            goto LABEL_35;
          }

          v117(v24[145], v24[227]);
        }

        v134 = v24[264];
        v135 = v24[149];
        v136 = v24[148];
        v137 = v24[147];
        (v24[263])(v137, v24[230], v24[227]);
        *(v137 + *(v136 + 20)) = v115;
        (*(v135 + 56))(v137, 0, 1, v136);
LABEL_35:
        v138 = v24[147];
        if ((*(v24[149] + 48))(v138, 1, v24[148]) == 1)
        {
          sub_10000B3A8(v138, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_7;
        }

        v139 = v24[238];
        v140 = v24[140];
        sub_100D12974(v138, v24[150], type metadata accessor for KeyDropBeaconGroupAttributes);
        v141 = *(v140 + *(v139 + 44));
        if (!*(v141 + 16))
        {
          goto LABEL_41;
        }

        v142 = sub_100771F0C(12);
        if ((v143 & 1) == 0)
        {
          goto LABEL_41;
        }

        v144 = v24;
        v145 = v24[221];
        v146 = v144[220];
        v147 = v144[217];
        v148 = v144[214];
        v149 = v144[165];
        sub_100D11DC8(*(v141 + 56) + *(v144[215] + 72) * v142, v147, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v147 + *(v148 + 20), v149, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v147, type metadata accessor for BookmarkMetaData);
        if ((*(v145 + 48))(v149, 1, v146) == 1)
        {
          sub_10000B3A8(v144[165], &qword_1016B0478, &unk_1013CDC10);
          v24 = v144;
LABEL_41:
          v150 = v24[160];
          v151 = v24[156];
          v152 = v24[155];
          v153 = v24[152];
          (*(v151 + 56))(v153, 1, 1, v152);
          static Date.distantPast.getter();
          if ((*(v151 + 48))(v153, 1, v152) != 1)
          {
            sub_10000B3A8(v24[152], &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v154 = v144[165];
          v155 = v144[160];
          v156 = v144[156];
          v157 = v144[155];
          v158 = v144[152];
          (*(v156 + 16))(v158, v154 + *(v144[220] + 24), v157);
          sub_100018D00(v154, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v156 + 56))(v158, 0, 1, v157);
          (*(v156 + 32))(v155, v158, v157);
          v24 = v144;
        }

        v159 = v24[237];
        v160 = v24[159];
        v161 = objc_autoreleasePoolPush();
        sub_100D088CC(v159, v160);
        if (v1)
        {

          objc_autoreleasePoolPop(v161);
          return;
        }

        v162 = v24[160];
        v163 = v24[159];
        v164 = v24[156];
        v165 = v24[155];
        objc_autoreleasePoolPop(v161);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
        v166 = dispatch thunk of static Comparable.< infix(_:_:)();
        v167 = *(v164 + 8);
        v167(v163, v165);
        if (v166)
        {
          v168 = v24[150];
          v167(v24[160], v24[155]);
          sub_100018D00(v168, type metadata accessor for KeyDropBeaconGroupAttributes);
          v1 = 0;
        }

        else
        {
          v169 = v24[150];
          v170 = v24[148];
          v171 = type metadata accessor for PropertyListEncoder();
          v172 = *(v171 + 48);
          v173 = *(v171 + 52);
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
          v174 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v176 = v175;
          v447 = v167;
          v459 = v25;
          v177 = v24[269];
          v178 = v24[268];
          v179 = v24[210];
          v180 = v174;

          v181 = type metadata accessor for EncryptedData();
          (*(*(v181 - 8) + 56))(v179, 1, 1, v181);
          sub_100017D5C(v180, v176);
          sub_10125A120(1, v180, v176, v179, v450);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v182 = swift_allocObject();
          v183 = *(v450 + 32);
          v184 = *(v450 + 48);
          v185 = *v450;
          *(v182 + 48) = *(v450 + 16);
          *(v182 + 64) = v183;
          *(v182 + 80) = v184;
          *(v182 + 96) = *(v450 + 64);
          *(v182 + 16) = xmmword_101385D80;
          *(v182 + 32) = v185;
          sub_10002E98C(v178, v177);
          sub_1003914F8(v450, (v24 + 56));
          v186 = sub_100D11764(v182, v178, v177);
          v439 = v180;
          v443 = v176;
          v187 = v24[226];
          v188 = v24[184];
          v189 = v24[183];
          v190 = v24[177];
          v191 = v186;
          sub_100006654(v24[268], v24[269]);
          swift_setDeallocating();
          sub_100391554(v182 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v187, &v188[*(v190 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v188 = 12;
          *&v188[*(v190 + 24)] = v191;
          sub_100D11DC8(v188, v189, type metadata accessor for KeyDropInterface.KeyPackage);
          v192 = v459;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_100A5BE40(0, v459[2] + 1, 1, v459);
          }

          v194 = v192[2];
          v193 = v192[3];
          v460 = v192;
          if (v194 >= v193 >> 1)
          {
            v460 = sub_100A5BE40(v193 > 1, v194 + 1, 1, v192);
          }

          v195 = *(v464 + 2080);
          v196 = *(v464 + 1944);
          v197 = *(v464 + 1472);
          v198 = *(v464 + 1464);
          v199 = *(v464 + 1456);
          v200 = *(v464 + 1424);
          v201 = *(v464 + 1120);
          *(v460 + 16) = v194 + 1;
          sub_100D12974(v198, v460 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v194, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v201, v196, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v197, v199, type metadata accessor for KeyDropInterface.KeyPackage);
          v202 = Logger.logObject.getter();
          v203 = static os_log_type_t.default.getter();
          v204 = os_log_type_enabled(v202, v203);
          v205 = *(v464 + 1944);
          v206 = *(v464 + 1472);
          v207 = *(v464 + 1456);
          v208 = *(v464 + 1280);
          v209 = *(v464 + 1240);
          v210 = *(v464 + 1200);
          if (v204)
          {
            v211 = swift_slowAlloc();
            v466[0] = swift_slowAlloc();
            *v211 = 136446466;
            v435 = v206;
            v437 = v209;
            v212 = sub_100C71778();
            v214 = v213;
            sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
            v215 = sub_1000136BC(v212, v214, v466);

            *(v211 + 4) = v215;
            *(v211 + 12) = 2082;
            v216 = sub_101255410();
            v218 = v217;
            sub_100018D00(v207, type metadata accessor for KeyDropInterface.KeyPackage);
            v219 = sub_1000136BC(v216, v218, v466);

            *(v211 + 14) = v219;
            _os_log_impl(&_mh_execute_header, v202, v203, "Keys to upload: %{public}s,\nadded: %{public}s.", v211, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v450);
            sub_100016590(v439, v443);
            sub_100018D00(v435, type metadata accessor for KeyDropInterface.KeyPackage);
            v447(v208, v437);
          }

          else
          {

            sub_100391554(v450);
            sub_100016590(v439, v443);
            sub_100018D00(v207, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v206, type metadata accessor for KeyDropInterface.KeyPackage);
            v447(v208, v209);
          }

          sub_100018D00(v210, type metadata accessor for KeyDropBeaconGroupAttributes);
          v1 = 0;
          v25 = v460;
          v24 = v464;
        }

        goto LABEL_7;
      case 13:
        v327 = swift_task_alloc();
        v24[311] = v327;
        *v327 = v24;
        v327[1] = sub_100CD880C;
        v328 = v24[237];
        v329 = v24[154];
        v330 = v24[141];

        sub_100CF5FBC(v329, v328);
        return;
      case 16:
        v312 = swift_task_alloc();
        v24[312] = v312;
        *v312 = v24;
        v312[1] = sub_100CDBC44;
        v313 = v24[237];
        v314 = v24[158];
        v315 = v24[143];
        v316 = v24[141];

        sub_100CF6C9C(v314, v315, v313);
        return;
      default:
        goto LABEL_7;
    }

LABEL_67:
    v24 = v0;

    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v299 = v24[272];

  v300 = v24[270];
  v301 = v24[269];
  v302 = v24[268];
  v303 = v24[259];
  v304 = v24;
  v305 = v24[258];
  v306 = v304[257];
  v307 = v304[256];
  v308 = v304[255];
  v358 = v304[254];
  v359 = v304[253];
  v360 = v304[252];
  v361 = v304[251];
  v362 = v304[250];
  v363 = v304[249];
  v364 = v304[248];
  v365 = v304[247];
  v366 = v304[246];
  v367 = v304[245];
  v368 = v304[244];
  v369 = v304[243];
  v370 = v304[242];
  v371 = v304[241];
  v372 = v304[240];
  v373 = v304[239];
  v309 = v304[237];
  v374 = v304[236];
  v375 = v304[233];
  v376 = v304[231];
  v377 = v304[230];
  v310 = v304[226];
  v378 = v304[225];
  v379 = v304[224];
  v380 = v304[223];
  v381 = v304[222];
  v382 = v304[219];
  v383 = v304[218];
  v384 = v304[217];
  v385 = v304[216];
  v386 = v304[213];
  v387 = v304[212];
  v388 = v304[210];
  v389 = v304[209];
  v390 = v304[208];
  v391 = v304[207];
  v392 = v304[206];
  v393 = v304[205];
  v394 = v304[204];
  v395 = v304[203];
  v396 = v304[202];
  v397 = v304[201];
  v398 = v304[200];
  v399 = v304[199];
  v400 = v304[198];
  v401 = v304[197];
  v402 = v304[196];
  v403 = v304[195];
  v404 = v304[194];
  v405 = v304[193];
  v406 = v304[192];
  v407 = v304[191];
  v408 = v304[190];
  v409 = v304[189];
  v410 = v304[188];
  v411 = v304[187];
  v412 = v304[186];
  v413 = v304[185];
  v414 = v304[184];
  v415 = v304[183];
  v416 = v304[182];
  v417 = v304[181];
  v418 = v304[180];
  v419 = v304[179];
  v420 = v304[176];
  v421 = v304[175];
  v422 = v304[174];
  v423 = v304[173];
  v424 = v304[172];
  v425 = v304[171];
  v426 = v304[170];
  v427 = v304[169];
  v428 = v304[168];
  v429 = v304[167];
  v430 = v304[166];
  v431 = v304[165];
  v432 = v304[164];
  v433 = v304[162];
  v434 = v304[161];
  v436 = v304[160];
  v438 = v304[159];
  v441 = v304[158];
  v445 = v304[157];
  v449 = v304[154];
  v451 = v304[153];
  v452 = v304[152];
  v453 = v304[151];
  v455 = v304[150];
  v461 = v304[147];
  v462 = v304[146];
  v463 = v304[145];
  v465 = v304[143];
  sub_100006654(v302, v301);
  sub_1001BAF34((v304 + 110));
  sub_100018D00(v310, type metadata accessor for KeyDropInterface.KeyAlignment);
  sub_100018D00(v309, type metadata accessor for OwnedBeaconRecord);

  v311 = v304[1];

  v311(v25);
}

uint64_t sub_100CCA6E8()
{
  v2 = *v1;
  v3 = *(*v1 + 2376);
  v4 = *v1;
  *(*v1 + 2384) = v0;

  v5 = *(v2 + 1128);
  if (v0)
  {
    v6 = sub_100CE465C;
  }

  else
  {
    v6 = sub_100CCA814;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100CCA814()
{
  v510 = v0;
  v1 = *(v0 + 1400);
  if ((*(*(v0 + 1424) + 48))(v1, 1, *(v0 + 1416)) != 1)
  {
    v2 = *(v0 + 2208);
    v3 = *(v0 + 1616);
    v4 = *(v0 + 1608);
    sub_100D12974(v1, v3, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v3, v4, type metadata accessor for KeyDropInterface.KeyPackage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v507 = *(v0 + 2208);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_125;
  }

  sub_100018D00(*(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
  sub_10000B3A8(v1, &qword_1016B9B30, &unk_1013E3698);
  v507 = *(v0 + 2208);
  while (1)
  {
    v54 = *(v0 + 2200) + 1;
    if (v54 == *(v0 + 2184))
    {
LABEL_17:
      v55 = *(v0 + 2176);

      v56 = *(v0 + 2160);
      v57 = *(v0 + 2072);
      v58 = *(v0 + 2064);
      v59 = *(v0 + 2056);
      v60 = *(v0 + 2048);
      v61 = *(v0 + 2040);
      v62 = *(v0 + 2032);
      v401 = *(v0 + 2024);
      v402 = *(v0 + 2016);
      v403 = *(v0 + 2008);
      v404 = *(v0 + 2000);
      v405 = *(v0 + 1992);
      v406 = *(v0 + 1984);
      v407 = *(v0 + 1976);
      v408 = *(v0 + 1968);
      v409 = *(v0 + 1960);
      v410 = *(v0 + 1952);
      v411 = *(v0 + 1944);
      v412 = *(v0 + 1936);
      v413 = *(v0 + 1928);
      v414 = *(v0 + 1920);
      v63 = *(v0 + 1896);
      v415 = *(v0 + 1912);
      v416 = *(v0 + 1888);
      v417 = *(v0 + 1864);
      v418 = *(v0 + 1848);
      v64 = *(v0 + 1808);
      v419 = *(v0 + 1840);
      v420 = *(v0 + 1800);
      v421 = *(v0 + 1792);
      v422 = *(v0 + 1784);
      v423 = *(v0 + 1776);
      v424 = *(v0 + 1752);
      v425 = *(v0 + 1744);
      v426 = *(v0 + 1736);
      v427 = *(v0 + 1728);
      v428 = *(v0 + 1704);
      v429 = *(v0 + 1696);
      v430 = *(v0 + 1680);
      v431 = *(v0 + 1672);
      v432 = *(v0 + 1664);
      v433 = *(v0 + 1656);
      v434 = *(v0 + 1648);
      v435 = *(v0 + 1640);
      v436 = *(v0 + 1632);
      v437 = *(v0 + 1624);
      v438 = *(v0 + 1616);
      v439 = *(v0 + 1608);
      v440 = *(v0 + 1600);
      v441 = *(v0 + 1592);
      v442 = *(v0 + 1584);
      v443 = *(v0 + 1576);
      v444 = *(v0 + 1568);
      v445 = *(v0 + 1560);
      v446 = *(v0 + 1552);
      v447 = *(v0 + 1544);
      v448 = *(v0 + 1536);
      v449 = *(v0 + 1528);
      v450 = *(v0 + 1520);
      v451 = *(v0 + 1512);
      v452 = *(v0 + 1504);
      v453 = *(v0 + 1496);
      v454 = *(v0 + 1488);
      v455 = *(v0 + 1480);
      v456 = *(v0 + 1472);
      v457 = *(v0 + 1464);
      v458 = *(v0 + 1456);
      v459 = *(v0 + 1448);
      v460 = *(v0 + 1440);
      v461 = *(v0 + 1432);
      v462 = *(v0 + 1408);
      v463 = *(v0 + 1400);
      v464 = *(v0 + 1392);
      v465 = *(v0 + 1384);
      v466 = *(v0 + 1376);
      v467 = *(v0 + 1368);
      v468 = *(v0 + 1360);
      v469 = *(v0 + 1352);
      v470 = *(v0 + 1344);
      v471 = *(v0 + 1336);
      v472 = *(v0 + 1328);
      v473 = *(v0 + 1320);
      v474 = *(v0 + 1312);
      v475 = *(v0 + 1296);
      v476 = *(v0 + 1288);
      v477 = *(v0 + 1280);
      v478 = *(v0 + 1272);
      v480 = *(v0 + 1264);
      v481 = *(v0 + 1256);
      v484 = *(v0 + 1232);
      v487 = *(v0 + 1224);
      v490 = *(v0 + 1216);
      v495 = *(v0 + 1208);
      v499 = *(v0 + 1200);
      v500 = *(v0 + 1176);
      v501 = *(v0 + 1168);
      v503 = *(v0 + 1160);
      v505 = *(v0 + 1144);
      sub_100006654(*(v0 + 2144), *(v0 + 2152));
      sub_1001BAF34(v0 + 880);
      sub_100018D00(v64, type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_100018D00(v63, type metadata accessor for OwnedBeaconRecord);

      v65 = *(v0 + 8);

      v65(v507);
      return;
    }

    v66 = v0 + 232;
    v67 = v0 + 808;
    v68 = *(v0 + 2384);
    v502 = v0 + 232;
    v506 = v0 + 808;
LABEL_23:
    *(v0 + 2208) = v507;
    *(v0 + 2200) = v54;
    *(v0 + 2192) = v68;
    v69 = *(v0 + 2176);
    if (v54 < *(v69 + 16))
    {
      break;
    }

    __break(1u);
LABEL_125:
    v507 = sub_100A5BE40(0, v507[2] + 1, 1, v507);
LABEL_4:
    v7 = v507[2];
    v6 = v507[3];
    if (v7 >= v6 >> 1)
    {
      v507 = sub_100A5BE40(v6 > 1, v7 + 1, 1, v507);
    }

    v8 = *(v0 + 2080);
    v9 = *(v0 + 2008);
    v10 = *(v0 + 1616);
    v11 = *(v0 + 1608);
    v12 = *(v0 + 1600);
    v13 = *(v0 + 1592);
    v14 = *(v0 + 1424);
    v15 = *(v0 + 1120);
    v507[2] = v7 + 1;
    sub_100D12974(v11, v507 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v7, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v15, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v10, v12, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v10, v13, type metadata accessor for KeyDropInterface.KeyPackage);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 2008);
    if (v18)
    {
      v504 = v17;
      v20 = *(v0 + 1600);
      v21 = *(v0 + 1592);
      v22 = *(v0 + 1416);
      v23 = swift_slowAlloc();
      *(v0 + 1048) = swift_slowAlloc();
      *v23 = 136446722;
      v24 = sub_100C71778();
      v26 = v25;
      sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      v27 = sub_1000136BC(v24, v26, (v0 + 1048));

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v28 = sub_101255410();
      v30 = v29;
      sub_100018D00(v20, type metadata accessor for KeyDropInterface.KeyPackage);
      v31 = sub_1000136BC(v28, v30, (v0 + 1048));

      *(v23 + 14) = v31;
      *(v23 + 22) = 2082;
      v32 = *(v21 + *(v22 + 24));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (v0 + 1056);
        *(v0 + 1056) = _swiftEmptyArrayStorage;
        sub_101123BF8(0, v33, 0);
        v35 = *(v0 + 1056);
        v36 = (v32 + 32);
        v37 = *(v35 + 16);
        do
        {
          v39 = *v36;
          v36 += 9;
          v38 = v39;
          *v34 = v35;
          v40 = *(v35 + 24);
          if (v37 >= v40 >> 1)
          {
            sub_101123BF8((v40 > 1), v37 + 1, 1);
            v35 = *v34;
          }

          *(v35 + 16) = v37 + 1;
          *(v35 + 8 * v37++ + 32) = v38;
          --v33;
        }

        while (v33);
      }

      v47 = *(v0 + 1792);
      v48 = *(v0 + 1616);
      v49 = *(v0 + 1592);
      v50 = Array.description.getter();
      v52 = v51;

      sub_100018D00(v49, type metadata accessor for KeyDropInterface.KeyPackage);
      v53 = sub_1000136BC(v50, v52, (v0 + 1048));

      *(v23 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v16, v504, "Keys to upload: %{public}s,\nadded primaryAddressPackage: %{public}s,\nkey indexes: %{public}s.", v23, 0x20u);
      swift_arrayDestroy();

      sub_100018D00(v48, type metadata accessor for KeyDropInterface.KeyPackage);
      v46 = type metadata accessor for KeyDropInterface.KeyAlignment;
      v45 = v47;
    }

    else
    {
      v41 = *(v0 + 1792);
      v42 = *(v0 + 1616);
      v43 = *(v0 + 1600);
      v44 = *(v0 + 1592);

      sub_100018D00(v43, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v42, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v41, type metadata accessor for KeyDropInterface.KeyAlignment);
      v45 = v44;
      v46 = type metadata accessor for KeyDropInterface.KeyPackage;
    }

    sub_100018D00(v45, v46);
  }

  v70 = *(v0 + 2080);
  v71 = *(v0 + 2048);
  v72 = *(v0 + 1120);
  v73 = *(v69 + v54 + 32);
  *(v0 + 2509) = v73;
  sub_100D11DC8(v72, v71, type metadata accessor for SharingCircleKeyManager.Instruction);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v76 = os_log_type_enabled(v74, v75);
  v77 = *(v0 + 2048);
  if (v76)
  {
    v78 = swift_slowAlloc();
    v509[0] = swift_slowAlloc();
    *v78 = 136446466;
    v79 = sub_100C71778();
    v81 = v80;
    sub_100018D00(v77, type metadata accessor for SharingCircleKeyManager.Instruction);
    v82 = sub_1000136BC(v79, v81, v509);
    v66 = v0 + 232;

    *(v78 + 4) = v82;
    *(v78 + 12) = 2082;
    v83 = sub_10125403C(v73);
    v85 = sub_1000136BC(v83, v84, v509);

    *(v78 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v74, v75, "Keys to upload: %{public}s. Creating package for %{public}s", v78, 0x16u);
    swift_arrayDestroy();
    v67 = v0 + 808;
  }

  else
  {

    sub_100018D00(v77, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  switch(v73)
  {
    case 1:
      v353 = *(*(v0 + 1120) + *(*(v0 + 1904) + 44));
      if (*(v353 + 16) && (v354 = sub_100771F0C(1), (v355 & 1) != 0))
      {
        v356 = *(v0 + 1752);
        sub_100D11DC8(*(v353 + 56) + *(*(v0 + 1720) + 72) * v354, v356, type metadata accessor for BookmarkMetaData);
        v357 = *(v356 + 8);
        sub_100018D00(v356, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        v357 = 0;
      }

      *(v0 + 2216) = v357;
      v396 = *(v0 + 2504);
      v397 = *(v0 + 1120);
      v398 = swift_task_alloc();
      *(v0 + 2224) = v398;
      *v398 = v0;
      v398[1] = sub_100CBBD44;
      v399 = *(v0 + 1704);
      v400 = *(v0 + 1128);

      sub_100CFC71C(v399, v397 + v396);
      return;
    case 4:
      v362 = swift_task_alloc();
      *(v0 + 2328) = v362;
      *v362 = v0;
      v362[1] = sub_100CC4E24;
      v363 = *(v0 + 1896);
      v364 = *(v0 + 1408);
      v365 = *(v0 + 1128);
      v366 = *(v0 + 1120);

      sub_100CF172C(v364, v366, v363, v0 + 880);
      return;
    case 5:
      v109 = *(v0 + 1768);
      v110 = *(v0 + 1760);
      v111 = *(v0 + 1376);
      sub_1000D2A70(*(v0 + 2168), v111, &qword_1016B0478, &unk_1013CDC10);
      v112 = *(v109 + 48);
      *(v0 + 2344) = v112;
      *(v0 + 2352) = (v109 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v110) = v112(v111, 1, v110);
      sub_10000B3A8(v111, &qword_1016B0478, &unk_1013CDC10);
      if (v110 == 1)
      {
        v372 = swift_task_alloc();
        *(v0 + 2360) = v372;
        *v372 = v0;
        v373 = sub_100CC7CAC;
        goto LABEL_106;
      }

      v113 = *(v0 + 2352);
      v114 = *(v0 + 2344);
      v115 = *(v0 + 1760);
      v116 = *(v0 + 1368);
      sub_1000D2A70(*(v0 + 2168), v116, &qword_1016B0478, &unk_1013CDC10);
      v117 = v114(v116, 1, v115);
      v118 = *(v0 + 1368);
      if (v117 != 1)
      {
        sub_100D12974(v118, *(v0 + 1792), type metadata accessor for KeyDropInterface.KeyAlignment);
        v377 = swift_task_alloc();
        *(v0 + 2376) = v377;
        *v377 = v0;
        v377[1] = sub_100CCA6E8;
        v378 = *(v0 + 2152);
        v379 = *(v0 + 2144);
        v380 = *(v0 + 1896);
        v381 = *(v0 + 1792);
        v382 = *(v0 + 1400);
        v383 = *(v0 + 1128);
        v384 = *(v0 + 1120);
        v385 = 0;
        goto LABEL_111;
      }

      v119 = *(v0 + 2080);
      v120 = *(v0 + 2000);
      v121 = *(v0 + 1120);
      sub_10000B3A8(v118, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v121, v120, type metadata accessor for SharingCircleKeyManager.Instruction);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      v124 = os_log_type_enabled(v122, v123);
      v125 = *(v0 + 2000);
      if (!v124)
      {
        goto LABEL_47;
      }

      v126 = swift_slowAlloc();
      v509[0] = swift_slowAlloc();
      *v126 = 136446466;
      v127 = sub_100C71778();
      v129 = v128;
      sub_100018D00(v125, type metadata accessor for SharingCircleKeyManager.Instruction);
      v130 = sub_1000136BC(v127, v129, v509);

      *(v126 + 4) = v130;
      *(v126 + 12) = 2082;
      v131 = 5;
      goto LABEL_46;
    case 6:
      v132 = *(v0 + 1768);
      v133 = *(v0 + 1760);
      v134 = *(v0 + 1360);
      sub_1000D2A70(*(v0 + 2168), v134, &qword_1016B0478, &unk_1013CDC10);
      v135 = *(v132 + 48);
      *(v0 + 2392) = v135;
      *(v0 + 2400) = (v132 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v133) = v135(v134, 1, v133);
      sub_10000B3A8(v134, &qword_1016B0478, &unk_1013CDC10);
      if (v133 == 1)
      {
        v372 = swift_task_alloc();
        *(v0 + 2408) = v372;
        *v372 = v0;
        v373 = sub_100CCD5CC;
LABEL_106:
        v372[1] = v373;
        v374 = *(v0 + 2160);
        v375 = *(v0 + 1896);
        v376 = *(v0 + 1128);

        sub_100CF0FB4(v375, v374, v376);
        return;
      }

      v136 = *(v0 + 2400);
      v137 = *(v0 + 2392);
      v138 = *(v0 + 1760);
      v139 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 2168), v139, &qword_1016B0478, &unk_1013CDC10);
      v140 = v137(v139, 1, v138);
      v141 = *(v0 + 1352);
      if (v140 == 1)
      {
        v142 = *(v0 + 2080);
        v143 = *(v0 + 1984);
        v144 = *(v0 + 1120);
        sub_10000B3A8(v141, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v144, v143, type metadata accessor for SharingCircleKeyManager.Instruction);
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();
        v145 = os_log_type_enabled(v122, v123);
        v125 = *(v0 + 1984);
        if (v145)
        {
          v126 = swift_slowAlloc();
          v509[0] = swift_slowAlloc();
          *v126 = 136446466;
          v146 = sub_100C71778();
          v148 = v147;
          sub_100018D00(v125, type metadata accessor for SharingCircleKeyManager.Instruction);
          v149 = sub_1000136BC(v146, v148, v509);

          *(v126 + 4) = v149;
          *(v126 + 12) = 2082;
          v131 = 6;
LABEL_46:
          v168 = sub_10125403C(v131);
          v170 = sub_1000136BC(v168, v169, v509);

          *(v126 + 14) = v170;
          v67 = v0 + 808;
          _os_log_impl(&_mh_execute_header, v122, v123, "No key alignment available for %{public}s. No package created for %{public}s", v126, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
LABEL_47:

          sub_100018D00(v125, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

LABEL_48:
        v507 = *(v0 + 2208);
LABEL_22:
        v54 = *(v0 + 2200) + 1;
        if (v54 == *(v0 + 2184))
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      sub_100D12974(v141, *(v0 + 1784), type metadata accessor for KeyDropInterface.KeyAlignment);
      v386 = swift_task_alloc();
      *(v0 + 2424) = v386;
      *v386 = v0;
      v386[1] = sub_100CD0008;
      v378 = *(v0 + 2152);
      v379 = *(v0 + 2144);
      v380 = *(v0 + 1896);
      v381 = *(v0 + 1784);
      v382 = *(v0 + 1392);
      v387 = *(v0 + 1128);
      v384 = *(v0 + 1120);
      v385 = 1;
LABEL_111:

      sub_100CF2904(v382, v384, v380, v381, v385, v379, v378);
      return;
    case 8:
    case 10:
      v86 = *(v0 + 936);
      if (!*(v86 + 16))
      {
        goto LABEL_22;
      }

      v87 = sub_100771F0C(v73);
      if ((v88 & 1) == 0)
      {
        goto LABEL_22;
      }

      v89 = *(v0 + 2152);
      v90 = *(v0 + 2144);
      v91 = *(v0 + 1680);
      v92 = (*(v86 + 56) + 16 * v87);
      v94 = *v92;
      v93 = v92[1];
      v95 = type metadata accessor for EncryptedData();
      (*(*(v95 - 8) + 56))(v91, 1, 1, v95);
      sub_100017D5C(v94, v93);
      sub_100017D5C(v94, v93);
      sub_10125A120(1, v94, v93, v91, v66);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v96 = swift_allocObject();
      v97 = *(v66 + 32);
      v98 = *(v66 + 48);
      v99 = *v66;
      *(v96 + 48) = *(v66 + 16);
      *(v96 + 64) = v97;
      *(v96 + 80) = v98;
      *(v96 + 96) = *(v66 + 64);
      *(v96 + 16) = xmmword_101385D80;
      *(v96 + 32) = v99;
      sub_10002E98C(v90, v89);
      sub_1003914F8(v66, v0 + 736);
      v100 = sub_100D11764(v96, v90, v89);
      v101 = *(v0 + 2152);
      v102 = *(v0 + 2144);
      if (v68)
      {
        sub_100016590(v94, v93);
        sub_100391554(v66);
        sub_100006654(v102, v101);
        swift_setDeallocating();
        sub_100391554(v96 + 32);
        swift_deallocClassInstance();
        v67 = v0 + 808;
        v286 = *(v0 + 2080);
        v287 = *(v0 + 1920);
        v288 = *(v0 + 1912);
        v289 = *(v0 + 1120);
        sub_100D11DC8(v289, *(v0 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v289, v287, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v289, v288, type metadata accessor for SharingCircleKeyManager.Instruction);
        swift_errorRetain();
        v290 = Logger.logObject.getter();
        v291 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v290, v291))
        {
          v508 = v291;
          v292 = *(v0 + 1928);
          v293 = *(v0 + 1920);
          v493 = *(v0 + 1912);
          v482 = *(v0 + 1904);
          v485 = *(v0 + 1816);
          v294 = *(v0 + 2509);
          v295 = swift_slowAlloc();
          v509[0] = swift_slowAlloc();
          *v295 = 136447747;
          v296 = sub_100C71778();
          v298 = v297;
          sub_100018D00(v292, type metadata accessor for SharingCircleKeyManager.Instruction);
          v299 = sub_1000136BC(v296, v298, v509);

          *(v295 + 4) = v299;
          *(v295 + 12) = 2082;
          v300 = sub_10125403C(v294);
          v302 = sub_1000136BC(v300, v301, v509);

          *(v295 + 14) = v302;
          *(v295 + 22) = 2160;
          *(v295 + 24) = 1752392040;
          *(v295 + 32) = 2081;
          v303 = *(v482 + 20);
          sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
          v304 = dispatch thunk of CustomStringConvertible.description.getter();
          v306 = v305;
          v307 = v293;
          v66 = v0 + 232;
          sub_100018D00(v307, type metadata accessor for SharingCircleKeyManager.Instruction);
          v308 = sub_1000136BC(v304, v306, v509);

          *(v295 + 34) = v308;
          *(v295 + 42) = 2160;
          *(v295 + 44) = 1752392040;
          *(v295 + 52) = 2081;
          v309 = v493 + *(v482 + 24);
          v67 = v0 + 808;
          v310 = dispatch thunk of CustomStringConvertible.description.getter();
          v312 = v311;
          sub_100018D00(v493, type metadata accessor for SharingCircleKeyManager.Instruction);
          v313 = sub_1000136BC(v310, v312, v509);

          *(v295 + 54) = v313;
          *(v295 + 62) = 2082;
          swift_getErrorValue();
          v314 = *(v0 + 968);
          v315 = *(v0 + 976);
          v316 = *(v0 + 984);
          v317 = Error.localizedDescription.getter();
          v319 = sub_1000136BC(v317, v318, v509);

          *(v295 + 64) = v319;
          _os_log_impl(&_mh_execute_header, v290, v508, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v295, 0x48u);
          swift_arrayDestroy();
        }

        else
        {
          v320 = *(v0 + 1928);
          v321 = *(v0 + 1920);
          v322 = *(v0 + 1912);

          sub_100018D00(v322, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v321, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v320, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        v68 = 0;
        goto LABEL_48;
      }

      v193 = v100;
      v194 = *(v0 + 1808);
      v195 = *(v0 + 1520);
      v491 = *(v0 + 1512);
      v496 = v93;
      v196 = *(v0 + 1416);
      sub_100006654(v102, v101);
      swift_setDeallocating();
      sub_100391554(v96 + 32);
      swift_deallocClassInstance();
      sub_100D11DC8(v194, &v195[*(v196 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      *v195 = v73;
      *&v195[*(v196 + 24)] = v193;
      sub_100D11DC8(v195, v491, type metadata accessor for KeyDropInterface.KeyPackage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v507 = sub_100A5BE40(0, v507[2] + 1, 1, v507);
      }

      v198 = v507[2];
      v197 = v507[3];
      if (v198 >= v197 >> 1)
      {
        v507 = sub_100A5BE40(v197 > 1, v198 + 1, 1, v507);
      }

      v199 = *(v0 + 2080);
      v200 = *(v0 + 1960);
      v201 = *(v0 + 1520);
      v202 = *(v0 + 1512);
      v203 = *(v0 + 1504);
      v204 = *(v0 + 1424);
      v205 = *(v0 + 1120);
      v507[2] = v198 + 1;
      sub_100D12974(v202, v507 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v198, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v205, v200, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v201, v203, type metadata accessor for KeyDropInterface.KeyPackage);
      v206 = Logger.logObject.getter();
      v207 = static os_log_type_t.default.getter();
      v208 = os_log_type_enabled(v206, v207);
      v209 = *(v0 + 1960);
      v210 = *(v0 + 1520);
      v211 = *(v0 + 1504);
      if (v208)
      {
        v212 = swift_slowAlloc();
        v509[0] = swift_slowAlloc();
        *v212 = 136446466;
        v213 = sub_100C71778();
        v492 = v210;
        v215 = v214;
        sub_100018D00(v209, type metadata accessor for SharingCircleKeyManager.Instruction);
        v216 = sub_1000136BC(v213, v215, v509);

        *(v212 + 4) = v216;
        *(v212 + 12) = 2082;
        v217 = sub_101255410();
        v219 = v218;
        sub_100018D00(v211, type metadata accessor for KeyDropInterface.KeyPackage);
        v220 = sub_1000136BC(v217, v219, v509);

        *(v212 + 14) = v220;
        _os_log_impl(&_mh_execute_header, v206, v207, "Keys to upload: %{public}s,\nadded: %{public}s.", v212, 0x16u);
        swift_arrayDestroy();

        v66 = v0 + 232;
        sub_100391554(v502);
        sub_100016590(v94, v496);
        v221 = v492;
      }

      else
      {

        sub_100391554(v502);
        sub_100016590(v94, v496);
        v233 = v211;
        v66 = v0 + 232;
        sub_100018D00(v233, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v209, type metadata accessor for SharingCircleKeyManager.Instruction);
        v221 = v210;
      }

      sub_100018D00(v221, type metadata accessor for KeyDropInterface.KeyPackage);
      v68 = 0;
      v67 = v0 + 808;
      goto LABEL_22;
    case 9:
      v150 = *(v0 + 1768);
      v151 = *(v0 + 1760);
      v152 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 2168), v152, &qword_1016B0478, &unk_1013CDC10);
      v153 = *(v150 + 48);
      *(v0 + 2440) = v153;
      *(v0 + 2448) = (v150 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v151) = v153(v152, 1, v151);
      sub_10000B3A8(v152, &qword_1016B0478, &unk_1013CDC10);
      if (v151 == 1)
      {
        v372 = swift_task_alloc();
        *(v0 + 2456) = v372;
        *v372 = v0;
        v373 = sub_100CD2EEC;
        goto LABEL_106;
      }

      v154 = *(v0 + 2448);
      v155 = *(v0 + 2440);
      v156 = *(v0 + 1760);
      v157 = *(v0 + 1336);
      sub_1000D2A70(*(v0 + 2168), v157, &qword_1016B0478, &unk_1013CDC10);
      v158 = v155(v157, 1, v156);
      v159 = *(v0 + 1336);
      if (v158 != 1)
      {
        sub_100D12974(v159, *(v0 + 1776), type metadata accessor for KeyDropInterface.KeyAlignment);
        v388 = swift_task_alloc();
        *(v0 + 2472) = v388;
        *v388 = v0;
        v388[1] = sub_100CD5928;
        v389 = *(v0 + 2152);
        v390 = *(v0 + 2144);
        v391 = *(v0 + 1896);
        v392 = *(v0 + 1776);
        v393 = *(v0 + 1384);
        v394 = *(v0 + 1128);
        v395 = *(v0 + 1120);

        sub_100CF3F94(v393, v395, v391, v392, v390, v389);
        return;
      }

      v160 = *(v0 + 2080);
      v161 = *(v0 + 1968);
      v162 = *(v0 + 1120);
      sub_10000B3A8(v159, &qword_1016B0478, &unk_1013CDC10);
      sub_100D11DC8(v162, v161, type metadata accessor for SharingCircleKeyManager.Instruction);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      v163 = os_log_type_enabled(v122, v123);
      v125 = *(v0 + 1968);
      if (!v163)
      {
        goto LABEL_47;
      }

      v126 = swift_slowAlloc();
      v509[0] = swift_slowAlloc();
      *v126 = 136446466;
      v164 = sub_100C71778();
      v166 = v165;
      sub_100018D00(v125, type metadata accessor for SharingCircleKeyManager.Instruction);
      v167 = sub_1000136BC(v164, v166, v509);

      *(v126 + 4) = v167;
      *(v126 + 12) = 2082;
      v131 = 9;
      goto LABEL_46;
    case 12:
      v103 = *(v0 + 1824);
      v104 = *(v0 + 1816);
      v105 = *(v0 + 1168);
      sub_1000D2A70(*(v0 + 1896) + *(*(v0 + 1872) + 28), v105, &qword_1016980D0, &unk_10138F3B0);
      if ((*(v103 + 48))(v105, 1, v104) == 1)
      {
        v106 = *(v0 + 1192);
        v107 = *(v0 + 1184);
        v108 = *(v0 + 1176);
        sub_10000B3A8(*(v0 + 1168), &qword_1016980D0, &unk_10138F3B0);
        (*(v106 + 56))(v108, 1, 1, v107);
        goto LABEL_66;
      }

      v171 = *(v0 + 2112);
      v172 = *(v0 + 1896);
      v173 = *(v0 + 1872);
      v174 = *(v0 + 1160);
      v175 = *(v0 + 1152);
      (*(v0 + 2104))(*(v0 + 1840), *(v0 + 1168), *(v0 + 1816));
      sub_100D11DC8(v172 + *(v173 + 24), v174, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
LABEL_61:
          v229 = *(v0 + 1192);
          v230 = *(v0 + 1184);
          v231 = *(v0 + 1176);
          v232 = *(v0 + 1160);
          (*(*(v0 + 1824) + 8))(*(v0 + 1840), *(v0 + 1816));
          sub_100018D00(v232, type metadata accessor for StableIdentifier);
          (*(v229 + 56))(v231, 1, 1, v230);
          goto LABEL_66;
        }

        v222 = *(v0 + 1824);
        v223 = *(v0 + 1816);
        v224 = *(v0 + 1160);
        v225 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v226 = *(v224 + 8 + v225[12]);

        v227 = *(v224 + 8 + v225[16]);

        v228 = *(v224 + 8 + v225[20]);

        v185 = *(v224 + v225[24]);
        (*(v222 + 8))(v224, v223);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          goto LABEL_61;
        }

        v177 = *(v0 + 1824);
        v178 = *(v0 + 1160);
        v179 = v178 + 8;
        v180 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v181 = *(v178 + 8 + v180[12]);

        v182 = *(v178 + 8 + v180[16]);

        v183 = *(v178 + 8 + v180[20]);

        v184 = (v178 + v180[24]);
        v185 = *v184;
        LOBYTE(v178) = v184[1];
        v186 = *(v179 + v180[28]);

        v187 = *(v177 + 8);
        if (v178)
        {
          v188 = *(v0 + 1816);
          v189 = *(v0 + 1192);
          v190 = *(v0 + 1184);
          v191 = *(v0 + 1176);
          v192 = *(v0 + 1160);
          v187(*(v0 + 1840), v188);
          (*(v189 + 56))(v191, 1, 1, v190);
          v187(v192, v188);
          v67 = v0 + 808;
          goto LABEL_66;
        }

        v187(*(v0 + 1160), *(v0 + 1816));
        v67 = v0 + 808;
      }

      v234 = *(v0 + 2112);
      v235 = *(v0 + 1192);
      v236 = *(v0 + 1184);
      v237 = *(v0 + 1176);
      (*(v0 + 2104))(v237, *(v0 + 1840), *(v0 + 1816));
      *(v237 + *(v236 + 20)) = v185;
      (*(v235 + 56))(v237, 0, 1, v236);
LABEL_66:
      v238 = *(v0 + 1176);
      if ((*(*(v0 + 1192) + 48))(v238, 1, *(v0 + 1184)) == 1)
      {
        sub_10000B3A8(v238, &qword_1016B9B20, &qword_1013E3680);
        goto LABEL_22;
      }

      v239 = *(v0 + 1904);
      v240 = *(v0 + 1120);
      sub_100D12974(v238, *(v0 + 1200), type metadata accessor for KeyDropBeaconGroupAttributes);
      v241 = *(v240 + *(v239 + 44));
      if (!*(v241 + 16))
      {
        goto LABEL_71;
      }

      v242 = sub_100771F0C(12);
      if ((v243 & 1) == 0)
      {
        goto LABEL_71;
      }

      v244 = *(v0 + 1768);
      v245 = *(v0 + 1760);
      v246 = *(v0 + 1736);
      v247 = *(v0 + 1712);
      v248 = *(v0 + 1320);
      sub_100D11DC8(*(v241 + 56) + *(*(v0 + 1720) + 72) * v242, v246, type metadata accessor for BookmarkMetaData);
      sub_1000D2A70(v246 + *(v247 + 20), v248, &qword_1016B0478, &unk_1013CDC10);
      sub_100018D00(v246, type metadata accessor for BookmarkMetaData);
      if ((*(v244 + 48))(v248, 1, v245) == 1)
      {
        sub_10000B3A8(*(v0 + 1320), &qword_1016B0478, &unk_1013CDC10);
        v67 = v0 + 808;
LABEL_71:
        v249 = *(v0 + 1280);
        v250 = *(v0 + 1248);
        v251 = *(v0 + 1240);
        v252 = *(v0 + 1216);
        (*(v250 + 56))(v252, 1, 1, v251);
        static Date.distantPast.getter();
        if ((*(v250 + 48))(v252, 1, v251) != 1)
        {
          sub_10000B3A8(*(v0 + 1216), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v253 = *(v0 + 1320);
        v254 = *(v0 + 1280);
        v255 = *(v0 + 1248);
        v256 = *(v0 + 1240);
        v257 = *(v0 + 1216);
        (*(v255 + 16))(v257, v253 + *(*(v0 + 1760) + 24), v256);
        sub_100018D00(v253, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v255 + 56))(v257, 0, 1, v256);
        (*(v255 + 32))(v254, v257, v256);
        v67 = v0 + 808;
      }

      v258 = *(v0 + 1896);
      v259 = *(v0 + 1272);
      v260 = objc_autoreleasePoolPush();
      sub_100D088CC(v258, v259);
      if (v68)
      {

        objc_autoreleasePoolPop(v260);
        return;
      }

      v261 = *(v0 + 1280);
      v262 = *(v0 + 1272);
      v263 = *(v0 + 1248);
      v264 = *(v0 + 1240);
      objc_autoreleasePoolPop(v260);
      sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
      v265 = dispatch thunk of static Comparable.< infix(_:_:)();
      v266 = *(v263 + 8);
      v266(v262, v264);
      if (v265)
      {
        v267 = *(v0 + 1200);
        v266(*(v0 + 1280), *(v0 + 1240));
        v268 = v267;
      }

      else
      {
        v269 = *(v0 + 1200);
        v270 = *(v0 + 1184);
        v271 = type metadata accessor for PropertyListEncoder();
        v272 = *(v271 + 48);
        v273 = *(v271 + 52);
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
        v274 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v276 = v275;
        v497 = *(v0 + 2152);
        v277 = *(v0 + 2144);
        v278 = *(v0 + 1680);
        v279 = v274;

        v280 = type metadata accessor for EncryptedData();
        (*(*(v280 - 8) + 56))(v278, 1, 1, v280);
        sub_100017D5C(v279, v276);
        sub_10125A120(1, v279, v276, v278, v67);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v281 = swift_allocObject();
        v282 = *(v67 + 32);
        v283 = *(v67 + 48);
        v284 = *v67;
        *(v281 + 48) = *(v67 + 16);
        *(v281 + 64) = v282;
        *(v281 + 80) = v283;
        *(v281 + 96) = *(v67 + 64);
        *(v281 + 16) = xmmword_101385D80;
        *(v281 + 32) = v284;
        sub_10002E98C(v277, v497);
        sub_1003914F8(v67, v0 + 448);
        v285 = sub_100D11764(v281, v277, v497);
        v494 = v279;
        v498 = v276;
        v323 = *(v0 + 1808);
        v324 = *(v0 + 1472);
        v488 = *(v0 + 1464);
        v325 = *(v0 + 1416);
        v326 = v285;
        sub_100006654(*(v0 + 2144), *(v0 + 2152));
        swift_setDeallocating();
        sub_100391554(v281 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v323, &v324[*(v325 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v324 = 12;
        *&v324[*(v325 + 24)] = v326;
        sub_100D11DC8(v324, v488, type metadata accessor for KeyDropInterface.KeyPackage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v507 = sub_100A5BE40(0, v507[2] + 1, 1, v507);
        }

        v328 = v507[2];
        v327 = v507[3];
        if (v328 >= v327 >> 1)
        {
          v507 = sub_100A5BE40(v327 > 1, v328 + 1, 1, v507);
        }

        v329 = *(v0 + 2080);
        v330 = *(v0 + 1944);
        v331 = *(v0 + 1472);
        v332 = *(v0 + 1464);
        v333 = *(v0 + 1456);
        v334 = *(v0 + 1424);
        v335 = *(v0 + 1120);
        v507[2] = v328 + 1;
        sub_100D12974(v332, v507 + ((*(v334 + 80) + 32) & ~*(v334 + 80)) + *(v334 + 72) * v328, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v335, v330, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v331, v333, type metadata accessor for KeyDropInterface.KeyPackage);
        v336 = Logger.logObject.getter();
        v337 = static os_log_type_t.default.getter();
        v338 = os_log_type_enabled(v336, v337);
        v339 = *(v0 + 1944);
        v489 = *(v0 + 1472);
        v340 = *(v0 + 1456);
        v341 = *(v0 + 1280);
        v342 = *(v0 + 1240);
        v343 = *(v0 + 1200);
        if (v338)
        {
          v479 = v337;
          v344 = swift_slowAlloc();
          v509[0] = swift_slowAlloc();
          *v344 = 136446466;
          v483 = v341;
          v486 = v342;
          v345 = sub_100C71778();
          v347 = v346;
          sub_100018D00(v339, type metadata accessor for SharingCircleKeyManager.Instruction);
          v348 = sub_1000136BC(v345, v347, v509);

          *(v344 + 4) = v348;
          *(v344 + 12) = 2082;
          v349 = sub_101255410();
          v351 = v350;
          sub_100018D00(v340, type metadata accessor for KeyDropInterface.KeyPackage);
          v352 = sub_1000136BC(v349, v351, v509);

          *(v344 + 14) = v352;
          _os_log_impl(&_mh_execute_header, v336, v479, "Keys to upload: %{public}s,\nadded: %{public}s.", v344, 0x16u);
          swift_arrayDestroy();

          v67 = v0 + 808;
          sub_100391554(v506);
          sub_100016590(v494, v498);
          sub_100018D00(v489, type metadata accessor for KeyDropInterface.KeyPackage);
          v266(v483, v486);
        }

        else
        {

          v67 = v0 + 808;
          sub_100391554(v506);
          sub_100016590(v494, v498);
          sub_100018D00(v340, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v339, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v489, type metadata accessor for KeyDropInterface.KeyPackage);
          v266(v341, v342);
        }

        v268 = v343;
      }

      sub_100018D00(v268, type metadata accessor for KeyDropBeaconGroupAttributes);
      v68 = 0;
      v66 = v0 + 232;
      goto LABEL_22;
    case 13:
      v358 = swift_task_alloc();
      *(v0 + 2488) = v358;
      *v358 = v0;
      v358[1] = sub_100CD880C;
      v359 = *(v0 + 1896);
      v360 = *(v0 + 1232);
      v361 = *(v0 + 1128);

      sub_100CF5FBC(v360, v359);
      return;
    case 16:
      v367 = swift_task_alloc();
      *(v0 + 2496) = v367;
      *v367 = v0;
      v367[1] = sub_100CDBC44;
      v368 = *(v0 + 1896);
      v369 = *(v0 + 1264);
      v370 = *(v0 + 1144);
      v371 = *(v0 + 1128);

      sub_100CF6C9C(v369, v370, v368);
      return;
    default:
      goto LABEL_22;
  }
}

uint64_t sub_100CCD5CC()
{
  v2 = *v1;
  v3 = *(*v1 + 2408);
  v4 = *v1;
  *(*v1 + 2416) = v0;

  v5 = *(v2 + 1128);
  if (v0)
  {
    v6 = sub_100CE6EAC;
  }

  else
  {
    v6 = sub_100CCD6F8;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100CCD6F8()
{
  v467 = v0;
  v454 = (v0 + 29);
  v450 = (v0 + 101);
  v1 = v0[302];
LABEL_2:
  v2 = v0[300];
  v3 = v0[299];
  v4 = v0[220];
  v5 = v0[169];
  sub_1000D2A70(v0[271], v5, &qword_1016B0478, &unk_1013CDC10);
  v6 = v3(v5, 1, v4);
  v7 = v0[169];
  if (v6 != 1)
  {
    sub_100D12974(v7, v0[223], type metadata accessor for KeyDropInterface.KeyAlignment);
    v351 = swift_task_alloc();
    v0[303] = v351;
    *v351 = v0;
    v351[1] = sub_100CD0008;
    v343 = v0[269];
    v344 = v0[268];
    v345 = v0[237];
    v346 = v0[223];
    v347 = v0[174];
    v352 = v0[141];
    v349 = v0[140];
    v350 = 1;
    goto LABEL_95;
  }

  v8 = v0[260];
  v9 = v0[248];
  v10 = v0[140];
  sub_10000B3A8(v7, &qword_1016B0478, &unk_1013CDC10);
  sub_100D11DC8(v10, v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[248];
  if (!v13)
  {
    goto LABEL_67;
  }

  v15 = swift_slowAlloc();
  v466[0] = swift_slowAlloc();
  *v15 = 136446466;
  v16 = sub_100C71778();
  v18 = v17;
  sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
  v19 = sub_1000136BC(v16, v18, v466);

  *(v15 + 4) = v19;
  *(v15 + 12) = 2082;
  v20 = 6;
LABEL_5:
  v21 = sub_10125403C(v20);
  v23 = sub_1000136BC(v21, v22, v466);

  *(v15 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v11, v12, "No key alignment available for %{public}s. No package created for %{public}s", v15, 0x16u);
  swift_arrayDestroy();
  v24 = v464;

  while (1)
  {
    v25 = v24[276];
LABEL_7:
    v26 = v24[275] + 1;
    if (v26 == v24[273])
    {
      break;
    }

    v24[276] = v25;
    v24[275] = v26;
    v24[274] = v1;
    v27 = v24[272];
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    v28 = v24[260];
    v29 = v24[256];
    v30 = v24[140];
    v31 = *(v27 + v26 + 32);
    *(v24 + 2509) = v31;
    sub_100D11DC8(v30, v29, type metadata accessor for SharingCircleKeyManager.Instruction);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v24[256];
    if (v34)
    {
      v36 = swift_slowAlloc();
      v466[0] = swift_slowAlloc();
      *v36 = 136446466;
      v37 = sub_100C71778();
      v38 = v25;
      v40 = v39;
      sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
      v41 = sub_1000136BC(v37, v40, v466);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2082;
      v42 = sub_10125403C(v31);
      v44 = sub_1000136BC(v42, v43, v466);

      *(v36 + 14) = v44;
      v25 = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Keys to upload: %{public}s. Creating package for %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      v24 = v464;
    }

    else
    {

      sub_100018D00(v35, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    switch(v31)
    {
      case 1:
        v317 = *(v24[140] + *(v24[238] + 44));
        if (*(v317 + 16) && (v318 = sub_100771F0C(1), (v319 & 1) != 0))
        {
          v320 = v24[219];
          sub_100D11DC8(*(v317 + 56) + *(v24[215] + 72) * v318, v320, type metadata accessor for BookmarkMetaData);
          v321 = *(v320 + 8);
          sub_100018D00(v320, type metadata accessor for BookmarkMetaData);
        }

        else
        {
          v321 = 0;
        }

        v24[277] = v321;
        v353 = *(v24 + 626);
        v354 = v24[140];
        v355 = swift_task_alloc();
        v24[278] = v355;
        *v355 = v24;
        v355[1] = sub_100CBBD44;
        v356 = v24[213];
        v357 = v24[141];

        sub_100CFC71C(v356, v354 + v353);
        return;
      case 4:
        v322 = swift_task_alloc();
        v24[291] = v322;
        *v322 = v24;
        v322[1] = sub_100CC4E24;
        v323 = v24[237];
        v324 = v24[176];
        v325 = v24[141];
        v326 = v24[140];

        sub_100CF172C(v324, v326, v323, (v24 + 110));
        return;
      case 5:
        v275 = v24[221];
        v276 = v24[220];
        v277 = v24[172];
        v0 = v24;
        sub_1000D2A70(v24[271], v277, &qword_1016B0478, &unk_1013CDC10);
        v278 = *(v275 + 48);
        v24[293] = v278;
        v24[294] = (v275 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v276) = v278(v277, 1, v276);
        sub_10000B3A8(v277, &qword_1016B0478, &unk_1013CDC10);
        if (v276 == 1)
        {
          v297 = swift_task_alloc();
          v24[295] = v297;
          *v297 = v24;
          v298 = sub_100CC7CAC;
          goto LABEL_87;
        }

        v279 = v24[294];
        v280 = v24[293];
        v281 = v24[220];
        v282 = v24[171];
        sub_1000D2A70(v24[271], v282, &qword_1016B0478, &unk_1013CDC10);
        v283 = v280(v282, 1, v281);
        v284 = v24[171];
        if (v283 != 1)
        {
          sub_100D12974(v284, v24[224], type metadata accessor for KeyDropInterface.KeyAlignment);
          v342 = swift_task_alloc();
          v24[297] = v342;
          *v342 = v24;
          v342[1] = sub_100CCA6E8;
          v343 = v24[269];
          v344 = v24[268];
          v345 = v24[237];
          v346 = v24[224];
          v347 = v24[175];
          v348 = v24[141];
          v349 = v24[140];
          v350 = 0;
LABEL_95:

          sub_100CF2904(v347, v349, v345, v346, v350, v344, v343);
          return;
        }

        v285 = v24[260];
        v286 = v24[250];
        v287 = v24[140];
        sub_10000B3A8(v284, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v287, v286, type metadata accessor for SharingCircleKeyManager.Instruction);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();
        v288 = os_log_type_enabled(v11, v12);
        v14 = v24[250];
        if (v288)
        {
          v15 = swift_slowAlloc();
          v466[0] = swift_slowAlloc();
          *v15 = 136446466;
          v289 = sub_100C71778();
          v291 = v290;
          sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
          v292 = sub_1000136BC(v289, v291, v466);

          *(v15 + 4) = v292;
          *(v15 + 12) = 2082;
          v20 = 5;
          goto LABEL_5;
        }

        break;
      case 6:
        v293 = v24[221];
        v294 = v24[220];
        v295 = v24[170];
        v0 = v24;
        sub_1000D2A70(v24[271], v295, &qword_1016B0478, &unk_1013CDC10);
        v296 = *(v293 + 48);
        v24[299] = v296;
        v24[300] = (v293 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v294) = v296(v295, 1, v294);
        sub_10000B3A8(v295, &qword_1016B0478, &unk_1013CDC10);
        if (v294 != 1)
        {
          goto LABEL_2;
        }

        v297 = swift_task_alloc();
        v24[301] = v297;
        *v297 = v24;
        v298 = sub_100CCD5CC;
        goto LABEL_87;
      case 8:
      case 10:
        v45 = v24[117];
        if (!*(v45 + 16))
        {
          goto LABEL_7;
        }

        v46 = sub_100771F0C(v31);
        if ((v47 & 1) == 0)
        {
          goto LABEL_7;
        }

        v456 = v25;
        v48 = v24[269];
        v49 = v24[268];
        v50 = *(v464 + 1680);
        v51 = (*(v45 + 56) + 16 * v46);
        v53 = *v51;
        v52 = v51[1];
        v54 = type metadata accessor for EncryptedData();
        (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
        sub_100017D5C(v53, v52);
        sub_100017D5C(v53, v52);
        v55 = v50;
        v24 = v464;
        sub_10125A120(1, v53, v52, v55, v454);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v56 = swift_allocObject();
        v57 = *(v454 + 32);
        v58 = *(v454 + 48);
        v59 = *v454;
        *(v56 + 48) = *(v454 + 16);
        *(v56 + 64) = v57;
        *(v56 + 80) = v58;
        *(v56 + 96) = *(v454 + 64);
        *(v56 + 16) = xmmword_101385D80;
        *(v56 + 32) = v59;
        sub_10002E98C(v49, v48);
        sub_1003914F8(v454, v464 + 736);
        v60 = sub_100D11764(v56, v49, v48);
        v61 = *(v464 + 2152);
        v62 = *(v464 + 2144);
        if (v1)
        {
          sub_100016590(v53, v52);
          sub_100391554(v454);
          sub_100006654(v62, v61);
          swift_setDeallocating();
          sub_100391554(v56 + 32);
          swift_deallocClassInstance();
          v220 = *(v464 + 2080);
          v221 = *(v464 + 1920);
          v222 = *(v464 + 1912);
          v223 = *(v464 + 1120);
          sub_100D11DC8(v223, *(v464 + 1928), type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v223, v221, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v223, v222, type metadata accessor for SharingCircleKeyManager.Instruction);
          swift_errorRetain();
          v224 = Logger.logObject.getter();
          v225 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v224, v225))
          {
            v444 = v225;
            v226 = *(v464 + 1928);
            v440 = *(v464 + 1920);
            v448 = *(v464 + 1912);
            v227 = *(v464 + 1904);
            v228 = *(v464 + 1816);
            v229 = *(v464 + 2509);
            v230 = swift_slowAlloc();
            v466[0] = swift_slowAlloc();
            *v230 = 136447747;
            v231 = sub_100C71778();
            v233 = v232;
            sub_100018D00(v226, type metadata accessor for SharingCircleKeyManager.Instruction);
            v234 = sub_1000136BC(v231, v233, v466);

            *(v230 + 4) = v234;
            *(v230 + 12) = 2082;
            v235 = sub_10125403C(v229);
            v237 = sub_1000136BC(v235, v236, v466);

            *(v230 + 14) = v237;
            *(v230 + 22) = 2160;
            *(v230 + 24) = 1752392040;
            *(v230 + 32) = 2081;
            v238 = *(v227 + 20);
            sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
            v239 = dispatch thunk of CustomStringConvertible.description.getter();
            v241 = v240;
            sub_100018D00(v440, type metadata accessor for SharingCircleKeyManager.Instruction);
            v242 = sub_1000136BC(v239, v241, v466);

            *(v230 + 34) = v242;
            *(v230 + 42) = 2160;
            *(v230 + 44) = 1752392040;
            *(v230 + 52) = 2081;
            v243 = v448 + *(v227 + 24);
            v24 = v464;
            v244 = dispatch thunk of CustomStringConvertible.description.getter();
            v246 = v245;
            sub_100018D00(v448, type metadata accessor for SharingCircleKeyManager.Instruction);
            v247 = sub_1000136BC(v244, v246, v466);

            *(v230 + 54) = v247;
            *(v230 + 62) = 2082;
            swift_getErrorValue();
            v248 = *(v464 + 968);
            v249 = *(v464 + 976);
            v250 = *(v464 + 984);
            v251 = Error.localizedDescription.getter();
            v253 = sub_1000136BC(v251, v252, v466);

            *(v230 + 64) = v253;
            _os_log_impl(&_mh_execute_header, v224, v444, "Keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v230, 0x48u);
            swift_arrayDestroy();
          }

          else
          {
            v254 = *(v464 + 1928);
            v255 = *(v464 + 1920);
            v256 = *(v464 + 1912);

            sub_100018D00(v256, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v255, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v254, type metadata accessor for SharingCircleKeyManager.Instruction);
          }

          v1 = 0;
          continue;
        }

        v442 = v53;
        v63 = *(v464 + 1808);
        v64 = *(v464 + 1520);
        v65 = *(v464 + 1512);
        v66 = *(v464 + 1416);
        v67 = v60;
        sub_100006654(v62, v61);
        swift_setDeallocating();
        sub_100391554(v56 + 32);
        swift_deallocClassInstance();
        sub_100D11DC8(v63, &v64[*(v66 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        *v64 = v31;
        *&v64[*(v66 + 24)] = v67;
        sub_100D11DC8(v64, v65, type metadata accessor for KeyDropInterface.KeyPackage);
        v68 = v456;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_100A5BE40(0, v456[2] + 1, 1, v456);
        }

        v70 = v68[2];
        v69 = v68[3];
        v457 = v68;
        v446 = v52;
        if (v70 >= v69 >> 1)
        {
          v457 = sub_100A5BE40(v69 > 1, v70 + 1, 1, v68);
        }

        v71 = *(v464 + 2080);
        v72 = *(v464 + 1960);
        v73 = *(v464 + 1520);
        v74 = *(v464 + 1512);
        v75 = *(v464 + 1504);
        v76 = *(v464 + 1424);
        v77 = *(v464 + 1120);
        *(v457 + 16) = v70 + 1;
        sub_100D12974(v74, v457 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v70, type metadata accessor for KeyDropInterface.KeyPackage);
        v78 = v77;
        v24 = v464;
        sub_100D11DC8(v78, v72, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v73, v75, type metadata accessor for KeyDropInterface.KeyPackage);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        v81 = os_log_type_enabled(v79, v80);
        v82 = *(v464 + 1960);
        v83 = *(v464 + 1520);
        v84 = *(v464 + 1504);
        if (v81)
        {
          v85 = swift_slowAlloc();
          v466[0] = swift_slowAlloc();
          *v85 = 136446466;
          v86 = sub_100C71778();
          v88 = v87;
          sub_100018D00(v82, type metadata accessor for SharingCircleKeyManager.Instruction);
          v89 = sub_1000136BC(v86, v88, v466);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2082;
          v90 = sub_101255410();
          v92 = v91;
          sub_100018D00(v84, type metadata accessor for KeyDropInterface.KeyPackage);
          v93 = v90;
          v24 = v464;
          v94 = sub_1000136BC(v93, v92, v466);

          *(v85 + 14) = v94;
          _os_log_impl(&_mh_execute_header, v79, v80, "Keys to upload: %{public}s,\nadded: %{public}s.", v85, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v454);
          sub_100016590(v442, v446);
        }

        else
        {

          sub_100391554(v454);
          sub_100016590(v442, v446);
          sub_100018D00(v84, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v82, type metadata accessor for SharingCircleKeyManager.Instruction);
        }

        sub_100018D00(v83, type metadata accessor for KeyDropInterface.KeyPackage);
        v1 = 0;
        v25 = v457;
        goto LABEL_7;
      case 9:
        v257 = v24[221];
        v258 = v24[220];
        v259 = v24[168];
        v0 = v24;
        sub_1000D2A70(v24[271], v259, &qword_1016B0478, &unk_1013CDC10);
        v260 = *(v257 + 48);
        v24[305] = v260;
        v24[306] = (v257 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        LODWORD(v258) = v260(v259, 1, v258);
        sub_10000B3A8(v259, &qword_1016B0478, &unk_1013CDC10);
        if (v258 == 1)
        {
          v297 = swift_task_alloc();
          v24[307] = v297;
          *v297 = v24;
          v298 = sub_100CD2EEC;
LABEL_87:
          v297[1] = v298;
          v331 = v0[270];
          v332 = v0[141];
          v333 = v0[237];

          sub_100CF0FB4(v333, v331, v332);
          return;
        }

        v261 = v24[306];
        v262 = v24[305];
        v263 = v24[220];
        v264 = v24[167];
        sub_1000D2A70(v24[271], v264, &qword_1016B0478, &unk_1013CDC10);
        v265 = v262(v264, 1, v263);
        v266 = v24[167];
        if (v265 != 1)
        {
          sub_100D12974(v266, v24[222], type metadata accessor for KeyDropInterface.KeyAlignment);
          v334 = swift_task_alloc();
          v24[309] = v334;
          *v334 = v24;
          v334[1] = sub_100CD5928;
          v335 = v24[269];
          v336 = v24[268];
          v337 = v24[237];
          v338 = v24[222];
          v339 = v24[173];
          v340 = v24[141];
          v341 = v24[140];

          sub_100CF3F94(v339, v341, v337, v338, v336, v335);
          return;
        }

        v267 = v24[260];
        v268 = v24[246];
        v269 = v24[140];
        sub_10000B3A8(v266, &qword_1016B0478, &unk_1013CDC10);
        sub_100D11DC8(v269, v268, type metadata accessor for SharingCircleKeyManager.Instruction);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();
        v270 = os_log_type_enabled(v11, v12);
        v14 = v24[246];
        if (v270)
        {
          v15 = swift_slowAlloc();
          v466[0] = swift_slowAlloc();
          *v15 = 136446466;
          v271 = sub_100C71778();
          v273 = v272;
          sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
          v274 = sub_1000136BC(v271, v273, v466);

          *(v15 + 4) = v274;
          *(v15 + 12) = 2082;
          v20 = 9;
          goto LABEL_5;
        }

        break;
      case 12:
        v95 = v24[228];
        v96 = v24[227];
        v97 = v24[146];
        sub_1000D2A70(v24[237] + *(v24[234] + 28), v97, &qword_1016980D0, &unk_10138F3B0);
        if ((*(v95 + 48))(v97, 1, v96) == 1)
        {
          v98 = v24[149];
          v99 = v24[148];
          v100 = v24[147];
          sub_10000B3A8(v24[146], &qword_1016980D0, &unk_10138F3B0);
          (*(v98 + 56))(v100, 1, 1, v99);
          goto LABEL_35;
        }

        v101 = v24[264];
        v102 = v24[237];
        v103 = v24[234];
        v104 = v24[145];
        v105 = v24[144];
        (v24[263])(v24[230], v24[146], v24[227]);
        sub_100D11DC8(v102 + *(v103 + 24), v104, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
LABEL_30:
            v130 = v24[149];
            v131 = v24[148];
            v132 = v24[147];
            v133 = v24[145];
            (*(v24[228] + 8))(v24[230], v24[227]);
            sub_100018D00(v133, type metadata accessor for StableIdentifier);
            (*(v130 + 56))(v132, 1, 1, v131);
            goto LABEL_35;
          }

          v123 = v24[228];
          v124 = v24[227];
          v125 = v24[145];
          v126 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v127 = *(v125 + 8 + v126[12]);

          v128 = *(v125 + 8 + v126[16]);

          v129 = *(v125 + 8 + v126[20]);

          v115 = *(v125 + v126[24]);
          (*(v123 + 8))(v125, v124);
        }

        else
        {
          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_30;
          }

          v107 = v24[228];
          v108 = v24[145];
          v109 = v108 + 8;
          v110 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v111 = *(v108 + 8 + v110[12]);

          v112 = *(v108 + 8 + v110[16]);

          v113 = *(v108 + 8 + v110[20]);

          v114 = (v108 + v110[24]);
          v115 = *v114;
          LOBYTE(v108) = v114[1];
          v116 = *(v109 + v110[28]);

          v117 = *(v107 + 8);
          if (v108)
          {
            v118 = v24[227];
            v458 = v25;
            v119 = v24[149];
            v120 = v24[148];
            v121 = v24[147];
            v122 = v24[145];
            v117(v24[230], v118);
            (*(v119 + 56))(v121, 1, 1, v120);
            v25 = v458;
            v117(v122, v118);
            goto LABEL_35;
          }

          v117(v24[145], v24[227]);
        }

        v134 = v24[264];
        v135 = v24[149];
        v136 = v24[148];
        v137 = v24[147];
        (v24[263])(v137, v24[230], v24[227]);
        *(v137 + *(v136 + 20)) = v115;
        (*(v135 + 56))(v137, 0, 1, v136);
LABEL_35:
        v138 = v24[147];
        if ((*(v24[149] + 48))(v138, 1, v24[148]) == 1)
        {
          sub_10000B3A8(v138, &qword_1016B9B20, &qword_1013E3680);
          goto LABEL_7;
        }

        v139 = v24[238];
        v140 = v24[140];
        sub_100D12974(v138, v24[150], type metadata accessor for KeyDropBeaconGroupAttributes);
        v141 = *(v140 + *(v139 + 44));
        if (!*(v141 + 16))
        {
          goto LABEL_41;
        }

        v142 = sub_100771F0C(12);
        if ((v143 & 1) == 0)
        {
          goto LABEL_41;
        }

        v144 = v24;
        v145 = v24[221];
        v146 = v144[220];
        v147 = v144[217];
        v148 = v144[214];
        v149 = v144[165];
        sub_100D11DC8(*(v141 + 56) + *(v144[215] + 72) * v142, v147, type metadata accessor for BookmarkMetaData);
        sub_1000D2A70(v147 + *(v148 + 20), v149, &qword_1016B0478, &unk_1013CDC10);
        sub_100018D00(v147, type metadata accessor for BookmarkMetaData);
        if ((*(v145 + 48))(v149, 1, v146) == 1)
        {
          sub_10000B3A8(v144[165], &qword_1016B0478, &unk_1013CDC10);
          v24 = v144;
LABEL_41:
          v150 = v24[160];
          v151 = v24[156];
          v152 = v24[155];
          v153 = v24[152];
          (*(v151 + 56))(v153, 1, 1, v152);
          static Date.distantPast.getter();
          if ((*(v151 + 48))(v153, 1, v152) != 1)
          {
            sub_10000B3A8(v24[152], &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          v154 = v144[165];
          v155 = v144[160];
          v156 = v144[156];
          v157 = v144[155];
          v158 = v144[152];
          (*(v156 + 16))(v158, v154 + *(v144[220] + 24), v157);
          sub_100018D00(v154, type metadata accessor for KeyDropInterface.KeyAlignment);
          (*(v156 + 56))(v158, 0, 1, v157);
          (*(v156 + 32))(v155, v158, v157);
          v24 = v144;
        }

        v159 = v24[237];
        v160 = v24[159];
        v161 = objc_autoreleasePoolPush();
        sub_100D088CC(v159, v160);
        if (v1)
        {

          objc_autoreleasePoolPop(v161);
          return;
        }

        v162 = v24[160];
        v163 = v24[159];
        v164 = v24[156];
        v165 = v24[155];
        objc_autoreleasePoolPop(v161);
        sub_100D13BF8(&qword_1016C9070, &type metadata accessor for Date);
        v166 = dispatch thunk of static Comparable.< infix(_:_:)();
        v167 = *(v164 + 8);
        v167(v163, v165);
        if (v166)
        {
          v168 = v24[150];
          v167(v24[160], v24[155]);
          sub_100018D00(v168, type metadata accessor for KeyDropBeaconGroupAttributes);
          v1 = 0;
        }

        else
        {
          v169 = v24[150];
          v170 = v24[148];
          v171 = type metadata accessor for PropertyListEncoder();
          v172 = *(v171 + 48);
          v173 = *(v171 + 52);
          swift_allocObject();
          PropertyListEncoder.init()();
          sub_100D13BF8(&qword_1016B9B40, type metadata accessor for KeyDropBeaconGroupAttributes);
          v174 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v176 = v175;
          v447 = v167;
          v459 = v25;
          v177 = v24[269];
          v178 = v24[268];
          v179 = v24[210];
          v180 = v174;

          v181 = type metadata accessor for EncryptedData();
          (*(*(v181 - 8) + 56))(v179, 1, 1, v181);
          sub_100017D5C(v180, v176);
          sub_10125A120(1, v180, v176, v179, v450);
          sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
          v182 = swift_allocObject();
          v183 = *(v450 + 32);
          v184 = *(v450 + 48);
          v185 = *v450;
          *(v182 + 48) = *(v450 + 16);
          *(v182 + 64) = v183;
          *(v182 + 80) = v184;
          *(v182 + 96) = *(v450 + 64);
          *(v182 + 16) = xmmword_101385D80;
          *(v182 + 32) = v185;
          sub_10002E98C(v178, v177);
          sub_1003914F8(v450, (v24 + 56));
          v186 = sub_100D11764(v182, v178, v177);
          v439 = v180;
          v443 = v176;
          v187 = v24[226];
          v188 = v24[184];
          v189 = v24[183];
          v190 = v24[177];
          v191 = v186;
          sub_100006654(v24[268], v24[269]);
          swift_setDeallocating();
          sub_100391554(v182 + 32);
          swift_deallocClassInstance();
          sub_100D11DC8(v187, &v188[*(v190 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
          *v188 = 12;
          *&v188[*(v190 + 24)] = v191;
          sub_100D11DC8(v188, v189, type metadata accessor for KeyDropInterface.KeyPackage);
          v192 = v459;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_100A5BE40(0, v459[2] + 1, 1, v459);
          }

          v194 = v192[2];
          v193 = v192[3];
          v460 = v192;
          if (v194 >= v193 >> 1)
          {
            v460 = sub_100A5BE40(v193 > 1, v194 + 1, 1, v192);
          }

          v195 = *(v464 + 2080);
          v196 = *(v464 + 1944);
          v197 = *(v464 + 1472);
          v198 = *(v464 + 1464);
          v199 = *(v464 + 1456);
          v200 = *(v464 + 1424);
          v201 = *(v464 + 1120);
          *(v460 + 16) = v194 + 1;
          sub_100D12974(v198, v460 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v194, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100D11DC8(v201, v196, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100D11DC8(v197, v199, type metadata accessor for KeyDropInterface.KeyPackage);
          v202 = Logger.logObject.getter();
          v203 = static os_log_type_t.default.getter();
          v204 = os_log_type_enabled(v202, v203);
          v205 = *(v464 + 1944);
          v206 = *(v464 + 1472);
          v207 = *(v464 + 1456);
          v208 = *(v464 + 1280);
          v209 = *(v464 + 1240);
          v210 = *(v464 + 1200);
          if (v204)
          {
            v211 = swift_slowAlloc();
            v466[0] = swift_slowAlloc();
            *v211 = 136446466;
            v435 = v206;
            v437 = v209;
            v212 = sub_100C71778();
            v214 = v213;
            sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
            v215 = sub_1000136BC(v212, v214, v466);

            *(v211 + 4) = v215;
            *(v211 + 12) = 2082;
            v216 = sub_101255410();
            v218 = v217;
            sub_100018D00(v207, type metadata accessor for KeyDropInterface.KeyPackage);
            v219 = sub_1000136BC(v216, v218, v466);

            *(v211 + 14) = v219;
            _os_log_impl(&_mh_execute_header, v202, v203, "Keys to upload: %{public}s,\nadded: %{public}s.", v211, 0x16u);
            swift_arrayDestroy();

            sub_100391554(v450);
            sub_100016590(v439, v443);
            sub_100018D00(v435, type metadata accessor for KeyDropInterface.KeyPackage);
            v447(v208, v437);
          }

          else
          {

            sub_100391554(v450);
            sub_100016590(v439, v443);
            sub_100018D00(v207, type metadata accessor for KeyDropInterface.KeyPackage);
            sub_100018D00(v205, type metadata accessor for SharingCircleKeyManager.Instruction);
            sub_100018D00(v206, type metadata accessor for KeyDropInterface.KeyPackage);
            v447(v208, v209);
          }

          sub_100018D00(v210, type metadata accessor for KeyDropBeaconGroupAttributes);
          v1 = 0;
          v25 = v460;
          v24 = v464;
        }

        goto LABEL_7;
      case 13:
        v327 = swift_task_alloc();
        v24[311] = v327;
        *v327 = v24;
        v327[1] = sub_100CD880C;
        v328 = v24[237];
        v329 = v24[154];
        v330 = v24[141];

        sub_100CF5FBC(v329, v328);
        return;
      case 16:
        v312 = swift_task_alloc();
        v24[312] = v312;
        *v312 = v24;
        v312[1] = sub_100CDBC44;
        v313 = v24[237];
        v314 = v24[158];
        v315 = v24[143];
        v316 = v24[141];

        sub_100CF6C9C(v314, v315, v313);
        return;
      default:
        goto LABEL_7;
    }

LABEL_67:
    v24 = v0;

    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v299 = v24[272];

  v300 = v24[270];
  v301 = v24[269];
  v302 = v24[268];
  v303 = v24[259];
  v304 = v24;
  v305 = v24[258];
  v306 = v304[257];
  v307 = v304[256];
  v308 = v304[255];
  v358 = v304[254];
  v359 = v304[253];
  v360 = v304[252];
  v361 = v304[251];
  v362 = v304[250];
  v363 = v304[249];
  v364 = v304[248];
  v365 = v304[247];
  v366 = v304[246];
  v367 = v304[245];
  v368 = v304[244];
  v369 = v304[243];
  v370 = v304[242];
  v371 = v304[241];
  v372 = v304[240];
  v373 = v304[239];
  v309 = v304[237];
  v374 = v304[236];
  v375 = v304[233];
  v376 = v304[231];
  v377 = v304[230];
  v310 = v304[226];
  v378 = v304[225];
  v379 = v304[224];
  v380 = v304[223];
  v381 = v304[222];
  v382 = v304[219];
  v383 = v304[218];
  v384 = v304[217];
  v385 = v304[216];
  v386 = v304[213];
  v387 = v304[212];
  v388 = v304[210];
  v389 = v304[209];
  v390 = v304[208];
  v391 = v304[207];
  v392 = v304[206];
  v393 = v304[205];
  v394 = v304[204];
  v395 = v304[203];
  v396 = v304[202];
  v397 = v304[201];
  v398 = v304[200];
  v399 = v304[199];
  v400 = v304[198];
  v401 = v304[197];
  v402 = v304[196];
  v403 = v304[195];
  v404 = v304[194];
  v405 = v304[193];
  v406 = v304[192];
  v407 = v304[191];
  v408 = v304[190];
  v409 = v304[189];
  v410 = v304[188];
  v411 = v304[187];
  v412 = v304[186];
  v413 = v304[185];
  v414 = v304[184];
  v415 = v304[183];
  v416 = v304[182];
  v417 = v304[181];
  v418 = v304[180];
  v419 = v304[179];
  v420 = v304[176];
  v421 = v304[175];
  v422 = v304[174];
  v423 = v304[173];
  v424 = v304[172];
  v425 = v304[171];
  v426 = v304[170];
  v427 = v304[169];
  v428 = v304[168];
  v429 = v304[167];
  v430 = v304[166];
  v431 = v304[165];
  v432 = v304[164];
  v433 = v304[162];
  v434 = v304[161];
  v436 = v304[160];
  v438 = v304[159];
  v441 = v304[158];
  v445 = v304[157];
  v449 = v304[154];
  v451 = v304[153];
  v452 = v304[152];
  v453 = v304[151];
  v455 = v304[150];
  v461 = v304[147];
  v462 = v304[146];
  v463 = v304[145];
  v465 = v304[143];
  sub_100006654(v302, v301);
  sub_1001BAF34((v304 + 110));
  sub_100018D00(v310, type metadata accessor for KeyDropInterface.KeyAlignment);
  sub_100018D00(v309, type metadata accessor for OwnedBeaconRecord);

  v311 = v304[1];

  v311(v25);
}