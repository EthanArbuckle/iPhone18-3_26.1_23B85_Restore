char *sub_10002E2C0(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), int a4)
{
  v5 = v4;
  v152 = a4;
  v159 = a3;
  v145 = a2;
  v153 = a1;
  v6 = *v4;
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v156 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v137 = &v127 - v13;
  __chkstk_darwin(v12);
  v138 = &v127 - v14;
  v15 = sub_100035D04(&qword_100339A90, &qword_1002704B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v155 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v154 = &v127 - v20;
  v21 = __chkstk_darwin(v19);
  v141 = &v127 - v22;
  v23 = __chkstk_darwin(v21);
  v147 = &v127 - v24;
  v25 = __chkstk_darwin(v23);
  v134 = &v127 - v26;
  v27 = __chkstk_darwin(v25);
  v140 = &v127 - v28;
  __chkstk_darwin(v27);
  v30 = &v127 - v29;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v146 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v150 = &v127 - v37;
  v38 = __chkstk_darwin(v36);
  v135 = &v127 - v39;
  v40 = __chkstk_darwin(v38);
  v136 = &v127 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = &v127 - v43;
  __chkstk_darwin(v42);
  v46 = &v127 - v45;
  v48 = v47;

  v49 = *(*v5 + 104);
  v50 = sub_100035D04(&qword_100339A98, &qword_1002704B8);
  (*(*(v50 - 8) + 56))(&v5[v49], 1, 1, v50);
  v144 = *(*v5 + 112);
  *&v5[v144] = 0;
  v143 = *(*v5 + 120);
  v5[v143] = 2;
  v51 = &v5[*(*v5 + 128)];
  *v51 = 0;
  *(v51 + 1) = 0;
  v149 = v51;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v163 = v6;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v52 = *(*v5 + 144);
  v53 = v46;
  v54 = v30;
  v55 = v159;
  (*(v32 + 32))(&v5[v52], v53, v48);
  v56 = v7;
  v157 = *(v8 + 56);
  v158 = v8 + 56;
  v157(v54, 1, 1, v7);
  if (v55)
  {
    v151 = v8;
    if (qword_100339088 != -1)
    {
      swift_once();
    }

    v57 = qword_10038B240;
    if (qword_10038B240)
    {
      v133 = v54;
      v58 = *(v32 + 16);
      v131 = v32 + 16;
      v130 = v58;
      v58(v44, &v5[v52], v48);
      v129 = v57;

      v59 = Logger.logObject.getter();
      v148 = v48;
      v60 = v59;
      v61 = static os_log_type_t.default.getter();

      v62 = os_log_type_enabled(v60, v61);
      v142 = v7;
      v139 = v32;
      v132 = v52;
      if (v62)
      {
        v63 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *&v161 = v128;
        *v63 = 136315138;
        v64 = v145;
        *&v163 = v145;
        *(&v163 + 1) = v55;
        v65 = v152 & 1;
        LOBYTE(v164) = v152 & 1;

        sub_100035D04(&qword_100339690, &qword_1002701A8);
        v66 = String.init<A>(describing:)();
        v68 = sub_100017494(v66, v67, &v161);
        v55 = v159;

        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v60, v61, "Configuring userDefaultsSync: %s", v63, 0xCu);
        sub_10000903C(v128);

        v69 = *(v139 + 8);
        v69(v44, v148);
      }

      else
      {

        v69 = *(v32 + 8);
        v69(v44, v148);
        v65 = v152 & 1;
        v64 = v145;
      }

      v70 = v149;
      v71 = *(v149 + 1);
      *v149 = v64;
      *(v70 + 1) = v55;

      v5[v143] = v65;
      v72 = *&v5[v144];
      *&v5[v144] = v57;
      v73 = v129;

      v74 = String._bridgeToObjectiveC()();

      v145 = v73;
      v75 = [v73 valueForKey:v74];

      v54 = v133;
      if (v75)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v161 = 0u;
        v162 = 0u;
      }

      v8 = v151;
      v76 = v146;
      v77 = v142;
      v163 = v161;
      v164 = v162;

      if ((v152 & 1) == 0)
      {
        sub_100009848(&v163, &v161, &unk_100339680, &qword_100278390);
        sub_100035D04(&unk_100339680, &qword_100278390);
        v85 = v140;
        v86 = swift_dynamicCast();
        v157(v85, v86 ^ 1u, 1, v77);
        sub_1000369A4(v85, v54, &qword_100339A90, &qword_1002704B0);
        goto LABEL_18;
      }

      v78 = sub_10003667C(v77);
      v79 = v148;
      if (v78)
      {
        v80 = v78;
        sub_100009848(&v163, &v161, &unk_100339680, &qword_100278390);
        if (*(&v162 + 1))
        {
          v81 = swift_dynamicCast();
          if (v81)
          {
            v159 = v69;
            v83 = v160[0];
            v82 = v160[1];
            v84 = *(*(v80 - 8) + 64);
            __chkstk_darwin(v81);
            sub_100058D2C();
            sub_100010708(v83, v82);
            v124 = v134;
            v125 = v142;
            v126 = swift_dynamicCast();
            v157(v124, v126 ^ 1u, 1, v125);
            sub_1000369A4(v124, v54, &qword_100339A90, &qword_1002704B0);
            v77 = v125;
            v8 = v151;
            v69 = v159;
LABEL_18:
            v79 = v148;
            goto LABEL_26;
          }
        }

        else
        {
          sub_1000097E8(&v161, &unk_100339680, &qword_100278390);
        }

        v130(v76, &v5[v132], v79);
        v87 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v87, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v87, v91, "### Failed to cast as Data", v92, 2u);

          v90 = v76;
          goto LABEL_25;
        }
      }

      else
      {
        v76 = v136;
        v130(v136, &v5[v132], v148);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&_mh_execute_header, v87, v88, "### Type not Codable", v89, 2u);

          v90 = v76;
          v77 = v142;
LABEL_25:
          v69(v90, v79);
LABEL_26:
          v93 = v150;
          v130(v150, &v5[v132], v79);

          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v94, v95))
          {
            v159 = v69;
            v96 = 7104878;
            v97 = swift_slowAlloc();
            v160[0] = swift_slowAlloc();
            *v97 = 136315394;
            v98 = *(v149 + 1);
            if (v98)
            {
              *&v161 = *v149;
              *(&v161 + 1) = v98;

              v99 = String.init<A>(describing:)();
              v101 = v100;
            }

            else
            {
              v101 = 0xE300000000000000;
              v99 = 7104878;
            }

            v102 = sub_100017494(v99, v101, v160);

            *(v97 + 4) = v102;
            *(v97 + 12) = 2080;
            swift_beginAccess();
            v103 = v147;
            sub_100009848(v54, v147, &qword_100339A90, &qword_1002704B0);
            v104 = v103;
            v105 = v141;
            sub_100009848(v104, v141, &qword_100339A90, &qword_1002704B0);
            v106 = v151;
            v107 = v142;
            if ((*(v151 + 48))(v105, 1, v142) == 1)
            {
              v108 = 0xE300000000000000;
            }

            else
            {
              v109 = v105;
              v110 = v138;
              (*(v106 + 32))(v138, v109, v107);
              (*(v106 + 16))(v137, v110, v107);
              v96 = String.init<A>(describing:)();
              v108 = v111;
              (*(v106 + 8))(v110, v107);
            }

            sub_1000097E8(v147, &qword_100339A90, &qword_1002704B0);
            v112 = sub_100017494(v96, v108, v160);

            *(v97 + 14) = v112;
            _os_log_impl(&_mh_execute_header, v94, v95, "Initial %s: %s", v97, 0x16u);
            swift_arrayDestroy();

            v159(v150, v148);
            sub_1000097E8(&v163, &unk_100339680, &qword_100278390);
            v56 = v142;
            v8 = v151;
            v54 = v133;
          }

          else
          {
            v56 = v77;

            v69(v93, v79);
            sub_1000097E8(&v163, &unk_100339680, &qword_100278390);
          }

          goto LABEL_35;
        }
      }

      v90 = v76;
      goto LABEL_25;
    }

    v8 = v151;
  }

LABEL_35:
  swift_beginAccess();
  v113 = v154;
  sub_100009848(v54, v154, &qword_100339A90, &qword_1002704B0);
  v114 = *(v8 + 48);
  if (v114(v113, 1, v56) == 1)
  {
    v115 = v153;
    (*(v8 + 16))(v156, v153, v56);
    if (v114(v113, 1, v56) != 1)
    {
      sub_1000097E8(v113, &qword_100339A90, &qword_1002704B0);
    }
  }

  else
  {
    (*(v8 + 32))(v156, v113, v56);
    v115 = v153;
  }

  v116 = sub_100035D04(&qword_100339AA0, &qword_1002704C0);
  v117 = *(v116 + 48);
  v118 = *(v116 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  v157(v155, 1, 1, v56);
  v119 = sub_100035D04(&qword_100339AA8, &qword_1002704C8);
  v120 = *(v119 + 48);
  v121 = *(v119 + 52);
  swift_allocObject();
  v122 = CurrentValueSubject.init(_:)();
  (*(v8 + 8))(v115, v56);
  *(v5 + 3) = v122;
  sub_1000097E8(v54, &qword_100339A90, &qword_1002704B0);
  return v5;
}

char *sub_10002F7D4(unint64_t a1, void (*a2)(char *, unint64_t), uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v110) = a4;
  v106 = a2;
  v7 = a1;
  v8 = *v4;
  v9 = HIDWORD(a1) & 1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v107 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v109 = &v92 - v16;
  v17 = __chkstk_darwin(v15);
  v101 = &v92 - v18;
  v19 = __chkstk_darwin(v17);
  v102 = &v92 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v92 - v22;
  __chkstk_darwin(v21);
  v25 = &v92 - v24;

  v26 = *(*v5 + 104);
  v27 = sub_100035D04(&qword_100339990, &qword_100270470);
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v105 = *(*v5 + 112);
  *&v105[v5] = 0;
  v104 = *(*v5 + 120);
  v5[v104] = 2;
  v28 = &v5[*(*v5 + 128)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v108 = v28;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v114 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v29 = *(*v5 + 144);
  (*(v11 + 32))(&v5[v29], v25, v10);
  if (!a3)
  {
    goto LABEL_43;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v30 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_43;
  }

  v31 = *(v11 + 16);
  v98 = v11 + 16;
  v97 = v31;
  v31(v23, &v5[v29], v10);
  v94 = v30;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v100 = v10;
  v34 = v33;

  v35 = os_log_type_enabled(v32, v34);
  v103 = v11;
  v96 = v7;
  v95 = v9;
  v99 = v29;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v112 = v92;
    *v36 = 136315138;
    v37 = v106;
    *&v114 = v106;
    *(&v114 + 1) = a3;
    v93 = v110 & 1;
    LOBYTE(v115) = v110 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v38 = String.init<A>(describing:)();
    v40 = sub_100017494(v38, v39, &v112);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v34, "Configuring userDefaultsSync: %s", v36, 0xCu);
    sub_10000903C(v92);

    v41 = v93;

    v42 = *(v103 + 8);
    v43 = v100;
    v42(v23, v100);
  }

  else
  {

    v42 = *(v11 + 8);
    v43 = v100;
    v42(v23, v100);
    v41 = v110 & 1;
    v37 = v106;
  }

  v44 = v108;
  v45 = *(v108 + 1);
  *v108 = v37;
  *(v44 + 1) = a3;

  v46 = v105;
  v5[v104] = v41;
  v47 = *&v46[v5];
  *&v46[v5] = v30;
  v48 = v94;

  v49 = String._bridgeToObjectiveC()();

  v105 = v48;
  v50 = [v48 valueForKey:v49];

  v51 = v109;
  v52 = v107;
  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v53 = v43;
  v114 = v112;
  v115 = v113;

  v106 = v42;
  if (v110)
  {
    v54 = sub_100035D04(&unk_10034B5D0, &unk_100289850);
    v55 = sub_10003667C(v54);
    if (!v55)
    {
      v64 = v102;
      v65 = v43;
      v97(v102, &v5[v99], v43);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "### Type not Codable", v68, 2u);
      }

      v42 = v106;
      v106(v64, v43);
      LODWORD(v43) = 0;
      v62 = 1;
      v53 = v65;
      v63 = 0;
      goto LABEL_28;
    }

    v56 = v55;
    sub_100009848(&v114, &v112, &unk_100339680, &qword_100278390);
    if (*(&v113 + 1))
    {
      v57 = swift_dynamicCast();
      if (v57)
      {
        v59 = v111[0];
        v58 = v111[1];
        v60 = *(*(v56 - 8) + 64);
        __chkstk_darwin(v57);
        sub_100058D2C();
        sub_100010708(v59, v58);
        v91 = swift_dynamicCast();
        if (v91)
        {
          v43 = v112 | (BYTE4(v112) << 32);
        }

        else
        {
          v43 = 0;
        }

        v62 = v91 ^ 1;
        v63 = HIDWORD(v43) & 1;
        v53 = v100;
        v51 = v109;
        v42 = v106;
        goto LABEL_28;
      }
    }

    else
    {
      sub_1000097E8(&v112, &unk_100339680, &qword_100278390);
    }

    v53 = v43;
    v97(v52, &v5[v99], v43);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v71 = os_log_type_enabled(v69, v70);
    v42 = v106;
    if (v71)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "### Failed to cast as Data", v72, 2u);
    }

    v42(v52, v43);
    LODWORD(v43) = 0;
    v63 = 0;
    v62 = 1;
    goto LABEL_28;
  }

  sub_100009848(&v114, &v112, &unk_100339680, &qword_100278390);
  sub_100035D04(&unk_100339680, &qword_100278390);
  sub_100035D04(&unk_10034B5D0, &unk_100289850);
  v61 = swift_dynamicCast();
  if (v61)
  {
    v43 = LODWORD(v111[0]) | (BYTE4(v111[0]) << 32);
  }

  else
  {
    v43 = 0;
  }

  v62 = v61 ^ 1;
  v63 = HIDWORD(v43) & 1;
LABEL_28:
  v97(v51, &v5[v99], v53);

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v110 = v63;
    v63 = 7104878;
    v75 = swift_slowAlloc();
    v111[0] = swift_slowAlloc();
    *v75 = 136315394;
    v76 = *(v108 + 1);
    if (v76)
    {
      *&v112 = *v108;
      *(&v112 + 1) = v76;

      v77 = String.init<A>(describing:)();
      v79 = v78;
    }

    else
    {
      v79 = 0xE300000000000000;
      v77 = 7104878;
    }

    v80 = sub_100017494(v77, v79, v111);

    *(v75 + 4) = v80;
    *(v75 + 12) = 2080;
    if (v62)
    {
      v81 = 0xE300000000000000;
    }

    else
    {
      LODWORD(v112) = v43;
      BYTE4(v112) = v110;
      sub_100035D04(&unk_10034B5D0, &unk_100289850);
      v63 = String.init<A>(describing:)();
      v81 = v82;
    }

    v83 = sub_100017494(v63, v81, v111);

    *(v75 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v73, v74, "Initial %s: %s", v75, 0x16u);
    swift_arrayDestroy();

    v106(v109, v100);
    sub_1000097E8(&v114, &unk_100339680, &qword_100278390);
    LOBYTE(v63) = v110;
  }

  else
  {

    v42(v51, v53);
    sub_1000097E8(&v114, &unk_100339680, &qword_100278390);
  }

  if (v62)
  {
    LODWORD(v7) = v96;
  }

  else
  {
    LODWORD(v7) = v43;
  }

  if (v62)
  {
    LOBYTE(v9) = v95;
  }

  else
  {
    LOBYTE(v9) = v63;
  }

LABEL_43:
  LODWORD(v114) = v7;
  BYTE4(v114) = v9;
  v84 = sub_100035D04(&qword_100339998, &qword_100270478);
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  LODWORD(v114) = 0;
  WORD2(v114) = 256;
  v87 = sub_100035D04(&unk_1003399A0, &unk_100270480);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  return v5;
}

