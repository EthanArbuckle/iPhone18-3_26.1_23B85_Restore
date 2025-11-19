BOOL sub_1001B4694(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1001B46EC(v4, __dst);
}

BOOL sub_1001B46EC(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[3];
  v185[2] = a1[2];
  v185[3] = v4;
  v5 = a1[5];
  v185[4] = a1[4];
  v185[5] = v5;
  v6 = a1[1];
  v185[0] = *a1;
  v185[1] = v6;
  v7 = *a2;
  v184[1] = a2[1];
  v184[0] = v7;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v184[5] = a2[5];
  v184[4] = v10;
  v184[3] = v9;
  v184[2] = v8;
  if (!sub_1001773BC(v185, v184))
  {
    return 0;
  }

  v11 = a1[13];
  v12 = a1[11];
  v180 = a1[12];
  v181 = v11;
  v13 = a1[13];
  v14 = a1[15];
  v182 = a1[14];
  v183 = v14;
  v15 = a1[9];
  v16 = a1[7];
  v176 = a1[8];
  v177 = v15;
  v17 = a1[9];
  v18 = a1[11];
  v178 = a1[10];
  v179 = v18;
  v19 = a1[7];
  v175[0] = a1[6];
  v175[1] = v19;
  v20 = a2[13];
  v21 = a2[11];
  v171 = a2[12];
  v172 = v20;
  v22 = a2[13];
  v23 = a2[15];
  v173 = a2[14];
  v174 = v23;
  v24 = a2[9];
  v25 = a2[7];
  v167 = a2[8];
  v168 = v24;
  v26 = a2[9];
  v27 = a2[11];
  v169 = a2[10];
  v170 = v27;
  v28 = a2[7];
  v166[0] = a2[6];
  v166[1] = v28;
  v29 = a1[13];
  __src[6] = a1[12];
  __src[7] = v29;
  v30 = a1[15];
  __src[8] = a1[14];
  __src[9] = v30;
  v31 = a1[9];
  __src[2] = a1[8];
  __src[3] = v31;
  v32 = a1[11];
  __src[4] = a1[10];
  __src[5] = v32;
  v33 = a1[7];
  __src[0] = a1[6];
  __src[1] = v33;
  __src[16] = v171;
  __src[17] = v22;
  v34 = a2[15];
  __src[18] = v173;
  __src[19] = v34;
  __src[12] = v167;
  __src[13] = v26;
  __src[14] = v169;
  __src[15] = v21;
  __src[10] = v166[0];
  __src[11] = v25;
  v157[6] = v180;
  v157[7] = v13;
  v35 = a1[15];
  v157[8] = v182;
  v157[9] = v35;
  v157[2] = v176;
  v157[3] = v17;
  v157[4] = v178;
  v157[5] = v12;
  v157[0] = v175[0];
  v157[1] = v16;
  if (sub_10002D650(v157) == 1)
  {
    v36 = a2[13];
    __dst[6] = a2[12];
    __dst[7] = v36;
    v37 = a2[15];
    __dst[8] = a2[14];
    __dst[9] = v37;
    v38 = a2[9];
    __dst[2] = a2[8];
    __dst[3] = v38;
    v39 = a2[11];
    __dst[4] = a2[10];
    __dst[5] = v39;
    v40 = a2[7];
    __dst[0] = a2[6];
    __dst[1] = v40;
    if (sub_10002D650(__dst) == 1)
    {
      v41 = a1[13];
      v197 = a1[12];
      v198 = v41;
      v42 = a1[15];
      v199 = a1[14];
      v200 = v42;
      v43 = a1[9];
      v193 = a1[8];
      v194 = v43;
      v44 = a1[11];
      v195 = a1[10];
      v196 = v44;
      v45 = a1[7];
      v191 = a1[6];
      v192 = v45;
      sub_100005F04(v175, &v145, &qword_1005A9328, &unk_1004C7F20);
      sub_100005F04(v166, &v145, &qword_1005A9328, &unk_1004C7F20);
      sub_100002CE0(&v191, &qword_1005A9328, &unk_1004C7F20);
      goto LABEL_10;
    }

LABEL_6:
    memcpy(__dst, __src, sizeof(__dst));
    sub_100005F04(v175, &v191, &qword_1005A9328, &unk_1004C7F20);
    sub_100005F04(v166, &v191, &qword_1005A9328, &unk_1004C7F20);
    v51 = &unk_1005AEE30;
    v52 = &unk_1004CFF20;
    v53 = __dst;
LABEL_7:
    sub_100002CE0(v53, v51, v52);
    return 0;
  }

  v46 = a2[13];
  v151 = a2[12];
  v152 = v46;
  v47 = a2[15];
  v153 = a2[14];
  v154 = v47;
  v48 = a2[9];
  v147 = a2[8];
  v148 = v48;
  v49 = a2[11];
  v149 = a2[10];
  v150 = v49;
  v50 = a2[7];
  v145 = a2[6];
  v146 = v50;
  if (sub_10002D650(&v145) == 1)
  {
    goto LABEL_6;
  }

  v55 = a2[13];
  v56 = a2[11];
  v122 = a2[12];
  v123 = v55;
  v57 = a2[13];
  v58 = a2[15];
  v124 = a2[14];
  v125 = v58;
  v59 = a2[9];
  v60 = a2[7];
  v118 = a2[8];
  v119 = v59;
  v61 = a2[9];
  v62 = a2[11];
  v120 = a2[10];
  v121 = v62;
  v63 = a2[7];
  v116 = a2[6];
  v117 = v63;
  __dst[6] = v122;
  __dst[7] = v57;
  v64 = a2[15];
  __dst[8] = v124;
  __dst[9] = v64;
  __dst[2] = v118;
  __dst[3] = v61;
  __dst[4] = v120;
  __dst[5] = v56;
  __dst[0] = v116;
  __dst[1] = v60;
  v65 = a1[13];
  v197 = a1[12];
  v198 = v65;
  v66 = a1[15];
  v199 = a1[14];
  v200 = v66;
  v67 = a1[9];
  v193 = a1[8];
  v194 = v67;
  v68 = a1[11];
  v195 = a1[10];
  v196 = v68;
  v69 = a1[7];
  v191 = a1[6];
  v192 = v69;
  v70 = sub_100180710(&v191, __dst);
  sub_100005F04(v175, &v126, &qword_1005A9328, &unk_1004C7F20);
  sub_100005F04(v166, &v126, &qword_1005A9328, &unk_1004C7F20);
  sub_100002CE0(&v116, &qword_1005A9328, &unk_1004C7F20);
  v71 = a1[13];
  v132 = a1[12];
  v133 = v71;
  v72 = a1[15];
  v134 = a1[14];
  v135 = v72;
  v73 = a1[9];
  v128 = a1[8];
  v129 = v73;
  v74 = a1[11];
  v130 = a1[10];
  v131 = v74;
  v75 = a1[7];
  v126 = a1[6];
  v127 = v75;
  sub_100002CE0(&v126, &qword_1005A9328, &unk_1004C7F20);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v76 = a1[23];
  v122 = a1[22];
  v123 = v76;
  v124 = a1[24];
  v77 = a1[19];
  v118 = a1[18];
  v119 = v77;
  v78 = a1[21];
  v120 = a1[20];
  v121 = v78;
  v79 = a1[17];
  v116 = a1[16];
  v117 = v79;
  if (sub_10005A3B0(&v116) == 1)
  {
    v80 = a2[23];
    __src[6] = a2[22];
    __src[7] = v80;
    __src[8] = a2[24];
    v81 = a2[19];
    __src[2] = a2[18];
    __src[3] = v81;
    v82 = a2[20];
    __src[5] = a2[21];
    __src[4] = v82;
    v83 = a2[17];
    __src[0] = a2[16];
    __src[1] = v83;
    if (sub_10005A3B0(__src) != 1)
    {
      return 0;
    }
  }

  else
  {
    v84 = a2[23];
    __src[6] = a2[22];
    __src[7] = v84;
    __src[8] = a2[24];
    v85 = a2[19];
    __src[2] = a2[18];
    __src[3] = v85;
    v86 = a2[20];
    __src[5] = a2[21];
    __src[4] = v86;
    v87 = a2[17];
    __src[0] = a2[16];
    __src[1] = v87;
    if (sub_10005A3B0(__src) == 1)
    {
      return 0;
    }

    v88 = a2[23];
    v151 = a2[22];
    v152 = v88;
    v153 = a2[24];
    v89 = a2[19];
    v147 = a2[18];
    v148 = v89;
    v90 = a2[21];
    v149 = a2[20];
    v150 = v90;
    v91 = a2[17];
    v145 = a2[16];
    v146 = v91;
    v92 = a1[23];
    v132 = a1[22];
    v133 = v92;
    v134 = a1[24];
    v93 = a1[19];
    v128 = a1[18];
    v129 = v93;
    v94 = a1[21];
    v130 = a1[20];
    v131 = v94;
    v95 = a1[17];
    v126 = a1[16];
    v127 = v95;
    if (!sub_10017723C(&v126, &v145))
    {
      return 0;
    }
  }

  v96 = a1[28];
  v163 = a1[27];
  v164 = v96;
  v165 = a1[29];
  v97 = a1[25];
  v162[1] = a1[26];
  v162[0] = v97;
  v98 = a2[28];
  v159 = a2[27];
  v160 = v98;
  v161 = a2[29];
  v99 = a2[25];
  v158[1] = a2[26];
  v158[0] = v99;
  v100 = *(&v163 + 1);
  if (*(&v163 + 1))
  {
    if (*(&v159 + 1))
    {
      v101 = *(a2 + 54);
      v102 = a2[26];
      v136[0] = a2[25];
      v136[1] = v102;
      *&v137 = v101;
      *(&v137 + 1) = *(&v159 + 1);
      v103 = a2[29];
      v138 = a2[28];
      v139 = v103;
      __src[3] = v138;
      __src[4] = v103;
      __src[0] = v136[0];
      __src[1] = v102;
      __src[2] = v137;
      v104 = a1[25];
      v105 = *(a1 + 54);
      v186[1] = a1[26];
      v186[0] = v104;
      v106 = a1[28];
      v190 = a1[29];
      v189 = v106;
      v187 = v105;
      v188 = *(&v163 + 1);
      sub_100005F04(v162, v140, &qword_1005AD7A8, &qword_1004CA280);
      sub_100005F04(v158, v140, &qword_1005AD7A8, &qword_1004CA280);
      v107 = sub_100177548(v186, __src);
      sub_100002CE0(v136, &qword_1005AD7A8, &qword_1004CA280);
      v108 = a1[26];
      v140[0] = a1[25];
      v140[1] = v108;
      v141 = *(a1 + 54);
      v142 = v100;
      v109 = a1[29];
      v143 = a1[28];
      v144 = v109;
      sub_100002CE0(v140, &qword_1005AD7A8, &qword_1004CA280);
      return v107;
    }

    goto LABEL_20;
  }

  if (*(&v159 + 1))
  {
LABEL_20:
    v110 = a1[26];
    __src[0] = a1[25];
    __src[1] = v110;
    *&__src[2] = *(a1 + 54);
    *(&__src[2] + 1) = *(&v163 + 1);
    v111 = a1[29];
    __src[3] = a1[28];
    __src[4] = v111;
    v112 = a2[26];
    __src[5] = a2[25];
    __src[6] = v112;
    *&__src[7] = *(a2 + 54);
    *(&__src[7] + 1) = *(&v159 + 1);
    v113 = a2[28];
    __src[9] = a2[29];
    __src[8] = v113;
    sub_100005F04(v162, v186, &qword_1005AD7A8, &qword_1004CA280);
    sub_100005F04(v158, v186, &qword_1005AD7A8, &qword_1004CA280);
    v51 = &unk_1005AEE38;
    v52 = &unk_1004CFF28;
    v53 = __src;
    goto LABEL_7;
  }

  v114 = a1[26];
  __src[0] = a1[25];
  __src[1] = v114;
  __src[2] = *(a1 + 54);
  v115 = a1[29];
  __src[3] = a1[28];
  __src[4] = v115;
  sub_100005F04(v162, v186, &qword_1005AD7A8, &qword_1004CA280);
  sub_100005F04(v158, v186, &qword_1005AD7A8, &qword_1004CA280);
  sub_100002CE0(__src, &qword_1005AD7A8, &qword_1004CA280);
  return 1;
}

uint64_t sub_1001B4E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49796DLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7366657270 && a2 == 0xE500000000000000)
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

void *sub_1001B4FAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AEE00, &unk_1004CFF08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v51 = a1;
  sub_100011AEC(a1, v10);
  sub_1001B53EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v51);
  }

  v14 = a2;
  v43 = 0;
  sub_1000325D0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50[2] = v46;
  v50[3] = v47;
  v50[4] = v48;
  v50[5] = v49;
  v50[0] = v44;
  v50[1] = v45;
  v32 = 1;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v50[12] = v39;
  v50[13] = v40;
  v50[14] = v41;
  v50[15] = v42;
  v50[8] = v35;
  v50[9] = v36;
  v50[10] = v37;
  v50[11] = v38;
  v50[6] = v33;
  v50[7] = v34;
  v22 = 2;
  sub_10017E074();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v50[22] = v29;
  v50[23] = v30;
  v50[24] = v31;
  v50[18] = v25;
  v50[19] = v26;
  v50[21] = v28;
  v50[20] = v27;
  v50[17] = v24;
  v50[16] = v23;
  v16[487] = 3;
  sub_10017DB0C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v50[27] = v19;
  v50[28] = v20;
  v50[29] = v21;
  v50[26] = v18;
  v50[25] = v17;
  memcpy(v15, v50, sizeof(v15));
  sub_1001B5440(v15, v16);
  sub_100004984(v51);
  memcpy(v16, v50, 0x1E0uLL);
  sub_1001B5478(v16);
  return memcpy(v14, v15, 0x1E0uLL);
}

unint64_t sub_1001B53EC()
{
  result = qword_1005AEE08;
  if (!qword_1005AEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE08);
  }

  return result;
}

unint64_t sub_1001B54A8()
{
  result = qword_1005AEE18;
  if (!qword_1005AEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE18);
  }

  return result;
}

unint64_t sub_1001B54FC()
{
  result = qword_1005AEE20;
  if (!qword_1005AEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE20);
  }

  return result;
}

unint64_t sub_1001B5550()
{
  result = qword_1005AEE28;
  if (!qword_1005AEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE28);
  }

  return result;
}

unint64_t sub_1001B55B8()
{
  result = qword_1005AEE40;
  if (!qword_1005AEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE40);
  }

  return result;
}

unint64_t sub_1001B5610()
{
  result = qword_1005AEE48;
  if (!qword_1005AEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE48);
  }

  return result;
}

unint64_t sub_1001B5668()
{
  result = qword_1005AEE50;
  if (!qword_1005AEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AEE50);
  }

  return result;
}

uint64_t type metadata accessor for ShareInvitationRecord()
{
  result = qword_1005AEEB0;
  if (!qword_1005AEEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B5730()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B57A4()
{
  _StringGuts.grow(_:)(37);

  type metadata accessor for URL();
  sub_100197D68();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x80000001004E4AF0;
  v2._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v2);
  v3 = (v0 + *(type metadata accessor for ShareInvitationRecord() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = Data.base64EncodedString(options:)(0);
  String.append(_:)(v6);

  return 0x4C52556572616873;
}

uint64_t sub_1001B5898()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005AEEE8);
  v1 = sub_10000A6F0(v0, qword_1005AEEE8);
  if (qword_1005A8090 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFED0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001B5960()
{
  v0 = type metadata accessor for Table();
  sub_10004F154(v0, qword_1005DFD08);
  sub_10000A6F0(v0, qword_1005DFD08);
  return Table.init(_:database:)();
}

uint64_t sub_1001B59C8()
{
  v0 = type metadata accessor for Table();
  sub_10004F154(v0, qword_1005DFD20);
  sub_10000A6F0(v0, qword_1005DFD20);
  return Table.init(_:database:)();
}

uint64_t sub_1001B5A34(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DatabaseState();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1001B5AF8, 0, 0);
}

uint64_t sub_1001B5AF8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v1, enum case for DatabaseState.unavailable(_:), v4);
  v5 = sub_10004B564(&qword_1005AF108, &qword_1004D5890);
  v6 = *(v5 + 52);
  v7 = (*(v5 + 48) + 3) & 0x1FFFFFFFCLL;
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v8 + *(*v8 + class metadata base offset for ManagedBuffer + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  *(v3 + 112) = v8;
  v9 = sub_10004B564(&qword_1005AF110, &unk_1004D02E0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v3 + 120) = AsyncStreamProvider.init()();
  v12 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_logger;
  if (qword_1005A8090 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 72);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = type metadata accessor for Logger();
  v17 = sub_10000A6F0(v16, qword_1005DFED0);
  (*(*(v16 - 8) + 16))(v15 + v12, v17, v16);
  *(v15 + OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_connectionPair) = 0;
  *(v15 + OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_currentVersion) = 2;
  v18 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_baseContainerURL;
  v19 = type metadata accessor for URL();
  *(v0 + 56) = v19;
  v20 = *(v19 - 8);
  *(v0 + 64) = v20;
  (*(v20 + 16))(v15 + v18, v14, v19);
  *(v15 + OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_temporary) = v13;

  return _swift_task_switch(sub_1001B5DB8, v15, 0);
}

uint64_t sub_1001B5DB8()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[2], v0[7]);

  v2 = v0[1];
  v3 = v0[3];

  return v2(v3);
}

uint64_t sub_1001B5E3C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_connectionPair);

  v6 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_baseContainerURL;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001B5F1C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001B6054@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001B60CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_connectionPair;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1001B6184()
{
  v1 = v0;
  v2 = *(v0 + 120);
  sub_10004B564(&qword_1005AF0F8, &qword_1004D5880);
  v3 = type metadata accessor for DatabaseState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C1900;
  v8 = *(v1 + 112);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  (*(v4 + 16))(v7 + v6, v8 + v9, v3);
  os_unfair_lock_unlock((v8 + v10));
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_1001B6324()
{
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  return URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_1001B640C()
{
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v14 = v2[1];
  v14((v6 + v7), v1);
  v9 = enum case for DatabaseState.available(_:);
  v10 = v2[13];
  v10((v6 + v7), enum case for DatabaseState.available(_:), v1);
  os_unfair_lock_unlock((v6 + v8));
  v11 = *(v0 + 120);
  v10(v5, v9, v1);
  AsyncStreamProvider.yield(value:transaction:)();
  return v14(v5, v1);
}

void sub_1001B65C0(int a1, int a2)
{
  v21 = *v2;
  v22 = v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7FF8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005AEEE8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = a1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v12, v13, "Migrate schema %d -> %d", v14, 0xEu);
  }

  if (a2 == 2)
  {
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v16._countAndFlagsBits = 0xD00000000000001FLL;
    v16._object = 0x80000001004E4C00;
    Connection.execute(_:)(v16);
    if (!v17)
    {
      v18._countAndFlagsBits = 0xD000000000000018;
      v18._object = 0x80000001004E4C20;
      Connection.execute(_:)(v18);
      if (!v19)
      {
LABEL_6:
        __chkstk_darwin(v15);
        UUID.init()();
        UUID.uuidString.getter();
        (*(v7 + 8))(v10, v6);
        Connection.savepoint(_:block:)();
      }
    }
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v23 = 0xD000000000000013;
    v24 = 0x80000001004E4BE0;
    v25 = a2;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1001B6A54()
{
  v1 = *v0;
  type metadata accessor for CloudStorageDatabase();
  sub_1001B9498(&qword_1005AF100);
  return Database.description.getter();
}

uint64_t sub_1001B6AAC()
{
  v1 = async function pointer to Database.isolatedDescription.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = type metadata accessor for CloudStorageDatabase();
  v4 = sub_1001B9498(&qword_1005AF100);
  *v2 = v0;
  v2[1] = sub_1001B6B7C;

  return Database.isolatedDescription.getter(v3, v4);
}

uint64_t sub_1001B6B7C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1001B6CE8()
{
  if (qword_1005A8000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_10000A6F0(v1, qword_1005DFD08);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  if (qword_1005A8008 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v1, qword_1005DFD20);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
}

uint64_t sub_1001B6E74()
{
  v0 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v27 = &v26 - v2;
  v3 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_10004B564(&qword_1005AF0A0, &unk_1004D0280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  if (qword_1005A8010 != -1)
  {
    swift_once();
  }

  v15 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  v16 = sub_10000A6F0(v15, qword_1005DFD38);
  v17 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 1, 1, v17);
  v19 = *(v15 - 8);
  (*(v19 + 56))(v10, 1, 1, v15);
  type metadata accessor for UUID();
  v26 = v16;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v14, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8018 != -1)
  {
    swift_once();
  }

  v20 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v20, qword_1005DFD50);
  v18(v14, 1, 1, v17);
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v6, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v14, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8020 != -1)
  {
    swift_once();
  }

  v21 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v21, qword_1005DFD68);
  v18(v14, 1, 1, v17);
  v22 = v27;
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v22, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v14, &qword_1005AF0A8, &unk_1004D57F0);
  sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004C1900;
  *(v23 + 56) = v15;
  *(v23 + 64) = sub_10001DF0C(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260);
  v24 = sub_10000331C((v23 + 32));
  (*(v19 + 16))(v24, v26, v15);
  TableBuilder.unique(_:)();
}

