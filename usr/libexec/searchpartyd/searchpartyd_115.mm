uint64_t sub_100C0C4E8()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v8 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v4 = *(v2 + 392);
    v5 = sub_100C0EA50;
  }

  else
  {
    v6 = *(v2 + 392);
    sub_100007BAC((v2 + 208));
    v5 = sub_100C0C610;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C0C610()
{
  v110 = v0;
  sub_1001011C0(v0 + 160, v0 + 256);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(v0 + 344))
  {
    sub_10038B978(*(v0 + 328), *(v0 + 336), *(v0 + 344));
LABEL_4:
    v1 = *(v0 + 816);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Invalid productDataResponse!", v4, 2u);
    }

    v5 = *(v0 + 904);
    v6 = *(v0 + 880);
    v7 = *(v0 + 864);
    v8 = *(v0 + 768);
    v9 = *(v0 + 736);
    v101 = *(v0 + 728);
    v104 = *(v0 + 744);
    v96 = *(v0 + 664);
    v99 = *(v0 + 672);
    v93 = *(v0 + 640);
    v10 = *(v0 + 616);
    v11 = *(v0 + 536);
    v12 = *(v0 + 528);

    sub_100C10608();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();

    sub_100007BAC((v0 + 160));
    v7(v10, v12);
    v7(v93, v12);
    v7(v96, v12);
    v7(v99, v12);
    (*(v9 + 8))(v104, v101);
    v14 = *(v0 + 744);
    v15 = *(v0 + 720);
    v16 = *(v0 + 696);
    v17 = *(v0 + 672);
    v18 = *(v0 + 664);
    v19 = *(v0 + 656);
    v20 = *(v0 + 648);
    v21 = *(v0 + 640);
    v22 = *(v0 + 632);
    v23 = *(v0 + 624);
    v77 = *(v0 + 616);
    v78 = *(v0 + 608);
    v79 = *(v0 + 600);
    v80 = *(v0 + 592);
    v81 = *(v0 + 584);
    v82 = *(v0 + 576);
    v83 = *(v0 + 568);
    v84 = *(v0 + 560);
    v85 = *(v0 + 552);
    v86 = *(v0 + 544);
    v87 = *(v0 + 520);
    v89 = *(v0 + 512);
    v91 = *(v0 + 504);
    v94 = *(v0 + 480);
    v97 = *(v0 + 472);
    v100 = *(v0 + 464);
    v102 = *(v0 + 440);
    v105 = *(v0 + 416);

    v24 = *(v0 + 8);

    return v24();
  }

  v106 = *(v0 + 328);
  v107 = *(v0 + 336);
  v26 = *(v0 + 856);
  v27 = *(v0 + 848);
  v28 = *(v0 + 840);
  v29 = *(v0 + 744);
  v30 = *(v0 + 616);
  v31 = *(v0 + 608);
  v32 = *(v0 + 600);
  v33 = *(v0 + 592);
  v34 = *(v0 + 528);
  ContinuousClock.now.getter();
  v27(v32, v30, v34);
  v27(v33, v31, v34);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 864);
  v39 = *(v0 + 616);
  v40 = *(v0 + 608);
  v41 = *(v0 + 600);
  v42 = *(v0 + 592);
  v43 = *(v0 + 536);
  v44 = *(v0 + 528);
  if (v37)
  {
    v103 = v35;
    v98 = v36;
    v45 = *(v0 + 600);
    v47 = *(v0 + 456);
    v46 = *(v0 + 464);
    v92 = *(v0 + 448);
    v90 = *(v0 + 536);
    v48 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v48 = 136315394;
    *(v48 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, v109);
    *(v48 + 12) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
    v88 = static Duration.description<A>(_:_:units:)();
    v95 = v40;
    v50 = v49;
    (*(v47 + 8))(v46, v92);
    v38(v42, v44);
    v38(v45, v44);
    v51 = sub_1000136BC(v88, v50, v109);

    *(v48 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v103, v98, "%s productData latency: %{public}s", v48, 0x16u);
    swift_arrayDestroy();

    v38(v95, v44);
    sub_100007BAC((v0 + 160));
    v38(v39, v44);
  }

  else
  {

    v38(v42, v44);
    v38(v41, v44);
    v38(v40, v44);
    sub_100007BAC((v0 + 160));
    v38(v39, v44);
  }

  v52 = v107;
  *(v0 + 944) = v107;
  *(v0 + 936) = v106;
  v53 = *(v0 + 816);
  v54 = *(v0 + 376);

  sub_100017D5C(v106, v107);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  sub_100016590(v106, v107);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = *(v0 + 696);
    v58 = *(v0 + 688);
    v59 = *(v0 + 680);
    v108 = v56;
    v60 = *(v0 + 376);
    v61 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v61 = 136446466;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    (*(v58 + 8))(v57, v59);
    v65 = sub_1000136BC(v62, v64, v109);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    sub_100017D5C(v106, v52);
    v66 = sub_100313D58(v106, v52);
    v68 = v67;
    sub_100016590(v106, v52);
    v69 = sub_1000136BC(v66, v68, v109);

    *(v61 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v55, v108, "%{public}s productData: %s", v61, 0x16u);
    swift_arrayDestroy();
  }

  v70 = *(v0 + 744);
  v71 = *(v0 + 584);
  ContinuousClock.now.getter();
  *(v0 + 88) = &type metadata for PoshAccessoryNonOwnerCommand;
  v72 = sub_10038B8D0();
  *(v0 + 96) = v72;
  v73 = sub_10038B924();
  *(v0 + 104) = v73;
  *(v0 + 64) = xmmword_10139D980;
  *(v0 + 80) = 11;
  v74 = swift_task_alloc();
  *(v0 + 952) = v74;
  *v74 = v0;
  v74[1] = sub_100C0CF58;
  v75 = *(v0 + 904);
  v76 = *(v0 + 392);

  return (sub_100C0EFC8)(v0 + 16, v75, v0 + 64, &type metadata for PoshAccessoryNonOwnerCommand, v72, v73, 0);
}

uint64_t sub_100C0CF58()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v8 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v4 = *(v2 + 392);
    v5 = sub_100C0ED00;
  }

  else
  {
    v6 = *(v2 + 392);
    sub_100007BAC((v2 + 64));
    v5 = sub_100C0D080;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C0D080()
{
  v185 = v0;
  sub_1001011C0(v0 + 16, v0 + 112);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 320);
    if (v1 == 9)
    {
      v183 = *(v0 + 304);
      v2 = *(v0 + 856);
      v3 = *(v0 + 848);
      v4 = *(v0 + 840);
      v5 = *(v0 + 744);
      v6 = *(v0 + 584);
      v7 = *(v0 + 576);
      v8 = *(v0 + 568);
      v9 = *(v0 + 560);
      v10 = *(v0 + 528);
      ContinuousClock.now.getter();
      v3(v8, v6, v10);
      v3(v9, v7, v10);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 864);
      v15 = *(v0 + 568);
      v16 = *(v0 + 560);
      v178 = *(v0 + 536);
      v17 = *(v0 + 528);
      if (v13)
      {
        v174 = v11;
        v18 = *(v0 + 456);
        v19 = *(v0 + 464);
        v160 = *(v0 + 448);
        v165 = v12;
        v20 = swift_slowAlloc();
        v184[0] = swift_slowAlloc();
        *v20 = 136315394;
        *(v20 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, v184);
        *(v20 + 12) = 2082;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
        v21 = static Duration.description<A>(_:_:units:)();
        v23 = v22;
        (*(v18 + 8))(v19, v160);
        v14(v16, v17);
        v14(v15, v17);
        v24 = sub_1000136BC(v21, v23, v184);

        *(v20 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v174, v165, "%s firmwareVersion latency: %{public}s", v20, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v14(v16, v17);
        v14(v15, v17);
      }

      v59 = *(v0 + 816);
      v60 = *(v0 + 376);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 696);
        v64 = *(v0 + 688);
        v65 = *(v0 + 680);
        v66 = *(v0 + 376);
        v67 = swift_slowAlloc();
        v184[0] = swift_slowAlloc();
        *v67 = 136446466;
        Peripheral.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        (*(v64 + 8))(v63, v65);
        v71 = sub_1000136BC(v68, v70, v184);

        *(v67 + 4) = v71;
        *(v67 + 12) = 2080;
        v72 = sub_10098E010();
        v74 = sub_1000136BC(v72, v73, v184);

        *(v67 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s firmwareVersion: %s", v67, 0x16u);
        swift_arrayDestroy();
      }

      v75 = *(v0 + 856);
      v76 = *(v0 + 848);
      v77 = *(v0 + 840);
      v78 = *(v0 + 576);
      v79 = *(v0 + 544);
      v80 = *(v0 + 528);
      v76(*(v0 + 552), *(v0 + 672), v80);
      v76(v79, v78, v80);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 864);
      v85 = *(v0 + 552);
      v86 = *(v0 + 544);
      v87 = *(v0 + 536);
      v88 = *(v0 + 528);
      if (v83)
      {
        v181 = v81;
        v89 = *(v0 + 456);
        v90 = *(v0 + 464);
        v168 = *(v0 + 448);
        v172 = v82;
        v91 = swift_slowAlloc();
        v184[0] = swift_slowAlloc();
        *v91 = 136315394;
        *(v91 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, v184);
        *(v91 + 12) = 2082;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
        v163 = static Duration.description<A>(_:_:units:)();
        v93 = v92;
        (*(v89 + 8))(v90, v168);
        v84(v86, v88);
        v84(v85, v88);
        v94 = sub_1000136BC(v163, v93, v184);

        *(v91 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v181, v172, "%s Overall latency: %{public}s", v91, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v84(v86, v88);
        v84(v85, v88);
      }

      v126 = *(v0 + 944);
      v125 = *(v0 + 936);
      v117 = *(v0 + 904);
      v118 = *(v0 + 880);
      v95 = *(v0 + 864);
      v123 = *(v0 + 728);
      v124 = *(v0 + 744);
      v96 = *(v0 + 696);
      v97 = *(v0 + 688);
      v98 = *(v0 + 680);
      v121 = *(v0 + 672);
      v122 = *(v0 + 736);
      v119 = *(v0 + 768);
      v120 = *(v0 + 664);
      v127 = *(v0 + 720);
      v128 = *(v0 + 656);
      v129 = *(v0 + 648);
      v177 = *(v0 + 640);
      v130 = *(v0 + 632);
      v131 = *(v0 + 624);
      v133 = *(v0 + 616);
      v135 = *(v0 + 608);
      v137 = *(v0 + 600);
      v139 = *(v0 + 592);
      v182 = *(v0 + 584);
      v99 = *(v0 + 576);
      v141 = *(v0 + 568);
      v143 = *(v0 + 560);
      v145 = *(v0 + 552);
      v100 = *(v0 + 528);
      v147 = *(v0 + 544);
      v149 = *(v0 + 520);
      v151 = *(v0 + 512);
      v153 = *(v0 + 504);
      v156 = *(v0 + 480);
      v159 = *(v0 + 472);
      v164 = *(v0 + 464);
      v169 = *(v0 + 440);
      v173 = *(v0 + 416);
      v102 = *(v0 + 368);
      v101 = *(v0 + 376);
      Peripheral.id.getter();
      Identifier.id.getter();
      (*(v97 + 8))(v96, v98);
      v103 = type metadata accessor for AccessoryMetadata(0);
      v104 = v103[9];
      v105 = type metadata accessor for AirTagVersionNumber();
      (*(*(v105 - 8) + 56))(v102 + v104, 1, 1, v105);
      v106 = v102 + v103[11];
      *v106 = 0;
      *(v106 + 8) = 0;
      *(v106 + 16) = 1;
      v107 = v103[16];

      v108 = (v102 + v107);
      v95(v99, v100);
      sub_100007BAC((v0 + 16));
      v95(v182, v100);
      v95(v177, v100);
      v95(v120, v100);
      v95(v121, v100);
      (*(v122 + 8))(v124, v123);
      *v108 = 0;
      v108[1] = 0xE000000000000000;
      v109 = (v102 + v103[5]);
      *v109 = v125;
      v109[1] = v126;
      *(v102 + v103[8]) = v183;
      v110 = (v102 + v103[7]);
      *v110 = 0;
      v110[1] = 0;
      v111 = (v102 + v103[6]);
      *v111 = 0;
      v111[1] = 0;
      v112 = v102 + v103[10];
      *v112 = 0;
      *(v112 + 4) = 1;
      v113 = v102 + v103[12];
      *v113 = 0;
      *(v113 + 8) = 1;
      v114 = v102 + v103[13];
      *v114 = 0;
      *(v114 + 4) = 1;
      *(v102 + v103[14]) = 4;
      *(v102 + v103[15]) = 5;
      v115 = v102 + v103[17];
      *v115 = 0;
      *(v115 + 4) = 1;

      v58 = *(v0 + 8);
      goto LABEL_16;
    }

    sub_10038B978(*(v0 + 304), *(v0 + 312), v1);
  }

  v25 = *(v0 + 816);
  v26 = *(v0 + 376);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 696);
    v30 = *(v0 + 688);
    v31 = *(v0 + 680);
    v32 = *(v0 + 376);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v184[0] = v34;
    *v33 = 136446210;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v30 + 8))(v29, v31);
    v38 = sub_1000136BC(v35, v37, v184);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s Invalid firmwareVersionCommandResponse!", v33, 0xCu);
    sub_100007BAC(v34);
  }

  v39 = *(v0 + 936);
  v40 = *(v0 + 904);
  v41 = *(v0 + 880);
  v42 = *(v0 + 864);
  v43 = *(v0 + 768);
  v44 = *(v0 + 736);
  v175 = *(v0 + 728);
  v179 = *(v0 + 744);
  v166 = *(v0 + 664);
  v170 = *(v0 + 672);
  v161 = *(v0 + 640);
  v154 = *(v0 + 944);
  v157 = *(v0 + 584);
  v45 = *(v0 + 536);
  v46 = *(v0 + 528);
  sub_100C10608();
  swift_allocError();
  *v47 = 1;
  swift_willThrow();

  sub_100016590(v39, v154);

  sub_100007BAC((v0 + 16));
  v42(v157, v46);
  v42(v161, v46);
  v42(v166, v46);
  v42(v170, v46);
  (*(v44 + 8))(v179, v175);
  v48 = *(v0 + 744);
  v49 = *(v0 + 720);
  v50 = *(v0 + 696);
  v51 = *(v0 + 672);
  v52 = *(v0 + 664);
  v53 = *(v0 + 656);
  v54 = *(v0 + 648);
  v55 = *(v0 + 640);
  v56 = *(v0 + 632);
  v57 = *(v0 + 624);
  v132 = *(v0 + 616);
  v134 = *(v0 + 608);
  v136 = *(v0 + 600);
  v138 = *(v0 + 592);
  v140 = *(v0 + 584);
  v142 = *(v0 + 576);
  v144 = *(v0 + 568);
  v146 = *(v0 + 560);
  v148 = *(v0 + 552);
  v150 = *(v0 + 544);
  v152 = *(v0 + 520);
  v155 = *(v0 + 512);
  v158 = *(v0 + 504);
  v162 = *(v0 + 480);
  v167 = *(v0 + 472);
  v171 = *(v0 + 464);
  v176 = *(v0 + 440);
  v180 = *(v0 + 416);

  v58 = *(v0 + 8);
LABEL_16:

  return v58();
}

uint64_t sub_100C0DF24()
{
  (*(v0[92] + 8))(v0[93], v0[91]);
  v31 = v0[97];
  v1 = v0[93];
  v2 = v0[90];
  v3 = v0[87];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[78];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[69];
  v22 = v0[68];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[60];
  v27 = v0[59];
  v28 = v0[58];
  v29 = v0[55];
  v30 = v0[52];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C0E130()
{
  v1 = v0[96];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];

  (*(v3 + 8))(v2, v4);
  v35 = v0[100];
  v5 = v0[93];
  v6 = v0[90];
  v7 = v0[87];
  v8 = v0[84];
  v9 = v0[83];
  v10 = v0[82];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[72];
  v23 = v0[71];
  v24 = v0[70];
  v25 = v0[69];
  v26 = v0[68];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[63];
  v30 = v0[60];
  v31 = v0[59];
  v32 = v0[58];
  v33 = v0[55];
  v34 = v0[52];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100C0E34C()
{
  v1 = v0[96];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[84];
  v6 = v0[67];
  v7 = v0[66];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v38 = v0[104];
  v8 = v0[93];
  v9 = v0[90];
  v10 = v0[87];
  v11 = v0[84];
  v12 = v0[83];
  v13 = v0[82];
  v14 = v0[81];
  v15 = v0[80];
  v16 = v0[79];
  v17 = v0[78];
  v20 = v0[77];
  v21 = v0[76];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[70];
  v28 = v0[69];
  v29 = v0[68];
  v30 = v0[65];
  v31 = v0[64];
  v32 = v0[63];
  v33 = v0[60];
  v34 = v0[59];
  v35 = v0[58];
  v36 = v0[55];
  v37 = v0[52];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100C0E58C()
{
  v1 = v0[108];
  v2 = v0[96];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[91];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[67];
  v9 = v0[66];

  v1(v7, v9);
  v1(v6, v9);
  (*(v4 + 8))(v3, v5);
  v40 = v0[111];
  v10 = v0[93];
  v11 = v0[90];
  v12 = v0[87];
  v13 = v0[84];
  v14 = v0[83];
  v15 = v0[82];
  v16 = v0[81];
  v17 = v0[80];
  v18 = v0[79];
  v19 = v0[78];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[75];
  v25 = v0[74];
  v26 = v0[73];
  v27 = v0[72];
  v28 = v0[71];
  v29 = v0[70];
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[65];
  v33 = v0[64];
  v34 = v0[63];
  v35 = v0[60];
  v36 = v0[59];
  v37 = v0[58];
  v38 = v0[55];
  v39 = v0[52];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100C0E7E8()
{
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[96];
  v4 = v0[93];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[67];
  v10 = v0[66];

  v2(v8, v10);
  v2(v7, v10);
  (*(v5 + 8))(v4, v6);
  v41 = v0[114];
  v11 = v0[93];
  v12 = v0[90];
  v13 = v0[87];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[79];
  v20 = v0[78];
  v23 = v0[77];
  v24 = v0[76];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[72];
  v29 = v0[71];
  v30 = v0[70];
  v31 = v0[69];
  v32 = v0[68];
  v33 = v0[65];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[60];
  v37 = v0[59];
  v38 = v0[58];
  v39 = v0[55];
  v40 = v0[52];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100C0EA50()
{
  v1 = v0[113];
  v2 = v0[110];
  v3 = v0[108];
  v4 = v0[96];
  v5 = v0[92];
  v41 = v0[91];
  v43 = v0[93];
  v39 = v0[84];
  v6 = v0[83];
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[67];
  v10 = v0[66];

  v3(v8, v10);
  v3(v7, v10);
  v3(v6, v10);
  v3(v39, v10);
  (*(v5 + 8))(v43, v41);
  sub_100007BAC(v0 + 26);
  v44 = v0[116];
  v11 = v0[93];
  v12 = v0[90];
  v13 = v0[87];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[79];
  v20 = v0[78];
  v23 = v0[77];
  v24 = v0[76];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[72];
  v29 = v0[71];
  v30 = v0[70];
  v31 = v0[69];
  v32 = v0[68];
  v33 = v0[65];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[60];
  v37 = v0[59];
  v38 = v0[58];
  v40 = v0[55];
  v42 = v0[52];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100C0ED00()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[113];
  v4 = v0[110];
  v5 = v0[108];
  v6 = v0[96];
  v7 = v0[92];
  v43 = v0[91];
  v45 = v0[93];
  v39 = v0[83];
  v41 = v0[84];
  v37 = v0[80];
  v8 = v0[73];
  v9 = v0[67];
  v10 = v0[66];

  sub_100016590(v2, v1);

  v5(v8, v10);
  v5(v37, v10);
  v5(v39, v10);
  v5(v41, v10);
  (*(v7 + 8))(v45, v43);
  sub_100007BAC(v0 + 8);
  v46 = v0[120];
  v11 = v0[93];
  v12 = v0[90];
  v13 = v0[87];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[79];
  v20 = v0[78];
  v23 = v0[77];
  v24 = v0[76];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[72];
  v29 = v0[71];
  v30 = v0[70];
  v31 = v0[69];
  v32 = v0[68];
  v33 = v0[65];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[60];
  v38 = v0[59];
  v40 = v0[58];
  v42 = v0[55];
  v44 = v0[52];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100C0EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 264) = a6;
  *(v8 + 272) = v7;
  *(v8 + 400) = a7;
  *(v8 + 248) = a4;
  *(v8 + 256) = a5;
  *(v8 + 232) = a2;
  *(v8 + 240) = a3;
  *(v8 + 224) = a1;
  v9 = type metadata accessor for BinaryDecoder();
  *(v8 + 280) = v9;
  v10 = *(v9 - 8);
  *(v8 + 288) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v12 = type metadata accessor for BinaryEncoder();
  *(v8 + 304) = v12;
  v13 = *(v12 - 8);
  *(v8 + 312) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_100C0F0F4, v7, 0);
}

uint64_t sub_100C0F0F4()
{
  v32 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  if (qword_101694D88 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 240);
  v4 = type metadata accessor for Logger();
  *(v0 + 328) = sub_1000076D4(v4, qword_10177BDD8);
  sub_1001011C0(v3, v0 + 16);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v31);
    *(v7 + 12) = 2080;
    sub_1001011C0(v0 + 16, v0 + 160);
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_100007BAC((v0 + 16));
    v11 = sub_1000136BC(v8, v10, v31);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Sending command: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC((v0 + 16));
  }

  v12 = *(v0 + 320);
  v13 = *(v0 + 240);
  v14 = v13[5];
  sub_1000035D0(v13, v13[3]);
  v15 = BinaryEncoder.encode<A>(_:)();
  *(v0 + 336) = v15;
  *(v0 + 344) = v16;
  if (*(v0 + 400))
  {
    v17 = type metadata accessor for Characteristic();
    v18 = sub_100C114D4(&qword_1016972C0, 255, &type metadata accessor for Characteristic);
    v19 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v20 = swift_task_alloc();
    *(v0 + 352) = v20;
    *v20 = v0;
    v20[1] = sub_100C0F5A0;
    v21 = *(v0 + 232);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v17, v18);
  }

  else
  {
    v22 = v15;
    v23 = v16;
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    sub_100017D5C(v22, v23);
    v25 = *(v0 + 400);
    v26 = *(v0 + 232);
    v27 = swift_allocObject();
    *(v0 + 376) = v27;
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    *(v27 + 32) = v24;
    v28 = async function pointer to withTimeout<A>(_:block:)[1];

    v29 = swift_task_alloc();
    *(v0 + 384) = v29;
    *v29 = v0;
    v29[1] = sub_100C0F8B8;

    return withTimeout<A>(_:block:)(v0 + 208, 0x8AC7230489E80000, 0, &unk_1013DF8C0, v27, &type metadata for Data);
  }
}

