uint64_t sub_100A09360()
{
  v42 = v0;
  v1 = v0[91];

  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B780);
  sub_10001F280((v0 + 2), (v0 + 7));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[80];
    v6 = v0[75];
    v7 = v0[74];
    v8 = v0[59];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    v11 = sub_1000035D0(v0 + 7, v0[10]);
    (*(v6 + 16))(v5, &v11[*(v8 + 20)], v7);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC(v0 + 7);
    v15 = sub_1000136BC(v12, v14, &v41);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Can't monitor beacon: %s due to: missing services BeaconStoreActor / ObservationStoreService.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v16 = v0[84];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[79];
  v20 = v0[78];
  v21 = v0[77];
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[71];
  v27 = v0[70];
  v28 = v0[69];
  v29 = v0[68];
  v30 = v0[67];
  v31 = v0[66];
  v32 = v0[65];
  v33 = v0[64];
  v34 = v0[61];
  v35 = v0[58];
  v36 = v0[57];
  v37 = v0[55];
  v38 = v0[53];
  v39 = v0[52];
  v40 = v0[51];
  sub_100007BAC(v0 + 2);

  v25 = v0[1];

  return v25(1);
}

uint64_t sub_100A096E4()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 760);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 608);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  v9 = *(v7 + 16);
  v7 += 16;
  *(v0 + 816) = v9;
  *(v0 + 824) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v5, v8);
  v10 = *(v7 + 64);
  *(v0 + 936) = v10;
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 832) = v12;
  *(v12 + 16) = v3;
  v2(v12 + v11, v4, v8);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 840) = v14;
  v15 = sub_1000BC4D4(&unk_1016AA480, &unk_1013BD050);
  *v14 = v0;
  v14[1] = sub_100A09874;

  return unsafeBlocking<A>(context:_:)(v0 + 176, 0xD000000000000010, 0x800000010134A8C0, sub_100A1B7A4, v12, v15);
}

uint64_t sub_100A09874()
{
  v1 = *(*v0 + 840);
  v2 = *(*v0 + 832);
  v4 = *v0;

  return _swift_task_switch(sub_100A0998C, 0, 0);
}

uint64_t sub_100A0998C()
{
  v165 = v0;
  if (!*(v0 + 200))
  {
    v11 = *(v0 + 792);
    (*(*(v0 + 600) + 8))(*(v0 + 632), *(v0 + 592));

    sub_10000B3A8(v0 + 176, &unk_1016AA480, &unk_1013BD050);
    if (qword_101694B70 == -1)
    {
LABEL_7:
      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 96);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 760);
      v17 = *(v0 + 728);
      if (v15)
      {
        v161 = *(v0 + 760);
        v18 = *(v0 + 640);
        v19 = *(v0 + 600);
        v20 = *(v0 + 592);
        v21 = *(v0 + 472);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v164 = v23;
        *v22 = 136315138;
        v24 = sub_1000035D0((v0 + 96), *(v0 + 120));
        (*(v19 + 16))(v18, &v24[*(v21 + 20)], v20);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        (*(v19 + 8))(v18, v20);
        sub_100007BAC((v0 + 96));
        v28 = sub_1000136BC(v25, v27, &v164);

        *(v22 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v13, v14, "Can't monitor beacon: %s due to: airpods but missing beacon group.", v22, 0xCu);
        sub_100007BAC(v23);

LABEL_39:
        v163 = 1;
LABEL_40:
        v106 = *(v0 + 672);
        v107 = *(v0 + 664);
        v108 = *(v0 + 640);
        v109 = *(v0 + 632);
        v110 = *(v0 + 624);
        v111 = *(v0 + 616);
        v112 = *(v0 + 584);
        v113 = *(v0 + 576);
        v114 = *(v0 + 568);
        v133 = *(v0 + 560);
        v134 = *(v0 + 552);
        v135 = *(v0 + 544);
        v136 = *(v0 + 536);
        v137 = *(v0 + 528);
        v139 = *(v0 + 520);
        v141 = *(v0 + 512);
        v143 = *(v0 + 488);
        v145 = *(v0 + 464);
        v148 = *(v0 + 456);
        v151 = *(v0 + 440);
        v154 = *(v0 + 424);
        v157 = *(v0 + 416);
        v160 = *(v0 + 408);
        sub_100007BAC((v0 + 16));

        v115 = *(v0 + 8);

        return v115(v163);
      }

      v38 = *(v0 + 728);

      v39 = (v0 + 96);
LABEL_38:
      sub_100007BAC(v39);
      goto LABEL_39;
    }

LABEL_47:
    swift_once();
    goto LABEL_7;
  }

  sub_10000A748((v0 + 176), v0 + 136);
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  sub_1000035D0((v0 + 136), v1);
  v3 = (*(v2 + 16))(v1, v2);
  *(v0 + 848) = v3;
  v4 = *(v3 + 32);
  *(v0 + 940) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v3 + 56);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v8 = *(v0 + 768);
  *(v0 + 928) = _swiftEmptyArrayStorage;
  *(v0 + 920) = v8;
  v9 = v5 & v7;
  if (!v9)
  {
    v29 = 0;
    v30 = ((63 - v6) >> 6) - 1;
    while (v30 != v29)
    {
      v10 = v29 + 1;
      v9 = *(v3 + 8 * v29++ + 64);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    v40 = _swiftEmptyArrayStorage[2];
    if (!v40)
    {
      v43 = 1;
      goto LABEL_20;
    }

    v41 = *(*(v0 + 504) + 80);
    v42 = *(v0 + 928) + ((v41 + 32) & ~v41);
    sub_100A1B358(v42, *(v0 + 536), type metadata accessor for ObservedAdvertisement);
    if (v40 == 1)
    {
LABEL_18:
      sub_100A18C9C(*(v0 + 536), *(v0 + 576), type metadata accessor for ObservedAdvertisement);
      v43 = 0;
LABEL_20:
      v44 = *(v0 + 928);
      v45 = *(v0 + 576);
      v46 = *(v0 + 544);
      v47 = *(v0 + 496);
      v48 = *(v0 + 504);
      (*(v48 + 56))(v45, v43, 1, v47);

      sub_1000D2A70(v45, v46, &unk_10169BB50, &unk_101395760);
      v49 = (*(v48 + 48))(v46, 1, v47);
      v50 = *(v0 + 792);
      v51 = *(v0 + 544);
      if (v49 != 1)
      {
        v69 = *(v0 + 416);
        v68 = *(v0 + 424);
        v71 = *(v0 + 400);
        v70 = *(v0 + 408);
        v72 = *(v0 + 392);
        (*(v71 + 16))(v69, v51 + *(*(v0 + 496) + 44), v72);
        sub_100A1B3C0(v51, type metadata accessor for ObservedAdvertisement);
        (*(v71 + 32))(v68, v69, v72);
        static Date.trustedNow.getter(v70);
        Date.timeIntervalSince(_:)();
        v74 = v73;
        v75 = *(v71 + 8);
        v75(v70, v72);
        sub_101074970(v50);
        v77 = v76;

        v163 = v77 <= v74;
        if (v77 > v74)
        {
          v116 = *(v0 + 760);
          v117 = *(v0 + 728);
          v118 = *(v0 + 632);
          v119 = *(v0 + 600);
          v120 = *(v0 + 592);
          v121 = *(v0 + 576);
          v122 = *(v0 + 424);
          v123 = *(v0 + 392);

          v75(v122, v123);
          sub_10000B3A8(v121, &unk_10169BB50, &unk_101395760);
          (*(v119 + 8))(v118, v120);
        }

        else
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v159 = v75;
          v78 = type metadata accessor for Logger();
          sub_1000076D4(v78, qword_10177B780);
          sub_10001F280(v0 + 16, v0 + 296);
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = *(v0 + 824);
            v82 = *(v0 + 816);
            v138 = v80;
            v83 = *(v0 + 640);
            v156 = *(v0 + 632);
            v84 = *(v0 + 600);
            v85 = *(v0 + 592);
            v150 = *(v0 + 760);
            v153 = *(v0 + 576);
            v86 = *(v0 + 472);
            v147 = *(v0 + 424);
            v142 = *(v0 + 728);
            v144 = *(v0 + 392);
            v87 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v164 = v140;
            *v87 = 141558275;
            *(v87 + 4) = 1752392040;
            *(v87 + 12) = 2081;
            v88 = sub_1000035D0((v0 + 296), *(v0 + 320));
            v82(v83, &v88[*(v86 + 20)], v85);
            sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
            v89 = dispatch thunk of CustomStringConvertible.description.getter();
            v91 = v90;
            v92 = *(v84 + 8);
            v92(v83, v85);
            sub_100007BAC((v0 + 296));
            v93 = sub_1000136BC(v89, v91, &v164);

            *(v87 + 14) = v93;
            _os_log_impl(&_mh_execute_header, v79, v138, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v87, 0x16u);
            sub_100007BAC(v140);

            v159(v147, v144);
            sub_10000B3A8(v153, &unk_10169BB50, &unk_101395760);
            v92(v156, v85);
          }

          else
          {
            v124 = *(v0 + 760);
            v125 = *(v0 + 728);
            v126 = *(v0 + 632);
            v127 = *(v0 + 600);
            v128 = *(v0 + 592);
            v129 = *(v0 + 576);
            v130 = *(v0 + 424);
            v131 = *(v0 + 392);

            v159(v130, v131);
            sub_10000B3A8(v129, &unk_10169BB50, &unk_101395760);
            (*(v127 + 8))(v126, v128);
            sub_100007BAC((v0 + 296));
          }
        }

        sub_100007BAC((v0 + 136));
        goto LABEL_40;
      }

      v52 = *(v0 + 792);

      sub_10000B3A8(v51, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = *(v0 + 824);
        v57 = *(v0 + 816);
        v158 = *(v0 + 760);
        v152 = *(v0 + 728);
        v58 = *(v0 + 640);
        v162 = *(v0 + 632);
        v146 = *(v0 + 600);
        v59 = *(v0 + 592);
        v155 = *(v0 + 576);
        v60 = *(v0 + 472);
        v61 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v164 = v149;
        *v61 = 141558275;
        *(v61 + 4) = 1752392040;
        *(v61 + 12) = 2081;
        v62 = sub_1000035D0((v0 + 256), *(v0 + 280));
        v57(v58, &v62[*(v60 + 20)], v59);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        v66 = *(v146 + 8);
        v66(v58, v59);
        sub_100007BAC((v0 + 256));
        v67 = sub_1000136BC(v63, v65, &v164);

        *(v61 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v54, v55, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v61, 0x16u);
        sub_100007BAC(v149);

        sub_10000B3A8(v155, &unk_10169BB50, &unk_101395760);
        v66(v162, v59);
      }

      else
      {
        v100 = *(v0 + 760);
        v101 = *(v0 + 728);
        v102 = *(v0 + 632);
        v103 = *(v0 + 600);
        v104 = *(v0 + 592);
        v105 = *(v0 + 576);

        sub_10000B3A8(v105, &unk_10169BB50, &unk_101395760);
        (*(v103 + 8))(v102, v104);
        sub_100007BAC((v0 + 256));
      }

      v39 = (v0 + 136);
      goto LABEL_38;
    }

    v94 = *(v0 + 496);
    v95 = 1;
    while (v95 < _swiftEmptyArrayStorage[2])
    {
      v96 = *(v0 + 536);
      sub_100A1B358(v42 + *(*(v0 + 504) + 72) * v95, *(v0 + 512), type metadata accessor for ObservedAdvertisement);
      v97 = *(v94 + 44);
      if (static Date.< infix(_:_:)())
      {
        v98 = *(v0 + 536);
        v99 = *(v0 + 512);
        sub_100A1B3C0(v98, type metadata accessor for ObservedAdvertisement);
        sub_100A18C9C(v99, v98, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_100A1B3C0(*(v0 + 512), type metadata accessor for ObservedAdvertisement);
      }

      if (v40 == ++v95)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v10 = 0;
LABEL_12:
  *(v0 + 864) = v10;
  *(v0 + 856) = v9;
  v31 = *(v0 + 824);
  v32 = *(v0 + 808);
  v33 = *(v0 + 800);
  v34 = *(v0 + 760);
  v35 = *(v0 + 624);
  v36 = *(v0 + 616);
  v37 = *(v0 + 592);
  (*(v0 + 816))(v35, *(v3 + 48) + *(*(v0 + 600) + 72) * (__clz(__rbit64(v9)) | (v10 << 6)), v37);
  v33(v36, v35, v37);

  return _swift_task_switch(sub_100A0A790, v34, 0);
}

uint64_t sub_100A0A790()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 760);
  v5 = *(v0 + 640);
  v6 = *(v0 + 608);
  v7 = *(v0 + 592);
  v8 = (*(v0 + 936) + 24) & ~*(v0 + 936);
  (*(v0 + 816))(v5, *(v0 + 616), v7);
  v9 = swift_allocObject();
  *(v0 + 872) = v9;
  *(v9 + 16) = v4;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 880) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_100A0A900;

  return unsafeBlocking<A>(context:_:)(v0 + 216, 0xD000000000000010, 0x800000010134A8C0, sub_100A1B7A8, v9, v12);
}

uint64_t sub_100A0A900()
{
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 872);
  v4 = *v0;

  return _swift_task_switch(sub_100A0AA18, 0, 0);
}

uint64_t sub_100A0AA18()
{
  v169 = v0;
  if (!*(v0 + 240))
  {
    v4 = *(v0 + 472);
    v7 = *(v0 + 480);
    v5 = *(v0 + 464);
    (*(*(v0 + 600) + 8))(*(v0 + 616), *(v0 + 592));
    sub_10000B3A8(v0 + 216, &qword_101696920, &unk_10138B200);
    v9 = *(v7 + 56);
    LODWORD(v7) = v7 + 56;
    v9(v5, 1, 1, v4);
    goto LABEL_5;
  }

  v4 = *(v0 + 472);
  v7 = *(v0 + 480);
  v5 = *(v0 + 464);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v6 = swift_dynamicCast();
  (*(v7 + 56))(v5, v6 ^ 1u, 1, v4);
  v8 = *(v7 + 48);
  LODWORD(v7) = v7 + 48;
  if (v8(v5, 1, v4) == 1)
  {
    (*(*(v0 + 600) + 8))(*(v0 + 616), *(v0 + 592));
LABEL_5:
    sub_10000B3A8(*(v0 + 464), &unk_1016A9A20, &qword_10138B280);
    goto LABEL_6;
  }

  v22 = *(v0 + 488);
  v23 = *(v0 + 472);
  v25 = *(v0 + 448);
  v24 = *(v0 + 456);
  sub_100A18C9C(*(v0 + 464), v22, type metadata accessor for OwnedBeaconRecord);
  sub_100A1B358(v22 + *(v23 + 24), v24, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v26 = *(v0 + 600);
    v27 = *(v0 + 592);
    v28 = *(v0 + 456);
    v7 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v29 = *(v28 + 8 + *(v7 + 48));

    v30 = *(v28 + 8 + *(v7 + 64));

    v31 = *(v28 + 8 + *(v7 + 80));

    LODWORD(v7) = *(v28 + *(v7 + 96));
    v32 = *(v26 + 8);
    *(v0 + 888) = v32;
    *(v0 + 896) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v28, v27);
    if (v7)
    {
      if (v7 != 1)
      {
        v5 = _swiftEmptyArrayStorage;
LABEL_46:
        v84 = *(v0 + 824);
        (*(v0 + 816))(*(v0 + 440) + *(*(v0 + 432) + 20), *(v0 + 488) + *(*(v0 + 472) + 20), *(v0 + 592));
        v85 = getuid();
        sub_1000294F0(v85);
        v86 = *(v5 + 2);
        sub_100A18C28();
        *(v0 + 384) = Set.init(minimumCapacity:)();
        v87 = *(v5 + 2);
        if (v87)
        {
          v88 = (v5 + 35);
          do
          {
            v89 = *(v88 - 3);
            v90 = *(v88 - 2);
            v91 = *(v88 - 1);
            v92 = *v88;
            v88 += 4;
            if (v92)
            {
              v93 = 0x1000000;
            }

            else
            {
              v93 = 0;
            }

            if (v91)
            {
              v94 = 0x10000;
            }

            else
            {
              v94 = 0;
            }

            if (v90)
            {
              v95 = 256;
            }

            else
            {
              v95 = 0;
            }

            sub_100DEBFE8(&v168, v95 | v89 | v94 | v93);
            --v87;
          }

          while (v87);
        }

        v17 = *(v0 + 728);

        *(v0 + 904) = *(v0 + 384);
        v21 = sub_100A0B9A4;
LABEL_13:

        return _swift_task_switch(v21, v17, 0);
      }

      LOBYTE(v1) = 8;
    }

    else
    {
      LOBYTE(v1) = 1;
    }

    LOBYTE(v2) = v7 != 0;
    v5 = sub_100A5C994(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v5 + 2);
    v10 = *(v5 + 3);
    v4 = v3 + 1;
    if (v3 >= v10 >> 1)
    {
LABEL_72:
      v5 = sub_100A5C994((v10 > 1), v4, 1, v5);
    }

    *(v5 + 2) = v4;
    v79 = &v5[4 * v3];
    v79[32] = v1;
    v79[33] = v7 == 0;
    v79[34] = 0;
    v79[35] = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100A5C994(0, *(v5 + 2) + 1, 1, v5);
    }

    v81 = *(v5 + 2);
    v80 = *(v5 + 3);
    if (v81 >= v80 >> 1)
    {
      v5 = sub_100A5C994((v80 > 1), v81 + 1, 1, v5);
    }

    *(v5 + 2) = v81 + 1;
    *&v5[4 * v81 + 32] = 0;
    goto LABEL_46;
  }

  v4 = *(v0 + 616);
  v1 = *(v0 + 600);
  v5 = *(v0 + 592);
  v7 = *(v0 + 456);
  sub_100A1B3C0(*(v0 + 488), type metadata accessor for OwnedBeaconRecord);
  v36 = *(v1 + 8);
  LOBYTE(v1) = v1 + 8;
  v36(v4, v5);
  sub_100A1B3C0(v7, type metadata accessor for StableIdentifier);
LABEL_6:
  v10 = *(v0 + 864);
  v11 = (*(v0 + 856) - 1) & *(v0 + 856);
  if (v11)
  {
    v12 = *(v0 + 848);
LABEL_12:
    *(v0 + 864) = v10;
    *(v0 + 856) = v11;
    v14 = *(v0 + 824);
    v15 = *(v0 + 808);
    v16 = *(v0 + 800);
    v17 = *(v0 + 760);
    v18 = *(v0 + 624);
    v19 = *(v0 + 616);
    v20 = *(v0 + 592);
    (*(v0 + 816))(v18, *(v12 + 48) + *(*(v0 + 600) + 72) * (__clz(__rbit64(v11)) | (v10 << 6)), v20);
    v16(v19, v18, v20);
    v21 = sub_100A0A790;
    goto LABEL_13;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v13 >= (((1 << *(v0 + 940)) + 63) >> 6))
    {
      break;
    }

    v12 = *(v0 + 848);
    v11 = *(v12 + 8 * v13 + 56);
    ++v10;
    if (v11)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  v1 = *(v0 + 928);
  v33 = *(v0 + 848);

  v2 = *(v1 + 16);
  if (v2)
  {
    v34 = *(*(v0 + 504) + 80);
    v4 = *(v0 + 928) + ((v34 + 32) & ~v34);
    sub_100A1B358(v4, *(v0 + 536), type metadata accessor for ObservedAdvertisement);
    if (v2 == 1)
    {
LABEL_22:
      sub_100A18C9C(*(v0 + 536), *(v0 + 576), type metadata accessor for ObservedAdvertisement);
      v35 = 0;
      goto LABEL_25;
    }

    v3 = *(v0 + 496);
    v82 = 1;
    while (1)
    {
      v10 = *(v1 + 16);
      if (v82 >= v10)
      {
        break;
      }

      v7 = *(v0 + 536);
      v5 = *(v0 + 512);
      sub_100A1B358(v4 + *(*(v0 + 504) + 72) * v82, v5, type metadata accessor for ObservedAdvertisement);
      v83 = *(v3 + 44);
      if (static Date.< infix(_:_:)())
      {
        v5 = *(v0 + 536);
        v7 = *(v0 + 512);
        sub_100A1B3C0(v5, type metadata accessor for ObservedAdvertisement);
        sub_100A18C9C(v7, v5, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_100A1B3C0(*(v0 + 512), type metadata accessor for ObservedAdvertisement);
      }

      if (v2 == ++v82)
      {
        goto LABEL_22;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v35 = 1;
LABEL_25:
  v37 = *(v0 + 928);
  v38 = *(v0 + 576);
  v39 = *(v0 + 544);
  v40 = *(v0 + 496);
  v41 = *(v0 + 504);
  (*(v41 + 56))(v38, v35, 1, v40);

  sub_1000D2A70(v38, v39, &unk_10169BB50, &unk_101395760);
  v42 = (*(v41 + 48))(v39, 1, v40);
  v43 = *(v0 + 792);
  v44 = *(v0 + 544);
  if (v42 == 1)
  {
    v45 = *(v0 + 792);

    sub_10000B3A8(v44, &unk_10169BB50, &unk_101395760);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 256);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v0 + 824);
      v50 = *(v0 + 816);
      v162 = *(v0 + 760);
      v156 = *(v0 + 728);
      v51 = *(v0 + 640);
      v165 = *(v0 + 632);
      v150 = *(v0 + 600);
      v52 = *(v0 + 592);
      v159 = *(v0 + 576);
      v53 = *(v0 + 472);
      v54 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v168 = v153;
      *v54 = 141558275;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v55 = sub_1000035D0((v0 + 256), *(v0 + 280));
      v50(v51, &v55[*(v53 + 20)], v52);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v150 + 8);
      v59(v51, v52);
      sub_100007BAC((v0 + 256));
      v60 = sub_1000136BC(v56, v58, &v168);

      *(v54 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v47, v48, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v54, 0x16u);
      sub_100007BAC(v153);

      sub_10000B3A8(v159, &unk_10169BB50, &unk_101395760);
      v59(v165, v52);
LABEL_66:
      v166 = 1;
      goto LABEL_67;
    }

    v96 = *(v0 + 760);
    v97 = *(v0 + 728);
    v98 = *(v0 + 632);
    v99 = *(v0 + 600);
    v100 = *(v0 + 592);
    v101 = *(v0 + 576);

    sub_10000B3A8(v101, &unk_10169BB50, &unk_101395760);
    (*(v99 + 8))(v98, v100);
    v102 = (v0 + 256);
    goto LABEL_65;
  }

  v62 = *(v0 + 416);
  v61 = *(v0 + 424);
  v64 = *(v0 + 400);
  v63 = *(v0 + 408);
  v65 = *(v0 + 392);
  (*(v64 + 16))(v62, v44 + *(*(v0 + 496) + 44), v65);
  sub_100A1B3C0(v44, type metadata accessor for ObservedAdvertisement);
  (*(v64 + 32))(v61, v62, v65);
  static Date.trustedNow.getter(v63);
  Date.timeIntervalSince(_:)();
  v67 = v66;
  v68 = *(v64 + 8);
  v68(v63, v65);
  sub_101074970(v43);
  v70 = v69;

  if (v70 <= v67)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v167 = v68;
    v103 = type metadata accessor for Logger();
    sub_1000076D4(v103, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 296);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = *(v0 + 824);
      v107 = *(v0 + 816);
      v144 = v105;
      v108 = *(v0 + 640);
      v163 = *(v0 + 632);
      v109 = *(v0 + 600);
      v110 = *(v0 + 592);
      v157 = *(v0 + 760);
      v160 = *(v0 + 576);
      v111 = *(v0 + 472);
      v154 = *(v0 + 424);
      v148 = *(v0 + 728);
      v151 = *(v0 + 392);
      v112 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v168 = v146;
      *v112 = 141558275;
      *(v112 + 4) = 1752392040;
      *(v112 + 12) = 2081;
      v113 = sub_1000035D0((v0 + 296), *(v0 + 320));
      v107(v108, &v113[*(v111 + 20)], v110);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v115;
      v117 = *(v109 + 8);
      v117(v108, v110);
      sub_100007BAC((v0 + 296));
      v118 = sub_1000136BC(v114, v116, &v168);

      *(v112 + 14) = v118;
      _os_log_impl(&_mh_execute_header, v104, v144, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v112, 0x16u);
      sub_100007BAC(v146);

      v167(v154, v151);
      sub_10000B3A8(v160, &unk_10169BB50, &unk_101395760);
      v117(v163, v110);
      goto LABEL_66;
    }

    v119 = *(v0 + 760);
    v120 = *(v0 + 728);
    v121 = *(v0 + 632);
    v122 = *(v0 + 600);
    v123 = *(v0 + 592);
    v124 = *(v0 + 576);
    v125 = *(v0 + 424);
    v126 = *(v0 + 392);

    v167(v125, v126);
    sub_10000B3A8(v124, &unk_10169BB50, &unk_101395760);
    (*(v122 + 8))(v121, v123);
    v102 = (v0 + 296);