char *sub_100030564(int a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v105[0] = a4;
  v102 = a2;
  v8 = *v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v100 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v104 = &v88 - v15;
  v16 = __chkstk_darwin(v14);
  v98 = &v88 - v17;
  v18 = __chkstk_darwin(v16);
  v99 = &v88 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v88 - v21;
  __chkstk_darwin(v20);
  v24 = &v88 - v23;

  v25 = *(*v5 + 104);
  v26 = sub_100035D04(&qword_100339970, &unk_100270450);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = *(*v5 + 112);
  *&v5[v27] = 0;
  v101 = *(*v5 + 120);
  v5[v101] = 2;
  v28 = &v5[*(*v5 + 128)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v103 = v28;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v109 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v29 = *(*v5 + 144);
  (*(v10 + 32))(&v5[v29], v24, v9);
  if (!a3)
  {
    goto LABEL_38;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v30 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_38;
  }

  v31 = *(v10 + 16);
  v94 = v10 + 16;
  v95 = v31;
  v31(v22, &v5[v29], v9);
  v90 = v30;
  v91 = v30;

  v32 = Logger.logObject.getter();
  v33 = v10;
  v34 = static os_log_type_t.default.getter();

  v89 = v34;
  v35 = os_log_type_enabled(v32, v34);
  v97 = v33;
  v93 = a1;
  v96 = v29;
  v92 = v9;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v107 = v37;
    *v36 = 136315138;
    v38 = v102;
    *&v109 = v102;
    *(&v109 + 1) = a3;
    v88 = v105[0] & 1;
    LOBYTE(v110) = v105[0] & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v39 = String.init<A>(describing:)();
    v41 = sub_100017494(v39, v40, &v107);
    v42 = v97;

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v89, "Configuring userDefaultsSync: %s", v36, 0xCu);
    sub_10000903C(v37);

    v43 = v88;

    v44 = v92;
    v45 = *(v42 + 8);
    v45(v22, v92);
  }

  else
  {

    v45 = *(v33 + 8);
    v45(v22, v9);
    v43 = v105[0] & 1;
    v44 = v9;
    v38 = v102;
  }

  v46 = v103;
  v47 = *(v103 + 1);
  *v103 = v38;
  *(v46 + 1) = a3;

  v5[v101] = v43;
  v48 = *&v5[v27];
  *&v5[v27] = v90;
  v49 = v91;

  v50 = String._bridgeToObjectiveC()();

  v51 = [v49 valueForKey:v50];

  if (v51)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v107 = 0u;
    v108 = 0u;
  }

  v52 = v44;
  v109 = v107;
  v110 = v108;

  v53 = v45;
  if ((v105[0] & 1) == 0)
  {
    sub_100009848(&v109, &v107, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    sub_100035D04(&qword_100339988, &qword_100272B60);
    if (swift_dynamicCast())
    {
      v62 = v106[0];
    }

    else
    {
      v62 = 6;
    }

    goto LABEL_27;
  }

  v54 = sub_100035D04(&qword_100339988, &qword_100272B60);
  v55 = sub_10003667C(v54);
  if (v55)
  {
    v56 = v55;
    sub_100009848(&v109, &v107, &unk_100339680, &qword_100278390);
    if (*(&v108 + 1))
    {
      v57 = swift_dynamicCast();
      v58 = v100;
      if (v57)
      {
        v102 = v49;
        *v105 = v53;
        v60 = v106[0];
        v59 = v106[1];
        v61 = *(*(v56 - 8) + 64);
        __chkstk_darwin(v57);
        sub_100058D2C();
        sub_100010708(v60, v59);
        if (swift_dynamicCast())
        {
          v62 = v107;
        }

        else
        {
          v62 = 6;
        }

        v53 = *v105;
        v49 = v102;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1000097E8(&v107, &unk_100339680, &qword_100278390);
      v58 = v100;
    }

    v95(v58, &v5[v96], v52);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "### Failed to cast as Data";
      goto LABEL_25;
    }
  }

  else
  {
    v58 = v99;
    v95(v99, &v5[v96], v52);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "### Type not Codable";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v63, v64, v66, v65, 2u);
    }
  }

  v53(v58, v52);
  v62 = 6;
LABEL_27:
  v67 = v104;
  v95(v104, &v5[v96], v52);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v68, v69))
  {
    *v105 = v53;
    v70 = 7104878;
    v71 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    *v71 = 136315394;
    v72 = *(v103 + 1);
    if (v72)
    {
      *&v107 = *v103;
      *(&v107 + 1) = v72;

      v73 = String.init<A>(describing:)();
      v75 = v74;
    }

    else
    {
      v75 = 0xE300000000000000;
      v73 = 7104878;
    }

    v76 = sub_100017494(v73, v75, v106);

    *(v71 + 4) = v76;
    *(v71 + 12) = 2080;
    if (v62 == 6)
    {
      v77 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v107) = v62;
      sub_100035D04(&qword_100339988, &qword_100272B60);
      v70 = String.init<A>(describing:)();
      v77 = v78;
    }

    v79 = sub_100017494(v70, v77, v106);

    *(v71 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v68, v69, "Initial %s: %s", v71, 0x16u);
    swift_arrayDestroy();

    (*v105)(v104, v92);
  }

  else
  {

    v53(v67, v52);
  }

  sub_1000097E8(&v109, &unk_100339680, &qword_100278390);
  LOBYTE(a1) = v93;
  if (v62 != 6)
  {
    LOBYTE(a1) = v62;
  }

LABEL_38:
  LOBYTE(v109) = a1;
  v80 = sub_100035D04(&qword_100339978, &unk_10027AA00);
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v109) = 6;
  v83 = sub_100035D04(&qword_100339980, &unk_100270460);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  return v5;
}

char *sub_1000312D0(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16)
{
  v183 = a4;
  v184 = a3;
  v179 = a2;
  v192 = a1;
  v191 = a16;
  v190 = a15;
  v189 = a14;
  v188 = a13;
  v201 = a12;
  v17 = *v16;
  v193 = a7;
  v194 = a8;
  v18 = sub_100035D04(a7, a8);
  v199 = *(v18 - 8);
  v19 = *(v199 + 64);
  v20 = __chkstk_darwin(v18);
  v187 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v172 = &v161 - v23;
  __chkstk_darwin(v22);
  v173 = &v161 - v24;
  v197 = a9;
  v198 = a10;
  v25 = sub_100035D04(a9, a10);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v186 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v185 = &v161 - v30;
  v31 = __chkstk_darwin(v29);
  v176 = &v161 - v32;
  v33 = __chkstk_darwin(v31);
  v180 = &v161 - v34;
  v35 = __chkstk_darwin(v33);
  v169 = &v161 - v36;
  v37 = __chkstk_darwin(v35);
  v175 = &v161 - v38;
  __chkstk_darwin(v37);
  v40 = (&v161 - v39);
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v43 = v42[8];
  v44 = __chkstk_darwin(v41);
  v174 = &v161 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v182 = &v161 - v47;
  v48 = __chkstk_darwin(v46);
  v170 = &v161 - v49;
  v50 = __chkstk_darwin(v48);
  v171 = &v161 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v161 - v53;
  __chkstk_darwin(v52);
  v56 = &v161 - v55;

  v57 = *(*v16 + 104);
  v58 = sub_100035D04(a11, v201);
  v59 = v16 + v57;
  v60 = v41;
  v61 = v18;
  (*(*(v58 - 8) + 56))(v59, 1, 1, v58);
  v62 = *(*v16 + 112);
  *(v16 + v62) = 0;
  v178 = *(*v16 + 120);
  *(v16 + v178) = 2;
  v63 = (v16 + *(*v16 + 128));
  *v63 = 0;
  v63[1] = 0;
  v181 = v63;
  *(v16 + *(*v16 + 136)) = 0;
  *(v16 + *(*v16 + 152)) = 0;
  *&v205 = v17;
  v64 = v61;
  v65 = v184;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v66 = *(*v16 + 144);
  v67 = v42[4];
  v200 = v16;
  v68 = v56;
  v69 = v199;
  v67(v16 + v66, v68, v60);
  v70 = *(v69 + 56);
  v201 = v40;
  v195 = v70;
  v196 = v69 + 56;
  v70(v40, 1, 1, v64);
  if (!v65)
  {
    goto LABEL_36;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v71 = qword_10038B240;
  if (!qword_10038B240)
  {

    v69 = v199;
    goto LABEL_36;
  }

  v72 = v42[2];
  v167 = v66;
  v163 = v42 + 2;
  v166 = v72;
  v72(v54, &v200[v66], v60);
  v162 = v71;

  v73 = Logger.logObject.getter();
  v177 = v64;
  v74 = v73;
  v75 = v42;
  v76 = static os_log_type_t.default.getter();

  v77 = os_log_type_enabled(v74, v76);
  v165 = v60;
  v164 = v75;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *&v203 = v168;
    *v78 = 136315138;
    v161 = v62;
    v79 = v179;
    *&v205 = v179;
    *(&v205 + 1) = v65;
    v80 = v183 & 1;
    LOBYTE(v206) = v183 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v81 = String.init<A>(describing:)();
    v83 = sub_100017494(v81, v82, &v203);
    v84 = v79;
    v62 = v161;

    *(v78 + 4) = v83;
    v85 = v76;
    v86 = v80;
    _os_log_impl(&_mh_execute_header, v74, v85, "Configuring userDefaultsSync: %s", v78, 0xCu);
    sub_10000903C(v168);

    v60 = v165;

    v168 = v164[1];
    (v168)(v54, v60);
    v87 = v181;
  }

  else
  {

    v168 = v75[1];
    (v168)(v54, v60);
    v86 = v183 & 1;
    v87 = v181;
    v84 = v179;
  }

  v88 = v87[1];
  *v87 = v84;
  v87[1] = v65;

  v89 = v200;
  v200[v178] = v86;
  v90 = *&v89[v62];
  *&v89[v62] = v71;
  v91 = v162;

  v92 = String._bridgeToObjectiveC()();

  v184 = v91;
  v93 = [v91 valueForKey:v92];

  if (v93)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v203 = 0u;
    v204 = 0u;
  }

  v94 = v198;
  v69 = v199;
  v205 = v203;
  v206 = v204;

  if ((v183 & 1) == 0)
  {
    sub_100009848(&v205, &v203, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    v102 = v175;
    v103 = v177;
    v104 = swift_dynamicCast();
    v195(v102, v104 ^ 1u, 1, v103);
    sub_1000369A4(v102, v201, v197, v94);
    goto LABEL_26;
  }

  v95 = sub_10003667C(v177);
  if (!v95)
  {
    v98 = v171;
    v166(v171, &v89[v167], v60);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = "### Type not Codable";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v105, v106, v108, v107, 2u);

LABEL_25:
      (v168)(v98, v60);
      goto LABEL_26;
    }

LABEL_24:

    goto LABEL_25;
  }

  v96 = v95;
  sub_100009848(&v205, &v203, &unk_100339680, &qword_100278390);
  if (!*(&v204 + 1))
  {
    sub_1000097E8(&v203, &unk_100339680, &qword_100278390);
    v98 = v174;
LABEL_21:
    v166(v98, &v89[v167], v60);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = "### Failed to cast as Data";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v97 = swift_dynamicCast();
  v98 = v174;
  if ((v97 & 1) == 0)
  {
    goto LABEL_21;
  }

  v100 = v202[0];
  v99 = v202[1];
  v101 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v97);
  sub_100058D2C();
  sub_100010708(v100, v99);
  v158 = v169;
  v159 = v177;
  v160 = swift_dynamicCast();
  v195(v158, v160 ^ 1u, 1, v159);
  sub_1000369A4(v158, v201, v197, v94);
  v60 = v165;
  v87 = v181;
LABEL_26:
  v109 = v182;
  v166(v182, &v89[v167], v60);

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = 7104878;
    v113 = swift_slowAlloc();
    v202[0] = swift_slowAlloc();
    *v113 = 136315394;
    v114 = v87[1];
    if (v114)
    {
      *&v203 = *v87;
      *(&v203 + 1) = v114;

      v115 = String.init<A>(describing:)();
      v117 = v116;
    }

    else
    {
      v117 = 0xE300000000000000;
      v115 = 7104878;
    }

    v120 = sub_100017494(v115, v117, v202);

    *(v113 + 4) = v120;
    *(v113 + 12) = 2080;
    v121 = v201;
    swift_beginAccess();
    v122 = v121;
    v123 = v180;
    v124 = v197;
    v125 = v198;
    sub_100009848(v122, v180, v197, v198);
    v126 = v123;
    v127 = v176;
    sub_100009848(v126, v176, v124, v125);
    if ((*(v69 + 48))(v127, 1, v177) == 1)
    {
      v128 = 0xE300000000000000;
    }

    else
    {
      v129 = v127;
      v130 = v173;
      v132 = v193;
      v131 = v194;
      sub_10003693C(v129, v173, v193, v194);
      sub_100009848(v130, v172, v132, v131);
      v112 = String.init<A>(describing:)();
      v128 = v133;
      v134 = v132;
      v135 = v131;
      v125 = v198;
      v69 = v199;
      sub_1000097E8(v130, v134, v135);
    }

    sub_1000097E8(v180, v197, v125);
    v136 = sub_100017494(v112, v128, v202);

    *(v113 + 14) = v136;
    _os_log_impl(&_mh_execute_header, v110, v111, "Initial %s: %s", v113, 0x16u);
    swift_arrayDestroy();

    v118 = v182;
    v119 = v165;
  }

  else
  {

    v118 = v109;
    v119 = v60;
  }

  (v168)(v118, v119);
  sub_1000097E8(&v205, &unk_100339680, &qword_100278390);
  v64 = v177;
LABEL_36:
  v137 = v201;
  swift_beginAccess();
  v138 = v185;
  v140 = v197;
  v139 = v198;
  sub_100009848(v137, v185, v197, v198);
  v141 = *(v69 + 48);
  if (v141(v138, 1, v64) == 1)
  {
    v142 = v192;
    v144 = v193;
    v143 = v194;
    sub_100009848(v192, v187, v193, v194);
    v145 = v64;
    v146 = v64;
    v147 = v143;
    if (v141(v138, 1, v146) != 1)
    {
      sub_1000097E8(v138, v140, v139);
    }
  }

  else
  {
    v145 = v64;
    v144 = v193;
    v147 = v194;
    sub_10003693C(v138, v187, v193, v194);
    v142 = v192;
  }

  v148 = sub_100035D04(v188, v189);
  v149 = *(v148 + 48);
  v150 = *(v148 + 52);
  swift_allocObject();
  v151 = CurrentValueSubject.init(_:)();
  v152 = v200;
  *(v200 + 2) = v151;
  v195(v186, 1, 1, v145);
  v153 = sub_100035D04(v190, v191);
  v154 = *(v153 + 48);
  v155 = *(v153 + 52);
  swift_allocObject();
  v156 = CurrentValueSubject.init(_:)();
  sub_1000097E8(v142, v144, v147);
  *(v152 + 3) = v156;
  sub_1000097E8(v201, v140, v139);
  return v152;
}

