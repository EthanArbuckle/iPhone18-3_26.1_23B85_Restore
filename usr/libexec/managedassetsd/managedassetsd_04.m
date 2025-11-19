uint64_t sub_1000A01F8(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 352))();
  if (!v3)
  {
    v7 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x6E61487465737361;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEB00000000656C64;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1000E61E0;
    *(v10 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v10 + 40) = v11;
    *(v10 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
    *(v10 + 48) = &off_100117770;
    sub_1000AF988(v10);
    swift_setDeallocating();
    sub_100066C80(v10 + 32, &qword_100129070, &qword_1000E7440);
    v12 = Dictionary._bridgeToObjectiveC()().super.isa;

    v21[0] = 0;
    v13 = [v7 queryDictionaryFor:isa attributes:v12 error:v21];

    v14 = v21[0];
    if (v13)
    {
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v14;

      if (*(v15 + 16) && (v17 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL), (v18 & 1) != 0))
      {
        sub_100066130(*(v15 + 56) + 32 * v17, v21);

        if (swift_dynamicCast())
        {
          return v20;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v19 = v21[0];
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000A0534(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    while (1)
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v27 = v3;
      v6 = *(*v25 + 352);

      v8 = v6(v7);
      if (v1)
      {

        return v22 & 1;
      }

      v9 = v8;
      v26 = v2;
      sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E61E0;
      *(inited + 32) = 0x6E61487465737361;
      v11 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEB00000000656C64;
      *(inited + 48) = v4;
      *(inited + 56) = v5;
      sub_1000AF988(inited);
      swift_setDeallocating();
      sub_100066C80(v11, &qword_100129070, &qword_1000E7440);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1000E61E0;
      *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v13 + 40) = v14;
      *(v13 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
      *(v13 + 48) = &off_1001177A0;
      sub_1000AF988(v13);
      swift_setDeallocating();
      sub_100066C80(v13 + 32, &qword_100129070, &qword_1000E7440);
      v15 = Dictionary._bridgeToObjectiveC()().super.isa;

      *&v28[0] = 0;
      v16 = [v9 queryDictionaryFor:isa attributes:v15 error:v28];

      v17 = *&v28[0];
      if (!v16)
      {
        break;
      }

      v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v17;

      if (*(v18 + 16))
      {
        v20 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v21)
        {
          sub_100066130(*(v18 + 56) + 32 * v20, v28);

          sub_100066C80(v28, &unk_100128830, &qword_1000E7D40);
          v22 = 1;
          return v22 & 1;
        }
      }

      memset(v28, 0, sizeof(v28));
      sub_100066C80(v28, &unk_100128830, &qword_1000E7D40);
      v1 = 0;
      v3 = v27 + 2;
      --v2;
      if (v26 == 1)
      {
        goto LABEL_9;
      }
    }

    v23 = *&v28[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
LABEL_9:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1000A08C8(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = type metadata accessor for UUID();
  v3[33] = v4;
  v5 = *(v4 - 8);
  v3[34] = v5;
  v6 = *(v5 + 64) + 15;
  v3[35] = swift_task_alloc();
  v7 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v8 = type metadata accessor for MACloudMAAsset();
  v3[41] = v8;
  v9 = *(v8 - 8);
  v3[42] = v9;
  v10 = *(v9 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_1000A0A9C, v2, 0);
}

uint64_t sub_1000A0A9C()
{
  v211 = v0;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 240);
  v3 = type metadata accessor for Logger();
  *(v0 + 368) = sub_100066000(v3, qword_10012A3A8);
  sub_1000AF858(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v210 = v9;
    *v8 = 136315138;
    v10 = sub_100095824();
    v12 = v11;
    sub_1000AF8BC(v7);
    v13 = sub_100065658(v10, v12, &v210);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saving asset to cloud %s", v8, 0xCu);
    sub_10005D588(v9);
  }

  else
  {

    v14 = sub_1000AF8BC(v7);
  }

  v15 = *(v0 + 256);
  v16 = *(*v15 + 208);
  v17 = (*v15 + 208) & 0xFFFFFFFFFFFFLL | 0x77F3000000000000;
  *(v0 + 376) = v16;
  *(v0 + 384) = v17;
  v16(v14);
  if (v18)
  {
  }

  else
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "accountIdentifier is not set, will to get from syncedDatabase (to fetch it)", v40, 2u);
    }

    v41 = *(v0 + 256);

    v42 = (*(*v41 + 184))();
    *(v0 + 392) = v42;
    if (v42)
    {
      v43 = *(*v42 + 216);
      v207 = (v43 + *v43);
      v44 = v43[1];
      v45 = swift_task_alloc();
      *(v0 + 400) = v45;
      *v45 = v0;
      v45[1] = sub_1000A2090;
      v46 = v207;

      return v46();
    }

    (*(**(v0 + 256) + 216))(0, 0);
  }

  v19 = *(v0 + 240);
  v20 = *(*(v0 + 336) + 56);
  v20(*(v0 + 320), 1, 1, *(v0 + 328));
  if (!v19[10])
  {
    v48 = *(v0 + 320);
LABEL_23:
    sub_1000B9568();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_100092A98();
    swift_allocError();
    *v55 = v50;
    *(v55 + 8) = v52;
    *(v55 + 16) = v54;
LABEL_24:
    swift_willThrow();
LABEL_25:
    sub_100066C80(v48, &qword_100128808, &unk_1000E6C50);
    v57 = *(v0 + 352);
    v56 = *(v0 + 360);
    v58 = *(v0 + 344);
    v60 = *(v0 + 312);
    v59 = *(v0 + 320);
    v62 = *(v0 + 296);
    v61 = *(v0 + 304);
    v64 = *(v0 + 280);
    v63 = *(v0 + 288);

    v46 = *(v0 + 8);
    goto LABEL_26;
  }

  v21 = v19[20];
  v22 = v19[17];
  v23 = v19[18];
  v206 = v20;
  v208 = v19[9];
  v24 = *(v0 + 368);
  sub_10005F304(v22, v23);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  sub_10005F358(v22, v23);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v210 = v28;
    *v27 = 136315138;
    v29 = sub_10005FFFC(v22, v23);
    v31 = sub_100065658(v29, v30, &v210);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "assetHash %s", v27, 0xCu);
    sub_10005D588(v28);
  }

  v32 = *(v0 + 240);
  v34 = *v32;
  v33 = v32[1];
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = *v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = v32[1];

    goto LABEL_15;
  }

  v65 = v32[6];
  if (!v65)
  {
    v48 = *(v0 + 320);
    goto LABEL_23;
  }

  v66 = *(v0 + 256);
  v67 = sub_1000A01F8(v32[5], v65);
  v33 = v68;
  v202 = v21;
  if (!v68)
  {
    goto LABEL_61;
  }

  v114 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v114 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v114)
  {

LABEL_61:
    v130 = *(v0 + 272);
    v129 = *(v0 + 280);
    v131 = *(v0 + 264);
    UUID.init()();
    v205 = UUID.uuidString.getter();
    v33 = v132;
    (*(v130 + 8))(v129, v131);
    goto LABEL_62;
  }

  v205 = v67;
LABEL_62:
  v133 = *(v0 + 328);
  v134 = *(v0 + 336);
  v135 = *(v0 + 312);
  sub_1000939A8(*(v0 + 320), v135, &qword_100128808, &unk_1000E6C50);
  v136 = *(v134 + 48);
  LODWORD(v133) = v136(v135, 1, v133);
  sub_100066C80(v135, &qword_100128808, &unk_1000E6C50);
  if (v133 == 1)
  {
    v138 = *(v0 + 320);
    v137 = *(v0 + 328);
    v139 = *(v0 + 240);
    sub_100066C80(v138, &qword_100128808, &unk_1000E6C50);
    sub_1000AF858(v139, v138);
    v206(v138, 0, 1, v137);
  }

  v140 = *(v0 + 320);
  v34 = v205;
  if (!v136(v140, 1, *(v0 + 328)))
  {
    v141 = v140[1];
    *v140 = v205;
    v140[1] = v33;
  }

  v21 = v202;
LABEL_15:
  *(v0 + 432) = v33;
  v37 = *(v0 + 304);
  (*(**(v0 + 256) + 328))(v34, v33);
  v69 = *(v0 + 304);
  v70 = *(*(v0 + 336) + 48);
  v71 = v70(v69, 1, *(v0 + 328));
  v72 = v71;
  v203 = v70;
  v204 = v34;
  if (v71 == 1)
  {
    sub_100066C80(v69, &qword_100128808, &unk_1000E6C50);
  }

  else
  {
    v73 = v71;
    v74 = v21;
    v75 = *(v0 + 352);
    v76 = *(v0 + 248);
    sub_1000AFAB8(v69, v75);
    if ((*(v75 + 32) & 0xFE) == 2 && v76 != 1)
    {
      v77 = *(v0 + 240);
      if (sub_1000951B4(*(v0 + 352), 0))
      {
        v78 = *(v0 + 368);

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();

        v81 = os_log_type_enabled(v79, v80);
        v82 = *(v0 + 352);
        if (v81)
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v210 = v84;
          *v83 = 136315138;
          v85 = sub_100065658(v34, v33, &v210);

          *(v83 + 4) = v85;
          _os_log_impl(&_mh_execute_header, v79, v80, "Skip asset sync up as it's not changed yet and already in cloud. recordName: %s", v83, 0xCu);
          sub_10005D588(v84);
        }

        else
        {
        }

        sub_1000AF8BC(v82);
        goto LABEL_94;
      }
    }

    sub_1000AF8BC(*(v0 + 352));
    v21 = v74;
    v72 = v73;
    v70 = v203;
  }

  v201 = v21;
  if (sub_1000C616C(v21))
  {
    v199 = v72;
    v86 = *(*(v0 + 256) + 112);
    v87 = String._bridgeToObjectiveC()();
    v88 = [v86 tempSyncUpAssetPath:v87];

    v89 = v88;
    v90 = v88;
    if (!v88)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = String._bridgeToObjectiveC()();
    }

    v200 = v89;
    v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;
    v93 = objc_opt_self();
    v94 = v88;
    v95 = [v93 defaultManager];
    v96 = String._bridgeToObjectiveC()();
    *(v0 + 224) = 0;
    v97 = [v95 copyItemAtPath:v96 toPath:v90 error:v0 + 224];

    v98 = *(v0 + 224);
    if (v97)
    {
      v209 = v92;
      sub_10005F5CC(&qword_100128868, &qword_1000E6CA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E61E0;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v100 = v98;
      v101 = NSFileProtectionKey;
      v102 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v103 = sub_1000AFB1C(inited);
      swift_setDeallocating();
      sub_100066C80(inited + 32, &unk_100128870, &qword_1000E6CA8);
      sub_1000A39A8(v103);

      type metadata accessor for FileAttributeKey(0);
      sub_1000AF620(&qword_1001287F8, 255, type metadata accessor for FileAttributeKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 232) = 0;
      LODWORD(inited) = [v95 setAttributes:isa ofItemAtPath:v200 error:v0 + 232];

      v105 = *(v0 + 232);
      if (inited)
      {
        v107 = *(v0 + 320);
        v106 = *(v0 + 328);
        v108 = *(v0 + 296);
        v109 = v105;

        sub_1000939A8(v107, v108, &qword_100128808, &unk_1000E6C50);
        LODWORD(v106) = v203(v108, 1, v106);
        sub_100066C80(v108, &qword_100128808, &unk_1000E6C50);
        if (v106 == 1)
        {
          v111 = *(v0 + 320);
          v110 = *(v0 + 328);
          v112 = *(v0 + 240);
          sub_100066C80(v111, &qword_100128808, &unk_1000E6C50);
          sub_1000AF858(v112, v111);
          v206(v111, 0, 1, v110);
        }

        v113 = *(v0 + 320);
        v70 = v203;
        v34 = v204;
        v72 = v199;
        if (!v203(v113, 1, *(v0 + 328)))
        {
          v142 = *(v113 + 96);
          *(v113 + 88) = v198;
          *(v113 + 96) = v209;
        }

        goto LABEL_71;
      }

      v115 = v105;
    }

    else
    {
      v115 = v98;
    }

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v116 = *(v0 + 368);

    swift_errorRetain();
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138412290;
      swift_errorRetain();
      v121 = _swift_stdlib_bridgeErrorToNSError();
      *(v119 + 4) = v121;
      *v120 = v121;
      _os_log_impl(&_mh_execute_header, v117, v118, "Error copying asset file: %@", v119, 0xCu);
      sub_100066C80(v120, &qword_1001287F0, &qword_1000E6C40);
    }

    v48 = *(v0 + 320);

    sub_1000B9568();
    v123 = v122;
    v125 = v124;
    v127 = v126;
    sub_100092A98();
    swift_allocError();
    *v128 = v123;
    *(v128 + 8) = v125;
    *(v128 + 16) = v127;
    swift_willThrow();

    goto LABEL_25;
  }

LABEL_71:
  v143 = *(v0 + 328);
  v144 = *(v0 + 288);
  sub_1000939A8(*(v0 + 320), v144, &qword_100128808, &unk_1000E6C50);
  v145 = v70(v144, 1, v143);
  v146 = *(v0 + 344);
  if (v145 == 1)
  {
    v147 = *(v0 + 328);
    v148 = *(v0 + 288);
    sub_1000AF858(*(v0 + 240), v146);
    if (v70(v148, 1, v147) != 1)
    {
      sub_100066C80(*(v0 + 288), &qword_100128808, &unk_1000E6C50);
    }
  }

  else
  {
    sub_1000AFAB8(*(v0 + 288), v146);
  }

  v149 = *(v0 + 344);
  v150 = (*(**(v0 + 256) + 264))(v149);
  v151 = sub_1000AF8BC(v149);
  if (v72 == 1)
  {
    v152 = *(v0 + 384);
    v153 = *(v0 + 256);
    v154 = (*(v0 + 376))(v151);
    if (v155)
    {
      *(v0 + 168) = &type metadata for String;
      *(v0 + 144) = v154;
      *(v0 + 152) = v155;
      sub_1000AF7F4((v0 + 144), (v0 + 176));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v210 = v150;
      sub_1000AEE80((v0 + 176), 0x634164726F636572, 0xED0000746E756F63, isUniquelyReferenced_nonNull_native);
    }

    v157 = *(v0 + 368);

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v210 = v161;
      *v160 = 136315138;
      *(v160 + 4) = sub_100065658(v34, v33, &v210);
      _os_log_impl(&_mh_execute_header, v158, v159, "Adding new asset to be uploaded to local cache. recordName: %s", v160, 0xCu);
      sub_10005D588(v161);
    }

    v162 = (*(**(v0 + 256) + 352))();
    v163 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 208) = 0;
    v164 = [v162 putDictionay:v163 attributes:0 error:v0 + 208];

    v165 = *(v0 + 208);
    if (!v164)
    {
LABEL_81:
      v48 = *(v0 + 320);
      v166 = v165;

      _convertNSErrorToError(_:)();

      goto LABEL_24;
    }
  }

  else
  {
    v167 = *(v0 + 368);

    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v210 = v171;
      *v170 = 136315138;
      *(v170 + 4) = sub_100065658(v34, v33, &v210);
      _os_log_impl(&_mh_execute_header, v168, v169, "Updating existing asset to be uploaded in local cache. recordName: %s", v170, 0xCu);
      sub_10005D588(v171);
    }

    v172 = (*(**(v0 + 256) + 352))();
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    v173 = swift_initStackObject();
    *(v173 + 16) = xmmword_1000E61E0;
    *(v173 + 32) = 0x614E64726F636572;
    *(v173 + 72) = &type metadata for String;
    *(v173 + 40) = 0xEA0000000000656DLL;
    *(v173 + 48) = v34;
    *(v173 + 56) = v33;

    sub_1000AF988(v173);
    swift_setDeallocating();
    sub_100066C80(v173 + 32, &qword_100129070, &qword_1000E7440);
    v174 = Dictionary._bridgeToObjectiveC()().super.isa;

    v175 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 216) = 0;
    v176 = [v172 updateFor:v174 value:v175 attributes:0 error:v0 + 216];

    v165 = *(v0 + 216);
    if ((v176 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  v177 = *(v0 + 384);
  v178 = *(v0 + 256);
  (*(v0 + 376))(v165);
  if (!v179)
  {
    v184 = *(v0 + 368);

    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v210 = v188;
      *v187 = 136315138;
      v189 = sub_100065658(v34, v33, &v210);

      *(v187 + 4) = v189;
      _os_log_impl(&_mh_execute_header, v185, v186, "Account is not available, will schedule upload when it becomes ready. recordName: %s", v187, 0xCu);
      sub_10005D588(v188);

LABEL_94:
      v190 = *(v0 + 352);
      v191 = *(v0 + 360);
      v192 = *(v0 + 344);
      v193 = *(v0 + 312);
      v195 = *(v0 + 296);
      v194 = *(v0 + 304);
      v197 = *(v0 + 280);
      v196 = *(v0 + 288);
      sub_100066C80(*(v0 + 320), &qword_100128808, &unk_1000E6C50);

      v46 = *(v0 + 8);
LABEL_26:

      return v46();
    }

LABEL_93:

    goto LABEL_94;
  }

  v180 = *(v0 + 256);

  v182 = (*(*v180 + 184))(v181);
  *(v0 + 440) = v182;
  if (!v182)
  {
    goto LABEL_93;
  }

  v183 = swift_task_alloc();
  *(v0 + 448) = v183;
  *v183 = v0;
  v183[1] = sub_1000A34DC;

  return sub_10007CCC4(v34, v33, v201);
}

