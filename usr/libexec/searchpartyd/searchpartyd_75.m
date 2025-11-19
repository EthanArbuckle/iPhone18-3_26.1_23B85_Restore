uint64_t sub_1007DE010()
{
  v82 = v0;
  (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
  *(v0 + 400) = 0;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  sub_10000B3A8(v0 + 368, &unk_1016AA480, &unk_1013BD050);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 656);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  sub_10001F280(v1, v0 + 208);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 872);
    v6 = *(v0 + 808);
    v7 = *(v0 + 800);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v81 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    sub_1000035D0((v0 + 208), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC((v0 + 208));
    v15 = sub_1000136BC(v12, v14, &v81);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC((v0 + 208));
  }

  v16 = *(v0 + 808);
  v17 = *(v0 + 696);
  v18 = *(v0 + 688);
  v19 = *(v0 + 680);
  v20 = *(v0 + 648);
  sub_10001F280(*(v0 + 656), v0 + 248);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if ((v21 & 1) == 0)
  {
    v35 = *(v0 + 680);
    v36 = *(v0 + 656);
    v22(v35, 1, 1, *(v0 + 688));
    sub_10000B3A8(v35, &unk_101698C30, &unk_101392630);
    v37 = *(v20 + 208);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v38 = *(v16 + 72);
    v39 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101385D80;
    v41 = v36[3];
    v42 = v36[4];
    sub_1000035D0(v36, v41);
    (*(*(*(v42 + 8) + 8) + 32))(v41);
    *(v0 + 616) = v40;
    AsyncStreamProvider.yield(value:transaction:)();

    goto LABEL_15;
  }

  v23 = *(v0 + 704);
  v24 = *(v0 + 688);
  v25 = *(v0 + 680);
  v26 = *(v0 + 672);
  v22(v25, 0, 1, v24);
  sub_100035B84(v25, v23, type metadata accessor for SharedBeaconRecord);
  v27 = *(v20 + 208);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v28 = *(v16 + 72);
  v29 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  sub_1000D2A70(v23 + *(v24 + 80), v26, &unk_1016AF890, &qword_1013926D0);
  v31 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if ((*(*(v31 - 8) + 48))(v26, 1, v31) == 1)
  {
    v32 = *(v0 + 808);
    v33 = *(v0 + 800);
    v34 = *(v0 + 784);
    sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
    (*(v32 + 56))(v34, 1, 1, v33);
    goto LABEL_11;
  }

  v43 = *(v0 + 1024);
  v44 = *(v0 + 1016);
  v45 = *(v0 + 800);
  v46 = *(v0 + 784);
  v47 = *(v0 + 672);
  sub_1000D2A70(v47 + *(v31 + 20), v46, &qword_1016980D0, &unk_10138F3B0);
  sub_10003627C(v47, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if (v44(v46, 1, v45) == 1)
  {
LABEL_11:
    v48 = *(v0 + 1024);
    v49 = *(v0 + 1016);
    v50 = *(v0 + 800);
    v51 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v30 + v29, *(v0 + 704) + *(*(v0 + 688) + 20), v50);
    if (v49(v51, 1, v50) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_14;
  }

  (*(*(v0 + 808) + 32))(v30 + v29, *(v0 + 784), *(v0 + 800));
LABEL_14:
  v52 = *(v0 + 704);
  *(v0 + 624) = v30;
  AsyncStreamProvider.yield(value:transaction:)();

  sub_10003627C(v52, type metadata accessor for SharedBeaconRecord);
LABEL_15:
  v53 = *(v0 + 1008);
  v54 = *(v0 + 1301);
  v55 = *(v0 + 1000);
  v56 = *(v0 + 656);
  v57 = *(*(v0 + 648) + 160);
  type metadata accessor for Transaction();
  sub_10001F280(v56, v0 + 288);
  v58 = swift_allocObject();
  sub_10000A748((v0 + 288), v58 + 16);
  *(v58 + 56) = v57;
  *(v58 + 64) = v53;
  *(v58 + 72) = v54;
  v59 = v53;

  static Transaction.asyncTask(name:block:)();

  v60 = *(v0 + 904);
  v61 = *(v0 + 880);
  v62 = *(v0 + 872);
  v63 = *(v0 + 864);
  v64 = *(v0 + 856);
  v65 = *(v0 + 848);
  v66 = *(v0 + 840);
  v67 = *(v0 + 832);
  v68 = *(v0 + 824);
  v69 = *(v0 + 792);
  v72 = *(v0 + 784);
  v73 = *(v0 + 776);
  v74 = *(v0 + 768);
  v75 = *(v0 + 760);
  v76 = *(v0 + 752);
  v77 = *(v0 + 728);
  v78 = *(v0 + 704);
  v79 = *(v0 + 680);
  v80 = *(v0 + 672);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_1007DE7F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1136);
  v5 = *v1;
  v3[143] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[144] = v7;
  *v7 = v5;
  v7[1] = sub_1007DE980;
  v8 = v3[120];
  v9 = v3[119];
  v10 = v3[118];
  v11 = v3[117];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1007DE980(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 1152);
  v7 = *v2;

  v8 = *(v4 + 1144);
  if (v1)
  {

    v9 = sub_1007DFFF0;
    v10 = 0;
  }

  else
  {

    *(v5 + 1160) = a1;
    v9 = sub_1007DEAE0;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1007DEAE0()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 872);
  v6 = *(v0 + 816);
  v7 = *(v0 + 800);
  v8 = (*(v0 + 1296) + 24) & ~*(v0 + 1296);
  (*(v0 + 1080))(v5, *(v0 + 856), v7);
  v9 = swift_allocObject();
  *(v0 + 1168) = v9;
  *(v9 + 16) = v1;
  v4(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1176) = v11;
  v12 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v11 = v0;
  v11[1] = sub_1007DEC50;

  return unsafeBlocking<A>(context:_:)(v0 + 640, 0xD000000000000010, 0x800000010134A8C0, sub_1007FEE54, v9, v12);
}

uint64_t sub_1007DEC50()
{
  v1 = *(*v0 + 1176);
  v2 = *(*v0 + 1168);
  v3 = *(*v0 + 1160);
  v5 = *v0;

  return _swift_task_switch(sub_1007DED7C, v3, 0);
}

uint64_t sub_1007DED7C()
{
  v1 = v0[145];

  v0[148] = v0[80];

  return _swift_task_switch(sub_1007DEDEC, 0, 0);
}

uint64_t sub_1007DEDEC()
{
  v198 = v0;
  v2 = *(v0 + 1184);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v35 = *(v0 + 1112);
    (*(*(v0 + 808) + 8))(*(v0 + 856), *(v0 + 800));

    if (*(v0 + 1303))
    {
      goto LABEL_13;
    }

LABEL_49:
    (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
LABEL_50:
    sub_100007BAC((v0 + 328));
    if (qword_101694958 == -1)
    {
      goto LABEL_51;
    }

    goto LABEL_67;
  }

  v4 = *(*(v0 + 744) + 80);
  v5 = v2 + ((v4 + 32) & ~v4);
  sub_1007FF3E4(v5, *(v0 + 760), type metadata accessor for BeaconEstimatedLocation);
  if (v3 != 1)
  {
    v45 = 1;
    while (v45 < *(v2 + 16))
    {
      v46 = *(v0 + 760);
      v47 = *(v0 + 736);
      sub_1007FF3E4(v5 + *(*(v0 + 744) + 72) * v45, *(v0 + 752), type metadata accessor for BeaconEstimatedLocation);
      v48 = *(v47 + 40);
      if (static Date.< infix(_:_:)())
      {
        v49 = *(v0 + 760);
        v50 = *(v0 + 752);
        sub_10003627C(v49, type metadata accessor for BeaconEstimatedLocation);
        sub_100035B84(v50, v49, type metadata accessor for BeaconEstimatedLocation);
      }

      else
      {
        sub_10003627C(*(v0 + 752), type metadata accessor for BeaconEstimatedLocation);
      }

      if (v3 == ++v45)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_67:
    swift_once();
LABEL_51:
    v115 = *(v0 + 656);
    v116 = type metadata accessor for Logger();
    sub_1000076D4(v116, qword_10177B368);
    sub_10001F280(v115, v0 + 208);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = *(v0 + 872);
      v120 = *(v0 + 808);
      v121 = *(v0 + 800);
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v197 = v123;
      *v122 = 141558275;
      *(v122 + 4) = 1752392040;
      *(v122 + 12) = 2081;
      v125 = *(v0 + 232);
      v124 = *(v0 + 240);
      sub_1000035D0((v0 + 208), v125);
      (*(*(*(v124 + 8) + 8) + 32))(v125);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v128 = v127;
      (*(v120 + 8))(v119, v121);
      sub_100007BAC((v0 + 208));
      v129 = sub_1000136BC(v126, v128, &v197);

      *(v122 + 14) = v129;
      _os_log_impl(&_mh_execute_header, v117, v118, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v122, 0x16u);
      sub_100007BAC(v123);
    }

    else
    {

      sub_100007BAC((v0 + 208));
    }

    v130 = *(v0 + 808);
    v131 = *(v0 + 696);
    v132 = *(v0 + 688);
    v133 = *(v0 + 680);
    v134 = *(v0 + 648);
    sub_10001F280(*(v0 + 656), v0 + 248);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v135 = swift_dynamicCast();
    v136 = *(v131 + 56);
    if ((v135 & 1) == 0)
    {
      v149 = *(v0 + 680);
      v150 = *(v0 + 656);
      v136(v149, 1, 1, *(v0 + 688));
      sub_10000B3A8(v149, &unk_101698C30, &unk_101392630);
      v151 = *(v134 + 208);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v152 = *(v130 + 72);
      v153 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v154 = swift_allocObject();
      *(v154 + 16) = xmmword_101385D80;
      v155 = v150[3];
      v156 = v150[4];
      sub_1000035D0(v150, v155);
      (*(*(*(v156 + 8) + 8) + 32))(v155);
      *(v0 + 616) = v154;
      AsyncStreamProvider.yield(value:transaction:)();

LABEL_63:
      v167 = *(v0 + 1008);
      v168 = *(v0 + 1301);
      v169 = *(v0 + 1000);
      v170 = *(v0 + 656);
      v171 = *(*(v0 + 648) + 160);
      type metadata accessor for Transaction();
      sub_10001F280(v170, v0 + 288);
      v172 = swift_allocObject();
      sub_10000A748((v0 + 288), v172 + 16);
      *(v172 + 56) = v171;
      *(v172 + 64) = v167;
      *(v172 + 72) = v168;
      v173 = v167;

      static Transaction.asyncTask(name:block:)();

      v174 = *(v0 + 904);
      v175 = *(v0 + 880);
      v176 = *(v0 + 872);
      v177 = *(v0 + 864);
      v178 = *(v0 + 856);
      v179 = *(v0 + 848);
      v180 = *(v0 + 840);
      v181 = *(v0 + 832);
      v182 = *(v0 + 824);
      v183 = *(v0 + 792);
      v186 = *(v0 + 784);
      v187 = *(v0 + 776);
      v188 = *(v0 + 768);
      v189 = *(v0 + 760);
      v190 = *(v0 + 752);
      v191 = *(v0 + 728);
      v193 = *(v0 + 704);
      v194 = *(v0 + 680);
      v196 = *(v0 + 672);

      v184 = *(v0 + 8);

      return v184();
    }

    v137 = *(v0 + 704);
    v138 = *(v0 + 688);
    v139 = *(v0 + 680);
    v140 = *(v0 + 672);
    v136(v139, 0, 1, v138);
    sub_100035B84(v139, v137, type metadata accessor for SharedBeaconRecord);
    v141 = *(v134 + 208);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v142 = *(v130 + 72);
    v143 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_101385D80;
    sub_1000D2A70(v137 + *(v138 + 80), v140, &unk_1016AF890, &qword_1013926D0);
    v145 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v145 - 8) + 48))(v140, 1, v145) == 1)
    {
      v146 = *(v0 + 808);
      v147 = *(v0 + 800);
      v148 = *(v0 + 784);
      sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
      (*(v146 + 56))(v148, 1, 1, v147);
    }

    else
    {
      v157 = *(v0 + 1024);
      v158 = *(v0 + 1016);
      v159 = *(v0 + 800);
      v160 = *(v0 + 784);
      v161 = *(v0 + 672);
      sub_1000D2A70(v161 + *(v145 + 20), v160, &qword_1016980D0, &unk_10138F3B0);
      sub_10003627C(v161, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if (v158(v160, 1, v159) != 1)
      {
        (*(*(v0 + 808) + 32))(v144 + v143, *(v0 + 784), *(v0 + 800));
LABEL_62:
        v166 = *(v0 + 704);
        *(v0 + 624) = v144;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10003627C(v166, type metadata accessor for SharedBeaconRecord);
        goto LABEL_63;
      }
    }

    v162 = *(v0 + 1024);
    v163 = *(v0 + 1016);
    v164 = *(v0 + 800);
    v165 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v144 + v143, *(v0 + 704) + *(*(v0 + 688) + 20), v164);
    if (v163(v165, 1, v164) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_62;
  }

LABEL_3:
  v6 = *(v0 + 1184);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 760);
  v10 = *(v0 + 736);
  v11 = *(v0 + 664);

  sub_100035B84(v9, v8, type metadata accessor for BeaconEstimatedLocation);
  sub_100035B84(v8, v7, type metadata accessor for BeaconEstimatedLocation);
  if (*(v11 + *(v10 + 28)) != *(v7 + *(v10 + 28)) || (v12 = *(v0 + 776), v13 = *(v0 + 736), v14 = *(v0 + 664), *(v14 + v13[8]) != *(v12 + v13[8])) || *(v14 + v13[9]) != *(v12 + v13[9]))
  {
    v28 = *(v0 + 1112);
    v29 = *(v0 + 856);
    v30 = *(v0 + 808);
    v31 = *(v0 + 800);

    v20 = *(v30 + 8);
    v20(v29, v31);
LABEL_11:
    v32 = *(v0 + 880);
    v33 = *(v0 + 800);
    v34 = *(v0 + 808) + 8;
    sub_10003627C(*(v0 + 776), type metadata accessor for BeaconEstimatedLocation);
    v20(v32, v33);
    goto LABEL_50;
  }

  v15 = *(v0 + 856);
  v16 = *(v0 + 808);
  v17 = *(v0 + 800);
  v18 = v13[10];
  v19 = static Date.== infix(_:_:)();
  v20 = *(v16 + 8);
  v20(v15, v17);
  if ((v19 & 1) == 0)
  {
    v51 = *(v0 + 1112);

    goto LABEL_11;
  }

  v21 = *(v0 + 1301);
  v22 = *(v0 + 776);
  v23 = *(v22 + *(*(v0 + 736) + 44));
  sub_10003627C(v22, type metadata accessor for BeaconEstimatedLocation);
  if (v21 != v23)
  {
    v63 = *(v0 + 1112);
    v20(*(v0 + 880), *(v0 + 800));

    goto LABEL_50;
  }

  v24 = *(v0 + 1128);
  v25 = *(v0 + 1120);
  *(v0 + 1303) = 1;
  v26 = (v25 - 1) & v25;
  if (!v26)
  {
    while (1)
    {
      v100 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v27 = *(v0 + 1112);
      if (v100 >= (((1 << *(v0 + 1302)) + 63) >> 6))
      {

        if ((*(v0 + 1303) & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_13:
        v36 = *(v0 + 352);
        v37 = *(v0 + 360);
        sub_1000035D0((v0 + 328), v36);
        v38 = (*(v37 + 16))(v36, v37);
        *(v0 + 1192) = v38;
        v39 = *(v38 + 32);
        *(v0 + 1304) = v39;
        v40 = -1;
        v41 = -1 << v39;
        v42 = *(v38 + 56);
        if (-v41 < 64)
        {
          v40 = ~(-1 << -v41);
        }

        v1 = _swiftEmptyArrayStorage;
        *(v0 + 1200) = _swiftEmptyArrayStorage;
        v43 = v40 & v42;
        if (v43)
        {
          v44 = 0;
LABEL_27:
          *(v0 + 1216) = v44;
          *(v0 + 1208) = v43;
          v54 = *(v0 + 1088);
          v55 = *(v0 + 1040);
          v56 = *(v0 + 1032);
          v57 = *(v0 + 848);
          v58 = *(v0 + 840);
          v59 = *(v0 + 800);
          (*(v0 + 1080))(v57, *(v38 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v43)) | (v44 << 6)), v59);
          v56(v58, v57, v59);
          v60 = async function pointer to daemon.getter[1];
          v61 = swift_task_alloc();
          *(v0 + 1224) = v61;
          *v61 = v0;
          v62 = sub_1007E0E24;
          goto LABEL_28;
        }

        v52 = 0;
        v53 = ((63 - v41) >> 6) - 1;
        while (v53 != v52)
        {
          v44 = v52 + 1;
          v43 = *(v38 + 8 * v52++ + 64);
          if (v43)
          {
            goto LABEL_27;
          }
        }

        if (qword_101694958 != -1)
        {
          goto LABEL_69;
        }

LABEL_33:
        v64 = *(v0 + 1088);
        v65 = *(v0 + 1080);
        v66 = *(v0 + 880);
        v67 = *(v0 + 824);
        v68 = *(v0 + 800);
        v69 = *(v0 + 656);
        v70 = type metadata accessor for Logger();
        sub_1000076D4(v70, qword_10177B368);
        v65(v67, v66, v68);
        sub_10001F280(v69, v0 + 488);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v192 = *(v0 + 872);
          v195 = v72;
          v73 = *(v0 + 824);
          v74 = *(v0 + 808);
          v75 = *(v0 + 800);
          v76 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          *v76 = 141558787;
          *(v76 + 4) = 1752392040;
          *(v76 + 12) = 2081;
          sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v78;
          v80 = *(v74 + 8);
          v80(v73, v75);
          v81 = sub_1000136BC(v77, v79, &v197);

          *(v76 + 14) = v81;
          *(v76 + 22) = 2160;
          *(v76 + 24) = 1752392040;
          *(v76 + 32) = 2081;
          v82 = *(v0 + 512);
          v83 = *(v0 + 520);
          sub_1000035D0((v0 + 488), v82);
          (*(*(*(v83 + 8) + 8) + 32))(v82);
          v1 = _swiftEmptyArrayStorage;
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          v80(v192, v75);
          sub_100007BAC((v0 + 488));
          v87 = sub_1000136BC(v84, v86, &v197);

          *(v76 + 34) = v87;
          _os_log_impl(&_mh_execute_header, v71, v195, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v76, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          v88 = *(v0 + 824);
          v89 = *(v0 + 808);
          v90 = *(v0 + 800);

          v80 = *(v89 + 8);
          v80(v88, v90);
          sub_100007BAC((v0 + 488));
        }

        *(v0 + 1272) = v80;
        v91 = *(*(v0 + 648) + 208);
        v92 = *(v0 + 352);
        v93 = *(v0 + 360);
        sub_1000035D0((v0 + 328), v92);
        v94 = (*(v93 + 16))(v92, v93);
        v95 = v94;
        v96 = *(v94 + 16);
        if (!v96)
        {

          v98 = _swiftEmptyArrayStorage;
LABEL_45:
          v108 = *(v0 + 1008);
          v109 = *(v0 + 656);
          v110 = *(v0 + 648);
          *(v0 + 632) = v98;
          AsyncStreamProvider.yield(value:transaction:)();

          sub_10001F280(v0 + 328, v0 + 528);
          sub_10001F280(v109, v0 + 568);
          v111 = swift_allocObject();
          *(v0 + 1280) = v111;
          v111[2] = v110;
          v111[3] = v1;
          sub_10000A748((v0 + 528), (v111 + 4));
          sub_10000A748((v0 + 568), (v111 + 9));
          v111[14] = v108;
          v112 = async function pointer to unsafeBlocking<A>(context:_:)[1];
          v113 = v108;

          v114 = swift_task_alloc();
          *(v0 + 1288) = v114;
          *v114 = v0;
          v114[1] = sub_1007E2220;

          return unsafeBlocking<A>(context:_:)(v114, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v111, &type metadata for () + 8);
        }

        v97 = *(v0 + 1296);
        v98 = sub_1003A85FC(*(v94 + 16), 0);
        v99 = sub_1003A9D58(&v197, &v98[(v97 + 32) & ~v97], v96, v95);
        sub_1000128F8();
        if (v99 == v96)
        {
          goto LABEL_45;
        }

        __break(1u);
      }

      else
      {
        v26 = *(v27 + 8 * v100 + 56);
        ++v24;
        if (v26)
        {
          v24 = v100;
          goto LABEL_43;
        }
      }
    }

    __break(1u);
LABEL_69:
    swift_once();
    goto LABEL_33;
  }

  v27 = *(v0 + 1112);
LABEL_43:
  *(v0 + 1128) = v24;
  *(v0 + 1120) = v26;
  v101 = *(v0 + 1088);
  v102 = *(v0 + 1040);
  v103 = *(v0 + 1032);
  v104 = *(v0 + 864);
  v105 = *(v0 + 856);
  v106 = *(v0 + 800);
  (*(v0 + 1080))(v104, *(v27 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v26)) | (v24 << 6)), v106);
  v103(v105, v104, v106);
  v107 = async function pointer to daemon.getter[1];
  v61 = swift_task_alloc();
  *(v0 + 1136) = v61;
  *v61 = v0;
  v62 = sub_1007DE7F4;
LABEL_28:
  v61[1] = v62;

  return daemon.getter();
}