char *sub_100032500(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v116) = a4;
  v117.i64[0] = a2;
  v7 = *v4;
  v8 = *(a1 + 16);
  v118 = *a1;
  v119 = v8;
  v113 = a1;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v110 = &v100[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v115 = &v100[-v17];
  v18 = __chkstk_darwin(v16);
  v107 = &v100[-v19];
  v20 = __chkstk_darwin(v18);
  v108 = &v100[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v100[-v23];
  __chkstk_darwin(v22);
  v26 = &v100[-v25];

  v27 = *(*v5 + 104);
  v28 = sub_100035D04(&qword_100339A70, &qword_100270490);
  (*(*(v28 - 8) + 56))(&v5[v27], 1, 1, v28);
  v112 = *(*v5 + 112);
  *&v112[v5] = 0;
  v29 = 2;
  v111 = *(*v5 + 120);
  v111[v5] = 2;
  v114 = &v5[*(*v5 + 128)];
  v120 = 0u;
  *v114 = 0u;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  v123.i64[0] = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v5 + 144);
  v31 = v26;
  v32 = v11;
  (*(v12 + 32))(&v5[v30], v31, v11);
  if (!a3)
  {
    v51 = v118;
    v50 = v119;
    v34 = v9;
    goto LABEL_44;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v33 = qword_10038B240;
  v34 = v9;
  v35 = v117.i64[0];
  if (!qword_10038B240)
  {

    v29 = 2;
    v51 = v118;
    v50 = v119;
    goto LABEL_44;
  }

  v36 = *(v12 + 16);
  v105 = v12 + 16;
  v104 = v36;
  v36(v24, &v5[v30], v32);
  v120.i64[0] = v33;
  v103 = v33;

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v109 = v12;
  v106 = v30;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v122[0] = v102;
    *v40 = 136315138;
    v123.i64[0] = v35;
    v123.i64[1] = a3;
    v41 = v116 & 1;
    v124.i8[0] = v116 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v42 = String.init<A>(describing:)();
    v101 = v38;
    v44 = v32;
    v45 = v34;
    v46 = sub_100017494(v42, v43, v122);

    *(v40 + 4) = v46;
    v34 = v45;
    v32 = v44;
    v47 = v41;
    _os_log_impl(&_mh_execute_header, v37, v101, "Configuring userDefaultsSync: %s", v40, 0xCu);
    sub_10000903C(v102);

    v48 = v117.i64[0];
    v49 = *(v109 + 8);
    (v49)(v24, v32);
  }

  else
  {

    v48 = v35;
    v49 = *(v12 + 8);
    (v49)(v24, v32);
    v47 = v116 & 1;
  }

  v52 = v114;
  v53 = v114[1];
  *v114 = v48;
  v52[1] = a3;

  v111[v5] = v47;
  v54 = *&v112[v5];
  *&v112[v5] = v120.i64[0];
  v55 = v103;

  v56 = String._bridgeToObjectiveC()();

  v112 = v55;
  v57 = [v55 valueForKey:v56];

  v58 = v115;
  if (v57)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v123 = 0u;
    v124 = 0u;
  }

  v122[0] = v123;
  v122[1] = v124;

  if ((v116 & 1) == 0)
  {
    sub_100009848(v122, v121, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    sub_100035D04(&unk_10034B5E0, &qword_1002704A8);
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v125;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = -1;
    }

    else
    {
      v69 = 0;
    }

    v70 = vdupq_n_s64(v69);
    v117 = vbslq_s8(v70, v124, xmmword_10026F060);
    v71 = vandq_s8(v123, v70);
    goto LABEL_32;
  }

  v59 = sub_100035D04(&unk_10034B5E0, &qword_1002704A8);
  v60 = sub_10003667C(v59);
  if (v60)
  {
    v61 = v60;
    sub_100009848(v122, &v123, &unk_100339680, &qword_100278390);
    if (v124.i64[1])
    {
      v62 = swift_dynamicCast();
      v63 = v110;
      if (v62)
      {
        v111 = v49;
        v116 = v34;
        v65 = v121[0];
        v64 = v121[1];
        v66 = *(*(v61 - 8) + 64);
        __chkstk_darwin(v62);
        sub_100058D2C();
        sub_100010708(v65, v64);
        v97 = swift_dynamicCast();
        if (v97)
        {
          v68 = v125;
        }

        else
        {
          v68 = 0;
        }

        if (v97)
        {
          v98 = -1;
        }

        else
        {
          v98 = 0;
        }

        v99 = vdupq_n_s64(v98);
        v117 = vbslq_s8(v99, v124, xmmword_10026F060);
        v120 = vandq_s8(v123, v99);
        v58 = v115;
        v34 = v116;
        v52 = v114;
        v49 = v111;
        goto LABEL_33;
      }
    }

    else
    {
      sub_1000097E8(&v123, &unk_100339680, &qword_100278390);
      v63 = v110;
    }

    v104(v63, &v5[v106], v32);
    v72 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v72, v75, "### Failed to cast as Data", v76, 2u);

      (v49)(v110, v32);
      goto LABEL_31;
    }

LABEL_30:

    (v49)(v63, v32);
    goto LABEL_31;
  }

  v63 = v108;
  v104(v108, &v5[v106], v32);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v72, v73))
  {
    goto LABEL_30;
  }

  v74 = swift_slowAlloc();
  *v74 = 0;
  _os_log_impl(&_mh_execute_header, v72, v73, "### Type not Codable", v74, 2u);

  (v49)(v63, v32);
LABEL_31:
  v68 = 0;
  v117 = xmmword_10026F060;
  v71 = 0uLL;
LABEL_32:
  v120 = v71;
LABEL_33:
  v104(v58, &v5[v106], v32);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v111 = v49;
    v114 = v32;
    v116 = v34;
    v79 = 7104878;
    v80 = swift_slowAlloc();
    v121[0] = swift_slowAlloc();
    *v80 = 136315394;
    v81 = v52[1];
    if (v81)
    {
      v123.i64[0] = *v52;
      v123.i64[1] = v81;

      v82 = String.init<A>(describing:)();
      v84 = v83;
    }

    else
    {
      v84 = 0xE300000000000000;
      v82 = 7104878;
    }

    v85 = sub_100017494(v82, v84, v121);

    *(v80 + 4) = v85;
    *(v80 + 12) = 2080;
    if (v117.i64[0] == 2)
    {
      v86 = 0xE300000000000000;
    }

    else
    {
      v123 = v120;
      v124 = v117;
      v125 = v68;
      sub_1000368F4(v120.i64[0], v120.i64[1], v117.i64[0]);
      sub_100035D04(&unk_10034B5E0, &qword_1002704A8);
      v79 = String.init<A>(describing:)();
      v86 = v87;
    }

    v88 = sub_100017494(v79, v86, v121);

    *(v80 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v77, v78, "Initial %s: %s", v80, 0x16u);
    swift_arrayDestroy();

    (v111)(v115, v114);
    sub_1000097E8(v122, &unk_100339680, &qword_100278390);
    v34 = v116;
  }

  else
  {

    (v49)(v58, v32);
    sub_1000097E8(v122, &unk_100339680, &qword_100278390);
  }

  v89 = v113;
  v29 = v117.i64[0];
  v51 = v118;
  v50 = v119;
  if (v117.i64[0] != 2)
  {
    sub_1000368F4(v120.i64[0], v120.i64[1], v117.i64[0]);
    sub_1000097E8(v89, &unk_10034B5E0, &qword_1002704A8);
    v34 = v68;
    v51 = v120;
    v50 = v117;
  }

LABEL_44:
  v123 = v51;
  v124 = v50;
  v125 = v34;
  v90 = sub_100035D04(&qword_100339A78, &qword_100270498);
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  v123 = 0uLL;
  v125 = 0;
  v124 = 2uLL;
  v93 = sub_100035D04(&unk_100339A80, &qword_1002704A0);
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  sub_10003689C(v120.i64[0], v120.i64[1], v29);
  return v5;
}

char *sub_10003349C(uint64_t a1, int a2, void (*a3)(char *, uint64_t), uint64_t a4, int a5)
{
  v6 = v5;
  v109 = a5;
  v106 = a3;
  v10 = *v5;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v102 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v108 = &v91 - v17;
  v18 = __chkstk_darwin(v16);
  v100 = &v91 - v19;
  v20 = __chkstk_darwin(v18);
  v101 = &v91 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v91 - v23;
  __chkstk_darwin(v22);
  v26 = &v91 - v25;

  v27 = *(*v6 + 104);
  v28 = sub_100035D04(&qword_1003397F0, &qword_1002702C8);
  (*(*(v28 - 8) + 56))(&v6[v27], 1, 1, v28);
  v105 = *(*v6 + 112);
  *&v105[v6] = 0;
  v104 = *(*v6 + 120);
  v6[v104] = 2;
  v29 = &v6[*(*v6 + 128)];
  *v29 = 0;
  *(v29 + 1) = 0;
  v107 = v29;
  *&v6[*(*v6 + 136)] = 0;
  *&v6[*(*v6 + 152)] = 0;
  *&v114 = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v6 + 144);
  (*(v12 + 32))(&v6[v30], v26, v11);
  if (!a4)
  {
    goto LABEL_45;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v31 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_45;
  }

  v32 = *(v12 + 16);
  v97 = v12 + 16;
  v96 = v32;
  (v32)(v24, &v6[v30], v11);
  v93 = v31;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v99 = v11;
  v35 = v34;

  v36 = os_log_type_enabled(v33, v35);
  v103 = v12;
  v95 = a2;
  v94 = a1;
  v98 = v30;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v112 = v91;
    *v37 = 136315138;
    v38 = v106;
    *&v114 = v106;
    *(&v114 + 1) = a4;
    v92 = v109 & 1;
    LOBYTE(v115) = v109 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v39 = String.init<A>(describing:)();
    v41 = sub_100017494(v39, v40, &v112);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v35, "Configuring userDefaultsSync: %s", v37, 0xCu);
    sub_10000903C(v91);

    v42 = v92;

    v43 = *(v103 + 8);
    v44 = v99;
    v43(v24, v99);
  }

  else
  {

    v43 = *(v12 + 8);
    v44 = v99;
    v43(v24, v99);
    v42 = v109 & 1;
    v38 = v106;
  }

  v45 = v107;
  v46 = *(v107 + 1);
  *v107 = v38;
  *(v45 + 1) = a4;

  v47 = v105;
  v6[v104] = v42;
  v48 = *&v47[v6];
  *&v47[v6] = v31;
  v49 = v93;

  v50 = String._bridgeToObjectiveC()();

  v105 = v49;
  v51 = [v49 valueForKey:v50];

  if (v51)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v52 = v108;
  v114 = v112;
  v115 = v113;

  v106 = v43;
  if (v109)
  {
    v53 = sub_100035D04(&unk_10034B520, &qword_1002702E0);
    v54 = sub_10003667C(v53);
    if (v54)
    {
      v55 = v54;
      sub_100009848(&v114, &v112, &unk_100339680, &qword_100278390);
      if (*(&v113 + 1))
      {
        v56 = swift_dynamicCast();
        if (v56)
        {
          v58 = v110;
          v57 = v111;
          v59 = *(*(v55 - 8) + 64);
          __chkstk_darwin(v56);
          sub_100058D2C();
          sub_100010708(v58, v57);
          v90 = swift_dynamicCast();
          LODWORD(v61) = (v90 & BYTE8(v112));
          if (v90)
          {
            v62 = v112;
          }

          else
          {
            v62 = 0;
          }

          v109 = v90 ^ 1;
          v45 = v107;
          v52 = v108;
          v43 = v106;
          goto LABEL_30;
        }
      }

      else
      {
        sub_1000097E8(&v112, &unk_100339680, &qword_100278390);
      }

      v66 = v102;
      v96();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v64, v65))
      {
        goto LABEL_27;
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = "### Failed to cast as Data";
    }

    else
    {
      v63 = v101;
      (v96)(v101, &v6[v98], v44);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v64, v65))
      {

        v69 = v63;
        goto LABEL_29;
      }

      v66 = v63;
      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = "### Type not Codable";
    }

    _os_log_impl(&_mh_execute_header, v64, v65, v68, v67, 2u);

LABEL_27:

    v69 = v66;
LABEL_29:
    v43 = v106;
    v106(v69, v44);
    v62 = 0;
    LODWORD(v61) = 0;
    v109 = 1;
    goto LABEL_30;
  }

  sub_100009848(&v114, &v112, &unk_100339680, &qword_100278390);
  sub_100035D04(&unk_100339680, &qword_100278390);
  sub_100035D04(&unk_10034B520, &qword_1002702E0);
  v60 = swift_dynamicCast();
  LODWORD(v61) = (v60 & v111);
  if (v60)
  {
    v62 = v110;
  }

  else
  {
    v62 = 0;
  }

  v109 = v60 ^ 1;
LABEL_30:
  (v96)(v52, &v6[v98], v44);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    LODWORD(v107) = v61;
    v72 = 7104878;
    v73 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v73 = 136315394;
    v74 = *(v45 + 1);
    if (v74)
    {
      *&v112 = *v45;
      *(&v112 + 1) = v74;

      v75 = String.init<A>(describing:)();
      v77 = v76;
    }

    else
    {
      v77 = 0xE300000000000000;
      v75 = 7104878;
    }

    v79 = sub_100017494(v75, v77, &v110);

    *(v73 + 4) = v79;
    *(v73 + 12) = 2080;
    v78 = v109;
    if (v109)
    {
      v61 = 0xE300000000000000;
    }

    else
    {
      *&v112 = v62;
      BYTE8(v112) = v107;
      sub_100035D04(&unk_10034B520, &qword_1002702E0);
      v72 = String.init<A>(describing:)();
      v61 = v80;
    }

    v81 = sub_100017494(v72, v61, &v110);

    *(v73 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v70, v71, "Initial %s: %s", v73, 0x16u);
    swift_arrayDestroy();

    v106(v108, v99);
    sub_1000097E8(&v114, &unk_100339680, &qword_100278390);
    LOBYTE(v61) = v107;
  }

  else
  {

    v43(v52, v44);
    sub_1000097E8(&v114, &unk_100339680, &qword_100278390);
    v78 = v109;
  }

  v82 = v78 == 0;
  a1 = v94;
  if (v82)
  {
    a1 = v62;
  }

  LOBYTE(a2) = v95;
  if (v82)
  {
    LOBYTE(a2) = v61;
  }

LABEL_45:
  *&v114 = a1;
  BYTE8(v114) = a2 & 1;
  v83 = sub_100035D04(&qword_1003397F8, &qword_1002702D0);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *(v6 + 2) = CurrentValueSubject.init(_:)();
  *&v114 = 0;
  WORD4(v114) = 256;
  v86 = sub_100035D04(&unk_100339800, &qword_1002702D8);
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  *(v6 + 3) = CurrentValueSubject.init(_:)();
  return v6;
}

char *sub_1000341E8(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v105) = a4;
  v102 = a2;
  v8 = *v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v99 = &v87[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v104 = &v87[-v15];
  v16 = __chkstk_darwin(v14);
  v97 = &v87[-v17];
  v18 = __chkstk_darwin(v16);
  v98 = &v87[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v87[-v21];
  __chkstk_darwin(v20);
  v24 = &v87[-v23];

  v25 = *(*v5 + 104);
  v26 = sub_100035D04(&qword_1003397D8, &qword_1002702B0);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = *(*v5 + 112);
  *&v5[v27] = 0;
  v101 = *(*v5 + 120);
  v5[v101] = 2;
  v28 = &v5[*(*v5 + 128)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v103 = v28;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v109 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v29 = *(*v5 + 144);
  (*(v10 + 32))(&v5[v29], v24, v9);
  if (!a3)
  {
    goto LABEL_38;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v30 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_38;
  }

  v31 = *(v10 + 16);
  v93 = v10 + 16;
  v94 = v31;
  v31(v22, &v5[v29], v9);
  v89 = v30;
  v90 = v30;

  v32 = Logger.logObject.getter();
  v33 = v10;
  v34 = static os_log_type_t.default.getter();

  LODWORD(v100) = v34;
  v35 = os_log_type_enabled(v32, v34);
  v96 = v33;
  v92 = a1;
  v95 = v29;
  v91 = v9;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v107 = v37;
    *v36 = 136315138;
    v38 = v102;
    *&v109 = v102;
    *(&v109 + 1) = a3;
    v88 = v105 & 1;
    LOBYTE(v110) = v105 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v39 = String.init<A>(describing:)();
    v41 = sub_100017494(v39, v40, &v107);
    v42 = v96;

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v100, "Configuring userDefaultsSync: %s", v36, 0xCu);
    sub_10000903C(v37);

    v43 = v88;

    v44 = v91;
    v100 = *(v42 + 8);
    v100(v22, v91);
  }

  else
  {

    v100 = *(v33 + 8);
    v100(v22, v9);
    v43 = v105 & 1;
    v44 = v9;
    v38 = v102;
  }

  v45 = v103;
  v46 = *(v103 + 1);
  *v103 = v38;
  *(v45 + 1) = a3;

  v5[v101] = v43;
  v47 = *&v5[v27];
  *&v5[v27] = v89;
  v48 = v90;

  v49 = String._bridgeToObjectiveC()();

  v50 = [v48 valueForKey:v49];

  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v107 = 0u;
    v108 = 0u;
  }

  v51 = v100;
  v109 = v107;
  v110 = v108;

  if ((v105 & 1) == 0)
  {
    sub_100009848(&v109, &v107, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    if (swift_dynamicCast())
    {
      v59 = v106[0];
    }

    else
    {
      v59 = 3;
    }

    goto LABEL_27;
  }

  v52 = sub_10003667C(&type metadata for AccessControlLevel);
  if (v52)
  {
    v53 = v52;
    sub_100009848(&v109, &v107, &unk_100339680, &qword_100278390);
    if (*(&v108 + 1))
    {
      v54 = swift_dynamicCast();
      v55 = v99;
      if (v54)
      {
        v105 = v48;
        v57 = v106[0];
        v56 = v106[1];
        v58 = *(*(v53 - 8) + 64);
        __chkstk_darwin(v54);
        sub_100058D2C();
        sub_100010708(v57, v56);
        if (swift_dynamicCast())
        {
          v59 = v107;
        }

        else
        {
          v59 = 3;
        }

        v45 = v103;
        v48 = v105;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1000097E8(&v107, &unk_100339680, &qword_100278390);
      v55 = v99;
    }

    v94(v55, &v5[v95], v44);
    v60 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v60, v64, "### Failed to cast as Data", v65, 2u);

      v63 = v99;
      goto LABEL_26;
    }

LABEL_25:

    v63 = v55;
    goto LABEL_26;
  }

  v55 = v98;
  v94(v98, &v5[v95], v44);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v60, v61))
  {
    goto LABEL_25;
  }

  v62 = swift_slowAlloc();
  *v62 = 0;
  _os_log_impl(&_mh_execute_header, v60, v61, "### Type not Codable", v62, 2u);

  v63 = v98;