uint64_t sub_1000A2090(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 400);
  v13 = *v3;
  *(*v3 + 408) = v2;

  if (v2)
  {
    v8 = v6[32];
    v9 = sub_1000A3774;
  }

  else
  {
    v10 = v6[49];
    v11 = v6[32];

    v6[52] = a2;
    v6[53] = a1;
    v9 = sub_1000A2218;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000A2218()
{
  v183 = v0;
  v1 = *(v0 + 408);
  (*(**(v0 + 256) + 216))(*(v0 + 424), *(v0 + 416));
  v2 = *(v0 + 240);
  v3 = *(*(v0 + 336) + 56);
  v3(*(v0 + 320), 1, 1, *(v0 + 328));
  if (!v2[10])
  {
    v20 = *(v0 + 320);
LABEL_11:
    sub_1000B9568();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_100092A98();
    swift_allocError();
    *v27 = v22;
    *(v27 + 8) = v24;
    *(v27 + 16) = v26;
LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  v181 = v2[20];
  v4 = v2[17];
  v5 = v2[18];
  v178 = v3;
  v179 = v2[9];
  v6 = *(v0 + 368);
  sub_10005F304(v4, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  sub_10005F358(v4, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v182 = v10;
    *v9 = 136315138;
    v11 = sub_10005FFFC(v4, v5);
    v13 = sub_100065658(v11, v12, &v182);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "assetHash %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v14 = *(v0 + 240);
  v16 = *v14;
  v15 = v14[1];
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = *v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = v14[1];

    goto LABEL_8;
  }

  v39 = v14[6];
  if (!v39)
  {
    v20 = *(v0 + 320);
    goto LABEL_11;
  }

  v40 = *(v0 + 256);
  v41 = sub_1000A01F8(v14[5], v39);
  if (v1)
  {
    v20 = *(v0 + 320);
    goto LABEL_13;
  }

  v15 = v42;
  if (!v42)
  {
    goto LABEL_49;
  }

  v88 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v88 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v88)
  {

LABEL_49:
    v104 = *(v0 + 272);
    v103 = *(v0 + 280);
    v105 = *(v0 + 264);
    UUID.init()();
    v177 = UUID.uuidString.getter();
    v15 = v106;
    (*(v104 + 8))(v103, v105);
    goto LABEL_50;
  }

  v177 = v41;
LABEL_50:
  v107 = *(v0 + 328);
  v108 = *(v0 + 336);
  v109 = *(v0 + 312);
  sub_1000939A8(*(v0 + 320), v109, &qword_100128808, &unk_1000E6C50);
  v110 = *(v108 + 48);
  LODWORD(v107) = v110(v109, 1, v107);
  sub_100066C80(v109, &qword_100128808, &unk_1000E6C50);
  if (v107 == 1)
  {
    v112 = *(v0 + 320);
    v111 = *(v0 + 328);
    v113 = *(v0 + 240);
    sub_100066C80(v112, &qword_100128808, &unk_1000E6C50);
    sub_1000AF858(v113, v112);
    v178(v112, 0, 1, v111);
  }

  v114 = *(v0 + 320);
  if (v110(v114, 1, *(v0 + 328)))
  {
    v1 = 0;
    v16 = v177;
  }

  else
  {
    v115 = v114[1];
    v16 = v177;
    *v114 = v177;
    v114[1] = v15;

    v1 = 0;
  }

LABEL_8:
  *(v0 + 432) = v15;
  v19 = *(v0 + 304);
  (*(**(v0 + 256) + 328))(v16, v15);
  if (v1)
  {
    v20 = *(v0 + 320);

LABEL_13:
    sub_100066C80(v20, &qword_100128808, &unk_1000E6C50);
    v29 = *(v0 + 352);
    v28 = *(v0 + 360);
    v30 = *(v0 + 344);
    v32 = *(v0 + 312);
    v31 = *(v0 + 320);
    v34 = *(v0 + 296);
    v33 = *(v0 + 304);
    v36 = *(v0 + 280);
    v35 = *(v0 + 288);

    v37 = *(v0 + 8);
LABEL_14:

    return v37();
  }

  v43 = *(v0 + 304);
  v44 = *(*(v0 + 336) + 48);
  v45 = v44(v43, 1, *(v0 + 328));
  v46 = v45;
  v176 = v16;
  if (v45 == 1)
  {
    sub_100066C80(v43, &qword_100128808, &unk_1000E6C50);
  }

  else
  {
    v47 = v44;
    v48 = v45;
    v49 = *(v0 + 352);
    v50 = *(v0 + 248);
    sub_1000AFAB8(v43, v49);
    if ((*(v49 + 32) & 0xFE) == 2 && v50 != 1)
    {
      v51 = *(v0 + 240);
      if (sub_1000951B4(*(v0 + 352), 0))
      {
        v52 = *(v0 + 368);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        v55 = os_log_type_enabled(v53, v54);
        v56 = *(v0 + 352);
        if (v55)
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v182 = v58;
          *v57 = 136315138;
          v59 = sub_100065658(v16, v15, &v182);

          *(v57 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v53, v54, "Skip asset sync up as it's not changed yet and already in cloud. recordName: %s", v57, 0xCu);
          sub_10005D588(v58);
        }

        else
        {
        }

        sub_1000AF8BC(v56);
        goto LABEL_82;
      }
    }

    sub_1000AF8BC(*(v0 + 352));
    v46 = v48;
    v44 = v47;
  }

  if (sub_1000C616C(v181))
  {
    v173 = v44;
    v174 = v46;
    v60 = *(*(v0 + 256) + 112);
    v61 = String._bridgeToObjectiveC()();
    v62 = [v60 tempSyncUpAssetPath:v61];

    v63 = v62;
    v64 = v62;
    if (!v62)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = String._bridgeToObjectiveC()();
    }

    v175 = v63;
    v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    v67 = objc_opt_self();
    v68 = v62;
    v69 = [v67 defaultManager];
    v70 = String._bridgeToObjectiveC()();
    *(v0 + 224) = 0;
    v71 = [v69 copyItemAtPath:v70 toPath:v64 error:v0 + 224];

    v72 = *(v0 + 224);
    if (v71)
    {
      v180 = v66;
      sub_10005F5CC(&qword_100128868, &qword_1000E6CA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E61E0;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v74 = v72;
      v75 = NSFileProtectionKey;
      v76 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v77 = sub_1000AFB1C(inited);
      swift_setDeallocating();
      sub_100066C80(inited + 32, &unk_100128870, &qword_1000E6CA8);
      sub_1000A39A8(v77);

      type metadata accessor for FileAttributeKey(0);
      sub_1000AF620(&qword_1001287F8, 255, type metadata accessor for FileAttributeKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 232) = 0;
      LODWORD(inited) = [v69 setAttributes:isa ofItemAtPath:v175 error:v0 + 232];

      v79 = *(v0 + 232);
      if (inited)
      {
        v81 = *(v0 + 320);
        v80 = *(v0 + 328);
        v82 = *(v0 + 296);
        v83 = v79;

        sub_1000939A8(v81, v82, &qword_100128808, &unk_1000E6C50);
        v44 = v173;
        LODWORD(v80) = v173(v82, 1, v80);
        sub_100066C80(v82, &qword_100128808, &unk_1000E6C50);
        if (v80 == 1)
        {
          v85 = *(v0 + 320);
          v84 = *(v0 + 328);
          v86 = *(v0 + 240);
          sub_100066C80(v85, &qword_100128808, &unk_1000E6C50);
          sub_1000AF858(v86, v85);
          v178(v85, 0, 1, v84);
        }

        v87 = *(v0 + 320);
        v16 = v176;
        v46 = v174;
        if (!v173(v87, 1, *(v0 + 328)))
        {
          v116 = *(v87 + 96);
          *(v87 + 88) = v172;
          *(v87 + 96) = v180;
        }

        goto LABEL_59;
      }

      v89 = v79;
    }

    else
    {
      v89 = v72;
    }

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v90 = *(v0 + 368);

    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      swift_errorRetain();
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 4) = v95;
      *v94 = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "Error copying asset file: %@", v93, 0xCu);
      sub_100066C80(v94, &qword_1001287F0, &qword_1000E6C40);
    }

    v20 = *(v0 + 320);

    sub_1000B9568();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    sub_100092A98();
    swift_allocError();
    *v102 = v97;
    *(v102 + 8) = v99;
    *(v102 + 16) = v101;
    swift_willThrow();

    goto LABEL_13;
  }

LABEL_59:
  v117 = *(v0 + 328);
  v118 = *(v0 + 288);
  sub_1000939A8(*(v0 + 320), v118, &qword_100128808, &unk_1000E6C50);
  v119 = v44(v118, 1, v117);
  v120 = *(v0 + 344);
  if (v119 == 1)
  {
    v121 = *(v0 + 328);
    v122 = *(v0 + 288);
    sub_1000AF858(*(v0 + 240), v120);
    if (v44(v122, 1, v121) != 1)
    {
      sub_100066C80(*(v0 + 288), &qword_100128808, &unk_1000E6C50);
    }
  }

  else
  {
    sub_1000AFAB8(*(v0 + 288), v120);
  }

  v123 = *(v0 + 344);
  v124 = (*(**(v0 + 256) + 264))(v123);
  v125 = sub_1000AF8BC(v123);
  if (v46 == 1)
  {
    v126 = *(v0 + 384);
    v127 = *(v0 + 256);
    v128 = (*(v0 + 376))(v125);
    if (v129)
    {
      *(v0 + 168) = &type metadata for String;
      *(v0 + 144) = v128;
      *(v0 + 152) = v129;
      sub_1000AF7F4((v0 + 144), (v0 + 176));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182 = v124;
      sub_1000AEE80((v0 + 176), 0x634164726F636572, 0xED0000746E756F63, isUniquelyReferenced_nonNull_native);
    }

    v131 = *(v0 + 368);

    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v182 = v135;
      *v134 = 136315138;
      *(v134 + 4) = sub_100065658(v16, v15, &v182);
      _os_log_impl(&_mh_execute_header, v132, v133, "Adding new asset to be uploaded to local cache. recordName: %s", v134, 0xCu);
      sub_10005D588(v135);
    }

    v136 = (*(**(v0 + 256) + 352))();
    v137 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 208) = 0;
    v138 = [v136 putDictionay:v137 attributes:0 error:v0 + 208];

    v139 = *(v0 + 208);
    if (!v138)
    {
LABEL_69:
      v20 = *(v0 + 320);
      v140 = v139;

      _convertNSErrorToError(_:)();

      goto LABEL_12;
    }
  }

  else
  {
    v141 = *(v0 + 368);

    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v182 = v145;
      *v144 = 136315138;
      *(v144 + 4) = sub_100065658(v16, v15, &v182);
      _os_log_impl(&_mh_execute_header, v142, v143, "Updating existing asset to be uploaded in local cache. recordName: %s", v144, 0xCu);
      sub_10005D588(v145);
    }

    v146 = (*(**(v0 + 256) + 352))();
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    v147 = swift_initStackObject();
    *(v147 + 16) = xmmword_1000E61E0;
    *(v147 + 32) = 0x614E64726F636572;
    *(v147 + 72) = &type metadata for String;
    *(v147 + 40) = 0xEA0000000000656DLL;
    *(v147 + 48) = v16;
    *(v147 + 56) = v15;

    sub_1000AF988(v147);
    swift_setDeallocating();
    sub_100066C80(v147 + 32, &qword_100129070, &qword_1000E7440);
    v148 = Dictionary._bridgeToObjectiveC()().super.isa;

    v149 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 216) = 0;
    v150 = [v146 updateFor:v148 value:v149 attributes:0 error:v0 + 216];

    v139 = *(v0 + 216);
    if ((v150 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  v151 = *(v0 + 384);
  v152 = *(v0 + 256);
  (*(v0 + 376))(v139);
  if (!v153)
  {
    v158 = *(v0 + 368);

    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v182 = v162;
      *v161 = 136315138;
      v163 = sub_100065658(v16, v15, &v182);

      *(v161 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v159, v160, "Account is not available, will schedule upload when it becomes ready. recordName: %s", v161, 0xCu);
      sub_10005D588(v162);

LABEL_82:
      v164 = *(v0 + 352);
      v165 = *(v0 + 360);
      v166 = *(v0 + 344);
      v167 = *(v0 + 312);
      v169 = *(v0 + 296);
      v168 = *(v0 + 304);
      v171 = *(v0 + 280);
      v170 = *(v0 + 288);
      sub_100066C80(*(v0 + 320), &qword_100128808, &unk_1000E6C50);

      v37 = *(v0 + 8);
      goto LABEL_14;
    }

LABEL_81:

    goto LABEL_82;
  }

  v154 = *(v0 + 256);

  v156 = (*(*v154 + 184))(v155);
  *(v0 + 440) = v156;
  if (!v156)
  {
    goto LABEL_81;
  }

  v157 = swift_task_alloc();
  *(v0 + 448) = v157;
  *v157 = v0;
  v157[1] = sub_1000A34DC;

  return sub_10007CCC4(v16, v15, v181);
}