uint64_t sub_1007DFFF0()
{
  v150 = v0;
  v1 = *(v0 + 1112);
  v2 = *(v0 + 856);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  (*(v3 + 8))(v2, v4);
  if ((*(v0 + 1303) & 1) == 0)
  {
    (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
    sub_100007BAC((v0 + 328));
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 656);
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B368);
    sub_10001F280(v14, v0 + 208);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 872);
      v19 = *(v0 + 808);
      v20 = *(v0 + 800);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v149 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      sub_1000035D0((v0 + 208), v24);
      (*(*(*(v23 + 8) + 8) + 32))(v24);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v19 + 8))(v18, v20);
      sub_100007BAC((v0 + 208));
      v28 = sub_1000136BC(v25, v27, &v149);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v21, 0x16u);
      sub_100007BAC(v22);
    }

    else
    {

      sub_100007BAC((v0 + 208));
    }

    v29 = *(v0 + 808);
    v30 = *(v0 + 696);
    v31 = *(v0 + 688);
    v32 = *(v0 + 680);
    v33 = *(v0 + 648);
    sub_10001F280(*(v0 + 656), v0 + 248);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v34 = swift_dynamicCast();
    v35 = *(v30 + 56);
    if ((v34 & 1) == 0)
    {
      v48 = *(v0 + 680);
      v49 = *(v0 + 656);
      v35(v48, 1, 1, *(v0 + 688));
      sub_10000B3A8(v48, &unk_101698C30, &unk_101392630);
      v50 = *(v33 + 208);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v51 = *(v29 + 72);
      v52 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_101385D80;
      v54 = v49[3];
      v55 = v49[4];
      sub_1000035D0(v49, v54);
      (*(*(*(v55 + 8) + 8) + 32))(v54);
      *(v0 + 616) = v53;
      AsyncStreamProvider.yield(value:transaction:)();

LABEL_30:
      v100 = *(v0 + 1008);
      v101 = *(v0 + 1301);
      v102 = *(v0 + 1000);
      v103 = *(v0 + 656);
      v104 = *(*(v0 + 648) + 160);
      type metadata accessor for Transaction();
      sub_10001F280(v103, v0 + 288);
      v105 = swift_allocObject();
      sub_10000A748((v0 + 288), v105 + 16);
      *(v105 + 56) = v104;
      *(v105 + 64) = v100;
      *(v105 + 72) = v101;
      v106 = v100;

      static Transaction.asyncTask(name:block:)();

      v107 = *(v0 + 904);
      v108 = *(v0 + 880);
      v109 = *(v0 + 872);
      v110 = *(v0 + 864);
      v111 = *(v0 + 856);
      v112 = *(v0 + 848);
      v113 = *(v0 + 840);
      v114 = *(v0 + 832);
      v115 = *(v0 + 824);
      v116 = *(v0 + 792);
      v138 = *(v0 + 784);
      v139 = *(v0 + 776);
      v140 = *(v0 + 768);
      v141 = *(v0 + 760);
      v142 = *(v0 + 752);
      v143 = *(v0 + 728);
      v145 = *(v0 + 704);
      v146 = *(v0 + 680);
      v148 = *(v0 + 672);

      v117 = *(v0 + 8);

      return v117();
    }

    v36 = *(v0 + 704);
    v37 = *(v0 + 688);
    v38 = *(v0 + 680);
    v39 = *(v0 + 672);
    v35(v38, 0, 1, v37);
    sub_100035B84(v38, v36, type metadata accessor for SharedBeaconRecord);
    v40 = *(v33 + 208);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v41 = *(v29 + 72);
    v42 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_101385D80;
    sub_1000D2A70(v36 + *(v37 + 80), v39, &unk_1016AF890, &qword_1013926D0);
    v44 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v44 - 8) + 48))(v39, 1, v44) == 1)
    {
      v45 = *(v0 + 808);
      v46 = *(v0 + 800);
      v47 = *(v0 + 784);
      sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
      (*(v45 + 56))(v47, 1, 1, v46);
    }

    else
    {
      v66 = *(v0 + 1024);
      v67 = *(v0 + 1016);
      v68 = *(v0 + 800);
      v69 = *(v0 + 784);
      v70 = *(v0 + 672);
      sub_1000D2A70(v70 + *(v44 + 20), v69, &qword_1016980D0, &unk_10138F3B0);
      sub_10003627C(v70, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if (v67(v69, 1, v68) != 1)
      {
        (*(*(v0 + 808) + 32))(v43 + v42, *(v0 + 784), *(v0 + 800));
LABEL_29:
        v99 = *(v0 + 704);
        *(v0 + 624) = v43;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10003627C(v99, type metadata accessor for SharedBeaconRecord);
        goto LABEL_30;
      }
    }

    v71 = *(v0 + 1024);
    v72 = *(v0 + 1016);
    v73 = *(v0 + 800);
    v74 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v43 + v42, *(v0 + 704) + *(*(v0 + 688) + 20), v73);
    if (v72(v74, 1, v73) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_29;
  }

  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  sub_1000035D0((v0 + 328), v5);
  v7 = (*(v6 + 16))(v5, v6);
  *(v0 + 1192) = v7;
  v8 = *(v7 + 32);
  *(v0 + 1304) = v8;
  v9 = -1;
  v10 = -1 << v8;
  v11 = *(v7 + 56);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  *(v0 + 1200) = _swiftEmptyArrayStorage;
  v12 = v9 & v11;
  if (!v12)
  {
    v56 = 0;
    v57 = ((63 - v10) >> 6) - 1;
    while (v57 != v56)
    {
      v13 = v56 + 1;
      v12 = *(v7 + 8 * v56++ + 64);
      if (v12)
      {
        goto LABEL_18;
      }
    }

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 1088);
    v76 = *(v0 + 1080);
    v77 = *(v0 + 880);
    v78 = *(v0 + 824);
    v79 = *(v0 + 800);
    v80 = *(v0 + 656);
    v81 = type metadata accessor for Logger();
    sub_1000076D4(v81, qword_10177B368);
    v76(v78, v77, v79);
    sub_10001F280(v80, v0 + 488);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v144 = *(v0 + 872);
      v147 = v83;
      v84 = *(v0 + 824);
      v85 = *(v0 + 808);
      v86 = *(v0 + 800);
      v87 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v87 = 141558787;
      *(v87 + 4) = 1752392040;
      *(v87 + 12) = 2081;
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      v91 = *(v85 + 8);
      v91(v84, v86);
      v92 = sub_1000136BC(v88, v90, &v149);

      *(v87 + 14) = v92;
      *(v87 + 22) = 2160;
      *(v87 + 24) = 1752392040;
      *(v87 + 32) = 2081;
      v93 = *(v0 + 512);
      v94 = *(v0 + 520);
      sub_1000035D0((v0 + 488), v93);
      (*(*(*(v94 + 8) + 8) + 32))(v93);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v91(v144, v86);
      sub_100007BAC((v0 + 488));
      v98 = sub_1000136BC(v95, v97, &v149);

      *(v87 + 34) = v98;
      _os_log_impl(&_mh_execute_header, v82, v147, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v87, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v118 = *(v0 + 824);
      v119 = *(v0 + 808);
      v120 = *(v0 + 800);

      v91 = *(v119 + 8);
      v91(v118, v120);
      sub_100007BAC((v0 + 488));
    }

    *(v0 + 1272) = v91;
    v121 = *(*(v0 + 648) + 208);
    v122 = *(v0 + 352);
    v123 = *(v0 + 360);
    sub_1000035D0((v0 + 328), v122);
    v124 = (*(v123 + 16))(v122, v123);
    v125 = v124;
    v126 = *(v124 + 16);
    if (v126)
    {
      v127 = *(v0 + 1296);
      v128 = sub_1003A85FC(*(v124 + 16), 0);
      v129 = sub_1003A9D58(&v149, &v128[(v127 + 32) & ~v127], v126, v125);
      sub_1000128F8();
      if (v129 == v126)
      {
LABEL_38:
        v130 = *(v0 + 1008);
        v131 = *(v0 + 656);
        v132 = *(v0 + 648);
        *(v0 + 632) = v128;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10001F280(v0 + 328, v0 + 528);
        sub_10001F280(v131, v0 + 568);
        v133 = swift_allocObject();
        *(v0 + 1280) = v133;
        v133[2] = v132;
        v133[3] = _swiftEmptyArrayStorage;
        sub_10000A748((v0 + 528), (v133 + 4));
        sub_10000A748((v0 + 568), (v133 + 9));
        v133[14] = v130;
        v134 = async function pointer to unsafeBlocking<A>(context:_:)[1];
        v135 = v130;

        v136 = swift_task_alloc();
        *(v0 + 1288) = v136;
        *v136 = v0;
        v136[1] = sub_1007E2220;

        return unsafeBlocking<A>(context:_:)(v136, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v133, &type metadata for () + 8);
      }

      __break(1u);
    }

    v128 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v13 = 0;
LABEL_18:
  *(v0 + 1216) = v13;
  *(v0 + 1208) = v12;
  v58 = *(v0 + 1088);
  v59 = *(v0 + 1040);
  v60 = *(v0 + 1032);
  v61 = *(v0 + 848);
  v62 = *(v0 + 840);
  v63 = *(v0 + 800);
  (*(v0 + 1080))(v61, *(v7 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v12)) | (v13 << 6)), v63);
  v60(v62, v61, v63);
  v64 = async function pointer to daemon.getter[1];
  v65 = swift_task_alloc();
  *(v0 + 1224) = v65;
  *v65 = v0;
  v65[1] = sub_1007E0E24;

  return daemon.getter();
}

uint64_t sub_1007E0E24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1224);
  v5 = *v1;
  v3[154] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[155] = v7;
  *v7 = v5;
  v7[1] = sub_1007E0FB0;
  v8 = v3[120];
  v9 = v3[119];
  v10 = v3[118];
  v11 = v3[117];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1007E0FB0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 1240);
  v7 = *v2;

  v8 = *(v4 + 1232);
  if (v1)
  {

    v9 = sub_1007E1BB8;
    v10 = 0;
  }

  else
  {

    *(v5 + 1248) = a1;
    v9 = sub_1007E1110;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1007E1110()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 872);
  v6 = *(v0 + 816);
  v7 = *(v0 + 800);
  v8 = (*(v0 + 1296) + 24) & ~*(v0 + 1296);
  (*(v0 + 1080))(v5, *(v0 + 840), v7);
  v9 = swift_allocObject();
  *(v0 + 1256) = v9;
  *(v9 + 16) = v1;
  v4(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1264) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_1007E1280;

  return unsafeBlocking<A>(context:_:)(v0 + 448, 0xD000000000000010, 0x800000010134A8C0, sub_1007FEDA0, v9, v12);
}

uint64_t sub_1007E1280()
{
  v1 = *(*v0 + 1264);
  v2 = *(*v0 + 1256);
  v3 = *(*v0 + 1248);
  v5 = *v0;

  return _swift_task_switch(sub_1007E13B4, 0, 0);
}

uint64_t sub_1007E13B4()
{
  v84 = v0;
  if (*(v0 + 472))
  {
    v80 = *(v0 + 1040);
    v81 = *(v0 + 1200);
    v1 = *(v0 + 1032);
    v2 = *(v0 + 1008);
    v3 = *(v0 + 832);
    v4 = *(v0 + 800);
    v5 = *(v0 + 728);
    v6 = *(v0 + 712);
    sub_10000A748((v0 + 448), v0 + 408);
    v8 = *(v0 + 432);
    v7 = *(v0 + 440);
    sub_1000035D0((v0 + 408), v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    v9 = *(v0 + 432);
    v10 = *(v0 + 440);
    sub_1000035D0((v0 + 408), v9);
    v11 = (*(v10 + 184))(v9, v10);
    v12 = *(v6 + 48);
    v13 = *(sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060) + 48);
    v1(v5, v3, v4);
    *(v5 + v13) = v11;
    *(v5 + v12) = v2;
    v14 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 1200);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v16 = sub_100A5DED0(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100A5DED0(v17 > 1, v18 + 1, 1, v16);
    }

    v19 = *(v0 + 728);
    v20 = *(v0 + 720);
    (*(*(v0 + 808) + 8))(*(v0 + 840), *(v0 + 800));
    v16[2] = v18 + 1;
    sub_1000D2AD8(v19, v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18, &unk_1016AA458, &unk_1013BD028);
    sub_100007BAC((v0 + 408));
  }

  else
  {
    (*(*(v0 + 808) + 8))(*(v0 + 840), *(v0 + 800));
    sub_10000B3A8(v0 + 448, &qword_101696920, &unk_10138B200);
    v16 = *(v0 + 1200);
  }

  v21 = *(v0 + 1216);
  v22 = *(v0 + 1208);
  *(v0 + 1200) = v16;
  v23 = (v22 - 1) & v22;
  if (!v23)
  {
    while (1)
    {
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      v24 = *(v0 + 1192);
      if (v25 >= (((1 << *(v0 + 1304)) + 63) >> 6))
      {
        break;
      }

      v23 = *(v24 + 8 * v25 + 56);
      ++v21;
      if (v23)
      {
        v21 = v25;
        goto LABEL_13;
      }
    }

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 1088);
    v35 = *(v0 + 1080);
    v36 = *(v0 + 880);
    v37 = *(v0 + 824);
    v38 = *(v0 + 800);
    v39 = *(v0 + 656);
    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177B368);
    v35(v37, v36, v38);
    sub_10001F280(v39, v0 + 488);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v79 = *(v0 + 872);
      v82 = v42;
      v43 = *(v0 + 824);
      v44 = *(v0 + 808);
      v45 = *(v0 + 800);
      v46 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v46 = 141558787;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v41;
      v49 = v48;
      v50 = *(v44 + 8);
      v50(v43, v45);
      v51 = sub_1000136BC(v47, v49, &v83);

      *(v46 + 14) = v51;
      *(v46 + 22) = 2160;
      *(v46 + 24) = 1752392040;
      *(v46 + 32) = 2081;
      v52 = *(v0 + 512);
      v53 = *(v0 + 520);
      sub_1000035D0((v0 + 488), v52);
      (*(*(*(v53 + 8) + 8) + 32))(v52);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v50(v79, v45);
      sub_100007BAC((v0 + 488));
      v57 = sub_1000136BC(v54, v56, &v83);

      *(v46 + 34) = v57;
      _os_log_impl(&_mh_execute_header, log, v82, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v46, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v58 = *(v0 + 824);
      v59 = *(v0 + 808);
      v60 = *(v0 + 800);

      v50 = *(v59 + 8);
      v50(v58, v60);
      sub_100007BAC((v0 + 488));
    }

    *(v0 + 1272) = v50;
    v61 = *(*(v0 + 648) + 208);
    v62 = *(v0 + 352);
    v63 = *(v0 + 360);
    sub_1000035D0((v0 + 328), v62);
    v64 = (*(v63 + 16))(v62, v63);
    v65 = v64;
    v66 = *(v64 + 16);
    if (v66)
    {
      v67 = *(v0 + 1296);
      v68 = sub_1003A85FC(*(v64 + 16), 0);
      v69 = sub_1003A9D58(&v83, &v68[(v67 + 32) & ~v67], v66, v65);
      sub_1000128F8();
      if (v69 == v66)
      {
LABEL_25:
        v70 = *(v0 + 1008);
        v71 = *(v0 + 656);
        v72 = *(v0 + 648);
        *(v0 + 632) = v68;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10001F280(v0 + 328, v0 + 528);
        sub_10001F280(v71, v0 + 568);
        v73 = swift_allocObject();
        *(v0 + 1280) = v73;
        v73[2] = v72;
        v73[3] = v16;
        sub_10000A748((v0 + 528), (v73 + 4));
        sub_10000A748((v0 + 568), (v73 + 9));
        v73[14] = v70;
        v74 = async function pointer to unsafeBlocking<A>(context:_:)[1];
        v75 = v70;

        v76 = swift_task_alloc();
        *(v0 + 1288) = v76;
        *v76 = v0;
        v76[1] = sub_1007E2220;

        return unsafeBlocking<A>(context:_:)(v76, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v73, &type metadata for () + 8);
      }

      __break(1u);
    }

    v68 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v24 = *(v0 + 1192);
LABEL_13:
  *(v0 + 1216) = v21;
  *(v0 + 1208) = v23;
  v26 = *(v0 + 1088);
  v27 = *(v0 + 1040);
  v28 = *(v0 + 1032);
  v29 = *(v0 + 848);
  v30 = *(v0 + 840);
  v31 = *(v0 + 800);
  (*(v0 + 1080))(v29, *(v24 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v23)) | (v21 << 6)), v31);
  v28(v30, v29, v31);
  v32 = async function pointer to daemon.getter[1];
  v33 = swift_task_alloc();
  *(v0 + 1224) = v33;
  *v33 = v0;
  v33[1] = sub_1007E0E24;

  return daemon.getter();
}

uint64_t sub_1007E1BB8()
{
  v61 = v0;
  (*(*(v0 + 808) + 8))(*(v0 + 840), *(v0 + 800));
  *(v0 + 480) = 0;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  sub_10000B3A8(v0 + 448, &qword_101696920, &unk_10138B200);
  v1 = *(v0 + 1216);
  v2 = (*(v0 + 1208) - 1) & *(v0 + 1208);
  if (!v2)
  {
    v4 = *(v0 + 1200);
    while (1)
    {
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v3 = *(v0 + 1192);
      if (v5 >= (((1 << *(v0 + 1304)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v5 + 56);
      ++v1;
      if (v2)
      {
        v1 = v5;
        goto LABEL_8;
      }
    }

    if (qword_101694958 == -1)
    {
      goto LABEL_12;
    }

LABEL_23:
    swift_once();
LABEL_12:
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 880);
    v17 = *(v0 + 824);
    v18 = *(v0 + 800);
    v19 = *(v0 + 656);
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177B368);
    v15(v17, v16, v18);
    sub_10001F280(v19, v0 + 488);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v58 = *(v0 + 872);
      v59 = v22;
      v23 = *(v0 + 824);
      v24 = *(v0 + 808);
      v25 = *(v0 + 800);
      v26 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v26 = 141558787;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v30 = *(v24 + 8);
      v30(v23, v25);
      v31 = sub_1000136BC(v27, v29, &v60);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2160;
      *(v26 + 24) = 1752392040;
      *(v26 + 32) = 2081;
      v32 = *(v0 + 512);
      v33 = *(v0 + 520);
      sub_1000035D0((v0 + 488), v32);
      (*(*(*(v33 + 8) + 8) + 32))(v32);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v30(v58, v25);
      sub_100007BAC((v0 + 488));
      v37 = sub_1000136BC(v34, v36, &v60);

      *(v26 + 34) = v37;
      _os_log_impl(&_mh_execute_header, v21, v59, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v26, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v38 = *(v0 + 824);
      v39 = *(v0 + 808);
      v40 = *(v0 + 800);

      v30 = *(v39 + 8);
      v30(v38, v40);
      sub_100007BAC((v0 + 488));
    }

    *(v0 + 1272) = v30;
    v41 = *(*(v0 + 648) + 208);
    v42 = *(v0 + 352);
    v43 = *(v0 + 360);
    sub_1000035D0((v0 + 328), v42);
    v44 = (*(v43 + 16))(v42, v43);
    v45 = v44;
    v46 = *(v44 + 16);
    if (v46)
    {
      v47 = *(v0 + 1296);
      v48 = sub_1003A85FC(*(v44 + 16), 0);
      v49 = sub_1003A9D58(&v60, &v48[(v47 + 32) & ~v47], v46, v45);
      sub_1000128F8();
      if (v49 == v46)
      {
LABEL_19:
        v50 = *(v0 + 1008);
        v51 = *(v0 + 656);
        v52 = *(v0 + 648);
        *(v0 + 632) = v48;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10001F280(v0 + 328, v0 + 528);
        sub_10001F280(v51, v0 + 568);
        v53 = swift_allocObject();
        *(v0 + 1280) = v53;
        v53[2] = v52;
        v53[3] = v4;
        sub_10000A748((v0 + 528), (v53 + 4));
        sub_10000A748((v0 + 568), (v53 + 9));
        v53[14] = v50;
        v54 = async function pointer to unsafeBlocking<A>(context:_:)[1];
        v55 = v50;

        v56 = swift_task_alloc();
        *(v0 + 1288) = v56;
        *v56 = v0;
        v56[1] = sub_1007E2220;

        return unsafeBlocking<A>(context:_:)(v56, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v53, &type metadata for () + 8);
      }

      __break(1u);
    }

    v48 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v3 = *(v0 + 1192);
LABEL_8:
  *(v0 + 1216) = v1;
  *(v0 + 1208) = v2;
  v6 = *(v0 + 1088);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 848);
  v10 = *(v0 + 840);
  v11 = *(v0 + 800);
  (*(v0 + 1080))(v9, *(v3 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v2)) | (v1 << 6)), v11);
  v8(v10, v9, v11);
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  *(v0 + 1224) = v13;
  *v13 = v0;
  v13[1] = sub_1007E0E24;

  return daemon.getter();
}

uint64_t sub_1007E2220()
{
  v1 = *(*v0 + 1288);
  v2 = *(*v0 + 1280);
  v4 = *v0;

  return _swift_task_switch(sub_1007E2338, 0, 0);
}

uint64_t sub_1007E2338()
{
  v83 = v0;
  v1 = *(v0 + 808) + 8;
  (*(v0 + 1272))(*(v0 + 880), *(v0 + 800));
  sub_100007BAC((v0 + 328));
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 656);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_10001F280(v2, v0 + 208);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 872);
    v7 = *(v0 + 808);
    v8 = *(v0 + 800);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v82 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    sub_1000035D0((v0 + 208), v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    sub_100007BAC((v0 + 208));
    v16 = sub_1000136BC(v13, v15, &v82);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC((v0 + 208));
  }

  v17 = *(v0 + 808);
  v18 = *(v0 + 696);
  v19 = *(v0 + 688);
  v20 = *(v0 + 680);
  v21 = *(v0 + 648);
  sub_10001F280(*(v0 + 656), v0 + 248);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if ((v22 & 1) == 0)
  {
    v36 = *(v0 + 680);
    v37 = *(v0 + 656);
    v23(v36, 1, 1, *(v0 + 688));
    sub_10000B3A8(v36, &unk_101698C30, &unk_101392630);
    v38 = *(v21 + 208);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v39 = *(v17 + 72);
    v40 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_101385D80;
    v42 = v37[3];
    v43 = v37[4];
    sub_1000035D0(v37, v42);
    (*(*(*(v43 + 8) + 8) + 32))(v42);
    *(v0 + 616) = v41;
    AsyncStreamProvider.yield(value:transaction:)();

    goto LABEL_15;
  }

  v24 = *(v0 + 704);
  v25 = *(v0 + 688);
  v26 = *(v0 + 680);
  v27 = *(v0 + 672);
  v23(v26, 0, 1, v25);
  sub_100035B84(v26, v24, type metadata accessor for SharedBeaconRecord);
  v28 = *(v21 + 208);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v29 = *(v17 + 72);
  v30 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  sub_1000D2A70(v24 + *(v25 + 80), v27, &unk_1016AF890, &qword_1013926D0);
  v32 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if ((*(*(v32 - 8) + 48))(v27, 1, v32) == 1)
  {
    v33 = *(v0 + 808);
    v34 = *(v0 + 800);
    v35 = *(v0 + 784);
    sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
    (*(v33 + 56))(v35, 1, 1, v34);
    goto LABEL_11;
  }

  v44 = *(v0 + 1024);
  v45 = *(v0 + 1016);
  v46 = *(v0 + 800);
  v47 = *(v0 + 784);
  v48 = *(v0 + 672);
  sub_1000D2A70(v48 + *(v32 + 20), v47, &qword_1016980D0, &unk_10138F3B0);
  sub_10003627C(v48, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if (v45(v47, 1, v46) == 1)
  {
LABEL_11:
    v49 = *(v0 + 1024);
    v50 = *(v0 + 1016);
    v51 = *(v0 + 800);
    v52 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v31 + v30, *(v0 + 704) + *(*(v0 + 688) + 20), v51);
    if (v50(v52, 1, v51) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_14;
  }

  (*(*(v0 + 808) + 32))(v31 + v30, *(v0 + 784), *(v0 + 800));
LABEL_14:
  v53 = *(v0 + 704);
  *(v0 + 624) = v31;
  AsyncStreamProvider.yield(value:transaction:)();

  sub_10003627C(v53, type metadata accessor for SharedBeaconRecord);
LABEL_15:
  v54 = *(v0 + 1008);
  v55 = *(v0 + 1301);
  v56 = *(v0 + 1000);
  v57 = *(v0 + 656);
  v58 = *(*(v0 + 648) + 160);
  type metadata accessor for Transaction();
  sub_10001F280(v57, v0 + 288);
  v59 = swift_allocObject();
  sub_10000A748((v0 + 288), v59 + 16);
  *(v59 + 56) = v58;
  *(v59 + 64) = v54;
  *(v59 + 72) = v55;
  v60 = v54;

  static Transaction.asyncTask(name:block:)();

  v61 = *(v0 + 904);
  v62 = *(v0 + 880);
  v63 = *(v0 + 872);
  v64 = *(v0 + 864);
  v65 = *(v0 + 856);
  v66 = *(v0 + 848);
  v67 = *(v0 + 840);
  v68 = *(v0 + 832);
  v69 = *(v0 + 824);
  v70 = *(v0 + 792);
  v73 = *(v0 + 784);
  v74 = *(v0 + 776);
  v75 = *(v0 + 768);
  v76 = *(v0 + 760);
  v77 = *(v0 + 752);
  v78 = *(v0 + 728);
  v79 = *(v0 + 704);
  v80 = *(v0 + 680);
  v81 = *(v0 + 672);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_1007E2B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 160);
  sub_1000BC4D4(&unk_1016AA4A0, &qword_1013BD070);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  sub_10001F280(a3, v10 + 32);
  v11 = a4[3];
  v12 = a4[4];
  sub_1000035D0(a4, v11);
  *(v10 + 72) = (*(v12 + 184))(v11, v12);
  *(v10 + 80) = a5;
  v13 = a5;
  sub_1007F247C(a2, v10, 2);
}

uint64_t sub_1007E2BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for BeaconEstimatedLocation();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016AA430, &unk_101392650) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for ObservedAdvertisement.Location(0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v4[15] = *(v13 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v14 = type metadata accessor for ObservedAdvertisement(0);
  v4[20] = v14;
  v15 = *(v14 - 8);
  v4[21] = v15;
  v16 = *(v15 + 64) + 15;
  v4[22] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v18 = sub_1000BC4D4(&qword_1016AA438, &qword_1013BD000);
  v4[24] = v18;
  v19 = *(v18 - 8);
  v4[25] = v19;
  v20 = *(v19 + 64) + 15;
  v4[26] = swift_task_alloc();
  v21 = sub_1000BC4D4(&qword_1016AA440, &qword_1013BD008);
  v4[27] = v21;
  v22 = *(v21 - 8);
  v4[28] = v22;
  v23 = *(v22 + 64) + 15;
  v4[29] = swift_task_alloc();
  v24 = sub_1000BC4D4(&qword_1016AA448, &qword_1013BD010);
  v4[30] = v24;
  v25 = *(v24 - 8);
  v4[31] = v25;
  v26 = *(v25 + 64) + 15;
  v4[32] = swift_task_alloc();
  v27 = async function pointer to daemon.getter[1];
  v28 = swift_task_alloc();
  v4[33] = v28;
  *v28 = v4;
  v28[1] = sub_1007E300C;

  return daemon.getter();
}

uint64_t sub_1007E300C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v12 = *v1;
  v3[34] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[35] = v6;
  v7 = type metadata accessor for Daemon();
  v3[36] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[37] = v9;
  v10 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1007E31EC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007E31EC(uint64_t a1)
{
  v3 = *(*v2 + 280);
  v4 = *v2;
  v4[38] = a1;

  if (v1)
  {

    v5 = v4[34];
    v6 = v4[32];
    v7 = v4[29];
    v8 = v4[26];
    v10 = v4[22];
    v9 = v4[23];
    v12 = v4[18];
    v11 = v4[19];
    v13 = v4[17];
    v18 = v4[16];
    v19 = v4[12];
    v20 = v4[11];
    v21 = v4[8];
    v22 = v4[7];
    v14 = v4[6];

    v15 = v4[1];

    return v15();
  }

  else
  {
    v17 = v4[34];

    return _swift_task_switch(sub_1007E340C, 0, 0);
  }
}

uint64_t sub_1007E340C()
{
  v1 = v0[38];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[20];
  (*(v0[25] + 104))(v0[26], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0[24]);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_1000358B8;
  v9 = v0[32];
  v10 = v0[30];
  v11 = v0[23];

  return AsyncStream.Iterator.next(isolation:)(v11, 0, 0, v10);
}

uint64_t sub_1007E3558(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 360);
  v5 = *v1;
  v3[46] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[47] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1007E370C;
  v10 = v3[37];
  v11 = v3[36];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1007E370C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_1007E3D74;
  }

  else
  {
    v9 = v4[46];

    v4[49] = a1;
    v8 = sub_1007E3848;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007E3848()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 328);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  (*(v0 + 320))(v5, *(v0 + 152), v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v0 + 400) = v9;
  v3(v9 + v8, v5, v6);

  return _swift_task_switch(sub_1007E3918, v1, 0);
}

