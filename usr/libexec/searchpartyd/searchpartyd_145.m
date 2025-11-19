uint64_t sub_100F1FFD4()
{
  v38 = v0[108];
  v40 = v0[109];
  v36 = v0[107];
  v32 = v0[105];
  v34 = v0[106];
  v30 = v0[104];
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[93];
  v9 = v0[88];
  sub_100016590(v0[102], v0[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);

  sub_100F32E90(v6, v5, v4, v3, v2, v1, sub_100016590, sub_100006654);

  sub_100F32E90(v30, v32, v34, v36, v38, v40, sub_100016590, sub_100016590);
  v41 = v0[111];
  v10 = v0[81];
  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[78];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[73];
  v20 = v0[72];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[67];
  v24 = v0[66];
  v25 = v0[65];
  v26 = v0[64];
  v27 = v0[63];
  v28 = v0[62];
  v29 = v0[61];
  v31 = v0[58];
  v33 = v0[57];
  v35 = v0[56];
  v37 = v0[55];
  v39 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F202A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 912);
  v6 = *v2;
  v4[115] = v1;

  v7 = v4[103];
  v8 = v4[102];
  v9 = v4[99];
  v10 = v4[98];
  v11 = v4[97];
  v12 = v4[96];
  if (v1)
  {
    sub_100016590(v8, v7);
    sub_100016590(v12, v11);
    sub_100016590(v10, v9);
    v13 = sub_100F205B0;
  }

  else
  {
    v4[116] = a1;
    sub_100016590(v8, v7);
    sub_100016590(v12, v11);
    sub_100016590(v10, v9);
    v13 = sub_100F20484;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100F20484()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 1228);
  *(v0 + 944) = *(v0 + 928);
  *(v0 + 936) = v1;
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v10 = *(v0 + 768);
  v6 = *(v0 + 760);
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  sub_100017D5C(v3, *(&v3 + 1));
  sub_100017D5C(v10, *(&v10 + 1));
  sub_100017D5C(v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100F208C8;
  v8 = *(v0 + 656);

  return sub_100424C7C(v0 + 352, v8, v0 + 112, v0 + 160, v2, v1, v6, 4000);
}

uint64_t sub_100F205B0()
{
  v28 = v0[108];
  v30 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v40 = v0[103];
  v36 = v0[101];
  v38 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v32 = v0[100];
  v34 = v0[93];
  v10 = v0[88];
  v42 = v0[66];
  v44 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v28, v30, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v32, v36, sub_100016590, sub_100006654);

  sub_100016590(v38, v40);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v42, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v44, type metadata accessor for ObservedAdvertisement);
  v45 = v0[115];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v27 = v0[64];
  v29 = v0[63];
  v31 = v0[62];
  v33 = v0[61];
  v35 = v0[58];
  v37 = v0[57];
  v39 = v0[56];
  v41 = v0[55];
  v43 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F208C8()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v13 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v4 = v2[118];
    v5 = v2[103];
    v6 = v2[102];
    v7 = v2[99];
    v8 = v2[98];
    v9 = v2[97];
    v10 = v2[96];
    sub_100016590(v6, v5);
    sub_100016590(v10, v9);
    sub_100016590(v8, v7);

    v11 = sub_100F20C90;
  }

  else
  {
    v11 = sub_100F20A2C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100F20A2C()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[82];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 44;
  v0[121] = sub_1005C8110(sub_100F39FC4, v4, v2);

  v5 = swift_task_alloc();
  v0[122] = v5;
  *v5 = v0;
  v5[1] = sub_100F20B20;
  v6 = v0[57];
  v7 = v0[52];

  return sub_100F2FA04(v6, v7);
}

uint64_t sub_100F20B20()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v14 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v4 = v2[121];
    v5 = v2[118];
    v6 = v2[103];
    v7 = v2[102];
    v8 = v2[99];
    v9 = v2[98];
    v10 = v2[97];
    v11 = v2[96];
    sub_100016590(v7, v6);
    sub_100016590(v11, v10);
    sub_100016590(v9, v8);

    v12 = sub_100F21BC8;
  }

  else
  {
    v12 = sub_100F20FA8;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100F20C90()
{
  v28 = v0[108];
  v30 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v40 = v0[103];
  v36 = v0[101];
  v38 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v32 = v0[100];
  v34 = v0[93];
  v10 = v0[88];
  v42 = v0[66];
  v44 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v28, v30, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v32, v36, sub_100016590, sub_100006654);

  sub_100016590(v38, v40);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v42, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v44, type metadata accessor for ObservedAdvertisement);
  v45 = v0[120];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v27 = v0[64];
  v29 = v0[63];
  v31 = v0[62];
  v33 = v0[61];
  v35 = v0[58];
  v37 = v0[57];
  v39 = v0[56];
  v41 = v0[55];
  v43 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F20FA8()
{
  v139 = v0;
  v1 = *(v0 + 944);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1228);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    *(v0 + 992) = v4;
    v5 = *(v1 + 48);
    *(v0 + 1000) = v5;
    v6 = *(v1 + 56);
    *(v0 + 1008) = v6;
    v7 = *(v1 + 64);
    *(v0 + 1016) = v7;
    v8 = *(v1 + 72);
    *(v0 + 1024) = v8;
    sub_100017D5C(v5, v6);
    sub_100017D5C(v7, v8);

    if (v2)
    {
      v92 = *(v0 + 968);
      v106 = *(v0 + 864);
      v108 = *(v0 + 872);
      v102 = *(v0 + 848);
      v104 = *(v0 + 856);
      v98 = *(v0 + 832);
      v100 = *(v0 + 840);
      v122 = *(v0 + 824);
      v116 = *(v0 + 808);
      v119 = *(v0 + 816);
      v9 = *(v0 + 792);
      v10 = *(v0 + 784);
      v95 = v9;
      v11 = *(v0 + 776);
      v91 = v3;
      v12 = *(v0 + 768);
      v110 = *(v0 + 800);
      v113 = *(v0 + 744);
      v93 = *(v0 + 704);
      v94 = *(v0 + 760);
      v130 = *(v0 + 528);
      v133 = *(v0 + 584);
      v126 = *(v0 + 456);
      sub_100016590(v119, v122);
      sub_100016590(v12, v11);
      sub_100016590(v10, v9);
      sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_101385D80;
      *(v13 + 32) = v91;
      *&v14 = v4;
      *(&v14 + 1) = v5;
      *&v15 = v6;
      *(&v15 + 1) = v7;
      *(v13 + 56) = v15;
      *(v13 + 40) = v14;
      *(v13 + 72) = v8;
      v137 = v92;
      sub_100017D5C(v5, v6);
      sub_100017D5C(v7, v8);
      sub_10039A158(v13);

      sub_100F32E90(v98, v100, v102, v104, v106, v108, sub_100016590, sub_100016590);
      sub_100F39FE0(v0 + 352);
      sub_100F32E90(v12, v11, v10, v95, v110, v116, sub_100016590, sub_100006654);

      sub_100016590(v5, v6);
      sub_100016590(v7, v8);
      sub_100016590(v119, v122);
      sub_100016590(v12, v11);
      sub_100016590(v10, v95);
      sub_10000B3A8(v126, &unk_1016C8FC0, &unk_10139D7D0);
      sub_100F3A500(v130, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      sub_100F3A500(v133, type metadata accessor for ObservedAdvertisement);
      v16 = *(v0 + 648);
      v17 = *(v0 + 640);
      v18 = *(v0 + 632);
      v19 = *(v0 + 624);
      v20 = *(v0 + 616);
      v21 = *(v0 + 608);
      v22 = *(v0 + 600);
      v23 = *(v0 + 584);
      v96 = *(v0 + 576);
      v97 = *(v0 + 568);
      v99 = *(v0 + 560);
      v101 = *(v0 + 536);
      v103 = *(v0 + 528);
      v105 = *(v0 + 520);
      v107 = *(v0 + 512);
      v109 = *(v0 + 504);
      v111 = *(v0 + 496);
      v114 = *(v0 + 488);
      v117 = *(v0 + 464);
      v120 = *(v0 + 456);
      v123 = *(v0 + 448);
      v127 = *(v0 + 440);
      v131 = *(v0 + 424);
      sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

      v24 = *(v0 + 8);

      return v24(v92);
    }

    v38 = *(v0 + 936);
    if (v38 >= **(v0 + 456))
    {
      goto LABEL_15;
    }

    v39 = *(v0 + 584);
    v40 = *(v0 + 544);
    v41 = *(v0 + 432);
    v42 = *(v40 + 44);
    v43 = *(v41 + 36);
    if (static Date.> infix(_:_:)())
    {
      v38 = *(v0 + 936);
LABEL_15:
      if (v38)
      {
        v44 = v38 / 0x60 + 1;
      }

      else
      {
        v44 = 0;
      }

      v45 = *(v0 + 760);
      v46 = swift_task_alloc();
      *(v0 + 1056) = v46;
      *v46 = v0;
      v46[1] = sub_100F2268C;
      v47 = *(v0 + 656);

      return sub_100424C7C(v0 + 304, v47, v0 + 112, v0 + 160, 1, v44, v45, 4000);
    }

    v112 = v40;
    v115 = v41;
    v48 = *(v0 + 968);
    v49 = *(v0 + 792);
    v50 = *(v0 + 784);
    v51 = *(v0 + 776);
    v52 = *(v0 + 768);
    v132 = *(v0 + 656);
    v134 = *(v0 + 896);
    v128 = *(v0 + 616);
    v118 = *(v0 + 560);
    v121 = *(v0 + 584);
    v53 = *(v0 + 528);
    v54 = *(v0 + 496);
    v56 = *(v0 + 448);
    v55 = *(v0 + 456);
    v124 = *(v0 + 440);
    sub_100016590(*(v0 + 816), *(v0 + 824));
    sub_100016590(v52, v51);
    sub_100016590(v50, v49);

    sub_100F3A2F8(v53, v54, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_1000D2A70(v55, v56, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A2F8(v121, v118, type metadata accessor for ObservedAdvertisement);
    sub_1000D2A70(v55, v124, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A2F8(v132, v128, type metadata accessor for BeaconIdentifier);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 616);
    if (v59)
    {
      v61 = *(v0 + 560);
      v135 = v58;
      v62 = *(v0 + 496);
      v63 = *(v0 + 472);
      v64 = *(v0 + 448);
      v125 = *(v0 + 440);
      v129 = *(v0 + 592);
      v65 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v65 = 134219267;
      v66 = *(v62 + *(v63 + 24));
      sub_100F3A500(v62, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(v65 + 4) = v66;
      *(v65 + 12) = 2080;
      v67 = *v64;
      v137 = 0x7972616D6972702ELL;
      v138 = 0xEA0000000000282FLL;
      *(v0 + 408) = v67;
      v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 41;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);
      sub_10000B3A8(v64, &unk_1016C8FC0, &unk_10139D7D0);
      v70 = sub_1000136BC(v137, v138, &v136);

      *(v65 + 14) = v70;
      *(v65 + 22) = 2082;
      v71 = *(v112 + 44);
      type metadata accessor for Date();
      sub_100F3A180(&qword_1016969A0, &type metadata accessor for Date);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      sub_100F3A500(v61, type metadata accessor for ObservedAdvertisement);
      v75 = sub_1000136BC(v72, v74, &v136);

      *(v65 + 24) = v75;
      *(v65 + 32) = 2082;
      v76 = v125 + *(v115 + 36);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      sub_10000B3A8(v125, &unk_1016C8FC0, &unk_10139D7D0);
      v80 = sub_1000136BC(v77, v79, &v136);

      *(v65 + 34) = v80;
      *(v65 + 42) = 2160;
      *(v65 + 44) = 1752392040;
      *(v65 + 52) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v137 = dispatch thunk of CustomStringConvertible.description.getter();
      v138 = v81;
      v82._countAndFlagsBits = 47;
      v82._object = 0xE100000000000000;
      String.append(_:)(v82);
      v83 = v60 + *(v129 + 20);
      v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v84);

      v85 = v137;
      v86 = v138;
      sub_100F3A500(v60, type metadata accessor for BeaconIdentifier);
      v87 = sub_1000136BC(v85, v86, &v136);

      *(v65 + 54) = v87;
      _os_log_impl(&_mh_execute_header, v57, v135, "Ignoring matched index %llu < lastObservedIndex %s, scanDate: %{public}s, lastObservedDate: %{public}s, for beacon %{private,mask.hash}s.", v65, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v88 = *(v0 + 560);
      v90 = *(v0 + 440);
      v89 = *(v0 + 448);
      sub_100F3A500(*(v0 + 496), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

      sub_100F3A500(v60, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v90, &unk_1016C8FC0, &unk_10139D7D0);
      sub_100F3A500(v88, type metadata accessor for ObservedAdvertisement);
      sub_10000B3A8(v89, &unk_1016C8FC0, &unk_10139D7D0);
    }

    v35 = swift_task_alloc();
    *(v0 + 1072) = v35;
    *v35 = v0;
    v36 = sub_100F231FC;
  }

  else
  {
    v26 = *(v0 + 968);
    v27 = *(v0 + 896);
    v28 = *(v0 + 792);
    v29 = *(v0 + 784);
    v30 = *(v0 + 776);
    v31 = *(v0 + 768);
    sub_100016590(*(v0 + 816), *(v0 + 824));
    sub_100016590(v31, v30);
    sub_100016590(v29, v28);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "LTK keys should never be empty!", v34, 2u);
    }

    v35 = swift_task_alloc();
    *(v0 + 1032) = v35;
    *v35 = v0;
    v36 = sub_100F21EE8;
  }

  v35[1] = v36;
  v37 = *(v0 + 416);

  return sub_100F2C5D8(v37, (v0 + 208), (v0 + 160));
}