uint64_t sub_1000A34DC()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v10 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = v2[32];
    v5 = sub_1000A387C;
  }

  else
  {
    v6 = v2[54];
    v7 = v2[55];
    v8 = v2[32];

    v5 = sub_1000A3658;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000A3658()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[39];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  sub_100066C80(v0[40], &qword_100128808, &unk_1000E6C50);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000A3774()
{
  v1 = v0[49];

  v2 = v0[51];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v11 = v0[35];
  v10 = v0[36];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000A387C()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[40];

  sub_100066C80(v3, &qword_100128808, &unk_1000E6C50);
  v4 = v0[57];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  v9 = v0[39];
  v8 = v0[40];
  v11 = v0[37];
  v10 = v0[38];
  v13 = v0[35];
  v12 = v0[36];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000A39A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10005F5CC(&qword_100128C28, &qword_1000E7368);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1000AF7F4((v28 + 8), v26);
    sub_1000AF7F4(v26, v28);
    v16 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_1000AF7F4(v28, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000A3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[60] = a3;
  v4[61] = v3;
  v4[58] = a1;
  v4[59] = a2;
  v5 = type metadata accessor for Date();
  v4[62] = v5;
  v6 = *(v5 - 8);
  v4[63] = v6;
  v7 = *(v6 + 64) + 15;
  v4[64] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3D40, v3, 0);
}

uint64_t sub_1000A3D40()
{
  v62 = v0;
  v2 = v0[58];
  v1 = v0[59];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    sub_1000B9568();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_100092A98();
    swift_allocError();
    *v19 = v14;
    *(v19 + 8) = v16;
    *(v19 + 16) = v18;
LABEL_6:
    swift_willThrow();
    v20 = v0[64];

    v21 = v0[1];
    goto LABEL_7;
  }

  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[61];
  v6 = v0[62];
  v8 = v0[60];
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E6BF0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7079547465737361;
  *(inited + 56) = v1;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v8;
  *(inited + 120) = &type metadata for UInt;
  *(inited + 128) = 0x74617453636E7973;
  *(inited + 136) = 0xE900000000000065;

  *(inited + 144) = sub_1000C1778(10);
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0x6144636E79536B63;
  *(inited + 184) = 0xEA00000000006574;
  *(inited + 216) = &type metadata for Double;
  *(inited + 192) = v10;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v12 = (*(*v7 + 344))(v2, v1);
  if ((v12 & 1) == 0)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100066000(v33, qword_10012A3A8);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136315138;
      v38 = Dictionary.description.getter();
      v40 = sub_100065658(v38, v39, &v61);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Adding to be deleted AssetRecord: %s to local cache", v36, 0xCu);
      sub_10005D588(v37);
    }

    v41 = (*(*v0[61] + 352))();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v0[56] = 0;
    v43 = [v41 putDictionay:isa attributes:0 error:v0 + 56];

    v44 = v0[56];
    if (v43)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100066000(v23, qword_10012A3A8);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v61 = v27;
    *v26 = 136315138;
    v28 = Dictionary.description.getter();
    v30 = v29;

    v31 = sub_100065658(v28, v30, &v61);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Update to be deleted AssetRecord: %s in local cache", v26, 0xCu);
    sub_10005D588(v27);
  }

  else
  {
  }

  v46 = (*(*v0[61] + 352))(v32);
  v48 = v0[58];
  v47 = v0[59];
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1000E61E0;
  *(v49 + 32) = 0x614E64726F636572;
  *(v49 + 72) = &type metadata for String;
  *(v49 + 40) = 0xEA0000000000656DLL;
  *(v49 + 48) = v48;
  *(v49 + 56) = v47;

  sub_1000AF988(v49);
  swift_setDeallocating();
  sub_100066C80(v49 + 32, &qword_100129070, &qword_1000E7440);
  v50 = Dictionary._bridgeToObjectiveC()().super.isa;

  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1000E6C00;
  *(v51 + 32) = 0x74617453636E7973;
  *(v51 + 40) = 0xE900000000000065;
  *(v51 + 48) = sub_1000C1778(10);
  *(v51 + 72) = &type metadata for Int;
  *(v51 + 80) = 0x6144636E79536B63;
  *(v51 + 88) = 0xEA00000000006574;
  *(v51 + 120) = &type metadata for Double;
  *(v51 + 96) = v10;
  sub_1000AF988(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  v52 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[57] = 0;
  v53 = [v46 updateFor:v50 value:v52 attributes:0 error:v0 + 57];

  v44 = v0[57];
  if ((v53 & 1) == 0)
  {
LABEL_20:
    v45 = v44;
    _convertNSErrorToError(_:)();

    goto LABEL_6;
  }

LABEL_23:
  v54 = (*(*v0[61] + 184))(v44);
  v0[65] = v54;
  if (v54)
  {
    v56 = v0[58];
    v55 = v0[59];
    sub_10005F5CC(&unk_100129340, &unk_1000E8020);
    v57 = swift_allocObject();
    v0[66] = v57;
    *(v57 + 16) = xmmword_1000E61E0;
    *(v57 + 32) = v56;
    *(v57 + 40) = v55;

    v58 = swift_task_alloc();
    v0[67] = v58;
    *v58 = v0;
    v58[1] = sub_1000A46A0;
    v59 = v0[60];

    return sub_10007D9B8(v57, v59);
  }

  v60 = v0[64];

  v21 = v0[1];
LABEL_7:

  return v21();
}

uint64_t sub_1000A46A0()
{
  v2 = *(*v1 + 536);
  v3 = *v1;
  v3[68] = v0;

  if (v0)
  {
    v4 = v3[61];

    return _swift_task_switch(sub_1000A4844, v4, 0);
  }

  else
  {
    v5 = v3[66];
    v6 = v3[65];

    v7 = v3[64];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1000A4844()
{
  v1 = v0[66];
  v2 = v0[65];

  v3 = v0[68];
  v4 = v0[64];

  v5 = v0[1];

  return v5();
}

id sub_1000A48E8(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 352))();
  if (!v3)
  {
    v7 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = 0;
    v10 = [v7 deleteFor:isa attributes:0 error:&v12];

    if (v10)
    {
      return v12;
    }

    else
    {
      v11 = v12;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000A4ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for MACloudMAAsset();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 352))(v11);
  if (!v4)
  {
    v15 = result;
    v27 = a3;
    v28 = v9;
    v29 = 0;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v30 = 0;
    v18 = [v15 queryDictionaryFor:isa attributes:0 error:&v30];

    v19 = v30;
    if (v18)
    {
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v19;

      if (*(v20 + 16))
      {
        v22 = v29;
        (*(*v3 + 272))(v20);

        v23 = v28;
        if (!v22)
        {
          v24 = v27;
          sub_1000AFAB8(v13, v27);
          return (*(v23 + 56))(v24, 0, 1, v8);
        }
      }

      else
      {
        (*(v28 + 56))(v27, 1, 1, v8);
      }
    }

    else
    {
      v25 = v30;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1000A4E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v42 = a1;
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = sub_1000AF988(_swiftEmptyArrayStorage);
  v18 = type metadata accessor for MACloudMAAsset();
  v19 = (a3 + v18[27]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v52 = &type metadata for String;
    *&v51 = v21;
    *(&v51 + 1) = v20;
    sub_1000AF7F4(&v51, v50);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v17;
    sub_1000AEE80(v50, 0x676154456B63, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v17 = v49;
  }

  v23 = v18[28];
  v45 = a3;
  sub_1000939A8(a3 + v23, v9, &qword_1001287D0, &qword_1000E6C30);
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    v25 = v11;
    sub_100066C80(v9, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    Date.timeIntervalSinceReferenceDate.getter();
    v52 = &type metadata for Double;
    *&v51 = v26;
    sub_1000AF7F4(&v51, v50);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v17;
    sub_1000AEE80(v50, 0x6574616572436B63, 0xED00006574614464, v27);
    v25 = v11;
    (*(v11 + 8))(v16, v10);
    v17 = v49;
  }

  v28 = v46;
  sub_1000939A8(v45 + v18[29], v46, &qword_1001287D0, &qword_1000E6C30);
  if (v24(v28, 1, v10) == 1)
  {
    v29 = sub_100066C80(v28, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v30 = v44;
    (*(v25 + 32))(v44, v28, v10);
    Date.timeIntervalSinceReferenceDate.getter();
    v52 = &type metadata for Double;
    *&v51 = v31;
    sub_1000AF7F4(&v51, v50);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v17;
    sub_1000AEE80(v50, 0x696669646F4D6B63, 0xEE00657461446465, v32);
    v29 = (*(v25 + 8))(v30, v10);
  }

  v33 = v48;
  v34 = (*(*v47 + 352))(v29);
  if (v33)
  {
  }

  v36 = v34;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v42;
  *(inited + 56) = v43;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v51 = 0;
  v40 = [v36 updateFor:isa value:v39 attributes:0 error:&v51];

  if (v40)
  {
    return v51;
  }

  v41 = v51;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

BOOL sub_1000A541C(uint64_t a1, uint64_t a2)
{
  v6 = (*(*v2 + 352))();
  if (!v3)
  {
    v8 = v6;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = String._bridgeToObjectiveC()();
    v20 = 0;
    v21 = 0;
    v12 = [v8 queryForColumn:isa column:v11 attributes:0 values:&v21 error:&v20];

    v13 = v21;
    v14 = v20;
    if (v12)
    {
      if (v13)
      {
        v15 = v13;
        v16 = [v15 count];

        return v16 > 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17 = v14;
      v18 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v7;
}

uint64_t sub_1000A5688()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000A56E0()
{
  sub_1000A5688();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000A570C()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_1000A579C, v0, 0);
}

uint64_t sub_1000A579C()
{
  v1 = (*(**(v0 + 24) + 352))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 deleteFor:isa attributes:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v9 = *(v0 + 8);
    v5 = v4;
    v6 = v9;
  }

  else
  {
    v7 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_1000A593C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000A595C, v1, 0);
}

uint64_t sub_1000A595C()
{
  v1 = *(v0 + 16);
  v2 = *(**(v0 + 24) + 192);

  v2(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000A59E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000A5A0C, v2, 0);
}

uint64_t sub_1000A5A0C()
{
  v23 = v0;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_10012A3A8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v21 = v0[3];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = (*(*v6 + 208))();
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_100065658(v9, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (v21)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    if (v21)
    {
      v14 = v1;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_100065658(v13, v14, &v22);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Update account identifier from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[3];
  v17 = v0[2];
  v18 = *(*v0[4] + 216);

  v18(v17, v16);
  v19 = v0[1];

  return v19();
}

uint64_t sub_1000A5C78()
{
  *(v1 + 360) = v0;

  return _swift_task_switch(sub_1000A5D08, v0, 0);
}

uint64_t sub_1000A5D08()
{
  v1 = v0[45];
  v2 = *(*v1 + 208);
  v3 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0x77F3000000000000;
  v0[46] = v2;
  v0[47] = v3;
  v2();
  if (v4)
  {
  }

  else
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_10012A3A8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "accountIdentifier is not set, will to get from syncedDatabase (to fetch it)", v15, 2u);
    }

    v16 = v0[45];

    v17 = (*(*v16 + 184))();
    v0[48] = v17;
    if (v17)
    {
      v18 = *(*v17 + 216);
      v74 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      v0[49] = v20;
      *v20 = v0;
      v20[1] = sub_1000A6720;
      v21 = v74;

      return v21();
    }

    v5 = (*(*v0[45] + 216))(0, 0);
  }

  v6 = v0[47];
  v7 = v0[45];
  v8 = (v0[46])(v5);
  if (!v9)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100066000(v23, qword_10012A3A8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "account identifier is unknown for querying cloud assets size", v26, 2u);
    }

    sub_1000B9568();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_100092A98();
    swift_allocError();
    *v33 = v28;
    *(v33 + 8) = v30;
    *(v33 + 16) = v32;
    goto LABEL_18;
  }

  v10 = v8;
  v11 = v9;
  v76 = (*(*v0[45] + 352))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  strcpy((inited + 32), "recordAccount");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v10;
  v73 = v10;
  *(inited + 56) = v11;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1000E61E0;
  *(v36 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v36 + 40) = v37;
  *(v36 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v36 + 48) = &off_1001177D0;
  sub_1000AF988(v36);
  swift_setDeallocating();
  sub_100066C80(v36 + 32, &qword_100129070, &qword_1000E7440);
  v38 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[42] = 0;
  v39 = [v76 queryRowDictionariesFor:isa attributes:v38 error:v0 + 42];

  v40 = v0[42];
  if (!v39)
  {
    v67 = v40;

    _convertNSErrorToError(_:)();

LABEL_18:
    swift_willThrow();
    v21 = v0[1];

    return v21();
  }

  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v40;

  v43 = *(v41 + 16);
  if (v43)
  {
    v75 = 0;
    v44 = v41 + 32;
    v77 = _swiftEmptyArrayStorage;
    while (1)
    {
      v46 = *v44;
      if (*(*v44 + 16))
      {
        v47 = *v44;

        v48 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v49)
        {
          sub_100066130(*(v46 + 56) + 32 * v48, (v0 + 22));
          if (swift_dynamicCast())
          {
            v50 = v0[39];
            if (*(v46 + 16))
            {
              v51 = v0[38];
              v52 = sub_100065A98(0x7A69537465737361, 0xE900000000000065);
              if (v53 & 1) != 0 && (sub_100066130(*(v46 + 56) + 32 * v52, (v0 + 26)), (swift_dynamicCast()) && *(v46 + 16) && (v72 = v0[43], v54 = sub_100065A98(0x74617453636E7973, 0xE900000000000065), (v55) && (sub_100066130(*(v46 + 56) + 32 * v54, (v0 + 30)), (swift_dynamicCast()) && (v70 = v0[44], v70 >= sub_1000C1778(2)) && v70 < sub_1000C1778(4))
              {
                v56 = __OFADD__(v75, v72);
                v75 += v72;
                if (v56)
                {
                  __break(1u);
                }

                if (*(v46 + 16) && (v57 = sub_100065A98(0x6E61487465737361, 0xEB00000000656C64), (v58 & 1) != 0))
                {
                  sub_100066130(*(v46 + 56) + 32 * v57, (v0 + 34));

                  v59 = swift_dynamicCast();
                  if (v59)
                  {
                    v60 = v0[40];
                  }

                  else
                  {
                    v60 = 0;
                  }

                  if (v59)
                  {
                    v61 = v0[41];
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v69 = v61;
                }

                else
                {

                  v60 = 0;
                  v69 = 0;
                }

                v71 = v60;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v77 = sub_1000AE184(0, v77[2] + 1, 1, v77);
                }

                v63 = v77[2];
                v62 = v77[3];
                v64 = v63 + 1;
                if (v63 >= v62 >> 1)
                {
                  v66 = sub_1000AE184((v62 > 1), v63 + 1, 1, v77);
                  v64 = v63 + 1;
                  v77 = v66;
                }

                v77[2] = v64;
                v65 = &v77[5 * v63];
                v65[4] = v51;
                v65[5] = v50;
                v65[6] = v71;
                v65[7] = v69;
                v65[8] = v72;
              }

              else
              {
              }

              goto LABEL_27;
            }

            v45 = v0[39];
          }
        }
      }

LABEL_27:
      v44 += 8;
      if (!--v43)
      {
        goto LABEL_58;
      }
    }
  }

  v75 = 0;
  v77 = _swiftEmptyArrayStorage;
LABEL_58:

  v68 = v0[1];

  return v68(v73, v11, v75, v77);
}

uint64_t sub_1000A6720(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 392);
  v13 = *v3;
  *(*v3 + 400) = v2;

  if (v2)
  {
    v8 = v6[45];
    v9 = sub_1000A7080;
  }

  else
  {
    v10 = v6[48];
    v11 = v6[45];

    v6[51] = a2;
    v6[52] = a1;
    v9 = sub_1000A68A8;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000A68A8()
{
  v1 = *(v0 + 400);
  v2 = (*(**(v0 + 360) + 216))(*(v0 + 416), *(v0 + 408));
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = (*(v0 + 368))(v2);
  if (!v6)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100066000(v10, qword_10012A3A8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "account identifier is unknown for querying cloud assets size", v13, 2u);
    }

    sub_1000B9568();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_100092A98();
    swift_allocError();
    *v20 = v15;
    *(v20 + 8) = v17;
    *(v20 + 16) = v19;
    goto LABEL_9;
  }

  v7 = v5;
  v8 = v6;
  v9 = (*(**(v0 + 360) + 352))();
  if (v1)
  {

LABEL_10:
    v21 = *(v0 + 8);

    return v21();
  }

  v64 = v9;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  strcpy((inited + 32), "recordAccount");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v7;
  v62 = v7;
  *(inited + 56) = v8;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1000E61E0;
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v26;
  *(v25 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v25 + 48) = &off_1001177D0;
  sub_1000AF988(v25);
  swift_setDeallocating();
  sub_100066C80(v25 + 32, &qword_100129070, &qword_1000E7440);
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 336) = 0;
  v28 = [v64 queryRowDictionariesFor:isa attributes:v27 error:v0 + 336];

  v29 = *(v0 + 336);
  if (!v28)
  {
    v56 = v29;

    _convertNSErrorToError(_:)();

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v29;

  v32 = *(v30 + 16);
  if (v32)
  {
    v63 = 0;
    v33 = v30 + 32;
    v65 = _swiftEmptyArrayStorage;
    while (1)
    {
      v35 = *v33;
      if (*(*v33 + 16))
      {
        v36 = *v33;

        v37 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v38)
        {
          sub_100066130(*(v35 + 56) + 32 * v37, v0 + 176);
          if (swift_dynamicCast())
          {
            v39 = *(v0 + 312);
            if (*(v35 + 16))
            {
              v40 = *(v0 + 304);
              v41 = sub_100065A98(0x7A69537465737361, 0xE900000000000065);
              if (v42 & 1) != 0 && (sub_100066130(*(v35 + 56) + 32 * v41, v0 + 208), (swift_dynamicCast()) && *(v35 + 16) && (v61 = *(v0 + 344), v43 = sub_100065A98(0x74617453636E7973, 0xE900000000000065), (v44) && (sub_100066130(*(v35 + 56) + 32 * v43, v0 + 240), (swift_dynamicCast()) && (v59 = *(v0 + 352), v59 >= sub_1000C1778(2)) && v59 < sub_1000C1778(4))
              {
                v45 = __OFADD__(v63, v61);
                v63 += v61;
                if (v45)
                {
                  __break(1u);
                }

                if (*(v35 + 16) && (v46 = sub_100065A98(0x6E61487465737361, 0xEB00000000656C64), (v47 & 1) != 0))
                {
                  sub_100066130(*(v35 + 56) + 32 * v46, v0 + 272);

                  v48 = swift_dynamicCast();
                  if (v48)
                  {
                    v49 = *(v0 + 320);
                  }

                  else
                  {
                    v49 = 0;
                  }

                  if (v48)
                  {
                    v50 = *(v0 + 328);
                  }

                  else
                  {
                    v50 = 0;
                  }

                  v58 = v50;
                }

                else
                {

                  v49 = 0;
                  v58 = 0;
                }

                v60 = v49;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v65 = sub_1000AE184(0, v65[2] + 1, 1, v65);
                }

                v52 = v65[2];
                v51 = v65[3];
                v53 = v52 + 1;
                if (v52 >= v51 >> 1)
                {
                  v55 = sub_1000AE184((v51 > 1), v52 + 1, 1, v65);
                  v53 = v52 + 1;
                  v65 = v55;
                }

                v65[2] = v53;
                v54 = &v65[5 * v52];
                v54[4] = v40;
                v54[5] = v39;
                v54[6] = v60;
                v54[7] = v58;
                v54[8] = v61;
              }

              else
              {
              }

              goto LABEL_18;
            }

            v34 = *(v0 + 312);
          }
        }
      }

LABEL_18:
      v33 += 8;
      if (!--v32)
      {
        goto LABEL_49;
      }
    }
  }

  v63 = 0;
  v65 = _swiftEmptyArrayStorage;
LABEL_49:

  v57 = *(v0 + 8);

  return v57(v62, v8, v63, v65);
}

uint64_t sub_1000A7080()
{
  v1 = v0[48];

  v2 = v0[50];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A7110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000A71B0, v3, 0);
}

uint64_t sub_1000A71B0()
{
  v23 = v0;
  v1 = *(v0 + 48);
  (*(**(v0 + 40) + 328))(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 48);
  v3 = type metadata accessor for MACloudMAAsset();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_100066C80(v2, &qword_100128808, &unk_1000E6C50);
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v5 = type metadata accessor for Logger();
    sub_100066000(v5, qword_10012A3A8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 24);
      v8 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100065658(v9, v8, &v22);
      _os_log_impl(&_mh_execute_header, v6, v7, "failed to fetch local asset for recordName: %s", v10, 0xCu);
      sub_10005D588(v11);
    }

    sub_1000B9568();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_100092A98();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    swift_willThrow();
    v19 = *(v0 + 48);

    v20 = *(v0 + 8);
  }

  else
  {
    sub_1000AFAB8(v2, *(v0 + 16));

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1000A7444(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_1000A74D4, v1, 0);
}

uint64_t sub_1000A74D4()
{
  v43 = v0;
  v1 = [*(v0 + 24) recordID];
  v2 = [v1 recordName];

  v3 = v2;
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = [*(v4 + 112) tempSyncUpAssetPath:v3];

  v9 = v8;
  v10 = v8;
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = objc_opt_self();
  v15 = v8;
  v16 = [v14 defaultManager];
  LODWORD(v14) = [v16 fileExistsAtPath:v10];

  if (v14)
  {
    v41 = v5;
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100066000(v17, qword_10012A3A8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v40 = v11;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100065658(v41, v7, &v42);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_100065658(v11, v13, &v42);
      _os_log_impl(&_mh_execute_header, v18, v19, "Upload completed for %s, deleting tmp file: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    *(v0 + 16) = 0;
    v21 = [v16 removeItemAtPath:v9 error:v0 + 16];

    v22 = *(v0 + 16);
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v24 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v42 = v29;
        *v27 = 136315394;
        v30 = sub_100065658(v40, v13, &v42);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2112;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v31;
        *v28 = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Error deleting syncup temp file %s: %@", v27, 0x16u);
        sub_100066C80(v28, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v29);
      }

      else
      {
      }
    }

    v5 = v41;
  }

  else
  {
  }

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100066000(v32, qword_10012A3A8);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100065658(v5, v7, &v42);
    _os_log_impl(&_mh_execute_header, v33, v34, "Upload completed for %s, upload local sync state to uploaded", v35, 0xCu);
    sub_10005D588(v36);
  }

  v37 = *(v0 + 32);
  sub_1000A7B30(v5, v7, *(v0 + 24));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1000A7B30(uint64_t a1, unint64_t a2, void *a3)
{
  v116 = a3;
  v113 = a1;
  v5 = sub_10005F5CC(&qword_100128808, &unk_1000E6C50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v112 = &v106 - v7;
  v111 = type metadata accessor for MACloudMAAsset();
  v110 = *(v111 - 8);
  v8 = *(v110 + 64);
  v9 = __chkstk_darwin(v111);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v106 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v115 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v114 = &v106 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v106 - v22;
  v24 = *(*v3 + 208);
  v117 = v3;
  v25 = v24(v21);
  if (!v26)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100066000(v64, qword_10012A3A8);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "account identifier is unknown for uploading status", v67, 2u);
    }

    goto LABEL_23;
  }

  v27 = v25;
  v28 = v26;
  v107 = v11;
  v109 = a2;
  v108 = v13;
  v29 = sub_1000AF988(_swiftEmptyArrayStorage);
  v30 = sub_1000C1778(2);
  v122 = &type metadata for Int;
  *&v121 = v30;
  sub_1000AF7F4(&v121, v120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v119 = v29;
  sub_1000AEE80(v120, 0x74617453636E7973, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v32 = v119;
  v33 = [objc_allocWithZone(NSNull) init];
  v122 = sub_100092C8C(0, &qword_1001290A0, NSNull_ptr);
  *&v121 = v33;
  sub_1000AF7F4(&v121, v120);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v119 = v32;
  sub_1000AEE80(v120, 0xD000000000000012, 0x80000001000F1250, v34);
  v35 = v119;
  v122 = &type metadata for String;
  *&v121 = v27;
  *(&v121 + 1) = v28;
  sub_1000AF7F4(&v121, v120);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v119 = v35;
  sub_1000AEE80(v120, 0x634164726F636572, 0xED0000746E756F63, v36);
  v37 = v119;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v39 = v38;
  v40 = *(v15 + 8);
  v40(v23, v14);
  v122 = &type metadata for Double;
  *&v121 = v39;
  sub_1000AF7F4(&v121, v120);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v119 = v37;
  sub_1000AEE80(v120, 0x6144636E79536B63, 0xEA00000000006574, v41);
  v42 = v119;
  v43 = v116;
  v44 = [v116 etag];
  if (v44)
  {
    v45 = v44;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v122 = &type metadata for String;
    *&v121 = v46;
    *(&v121 + 1) = v48;
    sub_1000AF7F4(&v121, v120);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v42;
    sub_1000AEE80(v120, 0x676154456B63, 0xE600000000000000, v49);
    v42 = v119;
  }

  v50 = [v43 creationDate];
  if (v50)
  {
    v51 = v114;
    v52 = v50;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v122 = &type metadata for Double;
    *&v121 = v53;
    sub_1000AF7F4(&v121, v120);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v42;
    sub_1000AEE80(v120, 0x6574616572436B63, 0xED00006574614464, v54);
    v40(v51, v14);
    v42 = v119;
  }

  v55 = [v43 modificationDate];
  if (v55)
  {
    v56 = v115;
    v57 = v55;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v122 = &type metadata for Double;
    *&v121 = v58;
    sub_1000AF7F4(&v121, v120);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v42;
    sub_1000AEE80(v120, 0x696669646F4D6B63, 0xEE00657461446465, v59);
    v40(v56, v14);
  }

  v60 = v117;
  v61 = v118;
  v62 = (*(*v117 + 352))();
  if (v61)
  {
  }

  v68 = v62;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v113;
  *(inited + 56) = v109;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v71 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v121 = 0;
  v72 = [v68 updateFor:isa value:v71 attributes:0 error:&v121];

  if (!v72)
  {
    v77 = v121;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v73 = *(*v60 + 328);
  v74 = v121;
  v75 = v112;
  v76 = v113;
  v73(v113, v109);
  if ((*(v110 + 48))(v75, 1, v111) == 1)
  {
    sub_100066C80(v75, &qword_100128808, &unk_1000E6C50);
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100066000(v78, qword_10012A3A8);
    v79 = v109;

    v65 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v121 = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_100065658(v76, v79, &v121);
      _os_log_impl(&_mh_execute_header, v65, v80, "Failed to fetch local record for synced up record %s", v81, 0xCu);
      sub_10005D588(v82);
    }

LABEL_23:

    sub_1000B9568();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    sub_100092A98();
    swift_allocError();
    *v89 = v84;
    *(v89 + 8) = v86;
    *(v89 + 16) = v88;
    return swift_willThrow();
  }

  v90 = v108;
  sub_1000AFAB8(v75, v108);
  v91 = v60[15];
  v92 = sub_1000970C0();
  LODWORD(v91) = [v91 didSyncUpAsset:v92];

  if (v91)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_100066000(v93, qword_10012A3A8);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_35;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&_mh_execute_header, v94, v95, "Delegate notified synced up asset in cloud", v96, 2u);
  }

  else
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100066000(v97, qword_10012A3A8);
    v98 = v107;
    sub_1000AF858(v90, v107);
    v94 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v94, v99))
    {

      sub_1000AF8BC(v98);
      return sub_1000AF8BC(v90);
    }

    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v121 = v101;
    *v100 = 136315138;
    v102 = sub_100095824();
    v104 = v103;
    sub_1000AF8BC(v98);
    v105 = sub_100065658(v102, v104, &v121);

    *(v100 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v94, v99, "Delegate failed to process didSyncUp for %s", v100, 0xCu);
    sub_10005D588(v101);
  }