uint64_t sub_1007E3918()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  sub_1007FF3E4(v0[7], v3, type metadata accessor for BeaconEstimatedLocation);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[51] = v8;
  *(v8 + 16) = v2;
  sub_100035B84(v3, v8 + v6, type metadata accessor for BeaconEstimatedLocation);
  v9 = (v8 + v7);
  *v9 = sub_1007F51B0;
  v9[1] = v1;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[52] = v11;
  *v11 = v0;
  v11[1] = sub_1007E3AA0;

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1007FFC90, v8, &type metadata for () + 8);
}

uint64_t sub_1007E3AA0()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 392);
  v5 = *v0;

  return _swift_task_switch(sub_1007E3BCC, v3, 0);
}

uint64_t sub_1007E3BCC()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  return _swift_task_switch(sub_1007E3C3C, 0, 0);
}

uint64_t sub_1007E3C3C()
{
  v1 = v0[44];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[14] + 8;
  sub_10003627C(v0[7], type metadata accessor for BeaconEstimatedLocation);
  sub_10003627C(v5, type metadata accessor for ObservedAdvertisement.Location);
  v1(v3, v4);
  sub_10003627C(v2, type metadata accessor for ObservedAdvertisement);
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_1000358B8;
  v9 = v0[32];
  v10 = v0[30];
  v11 = v0[23];

  return AsyncStream.Iterator.next(isolation:)(v11, 0, 0, v10);
}

uint64_t sub_1007E3D74()
{
  v1 = *(v0 + 368);

  return _swift_task_switch(sub_1007E3DDC, 0, 0);
}

uint64_t sub_1007E3DDC()
{
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[31];
  v4 = v0[32];
  v14 = v0[30];
  v15 = v0[29];
  v5 = v0[22];
  v16 = v0[26];
  v17 = v0[23];
  v6 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[11];
  v20 = v0[16];
  v21 = v0[12];
  v10 = v0[7];
  v22 = v0[8];
  v23 = v0[6];

  sub_10003627C(v10, type metadata accessor for BeaconEstimatedLocation);
  sub_10003627C(v9, type metadata accessor for ObservedAdvertisement.Location);
  v1(v6, v7);
  sub_10003627C(v5, type metadata accessor for ObservedAdvertisement);
  (*(v3 + 8))(v4, v14);

  v11 = v0[1];
  v12 = v0[48];

  return v11();
}

void sub_1007E3F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B368);
  (*(v12 + 16))(v15, a2, v11);
  sub_1000D2A70(a1, v10, &qword_10169F438, &unk_1013B3300);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v19 = 141558531;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v28[1] = v4;
    v22 = v21;
    (*(v12 + 8))(v15, v11);
    v23 = sub_1000136BC(v20, v22, &v30);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    sub_1000D2A70(v10, v8, &qword_10169F438, &unk_1013B3300);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_10000B3A8(v10, &qword_10169F438, &unk_1013B3300);
    v27 = sub_1000136BC(v24, v26, &v30);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Done saving location for beacon (from observation store update): %{private,mask.hash}s,\nresult: %s.", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v10, &qword_10169F438, &unk_1013B3300);
    (*(v12 + 8))(v15, v11);
  }
}

void sub_1007E434C()
{
  v1 = v0;
  v2 = *(v0 + 192);
  if (v2)
  {
    v3 = v2;
    CurrentLocationMonitor.forceStopMonitor()();

    v2 = *(v1 + 192);
  }

  *(v1 + 192) = 0;

  *(v1 + 200) = 0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B368);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Location monitor stopped.", v6, 2u);
  }
}

uint64_t sub_1007E4480()
{
  v1 = *(v0 + 24);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v4 = sub_1000BC4D4(&qword_1016AA598, &qword_1013BD1D0);
  *v3 = v0;
  v3[1] = sub_1007E456C;
  v5 = *(v0 + 24);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FF880, v5, v4);
}

uint64_t sub_1007E456C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000142F4, v2, 0);
}

uint64_t sub_1007E4684()
{
  v1[8] = v0;
  v2 = type metadata accessor for BeaconIdentifier();
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1007E4718, v0, 0);
}

uint64_t sub_1007E4718()
{
  v10 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101360AF0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1007E48C4;

  return daemon.getter();
}

uint64_t sub_1007E48C4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1007E4AA0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007E4AA0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 104);
  v7 = *v2;

  v8 = *(v4 + 96);
  if (v1)
  {

    v9 = *(v5 + 80);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    *(v5 + 112) = a1;

    return _swift_task_switch(sub_1007E4C28, a1, 0);
  }
}

uint64_t sub_1007E4C28()
{
  v1 = *(v0 + 112);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_1007E4D14;
  v5 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_10025B814, v5, v4);
}

uint64_t sub_1007E4D14()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1007E4E2C, v2, 0);
}

uint64_t sub_1007E4E2C()
{
  v1 = v0[14];
  v2 = v0[8];

  v0[16] = v0[7];

  return _swift_task_switch(sub_1007E4EA0, v2, 0);
}

uint64_t sub_1007E4EA0()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    v0[18] = 0;
    v4 = v0[9];
    v3 = v0[10];
    sub_10001F280(v1 + 32, (v0 + 2));
    v5 = getuid();
    sub_1000294F0(v5);
    v6 = v0[5];
    v7 = v0[6];
    sub_1000035D0(v0 + 2, v6);
    v8 = v3 + *(v4 + 20);
    (*(*(*(v7 + 8) + 8) + 32))(v6);
    v10 = v0[5];
    v9 = v0[6];
    v11 = sub_1000035D0(v0 + 2, v10);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_1007E500C;
    v13 = v0[10];
    v14 = v0[8];

    return sub_1007F82D8(v13, v11, v14, v10, v9);
  }

  else
  {

    v16 = v0[10];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1007E500C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;

  v4 = v1[5];
  v5 = v1[6];
  v6 = sub_1000035D0(v1 + 2, v4);
  v7 = swift_task_alloc();
  v1[20] = v7;
  *v7 = v3;
  v7[1] = sub_1007E51B0;
  v8 = v1[8];
  v9 = v1[10];

  return sub_1007FCAC4(v9, v6, v8, v4, v5);
}

uint64_t sub_1007E51B0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1007E52C0, v2, 0);
}

uint64_t sub_1007E52C0()
{
  v1 = v0[17];
  v2 = v0[18] + 1;
  sub_10003627C(v0[10], type metadata accessor for BeaconIdentifier);
  sub_100007BAC(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[16];

    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[18];
    v0[18] = v7 + 1;
    v9 = v0[9];
    v8 = v0[10];
    sub_10001F280(v0[16] + 40 * v7 + 72, (v0 + 2));
    v10 = getuid();
    sub_1000294F0(v10);
    v11 = v0[5];
    v12 = v0[6];
    sub_1000035D0(v0 + 2, v11);
    v13 = v8 + *(v9 + 20);
    (*(*(*(v12 + 8) + 8) + 32))(v11);
    v15 = v0[5];
    v14 = v0[6];
    v16 = sub_1000035D0(v0 + 2, v15);
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_1007E500C;
    v18 = v0[10];
    v19 = v0[8];

    return sub_1007F82D8(v18, v16, v19, v15, v14);
  }
}

uint64_t sub_1007E5468()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1007E5504, v0, 0);
}

uint64_t sub_1007E5504()
{
  v1 = v0[2];
  if (*(v1 + 176))
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177B368);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Already subscribed to device events.", v5, 2u);
    }

    v6 = v0[3];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[3];
    v10 = type metadata accessor for TaskPriority();
    v0[4] = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    v0[5] = v12;
    v0[6] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v9, 1, 1, v10);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v1;

    v14 = sub_100BB9ADC(0, 0, v9, &unk_1013BD108, v13);
    sub_10000B3A8(v9, &qword_101698C00, &qword_10138B570);
    v15 = *(v1 + 176);
    *(v1 + 176) = v14;

    v16 = async function pointer to daemon.getter[1];
    v17 = swift_task_alloc();
    v0[7] = v17;
    *v17 = v0;
    v17[1] = sub_1007E5764;

    return daemon.getter();
  }
}

uint64_t sub_1007E5764(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194F8(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1007E5940;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007E5940(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v6 = v3[8];

    v7 = v3[3];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = v3[8];
    v11 = v3[2];

    return _swift_task_switch(sub_1007E5AB0, v11, 0);
  }
}

uint64_t sub_1007E5AB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  if (!*(v1 + 184))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = *(v0 + 80);
    (*(v0 + 40))(v4, 1, 1, *(v0 + 32));
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;
    v6[5] = v1;

    v7 = sub_100BB9ADC(0, 0, v4, &unk_1013BD118, v6);

    sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
    v8 = *(v1 + 184);
    *(v1 + 184) = v7;
  }

  v9 = *(v0 + 24);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1007E5BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for LocalFindableAccessoryRecord();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = type metadata accessor for BeaconIdentifier();
  v4[9] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = type metadata accessor for DeviceEvent(0);
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_1016AA580, &qword_1013BD1A0);
  v4[17] = v15;
  v16 = *(v15 - 8);
  v4[18] = v16;
  v17 = *(v16 + 64) + 15;
  v4[19] = swift_task_alloc();
  v18 = sub_1000BC4D4(&qword_1016AA588, &qword_1013BD1A8);
  v4[20] = v18;
  v19 = *(v18 - 8);
  v4[21] = v19;
  v20 = *(v19 + 64) + 15;
  v4[22] = swift_task_alloc();
  v21 = sub_1000BC4D4(&qword_1016AA590, &qword_1013BD1B0);
  v4[23] = v21;
  v22 = *(v21 - 8);
  v4[24] = v22;
  v23 = *(v22 + 64) + 15;
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1007E5ED8, 0, 0);
}

uint64_t sub_1007E5ED8()
{
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 208) = sub_1000076D4(v1, qword_10177B368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Location fetch service subscribing to device events.", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_1007E6028;

  return daemon.getter();
}

uint64_t sub_1007E6028(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v12 = *v1;
  v3[28] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[29] = v6;
  v7 = type metadata accessor for Daemon();
  v3[30] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[31] = v9;
  v10 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1007E6208;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007E6208(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_1007E64A0;
  }

  else
  {
    v9 = v4[28];

    v4[33] = a1;
    v8 = sub_1007E6344;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007E6344()
{
  v1 = v0[33];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[11];
  (*(v0[18] + 104))(v0[19], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0[17]);
  AsyncStream.init(_:bufferingPolicy:_:)();

  AsyncStream.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[34] = v0[32];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_1007E66E4;
  v9 = v0[25];
  v10 = v0[23];
  v11 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v11, 0, 0, v10);
}

uint64_t sub_1007E64A0()
{
  v1 = *(v0 + 224);

  return _swift_task_switch(sub_1007E6508, 0, 0);
}

uint64_t sub_1007E6508()
{
  v1 = v0[32];
  v2 = v0[26];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to register for device events: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[10];
  v16 = v0[8];
  v17 = v0[5];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1007E66E4()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return _swift_task_switch(sub_1007E67E0, 0, 0);
}

uint64_t sub_1007E67E0()
{
  v50 = v0;
  v1 = v0[16];
  v2 = (*(v0[12] + 48))(v1, 1, v0[11]);
  v3 = v0[26];
  if (v2 == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Ended stream of device events.", v6, 2u);
    }

    goto LABEL_15;
  }

  v8 = v0[14];
  v7 = v0[15];
  sub_100035B84(v1, v7, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v7, v8, type metadata accessor for DeviceEvent);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[14];
  if (v11)
  {
    v13 = v0[11];
    v48 = v0[9];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v16 = v12 + *(v13 + 36);
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v0[2] = dispatch thunk of CustomStringConvertible.description.getter();
    v0[3] = v17;
    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = v16 + *(v48 + 20);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21 = v0[2];
    v22 = v0[3];
    sub_10003627C(v12, type metadata accessor for DeviceEvent);
    v23 = sub_1000136BC(v21, v22, &v49);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Subscription updated device event for beacon: %{private,mask.hash}s.", v14, 0x16u);
    sub_100007BAC(v15);
  }

  else
  {

    sub_10003627C(v12, type metadata accessor for DeviceEvent);
  }

  v24 = v0[34];
  static Task<>.checkCancellation()();
  if (v24)
  {
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[23];
    sub_10003627C(v0[15], type metadata accessor for DeviceEvent);
    (*(v26 + 8))(v25, v27);
    v28 = v0[26];
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to register for device events: %{public}@.", v31, 0xCu);
      sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_15:
    v36 = v0[25];
    v37 = v0[22];
    v38 = v0[19];
    v40 = v0[15];
    v39 = v0[16];
    v42 = v0[13];
    v41 = v0[14];
    v43 = v0[10];
    v44 = v0[8];
    v45 = v0[5];

    v46 = v0[1];

    return v46();
  }

  sub_1007FF3E4(v0[15] + *(v0[11] + 36), v0[10], type metadata accessor for BeaconIdentifier);
  v34 = async function pointer to daemon.getter[1];
  v35 = swift_task_alloc();
  v0[36] = v35;
  *v35 = v0;
  v35[1] = sub_1007E6D5C;

  return daemon.getter();
}

uint64_t sub_1007E6D5C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 288);
  v5 = *v1;
  v3[37] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[38] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000194F8(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1007E6F10;
  v10 = v3[31];
  v11 = v3[30];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1007E6F10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(v4 + 312) = a1;

  v7 = *(v4 + 296);
  if (v1)
  {

    v8 = sub_1007E7D90;
    v9 = 0;
  }

  else
  {
    v10 = *(v4 + 72);

    *(v4 + 352) = *(v10 + 20);
    v8 = sub_1007E707C;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1007E707C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 80);
  v3 = *(*(v0 + 312) + 128);
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_1007E712C;
  v5 = *(v0 + 40);

  return sub_100C57B00(v5, v2 + v1);
}

uint64_t sub_1007E712C()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_1007E76AC;
  }

  else
  {
    v3 = sub_1007E7240;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007E7240()
{
  v37 = v0;
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[39];

    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    sub_1007FF390();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    v4 = v0[26];
    sub_1007FF3E4(v0[15], v0[13], type metadata accessor for DeviceEvent);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[15];
    v9 = v0[13];
    if (v7)
    {
      v10 = v0[11];
      v34 = v0[10];
      v35 = v0[15];
      v11 = v0[9];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v12 = 138543875;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v15 = v9 + *(v10 + 36);
      v16 = *(v11 + 20);
      type metadata accessor for UUID();
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_10003627C(v9, type metadata accessor for DeviceEvent);
      v20 = sub_1000136BC(v17, v19, &v36);

      *(v12 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v5, v6, "No beacon found to update device event: %{public}@for beacon: %{private,mask.hash}s", v12, 0x20u);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v33);

      sub_10003627C(v34, type metadata accessor for BeaconIdentifier);
      v21 = v35;
    }

    else
    {
      v27 = v0[10];

      sub_10003627C(v9, type metadata accessor for DeviceEvent);
      sub_10003627C(v27, type metadata accessor for BeaconIdentifier);
      v21 = v8;
    }

    sub_10003627C(v21, type metadata accessor for DeviceEvent);
    v0[34] = 0;
    v28 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v29 = swift_task_alloc();
    v0[35] = v29;
    *v29 = v0;
    v29[1] = sub_1007E66E4;
    v30 = v0[25];
    v31 = v0[23];
    v32 = v0[16];

    return AsyncStream.Iterator.next(isolation:)(v32, 0, 0, v31);
  }

  else
  {
    sub_100035B84(v1, v0[8], type metadata accessor for LocalFindableAccessoryRecord);
    v22 = swift_task_alloc();
    v0[42] = v22;
    *v22 = v0;
    v22[1] = sub_1007E7A08;
    v23 = v0[10];
    v24 = v0[8];
    v25 = v0[4];

    return sub_1007F5B48(v23, v24, v25);
  }
}

uint64_t sub_1007E76AC()
{
  v32 = v0;
  v1 = v0[39];

  v2 = v0[41];
  v3 = v0[26];
  sub_1007FF3E4(v0[15], v0[13], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  v8 = v0[13];
  if (v6)
  {
    v9 = v0[11];
    v29 = v0[10];
    v30 = v0[15];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v14 = v8 + *(v9 + 36);
    v15 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_10003627C(v8, type metadata accessor for DeviceEvent);
    v19 = sub_1000136BC(v16, v18, &v31);

    *(v11 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v4, v5, "No beacon found to update device event: %{public}@for beacon: %{private,mask.hash}s", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v28);

    sub_10003627C(v29, type metadata accessor for BeaconIdentifier);
    v20 = v30;
  }

  else
  {
    v21 = v0[10];

    sub_10003627C(v8, type metadata accessor for DeviceEvent);
    sub_10003627C(v21, type metadata accessor for BeaconIdentifier);
    v20 = v7;
  }

  sub_10003627C(v20, type metadata accessor for DeviceEvent);
  v0[34] = 0;
  v22 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v23 = swift_task_alloc();
  v0[35] = v23;
  *v23 = v0;
  v23[1] = sub_1007E66E4;
  v24 = v0[25];
  v25 = v0[23];
  v26 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v26, 0, 0, v25);
}

uint64_t sub_1007E7A08()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[43] = v4;
  *v4 = v3;
  v4[1] = sub_1007E7B74;
  v5 = v1[8];
  v6 = v1[4];
  v7 = v1[10];

  return sub_1007FAA80(v7, v5, v6);
}

uint64_t sub_1007E7B74()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_1007E7C70, 0, 0);
}

uint64_t sub_1007E7C70()
{
  v1 = v0[39];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[8];

  sub_10003627C(v4, type metadata accessor for LocalFindableAccessoryRecord);
  sub_10003627C(v3, type metadata accessor for BeaconIdentifier);
  sub_10003627C(v2, type metadata accessor for DeviceEvent);
  v0[34] = v0[41];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1007E66E4;
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_1007E7D90()
{
  v31 = v0;
  sub_1007FF390();
  swift_allocError();
  *v1 = 2;
  swift_willThrow();
  v2 = v0[26];
  sub_1007FF3E4(v0[15], v0[13], type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  v7 = v0[13];
  if (v5)
  {
    v8 = v0[11];
    v28 = v0[10];
    v29 = v0[15];
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v10 = 138543875;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v13 = v7 + *(v8 + 36);
    v14 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10003627C(v7, type metadata accessor for DeviceEvent);
    v18 = sub_1000136BC(v15, v17, &v30);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "No beacon found to update device event: %{public}@for beacon: %{private,mask.hash}s", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v27);

    sub_10003627C(v28, type metadata accessor for BeaconIdentifier);
    v19 = v29;
  }

  else
  {
    v20 = v0[10];

    sub_10003627C(v7, type metadata accessor for DeviceEvent);
    sub_10003627C(v20, type metadata accessor for BeaconIdentifier);
    v19 = v6;
  }

  sub_10003627C(v19, type metadata accessor for DeviceEvent);
  v0[34] = 0;
  v21 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v22 = swift_task_alloc();
  v0[35] = v22;
  *v22 = v0;
  v22[1] = sub_1007E66E4;
  v23 = v0[25];
  v24 = v0[23];
  v25 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v25, 0, 0, v24);
}

uint64_t sub_1007E8110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = type metadata accessor for BeaconIdentifier();
  v5[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = type metadata accessor for LocalFindableAccessoryRecord();
  v5[17] = v10;
  v11 = *(v10 - 8);
  v5[18] = v11;
  v12 = *(v11 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v13 = type metadata accessor for CloudStorageStore.State(0);
  v5[21] = v13;
  v14 = *(v13 - 8);
  v5[22] = v14;
  v15 = *(v14 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016AA530, &unk_1013CAF90) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_1016AA538, &unk_1013BD130);
  v5[26] = v17;
  v18 = *(v17 - 8);
  v5[27] = v18;
  v19 = *(v18 + 64) + 15;
  v5[28] = swift_task_alloc();
  v20 = sub_1000BC4D4(&unk_1016AA540, &unk_1013CAFA0);
  v5[29] = v20;
  v21 = *(v20 - 8);
  v5[30] = v21;
  v22 = *(v21 + 64) + 15;
  v5[31] = swift_task_alloc();
  v23 = sub_1000BC4D4(&qword_1016B2F50, &unk_1013BD140);
  v5[32] = v23;
  v24 = *(v23 - 8);
  v5[33] = v24;
  v25 = *(v24 + 64) + 15;
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_1007E8420, a4, 0);
}

uint64_t sub_1007E8420()
{
  v1 = *(*(v0 + 96) + 128);
  *(v0 + 280) = v1;
  return _swift_task_switch(sub_1007E8444, v1, 0);
}

uint64_t sub_1007E8444()
{
  v1 = v0[35];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[21];
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1007E854C, 0, 0);
}

uint64_t sub_1007E854C()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[36] = 0;
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_1007E862C;
  v7 = v0[34];
  v8 = v0[32];
  v9 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_1007E862C()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_1007E8728, 0, 0);
}

uint64_t sub_1007E8728()
{
  v63 = v0;
  v1 = v0[25];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    v2 = v0[31];
    v3 = v0[28];
    v5 = v0[23];
    v4 = v0[24];
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[16];
    v60 = v0[15];
    (*(v0[33] + 8))(v0[34], v0[32]);

    v9 = v0[1];
LABEL_5:

    return v9();
  }

  v10 = v0[36];
  sub_100035B84(v1, v0[24], type metadata accessor for CloudStorageStore.State);
  static Task<>.checkCancellation()();
  v0[38] = v10;
  if (v10)
  {
    v12 = v0[33];
    v11 = v0[34];
    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[28];
    v16 = v0[25];
    v17 = v0[23];
    v57 = v0[20];
    v58 = v0[19];
    v59 = v0[16];
    v61 = v0[15];
    sub_10003627C(v0[24], type metadata accessor for CloudStorageStore.State);
    (*(v12 + 8))(v11, v13);

    v9 = v0[1];
    goto LABEL_5;
  }

  v19 = v0[21];
  sub_1007FF3E4(v0[24], v0[23], type metadata accessor for CloudStorageStore.State);
  if (swift_getEnumCaseMultiPayload())
  {
    v20 = v0[23];
    sub_10003627C(v0[24], type metadata accessor for CloudStorageStore.State);
    sub_10003627C(v20, type metadata accessor for CloudStorageStore.State);
LABEL_16:
    v0[36] = v0[38];
    v42 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v43 = swift_task_alloc();
    v0[37] = v43;
    *v43 = v0;
    v43[1] = sub_1007E862C;
    v44 = v0[34];
    v45 = v0[32];
    v46 = v0[25];

    return AsyncStream.Iterator.next(isolation:)(v46, 0, 0, v45);
  }

  v21 = v0[16];
  v22 = v0[17];
  sub_10000A748(v0[23], (v0 + 2));
  sub_10001F280((v0 + 2), (v0 + 7));
  sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = v0[24];
    v39 = v0[17];
    v40 = v0[18];
    v41 = v0[16];
    sub_100007BAC(v0 + 2);
    sub_10003627C(v38, type metadata accessor for CloudStorageStore.State);
    (*(v40 + 56))(v41, 1, 1, v39);
    sub_10000B3A8(v41, &qword_1016A9A30, &unk_1013BD120);
    goto LABEL_16;
  }

  v23 = v0[20];
  v24 = v0[16];
  (*(v0[18] + 56))(v24, 0, 1, v0[17]);
  sub_100035B84(v24, v23, type metadata accessor for LocalFindableAccessoryRecord);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v25 = v0[19];
  v26 = v0[20];
  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177B368);
  sub_1007FF3E4(v26, v25, type metadata accessor for LocalFindableAccessoryRecord);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[19];
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v62 = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    sub_10003627C(v31, type metadata accessor for LocalFindableAccessoryRecord);
    v37 = sub_1000136BC(v34, v36, &v62);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Updating events for local findable record modified %{private,mask.hash}s.", v32, 0x16u);
    sub_100007BAC(v33);
  }

  else
  {

    sub_10003627C(v31, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v47 = v0[20];
  v49 = v0[14];
  v48 = v0[15];
  v50 = getuid();
  sub_1000294F0(v50);
  v51 = *(v49 + 20);
  v52 = type metadata accessor for UUID();
  (*(*(v52 - 8) + 16))(v48 + v51, v47, v52);
  v53 = swift_task_alloc();
  v0[39] = v53;
  *v53 = v0;
  v53[1] = sub_1007E8DE0;
  v54 = v0[20];
  v55 = v0[15];
  v56 = v0[13];

  return sub_1007F5B48(v55, v54, v56);
}

uint64_t sub_1007E8DE0()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[40] = v4;
  *v4 = v3;
  v4[1] = sub_1007E8F4C;
  v5 = v1[20];
  v6 = v1[13];
  v7 = v1[15];

  return sub_1007FAA80(v7, v5, v6);
}

uint64_t sub_1007E8F4C()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_1007E9048, 0, 0);
}

uint64_t sub_1007E9048()
{
  v1 = v0[24];
  v2 = v0[20];
  sub_10003627C(v0[15], type metadata accessor for BeaconIdentifier);
  sub_10003627C(v2, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100007BAC(v0 + 2);
  sub_10003627C(v1, type metadata accessor for CloudStorageStore.State);
  v0[36] = v0[38];
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1007E862C;
  v5 = v0[34];
  v6 = v0[32];
  v7 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v6);
}