uint64_t sub_100C0F5A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  v4[45] = v1;

  v7 = v4[34];
  if (v1)
  {
    v8 = sub_100C0F7F4;
  }

  else
  {
    v4[46] = a1;
    v8 = sub_100C0F6DC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C0F6DC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = fragment(data:mtu:)();
  v5 = *(v0 + 400);
  v6 = *(v0 + 232);
  v7 = swift_allocObject();
  *(v0 + 376) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  v8 = async function pointer to withTimeout<A>(_:block:)[1];

  v9 = swift_task_alloc();
  *(v0 + 384) = v9;
  *v9 = v0;
  v9[1] = sub_100C0F8B8;

  return withTimeout<A>(_:block:)(v0 + 208, 0x8AC7230489E80000, 0, &unk_1013DF8C0, v7, &type metadata for Data);
}

uint64_t sub_100C0F7F4()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  sub_100016590(v0[42], v0[43]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[45];
  v8 = v0[40];
  v9 = v0[37];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C0F8B8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 376);
  v6 = *(v2 + 272);

  if (v0)
  {
    v7 = sub_100C0FEAC;
  }

  else
  {
    v7 = sub_100C0FA00;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C0FA00()
{
  v58 = v0;
  v1 = *(v0 + 328);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  sub_100017D5C(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    result = swift_slowAlloc();
    v8 = result;
    v57[0] = result;
    *v6 = 134218242;
    v9 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_13;
      }

      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = BYTE6(v2);
LABEL_13:
      *(v6 + 4) = v10;
      sub_100016590(v3, v2);
      *(v6 + 12) = 2080;
      v14 = Data.hexString.getter();
      v16 = sub_1000136BC(v14, v15, v57);

      *(v6 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Length: %ld received raw response: %s", v6, 0x16u);
      sub_100007BAC(v8);

      goto LABEL_14;
    }

    LODWORD(v10) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      return result;
    }

    v10 = v10;
    goto LABEL_13;
  }

  sub_100016590(v3, v2);
LABEL_14:

  v17 = *(v0 + 392);
  v18 = *(v0 + 296);
  v19 = *(v0 + 224);
  v20 = *(v0 + 256);
  *(v19 + 24) = *(v0 + 248);
  *(v19 + 32) = v20;
  sub_1000280DC(v19);
  BinaryDecoder.decode<A>(_:from:)();
  if (v17)
  {
    v22 = *(v0 + 336);
    v21 = *(v0 + 344);
    v55 = *(v0 + 320);
    v23 = v2;
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    v26 = *(v0 + 288);
    v27 = *(v0 + 296);
    v28 = *(v0 + 280);
    v29 = v3;
    v30 = *(v0 + 224);
    sub_100016590(v29, v23);
    sub_100016590(v22, v21);
    (*(v26 + 8))(v27, v28);
    (*(v24 + 8))(v55, v25);
    sub_100101758(v30);
    v31 = *(v0 + 320);
    v32 = *(v0 + 296);

    v33 = *(v0 + 8);
  }

  else
  {
    v34 = *(v0 + 328);
    sub_1001011C0(*(v0 + 224), v0 + 64);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v53 = *(v0 + 336);
    v54 = *(v0 + 344);
    v39 = *(v0 + 312);
    v38 = *(v0 + 320);
    v41 = *(v0 + 296);
    v40 = *(v0 + 304);
    v42 = *(v0 + 288);
    v56 = *(v0 + 280);
    if (v37)
    {
      v52 = *(v0 + 320);
      v43 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v57);
      *(v43 + 12) = 2080;
      sub_1001011C0(v0 + 64, v0 + 112);
      sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
      v50 = v3;
      v51 = v41;
      v44 = String.init<A>(describing:)();
      v46 = v45;
      sub_100007BAC((v0 + 64));
      v47 = sub_1000136BC(v44, v46, v57);

      *(v43 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s Received response: %s", v43, 0x16u);
      swift_arrayDestroy();

      sub_100016590(v50, v2);
      sub_100016590(v53, v54);
      (*(v42 + 8))(v51, v56);
      (*(v39 + 8))(v52, v40);
    }

    else
    {

      sub_100016590(v3, v2);
      sub_100016590(v53, v54);
      sub_100007BAC((v0 + 64));
      (*(v42 + 8))(v41, v56);
      (*(v39 + 8))(v38, v40);
    }

    v48 = *(v0 + 320);
    v49 = *(v0 + 296);

    v33 = *(v0 + 8);
  }

  return v33();
}

uint64_t sub_100C0FEAC()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  sub_100016590(v0[42], v0[43]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[49];
  v8 = v0[40];
  v9 = v0[37];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C0FF70(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v5 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v3[4] = v6;
  type metadata accessor for AccessoryMetadataManager();
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100C10068;

  return sub_100359F48(v6, a2, 1);
}

uint64_t sub_100C10068()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_100C102FC;
  }

  else
  {
    v4 = sub_100C10190;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C10190()
{
  v1 = v0[4];
  v2 = type metadata accessor for AccessoryProductInfo();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101697268, &qword_101394FE0);
    sub_100C10608();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v4 = v0[4];
  }

  else
  {
    v6 = v0[2];
    v6[3] = v2;
    v6[4] = sub_100C114D4(&qword_1016B31C0, 255, type metadata accessor for AccessoryProductInfo);
    v7 = sub_1000280DC(v6);
    sub_100C1065C(v1, v7);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C102FC()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C104B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_100C0A250(a1, v6, a3);
}

uint64_t sub_100C10560(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C0FF70(a1, a2);
}

unint64_t sub_100C10608()
{
  result = qword_1016B8620;
  if (!qword_1016B8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8620);
  }

  return result;
}

uint64_t sub_100C1065C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryProductInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C106C0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8550);
  v1 = sub_1000076D4(v0, qword_1016B8550);
  if (qword_101694D88 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BDD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C10788(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v7 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[7] = v10;
  v11 = swift_task_alloc();
  v4[8] = v11;
  if (a2)
  {
    v10 = v11;
    v12 = type metadata accessor for Characteristic();
    v13 = sub_100C114D4(&qword_1016972C0, 255, &type metadata accessor for Characteristic);
    v14 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
    v15 = swift_task_alloc();
    v4[9] = v15;
    *v15 = v4;
    v16 = sub_100C109A4;
  }

  else
  {
    v12 = type metadata accessor for Characteristic();
    v13 = sub_100C114D4(&qword_1016972C0, 255, &type metadata accessor for Characteristic);
    v17 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
    v15 = swift_task_alloc();
    v4[11] = v15;
    *v15 = v4;
    v16 = sub_100C10B5C;
  }

  v15[1] = v16;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v10, a4, v12, v13);
}

uint64_t sub_100C109A4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C10EA4, 0, 0);
  }

  else
  {
    v4 = async function pointer to AsyncSequence<>.reassemble()[1];
    v5 = swift_task_alloc();
    v3[13] = v5;
    v6 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v5 = v3;
    v5[1] = sub_100C10D18;
    v7 = v3[8];
    v8 = v3[5];

    return AsyncSequence<>.reassemble()(v8, v6);
  }
}

uint64_t sub_100C10B5C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C11160, 0, 0);
  }

  else
  {
    v4 = async function pointer to AsyncSequence.first()[1];
    v5 = swift_task_alloc();
    v3[17] = v5;
    v6 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v5 = v3;
    v5[1] = sub_100C10FF8;
    v7 = v3[7];
    v8 = v3[5];

    return AsyncSequence.first()(v3 + 2, v8, v6);
  }
}

uint64_t sub_100C10D18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  v6[14] = v2;

  v9 = v6[8];
  v10 = v6[6];
  v11 = v6[5];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_100C10F8C;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_100C10F10;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100C10EA4()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C10F10()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  **(v0 + 32) = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100C10F8C()
{
  v1 = v0[14];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C10FF8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v5 = sub_100C113B4;
  }

  else
  {
    v5 = sub_100C111CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100C11160()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C111CC()
{
  v15 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_101694D88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177BDD8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, &v14);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Invalid response!", v5, 0xCu);
      sub_100007BAC(v6);
    }

    sub_100C1151C();
    swift_allocError();
    swift_willThrow();
    v8 = v0[7];
    v7 = v0[8];

    v9 = v0[1];
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[4];
    *v12 = v0[2];
    v12[1] = v1;

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_100C113B4()
{
  v1 = v0[18];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C11420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100C10788(a1, v4, v6, v5);
}

uint64_t sub_100C114D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100C1151C()
{
  result = qword_1016B8630;
  if (!qword_1016B8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8630);
  }

  return result;
}

unint64_t sub_100C11584()
{
  result = qword_1016B8638;
  if (!qword_1016B8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8638);
  }

  return result;
}

uint64_t sub_100C11628@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryUserConfiguration;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 name];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = [v6 roleId];
    v13 = [v6 roleEmoji];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    v18 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryProductInfo;
    swift_beginAccess();
    v19 = type metadata accessor for PairingConfig();
    *(a1 + 24) = v19;
    *(a1 + 32) = sub_100C13B8C(&qword_1016B7408, type metadata accessor for PairingConfig);
    v20 = sub_1000280DC(a1);
    result = sub_1000D2A70(v1 + v18, v20 + *(v19 + 28), &qword_101697268, &qword_101394FE0);
    *v20 = v9;
    v20[1] = v11;
    v20[2] = v12;
    v20[3] = v15;
    v20[4] = v17;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100C117D8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DetectedAccessory();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100C118F4, v1, 0);
}

uint64_t sub_100C118F4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  type metadata accessor for ProximityPairingInfoStore();
  sub_100C13B8C(&qword_1016B2BF0, type metadata accessor for ProximityPairingInfoStore);
  PairingInfoStore.accessory.getter();
  v5 = (*(v2 + 88))(v1, v3);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  if (v5 != enum case for DetectedAccessory.single(_:))
  {
    (*(v6 + 8))(*(v0 + 112), v8);
    v15 = type metadata accessor for PairingCoordinatorError();
    sub_100C13B8C(&qword_1016B31E0, &type metadata accessor for PairingCoordinatorError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for PairingCoordinatorError.notAllowedForMultiDetection(_:), v15);
    swift_willThrow();
    goto LABEL_14;
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  (*(v6 + 96))(*(v0 + 112), v8);
  sub_10000A748(v7, v0 + 16);
  v11 = *(v0 + 48);
  sub_1000035D0((v0 + 16), *(v0 + 40));
  dispatch thunk of Accessory.identifier.getter();
  if (*(v10 + 120) > 1u)
  {
    v17 = 2;
    if (*(v10 + 120) != 2)
    {
      v17 = 0;
    }
  }

  else
  {
    if (!*(v10 + 120))
    {
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);
      v14 = *(v0 + 72);
      sub_100BAB70C();
      swift_allocError();
      swift_willThrow();
      (*(v13 + 8))(v12, v14);
      sub_100007BAC((v0 + 16));
LABEL_14:
      v24 = *(v0 + 112);
      v25 = *(v0 + 88);

      v26 = *(v0 + 8);

      return v26();
    }

    v17 = 1;
  }

  *(v0 + 120) = v17;
  v18 = *(v0 + 48);
  sub_1000035D0((v0 + 16), *(v0 + 40));
  *(v0 + 200) = dispatch thunk of Accessory.colorCode.getter();
  if (MKBGetDeviceLockState() == 2 || (v19 = MKBGetDeviceLockState(), v20 = 0, v19 == 1))
  {
    v20 = 1;
  }

  *(v0 + 128) = v20;
  v21 = *(v0 + 64);
  v22 = *(v0 + 48);
  sub_1000035D0((v0 + 16), *(v0 + 40));
  *(v0 + 136) = dispatch thunk of Accessory.engravingData.getter();
  *(v0 + 144) = v23;
  *(v0 + 204) = sub_100C123AC();
  v28 = async function pointer to daemon.getter[1];
  v29 = swift_task_alloc();
  *(v0 + 152) = v29;
  *v29 = v0;
  v29[1] = sub_100C11CA8;

  return daemon.getter();
}

uint64_t sub_100C11CA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100C13B8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100C13B8C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100C11E84;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C11E84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[20];
  if (v1)
  {
    v9 = v4[17];
    v8 = v4[18];
    v10 = v4[8];

    sub_100006654(v9, v8);
    v11 = sub_100C1231C;
    v12 = v10;
  }

  else
  {

    v4[23] = a1;
    v11 = sub_100C11FEC;
    v12 = a1;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100C11FEC()
{
  v1 = *(*(v0 + 184) + 128);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_100C12080;

  return sub_100A9A4DC();
}

uint64_t sub_100C12080(char a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 205) = a1;

  return _swift_task_switch(sub_100C12198, v3, 0);
}

uint64_t sub_100C12198()
{
  v18 = *(v0 + 205);
  v1 = *(v0 + 184);
  v16 = *(v0 + 204);
  v2 = *(v0 + 136);
  v15 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 200);
  v17 = *(v0 + 112);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  v10 = type metadata accessor for ProximityPairingInfo();
  v9[3] = v10;
  v9[4] = sub_100C13B8C(&qword_1016A6DF0, type metadata accessor for ProximityPairingInfo);
  v11 = sub_1000280DC(v9);
  (*(v7 + 32))(v11, v6, v8);
  *(v11 + v10[5]) = v4;
  *(v11 + v10[6]) = v5;
  *(v11 + v10[7]) = v3;
  v12 = (v11 + v10[8]);
  *v12 = v2;
  v12[1] = v15;
  *(v11 + v10[9]) = v16;
  *(v11 + v10[10]) = v18;
  *(v11 + v10[11]) = 0;
  sub_100007BAC((v0 + 16));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100C1231C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_100007BAC(v0 + 2);
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C123AC()
{
  v1 = type metadata accessor for BatteryLevel();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetectedAccessory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ProximityPairingInfoStore();
  sub_100C13B8C(&qword_1016B2BF0, type metadata accessor for ProximityPairingInfoStore);
  PairingInfoStore.accessory.getter();
  if ((*(v7 + 88))(v10, v6) == enum case for DetectedAccessory.single(_:))
  {
    (*(v7 + 96))(v10, v6);
    sub_10000A748(v10, v16);
    sub_1000035D0(v16, v16[3]);
    dispatch thunk of Accessory.battery.getter();
    v11 = (*(v2 + 88))(v5, v1);
    if (v11 == enum case for BatteryLevel.unknown(_:))
    {
      v12 = 2;
    }

    else if (v11 == enum case for BatteryLevel.low(_:))
    {
      v12 = *(v0 + 121) == 1;
    }

    else if (v11 == enum case for BatteryLevel.critical(_:))
    {
      v12 = 1;
    }

    else
    {
      (*(v2 + 8))(v5, v1);
      v12 = 0;
    }

    sub_100007BAC(v16);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v12 = type metadata accessor for PairingCoordinatorError();
    sub_100C13B8C(&qword_1016B31E0, &type metadata accessor for PairingCoordinatorError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for PairingCoordinatorError.notAllowedForMultiDetection(_:), v12);
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_100C12710@<X0>(void *a1@<X8>)
{
  v71 = a1;
  v1 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  v76 = type metadata accessor for AccessoryProductInfo();
  v73 = *(v76 - 8);
  v7 = *(v73 + 64);
  __chkstk_darwin(v76);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for AccessoryMetadata(0);
  v9 = *(v78 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v78);
  v70 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v66 - v13;
  v15 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v66 - v20;
  v22 = static Data.random(bytes:)();
  v24 = v23;
  v25 = type metadata accessor for AccessoryPairingInfo(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_100017D5C(v22, v24);
  v28 = sub_10024C9E8(v22, v24);
  if (!v28)
  {
    sub_100C13B38();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();
    v34 = v22;
    v35 = v24;
    return sub_100016590(v34, v35);
  }

  v74 = v28;
  v75 = v24;
  v77 = v22;
  v29 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryMetadata;
  v30 = v79;
  swift_beginAccess();
  sub_1000D2A70(v30 + v29, v21, &qword_1016A62A0, &unk_101396E10);
  v31 = *(v9 + 48);
  if (v31(v21, 1, v78))
  {
    sub_10000B3A8(v21, &qword_1016A62A0, &unk_101396E10);
    sub_100C13B38();
    swift_allocError();
    *v32 = 4;
    swift_willThrow();
LABEL_7:

    v34 = v77;
    v35 = v75;
    return sub_100016590(v34, v35);
  }

  sub_100A569CC(v21, v14, type metadata accessor for AccessoryMetadata);
  sub_10000B3A8(v21, &qword_1016A62A0, &unk_101396E10);
  v36 = &v14[*(v78 + 20)];
  v37 = v36[1];
  v68 = *v36;
  sub_100017D5C(v68, v37);
  sub_10028602C(v14, type metadata accessor for AccessoryMetadata);
  v38 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryProductInfo;
  v39 = v79;
  swift_beginAccess();
  sub_1000D2A70(v39 + v38, v6, &qword_101697268, &qword_101394FE0);
  v40 = v73;
  if ((*(v73 + 48))(v6, 1, v76) == 1)
  {
    sub_10000B3A8(v6, &qword_101697268, &qword_101394FE0);
    sub_100C13B38();
    swift_allocError();
    *v41 = 5;
    swift_willThrow();
    sub_100016590(v68, v37);
    goto LABEL_7;
  }

  v67 = v37;
  v43 = v72;
  sub_100A56964(v6, v72, type metadata accessor for AccessoryProductInfo);
  sub_1000D2A70(v79 + v29, v19, &qword_1016A62A0, &unk_101396E10);
  v44 = v31(v19, 1, v78);
  v45 = v77;
  if (v44 == 1)
  {
    sub_10000B3A8(v19, &qword_1016A62A0, &unk_101396E10);
    sub_100C13B38();
    swift_allocError();
    *v46 = 6;
    swift_willThrow();

    sub_100016590(v68, v67);
    sub_100016590(v45, v75);
    return sub_10028602C(v43, type metadata accessor for AccessoryProductInfo);
  }

  else
  {
    v47 = v70;
    sub_100A56964(v19, v70, type metadata accessor for AccessoryMetadata);
    v66 = type metadata accessor for AccessoryProductInfo;
    v48 = v69;
    sub_100A569CC(v43, v69, type metadata accessor for AccessoryProductInfo);
    v49 = v76;
    (*(v40 + 56))(v48, 0, 1, v76);
    v50 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    v51 = v74;
    swift_beginAccess();
    sub_10002311C(v48, v51 + v50, &qword_101697268, &qword_101394FE0);
    swift_endAccess();
    v52 = v51[13];
    v53 = v51[14];
    v54 = v68;
    v55 = v67;
    v51[13] = v68;
    v51[14] = v55;
    sub_100017D5C(v54, v55);
    sub_100006654(v52, v53);
    v56 = *(v47 + *(v78 + 32));
    v57 = sub_10098E010();
    v58 = v51[12];
    v51[11] = v57;
    v51[12] = v59;

    v60 = (v43 + *(v49 + 52));
    v62 = *v60;
    v61 = v60[1];
    v63 = (v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
    v64 = *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName + 8);
    *v63 = v62;
    v63[1] = v61;

    *(v51 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID) = *(v79 + 121);
    v65 = v71;
    v71[3] = v25;
    v65[4] = sub_100C13B8C(&qword_1016ACE88, type metadata accessor for AccessoryPairingInfo);
    sub_100016590(v54, v55);
    sub_100016590(v77, v75);
    *v65 = v51;
    sub_10028602C(v47, type metadata accessor for AccessoryMetadata);
    return sub_10028602C(v43, v66);
  }
}

uint64_t sub_100C12EA0(uint64_t a1, char a2, char a3)
{
  swift_defaultActor_initialize();
  *(v3 + 128) = 0;
  v7 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryMetadata;
  v8 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryProductInfo;
  v10 = type metadata accessor for AccessoryProductInfo();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryUserConfiguration) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryDetails) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_beaconCreationInfo) = _swiftEmptyArrayStorage;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 121) = a3;
  return v3;
}

uint64_t sub_100C12FB0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryMetadata, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryProductInfo, &qword_101697268, &qword_101394FE0);

  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryDetails);

  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_beaconCreationInfo);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ProximityPairingInfoStore()
{
  result = qword_1016B8668;
  if (!qword_1016B8668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C130B4()
{
  sub_100A55C6C(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100A55C6C(319, &qword_10169AC10, type metadata accessor for AccessoryProductInfo);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

id sub_100C13374@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_100C133D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_100C13490()
{
  type metadata accessor for ProximityPairingInfoStore();

  return PairingInfoStore.accessory.getter();
}

uint64_t sub_100C134DC()
{
  v0 = type metadata accessor for ProximityPairingInfoStore();
  v1 = sub_100C13B8C(&qword_1016B8810, type metadata accessor for ProximityPairingInfoStore);

  return TypedPairingInfoStore.productIDValue.getter(v0, v1);
}

uint64_t sub_100C13580(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for ProximityPairingInfoStore();
  v4 = sub_100C13B8C(&qword_1016B8810, type metadata accessor for ProximityPairingInfoStore);

  return a3(v3, v4);
}

uint64_t sub_100C13630()
{
  v0 = type metadata accessor for ProximityPairingInfoStore();
  v1 = sub_100C13B8C(&qword_1016B8810, type metadata accessor for ProximityPairingInfoStore);

  return TypedPairingInfoStore.pairingPolicyInformationValue.getter(v0, v1);
}

uint64_t sub_100C136B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100C117D8(a1);
}

uint64_t sub_100C13764()
{
  v1 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100C137AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25ProximityPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100C138D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for ProximityPairingInfoStore();
  v11 = sub_100C13B8C(&qword_1016B8810, type metadata accessor for ProximityPairingInfoStore);
  return a6(a1, v10, a2, v11, a3);
}

unint64_t sub_100C13B38()
{
  result = qword_1016B8818;
  if (!qword_1016B8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8818);
  }

  return result;
}

uint64_t sub_100C13B8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100C13BE8()
{
  result = qword_1016B8820;
  if (!qword_1016B8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8820);
  }

  return result;
}

uint64_t sub_100C13C3C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_100102538(v8, &v7);
}

uint64_t sub_100C13C94(uint64_t a1)
{
  v2[563] = v1;
  v2[557] = a1;
  v3 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v2[569] = swift_task_alloc();
  v4 = type metadata accessor for BinaryDecoder();
  v2[575] = v4;
  v5 = *(v4 - 8);
  v2[581] = v5;
  v6 = *(v5 + 64) + 15;
  v2[587] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[593] = v7;
  v8 = *(v7 - 8);
  v2[599] = v8;
  v9 = *(v8 + 64) + 15;
  v2[605] = swift_task_alloc();
  v2[611] = swift_task_alloc();
  v10 = type metadata accessor for PairingExecutorState();
  v2[617] = v10;
  v11 = *(v10 - 8);
  v2[623] = v11;
  v12 = *(v11 + 64) + 15;
  v2[629] = swift_task_alloc();
  v2[635] = swift_task_alloc();

  return _swift_task_switch(sub_100C13E60, v1, 0);
}