LABEL_35:

  return sub_1000AF8BC(v90);
}

uint64_t sub_1000A882C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000A884C, v1, 0);
}

uint64_t sub_1000A884C()
{
  v21 = v0;
  v1 = [*(v0 + 16) recordName];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_10012A3A8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100065658(v2, v4, v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "Deletion completed in cloud for %s, deleting local cache", v8, 0xCu);
    sub_10005D588(v9);
  }

  (*(**(v0 + 24) + 320))(v2, v4);
  v10 = [*(*(v0 + 24) + 120) didSyncUpAssetDelete:v1];

  if (v10)
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
LABEL_13:

      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Delegate notified deletion synced up in cloud", v13, 2u);
LABEL_12:

    goto LABEL_13;
  }

  v11 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136315138;
    v17 = sub_100065658(v2, v4, v20);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v14, "Delegate failed to process didSyncUpAssetDelete for recordName: %s", v15, 0xCu);
    sub_10005D588(v16);

    goto LABEL_12;
  }

LABEL_15:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000A8BF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000A8C18, v2, 0);
}

uint64_t sub_1000A8C18()
{
  v1 = *(*(v0 + 32) + 120);
  v2 = [*(v0 + 16) recordName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = *(v0 + 24);
  v4 = _convertErrorToNSError(_:)();
  [v1 failedToDeleteAsset:v2 error:v4];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000A8CE8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_1000A8D78, v1, 0);
}

uint64_t sub_1000A8D78()
{
  v48 = v0;
  v1 = *(v0 + 32);
  v2 = (*(*v1 + 232))();
  (*(*v1 + 240))(0);
  if (v2)
  {
    if (qword_10012A3A0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 24);
    v4 = type metadata accessor for Logger();
    sub_100066000(v4, qword_10012A3A8);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 24);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v47 = v10;
      *v9 = 136315138;
      v11 = [v8 zoneName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100065658(v12, v14, &v47);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Starting Manatee Identity Recovery by re-uploading local records for %s", v9, 0xCu);
      sub_10005D588(v10);
    }

    v16 = 5;
  }

  else
  {
    v16 = 4;
  }

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100066000(v17, qword_10012A3A8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v47 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100065658(0xD000000000000011, 0x80000001000F1080, &v47);
    _os_log_impl(&_mh_execute_header, v18, v19, "Delete all local records cached in %s after zone deleted", v20, 0xCu);
    sub_10005D588(v21);
  }

  v22 = (*(**(v0 + 32) + 352))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v24 = [v22 deleteFor:isa attributes:0 error:v0 + 16];

  v25 = *(v0 + 16);
  if (!v24)
  {
    v34 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v35 = *(v0 + 8);
    goto LABEL_19;
  }

  v26 = *(v0 + 24);
  v27 = *(*(v0 + 32) + 120);
  v28 = v25;
  v29 = [v26 zoneName];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = [v27 didReceiveZoneDelete:v29 reason:v16];

  if (v30)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Delegate notified zone deleted in cloud", v33, 2u);
LABEL_24:
    }
  }

  else
  {
    v37 = *(v0 + 24);
    v31 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v38))
    {
      v39 = *(v0 + 24);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v40 = 136315138;
      v42 = [v39 zoneName];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = sub_100065658(v43, v45, &v47);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v31, v38, "Delegate failed to process didReceiveZoneDelete for zoneName: %s", v40, 0xCu);
      sub_10005D588(v41);

      goto LABEL_24;
    }
  }

  v35 = *(v0 + 8);
LABEL_19:

  return v35();
}

uint64_t sub_1000A9398(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000A93BC, v2, 0);
}

uint64_t sub_1000A93BC()
{
  v1 = *(*(v0 + 32) + 120);
  v2 = [*(v0 + 16) zoneName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = *(v0 + 24);
  v4 = _convertErrorToNSError(_:)();
  [v1 failedToDeleteZone:v2 error:v4];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000A948C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for MACloudMAAsset();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v11 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000A9664, v2, 0);
}

