uint64_t sub_100C96064()
{
  v1 = *(v0 + 1672);
  if ((*(*(v0 + 1704) + 48))(v1, 1, *(v0 + 1696)) == 1)
  {
    v2 = *(v0 + 2032);
    v3 = *(v0 + 2024);
    v4 = *(v0 + 1688);
    sub_10000B3A8(v1, &unk_101698C20, &qword_101390748);
    (*(v2 + 56))(v4, 1, 1, v3);
  }

  else
  {
    sub_1000D2A70(v1, *(v0 + 1688), &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v1, type metadata accessor for KeyDropLostItemDates);
  }

  v5 = *(v0 + 2844);
  v6 = *(v0 + 1640);
  sub_1000D2A70(*(v0 + 1712), *(v0 + 1680), &unk_101696900, &unk_10138B1E0);
  v7 = swift_task_alloc();
  *(v0 + 2736) = v7;
  *v7 = v0;
  v7[1] = sub_100C965A0;
  v8 = *(v0 + 2248);
  v9 = *(v0 + 1712);

  return sub_1012D9080(v6 + v5, v9);
}

uint64_t sub_100C961D8()
{
  v1 = v0[206];
  (*(v0[231] + 8))(v0[233], v0[230]);

  return _swift_task_switch(sub_100C96258, v1, 0);
}

uint64_t sub_100C96258()
{
  v1 = v0[281];
  v2 = v0[257];
  v3 = v0[254];
  v4 = v0[253];
  v5 = v0[214];
  sub_100391554((v0 + 20));

  sub_100018D00(v5, type metadata accessor for KeyDropLostItemDates);
  (*(v3 + 8))(v2, v4);
  v54 = v0[341];
  v6 = v0[276];
  v7 = v0[275];
  v8 = v0[274];
  v9 = v0[273];
  v10 = v0[272];
  v11 = v0[271];
  v12 = v0[270];
  v13 = v0[269];
  v14 = v0[268];
  v15 = v0[267];
  v18 = v0[266];
  v19 = v0[265];
  v20 = v0[261];
  v21 = v0[260];
  v22 = v0[259];
  v23 = v0[257];
  v24 = v0[256];
  v25 = v0[255];
  v26 = v0[252];
  v27 = v0[251];
  v28 = v0[250];
  v29 = v0[249];
  v30 = v0[247];
  v31 = v0[246];
  v32 = v0[245];
  v33 = v0[244];
  v34 = v0[240];
  v35 = v0[239];
  v36 = v0[238];
  v37 = v0[236];
  v38 = v0[235];
  v39 = v0[234];
  v40 = v0[233];
  v41 = v0[229];
  v42 = v0[228];
  v43 = v0[226];
  v44 = v0[224];
  v45 = v0[221];
  v46 = v0[218];
  v47 = v0[217];
  v48 = v0[216];
  v49 = v0[214];
  v50 = v0[211];
  v51 = v0[210];
  v52 = v0[209];
  v53 = v0[208];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100C965A0()
{
  v2 = *(*v1 + 2736);
  v3 = *v1;
  v3[343] = v0;

  if (v0)
  {
    v4 = v3[206];

    return _swift_task_switch(sub_100C999CC, v4, 0);
  }

  else
  {
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v3[344] = v6;
    *v6 = v3;
    v6[1] = sub_100C9670C;

    return daemon.getter();
  }
}

uint64_t sub_100C9670C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2752);
  v12 = *v1;
  *(v3 + 2760) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 2768) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D13BF8(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  *v6 = v12;
  v6[1] = sub_100C968E8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C968E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2768);
  v6 = *v2;
  *(v4 + 2776) = a1;
  *(v4 + 2784) = v1;

  v7 = *(v3 + 2760);
  v8 = *(v3 + 1648);

  if (v1)
  {
    v9 = sub_100C99D4C;
  }

  else
  {
    v9 = sub_100C96A3C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C96A3C()
{
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1664);
  v6 = *(*(v0 + 1656) + 48);
  *(v0 + 2848) = v6;
  sub_1000D2A70(v3, v5, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v4, v5 + v6, &unk_101696900, &unk_10138B1E0);
  v7 = *(v1 + 48);
  LODWORD(v4) = v7(v5, 1, v2);
  v8 = v7(v5 + v6, 1, v2);
  if (v4 == 1)
  {
    v9 = *(v0 + 2776);
    if (v8 == 1)
    {
      v10 = *(v0 + 2248);
      v11 = *(v0 + 2056);
      v12 = *(v0 + 2032);
      v13 = *(v0 + 2024);
      v14 = *(v0 + 1712);
      v15 = *(v0 + 1688);
      v16 = *(v0 + 1680);
      sub_100391554(v0 + 160);

      sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
      sub_100018D00(v14, type metadata accessor for KeyDropLostItemDates);
      (*(v12 + 8))(v11, v13);
LABEL_13:
      v48 = *(v0 + 2208);
      v49 = *(v0 + 2200);
      v50 = *(v0 + 2192);
      v51 = *(v0 + 2184);
      v52 = *(v0 + 2176);
      v53 = *(v0 + 2168);
      v54 = *(v0 + 2160);
      v55 = *(v0 + 2152);
      v56 = *(v0 + 2144);
      v57 = *(v0 + 2136);
      v59 = *(v0 + 2128);
      v60 = *(v0 + 2120);
      v61 = *(v0 + 2088);
      v62 = *(v0 + 2080);
      v63 = *(v0 + 2072);
      v64 = *(v0 + 2056);
      v65 = *(v0 + 2048);
      v66 = *(v0 + 2040);
      v67 = *(v0 + 2016);
      v68 = *(v0 + 2008);
      v69 = *(v0 + 2000);
      v70 = *(v0 + 1992);
      v71 = *(v0 + 1976);
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);
      v75 = *(v0 + 1920);
      v76 = *(v0 + 1912);
      v77 = *(v0 + 1904);
      v78 = *(v0 + 1888);
      v79 = *(v0 + 1880);
      v80 = *(v0 + 1872);
      v81 = *(v0 + 1864);
      v82 = *(v0 + 1832);
      v83 = *(v0 + 1824);
      v84 = *(v0 + 1808);
      v85 = *(v0 + 1792);
      v86 = *(v0 + 1768);
      v87 = *(v0 + 1744);
      v88 = *(v0 + 1736);
      v89 = *(v0 + 1728);
      v90 = *(v0 + 1712);
      v91 = *(v0 + 1688);
      v92 = *(v0 + 1680);
      v94 = *(v0 + 1672);
      v96 = *(v0 + 1664);

      v58 = *(v0 + 8);

      return v58();
    }

    v27 = *(v0 + 1640);
    v28 = *(*(v0 + 2096) + 20);
    v29 = *(v0 + 2776);

    v30 = swift_task_alloc();
    *(v0 + 2792) = v30;
    *v30 = v0;
    v31 = sub_100C97144;
  }

  else
  {
    if (v8 == 1)
    {
      v17 = *(v0 + 2776);
      v18 = *(v0 + 2248);
      v19 = *(v0 + 2056);
      v20 = *(v0 + 2032);
      v21 = *(v0 + 2024);
      v22 = *(v0 + 1712);
      v23 = *(v0 + 1688);
      v24 = *(v0 + 1680);
      v25 = *(v0 + 1664);
      sub_100391554(v0 + 160);

      sub_10000B3A8(v24, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v23, &unk_101696900, &unk_10138B1E0);
      sub_100018D00(v22, type metadata accessor for KeyDropLostItemDates);
      v26 = *(v20 + 8);
      v26(v19, v21);
      v26(v25, v21);
      goto LABEL_13;
    }

    v32 = *(v0 + 2040);
    v33 = *(v0 + 2024);
    v34 = *(*(v0 + 2032) + 32);
    v34(*(v0 + 2048), *(v0 + 1664), v33);
    v34(v32, v5 + v6, v33);
    Date.timeIntervalSince(_:)();
    v35 = *(v0 + 2776);
    if (v36 <= 0.001)
    {
      v40 = *(v0 + 2248);
      v41 = *(v0 + 2048);
      v42 = *(v0 + 2040);
      v43 = *(v0 + 2032);
      v44 = *(v0 + 2024);
      v93 = *(v0 + 1712);
      v95 = *(v0 + 2056);
      v45 = *(v0 + 1688);
      v46 = *(v0 + 1680);
      sub_100391554(v0 + 160);

      v47 = *(v43 + 8);
      v47(v42, v44);
      v47(v41, v44);
      sub_10000B3A8(v46, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v45, &unk_101696900, &unk_10138B1E0);
      sub_100018D00(v93, type metadata accessor for KeyDropLostItemDates);
      v47(v95, v44);
      goto LABEL_13;
    }

    v27 = *(v0 + 1640);
    v28 = *(*(v0 + 2096) + 20);
    v37 = *(v0 + 2776);

    v30 = swift_task_alloc();
    *(v0 + 2808) = v30;
    *v30 = v0;
    v31 = sub_100C97614;
  }

  v30[1] = v31;
  v38 = *(v0 + 2776);

  return sub_100B536D0(v27 + v28);
}

