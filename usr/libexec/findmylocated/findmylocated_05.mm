uint64_t sub_1000803D8()
{
  v1 = v0[430];
  v2 = v0[426];
  v3 = v0[414];
  v4 = v0[388];
  v5 = v0[385];
  v6 = v0[376];
  v7 = v0[374];
  v8 = v0[373];
  v9 = v0[337];
  v0[433] = (v0[386] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v4, v5);
  v10 = *(v7 + 8);
  v0[434] = v10;
  v0[435] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);

  sub_10001A794(0, 0xF000000000000000);

  return _swift_task_switch(sub_1000804D0, v9, 0);
}

uint64_t sub_1000804D0()
{
  v50 = v0[435];
  v1 = v0[434];
  v2 = v0[433];
  v3 = v0[426];
  v4 = v0[418];
  v5 = v0[408];
  v6 = v0[390];
  v7 = v0[385];
  v8 = v0[378];
  v9 = v0[373];
  v10 = v0[363];

  sub_1000846A4(v10, type metadata accessor for LocationEndpoint);
  v3(v6, v7);
  v1(v8, v9);
  v51 = v0[432];
  v11 = v0[402];
  v12 = v0[401];
  v13 = v0[400];
  v14 = v0[399];
  v15 = v0[396];
  v16 = v0[395];
  v17 = v0[394];
  v18 = v0[391];
  v19 = v0[390];
  v20 = v0[389];
  v23 = v0[388];
  v24 = v0[387];
  v25 = v0[384];
  v26 = v0[381];
  v27 = v0[378];
  v28 = v0[377];
  v29 = v0[376];
  v30 = v0[375];
  v31 = v0[372];
  v32 = v0[371];
  v33 = v0[370];
  v34 = v0[367];
  v35 = v0[366];
  v36 = v0[363];
  v37 = v0[361];
  v38 = v0[360];
  v39 = v0[359];
  v40 = v0[357];
  v41 = v0[354];
  v42 = v0[351];
  v43 = v0[350];
  v44 = v0[349];
  v45 = v0[346];
  v46 = v0[345];
  v47 = v0[342];
  v48 = v0[341];
  v49 = v0[340];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000807B8()
{
  v19 = v0[436];
  v20 = v0[437];
  v1 = v0[421];
  v2 = v0[410];
  v21 = v0[378];
  v3 = v0[370];
  v4 = v0[369];
  v5 = v0[368];
  v17 = v0[363];
  v18 = v0[430];
  v16 = v0[362];
  v6 = v0[354];
  v7 = v0[353];
  v8 = v0[352];
  v9 = v0[337];
  v10 = *(v9 + v2);
  *(v9 + v2) = _swiftEmptyArrayStorage;

  (*(v7 + 104))(v6, enum case for LegacyRefreshSchedule.notScheduled(_:), v8);
  v11 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  swift_beginAccess();
  (*(v7 + 40))(v9 + v11, v6, v8);
  swift_endAccess();
  (*(v4 + 104))(v3, enum case for LocatePriority.shallow(_:), v5);
  swift_beginAccess();
  (*(v4 + 40))(v9 + v1, v3, v5);
  swift_endAccess();
  v0[305] = v16;
  v0[306] = sub_100008FC0(&qword_1005A92F0, type metadata accessor for LocationEndpoint);
  v12 = sub_10000331C(v0 + 302);
  sub_1000845B8(v17, v12, type metadata accessor for LocationEndpoint);
  v0[310] = &type metadata for LocationServerRequest;
  v0[311] = sub_1000844B0();
  v0[307] = v18;
  v0[308] = v19;
  v0[309] = v20;

  sub_10002CF44(v19, v20);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[315] = type metadata accessor for BasicCredential();
  v0[316] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 312);
  BasicCredential.init(username:password:)();
  v13 = swift_task_alloc();
  v0[441] = v13;
  *v13 = v0;
  v13[1] = sub_100080A9C;
  v14 = v0[408];

  return sub_1001D7B78((v0 + 2), (v0 + 302), (v0 + 307), (v0 + 312));
}

uint64_t sub_100080A9C()
{
  v2 = *v1;
  v3 = (*v1)[441];
  v4 = *v1;
  v2[442] = v0;

  v5 = v2[337];
  if (v0)
  {
    v6 = v2[414];
    sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);

    v7 = sub_1000824AC;
  }

  else
  {
    sub_100002CE0((v2 + 312), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 307);
    sub_100004984(v2 + 302);
    v7 = sub_100080C18;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100080C18()
{
  v163 = v0;
  v1 = *(v0 + 3384);
  sub_10006DAC8(v0 + 16, v0 + 816);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_10005D06C(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004DED40, v162);
    *(v4 + 12) = 2080;
    sub_10006DAC8(v0 + 16, v0 + 1616);
    v5 = sub_100176040();
    v7 = v6;
    sub_10005D06C(v0 + 16);
    v8 = sub_10000D01C(v5, v7, v162);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "CommandManager %{public}s response: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 2808);
  v10 = *(v0 + 2696);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = sub_100008FC0(&qword_1005A90C0, type metadata accessor for CommandManager);
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = v10;
  swift_retain_n();
  sub_10020D8CC(0, 0, v9, &unk_1004C28A8, v13);

  if (*(v0 + 296) == 1)
  {
    v14 = *(v0 + 288);
    *(v0 + 3544) = v14;
    if (v14)
    {
      v15 = *(v0 + 3384);

      sub_10005D06C(v0 + 16);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v161 = v19;
        *v18 = 134218242;
        *(v18 + 4) = *(v14 + 16);

        *(v18 + 12) = 2082;
        v20 = *(v14 + 16);
        if (v20)
        {
          v138 = v19;
          v143 = v17;
          v148 = v18;
          v153 = v16;
          v21 = *(v0 + 2800);
          v22 = *(v0 + 2784);
          v162[0] = _swiftEmptyArrayStorage;
          sub_10002B3C0(0, v20, 0);
          v23 = v162[0];
          v158 = v14;
          v24 = v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
          v25 = *(v22 + 72);
          do
          {
            v26 = *(v0 + 2800);
            sub_1000845B8(v24, v26, type metadata accessor for ServerLocation);
            v27 = *v26;
            v28 = *(v21 + 8);

            sub_1000846A4(v26, type metadata accessor for ServerLocation);
            v162[0] = v23;
            v30 = *(v23 + 16);
            v29 = *(v23 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_10002B3C0((v29 > 1), v30 + 1, 1);
              v23 = v162[0];
            }

            *(v23 + 16) = v30 + 1;
            v31 = v23 + 16 * v30;
            *(v31 + 32) = v27;
            *(v31 + 40) = v28;
            v24 += v25;
            --v20;
          }

          while (v20);
          v16 = v153;
          v14 = v158;
          v18 = v148;
          v17 = v143;
          v19 = v138;
        }

        v55 = Array.description.getter();
        v57 = v56;

        v58 = sub_10000D01C(v55, v57, &v161);

        *(v18 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v16, v17, "Received legacy locations [%ld] for ids: %{public}s", v18, 0x16u);
        sub_100004984(v19);
      }

      else
      {
      }

      v59 = *(v14 + 16);
      *(v0 + 3552) = v59;
      if (v59)
      {
        v60 = *(v0 + 2784);
        v61 = *(v60 + 80);
        *(v0 + 3616) = v61;
        *(v0 + 3560) = *(v60 + 72);
        v62 = *(v0 + 3536);
        *(v0 + 3592) = &_swiftEmptyDictionarySingleton;
        *(v0 + 3584) = 0;
        *(v0 + 3576) = &_swiftEmptyDictionarySingleton;
        *(v0 + 3568) = v62;
        sub_1000845B8(*(v0 + 3544) + ((v61 + 32) & ~v61), *(v0 + 2792), type metadata accessor for ServerLocation);
        v63 = swift_task_alloc();
        *(v0 + 3600) = v63;
        *v63 = v0;
        v63[1] = sub_1000817FC;
        v64 = *(v0 + 3264);

        return sub_100008CC0();
      }

      v65 = *(v0 + 3312);
    }

    else
    {
      v54 = *(v0 + 3312);
      sub_10005D06C(v0 + 16);
    }

    v151 = *(v0 + 3512);
    v156 = *(v0 + 3520);
    v66 = *(v0 + 3496);
    v67 = *(v0 + 3488);
    v68 = *(v0 + 3440);
    v141 = *(v0 + 3408);
    v146 = *(v0 + 3504);
    v69 = *(v0 + 3344);
    v70 = *(v0 + 3264);
    v125 = *(v0 + 3080);
    v128 = *(v0 + 3120);
    v132 = *(v0 + 2984);
    v136 = *(v0 + 3024);
    v71 = *(v0 + 2904);
    v72 = *(v0 + 2720);
    v73 = *(v0 + 2712);
    v159 = *(v0 + 2704);
    v74 = *(v0 + 2696);
    static Date.now.getter();

    sub_10001A794(v67, v66);
    sub_1000846A4(v71, type metadata accessor for LocationEndpoint);
    v141(v128, v125);
    v151(v136, v132);
    v75 = OBJC_IVAR____TtC13findmylocated14CommandManager_lastRefreshDate;
    swift_beginAccess();
    (*(v73 + 40))(v74 + v75, v72, v159);
    swift_endAccess();
    v76 = *(v0 + 3216);
    v77 = *(v0 + 3208);
    v78 = *(v0 + 3200);
    v79 = *(v0 + 3192);
    v80 = *(v0 + 3168);
    v81 = *(v0 + 3160);
    v82 = *(v0 + 3152);
    v83 = *(v0 + 3128);
    v84 = *(v0 + 3120);
    v85 = *(v0 + 3112);
    v89 = *(v0 + 3104);
    v91 = *(v0 + 3096);
    v93 = *(v0 + 3072);
    v95 = *(v0 + 3048);
    v97 = *(v0 + 3024);
    v99 = *(v0 + 3016);
    v101 = *(v0 + 3008);
    v103 = *(v0 + 3000);
    v105 = *(v0 + 2976);
    v107 = *(v0 + 2968);
    v109 = *(v0 + 2960);
    v111 = *(v0 + 2936);
    v113 = *(v0 + 2928);
    v115 = *(v0 + 2904);
    v117 = *(v0 + 2888);
    v119 = *(v0 + 2880);
    v121 = *(v0 + 2872);
    v123 = *(v0 + 2856);
    v126 = *(v0 + 2832);
    v129 = *(v0 + 2808);
    v133 = *(v0 + 2800);
    v137 = *(v0 + 2792);
    v142 = *(v0 + 2768);
    v147 = *(v0 + 2760);
    v152 = *(v0 + 2736);
    v157 = *(v0 + 2728);
    v160 = *(v0 + 2720);

    v86 = *(v0 + 8);

    return v86(&_swiftEmptyDictionarySingleton);
  }

  else
  {
    v149 = *(v0 + 3512);
    v154 = *(v0 + 3520);
    v32 = *(v0 + 3496);
    v33 = *(v0 + 3488);
    v34 = *(v0 + 3440);
    v139 = *(v0 + 3408);
    v144 = *(v0 + 3504);
    v35 = *(v0 + 3344);
    v36 = *(v0 + 3312);
    v37 = *(v0 + 3264);
    v38 = *(v0 + 3120);
    v39 = *(v0 + 3080);
    v130 = *(v0 + 2984);
    v134 = *(v0 + 3024);
    v40 = *(v0 + 2904);
    sub_10005D06C(v0 + 16);

    sub_1000284BC();
    swift_allocError();
    *v41 = 9;
    swift_willThrow();

    sub_10001A794(v33, v32);
    sub_1000846A4(v40, type metadata accessor for LocationEndpoint);
    v139(v38, v39);
    v149(v134, v130);
    v42 = *(v0 + 3216);
    v43 = *(v0 + 3208);
    v44 = *(v0 + 3200);
    v45 = *(v0 + 3192);
    v46 = *(v0 + 3168);
    v47 = *(v0 + 3160);
    v48 = *(v0 + 3152);
    v49 = *(v0 + 3128);
    v50 = *(v0 + 3120);
    v51 = *(v0 + 3112);
    v87 = *(v0 + 3104);
    v88 = *(v0 + 3096);
    v90 = *(v0 + 3072);
    v92 = *(v0 + 3048);
    v94 = *(v0 + 3024);
    v96 = *(v0 + 3016);
    v98 = *(v0 + 3008);
    v100 = *(v0 + 3000);
    v102 = *(v0 + 2976);
    v104 = *(v0 + 2968);
    v106 = *(v0 + 2960);
    v108 = *(v0 + 2936);
    v110 = *(v0 + 2928);
    v112 = *(v0 + 2904);
    v114 = *(v0 + 2888);
    v116 = *(v0 + 2880);
    v118 = *(v0 + 2872);
    v120 = *(v0 + 2856);
    v122 = *(v0 + 2832);
    v124 = *(v0 + 2808);
    v127 = *(v0 + 2800);
    v131 = *(v0 + 2792);
    v135 = *(v0 + 2768);
    v140 = *(v0 + 2760);
    v145 = *(v0 + 2736);
    v150 = *(v0 + 2728);
    v155 = *(v0 + 2720);

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_1000817FC(uint64_t a1)
{
  v2 = *(*v1 + 3600);
  v3 = *(*v1 + 2696);
  v5 = *v1;
  *(*v1 + 3608) = a1;

  return _swift_task_switch(sub_100081914, v3, 0);
}

uint64_t sub_100081914()
{
  v1 = *(v0 + 3608);
  v2 = *(v0 + 3568);
  v3 = *(v0 + 3184);
  v4 = *(v0 + 3176);
  v5 = *(v0 + 2792);
  v6 = *(v0 + 2768);
  *(swift_task_alloc() + 16) = v5;
  sub_10044FE2C(sub_100084620, v1, v6);

  if ((*(v3 + 48))(v6, 1, v4) == 1)
  {
    v7 = *(v0 + 2768);
    v8 = &qword_1005A9188;
    v9 = &unk_1004D80D0;
LABEL_5:
    sub_100002CE0(v7, v8, v9);
    v16 = *(v0 + 3592);
    v17 = *(v0 + 3576);
    goto LABEL_7;
  }

  v10 = *(v0 + 2792);
  v11 = *(v0 + 2776);
  v12 = *(v0 + 2752);
  v13 = *(v0 + 2744);
  v14 = *(v0 + 2736);
  (*(*(v0 + 3184) + 32))(*(v0 + 3192), *(v0 + 2768), *(v0 + 3176));
  sub_100005F04(v10 + *(v11 + 20), v14, &qword_1005A92D0, &qword_1004C2890);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v15 = *(v0 + 2736);
    (*(*(v0 + 3184) + 8))(*(v0 + 3192), *(v0 + 3176));
    v8 = &qword_1005A92D0;
    v9 = &qword_1004C2890;
    v7 = v15;
    goto LABEL_5;
  }

  v16 = *(v0 + 3576);
  v18 = *(v0 + 3192);
  v19 = *(v0 + 3184);
  v89 = *(v0 + 3176);
  v92 = v2;
  v20 = *(v0 + 3152);
  v21 = *(v0 + 3144);
  v22 = *(v0 + 3136);
  v23 = *(v0 + 2760);
  v24 = *(v0 + 2728);
  sub_100084640(*(v0 + 2736), v23);
  Friend.handle.getter();
  sub_10016DAF0(v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100452B70(v24, v20, isUniquelyReferenced_nonNull_native);
  (*(v21 + 8))(v20, v22);
  v2 = v92;
  sub_1000846A4(v23, type metadata accessor for LegacyLocation);
  (*(v19 + 8))(v18, v89);
  v17 = v16;
LABEL_7:
  v26 = *(v0 + 3552);
  v27 = *(v0 + 3584) + 1;
  sub_1000846A4(*(v0 + 2792), type metadata accessor for ServerLocation);
  if (v27 == v26)
  {
    v28 = *(v0 + 3544);
    v29 = *(v0 + 3312);

    v85 = *(v0 + 3512);
    v87 = *(v0 + 3520);
    v30 = *(v0 + 3496);
    v31 = *(v0 + 3488);
    v93 = v16;
    v32 = *(v0 + 3440);
    v81 = *(v0 + 3408);
    v83 = *(v0 + 3504);
    v33 = *(v0 + 3344);
    v34 = *(v0 + 3264);
    v73 = *(v0 + 3080);
    v75 = *(v0 + 3120);
    v79 = *(v0 + 3024);
    v77 = *(v0 + 2984);
    v35 = *(v0 + 2904);
    v36 = *(v0 + 2720);
    v37 = *(v0 + 2712);
    v90 = *(v0 + 2704);
    v38 = *(v0 + 2696);
    static Date.now.getter();

    sub_10001A794(v31, v30);
    sub_1000846A4(v35, type metadata accessor for LocationEndpoint);
    v81(v75, v73);
    v85(v79, v77);
    v39 = OBJC_IVAR____TtC13findmylocated14CommandManager_lastRefreshDate;
    swift_beginAccess();
    (*(v37 + 40))(v38 + v39, v36, v90);
    swift_endAccess();
    v40 = *(v0 + 3216);
    v41 = *(v0 + 3208);
    v42 = *(v0 + 3200);
    v43 = *(v0 + 3192);
    v44 = *(v0 + 3168);
    v45 = *(v0 + 3160);
    v46 = *(v0 + 3152);
    v47 = *(v0 + 3128);
    v48 = *(v0 + 3120);
    v49 = *(v0 + 3112);
    v55 = *(v0 + 3104);
    v56 = *(v0 + 3096);
    v57 = *(v0 + 3072);
    v58 = *(v0 + 3048);
    v59 = *(v0 + 3024);
    v60 = *(v0 + 3016);
    v61 = *(v0 + 3008);
    v62 = *(v0 + 3000);
    v63 = *(v0 + 2976);
    v64 = *(v0 + 2968);
    v65 = *(v0 + 2960);
    v66 = *(v0 + 2936);
    v67 = *(v0 + 2928);
    v68 = *(v0 + 2904);
    v69 = *(v0 + 2888);
    v70 = *(v0 + 2880);
    v71 = *(v0 + 2872);
    v72 = *(v0 + 2856);
    v74 = *(v0 + 2832);
    v76 = *(v0 + 2808);
    v78 = *(v0 + 2800);
    v80 = *(v0 + 2792);
    v82 = *(v0 + 2768);
    v84 = *(v0 + 2760);
    v86 = *(v0 + 2736);
    v88 = *(v0 + 2728);
    v91 = *(v0 + 2720);

    v50 = *(v0 + 8);

    return v50(v93);
  }

  else
  {
    v52 = *(v0 + 3584) + 1;
    *(v0 + 3592) = v16;
    *(v0 + 3584) = v52;
    *(v0 + 3576) = v17;
    *(v0 + 3568) = v2;
    sub_1000845B8(*(v0 + 3544) + ((*(v0 + 3616) + 32) & ~*(v0 + 3616)) + *(v0 + 3560) * v52, *(v0 + 2792), type metadata accessor for ServerLocation);
    v53 = swift_task_alloc();
    *(v0 + 3600) = v53;
    *v53 = v0;
    v53[1] = sub_1000817FC;
    v54 = *(v0 + 3264);

    return sub_100008CC0();
  }
}

uint64_t sub_100081FB4()
{
  v1 = v0[404];

  v41 = v0[409];
  v2 = v0[402];
  v3 = v0[401];
  v4 = v0[400];
  v5 = v0[399];
  v6 = v0[396];
  v7 = v0[395];
  v8 = v0[394];
  v9 = v0[391];
  v10 = v0[390];
  v11 = v0[389];
  v14 = v0[388];
  v15 = v0[387];
  v16 = v0[384];
  v17 = v0[381];
  v18 = v0[378];
  v19 = v0[377];
  v20 = v0[376];
  v21 = v0[375];
  v22 = v0[372];
  v23 = v0[371];
  v24 = v0[370];
  v25 = v0[367];
  v26 = v0[366];
  v27 = v0[363];
  v28 = v0[361];
  v29 = v0[360];
  v30 = v0[359];
  v31 = v0[357];
  v32 = v0[354];
  v33 = v0[351];
  v34 = v0[350];
  v35 = v0[349];
  v36 = v0[346];
  v37 = v0[345];
  v38 = v0[342];
  v39 = v0[341];
  v40 = v0[340];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100082230()
{
  v1 = v0[408];

  v41 = v0[419];
  v2 = v0[402];
  v3 = v0[401];
  v4 = v0[400];
  v5 = v0[399];
  v6 = v0[396];
  v7 = v0[395];
  v8 = v0[394];
  v9 = v0[391];
  v10 = v0[390];
  v11 = v0[389];
  v14 = v0[388];
  v15 = v0[387];
  v16 = v0[384];
  v17 = v0[381];
  v18 = v0[378];
  v19 = v0[377];
  v20 = v0[376];
  v21 = v0[375];
  v22 = v0[372];
  v23 = v0[371];
  v24 = v0[370];
  v25 = v0[367];
  v26 = v0[366];
  v27 = v0[363];
  v28 = v0[361];
  v29 = v0[360];
  v30 = v0[359];
  v31 = v0[357];
  v32 = v0[354];
  v33 = v0[351];
  v34 = v0[350];
  v35 = v0[349];
  v36 = v0[346];
  v37 = v0[345];
  v38 = v0[342];
  v39 = v0[341];
  v40 = v0[340];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000824AC()
{
  v51 = v0[439];
  v53 = v0[440];
  v1 = v0[437];
  v2 = v0[436];
  v3 = v0[430];
  v47 = v0[426];
  v49 = v0[438];
  v4 = v0[418];
  v5 = v0[408];
  v6 = v0[390];
  v7 = v0[385];
  v8 = v0[378];
  v9 = v0[373];
  v10 = v0[363];

  sub_10001A794(v2, v1);
  sub_1000846A4(v10, type metadata accessor for LocationEndpoint);
  v47(v6, v7);
  v51(v8, v9);
  sub_100004984(v0 + 307);
  sub_100004984(v0 + 302);
  v54 = v0[442];
  v11 = v0[402];
  v12 = v0[401];
  v13 = v0[400];
  v14 = v0[399];
  v15 = v0[396];
  v16 = v0[395];
  v17 = v0[394];
  v18 = v0[391];
  v19 = v0[390];
  v20 = v0[389];
  v23 = v0[388];
  v24 = v0[387];
  v25 = v0[384];
  v26 = v0[381];
  v27 = v0[378];
  v28 = v0[377];
  v29 = v0[376];
  v30 = v0[375];
  v31 = v0[372];
  v32 = v0[371];
  v33 = v0[370];
  v34 = v0[367];
  v35 = v0[366];
  v36 = v0[363];
  v37 = v0[361];
  v38 = v0[360];
  v39 = v0[359];
  v40 = v0[357];
  v41 = v0[354];
  v42 = v0[351];
  v43 = v0[350];
  v44 = v0[349];
  v45 = v0[346];
  v46 = v0[345];
  v48 = v0[342];
  v50 = v0[341];
  v52 = v0[340];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000827CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 1584) = a5;
  *(v5 + 1576) = a4;
  *(v5 + 1804) = a3;
  *(v5 + 1568) = a2;
  *(v5 + 1560) = a1;
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  *(v5 + 1592) = refreshed;
  v7 = *(refreshed - 8);
  *(v5 + 1600) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 1608) = swift_task_alloc();
  *(v5 + 1616) = swift_task_alloc();
  *(v5 + 1624) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v5 + 1632) = v9;
  v10 = *(v9 - 8);
  *(v5 + 1640) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 1648) = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  *(v5 + 1656) = v12;
  v13 = *(v12 - 8);
  *(v5 + 1664) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 1672) = swift_task_alloc();

  return _swift_task_switch(sub_10008296C, 0, 0);
}