uint64_t sub_1001B73DC()
{
  v0 = sub_10004B564(&qword_1005AF088, &unk_1004D5840);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v49 = v39 - v2;
  v3 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - v5;
  v7 = sub_10004B564(&qword_1005AF098, &qword_1004D0278);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v39 - v9;
  v11 = sub_10004B564(&qword_1005AF0A0, &unk_1004D0280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v39 - v13;
  v15 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v39 - v17;
  if (qword_1005A8010 != -1)
  {
    swift_once();
  }

  v19 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  v20 = sub_10000A6F0(v19, qword_1005DFD38);
  v21 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v22 = *(*(v21 - 8) + 56);
  v22(v18, 1, 1, v21);
  v45 = *(v19 - 8);
  v23 = *(v45 + 56);
  v48 = v19;
  v23(v14, 1, 1, v19);
  type metadata accessor for UUID();
  v47 = v20;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v14, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v18, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8048 != -1)
  {
    swift_once();
  }

  v24 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10000A6F0(v24, qword_1005DFDE0);
  v22(v18, 1, 1, v21);
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  sub_1001B921C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v10, &qword_1005AF098, &qword_1004D0278);
  sub_100002CE0(v18, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8050 != -1)
  {
    swift_once();
  }

  v44 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v44, qword_1005DFDF8);
  v22(v18, 1, 1, v21);
  v25 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v42 = v26 + 56;
  v43 = v27;
  v27(v6, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v46 = v6;
  sub_100002CE0(v6, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v18, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8058 != -1)
  {
    swift_once();
  }

  v41 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10000A6F0(v41, qword_1005DFE10);
  v22(v18, 1, 1, v21);
  v28 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = v22;
  v32 = v49;
  v39[1] = v29 + 56;
  v40 = v30;
  v30(v49, 1, 1, v28);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v32, &qword_1005AF088, &unk_1004D5840);
  sub_100002CE0(v18, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8060 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v44, qword_1005DFE28);
  v31(v18, 1, 1, v21);
  v33 = v46;
  v43(v46, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v33, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v18, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8068 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v41, qword_1005DFE40);
  v31(v18, 1, 1, v21);
  v34 = v49;
  v40(v49, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v34, &qword_1005AF088, &unk_1004D5840);
  sub_100002CE0(v18, &qword_1005AF0A8, &unk_1004D57F0);
  sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1004C1900;
  v36 = v48;
  *(v35 + 56) = v48;
  *(v35 + 64) = sub_10001DF0C(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260);
  v37 = sub_10000331C((v35 + 32));
  (*(v45 + 16))(v37, v47, v36);
  TableBuilder.unique(_:)();
}

uint64_t sub_1001B7C98()
{
  if (qword_1005A8000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_10000A6F0(v1, qword_1005DFD08);
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {

    if (qword_1005A7FF8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005AEEE8);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000D01C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Couldn't drop fence table: %{public}s", v5, 0xCu);
      sub_100004984(v6);
    }

    else
    {
    }
  }

  else
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
}

uint64_t sub_1001B7F54()
{
  v0 = sub_10004B564(&qword_1005AF088, &unk_1004D5840);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v45 = v42 - v2;
  v3 = sub_10004B564(&qword_1005AF0F0, &unk_1004D02C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v44 = v42 - v5;
  v6 = sub_10004B564(&qword_1005AF090, &qword_1004D0270);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v42 - v8;
  v10 = sub_10004B564(&qword_1005AF0E8, &unk_1004D02B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v42 - v12;
  v14 = sub_10004B564(&qword_1005AF0A0, &unk_1004D0280);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v42 - v16;
  v18 = sub_10004B564(&qword_1005AF0A8, &unk_1004D57F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v42 - v20;
  if (qword_1005A8010 != -1)
  {
    swift_once();
  }

  v22 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  v23 = sub_10000A6F0(v22, qword_1005DFD38);
  v24 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v25 = *(*(v24 - 8) + 56);
  v25(v21, 1, 1, v24);
  v46 = *(v22 - 8);
  v26 = *(v46 + 56);
  v48 = v22;
  v26(v17, 1, 1, v22);
  type metadata accessor for UUID();
  v47 = v23;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100002CE0(v17, &qword_1005AF0A0, &unk_1004D0280);
  sub_100002CE0(v21, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8018 != -1)
  {
    swift_once();
  }

  v27 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v27, qword_1005DFD50);
  v25(v21, 1, 1, v24);
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v13, &qword_1005AF0E8, &unk_1004D02B0);
  sub_100002CE0(v21, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8020 != -1)
  {
    swift_once();
  }

  v28 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v28, qword_1005DFD68);
  v25(v21, 1, 1, v24);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v42[1] = v29 + 56;
  v43 = v30;
  v30(v9, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v9, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v21, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8028 != -1)
  {
    swift_once();
  }

  v31 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10000A6F0(v31, qword_1005DFD80);
  v25(v21, 1, 1, v24);
  v32 = v44;
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v32, &qword_1005AF0F0, &unk_1004D02C0);
  sub_100002CE0(v21, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8030 != -1)
  {
    swift_once();
  }

  v33 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10000A6F0(v33, qword_1005DFD98);
  v25(v21, 1, 1, v24);
  v34 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
  v35 = v45;
  (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v35, &qword_1005AF088, &unk_1004D5840);
  sub_100002CE0(v21, &qword_1005AF0A8, &unk_1004D57F0);
  v36 = v43;
  if (qword_1005A8038 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v28, qword_1005DFDB0);
  v25(v21, 1, 1, v24);
  v36(v9, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v9, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v21, &qword_1005AF0A8, &unk_1004D57F0);
  if (qword_1005A8040 != -1)
  {
    swift_once();
  }

  v37 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v37, qword_1005DFDC8);
  v25(v21, 1, 1, v24);
  v36(v9, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100002CE0(v9, &qword_1005AF090, &qword_1004D0270);
  sub_100002CE0(v21, &qword_1005AF0A8, &unk_1004D57F0);
  sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1004C1900;
  v39 = v48;
  *(v38 + 56) = v48;
  *(v38 + 64) = sub_10001DF0C(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260);
  v40 = sub_10000331C((v38 + 32));
  (*(v46 + 16))(v40, v47, v39);
  TableBuilder.unique(_:)();
}

uint64_t sub_1001B8934()
{
  v0 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10004F154(v0, qword_1005DFD38);
  sub_10000A6F0(v0, qword_1005DFD38);
  sub_10001DF0C(&qword_1005AF080, &qword_1005AF078, &unk_1004D0260);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B89DC()
{
  v0 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10004F154(v0, qword_1005DFD50);
  sub_10000A6F0(v0, qword_1005DFD50);
  sub_10001DF0C(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8A8C()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005DFD68);
  sub_10000A6F0(v0, qword_1005DFD68);
  sub_10001DF0C(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8B40()
{
  v0 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
  sub_10004F154(v0, qword_1005DFD80);
  sub_10000A6F0(v0, qword_1005DFD80);
  sub_10001DF0C(&qword_1005AF060, &qword_1005AF058, &unk_1004D0250);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8BFC()
{
  v0 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10004F154(v0, qword_1005DFD98);
  sub_10000A6F0(v0, qword_1005DFD98);
  sub_10001DF0C(&qword_1005AF050, &qword_1005AF048, &qword_1004D06F0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8CB8()
{
  v0 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10004F154(v0, qword_1005DFDB0);
  sub_10000A6F0(v0, qword_1005DFDB0);
  sub_10001DF0C(&qword_1005AF030, &qword_1005AF028, &qword_1004D0238);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8D70()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005DFDC8);
  sub_10000A6F0(v0, qword_1005DFDC8);
  sub_10001DF0C(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8E24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001B7C98();
}

uint64_t sub_1001B8E40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001B6CE8();
}

uint64_t sub_1001B8E5C()
{
  v0 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10004F154(v0, qword_1005DFDE0);
  sub_10000A6F0(v0, qword_1005DFDE0);
  sub_10001DF0C(&qword_1005AF0E0, &qword_1005AF0B8, &qword_1004D5850);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8F1C()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005DFDF8);
  sub_10000A6F0(v0, qword_1005DFDF8);
  sub_10001DF0C(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B8FDC()
{
  v0 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10004F154(v0, qword_1005DFE10);
  sub_10000A6F0(v0, qword_1005DFE10);
  sub_10001DF0C(&qword_1005AF050, &qword_1005AF048, &qword_1004D06F0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B909C()
{
  v0 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10004F154(v0, qword_1005DFE28);
  sub_10000A6F0(v0, qword_1005DFE28);
  sub_10001DF0C(&qword_1005AF040, &qword_1005AF038, &unk_1004D0240);
  return ExpressionType.init(_:)();
}

uint64_t sub_1001B915C()
{
  v0 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10004F154(v0, qword_1005DFE40);
  sub_10000A6F0(v0, qword_1005DFE40);
  sub_10001DF0C(&qword_1005AF050, &qword_1005AF048, &qword_1004D06F0);
  return ExpressionType.init(_:)();
}

unint64_t sub_1001B921C()
{
  result = qword_1005AF0C0;
  if (!qword_1005AF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF0C0);
  }

  return result;
}

uint64_t sub_1001B9270()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v7 >> 60 == 15)
  {
    v8 = static Data.random(bytes:)();
    v10 = v9;
    v12[0] = v8;
    v12[1] = v9;
    (*(v2 + 104))(v5, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v13 = v8;
    sub_100005F6C(v8, v10);
    sub_1000CA210();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v5, v1);
    v11 = v13;
    sub_1000049D0(v13, v10);
    return v11;
  }

  return result;
}

uint64_t sub_1001B9498(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudStorageDatabase();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B94DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1001B9588(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1001B96B0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFE80);
  v1 = sub_10000A6F0(v0, qword_1005DFE80);
  if (qword_1005A8078 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFE98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001B9778()
{
  v1[2] = v0;
  v2 = type metadata accessor for IdentityLossResolutionMode();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001B98A0, 0, 0);
}

uint64_t sub_1001B98A0()
{
  v1 = v0[2];
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000013;
  *(v1 + 120) = 0x80000001004D0310;
  if (qword_1005A85D0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_10000A6F0(v3, qword_1005E0D68);
  v0[10] = v5;
  v6 = *(v4 + 16);
  v0[11] = v6;
  v0[12] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = type metadata accessor for CloudStorageDatabase();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1001B99F4;
  v11 = v0[9];

  return sub_1001B5A34(v11, 0);
}

uint64_t sub_1001B99F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v11 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = sub_1001BA230;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = type metadata accessor for CloudStorageStore(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    *(v4 + 128) = swift_allocObject();
    v6 = sub_1001B9B30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001B9B30()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  swift_defaultActor_initialize();
  strcpy((v2 + 120), "CloudStorage");
  *(v2 + 133) = 0;
  *(v2 + 134) = -5120;
  type metadata accessor for CloudStorageStore.State(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + OBJC_IVAR____TtC13findmylocated17CloudStorageStore_stateContinuations) = _swiftEmptyDictionarySingleton;
  *(v2 + 112) = v1;

  return _swift_task_switch(sub_1001B9BFC, 0, 0);
}

uint64_t sub_1001B9BFC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  *(v0[2] + 128) = v0[16];
  v0[17] = type metadata accessor for CloudKitStorage();
  v2(v4, v3, v5);
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1001B9CD4;

  return daemon.getter();
}

uint64_t sub_1001B9CD4(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1001B9DD4, 0, 0);
}

uint64_t sub_1001B9DD4()
{
  v1 = v0[19];
  v2 = v0[4];
  v3 = v0[2];
  v20 = v0[3];
  v21 = v0[5];
  type metadata accessor for Daemon();
  sub_1001C2BFC(&qword_1005AF270, 255, &type metadata accessor for Daemon);
  v4 = ActorDaemon.bundleIdentifier.getter();
  v22 = v5;
  v23 = v4;

  v6 = *(v3 + 128);
  v7 = sub_1001C2BFC(&qword_1005AF278, 255, type metadata accessor for CloudStorageStore);
  sub_10004B564(&qword_1005AF280, &qword_1004D0498);
  v8 = type metadata accessor for CloudKitCoordinator.Database();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004C2310;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, enum case for CloudKitCoordinator.Database.private(_:), v8);
  v14(v13 + v10, enum case for CloudKitCoordinator.Database.shared(_:), v8);
  (*(v2 + 104))(v21, enum case for IdentityLossResolutionMode.legacy(_:), v20);
  v15 = async function pointer to CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)[1];

  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = sub_1001BA080;
  v17 = v0[17];
  v18 = v0[8];
  v25 = v0[5];

  return CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(v18, 0xD00000000000001ALL, 0x80000001004E4D40, v23, v22, v6, v7, v12);
}

uint64_t sub_1001BA080(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1001BA2F0;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_1001BA1A8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001BA1A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  *(v0[2] + 136) = v0[22];

  v4 = v0[1];
  v5 = v0[2];

  return v4(v5);
}

uint64_t sub_1001BA230()
{
  v1 = *(v0[2] + 120);

  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = v0[2];
  type metadata accessor for CloudStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001BA2F0()
{
  v1 = v0[2];
  v2 = *(v1 + 120);

  v3 = *(v1 + 128);

  v4 = v0[21];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v8 = v0[2];
  type metadata accessor for CloudStorageService();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001BA3D8()
{
  v1 = objc_allocWithZone(CKContainerID);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithContainerIdentifier:v2 environment:1];
  v0[20] = v3;

  v4 = [objc_allocWithZone(CKContainer) initWithContainerID:v3];
  v0[21] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001BA570;
  v5 = swift_continuation_init();
  v0[17] = sub_10004B564(&qword_1005AF268, &qword_1004D0488);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001BA774;
  v0[13] = &unk_100596948;
  v0[14] = v5;
  [v4 fetchUserRecordIDWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001BA570()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_1001BA6FC;
  }

  else
  {
    v5 = sub_1001BA690;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001BA690()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001BA6FC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_1001BA774(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100011AEC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001BA84C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = *(type metadata accessor for FenceRecord() - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v8 = *(v7 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001BA9D8, 0, 0);
}

uint64_t sub_1001BA9D8()
{
  v0[34] = *(v0[22] + 128);
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_1001BAA70;

  return sub_1000078C8();
}

uint64_t sub_1001BAA70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[32];
    v7 = v4[33];
    v10 = v4[28];
    v9 = v4[29];
    v12 = v4[26];
    v11 = v4[27];
    v13 = v4[25];
    v14 = v4[23];

    v15 = *(v6 + 8);

    return v15();
  }

  else
  {
    v4[36] = a1;

    return _swift_task_switch(sub_1001BAC1C, 0, 0);
  }
}

uint64_t sub_1001BAC1C()
{
  v1 = v0[36];
  v2 = v0[22];
  v0[37] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  return _swift_task_switch(sub_1001BAC94, v2, 0);
}

uint64_t sub_1001BAC94()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[24];
    sub_1002394E8(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v59 = *(v4 + 72);
    do
    {
      v6 = v0[33];
      v8 = v0[29];
      v7 = v0[30];
      sub_1001C2B80(v5, v8);
      (*(v3 + 16))(v6, v8, v7);
      sub_1001769EC(v8);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1002394E8(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[33];
      v12 = v0[30];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v59;
      --v2;
    }

    while (v2);
  }

  v13 = v0[37];

  v14 = v0[21];
  v0[38] = sub_10023F15C(_swiftEmptyArrayStorage);

  v19 = 0;
  v20 = *(v14 + 16);
  v21 = v14 - 520;
  v22 = _swiftEmptyArrayStorage;
LABEL_7:
  v23 = (v21 + 584 * v19);
  while (v20 != v19)
  {
    if (v19 >= v20)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(isUniquelyReferenced_nonNull_native, v16, v17, v18);
    }

    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_33;
    }

    v25 = v23[74];
    v23 += 73;
    ++v19;
    if (v25)
    {
      v26 = *v23;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1001FC900(0, *(v22 + 2) + 1, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1001FC900((v27 > 1), v28 + 1, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
      }

      *(v22 + 2) = v28 + 1;
      v29 = &v22[16 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v19 = v24;
      goto LABEL_7;
    }
  }

  v58 = *(v22 + 2);
  v60 = v22;
  if (v58)
  {
    v30 = v22;
    v31 = 0;
    v32 = v0[31];
    v33 = (v32 + 48);
    v57 = v32;
    v34 = (v32 + 32);
    v35 = (v30 + 40);
    v36 = _swiftEmptyArrayStorage;
    while (v31 < *(v60 + 2))
    {
      v37 = v0[30];
      v38 = v0[23];
      v40 = *(v35 - 1);
      v39 = *v35;

      UUID.init(uuidString:)();

      if ((*v33)(v38, 1, v37) == 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100002CE0(v0[23], &qword_1005A96E0, &qword_1004C2A80);
      }

      else
      {
        v41 = *v34;
        (*v34)(v0[32], v0[23], v0[30]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1001FD1A0(0, *(v36 + 2) + 1, 1, v36);
        }

        v43 = *(v36 + 2);
        v42 = *(v36 + 3);
        if (v43 >= v42 >> 1)
        {
          v36 = sub_1001FD1A0(v42 > 1, v43 + 1, 1, v36);
        }

        v44 = v0[32];
        v45 = v0[30];
        *(v36 + 2) = v43 + 1;
        isUniquelyReferenced_nonNull_native = v41(&v36[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v43], v44, v45);
      }

      ++v31;
      v35 += 2;
      if (v58 == v31)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_29:

  v0[39] = sub_10023F15C(v36);

  v46 = objc_allocWithZone(CKContainerID);
  v47 = String._bridgeToObjectiveC()();
  v48 = [v46 initWithContainerIdentifier:v47 environment:1];
  v0[40] = v48;

  v49 = [objc_allocWithZone(CKContainer) initWithContainerID:v48];
  v0[41] = v49;
  v50 = [objc_opt_self() predicateWithValue:1];
  v0[42] = v50;
  sub_1000545A4(0, &qword_1005AF248, CKQuery_ptr);
  v51 = v50;
  v52._countAndFlagsBits = 0x65636E6546;
  v52._object = 0xE500000000000000;
  isa = CKQuery.init(recordType:predicate:)(v52, v51).super.isa;
  v0[43] = isa;
  v0[44] = [v49 privateCloudDatabase];
  v54 = async function pointer to CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)[1];
  v55 = swift_task_alloc();
  v0[45] = v55;
  *v55 = v0;
  v55[1] = sub_1001BB20C;
  isUniquelyReferenced_nonNull_native = isa;
  v16 = 0;
  v17 = 0;
  v18 = CKQueryOperationMaximumResults;

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(isUniquelyReferenced_nonNull_native, v16, v17, v18);
}

uint64_t sub_1001BB20C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 360);
  v10 = *v3;
  *(v4 + 368) = a1;
  *(v4 + 376) = a2;
  *(v4 + 384) = v2;

  if (v2)
  {
    v6 = *(v4 + 176);
    v7 = sub_1001BD9EC;
  }

  else
  {
    v8 = *(v4 + 176);

    v7 = sub_1001BB338;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001BB338()
{
  v59 = v0;
  v1 = *(v0 + 368);
  v2 = *(v1 + 16);
  *(v0 + 392) = v2;

  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = *(v0 + 384);
  *(v0 + 400) = 0;
  if (!*(v1 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = *(v1 + 32);
  *(v0 + 408) = v4;
  v2 = *(v1 + 40);
  *(v0 + 416) = v2;
  if (*(v1 + 48))
  {
LABEL_4:
    v56 = *(v0 + 376);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    sub_1001C2BE4(v2, 1);
    sub_1001C2BE4(v2, 1);
    v11 = v4;

    *(v0 + 144) = v2;
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    swift_willThrowTypedImpl();

    sub_1001C2BF0(v2, 1);

LABEL_7:
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);
    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v26 = *(v0 + 208);
    v25 = *(v0 + 216);
    v27 = *(v0 + 200);
    v28 = *(v0 + 184);

    v29 = *(v0 + 8);

    return v29();
  }

  v12 = *(v0 + 224);
  sub_1001C2BE4(v2, 0);
  sub_1001C2BE4(v2, 0);
  sub_1001C2BE4(v2, 0);
  v13 = v4;
  sub_1001A2D68(v2, v12);
  if (v3)
  {
    v14 = *(v0 + 368);
    v15 = *(v0 + 376);
    v17 = *(v0 + 336);
    v16 = *(v0 + 344);
    v18 = *(v0 + 320);
    v19 = *(v0 + 328);
    v20 = *(v0 + 304);
    v57 = *(v0 + 312);
    swift_bridgeObjectRelease_n();

    sub_1001C2BF0(v2, 0);
    sub_1001C2BF0(v2, 0);

    goto LABEL_7;
  }

  if (sub_10021B5B8(*(v0 + 224), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 224), *(v0 + 312)))
  {
LABEL_12:
    if (qword_1005A8070 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 216);
    v31 = *(v0 + 224);
    v33 = type metadata accessor for Logger();
    sub_10000A6F0(v33, qword_1005DFE80);
    sub_1001C2B80(v31, v32);
    v3 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v3, v34);
    v1 = *(v0 + 216);
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58 = v37;
      *v36 = 136642819;
      v38 = sub_1001A42B8();
      v40 = v39;
      sub_1001769EC(v1);
      v41 = sub_10000D01C(v38, v40, &v58);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v3, v34, "Found new CKFence in private db: %{sensitive}s", v36, 0xCu);
      sub_100004984(v37);

LABEL_29:
      sub_10004B564(&qword_1005AF250, &qword_1004D0478);
      v52 = swift_allocObject();
      *(v0 + 424) = v52;
      *(v52 + 16) = xmmword_1004D02F0;
      *(v52 + 32) = v2;
      v53 = v2;
      v54 = swift_task_alloc();
      *(v0 + 432) = v54;
      *v54 = v0;
      v54[1] = sub_1001BBA14;
      v55 = *(v0 + 272);

      return sub_1001C2F40(_swiftEmptyArrayStorage, v52, 0);
    }

LABEL_28:

    sub_1001769EC(v1);
    goto LABEL_29;
  }

  sub_1001C2BF0(v2, 0);
  v2 = *(v0 + 392);
  v42 = *(v0 + 224);
  v3 = (*(v0 + 400) + 1);
  sub_1001C2BF0(*(v0 + 416), 0);
  sub_1001769EC(v42);
  if (v3 != v2)
  {
    v47 = *(v0 + 400) + 1;
    *(v0 + 400) = v47;
    v1 = *(v0 + 368);
    if (v47 < *(v1 + 16))
    {
      while (1)
      {
        v48 = v1 + 24 * v47;
        v4 = *(v48 + 32);
        *(v0 + 408) = v4;
        v2 = *(v48 + 40);
        *(v0 + 416) = v2;
        if (*(v48 + 48))
        {
          goto LABEL_4;
        }

        v49 = *(v0 + 224);
        sub_1001C2BE4(v2, 0);
        sub_1001C2BE4(v2, 0);
        sub_1001C2BE4(v2, 0);
        v50 = v4;
        sub_1001A2D68(v2, v49);
        if (sub_10021B5B8(*(v0 + 224), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 224), *(v0 + 312)))
        {
          goto LABEL_12;
        }

        sub_1001C2BF0(v2, 0);
        v2 = *(v0 + 392);
        v51 = *(v0 + 224);
        v3 = (*(v0 + 400) + 1);
        sub_1001C2BF0(*(v0 + 416), 0);
        sub_1001769EC(v51);
        if (v3 == v2)
        {
          goto LABEL_17;
        }

        v47 = *(v0 + 400) + 1;
        *(v0 + 400) = v47;
        v1 = *(v0 + 368);
        if (v47 >= *(v1 + 16))
        {
          goto LABEL_27;
        }
      }
    }

    goto LABEL_27;
  }

LABEL_17:
  v43 = *(v0 + 368);
LABEL_18:
  v44 = *(v0 + 328);

  v45 = [v44 sharedCloudDatabase];
  *(v0 + 448) = v45;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_1001BC280;
  v46 = swift_continuation_init();
  *(v0 + 136) = sub_10004B564(&qword_1005AF258, &qword_1004D0480);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001BDF3C;
  *(v0 + 104) = &unk_100596920;
  *(v0 + 112) = v46;
  [v45 fetchAllRecordZonesWithCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001BBA14()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  v2[55] = v0;

  v5 = v2[53];
  if (v0)
  {
    v6 = v2[46];
    v8 = v2[38];
    v7 = v2[39];
    v9 = v2[22];

    v10 = sub_1001BDAE4;
    v11 = v9;
  }

  else
  {
    v12 = v2[22];

    v10 = sub_1001BBB84;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1001BBB84()
{
  v69 = v0;
  v1 = *(v0 + 408);
  sub_1001C2BF0(*(v0 + 416), 0);

  v2 = *(v0 + 440);
  v3 = *(v0 + 392);
  v4 = *(v0 + 224);
  v5 = *(v0 + 400) + 1;
  sub_1001C2BF0(*(v0 + 416), 0);
  sub_1001769EC(v4);
  if (v5 == v3)
  {
LABEL_2:
    v6 = *(v0 + 368);
    v7 = *(v0 + 328);

    v8 = [v7 sharedCloudDatabase];
    *(v0 + 448) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_1001BC280;
    v9 = swift_continuation_init();
    *(v0 + 136) = sub_10004B564(&qword_1005AF258, &qword_1004D0480);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001BDF3C;
    *(v0 + 104) = &unk_100596920;
    *(v0 + 112) = v9;
    [v8 fetchAllRecordZonesWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  v10 = *(v0 + 400) + 1;
  *(v0 + 400) = v10;
  v11 = *(v0 + 368);
  if (v10 >= *(v11 + 16))
  {
    goto LABEL_30;
  }

  v12 = v11 + 24 * v10;
  v13 = *(v12 + 32);
  *(v0 + 408) = v13;
  v3 = *(v12 + 40);
  *(v0 + 416) = v3;
  if (*(v12 + 48))
  {
LABEL_7:
    v66 = *(v0 + 376);
    v15 = *(v0 + 336);
    v14 = *(v0 + 344);
    v16 = *(v0 + 320);
    v17 = *(v0 + 328);
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    sub_1001C2BE4(v3, 1);
    sub_1001C2BE4(v3, 1);
    v20 = v13;

    *(v0 + 144) = v3;
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    swift_willThrowTypedImpl();

    sub_1001C2BF0(v3, 1);

LABEL_10:
    v31 = *(v0 + 256);
    v30 = *(v0 + 264);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v35 = *(v0 + 208);
    v34 = *(v0 + 216);
    v36 = *(v0 + 200);
    v37 = *(v0 + 184);

    v38 = *(v0 + 8);

    return v38();
  }

  v21 = *(v0 + 224);
  sub_1001C2BE4(v3, 0);
  sub_1001C2BE4(v3, 0);
  sub_1001C2BE4(v3, 0);
  v22 = v13;
  sub_1001A2D68(v3, v21);
  if (v2)
  {
    v23 = *(v0 + 368);
    v24 = *(v0 + 376);
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v27 = *(v0 + 320);
    v28 = *(v0 + 328);
    v29 = *(v0 + 304);
    v67 = *(v0 + 312);
    swift_bridgeObjectRelease_n();

    sub_1001C2BF0(v3, 0);
    sub_1001C2BF0(v3, 0);

    goto LABEL_10;
  }

  if ((sub_10021B5B8(*(v0 + 224), *(v0 + 304)) & 1) != 0 || (sub_10021B5B8(*(v0 + 224), *(v0 + 312)) & 1) == 0)
  {

    sub_1001C2BF0(v3, 0);
    v3 = *(v0 + 392);
    v52 = *(v0 + 224);
    v53 = *(v0 + 400) + 1;
    sub_1001C2BF0(*(v0 + 416), 0);
    sub_1001769EC(v52);
    if (v53 == v3)
    {
      goto LABEL_2;
    }

    while (1)
    {
      v56 = *(v0 + 400) + 1;
      *(v0 + 400) = v56;
      v57 = *(v0 + 368);
      if (v56 >= *(v57 + 16))
      {
        break;
      }

      v58 = v57 + 24 * v56;
      v13 = *(v58 + 32);
      *(v0 + 408) = v13;
      v3 = *(v58 + 40);
      *(v0 + 416) = v3;
      if (*(v58 + 48))
      {
        goto LABEL_7;
      }

      v59 = *(v0 + 224);
      sub_1001C2BE4(v3, 0);
      sub_1001C2BE4(v3, 0);
      sub_1001C2BE4(v3, 0);
      v60 = v13;
      sub_1001A2D68(v3, v59);
      if (sub_10021B5B8(*(v0 + 224), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 224), *(v0 + 312)))
      {
        goto LABEL_15;
      }

      sub_1001C2BF0(v3, 0);
      v3 = *(v0 + 392);
      v54 = *(v0 + 224);
      v55 = *(v0 + 400) + 1;
      sub_1001C2BF0(*(v0 + 416), 0);
      sub_1001769EC(v54);
      if (v55 == v3)
      {
        goto LABEL_2;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_15:
  if (qword_1005A8070 != -1)
  {
LABEL_31:
    swift_once();
  }

  v40 = *(v0 + 216);
  v39 = *(v0 + 224);
  v41 = type metadata accessor for Logger();
  sub_10000A6F0(v41, qword_1005DFE80);
  sub_1001C2B80(v39, v40);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 216);
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v68 = v47;
    *v46 = 136642819;
    v48 = sub_1001A42B8();
    v50 = v49;
    sub_1001769EC(v45);
    v51 = sub_10000D01C(v48, v50, &v68);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v42, v43, "Found new CKFence in private db: %{sensitive}s", v46, 0xCu);
    sub_100004984(v47);
  }

  else
  {

    sub_1001769EC(v45);
  }

  sub_10004B564(&qword_1005AF250, &qword_1004D0478);
  v61 = swift_allocObject();
  *(v0 + 424) = v61;
  *(v61 + 16) = xmmword_1004D02F0;
  *(v61 + 32) = v3;
  v62 = v3;
  v63 = swift_task_alloc();
  *(v0 + 432) = v63;
  *v63 = v0;
  v63[1] = sub_1001BBA14;
  v64 = *(v0 + 272);

  return sub_1001C2F40(_swiftEmptyArrayStorage, v61, 0);
}

uint64_t sub_1001BC280()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 456) = v3;
  if (v3)
  {
    v4 = v1[38];
    v5 = v1[39];
    v6 = v1[22];

    v7 = sub_1001BDBFC;
    v8 = v6;
  }

  else
  {
    v8 = v1[22];
    v7 = sub_1001BC3B0;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1001BC3B0()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 152);
  *(v0 + 464) = v2;

  if (v2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 472) = v5;
  v6 = *(v0 + 464);
  if (v5)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v5, v6, v3, v4);
      }

      v7 = *(v6 + 4);
    }

    v8 = v7;
    *(v0 + 480) = v7;
    *(v0 + 488) = 1;
    *(v0 + 496) = [*(v0 + 328) sharedCloudDatabase];
    v9 = [v8 zoneID];
    *(v0 + 504) = v9;
    v10 = async function pointer to CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)[1];
    v11 = swift_task_alloc();
    *(v0 + 512) = v11;
    *v11 = v0;
    v11[1] = sub_1001BC620;
    v5 = *(v0 + 344);
    v6 = v9;
    v3 = 0;
    v4 = 10;

    return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v5, v6, v3, v4);
  }

  v12 = *(v0 + 368);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 320);
  v16 = *(v0 + 328);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  v23 = *(v0 + 376);
  v24 = *(v0 + 232);
  v25 = *(v0 + 224);
  v26 = *(v0 + 216);
  v27 = *(v0 + 208);
  v28 = *(v0 + 200);
  v29 = *(v0 + 184);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1001BC620(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 512);
  v7 = *v3;
  v5[65] = a1;
  v5[66] = a2;
  v5[67] = v2;

  v8 = v4[63];
  v9 = v4[62];
  if (v2)
  {
    v10 = v5[58];
    v12 = v5[38];
    v11 = v5[39];
    v13 = v5[22];

    v14 = sub_1001BDCFC;
    v15 = v13;
  }

  else
  {
    v16 = v5[22];

    v14 = sub_1001BC7BC;
    v15 = v16;
  }

  return _swift_task_switch(v14, v15, 0);
}