uint64_t sub_100C13E60()
{
  v1 = *(v0 + 4504);
  v2 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo;
  *(v0 + 5128) = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo;
  LODWORD(v2) = *(*(v1 + v2) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID);
  *(v0 + 7364) = v2;
  if (v2 == 3)
  {
    sub_100C29CEC();
    swift_allocError();
    *v3 = 13;
    swift_willThrow();
    v4 = *(v0 + 5080);
    v5 = *(v0 + 5032);
    v6 = *(v0 + 4888);
    v7 = *(v0 + 4840);
    v8 = *(v0 + 4696);
    v9 = *(v0 + 4552);
    sub_1000BB27C(0);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = (v1 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheralProvider);
    v14 = *v12;
    v13 = v12[1];
    ObjectType = swift_getObjectType();
    v16 = async function pointer to dispatch thunk of PairingPeripheralProvider.pair<A>(_:)[1];
    v17 = swift_task_alloc();
    *(v0 + 5176) = v17;
    v18 = sub_1000BC4D4(&qword_1016A1358, &qword_1013E0350);
    *v17 = v0;
    v17[1] = sub_100C14048;
    v19 = *(v0 + 4456);

    return dispatch thunk of PairingPeripheralProvider.pair<A>(_:)(v0 + 4440, v19, v18, ObjectType, v13);
  }
}

uint64_t sub_100C14048()
{
  v2 = *v1;
  v3 = *(*v1 + 5176);
  v4 = *v1;
  *(*v1 + 5224) = v0;

  v5 = *(v2 + 4504);
  if (v0)
  {
    v6 = sub_100C17FEC;
  }

  else
  {
    v6 = sub_100C14174;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C14174()
{
  v24 = v0;
  *(v0 + 5272) = *(v0 + 4440);
  *(v0 + 5320) = *(v0 + 4448);
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 4456);
  v2 = type metadata accessor for Logger();
  *(v0 + 5368) = sub_1000076D4(v2, qword_1016B8828);
  sub_10001F280(v1, v0 + 3816);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    sub_10001F280(v0 + 3816, v0 + 3736);
    sub_1000BC4D4(&qword_1016A1370, &qword_1013E03B0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100007BAC((v0 + 3816));
    v10 = sub_1000136BC(v7, v9, &v23);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {

    sub_100007BAC((v0 + 3816));
  }

  v11 = *(v0 + 5080);
  v12 = *(v0 + 4984);
  v13 = *(v0 + 4936);
  v14 = *(v0 + 4504);
  v15 = enum case for PairingExecutorState.InitiatePairing.commandStart(_:);
  v16 = type metadata accessor for PairingExecutorState.InitiatePairing();
  *(v0 + 5416) = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  *(v0 + 5464) = v18;
  *(v0 + 5512) = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v11, v15, v16);
  v19 = *(v17 + 56);
  *(v0 + 5560) = v19;
  *(v0 + 5608) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v19(v11, 0, 1, v16);
  *(v0 + 7360) = enum case for PairingExecutorState.initiatePairing(_:);
  v20 = *(v12 + 104);
  *(v0 + 5656) = v20;
  *(v0 + 5704) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v11);
  *(v0 + 5752) = type metadata accessor for AirTagPairingExecutor();
  *(v0 + 5800) = sub_100C2A554(&qword_1016B7838, type metadata accessor for AirTagPairingExecutor);
  PairingExecutor.setState(_:)();
  v21 = *(v12 + 8);
  *(v0 + 5848) = v21;
  *(v0 + 5896) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v11, v13);

  return _swift_task_switch(sub_100C144D8, 0, 0);
}

uint64_t sub_100C144D8()
{
  v1 = v0[659];
  v2 = v0[611];
  ObjectType = swift_getObjectType();
  v0[743] = ObjectType;
  v0[749] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[755] = v5;
  *v5 = v0;
  v5[1] = sub_100C145B8;
  v6 = v0[665];
  v7 = v0[659];
  v8 = v0[611];

  return dispatch thunk of ServiceProtocol.subscript.getter(v8, ObjectType, v6);
}

