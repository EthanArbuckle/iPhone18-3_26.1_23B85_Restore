uint64_t sub_10007A980(uint64_t a1)
{
  result = sub_10007F45C(a1);
  if (v1)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v3, v4);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  return result;
}

void sub_10007AA08()
{
  v2 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  sub_100067878();
  if (v1)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v3, v4);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }
}

void *sub_10007AAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(v5 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  sub_100095F40(a1, a2, a3, a4, __src);
  if (!v6)
  {
    return memcpy(a5, __src, 0x68uLL);
  }

  type metadata accessor for Schema.RuntimeError();
  sub_100002B5C();
  sub_100084084(v9, v10);
  sub_100005244();
  swift_allocError();
  sub_100012058();
  sub_10001D5E0();
  swift_willThrow();
}

uint64_t sub_10007AC04(uint64_t a1, void (*a2)(uint64_t, void))
{
  a2(a1, *(v2 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection));
  sub_10008445C();
  if (v3)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v4, v5);
    sub_10001AB00();
    swift_allocError();
    sub_100006474();
    sub_10008451C();
    swift_willThrow();
  }

  return sub_10000C0C4();
}

uint64_t sub_10007ACD4(void (*a1)(void))
{
  a1(*(v1 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection));
  sub_10008445C();
  if (v2)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v3, v4);
    sub_10001AB00();
    swift_allocError();
    sub_100006474();
    sub_10008451C();
    swift_willThrow();
  }

  return sub_10000C0C4();
}

uint64_t sub_10007AD78(uint64_t a1)
{
  sub_10007AE20(v1, a1, &v6);
  if (!v2)
  {
    return v6;
  }

  type metadata accessor for Schema.RuntimeError();
  sub_100002B5C();
  sub_100084084(v3, v4);
  sub_100005244();
  swift_allocError();
  sub_100012058();
  sub_10001D5E0();
  swift_willThrow();
}

uint64_t sub_10007AE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Table.init(_:database:)(__src, 0x6769666E6F63, 0xE600000000000000, 0, 0);
  v5 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v6 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  ExpressionType.init(_:)(7955819, 0xE300000000000000, v5, v6);
  v7 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v8 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  ExpressionType.init(_:)(0x65756C6176, 0xE500000000000000, v7, v8);
  v9 = __dst[0];
  *&__dst[0] = a2;
  v10 = *(a1 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);

  v11 = == infix<A>(_:_:)();
  v13 = v12;
  v15 = v14;

  v28[0] = swift_allocObject();
  memcpy(__dst, __src, sizeof(__dst));
  QueryType.filter(_:)(v11, v13, v15, &type metadata for Table, &protocol witness table for Table, v16, v17, v18, v24, v9, a3, *(&v9 + 1), __dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), *&__dst[10], *(&__dst[10] + 1), v28[0], v28[1], v28[2], &type metadata for Table, &protocol witness table for Table, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6]);

  sub_10001970C(__src);
  v19 = __src[24];
  v20 = Connection.pluck(_:)(v28);
  if (v19)
  {

    return sub_1000034F8(v28);
  }

  else
  {
    v22 = v20;
    sub_1000034F8(v28);
    if (v22)
    {
      Row.get<A>(_:)();

      v23 = __dst[0];
    }

    else
    {

      v23 = xmmword_10014BC50;
    }

    *v26 = v23;
  }

  return result;
}

uint64_t sub_10007B13C()
{
  v1 = sub_10001AAC8();
  result = sub_10007B1D4(v1);
  if (v0)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v3, v4);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_10007B1D4(uint64_t a1)
{
  Table.init(_:database:)(__src, 0x6769666E6F63, 0xE600000000000000, 0, 0);
  v2 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v3 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  ExpressionType.init(_:)(7955819, 0xE300000000000000, v2, v3);
  v4 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v5 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  ExpressionType.init(_:)(0x65756C6176, 0xE500000000000000, v4, v5);
  v6 = *(a1 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  <- infix<A>(_:_:)();

  <- infix<A>(_:_:)();

  memcpy(__dst, __src, sizeof(__dst));
  v14 = QueryType.insert(or:_:)(AppIntents_SQLite_OnConflict_replace, inited);
  countAndFlagsBits = v14.template._countAndFlagsBits;
  object = v14.template._object;
  rawValue = v14.bindings._rawValue;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10001970C(__src);
  v15.template._countAndFlagsBits = countAndFlagsBits;
  v15.template._object = object;
  v15.bindings._rawValue = rawValue;
  Connection.run(_:)(v15);
}

uint64_t sub_10007B444()
{
  sub_1000036A0();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 152) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = type metadata accessor for Logger();
  *(v1 + 88) = v6;
  v7 = *(v6 - 8);
  *(v1 + 96) = v7;
  *(v1 + 104) = *(v7 + 64);
  *(v1 + 112) = swift_task_alloc();
  sub_100009990();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10007B50C()
{
  if (qword_100198200 != -1)
  {
    sub_100007F64();
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v19 = *(v0 + 152);
  v6 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v7 = sub_10000347C(v3, qword_10019DBF0);
  v20 = *&v5[OBJC_IVAR____TtC10LinkDaemon13MetadataStore_transactionManager];
  (*(v4 + 16))(v1, v7, v3);
  sub_100013334(v6, v0 + 16);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 120) = v11;
  (*(v4 + 32))(v11 + v8, v1, v3);
  sub_10001A798((v0 + 16), v11 + v9);
  v12 = (v11 + v10);
  *v12 = v17;
  v12[1] = v18;
  v13 = v11 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v5;
  *(v13 + 8) = v19;

  v14 = v5;
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_10007B6F4;

  return sub_100082334(&unk_10014F848, v11);
}

uint64_t sub_10007B6F4()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  v6 = *(v5 + 128);
  *v4 = *v1;
  v3[17] = v7;
  v3[18] = v0;

  v8 = v3[15];

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007B808()
{
  sub_1000070C8();
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
    swift_willThrow();
  }

  v2 = *(v0 + 112);

  sub_100003A00();

  return v3();
}

uint64_t sub_10007B878()
{
  sub_1000036A0();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  sub_100003A00();

  return v3();
}

uint64_t sub_10007B8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 376) = a6;
  *(v6 + 272) = a4;
  *(v6 + 280) = a5;
  *(v6 + 256) = a2;
  *(v6 + 264) = a3;
  *(v6 + 248) = a1;
  v7 = *(*(sub_10002EB80(&qword_10019BB70, &qword_10014F850) - 8) + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  v8 = type metadata accessor for LNBundleRecord();
  *(v6 + 296) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_10007B9B8, 0, 0);
}

uint64_t sub_10007B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  v15 = *(v14 + 248);
  sub_100013334(*(v14 + 256), v14 + 16);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (sub_100084504(v17))
  {
    v18 = sub_100007764();
    a10 = sub_1000056E4();
    *v18 = 136446210;
    v20 = *(v14 + 40);
    v19 = *(v14 + 48);
    sub_1000034B4((v14 + 16), v20);
    sub_1000039EC();
    v21(v20);
    sub_1000215C0();
    sub_1000034F8((v14 + 16));
    v22 = sub_100004890();
    sub_100004C50(v22, v20, v23);
    sub_10001E0E8();

    *(v18 + 4) = v19;
    sub_1000844E4(&_mh_execute_header, v24, v25, "→ Beginning indexing transaction for %{public}s");
    sub_1000034F8(a10);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8((v14 + 16));
  }

  v26 = *(v14 + 288);
  v27 = *(v14 + 256);
  *(v14 + 320) = *(*(v14 + 280) + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  v28 = v27[4];
  sub_1000034B4(v27, v27[3]);
  v29 = *(*(v28 + 8) + 8);

  v30 = sub_1000844D8();
  v29(v30);
  sub_100109F48();
  v46 = *(v14 + 288);
  v45 = *(v14 + 296);

  v47 = sub_1000032C4(v46, 1, v45);
  if (v47 == 1)
  {
    v48 = *(v14 + 248);
    v49 = *(v14 + 256);
    sub_100039B5C(*(v14 + 288), &qword_10019BB70, &qword_10014F850);
    sub_100013334(v49, v14 + 56);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (sub_10001283C(v51))
    {
      v52 = sub_100007764();
      v163 = sub_1000056E4();
      *v52 = 136446210;
      v53 = *(v14 + 80);
      sub_1000034B4((v14 + 56), v53);
      sub_1000039EC();
      v55 = v54(v53);
      v57 = v56;
      sub_1000034F8((v14 + 56));
      v58 = sub_100004890();
      sub_100004C50(v58, v57, v59);
      sub_1000248A8();

      *(v52 + 4) = v55;
      sub_1000026E4(&_mh_execute_header, v60, v61, "Bundle record %{public}s not found, creating");
      sub_1000034F8(v163);
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      sub_1000034F8((v14 + 56));
    }

    v91 = *(v14 + 296);
    v90 = *(v14 + 304);
    v92 = *(v14 + 256);
    v94 = v27[3];
    v93 = v27[4];
    v95 = sub_1000844D8();
    sub_1000034B4(v95, v96);
    sub_1000039EC();
    v98 = v97(v94);
    v100 = v99;
    v101 = v27[4];
    sub_1000034B4(v92, v27[3]);
    v102 = *(*(v101 + 8) + 16);
    v103 = v90 + v91[5];
    v104 = sub_1000248A8();
    v105(v104);
    v106 = v27[3];
    sub_1000034B4(v92, v106);
    sub_100019D40();
    v108 = v107(v106);
    v110 = v109;
    v111 = [objc_opt_self() latestMetadataVersion];
    *v90 = v98;
    v90[1] = v100;
    v112 = (v90 + v91[6]);
    *v112 = v108;
    v112[1] = v110;
    *(v90 + v91[7]) = 1;
    *(v90 + v91[8]) = v111;
    sub_100002B74();
    sub_10010A624();
    v126 = swift_task_alloc();
    *(v14 + 360) = v126;
    *v126 = v14;
    v126[1] = sub_10007C56C;
    v127 = *(v14 + 304);
    goto LABEL_25;
  }

  v62 = *(v14 + 312);
  v63 = *(v14 + 296);
  v64 = *(v14 + 256);
  sub_100084178(*(v14 + 288), v62, type metadata accessor for LNBundleRecord);
  v65 = v62 + *(v63 + 24);
  v66 = *v65;
  v67 = *(v65 + 8);
  v68 = v27[3];
  sub_1000034B4(v64, v68);
  sub_100019D40();
  v70 = v69(v68);
  v72 = v71;
  sub_1000844D8();
  LOBYTE(v66) = static Data.== infix(_:_:)();
  sub_100009B18(v70, v72);
  if ((v66 & 1) == 0)
  {
    v113 = *(v14 + 248);
    sub_100013334(*(v14 + 256), v14 + 96);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();
    if (sub_10001283C(v115))
    {
      v116 = sub_100007764();
      v164 = sub_1000056E4();
      *v116 = 136446210;
      v117 = *(v14 + 120);
      sub_1000034B4((v14 + 96), v117);
      sub_1000039EC();
      v119 = v118(v117);
      v121 = v120;
      sub_1000034F8((v14 + 96));
      v122 = sub_100004890();
      sub_100004C50(v122, v121, v123);
      sub_1000248A8();

      *(v116 + 4) = v119;
      sub_1000026E4(&_mh_execute_header, v124, v125, "%{public}s installIdentifier changed, indexing");
      sub_1000034F8(v164);
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      sub_1000034F8((v14 + 96));
    }

    v131 = *(v14 + 312);
    v132 = *(v14 + 296);
    v133 = v27[3];
    sub_1000034B4(*(v14 + 256), v133);
    sub_100019D40();
    v135 = v134(v133);
    v137 = v136;
    sub_100009B18(*v65, *(v65 + 8));
    *v65 = v135;
    *(v65 + 8) = v137;
    *(v131 + *(v132 + 28)) = 1;
    sub_100002B74();
    sub_10010A348();
    v129 = swift_task_alloc();
    *(v14 + 344) = v129;
    *v129 = v14;
    v130 = sub_10007C3D8;
LABEL_24:
    v129[1] = v130;
    v138 = *(v14 + 312);
LABEL_25:
    v139 = *(v14 + 264);
    v140 = *(v14 + 272);
    v141 = *(v14 + 248);
    v142 = *(v14 + 256);
    sub_10000783C();

    return sub_10007C8D0(v143, v144, v145, v146, v147, v148);
  }

  v73 = *(v14 + 312);
  v74 = *(v14 + 376);
  v75 = *(*(v14 + 296) + 28);
  v76 = *(v73 + v75);
  result = sub_10010ABE4();
  if (v76 < result || v74)
  {
    if (__OFADD__(v76, 1))
    {
      __break(1u);
      return result;
    }

    v128 = *(v14 + 312);
    *(v73 + v75) = v76 + 1;
    sub_10010A348();
    v129 = swift_task_alloc();
    *(v14 + 328) = v129;
    *v129 = v14;
    v130 = sub_10007C244;
    goto LABEL_24;
  }

  v77 = *(v14 + 248);
  sub_100013334(*(v14 + 256), v14 + 136);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (sub_10001283C(v79))
  {
    v80 = sub_100007764();
    a10 = sub_1000056E4();
    *v80 = 136446210;
    v81 = *(v14 + 160);
    sub_1000034B4((v14 + 136), v81);
    sub_1000039EC();
    v83 = v82(v81);
    v85 = v84;
    sub_1000034F8((v14 + 136));
    v86 = sub_100004890();
    sub_100004C50(v86, v85, v87);
    sub_1000248A8();

    *(v80 + 4) = v83;
    sub_1000026E4(&_mh_execute_header, v88, v89, "Bundle record %{public}s has failed indexing too frequently and has been blocked");
    sub_1000034F8(a10);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8((v14 + 136));
  }

  v150 = *(v14 + 312);
  v151 = *(v14 + 256);
  type metadata accessor for Schema.RuntimeError();
  sub_100002B5C();
  sub_100084084(v152, v153);
  sub_10001AB00();
  swift_allocError();
  v155 = v154;
  v157 = v27[3];
  v156 = v27[4];
  sub_1000034B4(v151, v157);
  v158 = *(*(v156 + 8) + 8);
  v159 = sub_1000248A8();
  *v155 = v160(v159);
  v155[1] = v161;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_1000071B4();
  sub_100083F2C(v150, v162);
  v31 = *(v14 + 304);
  v32 = *(v14 + 312);
  v33 = *(v14 + 288);
  v34 = *(v14 + 248);
  v35 = sub_1000034B4(*(v14 + 256), *(*(v14 + 256) + 24));
  sub_100083CC0(v34, v35);

  sub_100003A00();
  sub_10000783C();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10007C244()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v3 = v2;
  v2[22] = v1;
  v2[23] = v4;
  v2[24] = v0;
  v6 = *(v5 + 328);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v9 + 336) = v0;

  sub_100009990();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10007C348()
{
  sub_1000036C4();
  v2 = *(v1 + 184);
  sub_100027380();
  sub_1000071B4();
  sub_100083F2C(v0, v3);
  sub_100004B9C();

  v4 = sub_1000088B0();

  return v5(v4);
}

uint64_t sub_10007C3D8()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v3 = v2;
  v2[25] = v1;
  v2[26] = v4;
  v2[27] = v0;
  v6 = *(v5 + 344);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v9 + 352) = v0;

  sub_100009990();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10007C4DC()
{
  sub_1000036C4();
  v2 = *(v1 + 208);
  sub_100027380();
  sub_1000071B4();
  sub_100083F2C(v0, v3);
  sub_100004B9C();

  v4 = sub_1000088B0();

  return v5(v4);
}

uint64_t sub_10007C56C()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v3 = v2;
  v2[28] = v1;
  v2[29] = v4;
  v2[30] = v0;
  v6 = *(v5 + 360);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v9 + 368) = v0;

  sub_100009990();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10007C670()
{
  sub_1000036C4();
  v1 = v0[29];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[36];
  v7 = v0[31];
  v6 = v0[32];

  sub_1000071B4();
  sub_100083F2C(v4, v8);
  sub_100004B9C();

  v9 = sub_1000088B0();

  return v10(v9);
}

uint64_t sub_10007C710()
{
  sub_1000036C4();
  v1 = v0[40];
  v2 = v0[38];

  sub_1000071B4();
  sub_100083F2C(v2, v3);
  v4 = v0[46];
  sub_1000246E4();

  sub_100003A00();

  return v5();
}

uint64_t sub_10007C7A8()
{
  sub_1000036C4();
  v2 = v0[39];
  v1 = v0[40];

  sub_1000071B4();
  sub_100083F2C(v2, v3);
  v4 = v0[44];
  sub_1000246E4();

  sub_100003A00();

  return v5();
}

uint64_t sub_10007C83C()
{
  sub_1000036C4();
  v2 = v0[39];
  v1 = v0[40];

  sub_1000071B4();
  sub_100083F2C(v2, v3);
  v4 = v0[42];
  sub_1000246E4();

  sub_100003A00();

  return v5();
}

uint64_t sub_10007C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v7 = type metadata accessor for LNBundleRecord();
  v6[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_10007C96C, 0, 0);
}

void sub_10007C96C()
{
  sub_100004884();
  v1 = v0[22];
  sub_100013334(v0[23], (v0 + 2));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100084504(v3))
  {
    v4 = sub_100007764();
    v17 = sub_1000056E4();
    *v4 = 136446210;
    v6 = v0[5];
    v5 = v0[6];
    sub_1000034B4(v0 + 2, v6);
    sub_1000039EC();
    v7(v6);
    sub_1000215C0();
    sub_1000034F8(v0 + 2);
    v8 = sub_100004890();
    sub_100004C50(v8, v6, v9);
    sub_10001E0E8();

    *(v4 + 4) = v5;
    sub_100012F74(&_mh_execute_header, v10, v3, "Calling transaction block for %{public}s");
    sub_1000034F8(v17);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8(v0 + 2);
  }

  v16 = v0[24] + *v0[24];
  v11 = *(v0[24] + 4);
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_10007CB3C;
  v13 = v0[25];
  sub_10001064C();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_10007CB3C()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