LABEL_65:
    sub_100007BAC(v102);
    goto LABEL_66;
  }

  v71 = *(v0 + 760);
  v72 = *(v0 + 728);
  v73 = *(v0 + 632);
  v74 = *(v0 + 600);
  v75 = *(v0 + 592);
  v76 = *(v0 + 576);
  v77 = *(v0 + 424);
  v78 = *(v0 + 392);

  v68(v77, v78);
  sub_10000B3A8(v76, &unk_10169BB50, &unk_101395760);
  (*(v74 + 8))(v73, v75);
  v166 = 0;
LABEL_67:
  sub_100007BAC((v0 + 136));
  v127 = *(v0 + 672);
  v128 = *(v0 + 664);
  v129 = *(v0 + 640);
  v130 = *(v0 + 632);
  v131 = *(v0 + 624);
  v132 = *(v0 + 616);
  v133 = *(v0 + 584);
  v134 = *(v0 + 576);
  v135 = *(v0 + 568);
  v138 = *(v0 + 560);
  v139 = *(v0 + 552);
  v140 = *(v0 + 544);
  v141 = *(v0 + 536);
  v142 = *(v0 + 528);
  v143 = *(v0 + 520);
  v145 = *(v0 + 512);
  v147 = *(v0 + 488);
  v149 = *(v0 + 464);
  v152 = *(v0 + 456);
  v155 = *(v0 + 440);
  v158 = *(v0 + 424);
  v161 = *(v0 + 416);
  v164 = *(v0 + 408);
  sub_100007BAC((v0 + 16));

  v136 = *(v0 + 8);

  return v136(v166);
}

uint64_t sub_100A0B9A4()
{
  v1 = v0[115];
  v2 = v0[91];
  sub_1010CFE2C(v0[55], v0[113], v0[70]);
  v0[114] = v1;
  v3 = v0[113];
  sub_100A1B3C0(v0[55], type metadata accessor for BeaconIdentifier);

  if (v1)
  {
    v4 = sub_100A0C808;
  }

  else
  {
    v4 = sub_100A0BA64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100A0BA64()
{
  v164 = v0;
  sub_1000D2AD8(*(v0 + 560), *(v0 + 568), &unk_10169BB50, &unk_101395760);
  v1 = *(v0 + 912);
  v2 = *(v0 + 552);
  v3 = *(v0 + 496);
  v4 = *(v0 + 504);
  sub_1000D2A70(*(v0 + 568), v2, &unk_10169BB50, &unk_101395760);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 896);
    v6 = *(v0 + 888);
    v7 = *(v0 + 616);
    v8 = *(v0 + 592);
    v9 = *(v0 + 552);
    v10 = *(v0 + 488);
    sub_10000B3A8(*(v0 + 568), &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v10, type metadata accessor for OwnedBeaconRecord);
    v6(v7, v8);
    sub_10000B3A8(v9, &unk_10169BB50, &unk_101395760);
    v11 = *(v0 + 928);
  }

  else
  {
    v12 = *(v0 + 928);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    sub_100A18C9C(*(v0 + 552), v13, type metadata accessor for ObservedAdvertisement);
    sub_100A1B358(v13, v14, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 928);
    v159 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_46:
      v11 = sub_100A5C3FC(0, v11[2] + 1, 1, v11);
    }

    v17 = v11[2];
    v16 = v11[3];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_100A5C3FC(v16 > 1, v17 + 1, 1, v11);
    }

    v18 = *(v0 + 896);
    v19 = *(v0 + 888);
    v20 = *(v0 + 616);
    v21 = *(v0 + 592);
    v22 = *(v0 + 568);
    v152 = *(v0 + 520);
    v23 = *(v0 + 504);
    v24 = *(v0 + 488);
    sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
    sub_10000B3A8(v22, &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v24, type metadata accessor for OwnedBeaconRecord);
    v19(v20, v21);
    v11[2] = v17 + 1;
    sub_100A18C9C(v152, v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, type metadata accessor for ObservedAdvertisement);
    v1 = v159;
  }

  v25 = *(v0 + 864);
  v26 = *(v0 + 856);
  *(v0 + 928) = v11;
  *(v0 + 920) = v1;
  v27 = (v26 - 1) & v26;
  if (!v27)
  {
    while (1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v28 = *(v0 + 848);
      if (v29 >= (((1 << *(v0 + 940)) + 63) >> 6))
      {
        break;
      }

      v27 = *(v28 + 8 * v29 + 56);
      ++v25;
      if (v27)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    v37 = v11[2];
    if (v37)
    {
      v38 = *(*(v0 + 504) + 80);
      v39 = *(v0 + 928) + ((v38 + 32) & ~v38);
      sub_100A1B358(v39, *(v0 + 536), type metadata accessor for ObservedAdvertisement);
      if (v37 == 1)
      {
LABEL_18:
        sub_100A18C9C(*(v0 + 536), *(v0 + 576), type metadata accessor for ObservedAdvertisement);
        v40 = 0;
        goto LABEL_20;
      }

      v83 = *(v0 + 496);
      v84 = 1;
      while (v84 < v11[2])
      {
        v85 = *(v0 + 536);
        sub_100A1B358(v39 + *(*(v0 + 504) + 72) * v84, *(v0 + 512), type metadata accessor for ObservedAdvertisement);
        v86 = *(v83 + 44);
        if (static Date.< infix(_:_:)())
        {
          v87 = *(v0 + 536);
          v88 = *(v0 + 512);
          sub_100A1B3C0(v87, type metadata accessor for ObservedAdvertisement);
          sub_100A18C9C(v88, v87, type metadata accessor for ObservedAdvertisement);
        }

        else
        {
          sub_100A1B3C0(*(v0 + 512), type metadata accessor for ObservedAdvertisement);
        }

        if (v37 == ++v84)
        {
          goto LABEL_18;
        }
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v40 = 1;
LABEL_20:
    v41 = *(v0 + 928);
    v42 = *(v0 + 576);
    v43 = *(v0 + 544);
    v44 = *(v0 + 496);
    v45 = *(v0 + 504);
    (*(v45 + 56))(v42, v40, 1, v44);

    sub_1000D2A70(v42, v43, &unk_10169BB50, &unk_101395760);
    v46 = (*(v45 + 48))(v43, 1, v44);
    v47 = *(v0 + 792);
    v48 = *(v0 + 544);
    if (v46 == 1)
    {
      v49 = *(v0 + 792);

      sub_10000B3A8(v48, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000076D4(v50, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v0 + 824);
        v54 = *(v0 + 816);
        v156 = *(v0 + 760);
        v149 = *(v0 + 728);
        v55 = *(v0 + 640);
        v160 = *(v0 + 632);
        v143 = *(v0 + 600);
        v56 = *(v0 + 592);
        v153 = *(v0 + 576);
        v57 = *(v0 + 472);
        v58 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v163 = v146;
        *v58 = 141558275;
        *(v58 + 4) = 1752392040;
        *(v58 + 12) = 2081;
        v59 = sub_1000035D0((v0 + 256), *(v0 + 280));
        v54(v55, &v59[*(v57 + 20)], v56);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        v63 = *(v143 + 8);
        v63(v55, v56);
        sub_100007BAC((v0 + 256));
        v64 = sub_1000136BC(v60, v62, &v163);

        *(v58 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v51, v52, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v58, 0x16u);
        sub_100007BAC(v146);

        sub_10000B3A8(v153, &unk_10169BB50, &unk_101395760);
        v63(v160, v56);
LABEL_40:
        v161 = 1;
        goto LABEL_41;
      }

      v89 = *(v0 + 760);
      v90 = *(v0 + 728);
      v91 = *(v0 + 632);
      v92 = *(v0 + 600);
      v93 = *(v0 + 592);
      v94 = *(v0 + 576);

      sub_10000B3A8(v94, &unk_10169BB50, &unk_101395760);
      (*(v92 + 8))(v91, v93);
      v95 = (v0 + 256);
    }

    else
    {
      v66 = *(v0 + 416);
      v65 = *(v0 + 424);
      v68 = *(v0 + 400);
      v67 = *(v0 + 408);
      v69 = *(v0 + 392);
      (*(v68 + 16))(v66, v48 + *(*(v0 + 496) + 44), v69);
      sub_100A1B3C0(v48, type metadata accessor for ObservedAdvertisement);
      (*(v68 + 32))(v65, v66, v69);
      static Date.trustedNow.getter(v67);
      Date.timeIntervalSince(_:)();
      v71 = v70;
      v72 = *(v68 + 8);
      v72(v67, v69);
      sub_101074970(v47);
      v74 = v73;

      if (v74 > v71)
      {
        v75 = *(v0 + 760);
        v76 = *(v0 + 728);
        v77 = *(v0 + 632);
        v78 = *(v0 + 600);
        v79 = *(v0 + 592);
        v80 = *(v0 + 576);
        v81 = *(v0 + 424);
        v82 = *(v0 + 392);

        v72(v81, v82);
        sub_10000B3A8(v80, &unk_10169BB50, &unk_101395760);
        (*(v78 + 8))(v77, v79);
        v161 = 0;
LABEL_41:
        sub_100007BAC((v0 + 136));
        v120 = *(v0 + 672);
        v121 = *(v0 + 664);
        v122 = *(v0 + 640);
        v123 = *(v0 + 632);
        v124 = *(v0 + 624);
        v125 = *(v0 + 616);
        v126 = *(v0 + 584);
        v127 = *(v0 + 576);
        v128 = *(v0 + 568);
        v131 = *(v0 + 560);
        v132 = *(v0 + 552);
        v133 = *(v0 + 544);
        v134 = *(v0 + 536);
        v135 = *(v0 + 528);
        v136 = *(v0 + 520);
        v138 = *(v0 + 512);
        v140 = *(v0 + 488);
        v142 = *(v0 + 464);
        v145 = *(v0 + 456);
        v148 = *(v0 + 440);
        v151 = *(v0 + 424);
        v155 = *(v0 + 416);
        v158 = *(v0 + 408);
        sub_100007BAC((v0 + 16));

        v129 = *(v0 + 8);

        return v129(v161);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v162 = v72;
      v96 = type metadata accessor for Logger();
      sub_1000076D4(v96, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 296);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = *(v0 + 824);
        v100 = *(v0 + 816);
        v137 = v98;
        v101 = *(v0 + 640);
        v157 = *(v0 + 632);
        v102 = *(v0 + 600);
        v103 = *(v0 + 592);
        v150 = *(v0 + 760);
        v154 = *(v0 + 576);
        v104 = *(v0 + 472);
        v147 = *(v0 + 424);
        v141 = *(v0 + 728);
        v144 = *(v0 + 392);
        v105 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v163 = v139;
        *v105 = 141558275;
        *(v105 + 4) = 1752392040;
        *(v105 + 12) = 2081;
        v106 = sub_1000035D0((v0 + 296), *(v0 + 320));
        v100(v101, &v106[*(v104 + 20)], v103);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v108;
        v110 = *(v102 + 8);
        v110(v101, v103);
        sub_100007BAC((v0 + 296));
        v111 = sub_1000136BC(v107, v109, &v163);

        *(v105 + 14) = v111;
        _os_log_impl(&_mh_execute_header, v97, v137, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v105, 0x16u);
        sub_100007BAC(v139);

        v162(v147, v144);
        sub_10000B3A8(v154, &unk_10169BB50, &unk_101395760);
        v110(v157, v103);
        goto LABEL_40;
      }

      v112 = *(v0 + 760);
      v113 = *(v0 + 728);
      v114 = *(v0 + 632);
      v115 = *(v0 + 600);
      v116 = *(v0 + 592);
      v117 = *(v0 + 576);
      v118 = *(v0 + 424);
      v119 = *(v0 + 392);

      v162(v118, v119);
      sub_10000B3A8(v117, &unk_10169BB50, &unk_101395760);
      (*(v115 + 8))(v114, v116);
      v95 = (v0 + 296);
    }

    sub_100007BAC(v95);
    goto LABEL_40;
  }

  v28 = *(v0 + 848);
LABEL_13:
  *(v0 + 864) = v25;
  *(v0 + 856) = v27;
  v30 = *(v0 + 824);
  v31 = *(v0 + 808);
  v32 = *(v0 + 800);
  v33 = *(v0 + 760);
  v34 = *(v0 + 624);
  v35 = *(v0 + 616);
  v36 = *(v0 + 592);
  (*(v0 + 816))(v34, *(v28 + 48) + *(*(v0 + 600) + 72) * (__clz(__rbit64(v27)) | (v25 << 6)), v36);
  v32(v35, v34, v36);

  return _swift_task_switch(sub_100A0A790, v33, 0);
}

uint64_t sub_100A0C808()
{
  v171 = v0;
  if (qword_101694B70 != -1)
  {
LABEL_51:
    swift_once();
  }

  v1 = *(v0 + 912);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B780);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 912);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch latest beacon observation. Error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(*(v0 + 504) + 56))(*(v0 + 568), 1, 1, *(v0 + 496));
  v10 = *(v0 + 552);
  v12 = *(v0 + 496);
  v11 = *(v0 + 504);
  sub_1000D2A70(*(v0 + 568), v10, &unk_10169BB50, &unk_101395760);
  if ((*(v11 + 48))(v10, 1, v12) == 1)
  {
    v13 = *(v0 + 896);
    v14 = *(v0 + 888);
    v15 = *(v0 + 616);
    v16 = *(v0 + 592);
    v17 = *(v0 + 552);
    v18 = *(v0 + 488);
    sub_10000B3A8(*(v0 + 568), &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v18, type metadata accessor for OwnedBeaconRecord);
    v14(v15, v16);
    sub_10000B3A8(v17, &unk_10169BB50, &unk_101395760);
    v19 = *(v0 + 928);
  }

  else
  {
    v20 = *(v0 + 928);
    v21 = *(v0 + 528);
    v22 = *(v0 + 520);
    sub_100A18C9C(*(v0 + 552), v21, type metadata accessor for ObservedAdvertisement);
    sub_100A1B358(v21, v22, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v0 + 928);
    v166 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_100A5C3FC(0, v19[2] + 1, 1, v19);
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      v19 = sub_100A5C3FC(v24 > 1, v25 + 1, 1, v19);
    }

    v26 = *(v0 + 896);
    v27 = *(v0 + 888);
    v28 = *(v0 + 616);
    v29 = *(v0 + 592);
    v30 = *(v0 + 568);
    v159 = *(v0 + 520);
    v31 = *(v0 + 504);
    v32 = *(v0 + 488);
    sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
    sub_10000B3A8(v30, &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v32, type metadata accessor for OwnedBeaconRecord);
    v27(v28, v29);
    v19[2] = v25 + 1;
    sub_100A18C9C(v159, v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, type metadata accessor for ObservedAdvertisement);
    v2 = v166;
  }

  v33 = *(v0 + 864);
  v34 = *(v0 + 856);
  *(v0 + 928) = v19;
  *(v0 + 920) = 0;
  v35 = (v34 - 1) & v34;
  if (!v35)
  {
    while (1)
    {
      v37 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      v36 = *(v0 + 848);
      if (v37 >= (((1 << *(v0 + 940)) + 63) >> 6))
      {
        break;
      }

      v35 = *(v36 + 8 * v37 + 56);
      ++v33;
      if (v35)
      {
        v33 = v37;
        goto LABEL_18;
      }
    }

    v45 = v19[2];
    if (v45)
    {
      v46 = *(*(v0 + 504) + 80);
      v47 = *(v0 + 928) + ((v46 + 32) & ~v46);
      sub_100A1B358(v47, *(v0 + 536), type metadata accessor for ObservedAdvertisement);
      if (v45 == 1)
      {
LABEL_23:
        sub_100A18C9C(*(v0 + 536), *(v0 + 576), type metadata accessor for ObservedAdvertisement);
        v48 = 0;
        goto LABEL_25;
      }

      v91 = *(v0 + 496);
      v92 = 1;
      while (v92 < v19[2])
      {
        v93 = *(v0 + 536);
        sub_100A1B358(v47 + *(*(v0 + 504) + 72) * v92, *(v0 + 512), type metadata accessor for ObservedAdvertisement);
        v94 = *(v91 + 44);
        if (static Date.< infix(_:_:)())
        {
          v95 = *(v0 + 536);
          v96 = *(v0 + 512);
          sub_100A1B3C0(v95, type metadata accessor for ObservedAdvertisement);
          sub_100A18C9C(v96, v95, type metadata accessor for ObservedAdvertisement);
        }

        else
        {
          sub_100A1B3C0(*(v0 + 512), type metadata accessor for ObservedAdvertisement);
        }

        if (v45 == ++v92)
        {
          goto LABEL_23;
        }
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v48 = 1;
LABEL_25:
    v49 = *(v0 + 928);
    v50 = *(v0 + 576);
    v51 = *(v0 + 544);
    v53 = *(v0 + 496);
    v52 = *(v0 + 504);
    (*(v52 + 56))(v50, v48, 1, v53);

    sub_1000D2A70(v50, v51, &unk_10169BB50, &unk_101395760);
    v54 = (*(v52 + 48))(v51, 1, v53);
    v55 = *(v0 + 792);
    v56 = *(v0 + 544);
    if (v54 == 1)
    {
      v57 = *(v0 + 792);

      sub_10000B3A8(v56, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v2, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = *(v0 + 824);
        v61 = *(v0 + 816);
        v163 = *(v0 + 760);
        v156 = *(v0 + 728);
        v62 = *(v0 + 640);
        v167 = *(v0 + 632);
        v150 = *(v0 + 600);
        v63 = *(v0 + 592);
        v160 = *(v0 + 576);
        v64 = *(v0 + 472);
        v65 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v170 = v153;
        *v65 = 141558275;
        *(v65 + 4) = 1752392040;
        *(v65 + 12) = 2081;
        v66 = sub_1000035D0((v0 + 256), *(v0 + 280));
        v61(v62, &v66[*(v64 + 20)], v63);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v70 = *(v150 + 8);
        v70(v62, v63);
        sub_100007BAC((v0 + 256));
        v71 = sub_1000136BC(v67, v69, &v170);

        *(v65 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v58, v59, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v65, 0x16u);
        sub_100007BAC(v153);

        sub_10000B3A8(v160, &unk_10169BB50, &unk_101395760);
        v70(v167, v63);
LABEL_45:
        v168 = 1;
        goto LABEL_46;
      }

      v97 = *(v0 + 760);
      v98 = *(v0 + 728);
      v99 = *(v0 + 632);
      v100 = *(v0 + 600);
      v101 = *(v0 + 592);
      v102 = *(v0 + 576);

      sub_10000B3A8(v102, &unk_10169BB50, &unk_101395760);
      (*(v100 + 8))(v99, v101);
      v103 = (v0 + 256);
    }

    else
    {
      v73 = *(v0 + 416);
      v72 = *(v0 + 424);
      v75 = *(v0 + 400);
      v74 = *(v0 + 408);
      v76 = *(v0 + 392);
      (*(v75 + 16))(v73, v56 + *(*(v0 + 496) + 44), v76);
      sub_100A1B3C0(v56, type metadata accessor for ObservedAdvertisement);
      (*(v75 + 32))(v72, v73, v76);
      static Date.trustedNow.getter(v74);
      Date.timeIntervalSince(_:)();
      v78 = v77;
      v79 = *(v75 + 8);
      v79(v74, v76);
      sub_101074970(v55);
      v81 = v80;

      if (v81 > v78)
      {
        v82 = v79;
        v83 = *(v0 + 760);
        v84 = *(v0 + 728);
        v85 = *(v0 + 632);
        v86 = *(v0 + 600);
        v87 = *(v0 + 592);
        v88 = *(v0 + 576);
        v89 = *(v0 + 424);
        v90 = *(v0 + 392);

        v82(v89, v90);
        sub_10000B3A8(v88, &unk_10169BB50, &unk_101395760);
        (*(v86 + 8))(v85, v87);
        v168 = 0;
LABEL_46:
        sub_100007BAC((v0 + 136));
        v127 = *(v0 + 672);
        v128 = *(v0 + 664);
        v129 = *(v0 + 640);
        v130 = *(v0 + 632);
        v131 = *(v0 + 624);
        v132 = *(v0 + 616);
        v133 = *(v0 + 584);
        v134 = *(v0 + 576);
        v135 = *(v0 + 568);
        v138 = *(v0 + 560);
        v139 = *(v0 + 552);
        v140 = *(v0 + 544);
        v141 = *(v0 + 536);
        v142 = *(v0 + 528);
        v143 = *(v0 + 520);
        v145 = *(v0 + 512);
        v147 = *(v0 + 488);
        v149 = *(v0 + 464);
        v152 = *(v0 + 456);
        v155 = *(v0 + 440);
        v158 = *(v0 + 424);
        v162 = *(v0 + 416);
        v165 = *(v0 + 408);
        sub_100007BAC((v0 + 16));

        v136 = *(v0 + 8);

        return v136(v168);
      }

      v164 = v79;
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v2, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 296);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = *(v0 + 824);
        v107 = *(v0 + 816);
        v157 = *(v0 + 760);
        v148 = *(v0 + 728);
        v144 = v105;
        v108 = *(v0 + 640);
        v169 = *(v0 + 632);
        v109 = *(v0 + 600);
        v110 = *(v0 + 592);
        v161 = *(v0 + 576);
        v111 = *(v0 + 472);
        v151 = *(v0 + 392);
        v154 = *(v0 + 424);
        v112 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v170 = v146;
        *v112 = 141558275;
        *(v112 + 4) = 1752392040;
        *(v112 + 12) = 2081;
        v113 = sub_1000035D0((v0 + 296), *(v0 + 320));
        v107(v108, &v113[*(v111 + 20)], v110);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v114 = dispatch thunk of CustomStringConvertible.description.getter();
        v116 = v115;
        v117 = *(v109 + 8);
        v117(v108, v110);
        sub_100007BAC((v0 + 296));
        v118 = sub_1000136BC(v114, v116, &v170);

        *(v112 + 14) = v118;
        _os_log_impl(&_mh_execute_header, v104, v144, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v112, 0x16u);
        sub_100007BAC(v146);

        v164(v154, v151);
        sub_10000B3A8(v161, &unk_10169BB50, &unk_101395760);
        v117(v169, v110);
        goto LABEL_45;
      }

      v119 = *(v0 + 760);
      v120 = *(v0 + 728);
      v121 = *(v0 + 632);
      v122 = *(v0 + 600);
      v123 = *(v0 + 592);
      v124 = *(v0 + 576);
      v125 = *(v0 + 424);
      v126 = *(v0 + 392);

      v164(v125, v126);
      sub_10000B3A8(v124, &unk_10169BB50, &unk_101395760);
      (*(v122 + 8))(v121, v123);
      v103 = (v0 + 296);
    }

    sub_100007BAC(v103);
    goto LABEL_45;
  }

  v36 = *(v0 + 848);