uint64_t sub_100F21BC8()
{
  v28 = v0[108];
  v30 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v40 = v0[103];
  v36 = v0[101];
  v38 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v32 = v0[100];
  v34 = v0[93];
  v10 = v0[88];
  v42 = v0[66];
  v44 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v28, v30, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v32, v36, sub_100016590, sub_100006654);

  sub_100016590(v38, v40);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v42, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v44, type metadata accessor for ObservedAdvertisement);
  v45 = v0[123];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v27 = v0[64];
  v29 = v0[63];
  v31 = v0[62];
  v33 = v0[61];
  v35 = v0[58];
  v37 = v0[57];
  v39 = v0[56];
  v41 = v0[55];
  v43 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F21EE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1032);
  v6 = *v2;
  *(*v2 + 1040) = v1;

  if (v1)
  {
    v7 = sub_100F22350;
  }

  else
  {
    *(v4 + 1048) = a1;
    v7 = sub_100F22010;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F22010()
{
  v27 = v0[108];
  v29 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v37 = v0[102];
  v39 = v0[103];
  v31 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v33 = v0[93];
  v35 = v0[101];
  v10 = v0[88];
  v43 = v0[66];
  v45 = v0[73];
  v41 = v0[57];

  sub_100F32E90(v4, v3, v2, v1, v27, v29, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v31, v35, sub_100016590, sub_100006654);

  sub_100016590(v37, v39);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_10000B3A8(v41, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v43, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v45, type metadata accessor for ObservedAdvertisement);
  v46 = v0[131];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v28 = v0[64];
  v30 = v0[63];
  v32 = v0[62];
  v34 = v0[61];
  v36 = v0[58];
  v38 = v0[57];
  v40 = v0[56];
  v42 = v0[55];
  v44 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19(v46);
}

uint64_t sub_100F22350()
{
  v27 = v0[108];
  v29 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v37 = v0[102];
  v39 = v0[103];
  v31 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v33 = v0[93];
  v35 = v0[101];
  v10 = v0[88];
  v43 = v0[66];
  v45 = v0[73];
  v41 = v0[57];

  sub_100F32E90(v4, v3, v2, v1, v27, v29, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v31, v35, sub_100016590, sub_100006654);

  sub_100016590(v37, v39);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_10000B3A8(v41, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v43, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v45, type metadata accessor for ObservedAdvertisement);
  v46 = v0[130];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v28 = v0[64];
  v30 = v0[63];
  v32 = v0[62];
  v34 = v0[61];
  v36 = v0[58];
  v38 = v0[57];
  v40 = v0[56];
  v42 = v0[55];
  v44 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F2268C()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v12 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v4 = sub_100F22BD0;
  }

  else
  {
    v5 = v2[103];
    v6 = v2[102];
    v7 = v2[99];
    v8 = v2[98];
    v9 = v2[97];
    v10 = v2[96];
    sub_100016590(v6, v5);
    sub_100016590(v10, v9);
    sub_100016590(v8, v7);
    v4 = sub_100F227DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F227DC()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[124];
  v4 = v0[121];
  v28 = v0[108];
  v30 = v0[109];
  v24 = v0[106];
  v26 = v0[107];
  v22 = v0[104];
  v23 = v0[105];
  v46 = v0[103];
  v48 = v0[126];
  v42 = v0[102];
  v44 = v0[125];
  v34 = v0[99];
  v36 = v0[100];
  v32 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v38 = v0[93];
  v40 = v0[101];
  v8 = v0[88];
  v52 = v0[66];
  v54 = v0[73];
  v50 = v0[57];
  sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v10 = v0[40];
  v11 = v0[41];
  *(v9 + 32) = 1;
  *(v9 + 40) = v3;
  *(v9 + 48) = v10;
  *(v9 + 56) = v11;
  *(v9 + 64) = v2;
  *(v9 + 72) = v1;
  sub_100017D5C(v10, v11);
  sub_100017D5C(v2, v1);
  sub_10039A158(v9);

  sub_100F32E90(v22, v23, v24, v26, v28, v30, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F39FE0((v0 + 38));
  sub_100F32E90(v6, v5, v32, v34, v36, v40, sub_100016590, sub_100006654);

  sub_100016590(v44, v48);
  sub_100016590(v2, v1);
  sub_100016590(v42, v46);
  sub_100016590(v6, v5);
  sub_100016590(v32, v34);
  sub_10000B3A8(v50, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v52, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v54, type metadata accessor for ObservedAdvertisement);
  v55 = v4;
  v12 = v0[81];
  v13 = v0[80];
  v14 = v0[79];
  v15 = v0[78];
  v16 = v0[77];
  v17 = v0[76];
  v18 = v0[75];
  v19 = v0[73];
  v25 = v0[72];
  v27 = v0[71];
  v29 = v0[70];
  v31 = v0[67];
  v33 = v0[66];
  v35 = v0[65];
  v37 = v0[64];
  v39 = v0[63];
  v41 = v0[62];
  v43 = v0[61];
  v45 = v0[58];
  v47 = v0[57];
  v49 = v0[56];
  v51 = v0[55];
  v53 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v20 = v0[1];

  return v20(v55);
}

uint64_t sub_100F22BD0()
{
  v90 = v0;
  v1 = v0[133];
  v2 = v0[112];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  sub_100016590(v0[102], v0[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[133];
    v79 = v0[127];
    v82 = v0[128];
    v42 = v0[108];
    v43 = v0[109];
    v40 = v0[106];
    v41 = v0[107];
    v38 = v0[104];
    v39 = v0[105];
    v71 = v0[126];
    v74 = v0[103];
    v65 = v0[125];
    v68 = v0[102];
    v53 = v0[99];
    v56 = v0[100];
    v47 = v0[97];
    v50 = v0[98];
    v44 = v0[96];
    v10 = v0[95];
    v59 = v0[93];
    v62 = v0[101];
    v11 = v0[88];
    v85 = v0[66];
    v87 = v0[73];
    v77 = v0[57];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v89 = v13;
    *v12 = 136446210;
    v0[50] = v9;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000136BC(v14, v15, &v89);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to generate secondary keys due to: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);

    sub_100F32E90(v38, v39, v40, v41, v42, v43, sub_100016590, sub_100016590);
    sub_100F39FE0((v0 + 44));

    v17 = v53;
    sub_100F32E90(v44, v47, v50, v53, v56, v62, sub_100016590, sub_100006654);

    sub_100016590(v65, v71);
    sub_100016590(v79, v82);
    sub_100016590(v68, v74);
    sub_100016590(v44, v47);
    v18 = v50;
  }

  else
  {
    v66 = v0[133];
    v80 = v0[127];
    v83 = v0[128];
    v45 = v0[108];
    v48 = v0[109];
    v19 = v0[107];
    v20 = v0[106];
    v21 = v0[105];
    v22 = v0[104];
    v72 = v0[126];
    v75 = v0[103];
    v69 = v0[102];
    v60 = v0[101];
    v63 = v0[125];
    v51 = v7;
    v54 = v0[100];
    v17 = v0[99];
    v23 = v0[98];
    v24 = v0[97];
    v25 = v0[96];
    v26 = v0[95];
    v57 = v0[93];
    v27 = v0[88];
    v85 = v0[66];
    v87 = v0[73];
    v77 = v0[57];

    sub_100F32E90(v22, v21, v20, v19, v45, v48, sub_100016590, sub_100016590);
    sub_100F39FE0((v0 + 44));

    sub_100F32E90(v25, v24, v23, v17, v54, v60, sub_100016590, sub_100006654);

    sub_100016590(v63, v72);
    sub_100016590(v80, v83);
    sub_100016590(v69, v75);
    sub_100016590(v25, v24);
    v18 = v23;
  }

  sub_100016590(v18, v17);
  sub_10000B3A8(v77, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v85, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v87, type metadata accessor for ObservedAdvertisement);
  v88 = v0[121];
  v28 = v0[81];
  v29 = v0[80];
  v30 = v0[79];
  v31 = v0[78];
  v32 = v0[77];
  v33 = v0[76];
  v34 = v0[75];
  v35 = v0[73];
  v46 = v0[72];
  v49 = v0[71];
  v52 = v0[70];
  v55 = v0[67];
  v58 = v0[66];
  v61 = v0[65];
  v64 = v0[64];
  v67 = v0[63];
  v70 = v0[62];
  v73 = v0[61];
  v76 = v0[58];
  v78 = v0[57];
  v81 = v0[56];
  v84 = v0[55];
  v86 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v36 = v0[1];

  return v36(v88);
}

uint64_t sub_100F231FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1072);
  v6 = *v2;
  *(*v2 + 1080) = v1;

  if (v1)
  {
    v7 = sub_100F2369C;
  }

  else
  {
    *(v4 + 1088) = a1;
    v7 = sub_100F23324;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F23324()
{
  v45 = v0[128];
  v43 = v0[127];
  v23 = v0[108];
  v25 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v37 = v0[126];
  v39 = v0[103];
  v33 = v0[125];
  v35 = v0[102];
  v27 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v29 = v0[93];
  v31 = v0[101];
  v10 = v0[88];
  v47 = v0[66];
  v49 = v0[73];
  v41 = v0[57];

  sub_100F32E90(v4, v3, v2, v1, v23, v25, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v27, v31, sub_100016590, sub_100006654);

  sub_100016590(v33, v37);
  sub_100016590(v43, v45);
  sub_100016590(v35, v39);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_10000B3A8(v41, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v47, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v49, type metadata accessor for ObservedAdvertisement);
  v50 = v0[136];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v24 = v0[70];
  v26 = v0[67];
  v28 = v0[66];
  v30 = v0[65];
  v32 = v0[64];
  v34 = v0[63];
  v36 = v0[62];
  v38 = v0[61];
  v40 = v0[58];
  v42 = v0[57];
  v44 = v0[56];
  v46 = v0[55];
  v48 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19(v50);
}

uint64_t sub_100F2369C()
{
  v45 = v0[128];
  v43 = v0[127];
  v23 = v0[108];
  v25 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v37 = v0[126];
  v39 = v0[103];
  v33 = v0[125];
  v35 = v0[102];
  v27 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v29 = v0[93];
  v31 = v0[101];
  v10 = v0[88];
  v47 = v0[66];
  v49 = v0[73];
  v41 = v0[57];

  sub_100F32E90(v4, v3, v2, v1, v23, v25, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v27, v31, sub_100016590, sub_100006654);

  sub_100016590(v33, v37);
  sub_100016590(v43, v45);
  sub_100016590(v35, v39);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_10000B3A8(v41, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v47, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v49, type metadata accessor for ObservedAdvertisement);
  v50 = v0[135];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v24 = v0[70];
  v26 = v0[67];
  v28 = v0[66];
  v30 = v0[65];
  v32 = v0[64];
  v34 = v0[63];
  v36 = v0[62];
  v38 = v0[61];
  v40 = v0[58];
  v42 = v0[57];
  v44 = v0[56];
  v46 = v0[55];
  v48 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F23A10()
{
  v2 = *v1;
  v3 = *(*v1 + 1112);
  v4 = *v1;
  *(*v1 + 1120) = v0;

  v5 = v2[99];
  v6 = v2[98];
  v7 = v2[97];
  v8 = v2[96];
  sub_100016590(v2[102], v2[103]);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  if (v0)
  {
    v9 = sub_100F23F90;
  }

  else
  {
    v9 = sub_100F23BC8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F23BC8()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 256);
  v3 = *(v0 + 288);
  v1[3] = *(v0 + 272);
  v1[4] = v3;
  v1[2] = v2;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  *(v0 + 1128) = v5;
  *v5 = v0;
  v5[1] = sub_100F23C6C;

  return daemon.getter();
}

uint64_t sub_100F23C6C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1128);
  v5 = *v1;
  v3[142] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[143] = v7;
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v7 = v5;
  v7[1] = sub_100F23E20;
  v10 = v3[87];
  v11 = v3[86];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F23E20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1144);
  v6 = *v2;
  *(v4 + 1152) = a1;
  *(v4 + 1160) = v1;

  v7 = *(v4 + 1136);
  if (v1)
  {

    v8 = sub_100F24360;
    v9 = 0;
  }

  else
  {
    v10 = *(v4 + 592);

    *(v4 + 1224) = *(v10 + 20);
    v8 = sub_100F242B8;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100F23F90()
{
  v45 = v0[137];
  v27 = v0[108];
  v29 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v37 = v0[102];
  v39 = v0[103];
  v31 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v33 = v0[93];
  v35 = v0[101];
  v10 = v0[88];
  v41 = v0[66];
  v43 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v27, v29, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v31, v35, sub_100016590, sub_100006654);

  sub_100016590(v37, v39);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v41, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v43, type metadata accessor for ObservedAdvertisement);
  *(v45 + 16) = 0;

  v46 = v0[140];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v28 = v0[64];
  v30 = v0[63];
  v32 = v0[62];
  v34 = v0[61];
  v36 = v0[58];
  v38 = v0[57];
  v40 = v0[56];
  v42 = v0[55];
  v44 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F242B8()
{
  v1 = *(v0 + 1160);
  v2 = *(*(v0 + 1152) + 128);
  sub_100F856F4(*(v0 + 656) + *(v0 + 1224), *(v0 + 424));
  *(v0 + 1168) = v1;
  if (v1)
  {
    v3 = *(v0 + 1096);

    v4 = sub_100F24C30;
  }

  else
  {
    v4 = sub_100F2448C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F24360()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1228);
  *(v0 + 944) = *(v0 + 1096);
  *(v0 + 936) = v1;
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v10 = *(v0 + 768);
  v6 = *(v0 + 760);
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  sub_100017D5C(v3, *(&v3 + 1));
  sub_100017D5C(v10, *(&v10 + 1));
  sub_100017D5C(v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100F208C8;
  v8 = *(v0 + 656);

  return sub_100424C7C(v0 + 352, v8, v0 + 112, v0 + 160, v2, v1, v6, 4000);
}

uint64_t sub_100F2448C()
{
  v82 = v0;
  v1 = *(v0 + 424);
  v2 = type metadata accessor for StandaloneBeacon();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 1152);

    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    v4 = *(v0 + 1104);
    v5 = *(v0 + 1228);
    *(v0 + 944) = *(v0 + 1096);
    *(v0 + 936) = v4;
    v6 = *(v0 + 816);
    v7 = *(v0 + 792);
    v8 = *(v0 + 784);
    v76 = *(v0 + 768);
    v9 = *(v0 + 760);
    *(v0 + 112) = v6;
    *(v0 + 128) = v76;
    *(v0 + 144) = v8;
    *(v0 + 152) = v7;
    sub_100017D5C(v6, *(&v6 + 1));
    sub_100017D5C(v76, *(&v76 + 1));
    sub_100017D5C(v8, v7);
    v10 = swift_task_alloc();
    *(v0 + 952) = v10;
    *v10 = v0;
    v10[1] = sub_100F208C8;
    v11 = *(v0 + 656);

    return sub_100424C7C(v0 + 352, v11, v0 + 112, v0 + 160, v5, v4, v9, 4000);
  }

  else
  {
    v13 = *(v0 + 896);
    v14 = *(v0 + 656);
    v15 = *(v0 + 600);
    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    sub_100F3A2F8(v14, v15, type metadata accessor for BeaconIdentifier);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v62 = *(v0 + 872);
    v64 = *(v0 + 1152);
    v58 = *(v0 + 856);
    v60 = *(v0 + 864);
    v54 = *(v0 + 840);
    v56 = *(v0 + 848);
    v52 = *(v0 + 832);
    v19 = *(v0 + 824);
    v74 = *(v0 + 816);
    v70 = *(v0 + 808);
    v66 = *(v0 + 800);
    v20 = *(v0 + 792);
    v21 = *(v0 + 784);
    v77 = *(v0 + 776);
    v72 = *(v0 + 768);
    v50 = *(v0 + 760);
    v68 = *(v0 + 744);
    v22 = *(v0 + 704);
    v23 = *(v0 + 600);
    if (v18)
    {
      v44 = *(v0 + 592);
      v46 = *(v0 + 528);
      v48 = *(v0 + 584);
      v24 = swift_slowAlloc();
      v45 = v20;
      v25 = swift_slowAlloc();
      v79 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v26;
      v27._countAndFlagsBits = 47;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28 = v23 + *(v44 + 20);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      sub_100F3A500(v23, type metadata accessor for BeaconIdentifier);
      v30 = sub_1000136BC(v80, v81, &v79);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v16, v17, "Skipping secondary keys for standalone beacon %{private,mask.hash}s", v24, 0x16u);
      sub_100007BAC(v25);

      sub_100F32E90(v52, v54, v56, v58, v60, v62, sub_100016590, sub_100016590);

      sub_100F32E90(v72, v77, v21, v45, v66, v70, sub_100016590, sub_100006654);

      sub_100016590(v74, v19);
      sub_100016590(v72, v77);
      sub_100016590(v21, v45);
      sub_100F3A500(v46, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v31 = v48;
    }

    else
    {
      v32 = *(v0 + 584);
      v33 = *(v0 + 528);
      v34 = *(v0 + 704);

      sub_100F32E90(v52, v54, v56, v58, v60, v62, sub_100016590, sub_100016590);

      sub_100F32E90(v72, v77, v21, v20, v66, v70, sub_100016590, sub_100006654);

      sub_100016590(v74, v19);
      sub_100016590(v72, v77);
      sub_100016590(v21, v20);
      sub_100F3A500(v23, type metadata accessor for BeaconIdentifier);
      sub_100F3A500(v33, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v31 = v32;
    }

    sub_100F3A500(v31, type metadata accessor for ObservedAdvertisement);
    v78 = *(v0 + 1096);
    v35 = *(v0 + 648);
    v36 = *(v0 + 640);
    v37 = *(v0 + 632);
    v38 = *(v0 + 624);
    v39 = *(v0 + 616);
    v40 = *(v0 + 608);
    v41 = *(v0 + 600);
    v42 = *(v0 + 584);
    v47 = *(v0 + 576);
    v49 = *(v0 + 568);
    v51 = *(v0 + 560);
    v53 = *(v0 + 536);
    v55 = *(v0 + 528);
    v57 = *(v0 + 520);
    v59 = *(v0 + 512);
    v61 = *(v0 + 504);
    v63 = *(v0 + 496);
    v65 = *(v0 + 488);
    v67 = *(v0 + 464);
    v69 = *(v0 + 456);
    v71 = *(v0 + 448);
    v73 = *(v0 + 440);
    v75 = *(v0 + 424);
    sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

    v43 = *(v0 + 8);

    return v43(v78);
  }
}

uint64_t sub_100F24C30()
{
  v29 = v0[109];
  v31 = v0[144];
  v27 = v0[108];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v41 = v0[103];
  v37 = v0[101];
  v39 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v33 = v0[100];
  v35 = v0[93];
  v10 = v0[88];
  v43 = v0[66];
  v45 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v27, v29, sub_100016590, sub_100016590);

  sub_100F32E90(v8, v7, v6, v5, v33, v37, sub_100016590, sub_100006654);

  sub_100016590(v39, v41);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v43, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v45, type metadata accessor for ObservedAdvertisement);
  v46 = v0[146];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v28 = v0[64];
  v30 = v0[63];
  v32 = v0[62];
  v34 = v0[61];
  v36 = v0[58];
  v38 = v0[57];
  v40 = v0[56];
  v42 = v0[55];
  v44 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F24F58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1176);
  v6 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {
    v7 = sub_100F25378;
  }

  else
  {
    *(v4 + 1192) = a1;
    v7 = sub_100F25080;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F25080()
{
  v29 = v0[108];
  v31 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v39 = v0[102];
  v41 = v0[103];
  v33 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v35 = v0[93];
  v37 = v0[101];
  v10 = v0[88];
  v43 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v29, v31, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v33, v37, sub_100016590, sub_100006654);

  sub_100016590(v39, v41);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v43, type metadata accessor for ObservedAdvertisement);
  v44 = v0[149];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[63];
  v30 = v0[62];
  v32 = v0[61];
  v34 = v0[58];
  v36 = v0[57];
  v38 = v0[56];
  v40 = v0[55];
  v42 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19(v44);
}

uint64_t sub_100F25378()
{
  v29 = v0[108];
  v31 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v39 = v0[102];
  v41 = v0[103];
  v33 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v35 = v0[93];
  v37 = v0[101];
  v10 = v0[88];
  v43 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v29, v31, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v33, v37, sub_100016590, sub_100006654);

  sub_100016590(v39, v41);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v43, type metadata accessor for ObservedAdvertisement);
  v44 = v0[148];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[63];
  v30 = v0[62];
  v32 = v0[61];
  v34 = v0[58];
  v36 = v0[57];
  v38 = v0[56];
  v40 = v0[55];
  v42 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F2566C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1200);
  v6 = *v2;
  *(*v2 + 1208) = v1;

  if (v1)
  {
    v7 = sub_100F25A64;
  }

  else
  {
    *(v4 + 1216) = a1;
    v7 = sub_100F25794;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F25794()
{
  v38 = v0[108];
  v40 = v0[109];
  v36 = v0[107];
  v32 = v0[105];
  v34 = v0[106];
  v30 = v0[104];
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[93];
  v9 = v0[88];
  sub_100016590(v0[102], v0[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);

  sub_100F32E90(v6, v5, v4, v3, v2, v1, sub_100016590, sub_100006654);

  sub_100F32E90(v30, v32, v34, v36, v38, v40, sub_100016590, sub_100016590);
  v41 = v0[152];
  v10 = v0[81];
  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[78];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[73];
  v20 = v0[72];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[67];
  v24 = v0[66];
  v25 = v0[65];
  v26 = v0[64];
  v27 = v0[63];
  v28 = v0[62];
  v29 = v0[61];
  v31 = v0[58];
  v33 = v0[57];
  v35 = v0[56];
  v37 = v0[55];
  v39 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18(v41);
}

uint64_t sub_100F25A64()
{
  v38 = v0[108];
  v40 = v0[109];
  v36 = v0[107];
  v32 = v0[105];
  v34 = v0[106];
  v30 = v0[104];
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[93];
  v9 = v0[88];
  sub_100016590(v0[102], v0[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);

  sub_100F32E90(v6, v5, v4, v3, v2, v1, sub_100016590, sub_100006654);

  sub_100F32E90(v30, v32, v34, v36, v38, v40, sub_100016590, sub_100016590);
  v41 = v0[151];
  v10 = v0[81];
  v11 = v0[80];
  v12 = v0[79];
  v13 = v0[78];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[73];
  v20 = v0[72];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[67];
  v24 = v0[66];
  v25 = v0[65];
  v26 = v0[64];
  v27 = v0[63];
  v28 = v0[62];
  v29 = v0[61];
  v31 = v0[58];
  v33 = v0[57];
  v35 = v0[56];
  v37 = v0[55];
  v39 = v0[53];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F25D30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = type metadata accessor for ObservedAdvertisement(0);
  v2[13] = v11;
  v12 = *(v11 - 8);
  v2[14] = v12;
  v13 = *(v12 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v14 = type metadata accessor for BeaconIdentifier();
  v2[17] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100F25F90, 0, 0);
}

uint64_t sub_100F25F90()
{
  sub_100F3A2F8(v0[2], v0[22], type metadata accessor for BeaconIdentifier);
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_100F26040;

  return daemon.getter();
}

uint64_t sub_100F26040(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v12 = *v1;
  *(v3 + 192) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 200) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100F2621C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F2621C(uint64_t a1)
{
  v3 = *(*v2 + 200);
  v4 = *(*v2 + 192);
  v5 = *v2;
  v5[26] = a1;
  v5[27] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F26860, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v5[28] = v6;
    *v6 = v5;
    v6[1] = sub_100F263B4;
    v7 = v5[3];

    return sub_100946D3C();
  }
}

uint64_t sub_100F263B4(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_100F264B4, 0, 0);
}

uint64_t sub_100F264B4()
{
  if (v0[29])
  {
    v1 = swift_task_alloc();
    v0[30] = v1;
    *v1 = v0;
    v1[1] = sub_100F2674C;
    v2 = v0[26];
    v3 = v0[22];
    v4 = v0[12];

    return sub_1010CD810(v4, v3);
  }

  else
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B810);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing ItemSharingKeyStore!", v9, 2u);
    }

    v10 = v0[26];

    sub_100F32E3C();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    v12 = v0[21];
    v14 = v0[19];
    v13 = v0[20];
    v15 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[11];
    v19 = v0[12];
    v21 = v0[8];
    v22 = v0[7];
    v23 = v0[6];
    sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100F2674C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100F2780C;
  }

  else
  {
    v3 = sub_100F26980;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F26860()
{
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[11];
  v8 = v0[12];
  v11 = v0[8];
  v12 = v0[7];
  v13 = v0[6];
  v14 = v0[27];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F26980()
{
  v135 = v0;
  v1 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v1, 1, *(v0 + 104)) == 1)
  {
    sub_10000B3A8(v1, &unk_10169BB50, &unk_101395760);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v3, v2, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 168);
    if (v7)
    {
      v9 = *(v0 + 136);
      v10 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v132 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v133 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v13;
      v14._countAndFlagsBits = 47;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = v8 + *(v9 + 20);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v17 = sub_1000136BC(v133, v134, &v132);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "No observed advertisement for beacon %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v31 = swift_task_alloc();
    *(v0 + 632) = v31;
    *v31 = v0;
    v32 = sub_100F2A820;
    goto LABEL_12;
  }

  sub_100F3A498(v1, *(v0 + 128), type metadata accessor for ObservedAdvertisement);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177B810);
  sub_100F3A2F8(v18, v19, type metadata accessor for ObservedAdvertisement);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 120);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v133 = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v27 = sub_100018680(v26);
    v29 = v28;
    sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement);
    v30 = sub_1000136BC(v27, v29, &v133);

    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Found observed advertisement %{private,mask.hash}s.", v25, 0x16u);
    sub_100007BAC(v26);
  }

  else
  {

    sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement);
  }

  v36 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 64);
  sub_1000D2A70(*(v0 + 128) + *(*(v0 + 104) + 52), v38, &qword_101699DB0, &unk_101393100);
  v39 = (*(v37 + 48))(v38, 1, v36);
  v40 = *(v0 + 176);
  if (v39 == 1)
  {
    v41 = *(v0 + 160);
    sub_10000B3A8(*(v0 + 64), &qword_101699DB0, &unk_101393100);
    sub_100F3A2F8(v40, v41, type metadata accessor for BeaconIdentifier);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 232);
    v46 = *(v0 + 208);
    v47 = *(v0 + 176);
    v48 = *(v0 + 160);
    if (v44)
    {
      v125 = *(v0 + 136);
      v130 = *(v0 + 128);
      v49 = *(v0 + 32);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v132 = v51;
      *v50 = 141558275;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v126 = v47;
      v133 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v52;
      v53._countAndFlagsBits = 47;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      v54 = v48 + *(v125 + 20);
      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v55);

      v56 = v133;
      v57 = v134;
      sub_100F3A500(v48, type metadata accessor for BeaconIdentifier);
      v58 = sub_1000136BC(v56, v57, &v132);

      *(v50 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v42, v43, "Missing beaconIndexInformation for %{private,mask.hash}s!", v50, 0x16u);
      sub_100007BAC(v51);

      sub_100F3A500(v130, type metadata accessor for ObservedAdvertisement);
      v59 = v126;
    }

    else
    {
      v85 = *(v0 + 128);
      v86 = *(v0 + 208);

      sub_100F3A500(v48, type metadata accessor for BeaconIdentifier);
      sub_100F3A500(v85, type metadata accessor for ObservedAdvertisement);
      v59 = v47;
    }

    sub_100F3A500(v59, type metadata accessor for BeaconIdentifier);
    v88 = *(v0 + 168);
    v87 = *(v0 + 176);
    v90 = *(v0 + 152);
    v89 = *(v0 + 160);
    v91 = *(v0 + 144);
    v93 = *(v0 + 120);
    v92 = *(v0 + 128);
    v95 = *(v0 + 88);
    v94 = *(v0 + 96);
    v96 = *(v0 + 64);
    v129 = *(v0 + 56);
    v131 = *(v0 + 48);

    v97 = *(v0 + 8);

    return v97(_swiftEmptyArrayStorage);
  }

  else
  {
    v61 = *(v0 + 128);
    v60 = *(v0 + 136);
    v62 = *(v0 + 88);
    v63 = *(v0 + 72);
    v65 = *(v0 + 48);
    v64 = *(v0 + 56);
    v66 = *(v0 + 32);
    v67 = *(v0 + 40);
    sub_100F3A498(*(v0 + 64), v62, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v68 = *(v62 + *(v63 + 20));
    v69 = *(v67 + 16);
    v69(v64, v40, v66);
    v128 = v60;
    v69(v65, v40 + *(v60 + 20), v66);
    v70 = *(v61 + 34);
    *(v0 + 656) = v70;
    if (*(v61 + 35))
    {
      if (v68)
      {
        sub_100F3A2F8(*(v0 + 176), *(v0 + 144), type metadata accessor for BeaconIdentifier);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.fault.getter();
        v73 = os_log_type_enabled(v71, v72);
        v74 = *(v0 + 144);
        if (v73)
        {
          v75 = *(v0 + 32);
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v132 = v77;
          *v76 = 141558275;
          *(v76 + 4) = 1752392040;
          *(v76 + 12) = 2081;
          sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
          v133 = dispatch thunk of CustomStringConvertible.description.getter();
          v134 = v78;
          v79._countAndFlagsBits = 47;
          v79._object = 0xE100000000000000;
          String.append(_:)(v79);
          v80 = v74 + *(v128 + 20);
          v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v81);

          v82 = v133;
          v83 = v134;
          sub_100F3A500(v74, type metadata accessor for BeaconIdentifier);
          v84 = sub_1000136BC(v82, v83, &v132);

          *(v76 + 14) = v84;
          _os_log_impl(&_mh_execute_header, v71, v72, "%{private,mask.hash}s Should be impossible to be in secondary sequence without a hint!", v76, 0x16u);
          sub_100007BAC(v77);
        }

        else
        {

          sub_100F3A500(v74, type metadata accessor for BeaconIdentifier);
        }

        v31 = swift_task_alloc();
        *(v0 + 608) = v31;
        *v31 = v0;
        v32 = sub_100F2A3A4;
LABEL_12:
        v31[1] = v32;
        v33 = *(v0 + 16);
        v34 = *(v0 + 24);

        return sub_100F30CB0(v33);
      }

      v118 = *(v0 + 232);
      v119 = *(*(v0 + 88) + *(*(v0 + 72) + 24));
      *(v0 + 504) = v119;
      v120 = swift_task_alloc();
      *(v0 + 512) = v120;
      *v120 = v0;
      v120[1] = sub_100F29268;
      v121 = *(v0 + 48);
      v122 = *(v0 + 56);

      return sub_100F10DF4(v122, v121, v119);
    }

    else
    {
      v127 = v68;
      v98 = *(v0 + 176);
      v99 = *(v0 + 152);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_101385D80;
      *(v100 + 56) = &type metadata for UInt8;
      *(v100 + 64) = &protocol witness table for UInt8;
      *(v100 + 32) = v70;
      v101 = String.init(format:_:)();
      v103 = v102;
      sub_100F3A2F8(v98, v99, type metadata accessor for BeaconIdentifier);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.info.getter();
      v106 = os_log_type_enabled(v104, v105);
      v107 = *(v0 + 152);
      if (v106)
      {
        v108 = *(v0 + 32);
        v109 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v109 = 136446723;
        v110 = sub_1000136BC(v101, v103, &v132);

        *(v109 + 4) = v110;
        *(v109 + 12) = 2160;
        *(v109 + 14) = 1752392040;
        *(v109 + 22) = 2081;
        sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
        v133 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = v111;
        v112._countAndFlagsBits = 47;
        v112._object = 0xE100000000000000;
        String.append(_:)(v112);
        v113 = v107 + *(v128 + 20);
        v114._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v114);

        v115 = v133;
        v116 = v134;
        sub_100F3A500(v107, type metadata accessor for BeaconIdentifier);
        v117 = sub_1000136BC(v115, v116, &v132);

        *(v109 + 24) = v117;
        _os_log_impl(&_mh_execute_header, v104, v105, "Hint %{public}s is available for %{private,mask.hash}s", v109, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100F3A500(v107, type metadata accessor for BeaconIdentifier);
      }

      *(v0 + 256) = *(*(v0 + 88) + *(*(v0 + 72) + 24));
      v123 = *(v0 + 232);
      if (v127)
      {
        v124 = sub_100F285BC;
      }

      else
      {
        v124 = sub_100F27940;
      }

      return _swift_task_switch(v124, v123, 0);
    }
  }
}