uint64_t sub_1001BC7BC()
{
  v92 = v0;
  i = *(v0 + 520);
  v2 = *(i + 16);
  *(v0 + 544) = v2;

  if (v2)
  {
    v3 = *(v0 + 536);
    *(v0 + 552) = 0;
    if (*(i + 16))
    {
      v4 = *(i + 32);
      *(v0 + 560) = v4;
      v2 = *(i + 40);
      *(v0 + 568) = v2;
      if (*(i + 48))
      {
LABEL_4:
        v5 = *(v0 + 480);
        v6 = *(v0 + 464);
        v85 = *(v0 + 528);
        v88 = *(v0 + 376);
        v7 = *(v0 + 344);
        v76 = *(v0 + 368);
        v79 = *(v0 + 336);
        v8 = *(v0 + 328);
        v82 = *(v0 + 320);
        v10 = *(v0 + 304);
        v9 = *(v0 + 312);
        sub_1001C2BE4(v2, 1);
        sub_1001C2BE4(v2, 1);
        v11 = v4;

        *(v0 + 160) = v2;
        sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
        swift_willThrowTypedImpl();

        sub_1001C2BF0(v2, 1);

LABEL_7:
        v21 = *(v0 + 256);
        v20 = *(v0 + 264);
        v23 = *(v0 + 224);
        v22 = *(v0 + 232);
        v25 = *(v0 + 208);
        v24 = *(v0 + 216);
        v26 = *(v0 + 200);
        v27 = *(v0 + 184);

        v28 = *(v0 + 8);
LABEL_17:

        return v28();
      }

      v12 = *(v0 + 208);
      sub_1001C2BE4(v2, 0);
      sub_1001C2BE4(v2, 0);
      sub_1001C2BE4(v2, 0);
      v13 = v4;
      sub_1001A2D68(v2, v12);
      if (v3)
      {
        v14 = *(v0 + 520);
        v15 = *(v0 + 368);
        v86 = *(v0 + 376);
        v89 = *(v0 + 528);
        v16 = *(v0 + 344);
        v77 = *(v0 + 336);
        v17 = *(v0 + 328);
        v80 = *(v0 + 320);
        v83 = *(v0 + 464);
        v19 = *(v0 + 304);
        v18 = *(v0 + 312);

        sub_1001C2BF0(v2, 0);

        sub_1001C2BF0(v2, 0);
        swift_bridgeObjectRelease_n();

        goto LABEL_7;
      }

      if (sub_10021B5B8(*(v0 + 208), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 208), *(v0 + 312)))
      {
LABEL_10:
        if (qword_1005A8070 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_41;
      }

      sub_1001C2BF0(v2, 0);
      v2 = *(v0 + 544);
      v40 = *(v0 + 208);
      v3 = (*(v0 + 552) + 1);
      sub_1001C2BF0(*(v0 + 568), 0);
      sub_1001769EC(v40);
      if (v3 == v2)
      {
LABEL_14:
        v41 = *(v0 + 520);
        goto LABEL_15;
      }

      v64 = *(v0 + 552) + 1;
      *(v0 + 552) = v64;
      for (i = *(v0 + 520); v64 < *(i + 16); i = *(v0 + 520))
      {
        v65 = i + 24 * v64;
        v4 = *(v65 + 32);
        *(v0 + 560) = v4;
        v2 = *(v65 + 40);
        *(v0 + 568) = v2;
        if (*(v65 + 48))
        {
          goto LABEL_4;
        }

        v66 = *(v0 + 208);
        sub_1001C2BE4(v2, 0);
        sub_1001C2BE4(v2, 0);
        sub_1001C2BE4(v2, 0);
        v67 = v4;
        sub_1001A2D68(v2, v66);
        if (sub_10021B5B8(*(v0 + 208), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 208), *(v0 + 312)))
        {
          goto LABEL_10;
        }

        sub_1001C2BF0(v2, 0);
        v2 = *(v0 + 544);
        v68 = *(v0 + 208);
        v3 = (*(v0 + 552) + 1);
        sub_1001C2BF0(*(v0 + 568), 0);
        sub_1001769EC(v68);
        if (v3 == v2)
        {
          goto LABEL_14;
        }

        v64 = *(v0 + 552) + 1;
        *(v0 + 552) = v64;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_15:
  v42 = *(v0 + 528);
  v44 = *(v0 + 480);
  v43 = *(v0 + 488);
  v45 = *(v0 + 472);
  swift_bridgeObjectRelease_n();

  if (v43 == v45)
  {
    v46 = *(v0 + 464);
    v47 = *(v0 + 368);
    v49 = *(v0 + 336);
    v48 = *(v0 + 344);
    v50 = *(v0 + 320);
    v51 = *(v0 + 328);
    v53 = *(v0 + 304);
    v52 = *(v0 + 312);
    v55 = *(v0 + 256);
    v54 = *(v0 + 264);
    v74 = *(v0 + 376);
    v75 = *(v0 + 232);
    v78 = *(v0 + 224);
    v81 = *(v0 + 216);
    v84 = *(v0 + 208);
    v87 = *(v0 + 200);
    v90 = *(v0 + 184);

    v28 = *(v0 + 8);
    goto LABEL_17;
  }

  v2 = *(v0 + 488);
  v57 = *(v0 + 464);
  if ((v57 & 0xC000000000000001) != 0)
  {
    v73 = *(v0 + 488);
    v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v2 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      swift_once();
LABEL_11:
      v30 = *(v0 + 200);
      v29 = *(v0 + 208);
      v31 = type metadata accessor for Logger();
      sub_10000A6F0(v31, qword_1005DFE80);
      sub_1001C2B80(v29, v30);
      v3 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = os_log_type_enabled(v3, v32);
      i = *(v0 + 200);
      if (v33)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v91 = v35;
        *v34 = 136642819;
        v36 = sub_1001A42B8();
        v38 = v37;
        sub_1001769EC(i);
        v39 = sub_10000D01C(v36, v38, &v91);

        *(v34 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v3, v32, "Found new CKFence in shared db: %{sensitive}s", v34, 0xCu);
        sub_100004984(v35);

LABEL_35:
        sub_10004B564(&qword_1005AF250, &qword_1004D0478);
        v69 = swift_allocObject();
        *(v0 + 576) = v69;
        *(v69 + 16) = xmmword_1004D02F0;
        *(v69 + 32) = v2;
        v70 = v2;
        v71 = swift_task_alloc();
        *(v0 + 584) = v71;
        *v71 = v0;
        v71[1] = sub_1001BD000;
        v72 = *(v0 + 272);

        return sub_1001C2F40(_swiftEmptyArrayStorage, v69, 0);
      }

LABEL_34:

      sub_1001769EC(i);
      goto LABEL_35;
    }

    v58 = *(v57 + 8 * v2 + 32);
  }

  v59 = v58;
  *(v0 + 480) = v58;
  *(v0 + 488) = &v2->isa + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 496) = [*(v0 + 328) sharedCloudDatabase];
  v60 = [v59 zoneID];
  *(v0 + 504) = v60;
  v61 = async function pointer to CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)[1];
  v62 = swift_task_alloc();
  *(v0 + 512) = v62;
  *v62 = v0;
  v62[1] = sub_1001BC620;
  v63 = *(v0 + 344);

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v63, v60, 0, 10);
}