uint64_t sub_10008296C()
{
  v1 = v0[209];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[210] = v2;
  *v2 = v0;
  v2[1] = sub_100082A30;
  v3 = v0[209];
  v4 = v0[196];
  v5 = v0[195];

  return sub_100291918(v5, v4, 0, 0, 1);
}

uint64_t sub_100082A30()
{
  v2 = *(*v1 + 1680);
  v3 = *(*v1 + 1672);
  v4 = *(*v1 + 1664);
  v5 = *(*v1 + 1656);
  v6 = *v1;
  *(v6 + 1688) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100082C38;
    v8 = 0;
LABEL_5:

    return _swift_task_switch(v7, v8, 0);
  }

  if (*(v6 + 1804))
  {
    *(v6 + 1805) = 1;
    v8 = *(v6 + 1584);
    v7 = sub_1000831F8;
    goto LABEL_5;
  }

  v9 = swift_task_alloc();
  *(v6 + 1696) = v9;
  *v9 = v6;
  v9[1] = sub_100082E88;
  v10 = *(v6 + 1576);

  return sub_100245BB8(v6 + 496);
}

uint64_t sub_100082C38()
{
  v22 = v0;
  v1 = v0[211];
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[196];
    v6 = v0[195];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136446466;
    v10 = Duration.description.getter();
    v12 = sub_10000D01C(v10, v11, &v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "scheduleRefresh with scheduleInterval: %{public}s. Error: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v14 = v0[209];
  v15 = v0[206];
  v16 = v0[203];
  v17 = v0[202];
  v18 = v0[201];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100082E88()
{
  v1 = *(*v0 + 1696);
  v2 = *(*v0 + 1576);
  v4 = *v0;

  return _swift_task_switch(sub_100082F98, v2, 0);
}

uint64_t sub_100082F98()
{
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) != 1)
  {
    v1 = *(v0 + 224);
    *(v0 + 1232) = *(v0 + 208);
    *(v0 + 1248) = v1;
    v2 = *(v0 + 256);
    *(v0 + 1264) = *(v0 + 240);
    *(v0 + 1280) = v2;
    v3 = *(v0 + 160);
    *(v0 + 1168) = *(v0 + 144);
    *(v0 + 1184) = v3;
    v4 = *(v0 + 192);
    *(v0 + 1200) = *(v0 + 176);
    *(v0 + 1216) = v4;
    v5 = *(v0 + 128);
    *(v0 + 1136) = *(v0 + 112);
    *(v0 + 1152) = v5;
    sub_100005F04(v0 + 1136, v0 + 1296, &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
    v6 = *(v0 + 1248);
    *(v0 + 1072) = *(v0 + 1232);
    *(v0 + 1088) = v6;
    v7 = *(v0 + 1280);
    *(v0 + 1104) = *(v0 + 1264);
    *(v0 + 1120) = v7;
    v8 = *(v0 + 1184);
    *(v0 + 1008) = *(v0 + 1168);
    *(v0 + 1024) = v8;
    v9 = *(v0 + 1216);
    *(v0 + 1040) = *(v0 + 1200);
    *(v0 + 1056) = v9;
    v10 = *(v0 + 1152);
    *(v0 + 976) = *(v0 + 1136);
    *(v0 + 992) = v10;
    if (sub_10002D650(v0 + 976) != 1)
    {
      v11 = *(v0 + 976);
      sub_100002CE0(v0 + 1136, &qword_1005A9328, &unk_1004C7F20);
    }
  }

  v12 = *(v0 + 1648);
  v13 = *(v0 + 1640);
  v14 = *(v0 + 1632);
  v15 = *(v0 + 1576);
  static Duration.seconds(_:)();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v17 = v16;
  (*(v13 + 8))(v12, v14);
  v18 = v17 - *(v15 + OBJC_IVAR____TtC13findmylocated11DataManager_lastSuccessfulResponseTimestamp);
  static Duration.seconds(_:)();
  *(v0 + 1704) = static Duration.- infix(_:_:)();
  *(v0 + 1712) = v19;

  return _swift_task_switch(sub_100083180, 0, 0);
}

uint64_t sub_100083180()
{
  v1 = *(v0 + 1712);
  v2 = *(v0 + 1704);
  *(v0 + 1805) = Duration.milliseconds.getter() > 0;
  v3 = *(v0 + 1584);

  return _swift_task_switch(sub_1000831F8, v3, 0);
}

uint64_t sub_1000831F8()
{
  v1 = v0[203];
  v2 = v0[200];
  v3 = v0[199];
  v4 = v0[198];
  v5 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  v0[215] = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  return _swift_task_switch(sub_1000832B8, 0, 0);
}

uint64_t sub_1000832B8()
{
  if (*(v0 + 1805) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 1728) = v1;
    *v1 = v0;
    v1[1] = sub_100083564;
    v2 = *(v0 + 1584);
    v3 = *(v0 + 1568);
    v4 = *(v0 + 1560);

    return sub_100034580(1, v4, v3);
  }

  else
  {
    v6 = *(v0 + 1624);
    v7 = *(v0 + 1616);
    v8 = *(v0 + 1600);
    v9 = *(v0 + 1592);
    *(v0 + 1800) = enum case for LegacyRefreshSchedule.lowPriorityScheduled(_:);
    v10 = *(v8 + 104);
    *(v0 + 1744) = v10;
    *(v0 + 1752) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v7);
    sub_100008FC0(&qword_1005A9320, &type metadata accessor for LegacyRefreshSchedule);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 1528) == *(v0 + 1544) && *(v0 + 1536) == *(v0 + 1552))
    {
      v11 = 1;
    }

    else
    {
      v12 = *(v0 + 1536);
      v13 = *(v0 + 1552);
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v14 = *(v0 + 1616);
    v15 = *(v0 + 1600);
    v16 = *(v0 + 1592);
    v17 = *(v15 + 8);
    *(v0 + 1760) = v17;
    *(v0 + 1768) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v16);

    if (v11)
    {
      v18 = *(v0 + 1584);
      (v10)(*(v0 + 1608), enum case for LegacyRefreshSchedule.notScheduled(_:), *(v0 + 1592));

      return _swift_task_switch(sub_10008373C, v18, 0);
    }

    else
    {
      v19 = swift_task_alloc();
      *(v0 + 1784) = v19;
      *v19 = v0;
      v19[1] = sub_100083ACC;
      v20 = *(v0 + 1584);

      return sub_1000298AC();
    }
  }
}

uint64_t sub_100083564()
{
  v2 = *(*v1 + 1728);
  v5 = *v1;
  *(*v1 + 1736) = v0;

  if (v0)
  {
    v3 = sub_100083CA8;
  }

  else
  {

    v3 = sub_100083684;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100083684()
{
  (*(v0[200] + 8))(v0[203], v0[199]);
  v1 = v0[209];
  v2 = v0[206];
  v3 = v0[203];
  v4 = v0[202];
  v5 = v0[201];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10008373C()
{
  v1 = v0[221];
  v2 = v0[220];
  v3 = v0[215];
  v4 = v0[201];
  v5 = v0[200];
  v6 = v0[199];
  v7 = v0[198];
  swift_beginAccess();
  (*(v5 + 24))(v7 + v3, v4, v6);
  swift_endAccess();
  v2(v4, v6);
  v8 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  swift_beginAccess();
  v0[222] = *(v7 + v8);

  return _swift_task_switch(sub_100083844, 0, 0);
}

uint64_t sub_100083844()
{
  v22 = v0;
  v1 = *(v0 + 1768);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1752);
  v4 = *(v0 + 1744);
  v5 = (v0 + 1800);
  v6 = *(v0 + 1608);
  v7 = *(v0 + 1592);
  v8 = *(*(v0 + 1776) + 16);
  if (*(v0 + 1804))
  {
    v5 = &enum case for LegacyRefreshSchedule.highPriorityScheduled(_:);
  }

  v9 = *v5;

  v4(v6, v9, v7);
  refreshed = LegacyRefreshSchedule.rawValue.getter();
  v12 = v11;
  v2(v6, v7);
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFB18);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v16 = 136446722;
    *(v16 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v21);
    *(v16 + 12) = 2080;
    v17 = sub_10000D01C(refreshed, v12, &v21);

    *(v16 + 14) = v17;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v8;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s Discarding queued request priority: [%s],\ncurrent Tasks count: [%ld]", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = swift_task_alloc();
  *(v0 + 1784) = v18;
  *v18 = v0;
  v18[1] = sub_100083ACC;
  v19 = *(v0 + 1584);

  return sub_1000298AC();
}

uint64_t sub_100083ACC()
{
  v2 = *(*v1 + 1784);
  v5 = *v1;
  *(*v1 + 1792) = v0;

  if (v0)
  {
    v3 = sub_100083F14;
  }

  else
  {

    v3 = sub_100083BEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100083BEC()
{
  v1 = *(v0 + 1600) + 8;
  (*(v0 + 1760))(*(v0 + 1624), *(v0 + 1592));
  v2 = *(v0 + 1672);
  v3 = *(v0 + 1648);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1616);
  v6 = *(v0 + 1608);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100083CA8()
{
  v22 = v0;
  (*(v0[200] + 8))(v0[203], v0[199]);
  v1 = v0[217];
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[196];
    v6 = v0[195];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136446466;
    v10 = Duration.description.getter();
    v12 = sub_10000D01C(v10, v11, &v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "scheduleRefresh with scheduleInterval: %{public}s. Error: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v14 = v0[209];
  v15 = v0[206];
  v16 = v0[203];
  v17 = v0[202];
  v18 = v0[201];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100083F14()
{
  v23 = v0;
  v1 = *(v0 + 1768);
  (*(v0 + 1760))(*(v0 + 1624), *(v0 + 1592));
  v2 = *(v0 + 1792);
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1568);
    v7 = *(v0 + 1560);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 136446466;
    v11 = Duration.description.getter();
    v13 = sub_10000D01C(v11, v12, &v22);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "scheduleRefresh with scheduleInterval: %{public}s. Error: %{public}@", v8, 0x16u);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v10);
  }

  else
  {
  }

  v15 = *(v0 + 1672);
  v16 = *(v0 + 1648);
  v17 = *(v0 + 1624);
  v18 = *(v0 + 1616);
  v19 = *(v0 + 1608);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100084178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_10008420C;

  return sub_1000298AC();
}

uint64_t sub_10008420C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100084358, v9, 0);
  }
}

uint64_t sub_10008437C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v8 = Handle.serverID.getter();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    if (v8 == *a2 && v10 == a2[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1000844B0()
{
  result = qword_1005A92F8;
  if (!qword_1005A92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A92F8);
  }

  return result;
}

uint64_t sub_100084504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100084178(a1, v4, v5, v6);
}

uint64_t sub_1000845B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100084640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000846A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100084704()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100003690;

  return sub_1000827CC(v2, v3, v4, v5, v6);
}

uint64_t sub_1000847C8()
{
  v1[14] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v6 = type metadata accessor for NearbyWatchObserver.State(0);
  v1[20] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100084908, v0, 0);
}

uint64_t sub_100084908()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[14];
  v4 = OBJC_IVAR____TtC13findmylocated19NearbyWatchObserver_state;
  swift_beginAccess();
  sub_100089B10(v3 + v4, v1, type metadata accessor for NearbyWatchObserver.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30 = *v0[22];
    v0[25] = v30;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000A6F0(v31, qword_1005DFB98);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Nearby watch detection ongoing, awaiting result", v34, 2u);
    }

    v35 = async function pointer to Task<>.value.getter[1];
    v36 = swift_task_alloc();
    v0[26] = v36;
    v28 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    *v36 = v0;
    v36[1] = sub_100085348;
    v29 = v0 + 12;
    v37 = v30;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005DFB98);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Nearby watch detection started", v41, 2u);
    }

    v42 = v0[20];
    v43 = v0[21];
    v44 = v0[19];
    v45 = v0[14];

    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
    v47 = sub_10008AD20(&qword_1005A96A0, type metadata accessor for NearbyWatchObserver);
    v48 = swift_allocObject();
    v48[2] = v45;
    v48[3] = v47;
    v48[4] = v45;
    swift_retain_n();
    v25 = sub_1001D8230(0, 0, v44, &unk_1004C2A20, v48);
    v0[23] = v25;
    *v43 = v25;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_100089C2C(v43, v3 + v4);
    swift_endAccess();
    v49 = async function pointer to Task<>.value.getter[1];
    v50 = swift_task_alloc();
    v0[24] = v50;
    v28 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    *v50 = v0;
    v50[1] = sub_10008517C;
    v29 = v0 + 13;
    goto LABEL_19;
  }

  v6 = v0[22];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  v11 = *v6;
  v12 = sub_10004B564(&qword_1005A9698, &qword_1004C2A08);
  (*(v10 + 32))(v7, &v6[*(v12 + 48)], v9);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v13 = *(v10 + 8);
  v0[27] = v13;
  v0[28] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  if (static Duration.< infix(_:_:)())
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Nearby watch detection cache is expired - restarting detection", v17, 2u);
    }

    v18 = v0[20];
    v19 = v0[21];
    v20 = v0[19];
    v21 = v0[14];

    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    v23 = sub_10008AD20(&qword_1005A96A0, type metadata accessor for NearbyWatchObserver);
    v24 = swift_allocObject();
    v24[2] = v21;
    v24[3] = v23;
    v24[4] = v21;
    swift_retain_n();
    v25 = sub_1001D8230(0, 0, v20, &unk_1004C2A18, v24);
    v0[29] = v25;
    *v19 = v25;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_100089C2C(v19, v3 + v4);
    swift_endAccess();
    v26 = async function pointer to Task<>.value.getter[1];
    v27 = swift_task_alloc();
    v0[30] = v27;
    v28 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    *v27 = v0;
    v27[1] = sub_100085500;
    v29 = v0 + 11;
LABEL_19:
    v37 = v25;
LABEL_20:

    return Task<>.value.getter(v29, v37, v28);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_10000A6F0(v51, qword_1005DFB98);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[18];
  v56 = v0[15];
  if (v54)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Nearby watch detection cache hit", v57, 2u);
  }

  v13(v55, v56);
  v59 = v0[21];
  v58 = v0[22];
  v61 = v0[18];
  v60 = v0[19];
  v62 = v0[17];

  v63 = v0[1];

  return v63(v11);
}

uint64_t sub_10008517C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return _swift_task_switch(sub_1000852A8, v3, 0);
}

uint64_t sub_1000852A8()
{
  v1 = v0[13];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_100085348()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100085458, v2, 0);
}

uint64_t sub_100085458()
{
  v1 = v0[25];

  v2 = v0[12];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];

  v8 = v0[1];

  return v8(v2);
}

uint64_t sub_100085500()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return _swift_task_switch(sub_10008562C, v3, 0);
}

uint64_t sub_10008562C()
{
  v1 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 144), *(v0 + 120));
  v2 = *(v0 + 88);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1000856DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = type metadata accessor for NearbyWatchObserver.State(0);
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_1000857A0;

  return sub_100087BE8();
}

uint64_t sub_1000857A0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1000858B8, v3, 0);
}

uint64_t sub_1000858B8()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v20 = *(v0 + 88);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 88);
    v3 = type metadata accessor for Logger();
    *(v0 + 96) = sub_10000A6F0(v3, qword_1005DFB98);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      if (v1 >> 62)
      {
        v9 = *(v0 + 88);
        if (v1 < 0)
        {
          v10 = *(v0 + 88);
        }

        v7 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = *(v0 + 88);
      *(v6 + 4) = v7;

      _os_log_impl(&_mh_execute_header, v4, v5, "Nearby watch detection starting - looking for %ld devices", v6, 0xCu);
    }

    else
    {
      v8 = *(v0 + 88);
    }

    v12 = *(v0 + 88);
    v13 = *(v0 + 56);
    v14 = sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v15 = sub_10008AD20(&qword_1005A96A0, type metadata accessor for NearbyWatchObserver);
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *(v16 + 16) = v12;
    v17 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v18 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = sub_100085BA8;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 40, v14, v17, v13, v15, &unk_1004C2A38, v16, v14);
  }

  v21 = *(v0 + 88);

  v22 = *(v0 + 72);
  **(v0 + 48) = _swiftEmptyArrayStorage;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100085BA8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 56);
  v6 = *v0;

  return _swift_task_switch(sub_100085CF8, v4, 0);
}