uint64_t sub_1000A9664()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 16) recordID];
  v4 = [v3 recordName];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  (*(*v2 + 328))(v5, v7);
  v75 = v5;
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 32);
  v12 = *(*v11 + 26);
  v13 = *(v0 + 24);
  v14 = v12();
  v16 = v15;
  sub_1000939A8(v8, v9, &qword_100128808, &unk_1000E6C50);
  sub_1000993E8(v13, v14, v16, v9, v11[14], v10);
  v18 = *(v0 + 128);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  sub_1000939A8(*(v0 + 144), v18, &qword_100128808, &unk_1000E6C50);
  v21 = *(v20 + 48);
  v22 = v21(v18, 1, v19);
  v23 = v22;
  v24 = *(v0 + 128);
  if (v23 == 1)
  {
    sub_100066C80(v24, &qword_100128808, &unk_1000E6C50);
  }

  else
  {
    v25 = *(v0 + 112);
    sub_1000AFAB8(v24, *(v0 + 104));
    if (sub_1000951B4(v25, 1))
    {
      v26 = *(v0 + 144);
      v28 = *(v0 + 104);
      v27 = *(v0 + 112);
      v30 = *(v0 + 24);
      v29 = *(v0 + 32);
      sub_100097C44();
      sub_1000A7B30(v75, v7, v30);

      sub_1000AF8BC(v28);
      sub_1000AF8BC(v27);
      sub_100066C80(v26, &qword_100128808, &unk_1000E6C50);
      v76 = 0;
      goto LABEL_15;
    }

    sub_1000AF8BC(*(v0 + 104));
  }

  v31 = *(v0 + 120);
  v32 = *(v0 + 88);
  sub_1000939A8(*(v0 + 144), v31, &qword_100128808, &unk_1000E6C50);
  v33 = v21(v31, 1, v32);
  v34 = *(v0 + 120);
  if (v33 == 1)
  {
    v35 = *(v0 + 56);
    v36 = *(v0 + 64);
    v37 = *(v0 + 48);
    sub_100066C80(v34, &qword_100128808, &unk_1000E6C50);
    (*(v36 + 56))(v37, 1, 1, v35);
LABEL_13:
    sub_100066C80(*(v0 + 48), &qword_1001287D0, &qword_1000E6C30);
LABEL_14:
    v44 = *(v0 + 144);
    v45 = *(v0 + 112);
    v46 = *(v0 + 32);
    sub_100097C44();
    (*(*v46 + 336))(v75, v7, v45);

    sub_1000AF8BC(v45);
    sub_100066C80(v44, &qword_100128808, &unk_1000E6C50);
    v76 = 1;
LABEL_15:
    v48 = *(v0 + 136);
    v47 = *(v0 + 144);
    v50 = *(v0 + 120);
    v49 = *(v0 + 128);
    v52 = *(v0 + 104);
    v51 = *(v0 + 112);
    v54 = *(v0 + 72);
    v53 = *(v0 + 80);
    v55 = *(v0 + 40);
    v56 = *(v0 + 48);

    v57 = *(v0 + 8);

    return v57(v76);
  }

  v38 = *(v0 + 88);
  v39 = *(v0 + 56);
  v40 = *(v0 + 64);
  v41 = *(v0 + 48);
  v42 = *(v0 + 120);
  sub_1000939A8(v34 + *(v38 + 72), v41, &qword_1001287D0, &qword_1000E6C30);
  sub_1000AF8BC(v42);
  v43 = *(v40 + 48);
  if (v43(v41, 1, v39) == 1)
  {
    goto LABEL_13;
  }

  v58 = *(v0 + 112);
  v59 = *(v0 + 56);
  v60 = *(v0 + 40);
  v61 = *(*(v0 + 64) + 32);
  v61(*(v0 + 80), *(v0 + 48), v59);
  sub_1000939A8(v58 + *(v38 + 72), v60, &qword_1001287D0, &qword_1000E6C30);
  v62 = v43(v60, 1, v59);
  v63 = *(v0 + 80);
  if (v62 == 1)
  {
    v64 = *(v0 + 40);
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    sub_100066C80(v64, &qword_1001287D0, &qword_1000E6C30);
    goto LABEL_14;
  }

  v61(*(v0 + 72), *(v0 + 40), *(v0 + 56));
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v72 = *(v0 + 80);
    v73 = *(v0 + 56);
    v74 = *(*(v0 + 64) + 8);
    v74(*(v0 + 72), v73);
    v74(v72, v73);
    goto LABEL_14;
  }

  v65 = *(v0 + 32);

  v66 = *(*v65 + 280);
  v77 = (v66 + *v66);
  v67 = v66[1];
  v68 = swift_task_alloc();
  *(v0 + 152) = v68;
  *v68 = v0;
  v68[1] = sub_1000A9DA8;
  v69 = *(v0 + 144);
  v70 = *(v0 + 112);
  v71 = *(v0 + 32);

  return v77(v70, v69);
}

uint64_t sub_1000A9DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1000AA00C;
  }

  else
  {
    v6 = sub_1000A9ED4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000A9ED4()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[8] + 8);
  v5(v0[9], v4);
  v5(v3, v4);
  sub_1000AF8BC(v2);
  sub_100066C80(v1, &qword_100128808, &unk_1000E6C50);
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[9];
  v12 = v0[10];
  v15 = v0[5];
  v14 = v0[6];

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1000AA00C()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[8] + 8);
  v5(v0[9], v4);
  v5(v3, v4);
  sub_1000AF8BC(v2);
  sub_100066C80(v1, &qword_100128808, &unk_1000E6C50);
  v18 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[5];
  v15 = v0[6];

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1000AA14C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for MACloudMAAsset();
  v2[38] = v4;
  v5 = *(v4 - 8);
  v2[39] = v5;
  v6 = *(v5 + 64) + 15;
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_1000AA270, v1, 0);
}

uint64_t sub_1000AA270()
{
  v48 = v0;
  v1 = [*(v0 + 280) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012A3A8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v47);
    _os_log_impl(&_mh_execute_header, v7, v8, "removing ETag for unknown item recordName: %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = (*(**(v0 + 288) + 352))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  v46 = v3;
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0x74617453636E7973;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = sub_1000C1778(8);
  *(v14 + 72) = &type metadata for Int;
  *(v14 + 80) = 0x6144636E79536B63;
  *(v14 + 88) = 0xEA00000000006574;
  type metadata accessor for MAKVStoreBase();
  *(v14 + 96) = sub_1000C4DCC();
  *(v14 + 120) = &type metadata for Double;
  *(v14 + 128) = 0x676154456B63;
  *(v14 + 136) = 0xE600000000000000;
  v15 = [objc_allocWithZone(NSNull) init];
  *(v14 + 168) = sub_100092C8C(0, &qword_1001290A0, NSNull_ptr);
  *(v14 + 144) = v15;
  sub_1000AF988(v14);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 272) = 0;
  LODWORD(inited) = [v11 updateFor:isa value:v16 attributes:0 error:v0 + 272];

  v17 = *(v0 + 272);
  if (!inited)
  {
    v28 = v17;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v29 = *(v0 + 320);
    v30 = *(v0 + 296);

    v31 = *(v0 + 8);
    v32 = 0;
    goto LABEL_10;
  }

  v18 = *(v0 + 296);
  v19 = *(**(v0 + 288) + 328);
  v20 = v17;
  v19(v46, v5);
  v21 = *(v0 + 304);
  v22 = *(v0 + 296);
  if ((*(*(v0 + 312) + 48))(v22, 1, v21) == 1)
  {
    sub_100066C80(v22, &qword_100128808, &unk_1000E6C50);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      v27 = sub_100065658(v46, v5, &v47);

      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "failed to fetch local asset for recordName: %s for unknown item error", v25, 0xCu);
      sub_10005D588(v26);
    }

    else
    {
    }

LABEL_20:
    v43 = 0;
    goto LABEL_21;
  }

  v34 = *(v0 + 320);
  sub_1000AFAB8(v22, v34);
  if (*(v34 + *(v21 + 108) + 8))
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 320);
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136315138;
      v41 = sub_100065658(v46, v5, &v47);

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to delete ckETag for recordName: %s for unknown item error", v39, 0xCu);
      sub_10005D588(v40);
    }

    else
    {
    }

    sub_1000AF8BC(v38);
    goto LABEL_20;
  }

  v42 = *(v0 + 320);

  sub_1000AF8BC(v42);
  v43 = 1;
LABEL_21:
  v44 = *(v0 + 320);
  v45 = *(v0 + 296);

  v31 = *(v0 + 8);
  v32 = v43;
LABEL_10:

  return v31(v32);
}

uint64_t sub_1000AAA2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000625FC;

  return (sub_1000AFC14)(a1);
}

uint64_t sub_1000AAAD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACloudMAAsset();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000AABDC, v1, 0);
}

uint64_t sub_1000AABDC()
{
  v38 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = [*(v0 + 16) recordID];
  v4 = [v3 recordName];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  (*(*v2 + 328))(v5, v7);
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 24);
  v9 = type metadata accessor for Logger();
  sub_100066000(v9, qword_10012A3A8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 24);
    v13 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_100065658(v5, v7, v37);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;
    v16 = (*(*v12 + 208))(v15);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = sub_100065658(v16, v18, v37);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "recordSyncedDown from cloud recordName: %s, accountIdentifier: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 48);
  v23 = *(v0 + 24);
  v24 = *(*v23 + 26);
  v25 = *(v0 + 16);
  v26 = v24();
  v28 = v27;
  sub_1000939A8(v20, v21, &qword_100128808, &unk_1000E6C50);
  sub_1000993E8(v25, v26, v28, v21, v23[14], v22);
  v29 = *(**(v0 + 24) + 280);
  v36 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 72) = v31;
  *v31 = v0;
  v31[1] = sub_1000AB098;
  v32 = *(v0 + 64);
  v33 = *(v0 + 48);
  v34 = *(v0 + 24);

  return v36(v33, v32);
}

uint64_t sub_1000AB098()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1000AB268;
  }

  else
  {
    v6 = sub_1000AB1C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000AB1C4()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_1000AF8BC(v0[6]);
  sub_100066C80(v2, &qword_100128808, &unk_1000E6C50);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000AB268()
{
  sub_1000AF8BC(v0[6]);
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[6];
  sub_100066C80(v0[8], &qword_100128808, &unk_1000E6C50);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000AB30C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000AB32C, v1, 0);
}

uint64_t sub_1000AB32C()
{
  v19 = v0;
  v1 = [*(v0 + 16) recordName];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_10012A3A8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100065658(v2, v4, v18);
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleted from cloud for %s, deleting local cache", v8, 0xCu);
    sub_10005D588(v9);
  }

  v10 = [*(*(v0 + 24) + 120) didReceiveAssetDelete:v1 assetType:0 assetHandle:0];
  if (v10)
  {
    (*(**(v0 + 24) + 320))(v2, v4);
  }

  else
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18[0] = v14;
      *v13 = 136315138;
      v15 = sub_100065658(v2, v4, v18);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Delegate failed to process didReceiveAssetDelete for recordName: %s", v13, 0xCu);
      sub_10005D588(v14);
    }

    else
    {
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000AB664(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000AB774, v2, 0);
}

uint64_t sub_1000AB774()
{
  v126 = v0;
  v1 = (*(**(v0 + 40) + 352))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 deleteFor:isa attributes:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (!v3)
  {
    v35 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v37 = *(v0 + 72);
    v36 = *(v0 + 80);
    v38 = *(v0 + 64);

    v39 = *(v0 + 8);
    goto LABEL_13;
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v7 + 16);
  v8(v5, *(v0 + 32), v6);
  v9 = (*(v7 + 88))(v5, v6);
  if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.deleted(_:))
  {
    v10 = qword_10012A3A0;
    v11 = v4;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_10012A3A8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Zone was deleted in the cloud, perform local clean up", v15, 2u);
    }

    v16 = *(v0 + 40);
    v17 = *(v0 + 24);

    v18 = *(v16 + 120);
    v19 = [v17 zoneName];
    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    v20 = *(v0 + 24);
    v21 = [v18 didReceiveZoneDelete:v19 reason:1];

    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = *(v0 + 24);
    if (v21)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v26 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v29 = [v26 zoneName];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_100065658(v30, v32, &v125);

        *(v27 + 4) = v33;
        v34 = "Delegate notified zone delete sync down %s";
LABEL_46:
        _os_log_impl(&_mh_execute_header, v23, v25, v34, v27, 0xCu);
        sub_10005D588(v28);
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v61 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v62 = [v61 zoneName];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = sub_100065658(v63, v65, &v125);

        *(v27 + 4) = v66;
        v34 = "Delegate failed to ack zone delete sync down %s";
        goto LABEL_46;
      }
    }
  }

  else if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.purged(_:))
  {
    v41 = qword_10012A3A0;
    v42 = v4;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100066000(v43, qword_10012A3A8);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Zone was purged by the user, perform local clean up", v46, 2u);
    }

    v47 = *(v0 + 40);
    v48 = *(v0 + 24);

    v49 = *(v47 + 120);
    v50 = [v48 zoneName];
    if (!v50)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = String._bridgeToObjectiveC()();
    }

    v51 = *(v0 + 24);
    v52 = [v49 didReceiveZoneDelete:v50 reason:3];

    v53 = v51;
    v23 = Logger.logObject.getter();
    v54 = *(v0 + 24);
    if (v52)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v55 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v56 = [v55 zoneName];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = sub_100065658(v57, v59, &v125);

        *(v27 + 4) = v60;
        v34 = "Delegate notified zone purge sync down %s";
        goto LABEL_46;
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v89 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v90 = [v89 zoneName];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_100065658(v91, v93, &v125);

        *(v27 + 4) = v94;
        v34 = "Delegate failed to ack zone purge sync down %s";
        goto LABEL_46;
      }
    }
  }

  else
  {
    v67 = enum case for CKDatabase.DatabaseChange.Deletion.Reason.encryptedDataReset(_:);
    v68 = qword_10012A3A0;
    v69 = v9;
    v70 = v4;
    if (v69 != v67)
    {
      if (v68 != -1)
      {
        swift_once();
      }

      v95 = *(v0 + 72);
      v96 = *(v0 + 48);
      v97 = *(v0 + 32);
      v98 = type metadata accessor for Logger();
      sub_100066000(v98, qword_10012A3A8);
      v8(v95, v97, v96);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();
      v101 = os_log_type_enabled(v99, v100);
      v102 = *(v0 + 72);
      if (v101)
      {
        v124 = v100;
        v103 = *(v0 + 56);
        v104 = *(v0 + 64);
        v105 = *(v0 + 48);
        v106 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v125 = v123;
        *v106 = 136315138;
        v8(v104, v102, v105);
        v107 = String.init<A>(describing:)();
        v109 = v108;
        v110 = *(v103 + 8);
        v110(v102, v105);
        v111 = sub_100065658(v107, v109, &v125);

        *(v106 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v99, v124, "Unhandled zone deletion reason: %s, skip local clean up", v106, 0xCu);
        sub_10005D588(v123);
      }

      else
      {
        v121 = *(v0 + 48);
        v122 = *(v0 + 56);

        v110 = *(v122 + 8);
        v110(v102, v121);
      }

      v110(*(v0 + 80), *(v0 + 48));
      goto LABEL_48;
    }

    if (v68 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100066000(v71, qword_10012A3A8);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Zone was deleted because of encryptedDataReset, skip local clean up, trying to re-upload local records", v74, 2u);
    }

    v75 = *(v0 + 40);
    v76 = *(v0 + 24);

    v77 = *(v75 + 120);
    v78 = [v76 zoneName];
    if (!v78)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = String._bridgeToObjectiveC()();
    }

    v79 = *(v0 + 24);
    v80 = [v77 didReceiveZoneDelete:v78 reason:2];

    v81 = v79;
    v23 = Logger.logObject.getter();
    v82 = *(v0 + 24);
    if (v80)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v83 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v84 = [v83 zoneName];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = sub_100065658(v85, v87, &v125);

        *(v27 + 4) = v88;
        v34 = "Delegate notified zone delete sync down with encryptedDataReset %s";
        goto LABEL_46;
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v112 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v125 = v28;
        *v27 = 136315138;
        v113 = [v112 zoneName];
        v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v115;

        v117 = sub_100065658(v114, v116, &v125);

        *(v27 + 4) = v117;
        v34 = "Delegate failed to ack zone delete sync down with encryptedDataReset %s";
        goto LABEL_46;
      }
    }
  }

LABEL_48:
  v119 = *(v0 + 72);
  v118 = *(v0 + 80);
  v120 = *(v0 + 64);

  v39 = *(v0 + 8);
LABEL_13:

  return v39();
}

uint64_t sub_1000AC378(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for MACloudMAAsset();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000AC470, v1, 0);
}

uint64_t sub_1000AC470()
{
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012A3A8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting createCKRecord %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  v13 = [v12 recordName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  (*(*v11 + 328))(v14, v16);
  v17 = v0[5];
  v18 = v0[6];
  v19 = v0[4];

  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_100066C80(v0[4], &qword_100128808, &unk_1000E6C50);
LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v25 = v0[2];
  sub_1000AFAB8(v0[4], v0[7]);
  sub_100092C8C(0, &unk_100129090, CKRecord_ptr);
  v26 = v25;
  v27._countAndFlagsBits = 0x537465737341414DLL;
  v27._object = 0xEC00000065726F74;
  v28.super.isa = CKRecord.init(recordType:recordID:)(v27, v26).super.isa;
  if ((sub_100098440(v28.super.isa) & 1) == 0)
  {
    sub_1000AF8BC(v0[7]);

    goto LABEL_7;
  }

  v20 = v28.super.isa;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v20;
    *v32 = v20;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v29, v30, "fetchLocalRecord returns %@ to upload to cloud", v31, 0xCu);
    sub_100066C80(v32, &qword_1001287F0, &qword_1000E6C40);
  }

  sub_1000AF8BC(v0[7]);
LABEL_8:
  v21 = v0[7];
  v22 = v0[4];

  v23 = v0[1];

  return v23(v20);
}

uint64_t sub_1000AC864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 72) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  return _swift_task_switch(sub_1000AC890, v5, 0);
}