uint64_t sub_100C97144()
{
  v2 = *v1;
  v3 = *(*v1 + 2792);
  v9 = *v1;
  *(*v1 + 2800) = v0;

  if (v0)
  {
    v4 = *(v2 + 1648);
    v5 = sub_100C9A0CC;
  }

  else
  {
    v6 = *(v2 + 2776);
    v7 = *(v2 + 1648);

    v5 = sub_100C9726C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C9726C()
{
  v57 = *(v0 + 2848);
  v1 = *(v0 + 2776);
  v2 = *(v0 + 2248);
  v3 = *(v0 + 2056);
  v4 = *(v0 + 2032);
  v5 = *(v0 + 2024);
  v6 = *(v0 + 1712);
  v7 = *(v0 + 1688);
  v8 = *(v0 + 1680);
  v9 = *(v0 + 1664);
  sub_100391554(v0 + 160);

  sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  sub_100018D00(v6, type metadata accessor for KeyDropLostItemDates);
  (*(v4 + 8))(v3, v5);
  sub_10000B3A8(v9 + v57, &unk_101696900, &unk_10138B1E0);
  v10 = *(v0 + 2208);
  v11 = *(v0 + 2200);
  v12 = *(v0 + 2192);
  v13 = *(v0 + 2184);
  v14 = *(v0 + 2176);
  v15 = *(v0 + 2168);
  v16 = *(v0 + 2160);
  v17 = *(v0 + 2152);
  v18 = *(v0 + 2144);
  v19 = *(v0 + 2136);
  v22 = *(v0 + 2128);
  v23 = *(v0 + 2120);
  v24 = *(v0 + 2088);
  v25 = *(v0 + 2080);
  v26 = *(v0 + 2072);
  v27 = *(v0 + 2056);
  v28 = *(v0 + 2048);
  v29 = *(v0 + 2040);
  v30 = *(v0 + 2016);
  v31 = *(v0 + 2008);
  v32 = *(v0 + 2000);
  v33 = *(v0 + 1992);
  v34 = *(v0 + 1976);
  v35 = *(v0 + 1968);
  v36 = *(v0 + 1960);
  v37 = *(v0 + 1952);
  v38 = *(v0 + 1920);
  v39 = *(v0 + 1912);
  v40 = *(v0 + 1904);
  v41 = *(v0 + 1888);
  v42 = *(v0 + 1880);
  v43 = *(v0 + 1872);
  v44 = *(v0 + 1864);
  v45 = *(v0 + 1832);
  v46 = *(v0 + 1824);
  v47 = *(v0 + 1808);
  v48 = *(v0 + 1792);
  v49 = *(v0 + 1768);
  v50 = *(v0 + 1744);
  v51 = *(v0 + 1736);
  v52 = *(v0 + 1728);
  v53 = *(v0 + 1712);
  v54 = *(v0 + 1688);
  v55 = *(v0 + 1680);
  v56 = *(v0 + 1672);
  v58 = *(v0 + 1664);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100C97614()
{
  v2 = *v1;
  v3 = *(*v1 + 2808);
  v4 = *v1;
  *(*v1 + 2816) = v0;

  v5 = *(v2 + 2776);
  v6 = *(v2 + 1648);

  if (v0)
  {
    v7 = sub_100C9A72C;
  }

  else
  {
    v7 = sub_100C9775C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C9775C()
{
  v1 = v0[347];
  v2 = v0[281];
  v3 = v0[256];
  v4 = v0[255];
  v5 = v0[254];
  v6 = v0[253];
  v56 = v0[214];
  v58 = v0[257];
  v7 = v0[211];
  v8 = v0[210];
  sub_100391554((v0 + 20));

  v9 = *(v5 + 8);
  v9(v4, v6);
  v9(v3, v6);
  sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  sub_100018D00(v56, type metadata accessor for KeyDropLostItemDates);
  v9(v58, v6);
  v10 = v0[276];
  v11 = v0[275];
  v12 = v0[274];
  v13 = v0[273];
  v14 = v0[272];
  v15 = v0[271];
  v16 = v0[270];
  v17 = v0[269];
  v18 = v0[268];
  v19 = v0[267];
  v22 = v0[266];
  v23 = v0[265];
  v24 = v0[261];
  v25 = v0[260];
  v26 = v0[259];
  v27 = v0[257];
  v28 = v0[256];
  v29 = v0[255];
  v30 = v0[252];
  v31 = v0[251];
  v32 = v0[250];
  v33 = v0[249];
  v34 = v0[247];
  v35 = v0[246];
  v36 = v0[245];
  v37 = v0[244];
  v38 = v0[240];
  v39 = v0[239];
  v40 = v0[238];
  v41 = v0[236];
  v42 = v0[235];
  v43 = v0[234];
  v44 = v0[233];
  v45 = v0[229];
  v46 = v0[228];
  v47 = v0[226];
  v48 = v0[224];
  v49 = v0[221];
  v50 = v0[218];
  v51 = v0[217];
  v52 = v0[216];
  v53 = v0[214];
  v54 = v0[211];
  v55 = v0[210];
  v57 = v0[209];
  v59 = v0[208];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100C97B18()
{
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[281];
  v5 = v0[257];
  v6 = v0[254];
  v7 = v0[253];
  v8 = v0[252];

  sub_100391554((v0 + 20));
  sub_100016590(v2, v1);

  sub_100018D00(v8, type metadata accessor for SharingCircleSecretValue);
  (*(v6 + 8))(v5, v7);
  v57 = v0[289];
  v9 = v0[276];
  v10 = v0[275];
  v11 = v0[274];
  v12 = v0[273];
  v13 = v0[272];
  v14 = v0[271];
  v15 = v0[270];
  v16 = v0[269];
  v17 = v0[268];
  v18 = v0[267];
  v21 = v0[266];
  v22 = v0[265];
  v23 = v0[261];
  v24 = v0[260];
  v25 = v0[259];
  v26 = v0[257];
  v27 = v0[256];
  v28 = v0[255];
  v29 = v0[252];
  v30 = v0[251];
  v31 = v0[250];
  v32 = v0[249];
  v33 = v0[247];
  v34 = v0[246];
  v35 = v0[245];
  v36 = v0[244];
  v37 = v0[240];
  v38 = v0[239];
  v39 = v0[238];
  v40 = v0[236];
  v41 = v0[235];
  v42 = v0[234];
  v43 = v0[233];
  v44 = v0[229];
  v45 = v0[228];
  v46 = v0[226];
  v47 = v0[224];
  v48 = v0[221];
  v49 = v0[218];
  v50 = v0[217];
  v51 = v0[216];
  v52 = v0[214];
  v53 = v0[211];
  v54 = v0[210];
  v55 = v0[209];
  v56 = v0[208];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C97E7C()
{
  v94 = v0;
  *(v0 + 1608) = *(v0 + 2392);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 2853) == 1)
  {
    v1 = *(v0 + 2392);
    v2 = *(v0 + 2376);
    v3 = *(v0 + 2248);
    v4 = *(v0 + 2056);
    v5 = *(v0 + 2032);
    v6 = *(v0 + 2024);
    v7 = *(v0 + 1976);
    v8 = *(v0 + 1832);

    sub_100391554(v0 + 160);

    sub_100018D00(v7, type metadata accessor for SharedBeaconRecord);
    (*(v5 + 8))(v4, v6);
    sub_100018D00(v8, type metadata accessor for KeySyncMetadata);
    v9 = *(v0 + 1608);
  }

  else
  {
    v10 = *(v0 + 2392);
    v11 = *(v0 + 2216);
    v12 = *(v0 + 2136);
    v13 = *(v0 + 1640);
    v14 = *(v0 + 1608);

    sub_100D11DC8(v13, v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 2392);
    v19 = *(v0 + 2136);
    if (v17)
    {
      v20 = *(v0 + 2096);
      v79 = *(v0 + 2376);
      v81 = *(v0 + 2248);
      v87 = *(v0 + 2024);
      v89 = *(v0 + 2056);
      v83 = *(v0 + 1976);
      v85 = *(v0 + 2032);
      v21 = *(v0 + 1840);
      v91 = *(v0 + 1832);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v93 = v24;
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v25 = *(v20 + 24);
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      v29 = sub_1000136BC(v26, v28, &v93);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2114;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v30;
      *v23 = v30;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to update key sync beacon %{private,mask.hash}s %{public}@.", v22, 0x20u);
      sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v24);

      sub_100391554(v0 + 160);

      sub_100018D00(v83, type metadata accessor for SharedBeaconRecord);
      (*(v85 + 8))(v89, v87);
      v31 = v91;
    }

    else
    {
      v32 = *(v0 + 2056);
      v33 = *(v0 + 2032);
      v34 = *(v0 + 2024);
      v35 = *(v0 + 1976);
      v36 = *(v0 + 1832);
      v37 = *(v0 + 2376);

      sub_100391554(v0 + 160);

      sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v35, type metadata accessor for SharedBeaconRecord);
      (*(v33 + 8))(v32, v34);
      v31 = v36;
    }

    sub_100018D00(v31, type metadata accessor for KeySyncMetadata);
  }

  v38 = *(v0 + 2208);
  v39 = *(v0 + 2200);
  v40 = *(v0 + 2192);
  v41 = *(v0 + 2184);
  v42 = *(v0 + 2176);
  v43 = *(v0 + 2168);
  v44 = *(v0 + 2160);
  v45 = *(v0 + 2152);
  v46 = *(v0 + 2144);
  v47 = *(v0 + 2136);
  v50 = *(v0 + 2128);
  v51 = *(v0 + 2120);
  v52 = *(v0 + 2088);
  v53 = *(v0 + 2080);
  v54 = *(v0 + 2072);
  v55 = *(v0 + 2056);
  v56 = *(v0 + 2048);
  v57 = *(v0 + 2040);
  v58 = *(v0 + 2016);
  v59 = *(v0 + 2008);
  v60 = *(v0 + 2000);
  v61 = *(v0 + 1992);
  v62 = *(v0 + 1976);
  v63 = *(v0 + 1968);
  v64 = *(v0 + 1960);
  v65 = *(v0 + 1952);
  v66 = *(v0 + 1920);
  v67 = *(v0 + 1912);
  v68 = *(v0 + 1904);
  v69 = *(v0 + 1888);
  v70 = *(v0 + 1880);
  v71 = *(v0 + 1872);
  v72 = *(v0 + 1864);
  v73 = *(v0 + 1832);
  v74 = *(v0 + 1824);
  v75 = *(v0 + 1808);
  v76 = *(v0 + 1792);
  v77 = *(v0 + 1768);
  v78 = *(v0 + 1744);
  v80 = *(v0 + 1736);
  v82 = *(v0 + 1728);
  v84 = *(v0 + 1712);
  v86 = *(v0 + 1688);
  v88 = *(v0 + 1680);
  v90 = *(v0 + 1672);
  v92 = *(v0 + 1664);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100C98578()
{
  v94 = v0;
  *(v0 + 1600) = *(v0 + 2472);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 2852) == 1)
  {
    v1 = *(v0 + 2472);
    v2 = *(v0 + 2456);
    v3 = *(v0 + 2248);
    v4 = *(v0 + 2056);
    v5 = *(v0 + 2032);
    v6 = *(v0 + 2024);
    v7 = *(v0 + 1960);
    v8 = *(v0 + 1824);

    sub_100391554(v0 + 160);

    sub_100018D00(v7, type metadata accessor for SharedBeaconRecord);
    (*(v5 + 8))(v4, v6);
    sub_100018D00(v8, type metadata accessor for KeySyncMetadata);
    v9 = *(v0 + 1600);
  }

  else
  {
    v10 = *(v0 + 2472);
    v11 = *(v0 + 2216);
    v12 = *(v0 + 2128);
    v13 = *(v0 + 1640);
    v14 = *(v0 + 1600);

    sub_100D11DC8(v13, v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 2472);
    v19 = *(v0 + 2128);
    if (v17)
    {
      v20 = *(v0 + 2096);
      v79 = *(v0 + 2456);
      v81 = *(v0 + 2248);
      v87 = *(v0 + 2024);
      v89 = *(v0 + 2056);
      v83 = *(v0 + 1960);
      v85 = *(v0 + 2032);
      v21 = *(v0 + 1840);
      v91 = *(v0 + 1824);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v93 = v24;
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v25 = *(v20 + 24);
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      v29 = sub_1000136BC(v26, v28, &v93);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2114;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v30;
      *v23 = v30;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to update key sync beacon %{private,mask.hash}s %{public}@.", v22, 0x20u);
      sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v24);

      sub_100391554(v0 + 160);

      sub_100018D00(v83, type metadata accessor for SharedBeaconRecord);
      (*(v85 + 8))(v89, v87);
      v31 = v91;
    }

    else
    {
      v32 = *(v0 + 2056);
      v33 = *(v0 + 2032);
      v34 = *(v0 + 2024);
      v35 = *(v0 + 1960);
      v36 = *(v0 + 1824);
      v37 = *(v0 + 2456);

      sub_100391554(v0 + 160);

      sub_100018D00(v19, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v35, type metadata accessor for SharedBeaconRecord);
      (*(v33 + 8))(v32, v34);
      v31 = v36;
    }

    sub_100018D00(v31, type metadata accessor for KeySyncMetadata);
  }

  v38 = *(v0 + 2208);
  v39 = *(v0 + 2200);
  v40 = *(v0 + 2192);
  v41 = *(v0 + 2184);
  v42 = *(v0 + 2176);
  v43 = *(v0 + 2168);
  v44 = *(v0 + 2160);
  v45 = *(v0 + 2152);
  v46 = *(v0 + 2144);
  v47 = *(v0 + 2136);
  v50 = *(v0 + 2128);
  v51 = *(v0 + 2120);
  v52 = *(v0 + 2088);
  v53 = *(v0 + 2080);
  v54 = *(v0 + 2072);
  v55 = *(v0 + 2056);
  v56 = *(v0 + 2048);
  v57 = *(v0 + 2040);
  v58 = *(v0 + 2016);
  v59 = *(v0 + 2008);
  v60 = *(v0 + 2000);
  v61 = *(v0 + 1992);
  v62 = *(v0 + 1976);
  v63 = *(v0 + 1968);
  v64 = *(v0 + 1960);
  v65 = *(v0 + 1952);
  v66 = *(v0 + 1920);
  v67 = *(v0 + 1912);
  v68 = *(v0 + 1904);
  v69 = *(v0 + 1888);
  v70 = *(v0 + 1880);
  v71 = *(v0 + 1872);
  v72 = *(v0 + 1864);
  v73 = *(v0 + 1832);
  v74 = *(v0 + 1824);
  v75 = *(v0 + 1808);
  v76 = *(v0 + 1792);
  v77 = *(v0 + 1768);
  v78 = *(v0 + 1744);
  v80 = *(v0 + 1736);
  v82 = *(v0 + 1728);
  v84 = *(v0 + 1712);
  v86 = *(v0 + 1688);
  v88 = *(v0 + 1680);
  v90 = *(v0 + 1672);
  v92 = *(v0 + 1664);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100C98C74()
{
  v1 = v0[313];
  v2 = v0[312];
  v3 = v0[281];
  v4 = v0[257];
  v5 = v0[254];
  v6 = v0[253];
  v7 = v0[251];
  sub_100391554((v0 + 20));

  sub_100016590(v2, v1);
  sub_100018D00(v7, type metadata accessor for SharingCircleSecretValue);
  (*(v5 + 8))(v4, v6);
  v56 = v0[315];
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[274];
  v11 = v0[273];
  v12 = v0[272];
  v13 = v0[271];
  v14 = v0[270];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[261];
  v23 = v0[260];
  v24 = v0[259];
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[255];
  v28 = v0[252];
  v29 = v0[251];
  v30 = v0[250];
  v31 = v0[249];
  v32 = v0[247];
  v33 = v0[246];
  v34 = v0[245];
  v35 = v0[244];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[236];
  v40 = v0[235];
  v41 = v0[234];
  v42 = v0[233];
  v43 = v0[229];
  v44 = v0[228];
  v45 = v0[226];
  v46 = v0[224];
  v47 = v0[221];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[214];
  v52 = v0[211];
  v53 = v0[210];
  v54 = v0[209];
  v55 = v0[208];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C98FD0()
{
  v1 = v0[318];
  v2 = v0[317];
  v3 = v0[316];
  v4 = v0[281];
  v5 = v0[257];
  v6 = v0[254];
  v7 = v0[253];
  v8 = v0[250];

  sub_100391554((v0 + 20));

  sub_100016590(v2, v1);
  sub_100018D00(v8, type metadata accessor for SharingCircleSecretValue);
  (*(v6 + 8))(v5, v7);
  v57 = v0[320];
  v9 = v0[276];
  v10 = v0[275];
  v11 = v0[274];
  v12 = v0[273];
  v13 = v0[272];
  v14 = v0[271];
  v15 = v0[270];
  v16 = v0[269];
  v17 = v0[268];
  v18 = v0[267];
  v21 = v0[266];
  v22 = v0[265];
  v23 = v0[261];
  v24 = v0[260];
  v25 = v0[259];
  v26 = v0[257];
  v27 = v0[256];
  v28 = v0[255];
  v29 = v0[252];
  v30 = v0[251];
  v31 = v0[250];
  v32 = v0[249];
  v33 = v0[247];
  v34 = v0[246];
  v35 = v0[245];
  v36 = v0[244];
  v37 = v0[240];
  v38 = v0[239];
  v39 = v0[238];
  v40 = v0[236];
  v41 = v0[235];
  v42 = v0[234];
  v43 = v0[233];
  v44 = v0[229];
  v45 = v0[228];
  v46 = v0[226];
  v47 = v0[224];
  v48 = v0[221];
  v49 = v0[218];
  v50 = v0[217];
  v51 = v0[216];
  v52 = v0[214];
  v53 = v0[211];
  v54 = v0[210];
  v55 = v0[209];
  v56 = v0[208];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C99334()
{
  v1 = v0[321];
  v2 = v0[281];
  v3 = v0[257];
  v4 = v0[254];
  v5 = v0[253];
  v6 = v0[249];
  v7 = v0[226];

  sub_100391554((v0 + 20));

  sub_100018D00(v6, type metadata accessor for SharingCircleSecretValue);
  sub_100018D00(v7, type metadata accessor for KeyDropJoinToken);
  (*(v4 + 8))(v3, v5);
  v56 = v0[323];
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[274];
  v11 = v0[273];
  v12 = v0[272];
  v13 = v0[271];
  v14 = v0[270];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[261];
  v23 = v0[260];
  v24 = v0[259];
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[255];
  v28 = v0[252];
  v29 = v0[251];
  v30 = v0[250];
  v31 = v0[249];
  v32 = v0[247];
  v33 = v0[246];
  v34 = v0[245];
  v35 = v0[244];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[236];
  v40 = v0[235];
  v41 = v0[234];
  v42 = v0[233];
  v43 = v0[229];
  v44 = v0[228];
  v45 = v0[226];
  v46 = v0[224];
  v47 = v0[221];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[214];
  v52 = v0[211];
  v53 = v0[210];
  v54 = v0[209];
  v55 = v0[208];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C996A4()
{
  v1 = v0[281];
  v2 = v0[257];
  v3 = v0[254];
  v4 = v0[253];
  sub_100391554((v0 + 20));

  (*(v3 + 8))(v2, v4);
  v53 = v0[337];
  v5 = v0[276];
  v6 = v0[275];
  v7 = v0[274];
  v8 = v0[273];
  v9 = v0[272];
  v10 = v0[271];
  v11 = v0[270];
  v12 = v0[269];
  v13 = v0[268];
  v14 = v0[267];
  v17 = v0[266];
  v18 = v0[265];
  v19 = v0[261];
  v20 = v0[260];
  v21 = v0[259];
  v22 = v0[257];
  v23 = v0[256];
  v24 = v0[255];
  v25 = v0[252];
  v26 = v0[251];
  v27 = v0[250];
  v28 = v0[249];
  v29 = v0[247];
  v30 = v0[246];
  v31 = v0[245];
  v32 = v0[244];
  v33 = v0[240];
  v34 = v0[239];
  v35 = v0[238];
  v36 = v0[236];
  v37 = v0[235];
  v38 = v0[234];
  v39 = v0[233];
  v40 = v0[229];
  v41 = v0[228];
  v42 = v0[226];
  v43 = v0[224];
  v44 = v0[221];
  v45 = v0[218];
  v46 = v0[217];
  v47 = v0[216];
  v48 = v0[214];
  v49 = v0[211];
  v50 = v0[210];
  v51 = v0[209];
  v52 = v0[208];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100C999CC()
{
  v1 = v0[281];
  v2 = v0[257];
  v3 = v0[254];
  v4 = v0[253];
  v5 = v0[214];
  v6 = v0[211];
  v7 = v0[210];
  sub_100391554((v0 + 20));

  sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  sub_100018D00(v5, type metadata accessor for KeyDropLostItemDates);
  (*(v3 + 8))(v2, v4);
  v56 = v0[343];
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[274];
  v11 = v0[273];
  v12 = v0[272];
  v13 = v0[271];
  v14 = v0[270];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[261];
  v23 = v0[260];
  v24 = v0[259];
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[255];
  v28 = v0[252];
  v29 = v0[251];
  v30 = v0[250];
  v31 = v0[249];
  v32 = v0[247];
  v33 = v0[246];
  v34 = v0[245];
  v35 = v0[244];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[236];
  v40 = v0[235];
  v41 = v0[234];
  v42 = v0[233];
  v43 = v0[229];
  v44 = v0[228];
  v45 = v0[226];
  v46 = v0[224];
  v47 = v0[221];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[214];
  v52 = v0[211];
  v53 = v0[210];
  v54 = v0[209];
  v55 = v0[208];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C99D4C()
{
  v1 = v0[281];
  v2 = v0[257];
  v3 = v0[254];
  v4 = v0[253];
  v5 = v0[214];
  v6 = v0[211];
  v7 = v0[210];
  sub_100391554((v0 + 20));

  sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
  sub_100018D00(v5, type metadata accessor for KeyDropLostItemDates);
  (*(v3 + 8))(v2, v4);
  v56 = v0[348];
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[274];
  v11 = v0[273];
  v12 = v0[272];
  v13 = v0[271];
  v14 = v0[270];
  v15 = v0[269];
  v16 = v0[268];
  v17 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[261];
  v23 = v0[260];
  v24 = v0[259];
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[255];
  v28 = v0[252];
  v29 = v0[251];
  v30 = v0[250];
  v31 = v0[249];
  v32 = v0[247];
  v33 = v0[246];
  v34 = v0[245];
  v35 = v0[244];
  v36 = v0[240];
  v37 = v0[239];
  v38 = v0[238];
  v39 = v0[236];
  v40 = v0[235];
  v41 = v0[234];
  v42 = v0[233];
  v43 = v0[229];
  v44 = v0[228];
  v45 = v0[226];
  v46 = v0[224];
  v47 = v0[221];
  v48 = v0[218];
  v49 = v0[217];
  v50 = v0[216];
  v51 = v0[214];
  v52 = v0[211];
  v53 = v0[210];
  v54 = v0[209];
  v55 = v0[208];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C9A0CC()
{
  v84 = v0;
  v1 = *(v0 + 2848);
  v2 = *(v0 + 2776);
  v3 = *(v0 + 1664);

  sub_10000B3A8(v3 + v1, &unk_101696900, &unk_10138B1E0);
  v4 = *(v0 + 2800);
  v5 = *(v0 + 2216);
  sub_100D11DC8(*(v0 + 1640), *(v0 + 2120), type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v79 = *(v0 + 2248);
  v81 = *(v0 + 2776);
  v9 = *(v0 + 2120);
  if (v8)
  {
    v10 = *(v0 + 2096);
    v75 = *(v0 + 2024);
    v77 = *(v0 + 2056);
    v11 = *(v0 + 1840);
    v71 = *(v0 + 1712);
    v73 = *(v0 + 2032);
    v67 = *(v0 + 1680);
    v69 = *(v0 + 1688);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v83 = v14;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v15 = *(v10 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v19 = sub_1000136BC(v16, v18, &v83);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to post notification for circle %{private,mask.hash}s, %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v14);

    sub_100391554(v0 + 160);

    sub_10000B3A8(v67, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v69, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v71, type metadata accessor for KeyDropLostItemDates);
    (*(v73 + 8))(v77, v75);
  }

  else
  {
    v21 = *(v0 + 2056);
    v22 = *(v0 + 2032);
    v23 = *(v0 + 2024);
    v24 = *(v0 + 1712);
    v25 = *(v0 + 1688);
    v26 = *(v0 + 1680);

    sub_100391554(v0 + 160);

    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_10000B3A8(v26, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v25, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v24, type metadata accessor for KeyDropLostItemDates);
    (*(v22 + 8))(v21, v23);
  }

  v27 = *(v0 + 2208);
  v28 = *(v0 + 2200);
  v29 = *(v0 + 2192);
  v30 = *(v0 + 2184);
  v31 = *(v0 + 2176);
  v32 = *(v0 + 2168);
  v33 = *(v0 + 2160);
  v34 = *(v0 + 2152);
  v35 = *(v0 + 2144);
  v36 = *(v0 + 2136);
  v39 = *(v0 + 2128);
  v40 = *(v0 + 2120);
  v41 = *(v0 + 2088);
  v42 = *(v0 + 2080);
  v43 = *(v0 + 2072);
  v44 = *(v0 + 2056);
  v45 = *(v0 + 2048);
  v46 = *(v0 + 2040);
  v47 = *(v0 + 2016);
  v48 = *(v0 + 2008);
  v49 = *(v0 + 2000);
  v50 = *(v0 + 1992);
  v51 = *(v0 + 1976);
  v52 = *(v0 + 1968);
  v53 = *(v0 + 1960);
  v54 = *(v0 + 1952);
  v55 = *(v0 + 1920);
  v56 = *(v0 + 1912);
  v57 = *(v0 + 1904);
  v58 = *(v0 + 1888);
  v59 = *(v0 + 1880);
  v60 = *(v0 + 1872);
  v61 = *(v0 + 1864);
  v62 = *(v0 + 1832);
  v63 = *(v0 + 1824);
  v64 = *(v0 + 1808);
  v65 = *(v0 + 1792);
  v66 = *(v0 + 1768);
  v68 = *(v0 + 1744);
  v70 = *(v0 + 1736);
  v72 = *(v0 + 1728);
  v74 = *(v0 + 1712);
  v76 = *(v0 + 1688);
  v78 = *(v0 + 1680);
  v80 = *(v0 + 1672);
  v82 = *(v0 + 1664);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100C9A72C()
{
  v84 = v0;
  v1 = v0[256];
  v2 = v0[253];
  v3 = *(v0[254] + 8);
  v3(v0[255], v2);
  v3(v1, v2);
  v4 = v0[352];
  v5 = v0[277];
  sub_100D11DC8(v0[205], v0[265], type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v79 = v0[281];
  v81 = v0[347];
  v9 = v0[265];
  if (v8)
  {
    v10 = v0[262];
    v75 = v0[253];
    v77 = v0[257];
    v11 = v0[230];
    v71 = v0[214];
    v73 = v0[254];
    v67 = v0[210];
    v69 = v0[211];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v83 = v14;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v15 = *(v10 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v19 = sub_1000136BC(v16, v18, &v83);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to post notification for circle %{private,mask.hash}s, %{public}@.", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v14);

    sub_100391554((v0 + 20));

    sub_10000B3A8(v67, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v69, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v71, type metadata accessor for KeyDropLostItemDates);
    (*(v73 + 8))(v77, v75);
  }

  else
  {
    v21 = v0[257];
    v22 = v0[254];
    v23 = v0[253];
    v24 = v0[214];
    v25 = v0[211];
    v26 = v0[210];

    sub_100391554((v0 + 20));

    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_10000B3A8(v26, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v25, &unk_101696900, &unk_10138B1E0);
    sub_100018D00(v24, type metadata accessor for KeyDropLostItemDates);
    (*(v22 + 8))(v21, v23);
  }

  v27 = v0[276];
  v28 = v0[275];
  v29 = v0[274];
  v30 = v0[273];
  v31 = v0[272];
  v32 = v0[271];
  v33 = v0[270];
  v34 = v0[269];
  v35 = v0[268];
  v36 = v0[267];
  v39 = v0[266];
  v40 = v0[265];
  v41 = v0[261];
  v42 = v0[260];
  v43 = v0[259];
  v44 = v0[257];
  v45 = v0[256];
  v46 = v0[255];
  v47 = v0[252];
  v48 = v0[251];
  v49 = v0[250];
  v50 = v0[249];
  v51 = v0[247];
  v52 = v0[246];
  v53 = v0[245];
  v54 = v0[244];
  v55 = v0[240];
  v56 = v0[239];
  v57 = v0[238];
  v58 = v0[236];
  v59 = v0[235];
  v60 = v0[234];
  v61 = v0[233];
  v62 = v0[229];
  v63 = v0[228];
  v64 = v0[226];
  v65 = v0[224];
  v66 = v0[221];
  v68 = v0[218];
  v70 = v0[217];
  v72 = v0[216];
  v74 = v0[214];
  v76 = v0[211];
  v78 = v0[210];
  v80 = v0[209];
  v82 = v0[208];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100C9AD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v11 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6[7] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[10] = v13;
  *v13 = v6;
  v13[1] = sub_100C9AEA8;

  return sub_1012D5050(a2, a3, a4, a5, 0, 0, 0);
}

uint64_t sub_100C9AEA8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C9AFEC, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100C9AFEC()
{
  v35 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF08);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  if (v8)
  {
    v33 = v0[11];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v13 = 136446979;
    v14 = sub_100C71778();
    v16 = v15;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v34);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v18 = *(v12 + 24);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = sub_1000136BC(v19, v21, &v34);

    *(v13 + 24) = v22;
    *(v13 + 32) = 2082;
    swift_getErrorValue();
    v24 = v0[2];
    v23 = v0[3];
    v25 = v0[4];
    v26 = Error.localizedDescription.getter();
    v28 = sub_1000136BC(v26, v27, &v34);

    *(v13 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save primaryAddress keys %{public}s,\nbeacon-id: %{private,mask.hash}s, error: %{public}s.", v13, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v30 = v0[8];
  v29 = v0[9];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100C9B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v11 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6[7] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[10] = v13;
  *v13 = v6;
  v13[1] = sub_100C9B458;

  return sub_1012D5050(a2, 0, 0, 0, a3, a4, a5);
}

uint64_t sub_100C9B458()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C9B59C, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100C9B59C()
{
  v35 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF08);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  if (v8)
  {
    v33 = v0[11];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v13 = 136446979;
    v14 = sub_100C71778();
    v16 = v15;
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    v17 = sub_1000136BC(v14, v16, &v34);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v18 = *(v12 + 24);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    v22 = sub_1000136BC(v19, v21, &v34);

    *(v13 + 24) = v22;
    *(v13 + 32) = 2082;
    swift_getErrorValue();
    v24 = v0[2];
    v23 = v0[3];
    v25 = v0[4];
    v26 = Error.localizedDescription.getter();
    v28 = sub_1000136BC(v26, v27, &v34);

    *(v13 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save secondaryAddress keys %{public}s,\n                                         beacon-id: %{private,mask.hash}s,\n                                         error: %{public}s.", v13, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v30 = v0[8];
  v29 = v0[9];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100C9B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[15] = v9;
  v10 = *(v9 - 8);
  v6[16] = v10;
  v11 = *(v10 + 64) + 15;
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C9B9FC, 0, 0);
}

uint64_t sub_100C9B9FC()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = *(v0[6] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v4 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_100C9BAD4;
  v7 = v0[17];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  return sub_100681FA0(v7, v2 + v4, v10, v8, v9);
}

uint64_t sub_100C9BAD4()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *v1;
  v6[19] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_100C9BC90, 0, 0);
  }

  else
  {
    v7 = v6[17];
    v8 = v6[13];
    v9 = v6[14];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_100C9BC90()
{
  v37 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BF08);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[14];
    v9 = v0[13];
    v33 = v0[12];
    v34 = v0[15];
    v35 = v0[19];
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v10 = 136446979;
    v11 = sub_100C71778();
    v13 = v12;
    sub_100018D00(v8, type metadata accessor for SharingCircleKeyManager.Instruction);
    v14 = sub_1000136BC(v11, v13, &v36);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v15 = *(v33 + 24);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
    v19 = sub_1000136BC(v16, v18, &v36);

    *(v10 + 24) = v19;
    *(v10 + 32) = 2082;
    swift_getErrorValue();
    v21 = v0[2];
    v20 = v0[3];
    v22 = v0[4];
    v23 = Error.localizedDescription.getter();
    v25 = sub_1000136BC(v23, v24, &v36);

    *(v10 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save connectionKeys %{public}s,\nbeacon-id: %{private,mask.hash}s, error: %{public}s.", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v27 = v0[13];
    v26 = v0[14];

    sub_100018D00(v27, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v26, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v28 = v0[17];
  v29 = v0[13];
  v30 = v0[14];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100C9BFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[49] = a7;
  v8[50] = v7;
  v8[47] = a5;
  v8[48] = a6;
  v8[45] = a3;
  v8[46] = a4;
  v8[43] = a1;
  v8[44] = a2;
  v9 = type metadata accessor for Connection.TransactionMode();
  v8[51] = v9;
  v10 = *(v9 - 8);
  v8[52] = v10;
  v11 = *(v10 + 64) + 15;
  v8[53] = swift_task_alloc();
  v12 = type metadata accessor for Table();
  v8[54] = v12;
  v13 = *(v12 - 8);
  v8[55] = v13;
  v14 = *(v13 + 64) + 15;
  v8[56] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[57] = v15;
  v16 = *(v15 - 8);
  v8[58] = v16;
  v17 = *(v16 + 64) + 15;
  v8[59] = swift_task_alloc();
  v18 = type metadata accessor for AES.GCM.SealedBox();
  v8[60] = v18;
  v19 = *(v18 - 8);
  v8[61] = v19;
  v20 = *(v19 + 64) + 15;
  v8[62] = swift_task_alloc();
  v21 = type metadata accessor for AES.GCM.Nonce();
  v8[63] = v21;
  v22 = *(v21 - 8);
  v8[64] = v22;
  v23 = *(v22 + 64) + 15;
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v24 = type metadata accessor for SymmetricKey();
  v8[67] = v24;
  v25 = *(v24 - 8);
  v8[68] = v25;
  v26 = *(v25 + 64) + 15;
  v8[69] = swift_task_alloc();

  return _swift_task_switch(sub_100C9C29C, v7, 0);
}

uint64_t sub_100C9C29C()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 560) = JSONDecoder.init()();
  sub_100D12E70();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v6 = *(v0 + 552);
  v7 = *(v0 + 528);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);
  v10 = *(v0 + 96);
  *(v0 + 144) = *(v0 + 80);
  *(v0 + 160) = v10;
  v11 = *(v0 + 128);
  *(v0 + 176) = *(v0 + 112);
  *(v0 + 192) = v11;
  *(v0 + 272) = v8;
  *(v0 + 280) = v9;
  sub_100017D5C(v8, v9);
  SymmetricKey.init<A>(data:)();
  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  *(v0 + 288) = v12;
  *(v0 + 296) = v13;
  sub_100017D5C(v12, v13);
  sub_1000E0A3C();
  AES.GCM.Nonce.init<A>(data:)();
  v14 = *(v0 + 496);
  (*(*(v0 + 512) + 16))(*(v0 + 520), *(v0 + 528), *(v0 + 504));
  v15 = *(v0 + 160);
  v16 = *(v0 + 168);
  *(v0 + 304) = v15;
  *(v0 + 312) = v16;
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  *(v0 + 320) = v17;
  *(v0 + 328) = v18;
  sub_100017D5C(v15, v16);
  sub_100017D5C(v17, v18);
  AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
  v19 = *(v0 + 552);
  v20 = *(v0 + 496);
  *(v0 + 568) = static AES.GCM.open(_:using:)();
  *(v0 + 576) = v21;
  sub_100D12EC4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  *(v0 + 584) = 0;
  v22 = *(v0 + 400);
  v23 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v23;
  v24 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v24;
  v25 = *(v22 + 120);
  *(v0 + 592) = v25;

  return _swift_task_switch(sub_100C9C6DC, v25, 0);
}

uint64_t sub_100C9C6DC()
{
  v1 = *(v0 + 592);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 600) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100C9C7BC;
  v5 = *(v0 + 592);

  return unsafeBlocking<A>(context:_:)(v0 + 336, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100C9C7BC()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 592);
  v4 = *v0;

  return _swift_task_switch(sub_100C9C8D4, v2, 0);
}

uint64_t sub_100C9C8D4()
{
  v1 = v0[50];
  v0[76] = v0[42];
  return _swift_task_switch(sub_100C9C8F8, v1, 0);
}

uint64_t sub_100C9C8F8()
{
  v1 = *(v0 + 472);
  v2 = *(*(v0 + 608) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  *(v0 + 616) = v2;

  v3 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  *(v0 + 632) = *(v3 + 20);
  *(v0 + 636) = *(v3 + 24);
  v4 = getuid();
  sub_1000294F0(v4);

  return _swift_task_switch(sub_100C9C9B0, v2, 0);
}

uint64_t sub_100C9C9B0()
{
  v1 = *(v0 + 616);
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_100694A6C(v0 + 16);
    sub_10020223C();
    v14 = swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v3 = *(v1 + 112);

  v4 = sub_1002072CC();
  if (!v4)
  {
    v20 = *(v0 + 616);
    sub_100694A6C(v0 + 16);
    sub_10020223C();
    v14 = swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v5 = v4;
  v41 = *(v0 + 584);
  v35 = *(v0 + 472);
  v6 = *(v0 + 448);
  v7 = *(v0 + 424);
  v8 = *(v0 + 416);
  v38 = *(v0 + 408);
  v9 = *(v0 + 392);
  v10 = *(v0 + 376);
  v31 = v10;
  v33 = *(v0 + 384);
  v11 = v9 + *(v0 + 636);
  v12 = v9 + *(v0 + 632);
  (*(*(v0 + 440) + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, *(v0 + 432));
  v13 = swift_task_alloc();
  v13[2] = v6;
  v13[3] = v11;
  v13[4] = v12;
  v13[5] = v35;
  v13[6] = v0 + 16;
  v13[7] = v31;
  v13[8] = v33;
  v13[9] = v5;
  (*(v8 + 104))(v7, enum case for Connection.TransactionMode.deferred(_:), v38);
  Connection.transaction(_:block:)();
  v14 = v41;
  v15 = *(v0 + 616);
  if (v41)
  {
    v16 = *(v0 + 440);
    v39 = *(v0 + 432);
    v42 = *(v0 + 448);
    v36 = *(v0 + 424);
    v17 = *(v0 + 408);
    v18 = *(v0 + 416);
    sub_100694A6C(v0 + 16);

    (*(v18 + 8))(v36, v17);

    (*(v16 + 8))(v42, v39);
LABEL_8:
    *(v0 + 624) = v14;
    v22 = *(v0 + 400);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    v23 = sub_100C9CE48;
    v24 = v22;
    goto LABEL_9;
  }

  v25 = *(v0 + 464);
  v37 = *(v0 + 456);
  v40 = *(v0 + 472);
  v26 = *(v0 + 440);
  v32 = *(v0 + 432);
  v34 = *(v0 + 448);
  v27 = *(v0 + 416);
  v30 = *(v0 + 424);
  v28 = *(v0 + 408);
  v43 = *(v0 + 400);
  sub_100694A6C(v0 + 16);

  (*(v27 + 8))(v30, v28);

  (*(v26 + 8))(v34, v32);
  (*(v25 + 8))(v40, v37);
  v23 = sub_100C9CCF8;
  v24 = v43;
LABEL_9:

  return _swift_task_switch(v23, v24, 0);
}

uint64_t sub_100C9CCF8()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[66];
  v12 = v0[67];
  v13 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[61];
  v8 = v0[62];
  v9 = v0[60];
  v14 = v0[59];
  v15 = v0[56];
  v16 = v0[53];
  sub_100016590(v0[71], v0[72]);

  sub_100922D9C((v0 + 18));
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C9CE48()
{
  v1 = v0[70];
  v20 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[63];
  v6 = v0[64];
  v7 = v0[61];
  v8 = v0[62];
  v9 = v0[60];
  sub_100016590(v0[71], v0[72]);

  sub_100922D9C((v0 + 18));
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v20, v3);
  v10 = v0[78];
  v11 = v0[69];
  v12 = v0[66];
  v13 = v0[65];
  v14 = v0[62];
  v15 = v0[59];
  v16 = v0[56];
  v17 = v0[53];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C9CF9C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_101697610, &unk_10138C4B0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleSecret();
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v8 = *(v7 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v9 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v3[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v11 = type metadata accessor for SharingCircleSecretValue();
  v3[29] = v11;
  v12 = *(v11 - 8);
  v3[30] = v12;
  v13 = *(v12 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v3[40] = v15;
  v16 = *(v15 - 8);
  v3[41] = v16;
  v3[42] = *(v16 + 64);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return _swift_task_switch(sub_100C9D30C, v2, 0);
}

uint64_t sub_100C9D30C()
{
  v69 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v62 = *(v0 + 312);
  v59 = *(v0 + 304);
  v60 = *(v0 + 352);
  v4 = *(v0 + 128);
  v65 = *(v0 + 96);
  v67 = *(v0 + 360);
  v61 = *(v0 + 88);
  v5 = *(v0 + 48);
  v58 = *(v0 + 56);
  v6 = sub_101315BA4();
  v8 = v7;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v6, v8);
  v9 = *(v3 + 16);
  *(v0 + 376) = v9;
  *(v0 + 384) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v67, v1, v2);
  v57 = v4;
  v10 = *(v4 + 20);
  *(v0 + 504) = v10;
  v9(v60, v58 + v10, v2);
  sub_100D11DC8(v5, v59, type metadata accessor for SharingCircleSecretValue);
  *v62 = xmmword_10138C660;
  v9(v62 + v61[5], v67, v2);
  v9(v62 + v61[6], v60, v2);
  v11 = sub_101315BA4();
  v12 = (v62 + v61[8]);
  *v12 = v11;
  v12[1] = v13;
  v14 = sub_101315964();
  v16 = v15;
  sub_100018D00(v59, type metadata accessor for SharingCircleSecretValue);
  v17 = *(v3 + 8);
  *(v0 + 392) = v17;
  *(v0 + 400) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v60, v2);
  v17(v67, v2);
  v18 = (v62 + v61[7]);
  *v18 = v14;
  v18[1] = v16;
  v19 = *(v65 + 56);
  *(v0 + 408) = v19;
  *(v0 + 416) = (v65 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v19(v62, 0, 1, v61);
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 296);
  v22 = *(v0 + 216);
  v21 = *(v0 + 224);
  v23 = *(v0 + 208);
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);
  v26 = type metadata accessor for Logger();
  *(v0 + 424) = sub_1000076D4(v26, qword_10177BF08);
  sub_100D11DC8(v24, v21, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v25, v20, type metadata accessor for SharingCircleSecretValue);
  sub_100D11DC8(v24, v22, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v24, v23, type metadata accessor for SharingCircleKeyManager.Instruction);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 296);
    v31 = *(v0 + 216);
    v30 = *(v0 + 224);
    v66 = *(v0 + 208);
    v63 = *(v0 + 320);
    v64 = *(v0 + 128);
    v32 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v32 = 136447491;
    v33 = sub_100C71778();
    v35 = v34;
    sub_100018D00(v30, type metadata accessor for SharingCircleKeyManager.Instruction);
    v36 = sub_1000136BC(v33, v35, &v68);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = sub_101315964();
    v39 = v38;
    sub_100018D00(v29, type metadata accessor for SharingCircleSecretValue);
    v40 = sub_1000136BC(v37, v39, &v68);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2160;
    *(v32 + 24) = 1752392040;
    *(v32 + 32) = 2081;
    v41 = *(v57 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_100018D00(v31, type metadata accessor for SharingCircleKeyManager.Instruction);
    v45 = sub_1000136BC(v42, v44, &v68);

    *(v32 + 34) = v45;
    *(v32 + 42) = 2160;
    *(v32 + 44) = 1752392040;
    *(v32 + 52) = 2081;
    v46 = v66 + *(v64 + 24);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    sub_100018D00(v66, type metadata accessor for SharingCircleKeyManager.Instruction);
    v50 = sub_1000136BC(v47, v49, &v68);

    *(v32 + 54) = v50;
    _os_log_impl(&_mh_execute_header, v27, v28, "Save secret value: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v32, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v51 = *(v0 + 296);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    v54 = *(v0 + 208);

    sub_100018D00(v54, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v53, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v51, type metadata accessor for SharingCircleSecretValue);
    sub_100018D00(v52, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v55 = *(*(v0 + 64) + 120);
  *(v0 + 432) = v55;

  return _swift_task_switch(sub_100C9D928, v55, 0);
}

uint64_t sub_100C9D928()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  (*(v0 + 376))(v3, *(v0 + 56) + *(v0 + 504), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 440) = v8;
  *(v8 + 16) = v1;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 448) = v10;
  v11 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v10 = v0;
  v10[1] = sub_100C9DAA0;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100D12E58, v8, v11);
}

uint64_t sub_100C9DAA0()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v5 = *v0;

  return _swift_task_switch(sub_100C9DBCC, v3, 0);
}

uint64_t sub_100C9DBCC()
{
  v1 = v0[8];
  v0[57] = v0[4];
  return _swift_task_switch(sub_100C9DBF0, v1, 0);
}

uint64_t sub_100C9DBF0()
{
  v161 = v0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  v1 = (v0 + 40);
  v2 = *(v0 + 456);
  v3 = *(v2 + 16);
  if (v3)
  {
    v157 = *(v0 + 288);
    v4 = *(v0 + 96);
    v145 = *(v0 + 128);
    v144 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v5 = v2 + v144;
    v6 = *(v4 + 72);
    v159 = (*(v0 + 240) + 56);
    v155 = _swiftEmptyArrayStorage;
    v156 = v6;
    while (1)
    {
      v10 = *(v0 + 120);
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      sub_100D11DC8(v5, v10, type metadata accessor for SharingCircleSecret);
      v13 = *(v12 + 28);
      v14 = (v10 + *(v12 + 32));
      v15 = *v14;
      v16 = v14[1];
      v17 = v10 + v13;
      v18 = *(v10 + v13);
      v19 = *(v17 + 8);
      sub_100017D5C(*v14, v16);

      sub_101316078(v15, v16, v18, v19, v11);
      v20 = *(v0 + 288);
      v21 = *(v0 + 80);
      (*v159)(v21, 0, 1, *(v0 + 232));
      sub_100D12974(v21, v20, type metadata accessor for SharingCircleSecretValue);
      v22 = *(v0 + 232);
      sub_100D12974(*(v0 + 288), *(v0 + 280), type metadata accessor for SharingCircleSecretValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v24 = 7;
          }

          else
          {
            v24 = 8;
          }

LABEL_17:
          v25 = *(v0 + 272);
          v26 = *(v0 + 232);
          v27 = *(v0 + 48);
          sub_100018D00(*(v0 + 280), type metadata accessor for SharingCircleSecretValue);
          sub_100D11DC8(v27, v25, type metadata accessor for SharingCircleSecretValue);
          v28 = swift_getEnumCaseMultiPayload();
          if (v28 > 2)
          {
            if (v28 <= 4)
            {
              if (v28 == 3)
              {
                v29 = 10;
              }

              else
              {
                v29 = 11;
              }

              goto LABEL_29;
            }

            if (v28 != 5)
            {
              v29 = 14;
              goto LABEL_29;
            }

LABEL_25:
            sub_100018D00(*(v0 + 272), type metadata accessor for SharingCircleSecretValue);
LABEL_69:
            v9 = *(v0 + 120);
            v8 = type metadata accessor for SharingCircleSecret;
            goto LABEL_4;
          }

          if (!v28)
          {
            goto LABEL_25;
          }

          if (v28 == 1)
          {
            v29 = 7;
          }

          else
          {
            v29 = 8;
          }

LABEL_29:
          sub_100018D00(*(v0 + 272), type metadata accessor for SharingCircleSecretValue);
          if (v24 > 10)
          {
            if (v24 > 12)
            {
              v30 = 0x7461636F4C626577;
              v31 = 0xEE0079654B6E6F69;
              if (v29 <= 10)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v30 = 0x656B6F546E696F6ALL;
              v31 = 0xE90000000000006ELL;
              if (v29 <= 10)
              {
                goto LABEL_44;
              }
            }
          }

          else if (v24 > 8)
          {
            v30 = 0x656E774F7261656ELL;
            v31 = 0xEC00000079654B72;
            if (v29 <= 10)
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v24 == 7)
            {
              v30 = 0xD000000000000012;
              v31 = 0x80000001013475D0;
              if (v29 > 10)
              {
                goto LABEL_33;
              }

LABEL_44:
              if (v29 > 8)
              {
                v32 = 0xEC00000079654B72;
                if (v30 == 0x656E774F7261656ELL)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (v29 == 7)
                {
                  v32 = 0x80000001013475D0;
                  if (v30 != 0xD000000000000012)
                  {
                    goto LABEL_58;
                  }
                }

                else
                {
                  v32 = 0x80000001013475F0;
                  if (v30 != 0xD000000000000011)
                  {
                    goto LABEL_58;
                  }
                }

LABEL_49:
                if (v31 == v32)
                {

                  goto LABEL_59;
                }
              }

LABEL_58:
              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v33 & 1) == 0)
              {
                goto LABEL_69;
              }

LABEL_59:
              v34 = *(v0 + 368);
              v35 = *(v0 + 320);
              v36 = *(v0 + 120);
              v37 = *(*(v0 + 88) + 20);
              sub_100D13BF8(&qword_1016984A0, &type metadata accessor for UUID);
              v158 = v3;
              if (dispatch thunk of static Equatable.== infix(_:_:)())
              {
                v38 = *(v0 + 424);
                v39 = *(v0 + 384);
                v40 = *(v0 + 256);
                v42 = *(v0 + 168);
                v41 = *(v0 + 176);
                v43 = *(v0 + 160);
                v45 = *(v0 + 48);
                v44 = *(v0 + 56);
                (*(v0 + 376))(*(v0 + 344), *(v0 + 368), *(v0 + 320));
                sub_100D11DC8(v44, v41, type metadata accessor for SharingCircleKeyManager.Instruction);
                sub_100D11DC8(v45, v40, type metadata accessor for SharingCircleSecretValue);
                sub_100D11DC8(v44, v42, type metadata accessor for SharingCircleKeyManager.Instruction);
                sub_100D11DC8(v44, v43, type metadata accessor for SharingCircleKeyManager.Instruction);
                v46 = Logger.logObject.getter();
                v47 = static os_log_type_t.default.getter();
                v48 = os_log_type_enabled(v46, v47);
                v49 = *(v0 + 392);
                v50 = *(v0 + 400);
                v51 = *(v0 + 344);
                v52 = *(v0 + 320);
                v53 = *(v0 + 256);
                v54 = *(v0 + 168);
                v55 = *(v0 + 176);
                v149 = v54;
                v152 = *(v0 + 160);
                if (v48)
                {
                  v138 = *(v0 + 128);
                  v147 = *(v0 + 120);
                  log = v46;
                  v56 = swift_slowAlloc();
                  v160[0] = swift_slowAlloc();
                  *v56 = 141559811;
                  *(v56 + 4) = 1752392040;
                  *(v56 + 12) = 2081;
                  sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
                  v140 = v47;
                  v57 = dispatch thunk of CustomStringConvertible.description.getter();
                  v58 = v52;
                  v60 = v59;
                  v49(v51, v58);
                  v61 = sub_1000136BC(v57, v60, v160);

                  *(v56 + 14) = v61;
                  *(v56 + 22) = 2082;
                  v62 = sub_100C71778();
                  v64 = v63;
                  sub_100018D00(v55, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v65 = sub_1000136BC(v62, v64, v160);

                  *(v56 + 24) = v65;
                  *(v56 + 32) = 2080;
                  v66 = sub_101315964();
                  v68 = v67;
                  sub_100018D00(v53, type metadata accessor for SharingCircleSecretValue);
                  v69 = sub_1000136BC(v66, v68, v160);

                  *(v56 + 34) = v69;
                  *(v56 + 42) = 2160;
                  *(v56 + 44) = 1752392040;
                  *(v56 + 52) = 2081;
                  v70 = v149 + *(v138 + 20);
                  v71 = dispatch thunk of CustomStringConvertible.description.getter();
                  v73 = v72;
                  sub_100018D00(v149, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v74 = sub_1000136BC(v71, v73, v160);

                  *(v56 + 54) = v74;
                  *(v56 + 62) = 2160;
                  *(v56 + 64) = 1752392040;
                  *(v56 + 72) = 2081;
                  v75 = v152 + *(v145 + 24);
                  v76 = dispatch thunk of CustomStringConvertible.description.getter();
                  v78 = v77;
                  sub_100018D00(v152, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v79 = sub_1000136BC(v76, v78, v160);

                  *(v56 + 74) = v79;
                  _os_log_impl(&_mh_execute_header, log, v140, "Keeping existing key %{private,mask.hash}s: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v56, 0x52u);
                  swift_arrayDestroy();

                  v80 = v147;
                }

                else
                {
                  v123 = *(v0 + 120);

                  sub_100018D00(v152, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v149, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v53, type metadata accessor for SharingCircleSecretValue);
                  sub_100018D00(v55, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v49(v51, v52);
                  v80 = v123;
                }

                sub_100018D00(v80, type metadata accessor for SharingCircleSecret);
                v3 = v158;
                v6 = v156;
                v125 = *(v0 + 408);
                v124 = *(v0 + 416);
                v126 = *(v0 + 312);
                v127 = *(v0 + 88);
                sub_10000B3A8(v126, &qword_101699BB0, &qword_1013B35F0);
                v125(v126, 1, 1, v127);
                goto LABEL_5;
              }

              if (((1 << v24) & 0x7D80) != 0)
              {
                sub_100D11DC8(*(v0 + 120), *(v0 + 112), type metadata accessor for SharingCircleSecret);
                v81 = v155;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v81 = sub_100A5B984(0, v155[2] + 1, 1, v155);
                }

                v83 = v81[2];
                v82 = v81[3];
                if (v83 >= v82 >> 1)
                {
                  v81 = sub_100A5B984(v82 > 1, v83 + 1, 1, v81);
                }

                v84 = *(v0 + 200);
                v146 = *(v0 + 264);
                v148 = *(v0 + 192);
                v150 = *(v0 + 184);
                v153 = *(v0 + 424);
                v85 = *(v0 + 112);
                v86 = *(v0 + 120);
                v87 = *(v0 + 104);
                v88 = *(v0 + 48);
                v89 = *(v0 + 56);
                v81[2] = v83 + 1;
                sub_100D12974(v85, v81 + v144 + v83 * v156, type metadata accessor for SharingCircleSecret);
                v155 = v81;
                *(v0 + 40) = v81;
                sub_100D11DC8(v86, v87, type metadata accessor for SharingCircleSecret);
                sub_100D11DC8(v89, v84, type metadata accessor for SharingCircleKeyManager.Instruction);
                sub_100D11DC8(v88, v146, type metadata accessor for SharingCircleSecretValue);
                sub_100D11DC8(v89, v148, type metadata accessor for SharingCircleKeyManager.Instruction);
                sub_100D11DC8(v89, v150, type metadata accessor for SharingCircleKeyManager.Instruction);
                v90 = Logger.logObject.getter();
                v91 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v90, v91))
                {
                  v92 = *(v0 + 320);
                  v93 = *(v0 + 264);
                  v141 = v90;
                  v94 = *(v0 + 192);
                  v95 = *(v0 + 200);
                  loga = *(v0 + 184);
                  v139 = *(v0 + 128);
                  v154 = *(v0 + 120);
                  v96 = *(v0 + 104);
                  v151 = v91;
                  v97 = *(v0 + 88);
                  v98 = swift_slowAlloc();
                  v160[0] = swift_slowAlloc();
                  *v98 = 141559811;
                  *(v98 + 4) = 1752392040;
                  *(v98 + 12) = 2081;
                  v99 = *(v97 + 20);
                  sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
                  v100 = dispatch thunk of CustomStringConvertible.description.getter();
                  v102 = v101;
                  sub_100018D00(v96, type metadata accessor for SharingCircleSecret);
                  v103 = sub_1000136BC(v100, v102, v160);

                  *(v98 + 14) = v103;
                  *(v98 + 22) = 2082;
                  v104 = sub_100C71778();
                  v106 = v105;
                  sub_100018D00(v95, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v107 = sub_1000136BC(v104, v106, v160);

                  *(v98 + 24) = v107;
                  *(v98 + 32) = 2080;
                  v108 = sub_101315964();
                  v110 = v109;
                  sub_100018D00(v93, type metadata accessor for SharingCircleSecretValue);
                  v111 = sub_1000136BC(v108, v110, v160);

                  *(v98 + 34) = v111;
                  *(v98 + 42) = 2160;
                  *(v98 + 44) = 1752392040;
                  *(v98 + 52) = 2081;
                  v112 = v94 + *(v139 + 20);
                  v113 = dispatch thunk of CustomStringConvertible.description.getter();
                  v115 = v114;
                  sub_100018D00(v94, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v116 = sub_1000136BC(v113, v115, v160);

                  *(v98 + 54) = v116;
                  *(v98 + 62) = 2160;
                  *(v98 + 64) = 1752392040;
                  *(v98 + 72) = 2081;
                  v117 = loga + *(v145 + 24);
                  v118 = dispatch thunk of CustomStringConvertible.description.getter();
                  v120 = v119;
                  sub_100018D00(loga, type metadata accessor for SharingCircleKeyManager.Instruction);
                  v121 = sub_1000136BC(v118, v120, v160);

                  *(v98 + 74) = v121;
                  _os_log_impl(&_mh_execute_header, v141, v151, "Deleting existing key %{private,mask.hash}s: %{public}s,\ntype: %s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v98, 0x52u);
                  swift_arrayDestroy();

                  v122 = v154;
                }

                else
                {
                  v128 = *(v0 + 264);
                  v130 = *(v0 + 192);
                  v129 = *(v0 + 200);
                  v131 = *(v0 + 184);
                  v132 = *(v0 + 120);
                  v133 = *(v0 + 104);

                  sub_100018D00(v131, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v130, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v128, type metadata accessor for SharingCircleSecretValue);
                  sub_100018D00(v129, type metadata accessor for SharingCircleKeyManager.Instruction);
                  sub_100018D00(v133, type metadata accessor for SharingCircleSecret);
                  v122 = v132;
                }

                sub_100018D00(v122, type metadata accessor for SharingCircleSecret);
                v3 = v158;
                v6 = v156;
                goto LABEL_5;
              }

              goto LABEL_69;
            }

            v30 = 0xD000000000000011;
            v31 = 0x80000001013475F0;
            if (v29 <= 10)
            {
              goto LABEL_44;
            }
          }

LABEL_33:
          if (v29 > 12)
          {
            v32 = 0xEE0079654B6E6F69;
            if (v30 != 0x7461636F4C626577)
            {
              goto LABEL_58;
            }

            goto LABEL_49;
          }

          v32 = 0xE90000000000006ELL;
          if (v30 == 0x656B6F546E696F6ALL)
          {
            goto LABEL_49;
          }

          goto LABEL_58;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v24 = 10;
          }

          else
          {
            v24 = 11;
          }

          goto LABEL_17;
        }

        if (EnumCaseMultiPayload != 5)
        {
          v24 = 14;
          goto LABEL_17;
        }
      }

      v7 = *(v0 + 280);
      sub_100018D00(*(v0 + 120), type metadata accessor for SharingCircleSecret);
      v8 = type metadata accessor for SharingCircleSecretValue;
      v9 = v7;
LABEL_4:
      sub_100018D00(v9, v8);
LABEL_5:
      v5 += v6;
      if (!--v3)
      {
        v134 = *(v0 + 456);

        v1 = (v0 + 40);
        v135 = v155;
        goto LABEL_76;
      }
    }
  }

  v135 = _swiftEmptyArrayStorage;
LABEL_76:
  *(v0 + 464) = v135;
  sub_100EC09A4(*(v0 + 312), v1, *(v0 + 72));
  v136 = *(v0 + 432);

  return _swift_task_switch(sub_100C9EEC0, v136, 0);
}

uint64_t sub_100C9EEE8()
{
  v1 = v0[59];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_100C9EFE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100C9EFE0()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = sub_100C9F6AC;
  }

  else
  {
    v5 = *(v2 + 480);

    v4 = sub_100C9F0FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100C9F118()
{
  v74 = v0;
  v1 = v0[53];
  v2 = v0[31];
  v3 = v0[18];
  v4 = v0[17];
  v6 = v0[6];
  v5 = v0[7];
  sub_100D11DC8(v5, v0[19], type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v6, v2, type metadata accessor for SharingCircleSecretValue);
  sub_100D11DC8(v5, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v5, v4, type metadata accessor for SharingCircleKeyManager.Instruction);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[58];
  v69 = v0[46];
  v71 = v0[49];
  v67 = v0[40];
  v11 = v0[31];
  v12 = v0[18];
  v13 = v0[19];
  v14 = v0[17];
  if (v9)
  {
    v15 = v0[16];
    v65 = v0[9];
    v63 = v0[50];
    v16 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v16 = 136446978;
    log = v7;
    v17 = sub_100C71778();
    v19 = v18;
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v20 = sub_1000136BC(v17, v19, &v73);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_101315964();
    v23 = v22;
    sub_100018D00(v11, type metadata accessor for SharingCircleSecretValue);
    v24 = sub_1000136BC(v21, v23, &v73);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = *(v15 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    v29 = sub_1000136BC(v26, v28, &v73);

    *(v16 + 24) = v29;
    *(v16 + 32) = 2080;
    v30 = v14 + *(v15 + 24);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    v34 = sub_1000136BC(v31, v33, &v73);

    *(v16 + 34) = v34;
    _os_log_impl(&_mh_execute_header, log, v8, "Saved key : %{public}s, type: %s,\nshare-id: %s, beacon-id: %s.", v16, 0x2Au);
    swift_arrayDestroy();

    v71(v69, v67);
    sub_10000B3A8(v65, &qword_1016975C8, &qword_10138C1F0);
  }

  else
  {
    v35 = v0[9];

    sub_100018D00(v14, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v11, type metadata accessor for SharingCircleSecretValue);
    sub_100018D00(v13, type metadata accessor for SharingCircleKeyManager.Instruction);
    v71(v69, v67);
    sub_10000B3A8(v35, &qword_1016975C8, &qword_10138C1F0);
  }

  v37 = v0[45];
  v36 = v0[46];
  v39 = v0[43];
  v38 = v0[44];
  v40 = v0[38];
  v42 = v0[36];
  v41 = v0[37];
  v43 = v0[35];
  v46 = v0[34];
  v47 = v0[33];
  v48 = v0[32];
  v49 = v0[31];
  v50 = v0[28];
  v51 = v0[27];
  v52 = v0[26];
  v53 = v0[25];
  v54 = v0[24];
  v55 = v0[23];
  v56 = v0[22];
  v57 = v0[21];
  loga = v0[20];
  v60 = v0[19];
  v61 = v0[18];
  v62 = v0[17];
  v64 = v0[15];
  v66 = v0[14];
  v68 = v0[13];
  v70 = v0[10];
  v72 = v0[9];
  sub_10000B3A8(v0[39], &qword_101699BB0, &qword_1013B35F0);

  v44 = v0[1];

  return v44();
}

uint64_t sub_100C9F6AC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100C9F718, v2, 0);
}

uint64_t sub_100C9F718()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 72);
  (*(v0 + 392))(*(v0 + 368), *(v0 + 320));
  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);
  v36 = *(v0 + 496);
  v3 = *(v0 + 464);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 288);
  v11 = *(v0 + 296);
  v12 = *(v0 + 280);
  v15 = *(v0 + 272);
  v16 = *(v0 + 264);
  v17 = *(v0 + 256);
  v18 = *(v0 + 248);
  v19 = *(v0 + 224);
  v20 = *(v0 + 216);
  v21 = *(v0 + 208);
  v22 = *(v0 + 200);
  v23 = *(v0 + 192);
  v24 = *(v0 + 184);
  v25 = *(v0 + 176);
  v26 = *(v0 + 168);
  v27 = *(v0 + 160);
  v28 = *(v0 + 152);
  v29 = *(v0 + 144);
  v30 = *(v0 + 136);
  v31 = *(v0 + 120);
  v32 = *(v0 + 112);
  v33 = *(v0 + 104);
  v34 = *(v0 + 80);
  v35 = *(v0 + 72);

  sub_10000B3A8(v8, &qword_101699BB0, &qword_1013B35F0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100C9F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = a4;
  v6 = sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SharingCircleSecret();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = (&v22 - v16);
  sub_1000D2A70(a3, v9, &qword_101699BB0, &qword_1013B35F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &qword_101699BB0, &qword_1013B35F0);
  }

  else
  {
    sub_100D12974(v9, v17, type metadata accessor for SharingCircleSecret);
    sub_100D4346C(v17);
    result = sub_100018D00(v17, type metadata accessor for SharingCircleSecret);
    if (v4)
    {
      return result;
    }
  }

  v19 = *v23;
  v20 = *(*v23 + 16);

  if (!v20)
  {
  }

  v21 = 0;
  while (v21 < *(v19 + 16))
  {
    sub_100D11DC8(v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v15, type metadata accessor for SharingCircleSecret);
    sub_100D44DD8(v15);
    if (v4)
    {
      sub_100018D00(v15, type metadata accessor for SharingCircleSecret);
    }

    ++v21;
    result = sub_100018D00(v15, type metadata accessor for SharingCircleSecret);
    if (v20 == v21)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100C9FBF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_10169E358, &qword_101404C50) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v3[14] = v13;
  *v13 = v3;
  v13[1] = sub_100C9FDBC;

  return daemon.getter();
}

uint64_t sub_100C9FDBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100C9FF98;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C9FF98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v10 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100CA05D4;
  }

  else
  {
    v7 = v3[15];
    v8 = v3[4];

    v6 = sub_100CA00C0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100CA00C0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(v7 + 192))(v6, v7);
  v8 = v3[3];
  v9 = v3[4];
  sub_1000035D0(v3, v8);
  *(v0 + 160) = (*(v9 + 112))(v8, v9) & 1;
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_100CA021C;
  v11 = *(v0 + 136);
  v12 = *(v0 + 104);
  v13 = *(v0 + 56);

  return sub_1010D4938(v13, v12);
}