uint64_t sub_100C145B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 6040);
  v6 = *v2;
  v4[761] = a1;
  v4[767] = v1;

  v7 = v3[611];
  v8 = v3[599];
  v9 = v3[593];
  v12 = *(v8 + 8);
  v10 = v8 + 8;
  v11 = v12;
  if (v1)
  {
    v11(v7, v9);
    v13 = sub_100C149E8;
  }

  else
  {
    v4[773] = v11;
    v4[779] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    v13 = sub_100C14748;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100C14748()
{
  v1 = v0[749];
  v2 = v0[743];
  v3 = v0[665];
  v4 = v0[605];
  swift_getAssociatedTypeWitness();
  v0[785] = swift_getAssociatedConformanceWitness();
  Identifier.init(stringLiteral:)();
  v5 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v6 = swift_task_alloc();
  v0[791] = v6;
  *v6 = v0;
  v6[1] = sub_100C1486C;
  v7 = v0[743];
  v8 = v0[665];
  v9 = v0[659];
  v10 = v0[605];

  return dispatch thunk of ServiceProtocol.subscript.getter(v10, v7, v8);
}

uint64_t sub_100C1486C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 6328);
  v6 = *v2;
  *(v4 + 6376) = a1;
  *(v4 + 6424) = v1;

  v7 = *(v3 + 6232);
  (*(v3 + 6184))(*(v3 + 4840), *(v3 + 4744));
  if (v1)
  {
    v8 = sub_100C14FD4;
  }

  else
  {
    v8 = sub_100C14AD4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C14A04()
{
  v1 = v0[659];
  swift_unknownObjectRelease();
  v2 = v0[767];
  v3 = v0[635];
  v4 = v0[629];
  v5 = v0[611];
  v6 = v0[605];
  v7 = v0[587];
  v8 = v0[569];
  sub_1000BB27C(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C14AD4()
{
  v1 = swift_task_alloc();
  v0[809] = v1;
  *v1 = v0;
  v1[1] = sub_100C14B80;
  v2 = v0[797];
  v3 = v0[785];

  return sub_100C4F128(v2, v3);
}

uint64_t sub_100C14B80()
{
  v2 = *v1;
  v3 = *(*v1 + 6472);
  v4 = *v1;
  *(*v1 + 6520) = v0;

  v5 = *(v2 + 4504);
  if (v0)
  {
    v6 = sub_100C14EEC;
  }

  else
  {
    v6 = sub_100C14CAC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C14CAC()
{
  v25 = v0;
  v1 = v0[671];
  v2 = *(v0[563] + v0[641]);
  v3 = *(v2 + 16);
  v0[821] = v3;
  v4 = *(v2 + 24);
  v0[827] = v4;
  sub_100017D5C(v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    result = swift_slowAlloc();
    v9 = result;
    v24 = result;
    *v7 = 134218242;
    v10 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_12;
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (!v14)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v4);
LABEL_12:
      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v15 = Data.hexString.getter();
      v17 = sub_1000136BC(v15, v16, &v24);

      *(v7 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Writing nonce[%ld]: %s", v7, 0x16u);
      sub_100007BAC(v9);

      goto LABEL_13;
    }

    LODWORD(v11) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      return result;
    }

    v11 = v11;
    goto LABEL_12;
  }

LABEL_13:

  v18 = *(v0[563] + v0[641]);
  v19 = *(v18 + 16);
  v0[833] = v19;
  v20 = *(v18 + 24);
  v0[839] = v20;
  sub_100017D5C(v19, v20);
  v21 = swift_task_alloc();
  v0[845] = v21;
  *v21 = v0;
  v21[1] = sub_100C150CC;
  v22 = v0[665];
  v23 = v0[659];

  return sub_100C4F5AC(v23, v22, v19, v20);
}

uint64_t sub_100C14EEC()
{
  v1 = v0[797];
  v2 = v0[761];
  v3 = v0[659];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v0[815];
  v5 = v0[635];
  v6 = v0[629];
  v7 = v0[611];
  v8 = v0[605];
  v9 = v0[587];
  v10 = v0[569];
  sub_1000BB27C(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C14FF0()
{
  v1 = v0[761];
  v2 = v0[659];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[803];
  v4 = v0[635];
  v5 = v0[629];
  v6 = v0[611];
  v7 = v0[605];
  v8 = v0[587];
  v9 = v0[569];
  sub_1000BB27C(0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C150CC()
{
  v2 = *v1;
  v3 = *(*v1 + 6760);
  v8 = *v1;
  *(*v1 + 6808) = v0;

  if (v0)
  {
    v4 = v2[563];
    v5 = sub_100C1531C;
  }

  else
  {
    v6 = v2[563];
    sub_100016590(v2[833], v2[839]);
    v5 = sub_100C151F8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C151F8()
{
  v1 = v0[671];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Wrote nonce", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[857] = v5;
  *v5 = v0;
  v5[1] = sub_100C15428;
  v6 = v0[785];
  v7 = v0[761];

  return sub_100C4FC78(v7, v6);
}

uint64_t sub_100C1531C()
{
  v1 = v0[827];
  v2 = v0[821];
  v3 = v0[797];
  v4 = v0[761];
  v5 = v0[659];
  sub_100016590(v0[833], v0[839]);
  sub_100016590(v2, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6 = v0[851];
  v7 = v0[635];
  v8 = v0[629];
  v9 = v0[611];
  v10 = v0[605];
  v11 = v0[587];
  v12 = v0[569];
  sub_1000BB27C(0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100C15428(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 6856);
  v6 = *v2;
  *(v4 + 6904) = a1;
  *(v4 + 6952) = v1;

  v7 = *(v3 + 4504);
  if (v1)
  {
    v8 = sub_100C1582C;
  }

  else
  {
    v8 = sub_100C15560;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C15560()
{
  v1 = v0[671];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reading S2, payload, vbVersion, refPubKey, and sysPubKey.", v4, 2u);
  }

  v5 = v0[665];
  v6 = v0[659];

  v7 = swift_allocObject();
  v0[875] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
  swift_asyncLet_begin();
  v8 = swift_allocObject();
  v0[881] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();
  v9 = swift_allocObject();
  v0[887] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  v0[893] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();
  v11 = swift_allocObject();
  v0[894] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 82, v0 + 545, sub_100C15924, v0 + 472);
}

uint64_t sub_100C1582C()
{
  v1 = v0[797];
  v2 = v0[761];
  v3 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v0[869];
  v5 = v0[635];
  v6 = v0[629];
  v7 = v0[611];
  v8 = v0[605];
  v9 = v0[587];
  v10 = v0[569];
  sub_1000BB27C(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C15924()
{
  v1[895] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 322, v1 + 543, sub_100C180B4, v1 + 482);
  }

  else
  {
    v2 = v1[545];
    v1[896] = v2;
    v3 = v1[546];
    v1[897] = v3;
    sub_10002E98C(v2, v3);

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 547, sub_100C159EC, v1 + 530);
  }
}

uint64_t sub_100C159EC()
{
  v1[898] = v0;
  if (v0)
  {
    v2 = v1[563];

    return _swift_task_switch(sub_100C18318, v2, 0);
  }

  else
  {
    v3 = v1[547];
    v1[899] = v3;
    v4 = v1[548];
    v1[900] = v4;
    sub_10002E98C(v3, v4);

    return _swift_asyncLet_get_throwing(v1 + 242, v1 + 549, sub_100C15AAC, v1 + 582);
  }
}

uint64_t sub_100C15AAC()
{
  v1[901] = v0;
  if (v0)
  {
    v2 = v1[563];

    return _swift_task_switch(sub_100C18600, v2, 0);
  }

  else
  {
    v3 = v1[549];
    v1[902] = v3;
    v4 = v1[550];
    v1[903] = v4;
    sub_10002E98C(v3, v4);

    return _swift_asyncLet_get_throwing(v1 + 2, v1 + 553, sub_100C15B6C, v1 + 618);
  }
}

uint64_t sub_100C15B6C()
{
  v1[904] = v0;
  if (v0)
  {
    v2 = v1[563];

    return _swift_task_switch(sub_100C18904, v2, 0);
  }

  else
  {
    v3 = v1[553];
    v1[905] = v3;
    v4 = v1[554];
    v1[906] = v4;
    sub_10002E98C(v3, v4);

    return _swift_asyncLet_get_throwing(v1 + 322, v1 + 543, sub_100C15C2C, v1 + 654);
  }
}

uint64_t sub_100C15C2C()
{
  *(v1 + 7256) = v0;
  if (v0)
  {
    v2 = sub_100C18C24;
  }

  else
  {
    v2 = sub_100C15C60;
  }

  return _swift_task_switch(v2, *(v1 + 4504), 0);
}

uint64_t sub_100C15C60()
{
  v238 = v0;
  v1 = *(v0 + 7176);
  v2 = *(v0 + 7168);
  v3 = *(v0 + 5128);
  v4 = *(v0 + 4504);
  v5 = *(v0 + 4344);
  *(v0 + 7264) = v5;
  v6 = *(v0 + 4352);
  *(v0 + 7272) = v6;
  v7 = (*(v4 + v3) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2);
  v8 = *v7;
  v9 = v7[1];
  *v7 = v2;
  v7[1] = v1;
  sub_10002E98C(v2, v1);

  sub_10002E98C(v5, v6);
  sub_100006654(v8, v9);

  v236 = v5;
  if (v1 >> 60 != 15)
  {
    v10 = *(v0 + 5368);
    sub_100017D5C(*(v0 + 7168), *(v0 + 7176));
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 7176);
    if (!v13)
    {
      v25 = *(v0 + 7168);

      sub_100006654(v25, v14);
      goto LABEL_14;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *&v237 = v16;
    *v15 = 134218242;
    v22 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v22 != 2)
      {
        v23 = v6;
        v24 = 0;
        goto LABEL_13;
      }

      v26 = *(*(v0 + 7168) + 16);
      v27 = *(*(v0 + 7168) + 24);
      v28 = __OFSUB__(v27, v26);
      v24 = v27 - v26;
      if (!v28)
      {
        v23 = v6;
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (!v22)
      {
        v23 = v6;
        v24 = *(v0 + 7182);
LABEL_13:
        v31 = *(v0 + 7176);
        v32 = *(v0 + 7168);
        *(v15 + 4) = v24;
        *(v15 + 12) = 2080;
        v33 = Data.hexString.getter();
        v35 = sub_1000136BC(v33, v34, &v237);

        *(v15 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v11, v12, "Read S2[%ld]: %s", v15, 0x16u);
        sub_100007BAC(v21);

        sub_100006654(v32, v31);

        v6 = v23;
        v5 = v236;
        goto LABEL_14;
      }

      v29 = *(v0 + 7168);
      v30 = *(v0 + 7172);
      v28 = __OFSUB__(v30, v29);
      LODWORD(v24) = v30 - v29;
      if (!v28)
      {
        v23 = v6;
        v24 = v24;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

LABEL_14:
  v36 = *(v0 + 7200);
  v235 = v6;
  if (v36 >> 60 == 15)
  {
    v37 = *(v0 + 7256);
LABEL_37:
    v121 = *(v0 + 7224);
    if (v121 >> 60 == 15)
    {
LABEL_56:
      v164 = *(v0 + 7248);
      v165 = *(v0 + 7240);
      v166 = (*(*(v0 + 4504) + *(v0 + 5128)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
      v167 = *v166;
      v168 = v166[1];
      *v166 = v165;
      v166[1] = v164;
      sub_10002E98C(v165, v164);

      sub_100006654(v167, v168);

      if (v164 >> 60 == 15)
      {
        goto LABEL_71;
      }

      v169 = *(v0 + 5368);
      sub_100017D5C(*(v0 + 7240), *(v0 + 7248));
      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.default.getter();
      v172 = os_log_type_enabled(v170, v171);
      v173 = *(v0 + 7248);
      if (!v172)
      {
        v178 = *(v0 + 7240);

        sub_100006654(v178, v173);
LABEL_70:
        v5 = v236;
LABEL_71:
        v188 = (*(*(v0 + 4504) + *(v0 + 5128)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
        v189 = *v188;
        v190 = v188[1];
        *v188 = v5;
        v188[1] = v6;
        sub_10002E98C(v5, v6);

        sub_100006654(v189, v190);

        if (v6 >> 60 != 15)
        {
          v191 = *(v0 + 5368);
          sub_100017D5C(v5, v6);
          v192 = Logger.logObject.getter();
          v193 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v195 = v16;
            *&v237 = v16;
            *v194 = 134218242;
            v196 = v6 >> 62;
            if ((v6 >> 62) > 1)
            {
              if (v196 != 2)
              {
                v197 = 0;
                goto LABEL_84;
              }

              v199 = *(v5 + 16);
              v198 = *(v5 + 24);
              v28 = __OFSUB__(v198, v199);
              v197 = v198 - v199;
              if (!v28)
              {
                goto LABEL_84;
              }

              __break(1u);
            }

            else if (!v196)
            {
              v197 = BYTE6(v6);
LABEL_84:
              *(v194 + 4) = v197;
              *(v194 + 12) = 2080;
              v200 = Data.hexString.getter();
              v202 = sub_1000136BC(v200, v201, &v237);

              *(v194 + 14) = v202;
              _os_log_impl(&_mh_execute_header, v192, v193, "Read sysPubKey[%ld]: %s", v194, 0x16u);
              sub_100007BAC(v195);

              sub_100006654(v5, v6);

              goto LABEL_85;
            }

            LODWORD(v197) = HIDWORD(v5) - v5;
            if (!__OFSUB__(HIDWORD(v5), v5))
            {
              v197 = v197;
              goto LABEL_84;
            }

LABEL_107:
            __break(1u);
            return Task.value.getter(v16, v17, v18, v19, v20);
          }

          sub_100006654(v5, v6);
        }

LABEL_85:
        v203 = *(v0 + 5368);
        v204 = Logger.logObject.getter();
        v205 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&_mh_execute_header, v204, v205, "Generated collaborative share", v206, 2u);
        }

        v207 = *(v0 + 5128);
        v208 = *(v0 + 4504);

        v209 = (*(v208 + v207) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
        v210 = *v209;
        v211 = v209[1];
        if (v211 >> 60 == 15)
        {
          v212 = 0;
        }

        else
        {
          v212 = *v209;
        }

        if (v211 >> 60 == 15)
        {
          v213 = 0xF000000000000000;
        }

        else
        {
          v213 = v209[1];
        }

        sub_10002E98C(v210, v211);
        v214 = sub_100C4DB3C((v0 + 3976), v212, v213);
        *(v0 + 7296) = v37;
        *(v0 + 7304) = v214;
        *(v0 + 7312) = v215;
        *(v0 + 7320) = v216;
        if (v37)
        {
          v217 = *(v0 + 7248);
          v218 = *(v0 + 7240);
          v219 = *(v0 + 7224);
          v220 = *(v0 + 7216);
          v221 = *(v0 + 7200);
          v222 = v5;
          v223 = *(v0 + 7192);
          sub_100006654(*(v0 + 7168), *(v0 + 7176));
          sub_100006654(v223, v221);
          sub_100006654(v220, v219);
          sub_100006654(v218, v217);
          sub_100006654(v222, v235);
          sub_100006654(v210, v211);
          v73 = sub_100C191D0;
          v74 = v0 + 2576;
          v75 = v0 + 4344;
          v149 = 5520;
          goto LABEL_95;
        }

        v224 = *(v0 + 5128);
        v225 = *(v0 + 4504);
        sub_100006654(v210, v211);
        sub_10000A748((v0 + 3976), v0 + 3896);
        v226 = *(v225 + v224);
        sub_10001F280(v0 + 3896, v0 + 4056);
        v227 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
        swift_beginAccess();

        sub_10002311C(v0 + 4056, v226 + v227, &qword_101697378, &unk_101391940);
        swift_endAccess();

        v228 = async function pointer to Task.value.getter[1];
        v229 = swift_task_alloc();
        *(v0 + 7328) = v229;
        v19 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        *v229 = v0;
        v229[1] = sub_100C17014;
        v17 = *(v0 + 6904);
        v18 = &type metadata for Data;
        v20 = &protocol self-conformance witness table for Error;
        v16 = v0 + 4408;

        return Task.value.getter(v16, v17, v18, v19, v20);
      }

      v174 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v175 = v16;
      *&v237 = v16;
      *v174 = 134218242;
      v176 = v173 >> 62;
      if ((v173 >> 62) > 1)
      {
        if (v176 != 2)
        {
          v177 = 0;
          goto LABEL_69;
        }

        v179 = *(*(v0 + 7240) + 16);
        v180 = *(*(v0 + 7240) + 24);
        v28 = __OFSUB__(v180, v179);
        v177 = v180 - v179;
        if (!v28)
        {
          goto LABEL_69;
        }

        __break(1u);
      }

      else if (!v176)
      {
        v177 = *(v0 + 7254);
LABEL_69:
        v183 = *(v0 + 7248);
        v184 = *(v0 + 7240);
        *(v174 + 4) = v177;
        *(v174 + 12) = 2080;
        v185 = Data.hexString.getter();
        v187 = sub_1000136BC(v185, v186, &v237);

        *(v174 + 14) = v187;
        _os_log_impl(&_mh_execute_header, v170, v171, "Read refPubKey[%ld]: %s", v174, 0x16u);
        sub_100007BAC(v175);

        sub_100006654(v184, v183);

        v6 = v235;
        goto LABEL_70;
      }

      v181 = *(v0 + 7240);
      v182 = *(v0 + 7244);
      v28 = __OFSUB__(v182, v181);
      LODWORD(v177) = v182 - v181;
      if (!v28)
      {
        v177 = v177;
        goto LABEL_69;
      }

LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v122 = *(v0 + 5368);
    sub_100017D5C(*(v0 + 7216), v121);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v123, v124))
    {
LABEL_50:

      v139 = sub_100C50F50(*(v0 + 7216), *(v0 + 7224));
      *(v0 + 7288) = v37;
      if (v37)
      {
        v141 = *(v0 + 7248);
        v142 = *(v0 + 7240);
        v143 = *(v0 + 7224);
        v144 = *(v0 + 7216);
        v145 = *(v0 + 7200);
        v146 = *(v0 + 7192);
        v147 = *(v0 + 7176);
        v148 = *(v0 + 7168);
        sub_100006654(v144, v143);
        sub_100006654(v236, v6);
        sub_100006654(v142, v141);
        sub_100006654(v144, v143);
        sub_100006654(v146, v145);
        sub_100006654(v148, v147);
        v73 = sub_100C16DA8;
        v74 = v0 + 2576;
        v75 = v0 + 4344;
        v149 = 6960;
LABEL_95:
        v76 = v0 + v149;
        goto LABEL_96;
      }

      v150 = v140;
      v151 = *(v0 + 5368);
      v152 = *(*(v0 + 4504) + *(v0 + 5128));
      v153 = *(v152 + 96);
      v154 = v139;
      *(v152 + 88) = v139;
      *(v152 + 96) = v140;
      swift_bridgeObjectRetain_n();

      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.default.getter();

      v157 = os_log_type_enabled(v155, v156);
      v158 = *(v0 + 7224);
      v159 = *(v0 + 7216);
      if (v157)
      {
        v160 = swift_slowAlloc();
        v161 = v6;
        v162 = swift_slowAlloc();
        *&v237 = v162;
        *v160 = 136315138;
        v163 = sub_1000136BC(v154, v150, &v237);

        *(v160 + 4) = v163;
        _os_log_impl(&_mh_execute_header, v155, v156, "systemVersion: %s", v160, 0xCu);
        sub_100007BAC(v162);
        v6 = v161;

        sub_100006654(v159, v158);
      }

      else
      {
        sub_100006654(*(v0 + 7216), *(v0 + 7224));
      }

      v37 = 0;
      v5 = v236;
      goto LABEL_56;
    }

    v125 = *(v0 + 7224);
    v126 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v127 = v16;
    *&v237 = v16;
    *v126 = 134218242;
    v128 = v125 >> 62;
    if ((v125 >> 62) > 1)
    {
      if (v128 != 2)
      {
        v129 = 0;
        goto LABEL_49;
      }

      v130 = *(*(v0 + 7216) + 16);
      v131 = *(*(v0 + 7216) + 24);
      v28 = __OFSUB__(v131, v130);
      v129 = v131 - v130;
      if (!v28)
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    else if (!v128)
    {
      v129 = *(v0 + 7230);
LABEL_49:
      v134 = *(v0 + 7224);
      v135 = *(v0 + 7216);
      *(v126 + 4) = v129;
      *(v126 + 12) = 2080;
      v136 = Data.hexString.getter();
      v138 = sub_1000136BC(v136, v137, &v237);

      *(v126 + 14) = v138;
      _os_log_impl(&_mh_execute_header, v123, v124, "Read vbVersion[%ld]: %s", v126, 0x16u);
      sub_100007BAC(v127);

      goto LABEL_50;
    }

    v132 = *(v0 + 7216);
    v133 = *(v0 + 7220);
    v28 = __OFSUB__(v133, v132);
    LODWORD(v129) = v133 - v132;
    if (!v28)
    {
      v129 = v129;
      goto LABEL_49;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v38 = *(v0 + 5368);
  sub_100017D5C(*(v0 + 7192), v36);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v0 + 7200);
    v42 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43 = v16;
    *&v237 = v16;
    *v42 = 134218242;
    v44 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v44 != 2)
      {
        v45 = 0;
        goto LABEL_27;
      }

      v46 = *(*(v0 + 7192) + 16);
      v47 = *(*(v0 + 7192) + 24);
      v28 = __OFSUB__(v47, v46);
      v45 = v47 - v46;
      if (!v28)
      {
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v44)
    {
      v45 = *(v0 + 7206);
LABEL_27:
      v50 = *(v0 + 7200);
      v51 = *(v0 + 7192);
      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v52 = Data.hexString.getter();
      v54 = sub_1000136BC(v52, v53, &v237);

      *(v42 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v39, v40, "Read payload[%ld]: %s", v42, 0x16u);
      sub_100007BAC(v43);

      goto LABEL_28;
    }

    v48 = *(v0 + 7192);
    v49 = *(v0 + 7196);
    v28 = __OFSUB__(v49, v48);
    LODWORD(v45) = v49 - v48;
    if (!v28)
    {
      v45 = v45;
      goto LABEL_27;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_28:

  v55 = *(v0 + 7364);
  v56 = *(v0 + 4696);
  BinaryDecoder.init()();
  if (v55)
  {
    v57 = sub_100C2A8F8();
    v58 = &type metadata for ProximityInfoPayload;
    v59 = sub_100C2A94C();
  }

  else
  {
    v57 = sub_100C2A9A0();
    v58 = &type metadata for AirTagInfoPayload;
    v59 = sub_100C2A9F4();
  }

  v60 = v59;
  v61 = *(v0 + 7256);
  v62 = *(v0 + 7200);
  v63 = *(v0 + 7192);
  v64 = *(v0 + 4696);
  *(v0 + 3712) = v58;
  *(v0 + 3720) = v57;
  *(v0 + 3728) = v59;
  sub_1000280DC((v0 + 3688));
  BinaryDecoder.decode<A>(_:from:)();
  *(v0 + 7280) = v61;
  if (!v61)
  {
    v231 = *(v0 + 4504);
    v233 = *(v0 + 5128);
    v77 = *(v231 + v233);
    v78 = v60[2];

    v79 = v78(v58, v60);
    v80 = (v77 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v81 = *(v77 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v82 = *(v77 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
    *v80 = v79;
    v80[1] = v83;
    sub_100006654(v81, v82);

    v84 = *(v231 + v233);
    v85 = v60[3];

    v86 = v85(v58, v60);
    v87 = (v84 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v88 = *(v84 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v89 = *(v84 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
    *v87 = v86;
    v87[1] = v90;
    sub_100006654(v88, v89);

    v91 = *(v231 + v233);
    v92 = v60[4];

    v93 = v92(v58, v60);
    v94 = (v91 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v95 = *(v91 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v96 = *(v91 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
    *v94 = v93;
    v94[1] = v97;
    sub_100006654(v95, v96);

    v98 = *(v231 + v233);
    v99 = v60[5];

    v100 = v99(v58, v60);
    sub_1004A4714(v100, v101, &v237);
    v102 = *(v0 + 5368);
    v103 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    v104 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
    *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v237;
    sub_100006654(v103, v104);

    sub_1001011C0(v0 + 3688, v0 + 3640);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    v107 = os_log_type_enabled(v105, v106);
    v108 = *(v0 + 7200);
    v109 = *(v0 + 7192);
    v110 = *(v0 + 4696);
    v111 = *(v0 + 4648);
    v112 = *(v0 + 4600);
    if (v107)
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&v237 = v114;
      *v113 = 136315138;
      v232 = v110;
      v234 = v112;
      v115 = *(v0 + 3680);
      sub_1000035D0((v0 + 3640), *(v0 + 3664));
      v116 = *(v115 + 8);
      v117 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v118;
      sub_100007BAC((v0 + 3640));
      v120 = sub_1000136BC(v117, v119, &v237);

      *(v113 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v105, v106, "decodedPayload: %s", v113, 0xCu);
      sub_100007BAC(v114);

      sub_100006654(v109, v108);
      (*(v111 + 8))(v232, v234);
    }

    else
    {
      sub_100006654(*(v0 + 7192), *(v0 + 7200));

      (*(v111 + 8))(v110, v112);
      sub_100007BAC((v0 + 3640));
    }

    v6 = v235;
    sub_100007BAC((v0 + 3688));
    v37 = 0;
    v5 = v236;
    goto LABEL_37;
  }

  v65 = *(v0 + 7248);
  v66 = *(v0 + 7240);
  v67 = *(v0 + 7224);
  v68 = *(v0 + 7216);
  v69 = *(v0 + 7200);
  v70 = *(v0 + 7192);
  v71 = *(v0 + 7176);
  v72 = *(v0 + 7168);
  (*(*(v0 + 4648) + 8))(*(v0 + 4696), *(v0 + 4600));
  sub_100006654(v72, v71);
  sub_100006654(v70, v69);
  sub_100006654(v68, v67);
  sub_100006654(v66, v65);
  sub_100006654(v236, v235);
  sub_100006654(v70, v69);
  sub_100101758((v0 + 3688));
  v73 = sub_100C18F60;
  v74 = v0 + 2576;
  v75 = v0 + 4344;
  v76 = v0 + 7104;
LABEL_96:

  return _swift_asyncLet_finish(v74, v75, v73, v76);
}

uint64_t sub_100C16ED0()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[911];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C17014()
{
  v2 = *v1;
  v3 = *(*v1 + 7328);
  v4 = *v1;
  *(*v1 + 7336) = v0;

  v5 = *(v2 + 4504);
  if (v0)
  {
    v6 = sub_100C19440;
  }

  else
  {
    v6 = sub_100C17140;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C17140()
{
  v177 = v0;
  v167 = *(v0 + 5848);
  v170 = *(v0 + 5896);
  v159 = *(v0 + 5752);
  v164 = *(v0 + 5800);
  v148 = *(v0 + 5656);
  v151 = *(v0 + 5704);
  v1 = *(v0 + 7360);
  v2 = *(v0 + 5608);
  v3 = *(v0 + 5560);
  v4 = *(v0 + 5512);
  v5 = *(v0 + 5416);
  v173 = *(v0 + 5368);
  v155 = *(v0 + 5128);
  v6 = *(v0 + 5080);
  v7 = *(v0 + 4936);
  v8 = *(v0 + 4504);
  v9 = *(v0 + 4408);
  v10 = *(v0 + 4416);
  (*(v0 + 5464))(v6, enum case for PairingExecutorState.InitiatePairing.commandFinish(_:), v5);
  v3(v6, 0, 1, v5);
  v148(v6, v1, v7);
  PairingExecutor.setState(_:)();
  v11 = v6;
  v12 = v9;
  v167(v11, v7);
  v13 = (*(v8 + v155) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation);
  v14 = *v13;
  v15 = v13[1];
  *v13 = v9;
  v13[1] = v10;

  sub_100017D5C(v9, v10);
  sub_100006654(v14, v15);

  sub_100017D5C(v9, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    v176[0] = v19;
    *v18 = 134218242;
    v24 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v24 != 2)
      {
        v25 = 0;
        goto LABEL_13;
      }

      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (!v28)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v25 = BYTE6(v10);
LABEL_13:
      *(v18 + 4) = v25;
      sub_100016590(v12, v10);
      *(v18 + 12) = 2080;
      v29 = Data.hexString.getter();
      v31 = sub_1000136BC(v29, v30, v176);

      *(v18 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v16, v17, "S1[%ld]: %s", v18, 0x16u);
      sub_100007BAC(v23);

      goto LABEL_14;
    }

    LODWORD(v25) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
      return _swift_asyncLet_finish(v19, v20, v21, v22);
    }

    v25 = v25;
    goto LABEL_13;
  }

  sub_100016590(v9, v10);
LABEL_14:

  v174 = v12;
  v32 = sub_100314604(76, qword_1013E04D0[*(v0 + 7364)]);
  if (v33 >> 60 == 15)
  {
    v34 = *(v0 + 7320);
    v35 = *(v0 + 7312);
    v36 = *(v0 + 7304);
    v37 = *(v0 + 7272);
    v38 = *(v0 + 7264);
    v39 = *(v0 + 7248);
    v40 = *(v0 + 7240);
    v152 = *(v0 + 7216);
    v156 = *(v0 + 7224);
    v160 = *(v0 + 7192);
    v165 = *(v0 + 7200);
    v168 = *(v0 + 7168);
    v171 = *(v0 + 7176);
    sub_100C29CEC();
    *(v0 + 7352) = swift_allocError();
    *v41 = 4;
    swift_willThrow();
    sub_100016590(v36, v35);

    sub_100016590(v174, v10);
    sub_100006654(v38, v37);
    sub_100006654(v40, v39);
    sub_100006654(v152, v156);
    sub_100006654(v160, v165);
    sub_100006654(v168, v171);
    sub_100007BAC((v0 + 3896));
    v21 = sub_100C17D7C;
    v19 = v0 + 2576;
    v20 = v0 + 4344;
    v42 = 6096;
  }

  else
  {
    v161 = *(v0 + 7336);
    v166 = v10;
    v43 = *(v0 + 7312);
    v44 = *(v0 + 4504);
    v45 = *(v44 + *(v0 + 5128));
    v46 = *(v0 + 7304);
    v48 = *(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    v47 = *(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
    if (v47 >> 60 == 15)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    }

    if (v47 >> 60 == 15)
    {
      v50 = 0xF000000000000000;
    }

    else
    {
      v50 = *(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
    }

    v51 = v32;
    v52 = *(v44 + *(v0 + 5128));
    v53 = v33;

    sub_10002E98C(v48, v47);
    v169 = v51;
    v172 = v53;
    sub_100C1A0A8(v49, v50, v46, v43, v51, v53, v175);
    *(v0 + 7344) = v161;
    if (v161)
    {
      v162 = *(v0 + 7312);
      v153 = *(v0 + 7320);
      v157 = *(v0 + 7304);
      v146 = *(v0 + 7264);
      v149 = *(v0 + 7272);
      v142 = *(v0 + 7240);
      v144 = *(v0 + 7248);
      v54 = *(v0 + 7224);
      v55 = *(v0 + 7216);
      v56 = *(v0 + 7200);
      v57 = *(v0 + 7192);
      v58 = *(v0 + 7176);
      v59 = *(v0 + 7168);
      sub_100007BAC((v0 + 3896));
      sub_100006654(v59, v58);
      sub_100006654(v57, v56);
      sub_100006654(v55, v54);
      sub_100006654(v142, v144);
      sub_100006654(v146, v149);
      sub_100006654(v48, v47);

      sub_100006654(v169, v172);
      sub_100016590(v174, v166);

      sub_100016590(v157, v162);
      v21 = sub_100C197C0;
      v19 = v0 + 2576;
      v20 = v0 + 4344;
      v42 = 6336;
    }

    else
    {
      v60 = *(v0 + 5368);
      v61 = *(v0 + 5128);
      v62 = *(v0 + 4504);
      sub_100006654(v48, v47);

      v63 = v175[9];
      *(v0 + 3384) = v175[8];
      *(v0 + 3400) = v63;
      v64 = v175[11];
      *(v0 + 3416) = v175[10];
      *(v0 + 3432) = v64;
      v65 = v175[5];
      *(v0 + 3320) = v175[4];
      *(v0 + 3336) = v65;
      v66 = v175[7];
      *(v0 + 3352) = v175[6];
      *(v0 + 3368) = v66;
      v67 = v175[1];
      *(v0 + 3256) = v175[0];
      *(v0 + 3272) = v67;
      v68 = v175[3];
      *(v0 + 3288) = v175[2];
      *(v0 + 3304) = v68;
      SharingCircleWildAdvertisementKey.init(key:)(v0 + 3256);
      v69 = (v62 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
      v70 = *(v62 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 48);
      v72 = *(v62 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
      v71 = *(v62 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 16);
      *(v0 + 3480) = *(v62 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 32);
      *(v0 + 3496) = v70;
      *(v0 + 3448) = v72;
      *(v0 + 3464) = v71;
      v73 = v69[7];
      v75 = v69[4];
      v74 = v69[5];
      *(v0 + 3544) = v69[6];
      *(v0 + 3560) = v73;
      *(v0 + 3512) = v75;
      *(v0 + 3528) = v74;
      v76 = v69[11];
      v78 = v69[8];
      v77 = v69[9];
      *(v0 + 3608) = v69[10];
      *(v0 + 3624) = v76;
      *(v0 + 3576) = v78;
      *(v0 + 3592) = v77;
      v79 = *(v0 + 3256);
      v80 = *(v0 + 3272);
      v81 = *(v0 + 3304);
      v69[2] = *(v0 + 3288);
      v69[3] = v81;
      *v69 = v79;
      v69[1] = v80;
      v82 = *(v0 + 3320);
      v83 = *(v0 + 3336);
      v84 = *(v0 + 3368);
      v69[6] = *(v0 + 3352);
      v69[7] = v84;
      v69[4] = v82;
      v69[5] = v83;
      v85 = *(v0 + 3384);
      v86 = *(v0 + 3400);
      v87 = *(v0 + 3432);
      v69[10] = *(v0 + 3416);
      v69[11] = v87;
      v69[8] = v85;
      v69[9] = v86;
      sub_10000B3A8(v0 + 3448, &qword_10169F440, &unk_1013A0950);
      v88 = *(v62 + v61);
      v89 = *(v88 + 104);
      v90 = *(v88 + 112);
      *(v88 + 104) = v169;
      *(v88 + 112) = v53;

      sub_10002E98C(v169, v53);
      sub_100006654(v89, v90);

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&_mh_execute_header, v91, v92, "Created pairing check data", v93, 2u);
      }

      v94 = *(v0 + 7320);
      v95 = *(v0 + 5320);
      v96 = *(v0 + 5272);
      v97 = *(v0 + 5128);
      v98 = *(v0 + 4504);
      v99 = *(v0 + 4456);

      v100 = *(v98 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_crypto);
      *(v98 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_crypto) = v94;

      v101 = (v98 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
      v102 = *(v98 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
      *v101 = v96;
      v101[1] = v95;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_10001F280(v99, v0 + 4136);
      v103 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheral;
      swift_beginAccess();
      sub_10002311C(v0 + 4136, v98 + v103, &qword_1016A12E8, &qword_1013A51D8);
      swift_endAccess();
      v104 = *(v98 + v97);
      v105 = (v104 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v106 = *(v104 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
      if (v106 >> 60 == 15)
      {
        v107 = 0;
        v108 = 0;
      }

      else
      {
        v109 = *(v0 + 5128);
        v110 = *(v0 + 4552);
        v111 = *(v0 + 4504);
        v112 = *v105;
        sub_100017D5C(*v105, *(v104 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8));
        static String.Encoding.utf8.getter();
        v107 = String.init(data:encoding:)();
        v108 = v113;
        sub_100006654(v112, v106);
        v104 = *(v111 + v109);
      }

      v114 = *(v104 + 96);
      v115 = 0xE000000000000000;
      if (v114)
      {
        v116 = *(v104 + 88);
        v117 = v114;
      }

      else
      {
        v116 = 0;
        v117 = 0xE000000000000000;
      }

      v136 = *(v0 + 7320);
      v135 = *(v0 + 7312);
      v134 = *(v0 + 7304);
      v138 = *(v0 + 7272);
      v137 = *(v0 + 7264);
      v140 = *(v0 + 7248);
      v139 = *(v0 + 7240);
      v143 = *(v0 + 7224);
      v141 = *(v0 + 7216);
      v147 = *(v0 + 7200);
      v145 = *(v0 + 7192);
      v154 = *(v0 + 7176);
      v150 = *(v0 + 7168);
      v163 = *(v0 + 5896);
      v158 = *(v0 + 5848);
      v133 = *(v0 + 5800);
      v132 = *(v0 + 5752);
      v131 = *(v0 + 5704);
      v118 = *(v0 + 5656);
      v119 = *(v0 + 7360);
      v120 = *(v0 + 5608);
      v121 = *(v0 + 5560);
      v122 = *(v0 + 5512);
      v123 = *(v0 + 5464);
      v124 = *(v0 + 5416);
      v125 = *(v0 + 5032);
      v126 = v108 == 0;
      if (v108)
      {
        v115 = v108;
      }

      v127 = *(v0 + 4936);
      if (v126)
      {
        v128 = 0;
      }

      else
      {
        v128 = v107;
      }

      v129 = *(v0 + 4504);
      *v125 = v128;
      v125[1] = v115;
      v125[2] = v116;
      v125[3] = v117;
      v123(v125, enum case for PairingExecutorState.InitiatePairing.result(_:), v124);
      v121(v125, 0, 1, v124);
      v118(v125, v119, v127);

      PairingExecutor.setState(_:)();
      sub_100016590(v134, v135);

      sub_100006654(v169, v172);
      sub_100016590(v174, v166);
      sub_100006654(v137, v138);
      sub_100006654(v139, v140);
      sub_100006654(v141, v143);
      sub_100006654(v145, v147);
      sub_100006654(v150, v154);
      v158(v125, v127);
      sub_100007BAC((v0 + 3896));
      v21 = sub_100C17B04;
      v19 = v0 + 2576;
      v20 = v0 + 4344;
      v42 = 6720;
    }
  }

  v22 = v0 + v42;

  return _swift_asyncLet_finish(v19, v20, v21, v22);
}

uint64_t sub_100C17C30()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  v9 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[894];
  v15 = v0[605];
  v16 = v0[587];
  v17 = v0[569];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C17EA8()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[919];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C17FEC()
{
  v1 = v0[653];
  v2 = v0[635];
  v3 = v0[629];
  v4 = v0[611];
  v5 = v0[605];
  v6 = v0[587];
  v7 = v0[569];
  sub_1000BB27C(0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C181D4()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[895];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C18318()
{
  sub_100006654(*(v0 + 7168), *(v0 + 7176));

  return _swift_asyncLet_finish(v0 + 2576, v0 + 4344, sub_100C18390, v0 + 4304);
}

uint64_t sub_100C184BC()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[898];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C18600()
{
  v1 = v0[897];
  v2 = v0[896];
  sub_100006654(v0[899], v0[900]);
  sub_100006654(v2, v1);

  return _swift_asyncLet_finish(v0 + 322, v0 + 543, sub_100C18694, v0 + 588);
}

uint64_t sub_100C187C0()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[901];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C18904()
{
  v1 = v0[900];
  v2 = v0[899];
  v3 = v0[897];
  v4 = v0[896];
  sub_100006654(v0[902], v0[903]);
  sub_100006654(v2, v1);
  sub_100006654(v4, v3);

  return _swift_asyncLet_finish(v0 + 322, v0 + 543, sub_100C189B4, v0 + 624);
}

uint64_t sub_100C18AE0()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[904];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C18C24()
{
  v1 = v0[903];
  v2 = v0[902];
  v3 = v0[900];
  v4 = v0[899];
  v5 = v0[897];
  v6 = v0[896];
  sub_100006654(v0[905], v0[906]);
  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  sub_100006654(v6, v5);

  return _swift_asyncLet_finish(v0 + 322, v0 + 543, sub_100C18CF0, v0 + 660);
}

uint64_t sub_100C18E1C()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[907];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C1908C()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[910];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C192FC()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[912];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C19440()
{
  v1 = v0[915];
  v2 = v0[909];
  v3 = v0[908];
  v4 = v0[906];
  v5 = v0[905];
  v6 = v0[903];
  v7 = v0[902];
  v8 = v0[900];
  v9 = v0[899];
  v11 = v0[896];
  v12 = v0[897];
  sub_100016590(v0[913], v0[914]);

  sub_100006654(v3, v2);
  sub_100006654(v5, v4);
  sub_100006654(v7, v6);
  sub_100006654(v9, v8);
  sub_100006654(v11, v12);
  sub_100007BAC(v0 + 487);

  return _swift_asyncLet_finish(v0 + 322, v0 + 543, sub_100C19550, v0 + 732);
}

uint64_t sub_100C1967C()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[917];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C198EC()
{
  v1 = v0[893];
  v2 = v0[887];
  v3 = v0[881];
  v4 = v0[875];
  v5 = v0[863];
  v6 = v0[797];
  v7 = v0[761];
  v8 = v0[659];
  sub_100016590(v0[821], v0[827]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[918];
  v10 = v0[894];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[611];
  v14 = v0[605];
  v15 = v0[587];
  v16 = v0[569];
  sub_1000BB27C(&unk_1013E03A0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C19A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19AE8;

  return (sub_100C513F4)(a2, a3);
}

uint64_t sub_100C19AE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100C19C44, 0, 0);
  }
}

uint64_t sub_100C19C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19D24;

  return (sub_100C51BDC)(a2, a3);
}

uint64_t sub_100C19D24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100C2AB64, 0, 0);
  }
}

uint64_t sub_100C19E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19D24;

  return (sub_100C52650)(a2, a3);
}

uint64_t sub_100C19F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19D24;

  return (sub_100C528C4)(a2, a3);
}

uint64_t sub_100C19FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100C19D24;

  return (sub_100C52B38)(a2, a3);
}

uint64_t sub_100C1A0A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = type metadata accessor for Endianness();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v100 = a2;
  if (a2 >> 60 == 15)
  {
    sub_100C29DC0();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    return swift_willThrow();
  }

  v94 = a7;
  v95 = a3;
  v96 = a4;
  v18 = (v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v19 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v19 >> 60 == 15 || (v20 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8), v20 >> 60 == 15) || (v21 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v21 >> 60 == 15))
  {
    v22 = a1;
    sub_100017D5C(a1, v100);
LABEL_7:
    if (v18[1] >> 60 == 15)
    {
      v23 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_100A5B2CC((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[16 * v25];
      *(v26 + 4) = 1684628325;
      *(v26 + 5) = 0xE400000000000000;
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100A5B2CC(0, *(v23 + 2) + 1, 1, v23);
      }

      v28 = *(v23 + 2);
      v27 = *(v23 + 3);
      if (v28 >= v27 >> 1)
      {
        v23 = sub_100A5B2CC((v27 > 1), v28 + 1, 1, v23);
      }

      *(v23 + 2) = v28 + 1;
      v29 = &v23[16 * v28];
      *(v29 + 4) = 0x644970696863;
      *(v29 + 5) = 0xE600000000000000;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100A5B2CC(0, *(v23 + 2) + 1, 1, v23);
      }

      v31 = *(v23 + 2);
      v30 = *(v23 + 3);
      if (v31 >= v30 >> 1)
      {
        v23 = sub_100A5B2CC((v30 > 1), v31 + 1, 1, v23);
      }

      *(v23 + 2) = v31 + 1;
      v32 = &v23[16 * v31];
      strcpy(v32 + 32, "serialNumber");
      v32[45] = 0;
      *(v32 + 23) = -5120;
    }

    if (!v7[12])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100A5B2CC(0, *(v23 + 2) + 1, 1, v23);
      }

      v34 = *(v23 + 2);
      v33 = *(v23 + 3);
      if (v34 >= v33 >> 1)
      {
        v23 = sub_100A5B2CC((v33 > 1), v34 + 1, 1, v23);
      }

      *(v23 + 2) = v34 + 1;
      v35 = &v23[16 * v34];
      strcpy(v35 + 32, "systemVersion");
      *(v35 + 23) = -4864;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2 + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100A5B2CC(0, *(v23 + 2) + 1, 1, v23);
      }

      v37 = *(v23 + 2);
      v36 = *(v23 + 3);
      if (v37 >= v36 >> 1)
      {
        v23 = sub_100A5B2CC((v36 > 1), v37 + 1, 1, v23);
      }

      *(v23 + 2) = v37 + 1;
      v38 = &v23[16 * v37];
      strcpy(v38 + 32, "signature(S2)");
      *(v38 + 23) = -4864;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100A5B2CC(0, *(v23 + 2) + 1, 1, v23);
      }

      v40 = *(v23 + 2);
      v39 = *(v23 + 3);
      if (v40 >= v39 >> 1)
      {
        v23 = sub_100A5B2CC((v39 > 1), v40 + 1, 1, v23);
      }

      *(v23 + 2) = v40 + 1;
      v41 = &v23[16 * v40];
      *(v41 + 4) = 0x7461747365747461;
      *(v41 + 5) = 0xEF293153286E6F69;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100A5B2CC(0, *(v23 + 2) + 1, 1, v23);
      }

      v43 = *(v23 + 2);
      v42 = *(v23 + 3);
      if (v43 >= v42 >> 1)
      {
        v23 = sub_100A5B2CC((v42 > 1), v43 + 1, 1, v23);
      }

      *(v23 + 2) = v43 + 1;
      v44 = &v23[16 * v43];
      *(v44 + 4) = 0x755079654B666572;
      *(v44 + 5) = 0xEF79654B63696C62;
    }

    if (*(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8) >> 60 == 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100A5B2CC(0, *(v23 + 2) + 1, 1, v23);
      }

      v46 = *(v23 + 2);
      v45 = *(v23 + 3);
      if (v46 >= v45 >> 1)
      {
        v23 = sub_100A5B2CC((v45 > 1), v46 + 1, 1, v23);
      }

      *(v23 + 2) = v46 + 1;
      v47 = &v23[16 * v46];
      *(v47 + 4) = 0x755079654B666572;
      *(v47 + 5) = 0xEF79654B63696C62;
    }

    v101[4] = v23;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_10012B138();
    v48 = BidirectionalCollection<>.joined(separator:)();
    v50 = v49;

    v51._countAndFlagsBits = v48;
    v51._object = v50;
    String.append(_:)(v51);

    v52._countAndFlagsBits = 33;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    sub_100C29DC0();
    swift_allocError();
    *v53 = 0x20676E697373694DLL;
    v53[1] = 0xE800000000000000;
    swift_willThrow();
    return sub_100006654(v22, v100);
  }

  v54 = *v18;
  v92 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v93 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  sub_10002E98C(a1, v100);
  v91 = v54;
  sub_10002E98C(v54, v19);
  v90 = v20;
  sub_10002E98C(v93, v20);
  sub_10002E98C(v92, v21);
  static String.Encoding.utf8.getter();
  v55 = String.init(data:encoding:)();
  if (!v56)
  {
    sub_100006654(v92, v21);
    sub_100006654(v93, v20);
    sub_100006654(v54, v19);
    v22 = a1;
    goto LABEL_7;
  }

  v88 = v21;
  v89 = v19;
  if (!v7[12])
  {

    sub_100006654(v92, v21);
    sub_100006654(v93, v20);
    sub_100006654(v54, v19);
    v22 = a1;
    goto LABEL_7;
  }

  v57 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2 + 8);
  if (v57 >> 60 == 15)
  {

    sub_100006654(v92, v21);
    v58 = v93;
LABEL_65:
    sub_100006654(v58, v20);
    sub_100006654(v54, v19);
    v22 = a1;
    goto LABEL_7;
  }

  v59 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8);
  if (v59 >> 60 == 15 || *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8) >> 60 == 15 || (v60 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8), v60 >> 60 == 15))
  {

    sub_100006654(v92, v88);
    v58 = v93;
    goto LABEL_65;
  }

  v87 = v55;
  v78 = v56;
  v81 = v7;
  v83 = v7[11];
  v61 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2);
  v62 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation);
  v63 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
  v64 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
  v86 = v7[12];
  v65 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8);
  v66 = v60;

  v82 = v61;
  sub_10002E98C(v61, v57);
  v80 = v62;
  sub_10002E98C(v62, v59);
  v79 = v63;
  v85 = v65;
  sub_10002E98C(v63, v65);
  v84 = v66;
  sub_10002E98C(v64, v66);
  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000076D4(v67, qword_10177BEA8);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v101[0] = v71;
    *v70 = 136315138;
    *(v70 + 4) = sub_1000136BC(v87, v78, v101);
    _os_log_impl(&_mh_execute_header, v68, v69, "SerialNumber: %s", v70, 0xCu);
    sub_100007BAC(v71);
  }

  v72 = v81[13];
  v73 = v81[14];
  v81[13] = a5;
  v81[14] = a6;
  sub_100017D5C(a5, a6);
  sub_100006654(v72, v73);
  sub_100313B54(a5, a6);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v101[0]))
  {
    v74 = 0;
  }

  else
  {
    v74 = SLODWORD(v101[0]);
  }

  v75 = sub_100313A28(a5, a6);
  sub_100006654(v92, v88);
  v76 = v81[2];
  v77 = v81[3];
  sub_100017D5C(v76, v77);
  result = sub_100017D5C(v95, v96);
  *v94 = v91;
  v94[1] = v89;
  v94[2] = v93;
  v94[3] = v90;
  v94[4] = v87;
  v94[5] = v78;
  v94[6] = v74;
  v94[7] = v75;
  v94[8] = v83;
  v94[9] = v86;
  v94[10] = v82;
  v94[11] = v57;
  v94[12] = v80;
  v94[13] = v59;
  v94[14] = v79;
  v94[15] = v85;
  v94[16] = v64;
  v94[17] = v84;
  v94[18] = v76;
  v94[19] = v77;
  v94[20] = a1;
  v94[21] = v100;
  v94[22] = v95;
  v94[23] = v96;
  return result;
}

uint64_t sub_100C1ACA0()
{
  v1[781] = v0;
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v1[787] = v2;
  v3 = *(v2 - 8);
  v1[793] = v3;
  v4 = *(v3 + 64) + 15;
  v1[799] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock.Instant();
  v1[805] = v5;
  v6 = *(v5 - 8);
  v1[811] = v6;
  v7 = *(v6 + 64) + 15;
  v1[817] = swift_task_alloc();
  v1[823] = swift_task_alloc();
  v1[829] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v1[835] = v8;
  v9 = *(v8 - 8);
  v1[841] = v9;
  v10 = *(v9 + 64) + 15;
  v1[847] = swift_task_alloc();
  v1[853] = swift_task_alloc();
  v11 = type metadata accessor for PairingExecutorState();
  v1[859] = v11;
  v12 = *(v11 - 8);
  v1[865] = v12;
  v13 = *(v12 + 64) + 15;
  v1[871] = swift_task_alloc();

  return _swift_task_switch(sub_100C1AECC, v0, 0);
}

uint64_t sub_100C1AECC()
{
  v1 = (v0 + 3896);
  v2 = (*(v0 + 6248) + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 3928) = v2[2];
  *(v0 + 3944) = v3;
  *(v0 + 3896) = v5;
  *(v0 + 3912) = v4;
  v6 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  *(v0 + 3992) = v2[6];
  *(v0 + 4008) = v6;
  *(v0 + 3960) = v8;
  *(v0 + 3976) = v7;
  v9 = v2[11];
  v11 = v2[8];
  v10 = v2[9];
  *(v0 + 4056) = v2[10];
  *(v0 + 4072) = v9;
  *(v0 + 4024) = v11;
  *(v0 + 4040) = v10;
  v12 = *v2;
  v13 = v2[1];
  v14 = v2[3];
  *(v0 + 4888) = v2[2];
  *(v0 + 4904) = v14;
  *(v0 + 4856) = v12;
  *(v0 + 4872) = v13;
  v15 = v2[4];
  v16 = v2[5];
  v17 = v2[7];
  *(v0 + 4952) = v2[6];
  *(v0 + 4968) = v17;
  *(v0 + 4920) = v15;
  *(v0 + 4936) = v16;
  v18 = v2[8];
  v19 = v2[9];
  v20 = v2[11];
  *(v0 + 5016) = v2[10];
  *(v0 + 5032) = v20;
  *(v0 + 4984) = v18;
  *(v0 + 5000) = v19;
  if (sub_10040BA9C(v0 + 4856) == 1)
  {
    sub_100C29CEC();
    swift_allocError();
    *v21 = 6;
    swift_willThrow();
    v22 = *(v0 + 6968);
    v23 = *(v0 + 6824);
    v24 = *(v0 + 6776);
    v25 = *(v0 + 6632);
    v26 = *(v0 + 6584);
    v27 = *(v0 + 6536);
    v28 = *(v0 + 6392);
    sub_1000BB27C(0);
    sub_1000BB27C(0);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 6968);
    v32 = *(v0 + 6920);
    v64 = *(v0 + 6872);
    v65 = *(v0 + 6248);
    v33 = enum case for PairingExecutorState.PairingLockCheck.requestStart(_:);
    v34 = type metadata accessor for PairingExecutorState.PairingLockCheck();
    *(v0 + 7016) = v34;
    v35 = *(v34 - 8);
    v36 = *(v35 + 104);
    *(v0 + 7064) = v36;
    *(v0 + 7112) = (v35 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v36(v31, v33, v34);
    v37 = *(v35 + 56);
    *(v0 + 7160) = v37;
    *(v0 + 7208) = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v37(v31, 0, 1, v34);
    *(v0 + 9568) = enum case for PairingExecutorState.pairingLockCheck(_:);
    v38 = *(v32 + 104);
    *(v0 + 7256) = v38;
    *(v0 + 7304) = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v38(v31);
    v39 = *(v0 + 4040);
    *(v0 + 4408) = *(v0 + 4024);
    *(v0 + 4424) = v39;
    v40 = *(v0 + 4072);
    *(v0 + 4440) = *(v0 + 4056);
    *(v0 + 4456) = v40;
    v41 = *(v0 + 3976);
    *(v0 + 4344) = *(v0 + 3960);
    *(v0 + 4360) = v41;
    v42 = *(v0 + 4008);
    *(v0 + 4376) = *(v0 + 3992);
    *(v0 + 4392) = v42;
    v43 = *(v0 + 3912);
    *(v0 + 4280) = *v1;
    *(v0 + 4296) = v43;
    v44 = *(v0 + 3944);
    *(v0 + 4312) = *(v0 + 3928);
    *(v0 + 4328) = v44;
    sub_100C29FA0(v0 + 4280, v0 + 4472);
    *(v0 + 7352) = type metadata accessor for AirTagPairingExecutor();
    *(v0 + 7400) = sub_100C2A554(&qword_1016B7838, type metadata accessor for AirTagPairingExecutor);
    PairingExecutor.setState(_:)();
    v45 = *(v32 + 8);
    *(v0 + 7448) = v45;
    *(v0 + 7496) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v31, v64);
    v46 = *(v65 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator);
    v47 = *(v65 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator + 8);
    ObjectType = swift_getObjectType();
    *(v0 + 5920) = &type metadata for PairingCheckData;
    *(v0 + 5928) = sub_100C29FFC();
    v49 = swift_allocObject();
    *(v0 + 5896) = v49;
    v50 = *(v0 + 5000);
    v49[9] = *(v0 + 4984);
    v49[10] = v50;
    v51 = *(v0 + 5032);
    v49[11] = *(v0 + 5016);
    v49[12] = v51;
    v52 = *(v0 + 4936);
    v49[5] = *(v0 + 4920);
    v49[6] = v52;
    v53 = *(v0 + 4968);
    v49[7] = *(v0 + 4952);
    v49[8] = v53;
    v54 = *(v0 + 4872);
    v49[1] = *(v0 + 4856);
    v49[2] = v54;
    v55 = *(v0 + 4904);
    v49[3] = *(v0 + 4888);
    v49[4] = v55;
    v56 = *(v0 + 4040);
    *(v0 + 4216) = *(v0 + 4024);
    *(v0 + 4232) = v56;
    v57 = *(v0 + 4072);
    *(v0 + 4248) = *(v0 + 4056);
    *(v0 + 4264) = v57;
    v58 = *(v0 + 3976);
    *(v0 + 4152) = *(v0 + 3960);
    *(v0 + 4168) = v58;
    v59 = *(v0 + 4008);
    *(v0 + 4184) = *(v0 + 3992);
    *(v0 + 4200) = v59;
    v60 = *(v0 + 3912);
    *(v0 + 4088) = *v1;
    *(v0 + 4104) = v60;
    v61 = *(v0 + 3944);
    *(v0 + 4120) = *(v0 + 3928);
    *(v0 + 4136) = v61;
    sub_100C29FA0(v0 + 4088, v0 + 4664);
    v62 = async function pointer to dispatch thunk of PairingValidator.validateRequest(_:)[1];
    v63 = swift_task_alloc();
    *(v0 + 7544) = v63;
    *v63 = v0;
    v63[1] = sub_100C1B3CC;

    return dispatch thunk of PairingValidator.validateRequest(_:)(v0 + 5976, v0 + 5896, ObjectType, v47);
  }
}

uint64_t sub_100C1B3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 7544);
  v8 = *v1;
  *(*v1 + 7592) = v0;

  if (v0)
  {
    v4 = *(v2 + 6248);
    v5 = sub_100C218CC;
  }

  else
  {
    v6 = *(v2 + 6248);
    sub_100007BAC((v2 + 5896));
    v5 = sub_100C1B544;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

_BYTE *sub_100C1B544()
{
  v190 = v0;
  sub_1000BC4D4(&qword_1016B0730, &unk_1013DE2E0);
  if (swift_dynamicCast())
  {
    v184 = *(v0 + 7448);
    v187 = *(v0 + 7496);
    v176 = *(v0 + 7352);
    v179 = *(v0 + 7400);
    v170 = (v0 + 5400);
    v171 = *(v0 + 7304);
    v1 = *(v0 + 7256);
    v2 = *(v0 + 9568);
    v3 = *(v0 + 7208);
    v4 = *(v0 + 7160);
    v5 = *(v0 + 7112);
    v6 = *(v0 + 7064);
    v7 = *(v0 + 7016);
    v8 = *(v0 + 6968);
    v9 = *(v0 + 6872);
    v10 = *(v0 + 6248);
    v11 = *(v0 + 5464);
    v12 = *(v0 + 5480);
    v13 = *(v0 + 5512);
    *(v0 + 5432) = *(v0 + 5496);
    *(v0 + 5448) = v13;
    *(v0 + 5400) = v11;
    *(v0 + 5416) = v12;
    v6(v8, enum case for PairingExecutorState.PairingLockCheck.requestFinish(_:), v7);
    v4(v8, 0, 1, v7);
    v1(v8, v2, v9);
    PairingExecutor.setState(_:)();
    v184(v8, v9);
    v14 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo;
    *(v0 + 7640) = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo;
    v169 = v10;
    v15 = *(v10 + v14);
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    *(v0 + 5680) = &type metadata for Data;
    *(v0 + 5688) = &protocol witness table for Data;
    *(v0 + 5656) = v17;
    *(v0 + 5664) = v16;
    v18 = sub_1000035D0((v0 + 5656), &type metadata for Data);
    v19 = *v18;
    v20 = v18[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) <= 1)
    {
      if (!v21)
      {
        v22 = *(v0 + 7592);
        *(v0 + 9572) = v19;
        *(v0 + 9580) = v20;
        *(v0 + 9582) = BYTE2(v20);
        *(v0 + 9583) = BYTE3(v20);
        *(v0 + 9584) = BYTE4(v20);
        *(v0 + 9585) = BYTE5(v20);
        sub_100017D5C(v17, v16);
        result = sub_100267F80((v0 + 9572), (v0 + 9572 + BYTE6(v20)), v189);
        if (v22)
        {
          return result;
        }

        goto LABEL_18;
      }

      v26 = v19;
      v25 = (v19 >> 32) - v19;
      if (v19 >> 32 >= v19)
      {
        sub_100017D5C(v17, v16);
        v32 = __DataStorage._bytes.getter();
        if (v32)
        {
          v33 = v32;
          v34 = __DataStorage._offset.getter();
          if (!__OFSUB__(v26, v34))
          {
            v30 = (v26 - v34 + v33);
            goto LABEL_32;
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v21 != 2)
    {
      v35 = *(v0 + 7592);
      *(v0 + 9586) = 0;
      *(v0 + 9592) = 0;
      sub_100017D5C(v17, v16);
      result = sub_100267F80((v0 + 9586), (v0 + 9586), v189);
      if (v35)
      {
        return result;
      }

      goto LABEL_18;
    }

    v25 = *(v19 + 16);
    v26 = *(v19 + 24);
    sub_100017D5C(v17, v16);
    v27 = __DataStorage._bytes.getter();
    if (v27)
    {
      v28 = v27;
      v29 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v29))
      {
        goto LABEL_79;
      }

      v30 = (v25 - v29 + v28);
      v31 = __OFSUB__(v26, v25);
      v25 = v26 - v25;
      if (!v31)
      {
LABEL_32:
        v63 = *(v0 + 7592);
        v64 = __DataStorage._length.getter();
        if (v64 >= v25)
        {
          v65 = v25;
        }

        else
        {
          v65 = v64;
        }

        v66 = &v30[v65];
        if (v30)
        {
          v67 = v66;
        }

        else
        {
          v67 = 0;
        }

        result = sub_100267F80(v30, v67, v189);
        if (v63)
        {
          return result;
        }

LABEL_18:
        v36 = v189[0];
        v37 = v189[1];
        sub_100007BAC((v0 + 5656));
        *(v0 + 6216) = v36;
        *(v0 + 6224) = v37;
        v38 = *(v0 + 4936);
        v39 = *(v0 + 4944);
        Data.append(_:)();
        v40 = *(v0 + 5032);
        v41 = *(v0 + 5040);
        Data.append(_:)();
        v42 = *(v0 + 5424);
        *(v0 + 7688) = v42;
        v43 = *(v0 + 5432);
        *(v0 + 7736) = v43;
        if (v43 >> 60 == 15 || !*(v0 + 5456) || *(*(v0 + 5440) + 16) != 2)
        {
          sub_100C29CEC();
          swift_allocError();
          *v54 = 5;
          swift_willThrow();
          sub_100407FCC(v170);
          sub_10000B3A8(v0 + 3896, &qword_10169F440, &unk_1013A0950);
LABEL_24:
          sub_100016590(*(v0 + 6216), *(v0 + 6224));
          goto LABEL_25;
        }

        v162 = *(v0 + 5440);
        v164 = v14;
        v177 = *(v0 + 7448);
        v180 = *(v0 + 7496);
        v172 = *(v0 + 7400);
        v165 = *(v0 + 7352);
        v184 = v43;
        v187 = v42;
        v44 = *(v0 + 7304);
        v45 = *(v0 + 7256);
        v46 = *(v0 + 9568);
        v47 = *(v0 + 7208);
        v48 = *(v0 + 7160);
        v49 = *(v0 + 7112);
        v50 = *(v0 + 7016);
        v51 = *(v0 + 6968);
        v52 = *(v0 + 6872);
        v53 = *(v0 + 6248);
        (*(v0 + 7064))(v51, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationStart(_:), v50);
        v48(v51, 0, 1, v50);
        v45(v51, v46, v52);
        v26 = v184;
        v25 = v187;
        sub_100017D5C(v187, v184);
        PairingExecutor.setState(_:)();
        v177(v51, v52);
        if (qword_1016946D8 == -1)
        {
LABEL_22:
          sub_100A74FAC(qword_10177ACE0, *algn_10177ACE8, *(v0 + 6216), *(v0 + 6224), v25, v26, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
          v178 = *(v0 + 7448);
          v181 = *(v0 + 7496);
          v173 = *(v0 + 7400);
          v166 = *(v0 + 7352);
          v68 = *(v0 + 7304);
          v69 = *(v0 + 7256);
          v70 = *(v0 + 9568);
          v71 = *(v0 + 7208);
          v72 = *(v0 + 7160);
          v73 = *(v0 + 7112);
          v74 = *(v0 + 7016);
          v75 = *(v0 + 6968);
          v76 = *(v0 + 6872);
          v77 = *(v0 + 6248);
          (*(v0 + 7064))(v75, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationFinish(_:), v74);
          v72(v75, 0, 1, v74);
          v69(v75, v70, v76);
          PairingExecutor.setState(_:)();
          v178(v75, v76);
          if (qword_101694D78 != -1)
          {
            swift_once();
          }

          v78 = type metadata accessor for Logger();
          *(v0 + 7784) = sub_1000076D4(v78, qword_1016B8828);
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&_mh_execute_header, v79, v80, "Signature S3 verified!", v81, 2u);
          }

          v82 = v162[2];
          if (v82)
          {
            v83 = v162[4];
            *(v0 + 7832) = v83;
            v84 = v162[5];
            *(v0 + 7880) = v84;
            if (v82 != 1)
            {
              v182 = *(v0 + 6248);
              v85 = v162[6];
              *(v0 + 7928) = v85;
              v86 = v162[7];
              *(v0 + 7976) = v86;
              *(v0 + 6232) = v83;
              *(v0 + 6240) = v84;
              sub_100017D5C(v83, v84);
              sub_100017D5C(v83, v84);
              sub_100017D5C(v85, v86);
              Data.append(_:)();
              v87 = (*(v169 + v164) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
              v88 = *v87;
              v89 = v87[1];
              *v87 = v83;
              v87[1] = v84;
              v174 = v83;
              sub_100017D5C(v83, v84);

              sub_100006654(v88, v89);

              v90 = (*(v169 + v164) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
              v91 = *v90;
              v92 = v90[1];
              *v90 = v85;
              v90[1] = v86;
              v167 = v85;
              sub_100017D5C(v85, v86);

              sub_100006654(v91, v92);

              v93 = *(v0 + 6232);
              v94 = *(v0 + 6240);
              v95 = (*(v169 + v164) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts);
              v96 = *v95;
              v97 = v95[1];
              *v95 = v93;
              v95[1] = v94;

              sub_100017D5C(v93, v94);
              sub_100006654(v96, v97);

              v98 = *(v169 + v164);
              v99 = *(v0 + 5408);
              *(v0 + 6200) = v99;
              v100 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
              v101 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
              *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed) = v99;

              sub_1000D2A70(v0 + 6200, v0 + 6184, &qword_1016A40E0, &unk_101396F30);
              sub_100006654(v100, v101);

              v102 = (*(v169 + v164) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
              v103 = *v102;
              v104 = v102[1];
              *v102 = v187;
              v102[1] = v184;
              sub_10002E98C(v187, v184);

              sub_100006654(v103, v104);

              v105 = v182 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service;
              v106 = *(v182 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
              *(v0 + 8024) = v106;
              if (v106)
              {
                v183 = *(v0 + 7448);
                v185 = *(v0 + 7496);
                v175 = *(v0 + 7400);
                v168 = *(v0 + 7352);
                v163 = *(v0 + 7304);
                v107 = *(v0 + 7256);
                v108 = *(v0 + 9568);
                v109 = *(v0 + 7208);
                v110 = *(v0 + 7160);
                v111 = *(v0 + 7112);
                v112 = *(v0 + 7064);
                v188 = v106;
                v113 = *(v0 + 7016);
                v114 = *(v0 + 6968);
                v115 = *(v0 + 6872);
                v116 = *(v0 + 6248);
                v117 = *(v105 + 8);
                *(v0 + 8072) = v117;
                v112(v114, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandStart(_:), v113);
                v118 = v113;
                v119 = v188;
                v110(v114, 0, 1, v118);
                v107(v114, v108, v115);
                swift_unknownObjectRetain();
                PairingExecutor.setState(_:)();
                v183(v114, v115);
                v120 = swift_allocObject();
                *(v0 + 8120) = v120;
                *(v120 + 16) = v188;
                *(v120 + 24) = v117;
                v121 = *(v0 + 5416);
                *(v120 + 32) = *v170;
                *(v120 + 48) = v121;
                v122 = *(v0 + 5448);
                *(v120 + 64) = *(v0 + 5432);
                *(v120 + 80) = v122;
                swift_unknownObjectRetain();
                sub_100407F70(v170, v0 + 5528);
                swift_asyncLet_begin();
                v123 = swift_allocObject();
                *(v0 + 8168) = v123;
                v123[2] = v188;
                v123[3] = v117;
                v123[4] = v116;
                swift_unknownObjectRetain();

                swift_asyncLet_begin();
                v124 = swift_allocObject();
                *(v0 + 8216) = v124;
                *(v124 + 16) = v188;
                *(v124 + 24) = v117;
                v125 = *(v0 + 5416);
                *(v124 + 32) = *v170;
                *(v124 + 48) = v125;
                v126 = *(v0 + 5448);
                *(v124 + 64) = *(v0 + 5432);
                *(v124 + 80) = v126;
                swift_unknownObjectRetain();
                sub_100407F70(v170, v0 + 5592);
                swift_asyncLet_begin();
                v127 = swift_allocObject();
                *(v0 + 8264) = v127;
                *(v127 + 16) = v188;
                *(v127 + 24) = v117;
                v128 = *(v0 + 5416);
                *(v127 + 32) = *v170;
                *(v127 + 48) = v128;
                v129 = *(v0 + 5448);
                *(v127 + 64) = *(v0 + 5432);
                *(v127 + 80) = v129;
                swift_unknownObjectRetain();
                sub_100407F70(v170, v0 + 5336);
                swift_asyncLet_begin();
                v130 = *(v169 + v164) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts;
                v131 = *(v130 + 8);
                if (v131 >> 60 == 15)
                {
LABEL_62:
                  v144 = *(v0 + 6248);
                  v145 = swift_allocObject();
                  *(v0 + 8312) = v145;
                  v145[2] = v188;
                  v145[3] = v117;
                  v145[4] = v144;
                  swift_unknownObjectRetain();

                  swift_asyncLet_begin();
                  sub_100C52DAC();
                  v147 = v146;
                  v149 = v148;
                  *(v0 + 8360) = v146;
                  *(v0 + 8408) = v148;
                  v150 = Logger.logObject.getter();
                  v151 = static os_log_type_t.default.getter();
                  if (!os_log_type_enabled(v150, v151))
                  {

                    goto LABEL_75;
                  }

                  v186 = v117;
                  v152 = swift_slowAlloc();
                  v135 = swift_slowAlloc();
                  v153 = v135;
                  v189[0] = v135;
                  *v152 = 134218242;
                  v154 = v149 >> 62;
                  if ((v149 >> 62) > 1)
                  {
                    if (v154 != 2)
                    {
                      v155 = 0;
                      goto LABEL_74;
                    }

                    v157 = *(v147 + 16);
                    v156 = *(v147 + 24);
                    v31 = __OFSUB__(v156, v157);
                    v155 = v156 - v157;
                    if (!v31)
                    {
                      goto LABEL_74;
                    }

                    __break(1u);
                  }

                  else if (!v154)
                  {
                    v155 = BYTE6(v149);
LABEL_74:
                    *(v152 + 4) = v155;
                    *(v152 + 12) = 2080;
                    v158 = Data.hexString.getter();
                    v160 = sub_1000136BC(v158, v159, v189);

                    *(v152 + 14) = v160;
                    _os_log_impl(&_mh_execute_header, v150, v151, "RefTime[%ld]: %s", v152, 0x16u);
                    sub_100007BAC(v153);

                    v117 = v186;
                    v119 = v188;
LABEL_75:
                    v161 = swift_allocObject();
                    *(v0 + 8456) = v161;
                    v161[2] = v119;
                    v161[3] = v117;
                    v161[4] = v147;
                    v161[5] = v149;
                    swift_unknownObjectRetain();
                    sub_100017D5C(v147, v149);
                    swift_asyncLet_begin();
                    v135 = v0 + 1936;
                    v138 = v0 + 5776;
                    v137 = sub_100C1C624;

                    return _swift_asyncLet_get_throwing(v135, v136, v137, v138);
                  }

                  LODWORD(v155) = HIDWORD(v147) - v147;
                  if (!__OFSUB__(HIDWORD(v147), v147))
                  {
                    v155 = v155;
                    goto LABEL_74;
                  }

                  __break(1u);
LABEL_85:
                  __break(1u);
                  return _swift_asyncLet_get_throwing(v135, v136, v137, v138);
                }

                v132 = *v130;
                sub_100017D5C(*v130, *(v130 + 8));
                v133 = Logger.logObject.getter();
                v134 = static os_log_type_t.default.getter();
                if (!os_log_type_enabled(v133, v134))
                {
LABEL_61:
                  sub_100006654(v132, v131);

                  goto LABEL_62;
                }

                v135 = swift_slowAlloc();
                *v135 = 134217984;
                v139 = v131 >> 62;
                if ((v131 >> 62) > 1)
                {
                  if (v139 != 2)
                  {
                    v140 = 0;
                    goto LABEL_60;
                  }

                  v143 = *(v132 + 16);
                  v142 = *(v132 + 24);
                  v31 = __OFSUB__(v142, v143);
                  v140 = v142 - v143;
                  if (!v31)
                  {
                    goto LABEL_60;
                  }

                  __break(1u);
                }

                else if (!v139)
                {
                  v140 = BYTE6(v131);
LABEL_60:
                  *(v135 + 4) = v140;
                  _os_log_impl(&_mh_execute_header, v133, v134, "BAA length: %ld", v135, 0xCu);

                  goto LABEL_61;
                }

                LODWORD(v140) = HIDWORD(v132) - v132;
                if (__OFSUB__(HIDWORD(v132), v132))
                {
                  goto LABEL_85;
                }

                v140 = v140;
                goto LABEL_60;
              }

              sub_100C29CEC();
              swift_allocError();
              *v141 = 8;
              swift_willThrow();
              sub_100006654(v187, v184);
              sub_100407FCC(v170);
              sub_100016590(v167, v86);
              sub_100016590(v174, v84);
              sub_10000B3A8(v0 + 3896, &qword_10169F440, &unk_1013A0950);
              sub_100016590(*(v0 + 6232), *(v0 + 6240));
              goto LABEL_24;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

LABEL_81:
        swift_once();
        goto LABEL_22;
      }
    }

    else
    {
      v30 = 0;
      v31 = __OFSUB__(v26, v25);
      v25 = v26 - v25;
      if (!v31)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  sub_100C29CEC();
  swift_allocError();
  *v24 = 7;
  swift_willThrow();
  sub_10000B3A8(v0 + 3896, &qword_10169F440, &unk_1013A0950);
LABEL_25:
  v55 = *(v0 + 6968);
  v56 = *(v0 + 6824);
  v57 = *(v0 + 6776);
  v58 = *(v0 + 6632);
  v59 = *(v0 + 6584);
  v60 = *(v0 + 6536);
  v61 = *(v0 + 6392);
  sub_1000BB27C(0);
  sub_1000BB27C(0);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_100C1C624(uint64_t a1, uint64_t a2)
{
  *(v3 + 8504) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C21A04, v3 + 5856);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 2576, a2, sub_100C1C710, v3 + 6304);
  }
}

uint64_t sub_100C1C710(uint64_t a1, uint64_t a2)
{
  *(v3 + 8552) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C22210, v3 + 6352);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 3216, a2, sub_100C1C7FC, v3 + 6640);
  }
}

uint64_t sub_100C1C7FC(uint64_t a1, uint64_t a2)
{
  *(v3 + 8600) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C22A1C, v3 + 6688);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 1296, a2, sub_100C1C8E8, v3 + 6976);
  }
}

uint64_t sub_100C1C8E8(uint64_t a1, uint64_t a2)
{
  *(v3 + 8648) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C23228, v3 + 7024);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 656, a2, sub_100C1C9D4, v3 + 7312);
  }
}