uint64_t sub_1007E915C()
{
  v1 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x8000000101360AD0, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  if (*(v1 + 176))
  {
    v7 = *(v1 + 176);

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    v8 = *(v1 + 176);
  }

  *(v1 + 176) = 0;

  if (*(v1 + 184))
  {
    v9 = *(v1 + 184);

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    v10 = *(v1 + 184);
  }

  *(v1 + 184) = 0;
}

uint64_t sub_1007E9364(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 40) = a1;
  v8 = type metadata accessor for ContinuousClock();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1007E942C, 0, 0);
}

uint64_t sub_1007E942C()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1007E9508;
  v7 = v0[11];

  return sub_100D24214(v3, v5, 0, 0, 1);
}

uint64_t sub_1007E9508()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = sub_1007E9798;
  }

  else
  {
    v5 = sub_1007E9670;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1007E9670()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v3 = v0[8];
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1000035D0(v3, v4);
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_1007E97FC;
    v8 = v0[7];

    return sub_1007F82D8(v8, v6, Strong, v4, v5);
  }

  else
  {
    v10 = v0[11];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1007E9798()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1007E97FC()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 88);

  v5 = *(v7 + 8);

  return v5();
}

id sub_1007E9934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = a2;
  v5 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DeviceEvent(0);
  sub_1000D2A70(a1 + *(v14 + 32), v8, &unk_1016AA510, &unk_101393150);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &unk_1016AA510, &unk_101393150);
    v15 = 0;
  }

  else
  {
    sub_100035B84(v8, v13, type metadata accessor for DeviceEvent.AttachmentInfo);
    v16 = objc_allocWithZone(SPAttachmentInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v18 = [v16 initWithAttachedToDevice:isa];

    sub_10003627C(v13, type metadata accessor for DeviceEvent.AttachmentInfo);
    v15 = v18;
  }

  v19 = a1 + *(v14 + 24);
  v20.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v21 = qword_1013BD328[*(a1 + 9)];
  if (a3)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTimestamp:v20.super.isa source:v21 attachmentInfo:v15 serialNumber:v22];

  sub_10003627C(a1, type metadata accessor for DeviceEvent);
  return v23;
}

uint64_t sub_1007E9BD4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for BeaconIdentifier();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = type metadata accessor for DeviceEvent(0);
  v3[14] = v11;
  v12 = *(v11 - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  v3[17] = v15;
  *v15 = v3;
  v15[1] = sub_1007E9DD0;

  return daemon.getter();
}

uint64_t sub_1007E9DD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v12 = *v1;
  *(v3 + 144) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 152) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1007E9FAC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007E9FAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v5 = *(*v2 + 40);
  v6 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v7 = sub_1007EA344;
  }

  else
  {
    v8 = v3[18];

    v7 = sub_1007EA0EC;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_1007EA0EC()
{
  v1 = v0[12];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1007EA1D0;
  v4 = v0[20];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[4];

  return sub_1010CE7E4(v5, v7, 8, v6);
}

uint64_t sub_1007EA1D0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[20];
  v6 = v2[12];
  v7 = v2[5];
  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);

  if (v0)
  {
    v8 = sub_1007EA9EC;
  }

  else
  {
    v8 = sub_1007EA688;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007EA344()
{
  v29 = v0;
  v1 = v0[18];

  v2 = v0[21];
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B368);
  sub_1007FF3E4(v4, v3, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  if (v8)
  {
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10003627C(v9, type metadata accessor for BeaconIdentifier);
    v18 = sub_1000136BC(v15, v17, &v28);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "No device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {

    sub_10003627C(v9, type metadata accessor for BeaconIdentifier);
  }

  (*(v0[15] + 56))(v0[3], 1, 1, v0[14]);
  v20 = v0[16];
  v21 = v0[12];
  v22 = v0[13];
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[7];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1007EA688()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_10000B3A8(v3, &unk_1016AA500, &unk_1013B3600);
    (*(v2 + 56))(v4, 1, 1, v1);
  }

  else
  {
    v5 = v0[16];
    sub_100035B84(v3, v5, type metadata accessor for DeviceEvent);
    if (*(v5 + 9) != 5)
    {
      goto LABEL_7;
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v6 = v0[23];
    v7 = v0[16];
    v8 = v0[14];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    v13 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073C8C(v0[2]);

    v14 = *(v8 + 24);
    Date.addingTimeInterval(_:)();
    static Date.trustedNow.getter(v10);
    Date.timeIntervalSince(_:)();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v17(v9, v11);
    if (v16 <= 0.0)
    {
      v30 = v0[15];
      v29 = v0[16];
      v31 = v0[14];
      v32 = v0[3];
      (*(v0[9] + 16))(v32 + *(v8 + 24), v7 + v14, v0[8]);
      sub_1000D2A70(v29 + v31[7], v32 + v31[7], &qword_101699E50, &qword_1013D97C0);
      sub_1000D2A70(v29 + v31[8], v32 + v31[8], &unk_1016AA510, &unk_101393150);
      sub_1007FF3E4(v29 + v31[9], v32 + v31[9], type metadata accessor for BeaconIdentifier);
      static Date.trustedNow.getter(v32 + v31[10]);
      sub_10003627C(v29, type metadata accessor for DeviceEvent);
      *v32 = 0;
      *(v32 + 8) = 513;
      (*(v30 + 56))(v32, 0, 1, v31);
    }

    else
    {
LABEL_7:
      v18 = v0[15];
      v19 = v0[14];
      v20 = v0[3];
      sub_100035B84(v0[16], v20, type metadata accessor for DeviceEvent);
      (*(v18 + 56))(v20, 0, 1, v19);
    }
  }

  v21 = v0[16];
  v22 = v0[12];
  v23 = v0[13];
  v25 = v0[10];
  v24 = v0[11];
  v26 = v0[7];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1007EA9EC()
{
  v28 = v0;
  v1 = v0[23];
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = v0[4];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B368);
  sub_1007FF3E4(v3, v2, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10003627C(v8, type metadata accessor for BeaconIdentifier);
    v17 = sub_1000136BC(v14, v16, &v27);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "No device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {

    sub_10003627C(v8, type metadata accessor for BeaconIdentifier);
  }

  (*(v0[15] + 56))(v0[3], 1, 1, v0[14]);
  v19 = v0[16];
  v20 = v0[12];
  v21 = v0[13];
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1007EAD28(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for BeaconIdentifier();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016AA4E8, &unk_1013D67A0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016AA4F0, &unk_1013BD0F0);
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v12 = type metadata accessor for OwnedBeaconRecord();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v3[22] = v19;
  *v19 = v3;
  v19[1] = sub_1007EAFD0;

  return daemon.getter();
}

uint64_t sub_1007EAFD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  v3[23] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[24] = v6;
  v7 = type metadata accessor for Daemon();
  v3[25] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[26] = v9;
  v10 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1007EB1B0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007EB1B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_1007EB7B8;
  }

  else
  {
    v9 = v4[23];

    v4[28] = a1;
    v8 = sub_1007EB2EC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007EB2EC()
{
  v1 = *(v0 + 224);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_1007EB3D8;
  v5 = *(v0 + 224);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v5, v4);
}

uint64_t sub_1007EB3D8()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_1007EB4F0, v2, 0);
}

uint64_t sub_1007EB4F0()
{
  v1 = v0[28];
  v2 = v0[5];

  v0[30] = v0[2];

  return _swift_task_switch(sub_1007EB564, v2, 0);
}

uint64_t sub_1007EB564()
{
  v1 = v0[30];
  if (*(v1 + 16))
  {
    v2 = v0[20];
    v3 = v0[21];
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[15];
    v8 = *(v0[16] + 80);
    sub_1007FF3E4(v1 + ((v8 + 32) & ~v8), v6, type metadata accessor for OwnedBeaconRecord);

    v9 = *(v7 + 20);
    v10 = *(v5 + 16);
    v0[31] = v10;
    v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v2, v6 + v9, v4);
    sub_10003627C(v6, type metadata accessor for OwnedBeaconRecord);
    (*(v5 + 32))(v3, v2, v4);
    v11 = async function pointer to daemon.getter[1];
    v12 = swift_task_alloc();
    v0[33] = v12;
    *v12 = v0;
    v12[1] = sub_1007EBB3C;

    return daemon.getter();
  }

  else
  {
    v13 = v0[30];

    v14 = v0[20];
    v15 = v0[21];
    v16 = v0[17];
    v18 = v0[13];
    v17 = v0[14];
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    v26 = v0[7];
    v22 = v0[3];
    v23 = type metadata accessor for DeviceEvent(0);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1007EB7B8()
{
  v35 = v0;
  v1 = v0[23];

  v2 = v0[27];
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B368);
  sub_1007FF3E4(v4, v3, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = v0[6];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v9 + 20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10003627C(v10, type metadata accessor for BeaconIdentifier);
    v18 = sub_1000136BC(v15, v17, &v34);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "No connected device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {
    v20 = v0[7];

    sub_10003627C(v20, type metadata accessor for BeaconIdentifier);
  }

  v21 = v0[20];
  v22 = v0[21];
  v23 = v0[17];
  v25 = v0[13];
  v24 = v0[14];
  v27 = v0[9];
  v26 = v0[10];
  v28 = v0[8];
  v33 = v0[7];
  v29 = v0[3];
  v30 = type metadata accessor for DeviceEvent(0);
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1007EBB3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;
  v3[34] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[35] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v7 = v5;
  v7[1] = sub_1007EBCF0;
  v10 = v3[26];
  v11 = v3[25];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1007EBCF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v10 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_1007EC06C;
  }

  else
  {
    v7 = v3[34];
    v8 = v3[5];

    v6 = sub_1007EBE18;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007EBE18()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 64);
  (*(v0 + 248))(v4, *(v0 + 168), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  *v5 = v0;
  v5[1] = sub_1007EBEF8;
  v6 = *(v0 + 288);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 32);

  return sub_1010CEAB4(v7, v9, v8);
}

uint64_t sub_1007EBEF8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = v2[36];
  v6 = v2[8];
  v7 = v2[5];
  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);

  if (v0)
  {
    v8 = sub_1007EC9D8;
  }

  else
  {
    v8 = sub_1007EC410;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007EC06C()
{
  v38 = v0;
  v1 = v0[34];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];

  (*(v4 + 8))(v2, v3);
  v5 = v0[37];
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v6 = v0[7];
  v7 = v0[4];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B368);
  sub_1007FF3E4(v7, v6, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[18];
    v12 = v0[6];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v17 = *(v12 + 20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10003627C(v13, type metadata accessor for BeaconIdentifier);
    v21 = sub_1000136BC(v18, v20, &v37);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "No connected device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v14, 0x20u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v16);
  }

  else
  {
    v23 = v0[7];

    sub_10003627C(v23, type metadata accessor for BeaconIdentifier);
  }

  v24 = v0[20];
  v25 = v0[21];
  v26 = v0[17];
  v28 = v0[13];
  v27 = v0[14];
  v30 = v0[9];
  v29 = v0[10];
  v31 = v0[8];
  v36 = v0[7];
  v32 = v0[3];
  v33 = type metadata accessor for DeviceEvent(0);
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1007EC410()
{
  v56 = v0;
  v1 = v0[9];
  v2 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[10];
    (*(v0[19] + 8))(v0[21], v0[18]);
    sub_10000B3A8(v1, &qword_1016AA4E0, &unk_1013BD0E0);
    v54 = 1;
    (*(v4 + 56))(v5, 1, 1, v3);
    sub_10000B3A8(v5, &qword_1016AA4E8, &unk_1013D67A0);
    goto LABEL_13;
  }

  v6 = v0[39];
  v7 = v0[11];
  v8 = sub_100A870CC(v0[10] + *(v7 + 48));
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  if (v6)
  {
    v12 = v0[9];
    (*(v11 + 8))(v9, v10);
    sub_10000B3A8(v12, &qword_1016998D0, &unk_1013931A0);
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v13 = v0[7];
    v14 = v0[4];
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B368);
    sub_1007FF3E4(v14, v13, type metadata accessor for BeaconIdentifier);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[18];
      v19 = v0[6];
      v20 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55 = v23;
      *v21 = 141558531;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      v24 = *(v19 + 20);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_10003627C(v20, type metadata accessor for BeaconIdentifier);
      v28 = sub_1000136BC(v25, v27, &v55);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2114;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v29;
      *v22 = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "No connected device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v21, 0x20u);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v23);
    }

    else
    {
      v40 = v0[7];

      sub_10003627C(v40, type metadata accessor for BeaconIdentifier);
    }
  }

  else
  {
    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[11];
    v33 = v0[12];
    v35 = v0[9];
    v34 = v0[10];
    (*(v11 + 8))(v9, v10);
    *v34 = v8 & 1;
    sub_10000B3A8(v35, &qword_1016998D0, &unk_1013931A0);
    (*(v33 + 56))(v34, 0, 1, v32);
    sub_1000D2AD8(v34, v30, &unk_1016AA4F0, &unk_1013BD0F0);
    sub_1000D2A70(v30, v31, &unk_1016AA4F0, &unk_1013BD0F0);
    v36 = *v31;
    sub_10003627C(&v31[*(v7 + 48)], type metadata accessor for DeviceEvent);
    v37 = v0[14];
    if (v36 == 1)
    {
      v38 = v0[13];
      v39 = v0[3];
      sub_1000D2AD8(v37, v38, &unk_1016AA4F0, &unk_1013BD0F0);
      sub_100035B84(v38 + *(v7 + 48), v39, type metadata accessor for DeviceEvent);
      v54 = 0;
      goto LABEL_13;
    }

    sub_10000B3A8(v37, &unk_1016AA4F0, &unk_1013BD0F0);
  }

  v54 = 1;
LABEL_13:
  v42 = v0[20];
  v41 = v0[21];
  v43 = v0[17];
  v45 = v0[13];
  v44 = v0[14];
  v47 = v0[9];
  v46 = v0[10];
  v48 = v0[8];
  v53 = v0[7];
  v49 = v0[3];
  v50 = type metadata accessor for DeviceEvent(0);
  (*(*(v50 - 8) + 56))(v49, v54, 1, v50);

  v51 = v0[1];

  return v51();
}

uint64_t sub_1007EC9D8()
{
  v34 = v0;
  (*(v0[19] + 8))(v0[21], v0[18]);
  v1 = v0[39];
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = v0[4];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B368);
  sub_1007FF3E4(v3, v2, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = v0[6];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v8 + 20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10003627C(v9, type metadata accessor for BeaconIdentifier);
    v17 = sub_1000136BC(v14, v16, &v33);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "No connected device event for this device found. Beacon: %{private,mask.hash}s, error: %{public}@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v19 = v0[7];

    sub_10003627C(v19, type metadata accessor for BeaconIdentifier);
  }

  v20 = v0[20];
  v21 = v0[21];
  v22 = v0[17];
  v24 = v0[13];
  v23 = v0[14];
  v26 = v0[9];
  v25 = v0[10];
  v27 = v0[8];
  v32 = v0[7];
  v28 = v0[3];
  v29 = type metadata accessor for DeviceEvent(0);
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1007ECD6C()
{
  v1 = *(v0 + 120);
  sub_1000BB27C(*(v0 + 112));
  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  v7 = *(v0 + 168);

  v8 = *(v0 + 176);

  v9 = *(v0 + 184);

  v10 = *(v0 + 208);

  v11 = *(v0 + 216);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1007ECDEC()
{
  sub_1007ECD6C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1007ECE3C(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for UUID();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = type metadata accessor for BeaconEstimatedLocation();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v2[29] = *(v7 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v2[32] = v8;
  v9 = *(v8 - 8);
  v2[33] = v9;
  v10 = *(v9 + 64) + 15;
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1007ECFC8, 0, 0);
}

uint64_t sub_1007ECFC8()
{
  v1 = v0[22];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1007ED0B8, Strong, 0);
  }

  else
  {
    v3 = v0[34];
    v4 = v0[30];
    v5 = v0[31];
    v6 = v0[26];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1007ED0E0()
{
  v35 = v0;
  if (*(v0 + 504) == 1)
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 184);
    v2 = type metadata accessor for Logger();
    *(v0 + 288) = sub_1000076D4(v2, qword_10177B368);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 184);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136446466;
      if (v6)
      {
        v9 = 0x61636F6C20736168;
      }

      else
      {
        v9 = 7104878;
      }

      if (v6)
      {
        v10 = 0xEC0000006E6F6974;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      v11 = sub_1000136BC(v9, v10, &v34);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      if (v6)
      {
        v13 = *(v0 + 264);
        v12 = *(v0 + 272);
        v14 = *(v0 + 256);
        v15 = [v3 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceNow.getter();
        v17 = v16;
        (*(v13 + 8))(v12, v14);
      }

      else
      {
        v17 = 1.0;
      }

      *(v7 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "Location monitor did update location: %{public}s,age: %f.", v7, 0x16u);
      sub_100007BAC(v8);
    }

    if (*(v0 + 184))
    {
      v24 = async function pointer to daemon.getter[1];
      v25 = v3;
      v26 = swift_task_alloc();
      *(v0 + 296) = v26;
      *v26 = v0;
      v26[1] = sub_1007ED49C;

      return daemon.getter();
    }

    v27 = *(v0 + 280);
  }

  else
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177B368);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 280);
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Ignoring location updates while not processing.", v23, 2u);
    }
  }

  v28 = *(v0 + 272);
  v29 = *(v0 + 240);
  v30 = *(v0 + 248);
  v31 = *(v0 + 208);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1007ED49C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v12 = *v1;
  v3[38] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[39] = v6;
  v7 = type metadata accessor for Daemon();
  v3[40] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[41] = v8;
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[42] = v9;
  v10 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  v3[43] = v10;
  *v6 = v12;
  v6[1] = sub_1007ED690;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007ED690(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = v4[35];
    v8 = sub_1007EDC3C;
  }

  else
  {
    v9 = v4[38];

    v4[45] = a1;
    v8 = sub_1007ED7CC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007ED7CC()
{
  v1 = v0[45];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[46] = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  v0[47] = v4;
  *v3 = v0;
  v3[1] = sub_1007ED8BC;
  v5 = v0[45];

  return unsafeBlocking<A>(context:_:)(v0 + 20, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_1007ED8BC()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_1007ED9D4, v2, 0);
}

uint64_t sub_1007ED9D4()
{
  v1 = v0[45];

  v0[48] = v0[20];

  return _swift_task_switch(sub_1007EDA44, 0, 0);
}

uint64_t sub_1007EDA44()
{
  v0[21] = v0[48];
  v1 = async function pointer to Sequence.asyncFilter(_:)[1];
  v2 = swift_task_alloc();
  v0[49] = v2;
  v3 = sub_1007F5138();
  *v2 = v0;
  v2[1] = sub_1007EDB08;
  v4 = v0[47];
  v5 = v0[35];

  return Sequence.asyncFilter(_:)(&unk_1013BCFD0, v5, v4, v3);
}

uint64_t sub_1007EDB08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v5 = *(*v2 + 384);
  v8 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v6 = sub_1007EF140;
  }

  else
  {
    v6 = sub_1007EDD40;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1007EDC3C()
{
  v1 = *(v0 + 304);

  return _swift_task_switch(sub_1007EDCA4, 0, 0);
}

uint64_t sub_1007EDCA4()
{
  v1 = v0[35];
  v2 = v0[23];

  v3 = v0[44];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1007EDD40()
{
  v42 = v0;
  v1 = v0[50];
  v2 = *(v1 + 16);
  v0[52] = v2;
  if (v2)
  {
    v3 = v0[33];
    v4 = v0[31];
    v5 = v0[27];
    v0[54] = 0;
    if (*(v1 + 16))
    {
      v6 = v0[36];
      v7 = v0[32];
      v8 = v0[23];
      sub_10001F280(v1 + 32, (v0 + 2));
      v9 = &v4[v5[5]];
      UUID.init()();
      v11 = v0[5];
      v10 = v0[6];
      sub_1000035D0(v0 + 2, v11);
      v12 = &v4[v5[6]];
      (*(*(*(v10 + 8) + 8) + 32))(v11);
      [v8 coordinate];
      v14 = v13;
      [v8 coordinate];
      v16 = v15;
      [v8 horizontalAccuracy];
      v18 = v17;
      v19 = [v8 timestamp];
      v20 = &v4[v5[10]];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v5[12];
      v22 = [v8 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 56))(&v4[v21], 0, 1, v7);
      *v4 = xmmword_10138C660;
      *&v4[v5[7]] = v14;
      *&v4[v5[8]] = v16;
      *&v4[v5[9]] = v18;
      v4[v5[11]] = 2;
      *&v4[v5[13]] = 0;
      sub_10001F280((v0 + 2), (v0 + 7));
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v26 = v0[25];
        v25 = v0[26];
        v27 = v0[24];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v41 = v29;
        *v28 = 141558275;
        *(v28 + 4) = 1752392040;
        *(v28 + 12) = 2081;
        v31 = v0[10];
        v30 = v0[11];
        sub_1000035D0(v0 + 7, v31);
        (*(*(*(v30 + 8) + 8) + 32))(v31);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v26 + 8))(v25, v27);
        sub_100007BAC(v0 + 7);
        v35 = sub_1000136BC(v32, v34, &v41);

        *(v28 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v23, v24, "Saving location for connected beacons - from location monitor update:beacon: %{private,mask.hash}s.", v28, 0x16u);
        sub_100007BAC(v29);
      }

      else
      {

        sub_100007BAC(v0 + 7);
      }

      v39 = async function pointer to daemon.getter[1];
      v40 = swift_task_alloc();
      v0[55] = v40;
      *v40 = v0;
      v40[1] = sub_1007EE3E8;
    }

    else
    {
      __break(1u);
    }

    return daemon.getter();
  }

  else
  {

    v36 = swift_task_alloc();
    v0[53] = v36;
    *v36 = v0;
    v36[1] = sub_1007EE194;
    v37 = v0[35];

    return sub_1007E4460();
  }
}

uint64_t sub_1007EE194(char a1)
{
  v2 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 505) = a1;

  return _swift_task_switch(sub_1007EE294, 0, 0);
}

uint64_t sub_1007EE294()
{
  if (*(v0 + 505))
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 184);

    v3 = *(v0 + 272);
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);
    v6 = *(v0 + 208);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 288);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "                    No more running clients. Pausing location updates.", v12, 2u);
    }

    v13 = *(v0 + 280);

    return _swift_task_switch(sub_1007EF038, v13, 0);
  }
}

uint64_t sub_1007EE3E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 440);
  v5 = *v1;
  v3[56] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[57] = v7;
  *v7 = v5;
  v7[1] = sub_1007EE574;
  v8 = v3[43];
  v9 = v3[42];
  v10 = v3[41];
  v11 = v3[40];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1007EE574(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 456);
  v6 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v7 = v4[35];
    v8 = sub_1007EEF00;
  }

  else
  {
    v9 = v4[56];

    v4[59] = a1;
    v8 = sub_1007EE6B0;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007EE6B0()
{
  v1 = *(v0 + 472);
  sub_10001F280(v0 + 16, v0 + 96);
  v2 = swift_allocObject();
  *(v0 + 480) = v2;
  sub_10000A748((v0 + 96), v2 + 16);

  return _swift_task_switch(sub_1007EE748, v1, 0);
}

uint64_t sub_1007EE748()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[30];
  v5 = v0[28];
  v4 = v0[29];
  sub_1007FF3E4(v0[31], v3, type metadata accessor for BeaconEstimatedLocation);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[61] = v8;
  *(v8 + 16) = v2;
  sub_100035B84(v3, v8 + v6, type metadata accessor for BeaconEstimatedLocation);
  v9 = (v8 + v7);
  *v9 = sub_1007F519C;
  v9[1] = v1;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[62] = v11;
  *v11 = v0;
  v11[1] = sub_1007EE8D0;

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1007F51A4, v8, &type metadata for () + 8);
}

uint64_t sub_1007EE8D0()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 472);
  v5 = *v0;

  return _swift_task_switch(sub_1007EE9FC, v3, 0);
}

uint64_t sub_1007EE9FC()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);

  return _swift_task_switch(sub_1007EEA6C, 0, 0);
}

uint64_t sub_1007EEA6C()
{
  v45 = v0;
  v1 = v0[52];
  v2 = v0[54] + 1;
  sub_10003627C(v0[31], type metadata accessor for BeaconEstimatedLocation);
  sub_100007BAC(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[50];

    v4 = swift_task_alloc();
    v0[53] = v4;
    *v4 = v0;
    v4[1] = sub_1007EE194;
    v5 = v0[35];

    return sub_1007E4460();
  }

  else
  {
    v7 = v0[54] + 1;
    v0[54] = v7;
    v8 = v0[50];
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = v0[36];
      v10 = v0[32];
      v11 = v0[33];
      v12 = v0[31];
      v13 = v0[27];
      v14 = v0[23];
      sub_10001F280(v8 + 40 * v7 + 32, (v0 + 2));
      v15 = &v12[v13[5]];
      UUID.init()();
      v17 = v0[5];
      v16 = v0[6];
      sub_1000035D0(v0 + 2, v17);
      v18 = &v12[v13[6]];
      (*(*(*(v16 + 8) + 8) + 32))(v17);
      [v14 coordinate];
      v20 = v19;
      [v14 coordinate];
      v22 = v21;
      [v14 horizontalAccuracy];
      v24 = v23;
      v25 = [v14 timestamp];
      v26 = &v12[v13[10]];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = v13[12];
      v28 = [v14 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v11 + 56))(&v12[v27], 0, 1, v10);
      *v12 = xmmword_10138C660;
      *&v12[v13[7]] = v20;
      *&v12[v13[8]] = v22;
      *&v12[v13[9]] = v24;
      v12[v13[11]] = 2;
      *&v12[v13[13]] = 0;
      sub_10001F280((v0 + 2), (v0 + 7));
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v32 = v0[25];
        v31 = v0[26];
        v33 = v0[24];
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 141558275;
        *(v34 + 4) = 1752392040;
        *(v34 + 12) = 2081;
        v37 = v0[10];
        v36 = v0[11];
        sub_1000035D0(v0 + 7, v37);
        (*(*(*(v36 + 8) + 8) + 32))(v37);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        (*(v32 + 8))(v31, v33);
        sub_100007BAC(v0 + 7);
        v41 = sub_1000136BC(v38, v40, &v44);

        *(v34 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v29, v30, "Saving location for connected beacons - from location monitor update:beacon: %{private,mask.hash}s.", v34, 0x16u);
        sub_100007BAC(v35);
      }

      else
      {

        sub_100007BAC(v0 + 7);
      }

      v42 = async function pointer to daemon.getter[1];
      v43 = swift_task_alloc();
      v0[55] = v43;
      *v43 = v0;
      v43[1] = sub_1007EE3E8;
    }

    return daemon.getter();
  }
}