uint64_t sub_100CA021C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100CA032C, v2, 0);
}

uint64_t sub_100CA032C()
{
  v1 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 56), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 40);
    sub_10000B3A8(*(v0 + 48), &qword_10169E358, &qword_101404C50);
    v4 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  else
  {
    v5 = *(v0 + 48);
    sub_10112FB78(*(v0 + 160), *(v0 + 40));
    sub_100018D00(v5, type metadata accessor for KeySyncSnapshot);
  }

  v6 = *(v0 + 136);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  v14 = *(v0 + 40);
  v16 = *(v0 + 32);
  sub_1010D4F70(v10, v14, *(v0 + 16));
  sub_10000B3A8(v14, &unk_1016AF8A0, &unk_10139D7C0);
  sub_10000B3A8(v13, &qword_10169E358, &qword_101404C50);
  (*(v12 + 8))(v10, v11);
  (*(v8 + 8))(v7, v9);

  return _swift_task_switch(sub_100CA0528, v16, 0);
}

uint64_t sub_100CA0528()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100CA05D4()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_100CA0680(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v3[11] = v11;
  *v11 = v3;
  v11[1] = sub_100CA07D0;

  return daemon.getter();
}

uint64_t sub_100CA07D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100D13BF8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D13BF8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100968A04;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100CA09AC()
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100D12E04();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v0)
  {
    sub_100016590(v9, v10);
  }

  else
  {
    v6 = v4;
    v7 = v5;
    Data.spEncrypt(key:ivLength:)();
    sub_100016590(v6, v7);

    return sub_100016590(v9, v10);
  }
}

uint64_t sub_100CA0AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a2;
  v4[12] = v3;
  v4[10] = a1;
  v6 = type metadata accessor for EncryptedData();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[16] = v9;
  *v9 = v4;
  v9[1] = sub_100CA0BE4;

  return sub_100C7BA0C((v4 + 2), a3);
}

uint64_t sub_100CA0BE4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = *(v2 + 120);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 96);

    return _swift_task_switch(sub_100CA0D34, v8, 0);
  }
}

uint64_t sub_100CA0D34()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v3 = 9;
    swift_willThrow();
LABEL_5:
    sub_1001BAF34((v0 + 2));
    v11 = v0[15];

    v12 = v0[1];

    return v12();
  }

  v21 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_10002E98C(v2, v1);
  sub_100017D5C(v2, v1);
  PropertyListDecoder.init()();
  sub_100D13BF8(&qword_10169C990, &type metadata accessor for EncryptedData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v21)
  {

    sub_100006654(v2, v1);
    sub_100006654(v2, v1);
    goto LABEL_5;
  }

  v14 = v0[15];
  v22 = EncryptedData.decrypt(key:)();
  v16 = v15;
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[13];

  sub_100006654(v2, v1);
  sub_100006654(v2, v1);
  sub_1001BAF34((v0 + 2));
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20(v22, v16);
}

uint64_t sub_100CA0FC8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v72 = a3;
  v71 = a2;
  v6 = sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = __chkstk_darwin(v10);
  v67 = &v60 - v14;
  __chkstk_darwin(v13);
  v86 = &v60 - v15;
  v16 = type metadata accessor for EncryptedData();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v22 = *&a1[*(v21 + 24)];
  v23 = *(v22 + 16);
  if (!v23)
  {
    v83 = _swiftEmptyArrayStorage;
LABEL_22:
    v58 = *a1;
    v59 = v21;
    result = sub_100D11DC8(&a1[*(v21 + 20)], &a4[*(v21 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    *a4 = v58;
    *&a4[*(v59 + 24)] = v83;
    return result;
  }

  v60 = v21;
  v61 = a1;
  v62 = a4;
  v90 = _swiftEmptyArrayStorage;
  result = sub_101123DD0(0, v23, 0);
  v70 = v22;
  if (*(v22 + 16))
  {
    v83 = v90;
    v25 = v70 + 32;
    v65 = (v17 + 56);
    v85 = (v17 + 48);
    v69 = type metadata accessor for PropertyListDecoder();
    v26 = 0;
    v64 = v23 - 1;
    v66 = v12;
    v63 = v20;
    v82 = (v17 + 8);
    while (1)
    {
      v88[0] = *v25;
      v28 = *(v25 + 32);
      v27 = *(v25 + 48);
      v29 = *(v25 + 16);
      v89 = *(v25 + 64);
      v88[2] = v28;
      v88[3] = v27;
      v88[1] = v29;
      v30 = *(v69 + 48);
      v31 = *(v69 + 52);
      swift_allocObject();
      sub_1003914F8(v88, v87);
      PropertyListDecoder.init()();
      sub_100D13BF8(&qword_10169C990, &type metadata accessor for EncryptedData);
      v32 = v84;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v32)
      {
        v84 = v32;

        sub_100391554(v88);
      }

      v33 = EncryptedData.decrypt(key:)();
      v84 = 0;
      v79 = v34;
      v80 = v33;
      v81 = v26;
      v78 = *&v88[0];
      v35 = *v82;
      (*v82)(v20, v16);

      v36 = v86;
      (*v65)(v86, 1, 1, v16);
      v37 = v67;
      sub_1000D2A70(v36, v67, &qword_1016B9AE8, &unk_1013E35D0);
      v38 = *v85;
      v39 = (*v85)(v37, 1, v16);
      v75 = v35;
      if (v39 == 1)
      {
        sub_10000B3A8(v37, &qword_1016B9AE8, &unk_1013E35D0);
        v77 = 0;
        v76 = 0xF000000000000000;
      }

      else
      {
        v77 = EncryptedData.cipherText.getter();
        v76 = v40;
        v35(v37, v16);
      }

      v41 = v68;
      v42 = v86;
      v43 = v66;
      sub_1000D2A70(v86, v66, &qword_1016B9AE8, &unk_1013E35D0);
      v44 = v38(v43, 1, v16);
      v45 = v81;
      if (v44 == 1)
      {
        sub_10000B3A8(v43, &qword_1016B9AE8, &unk_1013E35D0);
        v74 = 0;
        v73 = 0xF000000000000000;
      }

      else
      {
        v46 = EncryptedData.initializationVector.getter();
        v42 = v86;
        v74 = v46;
        v73 = v47;
        v75(v43, v16);
      }

      sub_1000D2A70(v42, v41, &qword_1016B9AE8, &unk_1013E35D0);
      if (v38(v41, 1, v16) == 1)
      {
        sub_10000B3A8(v42, &qword_1016B9AE8, &unk_1013E35D0);
        sub_10000B3A8(v41, &qword_1016B9AE8, &unk_1013E35D0);
        v48 = 0;
        v49 = 0xF000000000000000;
      }

      else
      {
        v48 = EncryptedData.tag.getter();
        v49 = v50;
        sub_10000B3A8(v86, &qword_1016B9AE8, &unk_1013E35D0);
        v75(v41, v16);
      }

      result = sub_100391554(v88);
      v51 = v83;
      v90 = v83;
      v53 = v83[2];
      v52 = v83[3];
      if (v53 >= v52 >> 1)
      {
        result = sub_101123DD0((v52 > 1), v53 + 1, 1);
        v51 = v90;
      }

      v51[2] = v53 + 1;
      v83 = v51;
      v54 = &v51[9 * v53];
      v55 = v80;
      v54[4] = v78;
      v54[5] = v55;
      v56 = v77;
      v54[6] = v79;
      v54[7] = v56;
      v57 = v74;
      v54[8] = v76;
      v54[9] = v57;
      v54[10] = v73;
      v54[11] = v48;
      v54[12] = v49;
      if (v64 == v45)
      {
        break;
      }

      v25 += 72;
      v26 = v45 + 1;
      v20 = v63;
      if (v26 >= *(v70 + 16))
      {
        goto LABEL_23;
      }
    }

    a4 = v62;
    a1 = v61;
    v21 = v60;
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100CA1724@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v95 = a4;
  v96 = a3;
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  __chkstk_darwin(v7);
  v90 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for P256.Signing.PrivateKey();
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  __chkstk_darwin(v10);
  v93 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for OwnerPeerTrust();
  v13 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v97 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for UUID();
  v104 = *(v101 - 8);
  v15 = v104[8];
  v16 = __chkstk_darwin(v101);
  v98 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v100 = &v82 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v82 - v21;
  __chkstk_darwin(v20);
  v24 = &v82 - v23;
  v25 = sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v82 - v27;
  v29 = type metadata accessor for KeyDropJoinToken(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v99 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v82 - v34;
  v36 = *a2;
  v102 = a1;
  sub_1012BB600(sub_100D14930, v36, v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_10000B3A8(v28, &qword_1016B9AF8, &unk_1013E35F8);
    sub_1001BAEE0();
    swift_allocError();
    *v37 = 13;
    return swift_willThrow();
  }

  else
  {
    sub_100D12974(v28, v35, type metadata accessor for KeyDropJoinToken);
    sub_100C710B4(v35);
    if (v4)
    {
      return sub_100018D00(v35, type metadata accessor for KeyDropJoinToken);
    }

    else
    {
      v86 = v35;
      v87 = v24;
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177AE28);
      v40 = v104[2];
      v41 = v101;
      v40(v22, v87, v101);
      v42 = v97;
      sub_100D11DC8(a1, v97, type metadata accessor for OwnerPeerTrust);
      v40(v100, v96, v41);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v84 = v44;
        v46 = v45;
        v85 = swift_slowAlloc();
        v103[0] = v85;
        *v46 = 141559043;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2081;
        v82 = sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v83 = v43;
        v47 = v101;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v96 = v104[1];
        v96(v22, v47);
        v51 = sub_1000136BC(v48, v50, v103);

        *(v46 + 14) = v51;
        *(v46 + 22) = 2080;
        v52 = (v42 + *(v94 + 32));
        v53 = *v52;
        v54 = v52[1];

        sub_100018D00(v42, type metadata accessor for OwnerPeerTrust);
        v55 = sub_1000136BC(v53, v54, v103);

        *(v46 + 24) = v55;
        *(v46 + 32) = 2160;
        *(v46 + 34) = 1752392040;
        *(v46 + 42) = 2081;
        v56 = v100;
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v96(v56, v47);
        v60 = sub_1000136BC(v57, v59, v103);

        *(v46 + 44) = v60;
        v61 = v83;
        _os_log_impl(&_mh_execute_header, v83, v84, "New Member Created: memberId: %{private,mask.hash}s,\ndisplayIdentifier: %s for\nownerSharingCircleIdentifier: %{private,mask.hash}s.", v46, 0x34u);
        swift_arrayDestroy();

        v62 = v47;
        v63 = v104;
      }

      else
      {

        v64 = v104;
        v65 = v104[1];
        v96 = v65;
        v62 = v101;
        v65(v100, v101);
        sub_100018D00(v42, type metadata accessor for OwnerPeerTrust);
        v65(v22, v62);
        v63 = v64;
      }

      v66 = v86;
      v67 = v99;
      sub_100D11DC8(v86, v99, type metadata accessor for KeyDropJoinToken);
      type metadata accessor for SharingCircleKeyManager();
      v68 = v98;
      sub_100C710B4(v67);
      v69 = v95;
      (v63[4])(v95, v68, v62);
      v70 = type metadata accessor for KeyDropCreateRequest.Member(0);
      *(v69 + v70[5]) = 0;
      v71 = (v67 + *(v29 + 20));
      v72 = v71[1];
      v103[0] = *v71;
      v103[1] = v72;
      sub_100017D5C(v103[0], v72);
      v73 = v93;
      P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
      v74 = v96;
      v75 = v90;
      P256.Signing.PrivateKey.publicKey.getter();
      (*(v88 + 8))(v73, v89);
      v76 = P256.Signing.PublicKey.compactRepresentation.getter();
      v78 = v77;
      (*(v91 + 8))(v75, v92);
      if (v78 >> 60 == 15)
      {
        sub_1001BAEE0();
        swift_allocError();
        *v79 = 18;
        swift_willThrow();
        sub_100018D00(v99, type metadata accessor for KeyDropJoinToken);
        v74(v87, v62);
        sub_100018D00(v66, type metadata accessor for KeyDropJoinToken);
        return (v96)(v95, v62);
      }

      else
      {
        sub_100018D00(v99, type metadata accessor for KeyDropJoinToken);
        v74(v87, v62);
        result = sub_100018D00(v66, type metadata accessor for KeyDropJoinToken);
        v80 = v95;
        v81 = (v95 + v70[6]);
        *v81 = v76;
        v81[1] = v78;
        *(v80 + v70[7]) = xmmword_10138C660;
      }
    }
  }

  return result;
}

uint64_t sub_100CA2188@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a4;
  v102 = a3;
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = *(v98 + 64);
  __chkstk_darwin(v7);
  v97 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for P256.Signing.PrivateKey();
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = *(v95 + 64);
  __chkstk_darwin(v10);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OwnerPeerTrust();
  v13 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v106 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for UUID();
  v111 = *(v108 - 8);
  v15 = *(v111 + 64);
  v16 = __chkstk_darwin(v108);
  v103 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v105 = v88 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v88 - v21;
  __chkstk_darwin(v20);
  v24 = v88 - v23;
  v25 = sub_1000BC4D4(&qword_1016B9AF8, &unk_1013E35F8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v88 - v27;
  v29 = type metadata accessor for KeyDropJoinToken(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v104 = v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = v88 - v34;
  v36 = a2[4];
  v109 = a1;
  sub_1012BB600(sub_100D14930, v36, v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_10000B3A8(v28, &qword_1016B9AF8, &unk_1013E35F8);
    sub_1001BAEE0();
    swift_allocError();
    *v37 = 13;
    return swift_willThrow();
  }

  else
  {
    sub_100D12974(v28, v35, type metadata accessor for KeyDropJoinToken);
    sub_100C710B4(v35);
    if (v4)
    {
      return sub_100018D00(v35, type metadata accessor for KeyDropJoinToken);
    }

    else
    {
      v92 = sub_100D12680(*(a1 + *(v107 + 32)), *(a1 + *(v107 + 32) + 8), a2);
      v91 = v39;
      v93 = v35;
      v94 = v24;
      v40 = v111;
      if (qword_101694DF8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_10177BF08);
      v42 = *(v40 + 16);
      v43 = v108;
      v42(v22, v94, v108);
      sub_100D11DC8(a1, v106, type metadata accessor for OwnerPeerTrust);
      v44 = v105;
      v42(v105, v102, v43);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      v102 = v45;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v110[0] = v90;
        *v47 = 141559043;
        *(v47 + 4) = 1752392040;
        *(v47 + 12) = 2081;
        v88[1] = sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
        v89 = v46;
        v48 = v108;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v52 = *(v111 + 8);
        v88[0] = v111 + 8;
        v53 = v22;
        v54 = v48;
        v52(v53, v48);
        v55 = sub_1000136BC(v49, v51, v110);

        *(v47 + 14) = v55;
        *(v47 + 22) = 2080;
        v56 = v106;
        v57 = (v106 + *(v107 + 32));
        v58 = *v57;
        v59 = v57[1];

        sub_100018D00(v56, type metadata accessor for OwnerPeerTrust);
        v60 = sub_1000136BC(v58, v59, v110);
        v61 = v102;
        v62 = v60;

        *(v47 + 24) = v62;
        *(v47 + 32) = 2160;
        *(v47 + 34) = 1752392040;
        *(v47 + 42) = 2081;
        v63 = v105;
        v64 = v54;
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v66;
        v52(v63, v64);
        v68 = sub_1000136BC(v65, v67, v110);

        *(v47 + 44) = v68;
        _os_log_impl(&_mh_execute_header, v61, v89, "New Member Created: memberId: %{private,mask.hash}s,\ndisplayIdentifier: %s for\nownerSharingCircleIdentifier: %{private,mask.hash}s.", v47, 0x34u);
        swift_arrayDestroy();

        v69 = v52;

        v70 = v111;
      }

      else
      {

        v70 = v111;
        v69 = *(v111 + 8);
        v64 = v108;
        v69(v44, v108);
        sub_100018D00(v106, type metadata accessor for OwnerPeerTrust);
        v69(v22, v64);
      }

      v71 = v104;
      sub_100D11DC8(v93, v104, type metadata accessor for KeyDropJoinToken);
      type metadata accessor for SharingCircleKeyManager();
      v72 = v103;
      sub_100C710B4(v71);
      v73 = v101;
      (*(v70 + 32))(v101, v72, v64);
      v74 = type metadata accessor for KeyDropCreateRequest.Member(0);
      *(v73 + v74[5]) = 0;
      v75 = (v71 + *(v29 + 20));
      v76 = v75[1];
      v110[0] = *v75;
      v110[1] = v76;
      sub_100017D5C(v110[0], v76);
      v77 = v100;
      P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
      v107 = v69;
      v78 = v91;
      v79 = v97;
      P256.Signing.PrivateKey.publicKey.getter();
      (*(v95 + 8))(v77, v96);
      v80 = P256.Signing.PublicKey.compactRepresentation.getter();
      v82 = v81;
      (*(v98 + 8))(v79, v99);
      if (v82 >> 60 == 15)
      {
        sub_1001BAEE0();
        swift_allocError();
        *v83 = 18;
        swift_willThrow();
        sub_100016590(v92, v78);
        sub_100018D00(v71, type metadata accessor for KeyDropJoinToken);
        v84 = v107;
        (v107)(v94, v64);
        sub_100018D00(v93, type metadata accessor for KeyDropJoinToken);
        return v84(v101, v64);
      }

      else
      {
        sub_100018D00(v71, type metadata accessor for KeyDropJoinToken);
        (v107)(v94, v64);
        result = sub_100018D00(v93, type metadata accessor for KeyDropJoinToken);
        v85 = v101;
        v86 = (v101 + v74[6]);
        *v86 = v80;
        v86[1] = v82;
        v87 = (v85 + v74[7]);
        *v87 = v92;
        v87[1] = v78;
      }
    }
  }

  return result;
}

uint64_t sub_100CA2C80(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for P256.Signing.PrivateKey();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v3[25] = v10;
  v11 = *(v10 - 8);
  v3[26] = v11;
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v13 = type metadata accessor for KeyDropCreateRequest.Member(0);
  v3[29] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v15 = type metadata accessor for KeyDropJoinToken(0);
  v3[32] = v15;
  v16 = *(v15 - 8);
  v3[33] = v16;
  v17 = *(v16 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v18 = *(*(type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();

  return _swift_task_switch(sub_100CA2F38, v2, 0);
}

uint64_t sub_100CA2F38()
{
  v1 = v0[15];
  v2 = type metadata accessor for OwnerSharingCircle();
  v3 = *(v2 + 20);
  if (*(v1 + *(v2 + 28)) == 3)
  {
    v4 = swift_task_alloc();
    v0[43] = v4;
    *v4 = v0;
    v4[1] = sub_100CA3074;
    v5 = v0[42];
    v6 = v0[16];

    return sub_100C7B39C(v5, v1 + v3);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[45] = v8;
    *v8 = v0;
    v8[1] = sub_100CA37C8;
    v9 = v0[16];

    return sub_100C7BA0C((v0 + 2), v1 + v3);
  }
}

uint64_t sub_100CA3074()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_100CA4064;
  }

  else
  {
    v6 = sub_100CA31A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100CA31A0()
{
  v1 = v0[42];
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[33];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      sub_100D11DC8(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v0[39], type metadata accessor for KeyDropJoinToken);
      if (qword_101694560 != -1)
      {
        swift_once();
      }

      v6 = v0[39];
      sub_1000076D4(v0[25], qword_10177A900);
      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      ++v4;
      sub_100018D00(v0[39], type metadata accessor for KeyDropJoinToken);
      if (v3 == v4)
      {
        v1 = v0[42];
        goto LABEL_11;
      }
    }

    v7 = v0[44];
    v8 = v0[40];
    v9 = v0[41];
    v10 = v0[38];
    v11 = v0[28];
    sub_100D12974(v0[39], v8, type metadata accessor for KeyDropJoinToken);
    sub_100D12974(v8, v9, type metadata accessor for KeyDropJoinToken);
    sub_100D11DC8(v9, v10, type metadata accessor for KeyDropJoinToken);
    type metadata accessor for SharingCircleKeyManager();
    sub_100C710B4(v10);
    if (v7)
    {
      v13 = v0[41];
      v12 = v0[42];
      sub_100018D00(v0[38], type metadata accessor for KeyDropJoinToken);
      sub_100018D00(v13, type metadata accessor for KeyDropJoinToken);
      sub_100018D00(v12, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
      goto LABEL_12;
    }

    v26 = v0[38];
    v27 = v0[31];
    v28 = v0[32];
    v29 = v0[29];
    v30 = v0[24];
    (*(v0[26] + 32))(v27, v0[28], v0[25]);
    *(v27 + *(v29 + 20)) = 1;
    v31 = (v26 + *(v28 + 20));
    v32 = *v31;
    v33 = v31[1];
    v0[12] = *v31;
    v0[13] = v33;
    sub_100017D5C(v32, v33);
    P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v34 = v0[24];
    v35 = v0[21];
    v36 = v0[22];
    v37 = v0[20];
    v38 = v0[17];
    v39 = v0[18];
    P256.Signing.PrivateKey.publicKey.getter();
    (*(v36 + 8))(v34, v35);
    v40 = P256.Signing.PublicKey.compactRepresentation.getter();
    v42 = v41;
    (*(v39 + 8))(v37, v38);
    v44 = v0[41];
    v43 = v0[42];
    v45 = v0[38];
    if (v42 >> 60 == 15)
    {
      sub_1001BAEE0();
      swift_allocError();
      *v46 = 18;
      swift_willThrow();
      sub_100018D00(v45, type metadata accessor for KeyDropJoinToken);
      sub_100018D00(v44, type metadata accessor for KeyDropJoinToken);
      sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
      (*(v0[26] + 8))(v0[31], v0[25]);
      goto LABEL_12;
    }

    sub_100018D00(v0[38], type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v44, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v43, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v48 = v0[41];
    v47 = v0[42];
    v50 = v0[39];
    v49 = v0[40];
    v51 = v0[37];
    v52 = v0[38];
    v57 = v0[36];
    v58 = v0[35];
    v53 = v0[31];
    v59 = v0[34];
    v61 = v0[30];
    v54 = v0[29];
    v63 = v0[28];
    v65 = v0[27];
    v67 = v0[24];
    v69 = v0[23];
    v71 = v0[20];
    v73 = v0[19];
    v55 = v0[14];
    v56 = (v53 + *(v54 + 24));
    *v56 = v40;
    v56[1] = v42;
    *(v53 + *(v54 + 28)) = xmmword_10138C660;
    sub_100D12974(v53, v55, type metadata accessor for KeyDropCreateRequest.Member);

    v25 = v0[1];
  }

  else
  {
LABEL_11:
    sub_1001BAEE0();
    swift_allocError();
    *v14 = 13;
    swift_willThrow();
    sub_100018D00(v1, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
LABEL_12:
    v16 = v0[41];
    v15 = v0[42];
    v18 = v0[39];
    v17 = v0[40];
    v20 = v0[37];
    v19 = v0[38];
    v21 = v0[35];
    v22 = v0[36];
    v23 = v0[34];
    v24 = v0[31];
    v60 = v0[30];
    v62 = v0[28];
    v64 = v0[27];
    v66 = v0[24];
    v68 = v0[23];
    v70 = v0[20];
    v72 = v0[19];

    v25 = v0[1];
  }

  v25();
}

uint64_t sub_100CA37C8()
{
  v2 = *(*v1 + 360);
  v3 = *v1;
  v3[46] = v0;

  if (v0)
  {
    v5 = v3[41];
    v4 = v3[42];
    v7 = v3[39];
    v6 = v3[40];
    v9 = v3[37];
    v8 = v3[38];
    v11 = v3[35];
    v10 = v3[36];
    v16 = v3[34];
    v17 = v3[31];
    v18 = v3[30];
    v19 = v3[28];
    v20 = v3[27];
    v21 = v3[24];
    v12 = v3[19];
    v22 = v3[23];
    v23 = v3[20];

    v13 = v3[1];

    return v13();
  }

  else
  {
    v15 = v3[16];

    return _swift_task_switch(sub_100CA39E4, v15, 0);
  }
}

uint64_t sub_100CA39E4()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_8:
    sub_1001BAEE0();
    swift_allocError();
    *v6 = 13;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
LABEL_14:
    v37 = v0[41];
    v36 = v0[42];
    v39 = v0[39];
    v38 = v0[40];
    v41 = v0[37];
    v40 = v0[38];
    v42 = v0[35];
    v43 = v0[36];
    v44 = v0[34];
    v45 = v0[31];
    v61 = v0[30];
    v63 = v0[28];
    v65 = v0[27];
    v67 = v0[24];
    v69 = v0[23];
    v71 = v0[20];
    v73 = v0[19];

    v46 = v0[1];
    goto LABEL_15;
  }

  v3 = 0;
  v4 = v0[33];
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_100D11DC8(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[35], type metadata accessor for KeyDropJoinToken);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v5 = v0[35];
    sub_1000076D4(v0[25], qword_10177A900);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v3;
    sub_100018D00(v0[35], type metadata accessor for KeyDropJoinToken);
    if (v2 == v3)
    {
      goto LABEL_8;
    }
  }

  v7 = v0[36];
  v8 = v0[37];
  sub_100D12974(v0[35], v7, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v7, v8, type metadata accessor for KeyDropJoinToken);
  if (qword_101694558 == -1)
  {
    goto LABEL_10;
  }

LABEL_20:
  swift_once();
LABEL_10:
  v9 = v0[46];
  v11 = sub_100D12680(qword_10177A8F0, qword_10177A8F8, v0 + 2);
  v12 = v0[37];
  if (v9)
  {
    sub_100018D00(v12, type metadata accessor for KeyDropJoinToken);
    sub_1001BAF34((v0 + 2));
    goto LABEL_14;
  }

  v13 = v10;
  v14 = v0[34];
  v15 = v0[27];
  sub_100D11DC8(v12, v14, type metadata accessor for KeyDropJoinToken);
  type metadata accessor for SharingCircleKeyManager();
  sub_100C710B4(v14);
  v16 = v0[34];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[30];
  v20 = v0[23];
  (*(v0[26] + 32))(v19, v0[27], v0[25]);
  *(v19 + *(v18 + 20)) = 1;
  v21 = (v16 + *(v17 + 20));
  v22 = *v21;
  v23 = v21[1];
  v0[10] = *v21;
  v0[11] = v23;
  sub_100017D5C(v22, v23);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v25 = v0[22];
  v24 = v0[23];
  v26 = v0[21];
  v28 = v0[18];
  v27 = v0[19];
  v29 = v0[17];
  P256.Signing.PrivateKey.publicKey.getter();
  (*(v25 + 8))(v24, v26);
  v30 = P256.Signing.PublicKey.compactRepresentation.getter();
  v32 = v31;
  (*(v28 + 8))(v27, v29);
  v33 = v0[37];
  v34 = v0[34];
  if (v32 >> 60 == 15)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v35 = 18;
    swift_willThrow();
    sub_100016590(v11, v13);
    sub_1001BAF34((v0 + 2));
    sub_100018D00(v34, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v33, type metadata accessor for KeyDropJoinToken);
    (*(v0[26] + 8))(v0[30], v0[25]);
    goto LABEL_14;
  }

  sub_1001BAF34((v0 + 2));
  sub_100018D00(v34, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v33, type metadata accessor for KeyDropJoinToken);
  v49 = v0[41];
  v48 = v0[42];
  v51 = v0[39];
  v50 = v0[40];
  v57 = v0[38];
  v58 = v0[37];
  v59 = v0[36];
  v60 = v0[35];
  v52 = v0[30];
  v62 = v0[34];
  v64 = v0[31];
  v53 = v0[29];
  v66 = v0[28];
  v68 = v0[27];
  v70 = v0[24];
  v72 = v0[23];
  v74 = v0[20];
  v75 = v0[19];
  v54 = v0[14];
  v55 = (v52 + *(v53 + 24));
  *v55 = v30;
  v55[1] = v32;
  v56 = (v52 + *(v53 + 28));
  *v56 = v11;
  v56[1] = v13;
  sub_100D12974(v52, v54, type metadata accessor for KeyDropCreateRequest.Member);

  v46 = v0[1];
LABEL_15:

  return v46();
}

uint64_t sub_100CA4064()
{
  v20 = v0[44];
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[30];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100CA41A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 129) = a3;
  *(v5 + 136) = a1;
  *(v5 + 144) = a2;
  v7 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
  *(v5 + 168) = v7;
  v8 = *(v7 - 8);
  *(v5 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  v10 = type metadata accessor for KeyDropShareMetaDataResponse(0);
  *(v5 + 216) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v5 + 232) = v12;
  v13 = *(v12 - 8);
  *(v5 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v15 = *(type metadata accessor for KeyDropJoinToken(0) - 8);
  *(v5 + 272) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  v17 = swift_task_alloc();
  *(v5 + 312) = v17;
  *v17 = v5;
  v17[1] = sub_100CA43F0;

  return sub_100C7BA0C(v5 + 16, a2);
}

uint64_t sub_100CA43F0()
{
  v2 = *(*v1 + 312);
  v3 = *v1;
  v3[40] = v0;

  if (v0)
  {
    v5 = v3[37];
    v4 = v3[38];
    v7 = v3[35];
    v6 = v3[36];
    v9 = v3[32];
    v8 = v3[33];
    v10 = v3[31];
    v11 = v3[28];
    v16 = v3[26];
    v17 = v3[25];
    v12 = v3[23];
    v18 = v3[24];

    v13 = v3[1];

    return v13();
  }

  else
  {
    v15 = v3[20];

    return _swift_task_switch(sub_100CA45D4, v15, 0);
  }
}

uint64_t sub_100CA45D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = v3;
  v4 = v3[6];
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_8:
    sub_1001BAEE0();
    swift_allocError();
    *v9 = 13;
    swift_willThrow();
LABEL_11:
    sub_1001BAF34((v3 + 2));
    v15 = v3[37];
    v14 = v3[38];
    v17 = v3[35];
    v16 = v3[36];
    v19 = v3[32];
    v18 = v3[33];
    v20 = v3[31];
    v21 = v3[28];
    v22 = v3[25];
    v23 = v3[26];
    v30 = v3[24];
    v31 = v3[23];

    v24 = v3[1];

    return v24();
  }

  v6 = 0;
  v7 = v3[34];
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    sub_100D11DC8(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, v3[36], type metadata accessor for KeyDropJoinToken);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v8 = v3[36];
    sub_1000076D4(v3[29], qword_10177A900);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v6;
    a1 = sub_100018D00(v3[36], type metadata accessor for KeyDropJoinToken);
    if (v5 == v6)
    {
      goto LABEL_8;
    }
  }

  v10 = v3[40];
  v11 = v3[37];
  v12 = v3[38];
  v13 = v3[33];
  sub_100D12974(v3[36], v11, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v11, v12, type metadata accessor for KeyDropJoinToken);
  type metadata accessor for SharingCircleKeyManager();
  sub_100C710B4(v12);
  v3[41] = v10;
  if (v10)
  {
    sub_100018D00(v3[38], type metadata accessor for KeyDropJoinToken);
    goto LABEL_11;
  }

  v26 = v3[19];
  v27 = *(v3[20] + 112);
  v3[42] = v27;
  v28 = *(v26 + 16);
  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = sub_1003A8688(*(v26 + 16), 0);
  v32 = sub_1003CC2D4(&v33, v29 + 4, v28, v26);

  sub_1000128F8();
  if (v32 != v28)
  {
    __break(1u);
LABEL_17:
    v29 = _swiftEmptyArrayStorage;
  }

  v3[43] = v29;
  a1 = sub_100CA492C;
  a2 = v27;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100CA492C()
{
  v33 = v0;
  v1 = *(v0 + 344);
  v30 = v1;
  v31 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  v8 = *(*(v0 + 240) + 16);
  v9 = *(v0 + 129);
  v8(v5, *(v0 + 144), v7);
  v8(v6, v4, v7);
  sub_100D11DC8(v2, v3, type metadata accessor for KeyDropJoinToken);
  v10 = sub_10105E4EC(v5, v6, v9, v30, v3);
  *(v0 + 352) = v10;
  *(v0 + 360) = v11;
  *(v0 + 368) = v12;
  if (v31)
  {
    *(v0 + 400) = v31;
    v13 = *(v0 + 160);

    return _swift_task_switch(sub_100CA54C4, v13, 0);
  }

  else
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    if (qword_1016954C0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    *(v0 + 376) = v17;
    sub_1000076D4(v17, qword_10177CDD0);

    sub_100017D5C(v15, v16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    sub_100016590(v15, v16);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      v22 = sub_100646BE8(v15, v16);
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v22 = 7104878;
        v24 = 0xE300000000000000;
      }

      v25 = sub_1000136BC(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "KeyDropShareMetaDataRequest: %s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    *(v0 + 104) = &type metadata for KeyDropShareMetaDataRequest;
    *(v0 + 112) = sub_100D12D5C();
    *(v0 + 80) = v14;
    *(v0 + 88) = v15;
    *(v0 + 96) = v16;

    sub_100017D5C(v15, v16);
    v26 = swift_task_alloc();
    *(v0 + 384) = v26;
    *v26 = v0;
    v26[1] = sub_100CA4C7C;
    v27 = *(v0 + 336);
    v28 = *(v0 + 136);

    return sub_10103A520(v28, v0 + 80, 1);
  }
}

uint64_t sub_100CA4C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v8 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = sub_100CA543C;
  }

  else
  {
    v6 = *(v2 + 336);
    sub_100007BAC((v2 + 80));
    v5 = sub_100CA4DA4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100CA4DA4()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  v4 = v0[20];

  sub_100016590(v1, v2);

  return _swift_task_switch(sub_100CA4E28, v4, 0);
}