uint64_t sub_100F2780C()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[21];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[11];
  v10 = v0[12];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[6];
  v16 = v0[31];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v11 = v0[1];

  return v11();
}

void sub_100F27940()
{
  v1 = v0[32];
  v0[33] = v1 + 96;
  if (v1 >= 0xFFFFFFFFFFFFFFA0)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v0[35] = v1;
    v0[36] = _swiftEmptyDictionarySingleton;
    v0[34] = _swiftEmptyDictionarySingleton;
    v0[37] = 96;
    v2 = v0[29];
    v3 = swift_task_alloc();
    v0[38] = v3;
    *v3 = v0;
    v3[1] = sub_100F27A28;
    v4 = v0[6];
    v5 = v0[7];

    sub_100F10DF4(v5, v4, v1);
  }
}

uint64_t sub_100F27A28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 304);
  v10 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {
    v6 = v4[36];

    v7 = v4[29];
    v8 = sub_100F27D38;
  }

  else
  {
    v7 = v4[29];
    v8 = sub_100F27B4C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F27B4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 320);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 312);
    v5 = *(v2 + 656);
    if (v5 == Data._Representation.subscript.getter())
    {
      v6 = *(v2 + 232);
      v7 = swift_task_alloc();
      *(v2 + 336) = v7;
      *v7 = v2;
      v7[1] = sub_100F27D5C;
      v8 = *(v2 + 280);
      v9 = *(v2 + 48);
      v10 = *(v2 + 56);

      return sub_1006868C4(v10, v9, v8);
    }

    a1 = sub_100006654(*(v2 + 312), *(v2 + 320));
  }

  v12 = *(v2 + 272);
  v13 = *(v2 + 288);
  v14 = *(v2 + 296);
  *(v2 + 368) = v13;
  if (!v14)
  {
    a1 = sub_100F280CC;
    a2 = 0;
    v3 = 0;

    return _swift_task_switch(a1, a2, v3);
  }

  v15 = *(v2 + 280);
  v16 = v15 + 1;
  if (v15 == -1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 280) = v16;
  *(v2 + 288) = v13;
  *(v2 + 272) = v12;
  v17 = *(v2 + 264);
  v18 = v17 - v16;
  if (v17 >= v16)
  {
    if ((v17 - v16) >= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if ((v16 - v17) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_task_switch(a1, a2, v3);
  }

  v18 = v17 - v16;
LABEL_16:
  *(v2 + 296) = v18;
  v19 = *(v2 + 232);
  v20 = swift_task_alloc();
  *(v2 + 304) = v20;
  *v20 = v2;
  v20[1] = sub_100F27A28;
  v21 = *(v2 + 48);
  v22 = *(v2 + 56);

  return sub_100F10DF4(v22, v21, v16);
}

uint64_t sub_100F27D5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 336);
  v10 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {
    v6 = v4[36];

    v7 = v4[29];
    v8 = sub_100F2805C;
  }

  else
  {
    v7 = v4[29];
    v8 = sub_100F27E80;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F27E80()
{
  v1 = v0[44];
  if (v1 >> 60 == 15)
  {
    v2 = sub_100006654(v0[39], v0[40]);
    v5 = v0[36];
    v6 = v0[34];
  }

  else
  {
    v7 = v0[43];
    v9 = v0[39];
    v8 = v0[40];
    v10 = v0[34];
    v11 = v0[35];
    sub_100017D5C(v7, v0[44]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFF448(v7, v1, v11, isUniquelyReferenced_nonNull_native);
    sub_100006654(v9, v8);
    v2 = sub_100006654(v7, v1);
    v6 = v10;
    v5 = v10;
  }

  v0[46] = v5;
  if (!v0[37])
  {
    v2 = sub_100F280CC;
    v3 = 0;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v13 = v0[35];
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v0[35] = v14;
  v0[36] = v5;
  v0[34] = v6;
  v15 = v0[33];
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if ((v14 - v15) < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v16 = v15 - v14;
LABEL_13:
  v0[37] = v16;
  v17 = v0[29];
  v18 = swift_task_alloc();
  v0[38] = v18;
  *v18 = v0;
  v18[1] = sub_100F27A28;
  v19 = v0[6];
  v20 = v0[7];

  return sub_100F10DF4(v20, v19, v14);
}

uint64_t sub_100F2805C()
{
  sub_100006654(v0[39], v0[40]);
  v0[47] = v0[45];

  return _swift_task_switch(sub_100F28414, 0, 0);
}

uint64_t sub_100F280CC()
{
  v50 = v0;
  v45 = v0[46];
  v1 = v0[16];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v47 = v2 & 0xDFFFFFFFFFFFFFFFLL;
    result = sub_100017D5C(*(v1 + 16), v2 & 0xDFFFFFFFFFFFFFFFLL);
    v5 = v3;
  }

  else
  {
    sub_100017D5C(*(v1 + 16), *(v1 + 24));
    result = sub_10002EA98(6, v3, v2, v49);
    v5 = v49[0];
    v47 = v49[1];
  }

  v6 = 0;
  v7 = -1;
  v8 = -1 << *(v45 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v45 + 64);
  v10 = (63 - v8) >> 6;
  v11 = _swiftEmptyArrayStorage;
  v43 = v5;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v45 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      do
      {
LABEL_11:
        v13 = __clz(__rbit64(v9)) | (v6 << 6);
        v14 = *(*(v45 + 48) + 8 * v13);
        v15 = (*(v45 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        sub_100017D5C(*v15, v17);
        sub_100017D5C(v5, v47);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5CBA0(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v11;
        if (v19 >= v18 >> 1)
        {
          result = sub_100A5CBA0((v18 > 1), v19 + 1, 1, v11);
          v20 = result;
        }

        *(v20 + 2) = v19 + 1;
        v11 = v20;
        v21 = &v20[48 * v19];
        v21[32] = 0;
        v9 &= v9 - 1;
        v5 = v43;
        *(v21 + 5) = v14;
        *(v21 + 6) = v43;
        *(v21 + 7) = v47;
        *(v21 + 8) = v16;
        *(v21 + 9) = v17;
      }

      while (v9);
    }
  }

  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[22];
  v25 = v0[16];
  v26 = v0[11];
  v27 = v0[6];
  v28 = v0[7];
  v44 = v11;
  v30 = v0[4];
  v29 = v0[5];

  sub_100016590(v5, v47);
  v31 = *(v29 + 8);
  v31(v27, v30);
  v31(v28, v30);
  sub_100F3A500(v26, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v25, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v24, type metadata accessor for BeaconIdentifier);

  v33 = v0[21];
  v32 = v0[22];
  v35 = v0[19];
  v34 = v0[20];
  v36 = v0[18];
  v38 = v0[15];
  v37 = v0[16];
  v40 = v0[11];
  v39 = v0[12];
  v46 = v0[8];
  v48 = v0[7];
  v41 = v0[6];

  v42 = v0[1];

  return v42(v44);
}

uint64_t sub_100F28414()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[16];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  v10 = v0[21];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[11];
  v17 = v0[12];
  v20 = v0[8];
  v21 = v0[7];
  v22 = v0[6];
  v23 = v0[47];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

void sub_100F285BC()
{
  v1 = v0[32];
  if (!v1)
  {
    goto LABEL_8;
  }

  if (!is_mul_ok(v1, 0x60uLL))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v2 = 96 * v1;
  v1 = 96 * v1 - 1;
  v3 = v2 - 96;
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v1 < v4)
  {
    __break(1u);
LABEL_8:
    v4 = 0;
  }

  v0[50] = v4;
  v0[51] = _swiftEmptyDictionarySingleton;
  v0[48] = v1;
  v0[49] = _swiftEmptyDictionarySingleton;
  v5 = v1 - v4;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v0[52] = v5;
  v6 = v0[29];
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_100F286D4;
  v8 = v0[6];
  v9 = v0[7];

  sub_100F10DF4(v9, v8, v4);
}

uint64_t sub_100F286D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 424);
  v10 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {
    v6 = v4[51];

    v7 = v4[29];
    v8 = sub_100F289E4;
  }

  else
  {
    v7 = v4[29];
    v8 = sub_100F287F8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F287F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 440);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 432);
    v5 = *(v2 + 656);
    if (v5 == Data._Representation.subscript.getter())
    {
      v6 = *(v2 + 232);
      v7 = swift_task_alloc();
      *(v2 + 456) = v7;
      *v7 = v2;
      v7[1] = sub_100F28A08;
      v8 = *(v2 + 400);
      v9 = *(v2 + 48);
      v10 = *(v2 + 56);

      return sub_1006868C4(v10, v9, v8);
    }

    a1 = sub_100006654(*(v2 + 432), *(v2 + 440));
  }

  v12 = *(v2 + 392);
  v13 = *(v2 + 408);
  v14 = *(v2 + 416);
  *(v2 + 488) = v13;
  if (!v14)
  {
    a1 = sub_100F28D78;
    a2 = 0;
    v3 = 0;

    return _swift_task_switch(a1, a2, v3);
  }

  v15 = *(v2 + 400);
  v16 = v15 + 1;
  if (v15 == -1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 400) = v16;
  *(v2 + 408) = v13;
  *(v2 + 392) = v12;
  v17 = *(v2 + 384);
  v18 = v17 - v16;
  if (v17 >= v16)
  {
    if ((v17 - v16) >= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if ((v16 - v17) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_task_switch(a1, a2, v3);
  }

  v18 = v17 - v16;
LABEL_16:
  *(v2 + 416) = v18;
  v19 = *(v2 + 232);
  v20 = swift_task_alloc();
  *(v2 + 424) = v20;
  *v20 = v2;
  v20[1] = sub_100F286D4;
  v21 = *(v2 + 48);
  v22 = *(v2 + 56);

  return sub_100F10DF4(v22, v21, v16);
}

uint64_t sub_100F28A08(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 456);
  v10 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {
    v6 = v4[51];

    v7 = v4[29];
    v8 = sub_100F28D08;
  }

  else
  {
    v7 = v4[29];
    v8 = sub_100F28B2C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F28B2C()
{
  v1 = v0[59];
  if (v1 >> 60 == 15)
  {
    v2 = sub_100006654(v0[54], v0[55]);
    v5 = v0[51];
    v6 = v0[49];
  }

  else
  {
    v7 = v0[58];
    v9 = v0[54];
    v8 = v0[55];
    v10 = v0[49];
    v11 = v0[50];
    sub_100017D5C(v7, v0[59]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFF448(v7, v1, v11, isUniquelyReferenced_nonNull_native);
    sub_100006654(v9, v8);
    v2 = sub_100006654(v7, v1);
    v6 = v10;
    v5 = v10;
  }

  v0[61] = v5;
  if (!v0[52])
  {
    v2 = sub_100F28D78;
    v3 = 0;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v13 = v0[50];
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v0[50] = v14;
  v0[51] = v5;
  v0[49] = v6;
  v15 = v0[48];
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if ((v14 - v15) < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v16 = v15 - v14;
LABEL_13:
  v0[52] = v16;
  v17 = v0[29];
  v18 = swift_task_alloc();
  v0[53] = v18;
  *v18 = v0;
  v18[1] = sub_100F286D4;
  v19 = v0[6];
  v20 = v0[7];

  return sub_100F10DF4(v20, v19, v14);
}

uint64_t sub_100F28D08()
{
  sub_100006654(v0[54], v0[55]);
  v0[62] = v0[60];

  return _swift_task_switch(sub_100F290C0, 0, 0);
}

uint64_t sub_100F28D78()
{
  v50 = v0;
  v45 = v0[61];
  v1 = v0[16];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v47 = v2 & 0xDFFFFFFFFFFFFFFFLL;
    result = sub_100017D5C(*(v1 + 16), v2 & 0xDFFFFFFFFFFFFFFFLL);
    v5 = v3;
  }

  else
  {
    sub_100017D5C(*(v1 + 16), *(v1 + 24));
    result = sub_10002EA98(6, v3, v2, v49);
    v5 = v49[0];
    v47 = v49[1];
  }

  v6 = 0;
  v7 = -1;
  v8 = -1 << *(v45 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v45 + 64);
  v10 = (63 - v8) >> 6;
  v11 = _swiftEmptyArrayStorage;
  v43 = v5;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v45 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      do
      {
LABEL_11:
        v13 = __clz(__rbit64(v9)) | (v6 << 6);
        v14 = *(*(v45 + 48) + 8 * v13);
        v15 = (*(v45 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        sub_100017D5C(*v15, v17);
        sub_100017D5C(v5, v47);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5CBA0(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v11;
        if (v19 >= v18 >> 1)
        {
          result = sub_100A5CBA0((v18 > 1), v19 + 1, 1, v11);
          v20 = result;
        }

        *(v20 + 2) = v19 + 1;
        v11 = v20;
        v21 = &v20[48 * v19];
        v21[32] = 0;
        v9 &= v9 - 1;
        v5 = v43;
        *(v21 + 5) = v14;
        *(v21 + 6) = v43;
        *(v21 + 7) = v47;
        *(v21 + 8) = v16;
        *(v21 + 9) = v17;
      }

      while (v9);
    }
  }

  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[22];
  v25 = v0[16];
  v26 = v0[11];
  v27 = v0[6];
  v28 = v0[7];
  v44 = v11;
  v30 = v0[4];
  v29 = v0[5];

  sub_100016590(v5, v47);
  v31 = *(v29 + 8);
  v31(v27, v30);
  v31(v28, v30);
  sub_100F3A500(v26, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v25, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v24, type metadata accessor for BeaconIdentifier);

  v33 = v0[21];
  v32 = v0[22];
  v35 = v0[19];
  v34 = v0[20];
  v36 = v0[18];
  v38 = v0[15];
  v37 = v0[16];
  v40 = v0[11];
  v39 = v0[12];
  v46 = v0[8];
  v48 = v0[7];
  v41 = v0[6];

  v42 = v0[1];

  return v42(v44);
}

uint64_t sub_100F290C0()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[16];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  v10 = v0[21];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[11];
  v17 = v0[12];
  v20 = v0[8];
  v21 = v0[7];
  v22 = v0[6];
  v23 = v0[62];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F29268(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 512);
  v8 = *v3;
  v4[65] = a1;
  v4[66] = a2;
  v4[67] = v2;

  if (v2)
  {
    v6 = sub_100F295F0;
  }

  else
  {
    v6 = sub_100F29384;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F29384()
{
  if (v0[66] >> 60 == 15)
  {
    v1 = v0[29];
    v2 = v0[26];
    v3 = v0[22];
    v4 = v0[16];
    v5 = v0[11];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[4];
    v9 = v0[5];

    v10 = *(v9 + 8);
    v10(v7, v8);
    v10(v6, v8);
    sub_100F3A500(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
    v12 = v0[21];
    v11 = v0[22];
    v14 = v0[19];
    v13 = v0[20];
    v15 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[8];
    v29 = v0[7];
    v30 = v0[6];

    v21 = v0[1];

    return v21(_swiftEmptyArrayStorage);
  }

  else
  {
    v23 = v0[63];
    if (v23)
    {
      v24 = v23 / 0x60 + 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = v0[29];
    v26 = swift_task_alloc();
    v0[68] = v26;
    *v26 = v0;
    v26[1] = sub_100F29798;
    v27 = v0[6];
    v28 = v0[7];

    return sub_100F114D0(v28, v27, v24);
  }
}

uint64_t sub_100F295F0()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[16];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  v10 = v0[21];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[11];
  v17 = v0[12];
  v20 = v0[8];
  v21 = v0[7];
  v22 = v0[6];
  v23 = v0[67];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F29798(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 544);
  v8 = *v3;
  v4[69] = a1;
  v4[70] = a2;
  v4[71] = v2;

  if (v2)
  {
    v6 = sub_100F29B08;
  }

  else
  {
    v6 = sub_100F298B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F298B4()
{
  if (v0[70] >> 60 == 15)
  {
    v1 = v0[66];
    v2 = v0[65];
    v3 = v0[29];
    v4 = v0[26];
    v30 = v0[22];
    v5 = v0[16];
    v6 = v0[11];
    v8 = v0[6];
    v7 = v0[7];
    v10 = v0[4];
    v9 = v0[5];

    sub_100006654(v2, v1);
    v11 = *(v9 + 8);
    v11(v8, v10);
    v11(v7, v10);
    sub_100F3A500(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v5, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v30, type metadata accessor for BeaconIdentifier);
    v13 = v0[21];
    v12 = v0[22];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[8];
    v29 = v0[7];
    v31 = v0[6];

    v22 = v0[1];

    return v22(_swiftEmptyArrayStorage);
  }

  else
  {
    v24 = v0[29];
    v25 = swift_task_alloc();
    v0[72] = v25;
    *v25 = v0;
    v25[1] = sub_100F29CC4;
    v26 = v0[63];
    v27 = v0[6];
    v28 = v0[7];

    return sub_1006868C4(v28, v27, v26);
  }
}

uint64_t sub_100F29B08()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[16];
  v6 = v0[11];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v10 = v0[5];

  sub_100006654(v2, v1);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v11(v7, v9);
  sub_100F3A500(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v5, type metadata accessor for ObservedAdvertisement);
  v12 = v0[21];
  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[18];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[11];
  v19 = v0[12];
  v22 = v0[8];
  v23 = v0[7];
  v24 = v0[6];
  v25 = v0[71];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100F29CC4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 576);
  v8 = *v3;
  v4[73] = a1;
  v4[74] = a2;
  v4[75] = v2;

  if (v2)
  {
    v6 = sub_100F2A1D0;
  }

  else
  {
    v6 = sub_100F29DE0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F29DE0()
{
  v1 = v0[74];
  if (v1 >> 60 == 15)
  {
    v2 = v0[70];
    v3 = v0[69];
    v4 = v0[66];
    v5 = v0[65];
    v6 = v0[29];
    v7 = v0[26];
    v54 = v0[16];
    v57 = v0[22];
    v51 = v0[11];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];

    sub_100006654(v3, v2);
    sub_100006654(v5, v4);
    v12 = *(v11 + 8);
    v12(v8, v10);
    v12(v9, v10);
    sub_100F3A500(v51, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v54, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v57, type metadata accessor for BeaconIdentifier);
    v58 = _swiftEmptyArrayStorage;
  }

  else
  {
    v13 = v0[73];
    sub_10002E98C(v0[65], v0[66]);
    sub_10002E98C(v13, v1);
    v14 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v14 = sub_100A5CBA0((v15 > 1), v16 + 1, 1, v14);
    }

    v18 = v0[63];
    v19 = &v14[48 * v16];
    v20 = *(v0 + 65);
    v21 = *(v0 + 73);
    *(v14 + 2) = v17;
    v19[32] = 0;
    *(v19 + 5) = v18;
    *(v19 + 3) = v20;
    *(v19 + 4) = v21;
    if (v18)
    {
      v52 = v0[63] / 0x60uLL + 1;
    }

    else
    {
      v52 = 0;
    }

    v22 = *(v14 + 3);
    v55 = v16 + 1;
    v50 = v16 + 2;
    if (v17 >= v22 >> 1)
    {
      v58 = sub_100A5CBA0((v22 > 1), v16 + 2, 1, v14);
    }

    else
    {
      v58 = v14;
    }

    v23 = v0[66];
    v24 = v0[65];
    v25 = v0[29];
    v26 = v0[26];
    v48 = v0[22];
    v27 = v0[16];
    v28 = v0[11];
    v29 = v0[6];
    v30 = v0[7];
    v31 = v0[4];
    v32 = v0[5];
    v49 = *(v0 + 73);
    v47 = *(v0 + 69);

    sub_100006654(v24, v23);
    v33 = *(v32 + 8);
    v33(v29, v31);
    v33(v30, v31);
    sub_100F3A500(v28, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v27, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v48, type metadata accessor for BeaconIdentifier);
    *(v58 + 2) = v50;
    v34 = &v58[48 * v55];
    v34[32] = 1;
    *(v34 + 5) = v52;
    *(v34 + 3) = v47;
    *(v34 + 4) = v49;
  }

  v36 = v0[21];
  v35 = v0[22];
  v38 = v0[19];
  v37 = v0[20];
  v39 = v0[18];
  v41 = v0[15];
  v40 = v0[16];
  v43 = v0[11];
  v42 = v0[12];
  v44 = v0[8];
  v53 = v0[7];
  v56 = v0[6];

  v45 = v0[1];

  return v45(v58);
}

uint64_t sub_100F2A1D0()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[29];
  v6 = v0[26];
  v24 = v0[11];
  v26 = v0[16];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v10 = v0[5];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v11(v7, v9);
  sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v26, type metadata accessor for ObservedAdvertisement);
  v12 = v0[21];
  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[18];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[11];
  v19 = v0[12];
  v22 = v0[8];
  v23 = v0[7];
  v25 = v0[6];
  v27 = v0[75];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100F2A3A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 608);
  v6 = *v2;
  *(*v2 + 616) = v1;

  if (v1)
  {
    v7 = sub_100F2A678;
  }

  else
  {
    *(v4 + 624) = a1;
    v7 = sub_100F2A4CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F2A4CC()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[16];
  v5 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);
  sub_100F3A500(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
  v12 = v0[21];
  v11 = v0[22];
  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[18];
  v17 = v0[15];
  v16 = v0[16];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[8];
  v23 = v0[7];
  v24 = v0[6];
  v25 = v0[78];

  v21 = v0[1];

  return v21(v25);
}

uint64_t sub_100F2A678()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[16];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  v10 = v0[21];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[11];
  v17 = v0[12];
  v20 = v0[8];
  v21 = v0[7];
  v22 = v0[6];
  v23 = v0[77];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F2A820(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 632);
  v6 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v7 = sub_100F2AA80;
  }

  else
  {
    *(v4 + 648) = a1;
    v7 = sub_100F2A948;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F2A948()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[22];

  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[8];
  v16 = v0[7];
  v17 = v0[6];
  v18 = v0[81];

  v14 = v0[1];

  return v14(v18);
}

uint64_t sub_100F2AA80()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[21];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[11];
  v10 = v0[12];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[6];
  v16 = v0[80];
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100F2ABB4(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *(v3 + 312) = a1;
  *(v3 + 320) = a3;
  v4 = a3[1];
  *(v3 + 328) = *a3;
  *(v3 + 344) = v4;
  v5 = *a2;
  v6 = a2[1];
  *(v3 + 360) = a3[2];
  *(v3 + 376) = v5;
  v7 = a2[2];
  *(v3 + 392) = v6;
  *(v3 + 408) = v7;
  v8 = *(*(sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370) - 8) + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8) + 64) + 15;
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  v10 = type metadata accessor for BeaconIdentifier();
  *(v3 + 448) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100F2AD08, 0, 0);
}

uint64_t sub_100F2AD08()
{
  sub_100F3A2F8(v0[39], v0[60], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_100F2ADC0;
  v2 = v0[55];
  v3 = v0[39];

  return sub_100F2EA9C(v2, v3);
}

uint64_t sub_100F2ADC0()
{
  v2 = *(*v1 + 488);
  v3 = *v1;
  *(v3 + 496) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100F3A940, 0, 0);
  }

  else
  {
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    *(v3 + 504) = v5;
    *v5 = v3;
    v5[1] = sub_100F2AF2C;

    return daemon.getter();
  }
}