uint64_t sub_100C1C9D4(uint64_t a1, uint64_t a2)
{
  *(v3 + 8696) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C23A34, v3 + 7360);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v3 + 16, a2, sub_100C1CAC0, v3 + 7600);
  }
}

uint64_t sub_100C1CAC0(uint64_t a1, uint64_t a2)
{
  *(v3 + 8744) = v2;
  if (v2)
  {

    return _swift_asyncLet_finish(v3 + 16, a2, sub_100C2423C, v3 + 7648);
  }

  else
  {
    v4 = *(v3 + 6248);

    return _swift_task_switch(sub_100C1CBA8, v4, 0);
  }
}

uint64_t sub_100C1CBA8()
{
  v1 = v0[973];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Wrote Seed, C2, S3, masked AppleID, BAA certs, and Ref time", v4, 2u);
  }

  v5 = v0[1009];
  v6 = v0[1003];
  v7 = v0[853];
  v8 = v0[829];

  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v9 = swift_task_alloc();
  v0[1099] = v9;
  *v9 = v0;
  v9[1] = sub_100C1CD18;

  return sub_100C53150(v6, v5);
}

uint64_t sub_100C1CD18(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 8792);
  v6 = *v2;
  *(v4 + 9600) = a1;
  *(v4 + 8840) = v1;

  v7 = *(v3 + 6248);
  if (v1)
  {
    v8 = sub_100C1D338;
  }

  else
  {
    v8 = sub_100C1CE80;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C1CE80()
{
  v53 = v0;
  v1 = *(v0 + 7784);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 9600);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v52 = v6;
    *v5 = 136315138;
    v7 = sub_1008CDD10(v4);
    v9 = sub_1000136BC(v7, v8, &v52);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "CCKG generation status: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = *(v0 + 7784);
  v11 = *(v0 + 6824);
  v12 = *(v0 + 6776);
  v13 = *(v0 + 6728);
  v14 = *(v0 + 6680);
  v15 = *(v0 + 6632);
  v16 = *(v0 + 6584);
  v17 = *(v0 + 6488);
  v18 = *(v0 + 6440);
  *(*(*(v0 + 6248) + *(v0 + 7640)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_keyGenerationStatus) = *(v0 + 9600);
  (*(v17 + 16))(v16, v15, v18);
  (*(v13 + 16))(v12, v11, v14);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 6776);
  v23 = *(v0 + 6728);
  v24 = *(v0 + 6680);
  v25 = *(v0 + 6584);
  if (v21)
  {
    v26 = *(v0 + 6536);
    v27 = *(v0 + 6488);
    v28 = *(v0 + 6392);
    v50 = *(v0 + 6680);
    v29 = *(v0 + 6344);
    v47 = *(v0 + 6440);
    v48 = *(v0 + 6296);
    buf = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v51;
    *buf = 136446210;
    ContinuousClock.now.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100C2A554(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
    v45 = static Duration.description<A>(_:_:units:)();
    v46 = v20;
    v31 = v30;
    (*(v29 + 8))(v28, v48);
    v32 = *(v27 + 8);
    v32(v26, v47);
    v33 = *(v23 + 8);
    v33(v22, v50);
    v32(v25, v47);
    v34 = sub_1000136BC(v45, v31, &v52);

    *(buf + 4) = v34;
    _os_log_impl(&_mh_execute_header, v19, v46, "Accessory CCKG generation time: %{public}s", buf, 0xCu);
    sub_100007BAC(v51);
  }

  else
  {
    v35 = *(v0 + 6488);
    v36 = *(v0 + 6440);

    v33 = *(v23 + 8);
    v33(v22, v24);
    v32 = *(v35 + 8);
    v32(v25, v36);
  }

  *(v0 + 8936) = v32;
  *(v0 + 8888) = v33;
  v37 = *(v0 + 7784);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Reading C3", v40, 2u);
  }

  v41 = *(v0 + 8072);
  v42 = *(v0 + 8024);

  v43 = swift_task_alloc();
  *(v0 + 8984) = v43;
  *v43 = v0;
  v43[1] = sub_100C1DC1C;

  return sub_100C53D88(v42, v41);
}