uint64_t sub_100085CF8()
{
  v15 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Nearby watch detection complete - caching %ld identifiers", v5, 0xCu);
  }

  else
  {
  }

  v14 = v2;

  sub_100089D80(&v14);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(sub_10004B564(&qword_1005A9698, &qword_1004C2A08) + 48);
  *v6 = v14;
  static ContinuousClock.now.getter();
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC13findmylocated19NearbyWatchObserver_state;
  swift_beginAccess();
  sub_100089C2C(v6, v8 + v10);
  swift_endAccess();
  v11 = *(v0 + 72);
  **(v0 + 48) = v2;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100085ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_10004B564(&qword_1005A96B0, &qword_1004C2A40);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005A96B8, &qword_1004C2A48);
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_100086058, 0, 0);
}

uint64_t sub_100086058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 112);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v25 = *(v3 + 112);
    }

    a1 = _CocoaArrayWrapper.endIndex.getter();
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_19:
    v26 = *(v3 + 160);
    v27 = *(v3 + 168);
    v28 = *(v3 + 144);
    v29 = *(v3 + 152);
    v30 = *(v3 + 136);
    *(v3 + 88) = **(v3 + 104);
    sub_10004B564(&qword_1005A96C0, &qword_1004C2A78);
    sub_10001DF0C(&qword_1005A96C8, &qword_1005A96C0, &qword_1004C2A78);
    AsyncCompactMapSequence.init(_:transform:)();
    (*(v29 + 16))(v26, v27, v28);
    sub_10001DF0C(&qword_1005A96D0, &qword_1005A96B8, &qword_1004C2A48);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    *(v3 + 192) = _swiftEmptyArrayStorage;
    v31 = sub_10001DF0C(&qword_1005A96D8, &qword_1005A96B0, &qword_1004C2A40);
    v32 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v33 = swift_task_alloc();
    *(v3 + 200) = v33;
    *v33 = v3;
    v33[1] = sub_100086520;
    v34 = *(v3 + 136);
    a2 = *(v3 + 120);
    a1 = v3 + 72;
    a3 = v31;

    return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v36 = *(v3 + 112) + 32;
    v37 = **(v3 + 104);
    v38 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v38)
      {
        v8 = *(v3 + 112);
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v36 + 8 * v6);
      }

      v10 = v9;
      v12 = *(v3 + 176);
      v11 = *(v3 + 184);
      v13 = type metadata accessor for TaskPriority();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v11, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v10;
      sub_10007CE68(v11, v12);
      LODWORD(v11) = (*(v14 + 48))(v12, 1, v13);
      v17 = v10;
      v18 = *(v3 + 176);
      if (v11 == 1)
      {
        sub_100002CE0(*(v3 + 176), &qword_1005A9690, &qword_1004C2A00);
        if (!*v16)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v14 + 8))(v18, v13);
        if (!*v16)
        {
LABEL_13:
          v20 = 0;
          v22 = 0;
          goto LABEL_14;
        }
      }

      v19 = v15[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_14:
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_1004C2A60;
      *(v23 + 24) = v15;

      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      v24 = v22 | v20;
      if (v22 | v20)
      {
        v24 = v3 + 16;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = v20;
        *(v3 + 40) = v22;
      }

      ++v6;
      v7 = *(v3 + 184);
      *(v3 + 48) = 1;
      *(v3 + 56) = v24;
      *(v3 + 64) = v37;
      swift_task_create();

      sub_100002CE0(v7, &qword_1005A9690, &qword_1004C2A00);
      if (v5 == v6)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
}

uint64_t sub_100086520()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[24];
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[15];

    (*(v6 + 8))(v5, v7);

    v8 = DarwinNotification.init(name:value:);
  }

  else
  {
    v8 = sub_100086674;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100086674()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[24];
  if (v1)
  {
    v4 = v0[24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[24];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1001FC900(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1001FC900((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v2;
    *(v9 + 5) = v1;
    v0[24] = v6;
    v10 = sub_10001DF0C(&qword_1005A96D8, &qword_1005A96B0, &qword_1004C2A40);
    v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v12 = swift_task_alloc();
    v0[25] = v12;
    *v12 = v0;
    v12[1] = sub_100086520;
    v13 = v0[17];
    v14 = v0[15];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9, v14, v10);
  }

  else
  {
    v16 = v0[22];
    v15 = v0[23];
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[18];
    v20 = v0[19];
    v21 = v0[12];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v20 + 8))(v17, v19);
    *v21 = v3;

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100086894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  v5 = *(*(type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000869B8, 0, 0);
}

uint64_t sub_1000869B8()
{
  v42 = v0;
  v1 = sub_10008AB2C(v0[2].super_class);
  v0[5].super_class = v1;
  v0[6].receiver = v2;
  if (!v2)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Nearby watch detection - skipping device with no UDID";
    goto LABEL_21;
  }

  v3 = v2;
  v4 = v1;
  receiver = v0[4].receiver;
  super_class = v0[4].super_class;
  v7 = v0[3].super_class;
  sub_100089420(v0[2].super_class, v7);
  if ((*(super_class + 6))(v7, 1, receiver) == 1)
  {
    v8 = v0[3].super_class;

    sub_100002CE0(v8, &qword_1005A96E0, &qword_1004C2A80);
LABEL_17:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005DFB98);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Nearby watch detection - skipping device with no bluetooth device identifier";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

LABEL_22:
    v36 = v0[2].receiver;

    *v36 = 0;
    v36[1] = 0;
    v37 = v0[5].receiver;
    v38 = v0[3].receiver;
    v39 = v0[3].super_class;

    v40 = v0->super_class;

    return v40();
  }

  v15 = v0[4].super_class;
  v14 = v0[5].receiver;
  v16 = v0[4].receiver;
  (*(v15 + 4))(v14, v0[3].super_class, v16);
  v17 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v19 = [v17 newDeviceIdentifierWithBluetoothUUID:isa];
  v0[6].super_class = v19;

  (*(v15 + 1))(v14, v16);
  if (!v19)
  {

    goto LABEL_17;
  }

  v20 = v0[3].receiver;
  v21 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector(0);
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state];
  v24 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  (*(*(v24 - 8) + 56))(v20, 1, 2, v24);
  *v23 = 0;
  v25 = v19;
  v26 = *(sub_10004B564(&qword_1005A94D8, &qword_1004C2988) + 28);
  v27 = sub_10004B564(&qword_1005A96E8, &qword_1004C2A88);
  bzero(&v23[v26], *(*(v27 - 8) + 64));
  sub_10008ABFC(v20, &v23[v26]);
  *&v22[OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_deviceIdentifier] = v25;
  v0[1].receiver = v22;
  v0[1].super_class = v21;
  v0[7].receiver = objc_msgSendSuper2(v0 + 1, "init");
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v0[7].super_class = sub_10000A6F0(v28, qword_1005DFB98);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_10000D01C(v4, v3, &v41);
    _os_log_impl(&_mh_execute_header, v29, v30, "Nearby watch detection - starting detection of device with UDID: %{private,mask.hash}s", v31, 0x16u);
    sub_100004984(v32);
  }

  v33 = swift_task_alloc();
  v0[8].receiver = v33;
  *v33 = v0;
  v33[1] = sub_100086F24;

  return sub_10008745C();
}

uint64_t sub_100086F24(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_10008720C;
  }

  else
  {
    v5 = sub_10008703C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008703C()
{
  v22 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_10000D01C(v9, v8, &v21);
    *(v10 + 22) = 1024;
    *(v10 + 24) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Nearby watch detection - device with UDID: %{private,mask.hash}s, is nearby: %{BOOL}d", v10, 0x1Cu);
    sub_100004984(v11);
  }

  else
  {
    v12 = *(v0 + 112);
  }

  v13 = *(v0 + 96);
  if (*(v0 + 144) == 1)
  {
    v14 = *(v0 + 32);
    *v14 = *(v0 + 88);
    v14[1] = v13;
  }

  else
  {
    v15 = *(v0 + 32);

    *v15 = 0;
    v15[1] = 0;
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10008720C()
{
  v25 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  if (v6)
  {
    v10 = *(v0 + 88);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 141558787;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = sub_10000D01C(v10, v9, &v24);

    *(v11 + 14) = v14;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2113;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Nearby watch detection - device with UDID: %{private,mask.hash}s, failed to get nearby status with error: %{private,mask.hash}@", v11, 0x2Au);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v13);
  }

  else
  {
  }

  v16 = *(v0 + 32);
  *v16 = 0;
  v16[1] = 0;
  v17 = *(v0 + 80);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10008745C()
{
  v1[9] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000875D4, 0, 0);
}

uint64_t sub_1000875D4()
{
  v1 = v0[9];
  v2 = swift_allocObject();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withTimeout<A>(_:block:)[1];
  v4 = v1;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1000876D0;

  return withTimeout<A>(_:block:)(v0 + 22, 5000000000000000000, 0, &unk_1004C2AA0, v2, &type metadata for Bool);
}

uint64_t sub_1000876D0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100087878;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_1000877EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000877EC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100087878()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[12];
  v19 = v0[14];
  v20 = v0[13];
  v17 = v0[10];
  v18 = v0[11];
  v8 = v0[9];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v3, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  v0[6] = sub_10008AD00;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058C8E0;
  v10 = _Block_copy(v0 + 2);
  v11 = v8;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10008AD20(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v18 + 8))(v7, v17);
  (*(v19 + 8))(v6, v20);
  v12 = v0[7];

  swift_willThrow();

  v13 = v0[1];
  v14 = v0[21];

  return v13(0);
}

uint64_t sub_100087B50(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100087B78, 0, 0);
}

uint64_t sub_100087B78()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100087BE8()
{
  *(v1 + 24) = v0;
  v2 = async function pointer to withTimeout<A>(_:block:)[1];
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  v4 = sub_10004B564(&qword_1005A9668, &unk_1004C29E0);
  *v3 = v1;
  v3[1] = sub_100087CC4;

  return withTimeout<A>(_:block:)(v1 + 16, 5000000000000000000, 0, &unk_1004C29D8, 0, v4);
}

uint64_t sub_100087CC4()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100087E04;
  }

  else
  {
    v4 = sub_100087DEC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100087E04()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Nearby watch detection - error getting paired devices: %@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  v9 = *(v0 + 40);

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_100087FC4()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100088108;
    v3 = swift_continuation_init();
    v0[17] = sub_10004B564(&qword_1005A9678, &unk_1004C29F0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000886F8;
    v0[13] = &unk_10058C7C8;
    v0[14] = v3;
    [v2 getDevicesWithBlock:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100088108()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000881E8, 0, 0);
}

uint64_t sub_1000881E8()
{
  v2 = (v0 + 144);
  v1 = *(v0 + 144);

  if (v1)
  {
    v3 = v1 >> 62;
    if (v1 >> 62)
    {
      goto LABEL_35;
    }

    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v1; v4; i = v1)
    {
      v24 = v3;
      v5 = 0;
      v6 = v2 - 64;
      v7 = v1 & 0xC000000000000001;
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
      v8 = NRDevicePropertyIsPaired;
      v25 = NRDevicePropertyCellularEnabled;
      while (1)
      {
        if (v7)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_34;
          }

          v9 = *(v1 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v9 valueForProperty:v8])
        {
          _bridgeAnyObjectToAny(_:)();
          v1 = i;
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        *v6 = v28;
        *(v2 - 3) = v29;
        if (*(v27 + 104))
        {
          if ((swift_dynamicCast() & 1) == 0 || (*v2 & 1) == 0)
          {
            goto LABEL_5;
          }

          if ([v10 valueForProperty:v25])
          {
            _bridgeAnyObjectToAny(_:)();
            v1 = i;
            swift_unknownObjectRelease();
          }

          else
          {
            v28 = 0u;
            v29 = 0u;
          }

          *v6 = v28;
          *(v2 - 3) = v29;
          if (!*(v27 + 104))
          {
            sub_100002CE0((v2 - 64), &qword_1005A9680, &qword_1004C32A0);

            goto LABEL_6;
          }

          if (swift_dynamicCast() & 1) != 0 && (*v2)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v23 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v1 = i;
          }

          else
          {
LABEL_5:
          }
        }

        else
        {

          sub_100002CE0((v2 - 64), &qword_1005A9680, &qword_1004C32A0);
        }

LABEL_6:
        ++v5;
        if (v11 == v4)
        {
          v3 = v24;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_36:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);

    v13 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = _swiftEmptyArrayStorage[2];
      }

      *(v18 + 4) = v19;

      *(v18 + 12) = 2048;
      if (v3)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 14) = v20;

      _os_log_impl(&_mh_execute_header, v13, v17, "Nearby watch detection - %ld eligible out of %ld paired devices", v18, 0x16u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005DFB98);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Nearby watch detection - no paired devices, skipping", v15, 2u);
    }
  }

  **(v27 + 152) = _swiftEmptyArrayStorage;
  v21 = *(v27 + 8);

  return v21();
}

uint64_t sub_1000886F8(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100011AEC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1000545A4(0, &qword_1005A9688, NRDevice_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return _swift_continuation_resume(v3);
}

uint64_t sub_100088788(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000887A8, 0, 0);
}

uint64_t sub_1000887A8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100088894;
  v5 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x79627261654E7369, 0xE800000000000000, sub_10008AD68, v2, &type metadata for Bool);
}

uint64_t sub_100088894()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000889D0, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000889D0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_100088A34(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state));
  v13 = v12 + *(sub_10004B564(&qword_1005A94D8, &qword_1004C2988) + 28);
  sub_100089B10(v13, v11, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  v14 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 2, v14) == 1)
  {
    v26 = a1;
    sub_10008ADE0(v13, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
    sub_10008ADE0(v11, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
    v16 = *(v14 + 48);
    v24 = *(v1 + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_deviceIdentifier);
    v25 = v16;
    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v3);
    v17 = v12;
    v18 = v1;
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v7, v3);
    v20 = objc_allocWithZone(NRDeviceMonitor);
    v21 = v18;
    v12 = v17;
    v22 = [v20 initWithDeviceIdentifier:v24 delegate:v21 queue:v19];

    *v13 = v22;
    v23 = sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
    (*(*(v23 - 8) + 16))(&v13[v25], v26, v23);
    (*(v15 + 56))(v13, 0, 2, v14);
  }

  else
  {
    sub_10008ADE0(v11, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
    sub_10008AD8C();
    v27 = swift_allocError();
    sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
    CheckedContinuation.resume(throwing:)();
  }

  os_unfair_lock_unlock(v12);
}

void sub_100088DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v13 = (a1 + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state);
  os_unfair_lock_lock(v13);
  v14 = *(sub_10004B564(&qword_1005A94D8, &qword_1004C2988) + 28);
  sub_100089B10(v13 + v14, v7, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  v15 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 2, v15))
  {
    sub_10008ADE0(v7, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  }

  else
  {
    sub_10008ADE0(v13 + v14, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);

    (*(v9 + 32))(v12, v7 + *(v15 + 48), v8);
    v17[1] = a2;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
    (*(v9 + 8))(v12, v8);
    (*(v16 + 56))(v13 + v14, 2, 2, v15);
  }

  os_unfair_lock_unlock(v13);
}

uint64_t sub_100089034(uint64_t a1, uint64_t a2, int a3)
{
  v19 = a3;
  v5 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_100089B10(a1, v8, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  v14 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 2, v14))
  {
    return sub_10008ADE0(v8, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);
  }

  sub_10008ADE0(a1, type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State);

  (*(v10 + 32))(v13, v8 + *(v14 + 48), v9);
  v17 = (v10 + 8);
  if (v19)
  {
    v21 = a2;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v20 = a2 & 1;
    CheckedContinuation.resume(returning:)();
  }

  (*v17)(v13, v9);
  return (*(v15 + 56))(a1, 2, 2, v14);
}

id sub_100089378()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100089420@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 valueForProperty:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = type metadata accessor for UUID();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_100002CE0(v12, &qword_1005A9680, &qword_1004C32A0);
    v9 = type metadata accessor for UUID();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_100089580()
{
  sub_10008ADE0(v0 + OBJC_IVAR____TtC13findmylocated19NearbyWatchObserver_state, type metadata accessor for NearbyWatchObserver.State);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000895FC()
{
  result = type metadata accessor for NearbyWatchObserver.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000896E8()
{
  sub_100089788();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100089788()
{
  if (!qword_1005A94D0)
  {
    type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(255);
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A94D0);
    }
  }
}

uint64_t sub_100089828()
{
  sub_100089880();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100089880()
{
  if (!qword_1005A9568)
  {
    sub_1000545A4(255, &qword_1005A9570, NRDeviceMonitor_ptr);
    sub_10004B610(&unk_1005A9578, &unk_1004C29A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005A9568);
    }
  }
}

void sub_100089960()
{
  sub_1000899D4();
  if (v0 <= 0x3F)
  {
    sub_100089A90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000899D4()
{
  if (!qword_1005A9620)
  {
    sub_100089A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9620);
    }
  }
}

void sub_100089A1C()
{
  if (!qword_1005A9628)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9628);
    }
  }
}

void sub_100089A90()
{
  if (!qword_1005A9638)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    type metadata accessor for ContinuousClock.Instant();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005A9638);
    }
  }
}

uint64_t sub_100089B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100089B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1000856DC(a1, v4, v5, v6);
}

uint64_t sub_100089C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyWatchObserver.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100089C90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100089CD0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_100085ED0(a1, a2, v6);
}