uint64_t sub_1001BD000()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  v2[74] = v0;

  v5 = v2[72];
  if (v0)
  {
    v6 = v2[65];
    v7 = v2[58];
    v9 = v2[38];
    v8 = v2[39];
    v10 = v2[22];

    v11 = sub_1001BDDF0;
    v12 = v10;
  }

  else
  {
    v13 = v2[22];

    v11 = sub_1001BD180;
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1001BD180()
{
  v101 = v0;
  v1 = *(v0 + 560);
  sub_1001C2BF0(*(v0 + 568), 0);

  v2 = *(v0 + 592);
  v3 = *(v0 + 544);
  v4 = *(v0 + 208);
  v5 = *(v0 + 552) + 1;
  sub_1001C2BF0(*(v0 + 568), 0);
  sub_1001769EC(v4);
  if (v5 == v3)
  {
LABEL_2:
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v9 = *(v0 + 480);
    v8 = *(v0 + 488);
    v10 = *(v0 + 472);
    swift_bridgeObjectRelease_n();

    if (v8 == v10)
    {
      v11 = *(v0 + 464);
      v12 = *(v0 + 368);
      v14 = *(v0 + 336);
      v13 = *(v0 + 344);
      v15 = *(v0 + 320);
      v16 = *(v0 + 328);
      v18 = *(v0 + 304);
      v17 = *(v0 + 312);
      v20 = *(v0 + 256);
      v19 = *(v0 + 264);
      v83 = *(v0 + 376);
      v84 = *(v0 + 232);
      v85 = *(v0 + 224);
      v88 = *(v0 + 216);
      v91 = *(v0 + 208);
      v94 = *(v0 + 200);
      v97 = *(v0 + 184);

      v21 = *(v0 + 8);
LABEL_17:

      return v21();
    }

    v3 = *(v0 + 488);
    v33 = *(v0 + 464);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (v3 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v34 = *(v33 + 8 * v3 + 32);
LABEL_10:
      v35 = v34;
      *(v0 + 480) = v34;
      *(v0 + 488) = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        *(v0 + 496) = [*(v0 + 328) sharedCloudDatabase];
        v36 = [v35 zoneID];
        *(v0 + 504) = v36;
        v37 = async function pointer to CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)[1];
        v38 = swift_task_alloc();
        *(v0 + 512) = v38;
        *v38 = v0;
        v38[1] = sub_1001BC620;
        v39 = *(v0 + 344);

        return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v39, v36, 0, 10);
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  v22 = *(v0 + 552) + 1;
  *(v0 + 552) = v22;
  v23 = *(v0 + 520);
  if (v22 >= *(v23 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v24 = v23 + 24 * v22;
  v25 = *(v24 + 32);
  *(v0 + 560) = v25;
  v3 = *(v24 + 40);
  *(v0 + 568) = v3;
  if (*(v24 + 48))
  {
LABEL_6:
    v26 = *(v0 + 480);
    v27 = *(v0 + 464);
    v95 = *(v0 + 528);
    v98 = *(v0 + 376);
    v28 = *(v0 + 344);
    v86 = *(v0 + 368);
    v89 = *(v0 + 336);
    v29 = *(v0 + 328);
    v92 = *(v0 + 320);
    v31 = *(v0 + 304);
    v30 = *(v0 + 312);
    sub_1001C2BE4(v3, 1);
    sub_1001C2BE4(v3, 1);
    v32 = v25;

    *(v0 + 160) = v3;
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    swift_willThrowTypedImpl();

    sub_1001C2BF0(v3, 1);

LABEL_16:
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v51 = *(v0 + 224);
    v50 = *(v0 + 232);
    v53 = *(v0 + 208);
    v52 = *(v0 + 216);
    v54 = *(v0 + 200);
    v55 = *(v0 + 184);

    v21 = *(v0 + 8);
    goto LABEL_17;
  }

  v40 = *(v0 + 208);
  sub_1001C2BE4(v3, 0);
  sub_1001C2BE4(v3, 0);
  sub_1001C2BE4(v3, 0);
  v41 = v25;
  sub_1001A2D68(v3, v40);
  if (v2)
  {
    v42 = *(v0 + 520);
    v43 = *(v0 + 368);
    v96 = *(v0 + 376);
    v99 = *(v0 + 528);
    v44 = *(v0 + 344);
    v87 = *(v0 + 336);
    v45 = *(v0 + 328);
    v90 = *(v0 + 320);
    v93 = *(v0 + 464);
    v47 = *(v0 + 304);
    v46 = *(v0 + 312);

    sub_1001C2BF0(v3, 0);

    sub_1001C2BF0(v3, 0);
    swift_bridgeObjectRelease_n();

    goto LABEL_16;
  }

  if ((sub_10021B5B8(*(v0 + 208), *(v0 + 304)) & 1) != 0 || (sub_10021B5B8(*(v0 + 208), *(v0 + 312)) & 1) == 0)
  {

    sub_1001C2BF0(v3, 0);
    v3 = *(v0 + 544);
    v69 = *(v0 + 208);
    v70 = *(v0 + 552) + 1;
    sub_1001C2BF0(*(v0 + 568), 0);
    sub_1001769EC(v69);
    if (v70 == v3)
    {
      goto LABEL_2;
    }

    while (1)
    {
      v73 = *(v0 + 552) + 1;
      *(v0 + 552) = v73;
      v74 = *(v0 + 520);
      if (v73 >= *(v74 + 16))
      {
        goto LABEL_37;
      }

      v75 = v74 + 24 * v73;
      v25 = *(v75 + 32);
      *(v0 + 560) = v25;
      v3 = *(v75 + 40);
      *(v0 + 568) = v3;
      if (*(v75 + 48))
      {
        goto LABEL_6;
      }

      v76 = *(v0 + 208);
      sub_1001C2BE4(v3, 0);
      sub_1001C2BE4(v3, 0);
      sub_1001C2BE4(v3, 0);
      v77 = v25;
      sub_1001A2D68(v3, v76);
      if (sub_10021B5B8(*(v0 + 208), *(v0 + 304)) & 1) == 0 && (sub_10021B5B8(*(v0 + 208), *(v0 + 312)))
      {
        break;
      }

      sub_1001C2BF0(v3, 0);
      v3 = *(v0 + 544);
      v71 = *(v0 + 208);
      v72 = *(v0 + 552) + 1;
      sub_1001C2BF0(*(v0 + 568), 0);
      sub_1001769EC(v71);
      if (v72 == v3)
      {
        goto LABEL_2;
      }
    }
  }

  if (qword_1005A8070 != -1)
  {
LABEL_41:
    swift_once();
  }

  v57 = *(v0 + 200);
  v56 = *(v0 + 208);
  v58 = type metadata accessor for Logger();
  sub_10000A6F0(v58, qword_1005DFE80);
  sub_1001C2B80(v56, v57);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v0 + 200);
  if (v61)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v100 = v64;
    *v63 = 136642819;
    v65 = sub_1001A42B8();
    v67 = v66;
    sub_1001769EC(v62);
    v68 = sub_10000D01C(v65, v67, &v100);

    *(v63 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v59, v60, "Found new CKFence in shared db: %{sensitive}s", v63, 0xCu);
    sub_100004984(v64);
  }

  else
  {

    sub_1001769EC(v62);
  }

  sub_10004B564(&qword_1005AF250, &qword_1004D0478);
  v78 = swift_allocObject();
  *(v0 + 576) = v78;
  *(v78 + 16) = xmmword_1004D02F0;
  *(v78 + 32) = v3;
  v79 = v3;
  v80 = swift_task_alloc();
  *(v0 + 584) = v80;
  *v80 = v0;
  v80[1] = sub_1001BD000;
  v81 = *(v0 + 272);

  return sub_1001C2F40(_swiftEmptyArrayStorage, v78, 0);
}

uint64_t sub_1001BD9EC()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);

  v7 = *(v0 + 384);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);
  v15 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001BDAE4()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 336);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 224);

  sub_1001C2BF0(v1, 0);
  sub_1001C2BF0(v1, 0);

  sub_1001769EC(v8);
  v9 = *(v0 + 440);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  v16 = *(v0 + 200);
  v17 = *(v0 + 184);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001BDBFC()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[46];
  v4 = v0[47];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  swift_willThrow();

  v9 = v0[57];
  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[28];
  v12 = v0[29];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];
  v17 = v0[23];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001BDCFC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 328);

  v7 = *(v0 + 536);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);
  v15 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001BDDF0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 520);
  v4 = *(v0 + 480);
  v5 = *(v0 + 368);
  v21 = *(v0 + 528);
  v22 = *(v0 + 376);
  v6 = *(v0 + 336);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 208);

  sub_1001C2BF0(v1, 0);
  sub_1001C2BF0(v1, 0);

  sub_1001769EC(v9);
  v10 = *(v0 + 592);
  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v18 = *(v0 + 184);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1001BDF3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100011AEC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000545A4(0, &qword_1005AF260, CKRecordZone_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1001BE04C()
{
  v1 = *(*(v0 + 16) + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable() + 1);
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable() + async function pointer to dispatch thunk of CloudKitStorage.isManateeAvailable());
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1001BE0F4;

  return v5();
}

uint64_t sub_1001BE0F4(char a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001BE20C, v3, 0);
}

uint64_t sub_1001BE20C()
{
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFE80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Current isManateeAvailable: %{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 32);

  return v6(v7);
}

uint64_t sub_1001BE334()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001BE37C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CloudStorageService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1001BE424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloudStorageService();
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1001BE4E8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CloudStorageService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1001BE590(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for CloudStorageService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1001BE638()
{
  *(v1 + 16) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1001BE6CC;

  return daemon.getter();
}

uint64_t sub_1001BE6CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_1001C2BFC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1001C2BFC(&qword_1005AD510, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_1001BE8B0;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_1001BE8B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_10013A3F0, v7, 0);
  }

  else
  {
    v8 = v4[4];

    v9 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
    v12 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v10 = swift_task_alloc();
    v4[8] = v10;
    *v10 = v6;
    v10[1] = sub_1001BEA54;

    return v12();
  }
}

uint64_t sub_1001BEA54()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1001BEB64, v2, 0);
}

uint64_t sub_1001BEB64()
{
  v1 = *(*(v0 + 16) + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.startup() + 1);
  v5 = (&async function pointer to dispatch thunk of CloudKitStorage.startup() + async function pointer to dispatch thunk of CloudKitStorage.startup());
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1001BEC0C;

  return v5();
}

uint64_t sub_1001BEC0C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1001BED38;
  }

  else
  {
    v6 = sub_100016108;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001BED38()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001BED9C()
{
  v1 = *v0;
  type metadata accessor for CloudStorageService();
  sub_1001C2BFC(&qword_1005AD568, v2, type metadata accessor for CloudStorageService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1001BEE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for CloudKitCoordinator.Database();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005AE720, &qword_1004CA2F0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001BEFC8, 0, 0);
}

uint64_t sub_1001BEFC8()
{
  v1 = v0[4];
  v0[12] = *(v0[6] + 136);
  v0[13] = sub_1000545A4(0, &qword_1005AE728, CKRecordZoneID_ptr);
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  v0[14] = CKCurrentUserDefaultName;
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0x2D65636E6546;
  v5._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7 = [(objc_class *)isa zoneName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v0[15] = v10;
  v11 = *(&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + 1);
  v14 = (&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:));
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1001BF148;

  return v14(v8, v10);
}

uint64_t sub_1001BF148()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1001C0B60;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1001BF264;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001BF264()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[4];
  v4._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._countAndFlagsBits = 0x2D65636E6546;
  v7._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v5).super.isa;
  v9 = [(objc_class *)isa zoneName];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v0[18] = v12;
  v13 = *(&async function pointer to dispatch thunk of CloudKitStorage.isShared(zoneName:) + 1);
  v17 = (&async function pointer to dispatch thunk of CloudKitStorage.isShared(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.isShared(zoneName:));
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_1001BF3B0;
  v15 = v0[12];

  return v17(v10, v12);
}

uint64_t sub_1001BF3B0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1001C0BE8;
  }

  else
  {
    v8 = *(v4 + 144);

    *(v4 + 360) = a1 & 1;
    v7 = sub_1001BF4E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001BF4E4()
{
  if (*(v0 + 360))
  {
    v1 = *(v0 + 40);
    v2 = Handle.isPhoneNumber.getter();
    v3 = Handle.identifier.getter();
    v5 = v4;
    *(v0 + 192) = v4;
    if (v2)
    {
      v6 = *(&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:) + 1);
      v29 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:));
      v7 = swift_task_alloc();
      *(v0 + 200) = v7;
      *v7 = v0;
      v8 = sub_1001BF950;
    }

    else
    {
      v26 = *(&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:) + 1);
      v29 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:));
      v7 = swift_task_alloc();
      *(v0 + 216) = v7;
      *v7 = v0;
      v8 = sub_1001BFA80;
    }

    v7[1] = v8;
    v27 = *(v0 + 96);
    v24 = v3;
    v25 = v5;
  }

  else
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 32);
    v12._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13._object = v14;
    v15._countAndFlagsBits = 0x2D65636E6546;
    v15._object = 0xE600000000000000;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v15, v13).super.isa;
    v17 = [(objc_class *)isa zoneName];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v0 + 168) = v20;
    v21 = *(&async function pointer to dispatch thunk of CloudKitStorage.share(zoneName:) + 1);
    v29 = (&async function pointer to dispatch thunk of CloudKitStorage.share(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.share(zoneName:));
    v22 = swift_task_alloc();
    *(v0 + 176) = v22;
    *v22 = v0;
    v22[1] = sub_1001BF70C;
    v23 = *(v0 + 96);
    v24 = v18;
    v25 = v20;
  }

  return v29(v24, v25);
}

uint64_t sub_1001BF70C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1001C0C70;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_1001BF828;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001BF828()
{
  v1 = v0[5];
  v2 = Handle.isPhoneNumber.getter();
  v3 = Handle.identifier.getter();
  v5 = v4;
  v0[24] = v4;
  if (v2)
  {
    v6 = *(&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:) + 1);
    v12 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:));
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v8 = sub_1001BF950;
  }

  else
  {
    v9 = *(&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:) + 1);
    v12 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:));
    v7 = swift_task_alloc();
    v0[27] = v7;
    *v7 = v0;
    v8 = sub_1001BFA80;
  }

  v7[1] = v8;
  v10 = v0[12];

  return v12(v3, v5);
}

uint64_t sub_1001BF950(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = sub_1001BFBB0;
  }

  else
  {
    v8 = *(v4 + 192);

    *(v4 + 232) = a1;
    v7 = sub_1001BFC38;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001BFA80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = sub_1001BFEB4;
  }

  else
  {
    v8 = *(v4 + 192);

    *(v4 + 232) = a1;
    v7 = sub_1001BFC38;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001BFBB0()
{
  v1 = v0[24];

  v2 = v0[26];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001BFC38()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[4];
  v4._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._countAndFlagsBits = 0x2D65636E6546;
  v7._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v5).super.isa;
  v9 = [(objc_class *)isa zoneName];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v0[30] = v12;
  v13 = *(&async function pointer to dispatch thunk of CloudKitStorage.shareParticipants(zoneName:) + 1);
  v17 = (&async function pointer to dispatch thunk of CloudKitStorage.shareParticipants(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.shareParticipants(zoneName:));
  v14 = swift_task_alloc();
  v0[31] = v14;
  *v14 = v0;
  v14[1] = sub_1001BFD84;
  v15 = v0[12];

  return v17(v10, v12);
}

uint64_t sub_1001BFD84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_1001C0CF8;
  }

  else
  {
    v8 = *(v4 + 240);

    *(v4 + 264) = a1;
    v7 = sub_1001BFF3C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001BFEB4()
{
  v1 = v0[24];

  v2 = v0[28];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001BFF3C()
{
  v0[2] = v0[29];
  v2 = v0[32];
  v1 = v0[33];
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 2;
  LOBYTE(v2) = sub_1001B9588(sub_1001C2A28, v3, v1);

  if (v2)
  {
    v4 = v0[29];
    sub_1001C2B2C();
    swift_allocError();
    swift_willThrow();

    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = *(v0[6] + 128);
    v11 = swift_task_alloc();
    v0[34] = v11;
    *v11 = v0;
    v11[1] = sub_1001C00C8;
    v12 = v0[11];
    v13 = v0[4];

    return sub_1001C3C00(v12, v13);
  }
}

uint64_t sub_1001C00C8()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1001C0454;
  }

  else
  {
    v3 = sub_1001C01DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C01DC()
{
  v1 = v0[11];
  v2 = type metadata accessor for FenceRecord();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100002CE0(v1, &qword_1005AE720, &qword_1004CA2F0);
  if (v3 == 1)
  {
    v4 = v0[4];
    v5 = swift_task_alloc();
    v0[36] = v5;
    *(v5 + 16) = v4;
    v6 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
    v28 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
    v7 = swift_task_alloc();
    v0[37] = v7;
    *v7 = v0;
    v7[1] = sub_1001C04DC;
    v8 = v0[12];
    v9 = v0[10];

    return v28(v9, &unk_1004D0458, v5);
  }

  else
  {
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[4];
    v14._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15._object = v16;
    v17._countAndFlagsBits = 0x2D65636E6546;
    v17._object = 0xE600000000000000;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v17, v15).super.isa;
    v19 = [(objc_class *)isa zoneName];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v0[41] = v22;
    v23 = *(&async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:) + 1);
    v29 = (&async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:));
    v24 = swift_task_alloc();
    v0[42] = v24;
    *v24 = v0;
    v24[1] = sub_1001C09A0;
    v25 = v0[29];
    v26 = v0[12];
    v27 = v0[3];

    return v29(v27, v25, v20, v22);
  }
}

uint64_t sub_1001C0454()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001C04DC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_1001C0D84;
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = sub_1001C05F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001C05F8()
{
  (*(v0[8] + 104))(v0[9], enum case for CloudKitCoordinator.Database.private(_:), v0[7]);
  v1 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1001C06C8;
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  return v7(v5, v4);
}

uint64_t sub_1001C06C8()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v5 = sub_1001C0E18;
  }

  else
  {
    v5 = sub_1001C0830;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C0830()
{
  sub_100002CE0(v0[10], &qword_1005AF228, &unk_1004D0440);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[4];
  v4._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._countAndFlagsBits = 0x2D65636E6546;
  v7._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v5).super.isa;
  v9 = [(objc_class *)isa zoneName];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v0[41] = v12;
  v13 = *(&async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:) + 1);
  v19 = (&async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:));
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = sub_1001C09A0;
  v15 = v0[29];
  v16 = v0[12];
  v17 = v0[3];

  return v19(v17, v15, v10, v12);
}

uint64_t sub_1001C09A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = sub_1001C0EBC;
  }

  else
  {
    v8 = *(v4 + 328);

    *(v4 + 352) = a1;
    v7 = sub_1001C0AD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001C0AD0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);
  v5 = *(v0 + 352);

  return v4(v5);
}

uint64_t sub_1001C0B60()
{
  v1 = v0[15];

  v2 = v0[17];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001C0BE8()
{
  v1 = v0[18];

  v2 = v0[20];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001C0C70()
{
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001C0CF8()
{
  v2 = v0[29];
  v1 = v0[30];

  v3 = v0[32];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001C0D84()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 304);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001C0E18()
{
  v1 = *(v0 + 80);

  sub_100002CE0(v1, &qword_1005AF228, &unk_1004D0440);
  v2 = *(v0 + 320);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001C0EBC()
{
  v1 = v0[41];
  v2 = v0[29];

  v3 = v0[43];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001C0F4C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to CloudKitChangeSet.Adaptor.create<A>(record:)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FenceRecord();
  v7 = sub_1001C2BFC(&qword_1005AF238, 255, type metadata accessor for FenceRecord);
  *v5 = v2;
  v5[1] = sub_10000368C;

  return CloudKitChangeSet.Adaptor.create<A>(record:)(a2, v6, v7);
}

uint64_t sub_1001C1044(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001C1108, 0, 0);
}

uint64_t sub_1001C1108()
{
  v24 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFE80);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_10000D01C(0xD000000000000022, 0x80000001004E4D10, &v23);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_1001C2BFC(&qword_1005ADD18, 255, &type metadata accessor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v23);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s with url: %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[8] = *(v0[4] + 136);
  v17 = *(&async function pointer to dispatch thunk of CloudKitStorage.shareMetadata(for:token:) + 1);
  v22 = (&async function pointer to dispatch thunk of CloudKitStorage.shareMetadata(for:token:) + async function pointer to dispatch thunk of CloudKitStorage.shareMetadata(for:token:));
  v18 = swift_task_alloc();
  v0[9] = v18;
  *v18 = v0;
  v18[1] = sub_1001C13EC;
  v20 = v0[2];
  v19 = v0[3];

  return v22(v20, v19);
}

uint64_t sub_1001C13EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v7 = v4[7];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = *(&async function pointer to dispatch thunk of CloudKitStorage.accept(metadata:) + 1);
    v13 = (&async function pointer to dispatch thunk of CloudKitStorage.accept(metadata:) + async function pointer to dispatch thunk of CloudKitStorage.accept(metadata:));
    v11 = swift_task_alloc();
    v4[11] = v11;
    *v11 = v6;
    v11[1] = sub_1001C158C;
    v12 = v4[8];

    return v13(a1);
  }
}

uint64_t sub_1001C158C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1001C1710;
  }

  else
  {
    v3 = sub_1001C16A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C16A0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C1710()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C177C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C179C, v1, 0);
}