void sub_10007CC38()
{
  sub_100004884();
  v1 = v0[22];
  sub_100013334(v0[23], (v0 + 12));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100084504(v3))
  {
    v4 = sub_100007764();
    v23 = sub_1000056E4();
    *v4 = 136446210;
    v6 = v0[15];
    v5 = v0[16];
    sub_1000034B4(v0 + 12, v6);
    sub_1000039EC();
    v7(v6);
    sub_1000215C0();
    sub_1000034F8(v0 + 12);
    v8 = sub_1000079CC();
    sub_100004C50(v8, v9, v10);
    sub_10001E0E8();

    *(v4 + 4) = v5;
    sub_100012F74(&_mh_execute_header, v11, v3, "Transaction succeeded for %{public}s, resetting attemptedIndexCount");
    sub_1000034F8(v23);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8(v0 + 12);
  }

  v12 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[26];
  sub_100083E3C(v0[21], v13, type metadata accessor for LNBundleRecord);
  *(v13 + *(v14 + 28)) = 0;
  sub_10010A348();
  v16 = v0[28];
  sub_1000071B4();
  sub_100083F2C(v17, v18);
  v19 = v0[28];

  v20 = v0[1];
  sub_10001064C();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10007CDDC()
{
  v40 = v0;
  v1 = v0[30];
  v2 = v0[22];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v6 = sub_100007764();
    v7 = sub_1000056E4();
    v39 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[19];
    v11 = Error.localizedDescription.getter();
    v13 = sub_100004C50(v11, v12, &v39);

    *(v6 + 4) = v13;
    sub_1000844E4(&_mh_execute_header, v14, v15, "Transaction failed due to error: %{public}s");
    sub_1000034F8(v7);
    sub_100004DE4();

    sub_100004DE4();
  }

  v16 = v0[30];
  v17 = _convertErrorToNSError(_:)();
  if (sub_10007D0CC())
  {
    v18 = v0[22];
    sub_100013334(v0[23], (v0 + 7));
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_100007764();
      v22 = sub_1000056E4();
      v39 = v22;
      *v21 = 136446210;
      v23 = v0[10];
      sub_1000034B4(v0 + 7, v23);
      sub_1000039EC();
      v24(v23);
      v26 = v25;
      sub_1000034F8(v0 + 7);
      v27 = sub_100004890();
      v29 = sub_100004C50(v27, v26, v28);

      *(v21 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "LS tearing down, deleting invalid bundle record %{public}s", v21, 0xCu);
      sub_1000034F8(v22);
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      sub_1000034F8(v0 + 7);
    }

    v30 = v0[26];
    v31 = v0[23];
    v32 = v31[3];
    sub_1000034B4(v31, v32);
    sub_1000039EC();
    v33(v32);
    sub_10010A1E0();
  }

  v34 = v0[30];

  v35 = v0[28];

  v36 = sub_1000088B0();

  return v37(v36);
}

uint64_t sub_10007D0CC()
{
  if ([v0 code] != 4099)
  {
    goto LABEL_17;
  }

  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v8 = [v0 userInfo];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000A0C5C(v10, v11, v9, &v17);

  if (!v18)
  {
    sub_100039B5C(&v17, &qword_1001992F0, &qword_10014E000);
    goto LABEL_17;
  }

  if (!swift_dynamicCast())
  {
LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  if (v15 == 0xD00000000000007ELL && 0x8000000100155AC0 == v16)
  {

    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10007D2BC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100021644();
  sub_10007D43C(v32, a1, a2, a3, a4, a5, a7, a8, a6, a12, a9, a10, a11, v23, v24, a13, a14, a15, a16, a17, a18, a19, a20, a21);

  if (!v35)
  {
  }

  type metadata accessor for Schema.RuntimeError();
  sub_100002B5C();
  sub_100084084(v25, v26);
  sub_100005244();
  swift_allocError();
  sub_100012058();
  sub_10001D5E0();
  swift_willThrow();
}

void sub_10007D43C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, char a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v202 = a8;
  v204 = a7;
  v205 = a5;
  v206 = a6;
  v208 = a4;
  v27 = type metadata accessor for LNAppShortcutParameterRecord();
  v201 = *(v27 - 8);
  v28 = v201[8];
  __chkstk_darwin(v27 - 8);
  v30 = &v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LNBundleRecord();
  v32 = *(*(v31 - 1) + 64);
  __chkstk_darwin(v31);
  v34 = (&v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = a1;
  v35 = *(a1 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  swift_retain_n();
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v36 = swift_allocObject();
  v207 = xmmword_10014CE90;
  *(v36 + 16) = xmmword_10014CE90;
  *(v36 + 32) = a2;
  *(v36 + 40) = a3;
  swift_retain_n();

  v37 = v224;
  sub_10010AA54();
  if (v37)
  {
  }

  else
  {
    v200 = v30;

    sub_100083E9C(v208, v34 + v31[5]);
    *v34 = a2;
    v34[1] = a3;
    v38 = (v34 + v31[6]);
    v39 = v205;
    v40 = v206;
    *v38 = v205;
    v38[1] = v40;
    *(v34 + v31[7]) = 0;
    *(v34 + v31[8]) = v204;

    sub_1000098F0(v39, v40);
    sub_10010A624();
    v41 = sub_100083F2C(v34, type metadata accessor for LNBundleRecord);
    __chkstk_darwin(v41);
    *(&v191 - 4) = v35;
    *(&v191 - 3) = a2;
    v42 = v208;
    *(&v191 - 2) = a3;
    *(&v191 - 1) = v42;
    sub_100078CE4(sub_100083F0C, (&v191 - 6), v202);
    v205 = v35;
    v206 = a2;
    v208 = a3;
    if (a9 == 2 || (v224 = a10, (v204 = sub_1000232F4(a10)) == 0))
    {
      v224 = 0;
LABEL_24:
      v193 = a24;
      v192 = a23;
      v195 = a22;
      v194 = a21;
      v196 = a20;
      v197 = a19;
      v199 = a18;
      v204 = a17;
      v56 = a16 + 64;
      v57 = 1 << *(a16 + 32);
      v58 = -1;
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      v59 = v58 & *(a16 + 64);
      v60 = (v57 + 63) >> 6;
      v201 = a16;

      v61 = 0;
      v200 = a16 + 64;
      v198 = v60;
      if (v59)
      {
        while (1)
        {
          v62 = v61;
LABEL_31:
          v63 = __clz(__rbit64(v59)) | (v62 << 6);
          v64 = *(v201[6] + 8 * v63);
          v65 = (v201[7] + 16 * v63);
          v66 = v65[1];
          v202 = *v65;
          v67 = v208;

          v68 = v64;

          v69 = [v68 identifier];
          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v71;

          *&v214 = v206;
          *(&v214 + 1) = v67;
          v215 = v70;
          v216 = v72;
          v217 = v202;
          v218 = v66;

          v30 = v205;
          v73 = v224;
          sub_100092450(&v214);
          v224 = v73;
          if (v73)
          {
            break;
          }

          v59 &= v59 - 1;

          swift_bridgeObjectRelease_n();

          v61 = v62;
          v56 = v200;
          v60 = v198;
          if (!v59)
          {
            goto LABEL_28;
          }
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
        while (1)
        {
LABEL_28:
          v62 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            __break(1u);
LABEL_128:
            v96 = v30;
            v140 = v206;
            v141 = v195;
            goto LABEL_129;
          }

          if (v62 >= v60)
          {
            break;
          }

          v59 = *(v56 + 8 * v62);
          ++v61;
          if (v59)
          {
            goto LABEL_31;
          }
        }

        v74 = v204;
        v75 = sub_1000232F4(v204);
        v76 = 0;
        v201 = (v74 & 0xC000000000000001);
        v202 = v75;
        v200 = v74 & 0xFFFFFFFFFFFFFF8;
        v77 = &type metadata for String;
        v78 = v224;
        v79 = v208;
        while (v202 != v76)
        {
          if (v201)
          {
            v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v76 >= *(v200 + 16))
            {
              goto LABEL_147;
            }

            v80 = *(v204 + 8 * v76 + 32);
          }

          v81 = v80;
          if (__OFADD__(v76, 1))
          {
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v82 = v81;
          v83 = LNEntityMetadata.asJson(prettyPrinted:)(0);
          if (v84)
          {
LABEL_59:

LABEL_60:

            goto LABEL_4;
          }

          if (qword_100198450 != -1)
          {
            swift_once();
          }

          memcpy(v212, &unk_10019C518, sizeof(v212));
          memcpy(v211, &unk_10019C518, sizeof(v211));
          sub_1000196B0(v212, v210);
          if (qword_100198458 != -1)
          {
            swift_once();
          }

          v224 = 0;
          v209._countAndFlagsBits = v206;
          v209._object = v79;
          <- infix<A>(_:_:)();
          sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
          *(swift_allocObject() + 16) = v207;
          if (qword_100198468 != -1)
          {
            swift_once();
          }

          v209 = v83;
          v85 = v77;
          <- infix<A>(_:_:)();

          v86 = QueryType.insert(_:_:)(v210);
          v88 = v87;
          v90 = v89;
          swift_setDeallocating();
          sub_1000B3030();
          sub_10002EBC8(v210);
          memcpy(v213, v211, sizeof(v213));
          sub_10001970C(v213);
          v226.template._countAndFlagsBits = v86;
          v226.template._object = v88;
          v226.bindings._rawValue = v90;
          Connection.run(_:)(v226);
          if (v91)
          {

            return;
          }

          v79 = v208;

          ++v76;
          v77 = v85;
          v78 = 0;
        }

        v92 = v78;
        v93 = v199;
        v94 = sub_1000232F4(v199);
        v95 = 0;
        v96 = v93 & 0xC000000000000001;
        v97 = v93 & 0xFFFFFFFFFFFFFF8;
        v98 = v205;
        while (v94 != v95)
        {
          if (v96)
          {
            v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v95 >= *(v97 + 16))
            {
              goto LABEL_169;
            }

            v99 = *(v199 + 8 * v95 + 32);
          }

          v100 = v99;
          if (__OFADD__(v95, 1))
          {
            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          v101 = v100;
          sub_10007F178(v203, v98, v206, v79, v101);
          if (v92)
          {

            return;
          }

          ++v95;
        }

        v102 = v197;
        v224 = sub_1000232F4(v197);
        v103 = 0;
        v203 = v102 & 0xFFFFFFFFFFFFFF8;
        v204 = v102 & 0xC000000000000001;
        v104 = v92;
        while (1)
        {
          v105 = v206;
          if (v224 == v103)
          {
            break;
          }

          v106 = v208;
          if (v204)
          {
            v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v103 >= *(v203 + 16))
            {
              goto LABEL_183;
            }

            v107 = *(v197 + 8 * v103 + 32);
          }

          v108 = v107;
          if (__OFADD__(v103, 1))
          {
            goto LABEL_182;
          }

          v82 = v108;
          v109 = LNQueryMetadata.asJson(prettyPrinted:sortKeys:)(0, 1);
          if (v110)
          {
            goto LABEL_59;
          }

          if (qword_100198490 != -1)
          {
            swift_once();
          }

          memcpy(v212, &unk_10019C710, sizeof(v212));
          memcpy(v211, &unk_10019C710, sizeof(v211));
          sub_1000196B0(v212, v210);
          if (qword_100198498 != -1)
          {
            swift_once();
          }

          v209._countAndFlagsBits = v105;
          v209._object = v106;
          <- infix<A>(_:_:)();
          sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
          *(swift_allocObject() + 16) = v207;
          if (qword_1001984A8 != -1)
          {
            swift_once();
          }

          v209 = v109;
          <- infix<A>(_:_:)();

          v111 = QueryType.insert(_:_:)(v210);
          v113 = v112;
          v115 = v114;
          swift_setDeallocating();
          sub_1000B3030();
          sub_10002EBC8(v210);
          memcpy(v213, v211, sizeof(v213));
          sub_10001970C(v213);
          v227.template._countAndFlagsBits = v111;
          v227.template._object = v113;
          v227.bindings._rawValue = v115;
          Connection.run(_:)(v227);
          v104 = v116;
          if (v116)
          {
LABEL_166:

            goto LABEL_60;
          }

          ++v103;
        }

        v30 = v104;
        v123 = v196;
        v124 = sub_1000232F4(v196);
        v125 = 0;
        v126 = v123 & 0xC000000000000001;
        v127 = v123 & 0xFFFFFFFFFFFFFF8;
        while (v124 != v125)
        {
          if (v126)
          {
            v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v125 >= *(v127 + 16))
            {
              goto LABEL_186;
            }

            v128 = *(v196 + 8 * v125 + 32);
          }

          v129 = v128;
          if (__OFADD__(v125, 1))
          {
            goto LABEL_185;
          }

          v130 = v129;
          sub_1000FDED8();
          if (v30)
          {

            return;
          }

          ++v125;
        }

        v138 = v194;
        v224 = sub_1000232F4(v194);
        if (!v224)
        {
          goto LABEL_128;
        }

        v139 = 0;
        v203 = v138 & 0xFFFFFFFFFFFFFF8;
        v204 = v138 & 0xC000000000000001;
        v96 = v30;
        while (1)
        {
          v140 = v206;
          v141 = v195;
          if (v224 == v139)
          {
            break;
          }

          v142 = v208;
          if (v204)
          {
            v143 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v139 >= *(v203 + 16))
            {
              goto LABEL_188;
            }

            v143 = *(v194 + 8 * v139 + 32);
          }

          v144 = v143;
          if (__OFADD__(v139, 1))
          {
            goto LABEL_187;
          }

          type metadata accessor for CodingUserInfoKey();

          v82 = v144;
          sub_10002EB80(&unk_100198750, &unk_1001518C0);
          v145 = Dictionary.init(dictionaryLiteral:)();
          v146 = LNAssistantIntentMetadata.asJson(userInfo:)(v145);
          if (v147)
          {
LABEL_167:

            goto LABEL_60;
          }

          if (qword_100198208 != -1)
          {
            swift_once();
          }

          memcpy(v212, &unk_10019DC48, sizeof(v212));
          memcpy(v211, &unk_10019DC48, sizeof(v211));
          sub_1000196B0(v212, v210);
          if (qword_100198210 != -1)
          {
            swift_once();
          }

          v209._countAndFlagsBits = v140;
          v209._object = v142;
          <- infix<A>(_:_:)();
          sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
          *(swift_allocObject() + 16) = v207;
          if (qword_100198218 != -1)
          {
            swift_once();
          }

          v209 = v146;
          <- infix<A>(_:_:)();

          v148 = QueryType.insert(_:_:)(v210);
          v150 = v149;
          v152 = v151;
          swift_setDeallocating();
          sub_1000B3030();
          sub_10002EBC8(v210);
          memcpy(v213, v211, sizeof(v213));
          sub_10001970C(v213);
          v228.template._countAndFlagsBits = v148;
          v228.template._object = v150;
          v228.bindings._rawValue = v152;
          Connection.run(_:)(v228);
          v96 = v153;
          if (v153)
          {
            goto LABEL_166;
          }

          ++v139;
        }

LABEL_129:
        v154 = v141;
        v224 = sub_1000232F4(v141);
        if (v224)
        {
          v155 = 0;
          v203 = v154 & 0xFFFFFFFFFFFFFF8;
          v204 = v154 & 0xC000000000000001;
          while (v224 != v155)
          {
            v156 = v208;
            if (v204)
            {
              v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v155 >= *(v203 + 16))
              {
                goto LABEL_190;
              }

              v157 = *(v154 + 8 * v155 + 32);
            }

            v158 = v157;
            if (__OFADD__(v155, 1))
            {
              goto LABEL_189;
            }

            type metadata accessor for CodingUserInfoKey();

            v82 = v158;
            sub_10002EB80(&unk_100198750, &unk_1001518C0);
            v159 = Dictionary.init(dictionaryLiteral:)();
            v160 = LNAssistantIntentNegativePhrases.asJson(userInfo:)(v159);
            if (v161)
            {
              goto LABEL_167;
            }

            if (qword_100198390 != -1)
            {
              swift_once();
            }

            memcpy(v212, &unk_10019E248, sizeof(v212));
            memcpy(v211, &unk_10019E248, sizeof(v211));
            sub_1000196B0(v212, v210);
            if (qword_100198398 != -1)
            {
              swift_once();
            }

            v209._countAndFlagsBits = v140;
            v209._object = v156;
            <- infix<A>(_:_:)();
            sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
            *(swift_allocObject() + 16) = v207;
            if (qword_1001983A0 != -1)
            {
              swift_once();
            }

            v209 = v160;
            <- infix<A>(_:_:)();

            v162 = QueryType.insert(_:_:)(v210);
            v164 = v163;
            v166 = v165;
            swift_setDeallocating();
            sub_1000B3030();
            sub_10002EBC8(v210);
            memcpy(v213, v211, sizeof(v213));
            sub_10001970C(v213);
            v229.template._countAndFlagsBits = v162;
            v229.template._object = v164;
            v229.bindings._rawValue = v166;
            Connection.run(_:)(v229);
            v96 = v167;
            if (v167)
            {
              goto LABEL_166;
            }

            ++v155;
            v140 = v206;
            v154 = v195;
          }
        }

        v168 = v192;
        v224 = sub_1000232F4(v192);
        if (v224)
        {
          v169 = 0;
          v203 = v168 & 0xFFFFFFFFFFFFFF8;
          v204 = v168 & 0xC000000000000001;
          while (v224 != v169)
          {
            v170 = v208;
            if (v204)
            {
              v171 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v169 >= *(v203 + 16))
              {
                goto LABEL_194;
              }

              v171 = *(v168 + 8 * v169 + 32);
            }

            v172 = v171;
            if (__OFADD__(v169, 1))
            {
              goto LABEL_193;
            }

            type metadata accessor for CodingUserInfoKey();

            v82 = v172;
            sub_10002EB80(&unk_100198750, &unk_1001518C0);
            v173 = Dictionary.init(dictionaryLiteral:)();
            v174 = LNAssistantAppEntityMetadata.asJson(userInfo:)(v173);
            if (v175)
            {
              goto LABEL_167;
            }

            if (qword_100198110 != -1)
            {
              swift_once();
            }

            memcpy(v212, &unk_10019D958, sizeof(v212));
            memcpy(v211, &unk_10019D958, sizeof(v211));
            sub_1000196B0(v212, v210);
            if (qword_100198118 != -1)
            {
              swift_once();
            }

            v209._countAndFlagsBits = v140;
            v209._object = v170;
            <- infix<A>(_:_:)();
            sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
            *(swift_allocObject() + 16) = v207;
            if (qword_100198120 != -1)
            {
              swift_once();
            }

            v209 = v174;
            <- infix<A>(_:_:)();

            v176 = QueryType.insert(_:_:)(v210);
            v178 = v177;
            v180 = v179;
            swift_setDeallocating();
            sub_1000B3030();
            sub_10002EBC8(v210);
            memcpy(v213, v211, sizeof(v213));
            sub_10001970C(v213);
            v230.template._countAndFlagsBits = v176;
            v230.template._object = v178;
            v230.bindings._rawValue = v180;
            Connection.run(_:)(v230);
            v96 = v181;
            if (v181)
            {
              goto LABEL_166;
            }

            ++v169;
            v140 = v206;
            v168 = v192;
          }
        }

LABEL_170:
        v182 = v193;
        v183 = sub_1000232F4(v193);
        v184 = 0;
        v224 = v182 & 0xC000000000000001;
        v185 = v182 & 0xFFFFFFFFFFFFFF8;
        while (v183 != v184)
        {
          if (v224)
          {
            v186 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v184 >= *(v185 + 16))
            {
              goto LABEL_192;
            }

            v186 = *(v193 + 8 * v184 + 32);
          }

          if (__OFADD__(v184, 1))
          {
            goto LABEL_191;
          }

          v187 = v186;
          v188 = [v187 phraseMetadata];
          v189 = [v188 actionIdentifier];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          objc_allocWithZone(LNAssistantSuggestionPhraseQuery);

          v190 = sub_100083984();
          sub_10002D998(v190, v187, v205);
          if (v96)
          {

            return;
          }

          ++v184;
        }

LABEL_4:
      }
    }

    else
    {
      *&v220 = a2;
      *(&v220 + 1) = a3;
      v221 = a11;
      v222 = a12;
      v223 = a13;
      sub_10010C868(&v220);
      v43 = 0;
      v202 = v224 & 0xC000000000000001;
      v198 = a15;
      v197 = a14;
      v199 = v224 & 0xFFFFFFFFFFFFFF8;
      while (v204 != v43)
      {
        if (v202)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v43 >= *(v199 + 16))
          {
            goto LABEL_181;
          }

          v44 = *(v224 + 8 * v43 + 32);
        }

        v45 = v44;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        type metadata accessor for CodingUserInfoKey();

        v46 = v45;
        sub_10002EB80(&unk_100198750, &unk_1001518C0);
        v47 = Dictionary.init(dictionaryLiteral:)();
        v48 = LNAutoShortcutMetadata.asJson(userInfo:)(v47);
        if (v49)
        {
          goto LABEL_86;
        }

        if (qword_1001980C8 != -1)
        {
          swift_once();
        }

        memcpy(v212, &unk_10019D848, sizeof(v212));
        memcpy(v211, &unk_10019D848, sizeof(v211));
        sub_1000196B0(v212, v210);
        if (qword_1001980D0 != -1)
        {
          swift_once();
        }

        v209._countAndFlagsBits = v206;
        v209._object = v208;
        <- infix<A>(_:_:)();
        sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
        *(swift_allocObject() + 16) = v207;
        if (qword_1001980D8 != -1)
        {
          swift_once();
        }

        v209 = v48;
        <- infix<A>(_:_:)();

        v50 = QueryType.insert(_:_:)(v210);
        v52 = v51;
        v54 = v53;
        swift_setDeallocating();
        sub_1000B3030();
        sub_10002EBC8(v210);
        memcpy(v213, v211, sizeof(v213));
        sub_10001970C(v213);
        v225.template._countAndFlagsBits = v50;
        v225.template._object = v52;
        v225.bindings._rawValue = v54;
        v35 = v205;
        Connection.run(_:)(v225);
        if (v55)
        {

LABEL_86:

          goto LABEL_4;
        }

        ++v43;
      }

      v224 = 0;
      v117 = 0;
      v118 = v197;
      v30 = v198;
      v119 = *(v197 + 16);
      v121 = v200;
      v120 = v201;
      while (v119 != v117)
      {
        sub_100083E3C(v118 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + v120[9] * v117, v121, type metadata accessor for LNAppShortcutParameterRecord);
        v122 = v224;
        sub_100067070();
        v224 = v122;
        if (v122)
        {
          sub_100083F2C(v121, type metadata accessor for LNAppShortcutParameterRecord);

          return;
        }

        ++v117;
        sub_100083F2C(v121, type metadata accessor for LNAppShortcutParameterRecord);
      }

      v131 = 1 << v30[32];
      v132 = -1;
      if (v131 < 64)
      {
        v132 = ~(-1 << v131);
      }

      v133 = v132 & *(v30 + 7);
      v134 = (v131 + 63) >> 6;

      v135 = 0;
      if (!v133)
      {
LABEL_101:
        while (1)
        {
          v136 = v135 + 1;
          if (__OFADD__(v135, 1))
          {
            break;
          }

          if (v136 >= v134)
          {

            goto LABEL_24;
          }

          v133 = *&v30[8 * v136 + 56];
          ++v135;
          if (v133)
          {
            goto LABEL_104;
          }
        }

LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
        return;
      }

      while (1)
      {
        v136 = v135;
LABEL_104:
        memcpy(__dst, (*(v30 + 6) + 104 * (__clz(__rbit64(v133)) | (v136 << 6))), sizeof(__dst));
        sub_100037C7C(__dst, v213);
        v137 = v224;
        sub_100096494(__dst, v35);
        v224 = v137;
        if (v137)
        {
          break;
        }

        v133 &= v133 - 1;
        sub_10004AF54(__dst);
        v135 = v136;
        if (!v133)
        {
          goto LABEL_101;
        }
      }