LABEL_26:
  v51(v63, v44);
  v59 = 3;
LABEL_27:
  v66 = v104;
  v94(v104, &v5[v95], v44);

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v100 = v51;
    v69 = 7104878;
    v70 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    *v70 = 136315394;
    v71 = *(v45 + 1);
    if (v71)
    {
      *&v107 = *v45;
      *(&v107 + 1) = v71;

      v72 = String.init<A>(describing:)();
      v74 = v73;
    }

    else
    {
      v74 = 0xE300000000000000;
      v72 = 7104878;
    }

    v75 = sub_100017494(v72, v74, v106);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2080;
    if (v59 == 3)
    {
      v76 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v107) = v59;
      v69 = String.init<A>(describing:)();
      v76 = v77;
    }

    v78 = sub_100017494(v69, v76, v106);

    *(v70 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v67, v68, "Initial %s: %s", v70, 0x16u);
    swift_arrayDestroy();

    v100(v104, v91);
  }

  else
  {

    v51(v66, v44);
  }

  sub_1000097E8(&v109, &unk_100339680, &qword_100278390);
  LOBYTE(a1) = v92;
  if (v59 != 3)
  {
    LOBYTE(a1) = v59;
  }

LABEL_38:
  LOBYTE(v109) = a1;
  v79 = sub_100035D04(&qword_1003397E0, &qword_1002702B8);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v109) = 3;
  v82 = sub_100035D04(&qword_1003397E8, &qword_1002702C0);
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  return v5;
}