uint64_t sub_1007EEF00()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 400);

  return _swift_task_switch(sub_1007EEF74, 0, 0);
}

uint64_t sub_1007EEF74()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[23];

  sub_10003627C(v2, type metadata accessor for BeaconEstimatedLocation);
  sub_100007BAC(v0 + 2);
  v4 = v0[58];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1007EF038()
{
  v1 = *(v0 + 280);
  sub_1007E434C();
  sub_1007E915C();

  return _swift_task_switch(sub_1007EF0A4, 0, 0);
}

uint64_t sub_1007EF0A4()
{
  v1 = v0[35];
  v2 = v0[23];

  v3 = v0[34];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[26];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1007EF140()
{
  v1 = v0[35];
  v2 = v0[23];

  v3 = v0[51];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1007EF1DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v2[8] = *(v6 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_1007EF31C;

  return daemon.getter();
}

uint64_t sub_1007EF31C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1007EF4F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007EF4F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1007EFA48;
  }

  else
  {
    v9 = v4[12];

    v4[15] = a1;
    v8 = sub_1007EF634;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007EF634()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[2];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);

  return _swift_task_switch(sub_1007EF6DC, v1, 0);
}

uint64_t sub_1007EF6DC()
{
  v1 = v0[15];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  (*(v4 + 16))(v2, v0[10], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = v6 + v3;
  v8 = swift_allocObject();
  v0[16] = v8;
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v6, v2, v5);
  *(v8 + v7) = 1;
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1007EF848;
  v12 = v0[4];
  v11 = v0[5];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100259A6C, v8, v12);
}

uint64_t sub_1007EF848()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_1007EF974, v3, 0);
}

uint64_t sub_1007EF974()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];

  (*(v5 + 8))(v3, v4);
  v8 = *v6;
  sub_10000B3A8(&v6[*(v7 + 48)], &unk_101696900, &unk_10138B1E0);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1007EFA48()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[14];

  return v5(0);
}

void sub_1007EFAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B368);
  sub_10001F280(a2, v33);
  sub_1000D2A70(a1, v15, &qword_10169F438, &unk_1013B3300);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v19 = 141558531;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v30 = v9;
    v20 = v34;
    v21 = v35;
    sub_1000035D0(v33, v34);
    (*(*(*(v21 + 8) + 8) + 32))(v20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v5 + 8))(v8, v4);
    sub_100007BAC(v33);
    v25 = sub_1000136BC(v22, v24, &v32);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    sub_1000D2A70(v15, v13, &qword_10169F438, &unk_1013B3300);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_10000B3A8(v15, &qword_10169F438, &unk_1013B3300);
    v29 = sub_1000136BC(v26, v28, &v32);

    *(v19 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "Done saving location for connected beacon: %{private,mask.hash}s, result: %s.", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v15, &qword_10169F438, &unk_1013B3300);
    sub_100007BAC(v33);
  }
}

uint64_t sub_1007EFEAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *(v4 + 128);
  type metadata accessor for WorkItemQueue.WorkItem();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a3;
  v11 = a3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1007EFFE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1007ECE3C(v2, v3);
}

uint64_t sub_1007F0080()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v0[5] = 0;
  v0[6] = 0;
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v0[7] = v7;
  type metadata accessor for WorkItemQueue();
  v8 = type metadata accessor for WorkItemQueue.WarningOptions();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 1, 1, v8);
  UUID.init()();
  v0[8] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v9(v6, 1, 1, v8);
  UUID.init()();
  v0[9] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v0[10] = _swiftEmptyDictionarySingleton;
  return sub_100F04FA4();
}

void sub_1007F0258(void *a1, uint64_t a2)
{
  v4 = sub_100F9CD5C(a1);
  if (v4)
  {
    v5 = *(v2 + 56);
    __chkstk_darwin(v4);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B368);
    sub_10000F4C8(a2, v14);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_1004E2CD8(a2);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      if (*(a2 + 48))
      {
        v11 = *(a2 + 40);
        v12 = *(a2 + 48);
      }

      else
      {
        v12 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E75;
      }

      v13 = sub_1000136BC(v11, v12, v14);

      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to store wrapped connection for context %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }
  }
}

void sub_1007F0464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 48);
  v30 = *(a3 + 40);
  v29 = v7;
  v8 = *(a3 + 56);
  v31 = *(a3 + 57);
  v34 = *(a3 + 64);
  v33 = *(a3 + 80);
  v32 = *(a3 + 88);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a3 + 8);
  v27 = *(a3 + 24);
  XPCSession.identifier.getter();
  swift_beginAccess();

  sub_10000F4C8(a3, v46);
  v14 = *(a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = *(a1 + 80);
  *(a1 + 80) = 0x8000000000000000;
  v35 = a2;
  v36 = v6;
  v37 = v28;
  v38 = v27;
  v39 = v30;
  v40 = v29;
  v41 = v8 & 1;
  v42 = v31 & 1;
  v43 = v34;
  v44 = v33;
  v45 = v32 & 1;
  sub_100FFD91C(&v35, v13, isUniquelyReferenced_nonNull_native);
  v16 = *(v10 + 8);
  *&v34 = v10 + 8;
  v16(v13, v9);
  *(a1 + 80) = v46[0];
  swift_endAccess();
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B368);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v16;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46[0] = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    XPCSession.identifier.getter();
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;

    v33(v13, v9);
    v26 = sub_1000136BC(v23, v25, v46);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Added new location fetch subscription %{private,mask.hash}s.", v21, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {
  }
}

uint64_t sub_1007F0870(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 220) = a4;
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  v7 = type metadata accessor for UUID();
  *(v4 + 120) = v7;
  v8 = *(v7 - 8);
  *(v4 + 128) = v8;
  *(v4 + 136) = *(v8 + 64);
  *(v4 + 144) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v4 + 152) = v9;
  *v9 = v4;
  v9[1] = sub_1007F097C;

  return sub_1007F12CC(a1, a2);
}

uint64_t sub_1007F097C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1007F0A7C, 0, 0);
}

uint64_t sub_1007F0A7C()
{
  v52 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B368);
  sub_10001F280(v3, v0 + 16);
  swift_bridgeObjectRetain_n();
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 160);
  if (v8)
  {
    v10 = *(v0 + 144);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v47 = *(v0 + 112);
    v49 = *(v0 + 220);
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v13 = 141559299;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v15);
    (*(*(*(v14 + 8) + 8) + 32))(v15);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    sub_100007BAC((v0 + 16));
    v19 = sub_1000136BC(v16, v18, &v51);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2048;
    v20 = *(v9 + 16);

    *(v13 + 24) = v20;

    *(v13 + 32) = 2049;
    [v47 latitude];
    *(v13 + 34) = v21;
    *(v13 + 42) = 2049;
    [v47 longitude];
    *(v13 + 44) = v22;
    *(v13 + 52) = 2080;
    v23 = sub_100013454(v49);
    v25 = sub_1000136BC(v23, v24, &v51);

    *(v13 + 54) = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "Update location for beacon: %{private,mask.hash}s,\nclientBeaconIdentifiers %ld,\nLoc: lat: %{private}f, lon: %{private}f source: %s.", v13, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 160);
    swift_bridgeObjectRelease_n();

    sub_100007BAC((v0 + 16));
  }

  v27 = *(v0 + 160);
  v28 = *(v27 + 16);
  *(v0 + 168) = v28;
  if (v28)
  {
    v30 = *(v0 + 128);
    v29 = *(v0 + 136);
    v31 = *(v30 + 80);
    *(v0 + 216) = v31;
    *(v0 + 176) = *(v30 + 72);
    v32 = *(v30 + 16);
    v33 = (v31 + 24) & ~v31;
    v34 = (v29 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(v0 + 184) = v32;
    *(v0 + 192) = 0;
    v35 = *(v0 + 144);
    v50 = *(v0 + 220);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = *(v0 + 96);
    v48 = *(v0 + 104);
    v32(v35, v27 + ((v31 + 32) & ~v31), v36);
    sub_10001F280(v38, v0 + 56);
    v39 = swift_allocObject();
    *(v0 + 200) = v39;
    *(v39 + 16) = v48;
    (*(v30 + 32))(v39 + v33, v35, v36);
    sub_10000A748((v0 + 56), v39 + v34);
    v40 = v39 + ((v34 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v40 = v37;
    *(v40 + 8) = v50;
    v41 = async function pointer to unsafeBlocking<A>(context:_:)[1];
    v42 = v37;

    v43 = swift_task_alloc();
    *(v0 + 208) = v43;
    *v43 = v0;
    v43[1] = sub_1007F0F7C;

    return unsafeBlocking<A>(context:_:)(v43, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FF140, v39, &type metadata for () + 8);
  }

  else
  {

    v44 = *(v0 + 144);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_1007F0F7C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_1007F1094, 0, 0);
}

uint64_t sub_1007F1094()
{
  v1 = *(v0 + 192) + 1;
  if (v1 == *(v0 + 168))
  {
    v2 = *(v0 + 160);

    v3 = *(v0 + 144);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 192) = v1;
    v6 = *(v0 + 216);
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    v9 = *(v0 + 128);
    v20 = *(v0 + 220);
    v10 = *(v0 + 112);
    v19 = *(v0 + 104);
    v11 = *(v0 + 96);
    v12 = (v6 + 24) & ~v6;
    v13 = (*(v0 + 136) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    (*(v0 + 184))(v7, *(v0 + 160) + ((v6 + 32) & ~v6) + *(v0 + 176) * v1, v8);
    sub_10001F280(v11, v0 + 56);
    v14 = swift_allocObject();
    *(v0 + 200) = v14;
    *(v14 + 16) = v19;
    (*(v9 + 32))(v14 + v12, v7, v8);
    sub_10000A748((v0 + 56), v14 + v13);
    v15 = v14 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v15 = v10;
    *(v15 + 8) = v20;
    v16 = async function pointer to unsafeBlocking<A>(context:_:)[1];
    v17 = v10;

    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_1007F0F7C;

    return unsafeBlocking<A>(context:_:)(v18, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FF140, v14, &type metadata for () + 8);
  }
}

uint64_t sub_1007F12CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1007F138C, 0, 0);
}

uint64_t sub_1007F138C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  *(v0 + 56) = *(v1 + 72);
  *(v0 + 80) = *(v1 + 80);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = xmmword_101385D80;
  v4 = v2[3];
  v5 = v2[4];
  sub_1000035D0(v2, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = v2[3];
  v7 = v2[4];
  sub_1000035D0(v2, v6);
  if ((*(v7 + 88))(v6, v7))
  {
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_1007F1550;
    v9 = *(v0 + 48);
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);

    return sub_1007F18CC(v9, v10);
  }

  else
  {
    v13 = *(v0 + 48);

    v14 = *(v0 + 8);

    return v14(v3);
  }
}

uint64_t sub_1007F1550()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_1007F164C, 0, 0);
}

uint64_t sub_1007F164C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v6 = sub_100A5BFE0(1uLL, 2, 1, *(v0 + 64));
  *(v6 + 16) = 2;
  (*(v3 + 32))(v6 + v1 + v5, v2, v4);
  v7 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_1007F171C(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  sub_1000BC4D4(&qword_1016AA4D8, &qword_1013BD0D0);
  v9 = (sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = v12 + v11;
  v14 = v9[14];
  v15 = *(sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060) + 48);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 16))(v13, a2, v16);
  v17 = a3[3];
  v18 = a3[4];
  sub_1000035D0(a3, v17);
  *(v13 + v15) = (*(v18 + 184))(v17, v18);
  *(v13 + v14) = a4;
  v19 = a4;
  sub_1007F247C(v12, _swiftEmptyArrayStorage, a5);
}

uint64_t sub_1007F18CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_1007F1A0C;

  return daemon.getter();
}

uint64_t sub_1007F1A0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1007F1BE8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007F1BE8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 104);
  v7 = *v2;

  v8 = *(v4 + 96);
  if (v1)
  {

    v9 = sub_1007F1F18;
  }

  else
  {

    *(v5 + 112) = a1;
    v9 = sub_1007F1D3C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1007F1D3C()
{
  v1 = v0[14];
  v0[15] = v1;
  v2 = v0[3];
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  if ((*(v4 + 88))(v3, v4))
  {
    if (v1)
    {
      v5 = v0[8];
      v6 = v2[3];
      v7 = v2[4];
      sub_1000035D0(v0[3], v6);
      v8 = *(*(v7 + 8) + 8);
      v9 = *(v8 + 32);

      v9(v6, v8);

      return _swift_task_switch(sub_1007F2048, v1, 0);
    }

    (*(v0[5] + 56))(v0[10], 1, 1, v0[4]);
    sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
  }

  v10 = v0[15];
  v12 = v0[2];
  v11 = v0[3];
  v13 = v11[3];
  v14 = v11[4];
  sub_1000035D0(v11, v13);
  (*(*(*(v14 + 8) + 8) + 32))(v13);

  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1007F1F18()
{
  v0[15] = 0;
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if ((*(v3 + 88))(v2, v3))
  {
    (*(v0[5] + 56))(v0[10], 1, 1, v0[4]);
    sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
  }

  v4 = v0[15];
  v6 = v0[2];
  v5 = v0[3];
  v7 = v5[3];
  v8 = v5[4];
  sub_1000035D0(v5, v7);
  (*(*(*(v8 + 8) + 8) + 32))(v7);

  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1007F2048()
{
  v1 = v0[15];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[4];
  (*(v3 + 16))(v2, v0[8], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v1;
  v7 = *(v3 + 32);
  v0[17] = v7;
  v0[18] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6 + v5, v2, v4);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1007F21B4;
  v11 = v0[9];
  v10 = v0[10];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1007FF158, v6, v11);
}

uint64_t sub_1007F21B4()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_1007F234C, 0, 0);
}

uint64_t sub_1007F234C()
{
  v1 = v0[10];
  v2 = v0[4];
  if ((*(v0[5] + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);
    v3 = v0[15];
    v5 = v0[2];
    v4 = v0[3];
    v6 = v4[3];
    v7 = v4[4];
    sub_1000035D0(v4, v6);
    (*(*(*(v7 + 8) + 8) + 32))(v6);
  }

  else
  {
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[15];
    v11 = v0[2];

    v9(v11, v1, v2);
  }

  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1007F247C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v51 = sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v51);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v40 - v13;
  __chkstk_darwin(v12);
  v50 = &v40 - v14;
  v15 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = *(v48 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = *(v3 + 56);
  sub_1000BC4D4(&unk_1016B6E00, &qword_1013BD078);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v20 = v54;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v40 = v54;
    v41 = a3;
    v42 = v4;
    v43 = a2;
    v54 = _swiftEmptyArrayStorage;
    sub_10112518C(0, v21, 0);
    v22 = v54;
    v23 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v24 = *(v8 + 72);
    v44 = a1;
    v45 = v24;
    v25 = &unk_1013BD060;
    do
    {
      v53 = v21;
      v26 = v50;
      sub_1000D2A70(v23, v50, &unk_1016AA458, &unk_1013BD028);
      v27 = v22;
      v28 = v47;
      sub_1000D2A70(v26, v47, &unk_1016AA458, &unk_1013BD028);
      v29 = *(v49 + 48);
      v52 = *(v28 + v29);
      v30 = *(v51 + 48);
      v31 = v25;
      v32 = *(v28 + v30);
      v33 = type metadata accessor for UUID();
      v34 = v46;
      v35 = v28;
      v22 = v27;
      (*(*(v33 - 8) + 32))(v46, v35, v33);
      *(v34 + v29) = v52;
      *(v34 + v30) = v32;
      v25 = v31;
      sub_1000D2A70(v34, v18, &unk_1016AA490, v31);
      sub_10000B3A8(v34, &unk_1016AA458, &unk_1013BD028);
      sub_10000B3A8(v26, &unk_1016AA458, &unk_1013BD028);
      v54 = v27;
      v37 = v27[2];
      v36 = v27[3];
      if (v37 >= v36 >> 1)
      {
        sub_10112518C(v36 > 1, v37 + 1, 1);
        v22 = v54;
      }

      v22[2] = v37 + 1;
      sub_1000D2AD8(v18, v22 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v37, &unk_1016AA490, v31);
      v23 += v45;
      v21 = v53 - 1;
    }

    while (v53 != 1);
    a2 = v43;
    a1 = v44;
    v4 = v42;
    LOBYTE(a3) = v41;
    v20 = v40;
  }

  type metadata accessor for Transaction();
  v38 = swift_allocObject();
  *(v38 + 16) = v4;
  *(v38 + 24) = v20;
  *(v38 + 32) = v22;
  *(v38 + 40) = a3;
  *(v38 + 48) = a2;
  *(v38 + 56) = a1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1007F28E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 64) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1007F2980, 0, 0);
}

uint64_t sub_1007F2980()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(*(v0 + 16) + 64);
  type metadata accessor for WorkItemQueue.WorkItem();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v2;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1007F2ABC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 568) = a5;
  *(v5 + 560) = a4;
  *(v5 + 114) = a3;
  *(v5 + 552) = a2;
  *(v5 + 544) = a1;
  v6 = type metadata accessor for UUID();
  *(v5 + 576) = v6;
  v7 = *(v6 - 8);
  *(v5 + 584) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 592) = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016AA4B0, &qword_1013BD0A0);
  *(v5 + 600) = v9;
  v10 = *(v9 - 8);
  *(v5 + 608) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 616) = swift_task_alloc();
  *(v5 + 624) = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  *(v5 + 632) = v12;
  v13 = *(v12 - 8);
  *(v5 + 640) = v13;
  *(v5 + 648) = *(v13 + 64);
  *(v5 + 656) = swift_task_alloc();
  *(v5 + 664) = swift_task_alloc();
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();

  return _swift_task_switch(sub_1007F2C94, 0, 0);
}