LABEL_18:
  *(v0 + 864) = v33;
  *(v0 + 856) = v35;
  v38 = *(v0 + 824);
  v39 = *(v0 + 808);
  v40 = *(v0 + 800);
  v41 = *(v0 + 760);
  v42 = *(v0 + 624);
  v43 = *(v0 + 616);
  v44 = *(v0 + 592);
  (*(v0 + 816))(v42, *(v36 + 48) + *(*(v0 + 600) + 72) * (__clz(__rbit64(v35)) | (v33 << 6)), v44);
  v40(v43, v42, v44);

  return _swift_task_switch(sub_100A0A790, v41, 0);
}

uint64_t sub_100A0D700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ServerInteractionController(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100A0D800(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1003A8B50(result);

  return sub_100A0D700(v4, v2, 0);
}

uint64_t sub_100A0D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[49] = a2;
  v3[50] = a3;
  v6 = type metadata accessor for Date();
  v3[51] = v6;
  v7 = *(v6 - 8);
  v3[52] = v7;
  v8 = *(v7 + 64) + 15;
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v9 = type metadata accessor for BeaconIdentifier();
  v3[56] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v11 = type metadata accessor for StableIdentifier();
  v3[58] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[59] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v3[60] = swift_task_alloc();
  v14 = type metadata accessor for OwnedBeaconRecord();
  v3[61] = v14;
  v15 = *(v14 - 8);
  v3[62] = v15;
  v16 = *(v15 + 64) + 15;
  v3[63] = swift_task_alloc();
  v17 = type metadata accessor for ObservedAdvertisement(0);
  v3[64] = v17;
  v18 = *(v17 - 8);
  v3[65] = v18;
  v19 = *(v18 + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[75] = swift_task_alloc();
  v22 = type metadata accessor for UUID();
  v3[76] = v22;
  v23 = *(v22 - 8);
  v3[77] = v23;
  v3[78] = *(v23 + 64);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v24 = type metadata accessor for SystemInfo.DeviceLockState();
  v3[83] = v24;
  v25 = *(v24 - 8);
  v3[84] = v25;
  v26 = *(v25 + 64) + 15;
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[5] = a2;
  v3[6] = a3;
  v3[87] = sub_1000280DC(v3 + 2);
  (*(*(a2 - 8) + 16))();

  return _swift_task_switch(sub_100A0DD08, 0, 0);
}

uint64_t sub_100A0DD08()
{
  v49 = v0;
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v2, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v4);
  sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);
  if (v5)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 42));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[82];
      v11 = v0[77];
      v12 = v0[76];
      v14 = v0[49];
      v13 = v0[50];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48 = v16;
      *v15 = 136315138;
      sub_1000035D0(v0 + 42, v0[45]);
      (*(*(*(v13 + 8) + 8) + 32))(v14);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v11 + 8))(v10, v12);
      sub_100007BAC(v0 + 42);
      v20 = sub_1000136BC(v17, v19, &v48);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "Can't monitor beacon: %s before first unlock.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      sub_100007BAC(v0 + 42);
    }

    v23 = v0[86];
    v24 = v0[85];
    v25 = v0[82];
    v26 = v0[81];
    v27 = v0[80];
    v28 = v0[79];
    v29 = v0[75];
    v30 = v0[74];
    v31 = v0[73];
    v34 = v0[72];
    v35 = v0[71];
    v36 = v0[70];
    v37 = v0[69];
    v38 = v0[68];
    v39 = v0[67];
    v40 = v0[66];
    v41 = v0[63];
    v42 = v0[60];
    v43 = v0[59];
    v44 = v0[57];
    v45 = v0[55];
    v46 = v0[54];
    v47 = v0[53];
    sub_100007BAC(v0 + 2);

    v32 = v0[1];

    return v32(1);
  }

  else
  {
    v21 = async function pointer to daemon.getter[1];
    v22 = swift_task_alloc();
    v0[88] = v22;
    *v22 = v0;
    v22[1] = sub_100A0E1C0;

    return daemon.getter();
  }
}

uint64_t sub_100A0E1C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 704);
  v12 = *v1;
  v3[89] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[90] = v6;
  v7 = type metadata accessor for Daemon();
  v3[91] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100003F64(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[92] = v9;
  v10 = sub_100003F64(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100A0E3A0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A0E3A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 720);
  v6 = *v2;
  *(*v2 + 744) = a1;

  v7 = *(v3 + 712);
  if (v1)
  {

    return _swift_task_switch(sub_100A0E854, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 752) = v9;
    *v9 = v6;
    v9[1] = sub_100A0E54C;

    return daemon.getter();
  }
}

uint64_t sub_100A0E54C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 752);
  v5 = *v1;
  v3[95] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[96] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003F64(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_100A0E700;
  v10 = v3[92];
  v11 = v3[91];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100A0E700(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 768);
  v6 = *v2;
  *(v4 + 776) = a1;
  *(v4 + 784) = v1;

  v7 = *(v3 + 760);
  if (v1)
  {

    v8 = sub_100A0F398;
  }

  else
  {

    v8 = sub_100A0EBD8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100A0E854()
{
  v41 = v0;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B780);
  sub_10001F280((v0 + 2), (v0 + 7));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[82];
    v5 = v0[77];
    v6 = v0[76];
    v8 = v0[49];
    v7 = v0[50];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315138;
    sub_1000035D0(v0 + 7, v0[10]);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    sub_100007BAC(v0 + 7);
    v14 = sub_1000136BC(v11, v13, &v40);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't monitor beacon: %s due to: missing services BeaconStoreActor / ObservationStoreService.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[82];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[75];
  v22 = v0[74];
  v23 = v0[73];
  v26 = v0[72];
  v27 = v0[71];
  v28 = v0[70];
  v29 = v0[69];
  v30 = v0[68];
  v31 = v0[67];
  v32 = v0[66];
  v33 = v0[63];
  v34 = v0[60];
  v35 = v0[59];
  v36 = v0[57];
  v37 = v0[55];
  v38 = v0[54];
  v39 = v0[53];
  sub_100007BAC(v0 + 2);

  v24 = v0[1];

  return v24(1);
}

uint64_t sub_100A0EBD8()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 792) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 800) = v3;
  *v3 = v0;
  v3[1] = sub_100A0ECD8;

  return unsafeBlocking<A>(_:)(v0 + 376, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_100A0ECD8()
{
  v1 = *(*v0 + 800);
  v2 = *(*v0 + 792);
  v4 = *v0;

  return _swift_task_switch(sub_100A0EDF0, 0, 0);
}

uint64_t sub_100A0EDF0()
{
  v72 = v0;
  v1 = v0[87];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v0[101] = v4;
  v5 = sub_10107497C(v4);
  if (((*(v2 + 120))(v3, v2) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v0[87];
  v7 = (*(v0[50] + 184))(v0[49]);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v10 != v11)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13 & v5)
    {
      goto LABEL_7;
    }

LABEL_13:
    v36 = v0[97];
    v37 = v0[93];

    v70 = 0;
LABEL_14:
    v38 = v0[86];
    v39 = v0[85];
    v40 = v0[82];
    v41 = v0[81];
    v42 = v0[80];
    v43 = v0[79];
    v44 = v0[75];
    v45 = v0[74];
    v46 = v0[73];
    v56 = v0[72];
    v57 = v0[71];
    v58 = v0[70];
    v59 = v0[69];
    v60 = v0[68];
    v61 = v0[67];
    v62 = v0[66];
    v63 = v0[63];
    v64 = v0[60];
    v65 = v0[59];
    v66 = v0[57];
    v67 = v0[55];
    v68 = v0[54];
    v69 = v0[53];
    sub_100007BAC(v0 + 2);

    v47 = v0[1];

    return v47(v70);
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v14 = v0[87];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  (*(v0[50] + 200))(v0[49]);
  if ((*(v15 + 48))(v17, 1, v16) == 1)
  {
    v18 = v0[75];

    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 12));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[97];
    v24 = v0[93];
    if (v22)
    {
      v25 = v0[82];
      v26 = v0[77];
      v27 = v0[76];
      v29 = v0[49];
      v28 = v0[50];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v71 = v31;
      *v30 = 136315138;
      sub_1000035D0(v0 + 12, v0[15]);
      (*(*(*(v28 + 8) + 8) + 32))(v29);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v26 + 8))(v25, v27);
      sub_100007BAC(v0 + 12);
      v35 = sub_1000136BC(v32, v34, &v71);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v20, v21, "Can't monitor beacon: %s due to: airpods but missing beacon group.", v30, 0xCu);
      sub_100007BAC(v31);
    }

    else
    {
      v55 = v0[93];

      sub_100007BAC(v0 + 12);
    }

    v70 = 1;
    goto LABEL_14;
  }

  v49 = v0[97];
  v50 = v0[81];
  v51 = v0[77];
  v52 = v0[76];
  v53 = v0[75];
  v54 = *(v51 + 32);
  v0[102] = v54;
  v0[103] = (v51 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v54(v50, v53, v52);

  return _swift_task_switch(sub_100A0F724, v49, 0);
}

uint64_t sub_100A0F398()
{
  v42 = v0;
  v1 = v0[93];

  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B780);
  sub_10001F280((v0 + 2), (v0 + 7));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[82];
    v6 = v0[77];
    v7 = v0[76];
    v9 = v0[49];
    v8 = v0[50];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136315138;
    sub_1000035D0(v0 + 7, v0[10]);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC(v0 + 7);
    v15 = sub_1000136BC(v12, v14, &v41);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Can't monitor beacon: %s due to: missing services BeaconStoreActor / ObservationStoreService.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100007BAC(v0 + 7);
  }

  v16 = v0[86];
  v17 = v0[85];
  v18 = v0[82];
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[79];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[73];
  v27 = v0[72];
  v28 = v0[71];
  v29 = v0[70];
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[67];
  v33 = v0[66];
  v34 = v0[63];
  v35 = v0[60];
  v36 = v0[59];
  v37 = v0[57];
  v38 = v0[55];
  v39 = v0[54];
  v40 = v0[53];
  sub_100007BAC(v0 + 2);

  v25 = v0[1];

  return v25(1);
}

uint64_t sub_100A0F724()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 776);
  v4 = *(v0 + 656);
  v5 = *(v0 + 648);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v7 + 16);
  v7 += 16;
  *(v0 + 832) = v9;
  *(v0 + 840) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v5, v8);
  v10 = *(v7 + 64);
  *(v0 + 952) = v10;
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 848) = v12;
  *(v12 + 16) = v3;
  v2(v12 + v11, v4, v8);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 856) = v14;
  v15 = sub_1000BC4D4(&unk_1016AA480, &unk_1013BD050);
  *v14 = v0;
  v14[1] = sub_100A0F8B4;

  return unsafeBlocking<A>(context:_:)(v0 + 176, 0xD000000000000010, 0x800000010134A8C0, sub_100A18BF8, v12, v15);
}

uint64_t sub_100A0F8B4()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 848);
  v4 = *v0;

  return _swift_task_switch(sub_100A0F9CC, 0, 0);
}

uint64_t sub_100A0F9CC()
{
  v162 = v0;
  if (!*(v0 + 200))
  {
    v11 = *(v0 + 808);
    (*(*(v0 + 616) + 8))(*(v0 + 648), *(v0 + 608));

    sub_10000B3A8(v0 + 176, &unk_1016AA480, &unk_1013BD050);
    if (qword_101694B70 == -1)
    {
LABEL_7:
      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 96);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 776);
      v17 = *(v0 + 744);
      if (v15)
      {
        v18 = *(v0 + 656);
        v19 = *(v0 + 616);
        v20 = *(v0 + 608);
        v158 = *(v0 + 776);
        v22 = *(v0 + 392);
        v21 = *(v0 + 400);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v161 = v24;
        *v23 = 136315138;
        sub_1000035D0((v0 + 96), *(v0 + 120));
        (*(*(*(v21 + 8) + 8) + 32))(v22);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        (*(v19 + 8))(v18, v20);
        sub_100007BAC((v0 + 96));
        v28 = sub_1000136BC(v25, v27, &v161);

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v13, v14, "Can't monitor beacon: %s due to: airpods but missing beacon group.", v23, 0xCu);
        sub_100007BAC(v24);

LABEL_39:
        v160 = 1;
LABEL_40:
        v107 = *(v0 + 688);
        v108 = *(v0 + 680);
        v109 = *(v0 + 656);
        v110 = *(v0 + 648);
        v111 = *(v0 + 640);
        v112 = *(v0 + 632);
        v113 = *(v0 + 600);
        v114 = *(v0 + 592);
        v115 = *(v0 + 584);
        v133 = *(v0 + 576);
        v134 = *(v0 + 568);
        v135 = *(v0 + 560);
        v136 = *(v0 + 552);
        v137 = *(v0 + 544);
        loga = *(v0 + 536);
        v141 = *(v0 + 528);
        v143 = *(v0 + 504);
        v144 = *(v0 + 480);
        v146 = *(v0 + 472);
        v148 = *(v0 + 456);
        v151 = *(v0 + 440);
        v154 = *(v0 + 432);
        v157 = *(v0 + 424);
        sub_100007BAC((v0 + 16));

        v116 = *(v0 + 8);

        return v116(v160);
      }

      v38 = *(v0 + 744);

      v39 = (v0 + 96);
LABEL_38:
      sub_100007BAC(v39);
      goto LABEL_39;
    }

LABEL_47:
    swift_once();
    goto LABEL_7;
  }

  sub_10000A748((v0 + 176), v0 + 136);
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  sub_1000035D0((v0 + 136), v1);
  v3 = (*(v2 + 16))(v1, v2);
  *(v0 + 864) = v3;
  v4 = *(v3 + 32);
  *(v0 + 956) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v3 + 56);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v8 = *(v0 + 784);
  *(v0 + 944) = _swiftEmptyArrayStorage;
  *(v0 + 936) = v8;
  v9 = v5 & v7;
  if (!v9)
  {
    v29 = 0;
    v30 = ((63 - v6) >> 6) - 1;
    while (v30 != v29)
    {
      v10 = v29 + 1;
      v9 = *(v3 + 8 * v29++ + 64);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    v40 = _swiftEmptyArrayStorage[2];
    if (!v40)
    {
      v43 = 1;
      goto LABEL_20;
    }

    v41 = *(*(v0 + 520) + 80);
    v42 = *(v0 + 944) + ((v41 + 32) & ~v41);
    sub_100A1B358(v42, *(v0 + 552), type metadata accessor for ObservedAdvertisement);
    if (v40 == 1)
    {
LABEL_18:
      sub_100A18C9C(*(v0 + 552), *(v0 + 592), type metadata accessor for ObservedAdvertisement);
      v43 = 0;
LABEL_20:
      v44 = *(v0 + 944);
      v45 = *(v0 + 592);
      v46 = *(v0 + 560);
      v47 = *(v0 + 520);
      v48 = *(v0 + 512);
      (*(v47 + 56))(v45, v43, 1, v48);

      sub_1000D2A70(v45, v46, &unk_10169BB50, &unk_101395760);
      v49 = (*(v47 + 48))(v46, 1, v48);
      v50 = *(v0 + 808);
      v51 = *(v0 + 560);
      if (v49 != 1)
      {
        v71 = *(v0 + 432);
        v70 = *(v0 + 440);
        v73 = *(v0 + 416);
        v72 = *(v0 + 424);
        v74 = *(v0 + 408);
        (*(v73 + 16))(v71, v51 + *(*(v0 + 512) + 44), v74);
        sub_100A1B3C0(v51, type metadata accessor for ObservedAdvertisement);
        (*(v73 + 32))(v70, v71, v74);
        static Date.trustedNow.getter(v72);
        Date.timeIntervalSince(_:)();
        v76 = v75;
        v77 = *(v73 + 8);
        v77(v72, v74);
        sub_101074970(v50);
        v79 = v78;

        v160 = v79 <= v76;
        if (v79 > v76)
        {
          v117 = *(v0 + 776);
          v118 = *(v0 + 744);
          v119 = *(v0 + 648);
          v120 = *(v0 + 616);
          v121 = *(v0 + 608);
          v122 = *(v0 + 592);
          v123 = *(v0 + 440);
          v124 = *(v0 + 408);

          v77(v123, v124);
          sub_10000B3A8(v122, &unk_10169BB50, &unk_101395760);
          (*(v120 + 8))(v119, v121);
        }

        else
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v80 = type metadata accessor for Logger();
          sub_1000076D4(v80, qword_10177B780);
          sub_10001F280(v0 + 16, v0 + 296);
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();
          v83 = os_log_type_enabled(v81, v82);
          v156 = *(v0 + 776);
          v84 = *(v0 + 744);
          if (v83)
          {
            log = v81;
            v85 = *(v0 + 656);
            v86 = *(v0 + 616);
            v87 = *(v0 + 608);
            v150 = *(v0 + 592);
            v153 = *(v0 + 648);
            v145 = *(v0 + 408);
            v147 = *(v0 + 440);
            v142 = v82;
            v88 = *(v0 + 392);
            v89 = *(v0 + 400);
            v90 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v161 = v140;
            *v90 = 141558275;
            *(v90 + 4) = 1752392040;
            *(v90 + 12) = 2081;
            sub_1000035D0((v0 + 296), *(v0 + 320));
            (*(*(*(v89 + 8) + 8) + 32))(v88);
            sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            v93 = v92;
            v94 = *(v86 + 8);
            v94(v85, v87);
            sub_100007BAC((v0 + 296));
            v95 = sub_1000136BC(v91, v93, &v161);

            *(v90 + 14) = v95;
            _os_log_impl(&_mh_execute_header, log, v142, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v90, 0x16u);
            sub_100007BAC(v140);

            v77(v147, v145);
            sub_10000B3A8(v150, &unk_10169BB50, &unk_101395760);
            v94(v153, v87);
          }

          else
          {
            v125 = *(v0 + 648);
            v126 = *(v0 + 616);
            v127 = *(v0 + 608);
            v128 = *(v0 + 592);
            v129 = *(v0 + 440);
            v130 = *(v0 + 408);
            v131 = *(v0 + 744);

            v77(v129, v130);
            sub_10000B3A8(v128, &unk_10169BB50, &unk_101395760);
            (*(v126 + 8))(v125, v127);
            sub_100007BAC((v0 + 296));
          }
        }

        sub_100007BAC((v0 + 136));
        goto LABEL_40;
      }

      v52 = *(v0 + 808);

      sub_10000B3A8(v51, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 776);
      v58 = *(v0 + 744);
      if (v56)
      {
        v59 = *(v0 + 656);
        v152 = *(v0 + 744);
        v159 = *(v0 + 648);
        v60 = *(v0 + 616);
        v61 = *(v0 + 608);
        v155 = *(v0 + 592);
        v63 = *(v0 + 392);
        v62 = *(v0 + 400);
        v64 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v161 = v149;
        *v64 = 141558275;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2081;
        sub_1000035D0((v0 + 256), *(v0 + 280));
        (*(*(*(v62 + 8) + 8) + 32))(v63);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v66;
        v68 = *(v60 + 8);
        v68(v59, v61);
        sub_100007BAC((v0 + 256));
        v69 = sub_1000136BC(v65, v67, &v161);

        *(v64 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v54, v55, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v64, 0x16u);
        sub_100007BAC(v149);

        sub_10000B3A8(v155, &unk_10169BB50, &unk_101395760);
        v68(v159, v61);
      }

      else
      {
        v102 = *(v0 + 648);
        v103 = *(v0 + 616);
        v104 = *(v0 + 608);
        v105 = *(v0 + 592);
        v106 = *(v0 + 744);

        sub_10000B3A8(v105, &unk_10169BB50, &unk_101395760);
        (*(v103 + 8))(v102, v104);
        sub_100007BAC((v0 + 256));
      }

      v39 = (v0 + 136);
      goto LABEL_38;
    }

    v96 = *(v0 + 512);
    v97 = 1;
    while (v97 < _swiftEmptyArrayStorage[2])
    {
      v98 = *(v0 + 552);
      sub_100A1B358(v42 + *(*(v0 + 520) + 72) * v97, *(v0 + 528), type metadata accessor for ObservedAdvertisement);
      v99 = *(v96 + 44);
      if (static Date.< infix(_:_:)())
      {
        v100 = *(v0 + 552);
        v101 = *(v0 + 528);
        sub_100A1B3C0(v100, type metadata accessor for ObservedAdvertisement);
        sub_100A18C9C(v101, v100, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
      }

      if (v40 == ++v97)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v10 = 0;
LABEL_12:
  *(v0 + 880) = v10;
  *(v0 + 872) = v9;
  v31 = *(v0 + 840);
  v32 = *(v0 + 824);
  v33 = *(v0 + 816);
  v34 = *(v0 + 776);
  v35 = *(v0 + 640);
  v36 = *(v0 + 632);
  v37 = *(v0 + 608);
  (*(v0 + 832))(v35, *(v3 + 48) + *(*(v0 + 616) + 72) * (__clz(__rbit64(v9)) | (v10 << 6)), v37);
  v33(v36, v35, v37);

  return _swift_task_switch(sub_100A107E4, v34, 0);
}

uint64_t sub_100A107E4()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 776);
  v5 = *(v0 + 656);
  v6 = *(v0 + 624);
  v7 = *(v0 + 608);
  v8 = (*(v0 + 952) + 24) & ~*(v0 + 952);
  (*(v0 + 832))(v5, *(v0 + 632), v7);
  v9 = swift_allocObject();
  *(v0 + 888) = v9;
  *(v9 + 16) = v4;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 896) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_100A10954;

  return unsafeBlocking<A>(context:_:)(v0 + 216, 0xD000000000000010, 0x800000010134A8C0, sub_100A18C10, v9, v12);
}

uint64_t sub_100A10954()
{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 888);
  v4 = *v0;

  return _swift_task_switch(sub_100A10A6C, 0, 0);
}