uint64_t variable initialization expression of ProximityHandoffService.queue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100035CB8();
  static DispatchQoS.default.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_100036094(&qword_100339328, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100035D04(&qword_100339330, &unk_10026F070);
  sub_10000E244(&qword_100339338, &qword_100339330, &unk_10026F070);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of ProximityHandoffService.handoffInteractionsManager()
{
  type metadata accessor for HandoffInteractionsManager();
  swift_allocObject();
  return sub_100129670();
}

uint64_t variable initialization expression of ProximityHandoffService.handoffSuppressionManager()
{
  type metadata accessor for HandoffSuppressionManagerState();
  v0 = swift_allocObject();
  v1 = sub_100035D04(&qword_100339340, &qword_10028C4E0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_10002B8A8(&_swiftEmptySetSingleton, 0, 0, 0, 0, 0, &qword_100339B10, &qword_1002704D0, &qword_100339B28, &qword_100289860, &qword_100339B18, &qword_1002704D8, &qword_100339B20, &unk_1002704E0);
  type metadata accessor for HandoffSuppressionManager();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t variable initialization expression of End.actions()
{
  swift_getFunctionTypeMetadata1();

  return static Array._allocateUninitialized(_:)();
}

uint64_t variable initialization expression of End.filters()
{
  swift_getFunctionTypeMetadata1();

  return static Array._allocateUninitialized(_:)();
}

uint64_t sub_1000352EC()
{
  type metadata accessor for Array();
  swift_getFunctionTypeMetadata1();

  return static Array._allocateUninitialized(_:)();
}

BOOL sub_100035374(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1000353A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1000353D0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

Swift::Int sub_100035468()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000354B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000354F4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10003556C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000355EC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10003563C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10003677C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10003567C(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339798, type metadata accessor for BNBannerRevocationReason);
  v3 = sub_100036094(&qword_1003397A0, type metadata accessor for BNBannerRevocationReason);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100035738(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339C10, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_100036094(&qword_100339C18, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000357F4(uint64_t a1)
{
  v2 = sub_100036094(&qword_1003397A8, type metadata accessor for CAMediaTimingFunctionName);
  v3 = sub_100036094(&qword_1003397B0, type metadata accessor for CAMediaTimingFunctionName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000358B0(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339788, type metadata accessor for EventType);
  v3 = sub_100036094(&qword_100339790, type metadata accessor for EventType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10003596C(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339778, type metadata accessor for ID);
  v3 = sub_100036094(&qword_100339780, type metadata accessor for ID);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100035A28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100035A70(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339C00, type metadata accessor for Key);
  v3 = sub_100036094(&qword_100339C08, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100035B2C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100035B68()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100035BBC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100035C30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_100035CB8()
{
  result = qword_100339320;
  if (!qword_100339320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100339320);
  }

  return result;
}

uint64_t sub_100035D04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100035D4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SpringState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100035E28(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100035E34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100035E54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100036094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003667C(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100036704(id a1, char a2)
{
  if (a2 != 254)
  {
    sub_100036718(a1, a2);
  }
}

void sub_100036718(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id sub_10003672C(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100036744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10003677C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t *sub_100036838(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10003689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    return sub_1000368AC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1000368AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1000368F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10003693C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100035D04(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000369A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100035D04(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 sub_100036A20(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100036A44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036A64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 128) = v3;
  return result;
}

unint64_t sub_100036F54(char a1)
{
  result = 0x632E636974706168;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 9:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      v3 = 5;
      goto LABEL_17;
    case 8:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      v3 = 13;
LABEL_17:
      result = v3 | 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0x682E6E6F69676572;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x652E6E6F69676572;
      break;
    case 18:
      result = 0x616F6C2E64726163;
      break;
    case 19:
      result = 0x6572702E64726163;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0x726566736E617274;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100037218()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033A050);
  sub_100003078(v0, qword_10033A050);
  return Logger.init(subsystem:category:)();
}

void sub_100037298(char a1)
{
  if (qword_100338E10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033A050);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_100036F54(a1);
    v8 = sub_100017494(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "@QE ProximityControl.%s", v4, 0xCu);
    sub_10000903C(v5);
  }
}

uint64_t sub_1000373EC()
{
  type metadata accessor for UserAccountPrefs();
  v0 = swift_allocObject();
  result = sub_10003748C();
  qword_10038AE70 = v0;
  return result;
}

uint64_t sub_100037428()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10003748C()
{
  type metadata accessor for UserAccountPrefBool();
  v1 = swift_allocObject();
  v2 = objc_opt_self();
  v3 = [v2 defaultStore];
  v1[3] = 0x8000000100297A10;
  v1[4] = v3;
  v1[2] = 0xD00000000000001FLL;
  *(v0 + 16) = v1;
  v4 = swift_allocObject();
  v5 = [v2 defaultStore];
  v4[3] = 0x8000000100297A40;
  v4[4] = v5;
  v4[2] = 0xD000000000000020;
  *(v0 + 24) = v4;
  return v0;
}

uint64_t sub_10003756C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000375D0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100037600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003765C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1000376B8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_100037838(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 3)
  {
    if (v3 == 3)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if ((v3 - 1) < 3)
      {
        return 0;
      }

      return 1;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100037894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100037914(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_10003798C()
{
  v1 = [*v0 deviceIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_1000379E4()
{
  v1 = [*v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100037A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a2 + 24))(a1, a2);
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v26 = v9;
  v27[0] = v11;
  v12 = (*(a2 + 16))(a1, a2);
  v13 = 0;
  v27[1] = v12;
  v27[2] = v14;
  v15 = &_swiftEmptyArrayStorage;
LABEL_2:
  v16 = &v27[2 * v13];
  while (++v13 != 3)
  {
    v17 = v16 + 2;
    v18 = *v16;
    v16 += 2;
    if (v18)
    {
      v19 = *(v17 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100009088(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = sub_100009088((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      v22 = &v15[16 * v21];
      *(v22 + 4) = v19;
      *(v22 + 5) = v18;
      goto LABEL_2;
    }
  }

  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  swift_arrayDestroy();
  v23 = sub_100008F34(v15);

  return v23;
}

BOOL sub_100037C7C(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    v22[3] = a2;
    v22[4] = a3;
    v6 = sub_10000F798(v22);
    (*(*(a2 - 8) + 16))(v6, v3, a2);
    sub_100009848(v22, &v17, &unk_10034B540, qword_100270E60);
    if (v18)
    {
      sub_10000E754(&v17, v19);
      v7 = v20;
      v8 = v21;
      sub_10000EBC0(v19, v20);
      v9 = *(v8 + 8);
      v10 = *(v9 + 8);
      v11 = v4;
      v12 = v10(v7, v9);
      v13 = sub_10000F0CC();
      v14 = sub_1000089FC(v13, v12);

      v15 = *(v14 + 16);

      v4 = v15 != 0;
      sub_10000903C(v19);
    }

    else
    {
      sub_1000097E8(&v17, &unk_10034B540, qword_100270E60);
      v4 = 0;
    }

    sub_1000097E8(v22, &unk_10034B540, qword_100270E60);
  }

  return v4;
}

uint64_t sub_100037DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  sub_100009848(a1, &v19, &unk_10034B540, qword_100270E60);
  if (v20)
  {
    sub_10000E754(&v19, v21);
    v14 = v22;
    v15 = v23;
    sub_10000EBC0(v21, v22);
    (*(v15 + 24))(v14, v15);
    (*(a3 + 24))(a2, a3);
    v16 = static UUID.== infix(_:_:)();
    v17 = *(v7 + 8);
    v17(v11, v6);
    v17(v13, v6);
    sub_10000903C(v21);
  }

  else
  {
    sub_1000097E8(&v19, &unk_10034B540, qword_100270E60);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100037FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009848(a1, &v11, &qword_10033A240, &unk_100272E70);
  if (v12)
  {
    sub_10000E754(&v11, v14);
    v6 = v15;
    v7 = v16;
    sub_10000EBC0(v14, v15);
    v12 = a2;
    v13 = a3;
    v8 = sub_10000F798(&v11);
    (*(*(a2 - 8) + 16))(v8, v3, a2);
    v9 = (*(*(v7 + 8) + 24))(&v11, v6);
    sub_1000097E8(&v11, &unk_10034B540, qword_100270E60);
    sub_10000903C(v14);
  }

  else
  {
    sub_1000097E8(&v11, &qword_10033A240, &unk_100272E70);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100038108(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    v15[3] = a2;
    v15[4] = a3;
    v6 = sub_10000F798(v15);
    (*(*(a2 - 8) + 16))(v6, v3, a2);
    sub_100009848(v15, v12, &unk_10034B540, qword_100270E60);
    v7 = v13;
    if (v13)
    {
      v8 = v14;
      sub_10000EBC0(v12, v13);
      v9 = v4;
      sub_100008574();
      LOBYTE(v4) = sub_10015A19C(v10, v7, *(v8 + 8));

      sub_10000903C(v12);
    }

    else
    {
      sub_1000097E8(v12, &unk_10034B540, qword_100270E60);
      LOBYTE(v4) = 0;
    }

    sub_1000097E8(v15, &unk_10034B540, qword_100270E60);
  }

  return v4 & 1;
}

BOOL sub_100038248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[3] = a2;
  v19[4] = a3;
  v5 = sub_10000F798(v19);
  (*(*(a2 - 8) + 16))(v5, v3, a2);
  sub_100009848(v19, &v14, &unk_10034B540, qword_100270E60);
  if (v15)
  {
    sub_10000E754(&v14, v16);
    v7 = v17;
    v6 = v18;
    sub_10000EBC0(v16, v17);
    v8 = (*(*(v6 + 8) + 8))(v7);
    sub_1000104F8();
    v10 = sub_1000089FC(v9, v8);

    v11 = *(v10 + 16);

    v12 = v11 != 0;
    sub_10000903C(v16);
  }

  else
  {
    sub_1000097E8(&v14, &unk_10034B540, qword_100270E60);
    v12 = 0;
  }

  sub_1000097E8(v19, &unk_10034B540, qword_100270E60);
  return v12;
}

uint64_t sub_100038398()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033A248);
  sub_100003078(v0, qword_10033A248);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100038418()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v3 = 0;
LABEL_5:
    Hasher._combine(_:)(v3);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000384B8()
{
  v1 = v0[1];
  if (v1 == 2)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 0;
LABEL_5:
    Hasher._combine(_:)(v2);
    return;
  }

  v3 = *v0;
  Hasher._combine(_:)(1uLL);
  if (v1)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100038558()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v3 = 0;
LABEL_5:
    Hasher._combine(_:)(v3);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

BOOL sub_1000385F4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 2)
  {
    return v4 == 2;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if ((v4 - 1) < 2)
  {
    return 0;
  }

  if (v3)
  {
    if (v4 && (*a1 == *a2 && v3 == v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100038690()
{
  swift_getKeyPath();
  v4 = v0;
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_100038710@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_10003878C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000388BC()
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_10003892C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1000389A4(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100038A78()
{
  swift_getKeyPath();
  v3 = v0;
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  sub_10003A51C(v1, *(v3 + 48));
  return v1;
}

uint64_t sub_100038AFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  a2[1] = v5;
  return sub_10003A51C(v4, v5);
}

uint64_t sub_100038B78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  if (v6 == 2)
  {
    if (a2 == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  if (v6 != 1)
  {
    if ((a2 - 1) >= 2)
    {
      if (v6)
      {
        if (!a2)
        {
          goto LABEL_10;
        }

        if (v5 != a1 || v6 != a2)
        {
          v9 = *(v2 + 40);
          v10 = *(v2 + 48);
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v6 = v10;
          v12 = v11;
          v5 = v9;
          if ((v12 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_6;
      }

      if (!a2)
      {
        goto LABEL_6;
      }
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10003A534(a1, a2);
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return sub_10003A534(v5, v6);
}

double sub_100038D0C()
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

double sub_100038D7C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

void sub_100038DF4(double a1)
{
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100038EDC()
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_100038F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_100038FC4(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000390A4()
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 65);
}

uint64_t sub_100039114@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_10003918C(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_10003926C()
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  return result;
}

uint64_t sub_1000392E0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 72), v11);
  if (result)
  {
    *(v4 + 72) = a1;
    *(v4 + 80) = a2;
    *(v4 + 88) = a3;
    *(v4 + 96) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double *sub_1000393F8(double *result, double a2, double a3, double a4, double a5)
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  result[12] = a5;
  return result;
}

double sub_100039404()
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 104);
}

void sub_100039474(double a1)
{
  if (*(v1 + 104) == a1)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_100039564()
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  return result;
}

uint64_t sub_1000395D8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 112), v11);
  if (result)
  {
    *(v4 + 112) = a1;
    *(v4 + 120) = a2;
    *(v4 + 128) = a3;
    *(v4 + 136) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double *sub_1000396F0(double *result, double a2, double a3, double a4, double a5)
{
  result[14] = a2;
  result[15] = a3;
  result[16] = a4;
  result[17] = a5;
  return result;
}

double sub_1000396FC()
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  return result;
}

uint64_t sub_100039770(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 144), v11);
  if (result)
  {
    *(v4 + 144) = a1;
    *(v4 + 152) = a2;
    *(v4 + 160) = a3;
    *(v4 + 168) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double *sub_100039888(double *result, double a2, double a3, double a4, double a5)
{
  result[18] = a2;
  result[19] = a3;
  result[20] = a4;
  result[21] = a5;
  return result;
}

uint64_t sub_100039894()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (!v3)
  {
    v5 = [objc_opt_self() localizedStringForKey:22];
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 40);
    if (v3 == 2)
    {
      v5 = [objc_opt_self() localizedStringForKey:11];
LABEL_7:
      v6 = v5;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  sub_10003A51C(v2, v3);
  return v4;
}

uint64_t sub_1000399A4()
{
  v0 = type metadata accessor for AnimationCompletionCriteria();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338E20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033A248);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100017494(0xD000000000000010, 0x8000000100297C50, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000903C(v9);
  }

  Transaction.init(animation:)();
  withTransaction<A>(_:_:)();

  static Animation.linear(duration:)();

  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100039C38(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    *(result + 40) = 0;
    if ((*(result + 64) & 1) == 0)
    {
LABEL_3:
      *(v1 + 64) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((*(v1 + 64) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = swift_getKeyPath();
  __chkstk_darwin(v3);
  sub_10003A48C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  if (*(v1 + 56) == 0.0)
  {
    *(v1 + 56) = 0;
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100039E70(uint64_t result)
{
  if (*(result + 56) == 1.0)
  {
    *(result + 56) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100039F64()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100039FDC(uint64_t result)
{
  if (*(result + 65) == 1)
  {
    *(result + 65) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10003A0CC()
{
  v1 = *(v0 + 3);

  sub_10003A534(*(v0 + 5), *(v0 + 6));
  v2 = *(v0 + 26);
  sub_10002689C(*(v0 + 25));
  v3 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DwellBannerViewModel()
{
  result = qword_10033A290;
  if (!qword_10033A290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A1D4()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10003A2B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003A2D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003A33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10003A38C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_10003A3CC()
{
  result = qword_10033A660;
  if (!qword_10033A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A660);
  }

  return result;
}

unint64_t sub_10003A48C()
{
  result = qword_10033A668[0];
  if (!qword_10033A668[0])
  {
    type metadata accessor for DwellBannerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10033A668);
  }

  return result;
}

double sub_10003A4E4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

uint64_t sub_10003A51C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_10003A534(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

__n128 sub_10003A54C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 144) = result;
  *(v1 + 160) = v3;
  return result;
}

__n128 sub_10003A560()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 112) = result;
  *(v1 + 128) = v3;
  return result;
}

double sub_10003A574()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 104) = result;
  return result;
}

__n128 sub_10003A584()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 72) = result;
  *(v1 + 88) = v3;
  return result;
}

uint64_t sub_10003A59C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  sub_10003A51C(v1, v3);
  return sub_10003A534(v4, v5);
}

uint64_t sub_10003A5F4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_10003A694()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10003A6D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003A6E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003A72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003A7B4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 initializeBufferWithCopyOfBuffer for XPCConnectionManager.ReconnectPolicy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003A7E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003A82C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003A870(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10003A898(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      _StringGuts.grow(_:)(18);

      strcpy(v12, "failed( error=");
      HIBYTE(v12[1]) = -18;
      swift_getErrorValue();
      v7._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v7);

LABEL_18:
      v11._countAndFlagsBits = 10528;
      v11._object = 0xE200000000000000;
      String.append(_:)(v11);
      return v12[0];
    }

    _StringGuts.grow(_:)(19);

    v12[0] = 0x20286465696E6564;
    v12[1] = 0xEF3D6E6F73616572;
LABEL_17:
    v10._countAndFlagsBits = a1;
    v10._object = a2;
    String.append(_:)(v10);
    goto LABEL_18;
  }

  if (a3 == 2)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v5 = 0x8000000100297C90;
    v6 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v5 = 0x8000000100297C70;
    v6 = 0xD000000000000012;
LABEL_8:
    v12[0] = v6;
    v12[1] = v5;
    goto LABEL_17;
  }

  if (a1 <= 1)
  {
    if (a1 | a2)
    {
      return 0x69746E6573657270;
    }

    else
    {
      return 0x6574736575716572;
    }
  }

  else
  {
    if (a1 ^ 3 | a2)
    {
      v8 = 0x74756F656D6974;
    }

    else
    {
      v8 = 0x646570706174;
    }

    if (a1 ^ 2 | a2)
    {
      return v8;
    }

    else
    {
      return 0x65746E6573657270;
    }
  }
}

uint64_t sub_10003AAFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v3 == 1)
      {
        return 1;
      }
    }

    else if (!*(a2 + 16))
    {
      return 1;
    }

    return 0;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 != 3)
  {
    v5 = *a2;
    v4 = a2[1];
    v6 = *a1;
    v7 = a1[1];
    if (*a1 <= 1)
    {
      if (!(v6 | v7))
      {
        return v3 == 4 && !(v4 | v5);
      }

      if (v3 != 4 || v5 != 1)
      {
        return 0;
      }
    }

    else if (v6 ^ 2 | v7)
    {
      if (v6 ^ 3 | v7)
      {
        if (v3 != 4 || v5 != 4)
        {
          return 0;
        }
      }

      else if (v3 != 4 || v5 != 3)
      {
        return 0;
      }
    }

    else if (v3 != 4 || v5 != 2)
    {
      return 0;
    }

    return !v4;
  }

  return v3 == 3;
}

uint64_t sub_10003ABEC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033A6F0);
  sub_100003078(v0, qword_10033A6F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003AC68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003ACDC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038AE78);
  v1 = sub_100003078(v0, qword_10038AE78);
  if (qword_100338E28 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10033A6F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10003ADA4()
{
  v146 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v143 = *(v146 - 8);
  v1 = *(v143 + 64);
  v2 = __chkstk_darwin(v146);
  v148 = &v133[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __chkstk_darwin(v2);
  v141 = &v133[-v5];
  v147 = v6;
  __chkstk_darwin(v4);
  v140 = &v133[-v7];
  v8 = sub_100035D04(&qword_10033AAC8, &qword_100271700);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v144 = &v133[-v10];
  v11 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v139 = &v133[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v137 = &v133[-v17];
  __chkstk_darwin(v16);
  v19 = &v133[-v18];
  v20 = sub_100035D04(&qword_10033AAD8, &unk_100271710);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v133[-v23];
  v25 = v0;
  *(v0 + 2) = 0;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v26 = qword_10038B5B8;
  *(v0 + 3) = qword_10038B5B8;
  *(v0 + 4) = _swiftEmptyArrayStorage;
  v27 = sub_100035D04(&qword_10033AAE0, &qword_100273180);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = v26;
  *(v0 + 5) = PassthroughSubject.init()();
  v31 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine__state;
  v155 = 1;
  Published.init(initialValue:)();
  (*(v21 + 32))(&v0[v31], v24, v20);
  *&v0[OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask] = 0;
  *&v0[OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_tasks] = &_swiftEmptySetSingleton;
  v32 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log;
  if (qword_100338E28 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100003078(v33, qword_10033A6F0);
  v35 = *(*(v33 - 8) + 16);
  v151 = v25;
  v35(v25 + v32, v34, v33);
  sub_100035D04(&qword_10033AAE8, &qword_100271720);
  v154 = *(v12 + 72);
  v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v37 = swift_allocObject();
  v138 = v37;
  *(v37 + 16) = xmmword_1002713E0;
  v38 = v37 + v36;
  v39 = v11[18];
  v19[v39] = 1;
  v40 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  swift_storeEnumTagMultiPayload();
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v43 = v41 + 56;
  v153 = v40;
  v42(&v19[v39], 0, 1, v40);
  v44 = v42;
  v19[v11[20]] = 1;
  v19[8] = 0;
  *v19 = _swiftEmptyArrayStorage;
  *&v19[v11[19]] = _swiftEmptyArrayStorage;
  v45 = &v19[v11[21]];
  *v45 = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  v45[1] = 0;
  v149 = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  sub_10003EA3C(&off_100300520, v38);
  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v42(&v19[v11[18]], 1, 1, v40);
  v152 = v42;
  v19[v11[20]] = 1;
  v19[8] = 5;
  *v19 = _swiftEmptyArrayStorage;
  *&v19[v11[19]] = _swiftEmptyArrayStorage;
  v46 = &v19[v11[21]];
  *v46 = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  v46[1] = 0;
  v47 = v154;
  sub_10003BFCC(v151, v38 + v154);
  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v48 = 2 * v47;
  v49 = v38 + 2 * v47;
  v50 = v38;
  v145 = v38;
  v51 = v144;
  v52 = v153;
  swift_storeEnumTagMultiPayload();
  v44(v51, 0, 1, v52);
  v150 = v43;
  sub_100009848(v51, v49 + v11[18], &qword_10033AAC8, &qword_100271700);
  *(v49 + v11[20]) = 1;
  *(v49 + 8) = 5;
  *v49 = _swiftEmptyArrayStorage;
  *(v49 + v11[19]) = _swiftEmptyArrayStorage;
  v53 = (v49 + v11[21]);
  v54 = v149;
  *v53 = v149;
  v53[1] = 0;
  sub_1000097E8(v51, &qword_10033AAC8, &qword_100271700);
  v55 = v154;
  v56 = v50 + v48 + v154;
  v57 = v153;
  swift_storeEnumTagMultiPayload();
  v58 = v152;
  v152(v51, 0, 1, v57);
  sub_100009848(v51, v56 + v11[18], &qword_10033AAC8, &qword_100271700);
  *(v56 + v11[20]) = 0;
  *(v56 + 8) = 4;
  *v56 = _swiftEmptyArrayStorage;
  *(v56 + v11[19]) = _swiftEmptyArrayStorage;
  v59 = (v56 + v11[21]);
  *v59 = v54;
  v59[1] = 0;
  sub_1000097E8(v51, &qword_10033AAC8, &qword_100271700);
  v60 = v11[18];
  swift_storeEnumTagMultiPayload();
  v61 = v58;
  v58(&v19[v60], 0, 1, v57);
  v19[v11[20]] = 2;
  v19[8] = 0;
  *v19 = _swiftEmptyArrayStorage;
  *&v19[v11[19]] = _swiftEmptyArrayStorage;
  v62 = &v19[v11[21]];
  *v62 = v54;
  v62[1] = 0;
  v63 = v145;
  sub_10003EA3C(&off_100300548, v145 + 4 * v55);
  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v64 = v11[18];
  swift_storeEnumTagMultiPayload();
  v61(&v19[v64], 0, 1, v57);
  v19[v11[20]] = 2;
  v19[8] = 3;
  *v19 = _swiftEmptyArrayStorage;
  *&v19[v11[19]] = _swiftEmptyArrayStorage;
  v65 = &v19[v11[21]];
  *v65 = v54;
  v65[1] = 0;
  v66 = swift_allocObject();
  swift_weakInit();

  sub_10003C390(sub_10003ED28, v66, v63 + 5 * v55);

  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v67 = v63 + 6 * v55;
  v68 = v63;
  v69 = v11[18];
  v70 = v153;
  swift_storeEnumTagMultiPayload();
  v71 = v152;
  v152(&v19[v69], 0, 1, v70);
  v19[v11[20]] = 3;
  v19[8] = 0;
  *v19 = _swiftEmptyArrayStorage;
  *&v19[v11[19]] = _swiftEmptyArrayStorage;
  v72 = &v19[v11[21]];
  *v72 = v54;
  v72[1] = 0;
  sub_10003EA3C(&off_100300570, v67);
  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v73 = 8 * v154;
  v74 = 7 * v154;
  v136 = 8 * v154;
  v71(&v19[v11[18]], 1, 1, v70);
  v19[v11[20]] = 4;
  v19[8] = 5;
  *v19 = _swiftEmptyArrayStorage;
  *&v19[v11[19]] = _swiftEmptyArrayStorage;
  v75 = &v19[v11[21]];
  *v75 = v54;
  v75[1] = 0;
  sub_10003BFCC(v151, v68 + v74);
  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v135 = v68 + v73;
  v71(&v19[v11[18]], 1, 1, v70);
  v19[v11[20]] = 4;
  v19[8] = 3;
  *v19 = _swiftEmptyArrayStorage;
  *&v19[v11[19]] = _swiftEmptyArrayStorage;
  v76 = &v19[v11[21]];
  *v76 = v54;
  v76[1] = 0;
  v77 = v137;
  sub_100009848(v19, v137, &qword_10033AAD0, &qword_100271708);
  v78 = v140;
  *v140 = *v77;
  v79 = v146;
  sub_100009848(v77, v78 + *(v146 + 40), &qword_10033AAD0, &qword_100271708);
  v80 = (v78 + *(v79 + 44));
  *v80 = sub_10003DF1C;
  v80[1] = 0;
  v81 = *&v77[v11[19]];

  sub_1000097E8(v77, &qword_10033AAD0, &qword_100271708);
  v78[1] = v81;
  v82 = v141;
  sub_100009848(v78, v141, &qword_10033AAC0, &qword_1002716F8);
  v83 = v82 + *(v79 + 40);
  v134 = v83[v11[20]];
  LOBYTE(v70) = v83[8];
  v84 = v135;
  sub_100009848(&v83[v11[18]], v135 + v11[18], &qword_10033AAC8, &qword_100271700);
  v85 = v148;
  sub_100009848(v82, v148, &qword_10033AAC0, &qword_1002716F8);
  v86 = *(v143 + 80);
  v87 = (v86 + 16) & ~v86;
  v142 = v87;
  v143 = v86;
  v88 = swift_allocObject();
  sub_10003693C(v85, v88 + v87, &qword_10033AAC0, &qword_1002716F8);
  v89 = v84;
  *(v84 + v11[20]) = v134;
  *(v84 + 8) = v70;
  v90 = v11[19];
  v91 = (v89 + v11[21]);
  v92 = v89;
  *v91 = sub_10001223C;
  v91[1] = v88;
  v93 = v82[1];
  *v89 = *v82;

  sub_1000097E8(v82, &qword_10033AAC0, &qword_1002716F8);
  *(v92 + v90) = v93;
  sub_1000097E8(v78, &qword_10033AAC0, &qword_1002716F8);
  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v136 += v154;
  v152(&v77[v11[18]], 1, 1, v153);
  v77[v11[20]] = 4;
  v77[8] = 2;
  *v77 = _swiftEmptyArrayStorage;
  *&v77[v11[19]] = _swiftEmptyArrayStorage;
  v94 = &v77[v11[21]];
  *v94 = v149;
  v94[1] = 0;
  v95 = v139;
  sub_10003693C(v77, v139, &qword_10033AAD0, &qword_100271708);
  *v78 = *v95;
  v96 = v146;
  sub_100009848(v95, v78 + *(v146 + 40), &qword_10033AAD0, &qword_100271708);
  v97 = (v78 + *(v96 + 44));
  *v97 = sub_10003DC48;
  v97[1] = 0;
  v98 = *(v95 + v11[19]);

  sub_1000097E8(v95, &qword_10033AAD0, &qword_100271708);
  v78[1] = v98;
  sub_10003693C(v78, v82, &qword_10033AAC0, &qword_1002716F8);
  v99 = v82 + *(v96 + 40);
  LODWORD(v135) = v99[v11[20]];
  v134 = v99[8];
  sub_100009848(&v99[v11[18]], &v19[v11[18]], &qword_10033AAC8, &qword_100271700);
  v100 = v148;
  sub_100009848(v82, v148, &qword_10033AAC0, &qword_1002716F8);
  v101 = v142;
  v102 = swift_allocObject();
  sub_10003693C(v100, v102 + v101, &qword_10033AAC0, &qword_1002716F8);
  v19[v11[20]] = v135;
  v19[8] = v134;
  v103 = v11[19];
  v104 = &v19[v11[21]];
  *v104 = sub_10003F1EC;
  v104[1] = v102;
  v105 = v82[1];
  *v19 = *v82;

  sub_1000097E8(v82, &qword_10033AAC0, &qword_1002716F8);
  *&v19[v103] = v105;
  v106 = swift_allocObject();
  swift_weakInit();

  v107 = v145;
  sub_10003C390(sub_10003EF60, v106, v145 + v136);

  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v136 = v107 + 10 * v154;
  v152(&v77[v11[18]], 1, 1, v153);
  v77[v11[20]] = 4;
  v77[8] = 0;
  *v77 = _swiftEmptyArrayStorage;
  *&v77[v11[19]] = _swiftEmptyArrayStorage;
  v108 = &v77[v11[21]];
  *v108 = v149;
  v108[1] = 0;
  sub_10003693C(v77, v95, &qword_10033AAD0, &qword_100271708);
  *v78 = *v95;
  v109 = v146;
  sub_100009848(v95, v78 + *(v146 + 40), &qword_10033AAD0, &qword_100271708);
  v110 = v109;
  v111 = (v78 + *(v109 + 44));
  *v111 = sub_10003DC60;
  v111[1] = 0;
  v112 = *(v95 + v11[19]);

  sub_1000097E8(v95, &qword_10033AAD0, &qword_100271708);
  v78[1] = v112;
  sub_10003693C(v78, v82, &qword_10033AAC0, &qword_1002716F8);
  v113 = v82 + *(v110 + 40);
  LOBYTE(v110) = v113[v11[20]];
  LOBYTE(v95) = v113[8];
  sub_100009848(&v113[v11[18]], &v19[v11[18]], &qword_10033AAC8, &qword_100271700);
  v114 = v148;
  sub_100009848(v82, v148, &qword_10033AAC0, &qword_1002716F8);
  v115 = v142;
  v116 = swift_allocObject();
  sub_10003693C(v114, v116 + v115, &qword_10033AAC0, &qword_1002716F8);
  v19[v11[20]] = v110;
  v19[8] = v95;
  v117 = v11[19];
  v118 = &v19[v11[21]];
  *v118 = sub_10003F1EC;
  v118[1] = v116;
  v119 = v82[1];
  *v19 = *v82;

  sub_1000097E8(v82, &qword_10033AAC0, &qword_1002716F8);
  *&v19[v117] = v119;
  sub_10003EA3C(&off_100300598, v136);
  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v120 = v153;
  v121 = v154;
  v122 = v145;
  v148 = (v145 + 11 * v154);
  v123 = v11[18];
  v19[v123] = 1;
  swift_storeEnumTagMultiPayload();
  v124 = v152;
  v152(&v19[v123], 0, 1, v120);
  v19[v11[20]] = 5;
  v19[8] = 0;
  *v19 = _swiftEmptyArrayStorage;
  *&v19[v11[19]] = _swiftEmptyArrayStorage;
  v125 = &v19[v11[21]];
  v126 = v149;
  *v125 = v149;
  v125[1] = 0;
  sub_10003EA3C(&off_1003005C0, v148);
  sub_1000097E8(v19, &qword_10033AAD0, &qword_100271708);
  v127 = v122 + 12 * v121;
  v128 = v144;
  *v144 = 0;
  swift_storeEnumTagMultiPayload();
  v124(v128, 0, 1, v120);
  sub_100009848(v128, v127 + v11[18], &qword_10033AAC8, &qword_100271700);
  *(v127 + v11[20]) = 5;
  *(v127 + 8) = 1;
  *v127 = _swiftEmptyArrayStorage;
  *(v127 + v11[19]) = _swiftEmptyArrayStorage;
  v129 = (v127 + v11[21]);
  *v129 = v126;
  v129[1] = 0;
  sub_1000097E8(v128, &qword_10033AAC8, &qword_100271700);
  v130 = v151;
  v131 = *(v151 + 32);
  *(v151 + 32) = v138;

  return v130;
}

uint64_t sub_10003BFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v5 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = (&v29 - v8);
  v10 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v11 = (v10 - 8);
  v32 = *(v10 - 8);
  v12 = *(v32 + 64);
  v13 = __chkstk_darwin(v10);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v29 - v15;
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  sub_100009848(v3, v16, &qword_10033AAD0, &qword_100271708);
  *v9 = *v16;
  sub_100009848(v16, v9 + *(v6 + 48), &qword_10033AAD0, &qword_100271708);
  v19 = (v9 + *(v6 + 52));
  *v19 = sub_100011E5C;
  v19[1] = 0;
  v20 = *&v16[v11[21]];

  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v9[1] = v20;
  v21 = swift_allocObject();
  swift_weakInit();
  sub_10003C620(sub_10003EF90, v21, v18);

  sub_1000097E8(v9, &qword_10033AAC0, &qword_1002716F8);
  sub_100009848(v18, v16, &qword_10033AAD0, &qword_100271708);
  LOBYTE(v21) = v16[v11[22]];
  LOBYTE(v20) = v16[8];
  sub_100009848(&v16[v11[20]], a2 + v11[20], &qword_10033AAC8, &qword_100271700);
  v22 = v30;
  sub_100009848(v16, v30, &qword_10033AAD0, &qword_100271708);
  v23 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v24 = swift_allocObject();
  sub_10003693C(v22, v24 + v23, &qword_10033AAD0, &qword_100271708);
  *(a2 + v11[22]) = v21;
  *(a2 + 8) = v20;
  v25 = v11[21];
  v26 = (a2 + v11[23]);
  *v26 = sub_10003F1F0;
  v26[1] = v24;
  *a2 = *v16;
  v27 = *&v16[v25];

  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  *(a2 + v25) = v27;
  return sub_1000097E8(v18, &qword_10033AAD0, &qword_100271708);
}

uint64_t sub_10003C338()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003CF44();
  }

  return result;
}

uint64_t sub_10003C390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v5 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v6 = (v5 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v10 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  sub_100009848(v3, &v26 - v11, &qword_10033AAD0, &qword_100271708);
  v13 = v12[v6[22]];
  v14 = v12[8];
  sub_100009848(&v12[v6[20]], a3 + v6[20], &qword_10033AAC8, &qword_100271700);
  sub_100009848(v12, v10, &qword_10033AAD0, &qword_100271708);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10003693C(v10, v16 + v15, &qword_10033AAD0, &qword_100271708);
  *(a3 + v6[22]) = v13;
  *(a3 + 8) = v14;
  v17 = v6[21];
  v18 = (a3 + v6[23]);
  *v18 = sub_1000122C4;
  v18[1] = v16;
  v19 = *v12;
  v20 = *&v12[v17];

  sub_1000097E8(v12, &qword_10033AAD0, &qword_100271708);
  *(a3 + v17) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  *(v21 + 24) = v27;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000AFAB0(0, v19[2] + 1, 1, v19);
    v19 = result;
  }

  v24 = v19[2];
  v23 = v19[3];
  if (v24 >= v23 >> 1)
  {
    result = sub_1000AFAB0((v23 > 1), v24 + 1, 1, v19);
    v19 = result;
  }

  v19[2] = v24 + 1;
  v25 = &v19[2 * v24];
  v25[4] = sub_10003EF68;
  v25[5] = v21;
  *a3 = v19;
  return result;
}

uint64_t sub_10003C620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v5 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v6 = v5 - 8;
  v28 = *(v5 - 8);
  v7 = *(v28 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v27 - v10);
  sub_100009848(v3, &v27 - v10, &qword_10033AAC0, &qword_1002716F8);
  v12 = v11 + *(v6 + 48);
  v13 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v14 = v12[v13[20]];
  v15 = v12[8];
  sub_100009848(&v12[v13[18]], a3 + v13[18], &qword_10033AAC8, &qword_100271700);
  sub_100009848(v11, v9, &qword_10033AAC0, &qword_1002716F8);
  v16 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v17 = swift_allocObject();
  sub_10003693C(v9, v17 + v16, &qword_10033AAC0, &qword_1002716F8);
  *(a3 + v13[20]) = v14;
  *(a3 + 8) = v15;
  v18 = v13[19];
  v19 = (a3 + v13[21]);
  *v19 = sub_10003F1EC;
  v19[1] = v17;
  v21 = *v11;
  v20 = v11[1];

  sub_1000097E8(v11, &qword_10033AAC0, &qword_1002716F8);
  *(a3 + v18) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  *(v22 + 24) = v30;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000AFAB0(0, v21[2] + 1, 1, v21);
    v21 = result;
  }

  v25 = v21[2];
  v24 = v21[3];
  if (v25 >= v24 >> 1)
  {
    result = sub_1000AFAB0((v24 > 1), v25 + 1, 1, v21);
    v21 = result;
  }

  v21[2] = v25 + 1;
  v26 = &v21[2 * v25];
  v26[4] = sub_10003F1E8;
  v26[5] = v22;
  *a3 = v21;
  return result;
}

BOOL sub_10003C8CC()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  *(&v16 - v6) = 0;
  v8 = v1[13];
  v8(&v16 - v6, enum case for DispatchTimeInterval.seconds(_:), v0);
  v9 = enum case for DispatchTimeInterval.never(_:);
  v8(v5, enum case for DispatchTimeInterval.never(_:), v0);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v1[1];
  v11(v5, v0);
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v8(v5, v9, v0);
    v13 = static DispatchTimeInterval.== infix(_:_:)();
    v11(v5, v0);
    if (v13)
    {
      v12 = 1;
    }

    else
    {
      v14 = sub_1001F80B8();
      v12 = v14 < sub_1001F80B8();
    }
  }

  v11(v7, v0);
  return v12;
}

uint64_t sub_10003CAA8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_1000120BC(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_100010B48(v10);
  }

  sub_10003693C(v10, v17, &qword_10033AAA0, &qword_1002716E0);
  sub_100009848(v17, v15, &qword_10033AAA0, &qword_1002716E0);
  if ((*(v3 + 48))(v15, 1, v2) == 1)
  {
    sub_1000097E8(v17, &qword_10033AAA0, &qword_1002716E0);
    v18 = v15;
  }

  else
  {
    (*(v3 + 32))(v6, v15, v2);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10003D600(v6);
    }

    (*(v3 + 8))(v6, v2);
    v18 = v17;
  }

  return sub_1000097E8(v18, &qword_10033AAA0, &qword_1002716E0);
}

BOOL sub_10003CD68()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  *(&v16 - v6) = 0;
  v8 = v1[13];
  v8(&v16 - v6, enum case for DispatchTimeInterval.seconds(_:), v0);
  v9 = enum case for DispatchTimeInterval.never(_:);
  v8(v5, enum case for DispatchTimeInterval.never(_:), v0);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v1[1];
  v11(v5, v0);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v8(v5, v9, v0);
    v13 = static DispatchTimeInterval.== infix(_:_:)();
    v11(v5, v0);
    if (v13)
    {
      v12 = 0;
    }

    else
    {
      v14 = sub_1001F80B8();
      v12 = v14 >= sub_1001F80B8();
    }
  }

  v11(v7, v0);
  return v12;
}

uint64_t sub_10003CF44()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Timeout cancelled", v4, 2u);
  }

  v5 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask))
  {
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask);

    dispatch thunk of DispatchWorkItem.cancel()();

    v7 = *(v1 + v5);
  }

  *(v1 + v5) = 0;
}

uint64_t sub_10003D028()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10003F17C;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100302A00;
  _Block_copy(aBlock);
  sub_10003E8E0(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);

  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v3 = type metadata accessor for DispatchWorkItem();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = DispatchWorkItem.init(flags:block:)();

  return v6;
}

void sub_10003D1F8()
{
  v0 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v13 = *(qword_10038B0B8 + 1552);
  v14 = sub_1000031CC();

  if (v14)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22[5] = Strong;
      (*(v9 + 16))(v12, Strong + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log, v8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Timeout firing", v18, 2u);
      }

      (*(v9 + 8))(v12, v8);
      swift_storeEnumTagMultiPayload();
      sub_1000114E0(v3, v7);
      sub_100010B48(v3);
      sub_1000097E8(v7, &qword_10033AAF8, &qword_100271808);
    }

    else
    {
      if (qword_100338E28 != -1)
      {
        swift_once();
      }

      sub_100003078(v8, qword_10033A6F0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "### Nil self at timeout", v21, 2u);
      }
    }
  }
}