uint64_t sub_1000AC890()
{
  v25 = v0;
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_10012A3A8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136315394;
    *(v0 + 16) = v7;
    *(v0 + 24) = v6;

    sub_10005F5CC(&qword_100128890, &qword_1000E6D60);
    v9 = String.init<A>(describing:)();
    v11 = sub_100065658(v9, v10, &v24);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v0 + 16) = v22;
    *(v0 + 24) = v23;

    v12 = String.init<A>(describing:)();
    v14 = sub_100065658(v12, v13, &v24);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "handleAccountChange signInUser=%s, signOutUser=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(*(v0 + 64) + 120);
  if (*(v0 + 40))
  {
    v16 = *(v0 + 32);
    v17 = String._bridgeToObjectiveC()();
    if (*(v0 + 56))
    {
LABEL_7:
      v18 = *(v0 + 48);
      v19 = String._bridgeToObjectiveC()();
      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
    if (*(v0 + 56))
    {
      goto LABEL_7;
    }
  }

  v19 = 0;
LABEL_10:
  [v15 accountChangedWithSigninUser:v17 signoutUser:v19 accountSwitch:{*(v0 + 72), v22, v23, v24}];

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000ACB34(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_1000ACB58, v1, 0);
}

uint64_t sub_1000ACB58()
{
  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012A3A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Set inManateeIdentityRecovery=%{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  (*(*v6 + 240))(v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000ACD7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007FAFC;

  return sub_1000AC378(a1);
}

uint64_t sub_1000ACE10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000A7444(a1);
}

uint64_t sub_1000ACEA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000A882C(a1);
}

uint64_t sub_1000ACF38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000A8CE8(a1);
}

uint64_t sub_1000ACFCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000B0D60;

  return sub_1000A948C(a1, a2);
}

uint64_t sub_1000AD070(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000AD104;

  return sub_1000AA14C(a1);
}

uint64_t sub_1000AD104(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1000AD20C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return (sub_1000AFC14)(a1);
}

uint64_t sub_1000AD2B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000AAAD8(a1);
}

uint64_t sub_1000AD34C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000AB30C(a1);
}

uint64_t sub_1000AD3E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100067294;

  return sub_1000AB664(a1, a2);
}

uint64_t sub_1000AD484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MACloudAssetLocalStore();
  *v8 = v4;
  v8[1] = sub_1000AD548;

  return sub_1000C2394(a1, a2, v9, a4);
}

uint64_t sub_1000AD548(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1000AD658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100067294;

  return sub_1000AC864(a1, a2, a3, a4, a5);
}

uint64_t sub_1000AD71C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000625FC;

  return sub_1000A59E8(a1, a2);
}

uint64_t sub_1000AD7C0(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000ACB34(a1);
}

uint64_t sub_1000AD854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100067294;

  return sub_1000A570C();
}