uint64_t sub_100A10A6C()
{
  v166 = v0;
  if (!*(v0 + 240))
  {
    v4 = *(v0 + 488);
    v7 = *(v0 + 496);
    v5 = *(v0 + 480);
    (*(*(v0 + 616) + 8))(*(v0 + 632), *(v0 + 608));
    sub_10000B3A8(v0 + 216, &qword_101696920, &unk_10138B200);
    v9 = *(v7 + 56);
    LODWORD(v7) = v7 + 56;
    v9(v5, 1, 1, v4);
    goto LABEL_5;
  }

  v4 = *(v0 + 488);
  v7 = *(v0 + 496);
  v5 = *(v0 + 480);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v6 = swift_dynamicCast();
  (*(v7 + 56))(v5, v6 ^ 1u, 1, v4);
  v8 = *(v7 + 48);
  LODWORD(v7) = v7 + 48;
  if (v8(v5, 1, v4) == 1)
  {
    (*(*(v0 + 616) + 8))(*(v0 + 632), *(v0 + 608));
LABEL_5:
    sub_10000B3A8(*(v0 + 480), &unk_1016A9A20, &qword_10138B280);
    goto LABEL_6;
  }

  v22 = *(v0 + 504);
  v23 = *(v0 + 488);
  v25 = *(v0 + 464);
  v24 = *(v0 + 472);
  sub_100A18C9C(*(v0 + 480), v22, type metadata accessor for OwnedBeaconRecord);
  sub_100A1B358(v22 + *(v23 + 24), v24, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v26 = *(v0 + 616);
    v27 = *(v0 + 608);
    v28 = *(v0 + 472);
    v7 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v29 = *(v28 + 8 + *(v7 + 48));

    v30 = *(v28 + 8 + *(v7 + 64));

    v31 = *(v28 + 8 + *(v7 + 80));

    LODWORD(v7) = *(v28 + *(v7 + 96));
    v32 = *(v26 + 8);
    *(v0 + 904) = v32;
    *(v0 + 912) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v28, v27);
    if (v7)
    {
      if (v7 != 1)
      {
        v5 = _swiftEmptyArrayStorage;
LABEL_46:
        v86 = *(v0 + 840);
        (*(v0 + 832))(*(v0 + 456) + *(*(v0 + 448) + 20), *(v0 + 504) + *(*(v0 + 488) + 20), *(v0 + 608));
        v87 = getuid();
        sub_1000294F0(v87);
        v88 = *(v5 + 2);
        sub_100A18C28();
        *(v0 + 384) = Set.init(minimumCapacity:)();
        v89 = *(v5 + 2);
        if (v89)
        {
          v90 = (v5 + 35);
          do
          {
            v91 = *(v90 - 3);
            v92 = *(v90 - 2);
            v93 = *(v90 - 1);
            v94 = *v90;
            v90 += 4;
            if (v94)
            {
              v95 = 0x1000000;
            }

            else
            {
              v95 = 0;
            }

            if (v93)
            {
              v96 = 0x10000;
            }

            else
            {
              v96 = 0;
            }

            if (v92)
            {
              v97 = 256;
            }

            else
            {
              v97 = 0;
            }

            sub_100DEBFE8(&v165, v97 | v91 | v96 | v95);
            --v89;
          }

          while (v89);
        }

        v17 = *(v0 + 744);

        *(v0 + 920) = *(v0 + 384);
        v21 = sub_100A11A04;
LABEL_13:

        return _swift_task_switch(v21, v17, 0);
      }

      LOBYTE(v1) = 8;
    }

    else
    {
      LOBYTE(v1) = 1;
    }

    LOBYTE(v2) = v7 != 0;
    v5 = sub_100A5C994(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v5 + 2);
    v10 = *(v5 + 3);
    v4 = v3 + 1;
    if (v3 >= v10 >> 1)
    {
LABEL_72:
      v5 = sub_100A5C994((v10 > 1), v4, 1, v5);
    }

    *(v5 + 2) = v4;
    v81 = &v5[4 * v3];
    v81[32] = v1;
    v81[33] = v7 == 0;
    v81[34] = 0;
    v81[35] = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100A5C994(0, *(v5 + 2) + 1, 1, v5);
    }

    v83 = *(v5 + 2);
    v82 = *(v5 + 3);
    if (v83 >= v82 >> 1)
    {
      v5 = sub_100A5C994((v82 > 1), v83 + 1, 1, v5);
    }

    *(v5 + 2) = v83 + 1;
    *&v5[4 * v83 + 32] = 0;
    goto LABEL_46;
  }

  v4 = *(v0 + 632);
  v1 = *(v0 + 616);
  v5 = *(v0 + 608);
  v7 = *(v0 + 472);
  sub_100A1B3C0(*(v0 + 504), type metadata accessor for OwnedBeaconRecord);
  v36 = *(v1 + 8);
  LOBYTE(v1) = v1 + 8;
  v36(v4, v5);
  sub_100A1B3C0(v7, type metadata accessor for StableIdentifier);
LABEL_6:
  v10 = *(v0 + 880);
  v11 = (*(v0 + 872) - 1) & *(v0 + 872);
  if (v11)
  {
    v12 = *(v0 + 864);
LABEL_12:
    *(v0 + 880) = v10;
    *(v0 + 872) = v11;
    v14 = *(v0 + 840);
    v15 = *(v0 + 824);
    v16 = *(v0 + 816);
    v17 = *(v0 + 776);
    v18 = *(v0 + 640);
    v19 = *(v0 + 632);
    v20 = *(v0 + 608);
    (*(v0 + 832))(v18, *(v12 + 48) + *(*(v0 + 616) + 72) * (__clz(__rbit64(v11)) | (v10 << 6)), v20);
    v16(v19, v18, v20);
    v21 = sub_100A107E4;
    goto LABEL_13;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v13 >= (((1 << *(v0 + 956)) + 63) >> 6))
    {
      break;
    }

    v12 = *(v0 + 864);
    v11 = *(v12 + 8 * v13 + 56);
    ++v10;
    if (v11)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  v1 = *(v0 + 944);
  v33 = *(v0 + 864);

  v2 = *(v1 + 16);
  if (v2)
  {
    v34 = *(*(v0 + 520) + 80);
    v4 = *(v0 + 944) + ((v34 + 32) & ~v34);
    sub_100A1B358(v4, *(v0 + 552), type metadata accessor for ObservedAdvertisement);
    if (v2 == 1)
    {
LABEL_22:
      sub_100A18C9C(*(v0 + 552), *(v0 + 592), type metadata accessor for ObservedAdvertisement);
      v35 = 0;
      goto LABEL_25;
    }

    v3 = *(v0 + 512);
    v84 = 1;
    while (1)
    {
      v10 = *(v1 + 16);
      if (v84 >= v10)
      {
        break;
      }

      v7 = *(v0 + 552);
      v5 = *(v0 + 528);
      sub_100A1B358(v4 + *(*(v0 + 520) + 72) * v84, v5, type metadata accessor for ObservedAdvertisement);
      v85 = *(v3 + 44);
      if (static Date.< infix(_:_:)())
      {
        v5 = *(v0 + 552);
        v7 = *(v0 + 528);
        sub_100A1B3C0(v5, type metadata accessor for ObservedAdvertisement);
        sub_100A18C9C(v7, v5, type metadata accessor for ObservedAdvertisement);
      }

      else
      {
        sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
      }

      if (v2 == ++v84)
      {
        goto LABEL_22;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v35 = 1;
LABEL_25:
  v37 = *(v0 + 944);
  v38 = *(v0 + 592);
  v39 = *(v0 + 560);
  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  (*(v40 + 56))(v38, v35, 1, v41);

  sub_1000D2A70(v38, v39, &unk_10169BB50, &unk_101395760);
  v42 = (*(v40 + 48))(v39, 1, v41);
  v43 = *(v0 + 808);
  v44 = *(v0 + 560);
  if (v42 == 1)
  {
    v45 = *(v0 + 808);

    sub_10000B3A8(v44, &unk_10169BB50, &unk_101395760);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 256);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 776);
    v51 = *(v0 + 744);
    if (v49)
    {
      v52 = *(v0 + 656);
      v156 = *(v0 + 744);
      v162 = *(v0 + 648);
      v53 = *(v0 + 616);
      v54 = *(v0 + 608);
      v159 = *(v0 + 592);
      v56 = *(v0 + 392);
      v55 = *(v0 + 400);
      v57 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v165 = v153;
      *v57 = 141558275;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2081;
      sub_1000035D0((v0 + 256), *(v0 + 280));
      (*(*(*(v55 + 8) + 8) + 32))(v56);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v53 + 8);
      v61(v52, v54);
      sub_100007BAC((v0 + 256));
      v62 = sub_1000136BC(v58, v60, &v165);

      *(v57 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v47, v48, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v57, 0x16u);
      sub_100007BAC(v153);

      sub_10000B3A8(v159, &unk_10169BB50, &unk_101395760);
      v61(v162, v54);
LABEL_66:
      v163 = 1;
      goto LABEL_67;
    }

    v98 = *(v0 + 648);
    v99 = *(v0 + 616);
    v100 = *(v0 + 608);
    v101 = *(v0 + 592);
    v102 = *(v0 + 744);

    sub_10000B3A8(v101, &unk_10169BB50, &unk_101395760);
    (*(v99 + 8))(v98, v100);
    v103 = (v0 + 256);
    goto LABEL_65;
  }

  v64 = *(v0 + 432);
  v63 = *(v0 + 440);
  v66 = *(v0 + 416);
  v65 = *(v0 + 424);
  v67 = *(v0 + 408);
  (*(v66 + 16))(v64, v44 + *(*(v0 + 512) + 44), v67);
  sub_100A1B3C0(v44, type metadata accessor for ObservedAdvertisement);
  (*(v66 + 32))(v63, v64, v67);
  static Date.trustedNow.getter(v65);
  Date.timeIntervalSince(_:)();
  v69 = v68;
  v70 = *(v66 + 8);
  v70(v65, v67);
  sub_101074970(v43);
  v72 = v71;

  if (v72 <= v69)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_1000076D4(v104, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 296);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    v107 = os_log_type_enabled(v105, v106);
    v164 = *(v0 + 776);
    v108 = *(v0 + 744);
    if (v107)
    {
      log = v105;
      v109 = *(v0 + 656);
      v110 = *(v0 + 616);
      v111 = *(v0 + 608);
      v157 = *(v0 + 592);
      v160 = *(v0 + 648);
      v151 = *(v0 + 408);
      v154 = *(v0 + 440);
      v148 = v106;
      v113 = *(v0 + 392);
      v112 = *(v0 + 400);
      v114 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v165 = v146;
      *v114 = 141558275;
      *(v114 + 4) = 1752392040;
      *(v114 + 12) = 2081;
      sub_1000035D0((v0 + 296), *(v0 + 320));
      (*(*(*(v112 + 8) + 8) + 32))(v113);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v116;
      v118 = *(v110 + 8);
      v118(v109, v111);
      sub_100007BAC((v0 + 296));
      v119 = sub_1000136BC(v115, v117, &v165);

      *(v114 + 14) = v119;
      _os_log_impl(&_mh_execute_header, log, v148, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v114, 0x16u);
      sub_100007BAC(v146);

      v70(v154, v151);
      sub_10000B3A8(v157, &unk_10169BB50, &unk_101395760);
      v118(v160, v111);
      goto LABEL_66;
    }

    v120 = *(v0 + 648);
    v121 = *(v0 + 616);
    v122 = *(v0 + 608);
    v123 = *(v0 + 592);
    v124 = *(v0 + 440);
    v125 = *(v0 + 408);
    v126 = *(v0 + 744);

    v70(v124, v125);
    sub_10000B3A8(v123, &unk_10169BB50, &unk_101395760);
    (*(v121 + 8))(v120, v122);
    v103 = (v0 + 296);
LABEL_65:
    sub_100007BAC(v103);
    goto LABEL_66;
  }

  v73 = *(v0 + 776);
  v74 = *(v0 + 744);
  v75 = *(v0 + 648);
  v76 = *(v0 + 616);
  v77 = *(v0 + 608);
  v78 = *(v0 + 592);
  v79 = *(v0 + 440);
  v80 = *(v0 + 408);

  v70(v79, v80);
  sub_10000B3A8(v78, &unk_10169BB50, &unk_101395760);
  (*(v76 + 8))(v75, v77);
  v163 = 0;
LABEL_67:
  sub_100007BAC((v0 + 136));
  v127 = *(v0 + 688);
  v128 = *(v0 + 680);
  v129 = *(v0 + 656);
  v130 = *(v0 + 648);
  v131 = *(v0 + 640);
  v132 = *(v0 + 632);
  v133 = *(v0 + 600);
  v134 = *(v0 + 592);
  v135 = *(v0 + 584);
  v138 = *(v0 + 576);
  v139 = *(v0 + 568);
  v140 = *(v0 + 560);
  v141 = *(v0 + 552);
  v142 = *(v0 + 544);
  v143 = *(v0 + 536);
  loga = *(v0 + 528);
  v147 = *(v0 + 504);
  v149 = *(v0 + 480);
  v150 = *(v0 + 472);
  v152 = *(v0 + 456);
  v155 = *(v0 + 440);
  v158 = *(v0 + 432);
  v161 = *(v0 + 424);
  sub_100007BAC((v0 + 16));

  v136 = *(v0 + 8);

  return v136(v163);
}

uint64_t sub_100A11A04()
{
  v1 = v0[117];
  v2 = v0[93];
  sub_1010CFE2C(v0[57], v0[115], v0[72]);
  v0[116] = v1;
  v3 = v0[115];
  sub_100A1B3C0(v0[57], type metadata accessor for BeaconIdentifier);

  if (v1)
  {
    v4 = sub_100A12878;
  }

  else
  {
    v4 = sub_100A11AC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100A11AC4()
{
  v161 = v0;
  sub_1000D2AD8(*(v0 + 576), *(v0 + 584), &unk_10169BB50, &unk_101395760);
  v1 = *(v0 + 928);
  v2 = *(v0 + 568);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  sub_1000D2A70(*(v0 + 584), v2, &unk_10169BB50, &unk_101395760);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 912);
    v6 = *(v0 + 904);
    v7 = *(v0 + 632);
    v8 = *(v0 + 608);
    v9 = *(v0 + 568);
    v10 = *(v0 + 504);
    sub_10000B3A8(*(v0 + 584), &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v10, type metadata accessor for OwnedBeaconRecord);
    v6(v7, v8);
    sub_10000B3A8(v9, &unk_10169BB50, &unk_101395760);
    v11 = *(v0 + 944);
  }

  else
  {
    v12 = *(v0 + 944);
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);
    sub_100A18C9C(*(v0 + 568), v13, type metadata accessor for ObservedAdvertisement);
    sub_100A1B358(v13, v14, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 944);
    v156 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_46:
      v11 = sub_100A5C3FC(0, v11[2] + 1, 1, v11);
    }

    v17 = v11[2];
    v16 = v11[3];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_100A5C3FC(v16 > 1, v17 + 1, 1, v11);
    }

    v18 = *(v0 + 912);
    v19 = *(v0 + 904);
    v20 = *(v0 + 632);
    v21 = *(v0 + 608);
    v22 = *(v0 + 584);
    v149 = *(v0 + 536);
    v23 = *(v0 + 520);
    v24 = *(v0 + 504);
    sub_100A1B3C0(*(v0 + 544), type metadata accessor for ObservedAdvertisement);
    sub_10000B3A8(v22, &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v24, type metadata accessor for OwnedBeaconRecord);
    v19(v20, v21);
    v11[2] = v17 + 1;
    sub_100A18C9C(v149, v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, type metadata accessor for ObservedAdvertisement);
    v1 = v156;
  }

  v25 = *(v0 + 880);
  v26 = *(v0 + 872);
  *(v0 + 944) = v11;
  *(v0 + 936) = v1;
  v27 = (v26 - 1) & v26;
  if (!v27)
  {
    while (1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v28 = *(v0 + 864);
      if (v29 >= (((1 << *(v0 + 956)) + 63) >> 6))
      {
        break;
      }

      v27 = *(v28 + 8 * v29 + 56);
      ++v25;
      if (v27)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    v37 = v11[2];
    if (v37)
    {
      v38 = *(*(v0 + 520) + 80);
      v39 = *(v0 + 944) + ((v38 + 32) & ~v38);
      sub_100A1B358(v39, *(v0 + 552), type metadata accessor for ObservedAdvertisement);
      if (v37 == 1)
      {
LABEL_18:
        sub_100A18C9C(*(v0 + 552), *(v0 + 592), type metadata accessor for ObservedAdvertisement);
        v40 = 0;
        goto LABEL_20;
      }

      v85 = *(v0 + 512);
      v86 = 1;
      while (v86 < v11[2])
      {
        v87 = *(v0 + 552);
        sub_100A1B358(v39 + *(*(v0 + 520) + 72) * v86, *(v0 + 528), type metadata accessor for ObservedAdvertisement);
        v88 = *(v85 + 44);
        if (static Date.< infix(_:_:)())
        {
          v89 = *(v0 + 552);
          v90 = *(v0 + 528);
          sub_100A1B3C0(v89, type metadata accessor for ObservedAdvertisement);
          sub_100A18C9C(v90, v89, type metadata accessor for ObservedAdvertisement);
        }

        else
        {
          sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
        }

        if (v37 == ++v86)
        {
          goto LABEL_18;
        }
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v40 = 1;
LABEL_20:
    v41 = *(v0 + 944);
    v42 = *(v0 + 592);
    v43 = *(v0 + 560);
    v44 = *(v0 + 520);
    v45 = *(v0 + 512);
    (*(v44 + 56))(v42, v40, 1, v45);

    sub_1000D2A70(v42, v43, &unk_10169BB50, &unk_101395760);
    v46 = (*(v44 + 48))(v43, 1, v45);
    v47 = *(v0 + 808);
    v48 = *(v0 + 560);
    if (v46 == 1)
    {
      v49 = *(v0 + 808);

      sub_10000B3A8(v48, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000076D4(v50, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 776);
      v55 = *(v0 + 744);
      if (v53)
      {
        v56 = *(v0 + 656);
        v150 = *(v0 + 744);
        v157 = *(v0 + 648);
        v57 = *(v0 + 616);
        v58 = *(v0 + 608);
        v153 = *(v0 + 592);
        v60 = *(v0 + 392);
        v59 = *(v0 + 400);
        v61 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v160 = v146;
        *v61 = 141558275;
        *(v61 + 4) = 1752392040;
        *(v61 + 12) = 2081;
        sub_1000035D0((v0 + 256), *(v0 + 280));
        (*(*(*(v59 + 8) + 8) + 32))(v60);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        v65 = *(v57 + 8);
        v65(v56, v58);
        sub_100007BAC((v0 + 256));
        v66 = sub_1000136BC(v62, v64, &v160);

        *(v61 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v51, v52, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v61, 0x16u);
        sub_100007BAC(v146);

        sub_10000B3A8(v153, &unk_10169BB50, &unk_101395760);
        v65(v157, v58);
LABEL_40:
        v158 = 1;
        goto LABEL_41;
      }

      v91 = *(v0 + 648);
      v92 = *(v0 + 616);
      v93 = *(v0 + 608);
      v94 = *(v0 + 592);
      v95 = *(v0 + 744);

      sub_10000B3A8(v94, &unk_10169BB50, &unk_101395760);
      (*(v92 + 8))(v91, v93);
      v96 = (v0 + 256);
    }

    else
    {
      v68 = *(v0 + 432);
      v67 = *(v0 + 440);
      v70 = *(v0 + 416);
      v69 = *(v0 + 424);
      v71 = *(v0 + 408);
      (*(v70 + 16))(v68, v48 + *(*(v0 + 512) + 44), v71);
      sub_100A1B3C0(v48, type metadata accessor for ObservedAdvertisement);
      (*(v70 + 32))(v67, v68, v71);
      static Date.trustedNow.getter(v69);
      Date.timeIntervalSince(_:)();
      v73 = v72;
      v74 = *(v70 + 8);
      v74(v69, v71);
      sub_101074970(v47);
      v76 = v75;

      if (v76 > v73)
      {
        v77 = *(v0 + 776);
        v78 = *(v0 + 744);
        v79 = *(v0 + 648);
        v80 = *(v0 + 616);
        v81 = *(v0 + 608);
        v82 = *(v0 + 592);
        v83 = *(v0 + 440);
        v84 = *(v0 + 408);

        v74(v83, v84);
        sub_10000B3A8(v82, &unk_10169BB50, &unk_101395760);
        (*(v80 + 8))(v79, v81);
        v158 = 0;
LABEL_41:
        sub_100007BAC((v0 + 136));
        v120 = *(v0 + 688);
        v121 = *(v0 + 680);
        v122 = *(v0 + 656);
        v123 = *(v0 + 648);
        v124 = *(v0 + 640);
        v125 = *(v0 + 632);
        v126 = *(v0 + 600);
        v127 = *(v0 + 592);
        v128 = *(v0 + 584);
        v131 = *(v0 + 576);
        v132 = *(v0 + 568);
        v133 = *(v0 + 560);
        v134 = *(v0 + 552);
        v135 = *(v0 + 544);
        v136 = *(v0 + 536);
        loga = *(v0 + 528);
        v140 = *(v0 + 504);
        v142 = *(v0 + 480);
        v143 = *(v0 + 472);
        v145 = *(v0 + 456);
        v148 = *(v0 + 440);
        v152 = *(v0 + 432);
        v155 = *(v0 + 424);
        sub_100007BAC((v0 + 16));

        v129 = *(v0 + 8);

        return v129(v158);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for Logger();
      sub_1000076D4(v97, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 296);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      v100 = os_log_type_enabled(v98, v99);
      v159 = *(v0 + 776);
      v101 = *(v0 + 744);
      if (v100)
      {
        log = v98;
        v102 = *(v0 + 656);
        v103 = *(v0 + 616);
        v104 = *(v0 + 608);
        v151 = *(v0 + 592);
        v154 = *(v0 + 648);
        v144 = *(v0 + 408);
        v147 = *(v0 + 440);
        v141 = v99;
        v106 = *(v0 + 392);
        v105 = *(v0 + 400);
        v107 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v160 = v139;
        *v107 = 141558275;
        *(v107 + 4) = 1752392040;
        *(v107 + 12) = 2081;
        sub_1000035D0((v0 + 296), *(v0 + 320));
        (*(*(*(v105 + 8) + 8) + 32))(v106);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = v109;
        v111 = *(v103 + 8);
        v111(v102, v104);
        sub_100007BAC((v0 + 296));
        v112 = sub_1000136BC(v108, v110, &v160);

        *(v107 + 14) = v112;
        _os_log_impl(&_mh_execute_header, log, v141, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v107, 0x16u);
        sub_100007BAC(v139);

        v74(v147, v144);
        sub_10000B3A8(v151, &unk_10169BB50, &unk_101395760);
        v111(v154, v104);
        goto LABEL_40;
      }

      v113 = *(v0 + 648);
      v114 = *(v0 + 616);
      v115 = *(v0 + 608);
      v116 = *(v0 + 592);
      v117 = *(v0 + 440);
      v118 = *(v0 + 408);
      v119 = *(v0 + 744);

      v74(v117, v118);
      sub_10000B3A8(v116, &unk_10169BB50, &unk_101395760);
      (*(v114 + 8))(v113, v115);
      v96 = (v0 + 296);
    }

    sub_100007BAC(v96);
    goto LABEL_40;
  }

  v28 = *(v0 + 864);
LABEL_13:
  *(v0 + 880) = v25;
  *(v0 + 872) = v27;
  v30 = *(v0 + 840);
  v31 = *(v0 + 824);
  v32 = *(v0 + 816);
  v33 = *(v0 + 776);
  v34 = *(v0 + 640);
  v35 = *(v0 + 632);
  v36 = *(v0 + 608);
  (*(v0 + 832))(v34, *(v28 + 48) + *(*(v0 + 616) + 72) * (__clz(__rbit64(v27)) | (v25 << 6)), v36);
  v32(v35, v34, v36);

  return _swift_task_switch(sub_100A107E4, v33, 0);
}

uint64_t sub_100A12878()
{
  v169 = v0;
  if (qword_101694B70 != -1)
  {
LABEL_51:
    swift_once();
  }

  v1 = *(v0 + 928);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B780);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 928);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch latest beacon observation. Error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(*(v0 + 520) + 56))(*(v0 + 584), 1, 1, *(v0 + 512));
  v10 = *(v0 + 568);
  v11 = *(v0 + 520);
  v12 = *(v0 + 512);
  sub_1000D2A70(*(v0 + 584), v10, &unk_10169BB50, &unk_101395760);
  if ((*(v11 + 48))(v10, 1, v12) == 1)
  {
    v13 = *(v0 + 912);
    v14 = *(v0 + 904);
    v15 = *(v0 + 632);
    v16 = *(v0 + 608);
    v17 = *(v0 + 568);
    v18 = *(v0 + 504);
    sub_10000B3A8(*(v0 + 584), &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v18, type metadata accessor for OwnedBeaconRecord);
    v14(v15, v16);
    sub_10000B3A8(v17, &unk_10169BB50, &unk_101395760);
    v19 = *(v0 + 944);
  }

  else
  {
    v20 = *(v0 + 944);
    v21 = *(v0 + 544);
    v22 = *(v0 + 536);
    sub_100A18C9C(*(v0 + 568), v21, type metadata accessor for ObservedAdvertisement);
    sub_100A1B358(v21, v22, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v0 + 944);
    v164 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_100A5C3FC(0, v19[2] + 1, 1, v19);
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      v19 = sub_100A5C3FC(v24 > 1, v25 + 1, 1, v19);
    }

    v26 = *(v0 + 912);
    v27 = *(v0 + 904);
    v28 = *(v0 + 632);
    v29 = *(v0 + 608);
    v30 = *(v0 + 584);
    v157 = *(v0 + 536);
    v31 = *(v0 + 520);
    v32 = *(v0 + 504);
    sub_100A1B3C0(*(v0 + 544), type metadata accessor for ObservedAdvertisement);
    sub_10000B3A8(v30, &unk_10169BB50, &unk_101395760);
    sub_100A1B3C0(v32, type metadata accessor for OwnedBeaconRecord);
    v27(v28, v29);
    v19[2] = v25 + 1;
    sub_100A18C9C(v157, v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, type metadata accessor for ObservedAdvertisement);
    v2 = v164;
  }

  v33 = *(v0 + 880);
  v34 = *(v0 + 872);
  *(v0 + 944) = v19;
  *(v0 + 936) = 0;
  v35 = (v34 - 1) & v34;
  if (!v35)
  {
    while (1)
    {
      v37 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      v36 = *(v0 + 864);
      if (v37 >= (((1 << *(v0 + 956)) + 63) >> 6))
      {
        break;
      }

      v35 = *(v36 + 8 * v37 + 56);
      ++v33;
      if (v35)
      {
        v33 = v37;
        goto LABEL_18;
      }
    }

    v45 = v19[2];
    if (v45)
    {
      v46 = *(*(v0 + 520) + 80);
      v47 = *(v0 + 944) + ((v46 + 32) & ~v46);
      sub_100A1B358(v47, *(v0 + 552), type metadata accessor for ObservedAdvertisement);
      if (v45 == 1)
      {
LABEL_23:
        sub_100A18C9C(*(v0 + 552), *(v0 + 592), type metadata accessor for ObservedAdvertisement);
        v48 = 0;
        goto LABEL_25;
      }

      v93 = *(v0 + 512);
      v94 = 1;
      while (v94 < v19[2])
      {
        v95 = *(v0 + 552);
        sub_100A1B358(v47 + *(*(v0 + 520) + 72) * v94, *(v0 + 528), type metadata accessor for ObservedAdvertisement);
        v96 = *(v93 + 44);
        if (static Date.< infix(_:_:)())
        {
          v97 = *(v0 + 552);
          v98 = *(v0 + 528);
          sub_100A1B3C0(v97, type metadata accessor for ObservedAdvertisement);
          sub_100A18C9C(v98, v97, type metadata accessor for ObservedAdvertisement);
        }

        else
        {
          sub_100A1B3C0(*(v0 + 528), type metadata accessor for ObservedAdvertisement);
        }

        if (v45 == ++v94)
        {
          goto LABEL_23;
        }
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v48 = 1;
LABEL_25:
    v49 = *(v0 + 944);
    v50 = *(v0 + 592);
    v51 = *(v0 + 560);
    v52 = *(v0 + 520);
    v53 = *(v0 + 512);
    (*(v52 + 56))(v50, v48, 1, v53);

    sub_1000D2A70(v50, v51, &unk_10169BB50, &unk_101395760);
    v54 = (*(v52 + 48))(v51, 1, v53);
    v55 = *(v0 + 808);
    v56 = *(v0 + 560);
    if (v54 == 1)
    {
      v57 = *(v0 + 808);

      sub_10000B3A8(v56, &unk_10169BB50, &unk_101395760);
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v2, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 256);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 776);
      v62 = *(v0 + 744);
      if (v60)
      {
        v63 = *(v0 + 656);
        v158 = *(v0 + 744);
        v165 = *(v0 + 648);
        v64 = *(v0 + 616);
        v65 = *(v0 + 608);
        v161 = *(v0 + 592);
        v67 = *(v0 + 392);
        v66 = *(v0 + 400);
        v68 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v168 = v154;
        *v68 = 141558275;
        *(v68 + 4) = 1752392040;
        *(v68 + 12) = 2081;
        sub_1000035D0((v0 + 256), *(v0 + 280));
        (*(*(*(v66 + 8) + 8) + 32))(v67);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        v72 = *(v64 + 8);
        v72(v63, v65);
        sub_100007BAC((v0 + 256));
        v73 = sub_1000136BC(v69, v71, &v168);

        *(v68 + 14) = v73;
        _os_log_impl(&_mh_execute_header, v58, v59, "Separation monitoring is paused for beacon: %{private,mask.hash}s without observation.", v68, 0x16u);
        sub_100007BAC(v154);

        sub_10000B3A8(v161, &unk_10169BB50, &unk_101395760);
        v72(v165, v65);
LABEL_45:
        v166 = 1;
        goto LABEL_46;
      }

      v99 = *(v0 + 648);
      v100 = *(v0 + 616);
      v101 = *(v0 + 608);
      v102 = *(v0 + 592);
      v103 = *(v0 + 744);

      sub_10000B3A8(v102, &unk_10169BB50, &unk_101395760);
      (*(v100 + 8))(v99, v101);
      v104 = (v0 + 256);
    }

    else
    {
      v75 = *(v0 + 432);
      v74 = *(v0 + 440);
      v77 = *(v0 + 416);
      v76 = *(v0 + 424);
      v78 = *(v0 + 408);
      (*(v77 + 16))(v75, v56 + *(*(v0 + 512) + 44), v78);
      sub_100A1B3C0(v56, type metadata accessor for ObservedAdvertisement);
      (*(v77 + 32))(v74, v75, v78);
      static Date.trustedNow.getter(v76);
      Date.timeIntervalSince(_:)();
      v80 = v79;
      v81 = *(v77 + 8);
      v81(v76, v78);
      sub_101074970(v55);
      v83 = v82;

      if (v83 > v80)
      {
        v84 = v81;
        v85 = *(v0 + 776);
        v86 = *(v0 + 744);
        v87 = *(v0 + 648);
        v88 = *(v0 + 616);
        v89 = *(v0 + 608);
        v90 = *(v0 + 592);
        v91 = *(v0 + 440);
        v92 = *(v0 + 408);

        v84(v91, v92);
        sub_10000B3A8(v90, &unk_10169BB50, &unk_101395760);
        (*(v88 + 8))(v87, v89);
        v166 = 0;
LABEL_46:
        sub_100007BAC((v0 + 136));
        v128 = *(v0 + 688);
        v129 = *(v0 + 680);
        v130 = *(v0 + 656);
        v131 = *(v0 + 648);
        v132 = *(v0 + 640);
        v133 = *(v0 + 632);
        v134 = *(v0 + 600);
        v135 = *(v0 + 592);
        v136 = *(v0 + 584);
        v139 = *(v0 + 576);
        v140 = *(v0 + 568);
        v141 = *(v0 + 560);
        v142 = *(v0 + 552);
        v143 = *(v0 + 544);
        v144 = *(v0 + 536);
        v146 = *(v0 + 528);
        v148 = *(v0 + 504);
        v149 = *(v0 + 480);
        v151 = *(v0 + 472);
        v153 = *(v0 + 456);
        v156 = *(v0 + 440);
        v160 = *(v0 + 432);
        v163 = *(v0 + 424);
        sub_100007BAC((v0 + 16));

        v137 = *(v0 + 8);

        return v137(v166);
      }

      v162 = v81;
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v2, qword_10177B780);
      sub_10001F280(v0 + 16, v0 + 296);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      v107 = os_log_type_enabled(v105, v106);
      v108 = *(v0 + 776);
      v109 = *(v0 + 744);
      if (v107)
      {
        v155 = *(v0 + 776);
        v110 = *(v0 + 656);
        v167 = *(v0 + 648);
        v111 = *(v0 + 616);
        v112 = *(v0 + 608);
        v159 = *(v0 + 592);
        v150 = *(v0 + 408);
        v152 = *(v0 + 440);
        v145 = v106;
        v114 = *(v0 + 392);
        v113 = *(v0 + 400);
        v115 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v168 = v147;
        *v115 = 141558275;
        *(v115 + 4) = 1752392040;
        *(v115 + 12) = 2081;
        sub_1000035D0((v0 + 296), *(v0 + 320));
        (*(*(*(v113 + 8) + 8) + 32))(v114);
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v116 = dispatch thunk of CustomStringConvertible.description.getter();
        v118 = v117;
        v119 = *(v111 + 8);
        v119(v110, v112);
        sub_100007BAC((v0 + 296));
        v120 = sub_1000136BC(v116, v118, &v168);

        *(v115 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v105, v145, "Separation monitoring is paused for beacon: %{private,mask.hash}s", v115, 0x16u);
        sub_100007BAC(v147);

        v162(v152, v150);
        sub_10000B3A8(v159, &unk_10169BB50, &unk_101395760);
        v119(v167, v112);
        goto LABEL_45;
      }

      v121 = *(v0 + 648);
      v122 = *(v0 + 616);
      v123 = *(v0 + 608);
      v124 = *(v0 + 592);
      v125 = *(v0 + 440);
      v126 = *(v0 + 408);
      v127 = *(v0 + 744);

      v162(v125, v126);
      sub_10000B3A8(v124, &unk_10169BB50, &unk_101395760);
      (*(v122 + 8))(v121, v123);
      v104 = (v0 + 296);
    }

    sub_100007BAC(v104);
    goto LABEL_45;
  }

  v36 = *(v0 + 864);