Swift::Int sub_100089D80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10023C9C8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100089DEC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100089DEC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100089FB4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100089EE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100089EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100089FB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10023C584(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10008A590((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001FCD18(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1001FCD18((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10008A590((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10023C584(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10023C4F8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10008A590(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10008A7B8(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_10008A8AC;

  return v6(v2 + 16);
}

uint64_t sub_10008A8AC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10008A9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_100086894(a1, v4, v5, v6);
}

uint64_t sub_10008AA74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_10008A7B8(a1, v5);
}

uint64_t sub_10008AB2C(void *a1)
{
  if ([a1 valueForProperty:NRDevicePropertyUDID])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100002CE0(v5, &qword_1005A9680, &qword_1004C32A0);
    return 0;
  }
}

uint64_t sub_10008ABFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyWatchObserver.NearbyWatchDetector.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008AC60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_100088788(a1, v4);
}

uint64_t sub_10008AD08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008AD20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008AD8C()
{
  result = qword_1005A9710;
  if (!qword_1005A9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9710);
  }

  return result;
}

uint64_t sub_10008ADE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10008AE54()
{
  result = qword_1005A9718;
  if (!qword_1005A9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9718);
  }

  return result;
}

unint64_t sub_10008AEA8(uint64_t a1)
{
  v1 = a1 - 1;
  result = 6515827;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6174537469736976;
      break;
    case 2:
      result = 0x6165627472616568;
      break;
    case 3:
      result = 0x65646E6174737962;
      break;
    case 4:
      result = 0x646E616D65646E6FLL;
      break;
    case 5:
      result = 0x776F6C6C616873;
      break;
    case 6:
      result = 1702259052;
      break;
    case 7:
      result = 0x656977657473;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 99:
      result = 0x6F4C79636167656CLL;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t type metadata accessor for SecureLocation()
{
  result = qword_1005A9778;
  if (!qword_1005A9778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008B1A8()
{
  sub_10008B2BC(319, &qword_1005A9788);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MotionActivityState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SPSecureLocationPublishReason(319);
        if (v3 <= 0x3F)
        {
          sub_10008B2BC(319, &qword_1005A9790);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10008B2BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_10008B308(char a1)
{
  result = 0x6449794D646E6966;
  switch(a1)
  {
    case 1:
      result = 0x64757469676E6F6CLL;
      break;
    case 2:
      result = 0x656475746974616CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6465657073;
      break;
    case 6:
      result = 0x657372756F63;
      break;
    case 7:
      result = 0x6564757469746C61;
      break;
    case 8:
      result = 0x726F6F6C66;
      break;
    case 9:
      result = 0x6D617473656D6974;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x526873696C627570;
      break;
    case 12:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10008B48C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10008B308(*a1);
  v5 = v4;
  if (v3 == sub_10008B308(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10008B514()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008B308(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008B578()
{
  sub_10008B308(*v0);
  String.hash(into:)();
}

Swift::Int sub_10008B5CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008B308(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10008B62C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008DD44(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10008B65C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10008B308(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10008B6A4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10008DD44(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008B6E4(uint64_t a1)
{
  v2 = sub_10008D16C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008B720(uint64_t a1)
{
  v2 = sub_10008D16C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008B75C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9808, &qword_1004C2CD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  v19 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 56))(v18, 0, 1, v8);
  v20 = [a1 findMyId];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v22;
  v57 = v21;
  [a1 longitude];
  v24 = v23;
  [a1 latitude];
  v26 = v25;
  [a1 verticalAccuracy];
  v28 = v27;
  [a1 horizontalAccuracy];
  v30 = v29;
  [a1 speed];
  v32 = v31;
  [a1 course];
  v34 = v33;
  [a1 altitude];
  v36 = v35;
  v37 = [a1 floor];
  if (v37)
  {

    v38 = [a1 floor];
    if (v38)
    {
      v39 = v38;
      v54 = [v38 integerValue];

      v55 = 0;
    }

    else
    {
      v54 = 0;
      v55 = 1;
    }
  }

  else
  {
    v55 = 1;
    v54 = 0;
  }

  sub_100005F04(v18, v16, &unk_1005AE5B0, &qword_1004C32F0);
  v40 = *(v9 + 48);
  if (v40(v16, 1, v8) == 1)
  {
    Date.init()();
    if (v40(v16, 1, v8) != 1)
    {
      sub_100002CE0(v16, &unk_1005AE5B0, &qword_1004C32F0);
    }
  }

  else
  {
    (*(v9 + 32))(v59, v16, v8);
  }

  v58 = v8;
  [a1 motionActivityState];
  MotionActivityState.init(rawValue:)();
  v41 = type metadata accessor for MotionActivityState();
  v42 = *(v41 - 8);
  result = (*(v42 + 48))(v7, 1, v41);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = v7;

    v45 = [a1 publishReason];
    v46 = [a1 locationLabel];
    if (v46)
    {
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    sub_100002CE0(v18, &unk_1005AE5B0, &qword_1004C32F0);
    v51 = v56;
    *a2 = v57;
    *(a2 + 8) = v51;
    *(a2 + 16) = v24;
    *(a2 + 24) = v26;
    *(a2 + 32) = v28;
    *(a2 + 40) = v30;
    *(a2 + 48) = v32;
    *(a2 + 56) = v34;
    *(a2 + 64) = v36;
    *(a2 + 72) = v54;
    *(a2 + 80) = v55;
    v52 = type metadata accessor for SecureLocation();
    (*(v9 + 32))(a2 + v52[13], v59, v58);
    result = (*(v42 + 32))(a2 + v52[14], v44, v41);
    *(a2 + v52[15]) = v45;
    v53 = (a2 + v52[16]);
    *v53 = v48;
    v53[1] = v50;
  }

  return result;
}

void sub_10008C154()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 1);
  String.hash(into:)();
  v4 = v0[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v0[3];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = v0[4];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = v0[5];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  v8 = v0[6];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  v9 = v0[7];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  Hasher._combine(_:)(*&v9);
  v10 = v0[8];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  Hasher._combine(_:)(*&v10);
  if (*(v0 + 80) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = *(v0 + 9);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11);
  }

  v12 = type metadata accessor for SecureLocation();
  v13 = v12[13];
  type metadata accessor for Date();
  sub_10008DBE4(&qword_1005A9868, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v14 = v12[14];
  type metadata accessor for MotionActivityState();
  sub_10008DBE4(&qword_1005A9870, &type metadata accessor for MotionActivityState);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v12[15]));
  v15 = (v1 + v12[16]);
  if (v15[1])
  {
    v16 = *v15;
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_10008C3A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for MotionActivityState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005A9808, &qword_1004C2CD0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v60 - v11;
  v67 = type metadata accessor for Date();
  v65 = *(v67 - 8);
  v12 = *(v65 + 64);
  __chkstk_darwin(v67);
  v66 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005A9810, &qword_1004C2CD8);
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = type metadata accessor for SecureLocation();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = enum case for MotionActivityState.unknown(_:);
  v71 = *(v20 + 56);
  v72 = v4;
  v23 = *(v4 + 104);
  v73 = v3;
  v74 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23(v74 + v71, enum case for MotionActivityState.unknown(_:), v3);
  v24 = a1[3];
  v25 = a1[4];
  v70 = a1;
  sub_100011AEC(a1, v24);
  sub_10008D16C();
  v26 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    v75 = v26;
    v30 = v74;
    sub_100004984(v70);
    return (*(v72 + 8))(v30 + v71, v73);
  }

  v60 = v23;
  v61 = v18;
  v78 = v22;
  v28 = v68;
  v27 = v69;
  LOBYTE(v76) = 0;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v74;
  *v74 = v29;
  v32[1] = v33;
  LOBYTE(v76) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v32[2] = v34;
  LOBYTE(v76) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v32[3] = v35;
  LOBYTE(v76) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v32[4] = v36;
  LOBYTE(v76) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v32[5] = v37;
  LOBYTE(v76) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v32[6] = v38;
  LOBYTE(v76) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v32[7] = v39;
  LOBYTE(v76) = 7;
  KeyedDecodingContainer.decode(_:forKey:)();
  v32[8] = v41;
  LOBYTE(v76) = 8;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = 0;
  v32[9] = v42;
  *(v32 + 80) = v43 & 1;
  LOBYTE(v76) = 9;
  sub_10008DBE4(&qword_1005A9820, &type metadata accessor for Date);
  v44 = v14;
  v45 = v17;
  v46 = v75;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v75 = v46;
  if (v46)
  {
    (*(v28 + 8))(v17, v14);
    v30 = v74;
    sub_100004984(v70);
    v40 = v30[1];

    return (*(v72 + 8))(v30 + v71, v73);
  }

  (*(v65 + 32))(v74 + v61[13], v66, v67);
  LOBYTE(v76) = 10;
  sub_10008DBE4(&qword_1005A9828, &type metadata accessor for MotionActivityState);
  v47 = v75;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v75 = v47;
  if (v47)
  {
LABEL_17:
    (*(v28 + 8))(v17, v44);
    sub_100004984(v70);
    v30 = v74;
    v54 = v74[1];

    (*(v65 + 8))(v30 + v61[13], v67);
    return (*(v72 + 8))(v30 + v71, v73);
  }

  v48 = v63;
  sub_100005F04(v64, v63, &qword_1005A9808, &qword_1004C2CD0);
  v49 = *(v72 + 48);
  if (v49(v48, 1, v73) == 1)
  {
    v50 = v73;
    v60(v62, v78, v73);
    if (v49(v63, 1, v50) != 1)
    {
      sub_100002CE0(v63, &qword_1005A9808, &qword_1004C2CD0);
    }
  }

  else
  {
    (*(v72 + 32))(v62, v63, v73);
  }

  (*(v72 + 40))(v74 + v71, v62, v73);
  type metadata accessor for SPSecureLocationPublishReason(0);
  v79 = 11;
  sub_10008DBE4(&qword_1005A9830, type metadata accessor for SPSecureLocationPublishReason);
  v51 = v75;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v75 = v51;
  if (v51)
  {
    sub_100002CE0(v64, &qword_1005A9808, &qword_1004C2CD0);
    goto LABEL_17;
  }

  v52 = v76;
  if (v77)
  {
    v52 = 0;
  }

  *(v74 + v61[15]) = v52;
  LOBYTE(v76) = 12;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = 0;
  v55 = v53;
  v57 = v56;
  v58 = v74;
  v59 = (v74 + v61[16]);
  sub_100002CE0(v64, &qword_1005A9808, &qword_1004C2CD0);
  (*(v28 + 8))(v45, v44);
  *v59 = v55;
  v59[1] = v57;
  sub_10008D1C0(v58, v27);
  sub_100004984(v70);
  return sub_1000563DC(v58);
}

uint64_t sub_10008CBF8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005A9838, &qword_1004C2CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10008D16C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    LOBYTE(v25) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    LOBYTE(v25) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + 80);
    *&v25 = v3[9];
    BYTE8(v25) = v20;
    v26 = 8;
    sub_10004B564(&qword_1005A97F8, &qword_1004C2CC8);
    sub_10008D224(&qword_1005A9840, &qword_1005A97F8, &qword_1004C2CC8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = type metadata accessor for SecureLocation();
    v22 = v21[13];
    LOBYTE(v25) = 9;
    type metadata accessor for Date();
    sub_10008DBE4(&qword_1005A9848, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = v21[14];
    LOBYTE(v25) = 10;
    type metadata accessor for MotionActivityState();
    sub_10008DBE4(&qword_1005A9850, &type metadata accessor for MotionActivityState);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v25 = *(v3 + v21[15]);
    v26 = 11;
    type metadata accessor for SPSecureLocationPublishReason(0);
    sub_10008DBE4(&qword_1005A9858, type metadata accessor for SPSecureLocationPublishReason);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = *(v3 + v21[16]);
    v26 = 12;
    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    sub_10008D224(&qword_1005A9860, &qword_1005A96A8, &qword_1004C3320);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10008D09C()
{
  Hasher.init(_seed:)();
  sub_10008C154();
  return Hasher._finalize()();
}

Swift::Int sub_10008D0E0()
{
  Hasher.init(_seed:)();
  sub_10008C154();
  return Hasher._finalize()();
}

unint64_t sub_10008D16C()
{
  result = qword_1005A9818;
  if (!qword_1005A9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9818);
  }

  return result;
}

uint64_t sub_10008D1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008D224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008D28C()
{
  v18 = xmmword_1004C2B60;
  v1 = *(v0 + 24) * 10000000.0;
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v1 >= 2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  LODWORD(v14) = bswap32(v1);
  v16 = &type metadata for UnsafeRawBufferPointer;
  v17 = &protocol witness table for UnsafeRawBufferPointer;
  *&v15 = &v14;
  *(&v15 + 1) = &v14 + 4;
  v2 = sub_100011AEC(&v15, &type metadata for UnsafeRawBufferPointer);
  v4 = *v2;
  v3 = v2[1];
  Data._Representation.append(contentsOf:)();
  sub_100004984(&v15);
  v5 = *(v0 + 16) * 10000000.0;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (v5 >= 2147483650.0)
  {
    goto LABEL_13;
  }

  LODWORD(v14) = bswap32(v5);
  v16 = &type metadata for UnsafeRawBufferPointer;
  v17 = &protocol witness table for UnsafeRawBufferPointer;
  *&v15 = &v14;
  *(&v15 + 1) = &v14 + 4;
  v6 = sub_100011AEC(&v15, &type metadata for UnsafeRawBufferPointer);
  v8 = *v6;
  v7 = v6[1];
  Data._Representation.append(contentsOf:)();
  sub_100004984(&v15);
  v14 = *(v0 + 40);
  v15 = xmmword_1004C2B70;
  sub_10008DB2C();
  scale<A, B>(_:_:)();
  v16 = &type metadata for UnsafeRawBufferPointer;
  v17 = &protocol witness table for UnsafeRawBufferPointer;
  *&v15 = &v13;
  *(&v15 + 1) = &v14;
  v9 = sub_100011AEC(&v15, &type metadata for UnsafeRawBufferPointer);
  v11 = *v9;
  v10 = v9[1];
  Data._Representation.append(contentsOf:)();
  sub_100004984(&v15);
  return v18;
}

uint64_t sub_10008D4B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SecureLocation();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Data.subObject<A>(range:)();
  v27 = a2;
  LODWORD(a2) = v28;
  Data.subObject<A>(range:)();
  HIDWORD(v26) = v28;
  Data.subObject<A>(range:)();
  v13 = bswap32(HIDWORD(v26));
  v29 = v28;
  v28 = xmmword_1004C2B70;
  sub_10008DB2C();
  unscale<A, B>(_:_:)();
  v14 = v30;
  v15 = bswap32(a2) / 10000000.0;
  v16 = v8[13];
  v17 = v13 / 10000000.0;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 16))(&v12[v16], a3, v18);
  v19 = v8[14];
  v20 = enum case for MotionActivityState.unknown(_:);
  v21 = type metadata accessor for MotionActivityState();
  (*(*(v21 - 8) + 104))(&v12[v19], v20, v21);
  v22 = v27;
  *v12 = a1;
  *(v12 + 1) = v22;
  *(v12 + 2) = v17;
  *(v12 + 3) = v15;
  *(v12 + 4) = 0;
  *(v12 + 5) = v14;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  v12[80] = 1;
  v23 = v8[15];
  v24 = &v12[v8[16]];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v12[v23] = 8;
  sub_10008DB80(v12, a4);
  (*(v9 + 56))(a4, 0, 1, v8);
}

BOOL sub_10008D92C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v5 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for SecureLocation();
  v7 = v6[13];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[14];
  type metadata accessor for MotionActivityState();
  sub_10008DBE4(&qword_1005A9878, &type metadata accessor for MotionActivityState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v16 != v15 || *(a1 + v6[15]) != *(a2 + v6[15]))
  {
    return 0;
  }

  v9 = v6[16];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  if (v11)
  {
    return v13 && (*v10 == *v12 && v11 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v13;
}

unint64_t sub_10008DB2C()
{
  result = qword_1005A9880;
  if (!qword_1005A9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9880);
  }

  return result;
}

uint64_t sub_10008DB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008DBE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008DC40()
{
  result = qword_1005A9890;
  if (!qword_1005A9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9890);
  }

  return result;
}

unint64_t sub_10008DC98()
{
  result = qword_1005A9898;
  if (!qword_1005A9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9898);
  }

  return result;
}

unint64_t sub_10008DCF0()
{
  result = qword_1005A98A0;
  if (!qword_1005A98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A98A0);
  }

  return result;
}

unint64_t sub_10008DD44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A978, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_10008DD90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10008DEB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10008DFD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000110D8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000709C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_10008E038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002B3C0(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = *(a1 + 48) + 40 * v6;
    v11 = *(v10 + 32);
    v24 = *(v10 + 24);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_10002B3C0((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v24;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10002F14C(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10002F14C(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

uint64_t sub_10008E264(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10008E2F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10008E390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BAD18(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SPSecureLocationSubscriptionMode.encode(to:)(void *a1)
{
  v1 = a1[4];
  sub_100011AEC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_1000BAF2C(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100004984(v3);
}

uint64_t sub_10008E574()
{
  type metadata accessor for SecureLocationsCoordinator();
  sub_10004B564(&qword_1005A9E08, &unk_1004C3310);
  result = String.init<A>(describing:)();
  qword_1005A98A8 = result;
  unk_1005A98B0 = v1;
  return result;
}

uint64_t sub_10008E5C8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005A98B8);
  v1 = sub_10000A6F0(v0, qword_1005A98B8);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFB98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10008E690()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  [v0 setURLCache:0];
  [v0 setRequestCachePolicy:1];
  [v0 setHTTPCookieStorage:0];
  [v0 setHTTPCookieAcceptPolicy:1];
  [v0 setURLCredentialStorage:0];
  v1 = String._bridgeToObjectiveC()();
  [v0 set_sourceApplicationBundleIdentifier:v1];

  [v0 set_alternativeServicesStorage:0];
  [v0 set_disableAPWakeOnIdleConnections:1];
  [v0 set_usesNWLoader:1];
  type metadata accessor for ServerInteractionController();
  sub_1004B885C(3u);
  return ServerInteractionController.__allocating_init(sessionConfiguration:bundleIdentifier:)();
}

uint64_t sub_10008E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v66 = a1;
  v67 = a5;
  v63 = a4;
  v64 = a3;
  v65 = a2;
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v68 = &v57 - v9;
  v76 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v70 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v70 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v70);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 56) = sub_10008E690();
  v19 = type metadata accessor for NearbyWatchObserver(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v22 + 112) = xmmword_1004C2E40;
  type metadata accessor for NearbyWatchObserver.State(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + 64) = v22;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = _swiftEmptyArrayStorage;
  v60 = sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v62 = "cureLocations.liveUnsubscribe";
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  v72 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v23 = *(v15 + 104);
  v71 = v15 + 104;
  v23(v18);
  static DispatchQoS.unspecified.getter();
  v77 = _swiftEmptyArrayStorage;
  v74 = sub_10001DFA8(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  v73 = sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  v75 = sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  v59 = v12;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v6 + 144) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = SPSecureLocationsOnDemandPublishRequest;
  v62 = type metadata accessor for DarwinNotificationHelper();
  v25 = swift_allocObject();
  v61 = type metadata accessor for DarwinNotificationPoster();
  swift_allocObject();
  v26 = sub_10013F61C(v24, 0.0);
  *(v25 + 16) = 0;
  *(v25 + 24) = v26;
  *(v6 + 152) = v25;
  v27 = v72;
  v28 = v70;
  v69 = v23;
  (v23)(v18, v72, v70);
  static DispatchQoS.unspecified.getter();
  v77 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  v58 = "eLocationSubscriptions";
  *(v6 + 160) = v29;
  (v23)(v18, v27, v28);
  static DispatchQoS.unspecified.getter();
  v77 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v57 = v18;
  *(v6 + 184) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v58 = "eivedLocationsProcessing";
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0;
  v30 = v70;
  (v69)(v18, v72, v70);
  static DispatchQoS.unspecified.getter();
  v77 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v57;
  *(v6 + 312) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (v69)(v31, v72, v30);
  static DispatchQoS.unspecified.getter();
  v77 = _swiftEmptyArrayStorage;
  v32 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v66;
  v33 = v67;
  *(v6 + 320) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v6 + 328) = _swiftEmptyDictionarySingleton;
  v35 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_lastMeDeviceRefresh;
  v36 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v36 - 8) + 56))(v6 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_encryptedLocationStream;
  v38 = sub_10004B564(&unk_1005A9938, &unk_1004C3080);
  (*(*(v38 - 8) + 56))(v6 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewiePublishRequestNotification;
  v40 = SPSecureLocationsStewiePublishRequest;
  v41 = swift_allocObject();
  swift_allocObject();
  v42 = sub_10013F61C(v40, 0.0);
  *(v6 + v39) = v41;
  *(v6 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer) = 0;
  *(v41 + 16) = 0;
  *(v41 + 24) = v42;
  *(v6 + 16) = v34;
  *(v6 + 24) = v32;
  v43 = v63;
  *(v6 + 32) = v64;
  *(v6 + 40) = v43;
  *(v6 + 48) = v33;
  v44 = objc_allocWithZone(type metadata accessor for SecureLocationsStewieManager(0));
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  *(v6 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager) = sub_100108638(v34, v43, v32);
  v45 = *(v6 + 24);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  *(v45 + 16) = sub_1000C8EE0;
  *(v45 + 24) = v46;

  sub_100037FC8(v47);

  sub_10008F3BC();
  sub_10008FE0C();
  v49 = type metadata accessor for TaskPriority();
  v50 = v68;
  (*(*(v49 - 8) + 56))(v68, 1, 1, v49);
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v6;

  sub_1001D7F30(0, 0, v50, &unk_1004C3410, v51);

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
    _os_log_impl(&_mh_execute_header, v53, v54, "TDW: INIT SECURELOCATIONS v1", v55, 2u);
  }

  return v6;
}

uint64_t sub_10008F170()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_100092054();
}

uint64_t sub_10008F200(uint64_t a1, unint64_t a2)
{
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
    v10 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_10000D01C(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "keyDidDistributedCallback: startLocationMonitoring for id: %{private,mask.hash}s with backgroundProactive and forcePublish", v7, 0x16u);
    sub_100004984(v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000A82D8(a1, a2, 0xD000000000000013, 0x80000001004DDB80, 1);
  }

  return result;
}

uint64_t sub_10008F3BC()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005A9F50, &qword_1004C34E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v52 = v48 - v4;
  v5 = sub_10004B564(&qword_1005A9F58, &qword_1004C34E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v48 - v7;
  v9 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v50 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005A9F60, &unk_1004C34F0);
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  __chkstk_darwin(v13);
  v51 = v48 - v15;
  v16 = v0[3];
  v17 = *(v16 + 40);
  v18 = *(v17 + 80);
  v19 = *(v17 + 88);
  *(v17 + 80) = sub_1000CA0AC;
  *(v17 + 88) = v1;

  sub_100037FC8(v18);

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v58 = *(*(qword_1005DFBC8 + 40) + 24);

  v20 = sub_10004B564(&qword_1005A9F68, &unk_1004C46C0);
  v53 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v21 = sub_10001DF0C(&qword_1005A9F70, &qword_1005A9F68, &unk_1004C46C0);
  v22 = Publisher<>.sink(receiveValue:)();

  v23 = v1[9];
  v1[9] = v22;

  v58 = *(qword_1005DFBC8 + 88);

  v56 = v20;
  v48[1] = v21;
  v24 = Publisher<>.sink(receiveValue:)();

  v25 = v1[12];
  v1[12] = v24;

  v58 = *(qword_1005DFBC8 + 104);

  v26 = Publisher<>.sink(receiveValue:)();

  v27 = v1[14];
  v1[14] = v26;

  v58 = *(*(v16 + 72) + 24);

  v28 = v50;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  (*(v10 + 56))(v8, 1, 1, v9);
  v29 = [objc_opt_self() mainRunLoop];
  v48[0] = v9;
  v30 = v8;
  v31 = v29;
  v57 = v29;
  v32 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v33 = v52;
  (*(*(v32 - 8) + 56))(v52, 1, 1, v32);
  sub_1000545A4(0, &qword_1005A9F78, NSRunLoop_ptr);
  v49 = v16;
  sub_1000CA0BC();
  v34 = v51;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_100002CE0(v33, &qword_1005A9F50, &qword_1004C34E0);

  sub_100002CE0(v30, &qword_1005A9F58, &qword_1004C34E8);
  (*(v10 + 8))(v28, v48[0]);

  sub_10001DF0C(&qword_1005A9F88, &qword_1005A9F60, &unk_1004C34F0);

  v35 = v55;
  v36 = Publisher<>.sink(receiveValue:)();

  (*(v54 + 8))(v34, v35);
  v37 = v1[10];
  v1[10] = v36;

  v58 = *(qword_1005DFBC8 + 72);

  v38 = Publisher<>.sink(receiveValue:)();

  v39 = v1[11];
  v1[11] = v38;

  v58 = *(v1[2] + 48);

  sub_10004B564(&qword_1005A9F90, &qword_1004C3500);
  sub_10001DF0C(&qword_1005A9F98, &qword_1005A9F90, &qword_1004C3500);
  v40 = Publisher<>.sink(receiveValue:)();

  v41 = v1[13];
  v1[13] = v40;

  v58 = *(v49 + 96);

  sub_10004B564(&qword_1005A9FA0, &qword_1004C3508);
  sub_10001DF0C(&qword_1005A9FA8, &qword_1005A9FA0, &qword_1004C3508);
  v42 = Publisher<>.sink(receiveValue:)();

  v43 = v1[21];
  v1[21] = v42;

  v58 = *(v1[4] + 72);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1000CA144;
  *(v44 + 24) = v1;

  sub_10004B564(&qword_1005A9FB0, &qword_1004C3510);
  sub_10001DF0C(&qword_1005A9FB8, &qword_1005A9FB0, &qword_1004C3510);
  v45 = Publisher<>.sink(receiveValue:)();

  v46 = v1[22];
  v1[22] = v45;
}

uint64_t sub_10008FC90()
{
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v0 = sub_100021BB4();

  return sub_1000A9B48(v0 & 1);
}

void sub_10008FD14(_BYTE *a1)
{
  if (*a1 == 1)
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
      _os_log_impl(&_mh_execute_header, v2, v3, "performKeyroll: requesting republish post keyroll complete delay", v4, 2u);
    }

    sub_1000A2748();
  }
}

uint64_t sub_10008FE0C()
{
  v1 = type metadata accessor for SecureLocationsConfig();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v57 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v57 - v6;
  v8 = sub_10004B564(&qword_1005A9DC0, &unk_1004C3290);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v59 = &v57 - v14;
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  v61 = v0;
  v58 = *(v0 + 16);
  v17 = *(v58 + 24);
  if (qword_1005A7F98 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for UUID();
  sub_10000A6F0(v18, qword_1005DFC58);
  sub_1004AFCB8();
  v19 = *(v2 + 48);
  v60 = v1;
  v20 = v19(v16, 1, v1);
  sub_100002CE0(v16, &qword_1005A9DC0, &unk_1004C3290);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000A6F0(v21, qword_1005DFB98);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "CheckAndFetchConfig: Checking for config", v24, 2u);
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  if (v20 == 1)
  {
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "CheckAndFetchConfig - we don't have a local copy of config. doing a fetch", v28, 2u);
    }

    v29 = v61;

    sub_1000BB990(v30, v29, &unk_10058E300, sub_1000C9F30, &unk_1004C34D8, sub_100090644);
  }

  else
  {
    if (v27)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "CheckAndFetchConfig: Existing config found. Not fetching from server", v32, 2u);
    }

    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v33 = qword_1005DFBC8;
    v34 = *(v58 + 24);

    v35 = v59;
    sub_1004AFCB8();
    sub_100005F04(v35, v12, &qword_1005A9DC0, &unk_1004C3290);
    v36 = v60;
    if (v19(v12, 1, v60) == 1)
    {
      sub_100002CE0(v12, &qword_1005A9DC0, &unk_1004C3290);
      if (qword_1005A7FA0 != -1)
      {
        swift_once();
      }

      v37 = qword_1005DFC70;
      v38 = qword_1005A7FA8;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for URL();
      v40 = sub_10000A6F0(v39, qword_1005DFC78);
      (*(*(v39 - 8) + 16))(&v7[*(v36 + 76)], v40, v39);
      if (qword_1005A7FB0 != -1)
      {
        swift_once();
      }

      v41 = qword_1005DFC90;

      sub_100002CE0(v35, &qword_1005A9DC0, &unk_1004C3290);
      *v7 = 0;
      v7[8] = 1;
      *(v7 + 1) = xmmword_1004C2E50;
      *(v7 + 4) = 5;
      *(v7 + 40) = xmmword_1004C2E60;
      v7[56] = 0;
      *(v7 + 8) = v37;
      *(v7 + 9) = 0x405E000000000000;
      v7[80] = 1;
      *(v7 + 11) = 0x409C200000000000;
      *(v7 + 12) = 5;
      *(v7 + 104) = xmmword_1004C2E70;
      *&v7[*(v36 + 80)] = v41;
    }

    else
    {
      sub_100002CE0(v35, &qword_1005A9DC0, &unk_1004C3290);
      sub_1000C9DE8(v12, v7, type metadata accessor for SecureLocationsConfig);
    }

    v42 = (v33 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
    os_unfair_lock_lock((v33 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex));
    v43 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    v44 = *(v43 + 28);
    sub_1000CA2CC(v42 + v44, type metadata accessor for SecureLocationsConfig);
    sub_1000CA264(v7, v42 + v44, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v42);
    v45 = *(v33 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo__secureLocationConfigStream);
    AsyncStreamProvider.yield(value:transaction:)();
    sub_1000CA2CC(v7, type metadata accessor for SecureLocationsConfig);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v62 = v49;
      *v48 = 136315138;
      v50 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

      os_unfair_lock_lock(v50);
      v51 = v57;
      sub_1000CA264(v50 + *(v43 + 28), v57, type metadata accessor for SecureLocationsConfig);
      os_unfair_lock_unlock(v50);

      v53 = sub_100183370(v52);
      v55 = v54;
      sub_1000CA2CC(v51, type metadata accessor for SecureLocationsConfig);
      v56 = sub_10000D01C(v53, v55, &v62);

      *(v48 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v46, v47, "CheckAndFetchConfig: Existing config %s", v48, 0xCu);
      sub_100004984(v49);
    }

    return sub_100091730();
  }
}