LABEL_148:

      sub_10004AF54(__dst);
    }
  }
}

uint64_t sub_10007F030(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for LNActionRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  sub_100083E9C(a5, v12);

  sub_10001446C(a3, a4, v12, v17, v16);
  sub_100064864(v16);
  return sub_100083F2C(v16, type metadata accessor for LNActionRecord);
}

uint64_t sub_10007F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1001121D4();
  if (v5)
  {
    v27 = v5;
    swift_errorRetain();
    sub_10002EB80(&unk_100198760, &qword_10014F3C0);
    if (swift_dynamicCast())
    {

      v8 = v23;
      v7 = v24;
      v9 = v25;
      v10 = v26;
      if (v25 == 19)
      {
        if (qword_100198200 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000347C(v11, qword_10019DBF0);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v14 = 136315394;
          *(v14 + 4) = sub_100004C50(0xD00000000000002ELL, 0x8000000100155B40, &v22);
          *(v14 + 12) = 2080;
          v15 = Result.description.getter(v8, v7, 19, v10);
          log = v12;
          v17 = v13;
          v18 = sub_100004C50(v15, v16, &v22);

          *(v14 + 14) = v18;
          _os_log_impl(&_mh_execute_header, log, v17, "%s ignoring error: %s", v14, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_13;
      }

      sub_10002EC1C();
      swift_allocError();
      *v19 = v23;
      *(v19 + 8) = v7;
      *(v19 + 16) = v9;
      *(v19 + 24) = v10;
      swift_willThrow();
    }
  }

LABEL_13:
}

uint64_t sub_10007F45C(uint64_t a1)
{
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014F750;
  *(inited + 32) = 0x736E6F69746361;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x8000000100154CC0;
  *(inited + 64) = 0x6E61747369737361;
  *(inited + 72) = 0xEF746E65746E4974;
  *(inited + 80) = 0xD00000000000001ELL;
  *(inited + 88) = 0x8000000100155A20;
  *(inited + 96) = 0x73656C646E7562;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 112) = 0x6769666E6F63;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = 0xD00000000000001ELL;
  *(inited + 136) = 0x8000000100155A40;
  *(inited + 144) = 0x7365697469746E65;
  *(inited + 152) = 0xE800000000000000;
  strcpy((inited + 160), "examplePhrases");
  *(inited + 175) = -18;
  *(inited + 176) = 0x73656972657571;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = 0x736D756E65;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = 0xD000000000000019;
  *(inited + 216) = 0x8000000100155A60;
  strcpy((inited + 224), "appShortcuts");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = 0xD000000000000015;
  *(inited + 248) = 0x80000001001553B0;
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000100154C00;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000100155A80;
  *(inited + 288) = 0x746E6176656C6572;
  *(inited + 296) = 0xEF73746E65746E49;
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000100155AA0;
  *(inited + 320) = 0xD000000000000017;
  *(inited + 328) = 0x8000000100155580;
  *(inited + 336) = 0xD00000000000001ALL;
  *(inited + 344) = 0x80000001001545A0;
  v4[2] = inited;
  v4[3] = a1;
  Connection.transaction(_:block:)(0, sub_100083A08, v4);
  swift_setDeallocating();
  return sub_1000B30FC();
}

void sub_10007F6FC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = (a1 + 40);
  if (v3)
  {
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      Table.init(_:database:)(__src, v5, v6, 0, 0);
      memcpy(__dst, __src, sizeof(__dst));
      SchemaType.drop(ifExists:)(1);
      memcpy(v10, __dst, sizeof(v10));
      sub_10001970C(v10);
      Connection.run(_:_:)();
      if (v2)
      {
        break;
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (qword_100198400 != -1)
    {
      swift_once();
    }

    Connection.execute(_:)(xmmword_10019E528);
    if (v7)
    {
      sub_100083A24();
      swift_allocError();
      *v8 = v7;
      *(v8 + 8) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_10007F8D0()
{
  sub_1000128F0();
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10014CE90;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  sub_10007F9BC(v3);
  if (!v0)
  {
  }

  type metadata accessor for Schema.RuntimeError();
  sub_100002B5C();
  sub_100084084(v4, v5);
  sub_100005244();
  swift_allocError();
  sub_100012058();
  sub_10001D5E0();
  swift_willThrow();
}

uint64_t sub_10007F9BC(uint64_t a1)
{
  v7[3] = a1;
  v3 = *(v1 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  result = Connection.transaction(_:block:)(0, sub_100083A78, v7);
  if (v2)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v5, v6);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  return result;
}

void sub_10007FB8C()
{
  sub_100062140();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

double sub_10007FC3C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1000132B4();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
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
  if (!*(&v11 + 1))
  {
    sub_100039B5C(v12, &qword_1001992F0, &qword_10014E000);
    return 300.0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 300.0;
  }

  if (qword_100198200 != -1)
  {
    sub_100007F64();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000347C(v3, qword_10019DBF0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (sub_100084504(v5))
  {
    v6 = sub_100007764();
    *v6 = 134217984;
    *(v6 + 4) = v9;
    sub_100012F74(&_mh_execute_header, v7, v5, "Using user defined audit delay %lds");
    sub_100004DE4();
  }

  return v9;
}

void sub_10007FDEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A44FC();
}

void sub_10007FEA4()
{
  sub_1000046A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = _Block_copy(v6);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = v5;
  sub_10007FFA0(v8, v10, v11, v7, v3, v1);

  _Block_release(v7);

  sub_100017F88();
}

void sub_10007FFA0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  v8[2] = a4;
  v7 = *(a3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  a6(a1, a2, a5, v8);
  _Block_release(a4);
}

id sub_1000801B0()
{
  sub_1000046A0();
  v5 = sub_10001D9E4();
  v6 = v1;
  sub_10001DCDC();
  sub_10001E0E8();

  if (v5)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_100012998();
      v7 = v1;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, v3, v2);
    Dictionary._bridgeToObjectiveC()();
    sub_100010D28();
  }

  sub_100017F88();

  return v8;
}

void sub_1000805FC()
{
  sub_1000067D4();
  v2 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v3 = v2;
  v4 = v1;
  sub_1000A4AE0();
}

void sub_100080928()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A75A8();
}

void sub_100080A1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A7FE8();
}

void sub_100080B24()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A84C8();
}

void sub_100080B84()
{
  sub_1000067D4();
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v1;

  sub_1000071CC();
  sub_1000A8B34();
}

id sub_100080D5C()
{
  sub_1000046A0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000215C0();
  v10 = v6;
  sub_1000287E8(v7, v9, v4, v0, v2);

  sub_100017F88();

  return v11;
}

void sub_100080E70(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000128F0();
  v6 = *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  v7 = a3;
  v8 = v6;
  v9 = v4;
  sub_1000A8518();
}

void sub_100081000()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A95B8();
}

id sub_100081088()
{
  sub_1000046A0();
  v5 = sub_10001D9E4();
  v6 = v1;
  sub_10001DCDC();
  sub_10001E0E8();

  if (v5)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_100012998();
      v7 = v1;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, v3, v2);
    sub_10001AAC8();
    Array._bridgeToObjectiveC()();
    sub_100010D28();
  }

  sub_100017F88();

  return v8;
}

void sub_100081164()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A9CF4();
}

id sub_1000811C4()
{
  sub_1000046A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v5();

  sub_10002EB80(v3, v1);
  Dictionary._bridgeToObjectiveC()();
  sub_100010D28();
  sub_100017F88();

  return v8;
}

uint64_t sub_100081300(uint64_t a1, uint64_t a2, uint64_t (*a3)(id, id, uint64_t, uint64_t))
{
  sub_1000128F0();
  v7 = *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v8 = v7;
  return a3(v8, v8, v5, v4);
}

id sub_100081378(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id, id, uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a1;
  sub_100081300(v7, v9, a5);

  Array._bridgeToObjectiveC()();
  sub_100010D28();

  return 0;
}

uint64_t sub_10008160C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1000128F0();
  v5 = *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v6 = sub_10000C900();
  return a3(v6);
}

uint64_t sub_100081698(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v5 = sub_10000C900();
  return a2(v5);
}

uint64_t sub_100081860()
{
  sub_1000070C8();
  v0 = type metadata accessor for MetadataError();
  sub_100084084(&qword_10019B0F0, &type metadata accessor for MetadataError);
  sub_100005244();
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, enum case for MetadataError.recordNotFound(_:), v0);
  swift_willThrow();
  sub_100003A00();

  return v2();
}

uint64_t sub_1000819D4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100081A8C;

  return sub_100081848();
}

uint64_t sub_100081A8C()
{
  sub_1000036C4();
  v2 = v0;
  sub_1000036D0();
  v4 = v3;
  sub_100007A64();
  *v5 = v4;
  v7 = v6[5];
  v8 = v6[4];
  v9 = v6[2];
  v10 = *v1;
  sub_10000298C();
  *v11 = v10;

  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = 0;
    v14 = v12;
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();

    v12 = 0;
    v14 = v13;
  }

  v15 = *(v4 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  sub_100003A00();

  return v16();
}

void sub_100081C24()
{
  sub_1000067D4();
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  sub_10000C900();
  sub_1000A6A88();
}

uint64_t sub_100081F1C(uint64_t a1, uint64_t a2)
{
  v9 = _swiftEmptyDictionarySingleton;
  v4 = *(v2 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  v5 = sub_10010E6C0(a1, a2);
  if (v3)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v6, v7);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  else
  {
    sub_100078DBC(v5, &v9);

    return v9;
  }
}

uint64_t sub_100081FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = v6;
  sub_1000067D4();

  sub_10006D7F8(a5, v10, v9, v8, v7, v17);
  if (v11)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v14, v15);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  else
  {
    v13 = *(v5 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
    sub_10010E91C(v17);
    return sub_100083F80(v17);
  }
}

void sub_1000820E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000128F0();
  v8 = *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);

  sub_1000B8BA0(v5, a3);
  if (!v4)
  {
    v9 = sub_1000232F4(v6);
    v10 = 0;
    v14 = v6 & 0xC000000000000001;
    while (v9 != v10)
    {
      if (v14)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }

      v12 = v11;

      sub_1000B8D48(v12, v5, a3, v13);
      sub_1000B8F6C(v13);
      sub_100084030(v13);

      ++v10;
    }
  }
}

uint64_t sub_100082244(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_logger;
  if (qword_1001982F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000347C(v4, qword_10019E020);
  (*(*(v4 - 8) + 16))(v1 + v3, v5, v4);
  *(v1 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_transactionQueue) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask) = 0;
  *(v1 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_count) = 0;
  *(v1 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_connection) = a1;
  return v1;
}

uint64_t sub_100082334(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return sub_100011A00(sub_100082354, v2);
}

uint64_t sub_100082354()
{
  sub_1000036C4();
  v1 = *(v0 + 40);
  sub_100018730();
  v4 = sub_100084084(v2, v3);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v1;
  *(v5 + 24) = v6;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = sub_10002EB80(qword_10019AA78, &unk_10014F7F0);
  *v8 = v0;
  v8[1] = sub_100082490;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v4, 0xD000000000000013, 0x8000000100155BD0, sub_1000841D8, v5, v9);
}

uint64_t sub_100082490()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = sub_1000825BC;
  }

  else
  {
    v12 = v3[5];
    v11 = v3[6];

    v10 = sub_1000825A0;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000825BC()
{
  sub_1000036A0();
  v1 = *(v0 + 48);

  sub_100003A00();
  v3 = *(v0 + 64);

  return v2();
}

void sub_100082618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10002EB80(&qword_10019AB18, &qword_10014F888);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ConnectionTransactionSerializer.Transaction(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_count;
  v17 = *(a2 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_count);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_count) = v19;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = a4;
      v23 = a1;
      v24 = a3;
      v25 = v22;
      *v22 = 134217984;
      *(v22 + 4) = *(a2 + v16);

      _os_log_impl(&_mh_execute_header, v20, v21, "Queueing transaction request: %ld", v25, 0xCu);
      a3 = v24;
      a1 = v23;
      a4 = v32;
    }

    else
    {
    }

    v26 = *(a2 + v16);
    v27 = *(v12 + 24);
    v28 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    (*(*(v28 - 8) + 16))(&v15[v27], a1, v28);
    *v15 = v26;
    *(v15 + 1) = a3;
    *(v15 + 2) = a4;
    swift_beginAccess();
    sub_100084178(v15, v11, type metadata accessor for ConnectionTransactionSerializer.Transaction);

    sub_1000F525C(0, 0);
    swift_endAccess();
    v29 = OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask;
    if (!*(a2 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask))
    {
      v30 = sub_1000828C0();
      v31 = *(a2 + v29);
      *(a2 + v29) = v30;
    }
  }
}

uint64_t sub_1000828C0()
{
  v1 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_1000075C4(v4, 1, 1, v5);
  sub_100018730();
  v8 = sub_100084084(v6, v7);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v0;
  swift_retain_n();
  return sub_10003A6C0(0, 0, v4, &unk_10014F878, v9);
}

uint64_t sub_1000829CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = *(*(sub_10002EB80(&qword_10019AB10, &qword_10014F880) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for ConnectionTransactionSerializer.Transaction(0);
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100082AD4, a4, 0);
}

uint64_t sub_100082E24()
{
  sub_1000070C8();
  v2 = *v1;
  sub_100007A64();
  *v4 = v3;
  v5 = *(v2 + 136);
  v6 = *v1;
  sub_100007A64();
  *v7 = v6;
  *(v9 + 144) = v8;
  *(v9 + 152) = v0;

  v10 = *(v2 + 56);
  if (v0)
  {
    v11 = sub_1000832F0;
  }

  else
  {
    v11 = sub_100082F4C;
  }

  return _swift_task_switch(v11, v10, 0);
}