uint64_t sub_100F2AF2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 504);
  v12 = *v1;
  v3[64] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[65] = v6;
  v7 = type metadata accessor for Daemon();
  v3[66] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[67] = v9;
  v10 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100F2B10C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F2B10C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 520);
  v7 = *v2;
  *(v5 + 544) = a1;
  *(v5 + 552) = v1;

  v8 = *(v4 + 512);

  if (v1)
  {
    v9 = sub_100F3A8D8;
    v10 = 0;
  }

  else
  {
    v9 = sub_100F2B254;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100F2B254()
{
  v1 = *(*(v0 + 544) + 128);
  *(v0 + 560) = v1;
  if (v1)
  {

    v2 = sub_100F2B2E0;
  }

  else
  {
    v2 = sub_100F3A8EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2B2E0()
{
  v38 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = type metadata accessor for Logger();
  *(v0 + 568) = sub_1000076D4(v5, qword_10177B810);
  sub_1000D2A70(v3, v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A2F8(v2, v1, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 472);
  if (v8)
  {
    v34 = *(v0 + 448);
    v10 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315651;
    v13 = *v10;
    v35 = v12;
    v36 = 0x7972616D6972702ELL;
    v37 = 0xEA0000000000282FLL;
    *(v0 + 304) = v13;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
    v16 = sub_1000136BC(v36, v37, &v35);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v17;
    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = v9 + *(v34 + 20);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21 = v36;
    v22 = v37;
    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v23 = sub_1000136BC(v21, v22, &v35);

    *(v11 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "Best effort lastObservedIndex %s for %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = *(v0 + 432);

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    sub_10000B3A8(v24, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v25 = *(v0 + 560);
  v26 = *(v0 + 440);
  v27 = *(v0 + 392);
  *(v0 + 64) = *(v0 + 376);
  v28 = *(v0 + 408);
  *(v0 + 80) = v27;
  *(v0 + 96) = v28;
  v29 = *v26;
  *(v0 + 576) = *v26;
  v30 = swift_task_alloc();
  *(v0 + 584) = v30;
  *v30 = v0;
  v30[1] = sub_100F2B6F8;
  v31 = *(v0 + 480);
  v32 = *(v0 + 320);

  return sub_100424C7C(v0 + 160, v31, v0 + 64, v32, 0, v29, v25, 4000);
}

uint64_t sub_100F2B6F8()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_100F3A908;
  }

  else
  {
    v3 = sub_100F2B80C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F2B80C()
{
  sub_100F3A034(v0 + 160, v0 + 208);
  v1 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5CBA0((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 600) = v1;
  *(v1 + 2) = v3 + 1;
  v4 = &v1[48 * v3];
  v5 = *(v0 + 160);
  v6 = *(v0 + 192);
  *(v4 + 3) = *(v0 + 176);
  *(v4 + 4) = v6;
  *(v4 + 2) = v5;
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v0 + 608) = v8;
  *v8 = v0;
  v8[1] = sub_100F2B910;

  return daemon.getter();
}

uint64_t sub_100F2B910(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 608);
  v5 = *v1;
  v3[77] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[78] = v7;
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v7 = v5;
  v7[1] = sub_100F2BAC4;
  v10 = v3[67];
  v11 = v3[66];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F2BAC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 624);
  v6 = *v2;
  *(v4 + 632) = a1;
  *(v4 + 640) = v1;

  v7 = *(v4 + 616);
  if (v1)
  {

    v8 = sub_100F2BCDC;
    v9 = 0;
  }

  else
  {
    v10 = *(v4 + 448);

    *(v4 + 672) = *(v10 + 20);
    v8 = sub_100F2BC34;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100F2BC34()
{
  v1 = *(v0 + 640);
  v2 = *(*(v0 + 632) + 128);
  sub_100F856F4(*(v0 + 480) + *(v0 + 672), *(v0 + 424));
  *(v0 + 648) = v1;
  if (v1)
  {
    v3 = *(v0 + 600);

    v4 = sub_100F3A964;
  }

  else
  {
    v4 = sub_100F2BF24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F2BCDC()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + 8);
  if (*(v1 + 8) >> 60 == 15)
  {
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    v5 = *(v0 + 480);
    v6 = *(v0 + 440);

    sub_100F39FE0(v0 + 160);
    sub_10000B3A8(v6, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
    v7 = *(v0 + 600);
    v9 = *(v0 + 472);
    v8 = *(v0 + 480);
    v11 = *(v0 + 456);
    v10 = *(v0 + 464);
    v13 = *(v0 + 432);
    v12 = *(v0 + 440);
    v14 = *(v0 + 424);

    v15 = *(v0 + 8);

    return v15(v7);
  }

  else
  {
    v17 = *(v1 + 24);
    v18 = *(v1 + 40);
    v19 = *(v0 + 576);
    if (v19)
    {
      v20 = v19 / 0x60 + 1;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v0 + 560);
    v23 = *(v0 + 360);
    v22 = *(v0 + 368);
    v25 = *(v0 + 344);
    v24 = *(v0 + 352);
    v27 = *(v0 + 328);
    v26 = *(v0 + 336);
    *(v0 + 16) = *v1;
    *(v0 + 24) = v2;
    *(v0 + 40) = v17;
    *(v0 + 56) = v18;
    sub_1000D2A70(v1, v0 + 256, &qword_10169FCA8, &qword_1013A2B88);
    sub_100017D5C(v27, v26);
    sub_100017D5C(v25, v24);
    sub_100017D5C(v23, v22);
    v28 = swift_task_alloc();
    *(v0 + 656) = v28;
    *v28 = v0;
    v28[1] = sub_100F2C488;
    v29 = *(v0 + 480);

    return sub_100424C7C(v0 + 112, v29, v0 + 64, v0 + 16, 1, v20, v21, 4000);
  }
}

uint64_t sub_100F2BF24()
{
  v60 = v0;
  v1 = *(v0 + 424);
  v2 = type metadata accessor for StandaloneBeacon();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v11 = *(v0 + 568);
    v12 = *(v0 + 480);
    v13 = *(v0 + 464);
    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    sub_100F3A2F8(v12, v13, type metadata accessor for BeaconIdentifier);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 632);
    v18 = *(v0 + 560);
    v19 = *(v0 + 544);
    v20 = *(v0 + 480);
    v21 = *(v0 + 464);
    if (v16)
    {
      v55 = *(v0 + 560);
      v22 = *(v0 + 448);
      v56 = *(v0 + 440);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      type metadata accessor for UUID();
      v54 = v20;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v25;
      v26._countAndFlagsBits = 47;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27 = v21 + *(v22 + 20);
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      sub_100F3A500(v21, type metadata accessor for BeaconIdentifier);
      v29 = sub_1000136BC(v58, v59, &v57);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skipping secondary keys for standalone beacon %{private,mask.hash}s", v23, 0x16u);
      sub_100007BAC(v24);

      sub_100F39FE0(v0 + 160);
      sub_10000B3A8(v56, &unk_1016C8FC0, &unk_10139D7D0);
      v10 = v54;
    }

    else
    {
      v44 = *(v0 + 440);

      sub_100F39FE0(v0 + 160);
      sub_100F3A500(v21, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v44, &unk_1016C8FC0, &unk_10139D7D0);
      v10 = v20;
    }

LABEL_13:
    sub_100F3A500(v10, type metadata accessor for BeaconIdentifier);
    v45 = *(v0 + 600);
    v47 = *(v0 + 472);
    v46 = *(v0 + 480);
    v49 = *(v0 + 456);
    v48 = *(v0 + 464);
    v51 = *(v0 + 432);
    v50 = *(v0 + 440);
    v52 = *(v0 + 424);

    v53 = *(v0 + 8);

    return v53(v45);
  }

  v3 = *(v0 + 632);

  sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
  v4 = *(v0 + 320);
  v5 = *(v4 + 8);
  if (*(v4 + 8) >> 60 == 15)
  {
    v6 = *(v0 + 560);
    v7 = *(v0 + 544);
    v8 = *(v0 + 480);
    v9 = *(v0 + 440);

    sub_100F39FE0(v0 + 160);
    sub_10000B3A8(v9, &unk_1016C8FC0, &unk_10139D7D0);
    v10 = v8;
    goto LABEL_13;
  }

  v30 = *(v4 + 24);
  v31 = *(v4 + 40);
  v32 = *(v0 + 576);
  if (v32)
  {
    v33 = v32 / 0x60 + 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v0 + 560);
  v36 = *(v0 + 360);
  v35 = *(v0 + 368);
  v38 = *(v0 + 344);
  v37 = *(v0 + 352);
  v40 = *(v0 + 328);
  v39 = *(v0 + 336);
  *(v0 + 16) = *v4;
  *(v0 + 24) = v5;
  *(v0 + 40) = v30;
  *(v0 + 56) = v31;
  sub_1000D2A70(v4, v0 + 256, &qword_10169FCA8, &qword_1013A2B88);
  sub_100017D5C(v40, v39);
  sub_100017D5C(v38, v37);
  sub_100017D5C(v36, v35);
  v41 = swift_task_alloc();
  *(v0 + 656) = v41;
  *v41 = v0;
  v41[1] = sub_100F2C488;
  v42 = *(v0 + 480);

  return sub_100424C7C(v0 + 112, v42, v0 + 64, v0 + 16, 1, v33, v34, 4000);
}

uint64_t sub_100F2C488()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v8 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v4 = *(v2 + 600);
    v5 = *(v2 + 320);

    sub_10000B3A8(v5, &qword_10169FCA8, &qword_1013A2B88);
    v6 = sub_100F3A93C;
  }

  else
  {
    sub_10000B3A8(*(v2 + 320), &qword_10169FCA8, &qword_1013A2B88);
    v6 = sub_100F3A944;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F2C5D8(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *(v3 + 312) = a1;
  *(v3 + 320) = a3;
  v4 = a3[1];
  *(v3 + 328) = *a3;
  *(v3 + 344) = v4;
  v5 = *a2;
  v6 = a2[1];
  *(v3 + 360) = a3[2];
  *(v3 + 376) = v5;
  v7 = a2[2];
  *(v3 + 392) = v6;
  *(v3 + 408) = v7;
  v8 = *(*(sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370) - 8) + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8) + 64) + 15;
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  v10 = type metadata accessor for BeaconIdentifier();
  *(v3 + 448) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100F2C72C, 0, 0);
}

uint64_t sub_100F2C72C()
{
  sub_100F3A2F8(v0[39], v0[60], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_100F2C7E4;
  v2 = v0[55];
  v3 = v0[39];

  return sub_100F2FA04(v2, v3);
}

uint64_t sub_100F2C7E4()
{
  v2 = *(*v1 + 488);
  v3 = *v1;
  *(v3 + 496) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100F2CC78, 0, 0);
  }

  else
  {
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    *(v3 + 504) = v5;
    *v5 = v3;
    v5[1] = sub_100F2C950;

    return daemon.getter();
  }
}

uint64_t sub_100F2C950(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 504);
  v12 = *v1;
  v3[64] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[65] = v6;
  v7 = type metadata accessor for Daemon();
  v3[66] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[67] = v9;
  v10 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100F2CB30;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F2CB30(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 520);
  v7 = *v2;
  *(v5 + 544) = a1;
  *(v5 + 552) = v1;

  v8 = *(v4 + 512);

  if (v1)
  {
    v9 = sub_100F2D1F0;
    v10 = 0;
  }

  else
  {
    v9 = sub_100F2CD4C;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100F2CC78()
{
  sub_100F3A500(v0[60], type metadata accessor for BeaconIdentifier);
  v1 = v0[62];
  v3 = v0[59];
  v2 = v0[60];
  v5 = v0[57];
  v4 = v0[58];
  v7 = v0[54];
  v6 = v0[55];
  v8 = v0[53];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F2CD4C()
{
  v1 = *(*(v0 + 544) + 128);
  *(v0 + 560) = v1;
  if (v1)
  {

    v2 = sub_100F2CDD8;
  }

  else
  {
    v2 = sub_100F2D2E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2CDD8()
{
  v38 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = type metadata accessor for Logger();
  *(v0 + 568) = sub_1000076D4(v5, qword_10177B810);
  sub_1000D2A70(v3, v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A2F8(v2, v1, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 472);
  if (v8)
  {
    v34 = *(v0 + 448);
    v10 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315651;
    v13 = *v10;
    v35 = v12;
    v36 = 0x7972616D6972702ELL;
    v37 = 0xEA0000000000282FLL;
    *(v0 + 304) = v13;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
    v16 = sub_1000136BC(v36, v37, &v35);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v17;
    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = v9 + *(v34 + 20);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21 = v36;
    v22 = v37;
    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v23 = sub_1000136BC(v21, v22, &v35);

    *(v11 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "Best effort lastObservedIndex %s for %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = *(v0 + 432);

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    sub_10000B3A8(v24, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v25 = *(v0 + 560);
  v26 = *(v0 + 440);
  v27 = *(v0 + 392);
  *(v0 + 64) = *(v0 + 376);
  v28 = *(v0 + 408);
  *(v0 + 80) = v27;
  *(v0 + 96) = v28;
  v29 = *v26;
  *(v0 + 576) = *v26;
  v30 = swift_task_alloc();
  *(v0 + 584) = v30;
  *v30 = v0;
  v30[1] = sub_100F2D4C0;
  v31 = *(v0 + 480);
  v32 = *(v0 + 320);

  return sub_100424C7C(v0 + 160, v31, v0 + 64, v32, 0, v29, v25, 4000);
}

uint64_t sub_100F2D1F0()
{
  v1 = v0[60];
  sub_10000B3A8(v0[55], &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);
  v2 = v0[69];
  v4 = v0[59];
  v3 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[54];
  v7 = v0[55];
  v9 = v0[53];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F2D2E0()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B810);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LTKGenerator!", v4, 2u);
  }

  v5 = v0[68];
  v6 = v0[60];
  v7 = v0[55];

  sub_100F32E3C();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();

  sub_10000B3A8(v7, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
  v10 = v0[59];
  v9 = v0[60];
  v12 = v0[57];
  v11 = v0[58];
  v14 = v0[54];
  v13 = v0[55];
  v15 = v0[53];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100F2D4C0()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_100F2D9FC;
  }

  else
  {
    v3 = sub_100F2D5D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F2D5D4()
{
  sub_100F3A034(v0 + 160, v0 + 208);
  v1 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5CBA0((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 600) = v1;
  *(v1 + 2) = v3 + 1;
  v4 = &v1[48 * v3];
  v5 = *(v0 + 160);
  v6 = *(v0 + 192);
  *(v4 + 3) = *(v0 + 176);
  *(v4 + 4) = v6;
  *(v4 + 2) = v5;
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v0 + 608) = v8;
  *v8 = v0;
  v8[1] = sub_100F2D6D8;

  return daemon.getter();
}

uint64_t sub_100F2D6D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 608);
  v5 = *v1;
  v3[77] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[78] = v7;
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v7 = v5;
  v7[1] = sub_100F2D88C;
  v10 = v3[67];
  v11 = v3[66];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F2D88C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 624);
  v6 = *v2;
  *(v4 + 632) = a1;
  *(v4 + 640) = v1;

  v7 = *(v4 + 616);
  if (v1)
  {

    v8 = sub_100F2DBAC;
    v9 = 0;
  }

  else
  {
    v10 = *(v4 + 448);

    *(v4 + 672) = *(v10 + 20);
    v8 = sub_100F2DB04;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100F2D9FC()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[60];
  v4 = v0[55];

  sub_10000B3A8(v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
  v5 = v0[74];
  v7 = v0[59];
  v6 = v0[60];
  v9 = v0[57];
  v8 = v0[58];
  v11 = v0[54];
  v10 = v0[55];
  v12 = v0[53];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100F2DB04()
{
  v1 = *(v0 + 640);
  v2 = *(*(v0 + 632) + 128);
  sub_100F856F4(*(v0 + 480) + *(v0 + 672), *(v0 + 424));
  *(v0 + 648) = v1;
  if (v1)
  {
    v3 = *(v0 + 600);

    v4 = sub_100F2E358;
  }

  else
  {
    v4 = sub_100F2DDF4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F2DBAC()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + 8);
  if (*(v1 + 8) >> 60 == 15)
  {
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    v5 = *(v0 + 480);
    v6 = *(v0 + 440);

    sub_100F39FE0(v0 + 160);
    sub_10000B3A8(v6, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
    v7 = *(v0 + 600);
    v9 = *(v0 + 472);
    v8 = *(v0 + 480);
    v11 = *(v0 + 456);
    v10 = *(v0 + 464);
    v13 = *(v0 + 432);
    v12 = *(v0 + 440);
    v14 = *(v0 + 424);

    v15 = *(v0 + 8);

    return v15(v7);
  }

  else
  {
    v17 = *(v1 + 24);
    v18 = *(v1 + 40);
    v19 = *(v0 + 576);
    if (v19)
    {
      v20 = v19 / 0x60 + 1;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v0 + 560);
    v23 = *(v0 + 360);
    v22 = *(v0 + 368);
    v25 = *(v0 + 344);
    v24 = *(v0 + 352);
    v27 = *(v0 + 328);
    v26 = *(v0 + 336);
    *(v0 + 16) = *v1;
    *(v0 + 24) = v2;
    *(v0 + 40) = v17;
    *(v0 + 56) = v18;
    sub_1000D2A70(v1, v0 + 256, &qword_10169FCA8, &qword_1013A2B88);
    sub_100017D5C(v27, v26);
    sub_100017D5C(v25, v24);
    sub_100017D5C(v23, v22);
    v28 = swift_task_alloc();
    *(v0 + 656) = v28;
    *v28 = v0;
    v28[1] = sub_100F2E474;
    v29 = *(v0 + 480);

    return sub_100424C7C(v0 + 112, v29, v0 + 64, v0 + 16, 1, v20, v21, 4000);
  }
}

uint64_t sub_100F2DDF4()
{
  v60 = v0;
  v1 = *(v0 + 424);
  v2 = type metadata accessor for StandaloneBeacon();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v11 = *(v0 + 568);
    v12 = *(v0 + 480);
    v13 = *(v0 + 464);
    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    sub_100F3A2F8(v12, v13, type metadata accessor for BeaconIdentifier);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 632);
    v18 = *(v0 + 560);
    v19 = *(v0 + 544);
    v20 = *(v0 + 480);
    v21 = *(v0 + 464);
    if (v16)
    {
      v55 = *(v0 + 560);
      v22 = *(v0 + 448);
      v56 = *(v0 + 440);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      type metadata accessor for UUID();
      v54 = v20;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v25;
      v26._countAndFlagsBits = 47;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27 = v21 + *(v22 + 20);
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      sub_100F3A500(v21, type metadata accessor for BeaconIdentifier);
      v29 = sub_1000136BC(v58, v59, &v57);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skipping secondary keys for standalone beacon %{private,mask.hash}s", v23, 0x16u);
      sub_100007BAC(v24);

      sub_100F39FE0(v0 + 160);
      sub_10000B3A8(v56, &unk_1016C8FC0, &unk_10139D7D0);
      v10 = v54;
    }

    else
    {
      v44 = *(v0 + 440);

      sub_100F39FE0(v0 + 160);
      sub_100F3A500(v21, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v44, &unk_1016C8FC0, &unk_10139D7D0);
      v10 = v20;
    }

LABEL_13:
    sub_100F3A500(v10, type metadata accessor for BeaconIdentifier);
    v45 = *(v0 + 600);
    v47 = *(v0 + 472);
    v46 = *(v0 + 480);
    v49 = *(v0 + 456);
    v48 = *(v0 + 464);
    v51 = *(v0 + 432);
    v50 = *(v0 + 440);
    v52 = *(v0 + 424);

    v53 = *(v0 + 8);

    return v53(v45);
  }

  v3 = *(v0 + 632);

  sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
  v4 = *(v0 + 320);
  v5 = *(v4 + 8);
  if (*(v4 + 8) >> 60 == 15)
  {
    v6 = *(v0 + 560);
    v7 = *(v0 + 544);
    v8 = *(v0 + 480);
    v9 = *(v0 + 440);

    sub_100F39FE0(v0 + 160);
    sub_10000B3A8(v9, &unk_1016C8FC0, &unk_10139D7D0);
    v10 = v8;
    goto LABEL_13;
  }

  v30 = *(v4 + 24);
  v31 = *(v4 + 40);
  v32 = *(v0 + 576);
  if (v32)
  {
    v33 = v32 / 0x60 + 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v0 + 560);
  v36 = *(v0 + 360);
  v35 = *(v0 + 368);
  v38 = *(v0 + 344);
  v37 = *(v0 + 352);
  v40 = *(v0 + 328);
  v39 = *(v0 + 336);
  *(v0 + 16) = *v4;
  *(v0 + 24) = v5;
  *(v0 + 40) = v30;
  *(v0 + 56) = v31;
  sub_1000D2A70(v4, v0 + 256, &qword_10169FCA8, &qword_1013A2B88);
  sub_100017D5C(v40, v39);
  sub_100017D5C(v38, v37);
  sub_100017D5C(v36, v35);
  v41 = swift_task_alloc();
  *(v0 + 656) = v41;
  *v41 = v0;
  v41[1] = sub_100F2E474;
  v42 = *(v0 + 480);

  return sub_100424C7C(v0 + 112, v42, v0 + 64, v0 + 16, 1, v33, v34, 4000);
}

uint64_t sub_100F2E358()
{
  v1 = v0[79];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[60];
  v5 = v0[55];

  sub_100F39FE0((v0 + 20));
  sub_10000B3A8(v5, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
  v6 = v0[81];
  v8 = v0[59];
  v7 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v12 = v0[54];
  v11 = v0[55];
  v13 = v0[53];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100F2E474()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v8 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v4 = *(v2 + 600);
    v5 = *(v2 + 320);

    sub_10000B3A8(v5, &qword_10169FCA8, &qword_1013A2B88);
    v6 = sub_100F2E970;
  }

  else
  {
    sub_10000B3A8(*(v2 + 320), &qword_10169FCA8, &qword_1013A2B88);
    v6 = sub_100F2E5C4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F2E5C4()
{
  v44 = v0;
  v1 = *(v0 + 568);
  v38 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  sub_100F3A2F8(*(v0 + 480), *(v0 + 456), type metadata accessor for BeaconIdentifier);
  sub_100017D5C(v2, v3);
  v39 = v5;
  v40 = v4;
  sub_100017D5C(v4, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 456);
  if (v8)
  {
    v37 = v2;
    v10 = *(v0 + 448);
    v11 = swift_slowAlloc();
    v36 = v3;
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v13;
    v14._countAndFlagsBits = 47;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = *(v10 + 20);
    v2 = v37;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v17 = sub_1000136BC(v42, v43, &v41);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Got secondary key for %{private,mask.hash}s!", v11, 0x16u);
    sub_100007BAC(v12);
    v3 = v36;
  }

  else
  {

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
  }

  v18 = *(v0 + 600);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_100A5CBA0((v19 > 1), v20 + 1, 1, *(v0 + 600));
  }

  v21 = *(v0 + 560);
  v22 = *(v0 + 544);
  v23 = *(v0 + 480);
  v24 = *(v0 + 440);
  v25 = *(v0 + 320);

  sub_100F39FE0(v0 + 112);

  sub_10000B3A8(v25, &qword_10169FCA8, &qword_1013A2B88);
  sub_100F39FE0(v0 + 160);
  sub_10000B3A8(v24, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v23, type metadata accessor for BeaconIdentifier);
  *(v18 + 2) = v20 + 1;
  v26 = &v18[48 * v20];
  v26[32] = 1;
  *(v26 + 5) = v38;
  *(v26 + 6) = v2;
  *(v26 + 7) = v3;
  *(v26 + 8) = v40;
  *(v26 + 9) = v39;
  v28 = *(v0 + 472);
  v27 = *(v0 + 480);
  v30 = *(v0 + 456);
  v29 = *(v0 + 464);
  v32 = *(v0 + 432);
  v31 = *(v0 + 440);
  v33 = *(v0 + 424);

  v34 = *(v0 + 8);

  return v34(v18);
}

uint64_t sub_100F2E970()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[60];
  v4 = v0[55];
  v5 = v0[40];

  sub_10000B3A8(v5, &qword_10169FCA8, &qword_1013A2B88);
  sub_100F39FE0((v0 + 20));
  sub_10000B3A8(v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
  v6 = v0[83];
  v8 = v0[59];
  v7 = v0[60];
  v10 = v0[57];
  v9 = v0[58];
  v12 = v0[54];
  v11 = v0[55];
  v13 = v0[53];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100F2EA9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for BeaconIdentifier();
  v2[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100F2EBDC, 0, 0);
}

uint64_t sub_100F2EBDC()
{
  sub_100F3A2F8(v0[3], v0[11], type metadata accessor for BeaconIdentifier);
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_100F2EC8C;

  return daemon.getter();
}

uint64_t sub_100F2EC8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  v3[13] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[14] = v6;
  v7 = type metadata accessor for Daemon();
  v3[15] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[16] = v9;
  v10 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100F2EE6C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F2EE6C(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[17] = a1;
  v5[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F3A938, 0, 0);
  }

  else
  {
    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v5[19] = v7;
    *v7 = v5;
    v7[1] = sub_100F2F004;

    return daemon.getter();
  }
}

uint64_t sub_100F2F004(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  v3[20] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[21] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_100F2F1B8;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F2F1B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F3A8F0, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[24] = v8;
    *v8 = v7;
    v8[1] = sub_100F2F364;
    v10 = v4[3];
    v9 = v4[4];

    return sub_10098F404(v9, v10);
  }
}

uint64_t sub_100F2F364()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_100F3A8F4;
  }

  else
  {
    v3 = sub_100F2F478;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F2F478()
{
  v41 = v0;
  v1 = v0[4];
  v2 = type metadata accessor for KeyGenerationBeaconInfo();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E368, &qword_1013D6690);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = v0[10];
    v4 = v0[11];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B810);
    sub_100F3A2F8(v4, v3, type metadata accessor for BeaconIdentifier);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    if (v8)
    {
      v10 = v0[9];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v13;
      v14._countAndFlagsBits = 47;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = v9 + *(v10 + 20);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
      v17 = sub_1000136BC(v39, v40, &v38);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "No base date for beacon %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    }

    v30 = v0[22];
    v31 = v0[17];
    sub_100F32E3C();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();

    v33 = v0[10];
    v35 = v0[7];
    v34 = v0[8];
    v36 = v0[4];
    sub_100F3A500(v0[11], type metadata accessor for BeaconIdentifier);

    v37 = v0[1];

    return v37();
  }

  else
  {
    v18 = v0[8];
    v19 = v0[9];
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[5];
    v23 = v0[3];
    (*(v21 + 16))(v20, v1 + *(v2 + 20), v22);
    sub_100F3A500(v1, type metadata accessor for KeyGenerationBeaconInfo);
    (*(v21 + 32))(v18, v20, v22);
    v24 = *(v19 + 20);
    v25 = swift_task_alloc();
    v0[26] = v25;
    *v25 = v0;
    v25[1] = sub_100F2F908;
    v26 = v0[17];
    v27 = v0[8];
    v28 = v0[2];

    return sub_1010D51F8(v28, v23 + v24, v27);
  }
}

uint64_t sub_100F2F908()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_100F3A8E4, 0, 0);
}

uint64_t sub_100F2FA04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for BeaconIdentifier();
  v2[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100F2FB44, 0, 0);
}

uint64_t sub_100F2FB44()
{
  sub_100F3A2F8(v0[3], v0[11], type metadata accessor for BeaconIdentifier);
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_100F2FBF4;

  return daemon.getter();
}

uint64_t sub_100F2FBF4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  v3[13] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[14] = v6;
  v7 = type metadata accessor for Daemon();
  v3[15] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[16] = v9;
  v10 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100F2FDD4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F2FDD4(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[17] = a1;
  v5[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F302CC, 0, 0);
  }

  else
  {
    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v5[19] = v7;
    *v7 = v5;
    v7[1] = sub_100F2FF6C;

    return daemon.getter();
  }
}

uint64_t sub_100F2FF6C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  v3[20] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[21] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_100F30120;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100F30120(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F3049C, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[24] = v8;
    *v8 = v7;
    v8[1] = sub_100F30388;
    v10 = v4[3];
    v9 = v4[4];

    return sub_10098F404(v9, v10);
  }
}

uint64_t sub_100F302CC()
{
  v1 = v0[18];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];
  sub_100F3A500(v0[11], type metadata accessor for BeaconIdentifier);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100F30388()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_100F309F0;
  }

  else
  {
    v3 = sub_100F30560;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F3049C()
{
  v1 = v0[17];

  v2 = v0[23];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];
  sub_100F3A500(v0[11], type metadata accessor for BeaconIdentifier);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F30560()
{
  v41 = v0;
  v1 = v0[4];
  v2 = type metadata accessor for KeyGenerationBeaconInfo();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E368, &qword_1013D6690);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = v0[10];
    v4 = v0[11];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B810);
    sub_100F3A2F8(v4, v3, type metadata accessor for BeaconIdentifier);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    if (v8)
    {
      v10 = v0[9];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v13;
      v14._countAndFlagsBits = 47;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = v9 + *(v10 + 20);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
      v17 = sub_1000136BC(v39, v40, &v38);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "No base date for beacon %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    }

    v30 = v0[22];
    v31 = v0[17];
    sub_100F32E3C();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();

    v33 = v0[10];
    v35 = v0[7];
    v34 = v0[8];
    v36 = v0[4];
    sub_100F3A500(v0[11], type metadata accessor for BeaconIdentifier);

    v37 = v0[1];

    return v37();
  }

  else
  {
    v18 = v0[8];
    v19 = v0[9];
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[5];
    v23 = v0[3];
    (*(v21 + 16))(v20, v1 + *(v2 + 20), v22);
    sub_100F3A500(v1, type metadata accessor for KeyGenerationBeaconInfo);
    (*(v21 + 32))(v18, v20, v22);
    v24 = *(v19 + 20);
    v25 = swift_task_alloc();
    v0[26] = v25;
    *v25 = v0;
    v25[1] = sub_100F30AC0;
    v26 = v0[17];
    v27 = v0[8];
    v28 = v0[2];

    return sub_1010D51F8(v28, v23 + v24, v27);
  }
}