void sub_100090644(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9DC0, &unk_1004C3290);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = type metadata accessor for SecureLocationsConfig();
  v12 = *(v11 - 8);
  isa = v12[8].isa;
  __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v45 = v12;
      v20 = v19;
      v43 = v19;
      v44 = swift_slowAlloc();
      v46 = a1;
      v47 = v44;
      *v20 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v21 = String.init<A>(describing:)();
      LOBYTE(v20) = v18;
      v23 = a2;
      v24 = sub_10000D01C(v21, v22, &v47);

      v25 = v43;
      *(v43 + 4) = v24;
      a2 = v23;
      _os_log_impl(&_mh_execute_header, v17, v20, "CheckAndFetchConfig - error fetching config %s", v25, 0xCu);
      sub_100004984(v44);

      v12 = v45;
    }

    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v26 = qword_1005DFBC8;
    v27 = *(*(a2 + 16) + 24);
    v28 = qword_1005A7F98;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for UUID();
    sub_10000A6F0(v29, qword_1005DFC58);
    sub_1004AFCB8();
    sub_100005F04(v10, v8, &qword_1005A9DC0, &unk_1004C3290);
    if ((v12[6].isa)(v8, 1, v11) == 1)
    {
      sub_100002CE0(v8, &qword_1005A9DC0, &unk_1004C3290);
      if (qword_1005A7FA0 != -1)
      {
        swift_once();
      }

      v30 = qword_1005DFC70;
      v31 = qword_1005A7FA8;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for URL();
      v33 = sub_10000A6F0(v32, qword_1005DFC78);
      (*(*(v32 - 8) + 16))(&v15[*(v11 + 76)], v33, v32);
      if (qword_1005A7FB0 != -1)
      {
        swift_once();
      }

      v34 = qword_1005DFC90;

      sub_100002CE0(v10, &qword_1005A9DC0, &unk_1004C3290);
      *v15 = 0;
      v15[8] = 1;
      *(v15 + 1) = xmmword_1004C2E50;
      *(v15 + 4) = 5;
      *(v15 + 40) = xmmword_1004C2E60;
      v15[56] = 0;
      *(v15 + 8) = v30;
      *(v15 + 9) = 0x405E000000000000;
      v15[80] = 1;
      *(v15 + 11) = 0x409C200000000000;
      *(v15 + 12) = 5;
      *(v15 + 104) = xmmword_1004C2E70;
      *&v15[*(v11 + 80)] = v34;
    }

    else
    {
      sub_100002CE0(v10, &qword_1005A9DC0, &unk_1004C3290);
      sub_1000C9DE8(v8, v15, type metadata accessor for SecureLocationsConfig);
    }

    v39 = (v26 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
    os_unfair_lock_lock((v26 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex));
    v40 = *(sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0) + 28);
    sub_1000CA2CC(v39 + v40, type metadata accessor for SecureLocationsConfig);
    sub_1000CA264(v15, v39 + v40, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v39);
    v41 = *(v26 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo__secureLocationConfigStream);
    AsyncStreamProvider.yield(value:transaction:)();

    sub_1000CA2CC(v15, type metadata accessor for SecureLocationsConfig);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005DFB98);
    v45 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v45, v36, "CheckAndFetchConfig - successfully fetched config since we don't have a copy", v37, 2u);
    }

    v38 = v45;
  }
}

uint64_t sub_100090D10(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Credentials(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = swift_allocObject();
  v37 = a2;
  *(v18 + 16) = a2;
  if (qword_1005A8098 != -1)
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
    v39 = 0;
    v40 = 0;
    v41 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFB98);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      v39 = 0;
      *v24 = 136315138;
      v40 = 0;
      v41 = 2;
      v26 = String.init<A>(describing:)();
      v28 = sub_10000D01C(v26, v27, &v38);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "FetchConfig - failed to get credentials error %s", v24, 0xCu);
      sub_100004984(v25);
    }

    v29 = swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 2;
    sub_1000B80D0(v29, v37);
  }

  else
  {
    sub_1000C9DE8(v10, v17, type metadata accessor for Credentials);
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    sub_1000CA264(v17, v15, type metadata accessor for Credentials);
    v32 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v36;
    sub_1000C9DE8(v15, v33 + v32, type metadata accessor for Credentials);
    v34 = (v33 + ((v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v34 = sub_1000C9390;
    v34[1] = v18;

    sub_1001D7F30(0, 0, v6, &unk_1004C3438, v33);

    sub_1000CA2CC(v17, type metadata accessor for Credentials);
  }
}

uint64_t sub_10009123C(void (*a1)(void), void (*a2)(void))
{
  v35 = a1;
  v36 = a2;
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for Credentials(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v18 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v19 = sub_10000A6F0(v18, qword_1005AF7C0);
  os_unfair_lock_lock(v19);
  sub_100005F04(v19 + *(v18 + 28), v10, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v19);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100002CE0(v10, &qword_1005A9DA8, &unk_1004D1130);
    v38 = 0;
    v39 = 0;
    v40 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      v38 = 0;
      *v23 = 136315138;
      v39 = 0;
      v40 = 2;
      v25 = String.init<A>(describing:)();
      v27 = sub_10000D01C(v25, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "FetchConfig - failed to get credentials error %s", v23, 0xCu);
      sub_100004984(v24);
    }

    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 2;
    v35();
  }

  else
  {
    sub_1000C9DE8(v10, v17, type metadata accessor for Credentials);
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    sub_1000CA264(v17, v15, type metadata accessor for Credentials);
    v31 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v2;
    sub_1000C9DE8(v15, v32 + v31, type metadata accessor for Credentials);
    v33 = (v32 + ((v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    v34 = v36;
    *v33 = v35;
    v33[1] = v34;

    sub_1001D7F30(0, 0, v6, &unk_1004C3280, v32);

    return sub_1000CA2CC(v17, type metadata accessor for Credentials);
  }
}

uint64_t sub_100091730()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v87 = &v77[-v9];
  v10 = __chkstk_darwin(v8);
  v12 = &v77[-v11];
  v13 = __chkstk_darwin(v10);
  v86 = &v77[-v14];
  v15 = __chkstk_darwin(v13);
  v88 = &v77[-v16];
  __chkstk_darwin(v15);
  v18 = &v77[-v17];
  v19 = type metadata accessor for SecureLocationsConfig();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1000BB328())
  {
    goto LABEL_5;
  }

  v23 = v1;
  v24 = v3;
  v25 = v12;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v26 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v26);
  v27 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v26 + *(v27 + 28), v22, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v26);

  v28 = v22[8];
  result = sub_1000CA2CC(v22, type metadata accessor for SecureLocationsConfig);
  v12 = v25;
  v3 = v24;
  v1 = v23;
  if ((v28 & 1) == 0)
  {
LABEL_5:
    v30 = [objc_opt_self() standardUserDefaults];
    v31 = String._bridgeToObjectiveC()();
    [v30 doubleForKey:v31];
    v33 = v32;

    if (v33 == 0.0)
    {
      sub_1000BB4F0();
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000A6F0(v34, qword_1005DFB98);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "CheckAndFetchConfig: nextCheckTime is zero. Fetching now but setting an explicit next check time", v37, 2u);
      }
    }

    v84 = v7;
    v82 = v1;
    Date.init(timeIntervalSince1970:)();
    static Date.trustedNow.getter(v88);
    v38 = v86;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = sub_10000A6F0(v39, qword_1005DFB98);
    v41 = v3[2];
    v41(v38, v88, v2);
    v81 = v41;
    v41(v12, v18, v2);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v85 = v18;
    v83 = v3;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v89[0] = v79;
      *v45 = 136315394;
      sub_10001DFA8(&qword_1005A9800, &type metadata accessor for Date);
      v46 = v12;
      v78 = v43;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v38;
      v50 = v49;
      v80 = v40;
      v51 = v3[1];
      v51(v48, v2);
      v52 = sub_10000D01C(v47, v50, v89);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      v53 = v51;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v51(v46, v2);
      v57 = sub_10000D01C(v54, v56, v89);

      *(v45 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v42, v78, "CheckAndFetchConfig: currentTime %s nextCheckDateTime %s", v45, 0x16u);
      swift_arrayDestroy();

      v18 = v85;
    }

    else
    {

      v58 = v12;
      v53 = v3[1];
      v53(v58, v2);
      v53(v38, v2);
    }

    v59 = v84;
    v60 = static Date.> infix(_:_:)();
    v61 = v87;
    if (v60)
    {
      v62 = v81;
      v81(v87, v88, v2);
      v62(v59, v18, v2);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v89[0] = v86;
        *v65 = 136315394;
        sub_10001DFA8(&qword_1005A9800, &type metadata accessor for Date);
        v66 = v53;
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v61;
        v69 = v2;
        v71 = v70;
        LODWORD(v84) = v64;
        v53(v68, v69);
        v72 = sub_10000D01C(v67, v71, v89);
        v2 = v69;

        *(v65 + 4) = v72;
        *(v65 + 12) = 2080;
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;
        v66(v59, v69);
        v76 = sub_10000D01C(v73, v75, v89);
        v53 = v66;

        *(v65 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v63, v84, "CheckAndFetchConfig: Feature disabled. Fetching config because Current time %s greater than checkTime %s", v65, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v53(v59, v2);
        v53(v61, v2);
      }

      type metadata accessor for Transaction();
      static Transaction.named<A>(_:with:)();
      v18 = v85;
    }

    v53(v88, v2);
    return (v53)(v18, v2);
  }

  return result;
}

uint64_t sub_100092054()
{
  v1[5] = v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(sub_10004B564(&qword_1005A9F18, &qword_1004C3490) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_10004B564(&unk_1005A9938, &unk_1004C3080);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v1[10] = *(v5 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[13] = v7;
  *v7 = v1;
  v7[1] = sub_1000921D4;

  return daemon.getter();
}

uint64_t sub_1000921D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  MyService = type metadata accessor for MicroFindMyService(0);
  v9 = sub_10001DFA8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10001DFA8(&qword_1005A9DF8, type metadata accessor for MicroFindMyService);
  *v6 = v12;
  v6[1] = sub_1000923B0;

  return ActorServiceDaemon.getService<A>()(v7, MyService, v9, v10);
}

uint64_t sub_1000923B0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;

  v8 = v4[14];
  if (v1)
  {

    v10 = v5[11];
    v9 = v5[12];
    v13 = v5 + 6;
    v11 = v5[6];
    v12 = v13[1];

    v14 = *(v7 + 8);

    return v14();
  }

  else
  {

    v5[16] = a1;

    return _swift_task_switch(sub_100092554, a1, 0);
  }
}

uint64_t sub_100092554()
{
  v1 = v0[16];
  v2 = v0[7];
  sub_1003B3794(v0[12]);
  sub_1003B3794(v2);

  return _swift_task_switch(sub_1000925CC, 0, 0);
}

uint64_t sub_1000925CC()
{
  v19 = v0[16];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  (*(v3 + 56))(v6, 0, 1, v5);
  v9 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_encryptedLocationStream;
  swift_beginAccess();
  sub_100022364(v6, v8 + v9, &qword_1005A9F18, &qword_1004C3490);
  swift_endAccess();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v3 + 16))(v2, v1, v5);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v3 + 32))(v12 + v11, v2, v5);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  sub_1004933A0(0, 0, v7, &unk_1004C34A0, v12);

  sub_100002CE0(v7, &qword_1005A9690, &qword_1004C2A00);
  (*(v3 + 8))(v1, v5);
  v14 = v0[11];
  v13 = v0[12];
  v16 = v0[6];
  v15 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100092808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for EncryptedLocation(0);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A9F20, &qword_1004C34A8) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005A9F28, &qword_1004C34B0);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10009296C, 0, 0);
}

uint64_t sub_10009296C()
{
  v1 = v0[13];
  v2 = v0[2];
  sub_10004B564(&unk_1005A9938, &unk_1004C3080);
  AsyncStream.makeAsyncIterator()();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100092A34;
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_100092A34()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100092B30, 0, 0);
}