uint64_t sub_100C1D338()
{
  v1 = v0[853];
  v2 = v0[841];
  v3 = v0[835];
  (*(v0[811] + 8))(v0[829], v0[805]);
  (*(v2 + 8))(v1, v3);

  return _swift_asyncLet_finish(v0 + 2, v4, sub_100C1D410, v0 + 992);
}

uint64_t sub_100C1D410()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D49C, v1, 0);
}

uint64_t sub_100C1D49C()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C1D538, v0 + 7984);
}

uint64_t sub_100C1D538()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D5C4, v1, 0);
}

uint64_t sub_100C1D5C4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C1D654, v2 + 8032);
}

uint64_t sub_100C1D654()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D6E0, v1, 0);
}

uint64_t sub_100C1D6E0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C1D770, v2 + 8080);
}

uint64_t sub_100C1D770()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D7FC, v1, 0);
}

uint64_t sub_100C1D7FC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C1D88C, v2 + 8128);
}

uint64_t sub_100C1D88C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1D918, v1, 0);
}

uint64_t sub_100C1D918(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C1D9A8, v2 + 8176);
}

uint64_t sub_100C1D9A8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1DA34, v1, 0);
}

uint64_t sub_100C1DA34()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1105];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C1DC1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 8984);
  v7 = *v3;
  v5[1129] = a1;
  v5[1135] = a2;
  v5[1141] = v2;

  v8 = v4[781];
  if (v2)
  {
    v9 = sub_100C1E168;
  }

  else
  {
    v9 = sub_100C1DD84;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C1DD84()
{
  v44 = v0;
  v1 = *(v0 + 9080);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 7784);
    sub_100017D5C(*(v0 + 9032), v1);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 9080);
    if (!v5)
    {
      sub_100006654(*(v0 + 9032), *(v0 + 9080));
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42 = v8;
    *v7 = 134218242;
    v9 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_14;
      }

      v11 = *(*(v0 + 9032) + 16);
      v12 = *(*(v0 + 9032) + 24);
      v13 = __OFSUB__(v12, v11);
      v10 = v12 - v11;
      if (!v13)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = *(v0 + 9086);
LABEL_14:
      v16 = *(v0 + 9080);
      v17 = *(v0 + 9032);
      *(v7 + 4) = v10;
      sub_100006654(v17, v16);
      *(v7 + 12) = 2080;
      v18 = Data.hexString.getter();
      v20 = sub_1000136BC(v18, v19, &v42);

      *(v7 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v3, v4, "Read C3[%ld]: %s", v7, 0x16u);
      sub_100007BAC(v8);

LABEL_15:

      v21 = *(v0 + 9128);
      v22 = *(v0 + 9080);
      v23 = *(v0 + 9032);
      sub_100017D5C(v23, v22);
      sub_100496254(v23, v22, &v42);
      v24 = *(v0 + 7640);
      v25 = *(v0 + 6248);
      if (v21)
      {

        v26 = *(v25 + v24);
      }

      else
      {
        v27 = v43;
        v26 = *(v25 + v24);
        if (v43 >> 60 != 15)
        {
          v39 = v42;
          v40 = *(v0 + 9080);
          v41 = *(v0 + 9032);
          *(v0 + 5760) = &type metadata for CollaborativeKeyGen.v1.C3;
          *(v0 + 5768) = sub_100101704();

          sub_100006654(v41, v40);
          *(v0 + 5736) = v39;
          *(v0 + 5744) = v27;
          goto LABEL_19;
        }
      }

      v28 = *(v0 + 9080);
      v29 = *(v0 + 9032);

      sub_100006654(v29, v28);
      *(v0 + 5768) = 0;
      *(v0 + 5736) = 0u;
      *(v0 + 5752) = 0u;
LABEL_19:
      v30 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      swift_beginAccess();
      sub_10002311C(v0 + 5736, v26 + v30, &qword_101697320, &qword_10138BE90);
      swift_endAccess();

      goto LABEL_20;
    }

    v14 = *(v0 + 9032);
    v15 = *(v0 + 9036);
    v13 = __OFSUB__(v15, v14);
    LODWORD(v10) = v15 - v14;
    if (v13)
    {
      __break(1u);
    }

    v10 = v10;
    goto LABEL_14;
  }

LABEL_20:
  v31 = *(v0 + 7784);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Reading S4", v34, 2u);
  }

  v35 = *(v0 + 8072);
  v36 = *(v0 + 8024);

  v37 = swift_task_alloc();
  *(v0 + 9176) = v37;
  *v37 = v0;
  v37[1] = sub_100C1EA5C;

  return sub_100C53FFC(v36, v35);
}

uint64_t sub_100C1E168()
{
  v1 = *(v0 + 8888);
  v2 = *(v0 + 6824);
  v3 = *(v0 + 6728);
  v4 = *(v0 + 6680);
  v5 = *(v0 + 6488) + 8;
  (*(v0 + 8936))(*(v0 + 6632), *(v0 + 6440));
  v1(v2, v4);

  return _swift_asyncLet_finish(v0 + 16, v6, sub_100C1E250, v0 + 8224);
}

uint64_t sub_100C1E250()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E2DC, v1, 0);
}

uint64_t sub_100C1E2DC()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C1E378, v0 + 8272);
}

uint64_t sub_100C1E378()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E404, v1, 0);
}

uint64_t sub_100C1E404(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C1E494, v2 + 8320);
}

uint64_t sub_100C1E494()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E520, v1, 0);
}

uint64_t sub_100C1E520(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C1E5B0, v2 + 8368);
}

uint64_t sub_100C1E5B0()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E63C, v1, 0);
}

uint64_t sub_100C1E63C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C1E6CC, v2 + 8416);
}

uint64_t sub_100C1E6CC()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E758, v1, 0);
}

uint64_t sub_100C1E758(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C1E7E8, v2 + 8464);
}

uint64_t sub_100C1E7E8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1E874, v1, 0);
}

uint64_t sub_100C1E874()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1141];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C1EA5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 9176);
  v7 = *v3;
  v5[1153] = a1;
  v5[1159] = a2;
  v5[1165] = v2;

  v8 = v4[781];
  if (v2)
  {
    v9 = sub_100C1F1D0;
  }

  else
  {
    v9 = sub_100C1EBC4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C1EBC4()
{
  v77 = v0;
  v1 = *(v0 + 9272);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 7784);
    sub_100017D5C(*(v0 + 9224), v1);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 9272);
    if (!v5)
    {
      sub_100006654(*(v0 + 9224), *(v0 + 9272));
LABEL_15:

      v21 = *(v0 + 9272);
      v22 = (*(*(v0 + 6248) + *(v0 + 7640)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v23 = *v22;
      v24 = v22[1];
      *v22 = *(v0 + 9224);
      v22[1] = v21;

      sub_100006654(v23, v24);

      goto LABEL_16;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v76 = v8;
    *v7 = 134218242;
    v9 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_14;
      }

      v11 = *(*(v0 + 9224) + 16);
      v12 = *(*(v0 + 9224) + 24);
      v13 = __OFSUB__(v12, v11);
      v10 = v12 - v11;
      if (!v13)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = *(v0 + 9278);
LABEL_14:
      v16 = *(v0 + 9272);
      v17 = *(v0 + 9224);
      *(v7 + 4) = v10;
      sub_100006654(v17, v16);
      *(v7 + 12) = 2080;
      v18 = Data.hexString.getter();
      v20 = sub_1000136BC(v18, v19, &v76);

      *(v7 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v3, v4, "Read S4[%ld]: %s", v7, 0x16u);
      sub_100007BAC(v8);

      goto LABEL_15;
    }

    v14 = *(v0 + 9224);
    v15 = *(v0 + 9228);
    v13 = __OFSUB__(v15, v14);
    LODWORD(v10) = v15 - v14;
    if (v13)
    {
      __break(1u);
    }

    v10 = v10;
    goto LABEL_14;
  }