uint64_t sub_100F309F0()
{
  v1 = v0[22];
  v2 = v0[17];

  v3 = v0[25];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  sub_100F3A500(v0[11], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F30AC0()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_100F30BBC, 0, 0);
}

uint64_t sub_100F30BBC()
{
  v1 = v0[22];
  v2 = v0[17];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  (*(v8 + 8))(v5, v7);
  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F30CB0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for BeaconIdentifier();
  v2[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100F30E08, 0, 0);
}

uint64_t sub_100F30E08()
{
  sub_100F3A2F8(v0[3], v0[14], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_100F30EB8;
  v2 = v0[4];

  return sub_100946D3C();
}

uint64_t sub_100F30EB8(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100F30FB8, 0, 0);
}

uint64_t sub_100F30FB8()
{
  v25 = v0;
  if (v0[16])
  {
    v1 = v0[14];
    v2 = v0[9];
    v3 = v0[7];
    v4 = *(v0[8] + 16);
    v4(v0[10], v1 + *(v0[11] + 20), v3);
    v4(v2, v1, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_100F31294;
    v6 = v0[6];
    v7 = v0[3];

    return sub_100F2EA9C(v6, v7);
  }

  else
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B810);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v24);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s Missing ItemSharingKeyStore!", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v14 = v0[14];
    sub_100F32E3C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    sub_100F3A500(v14, type metadata accessor for BeaconIdentifier);
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];
    v20 = v0[9];
    v19 = v0[10];
    v22 = v0[5];
    v21 = v0[6];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100F31294()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100F317C8;
  }

  else
  {
    v3 = sub_100F313A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F313A8()
{
  v37 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[5];
  v3 = v0[6];
  v5 = type metadata accessor for Logger();
  v0[19] = sub_1000076D4(v5, qword_10177B810);
  sub_1000D2A70(v3, v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A2F8(v2, v1, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  if (v8)
  {
    v33 = v0[11];
    v10 = v0[7];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v12 = 136315907;
    *(v12 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v34);
    *(v12 + 12) = 2080;
    v13 = *v11;
    v35 = 0x7972616D6972702ELL;
    v36 = 0xEA0000000000282FLL;
    v0[2] = v13;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = v35;
    v17 = v36;
    sub_10000B3A8(v11, &unk_1016C8FC0, &unk_10139D7D0);
    v18 = sub_1000136BC(v16, v17, &v34);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v19;
    v20._countAndFlagsBits = 47;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = v9 + *(v33 + 20);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23 = v35;
    v24 = v36;
    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v25 = sub_1000136BC(v23, v24, &v34);

    *(v12 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Best effort lastObservedIndex %s for %{private,mask.hash}s", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[5];

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    sub_10000B3A8(v26, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v27 = v0[16];
  v28 = *v0[6];
  v0[20] = v28;
  v29 = swift_task_alloc();
  v0[21] = v29;
  *v29 = v0;
  v29[1] = sub_100F318DC;
  v31 = v0[9];
  v30 = v0[10];

  return sub_100F10DF4(v31, v30, v28);
}

uint64_t sub_100F317C8()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for BeaconIdentifier);
  v8 = v0[18];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v13 = v0[9];
  v12 = v0[10];
  v15 = v0[5];
  v14 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100F318DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 168);
  v8 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v6 = sub_100F31E64;
  }

  else
  {
    v6 = sub_100F319F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F319F4()
{
  v47 = v0;
  if (v0[23] >> 60 == 15)
  {
    v1 = v0[19];
    sub_100F3A2F8(v0[14], v0[12], type metadata accessor for BeaconIdentifier);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[16];
    v43 = v0[14];
    v6 = v0[12];
    if (v4)
    {
      v7 = v0[11];
      v41 = v0[9];
      v42 = v0[10];
      v8 = v0[7];
      v39 = v0[6];
      v40 = v0[8];
      v9 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v9 = 136315651;
      *(v9 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v44);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v10;
      v11._countAndFlagsBits = 47;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = v6 + *(v7 + 20);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = v45;
      v15 = v46;
      sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
      v16 = sub_1000136BC(v14, v15, &v44);

      *(v9 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v9, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v39, &unk_1016C8FC0, &unk_10139D7D0);
      v17 = *(v40 + 8);
      v17(v41, v8);
      v17(v42, v8);
    }

    else
    {
      v26 = v0[9];
      v25 = v0[10];
      v28 = v0[7];
      v27 = v0[8];
      v29 = v0[6];

      sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v29, &unk_1016C8FC0, &unk_10139D7D0);
      v30 = *(v27 + 8);
      v30(v26, v28);
      v30(v25, v28);
    }

    sub_100F3A500(v43, type metadata accessor for BeaconIdentifier);
    v32 = v0[13];
    v31 = v0[14];
    v33 = v0[12];
    v35 = v0[9];
    v34 = v0[10];
    v37 = v0[5];
    v36 = v0[6];

    v38 = v0[1];

    return v38(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = v0[20];
    if (v18)
    {
      v19 = v18 / 0x60 + 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = v0[16];
    v21 = swift_task_alloc();
    v0[25] = v21;
    *v21 = v0;
    v21[1] = sub_100F31F94;
    v23 = v0[9];
    v22 = v0[10];

    return sub_100F114D0(v23, v22, v19);
  }
}

uint64_t sub_100F31E64()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];

  sub_10000B3A8(v7, &unk_1016C8FC0, &unk_10139D7D0);
  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  sub_100F3A500(v2, type metadata accessor for BeaconIdentifier);
  v9 = v0[24];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  v16 = v0[5];
  v15 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100F31F94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 200);
  v8 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = v2;

  if (v2)
  {
    v6 = sub_100F324F4;
  }

  else
  {
    v6 = sub_100F320AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F320AC()
{
  v46 = v0;
  if (v0[27] >> 60 == 15)
  {
    sub_100006654(v0[22], v0[23]);
    v1 = v0[19];
    sub_100F3A2F8(v0[14], v0[12], type metadata accessor for BeaconIdentifier);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v42 = v0[14];
    v5 = v0[12];
    if (v4)
    {
      v37 = v0[16];
      v6 = v0[11];
      v40 = v0[9];
      v41 = v0[10];
      v7 = v0[7];
      v38 = v0[6];
      v39 = v0[8];
      v8 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v8 = 136315651;
      *(v8 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v43);
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v9;
      v10._countAndFlagsBits = 47;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      v11 = v5 + *(v6 + 20);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13 = v44;
      v14 = v45;
      sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
      v15 = sub_1000136BC(v13, v14, &v43);

      *(v8 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v8, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v38, &unk_1016C8FC0, &unk_10139D7D0);
      v16 = *(v39 + 8);
      v16(v40, v7);
      v16(v41, v7);
    }

    else
    {
      v24 = v0[9];
      v23 = v0[10];
      v26 = v0[7];
      v25 = v0[8];
      v27 = v0[6];

      sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v27, &unk_1016C8FC0, &unk_10139D7D0);
      v28 = *(v25 + 8);
      v28(v24, v26);
      v28(v23, v26);
    }

    sub_100F3A500(v42, type metadata accessor for BeaconIdentifier);
    v30 = v0[13];
    v29 = v0[14];
    v31 = v0[12];
    v33 = v0[9];
    v32 = v0[10];
    v35 = v0[5];
    v34 = v0[6];

    v36 = v0[1];

    return v36(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = v0[16];
    v18 = swift_task_alloc();
    v0[29] = v18;
    *v18 = v0;
    v18[1] = sub_100F32634;
    v19 = v0[20];
    v21 = v0[9];
    v20 = v0[10];

    return sub_1006868C4(v21, v20, v19);
  }
}

uint64_t sub_100F324F4()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[6];

  sub_100006654(v1, v2);
  sub_10000B3A8(v9, &unk_1016C8FC0, &unk_10139D7D0);
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
  v11 = v0[28];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  v16 = v0[9];
  v15 = v0[10];
  v18 = v0[5];
  v17 = v0[6];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F32634(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 232);
  v8 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v6 = sub_100F32CE0;
  }

  else
  {
    v6 = sub_100F3274C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F3274C()
{
  v68 = v0;
  v1 = v0[31];
  if (v1 >> 60 == 15)
  {
    sub_100006654(v0[26], v0[27]);
    sub_100006654(v0[22], v0[23]);
    v2 = v0[19];
    sub_100F3A2F8(v0[14], v0[12], type metadata accessor for BeaconIdentifier);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v63 = v0[14];
    v6 = v0[12];
    if (v5)
    {
      v54 = v0[16];
      v7 = v0[11];
      v59 = v0[9];
      v61 = v0[10];
      v57 = v0[8];
      v8 = v0[7];
      v55 = v0[6];
      v9 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v9 = 136315651;
      *(v9 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v65);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v10;
      v11._countAndFlagsBits = 47;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = v6 + *(v7 + 20);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = v66;
      v15 = v67;
      sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
      v16 = sub_1000136BC(v14, v15, &v65);

      *(v9 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v9, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v55, &unk_1016C8FC0, &unk_10139D7D0);
      v17 = *(v57 + 8);
      v17(v59, v8);
      v17(v61, v8);
    }

    else
    {
      v28 = v0[9];
      v27 = v0[10];
      v30 = v0[7];
      v29 = v0[8];
      v31 = v0[6];

      sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v31, &unk_1016C8FC0, &unk_10139D7D0);
      v32 = *(v29 + 8);
      v32(v28, v30);
      v32(v27, v30);
    }

    sub_100F3A500(v63, type metadata accessor for BeaconIdentifier);
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = v0[30];
    sub_10002E98C(v0[22], v0[23]);
    sub_10002E98C(v18, v1);
    v19 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v19 = sub_100A5CBA0((v20 > 1), v21 + 1, 1, v19);
    }

    v23 = v0[20];
    v24 = &v19[48 * v21];
    v25 = *(v0 + 11);
    v26 = *(v0 + 15);
    *(v19 + 2) = v22;
    v24[32] = 0;
    *(v24 + 5) = v23;
    *(v24 + 3) = v25;
    *(v24 + 4) = v26;
    if (v23)
    {
      v62 = v0[20] / 0x60uLL + 1;
    }

    else
    {
      v62 = 0;
    }

    v33 = *(v19 + 3);
    v64 = v21 + 1;
    v60 = v21 + 2;
    if (v22 >= v33 >> 1)
    {
      v19 = sub_100A5CBA0((v33 > 1), v21 + 2, 1, v19);
    }

    v35 = v0[22];
    v34 = v0[23];
    v36 = v0[16];
    v37 = v0[14];
    v39 = v0[9];
    v38 = v0[10];
    v41 = v0[7];
    v40 = v0[8];
    v42 = v0[6];
    v58 = *(v0 + 15);
    v56 = *(v0 + 13);

    sub_100006654(v35, v34);
    sub_10000B3A8(v42, &unk_1016C8FC0, &unk_10139D7D0);
    v43 = *(v40 + 8);
    v43(v39, v41);
    v43(v38, v41);
    sub_100F3A500(v37, type metadata accessor for BeaconIdentifier);
    *(v19 + 2) = v60;
    v44 = &v19[48 * v64];
    v44[32] = 1;
    *(v44 + 5) = v62;
    *(v44 + 3) = v56;
    *(v44 + 4) = v58;
  }

  v46 = v0[13];
  v45 = v0[14];
  v47 = v0[12];
  v49 = v0[9];
  v48 = v0[10];
  v51 = v0[5];
  v50 = v0[6];

  v52 = v0[1];

  return v52(v19);
}

uint64_t sub_100F32CE0()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[16];
  v22 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  sub_100006654(v1, v2);
  sub_100006654(v4, v3);
  sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
  v11 = *(v8 + 8);
  v11(v7, v9);
  v11(v6, v9);
  sub_100F3A500(v22, type metadata accessor for BeaconIdentifier);
  v12 = v0[32];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  v17 = v0[9];
  v16 = v0[10];
  v19 = v0[5];
  v18 = v0[6];

  v20 = v0[1];

  return v20();
}

unint64_t sub_100F32E3C()
{
  result = qword_1016C0F28;
  if (!qword_1016C0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0F28);
  }

  return result;
}