uint64_t sub_100092B30()
{
  v57 = v0;
  v1 = v0[10];
  v2 = sub_10004B564(&qword_1005A9F30, &qword_1004C34B8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    v3 = v0[9];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[9];
    v11 = *v1;

    sub_1000C9DE8(v1 + *(v2 + 48), v10, type metadata accessor for EncryptedLocation);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    sub_1000CA264(v12, v13, type metadata accessor for EncryptedLocation);
    sub_1000CA264(v12, v14, type metadata accessor for EncryptedLocation);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[7];
    v19 = v0[8];
    if (v18)
    {
      v55 = v0[4];
      v21 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = *v19;
      v23 = v19[1];
      v24 = Data.base64EncodedString(options:)(0);
      sub_1000CA2CC(v19, type metadata accessor for EncryptedLocation);
      v25 = sub_10000D01C(v24._countAndFlagsBits, v24._object, &v56);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = *(v55 + 24);
      type metadata accessor for Date();
      sub_10001DFA8(&qword_1005A9800, &type metadata accessor for Date);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1000CA2CC(v20, type metadata accessor for EncryptedLocation);
      v30 = sub_10000D01C(v27, v29, &v56);

      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v16, v17, "TRACE: MicroFindMy location event: %s: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000CA2CC(v20, type metadata accessor for EncryptedLocation);
      sub_1000CA2CC(v19, type metadata accessor for EncryptedLocation);
    }

    v31 = sub_1000BBE94(v0[9]);
    v33 = v0[9];
    if (v32 >> 60 == 15)
    {
      sub_1000CA264(v0[9], v0[6], type metadata accessor for EncryptedLocation);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[9];
      v38 = v0[6];
      if (v36)
      {
        v40 = v0[4];
        v39 = v0[5];
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v56 = v42;
        *v41 = 136315138;
        sub_1000CA264(v38, v39, type metadata accessor for EncryptedLocation);
        v43 = String.init<A>(describing:)();
        v45 = v44;
        sub_1000CA2CC(v38, type metadata accessor for EncryptedLocation);
        v46 = sub_10000D01C(v43, v45, &v56);

        *(v41 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v34, v35, "TRACE: Could not convert %s to Data!", v41, 0xCu);
        sub_100004984(v42);
      }

      else
      {

        sub_1000CA2CC(v38, type metadata accessor for EncryptedLocation);
      }

      v47 = v37;
    }

    else
    {
      v48 = v31;
      v49 = v32;
      sub_10009314C(v31, v32, v0[3]);
      sub_10001A794(v48, v49);
      v47 = v33;
    }

    sub_1000CA2CC(v47, type metadata accessor for EncryptedLocation);
    v50 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v51 = swift_task_alloc();
    v0[14] = v51;
    *v51 = v0;
    v51[1] = sub_100092A34;
    v52 = v0[13];
    v53 = v0[10];
    v54 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v53, 0, 0, v54);
  }
}

void sub_10009314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v3 = type metadata accessor for SecureLocation();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  v5 = __chkstk_darwin(v3);
  v53 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v47 - v7;
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  static String.Encoding.utf8.getter();
  v11 = String.init(data:encoding:)();
  v13 = &off_1005A7000;
  v48 = v3;
  if (!v12)
  {
    goto LABEL_7;
  }

  v14 = v12;
  v51 = v11;
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v54[0] = v19;
      *v18 = 136315138;
      v20 = sub_10000D01C(v51, v14, v54);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "jsonString %s", v18, 0xCu);
      sub_100004984(v19);
      v3 = v48;
    }

    else
    {
    }

LABEL_7:
    v21 = type metadata accessor for JSONDecoder();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = JSONDecoder.init()();
    sub_1000C84A0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v50 = 0;
    v14 = v54[2];
    if (v13[477] != -1)
    {
      swift_once();
    }

    v47[2] = v24;
    v25 = type metadata accessor for Logger();
    v47[1] = sub_10000A6F0(v25, qword_1005DFB98);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Decoded push location payload successfully", v28, 2u);
      v3 = v48;
    }

    v29 = *(v49 + 16);
    v30 = sub_1001028AC(v14);

    v51 = v30[2];
    if (!v51)
    {
      break;
    }

    v31 = 0;
    v32 = _swiftEmptyArrayStorage;
    while (v31 < v30[2])
    {
      v13 = ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v33 = *(v52 + 72);
      sub_1000CA264(v13 + v30 + v33 * v31, v8, type metadata accessor for SecureLocation);
      if (*(v8 + 2) == 0.0 && *(v8 + 3) == 0.0)
      {
        sub_1000CA2CC(v8, type metadata accessor for SecureLocation);
      }

      else
      {
        if ((*&v8[*(v3 + 60)] | 2) == 3)
        {
          if (qword_1005A7EF8 != -1)
          {
            swift_once();
          }

          v34 = sub_1000DCB14(v8);

          if (v34)
          {
            v35 = *v8;
            v36 = *(v8 + 1);
            v37 = type metadata accessor for Transaction();
            __chkstk_darwin(v37);
            v47[-4] = v49;
            v47[-3] = v35;
            v47[-2] = v36;
            v38 = v50;
            static Transaction.named<A>(_:with:)();
            v50 = v38;
            v3 = v48;
          }
        }

        sub_1000C9DE8(v8, v53, type metadata accessor for SecureLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54[0] = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239440(0, v32[2] + 1, 1);
          v32 = v54[0];
        }

        v41 = v32[2];
        v40 = v32[3];
        v14 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          sub_100239440(v40 > 1, v41 + 1, 1);
          v32 = v54[0];
        }

        v32[2] = v14;
        sub_1000C9DE8(v53, v13 + v32 + v41 * v33, type metadata accessor for SecureLocation);
      }

      if (v51 == ++v31)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_29:

  v42 = type metadata accessor for Transaction();
  __chkstk_darwin(v42);
  v47[-2] = v49;
  v47[-1] = v32;
  static Transaction.named<A>(_:with:)();

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543362;
    *(v45 + 4) = 0;
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Error from processLocationPayload: %{public}@", v45, 0xCu);
    sub_100002CE0(v46, &qword_1005A9670, &unk_1004C2480);
  }
}

uint64_t sub_100093AC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v46 = a4;
  v49 = type metadata accessor for SecureLocation();
  v51 = *(v49 - 8);
  v5 = *(v51 + 64);
  v6 = __chkstk_darwin(v49);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  static String.Encoding.utf8.getter();
  v12 = String.init(data:encoding:)();
  v14 = &off_1005A7000;
  if (!v13)
  {
    goto LABEL_7;
  }

  v15 = v13;
  v50 = v12;
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v45 = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v53[0] = v21;
      *v20 = 136315138;
      v22 = sub_10000D01C(v50, v15, v53);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "jsonString %s", v20, 0xCu);
      sub_100004984(v21);

      a3 = v45;
    }

    else
    {
    }

LABEL_7:
    v23 = type metadata accessor for JSONDecoder();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = JSONDecoder.init()();
    sub_1000C84A0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v44 = v26;
    v45 = a3;
    v27 = v53[2];
    if (v14[477] != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A6F0(v28, qword_1005DFB98);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Decoded push location payload successfully", v31, 2u);
    }

    v32 = *(v48 + 16);
    v33 = sub_1001028AC(v27);

    v50 = v33[2];
    if (!v50)
    {
      break;
    }

    a3 = 0;
    v15 = _swiftEmptyArrayStorage;
    while (a3 < v33[2])
    {
      v34 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v14 = *(v51 + 72);
      sub_1000CA264(v33 + v34 + v14 * a3, v9, type metadata accessor for SecureLocation);
      if (*(v9 + 2) == 0.0 && *(v9 + 3) == 0.0)
      {
        sub_1000CA2CC(v9, type metadata accessor for SecureLocation);
      }

      else
      {
        if ((*&v9[*(v49 + 60)] | 2) == 3)
        {
          if (qword_1005A7EF8 != -1)
          {
            swift_once();
          }

          v35 = sub_1000DCB14(v9);

          if (v35)
          {
            v36 = *v9;
            v37 = *(v9 + 1);
            v38 = type metadata accessor for Transaction();
            v47 = &v44;
            __chkstk_darwin(v38);
            *(&v44 - 4) = v48;
            *(&v44 - 3) = v36;
            *(&v44 - 2) = v37;
            static Transaction.named<A>(_:with:)();
          }
        }

        sub_1000C9DE8(v9, v52, type metadata accessor for SecureLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239440(0, v15[2] + 1, 1);
          v15 = v53[0];
        }

        v41 = v15[2];
        v40 = v15[3];
        if (v41 >= v40 >> 1)
        {
          sub_100239440(v40 > 1, v41 + 1, 1);
          v15 = v53[0];
        }

        v15[2] = v41 + 1;
        sub_1000C9DE8(v52, v15 + v34 + v41 * v14, type metadata accessor for SecureLocation);
      }

      if (v50 == ++a3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_29:

  v42 = type metadata accessor for Transaction();
  __chkstk_darwin(v42);
  *(&v44 - 2) = v48;
  *(&v44 - 1) = v15;
  static Transaction.named<A>(_:with:)();

  v45(0);
}

void sub_1000942D4(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v61 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  __chkstk_darwin(v12);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SecureLocationsConfig();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v60 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000A6F0(v18, qword_1005DFB98);

  v20 = a2;
  v62 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v57 = v12;
    v24 = v23;
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v24 = 134218754;
    *(v24 + 4) = *(a1 + 16);

    *(v24 + 12) = 2082;
    v25 = [v20 clientApp];
    v56 = v20;
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = a4;
    v28 = v27;
    v29 = v11;
    v30 = v8;
    v31 = v7;
    v33 = v32;

    v34 = sub_10000D01C(v28, v33, aBlock);
    v7 = v31;
    v8 = v30;
    v11 = v29;

    *(v24 + 14) = v34;
    *(v24 + 22) = 2080;
    v35 = Array.description.getter();
    v37 = sub_10000D01C(v35, v36, aBlock);
    v20 = v56;

    *(v24 + 24) = v37;
    a4 = v55;
    *(v24 + 32) = 1024;
    *(v24 + 34) = v61 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v24, 0x26u);
    swift_arrayDestroy();

    v12 = v57;
  }

  else
  {
  }

  v38 = a1;
  if (sub_1000BB328())
  {
    goto LABEL_12;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v39 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v39);
  v40 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v41 = v60;
  sub_1000CA264(v39 + *(v40 + 28), v60, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v39);

  v42 = *(v41 + 8);
  sub_1000CA2CC(v41, type metadata accessor for SecureLocationsConfig);
  if ((v42 & 1) == 0)
  {
LABEL_12:
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v49, 2u);
    }

    [v20 subscriptionMode];
    type metadata accessor for SecureLocationsError(0);
    v64 = 6;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  else if (*(v38 + 16))
  {
    v62 = *(a4 + 320);
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    *(v43 + 24) = a4;
    *(v43 + 32) = v20;
    *(v43 + 40) = v61 & 1;
    *(v43 + 48) = DarwinNotification.init(name:value:);
    *(v43 + 56) = 0;
    aBlock[4] = sub_1000CA9B4;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058D6C0;
    v44 = _Block_copy(aBlock);

    v45 = v20;

    v46 = v58;
    static DispatchQoS.unspecified.getter();
    v64 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);
    (*(v8 + 8))(v11, v7);
    (*(v59 + 8))(v46, v12);
  }

  else
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "No findMyIds specified for SubscribeAndFetch - not proceeding", v52, 2u);
    }

    v53 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    [v20 subscriptionMode];
  }
}

void sub_100094AC4(uint64_t a1, void *a2, int a3, void (*a4)(void *, uint64_t, double), uint64_t a5)
{
  v68 = a4;
  v66 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  __chkstk_darwin(v12);
  v63 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SecureLocationsConfig();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000A6F0(v19, qword_1005DFB98);

  v21 = a2;
  v67 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v61 = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    v58 = v18;
    aBlock[0] = v26;
    *v25 = 134218754;
    *(v25 + 4) = *(a1 + 16);

    *(v25 + 12) = 2082;
    v27 = [v21 clientApp];
    v60 = a5;
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v21;
    v30 = v29;
    v31 = v12;
    v32 = v8;
    v34 = v33;

    v35 = sub_10000D01C(v30, v34, aBlock);
    v8 = v32;
    v12 = v31;

    *(v25 + 14) = v35;
    *(v25 + 22) = 2080;
    v36 = a1;
    v37 = Array.description.getter();
    v39 = sub_10000D01C(v37, v38, aBlock);
    a5 = v60;

    *(v25 + 24) = v39;
    v21 = v59;
    *(v25 + 32) = 1024;
    *(v25 + 34) = v66 & 1;
    _os_log_impl(&_mh_execute_header, v22, v23, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v25, 0x26u);
    swift_arrayDestroy();
    v18 = v58;

    v9 = v61;

    if (sub_1000BB328())
    {
      goto LABEL_12;
    }
  }

  else
  {

    v36 = a1;

    if (sub_1000BB328())
    {
LABEL_12:
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v52, 2u);
      }

      [v21 subscriptionMode];
      type metadata accessor for SecureLocationsError(0);
      v70 = 6;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v53 = aBlock[0];
      v68(_swiftEmptyArrayStorage, aBlock[0], 15.0);
      goto LABEL_15;
    }
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v40 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v40);
  v41 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v40 + *(v41 + 28), v18, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v40);

  v42 = v18[8];
  sub_1000CA2CC(v18, type metadata accessor for SecureLocationsConfig);
  if (v42 != 1)
  {
    goto LABEL_12;
  }

  if (*(v36 + 16))
  {
    v43 = v62;
    v44 = *(v62 + 320);
    v45 = swift_allocObject();
    *(v45 + 16) = v36;
    *(v45 + 24) = v43;
    *(v45 + 32) = v21;
    *(v45 + 40) = v66 & 1;
    *(v45 + 48) = v68;
    *(v45 + 56) = a5;
    aBlock[4] = sub_1000CA9B4;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058E278;
    v46 = _Block_copy(aBlock);

    v47 = v21;

    v48 = v63;
    static DispatchQoS.unspecified.getter();
    v70 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v49 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);
    (*(v9 + 8))(v49, v8);
    (*(v64 + 8))(v48, v12);

    return;
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "No findMyIds specified for SubscribeAndFetch - not proceeding", v56, 2u);
  }

  v57 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
  [v21 subscriptionMode];
  v53 = v57;
  v68(_swiftEmptyArrayStorage, v57, 15.0);

LABEL_15:
}

void sub_100095308(uint64_t a1, uint64_t a2, id a3, int a4, void *a5, uint64_t a6)
{
  v218 = a4;
  v11 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v204 = &v195 - v13;
  v203 = type metadata accessor for Credentials(0);
  v14 = *(v203 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v203);
  __chkstk_darwin(v16);
  v18 = &v195 - v17;
  v19 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v211 = &v195 - v21;
  v22 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v217 = &v195 - v24;
  v25 = type metadata accessor for SecureLocation();
  v210 = *(v25 - 8);
  v26 = *(v210 + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v195 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v213 = &v195 - v31;
  __chkstk_darwin(v30);
  v214 = &v195 - v32;
  v215 = swift_allocObject();
  *(v215 + 16) = &_swiftEmptyDictionarySingleton;
  v34 = *(a1 + 16);
  if (!v34)
  {
LABEL_60:
    if (qword_1005A7EE8 != -1)
    {
      goto LABEL_109;
    }

    goto LABEL_61;
  }

  v209 = v29;
  v198 = v14;
  v195 = v15;
  v196 = &v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v18;
  v202 = a5;
  v205 = a6;
  v226 = 0;
  v225 = *(a2 + 16);
  v206 = &v234;
  v197 = v34;
  v35 = 1 - v34;
  v201 = a2;
  v219 = *(a2 + 48);
  v199 = a1;
  v36 = (a1 + 40);
  *&v33 = 136315138;
  v220 = v33;
  *&v33 = 67109378;
  v212 = v33;
  *(&v37 + 1) = 2;
  v208 = xmmword_1004C1900;
  *&v37 = 136315394;
  v207 = v37;
  v223 = _swiftEmptyArrayStorage;
  v222 = a3;
  while (1)
  {
    v224 = v35;
    v42 = *(v36 - 1);
    v43 = *v36;
    v44 = *(v225 + 24);
    swift_bridgeObjectRetain_n();

    v45 = v217;
    sub_1004AC950(v42, v43, v217);

    v46 = type metadata accessor for SecureLocationsCachedPayload();
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {
      sub_100002CE0(v45, &qword_1005A9E40, &qword_1004C3390);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000A6F0(v47, qword_1005DFB98);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock = v51;
        *v50 = v220;
        *(v50 + 4) = sub_10000D01C(v42, v43, &aBlock);
        _os_log_impl(&_mh_execute_header, v48, v49, "SubscribeAndFetch: cached location for id: %s- no cached location, moving on", v50, 0xCu);
        sub_100004984(v51);
        a3 = v222;
      }
    }

    else
    {
      v53 = v45 + *(v46 + 20);
      v54 = v213;
      sub_1000CA264(v53, v213, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v45, type metadata accessor for SecureLocationsCachedPayload);
      v55 = v214;
      sub_1000C9DE8(v54, v214, type metadata accessor for SecureLocation);
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v56 = sub_1000DC618(v55);

      if (v56)
      {
        sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
        v57 = *(v210 + 72);
        v58 = (*(v210 + 80) + 32) & ~*(v210 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = v208;
        sub_1000CA264(v55, v59 + v58, type metadata accessor for SecureLocation);
        v60 = type metadata accessor for TaskPriority();
        v61 = v211;
        (*(*(v60 - 8) + 56))(v211, 1, 1, v60);
        v62 = swift_allocObject();
        v62[2] = 0;
        v62[3] = 0;
        v62[4] = v59;
        sub_10020D620(0, 0, v61, &unk_1004C33B0, v62);

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_10000A6F0(v63, qword_1005DFB98);
        v64 = v209;
        sub_1000CA264(v55, v209, type metadata accessor for SecureLocation);

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v67 = v207;
          v68 = sub_10000D01C(v42, v43, &aBlock);
          *(v67 + 4) = v68;
          *(v67 + 12) = 2080;
          v69 = sub_10008BC88(v68);
          v71 = v70;
          sub_1000CA2CC(v64, type metadata accessor for SecureLocation);
          v72 = sub_10000D01C(v69, v71, &aBlock);

          *(v67 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v65, v66, "SubscribeAndFetch: cached location for id: %s, sending before subscribe %s", v67, 0x16u);
          swift_arrayDestroy();

          a3 = v222;

          v73 = v214;
        }

        else
        {

          sub_1000CA2CC(v64, type metadata accessor for SecureLocation);
          v73 = v55;
        }
      }

      else
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_10000A6F0(v74, qword_1005DFB98);

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          aBlock = v78;
          *v77 = v220;
          *(v77 + 4) = sub_10000D01C(v42, v43, &aBlock);
          _os_log_impl(&_mh_execute_header, v75, v76, "SubscribeAndFetch: cached location for id: %s- got cached location but not within the cache validity timeframe, moving on", v77, 0xCu);
          sub_100004984(v78);
          a3 = v222;
        }

        v73 = v55;
      }

      v52 = sub_1000CA2CC(v73, type metadata accessor for SecureLocation);
    }

    v79 = *(v219 + 16);
    __chkstk_darwin(v52);
    *(&v195 - 4) = v80;
    *(&v195 - 3) = v42;
    *(&v195 - 2) = v43;
    *(&v195 - 1) = a3;
    v81 = v226;
    OS_dispatch_queue.sync<A>(execute:)();
    v226 = v81;
    v82 = aBlock;
    if ((aBlock & 1) == 0)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      sub_10000A6F0(v83, qword_1005DFB98);

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        aBlock = v87;
        *v86 = v220;
        *(v86 + 4) = sub_10000D01C(v42, v43, &aBlock);
        _os_log_impl(&_mh_execute_header, v84, v85, "SubscribeAndFetch - shouldProceed false for %s", v86, 0xCu);
        sub_100004984(v87);
        a3 = v222;
      }
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v216 = type metadata accessor for Logger();
    sub_10000A6F0(v216, qword_1005DFB98);

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      aBlock = v91;
      *v90 = v212;
      *(v90 + 4) = v82;
      *(v90 + 8) = 2080;
      *(v90 + 10) = sub_10000D01C(v42, v43, &aBlock);
      _os_log_impl(&_mh_execute_header, v88, v89, "SubscribeAndFetch - shouldProceed %{BOOL}d for %s", v90, 0x12u);
      sub_100004984(v91);
    }

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      aBlock = v95;
      *v94 = v220;
      *(v94 + 4) = sub_10000D01C(v42, v43, &aBlock);
      _os_log_impl(&_mh_execute_header, v92, v93, "SubscribeAndFetch request data for %s", v94, 0xCu);
      sub_100004984(v95);
    }

    sub_1000FA3AC(v42, v43, a3, v218 & 1, &v229);
    v96 = v230;
    if (v230)
    {
      v221 = v229;
      v97 = v231;
      v98 = [a3 subscriptionMode];

      v99 = v223;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_1001FCE6C(0, *(v99 + 2) + 1, 1, v99);
      }

      v100 = v99;
      v101 = *(v99 + 2);
      v223 = v100;
      v102 = *(v100 + 3);
      a1 = v101 + 1;
      if (v101 >= v102 >> 1)
      {
        v223 = sub_1001FCE6C((v102 > 1), v101 + 1, 1, v223);
      }

      v103 = v223;
      *(v223 + 2) = a1;
      v104 = &v103[40 * v101];
      *(v104 + 2) = v221;
      *(v104 + 6) = v96;
      *(v104 + 7) = v98;
      v104[64] = v97;
      v105 = *(v96 + 16);

      v106 = v215;
      v107 = *(v215 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = *(v106 + 16);
      *(v106 + 16) = 0x8000000000000000;
      sub_100452DF4(v105 == 0, v42, v43, isUniquelyReferenced_nonNull_native);
      v109 = *(v106 + 16);
      *(v106 + 16) = aBlock;

      if (!v105)
      {
        break;
      }
    }

    v41 = v224;
    if (!v224)
    {
      a3 = v222;
      if ((v82 & 1) == 0)
      {
LABEL_59:

        a6 = v205;
        a5 = v202;
        a1 = v199;
        goto LABEL_60;
      }

LABEL_51:
      if (qword_1005A8098 != -1)
      {
        swift_once();
      }

      v114 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
      v115 = sub_10000A6F0(v114, qword_1005AF7C0);
      os_unfair_lock_lock(v115);
      v116 = v115 + *(v114 + 28);
      v117 = v204;
      sub_100005F04(v116, v204, &qword_1005A9DA8, &unk_1004D1130);
      os_unfair_lock_unlock(v115);
      if ((*(v198 + 48))(v117, 1, v203) == 1)
      {

        sub_100002CE0(v117, &qword_1005A9DA8, &unk_1004D1130);
        v118 = v202;
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v216, qword_1005DFB98);
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          _os_log_impl(&_mh_execute_header, v119, v120, "SubscribeAndFetch - not proceeding with subscribe, missing credentials", v121, 2u);
        }

        v122 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
        [a3 subscriptionMode];
        v123 = v122;
        v118(_swiftEmptyArrayStorage, v122, 15.0);