uint64_t sub_1007F2C94()
{
  v148 = v0;
  v1 = (v0 + 328);
  v2 = *(v0 + 544);
  v3 = *(v2 + 32);
  *(v0 + 115) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v13 = 0;
  v14 = 0;
  if (v6)
  {
    while (1)
    {
      v140 = v13;
      v15 = *(v0 + 544);
LABEL_10:
      *(v0 + 696) = v14;
      *(v0 + 688) = v6;
      v17 = *(v0 + 680);
      *type = *(v0 + 672);
      v18 = *(v0 + 632);
      v19 = *(v0 + 584);
      v145 = *(v0 + 560);
      v141 = *(v0 + 114);
      v143 = *(v0 + 552);
      v20 = __clz(__rbit64(v6)) | (v14 << 6);
      (*(v19 + 16))(v17, *(v15 + 48) + *(v19 + 72) * v20, *(v0 + 576));
      v21 = (*(v15 + 56) + 104 * v20);
      v22 = v21[96];
      v24 = *(v21 + 4);
      v23 = *(v21 + 5);
      *(v0 + 64) = *(v21 + 3);
      *(v0 + 80) = v24;
      *(v0 + 96) = v23;
      *(v0 + 112) = v22;
      v26 = *(v21 + 1);
      v25 = *(v21 + 2);
      *(v0 + 16) = *v21;
      *(v0 + 32) = v26;
      *(v0 + 48) = v25;
      v27 = v17 + *(v18 + 48);
      v28 = *(v0 + 16);
      memmove(v27, v21, 0x61uLL);
      v29 = *(v19 + 32);
      v30 = *(v27 + 24);
      *v1 = *(v27 + 8);
      *(v0 + 344) = v30;
      v31 = *(v27 + 56);
      v32 = *(v27 + 72);
      v33 = *(v27 + 40);
      *(v0 + 401) = *(v27 + 81);
      *(v0 + 376) = v31;
      *(v0 + 392) = v32;
      *(v0 + 360) = v33;
      v34 = *type + *(v18 + 48);
      v137 = v29;
      v29();
      *v34 = v28;
      v35 = *(v0 + 344);
      *(v34 + 8) = *v1;
      *(v34 + 24) = v35;
      v37 = *(v0 + 376);
      v36 = *(v0 + 392);
      v38 = *(v0 + 401);
      *(v34 + 40) = *(v0 + 360);
      *(v34 + 81) = v38;
      *(v34 + 72) = v36;
      *(v34 + 56) = v37;
      v39 = swift_task_alloc();
      *(v39 + 16) = *type;
      *(v39 + 24) = v141;
      sub_1000D2A70(v0 + 16, v0 + 120, &unk_1016AA4C0, &unk_1013BD0B0);

      v13 = v140;
      v40 = sub_10013D964(sub_1007FEFD8, v39, v143);

      v41 = swift_task_alloc();
      *(v41 + 16) = *type;
      *(v41 + 24) = v141;

      v42 = sub_10013DC7C(sub_1007FEFFC, v41, v145);

      v43 = *(v40 + 16);

      if (v43 || *(v42 + 16))
      {
        break;
      }

      v6 &= v6 - 1;
      v44 = *(v0 + 672);

      v7 = sub_10000B3A8(v44, &unk_1016B6E10, &qword_1013BD0A8);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v134 = v42;
    v55 = *(v0 + 568);
    v56 = *(v55 + 16);
    v57 = _swiftEmptyArrayStorage;
    if (v56)
    {
      *(v0 + 520) = _swiftEmptyArrayStorage;
      sub_1011251CC(0, v56, 0);
      v57 = *(v0 + 520);
      v58 = sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028);
      v59 = *(*(v58 - 8) + 72);
      v60 = v55 + ((*(*(v58 - 8) + 80) + 32) & ~*(*(v58 - 8) + 80));
      do
      {
        v61 = *(v0 + 672);
        v62 = *(v0 + 624);
        v63 = *(v0 + 600);
        v64 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
        v65 = *(v63 + 48);
        *(v62 + v65) = sub_1007F48AC(v62, v60, *(v60 + *(v64 + 48)), *(v60 + *(v58 + 48)), v61);
        *(v0 + 520) = v57;
        v67 = v57[2];
        v66 = v57[3];
        if (v67 >= v66 >> 1)
        {
          sub_1011251CC(v66 > 1, v67 + 1, 1);
          v57 = *(v0 + 520);
        }

        v68 = *(v0 + 624);
        v69 = *(v0 + 608);
        v57[2] = v67 + 1;
        sub_1000D2AD8(v68, v57 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67, &unk_1016AA4B0, &qword_1013BD0A0);
        v60 += v59;
        --v56;
      }

      while (v56);
    }

    v70 = v134;
    v71 = *(v134 + 16);
    if (v71)
    {
      v132 = v57;
      *(v0 + 528) = _swiftEmptyArrayStorage;
      sub_1011251CC(0, v71, 0);
      v72 = 0;
      v7 = v134 + 32;
      v146 = *(v0 + 528);
      v133 = v71;
      while (v72 < *(v70 + 16))
      {
        v144 = v7;
        sub_1000D2A70(v7, v0 + 424, &qword_101697DF8, &unk_10138CDF0);
        v73 = *(v0 + 472);
        if (qword_101694958 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 672);
        v75 = *(v0 + 664);
        v76 = type metadata accessor for Logger();
        sub_1000076D4(v76, qword_10177B368);
        sub_1000D2A70(v74, v75, &unk_1016B6E10, &qword_1013BD0A8);
        sub_10001F280(v0 + 424, v0 + 480);
        v77 = v73;
        v78 = Logger.logObject.getter();
        LOBYTE(v74) = static os_log_type_t.info.getter();

        v79 = v74;
        v80 = os_log_type_enabled(v78, v74);
        v81 = *(v0 + 664);
        if (v80)
        {
          v82 = *(v0 + 656);
          v135 = v77;
          v83 = *(v0 + 632);
          typea = v79;
          v84 = *(v0 + 592);
          v142 = *(v0 + 584);
          log = v78;
          v85 = *(v0 + 576);
          v86 = swift_slowAlloc();
          v147[0] = swift_slowAlloc();
          *v86 = 141559299;
          *(v86 + 4) = 1752392040;
          *(v86 + 12) = 2081;
          sub_1000D2A70(v81, v82, &unk_1016B6E10, &qword_1013BD0A8);
          v87 = v82 + *(v83 + 48);
          v88 = *(v87 + 96);
          v90 = *(v87 + 64);
          v89 = *(v87 + 80);
          *(v0 + 272) = *(v87 + 48);
          *(v0 + 288) = v90;
          *(v0 + 304) = v89;
          *(v0 + 320) = v88;
          v92 = *(v87 + 16);
          v91 = *(v87 + 32);
          *(v0 + 224) = *v87;
          *(v0 + 240) = v92;
          *(v0 + 256) = v91;
          sub_10000B3A8(v0 + 224, &unk_1016AA4C0, &unk_1013BD0B0);
          (v137)(v84, v82, v85);
          sub_10000B3A8(v81, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = v94;
          v96 = *(v142 + 8);
          v96(v84, v85);
          v97 = sub_1000136BC(v93, v95, v147);

          *(v86 + 14) = v97;
          *(v86 + 22) = 2160;
          *(v86 + 24) = 1752392040;
          *(v86 + 32) = 2081;
          v98 = *(v0 + 504);
          v99 = *(v0 + 512);
          sub_1000035D0((v0 + 480), v98);
          (*(v99 + 8))(v98, v99);
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v102 = v101;
          v96(v84, v85);
          sub_100007BAC((v0 + 480));
          v103 = sub_1000136BC(v100, v102, v147);

          *(v86 + 34) = v103;
          *(v86 + 42) = 2049;
          [v135 latitude];
          *(v86 + 44) = v104;
          *(v86 + 52) = 2049;
          v105 = v135;
          [v135 longitude];
          *(v86 + 54) = v106;
          _os_log_impl(&_mh_execute_header, log, typea, "Received location update for subscription: %{private,mask.hash}s, beaconGroupID: %{private,mask.hash}s.\nLoc: lat: %{private}f, lon: %{private}f.", v86, 0x3Eu);
          swift_arrayDestroy();

          v71 = v133;
          v70 = v134;
        }

        else
        {
          sub_10000B3A8(*(v0 + 664), &unk_1016B6E10, &qword_1013BD0A8);

          sub_100007BAC((v0 + 480));
          v105 = v77;
        }

        v107 = *(v0 + 616);
        v108 = *(*(v0 + 600) + 48);
        v109 = *(v0 + 448);
        v110 = *(v0 + 456);
        sub_1000035D0((v0 + 424), v109);
        (*(v110 + 8))(v109, v110);
        *(v107 + v108) = v105;
        v111 = v105;
        sub_10000B3A8(v0 + 424, &qword_101697DF8, &unk_10138CDF0);
        *(v0 + 528) = v146;
        v113 = v146[2];
        v112 = v146[3];
        if (v113 >= v112 >> 1)
        {
          sub_1011251CC(v112 > 1, v113 + 1, 1);
          v146 = *(v0 + 528);
        }

        v114 = *(v0 + 616);
        v115 = *(v0 + 608);
        ++v72;
        v146[2] = v113 + 1;
        sub_1000D2AD8(v114, v146 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v113, &unk_1016AA4B0, &qword_1013BD0A0);
        v7 = v144 + 56;
        if (v71 == v72)
        {

          v57 = v132;
          goto LABEL_35;
        }
      }

LABEL_42:
      __break(1u);
    }

    else
    {

      v146 = _swiftEmptyArrayStorage;
LABEL_35:
      v147[0] = v57;
      sub_10039A580(v146);
      if (*(v147[0] + 16))
      {
        sub_1000BC4D4(&qword_1016AA4D0, &qword_1013BD0C0);
        v116 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v116 = _swiftEmptyDictionarySingleton;
      }

      *(v0 + 536) = v116;

      sub_1007F558C(v117, 1, (v0 + 536));
      *(v0 + 704) = v140;
      v118 = *(v0 + 672);
      v119 = *(v0 + 656);
      v120 = *(v0 + 648);
      v121 = *(v0 + 640);
      v122 = *(v0 + 576);

      v123 = *(v0 + 536);
      v124 = objc_allocWithZone(SPLocationFetchResult);
      sub_100008BB8(0, &qword_1016969B0, SPBeaconLocation_ptr);
      sub_1000194F8(&qword_1016967B0, &type metadata accessor for UUID);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v126 = [v124 initWithResults:isa];
      *(v0 + 712) = v126;

      sub_1000D2A70(v118, v119, &unk_1016B6E10, &qword_1013BD0A8);
      v127 = (*(v121 + 80) + 16) & ~*(v121 + 80);
      v128 = swift_allocObject();
      *(v0 + 720) = v128;
      sub_1000D2AD8(v119, v128 + v127, &unk_1016B6E10, &qword_1013BD0A8);
      *(v128 + ((v120 + v127 + 7) & 0xFFFFFFFFFFFFFFF8)) = v126;
      v129 = async function pointer to unsafeBlocking<A>(context:_:)[1];
      v130 = v126;
      v131 = swift_task_alloc();
      *(v0 + 728) = v131;
      v12 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      *v131 = v0;
      v131[1] = sub_1007F39B8;
      v10 = sub_1007FF0A0;
      v7 = v0 + 113;
      v9 = 0x80000001013BCEF0;
      v8 = 0xD000000000000014;
      v11 = v128;
    }

    return unsafeBlocking<A>(context:_:)(v7, v8, v9, v10, v11, v12);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v16 >= (((1 << *(v0 + 115)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v0 + 544);
      v6 = *(v15 + 8 * v16 + 64);
      ++v14;
      if (v6)
      {
        v140 = v13;
        v14 = v16;
        goto LABEL_10;
      }
    }

    v45 = *(v0 + 680);
    v46 = *(v0 + 672);
    v47 = *(v0 + 664);
    v48 = *(v0 + 656);
    v49 = *(v0 + 624);
    v50 = *(v0 + 616);
    v51 = *(v0 + 592);
    v52 = *(v0 + 544);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_1007F39B8()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 720);
  v4 = *v0;

  return _swift_task_switch(sub_1007F3AD0, 0, 0);
}

uint64_t sub_1007F3AD0()
{
  v145 = v0;
  v1 = (v0 + 328);
  v2 = *(v0 + 672);

  v3 = sub_10000B3A8(v2, &unk_1016B6E10, &qword_1013BD0A8);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = (*(v0 + 688) - 1) & *(v0 + 688);
  if (v11)
  {
    while (1)
    {
      v137 = v9;
      v12 = *(v0 + 544);
LABEL_7:
      *(v0 + 696) = v10;
      *(v0 + 688) = v11;
      v14 = *(v0 + 680);
      *type = *(v0 + 672);
      v15 = *(v0 + 632);
      v16 = *(v0 + 584);
      v142 = *(v0 + 560);
      v138 = *(v0 + 114);
      v140 = *(v0 + 552);
      v17 = __clz(__rbit64(v11)) | (v10 << 6);
      (*(v16 + 16))(v14, *(v12 + 48) + *(v16 + 72) * v17, *(v0 + 576));
      v18 = (*(v12 + 56) + 104 * v17);
      v19 = v18[96];
      v21 = *(v18 + 4);
      v20 = *(v18 + 5);
      *(v0 + 64) = *(v18 + 3);
      *(v0 + 80) = v21;
      *(v0 + 96) = v20;
      *(v0 + 112) = v19;
      v23 = *(v18 + 1);
      v22 = *(v18 + 2);
      *(v0 + 16) = *v18;
      *(v0 + 32) = v23;
      *(v0 + 48) = v22;
      v24 = v14 + *(v15 + 48);
      v25 = *(v0 + 16);
      memmove(v24, v18, 0x61uLL);
      v26 = *(v16 + 32);
      v27 = *(v24 + 24);
      *v1 = *(v24 + 8);
      *(v0 + 344) = v27;
      v28 = *(v24 + 56);
      v29 = *(v24 + 72);
      v30 = *(v24 + 40);
      *(v0 + 401) = *(v24 + 81);
      *(v0 + 376) = v28;
      *(v0 + 392) = v29;
      *(v0 + 360) = v30;
      v31 = *type + *(v15 + 48);
      v134 = v26;
      v26();
      *v31 = v25;
      v32 = *(v0 + 344);
      *(v31 + 8) = *v1;
      *(v31 + 24) = v32;
      v34 = *(v0 + 376);
      v33 = *(v0 + 392);
      v35 = *(v0 + 401);
      *(v31 + 40) = *(v0 + 360);
      *(v31 + 81) = v35;
      *(v31 + 72) = v33;
      *(v31 + 56) = v34;
      v36 = swift_task_alloc();
      *(v36 + 16) = *type;
      *(v36 + 24) = v138;
      sub_1000D2A70(v0 + 16, v0 + 120, &unk_1016AA4C0, &unk_1013BD0B0);

      v9 = v137;
      v37 = sub_10013D964(sub_1007FEFD8, v36, v140);

      v38 = swift_task_alloc();
      *(v38 + 16) = *type;
      *(v38 + 24) = v138;

      v39 = sub_10013DC7C(sub_1007FEFFC, v38, v142);

      v40 = *(v37 + 16);

      if (v40 || *(v39 + 16))
      {
        break;
      }

      v11 &= v11 - 1;
      v41 = *(v0 + 672);

      v3 = sub_10000B3A8(v41, &unk_1016B6E10, &qword_1013BD0A8);
      if (!v11)
      {
        goto LABEL_3;
      }
    }

    v131 = v39;
    v52 = *(v0 + 568);
    v53 = *(v52 + 16);
    v54 = _swiftEmptyArrayStorage;
    if (v53)
    {
      *(v0 + 520) = _swiftEmptyArrayStorage;
      sub_1011251CC(0, v53, 0);
      v54 = *(v0 + 520);
      v55 = sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028);
      v56 = *(*(v55 - 8) + 72);
      v57 = v52 + ((*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80));
      do
      {
        v58 = *(v0 + 672);
        v59 = *(v0 + 624);
        v60 = *(v0 + 600);
        v61 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
        v62 = *(v60 + 48);
        *(v59 + v62) = sub_1007F48AC(v59, v57, *(v57 + *(v61 + 48)), *(v57 + *(v55 + 48)), v58);
        *(v0 + 520) = v54;
        v64 = v54[2];
        v63 = v54[3];
        if (v64 >= v63 >> 1)
        {
          sub_1011251CC(v63 > 1, v64 + 1, 1);
          v54 = *(v0 + 520);
        }

        v65 = *(v0 + 624);
        v66 = *(v0 + 608);
        v54[2] = v64 + 1;
        sub_1000D2AD8(v65, v54 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v64, &unk_1016AA4B0, &qword_1013BD0A0);
        v57 += v56;
        --v53;
      }

      while (v53);
    }

    v67 = v131;
    v68 = *(v131 + 16);
    if (v68)
    {
      v129 = v54;
      *(v0 + 528) = _swiftEmptyArrayStorage;
      sub_1011251CC(0, v68, 0);
      v69 = 0;
      v3 = v131 + 32;
      v143 = *(v0 + 528);
      v130 = v68;
      while (v69 < *(v67 + 16))
      {
        v141 = v3;
        sub_1000D2A70(v3, v0 + 424, &qword_101697DF8, &unk_10138CDF0);
        v70 = *(v0 + 472);
        if (qword_101694958 != -1)
        {
          swift_once();
        }

        v71 = *(v0 + 672);
        v72 = *(v0 + 664);
        v73 = type metadata accessor for Logger();
        sub_1000076D4(v73, qword_10177B368);
        sub_1000D2A70(v71, v72, &unk_1016B6E10, &qword_1013BD0A8);
        sub_10001F280(v0 + 424, v0 + 480);
        v74 = v70;
        v75 = Logger.logObject.getter();
        LOBYTE(v71) = static os_log_type_t.info.getter();

        v76 = v71;
        v77 = os_log_type_enabled(v75, v71);
        v78 = *(v0 + 664);
        if (v77)
        {
          v79 = *(v0 + 656);
          v132 = v74;
          v80 = *(v0 + 632);
          typea = v76;
          v81 = *(v0 + 592);
          v139 = *(v0 + 584);
          log = v75;
          v82 = *(v0 + 576);
          v83 = swift_slowAlloc();
          v144[0] = swift_slowAlloc();
          *v83 = 141559299;
          *(v83 + 4) = 1752392040;
          *(v83 + 12) = 2081;
          sub_1000D2A70(v78, v79, &unk_1016B6E10, &qword_1013BD0A8);
          v84 = v79 + *(v80 + 48);
          v85 = *(v84 + 96);
          v87 = *(v84 + 64);
          v86 = *(v84 + 80);
          *(v0 + 272) = *(v84 + 48);
          *(v0 + 288) = v87;
          *(v0 + 304) = v86;
          *(v0 + 320) = v85;
          v89 = *(v84 + 16);
          v88 = *(v84 + 32);
          *(v0 + 224) = *v84;
          *(v0 + 240) = v89;
          *(v0 + 256) = v88;
          sub_10000B3A8(v0 + 224, &unk_1016AA4C0, &unk_1013BD0B0);
          (v134)(v81, v79, v82);
          sub_10000B3A8(v78, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          v93 = *(v139 + 8);
          v93(v81, v82);
          v94 = sub_1000136BC(v90, v92, v144);

          *(v83 + 14) = v94;
          *(v83 + 22) = 2160;
          *(v83 + 24) = 1752392040;
          *(v83 + 32) = 2081;
          v95 = *(v0 + 504);
          v96 = *(v0 + 512);
          sub_1000035D0((v0 + 480), v95);
          (*(v96 + 8))(v95, v96);
          v97 = dispatch thunk of CustomStringConvertible.description.getter();
          v99 = v98;
          v93(v81, v82);
          sub_100007BAC((v0 + 480));
          v100 = sub_1000136BC(v97, v99, v144);

          *(v83 + 34) = v100;
          *(v83 + 42) = 2049;
          [v132 latitude];
          *(v83 + 44) = v101;
          *(v83 + 52) = 2049;
          v102 = v132;
          [v132 longitude];
          *(v83 + 54) = v103;
          _os_log_impl(&_mh_execute_header, log, typea, "Received location update for subscription: %{private,mask.hash}s, beaconGroupID: %{private,mask.hash}s.\nLoc: lat: %{private}f, lon: %{private}f.", v83, 0x3Eu);
          swift_arrayDestroy();

          v68 = v130;
          v67 = v131;
        }

        else
        {
          sub_10000B3A8(*(v0 + 664), &unk_1016B6E10, &qword_1013BD0A8);

          sub_100007BAC((v0 + 480));
          v102 = v74;
        }

        v104 = *(v0 + 616);
        v105 = *(*(v0 + 600) + 48);
        v106 = *(v0 + 448);
        v107 = *(v0 + 456);
        sub_1000035D0((v0 + 424), v106);
        (*(v107 + 8))(v106, v107);
        *(v104 + v105) = v102;
        v108 = v102;
        sub_10000B3A8(v0 + 424, &qword_101697DF8, &unk_10138CDF0);
        *(v0 + 528) = v143;
        v110 = v143[2];
        v109 = v143[3];
        if (v110 >= v109 >> 1)
        {
          sub_1011251CC(v109 > 1, v110 + 1, 1);
          v143 = *(v0 + 528);
        }

        v111 = *(v0 + 616);
        v112 = *(v0 + 608);
        ++v69;
        v143[2] = v110 + 1;
        sub_1000D2AD8(v111, v143 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v110, &unk_1016AA4B0, &qword_1013BD0A0);
        v3 = v141 + 56;
        if (v68 == v69)
        {

          v54 = v129;
          goto LABEL_32;
        }
      }

LABEL_43:
      __break(1u);
      return unsafeBlocking<A>(context:_:)(v3, v4, v5, v6, v7, v8);
    }

    v143 = _swiftEmptyArrayStorage;
LABEL_32:
    v144[0] = v54;
    sub_10039A580(v143);
    if (*(v144[0] + 16))
    {
      sub_1000BC4D4(&qword_1016AA4D0, &qword_1013BD0C0);
      v113 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v113 = _swiftEmptyDictionarySingleton;
    }

    *(v0 + 536) = v113;

    sub_1007F558C(v114, 1, (v0 + 536));
    *(v0 + 704) = v137;
    if (!v137)
    {
      v115 = *(v0 + 672);
      v116 = *(v0 + 656);
      v117 = *(v0 + 648);
      v118 = *(v0 + 640);
      v119 = *(v0 + 576);

      v120 = *(v0 + 536);
      v121 = objc_allocWithZone(SPLocationFetchResult);
      sub_100008BB8(0, &qword_1016969B0, SPBeaconLocation_ptr);
      sub_1000194F8(&qword_1016967B0, &type metadata accessor for UUID);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v123 = [v121 initWithResults:isa];
      *(v0 + 712) = v123;

      sub_1000D2A70(v115, v116, &unk_1016B6E10, &qword_1013BD0A8);
      v124 = (*(v118 + 80) + 16) & ~*(v118 + 80);
      v125 = swift_allocObject();
      *(v0 + 720) = v125;
      sub_1000D2AD8(v116, v125 + v124, &unk_1016B6E10, &qword_1013BD0A8);
      *(v125 + ((v117 + v124 + 7) & 0xFFFFFFFFFFFFFFF8)) = v123;
      v126 = async function pointer to unsafeBlocking<A>(context:_:)[1];
      v127 = v123;
      v128 = swift_task_alloc();
      *(v0 + 728) = v128;
      v8 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      *v128 = v0;
      v128[1] = sub_1007F39B8;
      v6 = sub_1007FF0A0;
      v3 = v0 + 113;
      v5 = 0x80000001013BCEF0;
      v4 = 0xD000000000000014;
      v7 = v125;

      return unsafeBlocking<A>(context:_:)(v3, v4, v5, v6, v7, v8);
    }

    return swift_unexpectedError();
  }

  else
  {
    while (1)
    {
LABEL_3:
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v13 >= (((1 << *(v0 + 115)) + 63) >> 6))
      {
        break;
      }

      v12 = *(v0 + 544);
      v11 = *(v12 + 8 * v13 + 64);
      ++v10;
      if (v11)
      {
        v137 = v9;
        v10 = v13;
        goto LABEL_7;
      }
    }

    v42 = *(v0 + 680);
    v43 = *(v0 + 672);
    v44 = *(v0 + 664);
    v45 = *(v0 + 656);
    v46 = *(v0 + 624);
    v47 = *(v0 + 616);
    v48 = *(v0 + 592);
    v49 = *(v0 + 544);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_1007F47F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a2 + *(sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) + 48);
  v10 = *(v5 + 40);
  v11 = *(v5 + 56);
  *v12 = *(v5 + 72);
  *&v12[9] = *(v5 + 81);
  v8 = *(v5 + 8);
  v9 = *(v5 + 24);
  v6 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  return sub_101106A80(a1, *(a1 + *(v6 + 48)), a3) & 1;
}

id sub_1007F48AC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v75 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v71 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  v12 = *(*(v73 - 8) + 64);
  v13 = __chkstk_darwin(v73);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  v17 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v72 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v61 - v22;
  __chkstk_darwin(v21);
  v25 = &v61 - v24;
  (*(v9 + 16))();
  v74 = v17;
  *&v25[*(v17 + 48)] = a3;
  v26 = qword_101694958;
  v27 = a3;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177B368);
  sub_1000D2A70(a5, v16, &unk_1016B6E10, &qword_1013BD0A8);
  sub_1000D2A70(v25, v23, &unk_1016AA490, &unk_1013BD060);
  v75 = v75;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v62 = v16;
    v32 = v31;
    v67 = swift_slowAlloc();
    v76 = v67;
    *v32 = 141559299;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    v33 = v16;
    v34 = v70;
    sub_1000D2A70(v33, v70, &unk_1016B6E10, &qword_1013BD0A8);
    v35 = (v34 + *(v73 + 48));
    v66 = v29;
    v36 = *v35;
    v68 = v25;
    v69 = a1;
    v64 = v23;
    v65 = v30;
    v38 = v35[2];
    v37 = v35[3];
    v73 = v9;
    v39 = v8;
    v40 = v35[4];
    v41 = v35[5];
    v42 = v35[7];
    v43 = v35[9];

    v63 = *(v73 + 32);
    v44 = v71;
    v63(v71, v34, v39);
    sub_10000B3A8(v62, &unk_1016B6E10, &qword_1013BD0A8);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v48 = *(v73 + 8);
    v48(v44, v39);
    v49 = sub_1000136BC(v45, v47, &v76);

    *(v32 + 14) = v49;
    *(v32 + 22) = 2160;
    *(v32 + 24) = 1752392040;
    *(v32 + 32) = 2081;
    v50 = v64;
    v51 = v72;
    sub_1000D2A70(v64, v72, &unk_1016AA490, &unk_1013BD060);

    v63(v44, v51, v39);
    v8 = v39;
    v9 = v73;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v48(v44, v8);
    v25 = v68;
    a1 = v69;
    sub_10000B3A8(v50, &unk_1016AA490, &unk_1013BD060);
    v55 = sub_1000136BC(v52, v54, &v76);

    *(v32 + 34) = v55;
    *(v32 + 42) = 2049;
    [v75 latitude];
    *(v32 + 44) = v56;
    *(v32 + 52) = 2049;
    [v75 longitude];
    *(v32 + 54) = v57;
    v58 = v66;
    _os_log_impl(&_mh_execute_header, v66, v65, "Received location update for subscription: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.\nLoc: lat: %{private}f, lon: %{private}f.", v32, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_10000B3A8(v16, &unk_1016B6E10, &qword_1013BD0A8);

    sub_10000B3A8(v23, &unk_1016AA490, &unk_1013BD060);
    v51 = v72;
  }

  sub_1000D2AD8(v25, v51, &unk_1016AA490, &unk_1013BD060);

  (*(v9 + 32))(a1, v51, v8);
  v59 = v75;

  return v59;
}

BOOL sub_1007F4F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  sub_1000D2A70(a1, &v20 - v7, &unk_1016B6E10, &qword_1013BD0A8);
  v9 = &v8[*(v5 + 56)];
  v10 = *v9;
  v11 = *(v9 + 2);
  v12 = *(v9 + 3);
  v13 = *(v9 + 4);
  v14 = *(v9 + 5);
  v15 = *(v9 + 7);
  v16 = *(v9 + 9);

  XPCSession.proxy.getter();

  v17 = v21;
  if (v21)
  {
    [v21 receivedUpdatedLocation:a2];
    swift_unknownObjectRelease();
  }

  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 8))(v8, v18);
  return v17 == 0;
}

uint64_t sub_1007F50A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001BA6C8;

  return sub_1007EF1DC(a1, v1);
}

unint64_t sub_1007F5138()
{
  result = qword_1016AF980;
  if (!qword_1016AF980)
  {
    sub_1000BC580(&unk_1016AA410, &unk_101395200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF980);
  }

  return result;
}

void sub_1007F51B0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1007E3F94(a1, v4);
}