LABEL_18:
  *(v0 + 880) = v33;
  *(v0 + 872) = v35;
  v38 = *(v0 + 840);
  v39 = *(v0 + 824);
  v40 = *(v0 + 816);
  v41 = *(v0 + 776);
  v42 = *(v0 + 640);
  v43 = *(v0 + 632);
  v44 = *(v0 + 608);
  (*(v0 + 832))(v42, *(v36 + 48) + *(*(v0 + 616) + 72) * (__clz(__rbit64(v35)) | (v33 << 6)), v44);
  v40(v43, v42, v44);

  return _swift_task_switch(sub_100A107E4, v41, 0);
}

uint64_t sub_100A13778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v6 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v3[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v8 = type metadata accessor for LeashRecord();
  v3[21] = v8;
  v9 = *(v8 - 8);
  v3[22] = v9;
  v10 = *(v9 + 64) + 15;
  v3[23] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v3[24] = v11;
  v12 = *(v11 - 8);
  v3[25] = v12;
  v13 = *(v12 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[5] = a2;
  v3[6] = a3;
  v3[27] = sub_1000280DC(v3 + 2);
  (*(*(a2 - 8) + 16))();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  v3[28] = v15;
  *v15 = v3;
  v15[1] = sub_100A13954;

  return daemon.getter();
}

uint64_t sub_100A13954(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  *(v3 + 232) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 240) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003F64(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003F64(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100A13B30;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A13B30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *v2;
  *(*v2 + 248) = a1;

  v6 = *(v3 + 232);
  if (v1)
  {

    v7 = sub_100A141C4;
  }

  else
  {

    v7 = sub_100A13C80;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100A13C80()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10177CEA0 + 24);

  AnyCurrentValuePublisher.value.getter();

  *(v0 + 273) = *(v0 + 272);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_100A13D88;
  v3 = *(v0 + 216);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);

  return sub_100A0D8D8(v3, v4, v5);
}

uint64_t sub_100A13D88(char a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 274) = a1;

  return _swift_task_switch(sub_100A13E88, 0, 0);
}

uint64_t sub_100A13E88()
{
  v26 = v0;
  if (*(v0 + 273) != 1 || *(v0 + 274) == 0)
  {
    v2 = *(v0 + 248);

    return _swift_task_switch(sub_100A14308, v2, 0);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B780);
    sub_10001F280(v0 + 16, v0 + 96);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 248);
    if (v6)
    {
      v8 = *(v0 + 200);
      v9 = *(v0 + 208);
      v10 = *(v0 + 192);
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v24 = *(v0 + 248);
      v13 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v13 = 136315651;
      *(v13 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v25);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      sub_1000035D0((v0 + 96), *(v0 + 120));
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v8 + 8))(v9, v10);
      sub_100007BAC((v0 + 96));
      v17 = sub_1000136BC(v14, v16, &v25);

      *(v13 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Separation monitoring is paused for %{private,mask.hash}s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v18 = *(v0 + 248);

      sub_100007BAC((v0 + 96));
    }

    v19 = *(v0 + 208);
    v20 = *(v0 + 184);
    v21 = *(v0 + 160);
    sub_100007BAC((v0 + 16));

    v22 = *(v0 + 8);

    return v22(5);
  }
}

uint64_t sub_100A141C4()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No beaconStoreActor.", v4, 2u);
  }

  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[20];
  sub_100007BAC(v0 + 2);

  v8 = v0[1];

  return v8(2);
}

uint64_t sub_100A14308()
{
  v1 = v0[31];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_100A143DC;
  v4 = v0[31];
  v6 = v0[19];
  v5 = v0[20];

  return unsafeBlocking<A>(context:_:)(v5, 0xD000000000000010, 0x800000010134A8C0, sub_1002FD8A8, v4, v6);
}

uint64_t sub_100A143DC()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100A144F4, 0, 0);
}

uint64_t sub_100A144F4()
{
  v46 = v0;
  v1 = v0[21];
  v2 = v0[20];
  if ((*(v0[22] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_1016B1500, &unk_1013C57F0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B780);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[31];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v45 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v45);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s No leash record!", v8, 0xCu);
      sub_100007BAC(v9);
    }

    goto LABEL_7;
  }

  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[24];
  v14 = v0[25];
  v15 = v0[23];
  v16 = v0[17];
  v17 = v0[18];
  sub_100A18C9C(v2, v15, type metadata accessor for LeashRecord);
  v18 = *(v15 + *(v1 + 24));
  v19 = *(*(v17 + 8) + 8);
  v20 = *(v19 + 32);
  v20(v16, v19);
  LOBYTE(v11) = sub_1005C8A30(v12, v18);
  v21 = *(v14 + 8);
  v21(v12, v13);
  if (v11)
  {
    v22 = v0[31];
    sub_100A1B3C0(v0[23], type metadata accessor for LeashRecord);

    v10 = 0;
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B780);
    sub_10001F280((v0 + 2), (v0 + 7));
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[31];
    if (!v26)
    {
      v39 = v0[23];
      v40 = v0[31];

      sub_100007BAC(v0 + 7);
      sub_100A1B3C0(v39, type metadata accessor for LeashRecord);
LABEL_7:
      v10 = 2;
      goto LABEL_14;
    }

    v28 = v0[26];
    v43 = v0[24];
    v44 = v0[23];
    v41 = v0[17];
    v29 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v29 = 136315651;
    *(v29 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101350670, &v45);
    *(v29 + 12) = 2160;
    *(v29 + 14) = 1752392040;
    *(v29 + 22) = 2081;
    sub_1000035D0(v0 + 7, v0[10]);
    v42 = v25;
    v20(v41, v19);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v21(v28, v43);
    sub_100007BAC(v0 + 7);
    v33 = sub_1000136BC(v30, v32, &v45);

    *(v29 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v24, v42, "%s Leash record does NOT contain %{private,mask.hash}s", v29, 0x20u);
    v10 = 2;
    swift_arrayDestroy();

    sub_100A1B3C0(v44, type metadata accessor for LeashRecord);
  }

LABEL_14:
  v34 = v0[26];
  v35 = v0[23];
  v36 = v0[20];
  sub_100007BAC(v0 + 2);

  v37 = v0[1];

  return v37(v10);
}

void sub_100A14A3C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v15[3] = My;
  v15[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v8 = sub_1000280DC(v15);
  (*(*(My - 8) + 104))(v8, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v15);
  if (My)
  {
    v9 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = sub_1001BE468;
    v11[4] = v6;
    v11[5] = a1;

    sub_1009C99E8(v12, sub_100A1B32C, v11, &unk_101642178, sub_100A18D54, &unk_101642190);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = v15[0];
    v14 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v14);
  }
}

void sub_100A14CC0(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v13[3] = My;
  v13[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v8 = sub_1000280DC(v13);
  (*(*(My - 8) + 104))(v8, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v13);
  if (My)
  {
    v9 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1001BE468;
    *(v10 + 24) = v6;

    sub_1009C99E8(a1, sub_100A1B798, v10, &unk_101641E30, sub_100A18748, &unk_101641E48);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v11 = v13[0];
    v12 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v12);
  }
}

void sub_100A14F08(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = type metadata accessor for SafeLocation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v18[3] = My;
  v18[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v12 = sub_1000280DC(v18);
  (*(*(My - 8) + 104))(v12, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v18);
  if (My)
  {
    sub_100EE5E10(a1, _swiftEmptyArrayStorage, v9);
    v13 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1001BE468;
    *(v14 + 24) = v10;

    sub_1009C9D88(v9, 0, sub_100A1B798, v14);

    sub_100A1B3C0(v9, type metadata accessor for SafeLocation);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    v17 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = v18[0];
    v16 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v16);
  }
}

void sub_100A151A4(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v13[3] = My;
  v13[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v8 = sub_1000280DC(v13);
  (*(*(My - 8) + 104))(v8, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v13);
  if (My)
  {
    v9 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1001BE468;
    *(v10 + 24) = v6;

    sub_1009CA164(a1, sub_100A1B798, v10);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v11 = v13[0];
    v12 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v12);
  }
}

void sub_100A153C8(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v36 = a1;
  v35 = type metadata accessor for UUID();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for SafeLocation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v34 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  My = type metadata accessor for Feature.FindMy();
  v38[3] = My;
  v38[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v22 = sub_1000280DC(v38);
  (*(*(My - 8) + 104))(v22, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a3);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v38);
  if ((My & 1) == 0)
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    v37 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v26 = v38[0];
    v27 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v27);
    goto LABEL_5;
  }

  v33 = v20;
  v23 = *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
  v24 = v36;
  v25 = [v36 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100AC09B4();
  (*(v5 + 8))(v8, v35);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_1016AFA10, &qword_1013CB000);
    type metadata accessor for SPSeparationMonitoringError(0);
    v37 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v26 = v38[0];
    v27 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v27);
LABEL_5:

    return;
  }

  sub_100A18C9C(v12, v19, type metadata accessor for SafeLocation);
  v28 = *&v19[*(v13 + 52)];
  v29 = v24;

  v30 = v34;
  sub_100EE5E10(v29, v28, v34);
  v31 = swift_allocObject();
  v32 = v33;
  *(v31 + 16) = sub_1001BE468;
  *(v31 + 24) = v32;

  sub_1009CA64C(v30, sub_100A1B798, v31);

  sub_100A1B3C0(v30, type metadata accessor for SafeLocation);
  sub_100A1B3C0(v19, type metadata accessor for SafeLocation);
}

void sub_100A15908(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  My = type metadata accessor for Feature.FindMy();
  v15[3] = My;
  v15[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v10 = sub_1000280DC(v15);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a4);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v15);
  if (My)
  {
    v11 = *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1001BE468;
    *(v12 + 24) = v8;

    sub_1009CAAD0(a1, a2, sub_100A1B798, v12, &unk_101642A10, sub_100A19E04, &unk_101642A28);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = v15[0];
    v14 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v14);
  }
}

void sub_100A15B60(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  My = type metadata accessor for Feature.FindMy();
  v15[3] = My;
  v15[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v10 = sub_1000280DC(v15);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a4);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v15);
  if (My)
  {
    v11 = *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1001BE468;
    *(v12 + 24) = v8;

    sub_1009CAAD0(a1, a2, sub_100A1B798, v12, &unk_101641DE0, sub_100A18730, &unk_101641DF8);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = v15[0];
    v14 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v14);
  }
}

uint64_t sub_100A15DB8(uint64_t a1, uint64_t a2)
{
  sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  type metadata accessor for BeaconManagerService();
  v3 = qword_1013D0D58[sub_1009D78A4()];
  v4 = *(a2 + 16);

  return v4(a2, v3);
}

void sub_100A15E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27[-1] - v6;
  My = type metadata accessor for Feature.FindMy();
  v27[3] = My;
  v27[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v9 = sub_1000280DC(v27);
  (*(*(My - 8) + 104))(v9, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v27);
  if (My)
  {
    v10 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = *v10;
    v13 = sub_1009C75D0(4, v7);
    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B780);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315138;
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      v19 = Array.description.getter();
      v21 = sub_1000136BC(v19, v20, v27);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Known safe locations: %s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    sub_10112A684(v13);

    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009CC8(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, isa, 0);
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    v26 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = v27[0];
    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009CC8(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
    v24 = Set._bridgeToObjectiveC()().super.isa;
    v25 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v24, v25);
  }
}