uint64_t sub_100CA4E28()
{
  v67 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  sub_1000076D4(*(v0 + 376), qword_10177BF08);
  sub_100D11DC8(v2, v1, type metadata accessor for KeyDropShareMetaDataResponse);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v66 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_100018D00(v5, type metadata accessor for KeyDropShareMetaDataResponse);
    v12 = sub_1000136BC(v9, v11, &v66);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got existing metadata info for %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = *(v0 + 224);

    sub_100018D00(v13, type metadata accessor for KeyDropShareMetaDataResponse);
  }

  v14 = *(*(v0 + 136) + *(*(v0 + 216) + 24));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v0 + 176);
    v58 = *(v0 + 168);
    v17 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    v57 = v18;
    do
    {
      v36 = *(v0 + 200);
      v38 = *(v0 + 184);
      v37 = *(v0 + 192);
      sub_100D11DC8(v17, *(v0 + 208), type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      sub_100D11DC8(v17, v36, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      sub_100D11DC8(v17, v37, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      sub_100D11DC8(v17, v38, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v43 = *(v0 + 200);
      v42 = *(v0 + 208);
      v44 = *(v0 + 184);
      v45 = *(v0 + 192);
      if (v41)
      {
        v61 = *(v0 + 184);
        log = v39;
        v19 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v19 = 136446978;
        v20 = sub_10125403C(*v42);
        v22 = v21;
        sub_100018D00(v42, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        v23 = sub_1000136BC(v20, v22, &v66);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2082;
        v24 = v43 + v58[5];
        v25 = sub_1012545E4();
        v27 = v26;
        sub_100018D00(v43, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        v28 = sub_1000136BC(v25, v27, &v66);

        *(v19 + 14) = v28;
        *(v19 + 22) = 2082;
        v29 = v45 + v58[6];
        v30 = *v29;
        LOBYTE(v29) = *(v29 + 8);
        *(v0 + 120) = v30;
        *(v0 + 128) = v29;
        sub_1000BC4D4(&unk_1016A40E8, &qword_1013AFA40);
        v31 = String.init<A>(describing:)();
        v33 = v32;
        sub_100018D00(v45, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        v34 = sub_1000136BC(v31, v33, &v66);

        *(v19 + 24) = v34;
        *(v19 + 32) = 2050;
        v18 = v57;
        v35 = *(v61 + v58[7]);
        sub_100018D00(v61, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        *(v19 + 34) = v35;
        _os_log_impl(&_mh_execute_header, log, v40, "Package of %{public}s type,\nalignment: %{public}s,\nrange: %{public}s...%{public}lld", v19, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
        sub_100018D00(*(v0 + 184), type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);

        sub_100018D00(v45, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        sub_100018D00(v43, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
        sub_100018D00(v42, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      }

      v17 += v18;
      --v15;
    }

    while (v15);
  }

  v47 = *(v0 + 296);
  v46 = *(v0 + 304);
  v49 = *(v0 + 280);
  v48 = *(v0 + 288);
  v51 = *(v0 + 256);
  v50 = *(v0 + 264);
  v53 = *(v0 + 240);
  v52 = *(v0 + 248);
  v54 = *(v0 + 232);
  v59 = *(v0 + 224);
  v60 = *(v0 + 208);
  v62 = *(v0 + 200);
  loga = *(v0 + 192);
  v65 = *(v0 + 184);
  sub_1001BAF34(v0 + 16);
  (*(v53 + 8))(v50, v54);
  sub_100018D00(v46, type metadata accessor for KeyDropJoinToken);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100CA543C()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 10);
  v0[50] = v0[49];
  v4 = v0[20];

  return _swift_task_switch(sub_100CA54C4, v4, 0);
}

uint64_t sub_100CA54C4()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[30];
  sub_1001BAF34((v0 + 2));
  (*(v4 + 8))(v2, v3);
  sub_100018D00(v1, type metadata accessor for KeyDropJoinToken);
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[31];
  v12 = v0[28];
  v13 = v0[25];
  v14 = v0[26];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[50];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100CA560C(uint64_t a1, uint64_t a2)
{
  v3[10] = a1;
  v3[11] = v2;
  v3[12] = *v2;
  v5 = type metadata accessor for UUID();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v7 = *(v6 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = type metadata accessor for KeyDropShareMetaDataResponse.Member(0);
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v11 = *(type metadata accessor for KeyDropJoinToken(0) - 8);
  v3[21] = v11;
  v12 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v13 = swift_task_alloc();
  v3[23] = v13;
  *v13 = v3;
  v13[1] = sub_100CA5804;

  return sub_100C7BA0C((v3 + 2), a2);
}

uint64_t sub_100CA5804()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {
    v4 = v3[22];
    v5 = v3[20];
    v7 = v3[16];
    v6 = v3[17];
    v8 = v3[15];

    v9 = v3[1];

    return v9();
  }

  else
  {
    v11 = v3[11];

    return _swift_task_switch(sub_100CA5984, v11, 0);
  }
}

unint64_t sub_100CA5984()
{
  v67 = v0;
  v1 = v0[6];
  v2 = &_swiftEmptyDictionarySingleton;
  v66[0] = &_swiftEmptyDictionarySingleton;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[12];
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = *(v5 + 72);
  sub_100D11DC8(v1 + v8, v6, type metadata accessor for KeyDropJoinToken);
  sub_100CA5F0C(v66, v6);
  if (v4)
  {
    v10 = v0[22];

    sub_100018D00(v10, type metadata accessor for KeyDropJoinToken);
  }

  result = sub_100018D00(v0[22], type metadata accessor for KeyDropJoinToken);
  if (v3 == 1)
  {
LABEL_10:
    v2 = v66[0];
LABEL_11:
    v16 = v0[10];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v0[19];
      v63 = v0[18];
      v19 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v20 = *(v18 + 72);
      v61 = v0[20] + 8;
      v62 = v0[14];
      v59 = (v62 + 8);
      v21 = &_swiftEmptyDictionarySingleton;
      v57 = v20;
      v58 = v2;
      v60 = v0;
      while (1)
      {
        sub_100D11DC8(v19, v0[20], type metadata accessor for KeyDropShareMetaDataResponse.Member);
        if (v2[2] && (v22 = sub_1000210EC(v0[20]), (v23 & 1) != 0))
        {
          v25 = v0[16];
          v24 = v0[17];
          v65 = v0[15];
          v26 = v0[13];
          v27 = *(v62 + 72);
          v28 = *(v62 + 16);
          v28(v25, v2[7] + v27 * v22, v26);
          (*(v62 + 32))(v24, v25, v26);
          v64 = v28;
          v28(v65, v24, v26);
          v29 = *(v61 + *(v63 + 24)) >> 60 != 15;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66[0] = v21;
          result = sub_1000210EC(v65);
          v32 = v21[2];
          v33 = (v31 & 1) == 0;
          v34 = __OFADD__(v32, v33);
          v35 = v32 + v33;
          if (v34)
          {
            __break(1u);
            goto LABEL_37;
          }

          v36 = v31;
          v37 = v27;
          if (v21[3] >= v35)
          {
            v0 = v60;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v49 = result;
              sub_1010062B8();
              result = v49;
              v21 = v66[0];
            }
          }

          else
          {
            v0 = v60;
            v38 = v60[15];
            sub_100FE88DC(v35, isUniquelyReferenced_nonNull_native);
            v21 = v66[0];
            result = sub_1000210EC(v38);
            if ((v36 & 1) != (v39 & 1))
            {
              v56 = v60[13];

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }
          }

          v40 = v0[17];
          v41 = v0[15];
          v42 = v0[13];
          if (v36)
          {
            *(v21[7] + result) = v29;
            v43 = *v59;
            (*v59)(v41, v42);
            v43(v40, v42);
          }

          else
          {
            v21[(result >> 6) + 8] |= 1 << result;
            v44 = v21[6] + result * v37;
            v45 = result;
            v64(v44, v41, v42);
            *(v21[7] + v45) = v29;
            v46 = *v59;
            (*v59)(v41, v42);
            result = (v46)(v40, v42);
            v47 = v21[2];
            v34 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v34)
            {
              goto LABEL_38;
            }

            v21[2] = v48;
          }

          sub_100018D00(v0[20], type metadata accessor for KeyDropShareMetaDataResponse.Member);
          v20 = v57;
          v2 = v58;
        }

        else
        {
          sub_100018D00(v0[20], type metadata accessor for KeyDropShareMetaDataResponse.Member);
        }

        v19 += v20;
        if (!--v17)
        {

          goto LABEL_30;
        }
      }
    }

    v21 = &_swiftEmptyDictionarySingleton;
LABEL_30:
    v50 = v0[22];
    v51 = v0[20];
    v53 = v0[16];
    v52 = v0[17];
    v54 = v0[15];
    sub_1001BAF34((v0 + 2));

    v55 = v0[1];

    return v55(v21);
  }

  v12 = v1 + v9 + v8;
  v13 = 1;
  while (v13 < *(v1 + 16))
  {
    v14 = v0[22];
    v15 = v0[12];
    sub_100D11DC8(v12, v14, type metadata accessor for KeyDropJoinToken);
    sub_100CA5F0C(v66, v14);
    ++v13;
    result = sub_100018D00(v0[22], type metadata accessor for KeyDropJoinToken);
    v12 += v9;
    if (v3 == v13)
    {
      goto LABEL_10;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100CA5F0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v22 - v18;
  sub_100C710B4(a2);
  if (v2)
  {

    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v24 = 0;
    v23 = *(v13 + 56);
    v23(v11, 0, 1, v12);
    (*(v13 + 32))(v19, v11, v12);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v12, qword_10177A900);
    sub_100D13BF8(&qword_1016984A0, &type metadata accessor for UUID);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v22 = a1;
      v21 = *(v13 + 16);
      v21(v17, v19, v12);
      v21(v9, a2, v12);
      v23(v9, 0, 1, v12);
      sub_1001DDB40(v9, v17);
    }

    return (*(v13 + 8))(v19, v12);
  }
}

uint64_t sub_100CA6228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = type metadata accessor for BookmarkMetaData();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016998B8, &unk_1013B6AD0) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v9 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v4[32] = v9;
  v10 = *(v9 - 8);
  v4[33] = v10;
  v11 = *(v10 + 64) + 15;
  v4[34] = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v4[35] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v14 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4[37] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v4[39] = v16;
  v17 = *(v16 - 8);
  v4[40] = v17;
  v18 = *(v17 + 64) + 15;
  v4[41] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v4[42] = v19;
  v20 = *(v19 - 8);
  v4[43] = v20;
  v4[44] = *(v20 + 64);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return _swift_task_switch(sub_100CA6518, v3, 0);
}

uint64_t sub_100CA6518()
{
  v31 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[22];
  v5 = v0[23];
  v7 = type metadata accessor for Logger();
  v0[52] = sub_1000076D4(v7, qword_10177BF08);
  v8 = *(v4 + 16);
  v0[53] = v8;
  v0[54] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v5, v3);
  v8(v1, v6, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[50];
  v12 = v0[51];
  v15 = v0[42];
  v14 = v0[43];
  if (v11)
  {
    v29 = v10;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 141558787;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1000136BC(v17, v19, &v30);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1000136BC(v22, v24, &v30);

    *(v16 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v9, v29, "Downloaded key instructions for share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v16, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = *(v0[25] + 120);
  v0[55] = v27;

  return _swift_task_switch(sub_100CA6838, v27, 0);
}

uint64_t sub_100CA6838()
{
  v1 = *(v0 + 440);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 448) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100CA6918;
  v5 = *(v0 + 440);

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100CA6918()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return _swift_task_switch(sub_100CA6A30, v2, 0);
}

uint64_t sub_100CA6A30()
{
  v1 = v0[55];
  v0[57] = v0[18];
  return _swift_task_switch(sub_100CA6A54, v1, 0);
}

uint64_t sub_100CA6A54()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 392);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 336);
  (*(v0 + 424))(v3, *(v0 + 176), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 464) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 472) = v10;
  *v10 = v0;
  v10[1] = sub_100CA6BA4;
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v8, v12);
}

uint64_t sub_100CA6BA4()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 200);
  v5 = *v0;

  return _swift_task_switch(sub_100CA6CD0, v3, 0);
}

uint64_t sub_100CA6CD0()
{
  v39 = v0;
  v1 = *(v0 + 304);
  if ((*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312)) == 1)
  {
    v2 = *(v0 + 456);
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    sub_1001BAEE0();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v7 = *(v0 + 384);
    v6 = *(v0 + 392);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v10 = *(v0 + 360);
    v11 = *(v0 + 328);
    v12 = *(v0 + 304);
    v13 = *(v0 + 288);
    v33 = *(v0 + 272);
    v34 = *(v0 + 248);
    v35 = *(v0 + 240);
    v36 = *(v0 + 232);
    v37 = *(v0 + 224);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 192);
    sub_100D12974(v1, *(v0 + 328), type metadata accessor for SharedBeaconRecord);
    *(v0 + 152) = _swiftEmptyDictionarySingleton;
    v17 = *(v16 + 32);
    *(v0 + 648) = v17;
    v18 = 1 << v17;
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 56);
    *(v0 + 480) = OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore;
    v21 = (v18 + 63) >> 6;

    v25 = 0;
    while (v20)
    {
      v22 = *(v0 + 192);
LABEL_15:
      *(v0 + 488) = v20;
      *(v0 + 496) = v25;
      v27 = *(*(v22 + 48) + (__clz(__rbit64(v20)) | (v25 << 6)));
      *(v0 + 649) = v27;
      if ((v27 - 7) >= 0xC && ((1 << v27) & 0x1C) == 0)
      {
        *(v0 + 650) = ((1 << v27) & 0x21) == 0;
        *(v0 + 640) = *(*(v0 + 312) + 20);
        v22 = sub_100CA70B0;
        v23 = 0;
        v24 = 0;

        return _swift_task_switch(v22, v23, v24);
      }

      v20 &= v20 - 1;
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        return _swift_task_switch(v22, v23, v24);
      }

      v22 = *(v0 + 192);
      if (v26 >= v21)
      {
        break;
      }

      v20 = *(v22 + 8 * v26 + 56);
      ++v25;
      if (v20)
      {
        v25 = v26;
        goto LABEL_15;
      }
    }

    v28 = *(v0 + 152);
    *(v0 + 568) = v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = _swiftEmptyDictionarySingleton;
    sub_100D0EDD0(v28, sub_100D0E130, 0, isUniquelyReferenced_nonNull_native, &v38);

    *(v0 + 576) = v38;
    v30 = swift_task_alloc();
    *(v0 + 584) = v30;
    *v30 = v0;
    v30[1] = sub_100CA7F1C;
    v31 = *(v0 + 200);
    v32 = *(v0 + 184);

    return sub_100C7BA0C(v0 + 16, v32);
  }
}

uint64_t sub_100CA70B0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 650);
  v3 = *(v0 + 384);
  v4 = *(v0 + 328);
  v5 = *(*(v0 + 456) + *(v0 + 480));
  v6 = getuid();
  sub_1000294F0(v6);
  v7 = swift_task_alloc();
  *(v0 + 504) = v7;
  *v7 = v0;
  v7[1] = sub_100CA7184;
  v8 = *(v0 + 384);

  return sub_100685140(v8, v4 + v1, v2);
}