void sub_100F32E90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t))
{
  if (a2 >> 60 != 15)
  {
    a7();
    (a7)(a3, a4);

    a8(a5, a6);
  }
}

uint64_t sub_100F32F24@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BeaconIdentifier();
  v4 = v1 + *(v3 + 20) + ((*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80));
  v5 = *(v1 + 16);
  return sub_100AA33AC(v4, a1);
}

uint64_t sub_100F32F98(uint64_t a1)
{
  v1[3] = a1;
  v2 = *(*(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for BeaconIdentifier();
  v1[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100F330F0, 0, 0);
}

uint64_t sub_100F330F0()
{
  sub_100F3A2F8(v0[3], v0[13], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100F331B0;

  return sub_1013175B8();
}

uint64_t sub_100F331B0(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100F332B0, 0, 0);
}

uint64_t sub_100F332B0()
{
  v25 = v0;
  if (v0[15])
  {
    v1 = v0[13];
    v2 = v0[8];
    v3 = v0[6];
    v4 = *(v0[7] + 16);
    v4(v0[9], v1 + *(v0[10] + 20), v3);
    v4(v2, v1, v3);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_100F3358C;
    v6 = v0[5];
    v7 = v0[3];

    return sub_100F2FA04(v6, v7);
  }

  else
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B810);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v24);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s Missing ItemSharingKeyStore!", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v14 = v0[13];
    sub_100F32E3C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    sub_100F3A500(v14, type metadata accessor for BeaconIdentifier);
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
    v20 = v0[8];
    v19 = v0[9];
    v22 = v0[4];
    v21 = v0[5];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100F3358C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100F33AC0;
  }

  else
  {
    v3 = sub_100F336A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F336A0()
{
  v37 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_1000076D4(v5, qword_10177B810);
  sub_1000D2A70(v3, v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A2F8(v2, v1, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  if (v8)
  {
    v33 = v0[10];
    v10 = v0[6];
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v12 = 136315907;
    *(v12 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v34);
    *(v12 + 12) = 2080;
    v13 = *v11;
    v35 = 0x7972616D6972702ELL;
    v36 = 0xEA0000000000282FLL;
    v0[2] = v13;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = v35;
    v17 = v36;
    sub_10000B3A8(v11, &unk_1016C8FC0, &unk_10139D7D0);
    v18 = sub_1000136BC(v16, v17, &v34);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v19;
    v20._countAndFlagsBits = 47;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = v9 + *(v33 + 20);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23 = v35;
    v24 = v36;
    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v25 = sub_1000136BC(v23, v24, &v34);

    *(v12 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Best effort lastObservedIndex %s for %{private,mask.hash}s", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[4];

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    sub_10000B3A8(v26, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v27 = v0[15];
  v28 = *v0[5];
  v0[19] = v28;
  v29 = swift_task_alloc();
  v0[20] = v29;
  *v29 = v0;
  v29[1] = sub_100F33BD4;
  v31 = v0[8];
  v30 = v0[9];

  return sub_100F10DF4(v31, v30, v28);
}

uint64_t sub_100F33AC0()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for BeaconIdentifier);
  v8 = v0[17];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  v15 = v0[4];
  v14 = v0[5];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100F33BD4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 160);
  v8 = *v3;
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = v2;

  if (v2)
  {
    v6 = sub_100F3415C;
  }

  else
  {
    v6 = sub_100F33CEC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F33CEC()
{
  v47 = v0;
  if (v0[22] >> 60 == 15)
  {
    v1 = v0[18];
    sub_100F3A2F8(v0[13], v0[11], type metadata accessor for BeaconIdentifier);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[15];
    v43 = v0[13];
    v6 = v0[11];
    if (v4)
    {
      v7 = v0[10];
      v41 = v0[8];
      v42 = v0[9];
      v8 = v0[6];
      v39 = v0[5];
      v40 = v0[7];
      v9 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v9 = 136315651;
      *(v9 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v44);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v10;
      v11._countAndFlagsBits = 47;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = v6 + *(v7 + 20);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = v45;
      v15 = v46;
      sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
      v16 = sub_1000136BC(v14, v15, &v44);

      *(v9 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v9, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v39, &unk_1016C8FC0, &unk_10139D7D0);
      v17 = *(v40 + 8);
      v17(v41, v8);
      v17(v42, v8);
    }

    else
    {
      v26 = v0[8];
      v25 = v0[9];
      v28 = v0[6];
      v27 = v0[7];
      v29 = v0[5];

      sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v29, &unk_1016C8FC0, &unk_10139D7D0);
      v30 = *(v27 + 8);
      v30(v26, v28);
      v30(v25, v28);
    }

    sub_100F3A500(v43, type metadata accessor for BeaconIdentifier);
    v32 = v0[12];
    v31 = v0[13];
    v33 = v0[11];
    v35 = v0[8];
    v34 = v0[9];
    v37 = v0[4];
    v36 = v0[5];

    v38 = v0[1];

    return v38(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = v0[19];
    if (v18)
    {
      v19 = v18 / 0x60 + 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = v0[15];
    v21 = swift_task_alloc();
    v0[24] = v21;
    *v21 = v0;
    v21[1] = sub_100F3428C;
    v23 = v0[8];
    v22 = v0[9];

    return sub_100F114D0(v23, v22, v19);
  }
}

uint64_t sub_100F3415C()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  sub_10000B3A8(v7, &unk_1016C8FC0, &unk_10139D7D0);
  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  sub_100F3A500(v2, type metadata accessor for BeaconIdentifier);
  v9 = v0[23];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v16 = v0[4];
  v15 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100F3428C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 192);
  v8 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v6 = sub_100F347EC;
  }

  else
  {
    v6 = sub_100F343A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F343A4()
{
  v46 = v0;
  if (v0[26] >> 60 == 15)
  {
    sub_100006654(v0[21], v0[22]);
    v1 = v0[18];
    sub_100F3A2F8(v0[13], v0[11], type metadata accessor for BeaconIdentifier);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v42 = v0[13];
    v5 = v0[11];
    if (v4)
    {
      v37 = v0[15];
      v6 = v0[10];
      v40 = v0[8];
      v41 = v0[9];
      v7 = v0[6];
      v38 = v0[5];
      v39 = v0[7];
      v8 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v8 = 136315651;
      *(v8 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v43);
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v9;
      v10._countAndFlagsBits = 47;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      v11 = v5 + *(v6 + 20);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13 = v44;
      v14 = v45;
      sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
      v15 = sub_1000136BC(v13, v14, &v43);

      *(v8 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v8, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v38, &unk_1016C8FC0, &unk_10139D7D0);
      v16 = *(v39 + 8);
      v16(v40, v7);
      v16(v41, v7);
    }

    else
    {
      v24 = v0[8];
      v23 = v0[9];
      v26 = v0[6];
      v25 = v0[7];
      v27 = v0[5];

      sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v27, &unk_1016C8FC0, &unk_10139D7D0);
      v28 = *(v25 + 8);
      v28(v24, v26);
      v28(v23, v26);
    }

    sub_100F3A500(v42, type metadata accessor for BeaconIdentifier);
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[11];
    v33 = v0[8];
    v32 = v0[9];
    v35 = v0[4];
    v34 = v0[5];

    v36 = v0[1];

    return v36(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = v0[15];
    v18 = swift_task_alloc();
    v0[28] = v18;
    *v18 = v0;
    v18[1] = sub_100F3492C;
    v19 = v0[19];
    v21 = v0[8];
    v20 = v0[9];

    return sub_1006868C4(v21, v20, v19);
  }
}

uint64_t sub_100F347EC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];

  sub_100006654(v1, v2);
  sub_10000B3A8(v9, &unk_1016C8FC0, &unk_10139D7D0);
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
  v11 = v0[27];
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];
  v16 = v0[8];
  v15 = v0[9];
  v18 = v0[4];
  v17 = v0[5];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F3492C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 224);
  v8 = *v3;
  v4[29] = a1;
  v4[30] = a2;
  v4[31] = v2;

  if (v2)
  {
    v6 = sub_100F34FD8;
  }

  else
  {
    v6 = sub_100F34A44;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F34A44()
{
  v68 = v0;
  v1 = v0[30];
  if (v1 >> 60 == 15)
  {
    sub_100006654(v0[25], v0[26]);
    sub_100006654(v0[21], v0[22]);
    v2 = v0[18];
    sub_100F3A2F8(v0[13], v0[11], type metadata accessor for BeaconIdentifier);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v63 = v0[13];
    v6 = v0[11];
    if (v5)
    {
      v54 = v0[15];
      v7 = v0[10];
      v59 = v0[8];
      v61 = v0[9];
      v57 = v0[7];
      v8 = v0[6];
      v55 = v0[5];
      v9 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v9 = 136315651;
      *(v9 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v65);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v10;
      v11._countAndFlagsBits = 47;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = v6 + *(v7 + 20);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = v66;
      v15 = v67;
      sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
      v16 = sub_1000136BC(v14, v15, &v65);

      *(v9 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v9, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v55, &unk_1016C8FC0, &unk_10139D7D0);
      v17 = *(v57 + 8);
      v17(v59, v8);
      v17(v61, v8);
    }

    else
    {
      v28 = v0[8];
      v27 = v0[9];
      v30 = v0[6];
      v29 = v0[7];
      v31 = v0[5];

      sub_100F3A500(v6, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v31, &unk_1016C8FC0, &unk_10139D7D0);
      v32 = *(v29 + 8);
      v32(v28, v30);
      v32(v27, v30);
    }

    sub_100F3A500(v63, type metadata accessor for BeaconIdentifier);
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = v0[29];
    sub_10002E98C(v0[21], v0[22]);
    sub_10002E98C(v18, v1);
    v19 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v19 = sub_100A5CBA0((v20 > 1), v21 + 1, 1, v19);
    }

    v23 = v0[19];
    v24 = &v19[48 * v21];
    v25 = *(v0 + 21);
    v26 = *(v0 + 29);
    *(v19 + 2) = v22;
    v24[32] = 0;
    *(v24 + 5) = v23;
    *(v24 + 3) = v25;
    *(v24 + 4) = v26;
    if (v23)
    {
      v62 = v0[19] / 0x60uLL + 1;
    }

    else
    {
      v62 = 0;
    }

    v33 = *(v19 + 3);
    v64 = v21 + 1;
    v60 = v21 + 2;
    if (v22 >= v33 >> 1)
    {
      v19 = sub_100A5CBA0((v33 > 1), v21 + 2, 1, v19);
    }

    v35 = v0[21];
    v34 = v0[22];
    v36 = v0[15];
    v37 = v0[13];
    v39 = v0[8];
    v38 = v0[9];
    v41 = v0[6];
    v40 = v0[7];
    v42 = v0[5];
    v58 = *(v0 + 29);
    v56 = *(v0 + 25);

    sub_100006654(v35, v34);
    sub_10000B3A8(v42, &unk_1016C8FC0, &unk_10139D7D0);
    v43 = *(v40 + 8);
    v43(v39, v41);
    v43(v38, v41);
    sub_100F3A500(v37, type metadata accessor for BeaconIdentifier);
    *(v19 + 2) = v60;
    v44 = &v19[48 * v64];
    v44[32] = 1;
    *(v44 + 5) = v62;
    *(v44 + 3) = v56;
    *(v44 + 4) = v58;
  }

  v46 = v0[12];
  v45 = v0[13];
  v47 = v0[11];
  v49 = v0[8];
  v48 = v0[9];
  v51 = v0[4];
  v50 = v0[5];

  v52 = v0[1];

  return v52(v19);
}

uint64_t sub_100F34FD8()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[15];
  v22 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  sub_100006654(v1, v2);
  sub_100006654(v4, v3);
  sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
  v11 = *(v8 + 8);
  v11(v7, v9);
  v11(v6, v9);
  sub_100F3A500(v22, type metadata accessor for BeaconIdentifier);
  v12 = v0[31];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  v19 = v0[4];
  v18 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100F35134(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_101699DB0, &unk_101393100) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = type metadata accessor for ObservedAdvertisement(0);
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v13 = type metadata accessor for BeaconIdentifier();
  v1[16] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100F35394, 0, 0);
}