uint64_t sub_1007F5220()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[6], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v2 + v8, v9);
  v12 = v1[12];
  if (!(*(v10 + 48))(v0 + v2 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[13]);

  v15 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_1007F5400()
{
  v1 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_100E720D0(v3, v0 + v2, v5, v6);
}

uint64_t sub_1007F54A4(uint64_t a1)
{
  v4 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1007DAD40(a1, v6, v1 + 24, v1 + v5);
}

uint64_t sub_1007F558C(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016AA4B0, &qword_1013BD0A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = v59 - v16;
  v64 = *(a1 + 16);
  if (!v64)
  {
  }

  v59[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v63 = *(v15 + 72);
  v65 = a1;
  sub_1000D2A70(a1 + v19, v59 - v16, &unk_1016AA4B0, &qword_1013BD0A0);
  v60 = v8;
  v66 = *(v8 + 32);
  v67 = v7;
  v66(v11, v17, v7);
  v62 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_1000210EC(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_100FE5D7C(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_1000210EC(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_101004CB0();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v70 = v31;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v32 = swift_dynamicCast();
    v33 = v60;
    if ((v32 & 1) == 0)
    {

      (*(v33 + 8))(v11, v67);
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v61 = *(v60 + 72);
  v38 = v22;
  v66((v37 + v61 * v22), v11, v67);
  *(v36[7] + 8 * v38) = v20;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v65;
    if (v64 == 1)
    {
    }

    v42 = v65 + v63 + v19;
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_1000D2A70(v42, v17, &unk_1016AA4B0, &qword_1013BD0A0);
      v66(v11, v17, v67);
      v20 = *&v17[v62];
      v44 = *a3;
      v45 = sub_1000210EC(v11);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v26 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v26)
      {
        goto LABEL_23;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_100FE5D7C(v49, 1);
        v51 = *a3;
        v45 = sub_1000210EC(v11);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v50)
      {
        goto LABEL_9;
      }

      v53 = *a3;
      *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v54 = v45;
      v66((v53[6] + v61 * v45), v11, v67);
      *(v53[7] + 8 * v54) = v20;
      v55 = v53[2];
      v26 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v53[2] = v56;
      v42 += v63;
      v41 = v65;
      if (v64 == v43)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v57._object = 0x8000000101360AB0;
  v57._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v57);
  _print_unlocked<A, B>(_:_:)();
  v58._countAndFlagsBits = 39;
  v58._object = 0xE100000000000000;
  String.append(_:)(v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007F5AD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 80);

  v6 = sub_1007D60D4(v5);

  *a2 = v6;
  return result;
}

uint64_t sub_1007F5B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[40] = a1;
  v3[41] = a3;
  v6 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v8 = type metadata accessor for LocalFindableAccessoryRecord();
  v3[44] = v8;
  v9 = *(v8 - 8);
  v3[45] = v9;
  v10 = *(v9 + 64) + 15;
  v3[46] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&unk_1016AA510, &unk_101393150) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v3[48] = v12;
  v13 = *(v12 - 8);
  v3[49] = v13;
  v14 = *(v13 + 64) + 15;
  v3[50] = swift_task_alloc();
  v15 = type metadata accessor for BeaconIdentifier();
  v3[51] = v15;
  v16 = *(v15 - 8);
  v3[52] = v16;
  v3[53] = *(v16 + 64);
  v3[54] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v18 = type metadata accessor for Date();
  v3[56] = v18;
  v19 = *(v18 - 8);
  v3[57] = v19;
  v20 = *(v19 + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v3[60] = swift_task_alloc();
  v22 = swift_task_alloc();
  v3[61] = v22;
  v23 = type metadata accessor for DeviceEvent(0);
  v3[62] = v23;
  v24 = *(v23 - 8);
  v3[63] = v24;
  v25 = *(v24 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[5] = v8;
  v3[6] = sub_1000194F8(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord);
  v26 = sub_1000280DC(v3 + 2);
  v3[71] = v26;
  sub_1007FF3E4(a2, v26, type metadata accessor for LocalFindableAccessoryRecord);
  v27 = swift_task_alloc();
  v3[72] = v27;
  *v27 = v3;
  v27[1] = sub_1007F5FB4;

  return sub_1007EAD28(v22, a1);
}

uint64_t sub_1007F5FB4()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_1007F60C4, v2, 0);
}

uint64_t sub_1007F60C4()
{
  v124 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v2 + 48);
  *(v0 + 584) = v4;
  *(v0 + 592) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &unk_1016AA500, &unk_1013B3600);
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    *v5 = v0;
    v5[1] = sub_1007F6D5C;
    v6 = *(v0 + 480);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);

    return sub_1007E9BD4(v6, v7);
  }

  else
  {
    sub_100035B84(v3, *(v0 + 552), type metadata accessor for DeviceEvent);
    v10 = *(v0 + 560);
    sub_100035B84(*(v0 + 552), v10, type metadata accessor for DeviceEvent);
    v11 = *(v10 + 9);
    if (v11 == 5)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 560);
      v13 = *(v0 + 496);
      v15 = *(v0 + 464);
      v14 = *(v0 + 472);
      v16 = *(v0 + 448);
      v17 = *(v0 + 456);
      v18 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101073C8C(*(v0 + 312));

      v19 = v12 + *(v13 + 24);
      Date.addingTimeInterval(_:)();
      static Date.trustedNow.getter(v15);
      Date.timeIntervalSince(_:)();
      v21 = v20;
      v22 = *(v17 + 8);
      v22(v15, v16);
      v22(v14, v16);
      if (v21 > 0.0)
      {
        v24 = *(v0 + 320);
        v23 = *(v0 + 328);
        v25 = *(*(v0 + 408) + 20);
        swift_beginAccess();
        v26 = *(v23 + 152);
        if (*(v26 + 16))
        {
          v27 = *(v23 + 152);

          v28 = sub_1000210EC(v24 + v25);
          if (v29)
          {
            v30 = *(*(v26 + 56) + 8 * v28);

            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            Task.cancel()();
          }

          else
          {
          }
        }

        v31 = *(v0 + 432);
        v32 = *(v0 + 440);
        v33 = *(v0 + 416);
        v11 = *(v0 + 424);
        v120 = v24;
        v34 = v25;
        v36 = *(v0 + 320);
        v35 = *(v0 + 328);
        v37 = type metadata accessor for TaskPriority();
        (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
        v38 = swift_allocObject();
        swift_weakInit();
        sub_1007FF3E4(v36, v31, type metadata accessor for BeaconIdentifier);
        sub_10001F280(v0 + 16, v0 + 216);
        v39 = (*(v33 + 80) + 48) & ~*(v33 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        *(v40 + 24) = 0;
        *(v40 + 32) = v21;
        *(v40 + 40) = v38;
        sub_100035B84(v31, v40 + v39, type metadata accessor for BeaconIdentifier);
        sub_10000A748((v0 + 216), v40 + ((v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
        v41 = sub_100A838D4(0, 0, v32, &unk_1013BD188, v40);
        swift_beginAccess();
        v42 = *(v23 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123[0] = *(v23 + 152);
        *(v23 + 152) = 0x8000000000000000;
        sub_100FFF724(v41, v120 + v34, isUniquelyReferenced_nonNull_native);
        *(v23 + 152) = v123[0];
        swift_endAccess();
        LOBYTE(v11) = 5;
      }
    }

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 560);
    v45 = *(v0 + 536);
    v46 = *(v0 + 528);
    v47 = *(v0 + 520);
    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177B368);
    sub_10001F280(v0 + 16, v0 + 136);
    sub_1007FF3E4(v44, v45, type metadata accessor for DeviceEvent);
    sub_1007FF3E4(v44, v46, type metadata accessor for DeviceEvent);
    sub_1007FF3E4(v44, v47, type metadata accessor for DeviceEvent);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 536);
    if (v51)
    {
      v119 = v50;
      v121 = v49;
      v122 = v11;
      v53 = *(v0 + 392);
      v54 = *(v0 + 400);
      v55 = *(v0 + 384);
      v56 = swift_slowAlloc();
      v123[0] = swift_slowAlloc();
      *v56 = 141559299;
      *(v56 + 4) = 1752392040;
      *(v56 + 12) = 2081;
      v57 = sub_1000035D0((v0 + 136), *(v0 + 160));
      v118 = *(v53 + 16);
      v118(v54, v57, v55);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v117 = *(v53 + 8);
      v117(v54, v55);
      sub_100007BAC((v0 + 136));
      v61 = sub_1000136BC(v58, v60, v123);

      *(v56 + 14) = v61;
      *(v56 + 22) = 2082;
      v62 = 0xE800000000000000;
      v63 = 0x6E776F6E6B6E752ELL;
      v64 = *(v52 + 9);
      v65 = 0xEC00000064657261;
      v66 = 0x657070617369642ELL;
      if (v64 != 6)
      {
        v66 = 0x726961702ELL;
        v65 = 0xE500000000000000;
      }

      v67 = 0xE700000000000000;
      v68 = 0x6863617465642ELL;
      if (v64 != 4)
      {
        v68 = 0x657463657465642ELL;
        v67 = 0xEF79627261654E64;
      }

      if (*(v52 + 9) <= 5u)
      {
        v66 = v68;
        v65 = v67;
      }

      v69 = 0xEB00000000746365;
      v70 = 0x6E6E6F637369642ELL;
      if (v64 != 2)
      {
        v70 = 0x6863617474612ELL;
        v69 = 0xE700000000000000;
      }

      if (*(v52 + 9))
      {
        v63 = 0x7463656E6E6F632ELL;
        v62 = 0xE800000000000000;
      }

      if (*(v52 + 9) > 1u)
      {
        v63 = v70;
        v62 = v69;
      }

      if (*(v52 + 9) <= 3u)
      {
        v71 = v63;
      }

      else
      {
        v71 = v66;
      }

      if (*(v52 + 9) <= 3u)
      {
        v72 = v62;
      }

      else
      {
        v72 = v65;
      }

      v73 = *(v0 + 528);
      v74 = *(v0 + 520);
      v75 = *(v0 + 496);
      v76 = *(v0 + 448);
      v77 = *(v0 + 376);
      sub_10003627C(*(v0 + 536), type metadata accessor for DeviceEvent);
      v78 = sub_1000136BC(v71, v72, v123);

      *(v56 + 24) = v78;
      *(v56 + 32) = 2082;
      v79 = *(v75 + 24);
      sub_1000194F8(&qword_1016969A0, &type metadata accessor for Date);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      sub_10003627C(v73, type metadata accessor for DeviceEvent);
      v83 = sub_1000136BC(v80, v82, v123);

      *(v56 + 34) = v83;
      *(v56 + 42) = 2160;
      *(v56 + 44) = 1752392040;
      *(v56 + 52) = 2081;
      sub_1000D2A70(v74 + *(v75 + 32), v77, &unk_1016AA510, &unk_101393150);
      v84 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
      if ((*(*(v84 - 8) + 48))(v77, 1, v84) == 1)
      {
        sub_10000B3A8(*(v0 + 376), &unk_1016AA510, &unk_101393150);
        v85 = 0xE400000000000000;
        v86 = 1701736302;
      }

      else
      {
        v89 = *(v0 + 400);
        v90 = *(v0 + 376);
        v91 = *(v0 + 384);
        v118(v89, v90, v91);
        sub_10003627C(v90, type metadata accessor for DeviceEvent.AttachmentInfo);
        v86 = UUID.uuidString.getter();
        v85 = v92;
        v117(v89, v91);
      }

      LOBYTE(v11) = v122;
      sub_10003627C(*(v0 + 520), type metadata accessor for DeviceEvent);
      v93 = sub_1000136BC(v86, v85, v123);

      *(v56 + 54) = v93;
      _os_log_impl(&_mh_execute_header, v121, v119, "Update device event; beacon: %{private,mask.hash}s source: %{public}s, timestamp: %{public}s, attached to: %{private,mask.hash}s.", v56, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v87 = *(v0 + 528);
      v88 = *(v0 + 520);

      sub_10003627C(v88, type metadata accessor for DeviceEvent);
      sub_10003627C(v87, type metadata accessor for DeviceEvent);
      sub_10003627C(v52, type metadata accessor for DeviceEvent);
      sub_100007BAC((v0 + 136));
    }

    v94 = *(v0 + 352);
    v95 = *(v0 + 360);
    v96 = *(v0 + 344);
    sub_10001F280(v0 + 16, v0 + 176);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v97 = swift_dynamicCast();
    v98 = *(v95 + 56);
    if (v97)
    {
      v99 = *(v0 + 368);
      v101 = *(v0 + 344);
      v100 = *(v0 + 352);
      v102 = *(v0 + 336);
      v98(v101, 0, 1, v100);
      sub_100035B84(v101, v99, type metadata accessor for LocalFindableAccessoryRecord);
      v103 = (v99 + *(v100 + 28));
      v104 = *v103;
      v105 = v103[1];
      static String.Encoding.utf8.getter();
      v106 = String.init(data:encoding:)();
      if (!v107)
      {
        v106 = Data.hexString.getter();
      }

      v108 = v106;
      v109 = v107;
      sub_10003627C(*(v0 + 368), type metadata accessor for LocalFindableAccessoryRecord);
    }

    else
    {
      v110 = *(v0 + 344);
      v98(v110, 1, 1, *(v0 + 352));
      sub_10000B3A8(v110, &qword_1016A9A30, &unk_1013BD120);
      v108 = 0;
      v109 = 0;
    }

    v111 = *(v0 + 560);
    v112 = *(v0 + 512);
    v113 = *(*(v0 + 328) + 160);
    sub_100008BB8(0, &qword_1016AA570, SPDeviceEvent_ptr);
    sub_1007FF3E4(v111, v112, type metadata accessor for DeviceEvent);
    v114 = sub_1007E9934(v112, v108, v109);
    *(v0 + 608) = v114;
    v115 = swift_task_alloc();
    *(v0 + 616) = v115;
    *v115 = v0;
    v115[1] = sub_1007F803C;
    v116 = *(v0 + 568);

    return sub_1007FE0D0(v114, v116, 0x10F0F0F0F040200uLL >> (8 * v11), v113);
  }
}

uint64_t sub_1007F6D5C()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_1007F6E6C, v2, 0);
}

uint64_t sub_1007F6E6C()
{
  v167 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 480);
  if ((*(v0 + 584))(v2, 1, *(v0 + 496)) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AA500, &unk_1013B3600);
    sub_1007FF390();
    v3 = swift_allocError();
    *v4 = 3;
    swift_willThrow();
    *(v0 + 304) = v3;
    swift_errorRetain();
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 624) == 3)
    {
      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177B368);
      sub_10001F280(v0 + 16, v0 + 96);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 392);
        v8 = *(v0 + 400);
        v10 = *(v0 + 384);
        v11 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v166[0] = v162;
        *v11 = 141558275;
        *(v11 + 4) = 1752392040;
        *(v11 + 12) = 2081;
        v12 = sub_1000035D0((v0 + 96), *(v0 + 120));
        (*(v9 + 16))(v8, v12, v10);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        (*(v9 + 8))(v8, v10);
        sub_100007BAC((v0 + 96));
        v16 = sub_1000136BC(v13, v15, v166);

        *(v11 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v6, v7, "No device events for beacon: %{private,mask.hash}s", v11, 0x16u);
        sub_100007BAC(v162);

LABEL_19:

LABEL_23:

        v51 = *(v0 + 560);
        v52 = *(v0 + 552);
        v53 = *(v0 + 544);
        v54 = *(v0 + 536);
        v55 = *(v0 + 528);
        v56 = *(v0 + 520);
        v57 = *(v0 + 512);
        v59 = *(v0 + 480);
        v58 = *(v0 + 488);
        v148 = *(v0 + 472);
        v149 = *(v0 + 464);
        v151 = *(v0 + 440);
        v153 = *(v0 + 432);
        v154 = *(v0 + 400);
        v155 = *(v0 + 376);
        v156 = *(v0 + 368);
        v159 = *(v0 + 344);
        v164 = *(v0 + 336);
        sub_100007BAC((v0 + 16));

        v60 = *(v0 + 8);

        return v60();
      }

      v50 = (v0 + 96);
    }

    else
    {
      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000076D4(v38, qword_10177B368);
      sub_10001F280(v0 + 16, v0 + 56);
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v39))
      {
        v41 = *(v0 + 392);
        v40 = *(v0 + 400);
        v42 = *(v0 + 384);
        v43 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v166[0] = v163;
        *v43 = 138543875;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v44;
        *v158 = v44;
        *(v43 + 12) = 2160;
        *(v43 + 14) = 1752392040;
        *(v43 + 22) = 2081;
        v45 = sub_1000035D0((v0 + 56), *(v0 + 80));
        (*(v41 + 16))(v40, v45, v42);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        (*(v41 + 8))(v40, v42);
        sub_100007BAC((v0 + 56));
        v49 = sub_1000136BC(v46, v48, v166);

        *(v43 + 24) = v49;
        _os_log_impl(&_mh_execute_header, v6, v39, "Failed to send the attach event: %{public}@ for beacon: %{private,mask.hash}s", v43, 0x20u);
        sub_10000B3A8(v158, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v163);

        goto LABEL_19;
      }

      v50 = (v0 + 56);
    }

    sub_100007BAC(v50);
    goto LABEL_23;
  }

  sub_100035B84(v2, *(v0 + 544), type metadata accessor for DeviceEvent);
  v17 = *(v0 + 560);
  sub_100035B84(*(v0 + 544), v17, type metadata accessor for DeviceEvent);
  v18 = *(v17 + 9);
  if (v18 == 5)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 560);
    v20 = *(v0 + 496);
    v22 = *(v0 + 464);
    v21 = *(v0 + 472);
    v23 = *(v0 + 448);
    v24 = *(v0 + 456);
    v25 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073C8C(*(v0 + 312));

    v26 = v19 + *(v20 + 24);
    Date.addingTimeInterval(_:)();
    static Date.trustedNow.getter(v22);
    Date.timeIntervalSince(_:)();
    v28 = v27;
    v29 = *(v24 + 8);
    v29(v22, v23);
    v29(v21, v23);
    if (v28 > 0.0)
    {
      v31 = *(v0 + 320);
      v30 = *(v0 + 328);
      v32 = *(*(v0 + 408) + 20);
      swift_beginAccess();
      v33 = *(v30 + 152);
      if (*(v33 + 16))
      {
        v34 = *(v30 + 152);

        v35 = sub_1000210EC(v31 + v32);
        if (v36)
        {
          v37 = *(*(v33 + 56) + 8 * v35);

          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          Task.cancel()();
        }

        else
        {
        }
      }

      v62 = *(v0 + 432);
      v63 = *(v0 + 440);
      v64 = *(v0 + 416);
      v18 = *(v0 + 424);
      v160 = v31;
      v65 = v32;
      v67 = *(v0 + 320);
      v66 = *(v0 + 328);
      v68 = type metadata accessor for TaskPriority();
      (*(*(v68 - 8) + 56))(v63, 1, 1, v68);
      v69 = swift_allocObject();
      swift_weakInit();
      sub_1007FF3E4(v67, v62, type metadata accessor for BeaconIdentifier);
      sub_10001F280(v0 + 16, v0 + 216);
      v70 = (*(v64 + 80) + 48) & ~*(v64 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      *(v71 + 32) = v28;
      *(v71 + 40) = v69;
      sub_100035B84(v62, v71 + v70, type metadata accessor for BeaconIdentifier);
      sub_10000A748((v0 + 216), v71 + ((v18 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
      v72 = sub_100A838D4(0, 0, v63, &unk_1013BD188, v71);
      swift_beginAccess();
      v73 = *(v30 + 152);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v166[0] = *(v30 + 152);
      *(v30 + 152) = 0x8000000000000000;
      sub_100FFF724(v72, v160 + v65, isUniquelyReferenced_nonNull_native);
      *(v30 + 152) = v166[0];
      swift_endAccess();
      LOBYTE(v18) = 5;
    }
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v75 = *(v0 + 560);
  v76 = *(v0 + 536);
  v77 = *(v0 + 528);
  v78 = *(v0 + 520);
  v79 = type metadata accessor for Logger();
  sub_1000076D4(v79, qword_10177B368);
  sub_10001F280(v0 + 16, v0 + 136);
  sub_1007FF3E4(v75, v76, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v75, v77, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v75, v78, type metadata accessor for DeviceEvent);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  v82 = os_log_type_enabled(v80, v81);
  v83 = *(v0 + 536);
  if (v82)
  {
    v157 = v81;
    v161 = v80;
    v165 = v18;
    v84 = *(v0 + 392);
    v85 = *(v0 + 400);
    v86 = *(v0 + 384);
    v87 = swift_slowAlloc();
    v166[0] = swift_slowAlloc();
    *v87 = 141559299;
    *(v87 + 4) = 1752392040;
    *(v87 + 12) = 2081;
    v88 = sub_1000035D0((v0 + 136), *(v0 + 160));
    v152 = *(v84 + 16);
    v152(v85, v88, v86);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v90;
    v150 = *(v84 + 8);
    v150(v85, v86);
    sub_100007BAC((v0 + 136));
    v92 = sub_1000136BC(v89, v91, v166);

    *(v87 + 14) = v92;
    *(v87 + 22) = 2082;
    v93 = 0xE800000000000000;
    v94 = 0x6E776F6E6B6E752ELL;
    v95 = *(v83 + 9);
    v96 = 0xEC00000064657261;
    v97 = 0x657070617369642ELL;
    if (v95 != 6)
    {
      v97 = 0x726961702ELL;
      v96 = 0xE500000000000000;
    }

    v98 = 0xE700000000000000;
    v99 = 0x6863617465642ELL;
    if (v95 != 4)
    {
      v99 = 0x657463657465642ELL;
      v98 = 0xEF79627261654E64;
    }

    if (*(v83 + 9) <= 5u)
    {
      v97 = v99;
      v96 = v98;
    }

    v100 = 0xEB00000000746365;
    v101 = 0x6E6E6F637369642ELL;
    if (v95 != 2)
    {
      v101 = 0x6863617474612ELL;
      v100 = 0xE700000000000000;
    }

    if (*(v83 + 9))
    {
      v94 = 0x7463656E6E6F632ELL;
      v93 = 0xE800000000000000;
    }

    if (*(v83 + 9) > 1u)
    {
      v94 = v101;
      v93 = v100;
    }

    if (*(v83 + 9) <= 3u)
    {
      v102 = v94;
    }

    else
    {
      v102 = v97;
    }

    if (*(v83 + 9) <= 3u)
    {
      v103 = v93;
    }

    else
    {
      v103 = v96;
    }

    v104 = *(v0 + 528);
    v105 = *(v0 + 520);
    v106 = *(v0 + 496);
    v107 = *(v0 + 448);
    v108 = *(v0 + 376);
    sub_10003627C(*(v0 + 536), type metadata accessor for DeviceEvent);
    v109 = sub_1000136BC(v102, v103, v166);

    *(v87 + 24) = v109;
    *(v87 + 32) = 2082;
    v110 = *(v106 + 24);
    sub_1000194F8(&qword_1016969A0, &type metadata accessor for Date);
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = v112;
    sub_10003627C(v104, type metadata accessor for DeviceEvent);
    v114 = sub_1000136BC(v111, v113, v166);

    *(v87 + 34) = v114;
    *(v87 + 42) = 2160;
    *(v87 + 44) = 1752392040;
    *(v87 + 52) = 2081;
    sub_1000D2A70(v105 + *(v106 + 32), v108, &unk_1016AA510, &unk_101393150);
    v115 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v115 - 8) + 48))(v108, 1, v115) == 1)
    {
      sub_10000B3A8(*(v0 + 376), &unk_1016AA510, &unk_101393150);
      v116 = 0xE400000000000000;
      v117 = 1701736302;
    }

    else
    {
      v120 = *(v0 + 400);
      v121 = *(v0 + 376);
      v122 = *(v0 + 384);
      v152(v120, v121, v122);
      sub_10003627C(v121, type metadata accessor for DeviceEvent.AttachmentInfo);
      v117 = UUID.uuidString.getter();
      v116 = v123;
      v150(v120, v122);
    }

    LOBYTE(v18) = v165;
    sub_10003627C(*(v0 + 520), type metadata accessor for DeviceEvent);
    v124 = sub_1000136BC(v117, v116, v166);

    *(v87 + 54) = v124;
    _os_log_impl(&_mh_execute_header, v161, v157, "Update device event; beacon: %{private,mask.hash}s source: %{public}s, timestamp: %{public}s, attached to: %{private,mask.hash}s.", v87, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v118 = *(v0 + 528);
    v119 = *(v0 + 520);

    sub_10003627C(v119, type metadata accessor for DeviceEvent);
    sub_10003627C(v118, type metadata accessor for DeviceEvent);
    sub_10003627C(v83, type metadata accessor for DeviceEvent);
    sub_100007BAC((v0 + 136));
  }

  v125 = *(v0 + 352);
  v126 = *(v0 + 360);
  v127 = *(v0 + 344);
  sub_10001F280(v0 + 16, v0 + 176);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v128 = swift_dynamicCast();
  v129 = *(v126 + 56);
  if (v128)
  {
    v130 = *(v0 + 368);
    v132 = *(v0 + 344);
    v131 = *(v0 + 352);
    v133 = *(v0 + 336);
    v129(v132, 0, 1, v131);
    sub_100035B84(v132, v130, type metadata accessor for LocalFindableAccessoryRecord);
    v134 = (v130 + *(v131 + 28));
    v135 = *v134;
    v136 = v134[1];
    static String.Encoding.utf8.getter();
    v137 = String.init(data:encoding:)();
    if (!v138)
    {
      v137 = Data.hexString.getter();
    }

    v139 = v137;
    v140 = v138;
    sub_10003627C(*(v0 + 368), type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v141 = *(v0 + 344);
    v129(v141, 1, 1, *(v0 + 352));
    sub_10000B3A8(v141, &qword_1016A9A30, &unk_1013BD120);
    v139 = 0;
    v140 = 0;
  }

  v142 = *(v0 + 560);
  v143 = *(v0 + 512);
  v144 = *(*(v0 + 328) + 160);
  sub_100008BB8(0, &qword_1016AA570, SPDeviceEvent_ptr);
  sub_1007FF3E4(v142, v143, type metadata accessor for DeviceEvent);
  v145 = sub_1007E9934(v143, v139, v140);
  *(v0 + 608) = v145;
  v146 = swift_task_alloc();
  *(v0 + 616) = v146;
  *v146 = v0;
  v146[1] = sub_1007F803C;
  v147 = *(v0 + 568);

  return sub_1007FE0D0(v145, v147, 0x10F0F0F0F040200uLL >> (8 * v18), v144);
}

uint64_t sub_1007F803C()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 328);
  v5 = *v0;

  return _swift_task_switch(sub_1007F8164, v3, 0);
}

uint64_t sub_1007F8164()
{
  sub_10003627C(v0[70], type metadata accessor for DeviceEvent);
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[64];
  v9 = v0[60];
  v8 = v0[61];
  v12 = v0[59];
  v13 = v0[58];
  v14 = v0[55];
  v15 = v0[54];
  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[46];
  v19 = v0[43];
  v20 = v0[42];
  sub_100007BAC(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1007F82D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a1;
  v5[41] = a3;
  v9 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v11 = type metadata accessor for LocalFindableAccessoryRecord();
  v5[46] = v11;
  v12 = *(v11 - 8);
  v5[47] = v12;
  v13 = *(v12 + 64) + 15;
  v5[48] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_1016AA510, &unk_101393150) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v5[50] = v15;
  v16 = *(v15 - 8);
  v5[51] = v16;
  v17 = *(v16 + 64) + 15;
  v5[52] = swift_task_alloc();
  v18 = type metadata accessor for BeaconIdentifier();
  v5[53] = v18;
  v19 = *(v18 - 8);
  v5[54] = v19;
  v5[55] = *(v19 + 64);
  v5[56] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v5[57] = swift_task_alloc();
  v21 = type metadata accessor for Date();
  v5[58] = v21;
  v22 = *(v21 - 8);
  v5[59] = v22;
  v23 = *(v22 + 64) + 15;
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v24 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v5[62] = swift_task_alloc();
  v25 = swift_task_alloc();
  v5[63] = v25;
  v26 = type metadata accessor for DeviceEvent(0);
  v5[64] = v26;
  v27 = *(v26 - 8);
  v5[65] = v27;
  v28 = *(v27 + 64) + 15;
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  v5[73] = sub_1000280DC(v5 + 2);
  (*(*(a4 - 8) + 16))();
  v29 = swift_task_alloc();
  v5[74] = v29;
  *v29 = v5;
  v29[1] = sub_1007F8728;

  return sub_1007EAD28(v25, a1);
}