uint64_t sub_10003D600(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  v6 = __chkstk_darwin(v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v33 - v8;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *(v10 + 16);
  v38 = a1;
  v17(&v33 - v15, a1, v9);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v4;
    v21 = v20;
    v34 = swift_slowAlloc();
    v40 = v34;
    *v21 = 136315138;
    v17(v14, v16, v9);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v10 + 8))(v16, v9);
    v25 = sub_100017494(v22, v24, &v40);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Scheduling timeout: %s", v21, 0xCu);
    sub_10000903C(v34);

    v4 = v35;
  }

  else
  {

    (*(v10 + 8))(v16, v9);
  }

  v26 = sub_10003D028();
  v27 = *(v2 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask) = v26;

  v28 = *(v2 + 24);
  v29 = v36;
  static DispatchTime.now()();
  v30 = v37;
  + infix(_:_:)();
  v31 = *(v39 + 8);
  v31(v29, v4);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v31)(v30, v4);
}

uint64_t sub_10003D97C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine__state;
  v4 = sub_100035D04(&qword_10033AAD8, &unk_100271710);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask);

  v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_tasks);

  v7 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_10003DA68()
{
  sub_10003D97C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_10003DAC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003DB08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003DB50()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10003DB94()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10003DBD4(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003DC78(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v22 - v18;
  sub_1000120BC(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_10003693C(v12, v19, &qword_10033AAA0, &qword_1002716E0);
    sub_100009848(v19, v17, &qword_10033AAA0, &qword_1002716E0);
    if ((*(v5 + 48))(v17, 1, v4) != 1)
    {
      (*(v5 + 32))(v8, v17, v4);
      v20 = a2(v8);
      (*(v5 + 8))(v8, v4);
      sub_1000097E8(v19, &qword_10033AAA0, &qword_1002716E0);
      return v20 & 1;
    }

    sub_1000097E8(v19, &qword_10033AAA0, &qword_1002716E0);
    sub_1000097E8(v17, &qword_10033AAA0, &qword_1002716E0);
  }

  else
  {
    sub_100010B48(v12);
  }

  v20 = 0;
  return v20 & 1;
}

BOOL sub_10003DF1C(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  sub_1000120BC(a1, v5);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_10003693C(v5, v9, &qword_10033AAA0, &qword_1002716E0);
    v10 = type metadata accessor for DispatchTimeInterval();
    v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) == 1;
    sub_1000097E8(v9, &qword_10033AAA0, &qword_1002716E0);
  }

  else
  {
    sub_100010B48(v5);
    return 0;
  }

  return v11;
}

void sub_10003E08C(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000120BC(a1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + 16);
      *(Strong + 16) = v6;
    }

    else
    {
    }
  }

  else
  {
    sub_100010B48(v5);
  }
}

uint64_t RPMediaAccessControlSetting.description.getter(unsigned int a1)
{
  sub_10003E19C(a1);

  return String.init(cString:)();
}

const char *sub_10003E19C(unsigned int a1)
{
  if (a1 > 3)
  {
    return "?";
  }

  else
  {
    return off_100302A28[a1];
  }
}

uint64_t sub_10003E1C0()
{
  sub_10003E19C(*v0);

  return String.init(cString:)();
}

void sub_10003E1F4()
{
  sub_10003E2FC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003E2FC()
{
  if (!qword_10033A758)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10033A758);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContextDeliveryModeStateMachine.Output(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContextDeliveryModeStateMachine.Output(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_10003E484()
{
  sub_10003E520();
  if (v0 <= 0x3F)
  {
    sub_100003118(319, &qword_10034A350, NIDiscoveryToken_ptr);
    if (v1 <= 0x3F)
    {
      sub_10003E550();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_10003E520()
{
  result = qword_10033A968;
  if (!qword_10033A968)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_10033A968);
  }

  return result;
}

void sub_10003E550()
{
  if (!qword_10033A970)
  {
    sub_10003E598();
    if (!v1)
    {
      atomic_store(v0, &qword_10033A970);
    }
  }
}

void sub_10003E598()
{
  if (!qword_10033A978)
  {
    type metadata accessor for DispatchTimeInterval();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10033A978);
    }
  }
}

uint64_t getEnumTagSinglePayload for DiscoveryTokenStateMachine.TokenState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiscoveryTokenStateMachine.TokenState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003E740(uint64_t a1)
{
  result = sub_10003E768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E768()
{
  result = qword_10033A9A8;
  if (!qword_10033A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A9A8);
  }

  return result;
}

uint64_t sub_10003E7C0(uint64_t a1)
{
  result = sub_10003E8E0(&qword_10033A9B0, type metadata accessor for DiscoveryTokenStateMachine.Input);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E818(uint64_t a1)
{
  result = sub_10003E840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E840()
{
  result = qword_10033A9B8;
  if (!qword_10033A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A9B8);
  }

  return result;
}

uint64_t sub_10003E8E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003E92C()
{
  result = qword_10033A9C8;
  if (!qword_10033A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A9C8);
  }

  return result;
}

unint64_t sub_10003E984()
{
  result = qword_10033A9D0;
  if (!qword_10033A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A9D0);
  }

  return result;
}

uint64_t sub_10003E9E4(uint64_t a1)
{
  result = sub_10003E8E0(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003EA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[1] = a1;
  v5 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v6 = (v5 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  sub_100009848(v3, v22 - v11, &qword_10033AAD0, &qword_100271708);
  v13 = v12[v6[22]];
  v14 = v12[8];
  sub_100009848(&v12[v6[20]], a2 + v6[20], &qword_10033AAC8, &qword_100271700);
  sub_100009848(v12, v10, &qword_10033AAD0, &qword_100271708);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10003693C(v10, v16 + v15, &qword_10033AAD0, &qword_100271708);
  *(a2 + v6[22]) = v13;
  *(a2 + 8) = v14;
  v17 = v6[21];
  v18 = (a2 + v6[23]);
  *v18 = sub_10003F1F0;
  v18[1] = v16;
  *a2 = *v12;
  v19 = *&v12[v17];

  sub_1000097E8(v12, &qword_10033AAD0, &qword_100271708);
  *(a2 + v17) = v19;

  return sub_1000B3400(v20);
}

uint64_t sub_10003EC34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10003ECB4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003ED30()
{
  v1 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = (v0 + v3 + *(v1 + 40));
  v8 = *v7;

  v9 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v10 = v9[18];
  v11 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  if (!(*(*(v11 - 8) + 48))(&v7[v10], 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v16 = type metadata accessor for DispatchTimeInterval();
      v18 = *(v16 - 8);
      if (!(*(v18 + 48))(&v7[v10], 1, v16))
      {
        (*(v18 + 8))(&v7[v10], v16);
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
    }
  }

  v12 = *&v7[v9[19]];

  v13 = *&v7[v9[21] + 8];

  v14 = *(v0 + v3 + *(v1 + 44) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003EF68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003EF98()
{
  v1 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[18];
  v8 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v12 = type metadata accessor for DispatchTimeInterval();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v5 + v7, 1, v12))
      {
        (*(v13 + 8))(v5 + v7, v12);
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
    }
  }

  v9 = *(v5 + v1[19]);

  v10 = *(v5 + v1[21] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10003F184()
{
  result = qword_10033D8D0;
  if (!qword_10033D8D0)
  {
    sub_100035D4C(&unk_100343710, &qword_100271800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D8D0);
  }

  return result;
}

uint64_t sub_10003F1F4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Loader.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003F2A4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033AB00);
  sub_100003078(v0, qword_10033AB00);
  return Logger.init(subsystem:category:)();
}

char *sub_10003F318()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100338E38 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033AB00);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deinit", v6, 2u);
  }

  v7 = *(v1 + 3);

  v8 = *(*v1 + 96);
  v9 = *(v2 + 80);
  v10 = type metadata accessor for Loader.State();
  (*(*(v10 - 8) + 8))(&v1[v8], v10);
  v11 = *&v1[*(*v1 + 104)];

  return v1;
}