void sub_100082F4C()
{
  sub_100004884();
  v1 = v0[19];
  v2 = v0[16];
  sub_1000132B4();
  v3._countAndFlagsBits = 0xD000000000000012;
  Connection.execute(_:)(v3);
  if (!v4)
  {
    v7 = *(v0[9] + 24);
    v0[6] = v0[18];
    v8 = v0[12];
    sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    CheckedContinuation.resume(returning:)();
    goto LABEL_4;
  }

  v5 = v4;
  v6 = v0[18];

  while (1)
  {
    v50 = v0[16];
    v51._countAndFlagsBits = 0xD000000000000014;
    v51._object = 0x8000000100155B90;
    Connection.execute(_:)(v51);
    if (v8)
    {
    }

    sub_100011378();
    v0[5] = v5;
    v52 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    sub_10001A604(v52);
LABEL_4:
    sub_100083F2C(v8, type metadata accessor for ConnectionTransactionSerializer.Transaction);
    v9 = v0[13];
    v10 = v0[7];
    sub_1000112AC();
    v11 = *(v10 + v9);
    v12 = 1;
    if (*(v11 + 16))
    {
      break;
    }

LABEL_9:
    v26 = v0[8];
    sub_100084468(v26, v12);
    sub_100009C04(v26);
    if (v27)
    {
      v53 = v0[11];
      v54 = v0[12];
      v55 = v0[7];
      sub_100039B5C(v0[8], &qword_10019AB10, &qword_10014F880);
      v56 = *(v55 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask);
      *(v55 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask) = 0;

      sub_100003A00();
      sub_10001064C();

      __asm { BRAA            X1, X16 }
    }

    v28 = v0[14];
    v29 = v0[11];
    v30 = v0[12];
    v32 = v0[7];
    v31 = v0[8];
    sub_100007B68();
    sub_100084178(v33, v30, v34);
    v35 = sub_10001183C();
    sub_100083E3C(v35, v29, v36);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v39 = sub_10001A88C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[11];
    if (v41)
    {
      v43 = sub_100007764();
      *v43 = 134217984;
      v44 = *v42;
      sub_1000067BC();
      sub_100083F2C(v42, v45);
      *(v43 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Handling transaction request: %ld", v43, 0xCu);
      sub_100004DE4();
    }

    else
    {
      sub_100083F2C(v0[11], type metadata accessor for ConnectionTransactionSerializer.Transaction);
    }

    v46 = v0[15];
    v47 = v0[7];

    v0[16] = *(v47 + v46);
    v48._countAndFlagsBits = 0xD00000000000001BLL;
    v48._object = 0x8000000100155B70;
    Connection.execute(_:)(v48);
    v5 = v49;
    if (!v49)
    {
      sub_1000037BC();
      v60 = *(v59 + 4);
      v61 = swift_task_alloc();
      v0[17] = v61;
      *v61 = v0;
      sub_100004ED0(v61);
      sub_10001064C();

      __asm { BRAA            X0, X16 }
    }
  }

  v13 = v0[13];
  v14 = v0[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + v13) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000F51A8(v11);
    v11 = v64;
  }

  v16 = *(v11 + 16);
  if (v16)
  {
    v17 = v0[13];
    v18 = v0[10];
    v20 = v0[7];
    v19 = v0[8];
    v21 = *(v18 + 80);
    v22 = *(v18 + 72);
    *(v11 + 16) = v16 - 1;
    *(v20 + v17) = v11;
    sub_100007B68();
    sub_100084178(v23, v24, v25);
    v12 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000832F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  v15 = 0xD000000000000014;
  v16 = v14[19];
  *&v17 = 134217984;
  v88 = v17;
  while (1)
  {
    v18 = v14[16];
    v19._object = 0x8000000100155B90;
    v19._countAndFlagsBits = 0xD000000000000014;
    Connection.execute(_:)(v19);
    if (v20)
    {
    }

    sub_100011378();
    v14[5] = v16;
    v21 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    sub_10001A604(v21);
    sub_1000067BC();
    sub_100083F2C(v20, v22);
    v23 = v14[13];
    v24 = v14[7];
    sub_1000112AC();
    v25 = *(v24 + v23);
    if (*(v25 + 16))
    {
      v26 = v14[13];
      v27 = v14[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + v26) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000F51A8(v25);
        v25 = v63;
      }

      v29 = *(v25 + 16);
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = v14[13];
      v31 = v14[10];
      v33 = v14[7];
      v32 = v14[8];
      v34 = *(v31 + 80);
      v35 = *(v31 + 72);
      *(v25 + 16) = v29 - 1;
      *(v33 + v30) = v25;
      sub_100007B68();
      sub_100084178(v36, v37, v38);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v14[8];
    sub_100084468(v40, v39);
    sub_100009C04(v40);
    if (v41)
    {
      break;
    }

    v42 = v14[14];
    v44 = v14[11];
    v43 = v14[12];
    v46 = v14[7];
    v45 = v14[8];
    sub_100007B68();
    sub_100084178(v47, v43, v48);
    v49 = sub_10001183C();
    sub_100083E3C(v49, v44, v50);
    v51 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v52 = sub_10001A88C();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v14[11];
    if (v54)
    {
      v56 = sub_100007764();
      *v56 = v88;
      v15 = *v55;
      sub_1000067BC();
      sub_100083F2C(v55, v57);
      sub_1000139DC();
      _os_log_impl(&_mh_execute_header, v51, v58, "Handling transaction request: %ld", v56, 0xCu);
      sub_100004DE4();
    }

    else
    {
      sub_100083F2C(v14[11], type metadata accessor for ConnectionTransactionSerializer.Transaction);
    }

    v59 = v14[15];
    v60 = v14[7];

    v14[16] = *(v60 + v59);
    v61._countAndFlagsBits = v15 + 7;
    v61._object = 0x8000000100155B70;
    Connection.execute(_:)(v61);
    v16 = v62;
    if (!v62)
    {
      sub_1000037BC();
      *&v88 = v76;
      v78 = *(v77 + 4);
      v79 = swift_task_alloc();
      v14[17] = v79;
      *v79 = v14;
      sub_100004ED0(v79);
      sub_10000783C();

      v80(v80, v81, v82, v83, v84, v85, v86, v87, v88, *(&v88 + 1), a11, a12, a13, a14);
      return;
    }
  }

  v64 = v14[11];
  v65 = v14[12];
  v66 = v14[7];
  sub_100039B5C(v14[8], &qword_10019AB10, &qword_10014F880);
  v67 = *(v66 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask);
  *(v66 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask) = 0;

  sub_100003A00();
  sub_10000783C();

  v69(v68, v69, v70, v71, v72, v73, v74, v75, v88, *(&v88 + 1), a11, a12, a13, a14);
}

uint64_t sub_100083628()
{
  v1 = OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_logger;
  v2 = type metadata accessor for Logger();
  sub_100002978(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_connection);

  v5 = *(v0 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_transactionQueue);

  v6 = *(v0 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000836B4()
{
  sub_100083628();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100083708()
{
  result = type metadata accessor for Logger();
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

void sub_100083820()
{
  sub_1000838B4();
  if (v0 <= 0x3F)
  {
    sub_1000838FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000838B4()
{
  result = qword_10019AA68;
  if (!qword_10019AA68)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10019AA68);
  }

  return result;
}

void sub_1000838FC()
{
  if (!qword_10019AA70)
  {
    sub_10002EC70(qword_10019AA78, &unk_10014F7F0);
    sub_10002EC70(&unk_100198760, &qword_10014F3C0);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_10019AA70);
    }
  }
}

id sub_100083984()
{
  v1 = String._bridgeToObjectiveC()();

  sub_100002B74();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithBundleIdentifier:v1 actionIdentifier:v2];

  return v3;
}

unint64_t sub_100083A24()
{
  result = qword_10019AAB8;
  if (!qword_10019AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AAB8);
  }

  return result;
}

uint64_t sub_100083A94()
{
  sub_100004884();
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v6);
  v11 = *(v0 + v6 + 8);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100083BD4;

  return sub_10007B8D4(v0 + v3, v0 + v4, v8, v9, v10, v11);
}

uint64_t sub_100083BD4()
{
  sub_1000036A0();
  v2 = v1;
  sub_1000036D0();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_10000298C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_100083CC0(uint64_t a1, uint64_t a2)
{
  v15[3] = type metadata accessor for LSLinkBundleRecord(0);
  v15[4] = &off_10018F930;
  v3 = sub_100013234(v15);
  sub_100083E3C(a2, v3, type metadata accessor for LSLinkBundleRecord);
  sub_100013334(v15, v14);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_1000034B4(v14, v14[3]);
    v9 = *v8;
    v10 = v8[1];

    sub_1000034F8(v14);
    v11 = sub_100004C50(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "✓ Completed indexing transaction for %{public}s", v6, 0xCu);
    sub_1000034F8(v7);
  }

  else
  {

    sub_1000034F8(v14);
  }

  return sub_1000034F8(v15);
}

uint64_t sub_100083E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000482C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100083E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100084084(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10001AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000840C8()
{
  sub_1000070C8();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000BEC4;

  return sub_1000829CC(v3, v4, v5, v6);
}

uint64_t sub_100084178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000482C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000841E4()
{
  sub_1000070C8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BFAC;

  return sub_1000819D4(v2, v3, v4);
}

uint64_t sub_100084294(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003D44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000842EC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_100084300()
{
  v0 = *(*(type metadata accessor for Logger() - 8) + 80);
  v1 = sub_100002B74();

  sub_10007A790(v1, v2);
}

uint64_t sub_10008437C(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100084398(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000843AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000843EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100084430(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100084468(uint64_t a1, uint64_t a2)
{
  sub_1000075C4(a1, a2, 1, v2);

  return swift_endAccess();
}

uint64_t sub_100084498(uint64_t a1, uint64_t a2)
{
  sub_10000347C(v2, a2);

  return Logger.logObject.getter();
}

void sub_1000844E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_100084504(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10008451C()
{

  return sub_1001102E0(v0, v1);
}

char *sub_100084534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  if (qword_100198208 != -1)
  {
    swift_once();
  }

  memcpy(v51, &unk_10019DC48, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v51, &v39);
    if (qword_100198210 != -1)
    {
      sub_100002B80();
      swift_once();
    }

    v39 = a1;
    v40 = a2;
    v10 = == infix<A>(_:_:)();
    v12 = v11;
    v14 = v13;
    memcpy(v38, v51, sizeof(v38));
    QueryType.filter(_:)(v10, v12, v14, &type metadata for Table, &protocol witness table for Table, v15, v16, v17, v33, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15], v38[16], v38[17], v38[18], v38[19], v38[20], v38[21], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);

    sub_10001970C(v51);
    v18 = &v39;
  }

  else
  {
    sub_1000196B0(v51, &v39);
    v18 = v51;
  }

  memcpy(v50, v18, sizeof(v50));
  v42 = &type metadata for Table;
  v43 = &protocol witness table for Table;
  v39 = swift_allocObject();
  memcpy((v39 + 16), v50, 0xB0uLL);
  v19 = Connection.prepare(_:)(&v39);
  result = sub_1000034F8(&v39);
  if (!v3)
  {
    swift_retain_n();
    v34 = v19;
    v21 = dispatch thunk of _AnySequenceBox._makeIterator()();
    v35 = _swiftEmptyArrayStorage;
    v22 = &unk_100198000;
    v52 = v21;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v39)
      {
        break;
      }

      if (v22[66] != -1)
      {
        sub_100002B80();
        swift_once();
      }

      Row.get<A>(_:)();
      v23 = v39;
      v24 = v40;
      if (qword_100198218 != -1)
      {
        swift_once();
      }

      Row.get<A>(_:)();
      v36 = v23;
      sub_100084B50();
      v25 = type metadata accessor for URL();
      sub_1000075C4(v9, 1, 1, v25);
      v26 = static LNAssistantIntentMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10007029C(0, *(v35 + 2) + 1, 1, v35);
        v35 = v31;
      }

      v22 = &unk_100198000;
      v27 = v35;
      v29 = *(v35 + 2);
      v28 = *(v35 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_10007029C(v28 > 1, v29 + 1, 1, v35);
        v27 = v32;
      }

      *(v27 + 2) = v29 + 1;
      v35 = v27;
      v30 = &v27[24 * v29];
      *(v30 + 4) = v36;
      *(v30 + 5) = v24;
      *(v30 + 6) = v26;
    }

    return v35;
  }

  return result;
}

uint64_t sub_100084A8C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100084AF0()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x617461646174656DLL, 0xE800000000000000, v0, v1);
}

unint64_t sub_100084B50()
{
  result = qword_10019C990;
  if (!qword_10019C990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019C990);
  }

  return result;
}

uint64_t sub_100084C14()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DD28);
  sub_10000347C(v0, qword_10019DD28);
  type metadata accessor for ApplicationService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100084CC4()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DD40 = result;
  *algn_10019DD48 = v1;
  return result;
}

id sub_100084CF4(uint64_t a1, uint64_t a2)
{
  sub_10000D34C();
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  v2[14] = v3;
  v2[15] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100084D50()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100084DA0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100084DD0()
{
  sub_100084DA0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100084E20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_100043C80();
}

uint64_t sub_100084EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000BFAC;

  return sub_100084F48(a5);
}

uint64_t sub_100084F48(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_10002EB80(&qword_10019AC90, &qword_10014FB80) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for LSLinkBundleRecord(0);
  v2[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100085014, v1, 0);
}

uint64_t sub_100085014()
{
  sub_100027014();
  sub_1000036C4();
  v1 = *(v0[9] + 112);
  v2 = sub_100007F78();
  v3 = sub_100010DC0(v2, sub_10011D0D0);
  v0[13] = v3;
  v0[14] = 0;
  v4 = v3;
  sub_100018D28();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_10008521C;
  sub_100091EFC();

  return sub_1000C4814();
}

uint64_t sub_10008521C()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 72);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  return _swift_task_switch(sub_10008531C, v3, 0);
}

uint64_t sub_10008531C()
{
  sub_100027014();
  sub_1000036C4();
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = OBJC_IVAR____TtC10LinkDaemon8Registry_store;
  *(v0 + 128) = OBJC_IVAR____TtC10LinkDaemon8Registry_store;
  v5 = *(v2 + v4);
  *(v0 + 136) = sub_1000212D8(0, 0);

  if (v3)
  {
    if (qword_100198220 != -1)
    {
      sub_100002B94();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000347C(v6, qword_10019DD28);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000103CC())
    {
      sub_100007764();
      v8 = sub_100005D18();
      *v1 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v9;
      *v8 = v9;
      sub_1000129B0();
      _os_log_impl(v10, v11, v12, v13, v1, 0xCu);
      sub_100003EFC(v8, &unk_10019A260, &unk_10014D030);
      sub_100004D70();
      sub_100004D8C();
    }

    else
    {
    }

    if (!*(v0 + 112))
    {
    }

    sub_100091EE4();

    sub_100003A00();
    sub_100091EFC();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_10008551C;
    v15 = *(v0 + 104);
    sub_100091EFC();

    return sub_1000C4AF0();
  }
}