uint64_t sub_1007F8728()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_1007F8838, v2, 0);
}

uint64_t sub_1007F8838()
{
  v126 = v0;
  v1 = *(v0 + 520);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v1 + 48);
  *(v0 + 600) = v4;
  *(v0 + 608) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v3, &unk_1016AA500, &unk_1013B3600);
    v5 = swift_task_alloc();
    *(v0 + 616) = v5;
    *v5 = v0;
    v5[1] = sub_1007F94D8;
    v6 = *(v0 + 496);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);

    return sub_1007E9BD4(v6, v7);
  }

  else
  {
    sub_100035B84(v3, *(v0 + 568), type metadata accessor for DeviceEvent);
    v10 = *(v0 + 576);
    sub_100035B84(*(v0 + 568), v10, type metadata accessor for DeviceEvent);
    v11 = *(v10 + 9);
    if (v11 == 5)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 576);
      v13 = *(v0 + 512);
      v15 = *(v0 + 480);
      v14 = *(v0 + 488);
      v16 = *(v0 + 464);
      v17 = *(v0 + 472);
      v18 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101073C8C(*(v0 + 312));

      v19 = v12 + *(v13 + 24);
      Date.addingTimeInterval(_:)();
      static Date.trustedNow.getter(v15);
      Date.timeIntervalSince(_:)();
      v21 = v20;
      v22 = *(v17 + 8);
      v22(v15, v16);
      v22(v14, v16);
      if (v21 > 0.0)
      {
        v24 = *(v0 + 320);
        v23 = *(v0 + 328);
        v25 = *(*(v0 + 424) + 20);
        swift_beginAccess();
        v26 = *(v23 + 152);
        if (*(v26 + 16))
        {
          v27 = *(v23 + 152);

          v28 = sub_1000210EC(v24 + v25);
          if (v29)
          {
            v30 = *(*(v26 + 56) + 8 * v28);

            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            Task.cancel()();
          }

          else
          {
          }
        }

        v31 = *(v0 + 448);
        v32 = *(v0 + 456);
        v33 = *(v0 + 432);
        v11 = *(v0 + 440);
        v122 = v24;
        v34 = v25;
        v36 = *(v0 + 320);
        v35 = *(v0 + 328);
        v37 = type metadata accessor for TaskPriority();
        (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
        v38 = swift_allocObject();
        swift_weakInit();
        sub_1007FF3E4(v36, v31, type metadata accessor for BeaconIdentifier);
        sub_10001F280(v0 + 16, v0 + 216);
        v39 = (*(v33 + 80) + 48) & ~*(v33 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        *(v40 + 24) = 0;
        *(v40 + 32) = v21;
        *(v40 + 40) = v38;
        sub_100035B84(v31, v40 + v39, type metadata accessor for BeaconIdentifier);
        sub_10000A748((v0 + 216), v40 + ((v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
        v41 = sub_100A838D4(0, 0, v32, &unk_1013BD198, v40);
        swift_beginAccess();
        v42 = *(v23 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125[0] = *(v23 + 152);
        *(v23 + 152) = 0x8000000000000000;
        sub_100FFF724(v41, v122 + v34, isUniquelyReferenced_nonNull_native);
        *(v23 + 152) = v125[0];
        swift_endAccess();
        LOBYTE(v11) = 5;
      }
    }

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 576);
    v45 = *(v0 + 552);
    v46 = *(v0 + 544);
    v47 = *(v0 + 536);
    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177B368);
    sub_10001F280(v0 + 16, v0 + 136);
    sub_1007FF3E4(v44, v45, type metadata accessor for DeviceEvent);
    sub_1007FF3E4(v44, v46, type metadata accessor for DeviceEvent);
    sub_1007FF3E4(v44, v47, type metadata accessor for DeviceEvent);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 552);
    if (v51)
    {
      v121 = v50;
      v123 = v49;
      v124 = v11;
      v53 = *(v0 + 408);
      v54 = *(v0 + 416);
      v55 = *(v0 + 400);
      v57 = *(v0 + 336);
      v56 = *(v0 + 344);
      v58 = swift_slowAlloc();
      v125[0] = swift_slowAlloc();
      *v58 = 141559299;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      sub_1000035D0((v0 + 136), *(v0 + 160));
      (*(*(*(v56 + 8) + 8) + 32))(v57);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v120 = *(v53 + 8);
      v120(v54, v55);
      sub_100007BAC((v0 + 136));
      v62 = sub_1000136BC(v59, v61, v125);

      *(v58 + 14) = v62;
      *(v58 + 22) = 2082;
      v63 = 0xE800000000000000;
      v64 = 0x6E776F6E6B6E752ELL;
      v65 = *(v52 + 9);
      v66 = 0xEC00000064657261;
      v67 = 0x657070617369642ELL;
      if (v65 != 6)
      {
        v67 = 0x726961702ELL;
        v66 = 0xE500000000000000;
      }

      v68 = 0xE700000000000000;
      v69 = 0x6863617465642ELL;
      if (v65 != 4)
      {
        v69 = 0x657463657465642ELL;
        v68 = 0xEF79627261654E64;
      }

      if (*(v52 + 9) <= 5u)
      {
        v67 = v69;
        v66 = v68;
      }

      v70 = 0xEB00000000746365;
      v71 = 0x6E6E6F637369642ELL;
      if (v65 != 2)
      {
        v71 = 0x6863617474612ELL;
        v70 = 0xE700000000000000;
      }

      if (*(v52 + 9))
      {
        v64 = 0x7463656E6E6F632ELL;
        v63 = 0xE800000000000000;
      }

      if (*(v52 + 9) > 1u)
      {
        v64 = v71;
        v63 = v70;
      }

      if (*(v52 + 9) <= 3u)
      {
        v72 = v64;
      }

      else
      {
        v72 = v67;
      }

      if (*(v52 + 9) <= 3u)
      {
        v73 = v63;
      }

      else
      {
        v73 = v66;
      }

      v74 = *(v0 + 544);
      v75 = *(v0 + 536);
      v76 = *(v0 + 512);
      v77 = *(v0 + 464);
      v78 = *(v0 + 392);
      sub_10003627C(*(v0 + 552), type metadata accessor for DeviceEvent);
      v79 = sub_1000136BC(v72, v73, v125);

      *(v58 + 24) = v79;
      *(v58 + 32) = 2082;
      v80 = *(v76 + 24);
      sub_1000194F8(&qword_1016969A0, &type metadata accessor for Date);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      sub_10003627C(v74, type metadata accessor for DeviceEvent);
      v84 = sub_1000136BC(v81, v83, v125);

      *(v58 + 34) = v84;
      *(v58 + 42) = 2160;
      *(v58 + 44) = 1752392040;
      *(v58 + 52) = 2081;
      sub_1000D2A70(v75 + *(v76 + 32), v78, &unk_1016AA510, &unk_101393150);
      v85 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
      if ((*(*(v85 - 8) + 48))(v78, 1, v85) == 1)
      {
        sub_10000B3A8(*(v0 + 392), &unk_1016AA510, &unk_101393150);
        v86 = 0xE400000000000000;
        v87 = 1701736302;
      }

      else
      {
        v90 = *(v0 + 416);
        v91 = *(v0 + 392);
        v92 = *(v0 + 400);
        (*(*(v0 + 408) + 16))(v90, v91, v92);
        sub_10003627C(v91, type metadata accessor for DeviceEvent.AttachmentInfo);
        v87 = UUID.uuidString.getter();
        v86 = v93;
        v120(v90, v92);
      }

      LOBYTE(v11) = v124;
      sub_10003627C(*(v0 + 536), type metadata accessor for DeviceEvent);
      v94 = sub_1000136BC(v87, v86, v125);

      *(v58 + 54) = v94;
      _os_log_impl(&_mh_execute_header, v123, v121, "Update device event; beacon: %{private,mask.hash}s source: %{public}s, timestamp: %{public}s, attached to: %{private,mask.hash}s.", v58, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v88 = *(v0 + 544);
      v89 = *(v0 + 536);

      sub_10003627C(v89, type metadata accessor for DeviceEvent);
      sub_10003627C(v88, type metadata accessor for DeviceEvent);
      sub_10003627C(v52, type metadata accessor for DeviceEvent);
      sub_100007BAC((v0 + 136));
    }

    v95 = *(v0 + 368);
    v96 = *(v0 + 376);
    v97 = *(v0 + 360);
    sub_10001F280(v0 + 16, v0 + 176);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v98 = swift_dynamicCast();
    v99 = *(v96 + 56);
    if (v98)
    {
      v100 = *(v0 + 384);
      v102 = *(v0 + 360);
      v101 = *(v0 + 368);
      v103 = *(v0 + 352);
      v99(v102, 0, 1, v101);
      sub_100035B84(v102, v100, type metadata accessor for LocalFindableAccessoryRecord);
      v104 = (v100 + *(v101 + 28));
      v105 = *v104;
      v106 = v104[1];
      static String.Encoding.utf8.getter();
      v107 = String.init(data:encoding:)();
      if (!v108)
      {
        v107 = Data.hexString.getter();
      }

      v109 = v107;
      v110 = v108;
      sub_10003627C(*(v0 + 384), type metadata accessor for LocalFindableAccessoryRecord);
    }

    else
    {
      v111 = *(v0 + 360);
      v99(v111, 1, 1, *(v0 + 368));
      sub_10000B3A8(v111, &qword_1016A9A30, &unk_1013BD120);
      v109 = 0;
      v110 = 0;
    }

    v112 = *(v0 + 576);
    v113 = *(v0 + 528);
    v114 = *(*(v0 + 328) + 160);
    sub_100008BB8(0, &qword_1016AA570, SPDeviceEvent_ptr);
    sub_1007FF3E4(v112, v113, type metadata accessor for DeviceEvent);
    v115 = sub_1007E9934(v113, v109, v110);
    *(v0 + 624) = v115;
    v116 = swift_task_alloc();
    *(v0 + 632) = v116;
    *v116 = v0;
    v116[1] = sub_1007FA7E4;
    v117 = *(v0 + 584);
    v118 = *(v0 + 336);
    v119 = *(v0 + 344);

    return sub_100B88FD4(v115, v117, 0x10F0F0F0F040200uLL >> (8 * v11), v114, v118, v119);
  }
}

uint64_t sub_1007F94D8()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return _swift_task_switch(sub_1007F95E8, v2, 0);
}

uint64_t sub_1007F95E8()
{
  v171 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 496);
  if ((*(v0 + 600))(v2, 1, *(v0 + 512)) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AA500, &unk_1013B3600);
    sub_1007FF390();
    v3 = swift_allocError();
    *v4 = 3;
    swift_willThrow();
    *(v0 + 304) = v3;
    swift_errorRetain();
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 640) == 3)
    {
      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177B368);
      sub_10001F280(v0 + 16, v0 + 96);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 408);
        v8 = *(v0 + 416);
        v10 = *(v0 + 400);
        v12 = *(v0 + 336);
        v11 = *(v0 + 344);
        v13 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v170[0] = v166;
        *v13 = 141558275;
        *(v13 + 4) = 1752392040;
        *(v13 + 12) = 2081;
        sub_1000035D0((v0 + 96), *(v0 + 120));
        (*(*(*(v11 + 8) + 8) + 32))(v12);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        (*(v9 + 8))(v8, v10);
        sub_100007BAC((v0 + 96));
        v17 = sub_1000136BC(v14, v16, v170);

        *(v13 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v6, v7, "No device events for beacon: %{private,mask.hash}s", v13, 0x16u);
        sub_100007BAC(v166);

LABEL_19:

LABEL_23:

        v52 = *(v0 + 576);
        v53 = *(v0 + 568);
        v54 = *(v0 + 560);
        v55 = *(v0 + 552);
        v56 = *(v0 + 544);
        v57 = *(v0 + 536);
        v58 = *(v0 + 528);
        v60 = *(v0 + 496);
        v59 = *(v0 + 504);
        v152 = *(v0 + 488);
        v153 = *(v0 + 480);
        v154 = *(v0 + 456);
        v155 = *(v0 + 448);
        v157 = *(v0 + 416);
        v158 = *(v0 + 392);
        v160 = *(v0 + 384);
        v163 = *(v0 + 360);
        v168 = *(v0 + 352);
        sub_100007BAC((v0 + 16));

        v61 = *(v0 + 8);

        return v61();
      }

      v51 = (v0 + 96);
    }

    else
    {
      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177B368);
      sub_10001F280(v0 + 16, v0 + 56);
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v40))
      {
        v41 = *(v0 + 408);
        v42 = *(v0 + 416);
        v43 = *(v0 + 400);
        v44 = *(v0 + 344);
        v159 = *(v0 + 336);
        v45 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v170[0] = v167;
        *v45 = 138543875;
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v46;
        *v162 = v46;
        *(v45 + 12) = 2160;
        *(v45 + 14) = 1752392040;
        *(v45 + 22) = 2081;
        sub_1000035D0((v0 + 56), *(v0 + 80));
        (*(*(*(v44 + 8) + 8) + 32))(v159);
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        (*(v41 + 8))(v42, v43);
        sub_100007BAC((v0 + 56));
        v50 = sub_1000136BC(v47, v49, v170);

        *(v45 + 24) = v50;
        _os_log_impl(&_mh_execute_header, v6, v40, "Failed to send the attach event: %{public}@ for beacon: %{private,mask.hash}s", v45, 0x20u);
        sub_10000B3A8(v162, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v167);

        goto LABEL_19;
      }

      v51 = (v0 + 56);
    }

    sub_100007BAC(v51);
    goto LABEL_23;
  }

  sub_100035B84(v2, *(v0 + 560), type metadata accessor for DeviceEvent);
  v18 = *(v0 + 576);
  sub_100035B84(*(v0 + 560), v18, type metadata accessor for DeviceEvent);
  v19 = *(v18 + 9);
  if (v19 == 5)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 576);
    v21 = *(v0 + 512);
    v23 = *(v0 + 480);
    v22 = *(v0 + 488);
    v24 = *(v0 + 464);
    v25 = *(v0 + 472);
    v26 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073C8C(*(v0 + 312));

    v27 = v20 + *(v21 + 24);
    Date.addingTimeInterval(_:)();
    static Date.trustedNow.getter(v23);
    Date.timeIntervalSince(_:)();
    v29 = v28;
    v30 = *(v25 + 8);
    v30(v23, v24);
    v30(v22, v24);
    if (v29 > 0.0)
    {
      v32 = *(v0 + 320);
      v31 = *(v0 + 328);
      v33 = *(*(v0 + 424) + 20);
      swift_beginAccess();
      v34 = *(v31 + 152);
      if (*(v34 + 16))
      {
        v35 = *(v31 + 152);

        v36 = sub_1000210EC(v32 + v33);
        if (v37)
        {
          v38 = *(*(v34 + 56) + 8 * v36);

          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          Task.cancel()();
        }

        else
        {
        }
      }

      v63 = *(v0 + 448);
      v64 = *(v0 + 456);
      v65 = *(v0 + 432);
      v19 = *(v0 + 440);
      v164 = v32;
      v66 = v33;
      v68 = *(v0 + 320);
      v67 = *(v0 + 328);
      v69 = type metadata accessor for TaskPriority();
      (*(*(v69 - 8) + 56))(v64, 1, 1, v69);
      v70 = swift_allocObject();
      swift_weakInit();
      sub_1007FF3E4(v68, v63, type metadata accessor for BeaconIdentifier);
      sub_10001F280(v0 + 16, v0 + 216);
      v71 = (*(v65 + 80) + 48) & ~*(v65 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = 0;
      *(v72 + 24) = 0;
      *(v72 + 32) = v29;
      *(v72 + 40) = v70;
      sub_100035B84(v63, v72 + v71, type metadata accessor for BeaconIdentifier);
      sub_10000A748((v0 + 216), v72 + ((v19 + v71 + 7) & 0xFFFFFFFFFFFFFFF8));
      v73 = sub_100A838D4(0, 0, v64, &unk_1013BD198, v72);
      swift_beginAccess();
      v74 = *(v31 + 152);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v170[0] = *(v31 + 152);
      *(v31 + 152) = 0x8000000000000000;
      sub_100FFF724(v73, v164 + v66, isUniquelyReferenced_nonNull_native);
      *(v31 + 152) = v170[0];
      swift_endAccess();
      LOBYTE(v19) = 5;
    }
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v76 = *(v0 + 576);
  v77 = *(v0 + 552);
  v78 = *(v0 + 544);
  v79 = *(v0 + 536);
  v80 = type metadata accessor for Logger();
  sub_1000076D4(v80, qword_10177B368);
  sub_10001F280(v0 + 16, v0 + 136);
  sub_1007FF3E4(v76, v77, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v76, v78, type metadata accessor for DeviceEvent);
  sub_1007FF3E4(v76, v79, type metadata accessor for DeviceEvent);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  v83 = os_log_type_enabled(v81, v82);
  v84 = *(v0 + 552);
  if (v83)
  {
    v161 = v82;
    v165 = v81;
    v169 = v19;
    v85 = *(v0 + 408);
    v86 = *(v0 + 416);
    v87 = *(v0 + 400);
    v89 = *(v0 + 336);
    v88 = *(v0 + 344);
    v90 = swift_slowAlloc();
    v170[0] = swift_slowAlloc();
    *v90 = 141559299;
    *(v90 + 4) = 1752392040;
    *(v90 + 12) = 2081;
    sub_1000035D0((v0 + 136), *(v0 + 160));
    (*(*(*(v88 + 8) + 8) + 32))(v89);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    v156 = *(v85 + 8);
    v156(v86, v87);
    sub_100007BAC((v0 + 136));
    v94 = sub_1000136BC(v91, v93, v170);

    *(v90 + 14) = v94;
    *(v90 + 22) = 2082;
    v95 = 0xE800000000000000;
    v96 = 0x6E776F6E6B6E752ELL;
    v97 = *(v84 + 9);
    v98 = 0xEC00000064657261;
    v99 = 0x657070617369642ELL;
    if (v97 != 6)
    {
      v99 = 0x726961702ELL;
      v98 = 0xE500000000000000;
    }

    v100 = 0xE700000000000000;
    v101 = 0x6863617465642ELL;
    if (v97 != 4)
    {
      v101 = 0x657463657465642ELL;
      v100 = 0xEF79627261654E64;
    }

    if (*(v84 + 9) <= 5u)
    {
      v99 = v101;
      v98 = v100;
    }

    v102 = 0xEB00000000746365;
    v103 = 0x6E6E6F637369642ELL;
    if (v97 != 2)
    {
      v103 = 0x6863617474612ELL;
      v102 = 0xE700000000000000;
    }

    if (*(v84 + 9))
    {
      v96 = 0x7463656E6E6F632ELL;
      v95 = 0xE800000000000000;
    }

    if (*(v84 + 9) > 1u)
    {
      v96 = v103;
      v95 = v102;
    }

    if (*(v84 + 9) <= 3u)
    {
      v104 = v96;
    }

    else
    {
      v104 = v99;
    }

    if (*(v84 + 9) <= 3u)
    {
      v105 = v95;
    }

    else
    {
      v105 = v98;
    }

    v106 = *(v0 + 544);
    v107 = *(v0 + 536);
    v108 = *(v0 + 512);
    v109 = *(v0 + 464);
    v110 = *(v0 + 392);
    sub_10003627C(*(v0 + 552), type metadata accessor for DeviceEvent);
    v111 = sub_1000136BC(v104, v105, v170);

    *(v90 + 24) = v111;
    *(v90 + 32) = 2082;
    v112 = *(v108 + 24);
    sub_1000194F8(&qword_1016969A0, &type metadata accessor for Date);
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v115 = v114;
    sub_10003627C(v106, type metadata accessor for DeviceEvent);
    v116 = sub_1000136BC(v113, v115, v170);

    *(v90 + 34) = v116;
    *(v90 + 42) = 2160;
    *(v90 + 44) = 1752392040;
    *(v90 + 52) = 2081;
    sub_1000D2A70(v107 + *(v108 + 32), v110, &unk_1016AA510, &unk_101393150);
    v117 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v117 - 8) + 48))(v110, 1, v117) == 1)
    {
      sub_10000B3A8(*(v0 + 392), &unk_1016AA510, &unk_101393150);
      v118 = 0xE400000000000000;
      v119 = 1701736302;
    }

    else
    {
      v122 = *(v0 + 416);
      v123 = *(v0 + 392);
      v124 = *(v0 + 400);
      (*(*(v0 + 408) + 16))(v122, v123, v124);
      sub_10003627C(v123, type metadata accessor for DeviceEvent.AttachmentInfo);
      v119 = UUID.uuidString.getter();
      v118 = v125;
      v156(v122, v124);
    }

    LOBYTE(v19) = v169;
    sub_10003627C(*(v0 + 536), type metadata accessor for DeviceEvent);
    v126 = sub_1000136BC(v119, v118, v170);

    *(v90 + 54) = v126;
    _os_log_impl(&_mh_execute_header, v165, v161, "Update device event; beacon: %{private,mask.hash}s source: %{public}s, timestamp: %{public}s, attached to: %{private,mask.hash}s.", v90, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v120 = *(v0 + 544);
    v121 = *(v0 + 536);

    sub_10003627C(v121, type metadata accessor for DeviceEvent);
    sub_10003627C(v120, type metadata accessor for DeviceEvent);
    sub_10003627C(v84, type metadata accessor for DeviceEvent);
    sub_100007BAC((v0 + 136));
  }

  v127 = *(v0 + 368);
  v128 = *(v0 + 376);
  v129 = *(v0 + 360);
  sub_10001F280(v0 + 16, v0 + 176);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v130 = swift_dynamicCast();
  v131 = *(v128 + 56);
  if (v130)
  {
    v132 = *(v0 + 384);
    v134 = *(v0 + 360);
    v133 = *(v0 + 368);
    v135 = *(v0 + 352);
    v131(v134, 0, 1, v133);
    sub_100035B84(v134, v132, type metadata accessor for LocalFindableAccessoryRecord);
    v136 = (v132 + *(v133 + 28));
    v137 = *v136;
    v138 = v136[1];
    static String.Encoding.utf8.getter();
    v139 = String.init(data:encoding:)();
    if (!v140)
    {
      v139 = Data.hexString.getter();
    }

    v141 = v139;
    v142 = v140;
    sub_10003627C(*(v0 + 384), type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v143 = *(v0 + 360);
    v131(v143, 1, 1, *(v0 + 368));
    sub_10000B3A8(v143, &qword_1016A9A30, &unk_1013BD120);
    v141 = 0;
    v142 = 0;
  }

  v144 = *(v0 + 576);
  v145 = *(v0 + 528);
  v146 = *(*(v0 + 328) + 160);
  sub_100008BB8(0, &qword_1016AA570, SPDeviceEvent_ptr);
  sub_1007FF3E4(v144, v145, type metadata accessor for DeviceEvent);
  v147 = sub_1007E9934(v145, v141, v142);
  *(v0 + 624) = v147;
  v148 = swift_task_alloc();
  *(v0 + 632) = v148;
  *v148 = v0;
  v148[1] = sub_1007FA7E4;
  v149 = *(v0 + 584);
  v150 = *(v0 + 336);
  v151 = *(v0 + 344);

  return sub_100B88FD4(v147, v149, 0x10F0F0F0F040200uLL >> (8 * v19), v146, v150, v151);
}

uint64_t sub_1007FA7E4()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 328);
  v5 = *v0;

  return _swift_task_switch(sub_1007FA90C, v3, 0);
}

uint64_t sub_1007FA90C()
{
  sub_10003627C(v0[72], type metadata accessor for DeviceEvent);
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v9 = v0[62];
  v8 = v0[63];
  v12 = v0[61];
  v13 = v0[60];
  v14 = v0[57];
  v15 = v0[56];
  v16 = v0[52];
  v17 = v0[49];
  v18 = v0[48];
  v19 = v0[45];
  v20 = v0[44];
  sub_100007BAC(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1007FAA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v5 = type metadata accessor for BeaconIdentifier();
  v3[21] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v3[25] = *(v8 + 64);
  v3[26] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_101696940, &unk_10138B210) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = type metadata accessor for BeaconEstimatedLocation();
  v3[28] = v10;
  v11 = *(v10 - 8);
  v3[29] = v11;
  v12 = *(v11 + 64) + 15;
  v3[30] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v14 = type metadata accessor for DeviceEvent.Location(0);
  v3[32] = v14;
  v15 = *(v14 - 8);
  v3[33] = v15;
  v16 = *(v15 + 64) + 15;
  v3[34] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v19 = type metadata accessor for DeviceEvent(0);
  v3[37] = v19;
  v20 = *(v19 - 8);
  v3[38] = v20;
  v21 = *(v20 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[5] = type metadata accessor for LocalFindableAccessoryRecord();
  v3[6] = sub_1000194F8(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord);
  v22 = sub_1000280DC(v3 + 2);
  sub_1007FF3E4(a2, v22, type metadata accessor for LocalFindableAccessoryRecord);
  v23 = async function pointer to daemon.getter[1];
  v24 = swift_task_alloc();
  v3[40] = v24;
  *v24 = v3;
  v24[1] = sub_1007FAE0C;

  return daemon.getter();
}