uint64_t sub_1001C179C()
{
  v30 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[4] = sub_10000A6F0(v2, qword_1005DFE80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_10000D01C(v8, v9, &v29);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Purging zones: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[2];
  v12 = v0[3];
  v13 = v11[2];
  v0[5] = v13;
  if (v13)
  {
    v0[6] = *(v12 + 136);
    v0[7] = 0;
    v14 = v0[4];
    v15 = v11[4];
    v0[8] = v15;
    v16 = v11[5];
    v0[9] = v16;
    swift_bridgeObjectRetain_n();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10000D01C(v15, v16, &v29);
      _os_log_impl(&_mh_execute_header, v17, v18, "Deleting zone %s", v19, 0xCu);
      sub_100004984(v20);
    }

    v21 = *(&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + 1);
    v27 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
    v22 = swift_task_alloc();
    v0[10] = v22;
    *v22 = v0;
    v22[1] = sub_1001C1B08;
    v23 = v0[6];

    return v27(v15, v16);
  }

  else
  {
    v25 = *(&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + 1);
    v28 = (&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + async function pointer to dispatch thunk of CloudKitStorage.resetDataStore());
    v26 = swift_task_alloc();
    v0[14] = v26;
    *v26 = v0;
    v26[1] = sub_1001C213C;

    return v28();
  }
}

uint64_t sub_1001C1B08()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1001C2230;
  }

  else
  {
    v6 = sub_1001C1C34;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001C1C34()
{
  v17 = v0;
  v1 = v0[9];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000D01C(v6, v5, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "Recreating zone: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = *(&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + 1);
  v15 = (&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:));
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_1001C1DC8;
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[6];

  return v15(v12, v11);
}

uint64_t sub_1001C1DC8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1001C25EC;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 24);

    v5 = sub_1001C1EF0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001C1EF0()
{
  v20 = v0;
  v1 = v0[7] + 1;
  if (v1 == v0[5])
  {
    v2 = *(v0[3] + 136);
    v3 = *(&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + 1);
    v17 = (&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + async function pointer to dispatch thunk of CloudKitStorage.resetDataStore());
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1001C213C;

    return v17();
  }

  else
  {
    v0[7] = v1;
    v6 = v0[4];
    v7 = v0[2] + 16 * v1;
    v8 = *(v7 + 32);
    v0[8] = v8;
    v9 = *(v7 + 40);
    v0[9] = v9;
    swift_bridgeObjectRetain_n();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10000D01C(v8, v9, &v19);
      _os_log_impl(&_mh_execute_header, v10, v11, "Deleting zone %s", v12, 0xCu);
      sub_100004984(v13);
    }

    v14 = *(&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + 1);
    v18 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
    v15 = swift_task_alloc();
    v0[10] = v15;
    *v15 = v0;
    v15[1] = sub_1001C1B08;
    v16 = v0[6];

    return v18(v8, v9);
  }
}

uint64_t sub_1001C213C()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001C2230()
{
  v33 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[4];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v9 = 136446466;
    v12 = sub_10000D01C(v8, v7, &v32);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = _convertErrorToNSError(_:)();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error purging zone %{public}s: %{public}@", v9, 0x16u);
    sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v11);
  }

  else
  {
  }

  v14 = v0[7] + 1;
  if (v14 == v0[5])
  {
    v15 = *(v0[3] + 136);
    v16 = *(&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + 1);
    v30 = (&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + async function pointer to dispatch thunk of CloudKitStorage.resetDataStore());
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_1001C213C;

    return v30();
  }

  else
  {
    v0[7] = v14;
    v19 = v0[4];
    v20 = v0[2] + 16 * v14;
    v21 = *(v20 + 32);
    v0[8] = v21;
    v22 = *(v20 + 40);
    v0[9] = v22;
    swift_bridgeObjectRetain_n();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10000D01C(v21, v22, &v32);
      _os_log_impl(&_mh_execute_header, v23, v24, "Deleting zone %s", v25, 0xCu);
      sub_100004984(v26);
    }

    v27 = *(&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + 1);
    v31 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
    v28 = swift_task_alloc();
    v0[10] = v28;
    *v28 = v0;
    v28[1] = sub_1001C1B08;
    v29 = v0[6];

    return v31(v21, v22);
  }
}

uint64_t sub_1001C25EC()
{
  v33 = v0;
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[4];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v9 = 136446466;
    v12 = sub_10000D01C(v8, v7, &v32);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = _convertErrorToNSError(_:)();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error purging zone %{public}s: %{public}@", v9, 0x16u);
    sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v11);
  }

  else
  {
  }

  v14 = v0[7] + 1;
  if (v14 == v0[5])
  {
    v15 = *(v0[3] + 136);
    v16 = *(&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + 1);
    v30 = (&async function pointer to dispatch thunk of CloudKitStorage.resetDataStore() + async function pointer to dispatch thunk of CloudKitStorage.resetDataStore());
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_1001C213C;

    return v30();
  }

  else
  {
    v0[7] = v14;
    v19 = v0[4];
    v20 = v0[2] + 16 * v14;
    v21 = *(v20 + 32);
    v0[8] = v21;
    v22 = *(v20 + 40);
    v0[9] = v22;
    swift_bridgeObjectRetain_n();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10000D01C(v21, v22, &v32);
      _os_log_impl(&_mh_execute_header, v23, v24, "Deleting zone %s", v25, 0xCu);
      sub_100004984(v26);
    }

    v27 = *(&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + 1);
    v31 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
    v28 = swift_task_alloc();
    v0[10] = v28;
    *v28 = v0;
    v28[1] = sub_1001C1B08;
    v29 = v0[6];

    return v31(v21, v22);
  }
}

uint64_t sub_1001C29A8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFE98);
  sub_10000A6F0(v0, qword_1005DFE98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001C2A28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1000545A4(0, &qword_1005AF240, CKShareParticipant_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1001C2A90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1001C0F4C(a1, v4);
}

unint64_t sub_1001C2B2C()
{
  result = qword_1005AF230;
  if (!qword_1005AF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF230);
  }

  return result;
}

uint64_t sub_1001C2B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1001C2BE4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1001C2BF0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001C2BFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1001C2C58()
{
  result = qword_1005AF288;
  if (!qword_1005AF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF288);
  }

  return result;
}

void *sub_1001C2CB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v23 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v23 + 64;
    v5 = -1 << *(v23 + 32);
    result = _HashTable.startBucket.getter();
    v6 = v23;
    v7 = result;
    v8 = 0;
    v9 = *(v23 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_24;
      }

      v12 = v4;
      v13 = *(v6 + 56) + 16 * v7;
      v14 = *v13;
      if (*(v13 + 8))
      {
        v25 = *v13;
        sub_1001C2BE4(v14, 1);
        sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
        swift_willThrowTypedImpl();
      }

      v24 = v8;
      sub_1001C2BE4(v14, 0);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v6 = v23;
      v10 = 1 << *(v23 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v16 = *(v12 + 8 * v11);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (v9 != *(v23 + 36))
      {
        goto LABEL_27;
      }

      v4 = v12;
      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v10 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (v23 + 72 + 8 * v11);
        while (v19 < (v10 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_10002F14C(v7, v9, 0);
            v6 = v23;
            v10 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v7, v9, 0);
        v6 = v23;
      }

LABEL_4:
      v8 = v24 + 1;
      v7 = v10;
      if (v24 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C2F40(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 168) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = *v3;
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v6 = type metadata accessor for CloudKitCoordinator.Deletion();
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005AF4A0, &qword_1004D0718) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v4 + 128) = v10;
  v11 = *(v10 - 8);
  *(v4 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1001C3108, v3, 0);
}

uint64_t sub_1001C3108()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_1001C312C, v1, 0);
}

uint64_t sub_1001C312C()
{
  v1 = v0[19];
  v2 = v0[8];
  type metadata accessor for CloudStorageDatabase();
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase);
  v0[20] = Database.writeConnection.getter();

  return _swift_task_switch(sub_1001C31EC, v2, 0);
}

uint64_t sub_1001C31EC()
{
  v105 = v0;
  v1 = *(v0 + 160);
  if (!v1)
  {
    v10 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
    v12 = *(v0 + 144);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 104);
    v16 = *(v0 + 80);

    v17 = *(v0 + 8);
    goto LABEL_52;
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v1;
  v9[5] = v7;
  v9[6] = v5;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v2, v4);
  Connection.savepoint(_:block:)();
  v18 = v0 + 32;
  v19 = *(v0 + 96);
  v20 = *(v0 + 64);
  v21 = *(v0 + 48);

  v22 = *(v21 + 16);
  v95 = v19;
  v23 = (v19 + 56);
  v24 = (v19 + 48);
  v99 = (v19 + 8);
  v101 = (v19 + 32);
  swift_bridgeObjectRetain_n();

  v25 = 0;
  v97 = v22;
  do
  {
    while (1)
    {
      if (v25 == v22)
      {
        v26 = 1;
        v25 = v22;
      }

      else
      {
        if (v25 >= v22)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        (*(v95 + 16))(*(v0 + 120), *(v0 + 48) + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v25, *(v0 + 88));
        if (__OFADD__(v25++, 1))
        {
          goto LABEL_62;
        }

        v26 = 0;
      }

      v28 = *(v0 + 112);
      v29 = *(v0 + 120);
      v30 = *(v0 + 88);
      (*v23)(v29, v26, 1, v30);
      sub_1000176A8(v29, v28, &qword_1005AF4A0, &qword_1004D0718);
      LODWORD(v103) = (*v24)(v28, 1, v30);
      if (v103 == 1)
      {
        v46 = *(v0 + 56);
        v47 = *(v0 + 64);
        v48 = *(v0 + 48);
        swift_bridgeObjectRelease_n();

        if ((v46 & 0x8000000000000000) == 0)
        {
          v49 = v0 + 16;
          if ((v46 & 0x4000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_64;
        }

LABEL_63:
        v49 = v0 + 16;
        goto LABEL_64;
      }

      v31 = *(v0 + 104);
      v32 = *(v0 + 88);
      (*v101)(v31, *(v0 + 112), v32);
      v33 = CloudKitCoordinator.Deletion.recordType.getter();
      v35 = v34;
      (*v99)(v31, v32);

      v36._countAndFlagsBits = v33;
      v36._object = v35;
      v37 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v36);

      if (v37 == 1)
      {
        break;
      }

      if (!v37)
      {
        v50 = *(v0 + 48);

        swift_bridgeObjectRelease_n();
        goto LABEL_25;
      }

      *(v0 + 32) = v33;
      *(v0 + 40) = v35;
      v39 = swift_task_alloc();
      v103 = v18;
      *(v39 + 16) = v18;
      v40 = sub_1001B94DC(sub_1001CD98C, v39, &off_10058BAC0);
      sub_10007C2B8(&unk_10058BAE0);

      if ((v40 & 1) == 0)
      {
        if (qword_1005A8080 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_10000A6F0(v41, qword_1005DFEB0);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          log = v42;
          v45 = swift_slowAlloc();
          v104[0] = v45;
          *v44 = 136446210;
          *(v44 + 4) = sub_10000D01C(v33, v35, v104);
          _os_log_impl(&_mh_execute_header, log, v43, "Unable to find table for %{public}s", v44, 0xCu);
          sub_100004984(v45);
        }

        else
        {
        }
      }

      v18 = v103;
      v22 = v97;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = v97;
  }

  while ((v38 & 1) == 0);
  v51 = *(v0 + 48);

  v52 = *(v0 + 48);
LABEL_25:
  v46 = *(v0 + 56);
  v53 = *(v0 + 64);

  v49 = v0 + 16;
  if ((v46 & 0x8000000000000000) == 0 && (v46 & 0x4000000000000000) == 0)
  {
LABEL_27:
    v54 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_28;
  }

LABEL_64:
  if (*(v0 + 56) < 0)
  {
    v93 = *(v0 + 56);
  }

  v54 = _CocoaArrayWrapper.endIndex.getter();
LABEL_28:
  v55 = *(v0 + 56);
  v56 = *(v0 + 64);
  swift_bridgeObjectRetain_n();

  if (!v54)
  {
LABEL_48:
    v77 = *(v0 + 168);
    swift_bridgeObjectRelease_n();

    if (v103 != 1 && (v77 & 1) != 0)
    {
LABEL_50:
      v78 = *(v0 + 80);
      v79 = type metadata accessor for TaskPriority();
      (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
      v80 = swift_allocObject();
      *(v80 + 16) = 0;
      *(v80 + 24) = 0;
      sub_10020D620(0, 0, v78, &unk_1004D0728, v80);
    }

    goto LABEL_51;
  }

  v57 = 0;
  v100 = v55 & 0xFFFFFFFFFFFFFF8;
  v102 = v55 & 0xC000000000000001;
  v96 = v54;
  v98 = v55 + 32;
  while (2)
  {
    if (v102)
    {
      v74 = *(v0 + 56);
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v60 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v57 >= *(v100 + 16))
      {
        goto LABEL_60;
      }

      v59 = *(v98 + 8 * v57);
      v60 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v61 = v59;
    v62 = CKRecord.recordType.getter();
    v64 = v63;

    v65._countAndFlagsBits = v62;
    v65._object = v64;
    v66 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v65);

    if (v66 != 1)
    {
      if (!v66)
      {
        v87 = *(v0 + 56);
        v88 = *(v0 + 64);

        swift_bridgeObjectRelease_n();

        goto LABEL_57;
      }

      *(v0 + 16) = v62;
      *(v0 + 24) = v64;
      v67 = swift_task_alloc();
      *(v67 + 16) = v49;
      v68 = sub_1001B94DC(sub_1001CC6DC, v67, &off_10058BAC0);
      sub_10007C2B8(&unk_10058BAE0);

      if ((v68 & 1) == 0)
      {
        if (qword_1005A8080 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_10000A6F0(v69, qword_1005DFEB0);

        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v104[0] = v73;
          *v72 = 136446210;
          *(v72 + 4) = sub_10000D01C(v62, v64, v104);
          _os_log_impl(&_mh_execute_header, v70, v71, "Unable to find table for %{public}s", v72, 0xCu);
          sub_100004984(v73);

          v49 = v0 + 16;
        }
      }

      v54 = v96;
      goto LABEL_31;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
LABEL_31:
      ++v57;
      if (v60 == v54)
      {
        v75 = *(v0 + 56);
        v76 = *(v0 + 64);
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  v89 = *(v0 + 56);
  v90 = *(v0 + 64);

  v91 = *(v0 + 56);
LABEL_57:
  v92 = *(v0 + 168);

  if (v92 == 1)
  {
    goto LABEL_50;
  }

LABEL_51:
  v81 = *(v0 + 144);
  v83 = *(v0 + 112);
  v82 = *(v0 + 120);
  v84 = *(v0 + 104);
  v85 = *(v0 + 80);

  v17 = *(v0 + 8);
LABEL_52:

  return v17();
}

uint64_t sub_1001C3C00(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001C3D2C, 0, 0);
}

uint64_t sub_1001C3D2C()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1001C3D50, v1, 0);
}

uint64_t sub_1001C3D50()
{
  v1 = *(v0 + 128);
  type metadata accessor for CloudStorageDatabase();
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase);
  *(v0 + 136) = Database.readConnection.getter();

  return _swift_task_switch(sub_1001C3E04, 0, 0);
}

uint64_t sub_1001C3E04()
{
  if (v0[17])
  {
    if (qword_1005A8000 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[13], qword_1005DFD08);
    if (qword_1005A8010 != -1)
    {
      swift_once();
    }

    v2 = v0[14];
    v1 = v0[15];
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v8, qword_1005DFD38);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    (*(v5 + 8))(v4, v6);
    v0[5] = v3;
    v0[6] = &protocol witness table for Table;
    v9 = sub_10000331C(v0 + 2);
    (*(v2 + 16))(v9, v1, v3);
    sub_100007C60();
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    v17 = v0[12];
    v18 = v0[7];
    sub_100004984(v0 + 2);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v11 + 8))(v10, v12);

    v19 = v0[1];
  }

  else
  {
    v13 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for DatabaseError.notConnected(_:), v13);
    swift_willThrow();
    v15 = v0[15];
    v16 = v0[12];

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_1001C414C()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1001C4170, v1, 0);
}

uint64_t sub_1001C4170()
{
  v1 = *(v0 + 64);
  type metadata accessor for CloudStorageDatabase();
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase);
  *(v0 + 72) = Database.readConnection.getter();

  return _swift_task_switch(sub_1001C4224, 0, 0);
}

uint64_t sub_1001C4224()
{
  if (v0[9])
  {
    if (qword_1005A8008 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Table();
    v2 = sub_10000A6F0(v1, qword_1005DFD20);
    v0[5] = v1;
    v0[6] = &protocol witness table for Table;
    v3 = sub_10000331C(v0 + 2);
    (*(*(v1 - 8) + 16))(v3, v2, v1);
    v4 = sub_1001CCB6C();

    sub_100004984(v0 + 2);
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for DatabaseError.notConnected(_:), v7);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001C4430(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001C455C, 0, 0);
}

uint64_t sub_1001C455C()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1001C4580, v1, 0);
}

uint64_t sub_1001C4580()
{
  v1 = *(v0 + 128);
  type metadata accessor for CloudStorageDatabase();
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase);
  *(v0 + 136) = Database.readConnection.getter();

  return _swift_task_switch(sub_1001C4634, 0, 0);
}

uint64_t sub_1001C4634()
{
  if (v0[17])
  {
    if (qword_1005A8008 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[13], qword_1005DFD20);
    if (qword_1005A8010 != -1)
    {
      swift_once();
    }

    v2 = v0[14];
    v1 = v0[15];
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v8, qword_1005DFD38);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    (*(v5 + 8))(v4, v6);
    v0[5] = v3;
    v0[6] = &protocol witness table for Table;
    v9 = sub_10000331C(v0 + 2);
    (*(v2 + 16))(v9, v1, v3);
    sub_1001CCB6C();
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    v17 = v0[12];
    v18 = v0[7];
    sub_100004984(v0 + 2);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    (*(v11 + 8))(v10, v12);

    v19 = v0[1];
  }

  else
  {
    v13 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for DatabaseError.notConnected(_:), v13);
    swift_willThrow();
    v15 = v0[15];
    v16 = v0[12];

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_1001C495C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFEB0);
  v1 = sub_10000A6F0(v0, qword_1005DFEB0);
  if (qword_1005A8090 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFED0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001C4D38()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  sub_1001CCAA4(v0 + OBJC_IVAR____TtC13findmylocated17CloudStorageStore_state, type metadata accessor for CloudStorageStore.State);
  v3 = *(v0 + OBJC_IVAR____TtC13findmylocated17CloudStorageStore_stateContinuations);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001C4DD4()
{
  result = type metadata accessor for CloudStorageStore.State(319);
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

void sub_1001C4EB4()
{
  sub_1001C4F28();
  if (v0 <= 0x3F)
  {
    sub_1001C4FD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001C4F28()
{
  if (!qword_1005AF420)
  {
    v0 = sub_1001C4F70();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AF420);
    }
  }
}

unint64_t sub_1001C4F70()
{
  result = qword_1005AF428;
  if (!qword_1005AF428)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1005AF428);
  }

  return result;
}

void sub_1001C4FD4()
{
  if (!qword_1005AF430)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005AF430);
    }
  }
}

uint64_t sub_1001C5040(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_10004B564(&qword_1005AF4C0, &qword_1004D0780);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AF4C8, &qword_1004D0788);
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = *(*(type metadata accessor for CloudStorageStore.State(0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1001C51AC, v1, 0);
}

uint64_t sub_1001C51AC()
{
  v57 = v0;
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC13findmylocated17CloudStorageStore_state;
  swift_beginAccess();
  sub_1001CC9DC(v3 + v4, v1);
  LOBYTE(v2) = sub_1001CC148(v1, v2);
  sub_1001CCAA4(v1, type metadata accessor for CloudStorageStore.State);
  if ((v2 & 1) == 0)
  {
    if (qword_1005A8080 != -1)
    {
LABEL_26:
      swift_once();
    }

    v5 = v0[16];
    v6 = v0[8];
    v7 = v0[9];
    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFEB0);
    sub_1001CC9DC(v6, v5);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v54 = v0;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[17];
      v52 = v0[16];
      v12 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_1001CC9DC(v3 + v4, v11);
      v14 = sub_1001C4A24(v13);
      v16 = v15;
      sub_1001CCAA4(v11, type metadata accessor for CloudStorageStore.State);
      v17 = sub_10000D01C(v14, v16, &v56);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v19 = sub_1001C4A24(v18);
      v21 = v20;
      sub_1001CCAA4(v52, type metadata accessor for CloudStorageStore.State);
      v22 = sub_10000D01C(v19, v21, &v56);

      *(v12 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "State: %s -> %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v23 = v0[16];

      sub_1001CCAA4(v23, type metadata accessor for CloudStorageStore.State);
    }

    v24 = v0[8];
    v25 = v0[9];
    swift_beginAccess();
    sub_1001CCA40(v24, v3 + v4);
    swift_endAccess();
    v26 = OBJC_IVAR____TtC13findmylocated17CloudStorageStore_stateContinuations;
    v27 = *(v25 + OBJC_IVAR____TtC13findmylocated17CloudStorageStore_stateContinuations);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "Publishing State change event to %ld subscribers", v31, 0xCu);
      }

      v27 = *(v25 + v26);
    }

    v32 = v27 + 64;
    v33 = -1;
    v34 = -1 << *(v27 + 32);
    if (-v34 < 64)
    {
      v33 = ~(-1 << -v34);
    }

    v35 = v33 & *(v27 + 64);
    v36 = (63 - v34) >> 6;
    v50 = (v0[11] + 8);
    v51 = v0[14];
    v53 = v27;

    v4 = 0;
    while (v35)
    {
      v37 = v4;
      v38 = v53;
LABEL_19:
      v39 = v54[17];
      v40 = v54[15];
      v42 = v54[12];
      v41 = v54[13];
      v55 = v54[10];
      v3 = v54[8];
      v43 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v0 = v51;
      (*(v51 + 16))(v40, *(v38 + 56) + *(v51 + 72) * (v43 | (v37 << 6)), v41);
      sub_1001CC9DC(v3, v39);
      AsyncStream.Continuation.yield(_:)();
      (*v50)(v42, v55);
      (*(v51 + 8))(v40, v41);
    }

    v38 = v53;
    while (1)
    {
      v37 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v37 >= v36)
      {
        break;
      }

      v35 = *(v32 + 8 * v37);
      ++v4;
      if (v35)
      {
        v4 = v37;
        goto LABEL_19;
      }
    }

    v0 = v54;
  }

  v45 = v0[16];
  v44 = v0[17];
  v46 = v0[15];
  v47 = v0[12];

  v48 = v0[1];

  return v48();
}