LABEL_79:
        return;
      }

      sub_1000C9DE8(v117, v200, type metadata accessor for Credentials);
      v36 = v205;
      if (*(v223 + 2))
      {
        v128 = [objc_opt_self() currentDevice];
        if (v128)
        {
          v129 = v128;
          v130 = [v128 uniqueDeviceIdentifier];

          if (v130)
          {
            v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v133 = v132;

            v134 = *(v201 + 144);
            sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
            v135 = v226;
            OS_dispatch_queue.sync<A>(execute:)();
            v136 = v233;
            if (v233)
            {
              v137 = a3;
              v138 = aBlock;
              v139 = [v137 clientApp];
              v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v142 = v141;

              aBlock = v138;
              v233 = v136;
              v234 = v131;
              v235 = v133;
              v236 = v140;
              v237 = v142;
              v238 = &_swiftEmptyDictionarySingleton;
              v239 = 0u;
              v240 = 0u;
              v241 = 0u;
              v242 = 0;
              v243 = _swiftEmptyArrayStorage;

              v38 = sub_10018A76C(v143, &aBlock);
              if (v135)
              {

                v144 = 0;
                v145 = 0;
LABEL_71:
                v146 = v222;

                if (qword_1005A7EE8 != -1)
                {
                  swift_once();
                }

                sub_10000A6F0(v216, qword_1005DFB98);
                v147 = Logger.logObject.getter();
                v148 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v147, v148))
                {
                  v149 = swift_slowAlloc();
                  *v149 = 0;
                  _os_log_impl(&_mh_execute_header, v147, v148, "Failed to create request for server SubscribeAndFetch", v149, 2u);
                }

                v150 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
                [v146 subscriptionMode];
                v151 = v150;
                v202(_swiftEmptyArrayStorage, v150, 15.0);

                sub_1000C95FC(0, v144, v145);
                goto LABEL_91;
              }

LABEL_98:
              v144 = v39;
              v145 = v40;
              if (v38)
              {
                v225 = v38;

                v224 = v144;
                sub_10002CF44(v144, v145);
                if (qword_1005A7EE8 != -1)
                {
                  swift_once();
                }

                *&v221 = v145;
                sub_10000A6F0(v216, qword_1005DFB98);
                v169 = Logger.logObject.getter();
                v170 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v169, v170))
                {
                  v171 = swift_slowAlloc();
                  *v171 = 0;
                  _os_log_impl(&_mh_execute_header, v169, v170, "Sending SubscribeAndFetch server request", v171, 2u);
                }

                v226 = v228;
                v172 = (v199 + 40);
                v173 = v197 + 1;
                while (--v173)
                {
                  v174 = v172 + 2;
                  v175 = *(v172 - 1);
                  v176 = *v172;
                  v177 = *(v201 + 48);
                  v178 = *(v177 + 16);
                  v179 = swift_allocObject();
                  *(v179 + 16) = v177;
                  *(v179 + 24) = v175;
                  v180 = v222;
                  *(v179 + 32) = v176;
                  *(v179 + 40) = v180;
                  *(v179 + 48) = 0;
                  v181 = swift_allocObject();
                  *(v181 + 16) = sub_1000C8564;
                  *(v181 + 24) = v179;
                  v228[2] = sub_1000CAA0C;
                  v228[3] = v181;
                  v227[0] = _NSConcreteStackBlock;
                  v227[1] = 1107296256;
                  v228[0] = sub_10013EC94;
                  v228[1] = &unk_10058D3A0;
                  v182 = _Block_copy(v227);
                  swift_bridgeObjectRetain_n();
                  v183 = v180;

                  dispatch_sync(v178, v182);

                  _Block_release(v182);
                  LOBYTE(v182) = swift_isEscapingClosureAtFileLocation();

                  v36 = v205;

                  v172 = v174;
                  if (v182)
                  {
                    __break(1u);
                    break;
                  }
                }

                v184 = type metadata accessor for TaskPriority();
                (*(*(v184 - 8) + 56))(v211, 1, 1, v184);
                v185 = v196;
                sub_1000CA264(v200, v196, type metadata accessor for Credentials);
                v186 = (*(v198 + 80) + 64) & ~*(v198 + 80);
                v226 = ((v195 + v186 + 7) & 0xFFFFFFFFFFFFFFF8);
                v223 = ((v226 + 15) & 0xFFFFFFFFFFFFFFF8);
                v187 = (v223 + 15) & 0xFFFFFFFFFFFFFFF8;
                v188 = swift_allocObject();
                *(v188 + 16) = 0;
                *(v188 + 24) = 0;
                v189 = v225;
                *(v188 + 32) = v201;
                *(v188 + 40) = v189;
                v190 = v224;
                v191 = v221;
                *(v188 + 48) = v224;
                *(v188 + 56) = v191;
                sub_1000C9DE8(v185, v188 + v186, type metadata accessor for Credentials);
                *(v226 + v188) = v199;
                v192 = v222;
                *&v223[v188] = v222;
                *(v188 + v187) = v215;
                v193 = (v188 + ((v187 + 15) & 0xFFFFFFFFFFFFFFF8));
                *v193 = v202;
                v193[1] = v36;
                v194 = v192;
                sub_1000C95B4(v189, v190, v191);

                sub_1001D7F30(0, 0, v211, &unk_1004C33A0, v188);

                sub_1000C95FC(v189, v190, v191);
                sub_1000C95FC(v189, v190, v191);
                sub_1000CA2CC(v200, type metadata accessor for Credentials);

                return;
              }

              goto LABEL_71;
            }

            if (qword_1005A7EE8 != -1)
            {
              swift_once();
            }

            sub_10000A6F0(v216, qword_1005DFB98);
            v164 = Logger.logObject.getter();
            v165 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              *v166 = 0;
              _os_log_impl(&_mh_execute_header, v164, v165, "No APS token. Not proceeding with SubscribeAndFetch request", v166, 2u);
            }

            v167 = SPSecureLocationsErrorDomain;
            v168 = objc_allocWithZone(NSError);
            v161 = [v168 initWithDomain:v167 code:13 userInfo:{0, v195}];
LABEL_90:
            v162 = v161;
            [a3 subscriptionMode];
            v163 = v162;
            v202(_swiftEmptyArrayStorage, v162, 15.0);

LABEL_91:
            sub_1000CA2CC(v200, type metadata accessor for Credentials);
            goto LABEL_64;
          }
        }

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v216, qword_1005DFB98);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          *v157 = 0;
          v158 = "Unable to get device identifier for server SubscribeAndFetch";
          goto LABEL_88;
        }
      }

      else
      {

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v216, qword_1005DFB98);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          *v157 = 0;
          v158 = "No SubscribeAndFetch request data generated. Not sending request";
LABEL_88:
          _os_log_impl(&_mh_execute_header, v155, v156, v158, v157, 2u);
        }
      }

      v159 = SPSecureLocationsErrorDomain;
      v160 = objc_allocWithZone(NSError);
      v161 = [v160 initWithDomain:v159 code:0 userInfo:{0, v195}];
      goto LABEL_90;
    }

    a3 = v222;
LABEL_4:
    v35 = v41 + 1;
    v36 += 2;
    if (v35 == 1)
    {
      __break(1u);
      goto LABEL_98;
    }
  }

  a3 = v222;
  if ([v222 subscriptionMode] == 4)
  {

    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&_mh_execute_header, v152, v153, "SubscribeAndFetch - failed to get own keys for ownerProactive mode - not proceeding", v154, 2u);
    }

    [a3 subscriptionMode];
    type metadata accessor for SecureLocationsError(0);
    v227[0] = 0;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v123 = aBlock;
    v202(_swiftEmptyArrayStorage, aBlock, 15.0);

    goto LABEL_79;
  }

  if ((v82 & 1) == 0)
  {

    v41 = v224;
    if (!v224)
    {
      goto LABEL_59;
    }

    goto LABEL_4;
  }

  v110 = v219;
  v111 = *(v219 + 16);
  v112 = swift_allocObject();
  v112[2] = v42;
  v112[3] = v43;
  v112[4] = a3;
  v112[5] = v110;
  a6 = swift_allocObject();
  *(a6 + 16) = sub_1000C86F0;
  *(a6 + 24) = v112;
  v236 = sub_1000CAA0C;
  v237 = a6;
  aBlock = _NSConcreteStackBlock;
  v233 = 1107296256;
  v234 = sub_10013EC94;
  v235 = &unk_10058D440;
  a5 = _Block_copy(&aBlock);

  v113 = a3;

  dispatch_sync(v111, a5);
  _Block_release(a5);
  LOBYTE(v111) = swift_isEscapingClosureAtFileLocation();

  if ((v111 & 1) == 0)
  {
    v41 = v224;
    if (!v224)
    {
      goto LABEL_51;
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_109:
  swift_once();
LABEL_61:
  v124 = type metadata accessor for Logger();
  sub_10000A6F0(v124, qword_1005DFB98);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&_mh_execute_header, v125, v126, "SubscribeAndFetch - not proceeding with subscribe", v127, 2u);
  }

  sub_10009AD18(a1, 0, 0xF000000000000000, 0, a3, a5, a6);
LABEL_64:
}

uint64_t sub_100097320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v21;
  *(v8 + 184) = v20;
  *(v8 + 168) = v19;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 208) = v9;
  v10 = *(v9 - 8);
  *(v8 + 216) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 232) = v12;
  v13 = *(v12 - 8);
  *(v8 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v15 = type metadata accessor for Response();
  *(v8 + 256) = v15;
  v16 = *(v15 - 8);
  *(v8 + 264) = v16;
  *(v8 + 272) = *(v16 + 64);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_1000974CC, 0, 0);
}

uint64_t sub_1000974CC()
{
  v1 = v0[17];
  v2 = *(v0[16] + 56);
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_100097580;
  v4 = v0[36];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];

  return sub_1001CF6CC(v4, v1, v7, v5, 0, v6, 1, 0);
}

uint64_t sub_100097580()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1000979F4;
  }

  else
  {
    v3 = sub_100097694;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100097694()
{
  v1 = v0[35];
  v31 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  v34 = v0[32];
  v26 = v0[31];
  v32 = v0[30];
  v33 = v0[29];
  v27 = v0[28];
  v28 = v0[26];
  v25 = v0[25];
  v23 = v0[23];
  v24 = v0[24];
  v21 = v0[21];
  v22 = v0[22];
  v20 = v0[16];
  v29 = *(v20 + 320);
  v30 = v0[27];
  (*(v2 + 16))(v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + v4, v1, v34);
  *(v9 + v5) = v21;
  *(v9 + v6) = v22;
  *(v9 + v7) = v20;
  *(v9 + v8) = v23;
  v10 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v24;
  v10[1] = v25;
  v0[12] = sub_1000C87E0;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058D508;
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
  (*(v30 + 8))(v27, v28);
  (*(v32 + 8))(v26, v33);
  (*(v2 + 8))(v31, v34);
  v13 = v0[13];

  v15 = v0[35];
  v14 = v0[36];
  v16 = v0[31];
  v17 = v0[28];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000979F4()
{
  v1 = v0[38];
  v2 = v0[31];
  v22 = v0[30];
  v23 = v0[29];
  v3 = v0[26];
  v21 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[16];
  v19 = v0[28];
  v20 = *(v8 + 320);
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v7;
  v9[4] = v8;
  v9[5] = v6;
  v9[6] = v5;
  v9[7] = v4;
  v0[6] = sub_1000C87B0;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058D4B8;
  v10 = _Block_copy(v0 + 2);

  v11 = v6;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v19, v3);
  (*(v22 + 8))(v2, v23);
  v12 = v0[7];

  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[31];
  v16 = v0[28];

  v17 = v0[1];

  return v17();
}

void sub_100097C88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, double), uint64_t a7)
{
  v92 = a6;
  v93 = a7;
  v96 = a3;
  v97 = a4;
  v94 = a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = (&v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Response();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v89 - v20;
  if (Response.statusCode.getter() == 200 || Response.statusCode.getter() == 206)
  {
    v90 = a5;
    v95 = v13;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    v23 = *(v15 + 16);
    v91 = a1;
    v23(v21, a1, v14);
    v24 = v94;

    v25 = v96;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v96 = v10;
      aBlock = v29;
      *v28 = 134218754;
      v30 = Response.statusCode.getter();
      (*(v15 + 8))(v21, v14);
      *(v28 + 4) = v30;
      *(v28 + 12) = 2048;
      *(v28 + 14) = *(v94 + 16);

      *(v28 + 22) = 2080;
      v31 = [v25 clientApp];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_10000D01C(v32, v34, &aBlock);

      *(v28 + 24) = v35;
      *(v28 + 32) = 2080;
      v36 = Array.description.getter();
      v38 = sub_10000D01C(v36, v37, &aBlock);

      *(v28 + 34) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "SubscribeAndFetch received status %ld for %ld IDs for clientApp %s ids %s. Now decoding...", v28, 0x2Au);
      swift_arrayDestroy();
      v10 = v96;

      v24 = v94;
    }

    else
    {
      (*(v15 + 8))(v21, v14);
    }

    if (![v25 subscriptionMode])
    {
      v39 = [v25 clientApp];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      if (v40 == 0xD000000000000015 && 0x80000001004DF810 == v42)
      {

        v24 = v94;
      }

      else
      {
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v24 = v94;
        if ((v53 & 1) == 0)
        {
          v54 = v90;
          swift_beginAccess();
          v55 = *(v54 + 16);

          v56 = v95;
          v57 = static Date.trustedNow.getter(v95);
          __chkstk_darwin(v57);
          v58 = v97;
          *(&v89 - 4) = v55;
          *(&v89 - 3) = v58;
          *(&v89 - 2) = v56;
          sub_10008E264(sub_1000C88A0, (&v89 - 6), v94);
          v24 = v94;

          (v10[1])(v56, v9);
        }
      }
    }

    v59 = *(v24 + 16);
    v95 = &v100;
    v96 = v25;
    v60 = (v24 + 40);
    v61 = v59 + 1;
    while (--v61)
    {
      v62 = v60 + 2;
      v63 = *(v60 - 1);
      v64 = *v60;
      v65 = *(v97 + 48);
      v66 = *(v65 + 16);
      v67 = swift_allocObject();
      *(v67 + 16) = v65;
      *(v67 + 24) = v63;
      v68 = v96;
      *(v67 + 32) = v64;
      *(v67 + 40) = v68;
      *(v67 + 48) = 1;
      v69 = swift_allocObject();
      *(v69 + 16) = sub_1000CA9B0;
      *(v69 + 24) = v67;
      v102 = sub_1000CAA0C;
      v103 = v69;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_10013EC94;
      v101 = &unk_10058D5F8;
      v70 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      v71 = v68;

      dispatch_sync(v66, v70);

      _Block_release(v70);
      LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

      v60 = v62;
      if (v63)
      {
        __break(1u);
        break;
      }
    }

    v72 = Response.body.getter();
    v74 = v73;
    sub_10009AD18(v94, v72, v73, 0, v96, v92, v93);
    sub_1000049D0(v72, v74);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFB98);
    (*(v15 + 16))(v19, a1, v14);
    v44 = v94;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = 134218498;
      v49 = Response.statusCode.getter();
      (*(v15 + 8))(v19, v14);
      *(v47 + 4) = v49;
      *(v47 + 12) = 2048;
      *(v47 + 14) = *(v44 + 16);

      *(v47 + 22) = 2080;
      v50 = Array.description.getter();
      v52 = sub_10000D01C(v50, v51, &aBlock);

      *(v47 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Error during SubscribeAndFetch %ld. %ld IDs. ForIds %s", v47, 0x20u);
      sub_100004984(v48);
    }

    else
    {
      (*(v15 + 8))(v19, v14);
    }

    v75 = *(v44 + 16);
    v95 = &v100;
    v76 = (v44 + 40);
    v77 = v75 + 1;
    while (--v77)
    {
      v78 = v76 + 2;
      v79 = *(v76 - 1);
      v80 = *v76;
      v81 = *(v97 + 48);
      v82 = *(v81 + 16);
      v83 = swift_allocObject();
      *(v83 + 16) = v81;
      *(v83 + 24) = v79;
      v84 = v96;
      *(v83 + 32) = v80;
      *(v83 + 40) = v84;
      *(v83 + 48) = 2;
      v85 = swift_allocObject();
      *(v85 + 16) = sub_1000CA9B0;
      *(v85 + 24) = v83;
      v102 = sub_1000CAA0C;
      v103 = v85;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_10013EC94;
      v101 = &unk_10058D580;
      v86 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      v87 = v84;

      dispatch_sync(v82, v86);

      _Block_release(v86);
      LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

      v76 = v78;
      if (v79)
      {
        __break(1u);
        break;
      }
    }

    v88 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    sub_10009AD18(v94, 0, 0xF000000000000000, v88, v96, v92, v93);
  }
}