LABEL_16:
  v72 = *(v0 + 7448);
  v74 = *(v0 + 7496);
  v68 = *(v0 + 7352);
  v70 = *(v0 + 7400);
  v25 = *(v0 + 7304);
  v26 = *(v0 + 7256);
  v27 = *(v0 + 9568);
  v28 = *(v0 + 7208);
  v29 = *(v0 + 7160);
  v30 = *(v0 + 7112);
  v31 = *(v0 + 7016);
  v32 = *(v0 + 6968);
  v33 = *(v0 + 6872);
  v34 = *(v0 + 6248);
  (*(v0 + 7064))(v32, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandFinish(_:), v31);
  v29(v32, 0, 1, v31);
  v26(v32, v27, v33);
  PairingExecutor.setState(_:)();
  v72(v32, v33);
  v35 = *(v34 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_crypto);
  *(v0 + 9368) = v35;
  if (v35)
  {
    v73 = *(v0 + 7496);
    v75 = *(v0 + 7640);
    v69 = *(v0 + 7400);
    v71 = *(v0 + 7448);
    v66 = *(v0 + 7304);
    v67 = *(v0 + 7352);
    v36 = *(v0 + 7256);
    v37 = *(v0 + 9568);
    v38 = *(v0 + 7208);
    v39 = *(v0 + 7160);
    v40 = *(v0 + 7112);
    v41 = *(v0 + 7016);
    v42 = *(v0 + 6968);
    v43 = *(v0 + 6872);
    v44 = *(v0 + 6248);
    (*(v0 + 7064))(v42, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataStart(_:), v41);
    v39(v42, 0, 1, v41);
    v36(v42, v37, v43);

    PairingExecutor.setState(_:)();
    v71(v42, v43);
    v45 = *(v44 + v75);
    v46 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
    swift_beginAccess();
    sub_1000D2A70(v45 + v46, v0 + 5816, &qword_101697320, &qword_10138BE90);
    v47 = *(v0 + 5840);
    if (v47)
    {
      v48 = *(v0 + 5848);
      v49 = sub_1000035D0((v0 + 5816), *(v0 + 5840));
      v50 = *(v47 - 8);
      v51 = *(v50 + 64) + 15;
      v52 = swift_task_alloc();
      (*(v50 + 16))(v52, v49, v47);
      sub_10000B3A8(v0 + 5816, &qword_101697320, &qword_10138BE90);
      *(v0 + 9416) = (*(*(*(v48 + 8) + 8) + 40))(v47);
      *(v0 + 9464) = v53;
      (*(v50 + 8))(v52, v47);

      v54 = sub_100C1FAC4;
    }

    else
    {
      sub_10000B3A8(v0 + 5816, &qword_101697320, &qword_10138BE90);
      v54 = sub_100C20FF8;
    }

    return _swift_task_switch(v54, 0, 0);
  }

  else
  {
    v55 = *(v0 + 8936);
    v56 = *(v0 + 8888);
    v57 = *(v0 + 6824);
    v58 = *(v0 + 6728);
    v59 = *(v0 + 6680);
    v60 = *(v0 + 6632);
    v61 = *(v0 + 6488);
    v62 = *(v0 + 6440);
    sub_100C29CEC();
    *(v0 + 9560) = swift_allocError();
    *v63 = 9;
    swift_willThrow();
    v55(v60, v62);
    v56(v57, v59);

    return _swift_asyncLet_finish(v0 + 16, v64, sub_100C210C0, v0 + 8800);
  }
}

uint64_t sub_100C1F1D0()
{
  v1 = *(v0 + 8888);
  v2 = *(v0 + 6824);
  v3 = *(v0 + 6728);
  v4 = *(v0 + 6680);
  v5 = *(v0 + 6488) + 8;
  (*(v0 + 8936))(*(v0 + 6632), *(v0 + 6440));
  v1(v2, v4);

  return _swift_asyncLet_finish(v0 + 16, v6, sub_100C1F2B8, v0 + 8512);
}

uint64_t sub_100C1F2B8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F344, v1, 0);
}

uint64_t sub_100C1F344()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C1F3E0, v0 + 8560);
}

uint64_t sub_100C1F3E0()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F46C, v1, 0);
}

uint64_t sub_100C1F46C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C1F4FC, v2 + 8608);
}

uint64_t sub_100C1F4FC()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F588, v1, 0);
}

uint64_t sub_100C1F588(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C1F618, v2 + 8656);
}

uint64_t sub_100C1F618()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F6A4, v1, 0);
}

uint64_t sub_100C1F6A4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C1F734, v2 + 8704);
}

uint64_t sub_100C1F734()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F7C0, v1, 0);
}

uint64_t sub_100C1F7C0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C1F850, v2 + 8752);
}

uint64_t sub_100C1F850()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1F8DC, v1, 0);
}

uint64_t sub_100C1F8DC()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1165];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C1FAC4()
{
  v1 = *(v0 + 9464);
  v2 = *(v0 + 9416);
  v3 = *(v0 + 9368);
  v4 = *(v0 + 9320);
  sub_100017D5C(v2, v1);
  v5 = CCCKGGetOpeningSize();

  sub_1003F141C(v2, v1, v3, v5, v0 + 5256);
  if (v4)
  {
    v6 = *(v0 + 9464);
    v7 = *(v0 + 9416);

    sub_100C2A500();
    v8 = swift_allocError();
    *v9 = 13;
    swift_willThrow();
    sub_100016590(v7, v6);
    sub_100016590(v7, v6);
    *(v0 + 9512) = v8;
    v10 = *(v0 + 6248);
    v11 = sub_100C206E4;
  }

  else
  {
    v12 = *(v0 + 9464);
    v13 = *(v0 + 9416);
    v14 = *(v0 + 6248);
    sub_100016590(v13, v12);
    sub_100016590(v13, v12);
    v15 = *(v0 + 5304);
    *(v0 + 5208) = *(v0 + 5288);
    *(v0 + 5224) = v15;
    *(v0 + 5240) = *(v0 + 5320);
    v16 = *(v0 + 5272);
    *(v0 + 5176) = *(v0 + 5256);
    *(v0 + 5192) = v16;
    v11 = sub_100C1FC90;
    v10 = v14;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100C1FC90()
{
  v32 = *(v0 + 9368);
  v33 = *(v0 + 8936);
  v34 = *(v0 + 8888);
  v35 = *(v0 + 7640);
  v30 = *(v0 + 7448);
  v31 = *(v0 + 7496);
  v23 = *(v0 + 7352);
  v20 = *(v0 + 7256);
  v21 = *(v0 + 7304);
  v1 = *(v0 + 9568);
  v2 = *(v0 + 7208);
  v3 = *(v0 + 7160);
  v4 = *(v0 + 7112);
  v5 = *(v0 + 7016);
  v6 = *(v0 + 6968);
  v7 = *(v0 + 6872);
  v29 = *(v0 + 6824);
  v26 = *(v0 + 7400);
  v27 = *(v0 + 6728);
  v28 = *(v0 + 6680);
  v22 = *(v0 + 6488);
  v24 = *(v0 + 6440);
  v25 = *(v0 + 6632);
  v8 = *(v0 + 6248);
  (*(v0 + 7064))(v6, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataFinish(_:), v5);
  v3(v6, 0, 1, v5);
  v20(v6, v1, v7);
  PairingExecutor.setState(_:)();

  v30(v6, v7);
  v33(v25, v24);
  v34(v29, v28);
  v9 = *(v8 + v35);
  v10 = v8 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo;
  v11 = *(v8 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 16);
  *(v0 + 5048) = *(v8 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo);
  *(v0 + 5064) = v11;
  v12 = *(v10 + 32);
  v13 = *(v10 + 48);
  v14 = *(v10 + 64);
  *(v0 + 5128) = *(v10 + 80);
  *(v0 + 5096) = v13;
  *(v0 + 5112) = v14;
  *(v0 + 5080) = v12;
  v15 = *(v0 + 5240);
  v17 = *(v0 + 5192);
  v16 = *(v0 + 5208);
  *(v10 + 48) = *(v0 + 5224);
  *(v10 + 64) = v15;
  *(v10 + 16) = v17;
  *(v10 + 32) = v16;
  *v10 = *(v0 + 5176);
  *(v10 + 80) = v9;

  sub_10000B3A8(v0 + 5048, &qword_1016A1320, &unk_1013E02C0);

  return _swift_asyncLet_finish(v0 + 16, v18, sub_100C1FEE8, v0 + 9472);
}

uint64_t sub_100C1FEE8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C1FF74, v1, 0);
}

uint64_t sub_100C1FF74()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C20010, v0 + 5136);
}

uint64_t sub_100C20010()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2009C, v1, 0);
}

uint64_t sub_100C2009C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C2012C, v2 + 9088);
}

uint64_t sub_100C2012C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C201B8, v1, 0);
}

uint64_t sub_100C201B8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C20248, v2 + 5696);
}

uint64_t sub_100C20248()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C202D4, v1, 0);
}

uint64_t sub_100C202D4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C20364, v2 + 9520);
}

uint64_t sub_100C20364()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C203F0, v1, 0);
}

uint64_t sub_100C203F0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C20480, v2 + 9424);
}

uint64_t sub_100C20480()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2050C, v1, 0);
}

uint64_t sub_100C2050C()
{
  v17 = v0[1057];
  v1 = v0[1033];
  v2 = v0[1027];
  v3 = v0[1021];
  v4 = v0[1015];
  v5 = v0[1003];
  v6 = v0[997];
  v7 = v0[991];
  v8 = v0[985];
  v9 = v0[979];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[1039];
  v15 = v0[847];
  v16 = v0[829];
  v18 = v0[823];
  v19 = v0[817];
  v20 = v0[799];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v7, v6);
  sub_100016590(v9, v8);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C206E4()
{
  v1 = v0[1171];
  v2 = v0[1117];
  v3 = v0[1111];
  v4 = v0[853];
  v5 = v0[841];
  v6 = v0[835];
  v7 = v0[829];
  v8 = v0[811];
  v9 = v0[805];

  v2(v7, v9);
  v3(v4, v6);

  return _swift_asyncLet_finish(v0 + 2, v10, sub_100C207EC, v0 + 1142);
}

uint64_t sub_100C207EC()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20878, v1, 0);
}

uint64_t sub_100C20878()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C20914, v0 + 9184);
}

uint64_t sub_100C20914()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C209A0, v1, 0);
}

uint64_t sub_100C209A0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C20A30, v2 + 9232);
}

uint64_t sub_100C20A30()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20ABC, v1, 0);
}

uint64_t sub_100C20ABC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C20B4C, v2 + 9280);
}

uint64_t sub_100C20B4C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20BD8, v1, 0);
}

uint64_t sub_100C20BD8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C20C68, v2 + 9328);
}

uint64_t sub_100C20C68()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20CF4, v1, 0);
}

uint64_t sub_100C20CF4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C20D84, v2 + 9376);
}

uint64_t sub_100C20D84()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C20E10, v1, 0);
}

uint64_t sub_100C20E10()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1189];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C20FF8()
{
  sub_100C2A500();
  v1 = swift_allocError();
  *v2 = 6;
  swift_willThrow();
  *(v0 + 9512) = v1;
  v3 = *(v0 + 6248);

  return _swift_task_switch(sub_100C206E4, v3, 0);
}

uint64_t sub_100C210C0()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2114C, v1, 0);
}

uint64_t sub_100C2114C()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C211E8, v0 + 8848);
}

uint64_t sub_100C211E8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21274, v1, 0);
}

uint64_t sub_100C21274(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C21304, v2 + 8896);
}

uint64_t sub_100C21304()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21390, v1, 0);
}

uint64_t sub_100C21390(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C21420, v2 + 8944);
}

uint64_t sub_100C21420()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C214AC, v1, 0);
}

uint64_t sub_100C214AC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C2153C, v2 + 8992);
}

uint64_t sub_100C2153C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C215C8, v1, 0);
}

uint64_t sub_100C215C8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C21658, v2 + 9040);
}

uint64_t sub_100C21658()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C216E4, v1, 0);
}

uint64_t sub_100C216E4()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1195];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C218CC()
{
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100007BAC(v0 + 737);
  v1 = v0[949];
  v2 = v0[871];
  v3 = v0[853];
  v4 = v0[847];
  v5 = v0[829];
  v6 = v0[823];
  v7 = v0[817];
  v8 = v0[799];
  sub_1000BB27C(0);
  sub_1000BB27C(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C21A04()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21A90, v1, 0);
}

uint64_t sub_100C21A90()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C21B2C, v0 + 5936);
}

uint64_t sub_100C21B2C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21BB8, v1, 0);
}

uint64_t sub_100C21BB8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C21C48, v2 + 6016);
}

uint64_t sub_100C21C48()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21CD4, v1, 0);
}

uint64_t sub_100C21CD4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C21D64, v2 + 6080);
}

uint64_t sub_100C21D64()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21DF0, v1, 0);
}

uint64_t sub_100C21DF0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C21E80, v2 + 6144);
}

uint64_t sub_100C21E80()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C21F0C, v1, 0);
}

uint64_t sub_100C21F0C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C21F9C, v2 + 6256);
}

uint64_t sub_100C21F9C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22028, v1, 0);
}

uint64_t sub_100C22028()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1063];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C22210()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2229C, v1, 0);
}

uint64_t sub_100C2229C()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C22338, v0 + 6400);
}

uint64_t sub_100C22338()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C223C4, v1, 0);
}

uint64_t sub_100C223C4(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C22454, v2 + 6448);
}

uint64_t sub_100C22454()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C224E0, v1, 0);
}

uint64_t sub_100C224E0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C22570, v2 + 6496);
}

uint64_t sub_100C22570()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C225FC, v1, 0);
}

uint64_t sub_100C225FC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C2268C, v2 + 6544);
}

uint64_t sub_100C2268C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22718, v1, 0);
}

uint64_t sub_100C22718(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C227A8, v2 + 6592);
}

uint64_t sub_100C227A8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22834, v1, 0);
}

uint64_t sub_100C22834()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1069];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C22A1C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22AA8, v1, 0);
}

uint64_t sub_100C22AA8()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C22B44, v0 + 6736);
}

uint64_t sub_100C22B44()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22BD0, v1, 0);
}

uint64_t sub_100C22BD0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C22C60, v2 + 6784);
}

uint64_t sub_100C22C60()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22CEC, v1, 0);
}

uint64_t sub_100C22CEC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C22D7C, v2 + 6832);
}

uint64_t sub_100C22D7C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22E08, v1, 0);
}

uint64_t sub_100C22E08(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C22E98, v2 + 6880);
}

uint64_t sub_100C22E98()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C22F24, v1, 0);
}

uint64_t sub_100C22F24(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C22FB4, v2 + 6928);
}

uint64_t sub_100C22FB4()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23040, v1, 0);
}

uint64_t sub_100C23040()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1075];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C23228()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C232B4, v1, 0);
}

uint64_t sub_100C232B4()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C23350, v0 + 7072);
}

uint64_t sub_100C23350()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C233DC, v1, 0);
}

uint64_t sub_100C233DC(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C2346C, v2 + 7120);
}

uint64_t sub_100C2346C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C234F8, v1, 0);
}

uint64_t sub_100C234F8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C23588, v2 + 7168);
}

uint64_t sub_100C23588()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23614, v1, 0);
}

uint64_t sub_100C23614(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C236A4, v2 + 7216);
}

uint64_t sub_100C236A4()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23730, v1, 0);
}

uint64_t sub_100C23730(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C237C0, v2 + 7264);
}

uint64_t sub_100C237C0()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2384C, v1, 0);
}

uint64_t sub_100C2384C()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1081];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C23A34()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23AC0, v1, 0);
}

uint64_t sub_100C23AC0()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C23B5C, v0 + 7408);
}

uint64_t sub_100C23B5C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23BE8, v1, 0);
}

uint64_t sub_100C23BE8(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C23C74, v2 + 3856);
}

uint64_t sub_100C23C74()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23D00, v1, 0);
}

uint64_t sub_100C23D00(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C23D90, v2 + 7456);
}

uint64_t sub_100C23D90()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23E1C, v1, 0);
}

uint64_t sub_100C23E1C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C23EAC, v2 + 7504);
}

uint64_t sub_100C23EAC()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C23F38, v1, 0);
}

uint64_t sub_100C23F38(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C23FC8, v2 + 7552);
}

uint64_t sub_100C23FC8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C24054, v1, 0);
}

uint64_t sub_100C24054()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1087];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C2423C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C242C8, v1, 0);
}

uint64_t sub_100C242C8()
{
  sub_100016590(*(v0 + 8360), *(v0 + 8408));

  return _swift_asyncLet_finish(v0 + 656, v1, sub_100C24364, v0 + 7696);
}

uint64_t sub_100C24364()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C243F0, v1, 0);
}

uint64_t sub_100C243F0(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1296, a2, sub_100C24480, v2 + 7744);
}

uint64_t sub_100C24480()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C2450C, v1, 0);
}

uint64_t sub_100C2450C(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 3216, a2, sub_100C2459C, v2 + 7792);
}

uint64_t sub_100C2459C()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C24628, v1, 0);
}

uint64_t sub_100C24628(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 2576, a2, sub_100C246B8, v2 + 7840);
}

uint64_t sub_100C246B8()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C24744, v1, 0);
}

uint64_t sub_100C24744(uint64_t a1, uint64_t a2)
{

  return _swift_asyncLet_finish(v2 + 1936, a2, sub_100C247D4, v2 + 7888);
}

uint64_t sub_100C247D4()
{
  v1 = *(v0 + 6248);

  return _swift_task_switch(sub_100C24860, v1, 0);
}

uint64_t sub_100C24860()
{
  v21 = v0[1033];
  v1 = v0[1027];
  v2 = v0[1021];
  v3 = v0[1015];
  v4 = v0[1003];
  v5 = v0[997];
  v6 = v0[991];
  v7 = v0[985];
  v8 = v0[979];
  sub_100006654(v0[961], v0[967]);
  sub_100407FCC((v0 + 675));
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  sub_100016590(v8, v7);
  sub_10000B3A8((v0 + 487), &qword_10169F440, &unk_1013A0950);
  sub_100016590(v0[779], v0[780]);
  sub_100016590(v0[777], v0[778]);

  v9 = v0[1093];
  v10 = v0[1057];
  v11 = v0[1039];
  v12 = v0[871];
  v13 = v0[853];
  v14 = v0[847];
  v15 = v0[829];
  v16 = v0[823];
  v17 = v0[817];
  v18 = v0[799];
  sub_1000BB27C(&unk_1013E0330);
  sub_1000BB27C(&unk_1013E0340);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100C24A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v8 = *(a4 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014744;

  return (sub_100C54270)(a2, a3, v7, v8);
}

uint64_t sub_100C24B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_100C24B34, a4, 0);
}

uint64_t sub_100C24B34()
{
  *(v0 + 104) = *(*(v0 + 96) + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo);

  return _swift_task_switch(sub_100C24BB0, 0, 0);
}

uint64_t sub_100C24BB0()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();
  sub_1000D2A70(v1 + v2, (v0 + 2), &qword_101697378, &unk_101391940);

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100C24CA8;
  v5 = v0[10];
  v4 = v0[11];

  return (sub_100C54A14)(v5, v4, v0 + 2);
}

uint64_t sub_100C24CA8()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 120) = v0;

  sub_10000B3A8(v3 + 16, &qword_101697378, &unk_101391940);
  if (v0)
  {

    return _swift_task_switch(sub_100C24DF4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_100C24E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(a4 + 32);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014744;

  return (sub_100C551B8)(a2, a3, v7, v8);
}

uint64_t sub_100C24ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 48);
  v8 = *(a4 + 56);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014744;

  return (sub_100C557D8)(a2, a3, v7, v8);
}

uint64_t sub_100C24F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_100C24FC0, a4, 0);
}

uint64_t sub_100C24FC0()
{
  *(v0 + 40) = *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo);

  return _swift_task_switch(sub_100C2503C, 0, 0);
}

uint64_t sub_100C2503C()
{
  v1 = (v0[5] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts);
  v2 = *v1;
  v0[6] = *v1;
  v3 = v1[1];
  v0[7] = v3;
  sub_10002E98C(v2, v3);

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100C2512C;
  v6 = v0[2];
  v5 = v0[3];

  return sub_100C56044(v6, v5, v2, v3);
}