uint64_t sub_100CA7184(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 504);
  v17 = *v4;
  *(v6 + 512) = a1;
  *(v6 + 520) = a2;
  *(v6 + 528) = v3;

  if (v3)
  {
    (*(*(v6 + 344) + 8))(*(v6 + 384), *(v6 + 336));
    v8 = *(v6 + 152);

    v9 = sub_100CA75E8;
    v10 = 0;
  }

  else
  {
    v11 = *(v6 + 384);
    v12 = *(v6 + 336);
    v13 = *(v6 + 344);
    v14 = *(v6 + 200);
    *(v6 + 651) = a3;
    v15 = *(v13 + 8);
    *(v6 + 536) = v15;
    *(v6 + 544) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v11, v12);
    v9 = sub_100CA7304;
    v10 = v14;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100CA7304(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v23 = v3;
  if (*(v3 + 651))
  {
    v4 = *(v3 + 528);
    v6 = *(v3 + 488);
    v5 = *(v3 + 496);
    while (1)
    {
      v6 &= v6 - 1;
      if (!v6)
      {
        break;
      }

      v7 = *(v3 + 192);
LABEL_9:
      *(v3 + 488) = v6;
      *(v3 + 496) = v5;
      v9 = *(*(v7 + 48) + (__clz(__rbit64(v6)) | (v5 << 6)));
      *(v3 + 649) = v9;
      if ((v9 - 7) >= 0xC && ((1 << v9) & 0x1C) == 0)
      {
        *(v3 + 650) = ((1 << v9) & 0x21) == 0;
        *(v3 + 640) = *(*(v3 + 312) + 20);
        a1 = sub_100CA70B0;
        a2 = 0;
        a3 = 0;

        return _swift_task_switch(a1, a2, a3);
      }
    }

    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return _swift_task_switch(a1, a2, a3);
      }

      if (v8 >= (((1 << *(v3 + 648)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v3 + 192);
      v6 = *(v7 + 8 * v8 + 56);
      ++v5;
      if (v6)
      {
        v5 = v8;
        goto LABEL_9;
      }
    }

    v16 = *(v3 + 192);

    v17 = *(v3 + 152);
    *(v3 + 568) = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = _swiftEmptyDictionarySingleton;
    sub_100D0EDD0(v17, sub_100D0E130, 0, isUniquelyReferenced_nonNull_native, &v22);

    *(v3 + 576) = v22;
    v19 = swift_task_alloc();
    *(v3 + 584) = v19;
    *v19 = v3;
    v19[1] = sub_100CA7F1C;
    v20 = *(v3 + 200);
    v21 = *(v3 + 184);

    return sub_100C7BA0C(v3 + 16, v21);
  }

  else
  {
    v10 = *(v3 + 328);
    *(v3 + 104) = *(v3 + 312);
    *(v3 + 112) = sub_100D13BF8(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
    v11 = sub_1000280DC((v3 + 80));
    sub_100D11DC8(v10, v11, type metadata accessor for SharedBeaconRecord);
    v12 = swift_task_alloc();
    *(v3 + 552) = v12;
    *v12 = v3;
    v12[1] = sub_100CA7764;
    v13 = *(v3 + 288);
    v14 = *(v3 + 200);

    return sub_100CA0680(v13, v3 + 80);
  }
}

uint64_t sub_100CA7604()
{
  v1 = v0[57];
  v2 = v0[41];
  v3 = v0[24];

  sub_100018D00(v2, type metadata accessor for SharedBeaconRecord);
  v5 = v0[50];
  v4 = v0[51];
  v7 = v0[48];
  v6 = v0[49];
  v9 = v0[46];
  v8 = v0[47];
  v10 = v0[45];
  v11 = v0[41];
  v12 = v0[38];
  v13 = v0[36];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[66];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100CA7764()
{
  v2 = *v1;
  v3 = (*v1)[69];
  v4 = *v1;
  v2[70] = v0;

  v5 = v2[25];
  if (v0)
  {
    v6 = v2[19];

    v7 = sub_100CA8CC4;
  }

  else
  {
    sub_100007BAC(v2 + 10);
    v7 = sub_100CA78A4;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100CA78A4()
{
  v71 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 368);
  v5 = *(v0 + 336);
  v6 = *(v0 + 176);
  v2(*(v0 + 376), *(v0 + 184), v5);
  v2(v4, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v63 = *(v0 + 536);
    v65 = *(v0 + 544);
    v9 = *(v0 + 520);
    v10 = *(v0 + 512);
    v61 = *(v0 + 376);
    v67 = *(v0 + 368);
    v11 = *(v0 + 336);
    v12 = *(v0 + 649);
    v13 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v13 = 136447491;
    v14 = sub_10125403C(v12);
    v16 = sub_1000136BC(v14, v15, v70);

    *(v13 + 4) = v16;
    *(v0 + 120) = 0;
    *(v0 + 160) = v10;
    *(v13 + 12) = 2082;
    *(v0 + 168) = v9;
    *(v0 + 128) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v17._countAndFlagsBits = 3026478;
    v17._object = 0xE300000000000000;
    String.append(_:)(v17);
    _print_unlocked<A, B>(_:_:)();
    v18 = sub_1000136BC(*(v0 + 120), *(v0 + 128), v70);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2160;
    *(v13 + 24) = 1752392040;
    *(v13 + 32) = 2081;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v63(v61, v11);
    v22 = sub_1000136BC(v19, v21, v70);

    *(v13 + 34) = v22;
    *(v13 + 42) = 2160;
    *(v13 + 44) = 1752392040;
    *(v13 + 52) = 2081;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v63(v67, v11);
    v26 = sub_1000136BC(v23, v25, v70);

    *(v13 + 54) = v26;
    _os_log_impl(&_mh_execute_header, v7, v8, "Downloaded keys of type: %{public}s,\nfound %{public}s.\nShare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v13, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v27 = *(v0 + 544);
    v28 = *(v0 + 536);
    v30 = *(v0 + 368);
    v29 = *(v0 + 376);
    v31 = *(v0 + 336);

    v28(v30, v31);
    v28(v29, v31);
  }

  v68 = *(v0 + 512);
  v69 = *(v0 + 520);
  v32 = *(v0 + 288);
  v34 = *(v0 + 264);
  v33 = *(v0 + 272);
  v35 = *(v0 + 248);
  v36 = *(v0 + 256);
  v66 = *(v0 + 216);
  v62 = *(v0 + 208);
  v37 = *(*(v0 + 280) + 36);
  v64 = *(v0 + 649);
  v38 = type metadata accessor for Date();
  v39 = *(*(v38 - 8) + 16);
  v39(v33, &v32[v37], v38);
  v40 = v32;
  v41 = *v32;
  v42 = v40 + v37;
  v43 = v40;
  v39(v33 + *(v36 + 24), v42, v38);
  *(v33 + *(v36 + 20)) = v41;
  v44 = *(v62 + 20);
  sub_100D11DC8(v33, &v35[v44], type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v34 + 56))(&v35[v44], 0, 1, v36);
  *v35 = v68;
  *(v35 + 1) = v69;
  v35[*(v62 + 24)] = v64;
  (*(v66 + 56))(v35, 0, 1, v62);
  sub_1001DD8EC(v35, v64);
  sub_100018D00(v33, type metadata accessor for KeyDropInterface.KeyAlignment);
  v45 = sub_10000B3A8(v43, &unk_1016C8FC0, &unk_10139D7D0);
  v48 = *(v0 + 560);
  v50 = *(v0 + 488);
  v49 = *(v0 + 496);
  while (1)
  {
    v50 &= v50 - 1;
    if (!v50)
    {
      break;
    }

    v51 = *(v0 + 192);
LABEL_11:
    *(v0 + 488) = v50;
    *(v0 + 496) = v49;
    v53 = *(*(v51 + 48) + (__clz(__rbit64(v50)) | (v49 << 6)));
    *(v0 + 649) = v53;
    if ((v53 - 7) >= 0xC && ((1 << v53) & 0x1C) == 0)
    {
      *(v0 + 650) = ((1 << v53) & 0x21) == 0;
      *(v0 + 640) = *(*(v0 + 312) + 20);
      v45 = sub_100CA70B0;
      v46 = 0;
      v47 = 0;

      return _swift_task_switch(v45, v46, v47);
    }
  }

  while (1)
  {
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      return _swift_task_switch(v45, v46, v47);
    }

    if (v52 >= (((1 << *(v0 + 648)) + 63) >> 6))
    {
      break;
    }

    v51 = *(v0 + 192);
    v50 = *(v51 + 8 * v52 + 56);
    ++v49;
    if (v50)
    {
      v49 = v52;
      goto LABEL_11;
    }
  }

  v54 = *(v0 + 192);

  v55 = *(v0 + 152);
  *(v0 + 568) = v55;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = _swiftEmptyDictionarySingleton;
  sub_100D0EDD0(v55, sub_100D0E130, 0, isUniquelyReferenced_nonNull_native, v70);

  *(v0 + 576) = v70[0];
  v57 = swift_task_alloc();
  *(v0 + 584) = v57;
  *v57 = v0;
  v57[1] = sub_100CA7F1C;
  v58 = *(v0 + 200);
  v59 = *(v0 + 184);

  return sub_100C7BA0C(v0 + 16, v59);
}

uint64_t sub_100CA7F1C()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v10 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = v2[72];
    v5 = v2[71];
    v6 = v2[25];

    v7 = sub_100CA8E2C;
    v8 = v6;
  }

  else
  {
    v8 = v2[25];
    v7 = sub_100CA8050;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100CA8050()
{
  v64 = v0;
  v1 = *(v0 + 72);
  *(v0 + 136) = v1;
  v58 = *(v0 + 240);
  v2 = v1 + 64;
  v56 = *(v0 + 216);
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v61 = v1;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = *(v0 + 192);
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v7 << 6);
    v13 = *(*(v61 + 48) + v12);
    v14 = (*(v61 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    sub_100017D5C(*v14, v15);
    if ((sub_10111EFE8(v13, v10) & 1) == 0)
    {
      goto LABEL_9;
    }

    v17 = *(v0 + 240);
    v50 = *(v0 + 208);
    v52 = *(v0 + 232);
    (*(*(v0 + 264) + 56))(&v17[*(v50 + 20)], 1, 1, *(v0 + 256));
    *v17 = 1;
    *(v58 + 8) = 1;
    v17[*(v50 + 24)] = v13;
    sub_100D12974(v17, v52, type metadata accessor for BookmarkMetaData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v8;
    v19 = sub_100771F0C(v13);
    v22 = v8[2];
    v23 = (v20 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return _swift_task_switch(v19, v20, v21);
    }

    if (v8[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v54 = v19;
      v28 = v20;
      sub_101005B0C();
      v19 = v54;
      v8 = v63;
      v27 = *(v0 + 232);
      if (v28)
      {
        goto LABEL_16;
      }

LABEL_18:
      v8[(v19 >> 6) + 8] |= 1 << v19;
      *(v8[6] + v19) = v13;
      sub_100D12974(v27, v8[7] + *(v56 + 72) * v19, type metadata accessor for BookmarkMetaData);
      v19 = sub_100016590(v16, v15);
      v29 = v8[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_32;
      }

      v8[2] = v30;
    }

    else
    {
      v53 = v20;
      sub_100FE7AB0(v25, isUniquelyReferenced_nonNull_native);
      v8 = v63;
      v19 = sub_100771F0C(v13);
      v26 = v20 & 1;
      LOBYTE(v20) = v53;
      if ((v53 & 1) != v26)
      {
LABEL_28:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_15:
      v27 = *(v0 + 232);
      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_16:
      sub_100729120(v27, v8[7] + *(v56 + 72) * v19);
LABEL_9:
      sub_100016590(v16, v15);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v31 = *(v0 + 592);
  v32 = *(v0 + 576);
  v33 = *(v0 + 192);

  sub_10000B3A8(v0 + 136, &qword_1016B9B60, &qword_1013E36D8);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v32;
  sub_100D0EDD0(v8, sub_100D0E130, 0, v34, &v63);

  v35 = v63;
  *(v0 + 600) = v63;
  if (sub_10111EFE8(9, v33))
  {
    *(v0 + 644) = *(*(v0 + 312) + 20);
    v19 = sub_100CA8550;
    v20 = 0;
    v21 = 0;

    return _swift_task_switch(v19, v20, v21);
  }

  v36 = *(v0 + 568);
  v37 = *(v0 + 456);
  v38 = *(v0 + 328);
  sub_1001BAF34(v0 + 16);

  sub_100018D00(v38, type metadata accessor for SharedBeaconRecord);
  v40 = *(v0 + 400);
  v39 = *(v0 + 408);
  v42 = *(v0 + 384);
  v41 = *(v0 + 392);
  v44 = *(v0 + 368);
  v43 = *(v0 + 376);
  v45 = *(v0 + 360);
  v46 = *(v0 + 328);
  v47 = *(v0 + 304);
  v51 = *(v0 + 288);
  v55 = *(v0 + 272);
  v57 = *(v0 + 248);
  v59 = *(v0 + 240);
  v60 = *(v0 + 232);
  v62 = *(v0 + 224);

  v48 = *(v0 + 8);

  return v48(v35);
}

uint64_t sub_100CA8550()
{
  v1 = *(v0 + 644);
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(*(v0 + 456) + *(v0 + 480));
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = swift_task_alloc();
  *(v0 + 608) = v6;
  *v6 = v0;
  v6[1] = sub_100CA8614;
  v7 = *(v0 + 360);

  return sub_100687010(v7, v3 + v1);
}

uint64_t sub_100CA8614(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 608);
  v16 = *v4;
  *(v6 + 616) = a1;
  *(v6 + 624) = a2;
  *(v6 + 632) = v3;

  if (v3)
  {
    v8 = *(v6 + 568);
    (*(*(v6 + 344) + 8))(*(v6 + 360), *(v6 + 336));

    v9 = sub_100CA8AF8;
    v10 = 0;
  }

  else
  {
    v11 = *(v6 + 360);
    v12 = *(v6 + 336);
    v13 = *(v6 + 344);
    v14 = *(v6 + 200);
    *(v6 + 652) = a3;
    (*(v13 + 8))(v11, v12);
    v9 = sub_100CA8788;
    v10 = v14;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100CA8788()
{
  v41 = v0;
  if (*(v0 + 652))
  {
    v1 = *(v0 + 568);
    v2 = *(v0 + 456);
    v3 = *(v0 + 328);
    sub_1001BAF34(v0 + 16);

    sub_100018D00(v3, type metadata accessor for SharedBeaconRecord);
    v4 = *(v0 + 600);
  }

  else
  {
    v5 = *(v0 + 632);
    v6 = *(v0 + 624);
    v7 = *(v0 + 616);
    v8 = *(v0 + 600);
    v34 = *(v0 + 456);
    v36 = *(v0 + 568);
    v38 = *(v0 + 328);
    v9 = *(v0 + 224);
    v10 = *(v0 + 208);
    (*(*(v0 + 264) + 56))(&v9[*(v10 + 20)], 1, 1, *(v0 + 256));
    *v9 = v7;
    *(v9 + 1) = v6;
    v9[*(v10 + 24)] = 9;
    sub_1000BC4D4(&qword_1016B9B68, &unk_1013E36E0);
    v11 = (sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0) - 8);
    v12 = *(*v11 + 72);
    v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v15 = (v14 + v13);
    v16 = v11[14];
    *v15 = 9;
    sub_100D11DC8(v9, &v15[v16], type metadata accessor for BookmarkMetaData);
    v17 = sub_100907F84(v14);
    swift_setDeallocating();
    sub_10000B3A8(v15, &qword_1016A5AB8, &unk_1013B35E0);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v8;
    sub_100D0EDD0(v17, sub_100D0E130, 0, isUniquelyReferenced_nonNull_native, &v40);

    sub_1001BAF34(v0 + 16);

    sub_100018D00(v9, type metadata accessor for BookmarkMetaData);

    sub_100018D00(v38, type metadata accessor for SharedBeaconRecord);
    v4 = v40;
  }

  v39 = v4;
  v20 = *(v0 + 400);
  v19 = *(v0 + 408);
  v22 = *(v0 + 384);
  v21 = *(v0 + 392);
  v24 = *(v0 + 368);
  v23 = *(v0 + 376);
  v25 = *(v0 + 360);
  v26 = *(v0 + 328);
  v27 = *(v0 + 304);
  v28 = *(v0 + 288);
  v31 = *(v0 + 272);
  v32 = *(v0 + 248);
  v33 = *(v0 + 240);
  v35 = *(v0 + 232);
  v37 = *(v0 + 224);

  v29 = *(v0 + 8);

  return v29(v39);
}

uint64_t sub_100CA8AF8()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 200);

  return _swift_task_switch(sub_100CA8B64, v2, 0);
}

uint64_t sub_100CA8B64()
{
  v1 = v0[57];
  v2 = v0[41];
  sub_1001BAF34((v0 + 2));

  sub_100018D00(v2, type metadata accessor for SharedBeaconRecord);
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];
  v10 = v0[41];
  v11 = v0[38];
  v12 = v0[36];
  v15 = v0[34];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[79];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100CA8CC4()
{
  v1 = v0[57];
  v2 = v0[41];
  v3 = v0[24];

  sub_100018D00(v2, type metadata accessor for SharedBeaconRecord);
  sub_100007BAC(v0 + 10);
  v5 = v0[50];
  v4 = v0[51];
  v7 = v0[48];
  v6 = v0[49];
  v9 = v0[46];
  v8 = v0[47];
  v10 = v0[45];
  v11 = v0[41];
  v12 = v0[38];
  v13 = v0[36];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[70];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100CA8E2C()
{
  v1 = v0[57];
  v2 = v0[41];

  sub_100018D00(v2, type metadata accessor for SharedBeaconRecord);
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];
  v10 = v0[41];
  v11 = v0[38];
  v12 = v0[36];
  v15 = v0[34];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[74];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100CA8F80(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 100) = a3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for MemberSharingCircle();
  *(v4 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v8 = *(v6 + 24);
  *(v4 + 96) = v8;
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_100CA906C;

  return sub_100CA9B94(a2 + v8);
}

uint64_t sub_100CA906C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 101) = a1;

  if (v1)
  {
    v6 = *(v3 + 48);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 32);

    return _swift_task_switch(sub_100CA91BC, v9, 0);
  }
}

uint64_t sub_100CA91BC()
{
  v1 = *(v0 + 101);
  if (v1 > 4)
  {

    v3 = &off_101607750;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
      v3 = &off_101607750;
    }

    else
    {
      v3 = &off_101607778;
    }
  }

  v4 = *(v0 + 100);
  v5 = sub_100B04978(v3);
  *(v0 + 64) = v5;
  if (v4 == 1)
  {
    v6 = v5;
    v7 = *(v0 + 96);
    v8 = *(v0 + 24);
    v9 = *(*(v0 + 40) + 28);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_100CA94E4;
    v11 = *(v0 + 32);

    return sub_100CA6228(v8 + v7, v8 + v9, v6);
  }

  else
  {
    v13 = sub_100907F84(_swiftEmptyArrayStorage);
    v25 = *(v0 + 101);
    v23 = *(v0 + 96);
    v24 = *(v0 + 64);
    v14 = *(v0 + 40);
    v26 = v13;
    v27 = *(v0 + 48);
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = *(v14 + 28);
    v18 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
    v19 = v18[5];
    v20 = type metadata accessor for UUID();
    v21 = *(*(v20 - 8) + 16);
    v21(v16 + v19, v15 + v17, v20);
    v21(v16 + v18[6], v15 + v23, v20);
    v21(v16 + v18[7], v15 + *(v14 + 32), v20);
    UUID.init()();
    *(v16 + v18[8]) = v24;
    *(v16 + v18[9]) = v25;
    *(v16 + v18[10]) = 1;
    *(v16 + v18[11]) = v26;
    static Date.trustedNow.getter(v16 + v18[12]);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100CA94E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_100CA97A0;
  }

  else
  {
    v4[11] = a1;
    v8 = sub_100CA9620;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100CA9620()
{
  v13 = *(v0 + 101);
  v11 = *(v0 + 96);
  v12 = *(v0 + 64);
  v1 = *(v0 + 40);
  v14 = *(v0 + 88);
  v15 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v1 + 28);
  v5 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 16);
  v8(v2 + v6, v3 + v4, v7);
  v8(v2 + v5[6], v3 + v11, v7);
  v8(v2 + v5[7], v3 + *(v1 + 32), v7);
  UUID.init()();
  *(v2 + v5[8]) = v12;
  *(v2 + v5[9]) = v13;
  *(v2 + v5[10]) = 1;
  *(v2 + v5[11]) = v14;
  static Date.trustedNow.getter(v2 + v5[12]);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100CA97A0()
{
  v37 = v0;
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BF08);
  sub_100D11DC8(v3, v2, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 80);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v8 + 28);
    type metadata accessor for UUID();
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100018D00(v9, type metadata accessor for MemberSharingCircle);
    v17 = sub_1000136BC(v14, v16, &v36);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to retrieve existing keys for circle %{private,mask.hash}s, error: %@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v19 = *(v0 + 48);

    sub_100018D00(v19, type metadata accessor for MemberSharingCircle);
  }

  v20 = *(v0 + 80);
  v35 = sub_100907F84(_swiftEmptyArrayStorage);

  v33 = *(v0 + 101);
  v31 = *(v0 + 96);
  v32 = *(v0 + 64);
  v21 = *(v0 + 40);
  v34 = *(v0 + 48);
  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  v24 = *(v21 + 28);
  v25 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v26 = v25[5];
  v27 = type metadata accessor for UUID();
  v28 = *(*(v27 - 8) + 16);
  v28(v23 + v26, v22 + v24, v27);
  v28(v23 + v25[6], v22 + v31, v27);
  v28(v23 + v25[7], v22 + *(v21 + 32), v27);
  UUID.init()();
  *(v23 + v25[8]) = v32;
  *(v23 + v25[9]) = v33;
  *(v23 + v25[10]) = 1;
  *(v23 + v25[11]) = v35;
  static Date.trustedNow.getter(v23 + v25[12]);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100CA9B94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
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
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100CA9CB0, v1, 0);
}

uint64_t sub_100CA9CB0()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 96) = v1;
  return _swift_task_switch(sub_100CA9CD4, v1, 0);
}

uint64_t sub_100CA9CD4()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[13] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_100CA9E38;
  v9 = v0[11];
  v10 = v0[8];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D14908, v6, v10);
}

uint64_t sub_100CA9E38()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100CA9F64, v3, 0);
}

uint64_t sub_100CA9F64()
{
  v1 = v0[10];
  sub_1000D2A70(v0[11], v1, &unk_101698C30, &unk_101392630);
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(*(v2 - 1) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[10];
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &unk_101698C30, &unk_101392630);
LABEL_3:
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[9];
    v9 = v0[7];
    sub_1001BAEE0();
    swift_allocError();
    *v10 = 17;
    swift_willThrow();
    sub_10000B3A8(v7, &unk_101698C30, &unk_101392630);

    v11 = v0[1];

    return v11();
  }

  v13 = *(v5 + v2[16]);
  sub_100018D00(v5, type metadata accessor for SharedBeaconRecord);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      sub_10000B3A8(v0[11], &unk_101698C30, &unk_101392630);
      v14 = 3;
      goto LABEL_20;
    }

    if (v13 != 4)
    {
      sub_10000B3A8(v0[11], &unk_101698C30, &unk_101392630);
      v14 = 5;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v13)
    {
      goto LABEL_3;
    }

    if (v13 != 1)
    {
      sub_10000B3A8(v0[11], &unk_101698C30, &unk_101392630);
      v14 = 0;
      goto LABEL_20;
    }
  }

  v15 = v0[9];
  sub_1000D2AD8(v0[11], v15, &unk_101698C30, &unk_101392630);
  v16 = v3(v15, 1, v2);
  v17 = v0[9];
  if (v16 == 1)
  {
    sub_10000B3A8(v17, &unk_101698C30, &unk_101392630);
  }

  else if (*(v17 + v2[11]) == -1)
  {
    v18 = *(v17 + v2[12]);
    sub_100018D00(v17, type metadata accessor for SharedBeaconRecord);
    if (v18 == -1)
    {
      v14 = 2;
      goto LABEL_20;
    }
  }

  else
  {
    sub_100018D00(v17, type metadata accessor for SharedBeaconRecord);
  }

  v14 = 1;
LABEL_20:
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  v22 = v0[7];

  v23 = v0[1];

  return v23(v14);
}

uint64_t sub_100CAA29C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MemberSharingCircle();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v2[10] = *(v6 + 64);
  v2[11] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100CAA3F4, v1, 0);
}

uint64_t sub_100CAA3F4()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 120);
  *(v0 + 120) = v2;
  *(v0 + 144) = *(v1 + 24);
  return _swift_task_switch(sub_100CAA420, v2, 0);
}

uint64_t sub_100CAA420()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 144), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_100CAA58C;
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100D12D44, v6, v10);
}

uint64_t sub_100CAA58C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100CAA6B8, v3, 0);
}

uint64_t sub_100CAA6B8()
{
  v55 = v0;
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + *(v1 + 40));
  if (sub_10062CFC0(*(v2 + *(v1 + 40)), &off_101607700))
  {
LABEL_2:
    sub_10000B3A8(v0[14], &unk_101698C30, &unk_101392630);
    v4 = 1;
    goto LABEL_32;
  }

  v5 = v0[13];
  sub_1000D2A70(v0[14], v5, &unk_101698C30, &unk_101392630);
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  v8 = v0[13];
  if (v7 == 1)
  {
    sub_10000B3A8(v8, &unk_101698C30, &unk_101392630);
  }

  else
  {
    v9 = *(v8 + *(v6 + 64));
    sub_100018D00(v8, type metadata accessor for SharedBeaconRecord);
    if (v9 == 4 && v3 == 4)
    {
      goto LABEL_2;
    }
  }

  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[2];
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BF08);
  sub_100D11DC8(v14, v12, type metadata accessor for MemberSharingCircle);
  sub_100D11DC8(v14, v11, type metadata accessor for MemberSharingCircle);
  sub_100D11DC8(v14, v13, type metadata accessor for MemberSharingCircle);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    v21 = v0[4];
    v22 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v22 = 141559043;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v23 = *(v21 + 28);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_100018D00(v19, type metadata accessor for MemberSharingCircle);
    v27 = sub_1000136BC(v24, v26, &v54);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2082;
    v28 = *(v20 + *(v1 + 40));
    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v30 = 0xE500000000000000;
        v29 = 0x746E65732ELL;
      }

      else
      {
        if (v28 == 4)
        {
          v29 = 0xD000000000000013;
        }

        else
        {
          v29 = 0x64656C6961662ELL;
        }

        if (v28 == 4)
        {
          v30 = 0x800000010134B830;
        }

        else
        {
          v30 = 0xE700000000000000;
        }
      }
    }

    else if (*(v20 + *(v1 + 40)))
    {
      if (v28 == 1)
      {
        v29 = 0x657470656363612ELL;
      }

      else
      {
        v29 = 0x747365757165722ELL;
      }

      if (v28 == 1)
      {
        v30 = 0xE900000000000064;
      }

      else
      {
        v30 = 0xEA00000000006465;
      }
    }

    else
    {
      v30 = 0xEB00000000646574;
      v29 = 0x70656363616E752ELL;
    }

    v53 = v0[14];
    v36 = v0[8];
    v37 = v0[5];
    v38 = v0[4];
    sub_100018D00(v0[6], type metadata accessor for MemberSharingCircle);
    v39 = sub_1000136BC(v29, v30, &v54);

    *(v22 + 24) = v39;
    *(v22 + 32) = 2160;
    *(v22 + 34) = 1752392040;
    *(v22 + 42) = 2081;
    v40 = v37 + *(v38 + 24);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_100018D00(v37, type metadata accessor for MemberSharingCircle);
    v44 = sub_1000136BC(v41, v43, &v54);

    *(v22 + 44) = v44;
    _os_log_impl(&_mh_execute_header, v16, v17, "Not allowed to download keys for circle: %{private,mask.hash}s, acceptanceState: %{public}s, beacon-id: %{private,mask.hash}s.", v22, 0x34u);
    swift_arrayDestroy();

    v35 = v53;
  }

  else
  {
    v31 = v0[14];
    v33 = v0[6];
    v32 = v0[7];
    v34 = v0[5];

    sub_100018D00(v34, type metadata accessor for MemberSharingCircle);
    sub_100018D00(v33, type metadata accessor for MemberSharingCircle);
    sub_100018D00(v32, type metadata accessor for MemberSharingCircle);
    v35 = v31;
  }

  sub_10000B3A8(v35, &unk_101698C30, &unk_101392630);
  v4 = 0;
LABEL_32:
  v46 = v0[13];
  v45 = v0[14];
  v47 = v0[11];
  v49 = v0[6];
  v48 = v0[7];
  v50 = v0[5];

  v51 = v0[1];

  return v51(v4);
}

uint64_t sub_100CAAC60(uint64_t a1)
{
  v2[121] = v1;
  v2[120] = a1;
  v3 = *(*(sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40) - 8) + 64) + 15;
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v4 = type metadata accessor for TimeBasedKey();
  v2[124] = v4;
  v5 = *(v4 - 8);
  v2[125] = v5;
  v6 = *(v5 + 64) + 15;
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v2[128] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[129] = swift_task_alloc();
  v9 = type metadata accessor for AES.GCM.Nonce();
  v2[130] = v9;
  v10 = *(v9 - 8);
  v2[131] = v10;
  v11 = *(v10 + 64) + 15;
  v2[132] = swift_task_alloc();
  v12 = type metadata accessor for P256.Signing.ECDSASignature();
  v2[133] = v12;
  v13 = *(v12 - 8);
  v2[134] = v13;
  v14 = *(v13 + 64) + 15;
  v2[135] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_1016AF958, &qword_1013CADF8) - 8) + 64) + 15;
  v2[136] = swift_task_alloc();
  v16 = type metadata accessor for SymmetricKey();
  v2[137] = v16;
  v17 = *(v16 - 8);
  v2[138] = v17;
  v18 = *(v17 + 64) + 15;
  v2[139] = swift_task_alloc();
  v19 = type metadata accessor for AES.GCM.SealedBox();
  v2[140] = v19;
  v20 = *(v19 - 8);
  v2[141] = v20;
  v21 = *(v20 + 64) + 15;
  v2[142] = swift_task_alloc();
  v22 = type metadata accessor for P256.Signing.PrivateKey();
  v2[143] = v22;
  v23 = *(v22 - 8);
  v2[144] = v23;
  v24 = *(v23 + 64) + 15;
  v2[145] = swift_task_alloc();
  v2[146] = swift_task_alloc();
  v25 = type metadata accessor for P256PrivateKey();
  v2[147] = v25;
  v26 = *(v25 - 8);
  v2[148] = v26;
  v27 = *(v26 + 64) + 15;
  v2[149] = swift_task_alloc();
  v28 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v2[150] = v28;
  v29 = *(v28 - 8);
  v2[151] = v29;
  v30 = *(v29 + 64) + 15;
  v2[152] = swift_task_alloc();
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v2[162] = swift_task_alloc();
  v2[163] = swift_task_alloc();
  v31 = *(*(sub_1000BC4D4(&qword_1016B9AE8, &unk_1013E35D0) - 8) + 64) + 15;
  v2[164] = swift_task_alloc();
  v2[165] = swift_task_alloc();
  v2[166] = swift_task_alloc();
  v2[167] = swift_task_alloc();
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  v2[170] = swift_task_alloc();
  v2[171] = swift_task_alloc();
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v2[174] = swift_task_alloc();
  v2[175] = swift_task_alloc();
  v2[176] = swift_task_alloc();
  v32 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v2[177] = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  v34 = *(*(sub_1000BC4D4(&qword_101698360, &qword_1013E35F0) - 8) + 64) + 15;
  v2[180] = swift_task_alloc();
  v35 = type metadata accessor for SymmetricKey256();
  v2[181] = v35;
  v36 = *(v35 - 8);
  v2[182] = v36;
  v37 = *(v36 + 64) + 15;
  v2[183] = swift_task_alloc();
  v38 = type metadata accessor for KeyDropJoinToken(0);
  v2[184] = v38;
  v39 = *(v38 - 8);
  v2[185] = v39;
  v40 = *(v39 + 64) + 15;
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v2[188] = swift_task_alloc();
  v41 = type metadata accessor for SharingCircleKeyManager.DelegatedKeychain(0);
  v2[189] = v41;
  v42 = *(*(v41 - 8) + 64) + 15;
  v2[190] = swift_task_alloc();
  v43 = type metadata accessor for UUID();
  v2[191] = v43;
  v44 = *(v43 - 8);
  v2[192] = v44;
  v2[193] = *(v44 + 64);
  v2[194] = swift_task_alloc();
  v45 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[195] = v45;
  v46 = *(*(v45 - 8) + 64) + 15;
  v2[196] = swift_task_alloc();
  v47 = type metadata accessor for OwnedBeaconRecord();
  v2[197] = v47;
  v48 = *(v47 - 8);
  v2[198] = v48;
  v49 = *(v48 + 64) + 15;
  v2[199] = swift_task_alloc();
  v50 = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[200] = v50;
  v51 = *(*(v50 - 8) + 64) + 15;
  v2[201] = swift_task_alloc();
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();

  return _swift_task_switch(sub_100CAB51C, v1, 0);
}

uint64_t sub_100CAB51C()
{
  v34 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1696);
  v2 = *(v0 + 1688);
  v3 = *(v0 + 1680);
  v4 = *(v0 + 960);
  v5 = type metadata accessor for Logger();
  *(v0 + 1704) = sub_1000076D4(v5, qword_10177AE28);
  sub_100D11DC8(v4, v1, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v2, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v4, v3, type metadata accessor for SharingCircleKeyManager.Instruction);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1696);
  v10 = *(v0 + 1688);
  v11 = *(v0 + 1680);
  if (v8)
  {
    v31 = *(v0 + 1600);
    v32 = v7;
    v12 = *(v0 + 1528);
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
    _os_log_impl(&_mh_execute_header, v6, v32, "Delegated keys to upload: %{public}s,\nshare-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s.", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100018D00(v11, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v10, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100018D00(v9, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v28 = *(v0 + 1600);
  v29 = *(*(v0 + 968) + 120);
  *(v0 + 1712) = v29;
  *(v0 + 1904) = *(v28 + 24);

  return _swift_task_switch(sub_100CAB8E8, v29, 0);
}

uint64_t sub_100CAB8E8()
{
  v1 = *(v0 + 1712);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1528);
  (*(v4 + 16))(v2, *(v0 + 960) + *(v0 + 1904), v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 1720) = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v5);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 1728) = v9;
  *v9 = v0;
  v9[1] = sub_100CABA88;
  v10 = *(v0 + 1568);
  v11 = *(v0 + 1560);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D14904, v7, v11);
}

uint64_t sub_100CABA88()
{
  v1 = *(*v0 + 1728);
  v2 = *(*v0 + 1720);
  v3 = *(*v0 + 968);
  v5 = *v0;

  return _swift_task_switch(sub_100CABBE8, v3, 0);
}