uint64_t sub_10008551C()
{
  sub_1000070C8();
  v2 = *v1;
  sub_10000788C();
  *v4 = v3;
  v5 = *(v2 + 144);
  v6 = *v1;
  sub_1000050EC();
  *v7 = v6;
  *(v9 + 152) = v8;
  *(v9 + 160) = v0;

  v10 = *(v2 + 72);
  if (v0)
  {
    v11 = sub_100086678;
  }

  else
  {
    v11 = sub_10008563C;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100085C94()
{
  sub_1000070C8();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 264);
  *v4 = *v1;
  v3[34] = v7;
  v3[35] = v0;

  if (v0)
  {
    v9 = v3[31];
    v8 = v3[32];
    v10 = v3[30];
    v11 = v3[9];

    v12 = sub_1000867F4;
    v13 = v11;
  }

  else
  {
    v13 = v3[9];
    v12 = sub_100085DC8;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_100085DC8()
{
  sub_1000036A0();
  if (v0[8])
  {
    os_transaction_needs_more_time();
  }

  v1 = v0[12];
  v0[5] = v0[11];
  v0[6] = &off_10018F930;
  sub_100013234(v0 + 2);
  v2 = sub_10001AAC8();
  sub_100027910(v2, v3);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_100085E94;
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v11 = v0[28];

  return sub_100027A3C((v0 + 2), v6, v8, v7, v5, v10, v11, v9);
}

uint64_t sub_100085E94()
{
  sub_100028788();
  sub_1000036C4();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  v3[37] = v0;

  if (v0)
  {
    v9 = v3[34];
    v11 = v3[31];
    v10 = v3[32];
    v12 = v3[30];
    v13 = v3[9];
  }

  else
  {
    v14 = v3[34];
    v16 = v3[31];
    v15 = v3[32];
    v17 = v3[30];
    v18 = v3[25];
    v19 = v3[9];

    sub_1000034F8(v3 + 2);
  }

  sub_10001A7B0();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_100086678()
{
  sub_100028788();
  sub_1000036C4();
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  if (qword_100198220 != -1)
  {
    sub_100002B94();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000347C(v3, qword_10019DD28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100007764();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_1000139F0(&_mh_execute_header, v9, v10, "Error getting registry, App Shortcuts, or bundle IDs from registry %@");
    sub_100003EFC(v7, &unk_10019A260, &unk_10014D030);
    sub_100003A0C();
    sub_100004D70();
  }

  else
  {
  }

  if (!*(v0 + 112))
  {
  }

  sub_100091EE4();

  sub_100003A00();
  sub_10001A7B0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000867F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000920D4();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  sub_100018BA8();
  if (!v97)
  {
LABEL_46:
    sub_100002B94();
    swift_once();
  }

  v29 = *(v26 + 200);
  v117 = type metadata accessor for Logger();
  sub_10000347C(v117, qword_10019DD28);
  sub_100008840();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  v32 = os_log_type_enabled(v30, v31);
  v34 = *(v26 + 224);
  v33 = *(v26 + 232);
  v115 = v33;
  v116 = *(v26 + 280);
  v35 = *(v26 + 208);
  v36 = *(v26 + 216);
  v37 = "LNValueTypeSpecificMetadataKey";
  v38 = *(v26 + 200);
  if (v32)
  {
    v39 = *(v26 + 192);
    a10 = *(v26 + 96);
    v40 = sub_100007764();
    v41 = sub_1000056E4();
    a14 = v41;
    *v40 = 136315138;
    v42 = sub_100004C50(v39, v38, &a14);

    *(v40 + 4) = v42;
    sub_1000168DC(&_mh_execute_header, v30, v31, "Could not retrieve Action Metadata for %s");
    sub_1000034F8(v41);
    sub_100004D8C();
    v37 = "LNValueTypeSpecificMetadataKey";
    sub_1000036AC();

    sub_10001FE58(a10);
  }

  else
  {
    v41 = *(v26 + 96);

    sub_10001FE58(v41);
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        sub_100006490();
        if (v97)
        {
          v83 = *(v26 + 152);
          v84 = *(v26 + 136);

          sub_100091EE4();

          sub_100003A00();
          sub_1000381A8();

          return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, v115, v116, v117, a14, a15, a16, a17, a18);
        }

        sub_10001D5F8(v43);
        if (v45)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        sub_100017244(v44);
        v46 = objc_allocWithZone(LSApplicationRecord);
        sub_1000128FC();
        swift_bridgeObjectRetain_n();
        sub_100011B14();
        v51 = sub_100005C3C(v47, v48, v49, v50);
        *(v26 + 208) = v51;
        if (!v34)
        {
          break;
        }

        sub_100018BA8();
        if (!v97)
        {
          sub_100002B94();
          swift_once();
        }

        sub_10000347C(v117, qword_10019DD28);
        sub_1000128FC();

        v52 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_100018694();
        if (sub_1000103CC())
        {
          sub_100007764();
          sub_10001DD04();
          sub_100091E90();
          sub_100011388(COERCE_FLOAT(*(v37 + 473)), v53, v54, v55, v56, v57);
          sub_100091FA8();
          *(v31 + 4) = v36;
          sub_1000129B0();
          sub_100091EA8(v58, v59, v60, v61);
          sub_10001AA00();
          sub_100003A0C();
        }

        else
        {
        }
      }

      if (v51)
      {
        break;
      }
    }

    v62 = *(v26 + 80);
    v63 = *(v26 + 88);
    v31 = v51;
    sub_10001F1EC();
    sub_100009C04(v62);
    if (!v97)
    {
      break;
    }

    sub_100003EFC(*(v26 + 80), &qword_10019AC90, &qword_10014FB80);
    sub_100018BA8();
    if (!v97)
    {
      sub_100002B94();
      swift_once();
    }

    sub_10000347C(v117, qword_10019DD28);
    sub_1000128FC();

    v64 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100018694();
    if (sub_1000103CC())
    {
      v34 = sub_100007764();
      sub_1000056E4();
      sub_100091E90();
      *v34 = *(v37 + 473);
      v65 = sub_10000485C();
      sub_100004C50(v65, v66, v67);
      sub_100091FA8();
      *(v34 + 1) = v36;
      sub_1000129B0();
      _os_log_impl(v68, v69, v70, v71, v34, 0xCu);
      sub_10001AA00();
      sub_1000036AC();
    }

    else
    {
    }
  }

  v72 = *(v26 + 176);
  v73 = *(v26 + 128);
  v74 = *(v26 + 96);
  v75 = *(v26 + 104);
  v76 = *(v26 + 80);
  sub_1000067E8();
  sub_1000273D8(v77, v78, v79);
  *(v26 + 216) = *&v72[v75];
  objc_opt_self();
  sub_100016628();

  *(v26 + 224) = [v72 sharedVocabulary];
  v80 = sub_100027434();
  sub_100092110(v80);
  v81 = sub_10000485C();
  *(v26 + 240) = sub_100078CB8(v81, v82);
  sub_10000C90C();
  v94 = _swiftEmptyArrayStorage;
LABEL_28:
  sub_100091DB0();
  while (1)
  {
    sub_100091FEC();
    if (v97)
    {
      break;
    }

    sub_100013CD4();
    if (v45)
    {
      goto LABEL_45;
    }

    sub_100092010(v95);
    v97 = v97 && v96 == v41;
    if (v97 || (sub_100091F34() & 1) != 0)
    {

      v98 = v34;
      sub_100018D28();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = *(v94 + 2);
        v102 = sub_100004E28();
        sub_100021568(v102, v103, v104, v94);
        v94 = v105;
      }

      v100 = *(v94 + 2);
      v99 = *(v94 + 3);
      v34 = (v100 + 1);
      if (v100 >= v99 >> 1)
      {
        sub_100091EC0(v99 > 1, v100 + 1);
        v94 = v106;
      }

      sub_1000263CC();
      goto LABEL_28;
    }
  }

  sub_100091E44();
  v107 = sub_10000485C();
  sub_10007AB80(v107, v108);
  sub_1000128FC();

  *(v26 + 256) = v94;
  v109 = swift_task_alloc();
  v110 = sub_1000113F0(v109);
  *v110 = v111;
  sub_100003B30();
  sub_10000485C();
  sub_1000381A8();

  return sub_1000167F4(v112, v113);
}

uint64_t sub_100086F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000920D4();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  sub_1000034F8((v26 + 16));
  sub_100018BA8();
  if (!v107)
  {
LABEL_47:
    sub_100002B94();
    swift_once();
  }

  v29 = *(v26 + 296);
  v30 = *(v26 + 200);
  v125 = type metadata accessor for Logger();
  sub_10000347C(v125, qword_10019DD28);
  sub_1000128FC();

  swift_errorRetain();
  v31 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100018694();

  v32 = sub_1000103CC();
  v33 = *(v26 + 296);
  v35 = *(v26 + 224);
  v34 = *(v26 + 232);
  v36 = *(v26 + 208);
  v37 = *(v26 + 216);
  v38 = *(v26 + 200);
  if (v32)
  {
    a11 = *(v26 + 232);
    v39 = *(v26 + 192);
    a12 = *(v26 + 96);
    a10 = *(v26 + 224);
    v40 = swift_slowAlloc();
    a14 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = sub_100004C50(v39, v38, &a14);

    *(v40 + 4) = v41;
    *(v40 + 12) = 2080;
    *(v26 + 56) = v33;
    swift_errorRetain();
    sub_10002EB80(&unk_100198760, &qword_10014F3C0);
    v42 = String.init<A>(describing:)();
    v34 = v43;
    v44 = sub_100004C50(v42, v43, &a14);

    *(v40 + 14) = v44;
    sub_1000129B0();
    _os_log_impl(v45, v46, v47, v48, v40, 0x16u);
    swift_arrayDestroy();
    sub_1000036AC();
    sub_1000067A0();

    v49 = a12;
  }

  else
  {
    v50 = *(v26 + 96);

    v49 = v50;
  }

  sub_10001FE58(v49);
  v51 = v125;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        sub_100006490();
        if (v107)
        {
          v93 = *(v26 + 152);
          v94 = *(v26 + 136);

          sub_100091EE4();

          sub_100003A00();
          sub_1000381A8();

          return v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, v125, a14, a15, a16, a17, a18);
        }

        sub_10001D5F8(v52);
        if (v54)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        sub_100017244(v53);
        v55 = objc_allocWithZone(LSApplicationRecord);
        sub_1000128FC();
        swift_bridgeObjectRetain_n();
        sub_100011B14();
        v60 = sub_100005C3C(v56, v57, v58, v59);
        *(v26 + 208) = v60;
        if (!v33)
        {
          break;
        }

        sub_100018BA8();
        if (!v107)
        {
          sub_100002B94();
          swift_once();
        }

        sub_10000347C(v51, qword_10019DD28);
        sub_1000128FC();

        v61 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_100018694();
        if (sub_1000103CC())
        {
          sub_100007764();
          sub_10001DD04();
          sub_100091E90();
          sub_100011388(4.8149e-34, v62, v63, v64, v65, v66);
          sub_100091FA8();
          *"lueTypeSpecificMetadataKey" = v34;
          sub_1000129B0();
          sub_100091EA8(v67, v68, v69, v70);
          sub_10001E0F4();
          sub_1000036AC();
          sub_100003A0C();
        }

        else
        {
        }
      }

      if (v60)
      {
        break;
      }
    }

    v71 = *(v26 + 80);
    v72 = *(v26 + 88);
    v73 = v60;
    sub_10001F1EC();
    sub_100009C04(v71);
    if (!v107)
    {
      break;
    }

    sub_100003EFC(*(v26 + 80), &qword_10019AC90, &qword_10014FB80);
    sub_100018BA8();
    if (!v107)
    {
      sub_100002B94();
      swift_once();
    }

    sub_10000347C(v51, qword_10019DD28);
    sub_1000128FC();

    v74 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100018694();
    if (sub_1000103CC())
    {
      v33 = sub_100007764();
      sub_1000056E4();
      sub_100091E90();
      *v33 = 136315138;
      v75 = sub_10000485C();
      sub_100004C50(v75, v76, v77);
      sub_100091FA8();
      *(v33 + 4) = v34;
      sub_1000129B0();
      _os_log_impl(v78, v79, v80, v81, v33, 0xCu);
      sub_10001E0F4();
      v51 = v125;
      sub_1000036AC();
      sub_1000036AC();
    }

    else
    {
    }
  }

  a12 = v73;
  v82 = *(v26 + 176);
  v83 = *(v26 + 128);
  v84 = *(v26 + 96);
  v85 = *(v26 + 104);
  v86 = *(v26 + 80);
  sub_1000067E8();
  sub_1000273D8(v87, v88, v89);
  *(v26 + 216) = *&v82[v85];
  objc_opt_self();
  sub_100016628();

  *(v26 + 224) = [v82 sharedVocabulary];
  v90 = sub_100027434();
  sub_100092110(v90);
  v91 = sub_10000485C();
  *(v26 + 240) = sub_100078CB8(v91, v92);
  sub_10000C90C();
  v104 = _swiftEmptyArrayStorage;
LABEL_29:
  sub_100091DB0();
  while (1)
  {
    sub_100091FEC();
    if (v107)
    {
      break;
    }

    sub_100013CD4();
    if (v54)
    {
      goto LABEL_46;
    }

    sub_100092010(v105);
    v107 = v107 && v106 == v36;
    if (v107 || (sub_100091F34() & 1) != 0)
    {

      v108 = v33;
      sub_100018D28();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = *(v104 + 2);
        v112 = sub_100004E28();
        sub_100021568(v112, v113, v114, v104);
        v104 = v115;
      }

      v110 = *(v104 + 2);
      v109 = *(v104 + 3);
      v33 = v110 + 1;
      if (v110 >= v109 >> 1)
      {
        sub_100091EC0(v109 > 1, v110 + 1);
        v104 = v116;
      }

      sub_1000263CC();
      goto LABEL_29;
    }
  }

  sub_100091E44();
  v117 = sub_10000485C();
  sub_10007AB80(v117, v118);
  sub_1000128FC();

  *(v26 + 256) = v104;
  v119 = swift_task_alloc();
  v120 = sub_1000113F0(v119);
  *v120 = v121;
  sub_100003B30();
  sub_10000485C();
  sub_1000381A8();

  return sub_1000167F4(v122, v123);
}

uint64_t sub_100087738(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1000034B4(a1, a1[3]);
  v6 = *(v5 + 1);
  v8[0] = *v5;
  v8[1] = v6;
  v9 = v5[4];
  return sub_100090BE0(v8, a2, v4);
}

uint64_t sub_10008778C()
{
  sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  sub_10002EB2C();
  v0 = Dictionary.init(dictionaryLiteral:)();
  sub_10002EB80(&qword_10019ACB0, &qword_10014FBB0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_10019DD50 = result;
  return result;
}

uint64_t sub_10008781C()
{
  sub_1000921B0();
  sub_1000036C4();
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  swift_willThrow();

  v5 = v0[37];
  sub_100003A00();
  sub_10009206C();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000878BC()
{
  sub_1000921B0();
  sub_1000036C4();
  sub_100013E90();

  v3 = *(v1 + 336);
  sub_100003A00();
  sub_10009206C();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10008795C()
{
  sub_100027014();
  sub_1000036C4();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];

  sub_10001FE58(v6);
  sub_100021304();

  sub_100003A00();
  sub_100091EFC();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000879F4()
{
  sub_1000036A0();
  v1 = *(v0 + 128);

  v2 = *(v0 + 160);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);

  sub_100003A00();

  return v5();
}

uint64_t sub_100087A68()
{
  sub_1000036A0();
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];

  v4 = v0[23];
  v5 = v0[13];
  v6 = v0[11];

  sub_100003A00();

  return v7();
}

uint64_t sub_100087B88(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  sub_100003D44(0, &qword_10019ACF0, LNAutoShortcutSubstitution_ptr);
  v5[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100003D44(0, &qword_10019ACF8, LNAppShortcutSpanData_ptr);
  v5[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  a5;
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = sub_100087CCC;

  return sub_100016564();
}

uint64_t sub_100087CCC()
{
  sub_100004884();
  sub_100012628();
  sub_10000298C();
  *v3 = v2;
  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  *v3 = *v1;

  sub_1000125A8();
  v10 = *(v9 + 24);
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v11 = sub_100011138();
    v12(v11, v2);
  }

  else
  {
    v13 = sub_100013514();
    v14(v13);
  }

  _Block_release(*(v2 + 24));
  sub_100007528();

  return v15();
}

uint64_t sub_100087E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_100003B20();
}

uint64_t sub_100087E8C()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource);
  v2 = sub_100007F78();
  v3 = sub_100010DC0(v2, sub_10011D0D0);
  v0[12] = v3;
  v6 = v3;
  v7 = v0[10];
  v8 = v0[11];
  if (!v7)
  {
    v12 = *(v8 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier);
    v7 = *(v8 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8);

    goto LABEL_9;
  }

  v9 = objc_opt_self();

  v10 = String._bridgeToObjectiveC()();
  v16 = *(v8 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
  v17 = *(v8 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken + 16);
  v0[6] = sub_1000882C4;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10008834C;
  v0[5] = &unk_10018E3E8;
  v11 = _Block_copy(v0 + 2);
  *(v0 + 8) = v16;
  *(v0 + 9) = v17;
  LODWORD(v9) = [v9 validateEntitlement:v10 auditToken:v0 + 16 validator:v11];
  _Block_release(v11);

  if (v9)
  {
    v12 = v0[9];
LABEL_9:
    v0[13] = v7;
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_100088100;
    v14 = sub_10001313C(v0[8]);

    return sub_1000C4CE8(v14, v12, v7);
  }

  sub_1000910C0();
  sub_100007978();
  *v15 = 0;
  swift_willThrow();

  sub_100003A00();

  return v4();
}

uint64_t sub_100088100()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    v9 = sub_100088260;
  }

  else
  {
    v10 = *(v3 + 104);

    v9 = sub_100088204;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100088204()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_100088260()
{
  sub_1000036A0();
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);
  sub_100003A00();

  return v3();
}

uint64_t sub_1000882C4(uint64_t a1)
{
  sub_100009E90(a1, v3, &qword_1001992F0, &qword_10014E000);
  if (v4)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_100003EFC(v3, &qword_1001992F0, &qword_10014E000);
    return 0;
  }

  return result;
}

uint64_t sub_10008834C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a2;
    sub_1000398F4(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  v5 = v4(v9);

  sub_100003EFC(v9, &qword_1001992F0, &qword_10014E000);
  return v5 & 1;
}

uint64_t sub_100088410(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_100003D44(0, &unk_10019ACE0, LNRelevantIntent_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v7;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10008852C;

  return sub_100087E74(v7, a2, v9);
}

uint64_t sub_10008852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100012628();
  sub_10000298C();
  *v13 = v12;
  v14 = *(v12 + 48);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(v12 + 16);
  *v13 = *v11;

  sub_1000125A8();
  v19 = *(v18 + 24);
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v20 = sub_100011138();
    v21(v20, v12);
  }

  else
  {
    v22 = sub_100013514();
    v23(v22);
  }

  _Block_release(*(v12 + 24));
  sub_100007528();
  sub_100091FC0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_1000886A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_100003B20();
}

uint64_t sub_1000886C0()
{
  sub_1000070C8();
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource);
  v2 = sub_100007F78();
  v3 = sub_100010DC0(v2, sub_10011D0D0);
  v4 = *&v3[OBJC_IVAR____TtC10LinkDaemon8Registry_store];
  sub_100081FDC(*(*(v0 + 40) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(*(v0 + 40) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_100003A00();

  return v6();
}

uint64_t sub_1000887B0(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10008889C;

  return sub_1000886A8(v7, v9, v10);
}

uint64_t sub_10008889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100012628();
  sub_10000298C();
  *v13 = v12;
  v14 = *(v12 + 48);
  v15 = *(v12 + 40);
  v16 = *(v12 + 24);
  v17 = *(v12 + 16);
  *v13 = *v11;

  sub_1000125A8();
  v19 = *(v18 + 32);
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v20 = sub_100011138();
    v21(v20, v12);
  }

  else
  {
    v22 = sub_100013514();
    v23(v22);
  }

  _Block_release(*(v12 + 32));
  sub_100007528();
  sub_100091FC0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_100088A28()
{
  sub_1000070C8();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource);
  v2 = sub_100007F78();
  v3 = sub_100010DC0(v2, sub_10011D0D0);
  v4 = *&v3[OBJC_IVAR____TtC10LinkDaemon8Registry_store];
  sub_100081F1C(*(*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8));

  v5 = sub_1000088B0();

  return v6(v5);
}

uint64_t sub_100088B3C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100088BE4;

  return sub_100088A14();
}

uint64_t sub_100088BE4()
{
  sub_1000070C8();
  v2 = v0;
  sub_1000036D0();
  v4 = v3;
  sub_10000788C();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100003D44(0, &qword_10019ACD8, LNIntentEnablement_ptr);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v11 = *(v4 + 24);
  v12 = sub_10001AB0C();
  v13(v12);

  _Block_release(v11);
  sub_100003A00();

  return v14();
}

uint64_t sub_100088D54()
{
  sub_1000036A0();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v1[1] = sub_100088DD8;

  return sub_100088A14();
}

uint64_t sub_100088DD8()
{
  sub_1000070C8();
  v3 = v2;
  sub_1000036D0();
  v5 = v4;
  sub_10000788C();
  *v6 = v5;
  v8 = *(v7 + 16);
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;
  *(v5 + 24) = v0;

  if (v0)
  {
    sub_100007528();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;

    return _swift_task_switch(sub_100088F08, 0, 0);
  }
}

void sub_100088F08()
{
  v2 = *(v1 + 24);
  sub_100090800(*(v1 + 32));
  sub_100018D28();

  v3 = *(v0 + 16);
  if (v3)
  {
    sub_100011438(0, v3, 0);
    v6 = sub_100060B10(v0);
    v7 = 0;
    v8 = v0 + 64;
    v29 = v4;
    v30 = v3;
    v28 = v0 + 72;
    v31 = v0 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v0 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v0 + 36) != v4)
      {
        goto LABEL_25;
      }

      v33 = v7;
      v34 = v4;
      v32 = v5;
      v10 = (*(v0 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v0;
      v14 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];

      if (v14 >= v15 >> 1)
      {
        sub_100011438(v15 > 1, v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v14];
      v16[4] = v11;
      v16[5] = v12;
      v17 = 1 << *(v13 + 32);
      if (v6 >= v17)
      {
        goto LABEL_26;
      }

      v0 = v13;
      v8 = v31;
      v18 = *(v31 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v0 + 36) != v34)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v20 = v30;
      }

      else
      {
        v21 = v9 << 6;
        v22 = (v28 + 8 * v9);
        v23 = v9 + 1;
        v20 = v30;
        while (v23 < (v17 + 63) >> 6)
        {
          v25 = *v22++;
          v24 = v25;
          v21 += 64;
          ++v23;
          if (v25)
          {
            sub_100060B50(v6, v34, v32 & 1);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_100060B50(v6, v34, v32 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v33 + 1;
      v6 = v17;
      v4 = v29;
      if (v33 + 1 == v20)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_20:

    v26 = sub_1000088B0();

    v27(v26);
  }
}

uint64_t sub_1000891C0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100089268;

  return sub_100088D54();
}

uint64_t sub_100089268()
{
  sub_1000070C8();
  v2 = v0;
  sub_1000036D0();
  v4 = v3;
  sub_10000788C();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v11 = *(v4 + 24);
  v12 = sub_10001AB0C();
  v13(v12);

  _Block_release(v11);
  sub_100003A00();

  return v14();
}

uint64_t sub_1000893D0()
{
  sub_1000036A0();
  sub_100003D44(0, &qword_10019A770, AFPreferences_ptr);
  v1 = sub_100027D40();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100089468(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10001D400;

  return sub_1000893B4();
}

uint64_t sub_10008950C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return sub_100003B20();
}

uint64_t sub_100089528()
{
  sub_1000036A0();
  v1 = *(v0 + 64);
  v2 = objc_opt_self();
  if (v1 == 1)
  {
    v3 = [v2 enabled];
  }

  else
  {
    v3 = [v2 disabledWithReason:0];
  }

  v4 = v3;
  *(v0 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100089600;
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = sub_10001313C(*(v0 + 16));

  return sub_1000886A8(v8, v9, v4);
}

uint64_t sub_100089600()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100089720, 0, 0);
  }

  else
  {

    sub_100003A00();

    return v9();
  }
}