uint64_t sub_1000AD8F8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000AD970(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000AD9F0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000ADA3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000ADA68(uint64_t a1)
{
  v2 = sub_1000AF620(&qword_1001287F8, 255, type metadata accessor for FileAttributeKey);
  v3 = sub_1000AF620(&qword_100128C10, 255, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000ADB2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000ADB74(uint64_t a1)
{
  v2 = sub_1000AF620(&qword_100128C00, 255, type metadata accessor for FileProtectionType);
  v3 = sub_1000AF620(&qword_100128C08, 255, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000ADC38()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000ADC74()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000ADCC8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000ADD3C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000ADDC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000ADFF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000AF400(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10005F358(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000ADDC4(v13, a3, a4, &v12);
  v10 = v4;
  sub_10005F358(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_1000AE184(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10005F5CC(&qword_100128C18, &qword_1000E7358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005F5CC(&qword_100128C20, &qword_1000E7360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000AE2CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000AE3A4(a1, v4);
}

unint64_t sub_1000AE360(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000AE4A8(a1, v4);
}

unint64_t sub_1000AE3A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000AE4A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000B0CD8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000AF804(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_1000AE570@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100065A98(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000AF25C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1000AF7F4((*(v12 + 56) + 32 * v9), a3);
    sub_1000AEB84(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1000AE614(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005F5CC(&qword_100128C40, &qword_1000E7380);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_1000AF7F4((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_1000B0CD8(v24, &v37);
        sub_100066130(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1000AF7F4(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000AE8CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1000AF7F4(v25, v37);
      }

      else
      {
        sub_100066130(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1000AF7F4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000AEB84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1000AED34(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000AE360(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000AF0B8();
      goto LABEL_7;
    }

    sub_1000AE614(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1000AE360(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000B0CD8(a2, v22);
      return sub_1000AEFD0(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10005D588(v17);

  return sub_1000AF7F4(a1, v17);
}

_OWORD *sub_1000AEE80(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100065A98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000AF25C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000AE8CC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100065A98(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10005D588(v23);

    return sub_1000AF7F4(a1, v23);
  }

  else
  {
    sub_1000AF04C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1000AEFD0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000AF7F4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1000AF04C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000AF7F4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1000AF0B8()
{
  v1 = v0;
  sub_10005F5CC(&qword_100128C40, &qword_1000E7380);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1000B0CD8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100066130(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000AF7F4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000AF25C()
{
  v1 = v0;
  sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100066130(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000AF7F4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000AF400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000ADDC4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1000AF4B8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10005F304(a3, a4);
          return sub_1000ADFF4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000AF620(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1000AF6B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128C40, &qword_1000E7380);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000939A8(v4, v13, &qword_100128C48, &qword_1000E7388);
      result = sub_1000AE360(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000AF7F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_1000AF7F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000AF858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACloudMAAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF8BC(uint64_t a1)
{
  v2 = type metadata accessor for MACloudMAAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AF918(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100128800, &qword_1000E6C48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AF988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000939A8(v4, &v13, &qword_100129070, &qword_1000E7440);
      v5 = v13;
      v6 = v14;
      result = sub_100065A98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000AF7F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000AFAB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACloudMAAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AFB1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005F5CC(&qword_100128C30, &qword_1000E7370);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000AE2CC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000AFC14(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = *(*(sub_10005F5CC(&qword_100128808, &unk_1000E6C50) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for MACloudMAAsset();
  v2[32] = v4;
  v5 = *(v4 - 8);
  v2[33] = v5;
  v6 = *(v5 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000AFD58, v1, 0);
}

uint64_t sub_1000AFD58()
{
  v72 = v0;
  v1 = [*(v0 + 232) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012A3A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012A3A8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v71 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v71);
    _os_log_impl(&_mh_execute_header, v7, v8, "Mark quota exceeded for recordName: %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = (*(**(v0 + 240) + 352))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000E6C00;
  *(v14 + 32) = 0x74617453636E7973;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = sub_1000C1778(9);
  *(v14 + 72) = &type metadata for Int;
  *(v14 + 80) = 0x6144636E79536B63;
  *(v14 + 88) = 0xEA00000000006574;
  type metadata accessor for MAKVStoreBase();
  v15 = sub_1000C4DCC();
  *(v14 + 120) = &type metadata for Double;
  *(v14 + 96) = v15;
  sub_1000AF988(v14);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 224) = 0;
  LODWORD(inited) = [v11 updateFor:isa value:v16 attributes:0 error:v0 + 224];

  v17 = *(v0 + 224);
  if (!inited)
  {
    v27 = v17;

    _convertNSErrorToError(_:)();

LABEL_10:
    swift_willThrow();
    v29 = *(v0 + 280);
    v28 = *(v0 + 288);
    v30 = *(v0 + 272);
    v31 = *(v0 + 248);

    v32 = *(v0 + 8);
    goto LABEL_11;
  }

  v18 = *(v0 + 248);
  v19 = *(**(v0 + 240) + 328);
  v20 = v17;
  v19(v3, v5);
  v21 = *(v0 + 248);
  if ((*(*(v0 + 264) + 48))(v21, 1, *(v0 + 256)) == 1)
  {
    sub_100066C80(v21, &qword_100128808, &unk_1000E6C50);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v71 = v25;
      *v24 = 136315138;
      v26 = sub_100065658(v3, v5, &v71);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "failed to fetch local asset for recordName: %s for quota exceeded error", v24, 0xCu);
      sub_10005D588(v25);
    }

    else
    {
    }

    sub_1000B9568();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_100092A98();
    swift_allocError();
    *v58 = v53;
    *(v58 + 8) = v55;
    *(v58 + 16) = v57;
    goto LABEL_10;
  }

  v34 = *(v0 + 288);
  v35 = *(v0 + 240);

  sub_1000AFAB8(v21, v34);
  v36 = *(v35 + 120);
  v37 = sub_1000970C0();
  sub_1000B9568();
  v41 = sub_1000B6504(v38, v39, v40);

  v42 = _convertErrorToNSError(_:)();

  LODWORD(v36) = [v36 failedToUploadAsset:v37 error:v42];
  v43 = *(v0 + 288);
  if (!v36)
  {
    sub_1000AF858(v43, *(v0 + 272));
    v44 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v60 = os_log_type_enabled(v44, v59);
    v48 = *(v0 + 288);
    v47 = *(v0 + 272);
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v71 = v62;
      *v61 = 136315138;
      v63 = sub_100095824();
      v65 = v64;
      sub_1000AF8BC(v47);
      v66 = sub_100065658(v63, v65, &v71);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v44, v59, "Delegate failed to process failed to upload asset %s", v61, 0xCu);
      sub_10005D588(v62);
      goto LABEL_21;
    }

LABEL_22:

    sub_1000AF8BC(v47);
    goto LABEL_23;
  }

  sub_1000AF858(v43, *(v0 + 280));
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v0 + 280);
  v48 = *(v0 + 288);
  if (!v46)
  {
    goto LABEL_22;
  }

  v49 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  *v49 = 138412290;
  v51 = sub_1000970C0();
  sub_1000AF8BC(v47);
  *(v49 + 4) = v51;
  *v50 = v51;
  _os_log_impl(&_mh_execute_header, v44, v45, "Delegate processed failed to upload asset %@", v49, 0xCu);
  sub_100066C80(v50, &qword_1001287F0, &qword_1000E6C40);
LABEL_21:

LABEL_23:
  sub_1000AF8BC(v48);
  v68 = *(v0 + 280);
  v67 = *(v0 + 288);
  v69 = *(v0 + 272);
  v70 = *(v0 + 248);

  v32 = *(v0 + 8);
LABEL_11:

  return v32();
}

uint64_t sub_1000B0630(uint64_t a1)
{
  result = sub_1000AF620(&qword_100128898, 255, type metadata accessor for MACloudMAAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B068C(uint64_t a1, uint64_t a2)
{
  result = sub_1000AF620(&qword_1001288A0, a2, type metadata accessor for MACloudAssetLocalStore);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B071C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B07EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000B089C()
{
  sub_1000B0AC0(319, &qword_100128900, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000B0AC0(319, &qword_100128908, &type metadata for Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MASDAssetType(319);
      if (v2 <= 0x3F)
      {
        sub_1000B0A40();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MASDProfileType(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000B0A40()
{
  if (!qword_100128910)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100128910);
    }
  }
}

void sub_1000B0AC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000B0D64()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012ADD8);
  sub_100066000(v0, qword_10012ADD8);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0x617453737953414DLL, 0xEF65726F74536574);
}

uint64_t sub_1000B0E10(void *a1)
{
  v2 = swift_allocObject();
  sub_1000B0E50(a1);
  return v2;
}

uint64_t sub_1000B0E50(void *a1)
{
  swift_defaultActor_initialize();
  type metadata accessor for MAKVStoreBase();
  sub_10005F5CC(&qword_100128820, &qword_1000E6C68);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000E6BE0;
  sub_10005F5CC(&qword_100128828, &unk_1000E6C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000E6BE0;
  *(v4 + 32) = 7955819;
  *(v4 + 40) = 0xE300000000000000;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = 3;
  *(v4 + 120) = &type metadata for UInt;
  *(v4 + 88) = &type metadata for UInt;
  *(v4 + 96) = 1;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E6BE0;
  *(v5 + 32) = 7102838;
  *(v5 + 40) = 0xE300000000000000;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = 4;
  *(v5 + 120) = &type metadata for Int;
  *(v5 + 88) = &type metadata for UInt;
  *(v5 + 96) = 0;
  *(v3 + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E6BE0;
  *(v6 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 40) = v7;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 2;
  *(v6 + 120) = &type metadata for Int;
  *(v6 + 88) = &type metadata for UInt;
  *(v6 + 96) = 0;
  *(v3 + 48) = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a1;
  v12 = sub_1000C450C(0x617453737953414DLL, 0xEA00000000006574, v3, v11, v8, v10, 0, 0, 1, 1);
  *(v1 + 112) = v11;
  *(v1 + 120) = v12;
  return v1;
}

uint64_t sub_1000B102C()
{
  result = (*(*v0 + 200))();
  if (!v1)
  {
    v3 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0x7453636E79536B63;
    *(inited + 56) = 0xEB00000000657461;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v5, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v15[0] = 0;
    v7 = [v3 queryDictionaryFor:isa attributes:0 error:v15];

    v8 = v15[0];
    if (v7)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v8;

      if (*(v9 + 16) && (v11 = sub_100065A98(7102838, 0xE300000000000000), (v12 & 1) != 0))
      {
        sub_100066130(*(v9 + 56) + 32 * v11, v15);

        if (swift_dynamicCast())
        {
          return v14;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v13 = v15[0];
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1000B1294(uint64_t a1, unint64_t a2)
{
  result = (*(*v2 + 200))();
  if (!v3)
  {
    v7 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E6BE0;
    *(inited + 32) = 7955819;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0x7453636E79536B63;
    *(inited + 56) = 0xEB00000000657461;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 7102838;
    *(inited + 120) = &type metadata for Data;
    *(inited + 88) = 0xE300000000000000;
    *(inited + 96) = a1;
    *(inited + 104) = a2;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v9;
    type metadata accessor for MAKVStoreBase();
    sub_10005F304(a1, a2);
    v10 = sub_1000C4DCC();
    *(inited + 168) = &type metadata for Double;
    *(inited + 144) = v10;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_10005F5CC(&qword_100129070, &qword_1000E7440);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = 0;
    v12 = [v7 putDictionay:isa attributes:0 error:&v14];

    if (v12)
    {
      return v14;
    }

    else
    {
      v13 = v14;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000B14E8(uint64_t a1)
{
  __src = a1;
  v3 = sub_10005EB70(&__src, v18);
  v5 = v4 & 0xFFFFFFFFFFFFFFLL;
  v6 = (*(*v1 + 200))();
  if (!v2)
  {
    v7 = v6;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 32) = 7955819;
    *(inited + 16) = xmmword_1000E6BE0;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000001000F13D0;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 7102838;
    *(inited + 120) = &type metadata for Data;
    *(inited + 88) = 0xE300000000000000;
    *(inited + 96) = v3;
    *(inited + 104) = v5;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v9;
    type metadata accessor for MAKVStoreBase();
    sub_10005F304(v3, v5);
    v10 = sub_1000C4DCC();
    *(inited + 168) = &type metadata for Double;
    *(inited + 144) = v10;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_10005F5CC(&qword_100129070, &qword_1000E7440);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = 0;
    v12 = [v7 putDictionay:isa attributes:0 error:&v16];

    if (v12)
    {
      v13 = v16;
    }

    else
    {
      v14 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return sub_10005F358(v3, v5);
}

uint64_t sub_1000B1744()
{
  v3 = (*(*v1 + 200))();
  if (v2)
  {
    return v0;
  }

  v4 = v3;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 7955819;
  v6 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x80000001000F13D0;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(v6, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28[0] = 0;
  v8 = [v4 queryDictionaryFor:isa attributes:0 error:v28];

  v9 = v28[0];
  if (!v8)
  {
    v16 = v28[0];
    v0 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return v0;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v9;

  if (!*(v10 + 16) || (v12 = sub_100065A98(7102838, 0xE300000000000000), (v13 & 1) == 0))
  {

    return 0;
  }

  sub_100066130(*(v10 + 56) + 32 * v12, v28);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v0 = v26;
  v14 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v14)
    {
      sub_10005F358(v26, v27);
      sub_10005F358(v26, v27);
      return v0;
    }

    goto LABEL_18;
  }

  if (v14 != 2)
  {
    sub_10005F358(v26, v27);
    sub_10005F358(v26, v27);
    return 0;
  }

  v17 = *(v26 + 16);

  v18 = __DataStorage._bytes.getter();
  if (!v18)
  {
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_28;
  }

  v19 = v18;
  v20 = __DataStorage._offset.getter();
  if (__OFSUB__(v17, v20))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v21 = (v17 - v20 + v19);
  __DataStorage._length.getter();
  if (v21)
  {
LABEL_22:
    v25 = *v21;
    sub_10005F358(v26, v27);
    sub_10005F358(v26, v27);
    return v25;
  }

  __break(1u);
LABEL_18:
  if (v26 > v26 >> 32)
  {
    __break(1u);
    goto LABEL_25;
  }

  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_28:
    result = __DataStorage._length.getter();
    goto LABEL_29;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v26, v24))
  {
    goto LABEL_26;
  }

  v21 = (v26 - v24 + v23);
  result = __DataStorage._length.getter();
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_29:
  __break(1u);
  return result;
}

id sub_1000B1AC0()
{
  result = (*(*v0 + 200))();
  if (!v1)
  {
    v3 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000001000F13D0;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v5, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = 0;
    LODWORD(v5) = [v3 deleteFor:isa attributes:0 error:&v8];

    if (v5)
    {
      return v8;
    }

    else
    {
      v7 = v8;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

void sub_1000B1C8C()
{
  v1 = (*(*v0 + 200))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 7955819;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0x7453636E79536B63;
  *(inited + 56) = 0xEB00000000657461;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(v3, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14[0] = 0;
  LODWORD(v3) = [v1 deleteFor:isa attributes:0 error:v14];

  v5 = v14[0];
  if (v3)
  {

    v6 = v5;
  }

  else
  {
    v7 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10012ADD0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100066000(v8, qword_10012ADD8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to delete/reset SyncState, error: %@", v11, 0xCu);
      sub_100066C80(v12, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {
    }
  }
}

char *sub_1000B1FB0()
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 200))(v4);
  if (!v1)
  {
    v9 = v7;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v11 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x80000001000F13F0;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v11, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v23[0] = 0;
    v13 = [v9 queryDictionaryFor:isa attributes:0 error:v23];

    v14 = *&v23[0];
    if (v13)
    {
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v14;

      if (*(v15 + 16) && (v17 = sub_100065A98(7102838, 0xE300000000000000), (v18 & 1) != 0))
      {
        sub_100066130(*(v15 + 56) + 32 * v17, v22);

        sub_1000AF7F4(v22, v23);
        swift_dynamicCast();
        v19 = v21[1];
        v20 = v21[2];
        static String.Encoding.ascii.getter();
        v6 = String.init(data:encoding:)();
        sub_10005F358(v19, v20);
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v6 = *&v23[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v6;
}

uint64_t sub_1000B2294()
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.ascii.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  if (v9 >> 60 != 15)
  {
    v11 = (*(*v0 + 200))(result);
    if (!v1)
    {
      v12 = v11;
      sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
      inited = swift_initStackObject();
      *(inited + 32) = 7955819;
      *(inited + 16) = xmmword_1000E6BE0;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = 0xD000000000000010;
      *(inited + 56) = 0x80000001000F13F0;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 7102838;
      *(inited + 120) = &type metadata for Data;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = v7;
      *(inited + 104) = v9;
      *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 136) = v14;
      type metadata accessor for MAKVStoreBase();
      sub_10005F304(v7, v9);
      v15 = sub_1000C4DCC();
      *(inited + 168) = &type metadata for Double;
      *(inited + 144) = v15;
      sub_1000AF988(inited);
      swift_setDeallocating();
      sub_10005F5CC(&qword_100129070, &qword_1000E7440);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = 0;
      v17 = [v12 putDictionay:isa attributes:0 error:&v20];

      if (v17)
      {
        v18 = v20;
      }

      else
      {
        v19 = v20;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    return sub_10005F69C(v7, v9);
  }

  return result;
}

uint64_t sub_1000B25A4@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v32 - v7;
  result = (*(*v1 + 200))(v6);
  if (!v2)
  {
    v10 = result;
    v34 = 0;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v12 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    strcpy((inited + 48), "lastPurgedDate");
    *(inited + 63) = -18;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v12, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37[0] = 0;
    v14 = [v10 queryDictionaryFor:isa attributes:0 error:v37];

    v15 = v37[0];
    if (v14)
    {
      v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v15;

      v18 = type metadata accessor for Date();
      v19 = *(*(v18 - 8) + 56);
      v19(a1, 1, 1, v18);
      if (*(v16 + 16) && (v20 = sub_100065A98(7102838, 0xE300000000000000), (v21 & 1) != 0))
      {
        sub_100066130(*(v16 + 56) + 32 * v20, v37);

        result = swift_dynamicCast();
        if (result)
        {
          v23 = v35;
          v22 = v36;
          v24 = v36 >> 62;
          if ((v36 >> 62) <= 1)
          {
            if (!v24)
            {
              goto LABEL_23;
            }

            if (v35 <= v35 >> 32)
            {
              v33 = __DataStorage._bytes.getter();
              if (v33)
              {
                v30 = __DataStorage._offset.getter();
                if (!__OFSUB__(v23, v30))
                {
                  v29 = (v23 - v30 + v33);
                  result = __DataStorage._length.getter();
                  if (v29)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_30;
                }

LABEL_26:
                __break(1u);
              }

LABEL_29:
              result = __DataStorage._length.getter();
              __break(1u);
LABEL_30:
              __break(1u);
              return result;
            }

            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          if (v24 != 2)
          {
LABEL_23:
            Date.init(timeIntervalSinceReferenceDate:)();
            sub_10005F358(v23, v22);
            sub_100066C80(a1, &qword_1001287D0, &qword_1000E6C30);
            v19(v8, 0, 1, v18);
            return sub_1000B3024(v8, a1);
          }

          v33 = *(v35 + 16);
          v26 = __DataStorage._bytes.getter();
          if (v26)
          {
            v27 = v26;
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v33, v28))
            {
              goto LABEL_25;
            }

            v29 = (v33 - v28 + v27);
            __DataStorage._length.getter();
            if (v29)
            {
LABEL_22:
              v31 = *v29;
              goto LABEL_23;
            }
          }

          else
          {
            __DataStorage._length.getter();
          }

          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    else
    {
      v25 = v37[0];
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000B29C0()
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v22 = v7;
  v8 = sub_1000B2CE0(&v22, v23);
  v10 = v9;
  v11 = (*(*v0 + 200))();
  if (v1)
  {
    (*(v3 + 8))(v6, v2);
    return sub_10005F358(v8, v10);
  }

  v12 = v11;
  v21 = v2;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 32) = 7955819;
  *(inited + 16) = xmmword_1000E6C00;
  *(inited + 40) = 0xE300000000000000;
  strcpy((inited + 48), "lastPurgedDate");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 7102838;
  *(inited + 120) = &type metadata for Data;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = v8;
  *(inited + 104) = v10;
  sub_10005F304(v8, v10);
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = 0;
  v15 = [v12 putDictionay:isa attributes:0 error:&v22];

  if (v15)
  {
    v16 = *(v3 + 8);
    v17 = v22;
    v16(v6, v21);
    return sub_10005F358(v8, v10);
  }

  v19 = v22;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10005F358(v8, v10);
  return (*(v3 + 8))(v6, v21);
}

uint64_t sub_1000B2CE0(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10005E340(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10005EB70(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10005EC28(v3, v4);
    }

    else
    {
      v6 = sub_10005ECA4(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10005D588(v8);
  return v6;
}

id sub_1000B2D9C()
{
  result = (*(*v0 + 200))();
  if (!v1)
  {
    v3 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 7955819;
    v5 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE300000000000000;
    strcpy((inited + 48), "lastPurgedDate");
    *(inited + 63) = -18;
    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(v5, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = 0;
    LODWORD(v5) = [v3 deleteFor:isa attributes:0 error:&v8];

    if (v5)
    {
      return v8;
    }

    else
    {
      v7 = v8;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000B2FB4()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000B2FE4()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B3024(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B30B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B3128()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012AE78);
  sub_100066000(v0, qword_10012AE78);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000012, 0x80000001000E7590);
}

id MACloudSyncManager.__allocating_init(storage:delegate:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1000BF9E4(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

id MACloudSyncManager.init(storage:delegate:)(void *a1, uint64_t a2)
{
  v3 = sub_1000BF9E4(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

unint64_t variable initialization expression of MACloudSyncManager.assetsNotToBeSynced()
{
  sub_10005F5CC(&qword_100128DD0, &qword_1000E7400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E6C00;
  *(inited + 32) = 100;
  v1 = sub_1000BF6D4(&off_100117BE0);
  sub_10005F5CC(&qword_100128DD8, &qword_1000E7408);
  swift_arrayDestroy();
  *(inited + 40) = v1;
  *(inited + 48) = 125;
  v2 = sub_1000BF6D4(&off_100117C30);
  sub_100066C80(&unk_100117C50, &qword_100128DD8, &qword_1000E7408);
  *(inited + 56) = v2;
  v3 = sub_1000BF7D8(inited);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100128DE0, &qword_1000E7410);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_1000B33CC()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore);
  v3 = *(v1 + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase);
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000B3480;

  return sub_1000A593C(v3);
}

uint64_t sub_1000B3480()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_1000B357C, 0, 0);
}

uint64_t sub_1000B357C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1000B3624;
  v3 = v0[3];

  return sub_1000D21B0(v3);
}

uint64_t sub_1000B3624()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v10 = *v0;

  v4 = *(*v3 + 240);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *v6 = v10;
  v6[1] = sub_1000B37F8;
  v7 = *(v1 + 24);

  return (v9)(0, 0);
}

uint64_t sub_1000B37F8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000B3A60(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000B3AD8, 0, 0);
}

uint64_t sub_1000B3AD8()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore);
  v3 = OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase;
  v0[4] = OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase;
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1000B3B8C;

  return sub_1000A593C(v4);
}

uint64_t sub_1000B3B8C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_1000B3C88, 0, 0);
}

uint64_t sub_1000B3C88()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore);
  v3 = *(v1 + v0[4]);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1000B3D34;

  return sub_1000D21B0(v3);
}

uint64_t sub_1000B3D34()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_1000B3E30, 0, 0);
}

uint64_t sub_1000B3E30()
{
  v1 = *(**(v0[2] + v0[4]) + 240);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1000B3F54;

  return (v5)(0, 0);
}

uint64_t sub_1000B3F54()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000B40AC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 24);

    (*(v4 + 16))(v4, 0);
    _Block_release(*(v3 + 24));
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1000B40AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v3);

  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000B416C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000B4264;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD00000000000001BLL, 0x80000001000F14F0, sub_1000BFD34, v2, &type metadata for Bool);
}

uint64_t sub_1000B4264()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1000B439C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1000B4380;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B439C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(0);
}

uint64_t sub_1000B4404(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a2 + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase);
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  (*(*v9 + 408))(sub_1000C12C8, v11);
}

uint64_t sub_1000B46FC(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000B4774, 0, 0);
}

uint64_t sub_1000B4774()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000B486C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD00000000000001BLL, 0x80000001000F14F0, sub_1000C1494, v2, &type metadata for Bool);
}

uint64_t sub_1000B486C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1000B4A08;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1000B4988;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B4988()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 56), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B4A08()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = _convertErrorToNSError(_:)();

  (*(v3 + 16))(v3, 0, v4);

  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t MACloudSyncManager.saveUserOptions(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000B4AD8, 0, 0);
}

uint64_t sub_1000B4AD8()
{
  v1 = *(*(v0[3] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 112);
  v0[4] = v1;
  v2 = (*v1 + 128) & 0xFFFFFFFFFFFFLL | 0x84AE000000000000;
  v0[5] = *(*v1 + 128);
  v0[6] = v2;

  return _swift_task_switch(sub_1000B4B78, v1, 0);
}

uint64_t sub_1000B4B78()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 40))(*(v0 + 16));
  *(v0 + 56) = 0;
  v3 = *(v0 + 32);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000B4C3C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1000B4E24(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a3;

  return _swift_task_switch(sub_1000B4EA0, 0, 0);
}

uint64_t sub_1000B4EA0()
{
  v1 = *(*(v0[3] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 112);
  v0[5] = v1;
  v2 = (*v1 + 128) & 0xFFFFFFFFFFFFLL | 0x84AE000000000000;
  v0[6] = *(*v1 + 128);
  v0[7] = v2;

  return _swift_task_switch(sub_1000B4F40, v1, 0);
}

uint64_t sub_1000B4F40()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 16));
  *(v0 + 64) = 0;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);

  (*(v4 + 16))(v4, 0);
  _Block_release(*(v0 + 32));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000B5024()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  v5 = _convertErrorToNSError(_:)();

  (*(v3 + 16))(v3, v5);

  _Block_release(*(v0 + 32));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000B50EC()
{
  v1 = *(*(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 112);
  v0[3] = v1;
  v2 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xD582000000000000;
  v0[4] = *(*v1 + 136);
  v0[5] = v2;

  return _swift_task_switch(sub_1000B518C, v1, 0);
}

uint64_t sub_1000B518C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = (*(v0 + 32))();
  *(v0 + 48) = 0;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 24);

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1000B525C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1000B5434(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000B54AC, 0, 0);
}

uint64_t sub_1000B54AC()
{
  v1 = *(*(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 112);
  v0[4] = v1;
  v2 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xD582000000000000;
  v0[5] = *(*v1 + 136);
  v0[6] = v2;

  return _swift_task_switch(sub_1000B554C, v1, 0);
}

uint64_t sub_1000B554C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = (*(v0 + 40))();
  *(v0 + 56) = 0;
  v4 = v3;
  v6 = v5;
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  (*(v8 + 16))(v8, v10, 0);
  _Block_release(*(v0 + 24));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000B5648()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);

  v5 = _convertErrorToNSError(_:)();

  (*(v3 + 16))(v3, 0, v5);

  _Block_release(*(v0 + 24));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t MACloudSyncManager.ReinitiateSyncEngineIfNecessary(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 152) = a1;
  v3 = *(*(sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v4 = type metadata accessor for Date();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1000B5808, 0, 0);
}

uint64_t sub_1000B5808()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_sysStore);
  v0[9] = v1;
  v2 = (*v1 + 176) & 0xFFFFFFFFFFFFLL | 0xF1F2000000000000;
  v0[10] = *(*v1 + 176);
  v0[11] = v2;
  return _swift_task_switch(sub_1000B5850, v1, 0);
}

uint64_t sub_1000B5850()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  (*(v0 + 80))();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1000B58E4, 0, 0);
}

uint64_t sub_1000B58E4()
{
  v51 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100066C80(v3, &qword_1001287D0, &qword_1000E6C30);
LABEL_3:
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    v8 = *(v0 + 8);

    return v8();
  }

  (*(v2 + 32))(*(v0 + 64), v3, v1);
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = type metadata accessor for Logger();
  sub_100066000(v14, qword_10012AE78);
  (*(v12 + 16))(v11, v10, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 56);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);
  if (v17)
  {
    v48 = *(v0 + 152);
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v21 = 136315394;
    sub_1000BFEC0(&qword_100128E08, &type metadata accessor for Date);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v45 = v16;
    v25 = *(v19 + 8);
    v25(v18, v20);
    v26 = sub_100065658(v22, v24, &v50);

    *(v21 + 4) = v26;
    *(v21 + 12) = 1024;
    *(v21 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v15, v45, "lastPurgedMark = %s, flag checkTimeStamp = %{BOOL}d", v21, 0x12u);
    sub_10005D588(v46);
  }

  else
  {

    v25 = *(v19 + 8);
    v25(v18, v20);
  }

  *(v0 + 104) = v25;
  if (*(v0 + 152) == 1)
  {
    v27 = *(v0 + 64);
    v29 = *(v0 + 40);
    v28 = *(v0 + 48);
    v30 = *(v0 + 32);
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v32 = v31;
    v25(v28, v30);
    Date.timeIntervalSinceReferenceDate.getter();
    v34 = v32 - v33;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "purged marked %f secs before", v37, 0xCu);
    }

    if (v34 < 3600.0)
    {
      v38 = *(v0 + 40) + 8;
      (*(v0 + 104))(*(v0 + 64), *(v0 + 32));
      goto LABEL_3;
    }
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "ReinitiateSyncEngineIfNecessary called.", v41, 2u);
  }

  v42 = *(v0 + 16);

  v47 = (**(v42 + OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase) + 272);
  v49 = (*v47 + **v47);
  v43 = (*v47)[1];
  v44 = swift_task_alloc();
  *(v0 + 112) = v44;
  *v44 = v0;
  v44[1] = sub_1000B5E68;

  return v49();
}

uint64_t sub_1000B5E68()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1000B6198;
    v5 = 0;
  }

  else
  {
    v5 = v2[9];
    v6 = (*v5 + 192) & 0xFFFFFFFFFFFFLL | 0xA5F3000000000000;
    v2[16] = *(*v5 + 192);
    v2[17] = v6;
    v4 = sub_1000B5FA0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000B5FA0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  (*(v0 + 128))();
  *(v0 + 144) = v2;
  if (v2)
  {
    v4 = sub_1000B6274;
  }

  else
  {
    v4 = sub_1000B6030;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B6030()
{
  v1 = *(v0 + 40) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 32));
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000B60D8()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  sub_1000BFD3C();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000B6198()
{
  v1 = *(v0 + 40) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 32));
  v2 = *(v0 + 120);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  sub_1000BFD3C();
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000B6274()
{
  v1 = *(v0 + 40) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 32));
  v2 = *(v0 + 144);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  sub_1000BFD3C();
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

id MACloudSyncManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MACloudSyncManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MACloudSyncManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000B6504(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 28)
  {
    v5 = -20602;
  }

  else
  {
    v5 = a1 - 22000;
  }

  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  v8 = objc_allocWithZone(NSError);
  v9 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithDomain:v9 code:v5 userInfo:isa];

  return v11;
}

id sub_1000B6674(char a1, uint64_t a2, void *a3)
{
  v6 = MACryptoError.ErrorCode.rawValue.getter(a1);
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  v9 = MACryptoError.description.getter(a1, a2, a3);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  v11 = objc_allocWithZone(NSError);
  v12 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v11 initWithDomain:v12 code:v6 userInfo:isa];

  return v14;
}

uint64_t sub_1000B6800()
{
  if (qword_10012AE70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012AE78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting to delete all cloud sync states", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1000B695C;

  return sub_1000A570C();
}

uint64_t sub_1000B695C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1000B6C44;
  }

  else
  {
    v3 = sub_1000B6A70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B6A70()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000B6B10;

  return sub_1000D1F80();
}

uint64_t sub_1000B6B10()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000B6CC8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000B6C44()
{
  v1 = *(v0 + 32);
  sub_1000BFD3C();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B6CC8()
{
  v1 = *(v0 + 48);
  sub_1000BFD3C();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B6EC0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B6F68;

  return MACloudSyncManager.resetCloudSyncState()();
}

uint64_t sub_1000B6F68()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000B710C()
{
  v1 = *(*(v0 + 304) + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_1000B71AC;

  return sub_1000A5C78();
}

uint64_t sub_1000B71AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[24] = v5;
  v7[25] = a1;
  v7[26] = a2;
  v7[27] = a3;
  v7[28] = a4;
  v7[29] = v4;
  v8 = v6[39];
  v11 = *v5;
  v7[40] = a4;
  v7[41] = v4;

  if (v4)
  {
    v9 = sub_1000B7790;
  }

  else
  {
    v9 = sub_1000B72CC;
  }

  return _swift_task_switch(v9, 0, 0);
}

unint64_t sub_1000B72CC()
{
  v1 = *(v0 + 320);
  v51 = *(v1 + 16);
  if (v51)
  {
    result = sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = (v1 + 64);
    v50 = v1;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_34;
      }

      v52 = v4;
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 4);
      v10 = *(v5 - 3);
      *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 56) = v11;
      *(v0 + 88) = &type metadata for String;
      *(v0 + 64) = v9;
      *(v0 + 72) = v10;
      *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 104) = v12;
      *(v0 + 136) = &type metadata for Int;
      *(v0 + 112) = v8;
      v13 = static _DictionaryStorage.allocate(capacity:)();

      swift_bridgeObjectRetain_n();
      sub_1000939A8(v0 + 48, v0 + 144, &qword_100129070, &qword_1000E7440);
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      result = sub_100065A98(v14, v15);
      if (v16)
      {
        goto LABEL_32;
      }

      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v13[6] + 16 * result);
      *v17 = v14;
      v17[1] = v15;
      result = sub_1000AF7F4((v0 + 160), (v13[7] + 32 * result));
      v18 = v13[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v13[2] = v20;
      sub_1000939A8(v0 + 96, v0 + 144, &qword_100129070, &qword_1000E7440);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      result = sub_100065A98(v21, v22);
      if (v23)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v13[6] + 16 * result);
      *v24 = v21;
      v24[1] = v22;
      result = sub_1000AF7F4((v0 + 160), (v13[7] + 32 * result));
      v25 = v13[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v13[2] = v26;

      sub_10005F5CC(&qword_100129070, &qword_1000E7440);
      swift_arrayDestroy();

      if (v6)
      {
        break;
      }

LABEL_19:
      v4 = v52;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000BF34C(0, v52[2] + 1, 1, v52);
        v4 = result;
      }

      v44 = v4[2];
      v43 = v4[3];
      if (v44 >= v43 >> 1)
      {
        result = sub_1000BF34C((v43 > 1), v44 + 1, 1, v4);
        v4 = result;
      }

      ++v3;
      v4[2] = v44 + 1;
      v4[v44 + 4] = v13;
      v5 += 5;
      v1 = v50;
      if (v51 == v3)
      {
        v45 = *(v0 + 320);
        goto LABEL_26;
      }
    }

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    *(v0 + 264) = &type metadata for String;
    *(v0 + 240) = v7;
    *(v0 + 248) = v6;
    sub_1000AF7F4((v0 + 240), (v0 + 272));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100065A98(v27, v29);
    v32 = v13[2];
    v33 = (v31 & 1) == 0;
    v19 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v19)
    {
      goto LABEL_35;
    }

    v35 = v31;
    if (v13[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = result;
        sub_1000AF25C();
        result = v39;
        if (v35)
        {
LABEL_15:
          v37 = result;

          v38 = (v13[7] + 32 * v37);
          sub_10005D588(v38);
          sub_1000AF7F4((v0 + 272), v38);
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1000AE8CC(v34, isUniquelyReferenced_nonNull_native);
      result = sub_100065A98(v27, v29);
      if ((v35 & 1) != (v36 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    if (v35)
    {
      goto LABEL_15;
    }

LABEL_17:
    v13[(result >> 6) + 8] |= 1 << result;
    v40 = (v13[6] + 16 * result);
    *v40 = v27;
    v40[1] = v29;
    result = sub_1000AF7F4((v0 + 272), (v13[7] + 32 * result));
    v41 = v13[2];
    v19 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v19)
    {
      goto LABEL_36;
    }

    v13[2] = v42;
    goto LABEL_19;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_26:

  v46 = *(v0 + 200);
  v47 = *(v0 + 208);
  v48 = *(v0 + 216);
  v49 = *(v0 + 8);

  return v49(v46, v47, v48, v4);
}

uint64_t sub_1000B7790()
{
  v1 = *(v0 + 328);
  sub_1000BFD3C();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B7988(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B7A30;

  return MACloudSyncManager.queryCloudAssetsSize()();
}

uint64_t sub_1000B7A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v7 = *(*v4 + 32);
  v8 = *(*v4 + 16);
  v9 = *v4;

  v10 = *(v6 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, 0, 0, v11);

    _Block_release(v10);
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();
    sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v10)[2](v10, v12, a3, isa, 0);

    _Block_release(v10);
  }

  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_1000B7C5C()
{
  v1 = *(*(v0 + 304) + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_1000B7CFC;

  return sub_1000D24EC();
}

uint64_t sub_1000B7CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[24] = v5;
  v7[25] = a1;
  v7[26] = a2;
  v7[27] = a3;
  v7[28] = a4;
  v7[29] = v4;
  v8 = v6[39];
  v11 = *v5;
  v7[40] = a4;
  v7[41] = v4;

  if (v4)
  {
    v9 = sub_1000C13D8;
  }

  else
  {
    v9 = sub_1000B7E1C;
  }

  return _swift_task_switch(v9, 0, 0);
}

unint64_t sub_1000B7E1C()
{
  v1 = *(v0 + 320);
  v51 = *(v1 + 16);
  if (v51)
  {
    result = sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = (v1 + 64);
    v50 = v1;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_34;
      }

      v52 = v4;
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 4);
      v10 = *(v5 - 3);
      *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 56) = v11;
      *(v0 + 88) = &type metadata for String;
      *(v0 + 64) = v9;
      *(v0 + 72) = v10;
      *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 104) = v12;
      *(v0 + 136) = &type metadata for Int;
      *(v0 + 112) = v8;
      v13 = static _DictionaryStorage.allocate(capacity:)();

      swift_bridgeObjectRetain_n();
      sub_1000939A8(v0 + 48, v0 + 144, &qword_100129070, &qword_1000E7440);
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      result = sub_100065A98(v14, v15);
      if (v16)
      {
        goto LABEL_32;
      }

      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v13[6] + 16 * result);
      *v17 = v14;
      v17[1] = v15;
      result = sub_1000AF7F4((v0 + 160), (v13[7] + 32 * result));
      v18 = v13[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v13[2] = v20;
      sub_1000939A8(v0 + 96, v0 + 144, &qword_100129070, &qword_1000E7440);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      result = sub_100065A98(v21, v22);
      if (v23)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v13[6] + 16 * result);
      *v24 = v21;
      v24[1] = v22;
      result = sub_1000AF7F4((v0 + 160), (v13[7] + 32 * result));
      v25 = v13[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_33;
      }

      v13[2] = v26;

      sub_10005F5CC(&qword_100129070, &qword_1000E7440);
      swift_arrayDestroy();

      if (v6)
      {
        break;
      }

LABEL_19:
      v4 = v52;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000BF34C(0, v52[2] + 1, 1, v52);
        v4 = result;
      }

      v44 = v4[2];
      v43 = v4[3];
      if (v44 >= v43 >> 1)
      {
        result = sub_1000BF34C((v43 > 1), v44 + 1, 1, v4);
        v4 = result;
      }

      ++v3;
      v4[2] = v44 + 1;
      v4[v44 + 4] = v13;
      v5 += 5;
      v1 = v50;
      if (v51 == v3)
      {
        v45 = *(v0 + 320);
        goto LABEL_26;
      }
    }

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    *(v0 + 264) = &type metadata for String;
    *(v0 + 240) = v7;
    *(v0 + 248) = v6;
    sub_1000AF7F4((v0 + 240), (v0 + 272));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100065A98(v27, v29);
    v32 = v13[2];
    v33 = (v31 & 1) == 0;
    v19 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v19)
    {
      goto LABEL_35;
    }

    v35 = v31;
    if (v13[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = result;
        sub_1000AF25C();
        result = v39;
        if (v35)
        {
LABEL_15:
          v37 = result;

          v38 = (v13[7] + 32 * v37);
          sub_10005D588(v38);
          sub_1000AF7F4((v0 + 272), v38);
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1000AE8CC(v34, isUniquelyReferenced_nonNull_native);
      result = sub_100065A98(v27, v29);
      if ((v35 & 1) != (v36 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    if (v35)
    {
      goto LABEL_15;
    }

LABEL_17:
    v13[(result >> 6) + 8] |= 1 << result;
    v40 = (v13[6] + 16 * result);
    *v40 = v27;
    v40[1] = v29;
    result = sub_1000AF7F4((v0 + 272), (v13[7] + 32 * result));
    v41 = v13[2];
    v19 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v19)
    {
      goto LABEL_36;
    }

    v13[2] = v42;
    goto LABEL_19;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_26:

  v46 = *(v0 + 200);
  v47 = *(v0 + 208);
  v48 = *(v0 + 216);
  v49 = *(v0 + 8);

  return v49(v46, v47, v48, v4);
}

uint64_t sub_1000B8454(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000C13D0;

  return MACloudSyncManager.queryCloudKVDataSize()();
}

uint64_t MACloudSyncManager.queryCloudAsset(withRecordName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for MACloudMAAsset() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8590, 0, 0);
}

uint64_t sub_1000B8590()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1000B863C;
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_1000A7110(v3, v4, v5);
}

uint64_t sub_1000B863C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000B87E0;
  }

  else
  {
    v3 = sub_1000B8750;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B8750()
{
  v1 = *(v0 + 40);
  v2 = sub_1000970C0();
  sub_1000BFE60(v1, type metadata accessor for MACloudMAAsset);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000B87E0()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_1000BFD3C();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B8A00(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = *(*(type metadata accessor for MACloudMAAsset() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);
  v3[5] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[6] = v7;
  v8 = a3;

  return _swift_task_switch(sub_1000B8AC4, 0, 0);
}

uint64_t sub_1000B8AC4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000B8B70;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];

  return sub_1000A7110(v5, v3, v4);
}

uint64_t sub_1000B8B70()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1000B8D5C;
  }

  else
  {
    v4 = sub_1000B8CA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B8CA0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1000970C0();

  sub_1000BFE60(v2, type metadata accessor for MACloudMAAsset);
  (v1)[2](v1, v4, 0);
  _Block_release(v1);

  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000B8D5C()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1000BFD3C();
  swift_willThrow();

  v5 = _convertErrorToNSError(_:)();
  (v2)[2](v2, 0, v5);

  _Block_release(v2);
  v6 = v0[3];

  v7 = v0[1];

  return v7();
}

uint64_t MACloudSyncManager.queryCloudKVData(withRecordName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(type metadata accessor for MACloudKVSRecord() - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8EEC, 0, 0);
}

uint64_t sub_1000B8EEC()
{
  v1 = v0;
  v2 = *(v0[11] + OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore);
  v3 = swift_task_alloc();
  v1[13] = v3;
  *v3 = v1;
  v3[1] = sub_1000B8FCC;
  v4 = v1[12];
  v5 = v1[9];
  v6 = v1[10];

  return sub_1000D38EC(v4, v5, v6);
}

uint64_t sub_1000B8FCC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1000B94A8;
  }

  else
  {
    v3 = sub_1000B910C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B910C()
{
  v1 = v0[12];
  v2 = *(v1 + 120);
  if (v2 >> 60 == 15)
  {
LABEL_5:
    if (qword_10012AE70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100066000(v19, qword_10012AE78);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Invalid serialized KVSRecord stored in local store", v22, 2u);
    }

    v23 = v0[12];

    sub_100092A98();
    swift_allocError();
    *v24 = 29;
    *(v24 + 8) = 0xD000000000000025;
    *(v24 + 16) = 0x80000001000F1540;
    swift_willThrow();
    goto LABEL_11;
  }

  v3 = *(v1 + 112);
  v4 = objc_opt_self();
  sub_10005F304(v3, v2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[6] = 0;
  v6 = [v4 propertyListWithData:isa options:0 format:0 error:v0 + 6];

  v7 = v0[6];
  if (v6)
  {
    v8 = v7;
    _bridgeAnyObjectToAny(_:)();
    sub_10005F69C(v3, v2);
    swift_unknownObjectRelease();
    sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
    if (swift_dynamicCast())
    {
      v9 = v0[12];
      v10 = v0[8];
      v12 = *v9;
      v11 = v9[1];
      v13 = v9[4];
      v15 = v9[7];
      v14 = v9[8];
      v17 = v9[9];
      v16 = v9[10];
      v28 = v9[11];
      v29 = v0[7];

      sub_1000BFE60(v9, type metadata accessor for MACloudKVSRecord);

      *v10 = v12;
      v10[1] = v11;
      v10[2] = v13;
      v10[3] = v15;
      v10[4] = v14;
      v10[5] = v17;
      v10[6] = v16;
      v10[7] = v28;
      v10[8] = v29;
      v18 = v0[1];
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v23 = v0[12];
  v25 = v7;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10005F69C(v3, v2);
LABEL_11:
  sub_1000BFE60(v23, type metadata accessor for MACloudKVSRecord);
  v26 = v0[12];
  sub_1000BFD3C();
  swift_willThrow();

  v18 = v0[1];
LABEL_12:

  return v18();
}