void sub_100A162A0(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v101 = type metadata accessor for UUID();
  v8 = *(v101 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v101);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v95 - v13;
  v15 = *(a1 + 216);
  if (!v15 || (v16 = *(v15 + 88), v17 = *(a1 + 216), , CurrentValueSubject.value.getter(), , v105 != 7))
  {
    if (qword_101694B70 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

  v98 = a2;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v18 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = sub_10107406C(v105);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {
      v90 = v98;
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_1000076D4(v91, qword_10177B780);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "BA service not enabled.", v94, 2u);
      }

      sub_1009CB040(_swiftEmptyArrayStorage, 0, v90, a3, a4);
      return;
    }
  }

  v37 = *(a1 + 280);
  sub_100ABD310(v14);
  v38 = type metadata accessor for LeashRecord();
  v39 = (*(*(v38 - 8) + 48))(v14, 1, v38);
  v96 = a3;
  if (v39 == 1)
  {
    sub_10000B3A8(v14, &qword_1016B1500, &unk_1013C57F0);
    v40 = _swiftEmptyArrayStorage;
  }

  else
  {
    v40 = *&v14[*(v38 + 24)];

    sub_100A1B3C0(v14, type metadata accessor for LeashRecord);
  }

  v97 = a4;
  v95 = v40;
  v49 = sub_100AA56A8(v40);
  a3 = v49[2];

  if (a3)
  {
    a4 = 0;
    a2 = (v49 + 4);
    v50 = _swiftEmptyArrayStorage;
    v100 = a3;
    while (a4 < v49[2])
    {
      sub_10001F280(a2, &v105);
      v51 = v106;
      v52 = v107;
      v53 = sub_1000035D0(&v105, v106);
      if (sub_100A05A00(v53, a1, v51, v52))
      {
        sub_10000A748(&v105, v102);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108[0] = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v50[2] + 1, 1);
          v50 = v108[0];
        }

        v55 = a1;
        v57 = v50[2];
        v56 = v50[3];
        if (v57 >= v56 >> 1)
        {
          sub_100025B1C((v56 > 1), v57 + 1, 1);
        }

        v58 = v103;
        v59 = v104;
        v60 = sub_10015049C(v102, v103);
        v61 = *(*(v58 - 8) + 64);
        __chkstk_darwin(v60);
        v63 = &v95 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v64 + 16))(v63);
        sub_1006252D4(v57, v63, v108, v58, v59);
        sub_100007BAC(v102);
        v50 = v108[0];
        a1 = v55;
        a3 = v100;
      }

      else
      {
        sub_100007BAC(&v105);
      }

      ++a4;
      a2 += 40;
      if (a3 == a4)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_9:
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B780);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = a2;
      v28 = a3;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v105 = v30;
      *v29 = 136315138;
      v31 = *(a1 + 216);
      if (v31)
      {
        v32 = *(v31 + 88);
        v33 = *(a1 + 216);

        CurrentValueSubject.value.getter();

        v34 = v102[0];
      }

      else
      {
        v34 = 8;
      }

      LOBYTE(v102[0]) = v34;
      sub_1000BC4D4(&qword_1016B1818, &qword_1013D0B60);
      v41 = String.init<A>(describing:)();
      v43 = sub_1000136BC(v41, v42, &v105);

      *(v29 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v25, v26, "Not a finder device for separation monitoring, reason: %s.", v29, 0xCu);
      sub_100007BAC(v30);

      a3 = v28;
      a2 = v27;
      v35 = *(a1 + 216);
      if (!v35)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v35 = *(a1 + 216);
      if (!v35)
      {
        goto LABEL_21;
      }
    }

    v44 = *(v35 + 88);

    CurrentValueSubject.value.getter();

    v45 = *(a1 + 216);
    if (v45)
    {
      v46 = *(v45 + 88);
      v47 = *(a1 + 216);

      CurrentValueSubject.value.getter();

      if (v105 == 6)
      {
LABEL_21:
        type metadata accessor for SPSeparationMonitoringError(0);
        v102[0] = 20;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v48 = v105;
        LODWORD(v45) = 1;
LABEL_24:
        sub_1009CB040(v48, v45, a2, a3, a4);
        sub_100A1B300(v48, v45);
        return;
      }

      LODWORD(v45) = 0;
    }

    v48 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_38:

  v65 = v50[2];
  if (v65)
  {
    v102[0] = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v65, 0);
    v66 = v102[0];
    v67 = (v50 + 4);
    v68 = v99;
    do
    {
      sub_10001F280(v67, &v105);
      v70 = v106;
      v69 = v107;
      sub_1000035D0(&v105, v106);
      (*(*(*(v69 + 8) + 8) + 32))(v70);
      sub_100007BAC(&v105);
      v102[0] = v66;
      v72 = *(v66 + 16);
      v71 = *(v66 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_101123D4C(v71 > 1, v72 + 1, 1);
        v66 = v102[0];
      }

      *(v66 + 16) = v72 + 1;
      (*(v8 + 32))(v66 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v72, v68, v101);
      v67 += 40;
      --v65;
    }

    while (v65);
  }

  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_1000076D4(v73, qword_10177B780);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v105 = v77;
    *v76 = 136315138;
    v78 = Array.description.getter();
    v80 = v79;

    v81 = sub_1000136BC(v78, v80, &v105);

    *(v76 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v74, v75, "All beacons that were configured for separation monitoring: %s", v76, 0xCu);
    sub_100007BAC(v77);
  }

  else
  {
  }

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v105 = v85;
    *v84 = 136315138;
    v86 = Array.description.getter();
    v88 = v87;

    v89 = sub_1000136BC(v86, v88, &v105);

    *(v84 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v82, v83, "Beacons that can be monitored for separation from this device: %s", v84, 0xCu);
    sub_100007BAC(v85);
  }

  else
  {
  }

  sub_1009CB040(v50, 0, v98, v96, v97);
}

uint64_t sub_100A16E30(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  My = type metadata accessor for Feature.FindMy();
  v10[3] = My;
  v10[4] = sub_100003F64(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v6 = sub_1000280DC(v10);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.separationAlerts(_:), My);
  _Block_copy(a2);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v10);
  if (My)
  {
    v7 = *sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
    v8 = a1;

    sub_100A162A0(v7, v8, sub_100A1B2F8, v4);
  }

  else
  {
    a2[2](a2, 0);
  }
}

void sub_100A16FA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *), uint64_t a6)
{
  v78 = a4;
  v76 = a2;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v65 - v12;
  v14 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v65 - v16;
  v18 = type metadata accessor for LeashRecord();
  v74 = *(v18 - 8);
  v19 = *(v74 + 64);
  v20 = __chkstk_darwin(v18);
  v71 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v72 = &v65 - v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  v75 = v22;
  v23 = qword_101694B70;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_1000076D4(v24, qword_10177B780);

  v26 = a3;
  v69 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v77 = v13;
  v73 = a1;
  v70 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v67 = v18;
    v31 = v30;
    v66 = swift_slowAlloc();
    v80 = v66;
    *v31 = 136315650;
    type metadata accessor for UUID();
    sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
    v32 = Set.description.getter();
    v34 = v28;
    v35 = sub_1000136BC(v32, v33, &v80);

    *(v31 + 4) = v35;
    v68 = a5;
    *(v31 + 12) = 2080;
    v79 = v76;
    type metadata accessor for SPSeparationEventType(0);
    v36 = String.init<A>(describing:)();
    v38 = sub_1000136BC(v36, v37, &v80);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    v39 = v26;
    v40 = [v39 description];
    v41 = v19;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v42;
    v19 = v41;
    v46 = sub_1000136BC(v45, v44, &v80);
    a5 = v68;

    *(v31 + 24) = v46;
    _os_log_impl(&_mh_execute_header, v27, v34, "Received separation event request: %s, eventType: %s, region: %s", v31, 0x20u);
    swift_arrayDestroy();

    v18 = v67;
    v13 = v77;
  }

  v47 = v74;
  v48 = *(v78 + 280);
  sub_100ABD310(v17);
  if ((*(v47 + 48))(v17, 1, v18) == 1)
  {
    sub_10000B3A8(v17, &qword_1016B1500, &unk_1013C57F0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to publish separation event alert due to missing leash record", v51, 2u);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v79 = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v52 = v80;
    sub_1009CC7A0(v80, 1, a5);
  }

  else
  {
    v53 = v72;
    sub_100A18C9C(v17, v72, type metadata accessor for LeashRecord);
    v54 = type metadata accessor for TaskPriority();
    (*(*(v54 - 8) + 56))(v13, 1, 1, v54);
    v55 = v71;
    sub_100A1B358(v53, v71, type metadata accessor for LeashRecord);
    v56 = (*(v47 + 80) + 48) & ~*(v47 + 80);
    v57 = (v19 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    v60 = v78;
    v59[4] = v73;
    v59[5] = v60;
    sub_100A18C9C(v55, v59 + v56, type metadata accessor for LeashRecord);
    v61 = (v59 + v57);
    v62 = v75;
    *v61 = sub_100A1A990;
    v61[1] = v62;
    v63 = v70;
    *(v59 + v58) = v70;
    *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;

    v64 = v63;

    sub_10025EDD4(0, 0, v77, &unk_1013D0AC8, v59);

    sub_100A1B3C0(v53, type metadata accessor for LeashRecord);
  }
}

uint64_t sub_100A17698(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for OwnedBeaconRecord();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = *sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1009D762C(v17);
  v19 = *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_beaconStore);
  sub_1000D2A70(v17, v15, &unk_1016A9A20, &qword_10138B280);
  v20 = (*(v4 + 48))(v15, 1, v3);
  v21 = 0;
  if (v20 != 1)
  {
    sub_100A18C9C(v15, v10, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v10, v8, type metadata accessor for OwnedBeaconRecord);

    v21 = sub_10003EB74(v8, v19);
    sub_100A1B3C0(v8, type metadata accessor for OwnedBeaconRecord);

    sub_100A1B3C0(v10, type metadata accessor for OwnedBeaconRecord);
  }

  (*(v24 + 16))(v24, v21);

  return sub_10000B3A8(v17, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_100A17920(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v42 = type metadata accessor for BeaconObservation();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v42);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for OwnedBeaconRecord();
  v45[3] = v12;
  v45[4] = sub_100003F64(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v13 = sub_1000280DC(v45);
  sub_100A1B358(a1, v13, type metadata accessor for OwnedBeaconRecord);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B780);
  sub_10001F280(v45, v44);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v40 = v3;
    v18 = v17;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v19 = sub_1000035D0(v44, v44[3]);
    v20 = *(v12 + 20);
    v37 = *(v8 + 16);
    v38 = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v11, &v19[v20], v7);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v36 = v16;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v6;
    v24 = v23;
    (*(v8 + 8))(v11, v7);
    sub_100007BAC(v44);
    v25 = sub_1000136BC(v21, v24, &v43);
    v6 = v22;

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v36, "Marking beacon %{private,mask.hash}s as separated.", v18, 0x16u);
    sub_100007BAC(v39);

    v3 = v40;

    v37(v22, v13 + *(v12 + 20), v7);
  }

  else
  {

    sub_100007BAC(v44);
    (*(v8 + 16))(v6, v13 + *(v12 + 20), v7);
  }

  v26 = v42;
  v27 = *(v42 + 20);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 16))(&v6[v27], v41, v28);
  v6[*(v26 + 24)] = 41;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v29 = qword_10177B2E8;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v30 = *(v3 + 72);
  v31 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  sub_100A1B358(v6, v32 + v31, type metadata accessor for BeaconObservation);
  v33 = type metadata accessor for Transaction();
  __chkstk_darwin(v33);
  *&v35[-32] = v29;
  *&v35[-24] = v32;
  *&v35[-16] = 0;
  *&v35[-8] = 0;
  static Transaction.named<A>(_:with:)();

  sub_100A1B3C0(v6, type metadata accessor for BeaconObservation);
  return sub_100007BAC(v45);
}

void sub_100A17E74(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B780);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Requesting reverse geocoded address for location: %@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedService];
  [v7 coordinate];
  v16 = v15;
  [v7 coordinate];
  v27 = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v16, v17}];
  if (v27)
  {
    v18 = [v7 referenceFrame];
    if (v18 > 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = dword_1013D0D98[v18];
    }

    [v27 setReferenceFrame:v19];
  }

  v20 = [v13 sharedService];
  if (v20)
  {
    v21 = v20;
    v22 = [v14 defaultTraits];
    v23 = [v21 ticketForReverseGeocodeLocation:v27 traits:v22];

    if (v23)
    {
      v24 = swift_allocObject();
      v24[2] = a2;
      v24[3] = a3;
      v24[4] = v7;
      aBlock[4] = sub_100A1AB38;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1009D758C;
      aBlock[3] = &unk_101642DC0;
      v25 = _Block_copy(aBlock);
      v26 = v7;
      swift_unknownObjectRetain();

      [v23 submitWithHandler:v25 networkActivity:0];
      swift_unknownObjectRelease_n();

      _Block_release(v25);
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

uint64_t sub_100A18200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 72);
  v7 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v12 = a2;
  v11 = v7;
  do
  {
    v8 = *(a2 + 16) + 1;
    v9 = v7;
    while (--v8)
    {
      sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
      v9 += v6;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        return v4;
      }
    }

    ++v4;
    a2 = v12;
    v7 = v11;
  }

  while (v4 != v2);
  return 0;
}

uint64_t sub_100A18384(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - v12;
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = *a1;
  result = sub_100A18200(*a1, a2);
  if (!v2)
  {
    if (v18)
    {
      return v16[2];
    }

    else
    {
      v36 = 0;
      v37 = a1;
      v40 = v10;
      v41 = v13;
      v44 = v6;
      v48 = result;
      v19 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v47 = v44 + 16;
        v42 = a2;
        v43 = (v44 + 8);
        v38 = (v44 + 40);
        while (1)
        {
LABEL_7:
          v21 = v16[2];
          if (v19 == v21)
          {
            return v48;
          }

          if (v19 >= v21)
          {
            break;
          }

          v22 = (*(v44 + 80) + 32) & ~*(v44 + 80);
          v50 = v16;
          v23 = v16 + v22;
          v24 = *(v44 + 72);
          v25 = *(v44 + 16);
          v49 = v24 * v19;
          v45 = v23;
          v46 = v25;
          v25(v15, &v23[v24 * v19], v5);
          v26 = a2 + v22;
          v27 = *(a2 + 16) + 1;
          while (--v27)
          {
            sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
            v26 += v24;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              result = (*v43)(v15, v5);
              a2 = v42;
              v16 = v50;
              v20 = __OFADD__(v19++, 1);
              if (v20)
              {
                goto LABEL_29;
              }

              goto LABEL_7;
            }
          }

          result = (*v43)(v15, v5);
          v28 = v48;
          if (v48 == v19)
          {
            a2 = v42;
            v16 = v50;
          }

          else
          {
            if ((v48 & 0x8000000000000000) != 0)
            {
              goto LABEL_31;
            }

            v29 = v50[2];
            if (v48 >= v29)
            {
              goto LABEL_32;
            }

            v30 = v24 * v48;
            v32 = v45;
            v31 = v46;
            v39 = v30;
            result = (v46)(v41, &v45[v30], v5);
            if (v19 >= v29)
            {
              goto LABEL_33;
            }

            v31(v40, &v32[v49], v5);
            v16 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1006073D8(v16);
            }

            a2 = v42;
            v33 = v16 + v22;
            v34 = *v38;
            result = (*v38)(&v33[v39], v40, v5);
            if (v19 >= v16[2])
            {
              goto LABEL_34;
            }

            result = v34(&v33[v49], v41, v5);
            *v37 = v16;
            v28 = v48;
          }

          v20 = __OFADD__(v28, 1);
          v35 = v28 + 1;
          if (v20)
          {
            goto LABEL_30;
          }

          v48 = v35;
          v20 = __OFADD__(v19++, 1);
          if (v20)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100A18958(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *a1;

  return a3(v12, v3 + v6, v8, v10, v11);
}

unint64_t sub_100A18C28()
{
  result = qword_1016B1678;
  if (!qword_1016B1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1678);
  }

  return result;
}

uint64_t sub_100A18C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A18D0C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100A18DB0()
{
  v1 = *(sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
  }

  else
  {
    sub_100016590(*v4, *(v4 + 8));
    v6 = type metadata accessor for LeashRecord();
    v7 = *(v6 + 20);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
    v9 = *(v4 + *(v6 + 24));
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v10);

  v14 = *(v0 + v11 + 8);

  v15 = *(v0 + v12);

  return _swift_deallocObject(v0, v12 + 8);
}

uint64_t sub_100A18F34(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);

  return a1(v1 + v3, v6, v8, v9, v7);
}

uint64_t sub_100A18FFC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SafeLocation() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_1009E9C7C(a1, a2, v8, v6, v7);
}

void sub_100A190A4()
{
  v1 = *(type metadata accessor for SafeLocation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + v3);
  v5 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = (v0 + v2);
  v7 = *(v0 + 16);
  sub_1009DB4DC(v6, v4, *(v5 + 8), *(v5 + 16));
}

void sub_100A19138(uint64_t a1)
{
  v3 = *(type metadata accessor for SafeLocation() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1009DD3F4(a1, v8, (v1 + v4), v6, v7);
}

void sub_100A191E4()
{
  v1 = *(type metadata accessor for SafeLocation() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + v4);
  v10 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1009DD498(v5, v0 + v2, v7, v8, v9, v10);
}

void sub_100A19290()
{
  v1 = *(type metadata accessor for SafeLocation() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_1009DD1A8(v0 + v2, v4);
}

void sub_100A19364()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for SafeLocation() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v3);
  v9 = *(v0 + v3 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1009DF154(v7, v0 + v2, v8, v9, v10, v0 + v6, v11);
}

void sub_100A19480(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100408170(a1, a2 & 1);
  }
}

uint64_t sub_100A194B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SafeLocation() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

void sub_100A19570(const char *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SafeLocation() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1009E09CC(v2 + v6, *v7, *(v7 + 8), a1, a2);
}

uint64_t sub_100A19614()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = *(v0 + v2 + v1[9] + 8);

  v8 = *(v0 + v2 + v1[15]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100A19728()
{
  v1 = type metadata accessor for SafeLocation();
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));
  v3 = *(v0 + 16);
  return sub_100AC09B4();
}

uint64_t sub_100A1979C(uint64_t a1)
{
  v3 = *(type metadata accessor for SafeLocation() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1009E08D8(a1, v4);
}

uint64_t sub_100A1980C()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = *(v4 + v1[9] + 8);

  v8 = *(v4 + v1[15]);

  v9 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100A19938()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[9] + 8);

  v9 = *(v5 + v1[15]);

  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100A19A84(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SafeLocation() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);

  return a1(v1 + v3, v7, v8, v9);
}

uint64_t sub_100A19B3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1009E9880(v5, v1 + v4, v6, a1);
}

uint64_t sub_100A19BDC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v2(v4, v5);
}

uint64_t sub_100A19C24(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1009E9A14(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_100A19CD4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    a1 = 0;
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_100A19D10()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100A19E1C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = *(v1 + v4);
  v7 = (v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a1(v5, v1 + v3, v6, v8, v9);
}

uint64_t sub_100A19F14()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_100AC09B4();
}

uint64_t sub_100A19F88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_100A1A088(const char *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1009E4688(*(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), a1);
}

unint64_t sub_100A1A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100A1A2E8(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_100A1A3F8(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_100A1A3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = sub_1000BC4D4(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100A1A5C8()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = *(v0 + v2 + v1[9] + 8);

  v7 = *(v0 + v2 + v1[15]);

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_100A1A6D4(void *a1, char a2)
{
  v5 = *(type metadata accessor for SafeLocation() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1009E890C(a1, a2 & 1, v6);
}

uint64_t sub_100A1A754()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100A1A804()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1009DE070(v0 + v2, v4, v6, v7);
}

void sub_100A1A8A8(char a1)
{
  v3 = *(type metadata accessor for LeashRecord() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1009E7290(a1, v4);
}

uint64_t sub_100A1A99C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for LeashRecord() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[3];
  v18 = v1[2];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + v6);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v7);
  v15 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014650;

  return sub_1009CCF1C(a1, v18, v8, v9, v10, v1 + v5, v12, v13);
}

id sub_100A1AB44(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_100A1AB54(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100A1AB64(uint64_t a1)
{
  v15 = *(v1 + 24);
  v16 = *(v1 + 16);
  v4 = *(v1 + 40);
  v14 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v7 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014650;

  return sub_1009CFAC4(a1, v16, v15, v14, v4, v5, v6, v8);
}

uint64_t sub_100A1AC64@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009D4978(v4, v5, v6, a1);
}

uint64_t sub_100A1ACE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_1009D3D7C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100A1AE54()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1009D41B8(v5, v0 + v2, v6);
}

uint64_t sub_100A1AF38(uint64_t a1)
{
  v2 = *(*(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8) + 80);

  return sub_1009D4908(a1);
}

void sub_100A1AFD4(void *a1, char a2)
{
  v5 = *(type metadata accessor for SafeLocation() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1009E6080(a1, a2 & 1, v8, v2 + v6, v7);
}

uint64_t sub_100A1B154()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  sub_100007BAC((v0 + 88));

  return _swift_deallocObject(v0, 128);
}

uint64_t sub_100A1B218(uint64_t result, char a2)
{
  if (a2)
  {
    return sub_100A1B224(result);
  }

  return result;
}

uint64_t sub_100A1B224(uint64_t result)
{
  if (result != 1)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100A1B234(uint64_t result, char a2)
{
  if (a2)
  {
    return sub_100A1B240(result);
  }

  return result;
}

uint64_t sub_100A1B240(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100A1B270(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_100A1B300(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_100A1B320(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_100A1B358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A1B3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100A1B444()
{
  result = qword_1016B1860;
  if (!qword_1016B1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1860);
  }

  return result;
}

unint64_t sub_100A1B49C()
{
  result = qword_1016B1868;
  if (!qword_1016B1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1868);
  }

  return result;
}

unint64_t sub_100A1B4F4()
{
  result = qword_1016B1870;
  if (!qword_1016B1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1870);
  }

  return result;
}

unint64_t sub_100A1B54C()
{
  result = qword_1016B1878;
  if (!qword_1016B1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1878);
  }

  return result;
}

unint64_t sub_100A1B5A4()
{
  result = qword_1016B1880;
  if (!qword_1016B1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1880);
  }

  return result;
}

unint64_t sub_100A1B5FC()
{
  result = qword_1016B1888;
  if (!qword_1016B1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1888);
  }

  return result;
}

uint64_t sub_100A1B7B4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B18A8, &qword_1013D0F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A1C5BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 7);
    v19 = *(v3 + 5);
    v20 = v16;
    v21 = *(v3 + 9);
    v18[15] = 3;
    sub_100A1C610();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100A1B9C0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B18E8, &qword_1013D1118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A1CD80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = v3[2];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v18[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v18[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[5];
  v18[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100A1BBC4()
{
  v0 = sub_100907E70(&off_10160CED0);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v1 = sub_100F4D900();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v4);

  return v4;
}

uint64_t sub_100A1BC74(uint64_t a1)
{
  v2 = sub_100132C30();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100A1BCB0()
{
  v1 = 0x656372756F73;
  v2 = 1684628597;
  if (*v0 != 2)
  {
    v2 = 0x6E756F436D657469;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100A1BD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A1C664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A1BD50(uint64_t a1)
{
  v2 = sub_100A1C5BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A1BD8C(uint64_t a1)
{
  v2 = sub_100A1C5BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100A1BDC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A1C7D4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100A1BE24(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_100A1B7B4(a1);
}

uint64_t sub_100A1BE70()
{
  v1 = *v0;
  v2 = 0x3156676174726961;
  v3 = 0x3256616E6D66;
  if (v1 != 3)
  {
    v3 = 0x6E6D66656C707061;
  }

  v4 = 0x3256676174726961;
  if (v1 != 1)
  {
    v4 = 0x3156616E6D66;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100A1BF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A1CDD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A1BF54(uint64_t a1)
{
  v2 = sub_100A1CD80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A1BF90(uint64_t a1)
{
  v2 = sub_100A1CD80();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100A1BFCC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100A1CFCC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100A1C028(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentDevice];
  if (v8 && (v9 = v8, v10 = [v8 uniqueDeviceIdentifier], v9, v10))
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v11;

    v44 = v1;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [objc_allocWithZone(NSProcessInfo) init];
    v15 = [v14 processName];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    static Date.trustedNow.getter(v7);
    v19 = Date.epoch.getter();
    v20 = *(v4 + 8);
    v21 = *(a1 + 16);
    v31 = *a1;
    v30 = v21;
    v20(v7, v3);
    *&v40 = v16;
    *(&v40 + 1) = v18;
    *&v41 = v19;
    *(&v41 + 1) = v32;
    *&v42[24] = v30;
    *&v42[8] = v31;
    *v42 = v33;
    *&v42[40] = v12;
    v43 = v13;
    v22 = type metadata accessor for JSONEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v36 = *v42;
    v37 = *&v42[16];
    v38 = *&v42[32];
    v39 = v43;
    v34 = v40;
    v35 = v41;
    sub_100A1C3C0();
    v25 = v44;
    v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v25)
    {

      a1 = 0;
    }

    else
    {
      a1 = v26;
    }

    sub_100A1C414(&v40);
  }

  else
  {
    v27 = type metadata accessor for GenericError();
    sub_100A1C368();
    swift_allocError();
    strcpy(v28, "Missing UDID!");
    *(v28 + 7) = -4864;
    (*(*(v27 - 8) + 104))(v28, enum case for GenericError.error(_:), v27);
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_100A1C368()
{
  result = qword_1016978C0;
  if (!qword_1016978C0)
  {
    type metadata accessor for GenericError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978C0);
  }

  return result;
}

unint64_t sub_100A1C3C0()
{
  result = qword_1016B1890;
  if (!qword_1016B1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1890);
  }

  return result;
}

uint64_t sub_100A1C454(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100A1C4B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_100A1C510()
{
  result = qword_1016B1898;
  if (!qword_1016B1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1898);
  }

  return result;
}

unint64_t sub_100A1C568()
{
  result = qword_1016B18A0;
  if (!qword_1016B18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18A0);
  }

  return result;
}

unint64_t sub_100A1C5BC()
{
  result = qword_1016B18B0;
  if (!qword_1016B18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18B0);
  }

  return result;
}

unint64_t sub_100A1C610()
{
  result = qword_1016B18B8;
  if (!qword_1016B18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18B8);
  }

  return result;
}

uint64_t sub_100A1C664(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F436D657469 && a2 == 0xEA00000000007374)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100A1C7D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B18C0, &qword_1013D0F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A1C5BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v39[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  LOBYTE(v39[0]) = 1;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v39[0]) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v16;
  v30 = v15;
  v44 = 3;
  sub_100A1CB74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v29 = v40;
  v28 = v41;
  v17 = v42;
  v27 = *(&v41 + 1);
  v26 = *(&v42 + 1);
  v25 = v43;
  *&v33 = v14;
  *(&v33 + 1) = v13;
  v18 = v31;
  *&v34 = v31;
  v19 = v30;
  *(&v34 + 1) = v30;
  v20 = v32;
  *&v35 = v32;
  *(&v35 + 1) = v40;
  v36 = v41;
  v37 = v42;
  v38 = v43;
  sub_100A1CBC8(&v33, v39);
  sub_100007BAC(a1);
  v39[0] = v14;
  v39[1] = v13;
  v39[2] = v18;
  v39[3] = v19;
  v39[4] = v20;
  v39[5] = v29;
  v39[6] = v28;
  v39[7] = v27;
  v39[8] = v17;
  v39[9] = v26;
  v39[10] = v25;
  result = sub_100A1C414(v39);
  v22 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v22;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  v23 = v34;
  *a2 = v33;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_100A1CB74()
{
  result = qword_1016B18C8;
  if (!qword_1016B18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18C8);
  }

  return result;
}

uint64_t sub_100A1CC10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A1CC30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t sub_100A1CC7C()
{
  result = qword_1016B18D0;
  if (!qword_1016B18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18D0);
  }

  return result;
}

unint64_t sub_100A1CCD4()
{
  result = qword_1016B18D8;
  if (!qword_1016B18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18D8);
  }

  return result;
}

unint64_t sub_100A1CD2C()
{
  result = qword_1016B18E0;
  if (!qword_1016B18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18E0);
  }

  return result;
}

unint64_t sub_100A1CD80()
{
  result = qword_1016B18F0;
  if (!qword_1016B18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B18F0);
  }

  return result;
}