uint64_t sub_10003F49C()
{
  sub_10003F318();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10003F52C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_10003F588(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_10003F75C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

__n128 sub_10003F9CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 72);
  v5 = *(v3 + 88);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_10003FAA4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 104);
  *a2 = result;
  return result;
}

__n128 sub_10003FB74@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 112);
  v5 = *(v3 + 128);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_10003FC48@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 144);
  v5 = *(v3 + 160);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

id sub_10003FDDC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

id sub_10003FE38()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation, v2);
  AsyncStream.Continuation.finish()();
  (*(v3 + 8))(v6, v2);
  v7 = type metadata accessor for DwellBannerPresenter();
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, "dealloc");
}

id sub_1000401CC()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for DwellBannerPresenter();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_childViewController];
  [v0 addChildViewController:v1];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  [v3 addSubview:result];

  result = [v0 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor:v8];

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100271880;
  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = result;
  v11 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = result;
  v13 = [result topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v9 + 32) = v14;
  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = result;
  v16 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = result;
  v18 = [result bottomAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v9 + 40) = v19;
  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = result;
  v21 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = result;
  v23 = [result leadingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v9 + 48) = v24;
  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = result;
  v26 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = result;
  v28 = [result trailingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v9 + 56) = v29;
  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = result;
  v31 = [result heightAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v32 = result;
  v33 = [result SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

  v34 = [v33 heightAnchor];
  v35 = [v31 constraintEqualToAnchor:v34];

  *(v9 + 64) = v35;
  v36 = objc_opt_self();
  sub_10004239C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];

  [v1 didMoveToParentViewController:v0];
  result = [v1 view];
  if (result)
  {
    v38 = result;
    [result intrinsicContentSize];
    v40 = v39;
    v42 = v41;

    return [v0 setPreferredContentSize:{v40, v42}];
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_1000408E0(void *a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_experienceType])
  {
    goto LABEL_19;
  }

  v4 = *&v1[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_viewModel];
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerViewModel___observationRegistrar;
  aBlock[0] = v4;
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51.origin.x = 0.0;
  v51.origin.y = 0.0;
  v51.size.width = 0.0;
  v51.size.height = 0.0;
  if (!CGRectEqualToRect(*(v4 + 72), v51))
  {
    goto LABEL_19;
  }

  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = [v6 SBUISA_systemApertureObstructedAreaLayoutGuide];

  [v8 layoutFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v52.origin.x = v10;
  v52.origin.y = v12;
  v52.size.width = v14;
  v52.size.height = v16;
  if (CGRectEqualToRect(*(v4 + 72), v52))
  {
    *(v4 + 72) = v10;
    *(v4 + 80) = v12;
    *(v4 + 88) = v14;
    *(v4 + 96) = v16;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    aBlock[0] = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v18 = [v2 view];
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = v18;
  [v18 SBUISA_maximumAccessoryViewWidth];
  v21 = v20;

  if (*(v4 + 104) == v21)
  {
    *(v4 + 104) = v21;
  }

  else
  {
    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    aBlock[0] = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v23 = [v2 view];
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = [v23 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

  [v25 layoutFrame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v53.origin.x = v27;
  v53.origin.y = v29;
  v53.size.width = v31;
  v53.size.height = v33;
  if (CGRectEqualToRect(*(v4 + 112), v53))
  {
    *(v4 + 112) = v27;
    *(v4 + 120) = v29;
    *(v4 + 128) = v31;
    *(v4 + 136) = v33;
  }

  else
  {
    v34 = swift_getKeyPath();
    __chkstk_darwin(v34);
    aBlock[0] = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v35 = [v2 view];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    [v37 layoutFrame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v54.origin.x = v39;
    v54.origin.y = v41;
    v54.size.width = v43;
    v54.size.height = v45;
    if (CGRectEqualToRect(*(v4 + 144), v54))
    {
      *(v4 + 144) = v39;
      *(v4 + 152) = v41;
      *(v4 + 160) = v43;
      *(v4 + 168) = v45;
    }

    else
    {
      v46 = swift_getKeyPath();
      __chkstk_darwin(v46);
      aBlock[0] = v4;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

LABEL_19:
    v47 = swift_allocObject();
    *(v47 + 16) = v2;
    aBlock[4] = sub_100041594;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000028F8;
    aBlock[3] = &unk_100302B98;
    v48 = _Block_copy(aBlock);
    v49 = v2;

    [a1 animateAlongsideTransition:v48 completion:0];
    _Block_release(v48);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_100040EB8(uint64_t a1, char *a2)
{
  result = [*&a2[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_childViewController] view];
  if (result)
  {
    v4 = result;
    [result intrinsicContentSize];
    v6 = v5;
    v8 = v7;

    return [a2 setPreferredContentSize:{v6, v8}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100040FE8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

uint64_t sub_1000410E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  v13 = sub_100035D04(&qword_10033AE28, &qword_1002719D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v20 - v16;
  result = (*(v9 + 16))(v12, a1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation, v8);
  if (a4)
  {
    v20[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20[2] = v19;
    v21 = a5;
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v12, v8);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for DwellBannerPresenter()
{
  result = qword_10033ADF0;
  if (!qword_10033ADF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041350()
{
  sub_1000414E8(319, &qword_10033AE00, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000414E8(319, &qword_10033AE08, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10004153C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000414E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for GenericBannerEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10004153C()
{
  if (!qword_10033AE10)
  {
    type metadata accessor for ContinuousClock.Instant();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10033AE10);
    }
  }
}

void sub_10004169C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033AE50, &qword_1002719E8);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100035D04(&qword_10033AE58, &unk_1002719F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = (v0 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_requesterIdentifier);
  *v15 = static String._fromUTF8Repairing(_:)();
  v15[1] = v16;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_activeLayoutMode) = 1;
  swift_unknownObjectWeakInit();
  if (qword_100338E90 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (byte_10038AFB0 == 1)
    {
      if (qword_100338F18 != -1)
      {
        swift_once();
      }

      v17 = *(qword_10038B0B8 + 888);
      v18 = sub_10005F4D0();
    }

    else
    {
      v18 = 1;
    }

    *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_experienceType) = v18 & 1;
    static String._fromUTF8Repairing(_:)();
    v19 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v19];

    if (v20)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_bannerSource) = v20;
  v21 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventStream;
  v26 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation;
  v22 = v28;
  (*(v28 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v22 + 8))(v5, v2);
  (*(v11 + 32))(v1 + v21, v14, v10);
  (*(v27 + 32))(v1 + v26, v9, v6);
  v23 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_endTime;
  v24 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_posted) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_presenting) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100041B00()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10033AE28, &qword_1002719D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - v8;
  v10 = xmmword_10026F060;
  v11 = 4;
  sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  AsyncStream.Continuation.yield(_:)();
  (*(v6 + 8))(v9, v5);
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.end.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v1 + 8))(v4, v0);
  sub_100037298(7);
}

uint64_t sub_100041D4C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033AE30, &qword_1002719D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = sub_100035D04(&qword_10033AE28, &qword_1002719D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v23 = xmmword_100271890;
  v24 = 4;
  sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  AsyncStream.Continuation.yield(_:)();
  (*(v15 + 8))(v18, v14);
  sub_100037298(6);
  *(v0 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_presenting) = 1;
  sub_10004227C(v0 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_endTime, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000422EC(v5);
  }

  (*(v7 + 32))(v13, v5, v6);
  static ContinuousClock.Instant.now.getter();
  sub_100042354(&qword_10033AE38, &type metadata accessor for ContinuousClock.Instant);
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  v21 = *(v7 + 8);
  v21(v11, v6);
  if (v20)
  {
    static ContinuousClock.Instant.now.getter();
    ContinuousClock.Instant.duration(to:)();
    v21(v11, v6);
    v22 = *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_viewModel);
    Duration.seconds.getter();
    sub_1000399A4();
  }

  return (v21)(v13, v6);
}

uint64_t sub_1000420A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - v7;
  v9 = sub_100035D04(&qword_10033AE28, &qword_1002719D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  result = (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation, v4);
  if (a1)
  {
    v16[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16[2] = v15;
    v17 = 2;
    AsyncStream.Continuation.yield(_:)();
    (*(v5 + 8))(v8, v4);
    result = (*(v10 + 8))(v13, v9);
    *(v2 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_presenting) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004227C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033AE30, &qword_1002719D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000422EC(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10033AE30, &qword_1002719D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042354(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004239C()
{
  result = qword_10033AE48;
  if (!qword_10033AE48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033AE48);
  }

  return result;
}

uint64_t sub_100042544(void *a1)
{
  v2 = [a1 eventType];
  if (!v2)
  {
    return [a1 error];
  }

  if (v2 == 1)
  {
    return 2;
  }

  if (v2 == 2)
  {
    return 3;
  }

  sub_10001618C();
  result = swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 11;
  return result;
}

uint64_t sub_1000425DC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t Edge2.end.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t Edge2.actions.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*Edge2.actions.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t Edge2.filters.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*Edge2.filters.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t Edge2.outputs.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*Edge2.outputs.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 72);
  return result;
}

uint64_t Edge2.init(_:to:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a7;
  v37 = a8;
  v39 = a6;
  v40 = a3;
  v35 = a5;
  v41 = a2;
  v42 = a1;
  v38 = a9;
  v10 = type metadata accessor for Optional();
  v32 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - v14;
  v33 = &v31 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v19 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v34 = &v31 - v20;
  v21 = *(v16 + 16);
  v21();
  (*(v11 + 16))(v15, v40, v10);
  (v21)(v19, v41, a4);
  v22 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v23 = (v12 + *(v16 + 80) + v22) & ~*(v16 + 80);
  v24 = swift_allocObject();
  v25 = v35;
  v26 = v36;
  *(v24 + 2) = a4;
  *(v24 + 3) = v25;
  *(v24 + 4) = v39;
  *(v24 + 5) = v26;
  *(v24 + 6) = v37;
  v27 = &v24[v22];
  v28 = v32;
  (*(v11 + 32))(v27, v33, v32);
  (*(v16 + 32))(&v24[v23], v19, a4);
  Edge2.init(start:end:)(v34, sub_100042E54, v24, a4, v38);
  (*(v11 + 8))(v40, v28);
  v29 = *(v16 + 8);
  v29(v41, a4);
  return (v29)(v42, a4);
}

uint64_t sub_100042AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a9;
  v45 = a8;
  v42 = a6;
  v43 = a7;
  v40[1] = a1;
  v41 = a3;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(a1);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v40 - v20;
  v22 = *(a5 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a2, v16);
  if ((*(v22 + 48))(v21, 1, a5) == 1)
  {
    (*(v17 + 8))(v21, v16);
    (*(v12 + 16))(v15, v41, a4);
    v27 = v43;
    v26 = v44;
    v28 = v42;
    v29 = v45;
    End.init(_:)(v15, a4, v44);
    v46 = a4;
    v47 = a5;
    v48 = v28;
    v49 = v27;
    v50 = v29;
    v30 = type metadata accessor for End();
    v31 = 0;
    v32 = v26;
  }

  else
  {
    v34 = v41;
    v33 = v42;
    (*(v22 + 32))(v25, v21, a5);
    v35 = v45;
    v36 = *(v45 + 8);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*(v12 + 16))(v15, v34, a4);
      v37 = v43;
      v38 = v44;
      End.init(_:)(v15, a4, v44);
      (*(v22 + 8))(v25, a5);
      v46 = a4;
      v47 = a5;
      v48 = v33;
      v49 = v37;
      v50 = v35;
      v30 = type metadata accessor for End();
      v32 = v38;
      v31 = 0;
    }

    else
    {
      (*(v22 + 8))(v25, a5);
      v46 = a4;
      v47 = a5;
      v48 = v33;
      v49 = v43;
      v50 = v35;
      v30 = type metadata accessor for End();
      v31 = 1;
      v32 = v44;
    }
  }

  return (*(*(v30 - 8) + 56))(v32, v31, 1);
}

uint64_t sub_100042E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v12 = v2 + ((v11 + *(v10 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return sub_100042AAC(a1, v2 + v11, v12, v5, v6, v7, v8, v9, a2);
}

uint64_t Edge2.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Edge2();
  v11 = v10[16];
  swift_getFunctionTypeMetadata1();
  *(a5 + v11) = static Array._allocateUninitialized(_:)();
  v12 = v10[17];
  swift_getFunctionTypeMetadata1();
  *(a5 + v12) = static Array._allocateUninitialized(_:)();
  v13 = v10[18];
  type metadata accessor for Array();
  swift_getFunctionTypeMetadata1();
  *(a5 + v13) = static Array._allocateUninitialized(_:)();
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  v15 = (a5 + v10[15]);
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t Edge2.init(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a9;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21);
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a8;
  v22[7] = a2;
  v22[8] = a3;
  Edge2.init(start:end:)(v20, sub_100043A6C, v22, a4, v25);
  return (*(v17 + 8))(a1, a4);
}

uint64_t sub_100043228@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v38 = a8;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v34 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v34 - v22;
  a2(a1);
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    (*(v12 + 8))(v16, v11);
    v39 = a3;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v24 = type metadata accessor for End();
    v25 = 1;
    v26 = v38;
  }

  else
  {
    (*(v17 + 32))(v23, v16, a3);
    (*(v17 + 16))(v21, v23, a3);
    v27 = v38;
    v28 = v21;
    v30 = v34;
    v29 = v35;
    v32 = v36;
    v31 = v37;
    End.init(_:)(v28, a3, v38);
    (*(v17 + 8))(v23, a3);
    v39 = a3;
    v40 = v30;
    v41 = v29;
    v42 = v32;
    v43 = v31;
    v24 = type metadata accessor for End();
    v25 = 0;
    v26 = v27;
  }

  return (*(*(v24 - 8) + 56))(v26, v25, 1);
}

uint64_t Edge2.init(_:trigger:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a8;
  v40 = a3;
  v35 = a7;
  v41 = a4;
  v42 = a9;
  v37 = a2;
  v38 = a1;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v36 = a10;
  v16 = __chkstk_darwin(a1);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 16);
  v34 = v24;
  v23(v22);
  (*(v14 + 16))(v17, a2, a6);
  v25 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = a5;
  *(v27 + 3) = a6;
  v28 = v39;
  *(v27 + 4) = a7;
  *(v27 + 5) = v28;
  *(v27 + 6) = v36;
  (*(v14 + 32))(&v27[v25], v17, a6);
  v29 = &v27[v26];
  v30 = v41;
  *v29 = v40;
  *(v29 + 1) = v30;
  v31 = v34;
  Edge2.init(start:end:)(v22, sub_100043A80, v27, v34, v42);
  (*(v14 + 8))(v37, a6);
  return (*(v19 + 8))(v38, v31);
}

uint64_t sub_100043740@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>, uint64_t a4)
{
  v7 = *(a4 + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return a2(a1);
  }

  v9 = type metadata accessor for End();
  return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
}

BOOL sub_100043820(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 32);
  v17[0] = *(a2 + 16);
  v17[1] = v6;
  v18 = v5;
  v7 = type metadata accessor for End();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v13 = v2 + *(a2 + 60);
  v14 = *(v13 + 8);
  (*v13)(a1);
  v15 = (*(*(v7 - 8) + 48))(v12, 1, v7) != 1;
  (*(v9 + 8))(v12, v8);
  return v15;
}

uint64_t sub_100043970(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 60);
  v4 = *(v3 + 8);
  return (*v3)();
}

uint64_t Edge2.asEdges()(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage();
  v3 = *(a1 - 8);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  swift_allocObject();
  v6 = static Array._adoptStorage(_:count:)();
  (*(v3 + 16))(v7, v1, a1);
  type metadata accessor for Array();
  return v6;
}

uint64_t sub_100043A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2 + ((*(*(v2[3] - 8) + 64) + ((*(*(v2[3] - 8) + 80) + 56) & ~*(*(v2[3] - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 1);
  return sub_100043740(a1, *v6, a2, v2[6]);
}

uint64_t sub_100043B14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100043B68(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = sub_100043FCC();
    if (v5 <= 0x3F)
    {
      v6 = a1[3];
      swift_getFunctionTypeMetadata1();
      result = type metadata accessor for Array();
      if (v7 <= 0x3F)
      {
        swift_getFunctionTypeMetadata1();
        result = type metadata accessor for Array();
        if (v8 <= 0x3F)
        {
          v9 = a1[4];
          type metadata accessor for Array();
          swift_getFunctionTypeMetadata1();
          result = type metadata accessor for Array();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100043C9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100043DF0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_100043FCC()
{
  result = qword_10033AF58;
  if (!qword_10033AF58)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10033AF58);
  }

  return result;
}

uint64_t sub_10004401C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033AF60);
  sub_100003078(v0, qword_10033AF60);
  return Logger.init(subsystem:category:)();
}

char *sub_1000440A0()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor_backlight;
  v2 = [objc_opt_self() sharedBacklight];
  *&v0[v1] = v2;
  v3 = [v2 backlightState];
  v4 = OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor__backlightState;
  sub_100035D04(&unk_10033B020, &unk_100271B80);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  *&v0[v4] = v5;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BacklightMonitor();
  v6 = objc_msgSendSuper2(&v8, "init");
  [*&v6[OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor_backlight] addObserver:v6];
  return v6;
}

id sub_100044194()
{
  [*&v0[OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor_backlight] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BacklightMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100044348(uint64_t a1)
{
  result = sub_100044370();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100044370()
{
  result = qword_10033B010;
  if (!qword_10033B010)
  {
    type metadata accessor for BacklightMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033B010);
  }

  return result;
}

uint64_t sub_1000443C4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_100338E40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033AF60);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100017494(0xD000000000000025, 0x80000001002983A0, &v21);
    *(v10 + 12) = 2080;
    type metadata accessor for BLSBacklightState(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_100017494(v11, v12, &v21);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    if (a2)
    {
      sub_10004461C();
      v14 = v7;
      v15 = String.init<A>(describing:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_100017494(v15, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: backlightState=%s, event=%s", v10, 0x20u);
    swift_arrayDestroy();
  }

  v19 = *(v3 + OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor__backlightState);
  *(v19 + 24) = a1;

  sub_10005E680();
  v21 = *(v19 + 24);
  CurrentValueSubject.send(_:)();
}

unint64_t sub_10004461C()
{
  result = qword_10033B018;
  if (!qword_10033B018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033B018);
  }

  return result;
}

uint64_t sub_100044668()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033B030);
  sub_100003078(v0, qword_10033B030);
  return Logger.init(subsystem:category:)();
}

void sub_100044714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_requesterIdentifier];
  *v10 = static String._fromUTF8Repairing(_:)();
  v10[1] = v11;
  v12 = OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_presentableUserInfo;
  *&v4[v12] = sub_10024D3B8(_swiftEmptyArrayStorage);
  static String._fromUTF8Repairing(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v13];

  if (v14)
  {
    *&v5[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_bannerSource] = v14;
    if (qword_100338E48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10033B030);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Init", v18, 2u);
    }

    v19 = &v5[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_requestIdentifier];
    *v19 = a1;
    *(v19 + 1) = a2;
    v20 = &v5[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_actionHandler];
    *v20 = a3;
    *(v20 + 1) = a4;
    sub_100003118(0, &unk_10033B100, UIButton_ptr);

    v21 = sub_1001D444C();
    v22 = sub_1001D444C();
    v23 = [objc_allocWithZone(PLPillView) initWithLeadingAccessoryView:v21 trailingAccessoryView:v22];
    *&v5[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView] = v23;
    v52.receiver = v5;
    v52.super_class = type metadata accessor for HandoffFeedbackBannerPresenter();
    v24 = objc_msgSendSuper2(&v52, "initWithNibName:bundle:", 0, 0);
    [v21 addTarget:v24 action:"thumbsDown" forControlEvents:64];
    [v22 addTarget:v24 action:"thumbsUp" forControlEvents:64];
    v25 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v24 action:"bannerTap"];
    v26 = OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView;
    v51 = v25;
    [*&v24[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView] addGestureRecognizer:?];
    v27 = *&v24[v26];
    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100271B90;
    v29 = objc_allocWithZone(PLPillContentItem);
    v30 = v27;
    v31 = String._bridgeToObjectiveC()();
    v32 = [v29 initWithText:v31];

    *(v28 + 32) = v32;
    v33 = objc_allocWithZone(PLPillContentItem);
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 initWithText:v34 style:5];

    *(v28 + 40) = v35;
    sub_100003118(0, &qword_10033B110, PLPillContentItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 setCenterContentItems:isa];

    v37 = [*&v24[v26] leadingAccessoryView];
    if (v37)
    {
      v38 = v37;
      [v37 setHidden:0];
    }

    v39 = [*&v24[v26] trailingAccessoryView];
    if (v39)
    {
      v40 = v39;
      [v39 setHidden:0];
    }

    [*&v24[v26] setAutoresizingMask:18];
    v41 = *&v24[v26];
    v42 = [v24 view];
    if (v42)
    {

      [v42 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      [v41 setFrame:{v44, v46, v48, v50}];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100044CB4()
{
  v1 = v0;
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for HandoffFeedbackBannerPresenter();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100044E70()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_bannerSource];
  v17 = 0;
  v3 = [v2 layoutDescriptionWithError:&v17];
  if (v3)
  {
    v4 = v3;
    v5 = v17;
    [v4 presentationSize];
    v7 = v6;
    v9 = v8;
    [v4 containerSize];
    [v1 preferredContentSizeWithPresentationSize:v7 containerSize:{v9, v10, v11}];
    [v1 setPreferredContentSize:?];
    sub_10024D3B8(_swiftEmptyArrayStorage);
    sub_100035D04(&qword_10033B118, qword_100271BF0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = 0;
    v13 = [v2 postPresentable:v1 options:1 userInfo:isa error:&v17];

    if (v13)
    {
      v14 = v17;
    }

    else
    {
      v16 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v15 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100045048()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_bannerSource);
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_requestIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_requestIdentifier + 8);
  v4 = String._bridgeToObjectiveC()();
  if (qword_100339008 != -1)
  {
    swift_once();
  }

  v5 = qword_10038B178;
  sub_10024D3B8(_swiftEmptyArrayStorage);
  sub_100035D04(&qword_10033B118, qword_100271BF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = 0;
  v7 = [v1 revokePresentableWithRequestIdentifier:v4 reason:v5 animated:1 userInfo:isa error:&v10];

  if (v7)
  {
    v8 = v10;
  }

  else
  {
    v9 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000452A0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *&a1[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_actionHandler];
  v3 = *&a1[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_actionHandler + 8];
  v6 = a3;
  v7 = 0u;
  v8 = 0u;
  v9 = 3;
  v5 = a1;
  v4(&v6);
  sub_100045F80(&v6);
}

void sub_100045364(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *))
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  a5(a4);
  swift_unknownObjectRelease();
}

void sub_100045458()
{
  v1 = (v0 + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_requesterIdentifier);
  *v1 = static String._fromUTF8Repairing(_:)();
  v1[1] = v2;
  v3 = OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_presentableUserInfo;
  *(v0 + v3) = sub_10024D3B8(&_swiftEmptyArrayStorage);
  static String._fromUTF8Repairing(_:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v4];

  if (!v5)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_bannerSource) = v5;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000456A4(void *a1)
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B030);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002DLL, 0x8000000100298640, &v10);
    *(v5 + 12) = 2080;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_100017494(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100045998(void *a1)
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B030);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985E0, &v10);
    *(v5 + 12) = 2080;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_100017494(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100045B44(void *a1)
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B030);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985B0, &v10);
    *(v5 + 12) = 2080;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_100017494(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t SBUISystemApertureLayoutMode.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6C616D696E696DLL;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6D6F74737563;
      }

      goto LABEL_12;
    }

    return 0x746361706D6F63;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6465766F6D6572;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6576697463616E69;
      }