uint64_t sub_100089720()
{
  sub_1000036A0();

  sub_100003A00();
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_100089814(int a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1000898F8;

  return sub_10008950C(v7, v9, a2);
}

uint64_t sub_1000898F8()
{
  sub_100028788();
  sub_1000036C4();
  sub_100012628();
  sub_10000298C();
  *v3 = v2;
  v4 = *(v2 + 40);
  v5 = *(v2 + 32);
  v6 = *(v2 + 16);
  *v3 = *v1;

  sub_1000125A8();
  v8 = *(v7 + 24);
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v9 = sub_100011138();
    v10(v9, v2);
  }

  else
  {
    v11 = sub_100013514();
    v12(v11);
  }

  _Block_release(*(v2 + 24));
  sub_100007528();
  sub_10001A7B0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_100089A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for URL();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100089B4C, 0, 0);
}

uint64_t sub_100089FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for URL();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10008A0DC, 0, 0);
}

uint64_t sub_10008A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for URL();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10008A66C, 0, 0);
}

uint64_t sub_10008AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for URL();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10008ABFC, 0, 0);
}

uint64_t sub_10008ABFC()
{
  v87 = v0;
  sub_100092044(__stack_chk_guard);
  v2 = (v1 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier);
  v4 = *v2;
  v3 = v2[1];
  sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
  sub_100008840();
  swift_bridgeObjectRetain_n();
  v5 = sub_1000FEC40(v4, v3, 0);
  *(v0 + 136) = v5;
  type metadata accessor for FrameworkRecord();
  v6 = static FrameworkRecord.enumerated.getter();
  if (v5)
  {
    *(v0 + 64) = 0;
    v7 = [v5 ln_linkedFrameworksWithError:v0 + 64];
    v8 = *(v0 + 64);
    if (v7)
    {
      v9 = sub_100092180();
      v10 = v8;

      goto LABEL_6;
    }

    v11 = v8;
    sub_10000D34C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_6:
  v12 = v9[2];
  if (!v12)
  {

    v40 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v79 = v5;
  v80 = v4;
  v81 = v3;
  v13 = *(v0 + 120);
  v15 = *(v13 + 16);
  v13 += 16;
  v14 = v15;
  v16 = v9 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v17 = *(v13 + 56);
  v18 = (v13 - 8);
  v19 = _swiftEmptyArrayStorage;
  v82 = v17;
  do
  {
    v20 = sub_100009C24();
    v14(v20);
    if (*(v6 + 16) && (sub_100092168(), (v22 & 1) != 0))
    {
      v23 = v14;
      v24 = *(v0 + 128);
      v25 = v19;
      v26 = *(v0 + 112);
      v27 = *(*(v6 + 56) + 8 * v21);
      v28 = FrameworkRecord.bundleIdentifier.getter();
      v83 = v29;
      v84 = v28;

      v30 = *v18;
      v31 = sub_100091D5C();
      v19 = v25;
      v32(v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = v25[2];
        sub_100004E28();
        sub_100013A60();
        v19 = v38;
      }

      v33 = v19[2];
      v14 = v23;
      if (v33 >= v19[3] >> 1)
      {
        sub_100013A60();
        v19 = v39;
      }

      v19[2] = v33 + 1;
      v34 = &v19[2 * v33];
      v34[4] = v84;
      v34[5] = v83;
      v17 = v82;
    }

    else
    {
      v35 = sub_100091DF0();
      v36(v35);
    }

    v16 += v17;
    v12 = (v12 - 1);
  }

  while (v12);
  v40 = v19;

  v4 = v80;
  v3 = v81;
  v5 = v79;
  if (v79)
  {
LABEL_20:
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      v42 = v41;
      v12 = v5;
      v43 = [v42 containingBundleRecord];
      if (v43 && (v44 = v43, v45 = [v43 bundleIdentifier], v44, v45))
      {

        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = v46;
      }

      else
      {
        v47 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
        v49 = v48;

        if (v49)
        {

          v4 = v47;
          v3 = v49;
        }
      }
    }
  }

LABEL_26:
  v50 = *(v0 + 72);
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v85 = inited;

  sub_10006E3AC(v52);
  sub_10006E3AC(v40);
  v53 = sub_1000275B8(v85);
  *(v0 + 144) = v53;
  v54 = *(v53 + 32);
  *(v0 + 200) = v54;
  v55 = -1;
  v56 = -1 << v54;
  v57 = *(v53 + 56);
  if (-v56 < 64)
  {
    v55 = ~(-1 << -v56);
  }

  *(v0 + 152) = OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_logger;
  v58 = v55 & v57;
  if (v58)
  {
    v59 = 0;
    v60 = *(v0 + 144);
LABEL_33:
    *(v0 + 160) = v58;
    *(v0 + 168) = v59;
    sub_1000131B8(v59);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (sub_10000E7D4(v64))
    {
      sub_100007764();
      v65 = sub_10000EE1C();
      v86 = v65;
      *v12 = 136446210;
      *(v12 + 1) = sub_100004C50(v3, v40, &v86);
      sub_1000139F0(&_mh_execute_header, v66, v67, "Searching %{public}s");
      sub_1000034F8(v65);
      sub_100003A0C();
      sub_100004D70();
    }

    v68 = swift_task_alloc();
    *(v0 + 184) = v68;
    *v68 = v0;
    sub_100009A0C(v68);
    v69 = sub_100006A94();

    return sub_1000C5194(v69, v70, v71, v72);
  }

  else
  {
    v61 = 0;
    v62 = ((63 - v56) >> 6) - 1;
    while (v62 != v61)
    {
      v59 = v61 + 1;
      v58 = *(*(v0 + 144) + 8 * v61++ + 64);
      if (v58)
      {
        goto LABEL_33;
      }
    }

    v74 = *(v0 + 128);
    v75 = *(v0 + 136);
    v76 = *(v0 + 104);
    v77 = *(v0 + 88);

    sub_1000105C0();

    return v78(0);
  }
}

uint64_t sub_10008B194()
{
  sub_1000070C8();
  v3 = v2;
  v4 = *v1;
  sub_10000788C();
  *v5 = v4;
  v7 = *(v6 + 184);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    v10 = *(v4 + 176);

    v11 = sub_10008B508;
  }

  else
  {
    *(v4 + 192) = v3;
    v11 = sub_10008B2E0;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10008B2E0()
{
  sub_100004884();
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);

  if (v2)
  {
    v4 = *(v0 + 192);
LABEL_3:
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    sub_100092004();
    v7 = *(v0 + 88);

    sub_1000105C0();
    sub_10001064C();

    __asm { BRAA            X2, X16 }
  }

  v10 = *(v0 + 168);
  v11 = (*(v0 + 160) - 1) & *(v0 + 160);
  if (v11)
  {
    v12 = *(v0 + 144);
  }

  else
  {
    do
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
      }

      if (v13 >= (((1 << *(v0 + 200)) + 63) >> 6))
      {
        goto LABEL_3;
      }

      v12 = *(v0 + 144);
      v11 = *(v12 + 8 * v13 + 56);
      ++v10;
    }

    while (!v11);
    v10 = v13;
  }

  *(v0 + 160) = v11;
  *(v0 + 168) = v10;
  v14 = *(v0 + 152);
  v15 = *(v0 + 80);
  v16 = (*(v12 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v11)))));
  v17 = *v16;
  *(v0 + 176) = v16[1];

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (sub_10000E7D4(v19))
  {
    sub_100007764();
    v20 = sub_10000EE1C();
    *(v1 + 4) = sub_100019678(4.8751e-34, v20, v21, v22, v23, v24, v25, v26, v27, v20);
    sub_1000139F0(&_mh_execute_header, v28, v29, "Searching %{public}s");
    sub_1000034F8(v20);
    sub_100003A0C();
    sub_100004D70();
  }

  v30 = swift_task_alloc();
  *(v0 + 184) = v30;
  *v30 = v0;
  sub_100009A0C();
  sub_100006A94();
  sub_10001064C();

  return sub_1000C5194(v31, v32, v33, v34);
}

uint64_t sub_10008B508()
{
  sub_100004884();
  v2 = *(v0 + 168);
  v3 = (*(v0 + 160) - 1) & *(v0 + 160);
  if (v3)
  {
    v4 = *(v0 + 144);
  }

  else
  {
    do
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
      }

      if (v5 >= (((1 << *(v0 + 200)) + 63) >> 6))
      {
        v26 = *(v0 + 128);
        v27 = *(v0 + 136);
        v28 = *(v0 + 104);
        v29 = *(v0 + 88);

        sub_1000105C0();
        sub_10001064C();

        __asm { BRAA            X2, X16 }
      }

      v3 = *(*(v0 + 144) + 8 * v5 + 56);
      ++v2;
    }

    while (!v3);
    v2 = v5;
  }

  *(v0 + 160) = v3;
  *(v0 + 168) = v2;
  v6 = *(v0 + 152);
  sub_1000131B8(v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (sub_10000E7D4(v8))
  {
    sub_100007764();
    v9 = sub_10000EE1C();
    *(v1 + 4) = sub_100019678(4.8751e-34, v9, v10, v11, v12, v13, v14, v15, v16, v9);
    sub_1000139F0(&_mh_execute_header, v17, v18, "Searching %{public}s");
    sub_1000034F8(v9);
    sub_100003A0C();
    sub_100004D70();
  }

  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  *v19 = v0;
  sub_100009A0C();
  sub_100006A94();
  sub_10001064C();

  return sub_1000C5194(v20, v21, v22, v23);
}

uint64_t sub_10008B6EC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_10009153C();
  v1._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8285;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  return 91;
}

uint64_t sub_10008B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008BA30()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008BB38(int a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v5[5] = v11;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v12;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_100091D20;

  return sub_10008B790(v8, v10, v14, v15, v12);
}

uint64_t sub_10008BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008C06C()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008C154()
{
  sub_1000036A0();

  v1 = *(v0 + 80);
  sub_1000105C0();

  return v2();
}

uint64_t sub_10008C1D4(int a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v5[5] = v12;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v13;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_10008C308;

  return sub_10008BC54(v8, v10, a2, v12, v13);
}