uint64_t sub_100A1CDD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x3156676174726961 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3256676174726961 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3156616E6D66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3256616E6D66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6D66656C707061 && a2 == 0xEB00000000315661 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6D66656C707061 && a2 == 0xEB00000000325661)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100A1CFCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B18F8, &qword_1013D1120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A1CD80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 4;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 5;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v11;
  a2[1] = v12;
  v14 = v18;
  a2[2] = v19;
  a2[3] = v14;
  v15 = v16;
  a2[4] = v17;
  a2[5] = v15;
  return result;
}

unint64_t sub_100A1D21C()
{
  result = qword_1016B1900;
  if (!qword_1016B1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1900);
  }

  return result;
}

unint64_t sub_100A1D274()
{
  result = qword_1016B1908;
  if (!qword_1016B1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1908);
  }

  return result;
}

unint64_t sub_100A1D2CC()
{
  result = qword_1016B1910;
  if (!qword_1016B1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1910);
  }

  return result;
}

void sub_100A1D320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  sub_1000D5660(a1, &v13 - v6);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  (*(a2 + 16))(a2, v11);
}

uint64_t sub_100A1D548(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *&a1[OBJC_IVAR____TtC12searchpartyd26UnknownDiscoveryTrampoline_implementation];
  v12 = a1;
  a6(a5, v10);
}

id sub_100A1D6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnknownDiscoveryTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100A1D744()
{
  result = qword_1016B1950;
  if (!qword_1016B1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1950);
  }

  return result;
}

__n128 sub_100A1D798@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11)
{
  sub_100A22398(a1, a2, a3, a4, a5, a6, a7, a8, v18, a10, a11);
  v12 = v18[11];
  *(a9 + 160) = v18[10];
  *(a9 + 176) = v12;
  *(a9 + 192) = v19;
  v13 = v18[7];
  *(a9 + 96) = v18[6];
  *(a9 + 112) = v13;
  v14 = v18[9];
  *(a9 + 128) = v18[8];
  *(a9 + 144) = v14;
  v15 = v18[3];
  *(a9 + 32) = v18[2];
  *(a9 + 48) = v15;
  v16 = v18[5];
  *(a9 + 64) = v18[4];
  *(a9 + 80) = v16;
  result = v18[1];
  *a9 = v18[0];
  *(a9 + 16) = result;
  return result;
}

__n128 sub_100A1D828@<Q0>(uint64_t a1@<X8>)
{
  static Data.random(bytes:)();
  sub_1001DA81C();
  BinaryDecodable.init(data:)();
  if (!v1)
  {
    sub_100A21C88(v9);
    v4 = v9[11];
    *(a1 + 160) = v9[10];
    *(a1 + 176) = v4;
    *(a1 + 192) = v10;
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    v6 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v6;
    v7 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v7;
    v8 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v8;
    result = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100A1D8F8()
{
  result = qword_1016B19A8;
  if (!qword_1016B19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19A8);
  }

  return result;
}

unint64_t sub_100A1D950()
{
  result = qword_1016B19B0;
  if (!qword_1016B19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19B0);
  }

  return result;
}

unint64_t sub_100A1D9A8()
{
  result = qword_1016B19B8;
  if (!qword_1016B19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19B8);
  }

  return result;
}

unint64_t sub_100A1DA00()
{
  result = qword_1016B19C0;
  if (!qword_1016B19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19C0);
  }

  return result;
}

unint64_t sub_100A1DA58()
{
  result = qword_1016B19C8;
  if (!qword_1016B19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19C8);
  }

  return result;
}

unint64_t sub_100A1DAB0()
{
  result = qword_1016B19D0;
  if (!qword_1016B19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19D0);
  }

  return result;
}

unint64_t sub_100A1DB08()
{
  result = qword_1016B19D8;
  if (!qword_1016B19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19D8);
  }

  return result;
}

unint64_t sub_100A1DB60()
{
  result = qword_1016B19E0;
  if (!qword_1016B19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B19E0);
  }

  return result;
}

uint64_t sub_100A1DBB4()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_100A2236C(v9);
  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 9)
      {
        return 0;
      }

      else if (v7 == 10)
      {
        return 8;
      }

      else
      {
        return 11;
      }
    }

    else if (v7 == 6)
    {
      sub_1000140D8(v9);
      return 7;
    }

    else if (v7 == 7)
    {
      sub_1000140D8(v9);
      return 9;
    }

    else
    {
      sub_1000140D8(v9);
      return 10;
    }
  }

  else if (v7 > 2)
  {
    if (v7 == 3)
    {
      sub_1000140D8(v9);
      return 4;
    }

    else if (v7 == 4)
    {
      sub_1000140D8(v9);
      return 5;
    }

    else
    {
      sub_1000140D8(v9);
      return 6;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      sub_1000140D8(v9);
      return 2;
    }

    else
    {
      sub_1000140D8(v9);
      return 3;
    }
  }

  else
  {
    sub_1000140D8(v9);
    return 1;
  }
}

unint64_t sub_100A1DD08@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v114[10] = v1[10];
  v114[11] = v3;
  v115 = *(v1 + 24);
  v4 = v1[7];
  v114[6] = v1[6];
  v114[7] = v4;
  v5 = v1[9];
  v114[8] = v1[8];
  v114[9] = v5;
  v6 = v1[3];
  v114[2] = v1[2];
  v114[3] = v6;
  v7 = v1[5];
  v114[4] = v1[4];
  v114[5] = v7;
  v8 = v1[1];
  v114[0] = *v1;
  v114[1] = v8;
  v9 = sub_100A2236C(v114);
  if (v9 <= 5)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v68 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv2;
        a1[4] = sub_100A1DAB0();
        v69 = swift_allocObject();
        *a1 = v69;
        memmove((v69 + 16), v68, 0xB8uLL);
        v70 = v1[11];
        v111 = v1[10];
        v112 = v70;
        v113 = *(v1 + 24);
        v71 = v1[7];
        v107 = v1[6];
        v108 = v71;
        v72 = v1[9];
        v109 = v1[8];
        v110 = v72;
        v73 = v1[3];
        v103 = v1[2];
        v104 = v73;
        v74 = v1[5];
        v105 = v1[4];
        v106 = v74;
        v75 = v1[1];
        v101 = *v1;
        v102 = v75;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1BA0;
        v20 = &unk_1013F9C10;
      }

      else if (v9 == 4)
      {
        v32 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv3;
        a1[4] = sub_100A1DB08();
        v33 = swift_allocObject();
        *a1 = v33;
        memmove((v33 + 16), v32, 0xC8uLL);
        v34 = v1[11];
        v111 = v1[10];
        v112 = v34;
        v113 = *(v1 + 24);
        v35 = v1[7];
        v107 = v1[6];
        v108 = v35;
        v36 = v1[9];
        v109 = v1[8];
        v110 = v36;
        v37 = v1[3];
        v103 = v1[2];
        v104 = v37;
        v38 = v1[5];
        v105 = v1[4];
        v106 = v38;
        v39 = v1[1];
        v101 = *v1;
        v102 = v39;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1B98;
        v20 = &unk_1013D1350;
      }

      else
      {
        v92 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsFinalizePairingCommandPayload;
        a1[4] = sub_100A1D8F8();
        v93 = swift_allocObject();
        *a1 = v93;
        memmove((v93 + 16), v92, 0x60uLL);
        v94 = v1[11];
        v111 = v1[10];
        v112 = v94;
        v113 = *(v1 + 24);
        v95 = v1[7];
        v107 = v1[6];
        v108 = v95;
        v96 = v1[9];
        v109 = v1[8];
        v110 = v96;
        v97 = v1[3];
        v103 = v1[2];
        v104 = v97;
        v98 = v1[5];
        v105 = v1[4];
        v106 = v98;
        v99 = v1[1];
        v101 = *v1;
        v102 = v99;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1B90;
        v20 = &unk_1013D1348;
      }
    }

    else
    {
      if (!v9)
      {
        v40 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v41 = swift_allocObject();
        *a1 = v41;
        v42 = v40[1];
        *(v41 + 16) = *v40;
        *(v41 + 32) = v42;
        v43 = v1[3];
        v103 = v1[2];
        v104 = v43;
        v44 = v1[1];
        v101 = *v1;
        v102 = v44;
        v45 = v1[7];
        v107 = v1[6];
        v108 = v45;
        v46 = v1[5];
        v105 = v1[4];
        v106 = v46;
        v113 = *(v1 + 24);
        v47 = v1[11];
        v111 = v1[10];
        v112 = v47;
        v48 = v1[9];
        v109 = v1[8];
        v110 = v48;
        v49 = sub_1000140D8(&v101);
        v50 = v49[2];
        v51 = v49[3];
        sub_100017D5C(*v49, v49[1]);
        return sub_100017D5C(v50, v51);
      }

      if (v9 == 1)
      {
        v10 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsInitiatePairingCommandPayload;
        a1[4] = sub_100A1D950();
        v11 = swift_allocObject();
        *a1 = v11;
        memmove((v11 + 16), v10, 0x50uLL);
        v12 = v1[11];
        v111 = v1[10];
        v112 = v12;
        v113 = *(v1 + 24);
        v13 = v1[7];
        v107 = v1[6];
        v108 = v13;
        v14 = v1[9];
        v109 = v1[8];
        v110 = v14;
        v15 = v1[3];
        v103 = v1[2];
        v104 = v15;
        v16 = v1[5];
        v105 = v1[4];
        v106 = v16;
        v17 = v1[1];
        v101 = *v1;
        v102 = v17;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1BB0;
        v20 = &unk_1013F9C20;
      }

      else
      {
        v76 = sub_1000140D8(v114);
        a1[3] = &type metadata for AirPodsSendPairingDataCommandPayloadv1;
        a1[4] = sub_100A1DA58();
        v77 = swift_allocObject();
        *a1 = v77;
        memmove((v77 + 16), v76, 0xB8uLL);
        v78 = v1[11];
        v111 = v1[10];
        v112 = v78;
        v113 = *(v1 + 24);
        v79 = v1[7];
        v107 = v1[6];
        v108 = v79;
        v80 = v1[9];
        v109 = v1[8];
        v110 = v80;
        v81 = v1[3];
        v103 = v1[2];
        v104 = v81;
        v82 = v1[5];
        v105 = v1[4];
        v106 = v82;
        v83 = v1[1];
        v101 = *v1;
        v102 = v83;
        v18 = sub_1000140D8(&v101);
        v19 = &unk_1016B1BA8;
        v20 = &unk_1013D1360;
      }
    }

    return sub_1000D2A70(v18, v100, v19, v20);
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      v52 = sub_1000140D8(v114);
      v53 = *(v52 + 32);
      v54 = *(v52 + 40);
      a1[3] = &type metadata for AirPodsSendPairingStatusCommandPayload;
      a1[4] = sub_100A1DB60();
      v55 = swift_allocObject();
      *a1 = v55;
      v56 = *(v52 + 16);
      *(v55 + 16) = *v52;
      *(v55 + 32) = v56;
      *(v55 + 48) = v53;
      *(v55 + 56) = v54;
      v57 = v1[3];
      v103 = v1[2];
      v104 = v57;
      v58 = v1[1];
      v101 = *v1;
      v102 = v58;
      v59 = v1[7];
      v107 = v1[6];
      v108 = v59;
      v60 = v1[5];
      v105 = v1[4];
      v106 = v60;
      v113 = *(v1 + 24);
      v61 = v1[11];
      v111 = v1[10];
      v112 = v61;
      v62 = v1[9];
      v109 = v1[8];
      v110 = v62;
      v63 = sub_1000140D8(&v101);
      v64 = v63[2];
      v65 = v63[3];
      v66 = v63[4];
      v67 = v63[5];
      sub_100017D5C(*v63, v63[1]);
      sub_100017D5C(v64, v65);
      return sub_100017D5C(v66, v67);
    }

    if (v9 == 7)
    {
      v21 = sub_1000140D8(v114);
      v22 = *v21;
      v23 = v21[1];
      a1[3] = &type metadata for AirPodsPairingEligibilityDataCommandPayload;
      a1[4] = sub_100A1D9A8();
      *a1 = v22;
      a1[1] = v23;
      v24 = v1[11];
      v111 = v1[10];
      v112 = v24;
      v113 = *(v1 + 24);
      v25 = v1[7];
      v107 = v1[6];
      v108 = v25;
      v26 = v1[9];
      v109 = v1[8];
      v110 = v26;
      v27 = v1[3];
      v103 = v1[2];
      v104 = v27;
      v28 = v1[5];
      v105 = v1[4];
      v106 = v28;
      v29 = v1[1];
      v101 = *v1;
      v102 = v29;
      v30 = sub_1000140D8(&v101);
      return sub_100017D5C(*v30, *(v30 + 8));
    }

    v84 = sub_1000140D8(v114);
    a1[3] = &type metadata for AirPodsPairingEligibilityDataResponseCommandPayload;
    a1[4] = sub_100A1DA00();
    v85 = swift_allocObject();
    *a1 = v85;
    memmove((v85 + 16), v84, 0x58uLL);
    v86 = v1[11];
    v111 = v1[10];
    v112 = v86;
    v113 = *(v1 + 24);
    v87 = v1[7];
    v107 = v1[6];
    v108 = v87;
    v88 = v1[9];
    v109 = v1[8];
    v110 = v88;
    v89 = v1[3];
    v103 = v1[2];
    v104 = v89;
    v90 = v1[5];
    v105 = v1[4];
    v106 = v90;
    v91 = v1[1];
    v101 = *v1;
    v102 = v91;
    v18 = sub_1000140D8(&v101);
    v19 = &unk_1016B1B88;
    v20 = &unk_1013D1340;
    return sub_1000D2A70(v18, v100, v19, v20);
  }

  if (v9 == 9)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else if (v9 == 10)
  {
    a1[3] = &type metadata for AirPodsPairingCompleteCommandPayload;
    result = sub_1009A0048();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

unint64_t sub_100A1E3A0(uint64_t a1)
{
  *(a1 + 8) = sub_100A1E3D0();
  result = sub_100A1E424();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A1E3D0()
{
  result = qword_1016B1B30;
  if (!qword_1016B1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1B30);
  }

  return result;
}

unint64_t sub_100A1E424()
{
  result = qword_1016B1B38;
  if (!qword_1016B1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1B38);
  }

  return result;
}

uint64_t sub_100A1E4F8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, _WORD *)@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v40 = a4;
  v6 = type metadata accessor for Endianness();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v11 = a1[4];
  v43 = a1;
  sub_1000035D0(a1, v12);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v48, v48[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v4)
  {
    v13 = v43;
  }

  else
  {
    v14 = v41;
    v15 = v42;
    v49 = v46[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v7 + 8))(v10, v6);
    v16 = v47[0];
    v17 = sub_1010A4D44(v47[0]);
    if (v17 == 12)
    {
      static os_log_type_t.error.getter();
      v13 = v43;
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_101385D80;
      LOWORD(v47[0]) = v16;
      v19 = FixedWidthInteger.data.getter();
      v21 = v20;
      v22 = Data.hexString.getter();
      v24 = v23;
      sub_100016590(v19, v21);
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_100008C00();
      *(v18 + 32) = v22;
      *(v18 + 40) = v24;
      os_log(_:dso:log:_:_:)();

      sub_1009A022C();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }

    else
    {
      v26 = v17;
      v27 = v14();
      v29 = v28;
      v13 = v43;
      sub_10001F280(v43, v46);
      v47[3] = v27;
      v47[4] = v29;
      sub_1000280DC(v47);
      v30 = *(v29 + 8);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v47, v46);
      v15(v44, v26, v46);
      v31 = v44[11];
      v32 = v40;
      *(v40 + 160) = v44[10];
      *(v32 + 176) = v31;
      *(v32 + 192) = v45;
      v33 = v44[7];
      *(v32 + 96) = v44[6];
      *(v32 + 112) = v33;
      v34 = v44[9];
      *(v32 + 128) = v44[8];
      *(v32 + 144) = v34;
      v35 = v44[3];
      *(v32 + 32) = v44[2];
      *(v32 + 48) = v35;
      v36 = v44[5];
      *(v32 + 64) = v44[4];
      *(v32 + 80) = v36;
      v37 = v44[1];
      *v32 = v44[0];
      *(v32 + 16) = v37;
      sub_100007BAC(v47);
    }
  }

  sub_100007BAC(v48);
  return sub_100007BAC(v13);
}

uint64_t sub_100A1E8BC(void *a1)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = *(v1 + 24);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_100A1E920(a1);
}