LABEL_12:
      _StringGuts.grow(_:)(19);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0xD000000000000011;
    }

    return 0x6C616974696E69;
  }
}

uint64_t sub_100046134()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033B120);
  sub_100003078(v0, qword_10033B120);
  return Logger.init(subsystem:category:)();
}

void *sub_1000461B4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1000461D4(uint64_t a1, char a2, void (*a3)(void, void, void))
{
  v6 = type metadata accessor for HandoffEvent();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v9 = a1;
    v9[8] = a2;
    swift_storeEnumTagMultiPayload();
    v11[4] = 1;
    sub_100048924(v9, a3, 0x100000000uLL);

    return sub_10001439C(v9, type metadata accessor for HandoffEvent);
  }

  return result;
}

uint64_t sub_1000462E4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = sub_100035D04(&qword_10033B338, &qword_100271F18);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v22 - v10);
  sub_100009848(a1, &v22 - v10, &qword_10033B338, &qword_100271F18);
  v12 = *v11;
  v13 = *(v5 + 56);
  sub_100009848(a1, v9, &qword_10033B338, &qword_100271F18);
  v14 = *v9;

  v15 = *(v5 + 56);
  v16 = type metadata accessor for DeviceHistory(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_10025F1F0(v12, v9 + v15);

  v20 = type metadata accessor for Date();
  result = (*(*(v20 - 8) + 8))(v11 + v13, v20);
  *a2 = v19;
  return result;
}

uint64_t sub_100046450(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    sub_100049428(v1, sub_100089E6C, sub_100086880, sub_100009194, sub_100009A04);
  }

  return result;
}

uint64_t sub_10004651C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    v4 = UUID.uuidString.getter();
    sub_10004A49C(v4, v5);
  }

  return result;
}

unint64_t sub_1000465C4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = UUID.uuidString.getter();
  *a1 = a3;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  type metadata accessor for HandoffEvent();
  swift_storeEnumTagMultiPayload();
  v8 = *(a2 + 24);
  v9 = *(v8 + 24);

  CurrentValueSubject.value.getter();
  if (v16)
  {
    v10 = *(v8 + 16);
    CurrentValueSubject.value.getter();

    v11 = v17;
    v12 = v18;
  }

  else
  {
    v11 = v14;

    v12 = v15 & 1;
  }

  return v11 | (v12 << 32);
}

unint64_t sub_100046690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a2 + *(sub_100035D04(&qword_10033B368, &qword_100271F30) + 48);
  result = sub_1000465C4(a2, v3, v4);
  *v5 = result;
  *(v5 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1000466F8(uint64_t a1, unint64_t a2, void (*a3)(void, void, void))
{
  v6 = sub_100035D04(&qword_10033B368, &qword_100271F30);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100013B14(a1, &v13 - v9, type metadata accessor for HandoffEvent);
  v11 = &v10[*(v7 + 56)];
  *v11 = a2;
  v11[4] = BYTE4(a2) & 1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100048924(v10, a3, a2 | ((HIDWORD(a2) & 1) << 32));
  }

  return sub_1000097E8(v10, &qword_10033B368, &qword_100271F30);
}

uint64_t sub_10004681C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = (a1 + *(sub_100035D04(&qword_10033B368, &qword_100271F30) + 48));
  v5 = *v4;
  v6 = *(v4 + 4);
  v7 = sub_100035D04(&qword_10033B378, &qword_100271F38);
  return a2(a1, v5 | (v6 << 32), a1 + *(v7 + 48));
}

uint64_t sub_1000468B4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_100035D04(&qword_10033B3A0, &qword_100271F50);
  v11 = *(v9 + 24);
  (*(v5 + 16))(v8, &a1[*(v10 + 48)], v4);
  v12 = type metadata accessor for SessionHistory(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  result = sub_10025B724(v15, v11, v8);
  *a2 = result;
  return result;
}

uint64_t sub_1000469E0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);

    sub_100049428(v1, sub_100089E80, sub_100086894, sub_100009194, sub_100009A04);
  }

  return result;
}

uint64_t sub_100046AAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = UUID.uuidString.getter();
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_100046AF8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 24) + qword_100346AF8;
    os_unfair_lock_lock(v5);
    v6 = *(v5 + 8);
    if (*(v6 + 16) && (v7 = sub_100004B58(v2, v1), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      os_unfair_lock_unlock(v5);
      if (v9)
      {
        sub_100255A44();
        v10 = *(v4 + 24);
        sub_10004A638(v2, v1, sub_100089E80, sub_100009194, sub_100009A04);

        return;
      }
    }

    else
    {
      os_unfair_lock_unlock(v5);
    }

    if (qword_100338E50 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_10033B120);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100017494(v2, v1, &v16);
      _os_log_impl(&_mh_execute_header, v12, v13, "### No sessionHistory for sessionID: %s", v14, 0xCu);
      sub_10000903C(v15);
    }
  }
}

uint64_t sub_100046D40@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_100035D04(&qword_10033B418, &qword_100271F80);
  (*(v5 + 16))(v8, &a1[*(v10 + 48)], v4);
  v11 = type metadata accessor for TransferRecord();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v15 = sub_10011CE84(v14, v8);

  *a2 = v15;
  return result;
}

uint64_t sub_100046E60(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = sub_1000515B8;
  *(v1 + 24) = v2;

  sub_10002689C(v3);
}

uint64_t sub_100046EF0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);

    sub_10004A638(*(a1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferID), *(a1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferID + 8), sub_100089E94, sub_100009194, sub_100009A04);
  }

  return result;
}

uint64_t sub_100046FC4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);

    sub_100049428(v1, sub_100089E94, sub_1000868A8, sub_100009194, sub_100009A04);
  }

  return result;
}

uint64_t sub_100047090@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = sub_100035D04(&qword_10033B5B0, &qword_100272050);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = sub_100035D04(&qword_10033B5B8, &qword_100272058);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *a1;
  v20 = sub_10008CECC();

  sub_100035D04(&qword_10033B5C0, &qword_100272060);
  type metadata accessor for HandoffEvent();
  sub_10000E244(&qword_10034C770, &qword_10033B5C0, &qword_100272060);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_10000E244(&qword_10033B5C8, &qword_10033B5B8, &qword_100272058);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B5D0, &qword_10033B5B0, &qword_100272050);
  v14 = v17;
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v18 + 8))(v7, v14);
  result = (*(v9 + 8))(v12, v8);
  *v19 = v15;
  return result;
}

uint64_t sub_100047388@<X0>(void *a1@<X8>)
{
  v2 = (a1 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  _StringGuts.grow(_:)(34);

  v4._countAndFlagsBits = sub_10012C5E0(v3);
  String.append(_:)(v4);

  *a1 = 0x1000000000000020;
  a1[1] = 0x8000000100298790;
  type metadata accessor for SessionEvent();
  swift_storeEnumTagMultiPayload();
  *v2 = UUID.uuidString.getter();
  v2[1] = v5;
  type metadata accessor for HandoffEvent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100047494@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = sub_100035D04(&qword_10033B580, &qword_100272038);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_100035D04(&qword_10033B588, &qword_100272040);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = *a1;
  sub_10008D40C(v23);
  v15 = v24;
  v14 = v25;
  sub_10000EBC0(v23, v24);
  v16 = (*(v14 + 32))(v15, v14);
  sub_10000903C(v23);
  v23[0] = v16;

  sub_100035D04(&qword_10033B590, &qword_100272048);
  type metadata accessor for HandoffEvent();
  sub_10000E244(&qword_10033B598, &qword_10033B590, &qword_100272048);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_10000E244(&qword_10033B5A0, &qword_10033B588, &qword_100272040);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B5A8, &qword_10033B580, &qword_100272038);
  v17 = v20;
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v21 + 8))(v7, v17);
  result = (*(v9 + 8))(v12, v8);
  *v22 = v18;
  return result;
}

uint64_t sub_1000477C8@<X0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  v4 = (a2 + *(sub_100035D04(&qword_10033B4E8, &unk_100271FD0) + 48));
  *a2 = v3;
  type metadata accessor for SessionEvent();
  swift_storeEnumTagMultiPayload();
  *v4 = UUID.uuidString.getter();
  v4[1] = v5;
  type metadata accessor for HandoffEvent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004786C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = sub_100035D04(&qword_10033B538, &qword_100272010);
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_100035D04(&qword_10033B540, &qword_100272018);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = sub_100035D04(&qword_10033B548, &unk_100272020);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = *a1;
  swift_beginAccess();
  sub_100035D04(&qword_10033B550, &qword_1002746C0);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_10033B558, &qword_10033B540, &qword_100272018);
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v9 + 8))(v12, v8);
  v26 = v19;

  sub_100035D04(&qword_10033B560, &qword_100272030);
  type metadata accessor for HandoffEvent();
  sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_10033B4F0, &qword_100271FE0);
  sub_10000E244(&qword_10033B570, &qword_10033B548, &unk_100272020);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033B578, &qword_10033B538, &qword_100272010);
  v20 = v23;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v7, v20);
  result = (*(v14 + 8))(v17, v13);
  *v25 = v21;
  return result;
}