uint64_t sub_100C2512C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C25268, 0, 0);
  }

  else
  {
    sub_100006654(v3[6], v3[7]);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_100C25268()
{
  sub_100006654(v0[6], v0[7]);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_100C252CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100014744;

  return (sub_100C56850)(a2, a3, a4, a5);
}

uint64_t sub_100C25398(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v2[95] = *v1;
  v3 = type metadata accessor for UUID();
  v2[96] = v3;
  v4 = *(v3 - 8);
  v2[97] = v4;
  v5 = *(v4 + 64) + 15;
  v2[98] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[99] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v2[100] = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconRecord();
  v2[101] = v8;
  v9 = *(v8 - 8);
  v2[102] = v9;
  v2[103] = *(v9 + 64);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();

  return _swift_task_switch(sub_100C25570, v1, 0);
}

uint64_t sub_100C25570()
{
  v1 = *(v0 + 752);
  v2 = v1 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo;
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 16);
  *(v0 + 104) = *(v1 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo);
  *(v0 + 120) = v3;
  v5 = *(v2 + 48);
  v4 = *(v2 + 64);
  v6 = *(v2 + 80);
  *(v0 + 136) = *(v2 + 32);
  *(v0 + 184) = v6;
  *(v0 + 168) = v4;
  *(v0 + 152) = v5;
  v7 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v7;
  v9 = *(v2 + 48);
  v8 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 32);
  *(v0 + 96) = v10;
  *(v0 + 64) = v9;
  *(v0 + 80) = v8;
  *(v0 + 48) = v11;
  v12 = v10;
  if (v10)
  {
    v13 = (v1 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconStore);
    *(v0 + 856) = *v13;
    v14 = v13[1];
    *(v0 + 864) = v14;
    ObjectType = swift_getObjectType();
    *(v0 + 872) = ObjectType;
    *(v0 + 424) = &type metadata for InitialPairingInfo;
    *(v0 + 432) = sub_10048E614();
    v16 = swift_allocObject();
    *(v0 + 400) = v16;
    v16[1] = *v2;
    v17 = *(v2 + 64);
    v19 = *(v2 + 16);
    v18 = *(v2 + 32);
    v16[4] = *(v2 + 48);
    v16[5] = v17;
    v16[2] = v19;
    v16[3] = v18;
    *(v0 + 464) = type metadata accessor for AccessoryPairingInfo(0);
    *(v0 + 472) = sub_100C2A554(&qword_1016A1318, type metadata accessor for AccessoryPairingInfo);
    *(v0 + 440) = v12;
    sub_1000D2A70(v0 + 104, v0 + 192, &qword_1016A1320, &unk_1013E02C0);
    sub_100102538(v0 + 16, v0 + 280);
    v20 = async function pointer to dispatch thunk of PairingBeaconStore.generateBeaconRecord(pairingKeys:accessory:)[1];

    v21 = swift_task_alloc();
    *(v0 + 880) = v21;
    *v21 = v0;
    v21[1] = sub_100C2582C;

    return dispatch thunk of PairingBeaconStore.generateBeaconRecord(pairingKeys:accessory:)(v0 + 360, v0 + 400, v0 + 440, ObjectType, v14);
  }

  else
  {
    sub_100C29CEC();
    swift_allocError();
    *v22 = 10;
    swift_willThrow();
    v23 = *(v0 + 848);
    v24 = *(v0 + 840);
    v25 = *(v0 + 832);
    v26 = *(v0 + 800);
    v27 = *(v0 + 792);
    v28 = *(v0 + 784);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_100C2582C()
{
  v2 = *v1;
  v3 = (*v1)[110];
  v8 = *v1;
  (*v1)[111] = v0;

  if (v0)
  {
    v4 = v2[94];
    v5 = sub_100C26950;
  }

  else
  {
    v6 = v2[94];
    sub_100007BAC(v2 + 55);
    sub_100007BAC(v2 + 50);
    v5 = sub_100C2595C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C2595C()
{
  v42 = v0;
  v1 = v0[102];
  sub_1000D2A70((v0 + 45), (v0 + 60), &qword_1016B8AD0, &unk_1013E1320);
  v2 = (v1 + 56);
  if (v0[63])
  {
    v3 = v0[102];
    v4 = v0[101];
    v5 = v0[100];
    sub_1000BC4D4(&qword_1016B7F70, &qword_1013E02D0);
    v6 = swift_dynamicCast();
    (*v2)(v5, v6 ^ 1u, 1, v4);
    if ((*(v3 + 48))(v5, 1, v4) != 1)
    {
      sub_100132D2C(v0[100], v0[106]);
      if (qword_101694D78 != -1)
      {
        swift_once();
      }

      v7 = v0[106];
      v8 = v0[105];
      v9 = type metadata accessor for Logger();
      v0[112] = sub_1000076D4(v9, qword_1016B8828);
      sub_100A51D68(v7, v8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[105];
      if (v12)
      {
        v14 = v0[101];
        v15 = v0[96];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v41 = v17;
        *v16 = 141558275;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        v18 = *(v14 + 20);
        sub_100C2A554(&qword_101696930, &type metadata accessor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        sub_100650DC8(v13);
        v22 = sub_1000136BC(v19, v21, &v41);

        *(v16 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v10, v11, "Generated new beacon %{private,mask.hash}s", v16, 0x16u);
        sub_100007BAC(v17);
      }

      else
      {

        sub_100650DC8(v13);
      }

      v39 = async function pointer to daemon.getter[1];
      v40 = swift_task_alloc();
      v0[113] = v40;
      *v40 = v0;
      v40[1] = sub_100C25EBC;

      return daemon.getter();
    }
  }

  else
  {
    v23 = v0[101];
    v24 = v0[100];
    sub_10000B3A8((v0 + 60), &qword_1016B8AD0, &unk_1013E1320);
    (*v2)(v24, 1, 1, v23);
  }

  sub_10000B3A8(v0[100], &unk_1016A9A20, &qword_10138B280);
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_1016B8828);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Unable to generate new beacon", v28, 2u);
  }

  v29 = type metadata accessor for PairingInfoStoreError();
  sub_100C2A554(&qword_1016A1330, &type metadata accessor for PairingInfoStoreError);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, enum case for PairingInfoStoreError.missingOwnerRecord(_:), v29);
  swift_willThrow();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  v31 = v0[106];
  v32 = v0[105];
  v33 = v0[104];
  v34 = v0[100];
  v35 = v0[99];
  v36 = v0[98];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100C25EBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 904);
  v12 = *v1;
  *(v3 + 912) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 920) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100C2A554(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100C2A554(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100C26098;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C26098(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  *(v4 + 928) = a1;
  *(v4 + 936) = v1;

  v7 = *(v3 + 912);
  v8 = *(v3 + 752);

  if (v1)
  {
    v9 = sub_100C26A28;
  }

  else
  {
    v9 = sub_100C261EC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C261EC()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 848);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 816);
  v6 = *(v0 + 792);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_100A51D68(v2, v3);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  sub_100132D2C(v3, v11 + v10);
  *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

  sub_10025EDD4(0, 0, v6, &unk_1013E02E0, v11);

  v12 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_1000D2A70(v8 + v12, v0 + 560, &qword_1016A12E0, &qword_1013A51D0);
  if (*(v0 + 584))
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 808);
    sub_10000A748((v0 + 560), v0 + 520);
    *(v0 + 664) = v14;
    *(v0 + 672) = sub_100C2A554(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord);
    v15 = sub_1000280DC((v0 + 640));
    sub_100A51D68(v13, v15);
    v16 = async function pointer to dispatch thunk of PairingBeaconStore.saveBeaconRecord(_:pairingConfiguration:)[1];
    v17 = swift_task_alloc();
    *(v0 + 944) = v17;
    *v17 = v0;
    v17[1] = sub_100C26558;
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    v20 = *(v0 + 856);

    return dispatch thunk of PairingBeaconStore.saveBeaconRecord(_:pairingConfiguration:)(v0 + 600, v0 + 640, v0 + 520, v18, v19);
  }

  else
  {
    v21 = *(v0 + 928);
    v22 = *(v0 + 848);
    sub_10000B3A8(v0 + 560, &qword_1016A12E0, &qword_1013A51D0);
    sub_100C29CEC();
    swift_allocError();
    *v23 = 11;
    swift_willThrow();
    sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);

    sub_100650DC8(v22);
    sub_10000B3A8(v0 + 360, &qword_1016B8AD0, &unk_1013E1320);
    v24 = *(v0 + 848);
    v25 = *(v0 + 840);
    v26 = *(v0 + 832);
    v27 = *(v0 + 800);
    v28 = *(v0 + 792);
    v29 = *(v0 + 784);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_100C26558()
{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v8 = *v1;
  *(*v1 + 952) = v0;

  if (v0)
  {
    v4 = *(v2 + 752);
    v5 = sub_100C26B14;
  }

  else
  {
    v6 = *(v2 + 752);
    sub_100007BAC((v2 + 640));
    v5 = sub_100C26680;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C26680()
{
  v26 = v0;
  v1 = v0[112];
  sub_10001F280((v0 + 75), (v0 + 85));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[98];
    v5 = v0[97];
    v23 = v0[96];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v8 = v0[89];
    sub_1000035D0(v0 + 85, v0[88]);
    dispatch thunk of BeaconRecordType.identifier.getter();
    sub_100C2A554(&qword_101696930, &type metadata accessor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v5 + 8))(v4, v23);
    sub_100007BAC(v0 + 85);
    v12 = sub_1000136BC(v9, v11, &v25);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saved new record %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {

    sub_100007BAC(v0 + 85);
  }

  v13 = v0[116];
  v14 = v0[106];
  v15 = v0[105];
  v16 = v0[104];
  v17 = v0[100];
  v18 = v0[99];
  v24 = v0[98];
  v19 = v0[93];
  v20 = v0[79];
  sub_1000035D0(v0 + 75, v0[78]);
  dispatch thunk of BeaconRecordType.identifier.getter();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);

  sub_100007BAC(v0 + 65);
  sub_100650DC8(v14);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  sub_100007BAC(v0 + 75);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100C26950()
{
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100007BAC(v0 + 55);
  sub_100007BAC(v0 + 50);
  v1 = v0[111];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[98];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C26A28()
{
  v1 = v0[106];
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_100650DC8(v1);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  v2 = v0[117];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C26B14()
{
  v1 = v0[116];
  v2 = v0[106];
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);

  sub_100007BAC(v0 + 65);
  sub_100650DC8(v2);
  sub_10000B3A8((v0 + 45), &qword_1016B8AD0, &unk_1013E1320);
  sub_100007BAC(v0 + 80);
  v3 = v0[119];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[100];
  v8 = v0[99];
  v9 = v0[98];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C26C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100C26C3C, 0, 0);
}

uint64_t sub_100C26C3C()
{
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_1000076D4(v1, qword_1016B8828);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending NFC tap info to server", v4, 2u);
  }

  v5 = *(v0 + 16);

  return _swift_task_switch(sub_100C26D60, v5, 0);
}

uint64_t sub_100C26D60()
{
  v1 = sub_100C2A554(&qword_1016B7F28, type metadata accessor for BeaconStoreActor);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v6 = *(v0 + 16);
  *(v2 + 16) = v6;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100C26E94;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v6, v1, 0xD00000000000001CLL, 0x800000010136F670, sub_100C29F98, v2, &type metadata for () + 8);
}

uint64_t sub_100C26E94()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_100C26FBC;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);

    v5 = sub_100014748;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C26FBC()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_100C27024, 0, 0);
}

uint64_t sub_100C27024()
{
  v1 = v0[7];
  v2 = v0[4];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to send NFC tap info due to %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C27184()
{
  v1[10] = v0;
  v2 = type metadata accessor for PairingExecutorState();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100C27244, v0, 0);
}

uint64_t sub_100C27244()
{
  v1 = *(v0 + 80);
  v2 = v1 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service;
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
  *(v0 + 112) = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    v5 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheral;
    swift_beginAccess();
    sub_1000D2A70(v1 + v5, v0 + 16, &qword_1016A12E8, &qword_1013A51D8);
    if (*(v0 + 40))
    {
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = *(v0 + 80);
      v9 = *(v0 + 88);
      swift_unknownObjectRetain();
      sub_10000B3A8(v0 + 16, &qword_1016A12E8, &qword_1013A51D8);
      v10 = enum case for PairingExecutorState.PairingComplete.commandStart(_:);
      v11 = type metadata accessor for PairingExecutorState.PairingComplete();
      *(v0 + 120) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 104);
      *(v0 + 128) = v13;
      *(v0 + 136) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v13(v6, v10, v11);
      v14 = *(v12 + 56);
      *(v0 + 144) = v14;
      *(v0 + 152) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v14(v6, 0, 1, v11);
      *(v0 + 224) = enum case for PairingExecutorState.pairingComplete(_:);
      v15 = *(v7 + 104);
      *(v0 + 160) = v15;
      *(v0 + 168) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v15(v6);
      *(v0 + 176) = type metadata accessor for AirTagPairingExecutor();
      *(v0 + 184) = sub_100C2A554(&qword_1016B7838, type metadata accessor for AirTagPairingExecutor);
      PairingExecutor.setState(_:)();
      v16 = *(v7 + 8);
      *(v0 + 192) = v16;
      *(v0 + 200) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v6, v9);
      v17 = swift_task_alloc();
      *(v0 + 208) = v17;
      *v17 = v0;
      v17[1] = sub_100C275B8;

      return sub_100C56DD0(v3, v4);
    }

    swift_unknownObjectRetain();
    sub_10000B3A8(v0 + 16, &qword_1016A12E8, &qword_1013A51D8);
    sub_100C29CEC();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100C29CEC();
    swift_allocError();
    *v19 = 8;
    swift_willThrow();
  }

  v21 = *(v0 + 104);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100C275B8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_100C278B8;
  }

  else
  {
    v6 = sub_100C276E4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C276E4()
{
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B8828);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Wrote Success Receipt", v4, 2u);
  }

  v21 = *(v0 + 192);
  v22 = *(v0 + 200);
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);
  v15 = *(v0 + 224);
  v5 = *(v0 + 152);
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 104);
  v18 = *(v0 + 112);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);

  v8(v10, enum case for PairingExecutorState.PairingComplete.commandFinish(_:), v9);
  v6(v10, 0, 1, v9);
  v16(v10, v15, v12);
  PairingExecutor.setState(_:)();
  swift_unknownObjectRelease();
  v21(v10, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100C278B8()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v2 = v0[27];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C27944()
{
  v9 = v0;
  if (qword_101694D78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[51] = sub_1000076D4(v1, qword_1016B8828);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x41676E6972696170, 0xEC00000029286B63, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v0[52] = *(v0[50] + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo);

  v6 = swift_task_alloc();
  v0[53] = v6;
  *v6 = v0;
  v6[1] = sub_100C27B1C;

  return sub_100C280D8((v0 + 2));
}

uint64_t sub_100C27B1C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v9 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = *(v2 + 400);
    v5 = sub_100C28008;
  }

  else
  {
    v6 = *(v2 + 416);
    v7 = *(v2 + 400);

    v5 = sub_100C27C44;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C27C44()
{
  v1 = (*(v0 + 400) + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  *(v0 + 384) = &type metadata for PairingAckData;
  *(v0 + 392) = sub_100C29C44();
  v5 = swift_allocObject();
  *(v0 + 360) = v5;
  v6 = *(v0 + 128);
  *(v5 + 112) = *(v0 + 112);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(v0 + 144);
  *(v5 + 160) = *(v0 + 160);
  v7 = *(v0 + 64);
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = v7;
  v8 = *(v0 + 96);
  *(v5 + 80) = *(v0 + 80);
  *(v5 + 96) = v8;
  v9 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v9;
  sub_100407B48(v0 + 16, v0 + 168);
  v10 = async function pointer to dispatch thunk of PairingValidator.ack(_:)[1];
  v11 = swift_task_alloc();
  *(v0 + 440) = v11;
  *v11 = v0;
  v11[1] = sub_100C27D78;

  return dispatch thunk of PairingValidator.ack(_:)(v0 + 320, v0 + 360, ObjectType, v2);
}

uint64_t sub_100C27D78()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 400);
    v5 = sub_100C2806C;
  }

  else
  {
    v6 = *(v2 + 400);
    sub_100007BAC((v2 + 360));
    v5 = sub_100C27EA0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C27EA0()
{
  sub_1000BC4D4(&qword_1016A12F8, &unk_1013A51E0);
  if (!swift_dynamicCast())
  {
    v6 = 7;
LABEL_8:
    sub_100C29CEC();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    sub_100C29C98(v0 + 16);
    v5 = *(v0 + 8);
    goto LABEL_9;
  }

  if (*(v0 + 456) != 1)
  {
    v6 = 12;
    goto LABEL_8;
  }

  v1 = *(v0 + 408);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing ack completed successfully!", v4, 2u);
  }

  sub_100C29C98(v0 + 16);

  v5 = *(v0 + 8);
LABEL_9:

  return v5();
}

uint64_t sub_100C28008()
{
  v1 = v0[52];

  v2 = v0[54];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100C2806C()
{
  sub_100C29C98((v0 + 2));
  sub_100007BAC(v0 + 45);
  v1 = v0[56];
  v2 = v0[1];

  return v2();
}

uint64_t sub_100C280D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100C28194, 0, 0);
}

uint64_t sub_100C28194()
{
  v1 = *(v0 + 32);
  v2 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v3 >> 60 == 15)
  {
LABEL_2:
    v4 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100A5B2CC((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = 1684628325;
    *(v7 + 5) = 0xE400000000000000;
    goto LABEL_9;
  }

  v8 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  if (v9 >> 60 != 15)
  {
    v10 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v11 = v10[1];
    if (v11 >> 60 == 15)
    {
      v4 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v47 = *v8;
    v48 = *v10;
    v49 = *(v0 + 48);
    v89 = *v2;
    sub_10002E98C(*v2, v3);
    v88 = v47;
    v50 = v47;
    v51 = v48;
    sub_10002E98C(v50, v9);
    sub_10002E98C(v48, v11);
    static String.Encoding.utf8.getter();
    v52 = String.init(data:encoding:)();
    if (v53)
    {
      v54 = *(v0 + 32);
      if (v54[12])
      {
        v55 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
        if (v55 >> 60 != 15 && *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8) >> 60 != 15 && *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8) >> 60 != 15 && *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8) >> 60 != 15 && v54[14] >> 60 != 15)
        {
          v81 = v54[11];
          v87 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
          v86 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
          v84 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
          v85 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
          v82 = *(v0 + 48);
          v83 = *(v0 + 40);
          v56 = *(v0 + 24);
          v68 = v54[14];
          v69 = v54[13];
          v78 = v52;
          v79 = v53;
          v80 = v54[12];
          v57 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
          v58 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8);
          v76 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8);
          v72 = *(v0 + 32);

          sub_10002E98C(v87, v55);
          sub_10002E98C(v86, v57);
          sub_10002E98C(v84, v58);
          sub_10002E98C(v85, v76);
          sub_10002E98C(v69, v68);
          sub_100313B54(v69, v68);
          v77 = v55;
          static Endianness.current.getter();
          sub_10012BF24();
          FixedWidthInteger.init(data:ofEndianness:)();
          v59 = *(v0 + 56);
          v60 = *(v0 + 60);
          v75 = sub_100313A28(v69, v68);
          v61 = *(v72 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_keyGenerationStatus);
          v62 = *(v72 + 16);
          v63 = *(v72 + 24);
          v73 = v63;
          v74 = v62;
          if (v60)
          {
            v64 = 0;
          }

          else
          {
            v64 = v59;
          }

          *(v0 + 62) = v61;
          sub_100017D5C(v62, v63);
          sub_100C29E14();
          v65 = FixedWidthInteger.data.getter();
          v70 = v66;
          v71 = v65;
          sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_10138BBE0;
          *(v67 + 32) = v84;
          *(v67 + 40) = v58;
          *(v67 + 48) = v85;
          *(v67 + 56) = v76;
          sub_100006654(v51, v11);
          sub_100006654(v69, v68);
          *v56 = v89;
          v56[1] = v3;
          v56[2] = v88;
          v56[3] = v9;
          v56[4] = v78;
          v56[5] = v79;
          v56[6] = v64;
          v56[7] = v75;
          v56[8] = v81;
          v56[9] = v80;
          v56[10] = v87;
          v56[11] = v77;
          v56[12] = v74;
          v56[13] = v73;
          v56[14] = v86;
          v56[15] = v57;
          v56[16] = v71;
          v56[17] = v70;
          v56[18] = v67;

          v45 = *(v0 + 8);
          goto LABEL_58;
        }
      }
    }

    sub_100006654(v48, v11);
    sub_100006654(v88, v9);
    sub_100006654(v89, v3);
    if (v2[1] >> 60 == 15)
    {
      goto LABEL_2;
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_9:
  v12 = *(v0 + 32);
  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v14 = *(v4 + 2);
    v13 = *(v4 + 3);
    if (v14 >= v13 >> 1)
    {
      v4 = sub_100A5B2CC((v13 > 1), v14 + 1, 1, v4);
    }

    *(v4 + 2) = v14 + 1;
    v15 = &v4[16 * v14];
    *(v15 + 4) = 0x644970696863;
    *(v15 + 5) = 0xE600000000000000;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v17 = *(v4 + 2);
    v16 = *(v4 + 3);
    if (v17 >= v16 >> 1)
    {
      v4 = sub_100A5B2CC((v16 > 1), v17 + 1, 1, v4);
    }

    *(v4 + 2) = v17 + 1;
    v18 = &v4[16 * v17];
    strcpy(v18 + 32, "serialNumber");
    v18[45] = 0;
    *(v18 + 23) = -5120;
    v12 = *(v0 + 32);
  }

  if (!*(v12 + 96))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v20 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v20 >= v19 >> 1)
    {
      v4 = sub_100A5B2CC((v19 > 1), v20 + 1, 1, v4);
    }

    *(v4 + 2) = v20 + 1;
    v21 = &v4[16 * v20];
    strcpy(v21 + 32, "systemVersion");
    *(v21 + 23) = -4864;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v23 = *(v4 + 2);
    v22 = *(v4 + 3);
    if (v23 >= v22 >> 1)
    {
      v4 = sub_100A5B2CC((v22 > 1), v23 + 1, 1, v4);
    }

    *(v4 + 2) = v23 + 1;
    v24 = &v4[16 * v23];
    strcpy(v24 + 32, "signature(S4)");
    *(v24 + 23) = -4864;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v26 = *(v4 + 2);
    v25 = *(v4 + 3);
    if (v26 >= v25 >> 1)
    {
      v4 = sub_100A5B2CC((v25 > 1), v26 + 1, 1, v4);
    }

    *(v4 + 2) = v26 + 1;
    v27 = &v4[16 * v26];
    *(v27 + 4) = 0x6553726576726573;
    *(v27 + 5) = 0xEA00000000006465;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v29 = *(v4 + 2);
    v28 = *(v4 + 3);
    if (v29 >= v28 >> 1)
    {
      v4 = sub_100A5B2CC((v28 > 1), v29 + 1, 1, v4);
    }

    *(v4 + 2) = v29 + 1;
    v30 = &v4[16 * v29];
    *(v30 + 4) = 0x436661654C616162;
    *(v30 + 5) = 0xEB00000000747265;
    v12 = *(v0 + 32);
  }

  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v32 = *(v4 + 2);
    v31 = *(v4 + 3);
    if (v32 >= v31 >> 1)
    {
      v4 = sub_100A5B2CC((v31 > 1), v32 + 1, 1, v4);
    }

    *(v4 + 2) = v32 + 1;
    v33 = &v4[16 * v32];
    *(v33 + 4) = 0xD000000000000013;
    *(v33 + 5) = 0x800000010136F630;
    v12 = *(v0 + 32);
  }

  if (*(v12 + 112) >> 60 == 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100A5B2CC(0, *(v4 + 2) + 1, 1, v4);
    }

    v35 = *(v4 + 2);
    v34 = *(v4 + 3);
    if (v35 >= v34 >> 1)
    {
      v4 = sub_100A5B2CC((v34 > 1), v35 + 1, 1, v4);
    }

    *(v4 + 2) = v35 + 1;
    v36 = &v4[16 * v35];
    *(v36 + 4) = 0x44746375646F7270;
    *(v36 + 5) = 0xEB00000000617461;
  }

  v37 = *(v0 + 40);
  v38 = *(v0 + 48);
  *(v0 + 16) = v4;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10012B138();
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 33;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  sub_100C29DC0();
  swift_allocError();
  *v44 = 0x20676E697373694DLL;
  v44[1] = 0xE800000000000000;
  swift_willThrow();

  v45 = *(v0 + 8);
LABEL_58:

  return v45();
}

uint64_t sub_100C28C18()
{
  v1 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_state;
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_stateHistory);

  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo);

  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_streamProvider);

  v8 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator);
  swift_unknownObjectRelease();
  v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheralProvider);
  swift_unknownObjectRelease();
  v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconStore);
  swift_unknownObjectRelease();
  v11 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 144);
  v20[8] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 128);
  v20[9] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 176);
  v20[10] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 160);
  v20[11] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 80);
  v20[4] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 64);
  v20[5] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 112);
  v20[6] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 96);
  v20[7] = v14;
  v15 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 16);
  v20[0] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
  v20[1] = v15;
  v16 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 48);
  v20[2] = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData + 32);
  v20[3] = v16;
  sub_10000B3A8(v20, &qword_10169F440, &unk_1013A0950);
  v17 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_crypto);

  v18 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
  swift_unknownObjectRelease();
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheral, &qword_1016A12E8, &qword_1013A51D8);
  sub_10048EAA4(*(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 8), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 16), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 24), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 32), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 40), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 48), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 56), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 64), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 72), *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo + 80));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingConfiguration, &qword_1016A12E0, &qword_1013A51D0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconRecordIdentifier, &qword_1016980D0, &unk_10138F3B0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100C28E2C()
{
  sub_100C28C18();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AirTagPairingExecutor()
{
  result = qword_1016B8888;
  if (!qword_1016B8888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C28EAC()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for PairingExecutorState();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100395648();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100C2901C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C29064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100C291A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100C2922C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator + 8);
  return swift_unknownObjectRetain();
}