uint64_t sub_1001C56C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v39 - v6;
  sub_1000545A4(0, &qword_1005AF478, NSKeyedUnarchiver_ptr);
  sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
  if (qword_1005A8020 != -1)
  {
    swift_once();
  }

  v8 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v8, qword_1005DFD68);
  Row.subscript.getter();
  v9 = v43;
  v10 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v2)
  {
    v11 = type metadata accessor for Row();
    (*(*(v11 - 8) + 8))(a1, v11);
    return sub_1000049D0(v9, *(&v9 + 1));
  }

  else
  {
    v13 = v10;
    sub_1000049D0(v9, *(&v9 + 1));
    if (v13)
    {
      v14 = type metadata accessor for PropertyListDecoder();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v39[4] = PropertyListDecoder.init()();
      if (qword_1005A8010 != -1)
      {
        swift_once();
      }

      v17 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
      sub_10000A6F0(v17, qword_1005DFD38);
      v18 = type metadata accessor for UUID();
      v19 = v49;
      v39[3] = v18;
      Row.subscript.getter();
      if (qword_1005A8018 != -1)
      {
        swift_once();
      }

      v20 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
      sub_10000A6F0(v20, qword_1005DFD50);
      Row.subscript.getter();
      v21 = v43;
      v22 = type metadata accessor for FenceRecord();
      *(v19 + v22[5]) = v21;
      v39[2] = *(&v21 + 1);
      *(v19 + v22[6]) = v13;
      if (qword_1005A8028 != -1)
      {
        swift_once();
      }

      v23 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
      sub_10000A6F0(v23, qword_1005DFD80);
      Row.subscript.getter();
      *(v19 + v22[7]) = v43;
      if (qword_1005A8030 != -1)
      {
        swift_once();
      }

      v39[5] = v13;
      v24 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
      sub_10000A6F0(v24, qword_1005DFD98);
      v40 = v22;
      v25 = v22[9];
      type metadata accessor for Date();
      v39[1] = v25;
      Row.subscript.getter();
      if (qword_1005A8040 != -1)
      {
        swift_once();
      }

      v26 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
      sub_10000A6F0(v26, qword_1005DFDC8);
      Row.subscript.getter();
      v27 = v43;
      v28 = type metadata accessor for Fence.Schedule();
      if (*(&v27 + 1) >> 60 == 15)
      {
        v29 = 1;
      }

      else
      {
        sub_100005F6C(v27, *(&v27 + 1));
        sub_1001CC028(&qword_1005AF490, &type metadata accessor for Fence.Schedule);
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        sub_10001A794(v27, *(&v27 + 1));
        sub_10001A794(v27, *(&v27 + 1));
        v29 = 0;
      }

      (*(*(v28 - 8) + 56))(v7, v29, 1, v28);
      v31 = v49;
      sub_1000176A8(v7, v49 + v40[8], &qword_1005AE5C0, &unk_1004D06D0);
      if (qword_1005A8038 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v8, qword_1005DFDB0);
      Row.subscript.getter();
      v32 = v41;
      v33 = v42;
      sub_1001CC664();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v34 = type metadata accessor for Row();
      (*(*(v34 - 8) + 8))(a1, v34);

      result = sub_1000049D0(v32, v33);
      v35 = (v31 + v40[10]);
      v36 = v46;
      v35[2] = v45;
      v35[3] = v36;
      v37 = v48;
      v35[4] = v47;
      v35[5] = v37;
      v38 = v44;
      *v35 = v43;
      v35[1] = v38;
    }

    else
    {
      sub_1001CC610();
      swift_allocError();
      swift_willThrow();
      v30 = type metadata accessor for Row();
      return (*(*(v30 - 8) + 8))(a1, v30);
    }
  }

  return result;
}

uint64_t sub_1001C5EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v3 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = &v46 - v5;
  v6 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v46 - v10;
  v11 = type metadata accessor for SharedSecretKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v46 - v16;
  v17 = type metadata accessor for FriendSharedSecretsRecord();
  v52 = v17[6];
  v53 = v12;
  v18 = *(v12 + 56);
  v18(a2 + v52, 1, 1, v11);
  v19 = v17[7];
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v55 = v19;
  v22 = a2 + v19;
  v23 = v18;
  v21(v22, 1, 1, v20);
  v24 = v17[8];
  v18(a2 + v24, 1, 1, v11);
  v54 = v17;
  v56 = v17[9];
  v61 = v20;
  v21(a2 + v56, 1, 1, v20);
  if (qword_1005A8050 != -1)
  {
    swift_once();
  }

  v25 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v25, qword_1005DFDF8);
  v26 = v58;
  Row.subscript.getter();
  if (v60 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v47 = v23;
  sub_1001CC028(&qword_1005AEC08, &type metadata accessor for SharedSecretKey);
  v27 = v50;
  KeyRepresenting.init(rawValue:)();
  v28 = v53;
  if ((*(v53 + 48))(v27, 1, v11) == 1)
  {
    sub_100002CE0(v27, &qword_1005AEB98, &unk_1004D07C0);
    v26 = v58;
    v23 = v47;
LABEL_6:
    v29 = v52;
    sub_100002CE0(a2 + v52, &qword_1005AEB98, &unk_1004D07C0);
    v30 = 1;
    goto LABEL_8;
  }

  v31 = *(v28 + 32);
  v32 = v48;
  v31(v48, v27, v11);
  v29 = v52;
  sub_100002CE0(a2 + v52, &qword_1005AEB98, &unk_1004D07C0);
  v31((a2 + v29), v32, v11);
  v30 = 0;
  v26 = v58;
  v23 = v47;
LABEL_8:
  v23(a2 + v29, v30, 1, v11);
  if (qword_1005A8060 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v25, qword_1005DFE28);
  Row.subscript.getter();
  if (v60 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_1001CC028(&qword_1005AEC08, &type metadata accessor for SharedSecretKey);
  v33 = v51;
  KeyRepresenting.init(rawValue:)();
  v34 = v53;
  if ((*(v53 + 48))(v33, 1, v11) == 1)
  {
    sub_100002CE0(v33, &qword_1005AEB98, &unk_1004D07C0);
LABEL_13:
    sub_100002CE0(a2 + v24, &qword_1005AEB98, &unk_1004D07C0);
    v35 = 1;
    goto LABEL_15;
  }

  v36 = *(v34 + 32);
  v37 = v49;
  v38 = v33;
  v39 = v36;
  v36(v49, v38, v11);
  sub_100002CE0(a2 + v24, &qword_1005AEB98, &unk_1004D07C0);
  v39(a2 + v24, v37, v11);
  v35 = 0;
LABEL_15:
  v23(a2 + v24, v35, 1, v11);
  if (qword_1005A8010 != -1)
  {
    swift_once();
  }

  v40 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
  sub_10000A6F0(v40, qword_1005DFD38);
  type metadata accessor for UUID();
  Row.subscript.getter();
  v41 = v57;
  if (qword_1005A8048 != -1)
  {
    swift_once();
  }

  v42 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
  sub_10000A6F0(v42, qword_1005DFDE0);
  sub_1001B921C();
  Row.subscript.getter();
  *(a2 + v54[5]) = v59 == 1;
  if (qword_1005A8058 != -1)
  {
    swift_once();
  }

  v43 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
  sub_10000A6F0(v43, qword_1005DFE10);
  Row.subscript.getter();
  sub_1000CF904(v41, a2 + v55);
  if (qword_1005A8068 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v43, qword_1005DFE40);
  Row.subscript.getter();
  v44 = type metadata accessor for Row();
  (*(*(v44 - 8) + 8))(v26, v44);
  return sub_1000CF904(v41, a2 + v56);
}

uint64_t sub_1001C6700()
{
  sub_10002B3C0(0, 2, 0);
  type metadata accessor for FenceRecord();
  sub_1001CC028(&qword_1005AF238, type metadata accessor for FenceRecord);
  v0 = sub_1001A294C();
  v3 = _swiftEmptyArrayStorage[2];
  v2 = _swiftEmptyArrayStorage[3];
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v11 = v0;
    v12 = v1;
    sub_10002B3C0((v2 > 1), v3 + 1, 1);
    v1 = v12;
    v0 = v11;
    v2 = _swiftEmptyArrayStorage[3];
    v4 = v2 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  v6 = &_swiftEmptyArrayStorage[2 * v3];
  v6[4] = v0;
  v6[5] = v1;
  v7 = v3 + 2;
  if (v4 <= v5)
  {
    sub_10002B3C0((v2 > 1), v7, 1);
  }

  _swiftEmptyArrayStorage[2] = v7;
  v8 = &_swiftEmptyArrayStorage[2 * v5];
  strcpy(v8 + 32, "SharedSecrets");
  *(v8 + 23) = -4864;
  v9 = Array<A>.uniqued()();

  qword_1005DFEC8 = v9;
  return result;
}

uint64_t sub_1001C6884(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CloudKitCoordinator.Deletion();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for CloudKitStateChange();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001C69AC, v1, 0);
}

uint64_t sub_1001C69AC()
{
  v43 = v0;
  v1 = v0;
  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = v1[2];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFEB0);
  (*(v3 + 16))(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[9];
  v10 = v1[10];
  v12 = v1[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v14;
    *v13 = 136315138;
    sub_1001CC028(&qword_1005AF510, &type metadata accessor for CloudKitStateChange);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10000D01C(v15, v17, &v42);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "ingest:stateChange %s", v13, 0xCu);
    sub_100004984(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v1[2];
  v20 = CloudKitStateChange.deleted.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v1[5];
    v42 = _swiftEmptyArrayStorage;
    sub_100239570(0, v21, 0);
    v23 = v42;
    v24 = *(v22 + 16);
    v22 += 16;
    v40 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v41 = v24;
    v25 = v20 + v40;
    v39 = *(v22 + 56);
    v38 = (v22 - 8);
    v26 = (v22 + 16);
    do
    {
      v27 = v1[6];
      v28 = v1[4];
      v41(v27, v25, v28);
      CloudKitCoordinator.Deletion.recordType.getter();
      CloudKitCoordinator.Deletion.recordID.getter();
      CloudKitCoordinator.Deletion.init(recordType:recordID:)();
      (*v38)(v27, v28);
      v42 = v23;
      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        sub_100239570(v29 > 1, v30 + 1, 1);
        v23 = v42;
      }

      v31 = v1[7];
      v32 = v1[4];
      v23[2] = v30 + 1;
      (*v26)(v23 + v40 + v30 * v39, v31, v32);
      v25 += v39;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
  }

  v1[11] = v23;
  v33 = v1[2];
  v34 = CloudKitStateChange.modified.getter();
  v1[12] = v34;
  v35 = swift_task_alloc();
  v1[13] = v35;
  *v35 = v1;
  v35[1] = sub_1001C6D9C;
  v36 = v1[3];

  return sub_1001C2F40(v23, v34, 1);
}

uint64_t sub_1001C6D9C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1001C6F5C;
  }

  else
  {
    v6 = sub_1001C6EC8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001C6EC8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001C6F5C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];
  v7 = v0[14];

  return v6();
}

void sub_1001C6FF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v167 = a5;
  v184 = a4;
  v193 = a3;
  v199 = a2;
  v173 = type metadata accessor for Insert();
  v160 = *(v173 - 8);
  v8 = *(v160 + 64);
  __chkstk_darwin(v173);
  v189 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v166 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v188 = &v160 - v15;
  v16 = __chkstk_darwin(v14);
  v176 = &v160 - v17;
  __chkstk_darwin(v16);
  v192 = &v160 - v18;
  v183 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v19 = *(v183 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v183);
  v182 = &v160 - v21;
  v194 = type metadata accessor for Table();
  v22 = *(v194 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v194);
  v177 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v181 = &v160 - v27;
  __chkstk_darwin(v26);
  v180 = &v160 - v28;
  v179 = type metadata accessor for Delete();
  v29 = *(v179 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v179);
  *&v196 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v195 = &v160 - v34;
  v204 = type metadata accessor for UUID();
  v35 = *(v204 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v204);
  v174 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v38;
  __chkstk_darwin(v37);
  v40 = &v160 - v39;
  v41 = type metadata accessor for CloudKitCoordinator.Deletion();
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41);
  v178 = &v160 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v198 = (&v160 - v47);
  v48 = *(a1 + 16);
  v161 = v22;
  if (v48)
  {
    v202 = v40;
    v50 = *(v45 + 16);
    v49 = v45 + 16;
    v205 = v50;
    v51 = (a1 + ((*(v49 + 64) + 32) & ~*(v49 + 64)));
    v191 = (v35 + 48);
    v190 = (v35 + 32);
    v171 = (v22 + 16);
    v169 = (v19 + 8);
    v168 = (v22 + 8);
    v164 = v35 + 16;
    v170 = (v29 + 8);
    v165 = v35;
    v172 = (v35 + 8);
    v203 = (v49 - 8);
    v200 = *(v49 + 56);
    *&v46 = 136315138;
    v163 = v46;
    *&v46 = 136446210;
    v162 = v46;
    v197 = v41;
    v52 = v198;
    v53 = v49;
    v201 = v49;
    v50(v198, v51, v41);
    while (1)
    {
      v54 = CloudKitCoordinator.Deletion.recordType.getter();
      v56 = v55;

      v57._countAndFlagsBits = v54;
      v57._object = v56;
      v58 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v57);

      if (v58)
      {
        if (v58 != 1)
        {
          v83 = v53;
          v215 = v54;
          v216 = v56;
          __chkstk_darwin(v59);
          *(&v160 - 2) = &v215;
          v84 = v6;
          v85 = sub_1001B94DC(sub_1001CD98C, (&v160 - 4), &off_10058BAC0);
          sub_10007C2B8(&unk_10058BAE0);
          if (v85)
          {

            v52 = v198;
          }

          else
          {
            v206 = v51;
            if (qword_1005A8080 != -1)
            {
              swift_once();
            }

            v107 = type metadata accessor for Logger();
            sub_10000A6F0(v107, qword_1005DFEB0);

            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v215 = v111;
              *v110 = v162;
              *(v110 + 4) = sub_10000D01C(v54, v56, &v215);
              _os_log_impl(&_mh_execute_header, v108, v109, "Unable to find table for %{public}s", v110, 0xCu);
              sub_100004984(v111);

              v6 = v84;
            }

            v52 = v198;
            v51 = v206;
          }

          v53 = v83;
          v41 = v197;
          (*v203)(v52, v197);
          goto LABEL_5;
        }

        v206 = v51;
        v60 = 1;
      }

      else
      {
        v206 = v51;
        v60 = 0;
      }

      v61 = CloudKitCoordinator.Deletion.recordID.getter();
      v62 = [v61 recordName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v195;
      UUID.init(uuidString:)();

      v64 = v204;
      if ((*v191)(v63, 1, v204) == 1)
      {
        sub_100002CE0(v63, &qword_1005A96E0, &qword_1004C2A80);
        if (qword_1005A8080 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_10000A6F0(v65, qword_1005DFEB0);
        v66 = v178;
        v205(v178, v52, v41);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v217 = v6;
          v186 = v70;
          v215 = v70;
          *v69 = v163;
          v71 = CloudKitCoordinator.Deletion.recordID.getter();
          v72 = v48;
          v73 = v66;
          v74 = [v71 recordName];

          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v185 = *v203;
          v78 = v73;
          v48 = v72;
          v41 = v197;
          v185(v78, v197);
          v79 = sub_10000D01C(v75, v77, &v215);

          *(v69 + 4) = v79;
          _os_log_impl(&_mh_execute_header, v67, v68, "Record name is not a UUID: %s", v69, 0xCu);
          sub_100004984(v186);
          v6 = v217;

          v52 = v198;
          v185(v198, v41);
        }

        else
        {
          v86 = v52;

          v87 = *v203;
          (*v203)(v66, v41);
          v87(v86, v41);
          v52 = v86;
        }

        v51 = v206;
        v53 = v201;
      }

      else
      {
        v185 = *v190;
        (v185)(v202, v63, v64);
        v80 = v194;
        v81 = v181;
        v187 = v48;
        if (v60)
        {
          v82 = qword_1005DFD20;
          if (qword_1005A8008 != -1)
          {
            swift_once();
            v82 = qword_1005DFD20;
          }
        }

        else
        {
          v82 = qword_1005DFD08;
          if (qword_1005A8000 != -1)
          {
            swift_once();
            v82 = qword_1005DFD08;
          }
        }

        LODWORD(v186) = v60;
        v217 = v6;
        v88 = sub_10000A6F0(v80, v82);
        (*v171)(v81, v88, v80);
        if (qword_1005A8010 != -1)
        {
          swift_once();
        }

        v89 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
        sub_10000A6F0(v89, qword_1005DFD38);
        v90 = v182;
        v91 = v202;
        == infix<A>(_:_:)();
        v92 = v180;
        QueryType.filter(_:)();
        (*v169)(v90, v183);
        v93 = *v168;
        (*v168)(v81, v80);
        QueryType.delete()();
        v93(v92, v80);
        v94 = v217;
        Connection.run(_:)();
        if (v94)
        {
          (*v170)(v196, v179);
          (*v172)(v91, v64);
          (*v203)(v198, v197);
          return;
        }

        v217 = 0;
        v95 = type metadata accessor for TaskPriority();
        v96 = *(v95 - 8);
        v97 = v192;
        (*(v96 + 56))(v192, 1, 1, v95);
        v98 = v165;
        v99 = v174;
        (*(v165 + 16))(v174, v91, v64);
        v100 = sub_1001CC028(&qword_1005AF4B0, type metadata accessor for CloudStorageStore);
        v101 = (*(v98 + 80) + 41) & ~*(v98 + 80);
        v102 = swift_allocObject();
        v103 = v199;
        *(v102 + 16) = v199;
        *(v102 + 24) = v100;
        *(v102 + 32) = v103;
        *(v102 + 40) = v186;
        (v185)(v102 + v101, v99, v64);
        v104 = v97;
        v105 = v176;
        sub_100005F04(v104, v176, &qword_1005A9690, &qword_1004C2A00);
        v106 = (*(v96 + 48))(v105, 1, v95);
        swift_retain_n();

        if (v106 == 1)
        {
          sub_100002CE0(v105, &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v96 + 8))(v105, v95);
        }

        v48 = v187;
        v113 = *(v102 + 16);
        v112 = *(v102 + 24);
        swift_unknownObjectRetain();

        v41 = v197;
        v52 = v198;
        v53 = v201;
        if (v113)
        {
          swift_getObjectType();
          v114 = dispatch thunk of Actor.unownedExecutor.getter();
          v116 = v115;
          swift_unknownObjectRelease();
        }

        else
        {
          v114 = 0;
          v116 = 0;
        }

        v6 = v217;
        sub_100002CE0(v192, &qword_1005A9690, &qword_1004C2A00);
        v117 = swift_allocObject();
        *(v117 + 16) = &unk_1004D0760;
        *(v117 + 24) = v102;
        if (v116 | v114)
        {
          v207 = 0;
          v208 = 0;
          v209 = v114;
          v210 = v116;
        }

        v51 = v206;
        swift_task_create();

        (*v170)(v196, v179);
        (*v172)(v202, v204);
        (*v203)(v52, v41);
      }