uint64_t sub_100A1E920(void *a1)
{
  v2 = type metadata accessor for Endianness();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8 = sub_100A1DBB4();
  LOWORD(v44) = word_1013D2D4C[v8];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v3 + 8))(v6, v2);
  LOWORD(v44) = v58;
  sub_10015049C(v71, v72);
  v9 = v73;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v9)
  {
    if (v8 > 5u)
    {
      if (v8 > 8u)
      {
        if (v8 == 9)
        {
          sub_100A1DD08(&v58);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v44 = v31;
            sub_10015049C(v71, v72);
            sub_100A220CC();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_100016590(v44, *(&v44 + 1));
            return sub_100007BAC(v71);
          }

          v31 = xmmword_10138BBF0;
          sub_100006654(0, 0xF000000000000000);
          goto LABEL_48;
        }

        if (v8 == 10)
        {
          sub_100A1DD08(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v60 = v46;
            v61 = v47;
            v62 = v48;
            *&v63 = v49;
            v58 = v44;
            v59 = v45;
            sub_10015049C(v71, v72);
            sub_1005C5D58();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v33 = v60;
            v34 = v61;
            v35 = v62;
            *&v36 = v63;
            v31 = v58;
            v32 = v59;
            sub_100A22078(&v31);
            return sub_100007BAC(v71);
          }

          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v44 = xmmword_10138BBF0;
          v45 = 0u;
          *&v49 = 0;
          *&v36 = 0;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v31 = xmmword_10138BBF0;
          v32 = 0u;
          v13 = &unk_1016B1B40;
          v14 = &unk_1013D1310;
          goto LABEL_47;
        }

        sub_100A1DD08(&v58);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_48;
        }

        sub_10015049C(v71, v72);
        sub_10027FBB8();
      }

      else
      {
        if (v8 == 6)
        {
          sub_100A1DD08(&v18);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v60 = v46;
            v61 = v47;
            v62 = v48;
            v63 = v49;
            v58 = v44;
            v59 = v45;
            sub_10015049C(v71, v72);
            sub_10031A8EC();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v33 = v60;
            v34 = v61;
            v35 = v62;
            v36 = v63;
            v31 = v58;
            v32 = v59;
            sub_100A22120(&v31);
            return sub_100007BAC(v71);
          }

          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v44 = xmmword_10138BBF0;
          v45 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v31 = xmmword_10138BBF0;
          v32 = 0u;
          v13 = &unk_1016B1B48;
          v14 = &unk_1013D1318;
          goto LABEL_47;
        }

        if (v8 == 7)
        {
          sub_100A1DD08(&v31);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v58 = v44;
            v59 = v45;
            v60 = v46;
            sub_10015049C(v71, v72);
            sub_1005909F8();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v11 = v59;
            v12 = v60;
            sub_100016590(v58, *(&v58 + 1));
            sub_100016590(v11, *(&v11 + 1));
            sub_100016590(v12, *(&v12 + 1));
            return sub_100007BAC(v71);
          }

          v44 = xmmword_10138BBF0;
          v45 = 0u;
          v46 = 0u;
          sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
          goto LABEL_48;
        }

        sub_100A1DD08(&v58);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_48;
        }

        sub_10015049C(v71, v72);
        sub_1009A0330();
      }
    }

    else
    {
      if (v8 > 2u)
      {
        if (v8 == 3)
        {
          sub_100A1DD08(v57);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)(&v44);
            v66 = v52;
            v67 = v53;
            v68 = v54;
            *&v69 = v55;
            v62 = v48;
            v63 = v49;
            v64 = v50;
            v65 = v51;
            v58 = v44;
            v59 = v45;
            v60 = v46;
            v61 = v47;
            sub_10015049C(v71, v72);
            sub_100A22270();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v39 = v66;
            v40 = v67;
            v41 = v68;
            *&v42 = v69;
            v35 = v62;
            v36 = v63;
            v37 = v64;
            v38 = v65;
            v31 = v58;
            v32 = v59;
            v33 = v60;
            v34 = v61;
            sub_100A222C4(&v31);
            return sub_100007BAC(v71);
          }

          sub_100083C60(&v18);
          v52 = v26;
          v53 = v27;
          v54 = v28;
          v48 = v22;
          v49 = v23;
          v50 = v24;
          v51 = v25;
          v44 = v18;
          v45 = v19;
          v46 = v20;
          v47 = v21;
          v39 = v26;
          v40 = v27;
          v41 = v28;
          v35 = v22;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          v31 = v18;
          v32 = v19;
          *&v55 = v29;
          *&v42 = v29;
          v33 = v20;
          v34 = v21;
          v13 = &unk_1016B1B60;
          v14 = &unk_1013D1330;
        }

        else if (v8 == 4)
        {
          sub_100A1DD08(v57);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)(&v44);
            v66 = v52;
            v67 = v53;
            v68 = v54;
            *&v69 = v55;
            v62 = v48;
            v63 = v49;
            v64 = v50;
            v65 = v51;
            v58 = v44;
            v59 = v45;
            v60 = v46;
            v61 = v47;
            sub_10015049C(v71, v72);
            sub_1008ACD88();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v39 = v66;
            v40 = v67;
            v41 = v68;
            *&v42 = v69;
            v35 = v62;
            v36 = v63;
            v37 = v64;
            v38 = v65;
            v31 = v58;
            v32 = v59;
            v33 = v60;
            v34 = v61;
            sub_100A2221C(&v31);
            return sub_100007BAC(v71);
          }

          sub_100083C60(&v18);
          v52 = v26;
          v53 = v27;
          v54 = v28;
          v48 = v22;
          v49 = v23;
          v50 = v24;
          v51 = v25;
          v44 = v18;
          v45 = v19;
          v46 = v20;
          v47 = v21;
          v39 = v26;
          v40 = v27;
          v41 = v28;
          v35 = v22;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          v31 = v18;
          v32 = v19;
          *&v55 = v29;
          *&v42 = v29;
          v33 = v20;
          v34 = v21;
          v13 = &unk_1016B1B58;
          v14 = &unk_1013D1328;
        }

        else
        {
          sub_100A1DD08(v57);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)(&v44);
            v68 = v54;
            v69 = v55;
            v70 = v56;
            v64 = v50;
            v65 = v51;
            v66 = v52;
            v67 = v53;
            v60 = v46;
            v61 = v47;
            v62 = v48;
            v63 = v49;
            v58 = v44;
            v59 = v45;
            sub_10015049C(v71, v72);
            sub_100A22174();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v41 = v68;
            v42 = v69;
            v43 = v70;
            v37 = v64;
            v38 = v65;
            v39 = v66;
            v40 = v67;
            v33 = v60;
            v34 = v61;
            v35 = v62;
            v36 = v63;
            v31 = v58;
            v32 = v59;
            sub_100A221C8(&v31);
            return sub_100007BAC(v71);
          }

          sub_100A21E1C(&v18);
          v54 = v28;
          v55 = v29;
          v50 = v24;
          v51 = v25;
          v52 = v26;
          v53 = v27;
          v46 = v20;
          v47 = v21;
          v48 = v22;
          v49 = v23;
          v44 = v18;
          v45 = v19;
          v41 = v28;
          v42 = v29;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v40 = v27;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v36 = v23;
          v56 = v30;
          v43 = v30;
          v31 = v18;
          v32 = v19;
          v13 = &unk_1016B1B50;
          v14 = &unk_1013D1320;
        }

        goto LABEL_47;
      }

      if (v8)
      {
        if (v8 == 1)
        {
          sub_100A1DD08(&v58);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v44 = v31;
            v45 = v32;
            sub_10015049C(v71, v72);
            sub_100392AF0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v10 = v45;
            sub_100016590(v44, *(&v44 + 1));
            sub_100016590(v10, *(&v10 + 1));
            return sub_100007BAC(v71);
          }

          v31 = xmmword_10138BBF0;
          v32 = 0uLL;
          sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_48:
          sub_1009A022C();
          swift_allocError();
          *v15 = 0;
          swift_willThrow();
          return sub_100007BAC(v71);
        }

        sub_100A1DD08(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v60 = v46;
          v61 = v47;
          v62 = v48;
          v58 = v44;
          v59 = v45;
          sub_10015049C(v71, v72);
          sub_10076B4F4();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v33 = v60;
          v34 = v61;
          v35 = v62;
          v31 = v58;
          v32 = v59;
          sub_100A22318(&v31);
          return sub_100007BAC(v71);
        }

        v44 = xmmword_10138BBF0;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v31 = xmmword_10138BBF0;
        v32 = 0u;
        v13 = &unk_1016B1B68;
        v14 = &unk_1013D1338;
LABEL_47:
        sub_10000B3A8(&v31, v13, v14);
        goto LABEL_48;
      }

      sub_100A1DD08(&v58);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_48;
      }

      sub_10015049C(v71, v72);
      sub_10030FB84();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v71);
}

uint64_t sub_100A1F734(void *a1)
{
  v2 = type metadata accessor for Endianness();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8 = sub_10104BF58();
  LOWORD(v42) = word_1013D2D4C[v8];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v3 + 8))(v6, v2);
  LOWORD(v42) = v56;
  sub_10015049C(v69, v70);
  v9 = v71;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v9)
  {
    if (v8 <= 5u)
    {
      if (v8 > 2u)
      {
        if (v8 == 3)
        {
          sub_10104C0B4(v55);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)(&v42);
            v64 = v50;
            v65 = v51;
            v66 = v52;
            *&v67 = v53;
            v60 = v46;
            v61 = v47;
            v62 = v48;
            v63 = v49;
            v56 = v42;
            v57 = v43;
            v58 = v44;
            v59 = v45;
            sub_10015049C(v69, v70);
            sub_100A22270();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v37 = v64;
            v38 = v65;
            v39 = v66;
            *&v40 = v67;
            v33 = v60;
            v34 = v61;
            v35 = v62;
            v36 = v63;
            v29 = v56;
            v30 = v57;
            v31 = v58;
            v32 = v59;
            sub_100A222C4(&v29);
            return sub_100007BAC(v69);
          }

          sub_100083C60(&v16);
          v50 = v24;
          v51 = v25;
          v52 = v26;
          v46 = v20;
          v47 = v21;
          v48 = v22;
          v49 = v23;
          v42 = v16;
          v43 = v17;
          v44 = v18;
          v45 = v19;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v36 = v23;
          v29 = v16;
          v30 = v17;
          *&v53 = v27;
          *&v40 = v27;
          v31 = v18;
          v32 = v19;
          v11 = &unk_1016B1B60;
          v12 = &unk_1013D1330;
        }

        else if (v8 == 4)
        {
          sub_10104C0B4(v55);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)(&v42);
            v64 = v50;
            v65 = v51;
            v66 = v52;
            *&v67 = v53;
            v60 = v46;
            v61 = v47;
            v62 = v48;
            v63 = v49;
            v56 = v42;
            v57 = v43;
            v58 = v44;
            v59 = v45;
            sub_10015049C(v69, v70);
            sub_1008ACD88();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v37 = v64;
            v38 = v65;
            v39 = v66;
            *&v40 = v67;
            v33 = v60;
            v34 = v61;
            v35 = v62;
            v36 = v63;
            v29 = v56;
            v30 = v57;
            v31 = v58;
            v32 = v59;
            sub_100A2221C(&v29);
            return sub_100007BAC(v69);
          }

          sub_100083C60(&v16);
          v50 = v24;
          v51 = v25;
          v52 = v26;
          v46 = v20;
          v47 = v21;
          v48 = v22;
          v49 = v23;
          v42 = v16;
          v43 = v17;
          v44 = v18;
          v45 = v19;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v36 = v23;
          v29 = v16;
          v30 = v17;
          *&v53 = v27;
          *&v40 = v27;
          v31 = v18;
          v32 = v19;
          v11 = &unk_1016B1B58;
          v12 = &unk_1013D1328;
        }

        else
        {
          sub_10104C0B4(v55);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)(&v42);
            v66 = v52;
            v67 = v53;
            v68 = v54;
            v62 = v48;
            v63 = v49;
            v64 = v50;
            v65 = v51;
            v58 = v44;
            v59 = v45;
            v60 = v46;
            v61 = v47;
            v56 = v42;
            v57 = v43;
            sub_10015049C(v69, v70);
            sub_100A22174();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v39 = v66;
            v40 = v67;
            v41 = v68;
            v35 = v62;
            v36 = v63;
            v37 = v64;
            v38 = v65;
            v31 = v58;
            v32 = v59;
            v33 = v60;
            v34 = v61;
            v29 = v56;
            v30 = v57;
            sub_100A221C8(&v29);
            return sub_100007BAC(v69);
          }

          sub_100A21E1C(&v16);
          v52 = v26;
          v53 = v27;
          v48 = v22;
          v49 = v23;
          v50 = v24;
          v51 = v25;
          v44 = v18;
          v45 = v19;
          v46 = v20;
          v47 = v21;
          v42 = v16;
          v43 = v17;
          v39 = v26;
          v40 = v27;
          v35 = v22;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          v31 = v18;
          v32 = v19;
          v33 = v20;
          v34 = v21;
          v54 = v28;
          v41 = v28;
          v29 = v16;
          v30 = v17;
          v11 = &unk_1016B1B50;
          v12 = &unk_1013D1320;
        }

        goto LABEL_48;
      }

      if (v8)
      {
        if (v8 == 1)
        {
          sub_10104C0B4(&v56);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v42 = v29;
            v43 = v30;
            sub_10015049C(v69, v70);
            sub_100392AF0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v10 = v43;
            sub_100016590(v42, *(&v42 + 1));
            sub_100016590(v10, *(&v10 + 1));
            return sub_100007BAC(v69);
          }

          v29 = xmmword_10138BBF0;
          v30 = 0uLL;
          sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_49:
          sub_1009A022C();
          swift_allocError();
          *v13 = 0;
          swift_willThrow();
          return sub_100007BAC(v69);
        }

        sub_10104C0B4(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v58 = v44;
          v59 = v45;
          v60 = v46;
          v56 = v42;
          v57 = v43;
          sub_10015049C(v69, v70);
          sub_10076B4F4();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v31 = v58;
          v32 = v59;
          v33 = v60;
          v29 = v56;
          v30 = v57;
          sub_100A22318(&v29);
          return sub_100007BAC(v69);
        }

        v42 = xmmword_10138BBF0;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v29 = xmmword_10138BBF0;
        v30 = 0u;
        v11 = &unk_1016B1B68;
        v12 = &unk_1013D1338;
LABEL_48:
        sub_10000B3A8(&v29, v11, v12);
        goto LABEL_49;
      }

      sub_10104C0B4(&v56);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_49;
      }

      sub_10015049C(v69, v70);
      sub_10030FB84();
LABEL_39:
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      return sub_100007BAC(v69);
    }

    if (v8 > 8u)
    {
      if (v8 != 9)
      {
        if (v8 == 10)
        {
          sub_10104C0B4(&v16);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v58 = v44;
            v59 = v45;
            v60 = v46;
            *&v61 = v47;
            v56 = v42;
            v57 = v43;
            sub_10015049C(v69, v70);
            sub_1005C5D58();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v31 = v58;
            v32 = v59;
            v33 = v60;
            *&v34 = v61;
            v29 = v56;
            v30 = v57;
            sub_100A22078(&v29);
            return sub_100007BAC(v69);
          }

          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v42 = xmmword_10138BBF0;
          v43 = 0u;
          *&v47 = 0;
          *&v34 = 0;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v29 = xmmword_10138BBF0;
          v30 = 0u;
          v11 = &unk_1016B1B40;
          v12 = &unk_1013D1310;
          goto LABEL_48;
        }

        sub_10104C0B4(&v56);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_10015049C(v69, v70);
        sub_10027FBB8();
        goto LABEL_39;
      }

      sub_10104C0B4(&v56);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v42 = v29;
        sub_10015049C(v69, v70);
        sub_100A220CC();
LABEL_33:
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v42, *(&v42 + 1));
        return sub_100007BAC(v69);
      }
    }

    else
    {
      if (v8 == 6)
      {
        sub_10104C0B4(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v60 = v46;
          v61 = v47;
          v62 = v48;
          v56 = v42;
          v57 = v43;
          v58 = v44;
          v59 = v45;
          sub_10015049C(v69, v70);
          sub_1003929A0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v33 = v60;
          v34 = v61;
          v35 = v62;
          v29 = v56;
          v30 = v57;
          v31 = v58;
          v32 = v59;
          sub_1003929F4(&v29);
          return sub_100007BAC(v69);
        }

        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v42 = xmmword_10138BBF0;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = xmmword_10138BBF0;
        v30 = 0u;
        v11 = &unk_1016B1BC0;
        v12 = &unk_1013D1378;
        goto LABEL_48;
      }

      if (v8 == 7)
      {
        sub_10104C0B4(&v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v56 = v42;
          v57 = v43;
          v58 = v44;
          v59 = v45;
          sub_10015049C(v69, v70);
          sub_10039294C();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v29 = v56;
          v30 = v57;
          v31 = v58;
          v32 = v59;
          sub_1001016B0(&v29);
          return sub_100007BAC(v69);
        }

        v42 = xmmword_10138BBF0;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = xmmword_10138BBF0;
        v30 = 0u;
        v11 = &unk_1016B1BB8;
        v12 = &unk_1013D1370;
        goto LABEL_48;
      }

      sub_10104C0B4(&v56);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v42 = v29;
        sub_10015049C(v69, v70);
        sub_1003928F8();
        goto LABEL_33;
      }
    }

    v29 = xmmword_10138BBF0;
    sub_100006654(0, 0xF000000000000000);
    goto LABEL_49;
  }

  return sub_100007BAC(v69);
}

ValueMetadata *sub_100A20554(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        v1 = &type metadata for AirPodsPairingEligibilityDataCommandPayload;
        sub_100A1D9A8();
      }

      else if (a1 == 10)
      {
        v1 = &type metadata for AirPodsPairingEligibilityDataResponseCommandPayload;
        sub_100A1DA00();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 6)
    {
      v1 = &type metadata for AirPodsSWFinalizePairingCommandPayload;
      sub_100391AEC();
    }

    else if (a1 == 7)
    {
      v1 = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
      sub_100101224();
    }

    else
    {
      v1 = &type metadata for AirPodsSWPairingCompleteCommandPayload;
      sub_100391A98();
    }
  }

  else if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv1;
      sub_100A1DA58();
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv2;
      sub_100A1DAB0();
    }

    else
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv3;
      sub_100A1DB08();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
      sub_100391B94();
    }

    else
    {
      v1 = &type metadata for AirPodsInitiatePairingCommandPayload;
      sub_100A1D950();
    }
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

ValueMetadata *sub_100A2068C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        v1 = &type metadata for AirPodsPairingEligibilityDataCommandPayload;
        sub_100A1D9A8();
      }

      else if (a1 == 10)
      {
        v1 = &type metadata for AirPodsPairingEligibilityDataResponseCommandPayload;
        sub_100A1DA00();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 6)
    {
      v1 = &type metadata for AirPodsFinalizePairingCommandPayload;
      sub_100A1D8F8();
    }

    else if (a1 == 7)
    {
      v1 = &type metadata for AirPodsSendPairingStatusCommandPayload;
      sub_100A1DB60();
    }

    else
    {
      v1 = &type metadata for AirPodsPairingCompleteCommandPayload;
      sub_1009A0048();
    }
  }

  else if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv1;
      sub_100A1DA58();
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv2;
      sub_100A1DAB0();
    }

    else
    {
      v1 = &type metadata for AirPodsSendPairingDataCommandPayloadv3;
      sub_100A1DB08();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
      sub_100391B94();
    }

    else
    {
      v1 = &type metadata for AirPodsInitiatePairingCommandPayload;
      sub_100A1D950();
    }
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

void sub_100A207C4(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100A20554(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 <= 5u)
    {
      if (a1 > 2u)
      {
        if (a1 == 3)
        {
          sub_10001F280(a2, v45);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            SharingCircleWildAdvertisementKey.init(key:)(&v32);
            v54 = v40;
            v55 = v41;
            v56 = v42;
            *&v57 = v43;
            v50 = v36;
            v51 = v37;
            v52 = v38;
            v53 = v39;
            v46 = v32;
            v47 = v33;
            v48 = v34;
            v49 = v35;
            sub_100A22974(&v46);
            goto LABEL_33;
          }

          sub_100083C60(&v19);
          v40 = v27;
          v41 = v28;
          v42 = v29;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v32 = v19;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v54 = v27;
          v55 = v28;
          v56 = v29;
          v50 = v23;
          v51 = v24;
          v52 = v25;
          v53 = v26;
          v46 = v19;
          v47 = v20;
          *&v43 = v30;
          *&v57 = v30;
          v48 = v21;
          v49 = v22;
          v15 = &unk_1016B1B60;
          v16 = &unk_1013D1330;
        }

        else
        {
          if (a1 != 4)
          {
            sub_10001F280(a2, v45);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (swift_dynamicCast())
            {
              sub_100007BAC(a2);
              SharingCircleWildAdvertisementKey.init(key:)(&v46);
              v42 = v56;
              v43 = v57;
              v44 = v58;
              v38 = v52;
              v39 = v53;
              v40 = v54;
              v41 = v55;
              v34 = v48;
              v35 = v49;
              v36 = v50;
              v37 = v51;
              v32 = v46;
              v33 = v47;
              sub_100A22890(&v32);
              v69 = v42;
              v70 = v43;
              v71 = v44;
              v65 = v38;
              v66 = v39;
              v67 = v40;
              v68 = v41;
              v61 = v34;
              v62 = v35;
              v63 = v36;
              v64 = v37;
              v8 = v32;
              v7 = v33;
              goto LABEL_34;
            }

            sub_100A21E1C(&v19);
            v56 = v29;
            v57 = v30;
            v52 = v25;
            v53 = v26;
            v54 = v27;
            v55 = v28;
            v48 = v21;
            v49 = v22;
            v50 = v23;
            v51 = v24;
            v46 = v19;
            v47 = v20;
            v42 = v29;
            v43 = v30;
            v38 = v25;
            v39 = v26;
            v40 = v27;
            v41 = v28;
            v34 = v21;
            v35 = v22;
            v36 = v23;
            v37 = v24;
            v58 = v31;
            v44 = v31;
            v32 = v19;
            v33 = v20;
            v15 = &unk_1016B1B50;
            v16 = &unk_1013D1320;
            v17 = &v32;
            goto LABEL_49;
          }

          sub_10001F280(a2, v45);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            SharingCircleWildAdvertisementKey.init(key:)(&v32);
            v54 = v40;
            v55 = v41;
            v56 = v42;
            *&v57 = v43;
            v50 = v36;
            v51 = v37;
            v52 = v38;
            v53 = v39;
            v46 = v32;
            v47 = v33;
            v48 = v34;
            v49 = v35;
            sub_100A22904(&v46);
            goto LABEL_33;
          }

          sub_100083C60(&v19);
          v40 = v27;
          v41 = v28;
          v42 = v29;
          v36 = v23;
          v37 = v24;
          v38 = v25;
          v39 = v26;
          v32 = v19;
          v33 = v20;
          v34 = v21;
          v35 = v22;
          v54 = v27;
          v55 = v28;
          v56 = v29;
          v50 = v23;
          v51 = v24;
          v52 = v25;
          v53 = v26;
          v46 = v19;
          v47 = v20;
          *&v43 = v30;
          *&v57 = v30;
          v48 = v21;
          v49 = v22;
          v15 = &unk_1016B1B58;
          v16 = &unk_1013D1328;
        }
      }

      else
      {
        if (!a1)
        {
          sub_10001F280(a2, &v46);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v32) = 0;
            sub_100A22ACC(&v59);
LABEL_35:
            v9 = v70;
            *(a3 + 160) = v69;
            *(a3 + 176) = v9;
            *(a3 + 192) = v71;
            v10 = v66;
            *(a3 + 96) = v65;
            *(a3 + 112) = v10;
            v11 = v68;
            *(a3 + 128) = v67;
            *(a3 + 144) = v11;
            v12 = v62;
            *(a3 + 32) = v61;
            *(a3 + 48) = v12;
            v13 = v64;
            *(a3 + 64) = v63;
            *(a3 + 80) = v13;
            v14 = v60;
            *a3 = v59;
            *(a3 + 16) = v14;
            return;
          }

          goto LABEL_50;
        }

        if (a1 == 1)
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v46 = v19;
            v47 = v20;
            sub_100A22A5C(&v46);
LABEL_33:
            v69 = v56;
            v70 = v57;
            v71 = v58;
            v65 = v52;
            v66 = v53;
            v67 = v54;
            v68 = v55;
            v61 = v48;
            v62 = v49;
            v63 = v50;
            v64 = v51;
            v8 = v46;
            v7 = v47;
LABEL_34:
            v59 = v8;
            v60 = v7;
            goto LABEL_35;
          }

          v19 = xmmword_10138BBF0;
          v20 = 0uLL;
          sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
          goto LABEL_50;
        }

        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v34;
          v49 = v35;
          v50 = v36;
          v46 = v32;
          v47 = v33;
          sub_100A229E8(&v46);
          goto LABEL_33;
        }

        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1B68;
        v16 = &unk_1013D1338;
      }

LABEL_48:
      v17 = &v46;
LABEL_49:
      sub_10000B3A8(v17, v15, v16);
      goto LABEL_50;
    }

    if (a1 > 8u)
    {
      if (a1 != 9)
      {
        if (a1 != 10)
        {
          sub_10001F280(a2, &v46);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v32) = 0;
            sub_100A225F0(&v59);
            goto LABEL_35;
          }

          goto LABEL_50;
        }

        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v34;
          v49 = v35;
          v50 = v36;
          *&v51 = v37;
          v46 = v32;
          v47 = v33;
          sub_100A22640(&v46);
          goto LABEL_33;
        }

        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v32 = xmmword_10138BBF0;
        v33 = 0u;
        *&v37 = 0;
        *&v51 = 0;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1B40;
        v16 = &unk_1013D1310;
        goto LABEL_48;
      }

      sub_10001F280(a2, &v32);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v46 = v19;
        sub_100A226B8(&v46);
        goto LABEL_33;
      }
    }

    else
    {
      if (a1 == 6)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v50 = v36;
          v51 = v37;
          v52 = v38;
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = v35;
          sub_100A22818(&v46);
          goto LABEL_33;
        }

        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1BC0;
        v16 = &unk_1013D1378;
        goto LABEL_48;
      }

      if (a1 == 7)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = v35;
          sub_100A227A0(&v46);
          goto LABEL_33;
        }

        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v15 = &unk_1016B1BB8;
        v16 = &unk_1013D1370;
        goto LABEL_48;
      }

      sub_10001F280(a2, &v32);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v46 = v19;
        sub_100A2272C(&v46);
        goto LABEL_33;
      }
    }

    v19 = xmmword_10138BBF0;
    sub_100006654(0, 0xF000000000000000);
LABEL_50:
    sub_1009A022C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_100007BAC(a2);
    return;
  }

  __break(1u);
}