uint64_t sub_100F35394()
{
  sub_100F3A2F8(v0[2], v0[21], type metadata accessor for BeaconIdentifier);
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_100F35444;

  return daemon.getter();
}

uint64_t sub_100F35444(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  *(v3 + 184) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 192) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100F35620;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F35620(uint64_t a1)
{
  v3 = *(*v2 + 192);
  v4 = *(*v2 + 184);
  v5 = *v2;
  v5[25] = a1;
  v5[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F35C74, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v5[27] = v6;
    *v6 = v5;
    v6[1] = sub_100F357C8;

    return sub_1013175B8();
  }
}

uint64_t sub_100F357C8(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_100F358C8, 0, 0);
}

uint64_t sub_100F358C8()
{
  if (v0[28])
  {
    v1 = swift_task_alloc();
    v0[29] = v1;
    *v1 = v0;
    v1[1] = sub_100F35B60;
    v2 = v0[25];
    v3 = v0[21];
    v4 = v0[11];

    return sub_1010CD810(v4, v3);
  }

  else
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B810);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing ItemSharingKeyStore!", v9, 2u);
    }

    v10 = v0[25];

    sub_100F32E3C();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    v12 = v0[20];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[10];
    v19 = v0[11];
    v21 = v0[7];
    v22 = v0[6];
    v23 = v0[5];
    sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100F35B60()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100F36C20;
  }

  else
  {
    v3 = sub_100F35D94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F35C74()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[10];
  v8 = v0[11];
  v11 = v0[7];
  v12 = v0[6];
  v13 = v0[5];
  v14 = v0[26];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F35D94()
{
  v134 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) == 1)
  {
    sub_10000B3A8(v1, &unk_10169BB50, &unk_101395760);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v3, v2, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 160);
    if (v7)
    {
      v9 = *(v0 + 128);
      v10 = *(v0 + 24);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v131 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v133 = v13;
      v14._countAndFlagsBits = 47;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = v8 + *(v9 + 20);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v17 = sub_1000136BC(v132, v133, &v131);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "No observed advertisement for beacon %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v31 = swift_task_alloc();
    *(v0 + 624) = v31;
    *v31 = v0;
    v32 = sub_100F39C30;
    goto LABEL_12;
  }

  sub_100F3A498(v1, *(v0 + 120), type metadata accessor for ObservedAdvertisement);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177B810);
  sub_100F3A2F8(v18, v19, type metadata accessor for ObservedAdvertisement);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 112);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v132 = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v27 = sub_100018680(v26);
    v29 = v28;
    sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement);
    v30 = sub_1000136BC(v27, v29, &v132);

    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Found observed advertisement %{private,mask.hash}s.", v25, 0x16u);
    sub_100007BAC(v26);
  }

  else
  {

    sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement);
  }

  v35 = *(v0 + 64);
  v36 = *(v0 + 72);
  v37 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 120) + *(*(v0 + 96) + 52), v37, &qword_101699DB0, &unk_101393100);
  v38 = (*(v36 + 48))(v37, 1, v35);
  v39 = *(v0 + 168);
  if (v38 == 1)
  {
    v40 = *(v0 + 152);
    sub_10000B3A8(*(v0 + 56), &qword_101699DB0, &unk_101393100);
    sub_100F3A2F8(v39, v40, type metadata accessor for BeaconIdentifier);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 224);
    v45 = *(v0 + 200);
    v46 = *(v0 + 168);
    v47 = *(v0 + 152);
    if (v43)
    {
      v124 = *(v0 + 128);
      v129 = *(v0 + 120);
      v48 = *(v0 + 24);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v131 = v50;
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
      v125 = v46;
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v133 = v51;
      v52._countAndFlagsBits = 47;
      v52._object = 0xE100000000000000;
      String.append(_:)(v52);
      v53 = v47 + *(v124 + 20);
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v55 = v132;
      v56 = v133;
      sub_100F3A500(v47, type metadata accessor for BeaconIdentifier);
      v57 = sub_1000136BC(v55, v56, &v131);

      *(v49 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v41, v42, "Missing beaconIndexInformation for %{private,mask.hash}s!", v49, 0x16u);
      sub_100007BAC(v50);

      sub_100F3A500(v129, type metadata accessor for ObservedAdvertisement);
      v58 = v125;
    }

    else
    {
      v84 = *(v0 + 120);
      v85 = *(v0 + 200);

      sub_100F3A500(v47, type metadata accessor for BeaconIdentifier);
      sub_100F3A500(v84, type metadata accessor for ObservedAdvertisement);
      v58 = v46;
    }

    sub_100F3A500(v58, type metadata accessor for BeaconIdentifier);
    v87 = *(v0 + 160);
    v86 = *(v0 + 168);
    v89 = *(v0 + 144);
    v88 = *(v0 + 152);
    v90 = *(v0 + 136);
    v92 = *(v0 + 112);
    v91 = *(v0 + 120);
    v94 = *(v0 + 80);
    v93 = *(v0 + 88);
    v95 = *(v0 + 56);
    v128 = *(v0 + 48);
    v130 = *(v0 + 40);

    v96 = *(v0 + 8);

    return v96(_swiftEmptyArrayStorage);
  }

  else
  {
    v60 = *(v0 + 120);
    v59 = *(v0 + 128);
    v61 = *(v0 + 80);
    v62 = *(v0 + 64);
    v64 = *(v0 + 40);
    v63 = *(v0 + 48);
    v65 = *(v0 + 24);
    v66 = *(v0 + 32);
    sub_100F3A498(*(v0 + 56), v61, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v67 = *(v61 + *(v62 + 20));
    v68 = *(v66 + 16);
    v68(v63, v39, v65);
    v127 = v59;
    v68(v64, v39 + *(v59 + 20), v65);
    v69 = *(v60 + 34);
    *(v0 + 648) = v69;
    if (*(v60 + 35))
    {
      if (v67)
      {
        sub_100F3A2F8(*(v0 + 168), *(v0 + 136), type metadata accessor for BeaconIdentifier);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.fault.getter();
        v72 = os_log_type_enabled(v70, v71);
        v73 = *(v0 + 136);
        if (v72)
        {
          v74 = *(v0 + 24);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v131 = v76;
          *v75 = 141558275;
          *(v75 + 4) = 1752392040;
          *(v75 + 12) = 2081;
          sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
          v132 = dispatch thunk of CustomStringConvertible.description.getter();
          v133 = v77;
          v78._countAndFlagsBits = 47;
          v78._object = 0xE100000000000000;
          String.append(_:)(v78);
          v79 = v73 + *(v127 + 20);
          v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v80);

          v81 = v132;
          v82 = v133;
          sub_100F3A500(v73, type metadata accessor for BeaconIdentifier);
          v83 = sub_1000136BC(v81, v82, &v131);

          *(v75 + 14) = v83;
          _os_log_impl(&_mh_execute_header, v70, v71, "%{private,mask.hash}s Should be impossible to be in secondary sequence without a hint!", v75, 0x16u);
          sub_100007BAC(v76);
        }

        else
        {

          sub_100F3A500(v73, type metadata accessor for BeaconIdentifier);
        }

        v31 = swift_task_alloc();
        *(v0 + 600) = v31;
        *v31 = v0;
        v32 = sub_100F397B4;
LABEL_12:
        v31[1] = v32;
        v33 = *(v0 + 16);

        return sub_100F32F98(v33);
      }

      v117 = *(v0 + 224);
      v118 = *(*(v0 + 80) + *(*(v0 + 64) + 24));
      *(v0 + 496) = v118;
      v119 = swift_task_alloc();
      *(v0 + 504) = v119;
      *v119 = v0;
      v119[1] = sub_100F3867C;
      v120 = *(v0 + 40);
      v121 = *(v0 + 48);

      return sub_100F10DF4(v121, v120, v118);
    }

    else
    {
      v126 = v67;
      v97 = *(v0 + 168);
      v98 = *(v0 + 144);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_101385D80;
      *(v99 + 56) = &type metadata for UInt8;
      *(v99 + 64) = &protocol witness table for UInt8;
      *(v99 + 32) = v69;
      v100 = String.init(format:_:)();
      v102 = v101;
      sub_100F3A2F8(v97, v98, type metadata accessor for BeaconIdentifier);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();
      v105 = os_log_type_enabled(v103, v104);
      v106 = *(v0 + 144);
      if (v105)
      {
        v107 = *(v0 + 24);
        v108 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *v108 = 136446723;
        v109 = sub_1000136BC(v100, v102, &v131);

        *(v108 + 4) = v109;
        *(v108 + 12) = 2160;
        *(v108 + 14) = 1752392040;
        *(v108 + 22) = 2081;
        sub_100F3A180(&qword_101696930, &type metadata accessor for UUID);
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v133 = v110;
        v111._countAndFlagsBits = 47;
        v111._object = 0xE100000000000000;
        String.append(_:)(v111);
        v112 = v106 + *(v127 + 20);
        v113._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v113);

        v114 = v132;
        v115 = v133;
        sub_100F3A500(v106, type metadata accessor for BeaconIdentifier);
        v116 = sub_1000136BC(v114, v115, &v131);

        *(v108 + 24) = v116;
        _os_log_impl(&_mh_execute_header, v103, v104, "Hint %{public}s is available for %{private,mask.hash}s", v108, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100F3A500(v106, type metadata accessor for BeaconIdentifier);
      }

      *(v0 + 248) = *(*(v0 + 80) + *(*(v0 + 64) + 24));
      v122 = *(v0 + 224);
      if (v126)
      {
        v123 = sub_100F379D0;
      }

      else
      {
        v123 = sub_100F36D54;
      }

      return _swift_task_switch(v123, v122, 0);
    }
  }
}

uint64_t sub_100F36C20()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[20];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[10];
  v10 = v0[11];
  v13 = v0[7];
  v14 = v0[6];
  v15 = v0[5];
  v16 = v0[30];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v11 = v0[1];

  return v11();
}

void sub_100F36D54()
{
  v1 = v0[31];
  v0[32] = v1 + 96;
  if (v1 >= 0xFFFFFFFFFFFFFFA0)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v0[34] = v1;
    v0[35] = _swiftEmptyDictionarySingleton;
    v0[33] = _swiftEmptyDictionarySingleton;
    v0[36] = 96;
    v2 = v0[28];
    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_100F36E3C;
    v4 = v0[5];
    v5 = v0[6];

    sub_100F10DF4(v5, v4, v1);
  }
}