LABEL_5:
      v51 = v200 + v51;
      if (!--v48)
      {
        break;
      }

      v205(v52, v51, v41);
    }
  }

  v118 = v184;
  if (v184 >> 62)
  {
    goto LABEL_84;
  }

  v119 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
  if (v119)
  {
    v120 = 0;
    v203 = (v118 & 0xC000000000000001);
    v197 = v118 & 0xFFFFFFFFFFFFFF8;
    v200 = (v161 + 16);
    v201 = (v161 + 8);
    v198 = (v160 + 8);
    *&v46 = 136446210;
    v196 = v46;
    v202 = v119;
    while (1)
    {
      if (v203)
      {
        v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v122 = (v120 + 1);
        if (__OFADD__(v120, 1))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v120 >= *(v197 + 16))
        {
          goto LABEL_83;
        }

        v123 = *(v118 + 8 * v120 + 32);
        v122 = (v120 + 1);
        if (__OFADD__(v120, 1))
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          v119 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_43;
        }
      }

      v206 = v123;
      v124 = CKRecord.recordType.getter();
      v126 = v125;

      v127._countAndFlagsBits = v124;
      v127._object = v126;
      v128 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v127);

      if (!v128)
      {
        break;
      }

      if (v128 == 1)
      {

        v130 = v189;
        if (qword_1005A8008 != -1)
        {
          swift_once();
        }

        v131 = 1;
        v132 = qword_1005DFD20;
LABEL_63:
        v133 = v177;
        v134 = v206;
        v135 = v194;
        v136 = sub_10000A6F0(v194, v132);
        (*v200)(v133, v136, v135);
        sub_1001C8B1C(v131, v133, v134, v130);
        if (v6)
        {
          (*v201)(v133, v135);

          return;
        }

        (*v201)(v133, v135);
        Connection.run(_:)();
        v204 = v120;
        v205 = v122;
        v217 = 0;
        v137 = type metadata accessor for TaskPriority();
        v138 = *(v137 - 8);
        v139 = v188;
        (*(v138 + 56))(v188, 1, 1, v137);
        v140 = sub_1001CC028(&qword_1005AF4B0, type metadata accessor for CloudStorageStore);
        v141 = swift_allocObject();
        v142 = v199;
        *(v141 + 16) = v199;
        *(v141 + 24) = v140;
        *(v141 + 32) = v131;
        v143 = v206;
        *(v141 + 40) = v206;
        *(v141 + 48) = v142;
        *(v141 + 56) = v167;
        v144 = v139;
        v145 = v166;
        sub_100005F04(v144, v166, &qword_1005A9690, &qword_1004C2A00);
        LODWORD(v140) = (*(v138 + 48))(v145, 1, v137);
        swift_retain_n();
        v146 = v143;

        v206 = v146;
        if (v140 == 1)
        {
          sub_100002CE0(v145, &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v138 + 8))(v145, v137);
        }

        v120 = v204;
        v148 = *(v141 + 16);
        v149 = *(v141 + 24);
        swift_unknownObjectRetain();

        if (v148)
        {
          swift_getObjectType();
          v150 = dispatch thunk of Actor.unownedExecutor.getter();
          v152 = v151;
          swift_unknownObjectRelease();
        }

        else
        {
          v150 = 0;
          v152 = 0;
        }

        v118 = v184;
        sub_100002CE0(v188, &qword_1005A9690, &qword_1004C2A00);
        v153 = swift_allocObject();
        *(v153 + 16) = &unk_1004D0748;
        *(v153 + 24) = v141;
        if (v152 | v150)
        {
          v211 = 0;
          v212 = 0;
          v213 = v150;
          v214 = v152;
        }

        v6 = v217;
        v121 = v189;
        v122 = v205;
        swift_task_create();

        (*v198)(v121, v173);
        goto LABEL_47;
      }

      v215 = v124;
      v216 = v126;
      __chkstk_darwin(v129);
      *(&v160 - 2) = &v215;
      v147 = sub_1001B94DC(sub_1001CD98C, (&v160 - 4), &off_10058BAC0);
      sub_10007C2B8(&unk_10058BAE0);
      if (v147)
      {

        v118 = v184;
        goto LABEL_48;
      }

      if (qword_1005A8080 != -1)
      {
        swift_once();
      }

      v154 = type metadata accessor for Logger();
      sub_10000A6F0(v154, qword_1005DFEB0);

      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v217 = v6;
        v159 = v158;
        v215 = v158;
        *v157 = v196;
        *(v157 + 4) = sub_10000D01C(v124, v126, &v215);
        _os_log_impl(&_mh_execute_header, v155, v156, "Unable to find table for %{public}s", v157, 0xCu);
        sub_100004984(v159);
        v6 = v217;
      }

      v118 = v184;
LABEL_47:
      v119 = v202;
LABEL_48:
      ++v120;
      if (v122 == v119)
      {
        return;
      }
    }

    if (qword_1005A8000 != -1)
    {
      swift_once();
    }

    v131 = 0;
    v132 = qword_1005DFD08;
    v130 = v189;
    goto LABEL_63;
  }
}

uint64_t sub_1001C8834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v8 = type metadata accessor for CloudStorageStore.State(0);
  *(v6 + 32) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_1001C88D0, a4, 0);
}

uint64_t sub_1001C88D0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 56);
  v5 = *(sub_10004B564(&qword_1005AF4B8, &qword_1004D0770) + 48);
  *v2 = v4 & 1;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(&v2[v5], v3, v6);
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1001C89F0;
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);

  return sub_1001C5040(v8);
}

uint64_t sub_1001C89F0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  sub_1001CCAA4(v2, type metadata accessor for CloudStorageStore.State);

  v3 = *(v5 + 8);

  return v3();
}

void sub_1001C8B1C(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v134 = a4;
  v135 = a2;
  v7 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v133 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v125 - v11;
  v144 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  v142 = *(v144 - 8);
  v13 = *(v142 + 64);
  v14 = __chkstk_darwin(v144);
  v138 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v137 = &v125 - v16;
  v143 = type metadata accessor for FriendSharedSecretsRecord();
  v17 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v19 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OnConflict();
  v140 = *(v20 - 8);
  v141 = v20;
  v21 = *(v140 + 64);
  v22 = __chkstk_darwin(v20);
  v139 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v132 = &v125 - v24;
  v25 = type metadata accessor for Fence.Schedule();
  v130 = *(v25 - 8);
  v131 = v25;
  v26 = *(v130 + 64);
  __chkstk_darwin(v25);
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v125 - v31;
  v136 = type metadata accessor for FenceRecord();
  v33 = *(*(v136 - 1) + 64);
  __chkstk_darwin(v136);
  v35 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  if (a1)
  {
    sub_1001B0C60(v36, v19);
    if (v4)
    {
      return;
    }

    v129 = 0;
    (*(v140 + 104))(v139, enum case for OnConflict.replace(_:), v141);
    sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
    v37 = *(type metadata accessor for Setter() - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1004C2300;
    v131 = v40;
    v41 = (v40 + v39);
    if (qword_1005A8010 != -1)
    {
      swift_once();
    }

    v42 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v42, qword_1005DFD38);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    v44 = v142;
    v43 = v143;
    if (qword_1005A8048 != -1)
    {
      swift_once();
    }

    v45 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
    sub_10000A6F0(v45, qword_1005DFDE0);
    LOBYTE(v154[0]) = v19[*(v43 + 20)];
    sub_1001B921C();
    v136 = v41;
    v132 = v38;
    <- infix<A>(_:_:)();
    if (qword_1005A8050 != -1)
    {
      swift_once();
    }

    v46 = v144;
    v47 = sub_10000A6F0(v144, qword_1005DFDF8);
    v127 = *(v44 + 16);
    v127(v137, v47, v46);
    sub_100005F04(&v19[*(v43 + 24)], v12, &qword_1005AEB98, &unk_1004D07C0);
    v48 = type metadata accessor for SharedSecretKey();
    v49 = *(v48 - 8);
    v126 = *(v49 + 48);
    v50 = v126(v12, 1, v48);
    v128 = v19;
    v130 = v49;
    if (v50 == 1)
    {
      sub_100002CE0(v12, &qword_1005AEB98, &unk_1004D07C0);
      v51 = 0;
      v52 = 0xF000000000000000;
    }

    else
    {
      v51 = SharedSecretKey.data.getter();
      v52 = v75;
      (*(v49 + 8))(v12, v48);
    }

    *&v154[0] = v51;
    *(&v154[0] + 1) = v52;
    v76 = v137;
    <- infix<A>(_:_:)();
    sub_10001A794(*&v154[0], *(&v154[0] + 1));
    v77 = *(v44 + 8);
    v142 = v44 + 8;
    v137 = v77;
    (v77)(v76, v144);
    if (qword_1005A8058 != -1)
    {
      swift_once();
    }

    v125 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
    sub_10000A6F0(v125, qword_1005DFE10);
    v78 = v143;
    v79 = *(v143 + 28);
    type metadata accessor for Date();
    v35 = v128;
    <- infix<A>(_:_:)();
    if (qword_1005A8060 != -1)
    {
      swift_once();
    }

    v80 = v144;
    v81 = sub_10000A6F0(v144, qword_1005DFE28);
    v127(v138, v81, v80);
    v82 = v133;
    sub_100005F04(&v35[*(v78 + 32)], v133, &qword_1005AEB98, &unk_1004D07C0);
    v83 = v126(v82, 1, v48);
    v84 = v130;
    if (v83 == 1)
    {
      sub_100002CE0(v82, &qword_1005AEB98, &unk_1004D07C0);
      v85 = 0;
      v86 = 0xF000000000000000;
    }

    else
    {
      v85 = SharedSecretKey.data.getter();
      v86 = v87;
      (*(v84 + 8))(v82, v48);
    }

    *&v154[0] = v85;
    *(&v154[0] + 1) = v86;
    v88 = v138;
    <- infix<A>(_:_:)();
    sub_10001A794(*&v154[0], *(&v154[0] + 1));
    (v137)(v88, v144);
    v89 = v143;
    if (qword_1005A8068 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v125, qword_1005DFE40);
    v90 = &v35[*(v89 + 36)];
    <- infix<A>(_:_:)();
    type metadata accessor for Table();
    v91 = v139;
    QueryType.insert(or:_:)();

    (*(v140 + 8))(v91, v141);
    v92 = type metadata accessor for FriendSharedSecretsRecord;
    goto LABEL_25;
  }

  sub_1001A2D68(v36, v35);
  if (v4)
  {
    return;
  }

  v53 = objc_opt_self();
  v54 = v136;
  v55 = *&v35[v136[6]];
  *&v154[0] = 0;
  v56 = [v53 archivedDataWithRootObject:v55 requiringSecureCoding:1 error:v154];
  if (!v56)
  {
    v95 = *&v154[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001CCAA4(v35, type metadata accessor for FenceRecord);
    return;
  }

  v57 = v56;
  v58 = *&v154[0];
  v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v62 = type metadata accessor for PropertyListEncoder();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = PropertyListEncoder.init()();
  v66 = &v35[v54[10]];
  v67 = *(v66 + 3);
  v68 = *(v66 + 1);
  v155 = *(v66 + 2);
  v156 = v67;
  v69 = *(v66 + 3);
  v70 = *(v66 + 5);
  v157 = *(v66 + 4);
  v158 = v70;
  v71 = *(v66 + 1);
  v154[0] = *v66;
  v154[1] = v71;
  v150 = v155;
  v151 = v69;
  v72 = *(v66 + 5);
  v152 = v157;
  v153 = v72;
  v148 = v154[0];
  v149 = v68;
  sub_1001A6A68(v154, v147);
  sub_1001CD178();
  v73 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v129 = 0;
  v139 = v73;
  v96 = v74;
  v142 = v59;
  v147[2] = v150;
  v147[3] = v151;
  v147[4] = v152;
  v147[5] = v153;
  v147[0] = v148;
  v147[1] = v149;
  sub_1001A6AA0(v147);
  sub_100005F04(&v35[v54[8]], v32, &qword_1005AE5C0, &unk_1004D06D0);
  v98 = v130;
  v97 = v131;
  v99 = (*(v130 + 48))(v32, 1, v131);
  v143 = v35;
  if (v99 == 1)
  {
    v137 = v96;
    v133 = 0;
    v128 = 0xF000000000000000;
    v100 = v61;
LABEL_34:
    v131 = v65;
    (*(v140 + 104))(v132, enum case for OnConflict.replace(_:), v141);
    sub_10004B564(&qword_1005AF4F0, &qword_1004D07D0);
    v105 = *(type metadata accessor for Setter() - 8);
    v106 = *(v105 + 72);
    v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    *(swift_allocObject() + 16) = xmmword_1004C0BE0;
    if (qword_1005A8010 != -1)
    {
      swift_once();
    }

    v108 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    sub_10000A6F0(v108, qword_1005DFD38);
    type metadata accessor for UUID();
    v109 = v143;
    <- infix<A>(_:_:)();
    v110 = v142;
    if (qword_1005A8018 != -1)
    {
      swift_once();
    }

    v111 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
    sub_10000A6F0(v111, qword_1005DFD50);
    v112 = (v109 + v136[5]);
    v113 = v112[1];
    v145 = *v112;
    v146 = v113;

    <- infix<A>(_:_:)();

    if (qword_1005A8020 != -1)
    {
      swift_once();
    }

    v114 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
    sub_10000A6F0(v114, qword_1005DFD68);
    v145 = v110;
    v146 = v100;
    <- infix<A>(_:_:)();
    if (qword_1005A8028 != -1)
    {
      swift_once();
    }

    v138 = v100;
    v115 = sub_10004B564(&qword_1005AF058, &unk_1004D0250);
    sub_10000A6F0(v115, qword_1005DFD80);
    v116 = v136;
    v145 = *(v143 + v136[7]);
    <- infix<A>(_:_:)();
    if (qword_1005A8030 != -1)
    {
      swift_once();
    }

    v117 = sub_10004B564(&qword_1005AF048, &qword_1004D06F0);
    sub_10000A6F0(v117, qword_1005DFD98);
    v118 = v116[9];
    type metadata accessor for Date();
    <- infix<A>(_:_:)();
    if (qword_1005A8038 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v114, qword_1005DFDB0);
    v119 = v139;
    v120 = v137;
    v145 = v139;
    v146 = v137;
    <- infix<A>(_:_:)();
    v121 = v138;
    if (qword_1005A8040 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v144, qword_1005DFDC8);
    v122 = v133;
    v123 = v128;
    v145 = v133;
    v146 = v128;
    <- infix<A>(_:_:)();
    type metadata accessor for Table();
    v124 = v132;
    QueryType.insert(or:_:)();

    sub_1000049D0(v119, v120);
    sub_1000049D0(v142, v121);

    sub_10001A794(v122, v123);
    (*(v140 + 8))(v124, v141);
    v93 = type metadata accessor for FenceRecord;
    v94 = v143;
    goto LABEL_26;
  }

  (*(v98 + 32))(v28, v32, v97);
  sub_1001CC028(&qword_1005AF500, &type metadata accessor for Fence.Schedule);
  v101 = v129;
  v102 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v129 = v101;
  v104 = v98;
  v100 = v61;
  if (!v101)
  {
    v128 = v103;
    v133 = v102;
    v137 = v96;
    (*(v104 + 8))(v28, v97);
    goto LABEL_34;
  }

  (*(v104 + 8))(v28, v97);

  sub_1000049D0(v139, v96);
  sub_1000049D0(v142, v61);
  v92 = type metadata accessor for FenceRecord;
LABEL_25:
  v93 = v92;
  v94 = v35;
LABEL_26:
  sub_1001CCAA4(v94, v93);
}

uint64_t sub_1001C9C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 352) = a4;
  v8 = type metadata accessor for CloudStorageStore.State(0);
  *(v6 + 232) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 240) = swift_task_alloc();
  v10 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v11 = type metadata accessor for FriendSharedSecretsRecord();
  *(v6 + 256) = v11;
  v12 = *(v11 - 8);
  *(v6 + 264) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005AE720, &qword_1004CA2F0) - 8) + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  v15 = type metadata accessor for FenceRecord();
  *(v6 + 288) = v15;
  v16 = *(v15 - 8);
  *(v6 + 296) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1001C9E4C, a6, 0);
}

uint64_t sub_1001C9E4C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 216);
  if (v1)
  {
    sub_1001B0C60(v2, *(v0 + 272));
    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    *v3 = v0;
    v3[1] = sub_1001CA648;
    v4 = *(v0 + 272);
    v5 = *(v0 + 248);
    v6 = *(v0 + 224);

    return sub_1001C4430(v5, v4);
  }

  else
  {
    sub_1001A2D68(v2, *(v0 + 304));
    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    *v8 = v0;
    v8[1] = sub_1001CA140;
    v9 = *(v0 + 304);
    v10 = *(v0 + 280);
    v11 = *(v0 + 224);

    return sub_1001C3C00(v10, v9);
  }
}

uint64_t sub_1001CA140()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_1001CAD48;
  }

  else
  {
    v6 = sub_1001CA26C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001CA26C()
{
  v29 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = (*(*(v0 + 296) + 48))(v2, 1, v1);
  v4 = *(v0 + 304);
  if (v3 == 1)
  {
    sub_1001CCAA4(*(v0 + 304), type metadata accessor for FenceRecord);
    sub_100002CE0(v2, &qword_1005AE720, &qword_1004CA2F0);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
  }

  else
  {
    *(v0 + 200) = v1;
    *(v0 + 208) = sub_1001CC028(&qword_1005AF238, type metadata accessor for FenceRecord);
    v5 = sub_10000331C((v0 + 176));
    sub_1001CCB04(v2, v5, type metadata accessor for FenceRecord);
    sub_1001CCAA4(v4, type metadata accessor for FenceRecord);
  }

  v6 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 208);
  sub_100005F04(v0 + 16, v0 + 136, &qword_1005AF4E0, &qword_1004D07B0);
  if (*(v0 + 160))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 240);
    sub_100010BD4((v0 + 136), v0 + 96);
    sub_100011004(v0 + 96, v8);
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    *v9 = v0;
    v9[1] = sub_1001CAB58;
    v10 = *(v0 + 240);
    v11 = *(v0 + 224);

    return sub_1001C5040(v10);
  }

  else
  {
    sub_100002CE0(v0 + 136, &qword_1005AF4E0, &qword_1004D07B0);
    if (qword_1005A8080 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFEB0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 352);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      if (v16)
      {
        v19 = 0xD000000000000014;
      }

      else
      {
        v19 = 0x65636E65662ELL;
      }

      if (v16)
      {
        v20 = 0x80000001004E4E20;
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      v21 = sub_10000D01C(v19, v20, &v28);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to convert %s to CloudBacked!", v17, 0xCu);
      sub_100004984(v18);
    }

    sub_100002CE0(v0 + 16, &qword_1005AF4E0, &qword_1004D07B0);
    v22 = *(v0 + 304);
    v23 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1001CA648()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_1001CAF34;
  }

  else
  {
    v6 = sub_1001CA774;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001CA774()
{
  v29 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  v3 = (*(*(v0 + 264) + 48))(v2, 1, v1);
  v4 = *(v0 + 272);
  if (v3 == 1)
  {
    sub_1001CCAA4(*(v0 + 272), type metadata accessor for FriendSharedSecretsRecord);
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  else
  {
    *(v0 + 80) = v1;
    *(v0 + 88) = sub_1001CC028(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
    v5 = sub_10000331C((v0 + 56));
    sub_1001CCB04(v2, v5, type metadata accessor for FriendSharedSecretsRecord);
    sub_1001CCAA4(v4, type metadata accessor for FriendSharedSecretsRecord);
  }

  v6 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 88);
  sub_100005F04(v0 + 16, v0 + 136, &qword_1005AF4E0, &qword_1004D07B0);
  if (*(v0 + 160))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 240);
    sub_100010BD4((v0 + 136), v0 + 96);
    sub_100011004(v0 + 96, v8);
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    *v9 = v0;
    v9[1] = sub_1001CAB58;
    v10 = *(v0 + 240);
    v11 = *(v0 + 224);

    return sub_1001C5040(v10);
  }

  else
  {
    sub_100002CE0(v0 + 136, &qword_1005AF4E0, &qword_1004D07B0);
    if (qword_1005A8080 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFEB0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 352);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      if (v16)
      {
        v19 = 0xD000000000000014;
      }

      else
      {
        v19 = 0x65636E65662ELL;
      }

      if (v16)
      {
        v20 = 0x80000001004E4E20;
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      v21 = sub_10000D01C(v19, v20, &v28);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to convert %s to CloudBacked!", v17, 0xCu);
      sub_100004984(v18);
    }

    sub_100002CE0(v0 + 16, &qword_1005AF4E0, &qword_1004D07B0);
    v22 = *(v0 + 304);
    v23 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1001CAB58()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 224);
  v5 = *v0;

  sub_1001CCAA4(v2, type metadata accessor for CloudStorageStore.State);

  return _swift_task_switch(sub_1001CAC98, v3, 0);
}