uint64_t sub_100CABBE8()
{
  v1 = v0[196];
  if ((*(v0[198] + 48))(v1, 1, v0[197]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    sub_1001BAEE0();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
    v3 = v0[212];
    v4 = v0[211];
    v5 = v0[210];
    v6 = v0[209];
    v7 = v0[208];
    v8 = v0[207];
    v9 = v0[206];
    v10 = v0[205];
    v11 = v0[204];
    v12 = v0[203];
    v21 = v0[202];
    v22 = v0[201];
    v23 = v0[199];
    v24 = v0[196];
    v25 = v0[194];
    v26 = v0[190];
    v27 = v0[188];
    v28 = v0[187];
    v29 = v0[186];
    v30 = v0[183];
    v31 = v0[180];
    v32 = v0[179];
    v33 = v0[178];
    v34 = v0[176];
    v35 = v0[175];
    v36 = v0[174];
    v37 = v0[173];
    v38 = v0[172];
    v39 = v0[171];
    v40 = v0[170];
    v41 = v0[169];
    v42 = v0[168];
    v43 = v0[167];
    v44 = v0[166];
    v45 = v0[165];
    v46 = v0[164];
    v47 = v0[163];
    v48 = v0[162];
    v49 = v0[161];
    v50 = v0[160];
    v51 = v0[159];
    v52 = v0[158];
    v53 = v0[157];
    v54 = v0[156];
    v55 = v0[155];
    v56 = v0[154];
    v57 = v0[153];
    v58 = v0[152];
    v59 = v0[149];
    v60 = v0[146];
    v61 = v0[145];
    v62 = v0[142];
    v63 = v0[139];
    v64 = v0[136];
    v65 = v0[135];
    v66 = v0[132];
    v67 = v0[129];
    v68 = v0[127];
    v69 = v0[126];
    v70 = v0[123];
    v71 = v0[122];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[200];
    v16 = v0[120];
    sub_100D12974(v1, v0[199], type metadata accessor for OwnedBeaconRecord);
    v17 = *(v15 + 20);
    v18 = swift_task_alloc();
    v0[217] = v18;
    *v18 = v0;
    v18[1] = sub_100CAC118;
    v19 = v0[190];
    v20 = v0[121];

    return sub_100C7B39C(v19, v16 + v17);
  }
}

uint64_t sub_100CAC118()
{
  v2 = *v1;
  v3 = *(*v1 + 1736);
  v4 = *v1;
  *(*v1 + 1744) = v0;

  v5 = *(v2 + 968);
  if (v0)
  {
    v6 = sub_100CB3A20;
  }

  else
  {
    v6 = sub_100CAC270;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100CAC270()
{
  v244 = v0;
  v1 = *(v0 + 1520);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
LABEL_13:
    v21 = *(v0 + 1592);
    v22 = *(v0 + 1520);
    sub_1001BAEE0();
    swift_allocError();
    *v23 = 21;
    swift_willThrow();
    sub_100018D00(v21, type metadata accessor for OwnedBeaconRecord);
    sub_100018D00(v22, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v24 = *(v0 + 1696);
    v25 = *(v0 + 1688);
    v26 = *(v0 + 1680);
    v27 = *(v0 + 1672);
    v28 = *(v0 + 1664);
    v29 = *(v0 + 1656);
    v30 = *(v0 + 1648);
    v31 = *(v0 + 1640);
    v32 = *(v0 + 1632);
    v33 = *(v0 + 1624);
    v126 = *(v0 + 1616);
    v128 = *(v0 + 1608);
    v130 = *(v0 + 1592);
    v132 = *(v0 + 1568);
    v134 = *(v0 + 1552);
    v136 = *(v0 + 1520);
    v138 = *(v0 + 1504);
    v140 = *(v0 + 1496);
    v142 = *(v0 + 1488);
    v144 = *(v0 + 1464);
    v146 = *(v0 + 1440);
    v148 = *(v0 + 1432);
    v150 = *(v0 + 1424);
    v152 = *(v0 + 1408);
    v154 = *(v0 + 1400);
    v156 = *(v0 + 1392);
    v158 = *(v0 + 1384);
    v160 = *(v0 + 1376);
    v162 = *(v0 + 1368);
    v164 = *(v0 + 1360);
    v166 = *(v0 + 1352);
    v168 = *(v0 + 1344);
    v170 = *(v0 + 1336);
    v172 = *(v0 + 1328);
    v174 = *(v0 + 1320);
    v176 = *(v0 + 1312);
    v178 = *(v0 + 1304);
    v180 = *(v0 + 1296);
    v182 = *(v0 + 1288);
    v184 = *(v0 + 1280);
    v186 = *(v0 + 1272);
    v188 = *(v0 + 1264);
    v190 = *(v0 + 1256);
    v192 = *(v0 + 1248);
    v194 = *(v0 + 1240);
    v196 = *(v0 + 1232);
    v198 = *(v0 + 1224);
    v200 = *(v0 + 1216);
    v202 = *(v0 + 1192);
    v204 = *(v0 + 1168);
    v206 = *(v0 + 1160);
    v208 = *(v0 + 1136);
    v210 = *(v0 + 1112);
    v213 = *(v0 + 1088);
    v216 = *(v0 + 1080);
    v221 = *(v0 + 1056);
    v225 = *(v0 + 1032);
    v228 = *(v0 + 1016);
    v233 = *(v0 + 1008);
    v236 = *(v0 + 984);
    v239 = *(v0 + 976);

    v34 = *(v0 + 8);

    return v34();
  }

  v4 = 0;
  v5 = *(v0 + 1480);
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_56:
      __break(1u);
    }

    sub_100D11DC8(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, *(v0 + 1488), type metadata accessor for KeyDropJoinToken);
    if (qword_101694560 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 1488);
    sub_1000076D4(*(v0 + 1528), qword_10177A900);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v4;
    sub_100018D00(*(v0 + 1488), type metadata accessor for KeyDropJoinToken);
    if (v3 == v4)
    {
      goto LABEL_13;
    }
  }

  v7 = *(v0 + 1520);
  v8 = *(v0 + 1512);
  v9 = *(v0 + 1504);
  v10 = *(v0 + 1496);
  v11 = *(v0 + 1456);
  v12 = *(v0 + 1448);
  v13 = *(v0 + 1440);
  sub_100D12974(*(v0 + 1488), v10, type metadata accessor for KeyDropJoinToken);
  sub_100D12974(v10, v9, type metadata accessor for KeyDropJoinToken);
  sub_1000D2A70(v7 + *(v8 + 20), v13, &qword_101698360, &qword_1013E35F0);
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    v14 = *(v0 + 1440);
    sub_100018D00(*(v0 + 1504), type metadata accessor for KeyDropJoinToken);
    sub_10000B3A8(v14, &qword_101698360, &qword_1013E35F0);
    goto LABEL_13;
  }

  v15 = *(v0 + 1520);
  v16 = *(v0 + 1512);
  (*(*(v0 + 1456) + 32))(*(v0 + 1464), *(v0 + 1440), *(v0 + 1448));
  v17 = (v15 + *(v16 + 24));
  v18 = *v17;
  *(v0 + 1752) = *v17;
  v19 = v17[1];
  *(v0 + 1760) = v19;
  if (v19 >> 60 == 15)
  {
    v20 = *(v0 + 1504);
    (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
    sub_100018D00(v20, type metadata accessor for KeyDropJoinToken);
    goto LABEL_13;
  }

  v36 = (v0 + 1752);
  v37 = *(v0 + 1600);
  v38 = *(v0 + 1432);
  v39 = *(v0 + 1416);
  v40 = *(v0 + 960);
  sub_100017D5C(v18, v19);
  static Date.trustedNow.getter(v38);
  static Date.trustedNow.getter(v38 + *(v39 + 24));
  *(v38 + *(v39 + 20)) = 1;
  v41 = *(v40 + *(v37 + 32));
  *(v0 + 1768) = v41;
  v42 = *(v41 + 32);
  *(v0 + 1923) = v42;
  v43 = 1 << v42;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  v45 = v44 & *(v41 + 56);

  v46 = 0;
  v47 = _swiftEmptyArrayStorage;
  v48 = xmmword_101385D80;
  *&v49 = 136446466;
LABEL_20:
  *(v0 + 1792) = v47;
  while (v45)
  {
    v50 = *(v0 + 1768);
LABEL_27:
    *(v0 + 1808) = v46;
    *(v0 + 1800) = v45;
    v52 = *(*(v50 + 48) + (__clz(__rbit64(v45)) | (v46 << 6)));
    *(v0 + 1924) = v52;
    if (v52 == 17)
    {
      v112 = *(v0 + 1592);
      *(v0 + 640) = *(v0 + 1576);
      v113 = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
      *(v0 + 1832) = v113;
      *(v0 + 648) = v113;
      v114 = sub_1000280DC((v0 + 616));
      sub_100D11DC8(v112, v114, type metadata accessor for OwnedBeaconRecord);
      v115 = swift_task_alloc();
      *(v0 + 1840) = v115;
      *v115 = v0;
      v115[1] = sub_100CAFA28;
      v116 = *(v0 + 968);
      v117 = *(v0 + 960);

      return sub_100CB5688(v0 + 560, v0 + 616, v117);
    }

    if (v52 == 15)
    {
      v118 = swift_task_alloc();
      *(v0 + 1816) = v118;
      *v118 = v0;
      v118[1] = sub_100CAD67C;
      v119 = *(v0 + 1592);
      v120 = *(v0 + 968);

      return sub_100CF83A4(v0 + 304, v119);
    }

    v45 &= v45 - 1;
    if (v52 == 14)
    {
      v226 = v49;
      v234 = v48;
      v237 = v36;
      v240 = v47;
      v217 = *(v0 + 1752);
      v222 = *(v0 + 1760);
      v53 = *(v0 + 1408);
      v54 = *(v0 + 1400);
      v55 = type metadata accessor for EncryptedData();
      v56 = *(v55 - 8);
      (*(v56 + 56))(v53, 1, 1, v55);
      sub_1000D2A70(v53, v54, &qword_1016B9AE8, &unk_1013E35D0);
      v229 = *(v56 + 48);
      LODWORD(v53) = v229(v54, 1, v55);
      sub_10002E98C(v217, v222);
      v57 = *(v0 + 1400);
      if (v53 == 1)
      {
        sub_10000B3A8(*(v0 + 1400), &qword_1016B9AE8, &unk_1013E35D0);
        v218 = 0xF000000000000000;
        v223 = 0;
      }

      else
      {
        v58 = EncryptedData.cipherText.getter();
        v218 = v59;
        v223 = v58;
        (*(v56 + 8))(v57, v55);
      }

      v60 = *(v0 + 1392);
      sub_1000D2A70(*(v0 + 1408), v60, &qword_1016B9AE8, &unk_1013E35D0);
      v61 = v229(v60, 1, v55);
      v62 = *(v0 + 1392);
      if (v61 == 1)
      {
        sub_10000B3A8(*(v0 + 1392), &qword_1016B9AE8, &unk_1013E35D0);
        v211 = 0xF000000000000000;
        v214 = 0;
      }

      else
      {
        v63 = EncryptedData.initializationVector.getter();
        v211 = v64;
        v214 = v63;
        (*(v56 + 8))(v62, v55);
      }

      v65 = *(v0 + 1384);
      sub_1000D2A70(*(v0 + 1408), v65, &qword_1016B9AE8, &unk_1013E35D0);
      v66 = v229(v65, 1, v55);
      v67 = *(v0 + 1408);
      v68 = *(v0 + 1384);
      if (v66 == 1)
      {
        sub_10000B3A8(*(v0 + 1408), &qword_1016B9AE8, &unk_1013E35D0);
        sub_10000B3A8(v68, &qword_1016B9AE8, &unk_1013E35D0);
        v69 = 0;
        v70 = 0xF000000000000000;
      }

      else
      {
        v69 = EncryptedData.tag.getter();
        v70 = v71;
        sub_10000B3A8(v67, &qword_1016B9AE8, &unk_1013E35D0);
        (*(v56 + 8))(v68, v55);
      }

      v72 = *(v0 + 1432);
      v73 = *(v0 + 1304);
      v74 = *(v0 + 1296);
      v75 = *(v0 + 1200);
      *(v0 + 88) = 1;
      *(v0 + 96) = *v237;
      *(v0 + 112) = v223;
      *(v0 + 120) = v218;
      *(v0 + 128) = v214;
      *(v0 + 136) = v211;
      *(v0 + 144) = v69;
      *(v0 + 152) = v70;
      sub_100D11DC8(v72, &v73[*(v75 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
      sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
      v76 = swift_allocObject();
      v77 = *(v0 + 120);
      *(v76 + 48) = *(v0 + 104);
      *(v76 + 64) = v77;
      *(v76 + 80) = *(v0 + 136);
      *(v76 + 96) = *(v0 + 152);
      v78 = *(v0 + 88);
      *(v76 + 16) = v234;
      *(v76 + 32) = v78;
      *v73 = 14;
      *&v73[*(v75 + 24)] = v76;
      sub_100D11DC8(v73, v74, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_1003914F8(v0 + 88, v0 + 16);
      v79 = v240;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_100A5BE40(0, v240[2] + 1, 1, v240);
      }

      v81 = v79[2];
      v80 = v79[3];
      v241 = v79;
      if (v81 >= v80 >> 1)
      {
        v241 = sub_100A5BE40(v80 > 1, v81 + 1, 1, v79);
      }

      v230 = *(v0 + 1704);
      v82 = *(v0 + 1672);
      v83 = *(v0 + 1304);
      v84 = *(v0 + 1296);
      v85 = *(v0 + 1288);
      v86 = *(v0 + 1208);
      v87 = *(v0 + 960);
      *(v241 + 16) = v81 + 1;
      v47 = v241;
      sub_100D12974(v84, v241 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v81, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100D11DC8(v87, v82, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100D11DC8(v83, v85, type metadata accessor for KeyDropInterface.KeyPackage);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      v90 = os_log_type_enabled(v88, v89);
      v91 = *(v0 + 1672);
      v92 = *(v0 + 1304);
      v93 = *(v0 + 1288);
      if (v90)
      {
        v219 = v89;
        v94 = swift_slowAlloc();
        v243[0] = swift_slowAlloc();
        *v94 = v226;
        v231 = v92;
        v95 = sub_100C71778();
        v97 = v96;
        sub_100018D00(v91, type metadata accessor for SharingCircleKeyManager.Instruction);
        v98 = sub_1000136BC(v95, v97, v243);

        *(v94 + 4) = v98;
        *(v94 + 12) = 2082;
        v99 = sub_101255410();
        v101 = v100;
        sub_100018D00(v93, type metadata accessor for KeyDropInterface.KeyPackage);
        v102 = sub_1000136BC(v99, v101, v243);

        *(v94 + 14) = v102;
        v47 = v241;
        _os_log_impl(&_mh_execute_header, v88, v219, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v94, 0x16u);
        swift_arrayDestroy();

        sub_100391554(v0 + 88);
        sub_100018D00(v231, type metadata accessor for KeyDropInterface.KeyPackage);
        v49 = v226;
        v36 = v237;
        v48 = v234;
      }

      else
      {

        sub_100391554(v0 + 88);
        sub_100018D00(v93, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100018D00(v91, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100018D00(v92, type metadata accessor for KeyDropInterface.KeyPackage);
        v36 = v237;
        v48 = v234;
        v49 = v226;
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v51 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_56;
    }

    v50 = *(v0 + 1768);
    if (v51 >= (((1 << *(v0 + 1923)) + 63) >> 6))
    {
      break;
    }

    v45 = *(v50 + 8 * v51 + 56);
    ++v46;
    if (v45)
    {
      v46 = v51;
      goto LABEL_27;
    }
  }

  v242 = v47;
  v103 = *(v0 + 1696);
  v121 = *(v0 + 1688);
  v122 = *(v0 + 1680);
  v123 = *(v0 + 1672);
  v124 = *(v0 + 1664);
  v125 = *(v0 + 1656);
  v127 = *(v0 + 1648);
  v129 = *(v0 + 1640);
  v131 = *(v0 + 1632);
  v133 = *(v0 + 1624);
  v135 = *(v0 + 1616);
  v104 = *(v0 + 1592);
  v137 = *(v0 + 1608);
  v139 = *(v0 + 1568);
  v105 = *(v0 + 1520);
  v106 = *(v0 + 1504);
  v141 = *(v0 + 1552);
  v143 = *(v0 + 1496);
  v107 = *(v0 + 1464);
  v108 = *(v0 + 1456);
  v109 = *(v0 + 1448);
  v145 = *(v0 + 1488);
  v147 = *(v0 + 1440);
  v110 = *(v0 + 1432);
  v149 = *(v0 + 1424);
  v151 = *(v0 + 1408);
  v153 = *(v0 + 1400);
  v155 = *(v0 + 1392);
  v157 = *(v0 + 1384);
  v159 = *(v0 + 1376);
  v161 = *(v0 + 1368);
  v163 = *(v0 + 1360);
  v165 = *(v0 + 1352);
  v167 = *(v0 + 1344);
  v169 = *(v0 + 1336);
  v171 = *(v0 + 1328);
  v173 = *(v0 + 1320);
  v175 = *(v0 + 1312);
  v177 = *(v0 + 1304);
  v179 = *(v0 + 1296);
  v181 = *(v0 + 1288);
  v183 = *(v0 + 1280);
  v185 = *(v0 + 1272);
  v187 = *(v0 + 1264);
  v189 = *(v0 + 1256);
  v191 = *(v0 + 1248);
  v193 = *(v0 + 1240);
  v195 = *(v0 + 1232);
  v197 = *(v0 + 1224);
  v199 = *(v0 + 1216);
  v201 = *(v0 + 1192);
  v203 = *(v0 + 1168);
  v205 = *(v0 + 1160);
  v207 = *(v0 + 1136);
  v209 = *(v0 + 1112);
  v212 = *(v0 + 1088);
  v215 = *(v0 + 1080);
  v220 = *(v0 + 1056);
  v224 = *(v0 + 1032);
  v227 = *(v0 + 1016);
  v232 = *(v0 + 1008);
  v235 = *(v0 + 984);
  v238 = *(v0 + 976);
  sub_100006654(*(v0 + 1752), *(v0 + 1760));
  sub_100018D00(v110, type metadata accessor for KeyDropInterface.KeyAlignment);
  (*(v108 + 8))(v107, v109);
  sub_100018D00(v106, type metadata accessor for KeyDropJoinToken);
  sub_100018D00(v104, type metadata accessor for OwnedBeaconRecord);

  sub_100018D00(v105, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

  v111 = *(v0 + 8);

  return v111(v242);
}

uint64_t sub_100CAD67C()
{
  v2 = *v1;
  v3 = *(*v1 + 1816);
  v9 = *v1;
  *(*v1 + 1824) = v0;

  if (v0)
  {
    v4 = *(v2 + 1792);
    v5 = *(v2 + 968);

    v6 = sub_100CB3E30;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 968);
    v6 = sub_100CAD7F0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100CAD7F0()
{
  v396 = v0;
  v1 = *(v0 + 1824);
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v5 = *(v0 + 320);
  *(v0 + 368) = *(v0 + 304);
  *(v0 + 384) = v5;
  v6 = *(v0 + 352);
  *(v0 + 400) = *(v0 + 336);
  *(v0 + 416) = v6;
  sub_100D12C9C();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v9 = *(v0 + 1792);

    sub_100694A6C(v0 + 304);
LABEL_4:
    v14 = *(v0 + 1704);
    v15 = *(v0 + 1616);
    v16 = *(v0 + 1608);
    v17 = *(v0 + 960);
    sub_100D11DC8(v17, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v17, v15, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v17, v16, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v378 = v19;
      v20 = *(v0 + 1624);
      v21 = *(v0 + 1616);
      v383 = *(v0 + 1608);
      v22 = *(v0 + 1600);
      v373 = *(v0 + 1528);
      v23 = *(v0 + 1924);
      v24 = swift_slowAlloc();
      v395[0] = swift_slowAlloc();
      *v24 = 136447747;
      v25 = sub_100C71778();
      v27 = v26;
      sub_100018D00(v20, type metadata accessor for SharingCircleKeyManager.Instruction);
      v28 = sub_1000136BC(v25, v27, v395);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v29 = sub_10125403C(v23);
      v31 = sub_1000136BC(v29, v30, v395);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2160;
      *(v24 + 24) = 1752392040;
      *(v24 + 32) = 2081;
      v32 = *(v22 + 20);
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_100018D00(v21, type metadata accessor for SharingCircleKeyManager.Instruction);
      v36 = sub_1000136BC(v33, v35, v395);

      *(v24 + 34) = v36;
      *(v24 + 42) = 2160;
      *(v24 + 44) = 1752392040;
      *(v24 + 52) = 2081;
      v37 = v383 + *(v22 + 24);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_100018D00(v383, type metadata accessor for SharingCircleKeyManager.Instruction);
      v41 = sub_1000136BC(v38, v40, v395);

      *(v24 + 54) = v41;
      *(v24 + 62) = 2082;
      swift_getErrorValue();
      v42 = *(v0 + 736);
      v43 = *(v0 + 744);
      v44 = *(v0 + 752);
      v45 = Error.localizedDescription.getter();
      v47 = sub_1000136BC(v45, v46, v395);

      *(v24 + 64) = v47;
      _os_log_impl(&_mh_execute_header, v18, v378, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v24, 0x48u);
      swift_arrayDestroy();
    }

    else
    {
      v48 = *(v0 + 1624);
      v49 = *(v0 + 1616);
      v50 = *(v0 + 1608);

      sub_100018D00(v50, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v49, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v48, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v51 = *(v0 + 1768);
    v52 = *(v0 + 1760);
    v53 = *(v0 + 1752);
    v384 = *(v0 + 1592);
    v389 = *(v0 + 1520);
    v54 = *(v0 + 1504);
    v55 = *(v0 + 1464);
    v56 = *(v0 + 1456);
    v57 = *(v0 + 1448);
    v58 = *(v0 + 1432);
    swift_willThrow();

    sub_100006654(v53, v52);
    sub_100018D00(v58, type metadata accessor for KeyDropInterface.KeyAlignment);
    (*(v56 + 8))(v55, v57);
    sub_100018D00(v54, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v384, type metadata accessor for OwnedBeaconRecord);
    sub_100018D00(v389, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v59 = *(v0 + 1696);
    v60 = *(v0 + 1688);
    v61 = *(v0 + 1680);
    v62 = *(v0 + 1672);
    v63 = *(v0 + 1664);
    v64 = *(v0 + 1656);
    v65 = *(v0 + 1648);
    v66 = *(v0 + 1640);
    v67 = *(v0 + 1632);
    v68 = *(v0 + 1624);
    v247 = *(v0 + 1616);
    v249 = *(v0 + 1608);
    v251 = *(v0 + 1592);
    v253 = *(v0 + 1568);
    v255 = *(v0 + 1552);
    v257 = *(v0 + 1520);
    v259 = *(v0 + 1504);
    v261 = *(v0 + 1496);
    v263 = *(v0 + 1488);
    v265 = *(v0 + 1464);
    v267 = *(v0 + 1440);
    v269 = *(v0 + 1432);
    v271 = *(v0 + 1424);
    v273 = *(v0 + 1408);
    v275 = *(v0 + 1400);
    v277 = *(v0 + 1392);
    v279 = *(v0 + 1384);
    v281 = *(v0 + 1376);
    v283 = *(v0 + 1368);
    v285 = *(v0 + 1360);
    v287 = *(v0 + 1352);
    v289 = *(v0 + 1344);
    v291 = *(v0 + 1336);
    v293 = *(v0 + 1328);
    v295 = *(v0 + 1320);
    v297 = *(v0 + 1312);
    v299 = *(v0 + 1304);
    v301 = *(v0 + 1296);
    v304 = *(v0 + 1288);
    v306 = *(v0 + 1280);
    v308 = *(v0 + 1272);
    v311 = *(v0 + 1264);
    v313 = *(v0 + 1256);
    v316 = *(v0 + 1248);
    v319 = *(v0 + 1240);
    v322 = *(v0 + 1232);
    v325 = *(v0 + 1224);
    v328 = *(v0 + 1216);
    v331 = *(v0 + 1192);
    v334 = *(v0 + 1168);
    v337 = *(v0 + 1160);
    v340 = *(v0 + 1136);
    v345 = *(v0 + 1112);
    v349 = *(v0 + 1088);
    v354 = *(v0 + 1080);
    v360 = *(v0 + 1056);
    v366 = *(v0 + 1032);
    v374 = *(v0 + 1016);
    v379 = *(v0 + 1008);
    v385 = *(v0 + 984);
    v390 = *(v0 + 976);

    v69 = *(v0 + 8);

    return v69();
  }

  v382 = v7;
  v388 = v8;
  v10 = *(v0 + 1168);
  v11 = (*(v0 + 1504) + *(*(v0 + 1472) + 20));
  v12 = *v11;
  v13 = v11[1];
  *(v0 + 840) = *v11;
  *(v0 + 848) = v13;
  sub_100017D5C(v12, v13);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v71 = *(v0 + 1192);
  v72 = *(v0 + 1168);
  v73 = *(v0 + 1152);
  v74 = *(v0 + 1144);
  P256.Signing.PrivateKey.rawRepresentation.getter();
  v75 = *(v73 + 8);
  v75(v72, v74);
  P256PrivateKey.init(data:)();
  v375 = v75;
  v76 = *(v0 + 1464);
  v77 = *(v0 + 1448);
  v78 = *(v0 + 1136);
  v79 = *(v0 + 1112);
  v80 = *(v0 + 1088);
  v81 = *(v0 + 1048);
  v82 = *(v0 + 1040);
  *(v0 + 856) = v382;
  *(v0 + 864) = v388;
  sub_100D13BF8(&qword_1016982E8, &type metadata accessor for SymmetricKey256);
  *(v0 + 872) = KeyRepresenting.rawValue.getter();
  *(v0 + 880) = v83;
  SymmetricKey.init<A>(data:)();
  (*(v81 + 56))(v80, 1, 1, v82);
  sub_1000E0A3C();
  static AES.GCM.seal<A>(_:using:nonce:)();
  v84 = *(v0 + 1136);
  v85 = *(v0 + 1112);
  v86 = *(v0 + 1104);
  v87 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 1088), &qword_1016AF958, &qword_1013CADF8);
  (*(v86 + 8))(v85, v87);
  v88 = AES.GCM.SealedBox.combined.getter();
  if (v89 >> 60 == 15)
  {
    v90 = *(v0 + 1792);
    v91 = *(v0 + 1192);
    v92 = *(v0 + 1184);
    v93 = *(v0 + 1176);
    v94 = *(v0 + 1136);
    v95 = *(v0 + 1128);
    v96 = *(v0 + 1120);

    sub_100694A6C(v0 + 304);
    sub_1001BAEE0();
    swift_allocError();
    *v97 = 22;
    swift_willThrow();
    sub_100016590(v382, v388);

    (*(v95 + 8))(v94, v96);
    (*(v92 + 8))(v91, v93);
    goto LABEL_4;
  }

  v361 = v88;
  v367 = v89;
  v98 = *(v0 + 1192);
  v99 = *(v0 + 1176);
  v100 = *(v0 + 1160);
  sub_100D13BF8(&qword_1016982E0, &type metadata accessor for P256PrivateKey);
  *(v0 + 760) = KeyRepresenting.rawValue.getter();
  *(v0 + 768) = v101;
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v102 = *(v0 + 1136);
  result = AES.GCM.SealedBox.combined.getter();
  if (v103 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v104 = result;
    v105 = v103;
    v106 = *(v0 + 1160);
    v107 = *(v0 + 1080);
    sub_100694A6C(v0 + 304);
    *(v0 + 824) = v104;
    *(v0 + 832) = v105;
    P256.Signing.PrivateKey.signature<A>(for:)();
    v108 = *(v0 + 1136);
    v109 = *(v0 + 1080);
    v110 = *(v0 + 1072);
    v111 = *(v0 + 1064);
    v112 = *(v0 + 1056);
    v113 = *(v0 + 1048);
    v114 = *(v0 + 1040);
    sub_100016590(*(v0 + 824), *(v0 + 832));
    v393 = P256.Signing.ECDSASignature.rawRepresentation.getter();
    v355 = v115;
    (*(v110 + 8))(v109, v111);
    v116 = AES.GCM.SealedBox.ciphertext.getter();
    v350 = v117;
    v118 = AES.GCM.SealedBox.tag.getter();
    v341 = v119;
    v346 = v118;
    AES.GCM.SealedBox.nonce.getter();
    *(v0 + 720) = v114;
    *(v0 + 728) = sub_100D13BF8(&qword_1016B9B00, &type metadata accessor for AES.GCM.Nonce);
    v120 = sub_1000280DC((v0 + 696));
    (*(v113 + 16))(v120, v112, v114);
    sub_1000035D0((v0 + 696), *(v0 + 720));
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v113 + 8))(v112, v114);
    v121 = *(v0 + 808);
    v122 = *(v0 + 816);
    sub_100007BAC((v0 + 696));
    *(v0 + 496) = v393;
    *(v0 + 504) = v355;
    *(v0 + 512) = v116;
    *(v0 + 520) = v350;
    *(v0 + 528) = v346;
    *(v0 + 536) = v341;
    *(v0 + 544) = v121;
    *(v0 + 552) = v122;
    v123 = *(v0 + 512);
    *(v0 + 432) = *(v0 + 496);
    *(v0 + 448) = v123;
    v124 = *(v0 + 544);
    *(v0 + 464) = *(v0 + 528);
    *(v0 + 480) = v124;
    sub_100D12CF0();
    v125 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v356 = *(v0 + 1792);
    v126 = v125;
    v128 = v127;
    v129 = *(v0 + 1432);
    v130 = *(v0 + 1376);
    v131 = *(v0 + 1280);
    v342 = *(v0 + 1272);
    v132 = *(v0 + 1200);
    v133 = type metadata accessor for EncryptedData();
    v338 = *(v133 - 8);
    v314 = v133;
    v309 = *(v338 + 56);
    v309(v130, 1, 1);
    sub_100017D5C(v126, v128);
    sub_10125A120(1, v126, v128, v130, (v0 + 232));
    sub_100D11DC8(v129, &v131[*(v132 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v134 = swift_allocObject();
    v135 = *(v0 + 264);
    v136 = *(v0 + 280);
    v137 = *(v0 + 232);
    *(v134 + 48) = *(v0 + 248);
    *(v134 + 64) = v135;
    *(v134 + 80) = v136;
    *(v134 + 96) = *(v0 + 296);
    *(v134 + 16) = xmmword_101385D80;
    *(v134 + 32) = v137;
    *v131 = 15;
    *&v131[*(v132 + 24)] = v134;
    sub_100D11DC8(v131, v342, type metadata accessor for KeyDropInterface.KeyPackage);
    v343 = v0 + 232;
    sub_1003914F8(v0 + 232, v0 + 160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *(v0 + 1792);
    v347 = v126;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v139 = sub_100A5BE40(0, v139[2] + 1, 1, v139);
    }

    v141 = v139[2];
    v140 = v139[3];
    v351 = v128;
    if (v141 >= v140 >> 1)
    {
      v139 = sub_100A5BE40(v140 > 1, v141 + 1, 1, v139);
    }

    v142 = *(v0 + 1704);
    v143 = *(v0 + 1664);
    v144 = *(v0 + 1280);
    v145 = *(v0 + 1272);
    v146 = *(v0 + 1264);
    v147 = *(v0 + 1208);
    v148 = *(v0 + 960);
    v139[2] = v141 + 1;
    v357 = v139;
    sub_100D12974(v145, v139 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v141, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v148, v143, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v144, v146, type metadata accessor for KeyDropInterface.KeyPackage);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.default.getter();
    v151 = os_log_type_enabled(v149, v150);
    v152 = *(v0 + 1664);
    v323 = *(v0 + 1280);
    v153 = *(v0 + 1264);
    v320 = *(v0 + 1192);
    v154 = *(v0 + 1176);
    v329 = *(v0 + 1144);
    v332 = *(v0 + 1160);
    v335 = *(v0 + 1136);
    v155 = (*(v0 + 1184) + 8);
    v317 = (*(v0 + 1128) + 8);
    v156 = &unk_10138B000;
    v326 = *(v0 + 1120);
    if (v151)
    {
      v157 = swift_slowAlloc();
      v395[0] = swift_slowAlloc();
      *v157 = 136446466;
      v158 = sub_100C71778();
      v302 = v155;
      v160 = v159;
      sub_100018D00(v152, type metadata accessor for SharingCircleKeyManager.Instruction);
      v161 = sub_1000136BC(v158, v160, v395);

      *(v157 + 4) = v161;
      *(v157 + 12) = 2082;
      v162 = sub_101255410();
      v164 = v163;
      sub_100018D00(v153, type metadata accessor for KeyDropInterface.KeyPackage);
      v165 = sub_1000136BC(v162, v164, v395);

      *(v157 + 14) = v165;
      _os_log_impl(&_mh_execute_header, v149, v150, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v157, 0x16u);
      swift_arrayDestroy();

      v156 = &unk_10138B000;

      sub_100016590(v382, v388);

      sub_100922D9C(v0 + 496);
      sub_100006654(v361, v367);

      sub_100391554(v343);
      sub_100016590(v347, v351);
      sub_100018D00(v323, type metadata accessor for KeyDropInterface.KeyPackage);
      v375(v332, v329);
      (*v317)(v335, v326);
      (*v302)(v320, v154);
    }

    else
    {
      sub_100016590(v382, v388);

      sub_100922D9C(v0 + 496);
      sub_100006654(v361, v367);

      sub_100391554(v343);
      sub_100016590(v347, v351);
      sub_100018D00(v153, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v152, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v323, type metadata accessor for KeyDropInterface.KeyPackage);
      v375(v332, v329);
      (*v317)(v335, v326);
      (*v155)(v320, v154);
    }

    v167 = *(v0 + 1808);
    v168 = (*(v0 + 1800) - 1) & *(v0 + 1800);
    v169 = (v0 + 1752);
    v170 = (v338 + 48);
    v171 = (v338 + 8);
    *&v166 = v156[129];
    v172 = v357;
LABEL_21:
    *(v0 + 1792) = v172;
    while (v168)
    {
      v173 = *(v0 + 1768);
LABEL_28:
      *(v0 + 1808) = v167;
      *(v0 + 1800) = v168;
      v175 = *(*(v173 + 48) + (__clz(__rbit64(v168)) | (v167 << 6)));
      *(v0 + 1924) = v175;
      if (v175 == 17)
      {
        v234 = *(v0 + 1592);
        *(v0 + 640) = *(v0 + 1576);
        v235 = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
        *(v0 + 1832) = v235;
        *(v0 + 648) = v235;
        v236 = sub_1000280DC((v0 + 616));
        sub_100D11DC8(v234, v236, type metadata accessor for OwnedBeaconRecord);
        v237 = swift_task_alloc();
        *(v0 + 1840) = v237;
        *v237 = v0;
        v237[1] = sub_100CAFA28;
        v238 = *(v0 + 968);
        v239 = *(v0 + 960);

        return sub_100CB5688(v0 + 560, v0 + 616, v239);
      }

      if (v175 == 15)
      {
        v240 = swift_task_alloc();
        *(v0 + 1816) = v240;
        *v240 = v0;
        v240[1] = sub_100CAD67C;
        v241 = *(v0 + 1592);
        v242 = *(v0 + 968);

        return sub_100CF83A4(v0 + 304, v241);
      }

      v168 &= v168 - 1;
      if (v175 == 14)
      {
        v376 = v166;
        v380 = v169;
        v386 = v171;
        v368 = *(v0 + 1760);
        v358 = v172;
        v362 = *(v0 + 1752);
        v176 = *(v0 + 1408);
        v177 = *(v0 + 1400);
        (v309)(v176, 1, 1, v314);
        sub_1000D2A70(v176, v177, &qword_1016B9AE8, &unk_1013E35D0);
        v178 = v170;
        v179 = *v170;
        v391 = v178;
        LODWORD(v176) = v179(v177, 1, v314);
        sub_10002E98C(v362, v368);
        v180 = *(v0 + 1400);
        if (v176 == 1)
        {
          sub_10000B3A8(*(v0 + 1400), &qword_1016B9AE8, &unk_1013E35D0);
          v363 = 0xF000000000000000;
          v369 = 0;
        }

        else
        {
          v181 = EncryptedData.cipherText.getter();
          v363 = v182;
          v369 = v181;
          (*v386)(v180, v314);
        }

        v183 = *(v0 + 1392);
        sub_1000D2A70(*(v0 + 1408), v183, &qword_1016B9AE8, &unk_1013E35D0);
        v184 = v179(v183, 1, v314);
        v185 = *(v0 + 1392);
        if (v184 == 1)
        {
          sub_10000B3A8(*(v0 + 1392), &qword_1016B9AE8, &unk_1013E35D0);
          v352 = 0;
          v186 = 0xF000000000000000;
        }

        else
        {
          v352 = EncryptedData.initializationVector.getter();
          v186 = v187;
          (*v386)(v185, v314);
        }

        v188 = *(v0 + 1384);
        sub_1000D2A70(*(v0 + 1408), v188, &qword_1016B9AE8, &unk_1013E35D0);
        v189 = v179(v188, 1, v314);
        v190 = *(v0 + 1408);
        v191 = *(v0 + 1384);
        if (v189 == 1)
        {
          sub_10000B3A8(*(v0 + 1408), &qword_1016B9AE8, &unk_1013E35D0);
          sub_10000B3A8(v191, &qword_1016B9AE8, &unk_1013E35D0);
          v192 = 0;
          v193 = 0xF000000000000000;
        }

        else
        {
          v194 = *(v0 + 1384);
          v192 = EncryptedData.tag.getter();
          v193 = v195;
          sub_10000B3A8(v190, &qword_1016B9AE8, &unk_1013E35D0);
          (*v386)(v191, v314);
        }

        v196 = *(v0 + 1432);
        v197 = *(v0 + 1304);
        v198 = *(v0 + 1296);
        v199 = *(v0 + 1200);
        *(v0 + 88) = 1;
        *(v0 + 96) = *v380;
        *(v0 + 112) = v369;
        *(v0 + 120) = v363;
        *(v0 + 128) = v352;
        *(v0 + 136) = v186;
        *(v0 + 144) = v192;
        *(v0 + 152) = v193;
        sub_100D11DC8(v196, &v197[*(v199 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v200 = swift_allocObject();
        v201 = *(v0 + 120);
        *(v200 + 48) = *(v0 + 104);
        *(v200 + 64) = v201;
        *(v200 + 80) = *(v0 + 136);
        *(v200 + 96) = *(v0 + 152);
        v202 = *(v0 + 88);
        *(v200 + 16) = xmmword_101385D80;
        *(v200 + 32) = v202;
        *v197 = 14;
        *&v197[*(v199 + 24)] = v200;
        sub_100D11DC8(v197, v198, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_1003914F8(v0 + 88, v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v358 = sub_100A5BE40(0, v358[2] + 1, 1, v358);
        }

        v204 = v358[2];
        v203 = v358[3];
        if (v204 >= v203 >> 1)
        {
          v358 = sub_100A5BE40(v203 > 1, v204 + 1, 1, v358);
        }

        v370 = *(v0 + 1704);
        v205 = *(v0 + 1672);
        v206 = *(v0 + 1304);
        v207 = *(v0 + 1296);
        v208 = *(v0 + 1288);
        v209 = *(v0 + 1208);
        v210 = *(v0 + 960);
        v358[2] = v204 + 1;
        sub_100D12974(v207, v358 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v204, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v210, v205, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v206, v208, type metadata accessor for KeyDropInterface.KeyPackage);
        v211 = Logger.logObject.getter();
        v364 = static os_log_type_t.default.getter();
        v212 = v211;
        v213 = os_log_type_enabled(v211, v364);
        v214 = *(v0 + 1672);
        v371 = *(v0 + 1304);
        v215 = *(v0 + 1288);
        if (v213)
        {
          v216 = swift_slowAlloc();
          v395[0] = swift_slowAlloc();
          *v216 = v376;
          v217 = sub_100C71778();
          v219 = v218;
          sub_100018D00(v214, type metadata accessor for SharingCircleKeyManager.Instruction);
          v220 = sub_1000136BC(v217, v219, v395);

          *(v216 + 4) = v220;
          *(v216 + 12) = 2082;
          v221 = sub_101255410();
          v223 = v222;
          sub_100018D00(v215, type metadata accessor for KeyDropInterface.KeyPackage);
          v224 = sub_1000136BC(v221, v223, v395);

          *(v216 + 14) = v224;
          _os_log_impl(&_mh_execute_header, v212, v364, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v216, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v0 + 88);
          sub_100018D00(v371, type metadata accessor for KeyDropInterface.KeyPackage);
          v166 = v376;
          v172 = v358;
          v169 = v380;
          v171 = v386;
          v170 = v391;
        }

        else
        {

          sub_100391554(v0 + 88);
          sub_100018D00(v215, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v214, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v371, type metadata accessor for KeyDropInterface.KeyPackage);
          v172 = v358;
          v169 = v380;
          v171 = v386;
          v170 = v391;
          v166 = v376;
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v174 = v167 + 1;
      if (__OFADD__(v167, 1))
      {
        __break(1u);
      }

      v173 = *(v0 + 1768);
      if (v174 >= (((1 << *(v0 + 1923)) + 63) >> 6))
      {
        break;
      }

      v168 = *(v173 + 8 * v174 + 56);
      ++v167;
      if (v168)
      {
        v167 = v174;
        goto LABEL_28;
      }
    }

    v359 = v172;
    v225 = *(v0 + 1696);
    v243 = *(v0 + 1688);
    v244 = *(v0 + 1680);
    v245 = *(v0 + 1672);
    v246 = *(v0 + 1664);
    v248 = *(v0 + 1656);
    v250 = *(v0 + 1648);
    v252 = *(v0 + 1640);
    v254 = *(v0 + 1632);
    v256 = *(v0 + 1624);
    v258 = *(v0 + 1616);
    v226 = *(v0 + 1592);
    v260 = *(v0 + 1608);
    v262 = *(v0 + 1568);
    v227 = *(v0 + 1520);
    v228 = *(v0 + 1504);
    v264 = *(v0 + 1552);
    v266 = *(v0 + 1496);
    v229 = *(v0 + 1464);
    v230 = *(v0 + 1456);
    v231 = *(v0 + 1448);
    v268 = *(v0 + 1488);
    v270 = *(v0 + 1440);
    v232 = *(v0 + 1432);
    v272 = *(v0 + 1424);
    v274 = *(v0 + 1408);
    v276 = *(v0 + 1400);
    v278 = *(v0 + 1392);
    v280 = *(v0 + 1384);
    v282 = *(v0 + 1376);
    v284 = *(v0 + 1368);
    v286 = *(v0 + 1360);
    v288 = *(v0 + 1352);
    v290 = *(v0 + 1344);
    v292 = *(v0 + 1336);
    v294 = *(v0 + 1328);
    v296 = *(v0 + 1320);
    v298 = *(v0 + 1312);
    v300 = *(v0 + 1304);
    v303 = *(v0 + 1296);
    v305 = *(v0 + 1288);
    v307 = *(v0 + 1280);
    v310 = *(v0 + 1272);
    v312 = *(v0 + 1264);
    v315 = *(v0 + 1256);
    v318 = *(v0 + 1248);
    v321 = *(v0 + 1240);
    v324 = *(v0 + 1232);
    v327 = *(v0 + 1224);
    v330 = *(v0 + 1216);
    v333 = *(v0 + 1192);
    v336 = *(v0 + 1168);
    v339 = *(v0 + 1160);
    v344 = *(v0 + 1136);
    v348 = *(v0 + 1112);
    v353 = *(v0 + 1088);
    v365 = *(v0 + 1080);
    v372 = *(v0 + 1056);
    v377 = *(v0 + 1032);
    v381 = *(v0 + 1016);
    v387 = *(v0 + 1008);
    v392 = *(v0 + 984);
    v394 = *(v0 + 976);
    sub_100006654(*(v0 + 1752), *(v0 + 1760));
    sub_100018D00(v232, type metadata accessor for KeyDropInterface.KeyAlignment);
    (*(v230 + 8))(v229, v231);
    sub_100018D00(v228, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v226, type metadata accessor for OwnedBeaconRecord);

    sub_100018D00(v227, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

    v233 = *(v0 + 8);

    return v233(v359);
  }

  return result;
}

uint64_t sub_100CAFA28()
{
  v2 = *v1;
  v3 = *(*v1 + 1840);
  v4 = (*v1 + 584);
  v11 = *v1;
  *(v2 + 1848) = v0;
  *(v2 + 1856) = *(v2 + 560);
  *(v2 + 1925) = *(v2 + 576);
  *(v2 + 1872) = *v4;
  *(v2 + 1926) = *(v2 + 600);

  if (v0)
  {
    v5 = *(v2 + 1792);
    v6 = *(v2 + 968);

    v7 = sub_100CB4648;
    v8 = v6;
  }

  else
  {
    v9 = *(v2 + 968);
    sub_100007BAC((v2 + 616));
    v7 = sub_100CAFBC8;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100CAFBC8()
{
  v1 = v0[229];
  v2 = v0[199];
  v0[85] = v0[197];
  v0[86] = v1;
  v3 = sub_1000280DC(v0 + 82);
  sub_100D11DC8(v2, v3, type metadata accessor for OwnedBeaconRecord);
  v4 = swift_task_alloc();
  v0[236] = v4;
  *v4 = v0;
  v4[1] = sub_100CAFCCC;
  v5 = v0[129];
  v6 = v0[121];

  return sub_100CA0680(v5, (v0 + 82));
}

uint64_t sub_100CAFCCC()
{
  v2 = *v1;
  v3 = *(*v1 + 1888);
  v14 = *v1;
  *(*v1 + 1896) = v0;

  if (v0)
  {
    v4 = *(v2 + 1880);
    v5 = *(v2 + 1872);
    v6 = *(v2 + 1864);
    v7 = *(v2 + 1856);
    v8 = *(v2 + 1792);
    v9 = *(v2 + 968);
    v10 = *(v2 + 1926);
    v11 = *(v2 + 1925);

    sub_100359088(v5, v4, v10);
    sub_100359088(v7, v6, v11);
    v12 = sub_100CB4E68;
  }

  else
  {
    v9 = *(v2 + 968);
    sub_100007BAC((v2 + 656));
    v12 = sub_100CAFE74;
  }

  return _swift_task_switch(v12, v9, 0);
}

uint64_t sub_100CAFE74()
{
  v635 = v0;
  v630 = *(v0 + 1925);
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  v6 = *(*(v0 + 1576) + 32);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 16);
  v8(v2, v1 + v6, v7);
  v9 = *v4;
  v8(v2 + *(v3 + 24), v4 + *(v5 + 36), v7);
  *(v2 + *(v3 + 20)) = v9;
  v10 = v630;
  v631 = v0;
  if (v10 != 1)
  {
    v28 = *(v0 + 1880);
    v29 = *(v0 + 1872);
    v30 = *(v0 + 1864);
    v31 = *(v0 + 1856);
    v32 = *(v0 + 1792);
    v33 = *(v0 + 1424);
    v34 = *(v0 + 1032);
    v35 = *(v0 + 1926);
    v36 = *(v0 + 1925);

    sub_100359088(v29, v28, v35);
    sub_1001BAEE0();
    swift_allocError();
    *v37 = 4;
    swift_willThrow();
    sub_100359088(v31, v30, v36);
    sub_100018D00(v33, type metadata accessor for KeyDropInterface.KeyAlignment);
    v38 = v34;
LABEL_5:
    sub_10000B3A8(v38, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_100:
    v129 = *(v0 + 1704);
    v130 = *(v0 + 1616);
    v131 = *(v0 + 1608);
    v132 = *(v0 + 960);
    sub_100D11DC8(v132, *(v0 + 1624), type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v132, v130, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v132, v131, type metadata accessor for SharingCircleKeyManager.Instruction);
    swift_errorRetain();
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v133, v134))
    {
      v603 = v134;
      v135 = *(v0 + 1624);
      v136 = *(v0 + 1616);
      v611 = *(v0 + 1608);
      v137 = *(v0 + 1600);
      v594 = *(v0 + 1528);
      v138 = *(v0 + 1924);
      v139 = swift_slowAlloc();
      v633 = swift_slowAlloc();
      *v139 = 136447747;
      v140 = sub_100C71778();
      v142 = v141;
      sub_100018D00(v135, type metadata accessor for SharingCircleKeyManager.Instruction);
      v143 = sub_1000136BC(v140, v142, &v633);

      *(v139 + 4) = v143;
      *(v139 + 12) = 2082;
      v144 = sub_10125403C(v138);
      v146 = sub_1000136BC(v144, v145, &v633);

      *(v139 + 14) = v146;
      *(v139 + 22) = 2160;
      *(v139 + 24) = 1752392040;
      *(v139 + 32) = 2081;
      v147 = *(v137 + 20);
      sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
      v148 = dispatch thunk of CustomStringConvertible.description.getter();
      v150 = v149;
      sub_100018D00(v136, type metadata accessor for SharingCircleKeyManager.Instruction);
      v151 = sub_1000136BC(v148, v150, &v633);

      *(v139 + 34) = v151;
      *(v139 + 42) = 2160;
      *(v139 + 44) = 1752392040;
      *(v139 + 52) = 2081;
      v0 = v631;
      v152 = v611 + *(v137 + 24);
      v153 = dispatch thunk of CustomStringConvertible.description.getter();
      v155 = v154;
      sub_100018D00(v611, type metadata accessor for SharingCircleKeyManager.Instruction);
      v156 = sub_1000136BC(v153, v155, &v633);

      *(v139 + 54) = v156;
      *(v139 + 62) = 2082;
      swift_getErrorValue();
      v157 = *(v631 + 736);
      v158 = *(v631 + 744);
      v159 = *(v631 + 752);
      v160 = Error.localizedDescription.getter();
      v162 = sub_1000136BC(v160, v161, &v633);

      *(v139 + 64) = v162;
      _os_log_impl(&_mh_execute_header, v133, v603, "Delegated keys to upload: %{public}s,\nfailed to add type: %{public}s,\nfor share-id: %{private,mask.hash}s,\nbeacon-id: %{private,mask.hash}s\nerror: %{public}s.", v139, 0x48u);
      swift_arrayDestroy();
    }

    else
    {
      v163 = *(v0 + 1624);
      v164 = *(v0 + 1616);
      v165 = *(v0 + 1608);

      sub_100018D00(v165, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v164, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v163, type metadata accessor for SharingCircleKeyManager.Instruction);
    }

    v166 = *(v0 + 1768);
    v167 = *(v0 + 1760);
    v168 = *(v0 + 1752);
    v169 = *(v0 + 1592);
    v619 = *(v0 + 1520);
    v170 = *(v0 + 1504);
    v171 = *(v0 + 1464);
    v172 = *(v631 + 1456);
    v173 = *(v631 + 1448);
    v174 = *(v631 + 1432);
    swift_willThrow();

    sub_100006654(v168, v167);
    sub_100018D00(v174, type metadata accessor for KeyDropInterface.KeyAlignment);
    (*(v172 + 8))(v171, v173);
    sub_100018D00(v170, type metadata accessor for KeyDropJoinToken);
    sub_100018D00(v169, type metadata accessor for OwnedBeaconRecord);
    sub_100018D00(v619, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);
    v175 = *(v631 + 1696);
    v176 = *(v631 + 1688);
    v177 = *(v631 + 1680);
    v178 = *(v631 + 1672);
    v179 = *(v631 + 1664);
    v180 = *(v631 + 1656);
    v181 = *(v631 + 1648);
    v182 = *(v631 + 1640);
    v183 = *(v631 + 1632);
    v184 = *(v631 + 1624);
    v468 = *(v631 + 1616);
    v470 = *(v631 + 1608);
    v472 = *(v631 + 1592);
    v474 = *(v631 + 1568);
    v476 = *(v631 + 1552);
    v478 = *(v631 + 1520);
    v480 = *(v631 + 1504);
    v482 = *(v631 + 1496);
    v484 = *(v631 + 1488);
    v486 = *(v631 + 1464);
    v488 = *(v631 + 1440);
    v490 = *(v631 + 1432);
    v492 = *(v631 + 1424);
    v494 = *(v631 + 1408);
    v496 = *(v631 + 1400);
    v498 = *(v631 + 1392);
    v500 = *(v631 + 1384);
    v502 = *(v631 + 1376);
    v504 = *(v631 + 1368);
    v506 = *(v631 + 1360);
    v508 = *(v631 + 1352);
    v510 = *(v631 + 1344);
    v512 = *(v631 + 1336);
    v514 = *(v631 + 1328);
    v516 = *(v631 + 1320);
    v518 = *(v631 + 1312);
    v520 = *(v631 + 1304);
    v522 = *(v631 + 1296);
    v524 = *(v631 + 1288);
    v526 = *(v631 + 1280);
    v528 = *(v631 + 1272);
    v531 = *(v631 + 1264);
    v533 = *(v631 + 1256);
    v536 = *(v631 + 1248);
    v539 = *(v631 + 1240);
    v542 = *(v631 + 1232);
    v546 = *(v631 + 1224);
    v549 = *(v631 + 1216);
    v552 = *(v631 + 1192);
    v556 = *(v631 + 1168);
    v563 = *(v631 + 1160);
    v567 = *(v631 + 1136);
    v571 = *(v631 + 1112);
    v575 = *(v631 + 1088);
    v578 = *(v631 + 1080);
    v583 = *(v631 + 1056);
    v589 = *(v631 + 1032);
    v595 = *(v631 + 1016);
    v604 = *(v631 + 1008);
    v612 = *(v631 + 984);
    v620 = *(v631 + 976);

    v185 = *(v631 + 8);

    return v185();
  }

  v11 = *(v0 + 1856);
  v12 = *(v0 + 1704);
  sub_100D11DC8(*(v0 + 960), *(v0 + 1656), type metadata accessor for SharingCircleKeyManager.Instruction);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 1864);
  v17 = *(v0 + 1856);
  v18 = *(v0 + 1656);
  if (v15)
  {
    v19 = *(v0 + 1600);
    v20 = *(v631 + 1528);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v633 = v22;
    *v21 = 134218499;
    *(v21 + 4) = *(v11 + 16);
    sub_100359088(v17, v16, 1u);
    *(v21 + 12) = 2160;
    *(v21 + 14) = 1752392040;
    *(v21 + 22) = 2081;
    v23 = *(v19 + 20);
    v0 = v631;
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_100018D00(v18, type metadata accessor for SharingCircleKeyManager.Instruction);
    v27 = sub_1000136BC(v24, v26, &v633);

    *(v21 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "Uploading primary keys count %ld for delegated share %{private,mask.hash}s", v21, 0x20u);
    sub_100007BAC(v22);
  }

  else
  {
    sub_100359088(*(v0 + 1856), *(v0 + 1864), 1u);

    sub_100018D00(v18, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v574 = (v0 + 601);
  v39 = *(v11 + 16);
  if (v39)
  {
    v40 = (v0 + 888);
    v545 = (v0 + 928);
    v548 = (v0 + 776);
    v41 = (v0 + 936);
    v42 = *(v631 + 1000);
    *(v631 + 936) = _swiftEmptyArrayStorage;
    v541 = v41;
    sub_101123DD0(0, v39, 0);
    v43 = 0;
    v44 = *(v631 + 936);
    v45 = *(v42 + 80);
    v0 = v631;
    v570 = v11 + ((v45 + 32) & ~v45);
    v46 = *(v631 + 1896);
    v562 = v11;
    v566 = *(v631 + 1784);
    v551 = v40;
    v555 = v39;
    while (1)
    {
      if (v43 >= *(v11 + 16))
      {
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        v456 = *(v0 + 1592);
        *(v0 + 640) = *(v0 + 1576);
        v457 = sub_100D13BF8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
        *(v0 + 1832) = v457;
        *(v0 + 648) = v457;
        v458 = sub_1000280DC((v0 + 616));
        sub_100D11DC8(v456, v458, type metadata accessor for OwnedBeaconRecord);
        v459 = swift_task_alloc();
        *(v0 + 1840) = v459;
        *v459 = v0;
        v459[1] = sub_100CAFA28;
        v460 = *(v0 + 968);
        v461 = *(v0 + 960);

        return sub_100CB5688(v0 + 560, v0 + 616, v461);
      }

      v626 = v44;
      v47 = *(v0 + 1016);
      v48 = *(v0 + 1000);
      v49 = *(v0 + 992);
      sub_100D11DC8(v570 + *(v48 + 72) * v43, v47, type metadata accessor for TimeBasedKey);
      v50 = *v47;
      sub_100A7A194(*(v47 + *(v49 + 24) + 16), *(v47 + *(v49 + 24) + 24));
      if (v46)
      {
        v0 = v631;
        goto LABEL_119;
      }

      v617 = v50;
      *v40 = 57;
      v51 = type metadata accessor for __DataStorage();
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      v54 = __DataStorage.init(length:)();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v0 = v631;
      }

      else
      {

        v55 = __DataStorage._bytes.getter();
        v0 = v631;
        if (v55)
        {
          v46 = v55;
          if (__OFSUB__(0, __DataStorage._offset.getter()))
          {
            goto LABEL_280;
          }
        }

        v56 = *(v51 + 48);
        v57 = *(v51 + 52);
        swift_allocObject();
        v58 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v54 = v58;
      }

      if (!__DataStorage._bytes.getter())
      {
        __break(1u);
      }

      if (__OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_267;
      }

      __DataStorage._length.getter();
      v46 = CCECCryptorExportKey();

      if (v46)
      {
        static os_log_type_t.error.getter();
        if (qword_101694BE0 == -1)
        {
          goto LABEL_90;
        }

        goto LABEL_295;
      }

      v59 = *v40;
      if ((*v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_268;
      }

      if (v59 >= 0x39)
      {
        v60 = 57;
      }

      else
      {
        v60 = *v40;
      }

      if (!v59)
      {

        CCECCryptorRelease();
        v61 = 0;
        v114 = 0;
        v62 = 0xC000000000000000;
        goto LABEL_206;
      }

      if (v59 <= 0xE)
      {
        *(v574 + 6) = 0;
        *v574 = 0;
        *(v0 + 615) = v60;

        v63 = __DataStorage._bytes.getter();
        if (v63)
        {
          v46 = v63;
          v64 = __DataStorage._offset.getter();
          if (__OFSUB__(0, v64))
          {
            goto LABEL_283;
          }

          v46 -= v64;
          __DataStorage._length.getter();
          if (v46)
          {
            memcpy(v574, v46, v60);
          }
        }

        else
        {
          __DataStorage._length.getter();
        }

        v61 = *v574;
        v65 = *(v574 + 2) | ((*(v574 + 6) | (*(v574 + 14) << 16)) << 32);

        v62 = v566 & 0xF00000000000000 | v65;
        v566 = v62;
        v0 = v631;
      }

      else
      {
        v61 = v60 << 32;
        v62 = v54 | 0x4000000000000000;
      }

      CCECCryptorRelease();
      v66 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        if (v66 != 2)
        {
          v114 = 0;
          goto LABEL_206;
        }

        v69 = *(v61 + 16);
        v68 = *(v61 + 24);
        v70 = __OFSUB__(v68, v69);
        v67 = v68 - v69;
        if (v70)
        {
          goto LABEL_281;
        }
      }

      else if (v66)
      {
        LODWORD(v67) = HIDWORD(v61) - v61;
        if (__OFSUB__(HIDWORD(v61), v61))
        {
          goto LABEL_282;
        }

        v67 = v67;
      }

      else
      {
        v67 = BYTE6(v62);
      }

      if (v67 != 28)
      {
        if (v66 == 2)
        {
          v315 = *(v61 + 16);
          v314 = *(v61 + 24);
          v114 = v314 - v315;
          if (!__OFSUB__(v314, v315))
          {
            goto LABEL_206;
          }

          __break(1u);
        }

        else if (v66 == 1)
        {
          if (!__OFSUB__(HIDWORD(v61), v61))
          {
            v114 = HIDWORD(v61) - v61;
LABEL_206:
            sub_100018350();
            v249 = swift_allocError();
            *v316 = 28;
            *(v316 + 8) = v114;
            *(v316 + 16) = 0;
            swift_willThrow();
            sub_100016590(v61, v62);
            goto LABEL_207;
          }

LABEL_300:
          __break(1u);
LABEL_301:
          swift_once();
LABEL_257:
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v445 = swift_allocObject();
          *(v445 + 16) = xmmword_101385D80;
          *v530 = v46;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v446 = String.init<A>(describing:)();
          v448 = v447;
          *(v445 + 56) = &type metadata for String;
          *(v445 + 64) = sub_100008C00();
          *(v445 + 32) = v446;
          *(v445 + 40) = v448;
          os_log(_:dso:log:_:_:)();

          sub_1001BAF88();
          v449 = swift_allocError();
          *v450 = 0;
          swift_willThrow();

LABEL_264:
          v633 = 0;
          v634 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v454 = v634;
          *(v0 + 792) = v633;
          v318 = (v0 + 800);
          *(v0 + 800) = v454;
          v455._object = 0x800000010134CB30;
          v455._countAndFlagsBits = 0xD000000000000021;
          v320 = v548;
          String.append(_:)(v455);
          *(v0 + 952) = v449;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          goto LABEL_208;
        }

        v114 = BYTE6(v62);
        goto LABEL_206;
      }

      if (v66 == 2)
      {
        v71 = *(v61 + 16);
        v46 = *(v61 + 24);
      }

      else
      {
        if (v66 != 1)
        {
          v71 = 0;
          v72 = 0;
          v46 = BYTE6(v62);
          v73 = BYTE6(v62);
          goto LABEL_51;
        }

        v46 = v61 >> 32;
        v71 = v61;
      }

      sub_100017D5C(v61, v62);
      if (v46 < v71)
      {
        goto LABEL_269;
      }

      if (v66 == 2)
      {
        v72 = *(v61 + 16);
        v73 = *(v61 + 24);
      }

      else
      {
        v72 = v61;
        v73 = v61 >> 32;
      }

LABEL_51:
      if (v73 < v71 || v71 < v72)
      {
        goto LABEL_270;
      }

      if (__OFSUB__(v71, v46))
      {
        goto LABEL_271;
      }

      if ((v71 - v46 + 5) >= 6)
      {
        v74 = v46 - 6;
        if (__OFSUB__(v46, 6))
        {
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          swift_once();
LABEL_120:
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v245 = swift_allocObject();
          *(v245 + 16) = xmmword_101385D80;
          *v545 = v46;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v246 = String.init<A>(describing:)();
          v248 = v247;
          *(v245 + 56) = &type metadata for String;
          *(v245 + 64) = sub_100008C00();
          *(v245 + 32) = v246;
          *(v245 + 40) = v248;
          os_log(_:dso:log:_:_:)();

          sub_1001BAF88();
          v249 = swift_allocError();
          *v250 = 0;
          swift_willThrow();

LABEL_207:
          v633 = 0;
          v634 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v317 = v634;
          *(v0 + 776) = v633;
          v318 = (v0 + 784);
          *(v0 + 784) = v317;
          v319._object = 0x800000010134CB30;
          v319._countAndFlagsBits = 0xD000000000000021;
          v320 = v548;
          String.append(_:)(v319);
          *(v0 + 920) = v249;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
LABEL_208:
          _print_unlocked<A, B>(_:_:)();
          v321 = *v320;
          v322 = *v318;
          return _assertionFailure(_:_:file:line:flags:)();
        }

        if (v66 == 2)
        {
          v75 = *(v61 + 16);
          v76 = *(v61 + 24);
        }

        else if (v66 == 1)
        {
          v75 = v61;
          v76 = v61 >> 32;
        }

        else
        {
          v75 = 0;
          v76 = BYTE6(v62);
        }

        if (v76 < v74 || v74 < v75)
        {
          goto LABEL_279;
        }

        if (!v66)
        {
          goto LABEL_71;
        }

        if (v66 != 1)
        {
          goto LABEL_72;
        }

        v77 = v61 >> 32;
      }

      else
      {
        if (!v66)
        {
          v74 = 0;
LABEL_71:
          v77 = BYTE6(v62);
          goto LABEL_73;
        }

        if (v66 == 2)
        {
          v74 = *(v61 + 16);
LABEL_72:
          v77 = *(v61 + 24);
          goto LABEL_73;
        }

        v74 = v61;
        v77 = v61 >> 32;
      }

LABEL_73:
      if (v77 < v74)
      {
        goto LABEL_266;
      }

      v609 = v43;
      v78 = *(v0 + 1368);
      v79 = *(v0 + 1360);
      v80 = Data._Representation.subscript.getter();
      v593 = v81;
      v602 = v80;
      sub_100016590(v61, v62);
      sub_100016590(v61, v62);
      v82 = type metadata accessor for EncryptedData();
      v83 = *(v82 - 8);
      (*(v83 + 56))(v78, 1, 1, v82);
      sub_1000D2A70(v78, v79, &qword_1016B9AE8, &unk_1013E35D0);
      v84 = *(v83 + 48);
      v85 = v84(v79, 1, v82);
      v86 = *(v0 + 1360);
      if (v85 == 1)
      {
        sub_10000B3A8(v86, &qword_1016B9AE8, &unk_1013E35D0);
        v582 = 0xF000000000000000;
        v588 = 0;
      }

      else
      {
        v87 = EncryptedData.cipherText.getter();
        v582 = v88;
        v588 = v87;
        (*(v83 + 8))(v86, v82);
      }

      v89 = *(v0 + 1352);
      sub_1000D2A70(*(v0 + 1368), v89, &qword_1016B9AE8, &unk_1013E35D0);
      v90 = v84(v89, 1, v82);
      v91 = *(v0 + 1352);
      if (v90 == 1)
      {
        sub_10000B3A8(*(v0 + 1352), &qword_1016B9AE8, &unk_1013E35D0);
        v577 = 0;
        v92 = 0xF000000000000000;
      }

      else
      {
        v577 = EncryptedData.initializationVector.getter();
        v92 = v93;
        (*(v83 + 8))(v91, v82);
      }

      v94 = *(v0 + 1344);
      sub_1000D2A70(*(v0 + 1368), v94, &qword_1016B9AE8, &unk_1013E35D0);
      v95 = v84(v94, 1, v82);
      v96 = *(v0 + 1368);
      v97 = *(v0 + 1344);
      if (v95 == 1)
      {
        sub_10000B3A8(*(v0 + 1368), &qword_1016B9AE8, &unk_1013E35D0);
        sub_10000B3A8(v97, &qword_1016B9AE8, &unk_1013E35D0);
        v98 = 0;
        v99 = 0xF000000000000000;
      }

      else
      {
        v98 = EncryptedData.tag.getter();
        v99 = v100;
        sub_10000B3A8(v96, &qword_1016B9AE8, &unk_1013E35D0);
        (*(v83 + 8))(v97, v82);
      }

      sub_100018D00(*(v0 + 1016), type metadata accessor for TimeBasedKey);
      v44 = v626;
      *(v0 + 936) = v626;
      v102 = v626[2];
      v101 = v626[3];
      if (v102 >= v101 >> 1)
      {
        sub_101123DD0((v101 > 1), v102 + 1, 1);
        v44 = *v541;
      }

      v46 = 0;
      ++v43;
      v44[2] = v102 + 1;
      v103 = &v44[9 * v102];
      v103[4] = v617;
      v103[5] = v602;
      v103[6] = v593;
      v103[7] = v588;
      v103[8] = v582;
      v103[9] = v577;
      v103[10] = v92;
      v103[11] = v98;
      v103[12] = v99;
      v11 = v562;
      v40 = v551;
      if (v555 == v609 + 1)
      {
        v115 = 0;
        v116 = v566;
        v117 = v44;
        goto LABEL_98;
      }
    }
  }

  v115 = *(v0 + 1896);
  v116 = *(v0 + 1784);
  v117 = _swiftEmptyArrayStorage;
LABEL_98:
  v118 = *(v0 + 1464);
  v119 = SymmetricKey256.data.getter();
  v121 = v120;
  v122 = sub_100D11764(v117, v119, v120);
  if (v115)
  {
    v123 = *(v0 + 1880);
    v124 = *(v0 + 1872);
    v125 = *(v0 + 1864);
    v126 = *(v0 + 1856);
    v618 = *(v0 + 1792);
    v610 = *(v0 + 1424);
    v127 = *(v0 + 1032);
    v128 = *(v0 + 1926);

    sub_100016590(v119, v121);
    sub_100359088(v124, v123, v128);
    sub_100359088(v126, v125, 1u);
    sub_100018D00(v610, type metadata accessor for KeyDropInterface.KeyAlignment);
    sub_10000B3A8(v127, &unk_1016C8FC0, &unk_10139D7D0);

    goto LABEL_100;
  }

  v187 = v122;
  v568 = v116;
  v188 = *(v0 + 1792);
  v189 = *(v0 + 1424);
  v190 = *(v0 + 1256);
  v191 = *(v0 + 1248);
  v192 = *(v631 + 1200);

  sub_100016590(v119, v121);
  sub_100D11DC8(v189, &v190[*(v192 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
  *v190 = 17;
  v193 = *(v192 + 24);
  v0 = v631;
  *&v190[v193] = v187;
  sub_100D11DC8(v190, v191, type metadata accessor for KeyDropInterface.KeyPackage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v195 = *(v631 + 1792);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v195 = sub_100A5BE40(0, v195[2] + 1, 1, v195);
  }

  v197 = v195[2];
  v196 = v195[3];
  if (v197 >= v196 >> 1)
  {
    v195 = sub_100A5BE40(v196 > 1, v197 + 1, 1, v195);
  }

  v198 = *(v631 + 1704);
  v199 = *(v631 + 1648);
  v200 = *(v631 + 1256);
  v201 = *(v631 + 1248);
  v202 = *(v631 + 1240);
  v203 = *(v631 + 1208);
  v204 = *(v631 + 960);
  v195[2] = v197 + 1;
  v557 = v195;
  v534 = (*(v203 + 80) + 32) & ~*(v203 + 80);
  v537 = *(v203 + 72);
  sub_100D12974(v201, v195 + v534 + v537 * v197, type metadata accessor for KeyDropInterface.KeyPackage);
  sub_100D11DC8(v204, v199, type metadata accessor for SharingCircleKeyManager.Instruction);
  sub_100D11DC8(v200, v202, type metadata accessor for KeyDropInterface.KeyPackage);
  v205 = Logger.logObject.getter();
  v206 = static os_log_type_t.default.getter();
  v207 = os_log_type_enabled(v205, v206);
  v208 = *(v631 + 1864);
  v209 = *(v631 + 1856);
  v210 = *(v631 + 1648);
  v211 = *(v631 + 1256);
  v212 = *(v631 + 1240);
  if (v207)
  {
    v213 = swift_slowAlloc();
    v633 = swift_slowAlloc();
    *v213 = 136446466;
    v621 = v208;
    v627 = v211;
    v214 = sub_100C71778();
    v216 = v215;
    sub_100018D00(v210, type metadata accessor for SharingCircleKeyManager.Instruction);
    v217 = sub_1000136BC(v214, v216, &v633);

    *(v213 + 4) = v217;
    *(v213 + 12) = 2082;
    v218 = sub_101255410();
    v220 = v219;
    sub_100018D00(v212, type metadata accessor for KeyDropInterface.KeyPackage);
    v221 = sub_1000136BC(v218, v220, &v633);

    *(v213 + 14) = v221;
    _os_log_impl(&_mh_execute_header, v205, v206, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v213, 0x16u);
    swift_arrayDestroy();

    sub_100359088(v209, v621, 1u);
    v222 = v627;
  }

  else
  {

    sub_100359088(v209, v208, 1u);
    sub_100018D00(v212, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100018D00(v210, type metadata accessor for SharingCircleKeyManager.Instruction);
    v222 = v211;
  }

  sub_100018D00(v222, type metadata accessor for KeyDropInterface.KeyPackage);
  v223 = *(v631 + 1926);
  if (v223 != 1)
  {
    v240 = *(v631 + 1880);
    v241 = *(v631 + 1872);
    v242 = *(v631 + 1424);
    v243 = *(v631 + 1032);

    sub_1001BAEE0();
    swift_allocError();
    *v244 = 4;
    swift_willThrow();
    sub_100359088(v241, v240, v223);
    sub_100018D00(v242, type metadata accessor for KeyDropInterface.KeyAlignment);
    v38 = v243;
    goto LABEL_5;
  }

  v224 = *(v631 + 1872);
  v225 = *(v631 + 1704);
  sub_100D11DC8(*(v631 + 960), *(v631 + 1640), type metadata accessor for SharingCircleKeyManager.Instruction);

  v226 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v227 = os_log_type_enabled(v226, v46);
  v228 = *(v631 + 1880);
  v229 = *(v631 + 1872);
  v230 = *(v631 + 1640);
  if (v227)
  {
    v231 = *(v631 + 1600);
    v232 = *(v631 + 1528);
    v233 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    v633 = v234;
    *v233 = 134218499;
    *(v233 + 4) = *(v224 + 16);
    sub_100359088(v229, v228, 1u);
    *(v233 + 12) = 2160;
    *(v233 + 14) = 1752392040;
    *(v233 + 22) = 2081;
    v235 = *(v231 + 20);
    sub_100D13BF8(&qword_101696930, &type metadata accessor for UUID);
    v236 = dispatch thunk of CustomStringConvertible.description.getter();
    v238 = v237;
    sub_100018D00(v230, type metadata accessor for SharingCircleKeyManager.Instruction);
    v239 = sub_1000136BC(v236, v238, &v633);

    *(v233 + 24) = v239;
    _os_log_impl(&_mh_execute_header, v226, v46, "Uploading secondary keys count %ld for delegated share %{private,mask.hash}s", v233, 0x20u);
    sub_100007BAC(v234);
  }

  else
  {
    sub_100359088(*(v631 + 1872), *(v631 + 1880), 1u);

    sub_100018D00(v230, type metadata accessor for SharingCircleKeyManager.Instruction);
  }

  v251 = *(v224 + 16);
  if (!v251)
  {
    v0 = v631;
    v572 = *(v631 + 1776);
    v255 = _swiftEmptyArrayStorage;
LABEL_210:
    v323 = *(v0 + 1464);
    v324 = SymmetricKey256.data.getter();
    v326 = v325;
    v327 = sub_100D11764(v255, v324, v325);
    v328 = *(v0 + 1424);
    v329 = *(v0 + 1232);
    v330 = *(v0 + 1224);
    v331 = *(v0 + 1200);
    v332 = v327;

    sub_100016590(v324, v326);
    sub_100D11DC8(v328, &v329[*(v331 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
    *v329 = 18;
    *&v329[*(v331 + 24)] = v332;
    sub_100D11DC8(v329, v330, type metadata accessor for KeyDropInterface.KeyPackage);
    v333 = v557;
    v335 = v557[2];
    v334 = v557[3];
    if (v335 >= v334 >> 1)
    {
      v333 = sub_100A5BE40(v334 > 1, v335 + 1, 1, v557);
    }

    v0 = v631;
    v336 = *(v631 + 1704);
    v337 = *(v631 + 1632);
    v338 = *(v631 + 1232);
    v339 = *(v631 + 1224);
    v340 = *(v631 + 1216);
    v341 = *(v631 + 960);
    v558 = v333;
    *(v333 + 16) = v335 + 1;
    sub_100D12974(v339, v333 + v534 + v335 * v537, type metadata accessor for KeyDropInterface.KeyPackage);
    sub_100D11DC8(v341, v337, type metadata accessor for SharingCircleKeyManager.Instruction);
    sub_100D11DC8(v338, v340, type metadata accessor for KeyDropInterface.KeyPackage);
    v342 = Logger.logObject.getter();
    v343 = static os_log_type_t.default.getter();
    v344 = os_log_type_enabled(v342, v343);
    v345 = *(v631 + 1880);
    v346 = *(v631 + 1872);
    v347 = *(v631 + 1632);
    v623 = *(v631 + 1424);
    v614 = *(v631 + 1232);
    v348 = *(v631 + 1216);
    v349 = &unk_10138B000;
    v350 = *(v631 + 1032);
    if (v344)
    {
      v351 = swift_slowAlloc();
      v633 = swift_slowAlloc();
      *v351 = 136446466;
      v352 = sub_100C71778();
      v606 = v350;
      v354 = v353;
      sub_100018D00(v347, type metadata accessor for SharingCircleKeyManager.Instruction);
      v355 = sub_1000136BC(v352, v354, &v633);

      *(v351 + 4) = v355;
      *(v351 + 12) = 2082;
      v356 = sub_101255410();
      v358 = v357;
      sub_100018D00(v348, type metadata accessor for KeyDropInterface.KeyPackage);
      v359 = v356;
      v349 = &unk_10138B000;
      v360 = sub_1000136BC(v359, v358, &v633);

      *(v351 + 14) = v360;
      _os_log_impl(&_mh_execute_header, v342, v343, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v351, 0x16u);
      swift_arrayDestroy();

      sub_100359088(v346, v345, 1u);
      sub_100018D00(v614, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v623, type metadata accessor for KeyDropInterface.KeyAlignment);
      v361 = v606;
    }

    else
    {

      sub_100359088(v346, v345, 1u);
      sub_100018D00(v348, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v347, type metadata accessor for SharingCircleKeyManager.Instruction);
      sub_100018D00(v614, type metadata accessor for KeyDropInterface.KeyPackage);
      sub_100018D00(v623, type metadata accessor for KeyDropInterface.KeyAlignment);
      v361 = v350;
    }

    sub_10000B3A8(v361, &unk_1016C8FC0, &unk_10139D7D0);
    v373 = *(v631 + 1808);
    v374 = (*(v631 + 1800) - 1) & *(v631 + 1800);
    *(v631 + 1784) = v568;
    *(v631 + 1776) = v572;
    v375 = (v574 + 1151);
    v46 = 1;
    v376 = xmmword_101385D80;
    *&v377 = v349[129];
    v378 = v558;
LABEL_226:
    *(v0 + 1792) = v378;
    while (v374)
    {
      v379 = *(v0 + 1768);
LABEL_233:
      *(v0 + 1808) = v373;
      *(v0 + 1800) = v374;
      v381 = *(*(v379 + 48) + (__clz(__rbit64(v374)) | (v373 << 6)));
      *(v0 + 1924) = v381;
      if (v381 == 17)
      {
        goto LABEL_272;
      }

      if (v381 == 15)
      {
        v462 = swift_task_alloc();
        *(v0 + 1816) = v462;
        *v462 = v0;
        v462[1] = sub_100CAD67C;
        v463 = *(v0 + 1592);
        v464 = *(v0 + 968);

        return sub_100CF83A4(v0 + 304, v463);
      }

      v374 &= v374 - 1;
      if (v381 == 14)
      {
        v607 = v377;
        v615 = v376;
        v624 = v375;
        v559 = v378;
        v597 = *(v0 + 1760);
        v382 = *(v0 + 1752);
        v383 = *(v0 + 1408);
        v384 = *(v0 + 1400);
        v385 = type metadata accessor for EncryptedData();
        v386 = *(v385 - 8);
        (*(v386 + 56))(v383, 1, 1, v385);
        sub_1000D2A70(v383, v384, &qword_1016B9AE8, &unk_1013E35D0);
        v387 = v384;
        v388 = *(v386 + 48);
        LODWORD(v383) = v388(v387, 1, v385);
        sub_10002E98C(v382, v597);
        v389 = *(v0 + 1400);
        if (v383 == 1)
        {
          sub_10000B3A8(*(v0 + 1400), &qword_1016B9AE8, &unk_1013E35D0);
          v591 = 0xF000000000000000;
          v598 = 0;
        }

        else
        {
          v390 = EncryptedData.cipherText.getter();
          v591 = v391;
          v598 = v390;
          (*(v386 + 8))(v389, v385);
        }

        v392 = *(v0 + 1392);
        sub_1000D2A70(*(v0 + 1408), v392, &qword_1016B9AE8, &unk_1013E35D0);
        v393 = v388(v392, 1, v385);
        v394 = *(v0 + 1392);
        if (v393 == 1)
        {
          sub_10000B3A8(*(v0 + 1392), &qword_1016B9AE8, &unk_1013E35D0);
          v580 = 0xF000000000000000;
          v585 = 0;
        }

        else
        {
          v395 = EncryptedData.initializationVector.getter();
          v580 = v396;
          v585 = v395;
          (*(v386 + 8))(v394, v385);
        }

        v397 = *(v0 + 1384);
        sub_1000D2A70(*(v0 + 1408), v397, &qword_1016B9AE8, &unk_1013E35D0);
        v398 = v388(v397, 1, v385);
        v399 = *(v0 + 1408);
        v400 = *(v0 + 1384);
        if (v398 == 1)
        {
          sub_10000B3A8(*(v0 + 1408), &qword_1016B9AE8, &unk_1013E35D0);
          sub_10000B3A8(v400, &qword_1016B9AE8, &unk_1013E35D0);
          v401 = 0;
          v402 = 0xF000000000000000;
        }

        else
        {
          v401 = EncryptedData.tag.getter();
          v402 = v403;
          sub_10000B3A8(v399, &qword_1016B9AE8, &unk_1013E35D0);
          (*(v386 + 8))(v400, v385);
        }

        v404 = *(v0 + 1432);
        v405 = *(v0 + 1304);
        v406 = *(v0 + 1296);
        v407 = *(v631 + 1200);
        *(v631 + 88) = 1;
        *(v631 + 96) = *v624;
        *(v631 + 112) = v598;
        *(v631 + 120) = v591;
        *(v631 + 128) = v585;
        *(v631 + 136) = v580;
        *(v631 + 144) = v401;
        *(v631 + 152) = v402;
        sub_100D11DC8(v404, &v405[*(v407 + 20)], type metadata accessor for KeyDropInterface.KeyAlignment);
        sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
        v408 = swift_allocObject();
        v409 = *(v631 + 120);
        *(v408 + 48) = *(v631 + 104);
        *(v408 + 64) = v409;
        *(v408 + 80) = *(v631 + 136);
        *(v408 + 96) = *(v631 + 152);
        v410 = *(v631 + 88);
        *(v408 + 16) = v615;
        *(v408 + 32) = v410;
        *v405 = 14;
        v411 = *(v407 + 24);
        v0 = v631;
        *&v405[v411] = v408;
        sub_100D11DC8(v405, v406, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_1003914F8(v0 + 88, v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v559 = sub_100A5BE40(0, v559[2] + 1, 1, v559);
        }

        v412 = v559;
        v414 = v559[2];
        v413 = v559[3];
        if (v414 >= v413 >> 1)
        {
          v412 = sub_100A5BE40(v413 > 1, v414 + 1, 1, v559);
        }

        v599 = *(v631 + 1704);
        v415 = *(v631 + 1672);
        v416 = *(v631 + 1304);
        v417 = *(v631 + 1296);
        v418 = *(v631 + 1288);
        v419 = *(v631 + 1208);
        v420 = *(v631 + 960);
        *(v412 + 16) = v414 + 1;
        v560 = v412;
        sub_100D12974(v417, v412 + ((*(v419 + 80) + 32) & ~*(v419 + 80)) + *(v419 + 72) * v414, type metadata accessor for KeyDropInterface.KeyPackage);
        sub_100D11DC8(v420, v415, type metadata accessor for SharingCircleKeyManager.Instruction);
        sub_100D11DC8(v416, v418, type metadata accessor for KeyDropInterface.KeyPackage);
        v421 = Logger.logObject.getter();
        v422 = static os_log_type_t.default.getter();
        v423 = os_log_type_enabled(v421, v422);
        v424 = *(v631 + 1672);
        v425 = *(v631 + 1304);
        v426 = *(v631 + 1288);
        if (v423)
        {
          v427 = swift_slowAlloc();
          v633 = swift_slowAlloc();
          *v427 = v607;
          v586 = v422;
          v428 = sub_100C71778();
          v600 = v425;
          v430 = v429;
          sub_100018D00(v424, type metadata accessor for SharingCircleKeyManager.Instruction);
          v431 = sub_1000136BC(v428, v430, &v633);

          *(v427 + 4) = v431;
          *(v427 + 12) = 2082;
          v432 = sub_101255410();
          v434 = v433;
          sub_100018D00(v426, type metadata accessor for KeyDropInterface.KeyPackage);
          v435 = sub_1000136BC(v432, v434, &v633);

          *(v427 + 14) = v435;
          _os_log_impl(&_mh_execute_header, v421, v586, "Delegated keys to upload: %{public}s,\nadded: %{public}s.", v427, 0x16u);
          swift_arrayDestroy();

          sub_100391554(v631 + 88);
          sub_100018D00(v600, type metadata accessor for KeyDropInterface.KeyPackage);
          v377 = v607;
          v376 = v615;
          v378 = v560;
          v375 = v624;
        }

        else
        {

          sub_100391554(v631 + 88);
          sub_100018D00(v426, type metadata accessor for KeyDropInterface.KeyPackage);
          sub_100018D00(v424, type metadata accessor for SharingCircleKeyManager.Instruction);
          sub_100018D00(v425, type metadata accessor for KeyDropInterface.KeyPackage);
          v378 = v560;
          v375 = v624;
          v377 = v607;
          v376 = v615;
        }

        goto LABEL_226;
      }
    }

    while (1)
    {
      v380 = v373 + 1;
      if (__OFADD__(v373, 1))
      {
        goto LABEL_284;
      }

      v379 = *(v0 + 1768);
      if (v380 >= (((1 << *(v0 + 1923)) + 63) >> 6))
      {
        v561 = v378;
        v436 = *(v0 + 1696);
        v465 = *(v0 + 1688);
        v466 = *(v0 + 1680);
        v467 = *(v0 + 1672);
        v469 = *(v0 + 1664);
        v471 = *(v0 + 1656);
        v473 = *(v0 + 1648);
        v475 = *(v0 + 1640);
        v477 = *(v0 + 1632);
        v479 = *(v0 + 1624);
        v481 = *(v0 + 1616);
        v437 = *(v0 + 1592);
        v483 = *(v0 + 1608);
        v485 = *(v0 + 1568);
        v438 = *(v0 + 1520);
        v439 = *(v0 + 1504);
        v487 = *(v0 + 1552);
        v489 = *(v0 + 1496);
        v440 = *(v0 + 1464);
        v441 = *(v0 + 1456);
        v442 = *(v0 + 1448);
        v491 = *(v0 + 1488);
        v493 = *(v0 + 1440);
        v443 = *(v0 + 1432);
        v495 = *(v0 + 1424);
        v497 = *(v0 + 1408);
        v499 = *(v0 + 1400);
        v501 = *(v0 + 1392);
        v503 = *(v0 + 1384);
        v505 = *(v0 + 1376);
        v507 = *(v0 + 1368);
        v509 = *(v0 + 1360);
        v511 = *(v0 + 1352);
        v513 = *(v0 + 1344);
        v515 = *(v0 + 1336);
        v517 = *(v0 + 1328);
        v519 = *(v0 + 1320);
        v521 = *(v0 + 1312);
        v523 = *(v0 + 1304);
        v525 = *(v0 + 1296);
        v527 = *(v0 + 1288);
        v529 = *(v0 + 1280);
        v532 = *(v0 + 1272);
        v535 = *(v0 + 1264);
        v538 = *(v0 + 1256);
        v540 = *(v0 + 1248);
        v544 = *(v0 + 1240);
        v547 = *(v0 + 1232);
        v550 = *(v0 + 1224);
        v554 = *(v0 + 1216);
        v565 = *(v0 + 1192);
        v569 = *(v0 + 1168);
        v573 = *(v0 + 1160);
        v576 = *(v0 + 1136);
        v581 = *(v0 + 1112);
        v587 = *(v0 + 1088);
        v592 = *(v0 + 1080);
        v601 = *(v0 + 1056);
        v608 = *(v0 + 1032);
        v616 = *(v0 + 1016);
        v625 = *(v0 + 1008);
        v629 = *(v0 + 984);
        v632 = *(v0 + 976);
        sub_100006654(*(v0 + 1752), *(v0 + 1760));
        sub_100018D00(v443, type metadata accessor for KeyDropInterface.KeyAlignment);
        (*(v441 + 8))(v440, v442);
        sub_100018D00(v439, type metadata accessor for KeyDropJoinToken);
        sub_100018D00(v437, type metadata accessor for OwnedBeaconRecord);

        sub_100018D00(v438, type metadata accessor for SharingCircleKeyManager.DelegatedKeychain);

        v444 = *(v0 + 8);

        return v444(v561);
      }

      v374 = *(v379 + 8 * v380 + 56);
      ++v373;
      if (v374)
      {
        v373 = v380;
        goto LABEL_233;
      }
    }
  }

  v548 = (v631 + 792);
  v579 = (v631 + 1908);
  v252 = (v631 + 896);
  v530 = (v631 + 904);
  v253 = *(v631 + 1000);
  *(v631 + 912) = _swiftEmptyArrayStorage;
  sub_101123DD0(0, v251, 0);
  v254 = 0;
  v255 = *(v631 + 912);
  v256 = *(v253 + 80);
  v0 = v631;
  v564 = v224 + ((v256 + 32) & ~v256);
  v572 = *(v631 + 1776);
  v545 = (v631 + 896);
  v553 = v224;
  v543 = v251;
  while (1)
  {
    if (v254 >= *(v224 + 16))
    {
      goto LABEL_285;
    }

    v257 = *(v0 + 1008);
    v258 = *(v0 + 1000);
    v259 = *(v0 + 992);
    v628 = v254;
    sub_100D11DC8(v564 + *(v258 + 72) * v254, v257, type metadata accessor for TimeBasedKey);
    v260 = *v257;
    sub_100A7A194(*(v257 + *(v259 + 24) + 16), *(v257 + *(v259 + 24) + 24));
    v613 = v260;
    v622 = v255;
    *v252 = 57;
    v261 = type metadata accessor for __DataStorage();
    v262 = *(v261 + 48);
    v263 = *(v261 + 52);
    swift_allocObject();
    v264 = __DataStorage.init(length:)();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v0 = v631;
    }

    else
    {

      v265 = __DataStorage._bytes.getter();
      v0 = v631;
      if (v265)
      {
        v46 = v265;
        if (__OFSUB__(0, __DataStorage._offset.getter()))
        {
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
          goto LABEL_300;
        }
      }

      v266 = *(v261 + 48);
      v267 = *(v261 + 52);
      swift_allocObject();
      v268 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v264 = v268;
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
      goto LABEL_304;
    }

    v269 = __DataStorage._offset.getter();
    v46 = -v269;
    if (__OFSUB__(0, v269))
    {
      goto LABEL_287;
    }

    __DataStorage._length.getter();
    v46 = CCECCryptorExportKey();

    if (v46)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v362 = *(v0 + 976);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v363 = swift_allocObject();
      *(v363 + 16) = xmmword_101385D80;
      *(v363 + 56) = &type metadata for Int32;
      *(v363 + 64) = &protocol witness table for Int32;
      *(v363 + 32) = v46;
      os_log(_:dso:log:_:_:)();

      CryptoError.init(rawValue:)();
      v364 = type metadata accessor for CryptoError();
      sub_100D13BF8(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v365 = swift_allocError();
      v367 = v366;
      v368 = *(v364 - 8);
      v369 = *(v368 + 48);
      v370 = v369(v362, 1, v364);
      v371 = *(v0 + 976);
      if (v370 == 1)
      {
        (*(v368 + 104))(v367, enum case for CryptoError.unspecifiedError(_:), v364);
        if (v369(v371, 1, v364) != 1)
        {
          sub_10000B3A8(*(v0 + 976), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v368 + 32))(v367, *(v0 + 976), v364);
      }

      swift_willThrow();
      v46 = v365;

      static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
        goto LABEL_257;
      }

      goto LABEL_301;
    }

    v270 = *v252;
    if ((*v252 & 0x8000000000000000) != 0)
    {
      goto LABEL_288;
    }

    if (v270 >= 0x39)
    {
      v271 = 57;
    }

    else
    {
      v271 = *v252;
    }

    if (!v270)
    {

      CCECCryptorRelease();
      v272 = 0;
      v372 = 0;
      v273 = 0xC000000000000000;
LABEL_263:
      sub_100018350();
      v449 = swift_allocError();
      *v453 = 28;
      *(v453 + 8) = v372;
      *(v453 + 16) = 0;
      swift_willThrow();
      sub_100016590(v272, v273);
      goto LABEL_264;
    }

    if (v270 <= 0xE)
    {
      *(v631 + 1914) = 0;
      *v579 = 0;
      *(v0 + 1922) = v271;

      v274 = __DataStorage._bytes.getter();
      if (v274)
      {
        v46 = v274;
        v275 = __DataStorage._offset.getter();
        if (__OFSUB__(0, v275))
        {
          goto LABEL_299;
        }

        v46 -= v275;
        __DataStorage._length.getter();
        if (v46)
        {
          memcpy(v579, v46, v271);
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      v272 = *v579;
      v276 = *(v574 + 1315) | ((*(v574 + 1319) | (*(v574 + 1321) << 16)) << 32);

      v273 = v572 & 0xF00000000000000 | v276;
      v572 = v273;
      v0 = v631;
    }

    else
    {
      v272 = v271 << 32;
      v273 = v264 | 0x4000000000000000;
    }

    result = CCECCryptorRelease();
    v277 = v273 >> 62;
    if ((v273 >> 62) > 1)
    {
      if (v277 != 2)
      {
        v372 = 0;
        goto LABEL_263;
      }

      v280 = *(v272 + 16);
      v279 = *(v272 + 24);
      v70 = __OFSUB__(v279, v280);
      v278 = v279 - v280;
      if (v70)
      {
        goto LABEL_297;
      }
    }

    else if (v277)
    {
      LODWORD(v278) = HIDWORD(v272) - v272;
      if (__OFSUB__(HIDWORD(v272), v272))
      {
        goto LABEL_298;
      }

      v278 = v278;
    }

    else
    {
      v278 = BYTE6(v273);
    }

    if (v278 != 28)
    {
      break;
    }

    if (v277 == 2)
    {
      v281 = *(v272 + 16);
      v46 = *(v272 + 24);
    }

    else
    {
      if (v277 != 1)
      {
        v281 = 0;
        v282 = 0;
        v46 = BYTE6(v273);
        v283 = BYTE6(v273);
        goto LABEL_165;
      }

      v46 = v272 >> 32;
      v281 = v272;
    }

    sub_100017D5C(v272, v273);
    if (v46 < v281)
    {
      goto LABEL_289;
    }

    if (v277 == 2)
    {
      v282 = *(v272 + 16);
      v283 = *(v272 + 24);
    }

    else
    {
      v282 = v272;
      v283 = v272 >> 32;
    }

LABEL_165:
    if (v283 < v281 || v281 < v282)
    {
      goto LABEL_290;
    }

    if (__OFSUB__(v281, v46))
    {
      goto LABEL_291;
    }

    if ((v281 - v46 + 5) >= 6)
    {
      v284 = v46 - 6;
      if (__OFSUB__(v46, 6))
      {
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        swift_once();
LABEL_90:
        v104 = *(v0 + 984);
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_101385D80;
        *(v105 + 56) = &type metadata for Int32;
        *(v105 + 64) = &protocol witness table for Int32;
        *(v105 + 32) = v46;
        os_log(_:dso:log:_:_:)();

        CryptoError.init(rawValue:)();
        v106 = type metadata accessor for CryptoError();
        sub_100D13BF8(&qword_10169C9B8, &type metadata accessor for CryptoError);
        v107 = swift_allocError();
        v109 = v108;
        v110 = *(v106 - 8);
        v111 = *(v110 + 48);
        v112 = v111(v104, 1, v106);
        v113 = *(v0 + 984);
        if (v112 == 1)
        {
          (*(v110 + 104))(v109, enum case for CryptoError.unspecifiedError(_:), v106);
          if (v111(v113, 1, v106) != 1)
          {
            sub_10000B3A8(*(v0 + 984), &qword_10169C9A0, &unk_1013D5A40);
          }
        }

        else
        {
          (*(v110 + 32))(v109, *(v0 + 984), v106);
        }

        swift_willThrow();
        v46 = v107;

LABEL_119:
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          goto LABEL_292;
        }

        goto LABEL_120;
      }

      if (v277 == 2)
      {
        v285 = *(v272 + 16);
        v286 = *(v272 + 24);
      }

      else if (v277 == 1)
      {
        v285 = v272;
        v286 = v272 >> 32;
      }

      else
      {
        v285 = 0;
        v286 = BYTE6(v273);
      }

      if (v286 < v284 || v284 < v285)
      {
        goto LABEL_294;
      }

      if (!v277)
      {
        goto LABEL_185;
      }

      if (v277 != 1)
      {
        goto LABEL_186;
      }

      v287 = v272 >> 32;
    }

    else
    {
      if (!v277)
      {
        v284 = 0;
LABEL_185:
        v287 = BYTE6(v273);
        goto LABEL_187;
      }

      if (v277 == 2)
      {
        v284 = *(v272 + 16);
LABEL_186:
        v287 = *(v272 + 24);
        goto LABEL_187;
      }

      v284 = v272;
      v287 = v272 >> 32;
    }

LABEL_187:
    if (v287 < v284)
    {
      goto LABEL_286;
    }

    v288 = *(v0 + 1336);
    v289 = *(v0 + 1328);
    v290 = Data._Representation.subscript.getter();
    v596 = v291;
    v605 = v290;
    sub_100016590(v272, v273);
    sub_100016590(v272, v273);
    v292 = type metadata accessor for EncryptedData();
    v293 = *(v292 - 8);
    (*(v293 + 56))(v288, 1, 1, v292);
    sub_1000D2A70(v288, v289, &qword_1016B9AE8, &unk_1013E35D0);
    v294 = *(v293 + 48);
    v295 = v294(v289, 1, v292);
    v296 = *(v0 + 1328);
    if (v295 == 1)
    {
      sub_10000B3A8(*(v0 + 1328), &qword_1016B9AE8, &unk_1013E35D0);
      v584 = 0xF000000000000000;
      v590 = 0;
    }

    else
    {
      v297 = EncryptedData.cipherText.getter();
      v584 = v298;
      v590 = v297;
      (*(v293 + 8))(v296, v292);
    }

    v299 = *(v0 + 1320);
    sub_1000D2A70(*(v0 + 1336), v299, &qword_1016B9AE8, &unk_1013E35D0);
    v300 = v294(v299, 1, v292);
    v301 = *(v0 + 1320);
    if (v300 == 1)
    {
      sub_10000B3A8(*(v0 + 1320), &qword_1016B9AE8, &unk_1013E35D0);
      v302 = 0;
      v303 = 0xF000000000000000;
    }

    else
    {
      v302 = EncryptedData.initializationVector.getter();
      v303 = v304;
      (*(v293 + 8))(v301, v292);
    }

    v305 = *(v0 + 1312);
    sub_1000D2A70(*(v0 + 1336), v305, &qword_1016B9AE8, &unk_1013E35D0);
    v306 = v294(v305, 1, v292);
    v307 = *(v0 + 1336);
    v308 = *(v0 + 1312);
    if (v306 == 1)
    {
      sub_10000B3A8(*(v0 + 1336), &qword_1016B9AE8, &unk_1013E35D0);
      sub_10000B3A8(v308, &qword_1016B9AE8, &unk_1013E35D0);
      v309 = 0;
      v46 = 0xF000000000000000;
    }

    else
    {
      v309 = EncryptedData.tag.getter();
      v46 = v310;
      sub_10000B3A8(v307, &qword_1016B9AE8, &unk_1013E35D0);
      (*(v293 + 8))(v308, v292);
    }

    sub_100018D00(*(v0 + 1008), type metadata accessor for TimeBasedKey);
    v255 = v622;
    *(v0 + 912) = v622;
    v312 = v622[2];
    v311 = v622[3];
    if (v312 >= v311 >> 1)
    {
      sub_101123DD0((v311 > 1), v312 + 1, 1);
      v255 = *(v631 + 912);
    }

    v254 = v628 + 1;
    v255[2] = v312 + 1;
    v313 = &v255[9 * v312];
    v313[4] = v613;
    v313[5] = v605;
    v313[6] = v596;
    v313[7] = v590;
    v313[8] = v584;
    v313[9] = v302;
    v313[10] = v303;
    v313[11] = v309;
    v313[12] = v46;
    v252 = (v631 + 896);
    v224 = v553;
    if (v543 == v628 + 1)
    {
      goto LABEL_210;
    }
  }

  if (v277 == 2)
  {
    v452 = *(v272 + 16);
    v451 = *(v272 + 24);
    v372 = v451 - v452;
    if (!__OFSUB__(v451, v452))
    {
      goto LABEL_263;
    }

    __break(1u);
    goto LABEL_262;
  }

  if (v277 != 1)
  {
LABEL_262:
    v372 = BYTE6(v273);
    goto LABEL_263;
  }

  if (!__OFSUB__(HIDWORD(v272), v272))
  {
    v372 = HIDWORD(v272) - v272;
    goto LABEL_263;
  }

  __break(1u);
LABEL_304:
  __break(1u);
  return result;
}