uint64_t sub_1000986D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void, double), uint64_t a6)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);
  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v33 = a2;
  v30 = a1;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v11 = 136315394;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000D01C(v12, v13, aBlock);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = Array.description.getter();
    v17 = sub_10000D01C(v15, v16, aBlock);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "subscribeAndFetch failed %s forIds %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v18 = (a2 + 40);
  v19 = *(a2 + 16) + 1;
  while (--v19)
  {
    v20 = v18 + 2;
    v22 = *(v18 - 1);
    v21 = *v18;
    v23 = *(a3 + 48);
    v24 = *(v23 + 16);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v22;
    *(v25 + 32) = v21;
    *(v25 + 40) = a4;
    *(v25 + 48) = 2;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1000CA9B0;
    *(v26 + 24) = v25;
    aBlock[4] = sub_1000CAA0C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013EC94;
    aBlock[3] = &unk_10058D670;
    v27 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    v28 = a4;

    dispatch_sync(v24, v27);

    _Block_release(v27);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    v18 = v20;
    if (v21)
    {
      __break(1u);
      return sub_10009AD18(v33, 0, 0xF000000000000000, v30, a4, a5, a6);
    }
  }

  return sub_10009AD18(v33, 0, 0xF000000000000000, v30, a4, a5, a6);
}

uint64_t sub_100098A60(uint64_t a1, uint64_t a2)
{
  v157 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v157 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v157);
  v156 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v155 = type metadata accessor for DispatchQoS();
  v7 = *(*(v155 - 8) + 64);
  v8 = __chkstk_darwin(v155);
  v154 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v147 = a2;
  if (v12)
  {
    v153 = v163;
    v13 = *(a2 + 48);
    v151 = (v4 + 8);
    v150 = (v9 + 8);
    v14 = (a1 + 40);
    *&v10 = 141558275;
    v148 = v10;
    v149 = _swiftEmptyArrayStorage;
    v158 = _swiftEmptyArrayStorage;
    v159 = _swiftEmptyArrayStorage;
    v152 = v13;
    while (1)
    {
      v160 = v12;
      v16 = *(v14 - 1);
      v15 = *v14;
      v17 = *(v13 + 16);
      __chkstk_darwin(v8);
      *(&v146 - 4) = 0;
      *(&v146 - 3) = v13;
      *(&v146 - 2) = v16;
      *(&v146 - 1) = v15;

      v18 = v161;
      isUniquelyReferenced_nonNull_native = OS_dispatch_queue.sync<A>(execute:)();
      v20 = aBlock[0];
      if (LOBYTE(aBlock[0]) == 1)
      {

        v21 = v159;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1001FC900(0, *(v21 + 2) + 1, 1, v21);
          v21 = isUniquelyReferenced_nonNull_native;
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        v159 = v21;
        if (v23 >= v22 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1001FC900((v22 > 1), v23 + 1, 1, v159);
          v159 = isUniquelyReferenced_nonNull_native;
        }

        v24 = v159;
        *(v159 + 2) = v23 + 1;
        v25 = &v24[16 * v23];
        *(v25 + 4) = v16;
        *(v25 + 5) = v15;
      }

      v26 = *(v13 + 16);
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      *(&v146 - 4) = 1;
      *(&v146 - 3) = v13;
      *(&v146 - 2) = v16;
      *(&v146 - 1) = v15;
      OS_dispatch_queue.sync<A>(execute:)();
      v161 = v18;
      if (LOBYTE(aBlock[0]) == 1)
      {
        break;
      }

      if ((v20 & 1) == 0)
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_10000A6F0(v32, qword_1005DFB98);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          aBlock[0] = v36;
          *v35 = v148;
          *(v35 + 4) = 1752392040;
          *(v35 + 12) = 2081;
          *(v35 + 14) = sub_10000D01C(v16, v15, aBlock);
          _os_log_impl(&_mh_execute_header, v33, v34, "Received Key: No pending subscription for %{private,mask.hash}s", v35, 0x16u);
          sub_100004984(v36);
        }

        v37 = v149;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1001FC900(0, *(v37 + 2) + 1, 1, v37);
        }

        v29 = *(v37 + 2);
        v38 = *(v37 + 3);
        v30 = v37;
        v31 = v29 + 1;
        if (v29 >= v38 >> 1)
        {
          v39 = sub_1001FC900((v38 > 1), v29 + 1, 1, v30);
          v149 = v39;
        }

        else
        {
          v149 = v30;
LABEL_23:
          v39 = v30;
        }

        goto LABEL_24;
      }

LABEL_25:
      if (qword_1005A7EE0 != -1)
      {
        swift_once();
      }

      v41 = qword_1005DFB60;
      v42 = *(qword_1005DFB60 + 16);
      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      *(v43 + 24) = v16;
      *(v43 + 32) = v15;
      *(v43 + 40) = 1;
      v163[2] = sub_1000CA3CC;
      v163[3] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v163[0] = sub_100020828;
      v163[1] = &unk_10058E480;
      v44 = _Block_copy(aBlock);
      swift_retain_n();
      v45 = v154;
      static DispatchQoS.unspecified.getter();
      v164 = _swiftEmptyArrayStorage;
      sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10004B564(&unk_1005A9700, &qword_1004C3820);
      sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
      v47 = v156;
      v46 = v157;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v44);
      (*v151)(v47, v46);
      (*v150)(v45, v155);

      v14 += 2;
      v12 = v160 - 1;
      v13 = v152;
      if (v160 == 1)
      {
        goto LABEL_32;
      }
    }

    v27 = v158;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1001FC900(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    v30 = v27;
    v31 = v29 + 1;
    if (v29 < v28 >> 1)
    {
      v158 = v30;
      goto LABEL_23;
    }

    v39 = sub_1001FC900((v28 > 1), v29 + 1, 1, v30);
    v158 = v39;
LABEL_24:
    *(v39 + 2) = v31;
    v40 = &v39[16 * v29];
    *(v40 + 4) = v16;
    *(v40 + 5) = v15;
    goto LABEL_25;
  }

  v149 = _swiftEmptyArrayStorage;
  v158 = _swiftEmptyArrayStorage;
  v159 = _swiftEmptyArrayStorage;
LABEL_32:
  if (*(v159 + 2))
  {
    v48 = v147;
    if (qword_1005A7EE8 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_34;
  }

  v65 = v149;
  v48 = v147;
LABEL_40:
  v64 = v161;
LABEL_41:
  v66 = v158;
  if (!*(v158 + 2))
  {
    goto LABEL_47;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v67 = v64;
  v68 = type metadata accessor for Logger();
  sub_10000A6F0(v68, qword_1005DFB98);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock[0] = v72;
    *v71 = 136315138;
    v66 = v158;

    v73 = Array.description.getter();
    v75 = v74;

    v76 = sub_10000D01C(v73, v75, aBlock);

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "Received Key: Subscribing in shallow to %s", v71, 0xCu);
    sub_100004984(v72);

    if (*(v66 + 2))
    {
LABEL_46:
      v77 = objc_allocWithZone(SPSecureLocationsSubscriptionContext);

      v78 = [v77 init];
      [v78 setSubscriptionMode:1];
      v79 = String._bridgeToObjectiveC()();
      [v78 setClientApp:v79];

      [v78 setFetchMode:0];
      v80 = type metadata accessor for Transaction();
      __chkstk_darwin(v80);
      *(&v146 - 4) = v158;
      *(&v146 - 3) = v48;
      *(&v146 - 2) = v78;
      *(&v146 - 1) = 1;
      static Transaction.named<A>(_:with:)();
      v66 = v158;
      v64 = v67;

      v65 = v149;
LABEL_47:
      if (!*(v65 + 2))
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }
  }

  else
  {

    v66 = v158;
    if (*(v158 + 2))
    {
      goto LABEL_46;
    }
  }

  v64 = v67;
  if (!*(v149 + 2))
  {
LABEL_56:
  }

LABEL_48:
  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  v81 = v64;
  unsafeFromAsyncTask<A>(_:)();
  v82 = v64;
  v158 = v66;
  if (v64)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v83 = v48;
    v84 = type metadata accessor for Logger();
    sub_10000A6F0(v84, qword_1005DFB98);
    swift_errorRetain();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v87 = 136446466;
      v164 = v64;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v88 = String.init<A>(describing:)();
      v90 = sub_10000D01C(v88, v89, aBlock);

      *(v87 + 4) = v90;
      *(v87 + 12) = 2080;
      v91 = v149;

      v92 = Array.description.getter();
      v94 = v93;

      v95 = sub_10000D01C(v92, v94, aBlock);

      *(v87 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v85, v86, "Received Key: Unable to get following handles %{public}s,\nso subscribing with intent to notify server of keys received %s", v87, 0x16u);
      swift_arrayDestroy();

      if (*(v91 + 2))
      {
LABEL_53:
        v96 = objc_allocWithZone(SPSecureLocationsSubscriptionContext);

        v97 = [v96 init];
        [v97 setSubscriptionMode:0];
        v98 = String._bridgeToObjectiveC()();
        [v97 setClientApp:v98];

        [v97 setFetchMode:0];
        v99 = type metadata accessor for Transaction();
        __chkstk_darwin(v99);
        *(&v146 - 4) = v91;
        *(&v146 - 3) = v83;
        *(&v146 - 2) = v97;
        *(&v146 - 1) = 0;
        static Transaction.named<A>(_:with:)();
        sub_1000C8450(v82, 1);

        return swift_bridgeObjectRelease_n();
      }
    }

    else
    {

      v91 = v149;
      if (*(v149 + 2))
      {
        goto LABEL_53;
      }
    }

    sub_1000C8450(v81, 1);
  }

  v101 = aBlock[0];
  v102 = qword_1005A7F38;

  if (v102 != -1)
  {
    v103 = swift_once();
  }

  __chkstk_darwin(v103);
  *(&v146 - 2) = v101;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1000C8450(v101, 0);
  v152 = v101;
  v104 = sub_10008E038(v101);
  v105 = sub_10023F00C(v104);

  v106 = v149;
  v160 = *(v149 + 2);
  if (v160)
  {
    v161 = v64;
    v157 = (v149 + 32);
    v107 = (v105 + 56);

    v108 = 0;
    v109 = _swiftEmptyArrayStorage;
    *&v110 = 136315138;
    v155 = v110;
    v111 = _swiftEmptyArrayStorage;
    v156 = (v105 + 56);
    v154 = v105;
    while (1)
    {
      if (v108 >= *(v106 + 2))
      {
        __break(1u);
LABEL_103:
        swift_once();
LABEL_34:
        v49 = type metadata accessor for Logger();
        sub_10000A6F0(v49, qword_1005DFB98);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          aBlock[0] = v53;
          *v52 = 136315138;
          v54 = v159;

          v55 = Array.description.getter();
          v57 = v56;

          v58 = sub_10000D01C(v55, v57, aBlock);

          *(v52 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v50, v51, "Received Key: Subscribing in proactive to %s", v52, 0xCu);
          sub_100004984(v53);

          if (*(v54 + 2))
          {
            goto LABEL_36;
          }

LABEL_39:
          v65 = v149;
          goto LABEL_40;
        }

        v54 = v159;
        if (!*(v159 + 2))
        {
          goto LABEL_39;
        }

LABEL_36:
        v59 = objc_allocWithZone(SPSecureLocationsSubscriptionContext);

        v60 = [v59 init];
        [v60 setSubscriptionMode:0];
        v61 = String._bridgeToObjectiveC()();
        [v60 setClientApp:v61];

        [v60 setFetchMode:0];
        v62 = type metadata accessor for Transaction();
        __chkstk_darwin(v62);
        *(&v146 - 4) = v54;
        *(&v146 - 3) = v48;
        *(&v146 - 2) = v60;
        *(&v146 - 1) = 0;
        v63 = v161;
        static Transaction.named<A>(_:with:)();
        v64 = v63;

        v65 = v149;
        goto LABEL_41;
      }

      v112 = (v157 + 16 * v108);
      v48 = *v112;
      v113 = v112[1];
      if (*(v105 + 16))
      {
        v114 = *(v105 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v115 = Hasher._finalize()();
        v116 = -1 << *(v105 + 32);
        v117 = v115 & ~v116;
        if ((*&v107[(v117 >> 3) & 0xFFFFFFFFFFFFFF8] >> v117))
        {
          v118 = ~v116;
          while (1)
          {
            v119 = (*(v105 + 48) + 16 * v117);
            v120 = *v119 == v48 && v119[1] == v113;
            if (v120 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v117 = (v117 + 1) & v118;
            if (((*&v107[(v117 >> 3) & 0xFFFFFFFFFFFFFF8] >> v117) & 1) == 0)
            {
              goto LABEL_76;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1001FC900(0, *(v111 + 2) + 1, 1, v111);
          }

          v132 = *(v111 + 2);
          v131 = *(v111 + 3);
          if (v132 >= v131 >> 1)
          {
            v111 = sub_1001FC900((v131 > 1), v132 + 1, 1, v111);
          }

          *(v111 + 2) = v132 + 1;
          v133 = &v111[16 * v132];
          *(v133 + 4) = v48;
          *(v133 + 5) = v113;
          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v134 = type metadata accessor for Logger();
          sub_10000A6F0(v134, qword_1005DFB98);

          v125 = Logger.logObject.getter();
          v135 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v125, v135))
          {
            v136 = swift_slowAlloc();
            v153 = v109;
            v137 = v136;
            v138 = swift_slowAlloc();
            aBlock[0] = v138;
            *v137 = v155;
            v48 = sub_10000D01C(v48, v113, aBlock);

            *(v137 + 4) = v48;
            _os_log_impl(&_mh_execute_header, v125, v135, "Received Key: Subscribing in proactive from following: %s", v137, 0xCu);
            sub_100004984(v138);

            v109 = v153;
            goto LABEL_92;
          }

          goto LABEL_62;
        }
      }

      else
      {
      }

LABEL_76:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_1001FC900(0, *(v109 + 2) + 1, 1, v109);
      }

      v122 = *(v109 + 2);
      v121 = *(v109 + 3);
      if (v122 >= v121 >> 1)
      {
        v109 = sub_1001FC900((v121 > 1), v122 + 1, 1, v109);
      }

      *(v109 + 2) = v122 + 1;
      v123 = &v109[16 * v122];
      *(v123 + 4) = v48;
      *(v123 + 5) = v113;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v124 = type metadata accessor for Logger();
      sub_10000A6F0(v124, qword_1005DFB98);

      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = v111;
        v129 = v109;
        v130 = swift_slowAlloc();
        aBlock[0] = v130;
        *v127 = v155;
        v48 = sub_10000D01C(v48, v113, aBlock);

        *(v127 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v125, v126, "Received Key: Subscribing with intent to notify server of keys received: %s", v127, 0xCu);
        sub_100004984(v130);
        v109 = v129;
        v111 = v128;
        v105 = v154;

LABEL_92:

        goto LABEL_63;
      }

LABEL_62:

LABEL_63:

      v107 = v156;
      ++v108;
      v106 = v149;
      if (v108 == v160)
      {
        v139 = v109;

        v48 = v147;
        goto LABEL_97;
      }
    }
  }

  v111 = _swiftEmptyArrayStorage;
  v139 = _swiftEmptyArrayStorage;
LABEL_97:

  if (*(v111 + 2))
  {
    v140 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
    [v140 setSubscriptionMode:5];
    v141 = String._bridgeToObjectiveC()();
    [v140 setClientApp:v141];

    [v140 setFetchMode:0];
    v142 = type metadata accessor for Transaction();
    __chkstk_darwin(v142);
    *(&v146 - 4) = v111;
    *(&v146 - 3) = v48;
    *(&v146 - 2) = v140;
    *(&v146 - 1) = 5;
    static Transaction.named<A>(_:with:)();

    if (*(v139 + 2))
    {
      goto LABEL_99;
    }

LABEL_101:

    sub_1000C8450(v152, 0);
  }

  else
  {

    if (!*(v139 + 2))
    {
      goto LABEL_101;
    }

LABEL_99:
    v143 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
    [v143 setSubscriptionMode:5];
    v144 = String._bridgeToObjectiveC()();
    [v143 setClientApp:v144];

    [v143 setFetchMode:0];
    v145 = type metadata accessor for Transaction();
    __chkstk_darwin(v145);
    *(&v146 - 4) = v139;
    *(&v146 - 3) = v48;
    *(&v146 - 2) = v143;
    *(&v146 - 1) = 5;
    static Transaction.named<A>(_:with:)();
    sub_1000C8450(v152, 0);
  }
}

uint64_t sub_10009A288(objc_class *a1, uint64_t *a2, objc_class *a3, objc_class *a4, uint64_t a5)
{
  v77 = a1;
  v78 = a5;
  v83 = a4;
  v80 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  __chkstk_darwin(v6);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v70 = *(v72 - 8);
  v9 = *(v70 + 64);
  __chkstk_darwin(v72);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SecureLocationsConfig();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v75 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a2;
  v76 = a2[2];
  if (v76)
  {
    v14 = *(v80 + 6);
    v81 = &v88;
    v82 = v14;
    v15 = v79 + 5;
    v16 = v76;
    while (1)
    {
      v18 = *(v15 - 1);
      v17 = *v15;
      v19 = v82;
      v84 = *(v82 + 2);
      v20 = swift_allocObject();
      v20[2].isa = v19;
      v20[3].isa = v18;
      v21 = v83;
      v20[4].isa = v17;
      v20[5].isa = v21;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1000CAB54;
      *(v22 + 24) = v20;
      v90 = sub_1000CAA0C;
      v91 = v22;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = sub_10013EC94;
      v89 = &unk_10058E4F8;
      v23 = _Block_copy(&aBlock);
      v24 = v91;
      v25 = v21;

      dispatch_sync(v84, v23);
      _Block_release(v23);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v15 += 2;
      if (!--v16)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v20 = swift_allocObject();
    v17 = v77;
    v27 = v78;
    v20[2].isa = v77;
    v20[3].isa = v27;
    v24 = v79;
    v28 = v80;
    v20[4].isa = v79;
    v20[5].isa = v28;
    v29 = v83;
    v20[6].isa = v83;
    v30 = qword_1005A7EE8;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isEscapingClosureAtFileLocation = v29;
    if (v30 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v31 = type metadata accessor for Logger();
  sub_10000A6F0(v31, qword_1005DFB98);

  v32 = isEscapingClosureAtFileLocation;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v84 = v20;
    aBlock = v36;
    *v35 = 134218754;
    *(v35 + 4) = v76;

    *(v35 + 12) = 2082;
    v37 = [v32 clientApp];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v32;
    v41 = v40;

    v42 = v38;
    v24 = v79;
    v43 = sub_10000D01C(v42, v41, &aBlock);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    v44 = Array.description.getter();
    v46 = sub_10000D01C(v44, v45, &aBlock);

    *(v35 + 24) = v46;
    v32 = v39;
    *(v35 + 32) = 1024;
    *(v35 + 34) = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v35, 0x26u);
    swift_arrayDestroy();
    v20 = v84;
    v17 = v77;

    if (sub_1000BB328())
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (sub_1000BB328())
    {
LABEL_15:
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v60, 2u);
      }

      [v32 subscriptionMode];
      type metadata accessor for SecureLocationsError(0);
      v85 = 6;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v61 = aBlock;
      sub_1000BC1AC(aBlock, v17, v78, v24, v80, v32);
    }
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v47 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v47);
  v48 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v49 = v75;
  sub_1000CA264(v47 + *(v48 + 28), v75, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v47);

  v50 = *(v49 + 8);
  sub_1000CA2CC(v49, type metadata accessor for SecureLocationsConfig);
  if ((v50 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v76)
  {
    v51 = v80;
    v83 = *(v80 + 40);
    v52 = swift_allocObject();
    *(v52 + 16) = v24;
    *(v52 + 24) = v51;
    *(v52 + 32) = v32;
    *(v52 + 40) = 0;
    *(v52 + 48) = sub_1000CA418;
    *(v52 + 56) = v20;
    v90 = sub_1000CA9B4;
    v91 = v52;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_100020828;
    v89 = &unk_10058E570;
    v53 = _Block_copy(&aBlock);
    v84 = v20;
    v54 = v53;

    v82 = v32;

    v55 = v69;
    static DispatchQoS.unspecified.getter();
    v85 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v56 = v71;
    v57 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);
    (*(v73 + 8))(v56, v57);
    (*(v70 + 8))(v55, v72);
  }

  else
  {
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "No findMyIds specified for SubscribeAndFetch - not proceeding", v65, 2u);
    }

    v66 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    [v32 subscriptionMode];
    v67 = v66;
    sub_1000BC1AC(v66, v17, v78, v24, v80, v32);
  }
}