uint64_t sub_10008C308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100011514();
  v14 = v13[7];
  v15 = v13[6];
  v16 = v13[4];
  v17 = v13[2];
  v18 = *v12;
  sub_10000298C();
  *v19 = v18;

  sub_1000125A8();
  v21 = *(v20 + 40);
  v22 = v13[3];

  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100008840();

    v23 = sub_100013514();
    v24(v23);

    _Block_release(v22);
  }

  else
  {
    v25 = sub_100011138();
    v26(v25, v11, 0);
    _Block_release(v22);
  }

  sub_100007528();
  sub_100091FC0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_10008C4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008C754()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008C83C()
{
  sub_1000036A0();

  sub_1000105C0();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_10008C8BC(int a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v5[5] = v11;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v12;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_100091D20;

  return sub_10008C4B4(v8, v10, v14, v15, v12);
}

uint64_t sub_10008C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

void sub_10008C9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1000920D4();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[6];
  v30 = v26[7];
  v31 = v26[5];
  v32 = v26[3];
  v33 = OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_logger;

  v34 = v30;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    a12 = v33;
    a13 = v31;
    v38 = v26[6];
    v37 = v26[7];
    v39 = v26[5];
    a11 = v26[3];
    a9 = v26[4];
    a10 = v26[2];
    v40 = swift_slowAlloc();
    a14 = swift_slowAlloc();
    *v40 = 136446978;
    *(v40 + 4) = sub_100004C50(*(v37 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(v37 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8), &a14);
    *(v40 + 12) = 2082;
    v41 = sub_10008B6EC(v38);
    v43 = sub_100004C50(v41, v42, &a14);

    *(v40 + 14) = v43;
    *(v40 + 22) = 2082;
    v44 = v39 == 0;
    v31 = a13;
    if (v44)
    {
      v45 = 0x6C61636F6CLL;
    }

    else
    {
      v45 = a9;
    }

    if (v44)
    {
      v46 = 0xE500000000000000;
    }

    else
    {
      v46 = a13;
    }

    v47 = sub_100004C50(v45, v46, &a14);

    *(v40 + 24) = v47;
    *(v40 + 32) = 2082;
    *(v40 + 34) = sub_100004C50(a10, a11, &a14);
    _os_log_impl(&_mh_execute_header, v35, v36, "Request from %{public}s %{public}sfor AppEntity:%{public}s:%{public}s", v40, 0x2Au);
    swift_arrayDestroy();
    sub_100003A0C();
    sub_100004D70();
  }

  v48 = *(v26[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource);
  v49 = sub_100007F78();
  v50 = sub_100010DC0(v49, sub_10011D0D0);
  v26[8] = v50;
  v51 = v50;
  if (sub_1000C512C())
  {
    if (v26[5])
    {
      v108 = v51;
      type metadata accessor for FrameworkRecord();
      v52 = static FrameworkRecord.enumerated.getter();
      v54 = v52 + 64;
      v53 = *(v52 + 64);
      v55 = sub_100004EF8(v52);
      v58 = v57 & v56;
      v60 = (63 - v59) >> 6;
      v109 = v55;

      v61 = 0;
      while (v58)
      {
        v62 = v31;
LABEL_18:
        v65 = v26[4];
        v64 = v26[5];
        v66 = *(*(v109 + 56) + ((v61 << 9) | (8 * __clz(__rbit64(v58)))));
        if (FrameworkRecord.bundleIdentifier.getter() == v65 && v64 == v67)
        {

LABEL_34:

          v98 = swift_task_alloc();
          v99 = sub_100016D40(v98);
          *v99 = v100;
          v99[1] = sub_10008CF14;
          v101 = v26[3];
          v102 = v26[2];
          sub_10001313C(v26[4]);
          sub_1000381A8();

          sub_1000C5194(v103, v104, v105, v106);
          return;
        }

        v69 = v26[4];
        v58 &= v58 - 1;
        v31 = v62;
        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v70)
        {
          goto LABEL_34;
        }
      }

      while (1)
      {
        v63 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v63 >= v60)
        {

          v51 = v108;
          goto LABEL_30;
        }

        v58 = *(v54 + 8 * v63);
        ++v61;
        if (v58)
        {
          v62 = v31;
          v61 = v63;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_30:
      v88 = v26[3];

      v89 = v51;
      sub_100018D28();
      v90 = swift_task_alloc();
      v26[12] = v90;
      *v90 = v26;
      v90[1] = sub_10008D080;
      v91 = v26[7];
      sub_1000079D8(v26[6]);
      sub_1000381A8();

      sub_10008AB08(v92, v93, v94, v95, v96);
    }
  }

  else
  {
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (sub_10000E7D4(v72))
    {
      v73 = sub_100011344();
      *v73 = 0;
      sub_1000129B0();
      _os_log_impl(v74, v75, v76, v77, v73, 2u);
      sub_1000036AC();
    }

    type metadata accessor for RegistryError(0);
    sub_100005258();
    sub_100009868(v78, v79);
    sub_100092038();
    sub_100007978();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100003A00();
    sub_1000381A8();

    v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_10008CF14()
{
  sub_1000070C8();
  v3 = v2;
  sub_1000036D0();
  v5 = v4;
  sub_10000788C();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (v0)
  {
    v11 = sub_10008D1C4;
  }

  else
  {
    *(v5 + 88) = v3;
    v11 = sub_10008D024;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10008D024()
{
  sub_1000036A0();
  v1 = *(v0 + 88);

  v2 = sub_1000088B0();

  return v3(v2);
}

uint64_t sub_10008D080()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008D168()
{
  sub_1000036A0();
  v1 = *(v0 + 104);

  v2 = sub_1000088B0();

  return v3(v2);
}

uint64_t sub_10008D1C4()
{
  sub_1000036A0();

  v1 = *(v0 + 80);
  sub_100003A00();

  return v2();
}

uint64_t sub_10008D240(int a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v5[5] = v12;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v13;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_100091D20;

  return sub_10008C9D8(v8, v10, a2, v12, v13);
}

uint64_t sub_10008D374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008D38C()
{
  sub_1000070C8();
  if (*(v0[5] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource))
  {
    v0[6] = sub_100010DC0(sub_100010EE8, sub_10011D0D0);
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_10008D4C4;
    v2 = v0[4];
    v3 = v0[2];
    v4 = sub_10001313C(v0[3]);

    return sub_1001137B8(v4, v5, v6);
  }

  else
  {
    sub_1000910C0();
    v8 = sub_100007978();
    sub_100091D90(v8, v9);
    sub_100003A00();

    return v10();
  }
}

uint64_t sub_10008D4C4()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    v9 = sub_10008D61C;
  }

  else
  {
    v9 = sub_10008D5C0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10008D5C0()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_10008D61C()
{
  sub_1000036A0();

  v1 = *(v0 + 64);
  sub_100003A00();

  return v2();
}

uint64_t sub_10008D698(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10008D7A8;

  return sub_10008D374(v6, v7, v9);
}

uint64_t sub_10008D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100012628();
  sub_10000298C();
  *v13 = v12;
  v14 = *(v12 + 48);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = *(v12 + 16);
  *v13 = *v11;

  sub_1000125A8();
  v19 = *(v18 + 24);
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v20 = sub_100011138();
    v21(v20, v12);
  }

  else
  {
    v22 = sub_100013514();
    v23(v22);
  }

  _Block_release(*(v12 + 24));
  sub_100007528();
  sub_100091FC0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_10008D924()
{
  sub_1000036A0();

  v1 = *(v0 + 72);
  sub_1000105C0();

  return v2(0);
}

uint64_t sub_10008D984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008D9A0()
{
  sub_1000070C8();
  if (*(v0[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource))
  {
    v0[8] = sub_100010DC0(sub_100010EE8, sub_10011D0D0);
    v1 = *(v0[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_processID);
    v2 = swift_task_alloc();
    v3 = sub_100016D40(v2);
    *v3 = v4;
    v3[1] = sub_10008DAF0;
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100103A08(v9, v7, v8, v5, v6, v1);
  }

  else
  {
    sub_1000910C0();
    v11 = sub_100007978();
    sub_100091D90(v11, v12);
    sub_100003A00();

    return v13();
  }
}

uint64_t sub_10008DAF0()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    v9 = sub_10008D1C4;
  }

  else
  {
    v9 = sub_10008DBEC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10008DBEC()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_10008DC68(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = type metadata accessor for UUID();
  v4[3] = v8;
  v9 = *(v8 - 8);
  v4[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v4[6] = _Block_copy(a3);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v4[7] = v13;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v4[8] = v16;
  a4;
  v17 = swift_task_alloc();
  v4[9] = v17;
  *v17 = v4;
  v17[1] = sub_10008DDE4;

  return sub_10008D984(v11, v12, v14, a2, v16);
}

uint64_t sub_10008DDE4()
{
  sub_100028788();
  sub_1000036C4();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = v5[2];
  v10 = *v1;
  sub_10000298C();
  *v11 = v10;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10000D34C();

    isa = 0;
    v13 = v7;
  }

  else
  {
    v15 = v3[4];
    v14 = v3[5];
    v16 = v3[3];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v14, v16);
    v7 = 0;
    v13 = isa;
  }

  v19 = v3 + 5;
  v18 = v3[5];
  v17 = v19[1];
  v20 = sub_100011138();
  v21(v20, isa, v7);

  _Block_release(v17);

  v22 = *(v10 + 8);
  sub_10001A7B0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_10008DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008DFB4()
{
  sub_1000070C8();
  if (*(v0[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource))
  {
    v0[8] = sub_100010DC0(sub_100010EE8, sub_10011D0D0);
    v1 = *(v0[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_processID);
    v2 = swift_task_alloc();
    v3 = sub_100016D40(v2);
    *v3 = v4;
    v3[1] = sub_10008E100;
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    v9 = sub_10001313C(v0[2]);

    return sub_100103E5C(v9, v10, v11, v12, v13, v1);
  }

  else
  {
    sub_1000910C0();
    v15 = sub_100007978();
    sub_100091D90(v15, v16);
    sub_100003A00();

    return v17();
  }
}

uint64_t sub_10008E100()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    v9 = sub_100091D24;
  }

  else
  {
    v9 = sub_100091D30;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10008E21C(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  sub_100029498();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = sub_1000077D8();

  return sub_100006240(v16, v17);
}

uint64_t sub_10008E2E0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v9 = type metadata accessor for UUID();
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[5] = v12;
  v5[6] = _Block_copy(a4);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v5[7] = v14;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v5[8] = v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  a5;
  v18 = swift_task_alloc();
  v5[9] = v18;
  *v18 = v5;
  v18[1] = sub_10008E46C;

  return sub_10008DF98(v13, v15, a2, v17, v12);
}

uint64_t sub_10008E46C()
{
  sub_100012628();
  sub_10000298C();
  *v3 = v2;
  v4 = *(v2 + 72);
  v22 = *(v2 + 64);
  sub_1000125A8();
  v6 = *(v5 + 56);
  v7 = *(v2 + 40);
  v8 = *(v2 + 32);
  v9 = *(v2 + 24);
  v10 = *(v2 + 16);
  v11 = *v1;
  sub_10000298C();
  *v12 = v11;

  (*(v8 + 8))(v7, v9);

  sub_1000125A8();
  v14 = *(v13 + 48);
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v15 = sub_100011138();
    v16(v15, v2);
  }

  else
  {
    v17 = sub_100013514();
    v18(v17);
  }

  v19 = *(v2 + 40);
  _Block_release(*(v2 + 48));

  sub_100007528();

  return v20();
}

uint64_t sub_10008E66C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10008E770(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100003B20();
}

void sub_10008E784()
{
  sub_100004884();
  v21 = v0;
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  v3 = *(v1 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken + 16);
  *(v0 + 32) = *(v1 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
  *(v0 + 48) = v3;
  v4 = [v2 if_dataWithAuditToken:v0 + 32];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_100198230 != -1)
    {
      sub_1000088C4();
    }

    v9 = qword_10019DD50;
    v10 = swift_task_alloc();
    v11 = *(v0 + 16);
    v10[1].i64[0] = v6;
    v10[1].i64[1] = v8;
    v10[2] = vextq_s8(v11, v11, 8uLL);

    os_unfair_lock_lock((v9 + 24));
    sub_1000912DC((v9 + 16), &v20);
    os_unfair_lock_unlock((v9 + 24));
    v15 = v20;

    v16 = [v15 processInstanceIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100009B18(v6, v8);
    v17 = *(v0 + 8);
    sub_10001064C();

    __asm { BRAA            X3, X16 }
  }

  sub_1000910C0();
  sub_100007978();
  *v12 = 1;
  swift_willThrow();
  sub_100003A00();
  sub_10001064C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10008E970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v60 = a5;
  v11 = sub_10002EB80(&qword_10019A0B8, &qword_10014EE58);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  sub_10000E624(a2, a3, *a1, v16);
  if (sub_1000032C4(v16, 1, v17) == 1)
  {
    v56 = a2;
    v57 = a1;
    v59 = a6;
    sub_100003EFC(v16, &qword_10019A0B8, &qword_10014EE58);
    v55 = a4;
    v24 = (a4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
    v25 = *(a4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken + 16);
    v62 = *(a4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
    v63 = v25;
    LODWORD(v62) = LNPIDForAuditToken();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v26;
    v27._countAndFlagsBits = 45;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28 = *(v24 + 1);
    v62 = *v24;
    v63 = v28;
    LODWORD(v62) = LNPIDVersionForAuditToken();
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30 = v65;
    v54 = v64;
    v31 = objc_opt_self();
    v32 = *(v24 + 1);
    v62 = *v24;
    v63 = v32;
    v33 = [v31 bundleIdentifierForAuditToken:&v62];
    v58 = a3;
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v41 = *v24;
    v40 = v24[1];
    v42 = v24[2];
    v43 = v24[3];
    v44 = objc_allocWithZone(LNConnectionListenerEndpoint);
    v45 = v60;
    v46 = sub_100090714(v54, v30, v35, v37, v45, v41, v40, v42, v43);
    v47 = *(v17 + 48);
    v48 = OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_identifier;
    v49 = type metadata accessor for UUID();
    v50 = v61;
    (*(*(v49 - 8) + 16))(v61, v55 + v48, v49);
    *(v50 + v47) = v46;
    sub_1000075C4(v50, 0, 1, v17);
    v51 = v56;
    v52 = v58;
    sub_1000098F0(v56, v58);
    v53 = v46;
    result = sub_1000666EC(v50, v51, v52);
    *v59 = v53;
  }

  else
  {
    sub_10005644C(v16, v23, &qword_100199C70, &unk_10014EE60);
    sub_10005644C(v23, v20, &qword_100199C70, &unk_10014EE60);
    *a6 = *&v20[*(v17 + 48)];
    v38 = type metadata accessor for UUID();
    return (*(*(v38 - 8) + 8))(v20, v38);
  }

  return result;
}

uint64_t sub_10008ED84(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10008EE48;

  return sub_10008E770(v6);
}

uint64_t sub_10008EE48()
{
  sub_100028788();
  sub_1000036C4();
  v2 = v0;
  v4 = v3;
  sub_1000036D0();
  v6 = v5;
  sub_10000788C();
  *v7 = v6;
  v9 = v8[5];
  v10 = v8[3];
  v11 = v8[2];
  v12 = *v1;
  sub_10000298C();
  *v13 = v12;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100091D5C();
    String._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v14 = *(v6 + 32);
  v15 = sub_10001AB0C();
  v16(v15);

  _Block_release(v14);
  sub_100003A00();
  sub_10001A7B0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_10008EFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100003B20();
}

uint64_t sub_10008EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000921B0();
  a15 = v17;
  a16 = v18;
  sub_1000036C4();
  a14 = v16;
  sub_100003D44(0, &qword_10019AC98, LNEntitlementsValidator_ptr);
  sub_100092024();
  if (static LNEntitlementsValidator.hasEntitlement<A>(_:equalTo:)())
  {
    if (qword_100198230 != -1)
    {
      sub_1000088C4();
    }

    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = qword_10019DD50;
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = v19;

    os_unfair_lock_lock((v21 + 24));
    sub_1000911D4((v21 + 16), &a9);
    os_unfair_lock_unlock((v21 + 24));

    sub_1000105C0();
    sub_10009206C();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    sub_1000910C0();
    sub_100007978();
    *v23 = 2;
    swift_willThrow();
    sub_100003A00();
    sub_10009206C();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31);
  }
}

uint64_t sub_10008F150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v56 = a4;
  v58 = a2;
  v59 = a3;
  v63 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  v60 = *(v63 - 8);
  v5 = *(v60 + 64);
  __chkstk_darwin(v63);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v54 - v8;
  __chkstk_darwin(v9);
  v55 = &v54 - v10;
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = *a1 + 64;
  v18 = 1 << *(*a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(*a1 + 64);
  v21 = (v18 + 63) >> 6;
  v64 = *a1;

  v23 = 0;
  v57 = _swiftEmptyArrayStorage;
  while (v20)
  {
LABEL_9:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = *(v60 + 72);
    sub_100009E90(*(v64 + 56) + v26 * (v25 | (v23 << 6)), v16, &qword_100199C70, &unk_10014EE60);
    sub_100009E90(v16, v13, &qword_100199C70, &unk_10014EE60);
    v27 = sub_100090B70(*&v13[*(v63 + 48)]);
    if (!v28)
    {
      v32 = type metadata accessor for UUID();
      (*(*(v32 - 8) + 8))(v13, v32);
      goto LABEL_17;
    }

    if (v27 == v58 && v28 == v59)
    {

      v33 = type metadata accessor for UUID();
      (*(*(v33 - 8) + 8))(v13, v33);
      goto LABEL_19;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 8))(v13, v31);
    if (v30)
    {
LABEL_19:
      sub_10005644C(v16, v55, &qword_100199C70, &unk_10014EE60);
      v34 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B3744(0, v34[2] + 1, 1);
        v34 = v65;
      }

      v37 = v34[2];
      v36 = v34[3];
      v38 = (v37 + 1);
      if (v37 >= v36 >> 1)
      {
        v57 = (v37 + 1);
        sub_1000B3744(v36 > 1, v37 + 1, 1);
        v38 = v57;
        v34 = v65;
      }

      v57 = v34;
      v34[2] = v38;
      result = sub_10005644C(v55, v34 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v37 * v26, &qword_100199C70, &unk_10014EE60);
    }

    else
    {
LABEL_17:
      result = sub_100003EFC(v16, &qword_100199C70, &unk_10014EE60);
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_9;
    }
  }

  v39 = v57;
  v40 = v57[2];
  if (v40)
  {
    v65 = _swiftEmptyArrayStorage;
    sub_100011438(0, v40, 0);
    v41 = v65;
    v42 = v39 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v60 = *(v60 + 72);
    do
    {
      v43 = v61;
      sub_100009E90(v42, v61, &qword_100199C70, &unk_10014EE60);
      v44 = v62;
      sub_100009E90(v43, v62, &qword_100199C70, &unk_10014EE60);
      v45 = *(v44 + *(v63 + 48));
      v46 = [v45 processInstanceIdentifier];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v48;

      sub_100003EFC(v43, &qword_100199C70, &unk_10014EE60);
      v49 = type metadata accessor for UUID();
      (*(*(v49 - 8) + 8))(v44, v49);
      v65 = v41;
      v51 = v41[2];
      v50 = v41[3];
      if (v51 >= v50 >> 1)
      {
        sub_100011438(v50 > 1, v51 + 1, 1);
        v41 = v65;
      }

      v41[2] = v51 + 1;
      v52 = &v41[2 * v51];
      v53 = v64;
      v52[4] = v47;
      v52[5] = v53;
      v42 += v60;
      --v40;
    }

    while (v40);
  }

  else
  {

    v41 = _swiftEmptyArrayStorage;
  }

  *v56 = v41;
  return result;
}

uint64_t sub_10008F71C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_10008F7EC;

  return sub_10008EFA8(v5, v7);
}

uint64_t sub_10008F7EC()
{
  sub_100027014();
  sub_1000036C4();
  v2 = v0;
  sub_1000036D0();
  v4 = v3;
  sub_10000788C();
  *v5 = v4;
  v7 = v6[5];
  v8 = v6[4];
  v9 = v6[2];
  v10 = *v1;
  sub_10000298C();
  *v11 = v10;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v12 = *(v4 + 24);
  v13 = sub_10001AB0C();
  v14(v13);

  _Block_release(v12);
  sub_100003A00();
  sub_100091EFC();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_10008F954(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100003B20();
}

uint64_t sub_10008F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000921B0();
  a15 = v17;
  a16 = v18;
  sub_1000036C4();
  a14 = v16;
  sub_100003D44(0, &qword_10019AC98, LNEntitlementsValidator_ptr);
  sub_100092024();
  if (static LNEntitlementsValidator.hasEntitlement<A>(_:equalTo:)())
  {
    if (qword_100198230 != -1)
    {
      sub_1000088C4();
    }

    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = qword_10019DD50;
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = v19;

    os_unfair_lock_lock((v21 + 24));
    sub_100091114((v21 + 16), &a9);
    os_unfair_lock_unlock((v21 + 24));

    sub_1000105C0();
    sub_10009206C();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    sub_1000910C0();
    sub_100007978();
    *v23 = 2;
    swift_willThrow();
    sub_100003A00();
    sub_10009206C();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31);
  }
}

uint64_t sub_10008FB04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v57 = a4;
  v62 = a2;
  v63 = a3;
  v64 = sub_10002EB80(&qword_10019ACA8, &unk_10014FBA0);
  v5 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = (&v54 - v8);
  __chkstk_darwin(v9);
  v67 = &v54 - v10;
  __chkstk_darwin(v11);
  v60 = (&v54 - v12);
  __chkstk_darwin(v13);
  v55 = &v54 - v14;
  __chkstk_darwin(v15);
  v54 = &v54 - v16;
  v17 = *a1;
  v18 = *a1 + 64;
  v19 = 1 << *(*a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(*a1 + 64);
  v22 = (v19 + 63) >> 6;
  v65 = v17;

  v24 = 0;
  v58 = v22;
  v59 = v18;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_8:
      v26 = __clz(__rbit64(v21)) | (v25 << 6);
      v27 = *(v65 + 56);
      v28 = (*(v65 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v66 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
      v31 = v64;
      v32 = v60;
      sub_100009E90(v27 + *(*(v66 - 8) + 72) * v26, v60 + *(v64 + 48), &qword_100199C70, &unk_10014EE60);
      *v32 = v29;
      v32[1] = v30;
      v33 = v67;
      sub_10005644C(v32, v67, &qword_10019ACA8, &unk_10014FBA0);
      v34 = v61;
      sub_100009E90(v33, v61, &qword_10019ACA8, &unk_10014FBA0);
      v35 = *v34;
      v36 = v34[1];
      sub_1000098F0(v29, v30);
      sub_100009B18(v35, v36);
      v37 = v34 + *(v31 + 48);
      v38 = v66;
      v39 = *&v37[*(v66 + 48)];
      v40 = [v39 processInstanceIdentifier];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v41 == v62 && v43 == v63)
      {
        break;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v46 = type metadata accessor for UUID();
      (*(*(v46 - 8) + 8))(v37, v46);
      if (v45)
      {
        goto LABEL_17;
      }

      v21 &= v21 - 1;
      result = sub_100003EFC(v67, &qword_10019ACA8, &unk_10014FBA0);
      v24 = v25;
      v22 = v58;
      v18 = v59;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v46 = type metadata accessor for UUID();
    (*(*(v46 - 8) + 8))(v37, v46);
LABEL_17:

    v48 = v55;
    sub_10005644C(v67, v55, &qword_10019ACA8, &unk_10014FBA0);
    v49 = v48;
    v50 = v54;
    sub_10005644C(v49, v54, &qword_10019ACA8, &unk_10014FBA0);
    v51 = v50;
    v52 = v56;
    sub_10005644C(v51, v56, &qword_10019ACA8, &unk_10014FBA0);
    sub_100009B18(*v52, *(v52 + 8));
    v53 = v52 + *(v64 + 48);
    *v57 = *(v53 + *(v38 + 48));
    type metadata accessor for UUID();
    return (*(*(v46 - 8) + 8))(v53, v46);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        sub_1000910C0();
        swift_allocError();
        *v47 = 3;
        return swift_willThrow();
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10008FFF0(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = sub_1000077D8();

  return sub_100006240(v10, v11);
}

uint64_t sub_100090070(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_100090140;

  return sub_10008F954(v5, v7);
}

uint64_t sub_100090140()
{
  sub_100028788();
  sub_1000036C4();
  sub_100011514();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v2;
  sub_10000298C();
  *v8 = v7;

  sub_1000125A8();
  v10 = *(v9 + 24);
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100008840();

    v11 = sub_100013514();
    v12(v11);

    _Block_release(v10);
  }

  else
  {
    v13 = sub_100011138();
    v14(v13, v1, 0);
    _Block_release(v10);
  }

  sub_100007528();
  sub_10001A7B0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

unint64_t sub_1000902B8(char a1)
{
  result = 0x74696E6920746F4ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7070757320746F4ELL;
      break;
    case 3:
      result = 0xD000000000000038;
      break;
    default:
      result = 0xD000000000000046;
      break;
  }

  return result;
}

char *sub_100090368@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  UUID.init()();
  v61 = UUID.uuidString.getter();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = [v13 propertyTitle];
  v17 = [v13 propertyTitleKey];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v19;

  v20 = [v13 providerClassName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v22;
  v56 = v21;

  v23 = [v13 parameterTypeIdentifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v25;
  v54 = v24;

  v52 = [v13 value];
  v26 = [v13 synonyms];
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = sub_1000232F4(v27);
  if (!v28)
  {

    v32 = _swiftEmptyArrayStorage;
LABEL_12:
    v43 = v62;
    *a4 = v61;
    a4[1] = v15;
    a4[2] = v43;
    a4[3] = a3;
    a4[4] = v16;
    a4[5] = v18;
    v44 = v56;
    a4[6] = v57;
    a4[7] = v44;
    v45 = v54;
    a4[8] = v55;
    a4[9] = v45;
    v46 = v52;
    a4[10] = v53;
    a4[11] = v46;
    a4[12] = v32;
  }

  v29 = v28;
  v63 = _swiftEmptyArrayStorage;
  result = sub_1000B362C(0, v28 & ~(v28 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v58 = v29;
    v59 = a3;
    v48 = v18;
    v49 = v16;
    v60 = v15;
    v50 = a4;
    v51 = v4;
    v31 = 0;
    v32 = v63;
    v33 = v27 & 0xC000000000000001;
    v34 = v27;
    do
    {
      if (v33)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(v27 + 8 * v31 + 32);
      }

      v36 = v35;
      v63 = v32;
      v38 = v32[2];
      v37 = v32[3];
      v39 = v59;

      v40 = v60;

      if (v38 >= v37 >> 1)
      {
        sub_1000B362C((v37 > 1), v38 + 1, 1);
        v32 = v63;
      }

      ++v31;
      v32[2] = v38 + 1;
      v41 = &v32[5 * v38];
      v42 = v62;
      v41[4] = v61;
      v41[5] = v40;
      v41[6] = v42;
      v41[7] = v39;
      v41[8] = v36;
      v27 = v34;
    }

    while (v58 != v31);

    a4 = v50;
    a3 = v59;
    v15 = v60;
    v18 = v48;
    v16 = v49;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_100090714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19[0] = a6;
  v19[1] = a7;
  v19[2] = a8;
  v19[3] = a9;
  v17 = [v9 initWithProcessInstanceIdentifier:v15 bundleIdentifier:v16 xpcListenerEndpoint:a5 auditToken:v19];

  return v17;
}

unint64_t *sub_100090800(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_100090A94(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_100047518(0, v4, v5);
  v6 = sub_100090964(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_100090964(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 56) + 8 * v15) value];
    if (result == 1)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_10010BFDC(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_10010BFDC(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100090A94(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_100090964(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100090B0C(void *a1)
{
  v1 = [a1 systemImageName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100090B70(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100090BE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29[-v8 - 8];
  v30[3] = &type metadata for ConcreteXPCEvent;
  v30[4] = &off_10018C970;
  v10 = swift_allocObject();
  v30[0] = v10;
  v11 = *a1;
  v12 = *(a1 + 1);
  v31 = *(a1 + 3);
  v32 = v12;
  v13 = *(a1 + 1);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v13;
  *(v10 + 48) = a1[4];
  v14 = sub_1000034B4(v30, &type metadata for ConcreteXPCEvent);
  v15 = v14[3];
  v16 = v14[4];
  v17 = v15 == 0xD00000000000001FLL && 0x8000000100154100 == v16;
  if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_unknownObjectRetain();
    sub_10004AD94(&v32, v29);
    sub_10004ADCC(&v31, v29);
    if (qword_100198220 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000347C(v18, qword_10019DD28);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_11;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Received Siri Vocabulary database migration darwin notification";
    goto LABEL_10;
  }

  v26 = v15 == 0xD000000000000029 && 0x8000000100154120 == v16;
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    swift_unknownObjectRetain();
    sub_10004AD94(&v32, v29);
    sub_10004ADCC(&v31, v29);
    return sub_1000034F8(v30);
  }

  swift_unknownObjectRetain();
  sub_10004AD94(&v32, v29);
  sub_10004ADCC(&v31, v29);
  if (qword_100198220 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000347C(v27, qword_10019DD28);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Received Siri language change darwin notification";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);
  }

LABEL_11:

  v23 = type metadata accessor for TaskPriority();
  sub_1000075C4(v9, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a3;
  v24[5] = a2;
  swift_unknownObjectRetain();

  sub_10003A6C0(0, 0, v9, &unk_10014FB70, v24);

  return sub_1000034F8(v30);
}

uint64_t sub_100090F6C()
{
  sub_100027014();
  sub_1000036C4();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100004BD0(v5);
  *v6 = v7;
  v6[1] = sub_10000BFAC;
  sub_100091EFC();

  return sub_100084EAC(v8, v9, v10, v11, v12);
}

uint64_t sub_10009101C()
{
  sub_1000070C8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004BD0(v4);
  *v5 = v6;
  v5[1] = sub_10000BEC4;
  v7 = sub_100006A94();

  return v8(v7);
}

unint64_t sub_1000910C0()
{
  result = qword_10019ACA0;
  if (!qword_10019ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019ACA0);
  }

  return result;
}

uint64_t sub_100091130()
{
  sub_1000070C8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004BD0(v4);
  *v5 = v6;
  v5[1] = sub_10000BEC4;
  v7 = sub_100006A94();

  return v8(v7);
}

uint64_t sub_1000911F0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100091238()
{
  sub_1000070C8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004BD0(v4);
  *v5 = v6;
  v5[1] = sub_10000BEC4;
  v7 = sub_100006A94();

  return v8(v7);
}

uint64_t sub_1000912FC()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10009138C()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10009141C()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000914AC()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_10009153C()
{
  result = qword_10019BB00;
  if (!qword_10019BB00)
  {
    sub_10002EC70(&unk_10019ACC0, &qword_1001507B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BB00);
  }

  return result;
}

uint64_t sub_1000915A0()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100091630()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000916C0()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100091750()
{
  sub_100027014();
  sub_1000036C4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = sub_100004BD0(v5);
  *v6 = v7;
  v6[1] = sub_10000BEC4;
  sub_100091EFC();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100091804()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_100091894()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_100091924()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000919B4()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100091A44()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100091AD4()
{
  _Block_release(*(v0 + 40));

  v1 = sub_100029498();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100091B24()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

_BYTE *storeEnumTagSinglePayload for ApplicationServiceInstance.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100091CC4()
{
  result = qword_10019AD28;
  if (!qword_10019AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AD28);
  }

  return result;
}

uint64_t sub_100091D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(v19 + 96);
  v22 = *(v19 + 104);
  v23 = *(v20 + a16);
  return a19;
}

id sub_100091D68(uint64_t a1)
{
  v4 = *(v1 + 128);
  v5 = *(v1 + 112);
  v6 = *(*(v2 + 56) + 8 * a1);

  return v6;
}

uint64_t sub_100091D90(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100091DF0()
{
  result = *(v1 + 128);
  v3 = *(v1 + 112);
  v4 = *v0;
  return result;
}

uint64_t sub_100091E00()
{
  v4 = *(v0 + 24);
  v2 = *(v0 + 16);

  return swift_slowAlloc();
}

uint64_t sub_100091E24()
{

  return swift_once();
}

uint64_t sub_100091E54(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_10008B6EC(v2);
}

BOOL sub_100091E74(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100091EA8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_100091EC0(char a1, uint64_t a2)
{

  sub_100021568(a1, a2, 1, v2);
}

uint64_t sub_100091EE4()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
}

uint64_t sub_100091F10()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100091F34()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100091F58()
{

  return swift_arrayDestroy();
}

uint64_t sub_100091F74()
{
}

uint64_t sub_100091F8C()
{

  return swift_slowAlloc();
}

uint64_t sub_100091FA8()
{
}

uint64_t sub_100091FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + v1);
  result = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  return result;
}

uint64_t sub_100092010@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + v1);
  result = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  return result;
}

uint64_t sub_1000920F0(uint64_t a1)
{
  *(v1 + 232) = a1;
  v5 = *(v3 + v2);
}

uint64_t sub_100092110(uint64_t a1)
{
  *(v2 + 232) = a1;
  v5 = *(v3 + v1);
}

uint64_t sub_100092130()
{

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_100092150()
{

  return os_log_type_enabled(v0, v1);
}

void sub_100092168()
{
  v2 = *(v0 + 128);

  sub_100045B08();
}

uint64_t sub_100092180()
{
  v2 = *(v0 + 112);

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100092198()
{

  return sub_1000C512C();
}

uint64_t sub_1000921C4(uint64_t a1, uint64_t a2)
{
  if (qword_100198238 != -1)
  {
    sub_100007F90();
  }

  memcpy(v35, &unk_10019DD98, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v35, &v19);
    if (qword_100198240 != -1)
    {
      sub_100002BA8();
    }

    sub_100003A8C(&qword_10019DE48);
    v19 = a1;
    v20 = a2;
    v6 = == infix<A>(_:_:)();
    v3 = v7;
    v9 = v8;
    memcpy(v18, v35, sizeof(v18));
    QueryType.filter(_:)(v6, v3, v9, &type metadata for Table, &protocol witness table for Table, v10, v11, v12, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14], v18[15], v18[16], v18[17], v18[18], v18[19], v18[20], v18[21], v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);

    sub_10001970C(v35);
    v13 = &v19;
  }

  else
  {
    sub_1000196B0(v35, &v19);
    v13 = v35;
  }

  memcpy(v34, v13, sizeof(v34));
  v22 = &type metadata for Table;
  v23 = &protocol witness table for Table;
  v19 = swift_allocObject();
  memcpy((v19 + 16), v34, 0xB0uLL);
  Connection.prepareRowIterator(_:)(&v19);
  v14 = sub_1000034F8(&v19);
  if (!v2)
  {
    __chkstk_darwin(v14);

    RowIterator.compactMap<A>(_:)();
    v3 = v16;
  }

  return v3;
}

uint64_t sub_100092450(__int128 *a1)
{
  if (qword_100198238 != -1)
  {
    sub_100007F90();
  }

  memcpy(__dst, &unk_10019DD98, sizeof(__dst));
  memcpy(__src, &unk_10019DD98, sizeof(__src));
  sub_1000196B0(__dst, v18);
  if (qword_100198240 != -1)
  {
    sub_100002BA8();
  }

  sub_100003A8C(&qword_10019DE48);
  v15 = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  *(swift_initStackObject() + 16) = xmmword_10014BC40;
  if (qword_100198248 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DE60);
  v16 = a1[1];
  <- infix<A>(_:_:)();
  if (qword_100198250 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DE78);
  v17 = a1[2];
  <- infix<A>(_:_:)();
  v2 = QueryType.insert(_:_:)(v18);
  v4 = v3;
  v6 = v5;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v18);
  memcpy(v21, __src, sizeof(v21));
  sub_10001970C(v21);
  v22.template._countAndFlagsBits = v2;
  v22.template._object = v4;
  v22.bindings._rawValue = v6;
  Connection.run(_:)(v22);
  if (v7)
  {

    v18[0] = v7;
    swift_errorRetain();
    sub_10002EB80(&unk_100198760, &qword_10014F3C0);
    if (swift_dynamicCast())
    {

      v8 = __src[1];
      v9 = __src[2];
      v10 = __src[3];
      if (LODWORD(__src[2]) == 19)
      {
        type metadata accessor for Schema.RuntimeError();
        sub_100065094();
        swift_allocError();
        *v11 = 0xD00000000000004DLL;
        v11[1] = 0x8000000100156480;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v13 = __src[0];
        sub_10002EC1C();
        swift_allocError();
        *v14 = v13;
        *(v14 + 8) = v8;
        *(v14 + 16) = v9;
        *(v14 + 24) = v10;
        swift_willThrow();
      }
    }
  }

  else
  {
  }
}

uint64_t sub_10009282C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100092890()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x72506D6574737973, 0xEE006C6F636F746FLL, v0, v1);
}

uint64_t sub_1000928FC()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x80000001001564D0, v0, v1);
}

double sub_100092960@<D0>(_OWORD *a1@<X8>)
{
  sub_1000929A0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_1000929A0(void *a1@<X8>)
{
  if (qword_100198240 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198248 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198250 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v3;
}

double sub_100092B6C@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
    result = *&v9;
    a1[2] = v9;
  }

  return result;
}

__n128 sub_100092BB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100092BCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100092C0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100092C68(uint64_t a1, uint64_t *a2)
{
  result = sub_1000232F4(a1);
  v4 = result;
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v6 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v7 = [result systemProtocols];
    sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v6;
    sub_100092D8C(v8, a2, v9);
  }

  return result;
}

void sub_100092D8C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_1000232F4(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = *a2;
    v10 = a3;
    v11 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v9 + 16);
      sub_10007076C();
      v9 = v16;
      *a2 = v16;
    }

    v13 = *(v9 + 16);
    if (v13 >= *(v9 + 24) >> 1)
    {
      sub_10007076C();
      v9 = v17;
      *a2 = v17;
    }

    *(v9 + 16) = v13 + 1;
    v14 = v9 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_100092EE8(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 40;
  v14 = a1 + 40;
LABEL_2:
  for (i = (v4 + 16 * v2); ; i += 2)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 1);
    v6 = *i;
    swift_bridgeObjectRetain_n();
    sub_100027678();
    v9 = v8;

    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100011438(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_100011438(v10 > 1, v11 + 1, 1);
        v12 = v11 + 1;
      }

      ++v2;
      _swiftEmptyArrayStorage[2] = v12;
      v13 = &_swiftEmptyArrayStorage[2 * v11];
      v13[4] = v7;
      v13[5] = v6;
      v4 = v14;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

uint64_t sub_100093040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(sub_100093064, 0, 0);
}

void sub_100093064()
{
  v90 = v0;
  v1 = v0 + 16;
  v82 = *(v0 + 72);
  v2 = *(v0 + 48);
  v87[0] = _swiftEmptyArrayStorage;
  sub_100092C68(v2, v87);
  v3 = 0;
  v4 = v87[0];
  v5 = *(v87[0] + 16);
  v77 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v5 == v3)
    {
      v21 = v77;

      v22 = v77[2];
      if (v22)
      {
        v89 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = 4;
        do
        {
          v24 = v77[v23];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v25 = v89[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v23 += 2;
          --v22;
        }

        while (v22);

        v26 = v89;
      }

      else
      {

        v26 = _swiftEmptyArrayStorage;
      }

      v87[1] = _swiftEmptyArrayStorage;
      v27 = sub_1000232F4(v26);
      v28 = 0;
      v29 = v26 & 0xC000000000000001;
      while (v27 != v28)
      {
        sub_10003818C(v28, v29 == 0, v26);
        if (v29)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v30 = *(v26 + 8 * v28 + 32);
        }

        v31 = v30;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_62;
        }

        v88 = v30;
        sub_10009374C(&v88, &v89);

        sub_10006E3AC(v89);
        ++v28;
      }

      v32 = v80[9];

      v89 = &_swiftEmptySetSingleton;

      sub_100092EE8(v33);
      v35 = v34;

      v36 = sub_100007BA8(v82);
      v38 = sub_1000034B4(v36, v37);
      sub_100075FA8(v35, *v38, v38[1], v38[2], v38[3]);
      v40 = v39;

      sub_1000955F0(v40, v32);
      v42 = v41;

      v43 = *(v32 + 64);
      *(v32 + 64) = v42;

      sub_10002EB80(&qword_10019A778, &qword_10014F458);
      v44 = _swiftEmptyArrayStorage;
      v45 = Dictionary.init(dictionaryLiteral:)();
      v46 = *(v32 + 56);
      *(v32 + 56) = v45;

      v47 = 0;
      v78 = v77 + 4;
      v79 = v77[2];
      while (1)
      {
        if (v47 == v79)
        {

          v76 = v80[1];

          v76(v44);
          return;
        }

        if (v47 >= v21[2])
        {
          goto LABEL_63;
        }

        v49 = v80[8];
        v48 = v80[9];
        v50 = v80[7];
        v51 = v78[2 * v47 + 1];
        v52 = v78[2 * v47];
        v53 = v51;
        sub_100093B40(v52, v50, v49, v53);
        v55 = v54;

        v56 = v55 >> 62;
        if (v55 >> 62)
        {
          v57 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v58 = v44 >> 62;
        if (v44 >> 62)
        {
          v59 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v59 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v60 = v59 + v57;
        if (__OFADD__(v59, v57))
        {
          goto LABEL_64;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v58)
        {
          goto LABEL_38;
        }

        v61 = v44 & 0xFFFFFFFFFFFFFF8;
        v62 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v62 < v60)
        {
          goto LABEL_37;
        }

        v63 = v44 & 0xFFFFFFFFFFFFFF8;
LABEL_40:
        v85 = v47;
        v65 = *(v63 + 16);
        if (v56)
        {
          v66 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v66 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v86 = v85 + 1;
        if (v66)
        {
          v67 = sub_1000232F4(v55);
          if (v62 - v65 < v67)
          {
            goto LABEL_66;
          }

          v83 = v44;
          v68 = v63 + 8 * v65 + 32;
          v81 = v67;
          if (v56)
          {
            if (v66 < 1)
            {
              goto LABEL_68;
            }

            sub_100095E30();
            for (i = 0; i != v66; ++i)
            {
              sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
              v70 = sub_100037B20(v1, i, v55);
              v72 = *v71;
              v70(v1, 0);
              *(v68 + 8 * i) = v72;
            }
          }

          else
          {
            sub_100003D44(0, &qword_10019A798, LNSuggestedAction_ptr);
            swift_arrayInitWithCopy();
          }

          v21 = v77;
          v44 = v83;
          v47 = v86;
          if (v81 < v57)
          {
            goto LABEL_65;
          }

          if (v81 > 0)
          {
            v73 = *(v63 + 16);
            v74 = __OFADD__(v73, v81);
            v75 = v73 + v81;
            if (v74)
            {
              goto LABEL_67;
            }

            *(v63 + 16) = v75;
          }
        }

        else
        {

          v47 = v86;
          if (v57 > 0)
          {
            goto LABEL_65;
          }
        }
      }

      if (v58)
      {
LABEL_38:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v61 = v44 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
        v64 = *(v61 + 16);
      }

      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v63 = v44 & 0xFFFFFFFFFFFFFF8;
      v62 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_40;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v84 = *(v4 + 16 * v3 + 32);
    v6 = sub_100007BA8(v82);
    v8 = sub_1000034B4(v6, v7);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    v13 = v84;
    v14 = *(&v84 + 1);
    if (sub_100075B5C(v13, v14))
    {
      v15 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B3704(0, v77[2] + 1, 1);
        v15 = v89;
      }

      v17 = v84;
      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        v20 = sub_100005150(v18);
        sub_1000B3704(v20, v19 + 1, 1);
        v17 = v84;
        v15 = v89;
      }

      ++v3;
      v15[2] = v19 + 1;
      v77 = v15;
      *&v15[2 * v19 + 4] = v17;
    }

    else
    {

      ++v3;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void sub_10009374C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *a1;
  v2 = [*a1 parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1000232F4(v3);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v4 == v5)
    {

      v18 = sub_100095810(v25);
      if (v18)
      {
        sub_1000A0DB4(v18, &v29);

        v3 = a2;
        if (*(&v30 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_23;
          }

          v2 = v27;
          v6 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
        v3 = a2;
      }

      sub_10003D580(&v29);
      goto LABEL_23;
    }

    if (v6)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v2 = sub_1000939E0();
    v11 = v10;

    ++v5;
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = v31[2];
        sub_100013A60();
        v31 = v16;
      }

      v12 = v31[2];
      if (v12 >= v31[3] >> 1)
      {
        sub_100013A60();
        v31 = v17;
      }

      v13 = v31;
      v31[2] = v12 + 1;
      v14 = &v13[2 * v12];
      v14[4] = v2;
      v14[5] = v11;
      v5 = v9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v22 = v31[2];
  sub_100013A60();
  v31 = v23;
LABEL_18:
  v19 = v31[2];
  if (v19 >= v31[3] >> 1)
  {
    sub_100013A60();
    v31 = v24;
  }

  v20 = v31;
  v31[2] = v19 + 1;
  v21 = &v20[2 * v19];
  v21[4] = v2;
  v21[5] = v6;
LABEL_23:
  *v3 = v31;
}