uint64_t sub_1001CAC98()
{
  sub_100004984(v0 + 12);
  sub_100002CE0((v0 + 2), &qword_1005AF4E0, &qword_1004D07B0);
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[30];
  v4 = v0[31];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001CAD48()
{
  sub_1001CCAA4(v0[38], type metadata accessor for FenceRecord);
  v1 = v0[40];
  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFEB0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to update modifiedRecord: %@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v8 = v0[38];
  v9 = v0[34];
  v10 = v0[35];
  v12 = v0[30];
  v11 = v0[31];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001CAF34()
{
  sub_1001CCAA4(v0[34], type metadata accessor for FriendSharedSecretsRecord);
  v1 = v0[42];
  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFEB0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to update modifiedRecord: %@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v8 = v0[38];
  v9 = v0[34];
  v10 = v0[35];
  v12 = v0[30];
  v11 = v0[31];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001CB120()
{
  v1 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1001CB1E8;

  return daemon.getter();
}

uint64_t sub_1001CB1E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FenceService(0);
  v9 = sub_1001CC028(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001CC028(&qword_1005A9278, type metadata accessor for FenceService);
  *v6 = v12;
  v6[1] = sub_1001CB3C4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001CB3C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1001CB6B0;
    v8 = 0;
  }

  else
  {
    v9 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1001CB500;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1001CB500()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1001CC028(&qword_1005AF4A8, type metadata accessor for FenceService);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_10020D620(0, 0, v2, &unk_1004D0730, v5);

  return _swift_task_switch(sub_1001CB640, 0, 0);
}

uint64_t sub_1001CB640()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001CB6B0()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_1001CB740()
{
  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFEB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purging DB", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 112);
  *(v0 + 24) = v6;

  return _swift_task_switch(sub_1001CB864, v6, 0);
}

uint64_t sub_1001CB864()
{
  v1 = *(v0 + 24);
  type metadata accessor for CloudStorageDatabase();
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase);
  Database.purge()();
  v2 = *(v0 + 8);

  return v2();
}

double sub_1001CB928@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CKRecord.recordType.getter();
  v6 = v5;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = _findStringSwitchCase(cases:string:)(&off_10058BA70, v7);

  if (!v8)
  {
    v9 = type metadata accessor for FenceRecord();
    v10 = &qword_1005AF238;
    v11 = type metadata accessor for FenceRecord;
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    v9 = type metadata accessor for FriendSharedSecretsRecord();
    v10 = &unk_1005AF498;
    v11 = type metadata accessor for FriendSharedSecretsRecord;
LABEL_5:
    v12 = sub_1001CC028(v10, v11);
    *(a2 + 24) = v9;
    *(a2 + 32) = v12;
    sub_10000331C(a2);
    v13 = a1;
    dispatch thunk of CloudBacked.init(ckRecord:)();
    return result;
  }

  if (qword_1005A8080 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005DFEB0);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136446210;
    v21 = CKRecord.recordType.getter();
    v23 = sub_10000D01C(v21, v22, &v24);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unexpected recordType: %{public}s", v19, 0xCu);
    sub_100004984(v20);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1001CBBAC()
{
  if (qword_1005A8088 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1001CBC48()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t sub_1001CBC78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1001C6884(a1);
}

uint64_t sub_1001CBD0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1001CD1CC(a1, a2);
}

uint64_t sub_1001CBDC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1001C2F40(a1, a2, 1);
}

uint64_t sub_1001CBE8C()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_1001CBEB0, v1, 0);
}

uint64_t sub_1001CBEB0()
{
  v1 = *(v0 + 24);
  type metadata accessor for CloudStorageDatabase();
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase);
  Database.startup()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001CBF74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1001CB720();
}

uint64_t sub_1001CC028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CC070()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFED0);
  sub_10000A6F0(v0, qword_1005DFED0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001CC0F0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001CC148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v49 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = type metadata accessor for CloudStorageStore.State(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = (&v49 - v22);
  v24 = sub_10004B564(&qword_1005AF4D8, &qword_1004D0798);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v49 - v27;
  v29 = (&v49 + *(v26 + 56) - v27);
  sub_1001CC9DC(a1, &v49 - v27);
  sub_1001CC9DC(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001CC9DC(v28, v23);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100010BD4(v23, v54);
      sub_100010BD4(v29, v53);
      sub_100011AEC(v54, v54[3]);
      dispatch thunk of CloudBacked.id.getter();
      sub_100011AEC(v53, v53[3]);
      dispatch thunk of CloudBacked.id.getter();
      v44 = static UUID.== infix(_:_:)();
      v45 = v51;
      v46 = *(v52 + 8);
      v46(v14, v51);
      v46(v16, v45);
      sub_100004984(v53);
      sub_100004984(v54);
LABEL_32:
      sub_1001CCAA4(v28, type metadata accessor for CloudStorageStore.State);
      return v44 & 1;
    }

    sub_100004984(v23);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1001CC9DC(v28, v21);
    v31 = *(sub_10004B564(&qword_1005AF4B8, &qword_1004D0770) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *v21;
      v33 = *v29;
      v34 = v51;
      v35 = *(v52 + 32);
      v35(v11, &v21[v31], v51);
      v36 = v29 + v31;
      v37 = v50;
      v35(v50, v36, v34);
      if (v32)
      {
        v38 = 0xD000000000000019;
      }

      else
      {
        v38 = 0x65636E6546;
      }

      if (v32)
      {
        v39 = 0x80000001004DE3E0;
      }

      else
      {
        v39 = 0xE500000000000000;
      }

      if (v33)
      {
        v40 = 0xD000000000000019;
      }

      else
      {
        v40 = 0x65636E6546;
      }

      if (v33)
      {
        v41 = 0x80000001004DE3E0;
      }

      else
      {
        v41 = 0xE500000000000000;
      }

      if (v38 == v40 && v39 == v41)
      {
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v44 = 0;
        if ((v43 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v44 = static UUID.== infix(_:_:)();
LABEL_31:
      v47 = *(v52 + 8);
      v47(v37, v34);
      v47(v11, v34);
      goto LABEL_32;
    }

    (*(v52 + 8))(&v21[v31], v51);
    goto LABEL_27;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_27:
    sub_100002CE0(v28, &qword_1005AF4D8, &qword_1004D0798);
    v44 = 0;
    return v44 & 1;
  }

  sub_1001CCAA4(v28, type metadata accessor for CloudStorageStore.State);
  v44 = 1;
  return v44 & 1;
}

unint64_t sub_1001CC610()
{
  result = qword_1005AF480;
  if (!qword_1005AF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF480);
  }

  return result;
}

unint64_t sub_1001CC664()
{
  result = qword_1005AF488;
  if (!qword_1005AF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF488);
  }

  return result;
}

uint64_t sub_1001CC6F8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_1001CB120();
}

uint64_t sub_1001CC7A4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001CC7FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100003690;

  return sub_1001C9C88(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001CC8D4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_1001C8834(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1001CC9DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudStorageStore.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CCA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudStorageStore.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CCAA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CCB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CCB6C()
{
  v0 = type metadata accessor for FriendSharedSecretsRecord();
  v60 = *(v0 - 8);
  v1 = *(v60 + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v59 = (v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v5 = v51 - v4;
  v6 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v51 - v11;
  v13 = type metadata accessor for Row();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v51 - v19;
  __chkstk_darwin(v18);
  v22 = v51 - v21;
  v23 = v61;
  result = Connection.prepare(_:)();
  if (!v23)
  {
    v57 = v17;
    v58 = v13;
    v52 = v20;
    v53 = v22;
    v54 = v12;
    v51[0] = v5;
    v25 = result;

    v26 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_10023952C(0, v26 & ~(v26 >> 63), 0);
    v27 = v62;
    v51[1] = v25;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v61 = result;
    if (v26 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    if (v26)
    {
      v28 = (v55 + 48);
      v29 = (v55 + 16);
      v56 = (v55 + 8);
      v30 = v58;
      while (1)
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v28)(v10, 1, v30);
        if (result == 1)
        {
          goto LABEL_19;
        }

        v31 = v57;
        (*v29)(v57, v10, v30);
        v32 = v59;
        sub_1001C5EE4(v31, v59);
        (*v56)(v10, v30);
        v62 = v27;
        v34 = v27[2];
        v33 = v27[3];
        if (v34 >= v33 >> 1)
        {
          sub_10023952C(v33 > 1, v34 + 1, 1);
          v32 = v59;
          v27 = v62;
        }

        v27[2] = v34 + 1;
        sub_1001CCB04(v32, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v34, type metadata accessor for FriendSharedSecretsRecord);
        --v26;
        v30 = v58;
        if (!v26)
        {
          goto LABEL_11;
        }
      }
    }

    v30 = v58;
LABEL_11:
    v35 = v54;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v36 = v35;
    v37 = v55;
    v59 = *(v55 + 48);
    if ((v59)(v35, 1, v30) != 1)
    {
      v39 = *(v37 + 32);
      v38 = v37 + 32;
      v58 = v39;
      v40 = (v38 - 16);
      v55 = v38;
      v41 = (v38 - 24);
      v42 = v51[0];
      do
      {
        v43 = v53;
        v58(v53, v36, v30);
        v44 = v52;
        (*v40)(v52, v43, v30);
        sub_1001C5EE4(v44, v42);
        v45 = v42;
        (*v41)(v43, v30);
        v62 = v27;
        v46 = v30;
        v48 = v27[2];
        v47 = v27[3];
        if (v48 >= v47 >> 1)
        {
          sub_10023952C(v47 > 1, v48 + 1, 1);
          v45 = v51[0];
          v27 = v62;
        }

        v27[2] = v48 + 1;
        sub_1001CCB04(v45, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v48, type metadata accessor for FriendSharedSecretsRecord);
        v49 = v54;
        v42 = v45;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v36 = v49;
        v50 = (v59)(v49, 1, v46);
        v30 = v46;
      }

      while (v50 != 1);
    }

    sub_100002CE0(v36, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005AF4E8, &qword_1004D07B8);
    result = swift_allocObject();
    *(result + 16) = v27;
  }

  return result;
}

unint64_t sub_1001CD178()
{
  result = qword_1005AF4F8;
  if (!qword_1005AF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF4F8);
  }

  return result;
}

uint64_t sub_1001CD1CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10004B564(&qword_1005AF508, &unk_1004D07E0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = type metadata accessor for CloudKitCoordinator.Deletion();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001CD2D8, v2, 0);
}

uint64_t sub_1001CD2D8()
{
  v1 = v0[2];
  v2 = CloudKitChangeSet.recordIDsToDelete.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[9];
    v45 = v0[5];
    sub_100239570(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v2 + 64;
    v7 = -1 << *(v2 + 32);
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v11 = *(v2 + 36);
    v46 = v4;
    v44 = v0;
    v39 = v2 + 72;
    v40 = v3;
    v41 = v11;
    v42 = v2 + 64;
    v43 = v2;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v2 + 32))
    {
      v14 = v9 >> 6;
      if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (v11 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v47 = v10;
      v15 = *(v45 + 48);
      v48 = v0[10];
      v49 = v5;
      v17 = v0[6];
      v16 = v0[7];
      v18 = *(v2 + 56);
      v19 = *(*(v2 + 48) + 8 * v9);
      v20 = type metadata accessor for CloudKitChangeSet.TombstoneInfo();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v16 + v15, v18 + *(v21 + 72) * v9, v20);
      *v17 = v19;
      (*(v21 + 32))(&v17[*(v45 + 48)], v16 + v15, v20);
      v22 = v19;
      CloudKitChangeSet.TombstoneInfo.recordType.getter();
      v23 = v22;
      v5 = v49;
      CloudKitCoordinator.Deletion.init(recordType:recordID:)();
      sub_100002CE0(v17, &qword_1005AF508, &unk_1004D07E0);
      v25 = v49[2];
      v24 = v49[3];
      if (v25 >= v24 >> 1)
      {
        sub_100239570(v24 > 1, v25 + 1, 1);
        v5 = v49;
      }

      v0 = v44;
      v26 = v44[10];
      v27 = v44[8];
      v5[2] = v25 + 1;
      result = (*(v46 + 32))(v5 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v25, v26, v27);
      v2 = v43;
      v12 = 1 << *(v43 + 32);
      if (v9 >= v12)
      {
        goto LABEL_28;
      }

      v6 = v42;
      v28 = *(v42 + 8 * v14);
      if ((v28 & (1 << v9)) == 0)
      {
        goto LABEL_29;
      }

      v11 = v41;
      if (v41 != *(v43 + 36))
      {
        goto LABEL_30;
      }

      v29 = v28 & (-2 << (v9 & 0x3F));
      if (v29)
      {
        v12 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v13 = v40;
      }

      else
      {
        v30 = v14 << 6;
        v13 = v40;
        v31 = (v39 + 8 * v14);
        v32 = v14 + 1;
        while (v32 < (v12 + 63) >> 6)
        {
          v34 = *v31++;
          v33 = v34;
          v30 += 64;
          ++v32;
          if (v34)
          {
            result = sub_10002F14C(v9, v41, 0);
            v12 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v9, v41, 0);
      }

LABEL_4:
      v10 = v47 + 1;
      v9 = v12;
      if (v47 + 1 == v13)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
LABEL_22:
    v0[11] = v5;
    v35 = sub_1001C2CB4(v0[3]);
    v0[12] = v35;
    v36 = v35;
    v37 = swift_task_alloc();
    v0[13] = v37;
    *v37 = v0;
    v37[1] = sub_1001CD764;
    v38 = v0[4];

    return sub_1001C2F40(v5, v36, 1);
  }

  return result;
}

uint64_t sub_1001CD764()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1001CD890;
  }

  else
  {
    v6 = sub_1001CD988;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001CD890()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

unint64_t sub_1001CD934()
{
  result = qword_1005AF518;
  if (!qword_1005AF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF518);
  }

  return result;
}

uint64_t sub_1001CD9B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0x65636E6546;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0x80000001004DE3E0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0x65636E6546;
  }

  if (*a2)
  {
    v7 = 0x80000001004DE3E0;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001CDA60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001CDAE4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001CDB54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001CDBD4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BA70, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001CDC34(unint64_t *a1@<X8>)
{
  v2 = 0x80000001004DE3E0;
  v3 = 0x65636E6546;
  if (*v1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1001CDC84()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x65636E65662ELL;
  }

  *v0;
  return result;
}

unint64_t sub_1001CDCC4()
{
  result = qword_1005AF520;
  if (!qword_1005AF520)
  {
    sub_10004B610(&qword_1005AF528, qword_1004D08E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF520);
  }

  return result;
}

unint64_t sub_1001CDD2C()
{
  result = qword_1005AF530;
  if (!qword_1005AF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF530);
  }

  return result;
}

unint64_t sub_1001CDD94()
{
  result = qword_1005AF538;
  if (!qword_1005AF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AF538);
  }

  return result;
}

void sub_1001CDE70()
{
  sub_1000F8F5C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Credentials.FindMyLocateProperties(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Credentials.SecureLocationsProperties(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001CDF2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001CDF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001CE030()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001CE0D4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001CE140(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  Properties = type metadata accessor for Credentials.FindMyLocateProperties(0);
  v14 = *(*(Properties - 8) + 64);
  __chkstk_darwin(Properties - 8);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a2 aa_personID];
  if (v17)
  {
    v45 = v12;
    v50 = a3;
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *a4 = v19;
    a4[1] = v21;
    v46 = v21;
    v22 = [a2 aa_authToken];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    a4[2] = v24;
    a4[3] = v26;
    v30 = a1;
    v31 = a2;
    v32 = sub_1001CF09C(v30, v31);
    v29 = v32;
    v28 = v33;
    if (!v4)
    {
      v44[2] = v26;
      a4[4] = v32;
      a4[5] = v33;
      v35 = v30;
      v36 = v31;
      sub_1001CE4E0(v35, v36, &v47, v16);
      v37 = type metadata accessor for Credentials(0);
      sub_1001CF2A8(v16, a4 + v37[7], type metadata accessor for Credentials.FindMyLocateProperties);
      v38 = v35;
      v39 = v36;
      v40 = v45;
      sub_1001CE784(v38, v39, &v47, v45);
      v44[1] = 0;
      sub_1001CF2A8(v40, a4 + v37[8], type metadata accessor for Credentials.SecureLocationsProperties);
      v41 = sub_1001CF310(v38, v39);
      v42 = (a4 + v37[9]);
      *v42 = v41;
      v42[1] = v43;
      return;
    }

    v27 = v34;

    a3 = v50;
  }

  else
  {
    v48 = xmmword_1004D0A90;
    v27 = 2;
    v49 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    v28 = 0;
    v29 = 3;
  }

  *a3 = v29;
  *(a3 + 8) = v28;
  *(a3 + 16) = v27;
}

void sub_1001CE4E0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = type metadata accessor for URL();
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 dataclassProperties];
  v12 = 0x80000001004E4E80;
  if (!v11)
  {
    v25 = 0u;
    v26 = 0u;
LABEL_10:
    sub_100002CE0(&v25, &qword_1005A9680, &qword_1004C32A0);
    goto LABEL_11;
  }

  v13 = v11;
  *&v23 = 0xD000000000000020;
  *(&v23 + 1) = 0x80000001004E4E80;
  v14 = [v11 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_10;
  }

  sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v16 = 0xD000000000000020;
    *&v25 = 0xD000000000000020;
    *(&v25 + 1) = 0x80000001004E4E80;
    v17 = 1;
    LOBYTE(v26) = 1;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    goto LABEL_12;
  }

  v15 = v27;
  sub_1001CED5C(v23, 0x755F656C706F6570, 0xEA00000000006C72, v21, v10);
  if (!v15)
  {

    (*(v19 + 32))(v20, v10, v7);
    return;
  }

  v16 = v21[0];
  v12 = v21[1];
  v17 = v22;

LABEL_12:
  *a3 = v16;
  *(a3 + 8) = v12;
  *(a3 + 16) = v17;
}

void sub_1001CE784(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 credentialForAccount:a2];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 credentialItemForKey:ACSearchPartyTokenKey];
    if (v16)
    {
      v45 = v13;
      v34 = v10;
      v35 = v9;
      v17 = 0xD00000000000001FLL;
      v18 = v16;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [a2 dataclassProperties];
      if (v21)
      {
        v22 = v21;
        v37 = v4;
        v38 = a1;
        v33 = a4;
        v23 = 0x80000001004E4E40;
        *&v41 = 0xD00000000000001FLL;
        *(&v41 + 1) = 0x80000001004E4E40;
        v24 = [v21 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();

        if (v24)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
        }

        v26 = v37;
        a1 = v38;
        v27 = v20;
        v43 = v41;
        v44 = v42;
        v28 = v45;
        if (*(&v42 + 1))
        {
          sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
          if (swift_dynamicCast())
          {
            v29 = v41;
            v30 = v33;
            *v33 = v36;
            v30[1] = v27;
            v37 = v29;
            sub_1001CED5C(v29, 0xD000000000000019, 0x80000001004E4E60, v39, v28);
            if (!v26)
            {

              v31 = type metadata accessor for Credentials.SecureLocationsProperties(0);
              (*(v34 + 32))(v30 + *(v31 + 20), v28, v35);
              return;
            }

            v17 = v39[0];
            v23 = v39[1];
            v25 = v40;

            goto LABEL_18;
          }

LABEL_17:
          *&v43 = 0xD00000000000001FLL;
          *(&v43 + 1) = 0x80000001004E4E40;
          v25 = 1;
          LOBYTE(v44) = 1;
          sub_1000C7488();
          swift_willThrowTypedImpl();

LABEL_18:
          goto LABEL_19;
        }
      }

      else
      {

        v23 = 0x80000001004E4E40;
        v43 = 0u;
        v44 = 0u;
      }

      sub_100002CE0(&v43, &qword_1005A9680, &qword_1004C32A0);
      goto LABEL_17;
    }

    v43 = xmmword_1004D0AA0;
    v25 = 2;
    LOBYTE(v44) = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    v23 = 0;
    v17 = 8;
  }

  else
  {
    v43 = xmmword_1004D0AB0;
    v25 = 2;
    LOBYTE(v44) = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    v23 = 0;
    v17 = 7;
  }

LABEL_19:
  *a3 = v17;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25;
}