uint64_t sub_100F36E3C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 296);
  v10 = *v3;
  v4[38] = a1;
  v4[39] = a2;
  v4[40] = v2;

  if (v2)
  {
    v6 = v4[35];

    v7 = v4[28];
    v8 = sub_100F3714C;
  }

  else
  {
    v7 = v4[28];
    v8 = sub_100F36F60;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F36F60(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 312);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 304);
    v5 = *(v2 + 648);
    if (v5 == Data._Representation.subscript.getter())
    {
      v6 = *(v2 + 224);
      v7 = swift_task_alloc();
      *(v2 + 328) = v7;
      *v7 = v2;
      v7[1] = sub_100F37170;
      v8 = *(v2 + 272);
      v9 = *(v2 + 40);
      v10 = *(v2 + 48);

      return sub_1006868C4(v10, v9, v8);
    }

    a1 = sub_100006654(*(v2 + 304), *(v2 + 312));
  }

  v12 = *(v2 + 264);
  v13 = *(v2 + 280);
  v14 = *(v2 + 288);
  *(v2 + 360) = v13;
  if (!v14)
  {
    a1 = sub_100F374E0;
    a2 = 0;
    v3 = 0;

    return _swift_task_switch(a1, a2, v3);
  }

  v15 = *(v2 + 272);
  v16 = v15 + 1;
  if (v15 == -1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 272) = v16;
  *(v2 + 280) = v13;
  *(v2 + 264) = v12;
  v17 = *(v2 + 256);
  v18 = v17 - v16;
  if (v17 >= v16)
  {
    if ((v17 - v16) >= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if ((v16 - v17) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_task_switch(a1, a2, v3);
  }

  v18 = v17 - v16;
LABEL_16:
  *(v2 + 288) = v18;
  v19 = *(v2 + 224);
  v20 = swift_task_alloc();
  *(v2 + 296) = v20;
  *v20 = v2;
  v20[1] = sub_100F36E3C;
  v21 = *(v2 + 40);
  v22 = *(v2 + 48);

  return sub_100F10DF4(v22, v21, v16);
}

uint64_t sub_100F37170(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 328);
  v10 = *v3;
  v4[42] = a1;
  v4[43] = a2;
  v4[44] = v2;

  if (v2)
  {
    v6 = v4[35];

    v7 = v4[28];
    v8 = sub_100F37470;
  }

  else
  {
    v7 = v4[28];
    v8 = sub_100F37294;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F37294()
{
  v1 = v0[43];
  if (v1 >> 60 == 15)
  {
    v2 = sub_100006654(v0[38], v0[39]);
    v5 = v0[35];
    v6 = v0[33];
  }

  else
  {
    v7 = v0[42];
    v9 = v0[38];
    v8 = v0[39];
    v10 = v0[33];
    v11 = v0[34];
    sub_100017D5C(v7, v0[43]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFF448(v7, v1, v11, isUniquelyReferenced_nonNull_native);
    sub_100006654(v9, v8);
    v2 = sub_100006654(v7, v1);
    v6 = v10;
    v5 = v10;
  }

  v0[45] = v5;
  if (!v0[36])
  {
    v2 = sub_100F374E0;
    v3 = 0;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v13 = v0[34];
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v0[34] = v14;
  v0[35] = v5;
  v0[33] = v6;
  v15 = v0[32];
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if ((v14 - v15) < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v16 = v15 - v14;
LABEL_13:
  v0[36] = v16;
  v17 = v0[28];
  v18 = swift_task_alloc();
  v0[37] = v18;
  *v18 = v0;
  v18[1] = sub_100F36E3C;
  v19 = v0[5];
  v20 = v0[6];

  return sub_100F10DF4(v20, v19, v14);
}

uint64_t sub_100F37470()
{
  sub_100006654(v0[38], v0[39]);
  v0[46] = v0[44];

  return _swift_task_switch(sub_100F37828, 0, 0);
}

uint64_t sub_100F374E0()
{
  v50 = v0;
  v45 = v0[45];
  v1 = v0[15];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v47 = v2 & 0xDFFFFFFFFFFFFFFFLL;
    result = sub_100017D5C(*(v1 + 16), v2 & 0xDFFFFFFFFFFFFFFFLL);
    v5 = v3;
  }

  else
  {
    sub_100017D5C(*(v1 + 16), *(v1 + 24));
    result = sub_10002EA98(6, v3, v2, v49);
    v5 = v49[0];
    v47 = v49[1];
  }

  v6 = 0;
  v7 = -1;
  v8 = -1 << *(v45 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v45 + 64);
  v10 = (63 - v8) >> 6;
  v11 = _swiftEmptyArrayStorage;
  v43 = v5;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v45 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      do
      {
LABEL_11:
        v13 = __clz(__rbit64(v9)) | (v6 << 6);
        v14 = *(*(v45 + 48) + 8 * v13);
        v15 = (*(v45 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        sub_100017D5C(*v15, v17);
        sub_100017D5C(v5, v47);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5CBA0(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v11;
        if (v19 >= v18 >> 1)
        {
          result = sub_100A5CBA0((v18 > 1), v19 + 1, 1, v11);
          v20 = result;
        }

        *(v20 + 2) = v19 + 1;
        v11 = v20;
        v21 = &v20[48 * v19];
        v21[32] = 0;
        v9 &= v9 - 1;
        v5 = v43;
        *(v21 + 5) = v14;
        *(v21 + 6) = v43;
        *(v21 + 7) = v47;
        *(v21 + 8) = v16;
        *(v21 + 9) = v17;
      }

      while (v9);
    }
  }

  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[21];
  v25 = v0[15];
  v26 = v0[10];
  v27 = v0[5];
  v28 = v0[6];
  v44 = v11;
  v30 = v0[3];
  v29 = v0[4];

  sub_100016590(v5, v47);
  v31 = *(v29 + 8);
  v31(v27, v30);
  v31(v28, v30);
  sub_100F3A500(v26, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v25, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v24, type metadata accessor for BeaconIdentifier);

  v33 = v0[20];
  v32 = v0[21];
  v35 = v0[18];
  v34 = v0[19];
  v36 = v0[17];
  v38 = v0[14];
  v37 = v0[15];
  v40 = v0[10];
  v39 = v0[11];
  v46 = v0[7];
  v48 = v0[6];
  v41 = v0[5];

  v42 = v0[1];

  return v42(v44);
}

uint64_t sub_100F37828()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[15];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  v10 = v0[20];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[10];
  v17 = v0[11];
  v20 = v0[7];
  v21 = v0[6];
  v22 = v0[5];
  v23 = v0[46];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

void sub_100F379D0()
{
  v1 = v0[31];
  if (!v1)
  {
    goto LABEL_8;
  }

  if (!is_mul_ok(v1, 0x60uLL))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v2 = 96 * v1;
  v1 = 96 * v1 - 1;
  v3 = v2 - 96;
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v1 < v4)
  {
    __break(1u);
LABEL_8:
    v4 = 0;
  }

  v0[49] = v4;
  v0[50] = _swiftEmptyDictionarySingleton;
  v0[47] = v1;
  v0[48] = _swiftEmptyDictionarySingleton;
  v5 = v1 - v4;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v0[51] = v5;
  v6 = v0[28];
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_100F37AE8;
  v8 = v0[5];
  v9 = v0[6];

  sub_100F10DF4(v9, v8, v4);
}

uint64_t sub_100F37AE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 416);
  v10 = *v3;
  v4[53] = a1;
  v4[54] = a2;
  v4[55] = v2;

  if (v2)
  {
    v6 = v4[50];

    v7 = v4[28];
    v8 = sub_100F37DF8;
  }

  else
  {
    v7 = v4[28];
    v8 = sub_100F37C0C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F37C0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 432);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 424);
    v5 = *(v2 + 648);
    if (v5 == Data._Representation.subscript.getter())
    {
      v6 = *(v2 + 224);
      v7 = swift_task_alloc();
      *(v2 + 448) = v7;
      *v7 = v2;
      v7[1] = sub_100F37E1C;
      v8 = *(v2 + 392);
      v9 = *(v2 + 40);
      v10 = *(v2 + 48);

      return sub_1006868C4(v10, v9, v8);
    }

    a1 = sub_100006654(*(v2 + 424), *(v2 + 432));
  }

  v12 = *(v2 + 384);
  v13 = *(v2 + 400);
  v14 = *(v2 + 408);
  *(v2 + 480) = v13;
  if (!v14)
  {
    a1 = sub_100F3818C;
    a2 = 0;
    v3 = 0;

    return _swift_task_switch(a1, a2, v3);
  }

  v15 = *(v2 + 392);
  v16 = v15 + 1;
  if (v15 == -1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 392) = v16;
  *(v2 + 400) = v13;
  *(v2 + 384) = v12;
  v17 = *(v2 + 376);
  v18 = v17 - v16;
  if (v17 >= v16)
  {
    if ((v17 - v16) >= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if ((v16 - v17) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_task_switch(a1, a2, v3);
  }

  v18 = v17 - v16;
LABEL_16:
  *(v2 + 408) = v18;
  v19 = *(v2 + 224);
  v20 = swift_task_alloc();
  *(v2 + 416) = v20;
  *v20 = v2;
  v20[1] = sub_100F37AE8;
  v21 = *(v2 + 40);
  v22 = *(v2 + 48);

  return sub_100F10DF4(v22, v21, v16);
}

uint64_t sub_100F37E1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 448);
  v10 = *v3;
  v4[57] = a1;
  v4[58] = a2;
  v4[59] = v2;

  if (v2)
  {
    v6 = v4[50];

    v7 = v4[28];
    v8 = sub_100F3811C;
  }

  else
  {
    v7 = v4[28];
    v8 = sub_100F37F40;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F37F40()
{
  v1 = v0[58];
  if (v1 >> 60 == 15)
  {
    v2 = sub_100006654(v0[53], v0[54]);
    v5 = v0[50];
    v6 = v0[48];
  }

  else
  {
    v7 = v0[57];
    v9 = v0[53];
    v8 = v0[54];
    v10 = v0[48];
    v11 = v0[49];
    sub_100017D5C(v7, v0[58]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFF448(v7, v1, v11, isUniquelyReferenced_nonNull_native);
    sub_100006654(v9, v8);
    v2 = sub_100006654(v7, v1);
    v6 = v10;
    v5 = v10;
  }

  v0[60] = v5;
  if (!v0[51])
  {
    v2 = sub_100F3818C;
    v3 = 0;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v13 = v0[49];
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v0[49] = v14;
  v0[50] = v5;
  v0[48] = v6;
  v15 = v0[47];
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if ((v14 - v15) < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v16 = v15 - v14;
LABEL_13:
  v0[51] = v16;
  v17 = v0[28];
  v18 = swift_task_alloc();
  v0[52] = v18;
  *v18 = v0;
  v18[1] = sub_100F37AE8;
  v19 = v0[5];
  v20 = v0[6];

  return sub_100F10DF4(v20, v19, v14);
}

uint64_t sub_100F3811C()
{
  sub_100006654(v0[53], v0[54]);
  v0[61] = v0[59];

  return _swift_task_switch(sub_100F384D4, 0, 0);
}

uint64_t sub_100F3818C()
{
  v50 = v0;
  v45 = v0[60];
  v1 = v0[15];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v47 = v2 & 0xDFFFFFFFFFFFFFFFLL;
    result = sub_100017D5C(*(v1 + 16), v2 & 0xDFFFFFFFFFFFFFFFLL);
    v5 = v3;
  }

  else
  {
    sub_100017D5C(*(v1 + 16), *(v1 + 24));
    result = sub_10002EA98(6, v3, v2, v49);
    v5 = v49[0];
    v47 = v49[1];
  }

  v6 = 0;
  v7 = -1;
  v8 = -1 << *(v45 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v45 + 64);
  v10 = (63 - v8) >> 6;
  v11 = _swiftEmptyArrayStorage;
  v43 = v5;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v45 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      do
      {
LABEL_11:
        v13 = __clz(__rbit64(v9)) | (v6 << 6);
        v14 = *(*(v45 + 48) + 8 * v13);
        v15 = (*(v45 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        sub_100017D5C(*v15, v17);
        sub_100017D5C(v5, v47);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5CBA0(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v11;
        if (v19 >= v18 >> 1)
        {
          result = sub_100A5CBA0((v18 > 1), v19 + 1, 1, v11);
          v20 = result;
        }

        *(v20 + 2) = v19 + 1;
        v11 = v20;
        v21 = &v20[48 * v19];
        v21[32] = 0;
        v9 &= v9 - 1;
        v5 = v43;
        *(v21 + 5) = v14;
        *(v21 + 6) = v43;
        *(v21 + 7) = v47;
        *(v21 + 8) = v16;
        *(v21 + 9) = v17;
      }

      while (v9);
    }
  }

  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[21];
  v25 = v0[15];
  v26 = v0[10];
  v27 = v0[5];
  v28 = v0[6];
  v44 = v11;
  v30 = v0[3];
  v29 = v0[4];

  sub_100016590(v5, v47);
  v31 = *(v29 + 8);
  v31(v27, v30);
  v31(v28, v30);
  sub_100F3A500(v26, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v25, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v24, type metadata accessor for BeaconIdentifier);

  v33 = v0[20];
  v32 = v0[21];
  v35 = v0[18];
  v34 = v0[19];
  v36 = v0[17];
  v38 = v0[14];
  v37 = v0[15];
  v40 = v0[10];
  v39 = v0[11];
  v46 = v0[7];
  v48 = v0[6];
  v41 = v0[5];

  v42 = v0[1];

  return v42(v44);
}

uint64_t sub_100F384D4()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[15];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  v10 = v0[20];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[10];
  v17 = v0[11];
  v20 = v0[7];
  v21 = v0[6];
  v22 = v0[5];
  v23 = v0[61];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F3867C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 504);
  v8 = *v3;
  v4[64] = a1;
  v4[65] = a2;
  v4[66] = v2;

  if (v2)
  {
    v6 = sub_100F38A04;
  }

  else
  {
    v6 = sub_100F38798;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F38798()
{
  if (v0[65] >> 60 == 15)
  {
    v1 = v0[28];
    v2 = v0[25];
    v3 = v0[21];
    v4 = v0[15];
    v5 = v0[10];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v9 = v0[4];

    v10 = *(v9 + 8);
    v10(v7, v8);
    v10(v6, v8);
    sub_100F3A500(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    v17 = v0[14];
    v16 = v0[15];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[7];
    v29 = v0[6];
    v30 = v0[5];

    v21 = v0[1];

    return v21(_swiftEmptyArrayStorage);
  }

  else
  {
    v23 = v0[62];
    if (v23)
    {
      v24 = v23 / 0x60 + 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = v0[28];
    v26 = swift_task_alloc();
    v0[67] = v26;
    *v26 = v0;
    v26[1] = sub_100F38BAC;
    v27 = v0[5];
    v28 = v0[6];

    return sub_100F114D0(v28, v27, v24);
  }
}

uint64_t sub_100F38A04()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[15];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  v10 = v0[20];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[10];
  v17 = v0[11];
  v20 = v0[7];
  v21 = v0[6];
  v22 = v0[5];
  v23 = v0[66];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F38BAC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 536);
  v8 = *v3;
  v4[68] = a1;
  v4[69] = a2;
  v4[70] = v2;

  if (v2)
  {
    v6 = sub_100F38F1C;
  }

  else
  {
    v6 = sub_100F38CC8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F38CC8()
{
  if (v0[69] >> 60 == 15)
  {
    v1 = v0[65];
    v2 = v0[64];
    v3 = v0[28];
    v4 = v0[25];
    v30 = v0[21];
    v5 = v0[15];
    v6 = v0[10];
    v8 = v0[5];
    v7 = v0[6];
    v10 = v0[3];
    v9 = v0[4];

    sub_100006654(v2, v1);
    v11 = *(v9 + 8);
    v11(v8, v10);
    v11(v7, v10);
    sub_100F3A500(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v5, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v30, type metadata accessor for BeaconIdentifier);
    v13 = v0[20];
    v12 = v0[21];
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    v18 = v0[14];
    v17 = v0[15];
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[7];
    v29 = v0[6];
    v31 = v0[5];

    v22 = v0[1];

    return v22(_swiftEmptyArrayStorage);
  }

  else
  {
    v24 = v0[28];
    v25 = swift_task_alloc();
    v0[71] = v25;
    *v25 = v0;
    v25[1] = sub_100F390D8;
    v26 = v0[62];
    v27 = v0[5];
    v28 = v0[6];

    return sub_1006868C4(v28, v27, v26);
  }
}

uint64_t sub_100F38F1C()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[15];
  v6 = v0[10];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  sub_100006654(v2, v1);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v11(v7, v9);
  sub_100F3A500(v6, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v5, type metadata accessor for ObservedAdvertisement);
  v12 = v0[20];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[10];
  v19 = v0[11];
  v22 = v0[7];
  v23 = v0[6];
  v24 = v0[5];
  v25 = v0[70];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100F390D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 568);
  v8 = *v3;
  v4[72] = a1;
  v4[73] = a2;
  v4[74] = v2;

  if (v2)
  {
    v6 = sub_100F395E0;
  }

  else
  {
    v6 = sub_100F391F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F391F4()
{
  v1 = v0[73];
  if (v1 >> 60 == 15)
  {
    v2 = v0[69];
    v3 = v0[68];
    v4 = v0[65];
    v5 = v0[64];
    v6 = v0[28];
    v7 = v0[25];
    v54 = v0[15];
    v57 = v0[21];
    v51 = v0[10];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[3];
    v11 = v0[4];

    sub_100006654(v3, v2);
    sub_100006654(v5, v4);
    v12 = *(v11 + 8);
    v12(v8, v10);
    v12(v9, v10);
    sub_100F3A500(v51, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v54, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v57, type metadata accessor for BeaconIdentifier);
    v58 = _swiftEmptyArrayStorage;
  }

  else
  {
    v13 = v0[72];
    sub_10002E98C(v0[64], v0[65]);
    sub_10002E98C(v13, v1);
    v14 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v14 = sub_100A5CBA0((v15 > 1), v16 + 1, 1, v14);
    }

    v18 = v0[62];
    v19 = &v14[48 * v16];
    v20 = *(v0 + 32);
    v21 = *(v0 + 36);
    *(v14 + 2) = v17;
    v19[32] = 0;
    *(v19 + 5) = v18;
    *(v19 + 3) = v20;
    *(v19 + 4) = v21;
    if (v18)
    {
      v52 = v0[62] / 0x60uLL + 1;
    }

    else
    {
      v52 = 0;
    }

    v22 = *(v14 + 3);
    v55 = v16 + 1;
    v50 = v16 + 2;
    if (v17 >= v22 >> 1)
    {
      v58 = sub_100A5CBA0((v22 > 1), v16 + 2, 1, v14);
    }

    else
    {
      v58 = v14;
    }

    v23 = v0[65];
    v24 = v0[64];
    v25 = v0[28];
    v26 = v0[25];
    v48 = v0[21];
    v27 = v0[15];
    v28 = v0[10];
    v29 = v0[5];
    v30 = v0[6];
    v31 = v0[3];
    v32 = v0[4];
    v49 = *(v0 + 36);
    v47 = *(v0 + 34);

    sub_100006654(v24, v23);
    v33 = *(v32 + 8);
    v33(v29, v31);
    v33(v30, v31);
    sub_100F3A500(v28, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v27, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v48, type metadata accessor for BeaconIdentifier);
    *(v58 + 2) = v50;
    v34 = &v58[48 * v55];
    v34[32] = 1;
    *(v34 + 5) = v52;
    *(v34 + 3) = v47;
    *(v34 + 4) = v49;
  }

  v36 = v0[20];
  v35 = v0[21];
  v38 = v0[18];
  v37 = v0[19];
  v39 = v0[17];
  v41 = v0[14];
  v40 = v0[15];
  v43 = v0[10];
  v42 = v0[11];
  v44 = v0[7];
  v53 = v0[6];
  v56 = v0[5];

  v45 = v0[1];

  return v45(v58);
}

uint64_t sub_100F395E0()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[28];
  v6 = v0[25];
  v24 = v0[10];
  v26 = v0[15];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v11(v7, v9);
  sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v26, type metadata accessor for ObservedAdvertisement);
  v12 = v0[20];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[10];
  v19 = v0[11];
  v22 = v0[7];
  v23 = v0[6];
  v25 = v0[5];
  v27 = v0[74];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100F397B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 600);
  v6 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v7 = sub_100F39A88;
  }

  else
  {
    *(v4 + 616) = a1;
    v7 = sub_100F398DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F398DC()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[15];
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);
  sub_100F3A500(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
  v12 = v0[20];
  v11 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[7];
  v23 = v0[6];
  v24 = v0[5];
  v25 = v0[77];

  v21 = v0[1];

  return v21(v25);
}

uint64_t sub_100F39A88()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[15];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  v10 = v0[20];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[10];
  v17 = v0[11];
  v20 = v0[7];
  v21 = v0[6];
  v22 = v0[5];
  v23 = v0[76];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F39C30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 624);
  v6 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v7 = sub_100F39E90;
  }

  else
  {
    *(v4 + 640) = a1;
    v7 = sub_100F39D58;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F39D58()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[21];

  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[7];
  v16 = v0[6];
  v17 = v0[5];
  v18 = v0[80];

  v14 = v0[1];

  return v14(v18);
}

uint64_t sub_100F39E90()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[20];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[10];
  v10 = v0[11];
  v13 = v0[7];
  v14 = v0[6];
  v15 = v0[5];
  v16 = v0[79];
  sub_100F3A500(v0[21], type metadata accessor for BeaconIdentifier);

  v11 = v0[1];

  return v11();
}

void *sub_100F3A090@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_100025044();
  *a1 = result;
  return result;
}

uint64_t sub_100F3A0BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_100F13B7C(a1, a2, v6, v7, v8);
}

uint64_t sub_100F3A180(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100F3A1C8@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_100030068();
  *a1 = result;
  return result;
}

uint64_t sub_100F3A1F4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014744;

  return sub_100F14F3C(a1, a2, v6, v7, v8);
}

uint64_t sub_100F3A2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F3A3A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v6 = *(a1(0) - 8);
  v7 = v3[3];
  v8 = v3[4];
  return sub_100F15494(v3[2], v3 + ((*(v6 + 80) + 40) & ~*(v6 + 80)), a2, a3);
}

uint64_t sub_100F3A42C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  v5 = *(v1 + 16);
  return sub_100AC53EC(v4, a1);
}

uint64_t sub_100F3A498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F3A500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F3A560(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016C0F30, &qword_1013F3B18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v9 - v6;
  v8 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_instructionEventCoalescer);
  if (v8)
  {
    v10 = *(v8 + 64);

    sub_1000BC4D4(&qword_1016B1220, &unk_1013F3B20);
    sub_1000041A4(&qword_1016B1228, &qword_1016B1220, &unk_1013F3B20);
    Publisher.filter(_:)();

    sub_1000041A4(&qword_1016C0F38, &qword_1016C0F30, &qword_1013F3B18);

    Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v7, v2);

    v10 = sub_100A96AF8();

    sub_1000BC4D4(&qword_1016A4980, &qword_1013B1338);
    sub_1000041A4(&qword_1016A4988, &qword_1016A4980, &qword_1013B1338);
    Publisher<>.sink(receiveValue:)();

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100F3A968(uint64_t a1)
{
  v1 = *sub_1000035D0((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100F3A99C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C328);
  v1 = sub_1000076D4(v0, qword_10177C328);
  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B7E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100F3AA64(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100F3AB04, 0, 0);
}

uint64_t sub_100F3AB04()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_defaultActor_initialize();
  *(v1 + 144) = _swiftEmptyDictionarySingleton;
  *(v1 + 152) = 0;
  type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v3 = type metadata accessor for CentralManager.Options();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  static CentralManager.Options.allowDuplicates.getter();
  v0[2] = v7;
  sub_100F47F3C(&unk_1016C1210, 255, &type metadata accessor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 56))(v2, 0, 1, v3);
  v8 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_100F3AD48;
  v10 = v0[6];

  return CentralManager.__allocating_init(options:)(v10);
}

uint64_t sub_100F3AD48(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100F3AE48, 0, 0);
}

uint64_t sub_100F3AE48()
{
  v1 = v0[5];
  v2 = v0[3];
  *(v1 + 128) = v0[8];
  *(v1 + 136) = v2;
  v3 = async function pointer to daemon.getter[1];

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100F3AEF0;

  return daemon.getter();
}

uint64_t sub_100F3AEF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100F47F3C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100F47F3C(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100F3B0D4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F3B0D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v8 = sub_100F3B2B8;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_100F3B220;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100F3B220()
{
  v2 = v0[4];
  v1 = v0[5];
  *(v1 + 112) = v0[13];
  *(v1 + 120) = v2;
  return _swift_task_switch(sub_100F3B244, v1, 0);
}

uint64_t sub_100F3B244()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[5];

  return v3(v4);
}

uint64_t sub_100F3B2B8()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v1[16];

  v6 = v1[17];

  v7 = v1[18];

  v8 = v1[19];

  type metadata accessor for BeaconScanner();
  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();

  v9 = v0[1];
  v10 = v0[12];

  return v9();
}

uint64_t sub_100F3B388(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 232) = a1;
  *(v2 + 32) = *v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  *(v2 + 48) = v4;
  v5 = *(v4 - 8);
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 + 64);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v6 = type metadata accessor for ScanMode();
  *(v2 + 88) = v6;
  v7 = *(v6 - 8);
  *(v2 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  *(v2 + 112) = v9;
  v10 = *(v9 - 8);
  *(v2 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  v12 = type metadata accessor for CentralManager.State();
  *(v2 + 144) = v12;
  v13 = *(v12 - 8);
  *(v2 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100F3B5F8, v1, 0);
}

uint64_t sub_100F3B5F8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + 136);
  v4 = swift_allocObject();
  v0[21] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to XPCSession.proxy(errorHandler:)[1];

  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_100F3B6E4;

  return XPCSession.proxy(errorHandler:)(v0 + 2, sub_100F47F14, v4);
}

uint64_t sub_100F3B6E4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100F3B810, v3, 0);
}

uint64_t sub_100F3B810()
{
  v1 = v0[2];
  v0[23] = v1;
  if (v1)
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[18];
    v0[24] = *(v0[3] + 128);
    (*(v3 + 104))(v2, enum case for CentralManager.State.poweredOn(_:), v4);
    v5 = async function pointer to CentralManagerProtocol.await(state:)[1];
    v6 = swift_task_alloc();
    v0[25] = v6;
    v7 = type metadata accessor for CentralManager();
    v8 = sub_100F47F3C(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
    *v6 = v0;
    v6[1] = sub_100F3BA84;
    v9 = v0[20];

    return CentralManagerProtocol.await(state:)(v9, v7, v8);
  }

  else
  {
    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error);
    swift_allocError();
    v11 = v10;
    v12 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
    (*(*(v12 - 8) + 56))(v11, 1, 2, v12);
    swift_willThrow();
    v13 = v0[20];
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[13];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[5];

    v20 = v0[1];

    return v20();
  }
}