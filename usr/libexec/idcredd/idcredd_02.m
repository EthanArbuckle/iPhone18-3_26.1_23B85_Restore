uint64_t sub_10003B254()
{
  v206 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 608);
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 432);
  v6 = *(v0 + 440);
  sub_10004353C(v3);
  defaultLogger()();
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  v9(v4, v3, v5);
  v10 = Logger.logObject.getter();
  LODWORD(v202) = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v10, v202);
  v12 = *(v0 + 944);
  v13 = *(v0 + 608);
  v14 = *(v0 + 496);
  v203 = *(v0 + 504);
  v15 = *(v0 + 456);
  v17 = *(v0 + 432);
  v16 = *(v0 + 440);
  if (v11)
  {
    v200 = v14;
    v18 = swift_slowAlloc();
    v201 = v7;
    v19 = swift_slowAlloc();
    v205 = v19;
    *v18 = 136315138;
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    v198 = v13;
    v199 = v12;
    v20 = v8;
    v21 = Error.localizedDescription.getter();
    v23 = v22;
    v204 = *(v16 + 8);
    v204(v15, v17);
    v24 = v21;
    v8 = v20;
    v25 = sub_10010150C(v24, v23, &v205);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v10, v202, "Failed to verify trust with Apple issued roots: %s", v18, 0xCu);
    sub_100005090(v19);

    v199(v198, v200);
  }

  else
  {

    v204 = *(v16 + 8);
    v204(v15, v17);
    v12(v13, v14);
  }

  v26 = *(v0 + 648);
  v27 = *(v0 + 640);
  v28 = *(v0 + 632);
  v29 = *(v0 + 464);
  DIPError.code.getter();
  v30 = (*(v27 + 88))(v26, v28);
  v31 = *(v0 + 960);
  if (v30 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:) && v30 != enum case for DIPError.Code.idcsExpiredReaderAuthCertificate(_:) && v30 != enum case for DIPError.Code.idcsUnknownDocumentType(_:) && v30 != enum case for DIPError.Code.idcsNotYetValidReaderAuthCertificate(_:))
  {
    v32 = *(v0 + 648);
    v33 = *(v0 + 640);
    v34 = *(v0 + 632);
    v35 = *(v0 + 592);
    v36 = *(v0 + 440) + 8;
    v204(*(v0 + 464), *(v0 + 432));

    (*(v33 + 8))(v32, v34);
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Verifying trust with non Apple issued roots", v39, 2u);
    }

    v40 = *(v0 + 944);
    v41 = *(v0 + 988);
    v42 = *(v0 + 592);
    v43 = *(v0 + 496);
    v44 = *(v0 + 504);
    v45 = *(v0 + 288);

    v40(v42, v43);
    v46 = swift_task_alloc();
    *(v0 + 968) = v46;
    *v46 = v0;
    v46[1] = sub_10003C608;
    v47 = *(v0 + 936);
    v48 = *(v0 + 920);
    v49 = *(v0 + 912);
    v50 = *(v0 + 904);
    v51 = *(v0 + 896);

    return sub_1000421D0(v47, v49, v48, v50, v51, v45 + v41);
  }

  LODWORD(v201) = enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:);
  v53 = *(v0 + 464);
  v54 = *(v0 + 432);
  v55 = *(v0 + 440);
  v56 = sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  v8(v57, v53, v54);
  swift_willThrow();

  v204(v53, v54);
  v204 = *(v0 + 928);
  v58 = *(v0 + 920);
  v59 = *(v0 + 904);
  v60 = *(v0 + 896);
  v61 = *(v0 + 840);
  v62 = *(v0 + 656);
  v63 = *(v0 + 640);
  v64 = *(v0 + 632);
  v65 = *(v0 + 432);

  LODWORD(v203) = enum case for DIPError.Code.internalError(_:);
  (*(v63 + 104))(v62);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v202 = v56;
  v66 = swift_allocError();
  HIBYTE(v168[1]) = -18;
  strcpy(v168, "authenticate()");
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v67 = [objc_opt_self() standardUserDefaults];
  v68 = String._bridgeToObjectiveC()();
  LOBYTE(v58) = [v67 BOOLForKey:v68];

  if (v58)
  {
    v69 = *(v0 + 584);
    v70 = *(v0 + 496);
    v71 = *(v0 + 504);
    v72 = *(v0 + 432);
    v73 = *(v0 + 440);
    v74 = *(v0 + 280);
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v71 + 8))(v69, v70);
    (*(v73 + 56))(v74, 1, 1, v72);
LABEL_33:
    v147 = *(v0 + 832);
    v148 = *(v0 + 824);
    v149 = *(v0 + 816);
    v150 = *(v0 + 808);
    v151 = *(v0 + 792);
    v152 = *(v0 + 768);
    v153 = *(v0 + 744);
    v154 = *(v0 + 736);
    v155 = *(v0 + 728);
    v169 = *(v0 + 704);
    v170 = *(v0 + 696);
    v171 = *(v0 + 680);
    v172 = *(v0 + 672);
    v173 = *(v0 + 656);
    v174 = *(v0 + 648);
    v175 = *(v0 + 624);
    v176 = *(v0 + 616);
    v177 = *(v0 + 608);
    v178 = *(v0 + 600);
    v179 = *(v0 + 592);
    v180 = *(v0 + 584);
    v181 = *(v0 + 576);
    v182 = *(v0 + 568);
    v183 = *(v0 + 560);
    v184 = *(v0 + 552);
    v185 = *(v0 + 544);
    v186 = *(v0 + 536);
    v187 = *(v0 + 528);
    v188 = *(v0 + 520);
    v189 = *(v0 + 512);
    v190 = *(v0 + 488);
    v191 = *(v0 + 464);
    v192 = *(v0 + 456);
    v193 = *(v0 + 448);
    v194 = *(v0 + 424);
    v195 = *(v0 + 416);
    v196 = *(v0 + 392);
    v197 = *(v0 + 384);
    v198 = *(v0 + 376);
    v199 = *(v0 + 368);
    v200 = *(v0 + 360);
    v201 = *(v0 + 352);
    v202 = *(v0 + 328);
    v203 = *(v0 + 320);
    v204 = *(v0 + 312);
    v156 = *(v0 + 272);

    *(v156 + 89) = 0u;
    v156[4] = 0u;
    v156[5] = 0u;
    v156[2] = 0u;
    v156[3] = 0u;
    *v156 = 0u;
    v156[1] = 0u;
    v142 = *(v0 + 8);
    goto LABEL_34;
  }

  v75 = *(v0 + 640);
  v76 = *(v0 + 632);
  v77 = *(v0 + 328);
  swift_getErrorValue();
  v79 = *(v0 + 112);
  v78 = *(v0 + 120);
  v80 = *(v0 + 128);
  Error.dipErrorCode.getter();
  v81 = (*(v75 + 48))(v77, 1, v76);
  v200 = "nauthenticated reader";
  if (v81 == 1)
  {
    goto LABEL_16;
  }

  v87 = *(v0 + 640);
  v88 = *(v0 + 632);
  v89 = *(v0 + 320);
  sub_100046360(*(v0 + 328), v89, &qword_100201488, &qword_1001ACFD0);
  v90 = (*(v87 + 88))(v89, v88);
  if (v90 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    v91 = *(v0 + 512);
    defaultLogger()();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Encountered invalid reader request", v94, 2u);
    }

    v95 = *(v0 + 512);
  }

  else if (v90 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    v96 = *(v0 + 520);
    defaultLogger()();
    v92 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v92, v97, "Encountered missing or malformed auth certificates", v98, 2u);
    }

    v95 = *(v0 + 520);
  }

  else
  {
    if (v90 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v90 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
    {
      v160 = *(v0 + 536);
      sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
      defaultLogger()();
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.error.getter();
      v163 = os_log_type_enabled(v161, v162);
      v164 = *(v0 + 536);
      v165 = *(v0 + 496);
      v166 = *(v0 + 504);
      if (v163)
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&_mh_execute_header, v161, v162, "Encountered invalid signature during reader auth", v167, 2u);
      }

      (*(v166 + 8))(v164, v165);
      goto LABEL_26;
    }

    if (v90 != v201)
    {
      (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_16:
      v82 = *(v0 + 584);
      v83 = *(v0 + 496);
      v84 = *(v0 + 504);
      v85 = *(v0 + 328);
      defaultLogger()();
      DIPLogError(_:message:log:)();
      (*(v84 + 8))(v82, v83);
      sub_10000A0D4(v85, &qword_100201488, &qword_1001ACFD0);
      LODWORD(v201) = 0;
      v86 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
      goto LABEL_27;
    }

    v157 = *(v0 + 528);
    defaultLogger()();
    v92 = Logger.logObject.getter();
    v158 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&_mh_execute_header, v92, v158, "Encountered revoked reader auth certificate", v159, 2u);
    }

    v95 = *(v0 + 528);
  }

  v99 = *(v0 + 496);
  v100 = *(v0 + 504);
  v101 = *(v0 + 328);

  (*(v100 + 8))(v95, v99);
  sub_10000A0D4(v101, &qword_100201488, &qword_1001ACFD0);
LABEL_26:
  LODWORD(v201) = 1;
  v86 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
LABEL_27:
  v197 = v86;
  v102 = v66;
  v103 = *(v0 + 808);
  v198 = *(v0 + 800);
  v104 = *(v0 + 408);
  v105 = *(v0 + 416);
  v106 = *(v0 + 400);
  v107 = *(v0 + 384);
  v108 = *(v0 + 304);
  v109 = *(v0 + 312);
  v110 = *(v0 + 288);
  v111 = *(v0 + 296);
  v204 = v102;
  sub_100041CE0(v102, *(v0 + 312));
  v199 = *v110;
  (*(v104 + 104))(v105, *v197, v106);
  (*(v108 + 16))(v107, v109, v111);
  (*(v108 + 56))(v107, 0, 1, v111);
  v112 = type metadata accessor for IdentityReaderAuthenticator(0);
  sub_100046244(v110 + *(v112 + 20), v103);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v114 = *(v0 + 808);
  if (EnumCaseMultiPayload == 1)
  {
    v115 = *(v0 + 344);
    v116 = *(v0 + 352);
    v117 = *(v0 + 336);
    sub_1000462A8(*(v0 + 808));
    (*(v115 + 104))(v116, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v117);
  }

  else
  {
    v118 = *(v0 + 784);
    v119 = *(v0 + 776);
    v120 = *(v0 + 760);
    v121 = *(v0 + 752);
    v123 = *(v0 + 344);
    v122 = *(v0 + 352);
    v124 = *(v0 + 336);
    v125 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
    (*(v123 + 104))(v122, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v124);
    (*(v120 + 8))(v114 + v125, v121);
    (*(v118 + 8))(v114, v119);
  }

  v126 = *(v0 + 640);
  v196 = *(v0 + 656);
  v197 = *(v0 + 632);
  v198 = *(v0 + 448);
  v127 = *(v0 + 408);
  v128 = *(v0 + 416);
  v195 = *(v0 + 400);
  v129 = *(v0 + 384);
  v130 = *(v0 + 352);
  v131 = *(v0 + 360);
  v132 = *(v0 + 336);
  v133 = *(v0 + 344);
  type metadata accessor for IDCSAnalytics();
  (*(v133 + 32))(v131, v130, v132);
  static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
  (*(v133 + 8))(v131, v132);
  sub_10000A0D4(v129, &qword_100201490, &qword_1001AB820);
  (*(v127 + 8))(v128, v195);
  (*(v126 + 104))(v196, v203, v197);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v168[2] = 267;
  HIBYTE(v168[1]) = -18;
  strcpy(v168, "authenticate()");
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (!v201)
  {
    v144 = *(v0 + 440);
    v143 = *(v0 + 448);
    v145 = *(v0 + 432);
    v146 = *(v0 + 280);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    (*(v144 + 32))(v146, v143, v145);
    (*(v144 + 56))(v146, 0, 1, v145);
    goto LABEL_33;
  }

  v134 = *(v0 + 832);
  v168[4] = *(v0 + 824);
  v168[5] = *(v0 + 816);
  v168[6] = *(v0 + 808);
  v168[7] = *(v0 + 792);
  v168[8] = *(v0 + 768);
  v168[9] = *(v0 + 744);
  v168[10] = *(v0 + 736);
  v168[11] = *(v0 + 728);
  v169 = *(v0 + 704);
  v170 = *(v0 + 696);
  v171 = *(v0 + 680);
  v172 = *(v0 + 672);
  v173 = *(v0 + 656);
  v174 = *(v0 + 648);
  v175 = *(v0 + 624);
  v176 = *(v0 + 616);
  v177 = *(v0 + 608);
  v178 = *(v0 + 600);
  v179 = *(v0 + 592);
  v180 = *(v0 + 584);
  v181 = *(v0 + 576);
  v182 = *(v0 + 568);
  v183 = *(v0 + 560);
  v184 = *(v0 + 552);
  v185 = *(v0 + 544);
  v186 = *(v0 + 536);
  v187 = *(v0 + 528);
  v188 = *(v0 + 520);
  v189 = *(v0 + 512);
  v190 = *(v0 + 488);
  v191 = *(v0 + 464);
  v136 = *(v0 + 440);
  v135 = *(v0 + 448);
  v137 = *(v0 + 432);
  v192 = *(v0 + 456);
  v193 = *(v0 + 424);
  v194 = *(v0 + 416);
  v195 = *(v0 + 392);
  v196 = *(v0 + 384);
  v197 = *(v0 + 376);
  v198 = *(v0 + 368);
  v199 = *(v0 + 360);
  v200 = *(v0 + 352);
  v201 = *(v0 + 328);
  v203 = *(v0 + 320);
  v139 = *(v0 + 304);
  v138 = *(v0 + 312);
  v140 = *(v0 + 296);
  v202 = swift_allocError();
  (*(v136 + 16))(v141, v135, v137);
  swift_willThrow();

  (*(v136 + 8))(v135, v137);
  (*(v139 + 8))(v138, v140);

  v142 = *(v0 + 8);
LABEL_34:

  return v142();
}

uint64_t sub_10003C608(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[20] = v2;
  v4[21] = a1;
  v4[22] = v1;
  v5 = v3[121];
  v8 = *v2;
  v4[122] = v1;

  if (v1)
  {
    v6 = sub_10003E0EC;
  }

  else
  {
    v6 = sub_10003C724;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003C724()
{
  v1 = (v0 + 64);
  v2 = *(v0 + 976);
  v327 = *(v0 + 168);
  v3 = *(v0 + 920);
  v4 = *(v0 + 904);
  v5 = *(v0 + 840);
  v6 = *(v0 + 600);

  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Verified reader certificate chain", v9, 2u);
  }

  v10 = *(v0 + 944);
  v11 = *(v0 + 928);
  v12 = *(v0 + 600);
  v13 = *(v0 + 496);
  v14 = *(v0 + 504);

  v10(v12, v13);
  v15 = v11;
  sub_100021A34((v0 + 64));
  v16 = v2;
  v17 = *(v0 + 928);
  if (v16)
  {
    v18 = *(v0 + 896);

    goto LABEL_5;
  }

  v28 = *(v0 + 80);
  v29 = *(v0 + 984);
  v30 = *(v0 + 824);
  v31 = *(v0 + 800);
  v32 = *(v0 + 288);
  v321 = *(v0 + 72);
  v324 = *(v0 + 64);
  v313 = *(v0 + 96);
  v317 = *(v0 + 88);
  v310 = *(v0 + 104);

  sub_100046244(v32 + v29, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = *(v0 + 824);
  if (EnumCaseMultiPayload == 1)
  {
    v307 = v28;
    sub_1000462A8(v34);
    goto LABEL_14;
  }

  v46 = *(v0 + 784);
  v47 = *(v0 + 776);
  v48 = *(v0 + 760);
  v49 = *(v0 + 752);
  v50 = sub_100004E70(&qword_1002014A8, &qword_1001AB838);
  (*(v48 + 8))(v34 + *(v50 + 48), v49);
  (*(v46 + 8))(v34, v47);
  *(v0 + 184) = *(v0 + 80);
  v51 = *(v0 + 192);
  if (v51)
  {
    *(v0 + 232) = *(v0 + 184);
    *(v0 + 240) = v51;
    sub_10004630C();
    Collection.nilIfEmpty.getter();
    if (*(v0 + 256))
    {
      v307 = v28;

LABEL_14:
      v52 = *(v0 + 816);
      v297 = *(v0 + 984);
      v301 = *(v0 + 800);
      v53 = *(v0 + 584);
      v54 = *(v0 + 496);
      v55 = *(v0 + 504);
      v283 = *(v0 + 424);
      v286 = *(v0 + 944);
      v57 = *(v0 + 400);
      v56 = *(v0 + 408);
      v58 = *(v0 + 304);
      v289 = *(v0 + 392);
      v292 = *(v0 + 296);
      v294 = *(v0 + 288);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v1;
      Logger.sensitive(_:)();

      v286(v53, v54);
      (*(v56 + 104))(v283, enum case for IDCSAnalytics.ReaderAuthOutcome.authenticated(_:), v57);
      (*(v58 + 56))(v289, 1, 1, v292);
      sub_100046244(v294 + v297, v52);
      v59 = swift_getEnumCaseMultiPayload();
      v60 = *(v0 + 816);
      if (v59 == 1)
      {
        v61 = *(v0 + 368);
        v62 = *(v0 + 336);
        v63 = *(v0 + 344);
        sub_1000462A8(*(v0 + 816));
        (*(v63 + 104))(v61, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v62);
      }

      else
      {
        v73 = *(v0 + 784);
        v74 = *(v0 + 776);
        v75 = *(v0 + 760);
        v76 = *(v0 + 752);
        v77 = *(v0 + 368);
        v78 = *(v0 + 336);
        v79 = *(v0 + 344);
        v80 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
        (*(v79 + 104))(v77, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v78);
        (*(v75 + 8))(v60 + v80, v76);
        (*(v73 + 8))(v60, v74);
      }

      v81 = *(v0 + 936);
      v82 = *(v0 + 424);
      v83 = *(v0 + 408);
      v298 = *(v0 + 400);
      v302 = *(v0 + 576);
      v84 = *(v0 + 392);
      v86 = *(v0 + 368);
      v85 = *(v0 + 376);
      v88 = *(v0 + 336);
      v87 = *(v0 + 344);
      type metadata accessor for IDCSAnalytics();
      (*(v87 + 32))(v85, v86, v88);
      static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
      (*(v87 + 8))(v85, v88);
      sub_10000A0D4(v84, &qword_100201490, &qword_1001AB820);
      (*(v83 + 8))(v82, v298);
      defaultLogger()();
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&_mh_execute_header, v89, v90, "Reader authenticated offline successfully", v91, 2u);
      }

      v92 = *(v0 + 944);
      v93 = *(v0 + 848);
      v94 = *(v0 + 576);
      v95 = *(v0 + 496);
      v96 = *(v0 + 288);

      v92(v94, v95);
      v97 = *(v93 + 28);
      v98 = *(v96 + v97);

      *(v96 + v97) = v327;
      if (v327)
      {
        v99 = (v0 + 560);
        v100 = *(v0 + 560);
        defaultLogger()();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          v104 = "Ongoing OCSP check in the background";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v101, v102, v104, v103, 2u);
          v112 = *v99;

LABEL_31:
          v113 = *(v0 + 944);
          v114 = *(v0 + 496);

          v113(v112, v114);
          v116 = *(v0 + 64);
          v115 = *(v0 + 72);
          if (v116 == 0x2E6173742E6C646DLL && v115 == 0xEF766F672E736864 || (v117 = *(v0 + 64), v118 = *(v0 + 72), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            v119 = 1;
          }

          else
          {
            v119 = 2;
            if (v116 != 0x61696D656469 || v115 != 0xE600000000000000)
            {
              v186 = *(v0 + 960);
              v187 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if (v186)
              {
                v188 = 3;
              }

              else
              {
                v188 = 0;
              }

              if (v187)
              {
                v119 = 2;
              }

              else
              {
                v119 = v188;
              }
            }
          }

          v120 = *(v0 + 896);
          *(*(v0 + 288) + *(*(v0 + 848) + 32)) = v119;
          v121 = *(v0 + 896);
          if (v120 >> 62)
          {
            if (v121 < 0)
            {
              v216 = *(v0 + 896);
            }

            result = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            result = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v123 = *(v0 + 896);
          if (result < 2)
          {
            v126 = *(v0 + 544);
            v127 = *(v0 + 896);

            defaultLogger()();
            v128 = Logger.logObject.getter();
            v129 = static os_log_type_t.error.getter();
            v130 = os_log_type_enabled(v128, v129);
            v131 = *(v0 + 944);
            v132 = *(v0 + 544);
            v133 = *(v0 + 496);
            if (v130)
            {
              v134 = swift_slowAlloc();
              *v134 = 0;
              _os_log_impl(&_mh_execute_header, v128, v129, "Reader certificate is a root CA", v134, 2u);
            }

            v131(v132, v133);
            v189 = 0;
            v190 = 0;
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = 0;
          }

          else
          {
            if ((v123 & 0xC000000000000001) != 0)
            {
              v217 = *(v0 + 896);
              v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v218 = *(v0 + 896);
            }

            else
            {
              if (result > *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v124 = *(v123 + 8 * (result - 1) + 32);
            }

            v125 = v124;
            sub_100021A34((v0 + 16));
            v189 = *(v0 + 16);
            v190 = *(v0 + 24);
            v191 = *(v0 + 32);
            v192 = *(v0 + 40);
            v193 = *(v0 + 48);
            v194 = *(v0 + 56);
          }

          v288 = v194;
          v291 = v119;
          v293 = v193;
          v296 = v192;
          v300 = v191;
          v304 = v190;
          v306 = v189;
          v328 = *(v0 + 928);
          (*(*(v0 + 440) + 56))(*(v0 + 280), 1, 1, *(v0 + 432));
          goto LABEL_73;
        }
      }

      else
      {
        v99 = (v0 + 568);
        v111 = *(v0 + 568);
        defaultLogger()();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          v104 = "No OCSP check in the background";
          goto LABEL_29;
        }
      }

      v112 = *v99;
      goto LABEL_31;
    }
  }

  v105 = *(v0 + 928);
  v106 = *(v0 + 896);
  v107 = *(v0 + 656);
  v108 = *(v0 + 640);
  v109 = *(v0 + 632);
  v110 = *(v0 + 432);
  *(v0 + 200) = *v1;
  sub_10001A8EC(v0 + 200);
  sub_10000A0D4(v0 + 184, &qword_1002014B0, &unk_1001ACFE0);
  *(v0 + 216) = *(v0 + 96);
  sub_10000A0D4(v0 + 216, &qword_1002014B0, &unk_1001ACFE0);

  (*(v108 + 104))(v107, enum case for DIPError.Code.idcsMissingReaderOrganization(_:), v109);
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
  v16 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

LABEL_5:

  v19 = [objc_opt_self() standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 BOOLForKey:v20];

  if (v21)
  {
    v22 = *(v0 + 584);
    v23 = *(v0 + 496);
    v24 = *(v0 + 504);
    v25 = *(v0 + 432);
    v26 = *(v0 + 440);
    v27 = *(v0 + 280);
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v24 + 8))(v22, v23);
    (*(v26 + 56))(v27, 1, 1, v25);
LABEL_57:
    v324 = 0;
    v328 = 0;
    v317 = 0;
    v321 = 0;
    v307 = 0;
    v310 = 0;
    v313 = 0;
    v304 = 0;
    v306 = 0;
    v296 = 0;
    v300 = 0;
    v293 = 0;
    v288 = 0;
    v291 = 0;
LABEL_73:
    v198 = *(v0 + 832);
    v199 = *(v0 + 824);
    v200 = *(v0 + 816);
    v201 = *(v0 + 808);
    v202 = *(v0 + 792);
    v203 = *(v0 + 768);
    v204 = *(v0 + 744);
    v205 = *(v0 + 736);
    v206 = *(v0 + 728);
    v219 = *(v0 + 704);
    v220 = *(v0 + 696);
    v221 = *(v0 + 680);
    v222 = *(v0 + 672);
    v223 = *(v0 + 656);
    v224 = *(v0 + 648);
    v226 = *(v0 + 624);
    v228 = *(v0 + 616);
    v230 = *(v0 + 608);
    v232 = *(v0 + 600);
    v234 = *(v0 + 592);
    v236 = *(v0 + 584);
    v238 = *(v0 + 576);
    v240 = *(v0 + 568);
    v242 = *(v0 + 560);
    v244 = *(v0 + 552);
    v246 = *(v0 + 544);
    v248 = *(v0 + 536);
    v250 = *(v0 + 528);
    v252 = *(v0 + 520);
    v254 = *(v0 + 512);
    v256 = *(v0 + 488);
    v258 = *(v0 + 464);
    v260 = *(v0 + 456);
    v262 = *(v0 + 448);
    v264 = *(v0 + 424);
    v266 = *(v0 + 416);
    v268 = *(v0 + 392);
    v270 = *(v0 + 384);
    v272 = *(v0 + 376);
    v274 = *(v0 + 368);
    v276 = *(v0 + 360);
    v278 = *(v0 + 352);
    v280 = *(v0 + 328);
    v282 = *(v0 + 320);
    v285 = *(v0 + 312);
    v207 = *(v0 + 272);

    *v207 = v328;
    *(v207 + 8) = v324;
    *(v207 + 16) = v321;
    *(v207 + 24) = v307;
    *(v207 + 32) = v317;
    *(v207 + 40) = v313;
    *(v207 + 48) = v310;
    *(v207 + 56) = v306;
    *(v207 + 64) = v304;
    *(v207 + 72) = v300;
    *(v207 + 80) = v296;
    *(v207 + 88) = v293;
    *(v207 + 96) = v288;
    *(v207 + 104) = v291;
    v181 = *(v0 + 8);
    goto LABEL_74;
  }

  v35 = *(v0 + 640);
  v36 = *(v0 + 632);
  v37 = *(v0 + 328);
  swift_getErrorValue();
  v39 = *(v0 + 112);
  v38 = *(v0 + 120);
  v40 = *(v0 + 128);
  Error.dipErrorCode.getter();
  if ((*(v35 + 48))(v37, 1, v36) == 1)
  {
    goto LABEL_10;
  }

  v64 = *(v0 + 640);
  v65 = *(v0 + 632);
  v66 = *(v0 + 320);
  sub_100046360(*(v0 + 328), v66, &qword_100201488, &qword_1001ACFD0);
  v67 = (*(v64 + 88))(v66, v65);
  if (v67 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    v68 = *(v0 + 512);
    defaultLogger()();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Encountered invalid reader request", v71, 2u);
    }

    v72 = *(v0 + 512);
  }

  else if (v67 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    v135 = *(v0 + 520);
    defaultLogger()();
    v69 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v69, v136, "Encountered missing or malformed auth certificates", v137, 2u);
    }

    v72 = *(v0 + 520);
  }

  else
  {
    if (v67 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v67 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
    {
      v208 = *(v0 + 536);
      sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
      defaultLogger()();
      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.error.getter();
      v211 = os_log_type_enabled(v209, v210);
      v212 = *(v0 + 536);
      v214 = *(v0 + 496);
      v213 = *(v0 + 504);
      if (v211)
      {
        v215 = swift_slowAlloc();
        *v215 = 0;
        _os_log_impl(&_mh_execute_header, v209, v210, "Encountered invalid signature during reader auth", v215, 2u);
      }

      (*(v213 + 8))(v212, v214);
      goto LABEL_50;
    }

    if (v67 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
    {
      (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_10:
      v41 = *(v0 + 584);
      v42 = *(v0 + 496);
      v43 = *(v0 + 504);
      v44 = *(v0 + 328);
      defaultLogger()();
      DIPLogError(_:message:log:)();
      (*(v43 + 8))(v41, v42);
      sub_10000A0D4(v44, &qword_100201488, &qword_1001ACFD0);
      v325 = 0;
      v45 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
      goto LABEL_51;
    }

    v195 = *(v0 + 528);
    defaultLogger()();
    v69 = Logger.logObject.getter();
    v196 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v196))
    {
      v197 = swift_slowAlloc();
      *v197 = 0;
      _os_log_impl(&_mh_execute_header, v69, v196, "Encountered revoked reader auth certificate", v197, 2u);
    }

    v72 = *(v0 + 528);
  }

  v139 = *(v0 + 496);
  v138 = *(v0 + 504);
  v140 = *(v0 + 328);

  (*(v138 + 8))(v72, v139);
  sub_10000A0D4(v140, &qword_100201488, &qword_1001ACFD0);
LABEL_50:
  v325 = 1;
  v45 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
LABEL_51:
  v314 = v45;
  v141 = v16;
  v142 = *(v0 + 808);
  v318 = *(v0 + 800);
  v143 = *(v0 + 408);
  v144 = *(v0 + 416);
  v145 = *(v0 + 400);
  v146 = *(v0 + 384);
  v147 = *(v0 + 304);
  v148 = *(v0 + 312);
  v149 = *(v0 + 288);
  v150 = *(v0 + 296);
  sub_100041CE0(v141, v148);
  v322 = *v149;
  (*(v143 + 104))(v144, *v314, v145);
  (*(v147 + 16))(v146, v148, v150);
  (*(v147 + 56))(v146, 0, 1, v150);
  v151 = type metadata accessor for IdentityReaderAuthenticator(0);
  sub_100046244(v149 + *(v151 + 20), v142);
  v152 = swift_getEnumCaseMultiPayload();
  v153 = *(v0 + 808);
  if (v152 == 1)
  {
    v154 = *(v0 + 344);
    v155 = *(v0 + 352);
    v156 = *(v0 + 336);
    sub_1000462A8(*(v0 + 808));
    (*(v154 + 104))(v155, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v156);
  }

  else
  {
    v157 = *(v0 + 784);
    v158 = *(v0 + 776);
    v159 = *(v0 + 760);
    v160 = *(v0 + 752);
    v162 = *(v0 + 344);
    v161 = *(v0 + 352);
    v163 = *(v0 + 336);
    v164 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
    (*(v162 + 104))(v161, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v163);
    (*(v159 + 8))(v153 + v164, v160);
    (*(v157 + 8))(v153, v158);
  }

  v165 = *(v0 + 640);
  v311 = *(v0 + 656);
  v315 = *(v0 + 632);
  v319 = *(v0 + 448);
  v166 = *(v0 + 408);
  v167 = *(v0 + 416);
  v308 = *(v0 + 400);
  v168 = *(v0 + 384);
  v169 = *(v0 + 352);
  v170 = *(v0 + 360);
  v171 = *(v0 + 336);
  v172 = *(v0 + 344);
  type metadata accessor for IDCSAnalytics();
  (*(v172 + 32))(v170, v169, v171);
  static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
  (*(v172 + 8))(v170, v171);
  sub_10000A0D4(v168, &qword_100201490, &qword_1001AB820);
  (*(v166 + 8))(v167, v308);
  (*(v165 + 104))(v311, enum case for DIPError.Code.internalError(_:), v315);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (!v325)
  {
    v183 = *(v0 + 440);
    v182 = *(v0 + 448);
    v184 = *(v0 + 432);
    v185 = *(v0 + 280);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    (*(v183 + 32))(v185, v182, v184);
    (*(v183 + 56))(v185, 0, 1, v184);
    goto LABEL_57;
  }

  v173 = *(v0 + 832);
  v225 = *(v0 + 824);
  v227 = *(v0 + 816);
  v229 = *(v0 + 808);
  v231 = *(v0 + 792);
  v233 = *(v0 + 768);
  v235 = *(v0 + 744);
  v237 = *(v0 + 736);
  v239 = *(v0 + 728);
  v241 = *(v0 + 704);
  v243 = *(v0 + 696);
  v245 = *(v0 + 680);
  v247 = *(v0 + 672);
  v249 = *(v0 + 656);
  v251 = *(v0 + 648);
  v253 = *(v0 + 624);
  v255 = *(v0 + 616);
  v257 = *(v0 + 608);
  v259 = *(v0 + 600);
  v261 = *(v0 + 592);
  v263 = *(v0 + 584);
  v265 = *(v0 + 576);
  v267 = *(v0 + 568);
  v269 = *(v0 + 560);
  v271 = *(v0 + 552);
  v273 = *(v0 + 544);
  v275 = *(v0 + 536);
  v277 = *(v0 + 528);
  v279 = *(v0 + 520);
  v281 = *(v0 + 512);
  v284 = *(v0 + 488);
  v287 = *(v0 + 464);
  v290 = *(v0 + 456);
  v174 = *(v0 + 440);
  v175 = *(v0 + 448);
  v176 = *(v0 + 432);
  v295 = *(v0 + 424);
  v299 = *(v0 + 416);
  v303 = *(v0 + 392);
  v305 = *(v0 + 384);
  v309 = *(v0 + 376);
  v312 = *(v0 + 368);
  v316 = *(v0 + 360);
  v320 = *(v0 + 352);
  v323 = *(v0 + 328);
  v326 = *(v0 + 320);
  v178 = *(v0 + 304);
  v177 = *(v0 + 312);
  v179 = *(v0 + 296);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v174 + 16))(v180, v175, v176);
  swift_willThrow();

  (*(v174 + 8))(v175, v176);
  (*(v178 + 8))(v177, v179);

  v181 = *(v0 + 8);
LABEL_74:

  return v181();
}

uint64_t sub_10003E0EC()
{
  v153 = v0;
  v1 = v0[122];
  v2 = v0[54];
  v3 = sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  sub_10004353C(v4);
  swift_willThrow();

  v152 = v0[116];
  v5 = v0[115];
  v6 = v0[113];
  v7 = v0[112];
  v8 = v0[105];
  v9 = v0[82];
  v10 = v0[80];
  v11 = v0[79];
  v12 = v0[54];

  LODWORD(v151) = enum case for DIPError.Code.internalError(_:);
  (*(v10 + 104))(v9);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v150 = v3;
  v13 = swift_allocError();
  HIBYTE(v116[1]) = -18;
  strcpy(v116, "authenticate()");
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = [objc_opt_self() standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  LOBYTE(v5) = [v14 BOOLForKey:v15];

  if (v5)
  {
    v16 = v0[73];
    v17 = v0[62];
    v18 = v0[63];
    v19 = v0[54];
    v20 = v0[55];
    v21 = v0[35];
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v18 + 8))(v16, v17);
    (*(v20 + 56))(v21, 1, 1, v19);
    goto LABEL_21;
  }

  v22 = v0[80];
  v23 = v0[79];
  v24 = v0[41];
  swift_getErrorValue();
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[16];
  Error.dipErrorCode.getter();
  v28 = (*(v22 + 48))(v24, 1, v23);
  v149 = "nauthenticated reader";
  if (v28 == 1)
  {
    goto LABEL_4;
  }

  v34 = v0[80];
  v35 = v0[79];
  v36 = v0[40];
  sub_100046360(v0[41], v36, &qword_100201488, &qword_1001ACFD0);
  v37 = (*(v34 + 88))(v36, v35);
  if (v37 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    v38 = v0[64];
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Encountered invalid reader request", v41, 2u);
    }

    v42 = v0[64];
LABEL_13:
    v46 = v0[62];
    v47 = v0[63];
    v48 = v0[41];

    (*(v47 + 8))(v42, v46);
    sub_10000A0D4(v48, &qword_100201488, &qword_1001ACFD0);
LABEL_14:
    LODWORD(v148) = 1;
    v33 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
    goto LABEL_15;
  }

  if (v37 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    v43 = v0[65];
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v39, v44, "Encountered missing or malformed auth certificates", v45, 2u);
    }

    v42 = v0[65];
    goto LABEL_13;
  }

  if (v37 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v37 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
  {
    v108 = v0[67];
    sub_10000A0D4(v0[41], &qword_100201488, &qword_1001ACFD0);
    defaultLogger()();
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v0[67];
    v113 = v0[62];
    v114 = v0[63];
    if (v111)
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&_mh_execute_header, v109, v110, "Encountered invalid signature during reader auth", v115, 2u);
    }

    (*(v114 + 8))(v112, v113);
    goto LABEL_14;
  }

  if (v37 == enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
  {
    v105 = v0[66];
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v39, v106, "Encountered revoked reader auth certificate", v107, 2u);
    }

    v42 = v0[66];
    goto LABEL_13;
  }

  (*(v0[80] + 8))(v0[40], v0[79]);
LABEL_4:
  v29 = v0[73];
  v30 = v0[62];
  v31 = v0[63];
  v32 = v0[41];
  defaultLogger()();
  DIPLogError(_:message:log:)();
  (*(v31 + 8))(v29, v30);
  sub_10000A0D4(v32, &qword_100201488, &qword_1001ACFD0);
  LODWORD(v148) = 0;
  v33 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
LABEL_15:
  v145 = v33;
  v49 = v13;
  v50 = v0[101];
  v146 = v0[100];
  v51 = v0[51];
  v52 = v0[52];
  v53 = v0[50];
  v54 = v0[48];
  v55 = v0[38];
  v56 = v0[39];
  v57 = v0[36];
  v58 = v0[37];
  v152 = v49;
  sub_100041CE0(v49, v0[39]);
  v147 = *v57;
  (*(v51 + 104))(v52, *v145, v53);
  (*(v55 + 16))(v54, v56, v58);
  (*(v55 + 56))(v54, 0, 1, v58);
  v59 = type metadata accessor for IdentityReaderAuthenticator(0);
  sub_100046244(v57 + *(v59 + 20), v50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = v0[101];
  if (EnumCaseMultiPayload == 1)
  {
    v62 = v0[43];
    v63 = v0[44];
    v64 = v0[42];
    sub_1000462A8(v0[101]);
    (*(v62 + 104))(v63, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v64);
  }

  else
  {
    v65 = v0[98];
    v66 = v0[97];
    v67 = v0[95];
    v68 = v0[94];
    v70 = v0[43];
    v69 = v0[44];
    v71 = v0[42];
    v72 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
    (*(v70 + 104))(v69, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v71);
    (*(v67 + 8))(v61 + v72, v68);
    (*(v65 + 8))(v61, v66);
  }

  v73 = v0[80];
  v144 = v0[82];
  v145 = v0[79];
  v146 = v0[56];
  v74 = v0[51];
  v75 = v0[52];
  v143 = v0[50];
  v76 = v0[48];
  v77 = v0[44];
  v78 = v0[45];
  v79 = v0[42];
  v80 = v0[43];
  type metadata accessor for IDCSAnalytics();
  (*(v80 + 32))(v78, v77, v79);
  static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
  (*(v80 + 8))(v78, v79);
  sub_10000A0D4(v76, &qword_100201490, &qword_1001AB820);
  (*(v74 + 8))(v75, v143);
  (*(v73 + 104))(v144, v151, v145);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v116[2] = 267;
  HIBYTE(v116[1]) = -18;
  strcpy(v116, "authenticate()");
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (v148)
  {
    v81 = v0[104];
    v116[3] = v0[103];
    v116[4] = v0[102];
    v116[5] = v0[101];
    v116[6] = v0[99];
    v116[7] = v0[96];
    v116[8] = v0[93];
    v116[9] = v0[92];
    v116[10] = v0[91];
    v117 = v0[88];
    v118 = v0[87];
    v119 = v0[85];
    v120 = v0[84];
    v121 = v0[82];
    v122 = v0[81];
    v123 = v0[78];
    v124 = v0[77];
    v125 = v0[76];
    v126 = v0[75];
    v127 = v0[74];
    v128 = v0[73];
    v129 = v0[72];
    v130 = v0[71];
    v131 = v0[70];
    v132 = v0[69];
    v133 = v0[68];
    v134 = v0[67];
    v135 = v0[66];
    v136 = v0[65];
    v137 = v0[64];
    v138 = v0[61];
    v139 = v0[58];
    v83 = v0[55];
    v82 = v0[56];
    v84 = v0[54];
    v140 = v0[57];
    v141 = v0[53];
    v142 = v0[52];
    v143 = v0[49];
    v144 = v0[48];
    v145 = v0[47];
    v146 = v0[46];
    v147 = v0[45];
    v148 = v0[44];
    v149 = v0[41];
    v151 = v0[40];
    v86 = v0[38];
    v85 = v0[39];
    v87 = v0[37];
    v150 = swift_allocError();
    (*(v83 + 16))(v88, v82, v84);
    swift_willThrow();

    (*(v83 + 8))(v82, v84);
    (*(v86 + 8))(v85, v87);

    v89 = v0[1];
    goto LABEL_22;
  }

  v91 = v0[55];
  v90 = v0[56];
  v92 = v0[54];
  v93 = v0[35];
  (*(v0[38] + 8))(v0[39], v0[37]);

  (*(v91 + 32))(v93, v90, v92);
  (*(v91 + 56))(v93, 0, 1, v92);
LABEL_21:
  v94 = v0[104];
  v95 = v0[103];
  v96 = v0[102];
  v97 = v0[101];
  v98 = v0[99];
  v99 = v0[96];
  v100 = v0[93];
  v101 = v0[92];
  v102 = v0[91];
  v117 = v0[88];
  v118 = v0[87];
  v119 = v0[85];
  v120 = v0[84];
  v121 = v0[82];
  v122 = v0[81];
  v123 = v0[78];
  v124 = v0[77];
  v125 = v0[76];
  v126 = v0[75];
  v127 = v0[74];
  v128 = v0[73];
  v129 = v0[72];
  v130 = v0[71];
  v131 = v0[70];
  v132 = v0[69];
  v133 = v0[68];
  v134 = v0[67];
  v135 = v0[66];
  v136 = v0[65];
  v137 = v0[64];
  v138 = v0[61];
  v139 = v0[58];
  v140 = v0[57];
  v141 = v0[56];
  v142 = v0[53];
  v143 = v0[52];
  v144 = v0[49];
  v145 = v0[48];
  v146 = v0[47];
  v147 = v0[46];
  v148 = v0[45];
  v149 = v0[44];
  v150 = v0[41];
  v151 = v0[40];
  v152 = v0[39];
  v103 = v0[34];

  *(v103 + 89) = 0u;
  v103[4] = 0u;
  v103[5] = 0u;
  v103[2] = 0u;
  v103[3] = 0u;
  *v103 = 0u;
  v103[1] = 0u;
  v89 = v0[1];
LABEL_22:

  return v89();
}

char *sub_10003F088(uint64_t a1, uint64_t a2)
{
  v157 = a2;
  v146 = type metadata accessor for DIPError.Code();
  v145 = *(v146 - 8);
  v3 = *(v145 + 64);
  __chkstk_darwin(v146);
  v5 = v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v143 = *(v6 - 8);
  v7 = *(v143 + 64);
  v8 = __chkstk_darwin(v6);
  v142 = v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v138 = v134 - v11;
  v12 = __chkstk_darwin(v10);
  v137 = v134 - v13;
  __chkstk_darwin(v12);
  v139 = v134 - v14;
  v156 = type metadata accessor for ISO18013SessionTranscript();
  v141 = *(v156 - 8);
  v15 = *(v141 + 64);
  __chkstk_darwin(v156);
  v154 = v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for ISO18013ReaderAuthentication();
  v140 = *(v155 - 8);
  v17 = *(v140 + 64);
  __chkstk_darwin(v155);
  v153 = v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for COSE_Sign1();
  v144 = *(v19 - 8);
  v20 = *(v144 + 64);
  __chkstk_darwin(v19);
  v151 = v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v167 = (v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v168 = (v134 - v26);
  v27 = sub_100004E70(&qword_1002014D8, &qword_1001AB860);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = v134 - v29;
  v177 = sub_100004E70(&qword_1002014E0, &qword_1001AB868);
  KeyPath = *(v177 - 8);
  v31 = *(KeyPath + 64);
  v32 = __chkstk_darwin(v177);
  v148 = v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v147 = v134 - v35;
  v36 = __chkstk_darwin(v34);
  v160 = v134 - v37;
  v38 = __chkstk_darwin(v36);
  v158 = v134 - v39;
  v40 = __chkstk_darwin(v38);
  v152 = v134 - v41;
  __chkstk_darwin(v40);
  v166 = (v134 - v42);
  v174 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v170 = *(v174 - 8);
  v43 = *(v170 + 64);
  __chkstk_darwin(v174);
  v45 = v134 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100004E70(&qword_1002014E8, &qword_1001AB870);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = v134 - v48;
  v159 = a1;
  v50 = ISO18013ReaderRequest.readerAuthAll.getter();
  if (v50)
  {
    v179 = v50;
    v176 = v50;
    sub_100004E70(&qword_100201510, &unk_1001AB8F0);
    sub_1000464D0(&qword_100201518, &qword_100201510, &unk_1001AB8F0);
    Collection.nilIfEmpty.getter();

    if (v178)
    {

      goto LABEL_19;
    }
  }

  ISO18013ReaderRequest.deviceRequestInfo.getter();
  v51 = sub_100004E70(&qword_1002014F0, &qword_1001AB878);
  v52 = (*(*(v51 - 8) + 48))(v49, 1, v51);
  sub_10000A0D4(v49, &qword_1002014E8, &qword_1001AB870);
  if (v52 != 1)
  {
LABEL_19:
    v71 = v145;
    v72 = v146;
    (*(v145 + 104))(v5, enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v146);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_20:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_21;
  }

  v136 = v6;
  v53 = ISO18013ReaderRequest.docRequests.getter();
  v54 = *(v53 + 16);
  v135 = v5;
  v175 = v19;
  if (v54)
  {
    v165 = *(v170 + 16);
    v55 = (*(v170 + 80) + 32) & ~*(v170 + 80);
    v134[1] = v53;
    v56 = v53 + v55;
    v164 = *(v170 + 72);
    v163 = (v144 + 48);
    v150 = (v144 + 32);
    v57 = v168;
    v170 += 16;
    v58 = (v170 - 8);
    v161 = (KeyPath + 48);
    v162 = (KeyPath + 56);
    v176 = _swiftEmptyArrayStorage;
    v59 = v177;
    v149 = (v170 - 8);
    do
    {
      v172 = v56;
      v173 = v54;
      v165(v45);
      ISO18013ReaderRequest.DocRequest.readerAuth.getter();
      v60 = v167;
      sub_100046360(v57, v167, &qword_1002014D0, &unk_1001AD120);
      v61 = v175;
      if ((*v163)(v60, 1, v175) == 1)
      {
        sub_10000A0D4(v57, &qword_1002014D0, &unk_1001AD120);
        v62 = 1;
      }

      else
      {
        v63 = *v150;
        v64 = v151;
        (*v150)(v151, v60, v61);
        v65 = *(v177 + 48);
        ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
        sub_10000A0D4(v168, &qword_1002014D0, &unk_1001AD120);
        v66 = v64;
        v57 = v168;
        v63(&v30[v65], v66, v175);
        v58 = v149;
        v59 = v177;
        v62 = 0;
      }

      (*v162)(v30, v62, 1, v59);
      (*v58)(v45, v174);
      if ((*v161)(v30, 1, v59) == 1)
      {
        sub_10000A0D4(v30, &qword_1002014D8, &qword_1001AB860);
      }

      else
      {
        sub_100046524(v30, v166, &qword_1002014E0, &qword_1001AB868);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v67 = v176;
        }

        else
        {
          v67 = sub_100100654(0, *(v176 + 2) + 1, 1, v176);
        }

        v69 = *(v67 + 2);
        v68 = *(v67 + 3);
        if (v69 >= v68 >> 1)
        {
          v67 = sub_100100654(v68 > 1, v69 + 1, 1, v67);
        }

        *(v67 + 2) = v69 + 1;
        v70 = (*(KeyPath + 80) + 32) & ~*(KeyPath + 80);
        v176 = v67;
        sub_100046524(v166, &v67[v70 + *(KeyPath + 72) * v69], &qword_1002014E0, &qword_1001AB868);
        v59 = v177;
      }

      v56 = v172 + v164;
      v54 = (v173 - 1);
    }

    while (v173 != 1);

    result = v176;
  }

  else
  {

    result = _swiftEmptyArrayStorage;
  }

  v75 = v142;
  v174 = *(result + 2);
  if (!v174)
  {

    defaultLogger()();
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v110, v111, "Reader request contains no signatures, the request is unauthenticated", v112, 2u);
    }

    (*(v143 + 8))(v75, v136);
    return _swiftEmptyArrayStorage;
  }

  v76 = 0;
  v173 = (v144 + 32);
  v166 = (v144 + 8);
  v167 = (v141 + 16);
  v168 = (v140 + 8);
  v77 = v158;
  v176 = result;
  do
  {
    if (v76 >= *(result + 2))
    {
      __break(1u);
      goto LABEL_69;
    }

    v165 = ((*(KeyPath + 80) + 32) & ~*(KeyPath + 80));
    v172 = *(KeyPath + 72);
    v78 = v152;
    sub_100046360(v165 + result + v172 * v76, v152, &qword_1002014E0, &qword_1001AB868);
    v79 = v177;
    v80 = *(v177 + 48);
    v81 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
    (*(*(v81 - 8) + 32))(v77, v78, v81);
    v82 = v175;
    v170 = *v173;
    (v170)(v77 + v80, v78 + v80, v175);
    (*v167)(v154, v157, v156);
    v83 = v77;
    v84 = v160;
    sub_100046360(v83, v160, &qword_1002014E0, &qword_1001AB868);
    v85 = *(v79 + 48);
    v86 = v153;
    ISO18013ReaderAuthentication.init(sessionTranscript:itemsRequestBytes:)();
    v87 = v84 + v85;
    v77 = v158;
    (*v166)(v87, v82);
    v88 = v171;
    sub_100045160(v77 + v80, v86, &type metadata accessor for ISO18013ReaderAuthentication, &qword_100201530, &type metadata accessor for ISO18013ReaderAuthentication, &protocol conformance descriptor for ISO18013ReaderAuthentication);
    v171 = v88;
    if (v88)
    {

      (*v168)(v86, v155);
      sub_10000A0D4(v77, &qword_1002014E0, &qword_1001AB868);
      v5 = v135;
      v72 = v146;
LABEL_45:
      v71 = v145;
LABEL_21:
      v73 = "nauthenticated reader";
      (*(v71 + 104))(v5, enum case for DIPError.Code.internalError(_:), v72);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return v73;
    }

    ++v76;
    (*v168)(v86, v155);
    sub_10000A0D4(v77, &qword_1002014E0, &qword_1001AB868);
    result = v176;
  }

  while (v174 != v76);
  v89._countAndFlagsBits = 0x3138303730663863;
  v90._countAndFlagsBits = 0xD000000000000028;
  v90._object = 0x80000001001B3D00;
  v89._object = 0xE800000000000000;
  logMilestone(tag:description:)(v89, v90);
  v91 = v139;
  defaultLogger()();
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&_mh_execute_header, v92, v93, "Verified reader auth signature with reader leaf certificate", v94, 2u);
  }

  v95 = *(v143 + 8);
  v143 += 8;
  v95(v91, v136);
  v96 = v176;
  v97 = *(v176 + 2);
  v98 = *(ISO18013ReaderRequest.docRequests.getter() + 16);

  v168 = v97;
  v99 = v177;
  if (v97 != v98)
  {

    v113 = v138;
    defaultLogger()();
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "Reader request contains a mix of signed and unsigned requests, falling back to unauthenticated request", v116, 2u);
    }

    v95(v113, v136);
    return _swiftEmptyArrayStorage;
  }

  v167 = v95;
  KeyPath = swift_getKeyPath();
  v100 = _swiftEmptyArrayStorage;
  v101 = v165 + v96;
  do
  {
    v102 = v147;
    sub_100046360(v101, v147, &qword_1002014E0, &qword_1001AB868);
    v103 = v160;
    sub_100046360(v102, v160, &qword_1002014E0, &qword_1001AB868);
    v104 = *(v99 + 48);
    v105 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
    v106 = v148;
    (*(*(v105 - 8) + 32))(v148, v103, v105);
    (v170)(v106 + v104, v103 + v104, v175);
    swift_getAtKeyPath();
    sub_10000A0D4(v106, &qword_1002014E0, &qword_1001AB868);
    sub_10000A0D4(v102, &qword_1002014E0, &qword_1001AB868);
    v107 = v179;
    if (v179)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_100100630(0, v100[2] + 1, 1, v100);
      }

      v109 = v100[2];
      v108 = v100[3];
      if (v109 >= v108 >> 1)
      {
        v100 = sub_100100630((v108 > 1), v109 + 1, 1, v100);
      }

      v100[2] = v109 + 1;
      v100[v109 + 4] = v107;
      v99 = v177;
    }

    v101 += v172;
    --v174;
  }

  while (v174);
  v5 = v135;

  v117 = v100[2];
  v118 = v171;
  if (!v117)
  {

    v120 = _swiftEmptyArrayStorage;
    v72 = v146;
LABEL_59:
    v126 = v168;
    if (v168 == v120[2])
    {

      v128 = sub_10010D6D8(v127);

      v129 = *(v128 + 16);

      if (v129 != v126)
      {

        v130 = v137;
        defaultLogger()();
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&_mh_execute_header, v131, v132, "Reader requests signed with different certificate chains, falling back to unauthenticated request", v133, 2u);
        }

        v167(v130, v136);
        return _swiftEmptyArrayStorage;
      }

      if (v120[2])
      {
        v73 = v120[4];

        return v73;
      }
    }

    v71 = v145;
    (*(v145 + 104))(v5, enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:), v72);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_20;
  }

  v179 = _swiftEmptyArrayStorage;
  result = sub_10010A798(0, v117, 0);
  v119 = 0;
  v120 = v179;
  v72 = v146;
  while (v119 < v100[2])
  {
    v121 = v100[v119 + 4];

    v122 = decodeCertificateChain(fromDER:)();
    if (v118)
    {

      goto LABEL_45;
    }

    v123 = v122;

    v179 = v120;
    v125 = v120[2];
    v124 = v120[3];
    if (v125 >= v124 >> 1)
    {
      result = sub_10010A798((v124 > 1), v125 + 1, 1);
      v120 = v179;
    }

    ++v119;
    v120[2] = v125 + 1;
    v120[v125 + 4] = v123;
    v72 = v146;
    if (v117 == v119)
    {

      goto LABEL_59;
    }
  }

LABEL_69:
  __break(1u);
  return result;
}

void *sub_10004083C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DIPError.Code();
  v85 = *(v8 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Logger();
  v87 = *(v88 - 8);
  v12 = *(v87 + 64);
  v13 = __chkstk_darwin(v88);
  v114 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v84 = &v81 - v16;
  __chkstk_darwin(v15);
  v86 = &v81 - v17;
  v117 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v93 = *(v117 - 8);
  v18 = *(v93 + 64);
  __chkstk_darwin(v117);
  v116 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v118 = *(v115 - 8);
  v20 = *(v118 + 64);
  __chkstk_darwin(v115);
  v92 = &v81 - v21;
  v22 = sub_100004E70(&qword_1002014E8, &qword_1001AB870);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v107 = &v81 - v24;
  v106 = type metadata accessor for ISO18013SessionTranscript();
  v113 = *(v106 - 8);
  v25 = *(v113 + 64);
  __chkstk_darwin(v106);
  v111 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  v110 = *(v105 - 8);
  v27 = *(v110 + 64);
  __chkstk_darwin(v105);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for COSE_Sign1();
  v109 = *(v95 - 8);
  v30 = *(v109 + 64);
  v31 = __chkstk_darwin(v95);
  v83 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v81 - v33;
  v94 = a1;
  v35 = ISO18013ReaderRequest.readerAuthAll.getter();
  if (!v35)
  {
    goto LABEL_22;
  }

  v120 = v35;
  v102 = v29;
  sub_100004E70(&qword_100201510, &unk_1001AB8F0);
  v108 = v34;
  sub_1000464D0(&qword_100201518, &qword_100201510, &unk_1001AB8F0);
  v36 = v108;
  Collection.nilIfEmpty.getter();

  if (!v119)
  {
LABEL_22:
    v70 = v114;
    defaultLogger()();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Reader request contains no signatures, the request is unauthenticated", v73, 2u);
    }

    (*(v87 + 8))(v70, v88);
    return _swiftEmptyArrayStorage;
  }

  v81 = v8;
  v38 = v119[2];
  v91 = v119;
  v101 = v38;
  v82 = v11;
  if (!v38)
  {
LABEL_15:
    v57._countAndFlagsBits = 0x3138303730663863;
    v58._countAndFlagsBits = 0xD000000000000028;
    v58._object = 0x80000001001B3D00;
    v57._object = 0xE800000000000000;
    logMilestone(tag:description:)(v57, v58);
    v59 = v86;
    defaultLogger()();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Verified reader auth signature with reader leaf certificate", v62, 2u);
    }

    v63 = *(v87 + 8);
    v63(v59, v88);
    v64 = v82;
    if (v91[2] != 1)
    {

      v74 = v84;
      defaultLogger()();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Reader request contains > 1 readerAuthAll structures, falling back to unauthenticated request", v78, 2u);
      }

      v63(v74, v88);
      return _swiftEmptyArrayStorage;
    }

    v65 = v109;
    v66 = v83;
    v67 = v95;
    (*(v109 + 16))(v83, v91 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v95);

    v68 = COSE_Sign1.x509Chain.getter();
    (*(v65 + 8))(v66, v67);
    if (v68)
    {

      v69 = decodeCertificateChain(fromDER:)();
      if (v4)
      {
        swift_bridgeObjectRelease_n();
LABEL_30:
        v79 = v85;
        goto LABEL_33;
      }

      v80 = v69;
      swift_bridgeObjectRelease_n();
      v120 = v80;
      sub_100004E70(&qword_100201548, &qword_1001AB908);
      sub_1000464D0(&qword_100201550, &qword_100201548, &qword_1001AB908);
      Collection.nilIfEmpty.getter();

      result = v119;
      if (v119)
      {
        return result;
      }
    }

    v79 = v85;
    (*(v85 + 104))(v64, enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:), v81);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_33:
    (*(v79 + 104))(v64, enum case for DIPError.Code.internalError(_:), v81);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v39 = v119;
  v40 = 0;
  v99 = v119 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v97 = v109 + 16;
  v96 = (v113 + 16);
  v113 = v93 + 8;
  v114 = (v93 + 16);
  v112 = v118 + 32;
  v98 = (v110 + 8);
  v100 = (v109 + 8);
  v41 = v95;
  v90 = v5;
  v89 = a2;
  while (v40 < v39[2])
  {
    v42 = *(v109 + 72);
    v110 = v40;
    (*(v109 + 16))(v36, &v99[v42 * v40], v41);
    (*v96)(v111, a2, v106);
    v43 = ISO18013ReaderRequest.docRequests.getter();
    v44 = *(v43 + 16);
    if (v44)
    {
      v104 = v4;
      v120 = _swiftEmptyArrayStorage;
      v45 = v43;
      sub_10010A7D8(0, v44, 0);
      v46 = v120;
      v47 = *(v93 + 80);
      v103 = v45;
      v48 = v45 + ((v47 + 32) & ~v47);
      v49 = *(v93 + 72);
      v50 = *(v93 + 16);
      v51 = v92;
      do
      {
        v52 = v116;
        v53 = v117;
        v50(v116, v48, v117);
        ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
        (*v113)(v52, v53);
        v120 = v46;
        v55 = v46[2];
        v54 = v46[3];
        if (v55 >= v54 >> 1)
        {
          sub_10010A7D8(v54 > 1, v55 + 1, 1);
          v46 = v120;
        }

        v46[2] = v55 + 1;
        (*(v118 + 32))(v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v55, v51, v115);
        v48 += v49;
        --v44;
      }

      while (v44);

      v4 = v104;
      a2 = v89;
      v41 = v95;
      v39 = v91;
    }

    else
    {
    }

    ISO18013ReaderRequest.deviceRequestInfo.getter();
    v56 = v102;
    ISO18013ReaderAuthenticationAll.init(sessionTranscript:itemsRequestBytesAll:deviceRequestsInfoBytes:)();
    v36 = v108;
    sub_100045160(v108, v56, &type metadata accessor for ISO18013ReaderAuthenticationAll, &qword_100201558, &type metadata accessor for ISO18013ReaderAuthenticationAll, &protocol conformance descriptor for ISO18013ReaderAuthenticationAll);
    if (v4)
    {

      (*v98)(v56, v105);
      (*v100)(v36, v41);
      v64 = v82;
      goto LABEL_30;
    }

    v40 = v110 + 1;
    (*v98)(v56, v105);
    result = (*v100)(v36, v41);
    if (v40 == v101)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100041690(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100041768, 0, 0);
}

uint64_t sub_100041768()
{
  v60 = v0;
  v1 = v0[9];
  v2 = v0[4];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    *v6 = 136315138;
    swift_getKeyPath();
    v7 = *(v5 + 16);
    if (v7)
    {
      v56 = v4;
      v8 = v0[4];
      v59 = _swiftEmptyArrayStorage;
      sub_10010A818(0, v7, 0);
      v9 = _swiftEmptyArrayStorage;
      v10 = (v8 + 32);
      do
      {
        v0[3] = *v10;

        swift_getAtKeyPath();

        v11 = v0[2];
        v59 = v9;
        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_10010A818((v12 > 1), v13 + 1, 1);
          v9 = v59;
        }

        v9[2] = v13 + 1;
        v9[v13 + 4] = v11;
        ++v10;
        --v7;
      }

      while (v7);

      v4 = v56;
    }

    else
    {
    }

    v18 = v0[9];
    v20 = v0[5];
    v19 = v0[6];
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    v21 = Array.description.getter();
    v23 = v22;

    v24 = sub_10010150C(v21, v23, &v58);

    *(v6 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityReaderAuthenticator determining apple issued chain from received list of chains: %s", v6, 0xCu);
    sub_100005090(v57);

    v17 = *(v19 + 8);
    v17(v18, v20);
  }

  else
  {
    v14 = v0[9];
    v15 = v0[5];
    v16 = v0[6];

    v17 = *(v16 + 8);
    v17(v14, v15);
  }

  v25 = v0[4];
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_26:
    v36 = v0[7];
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v39 = os_log_type_enabled(v37, v38);
    v41 = v0[6];
    v40 = v0[7];
    v42 = v0[5];
    if (v39)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "IdentityReaderAuthenticator could not determined matched apple issued chain", v43, 2u);
    }

    v17(v40, v42);
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v27 = 0;
  v28 = v25 + 32;
  while (1)
  {
    v29 = *(v28 + 8 * v27);
    if (v29 >> 62)
    {
      if (v29 < 0)
      {
        v35 = *(v28 + 8 * v27);
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_13;
      }
    }

    if ((v29 & 0xC000000000000001) != 0)
    {

      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v31 = *(v29 + 32);

      v32 = v31;
    }

    v33 = v32;
    v34 = SecCertificateRef.hasBrandAssetsIdentifier.getter();

    if (v34)
    {
      break;
    }

LABEL_13:
    if (v26 == ++v27)
    {
      goto LABEL_26;
    }
  }

  v44 = v0[8];
  defaultLogger()();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v45, v46, "IdentityReaderAuthenticator determined matched apple issued chain at index %ld", v48, 0xCu);
  }

  v49 = v0[8];
  v50 = v0[5];
  v51 = v0[6];

  v17(v49, v50);

LABEL_32:
  v53 = v0[8];
  v52 = v0[9];
  v54 = v0[7];

  v55 = v0[1];

  return v55(v29);
}

uint64_t sub_100041C44(__int128 *a1)
{
  _StringGuts.grow(_:)(58);
  v2._object = 0x80000001001B3F80;
  v2._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v2);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100041CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_100201560, &unk_1001AB910);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v30 - v11;
  v13 = type metadata accessor for DIPError();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = a1;
  swift_errorRetain();
  sub_100004E70(&qword_100200208, &qword_1001AA530);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (!v18)
  {
    v19(v12, 1, 1, v13);
    sub_10000A0D4(v12, &qword_100201560, &unk_1001AB910);
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.other(_:);
    goto LABEL_5;
  }

  v19(v12, 0, 1, v13);
  (*(v14 + 32))(v17, v12, v13);
  DIPError.code.getter();
  (*(v14 + 8))(v17, v13);
  v20 = (*(v5 + 88))(v8, v4);
  if (v20 == enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.misformattedCertificate(_:);
LABEL_5:
    v22 = *v21;
    v23 = type metadata accessor for IDCSAnalytics.ReaderAuthFailureReason();
    v24 = *(*(v23 - 8) + 104);
    v25 = a2;
    v26 = v22;
    return v24(v25, v26, v23);
  }

  if (v20 == enum case for DIPError.Code.idcsUnknownIssuerAuthAlgorithm(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.unsupportedIssuerAuthAlgorithm(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsMissingReaderAuth(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.noAuthProvided(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.missingCertificate(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.untrustedCertificate(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsMissingReaderOrganization(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.missingOrganization(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsUnknownReaderAuthAlgorithm(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.unsupportedReaderAuthAlgorithm(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.misformattedSignature(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.invalidSignature(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.revokedCertificate(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsExpiredReaderAuthCertificate(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.expiredCertificate(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsUnknownDocumentType(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.unknownDocumentType(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for DIPError.Code.idcsNotYetValidReaderAuthCertificate(_:))
  {
    v21 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.notYetValidCertificate(_:);
    goto LABEL_5;
  }

  v28 = v20;
  v29 = enum case for DIPError.Code.idcsHostNameMismatchForReaderAuthCertificate(_:);
  v23 = type metadata accessor for IDCSAnalytics.ReaderAuthFailureReason();
  v24 = *(*(v23 - 8) + 104);
  if (v28 != v29)
  {
    v24(a2, enum case for IDCSAnalytics.ReaderAuthFailureReason.other(_:), v23);
    return (*(v5 + 8))(v8, v4);
  }

  v26 = enum case for IDCSAnalytics.ReaderAuthFailureReason.hostNameInvalid(_:);
  v25 = a2;
  return v24(v25, v26, v23);
}

uint64_t sub_1000421D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for Logger();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v6[19] = v10;
  v11 = *(v10 - 8);
  v6[20] = v11;
  v12 = *(v11 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v13 = *(*(sub_100004E70(&qword_100201560, &unk_1001AB910) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v14 = type metadata accessor for DIPError();
  v6[24] = v14;
  v15 = *(v14 - 8);
  v6[25] = v15;
  v16 = *(v15 + 64) + 15;
  v6[26] = swift_task_alloc();
  v17 = type metadata accessor for DIPCertUsage();
  v6[27] = v17;
  v18 = *(v17 - 8);
  v6[28] = v18;
  v6[29] = *(v18 + 64);
  v6[30] = swift_task_alloc();
  v19 = *(*(sub_100004E70(&qword_100201CD0, &qword_1001AC550) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v20 = sub_100004E70(&qword_100201568, &unk_1001AB920);
  v6[32] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v22 = type metadata accessor for DIPOIDVerifier();
  v6[34] = v22;
  v23 = *(v22 - 8);
  v6[35] = v23;
  v6[36] = *(v23 + 64);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();

  return _swift_task_switch(sub_1000424DC, 0, 0);
}

uint64_t sub_1000424DC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 104);
  sub_10001A940(*(v0 + 120), v0 + 16);
  DIPOIDVerifier.init(dateProvider:)();
  if (v2)
  {
    v3 = *(v0 + 304);
    DIPOIDVerifier.setTrustedRoots(_:)(*(v0 + 104));
  }

  v4 = *(v0 + 264);
  v5 = *(*(v0 + 256) + 48);
  sub_100043FA0(v4, (v4 + v5), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v6 = async function pointer to DIPOIDVerifier.verifyChain(_:forUsage:)[1];
  v7 = swift_task_alloc();
  *(v0 + 312) = v7;
  *v7 = v0;
  v7[1] = sub_100042B30;
  v8 = *(v0 + 304);
  v9 = *(v0 + 112);

  return DIPOIDVerifier.verifyChain(_:forUsage:)(v9, v4 + v5);
}

uint64_t sub_100042B30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_100042FB0;
  }

  else
  {
    v5 = sub_100042C44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100042C44()
{
  v1 = *(v0 + 320);
  if ((sub_100044494() & 1) != 0 || (v2 = [objc_opt_self() standardUserDefaults], v3._object = 0x80000001001B4030, v3._countAndFlagsBits = 0xD000000000000026, v4 = NSUserDefaults.internalBool(forKey:)(v3), v2, v4))
  {
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v44 = v5;
    v45 = *(v0 + 320);
    v7 = *(v0 + 280);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 240);
    v11 = *(v0 + 248);
    v37 = v6;
    v38 = v10;
    v12 = *(v0 + 224);
    v39 = *(v0 + 288);
    v40 = *(v0 + 232);
    v13 = *(v0 + 216);
    v41 = *(v0 + 112);
    v42 = v9;
    v43 = *(v0 + 80);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = v6;
    v16 = v8;
    (*(v7 + 16))(v15, v5, v8);
    (*(v12 + 16))(v10, v9, v13);
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = (v39 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (*(v12 + 80) + v18 + 8) & ~*(v12 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    (*(v7 + 32))(v20 + v17, v37, v16);
    *(v20 + v18) = v41;
    (*(v12 + 32))(v20 + v19, v38, v13);
    *(v20 + ((v40 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;

    v46 = sub_1000BDD04(0, 0, v11, &unk_1001AB938, v20);

    sub_10000A0D4(v42, &qword_100201568, &unk_1001AB920);
    (*(v7 + 8))(v44, v16);
  }

  else
  {
    v21 = *(v0 + 304);
    v22 = *(v0 + 272);
    v23 = *(v0 + 280);
    v24 = *(v0 + 264);

    sub_10000A0D4(v24, &qword_100201568, &unk_1001AB920);
    (*(v23 + 8))(v21, v22);
    v46 = 0;
  }

  v26 = *(v0 + 296);
  v25 = *(v0 + 304);
  v27 = *(v0 + 264);
  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v30 = *(v0 + 208);
  v32 = *(v0 + 176);
  v31 = *(v0 + 184);
  v33 = *(v0 + 168);
  v34 = *(v0 + 144);

  v35 = *(v0 + 8);

  return v35(v46);
}

uint64_t sub_100042FB0()
{
  v71 = v0;
  sub_10000A0D4(v0[33], &qword_100201568, &unk_1001AB920);
  v1 = v0[41];
  v2 = [objc_opt_self() standardUserDefaults];
  v3._object = 0x80000001001B3FF0;
  v3._countAndFlagsBits = 0xD00000000000003DLL;
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = v0[24];
    v6 = v0[25];
    v7 = v0[23];
    v0[7] = static DIPOIDVerifier.getSpecificCertificateError(_:)();
    sub_100004E70(&qword_100200208, &qword_1001AA530);
    v8 = swift_dynamicCast();
    v9 = *(v6 + 56);
    if (v8)
    {
      v11 = v0[25];
      v10 = v0[26];
      v13 = v0[23];
      v12 = v0[24];
      v15 = v0[21];
      v14 = v0[22];
      v17 = v0[19];
      v16 = v0[20];
      v9(v13, 0, 1, v12);
      (*(v11 + 32))(v10, v13, v12);
      DIPError.code.getter();
      (*(v16 + 104))(v15, enum case for DIPError.Code.hostNameMismatchForCertificate(_:), v17);
      sub_10004697C(&qword_100200210, &type metadata accessor for DIPError.Code);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v18 = *(v16 + 8);
      v18(v15, v17);
      v18(v14, v17);
      if (v0[8] == v0[9])
      {
        v19 = v0[18];
        v20 = v0[14];
        defaultLogger()();

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        v23 = os_log_type_enabled(v21, v22);
        v24 = v0[38];
        v26 = v0[34];
        v25 = v0[35];
        v28 = v0[25];
        v27 = v0[26];
        v29 = v0[24];
        v30 = v0[17];
        v31 = v0[16];
        v65 = v31;
        v67 = v0[18];
        if (v23)
        {
          v63 = v0[34];
          v32 = v0[14];
          v61 = v0[38];
          v33 = swift_slowAlloc();
          v60 = v27;
          v34 = swift_slowAlloc();
          v70 = v34;
          *v33 = 136315138;
          type metadata accessor for SecCertificate(0);
          v35 = Array.description.getter();
          v59 = v29;
          v37 = sub_10010150C(v35, v36, &v70);

          *(v33 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v21, v22, "Request origin host validation log only, permitting host name mismatch for readerCerts %s", v33, 0xCu);
          sub_100005090(v34);

          (*(v30 + 8))(v67, v65);
          (*(v28 + 8))(v60, v59);
          (*(v25 + 8))(v61, v63);
        }

        else
        {

          (*(v30 + 8))(v67, v65);
          (*(v28 + 8))(v27, v29);
          (*(v25 + 8))(v24, v26);
        }

        v49 = v0[37];
        v48 = v0[38];
        v50 = v0[33];
        v52 = v0[30];
        v51 = v0[31];
        v53 = v0[26];
        v55 = v0[22];
        v54 = v0[23];
        v56 = v0[21];
        v57 = v0[18];

        v58 = v0[1];

        return v58(0);
      }

      (*(v0[25] + 8))(v0[26], v0[24]);
    }

    else
    {
      v38 = v0[23];
      v9(v38, 1, 1, v0[24]);
      sub_10000A0D4(v38, &qword_100201560, &unk_1001AB910);
    }
  }

  v40 = v0[37];
  v39 = v0[38];
  v42 = v0[34];
  v41 = v0[35];
  v43 = v0[33];
  v45 = v0[30];
  v44 = v0[31];
  v62 = v0[26];
  v64 = v0[23];
  v66 = v0[22];
  v68 = v0[21];
  v69 = v0[18];
  swift_willThrow();
  (*(v41 + 8))(v39, v42);

  v46 = v0[1];

  return v46();
}

uint64_t sub_10004353C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v68 = &v65 - v6;
  v7 = type metadata accessor for Logger();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v67 = &v65 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v65 = &v65 - v20;
  v21 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v73 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v66 = &v65 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v65 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v65 - v31;
  __chkstk_darwin(v30);
  v34 = &v65 - v33;
  v35 = static DIPOIDVerifier.getSpecificCertificateError(_:)();
  v36 = *(v2 + 56);
  v77 = v34;
  v37 = v34;
  v38 = v36;
  v36(v37, 1, 1, v1);
  v74 = v35;
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v71 = *(v2 + 48);
  v72 = v2 + 48;
  if (v71(v32, 1, v1) == 1)
  {
    goto LABEL_2;
  }

  sub_100046360(v32, v29, &qword_100201488, &qword_1001ACFD0);
  v44 = (*(v2 + 88))(v29, v1);
  if (v44 == enum case for DIPError.Code.revokedCertificate(_:))
  {
    v39 = v32;
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Encountered revoked reader auth certificate", v47, 2u);
    }

    (*(v69 + 8))(v16, v70);
    v43 = v77;
    sub_10000A0D4(v77, &qword_100201488, &qword_1001ACFD0);
    v48 = &enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:);
    goto LABEL_19;
  }

  if (v44 == enum case for DIPError.Code.expiredCertificate(_:))
  {
    v39 = v32;
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v43 = v77;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Encountered expired reader auth certificate", v52, 2u);
    }

    (*(v69 + 8))(v19, v70);
    sub_10000A0D4(v43, &qword_100201488, &qword_1001ACFD0);
    v48 = &enum case for DIPError.Code.idcsExpiredReaderAuthCertificate(_:);
    goto LABEL_19;
  }

  v43 = v77;
  if (v44 == enum case for DIPError.Code.notYetValidCertificate(_:))
  {
    v39 = v32;
    v53 = v67;
    defaultLogger()();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Encountered not yet valid reader auth certificate", v56, 2u);
    }

    (*(v69 + 8))(v53, v70);
    sub_10000A0D4(v43, &qword_100201488, &qword_1001ACFD0);
    v48 = &enum case for DIPError.Code.idcsNotYetValidReaderAuthCertificate(_:);
    goto LABEL_19;
  }

  if (v44 == enum case for DIPError.Code.hostNameMismatchForCertificate(_:))
  {
    v39 = v32;
    sub_10000A0D4(v77, &qword_100201488, &qword_1001ACFD0);
    v48 = &enum case for DIPError.Code.idcsHostNameMismatchForReaderAuthCertificate(_:);
LABEL_19:
    (*(v2 + 104))(v43, *v48, v1);
    v38(v43, 0, 1, v1);
    goto LABEL_20;
  }

  if (v44 != enum case for DIPError.Code.idcsUnknownDocumentType(_:))
  {
    (*(v2 + 8))(v29, v1);
LABEL_2:
    v39 = v32;
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Encountered generic reader auth certificate failure", v42, 2u);
    }

    (*(v69 + 8))(v11, v70);
    v43 = v77;
    goto LABEL_20;
  }

  v39 = v32;
  v60 = v65;
  defaultLogger()();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Encountered unknown document type", v63, 2u);
  }

  (*(v69 + 8))(v60, v70);
  swift_getErrorValue();
  v64 = v66;
  Error.dipErrorCode.getter();
  sub_10000A0D4(v43, &qword_100201488, &qword_1001ACFD0);
  sub_100046524(v64, v43, &qword_100201488, &qword_1001ACFD0);
LABEL_20:
  v57 = v73;
  sub_10000A0D4(v39, &qword_100201488, &qword_1001ACFD0);
  sub_100046360(v43, v57, &qword_100201488, &qword_1001ACFD0);
  if (v71(v57, 1, v1) == 1)
  {
    sub_10000A0D4(v57, &qword_100201488, &qword_1001ACFD0);
    (*(v2 + 104))(v75, enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:), v1);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  }

  else
  {
    v58 = v68;
    (*(v2 + 32))(v68, v57, v1);
    (*(v2 + 16))(v75, v58, v1);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

    (*(v2 + 8))(v58, v1);
  }

  return sub_10000A0D4(v43, &qword_100201488, &qword_1001ACFD0);
}

void *sub_100043FA0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v51 = a1;
  v11 = type metadata accessor for Logger();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ISO18013KnownDocTypes();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v49 = a2;
    v21 = objc_opt_self();

    v22 = [v21 standardUserDefaults];
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 stringForKey:v23];

    if (v24)
    {
      v48 = v6;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      defaultLogger()();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v47 = v25;
        v52 = v31;
        *v30 = 136315394;

        v32 = sub_10010150C(a4, a5, &v52);

        *(v30 + 4) = v32;
        *(v30 + 12) = 2080;
        a4 = v47;
        *(v30 + 14) = sub_10010150C(v47, v27, &v52);
        _os_log_impl(&_mh_execute_header, v28, v29, "Overriding relying party identifier %s with %s", v30, 0x16u);
        swift_arrayDestroy();

        (*(v50 + 8))(v14, v11);
      }

      else
      {

        (*(v50 + 8))(v14, v11);

        a4 = v25;
      }
    }

    else
    {
      v27 = a5;
    }

    v41 = v51;
    *v51 = a4;
    v41[1] = v27;
    v42 = enum case for DIPCertUsage.webPresentment(_:);
    v43 = type metadata accessor for DIPCertUsage();
    v44 = *(*(v43 - 8) + 104);
    (v44)(v41, v42, v43);
    v45 = v49;
    *v49 = a4;
    v45[1] = v27;
    v44();
  }

  else
  {
    v33 = v18;
    result = sub_1000353A4(a3);
    if (!v5)
    {
      v35 = a2;
      v36 = result;
      (*(v16 + 104))(v20, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v33);
      v37 = sub_100035954(v20, v36);

      (*(v16 + 8))(v20, v33);
      v38 = type metadata accessor for DIPCertUsage();
      v39 = *(*(v38 - 8) + 104);
      if (v37)
      {
        v39(v51, enum case for DIPCertUsage.iso18013ReaderAuth(_:), v38);
        v40 = &enum case for DIPCertUsage.iso18013ReaderAuthNoNetwork(_:);
      }

      else
      {
        v39(v51, enum case for DIPCertUsage.iso18013ReaderAuthNoOIDCheck(_:), v38);
        v40 = &enum case for DIPCertUsage.iso18013ReaderAuthNoOIDCheckNoNetwork(_:);
      }

      return (v39)(v35, *v40, v38);
    }
  }

  return result;
}

uint64_t sub_100044494()
{
  v1 = SecTrustCopyResult(v0);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  if ([(__CFDictionary *)v1 objectForKey:kSecTrustRevocationChecked])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10000A0D4(v8, &qword_1002004C0, &unk_1001AB940);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 1;
    return v3 & 1;
  }

  v3 = v5 ^ 1;
  return v3 & 1;
}

uint64_t sub_100044578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = type metadata accessor for DIPError();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v11 = type metadata accessor for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome();
  v7[10] = v11;
  v12 = *(v11 - 8);
  v7[11] = v12;
  v13 = *(v12 + 64) + 15;
  v7[12] = swift_task_alloc();
  v14 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  v7[14] = v15;
  v16 = *(v15 - 8);
  v7[15] = v16;
  v17 = *(v16 + 64) + 15;
  v7[16] = swift_task_alloc();
  v18 = type metadata accessor for DIPError.Code();
  v7[17] = v18;
  v19 = *(v18 - 8);
  v7[18] = v19;
  v20 = *(v19 + 64) + 15;
  v7[19] = swift_task_alloc();
  v21 = type metadata accessor for Logger();
  v7[20] = v21;
  v22 = *(v21 - 8);
  v7[21] = v22;
  v23 = *(v22 + 64) + 15;
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000447E8, 0, 0);
}

uint64_t sub_1000447E8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = 0xD000000000000026;
  v2._object = 0x80000001001B4030;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[23];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Simulating OCSP failure due to internal defaults setting", v7, 2u);
    }

    v8 = v0[23];
    v9 = v0[20];
    v10 = v0[21];
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];
    v14 = v0[7];

    (*(v10 + 8))(v8, v9);
    (*(v12 + 104))(v11, enum case for DIPError.Code.internalError(_:), v13);
    sub_10002688C(&_swiftEmptyArrayStorage);
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v32 = v0[23];
    v33 = v0[22];
    v34 = v0[19];
    v35 = v0[16];
    v15 = v0[12];
    v36 = v0[13];
    v16 = v0[10];
    v17 = v0[11];
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[6];
    v21 = v0[7];
    sub_10004353C(v18);
    type metadata accessor for IDCSAnalytics();
    (*(v17 + 104))(v15, enum case for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.revoked(_:), v16);
    static IDCSAnalytics.sendOnlineOCSPOutcomeEvent(documentTypes:outcome:)();
    (*(v17 + 8))(v15, v16);
    swift_allocError();
    (*(v19 + 16))(v22, v18, v21);
    swift_willThrow();

    (*(v19 + 8))(v18, v21);

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[16];
    v26 = v0[13];
    static IDCSSignposts.cryptoRevokedCertificateCheck.getter();
    DIPSignpost.init(_:)();
    v27 = async function pointer to DIPOIDVerifier.verifyChain(_:forUsage:)[1];
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_100044C10;
    v30 = v0[4];
    v29 = v0[5];
    v31 = v0[3];

    return DIPOIDVerifier.verifyChain(_:forUsage:)(v30, v29);
  }
}

uint64_t sub_100044C10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v5 = sub_100044F5C;
  }

  else
  {
    v5 = sub_100044D24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100044D24()
{
  v1 = v0[25];
  if (sub_100044494())
  {
    v2 = v0[22];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Reader certificate might have revoked certificate when making request", v5, 2u);
    }

    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];

    (*(v7 + 8))(v6, v8);
    v22 = 1;
    v9 = &enum case for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.inconclusive(_:);
  }

  else
  {
    v22 = 0;
    v9 = &enum case for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.notRevoked(_:);
  }

  v21 = v0[23];
  v23 = v0[22];
  v24 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v19 = v0[25];
  v20 = v0[14];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v25 = v0[13];
  v26 = v0[9];
  v15 = v0[6];
  v16 = v0[2];
  type metadata accessor for IDCSAnalytics();
  (*(v13 + 104))(v12, *v9, v14);
  static IDCSAnalytics.sendOnlineOCSPOutcomeEvent(documentTypes:outcome:)();

  (*(v13 + 8))(v12, v14);
  *v16 = v22;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v11 + 8))(v10, v20);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100044F5C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];
  v5 = v0[12];
  v19 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  sub_10004353C(v8);
  type metadata accessor for IDCSAnalytics();
  (*(v7 + 104))(v5, enum case for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.revoked(_:), v6);
  static IDCSAnalytics.sendOnlineOCSPOutcomeEvent(documentTypes:outcome:)();
  (*(v7 + 8))(v5, v6);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v9 + 16))(v12, v8, v10);
  swift_willThrow();

  (*(v9 + 8))(v8, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100045160(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), unint64_t a6)
{
  v113 = a5;
  v114 = a6;
  v111 = a3;
  v112 = a4;
  v115 = a2;
  v7 = type metadata accessor for COSESignatureValidator();
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = *(v104 + 64);
  __chkstk_darwin(v7);
  v106 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100004E70(&qword_100201520, &qword_1001AD110);
  v102 = *(v103 - 8);
  v10 = *(v102 + 64);
  __chkstk_darwin(v103);
  v107 = v92 - v11;
  v12 = type metadata accessor for ISO18013PresentmentType();
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = *(v109 + 64);
  __chkstk_darwin(v12);
  v108 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPError.Code();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v101 = v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v100 = v92 - v21;
  v22 = __chkstk_darwin(v20);
  v99 = v92 - v23;
  __chkstk_darwin(v22);
  v121 = v92 - v24;
  v25 = sub_100004E70(&qword_100201528, &qword_1001AB900);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v116 = v92 - v27;
  v28 = type metadata accessor for PublicKeyAlgorithm();
  v29 = *(v28 - 8);
  v118 = v28;
  v119 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v117 = v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Logger();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v98 = v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v97 = v92 - v38;
  __chkstk_darwin(v37);
  v40 = v92 - v39;
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Verifying reader signature", v43, 2u);
  }

  v44 = *(v33 + 8);
  v44(v40, v32);
  v124 = COSE_Sign1.signature.getter();
  v46 = v45;
  v47 = COSE_Sign1.x509Chain.getter();
  if (!v47)
  {
    goto LABEL_8;
  }

  if (!v47[2])
  {

LABEL_8:
    (*(v16 + 104))(v121, enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:), v15);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_9:
    v53 = v124;
    v54 = v46;
    return sub_1000092BC(v53, v54);
  }

  v95 = v15;
  v96 = v46;
  v48 = v47[4];
  v49 = v47[5];
  sub_100009708(v48, v49);

  sub_100009708(v48, v49);
  v50 = v120;
  v51 = decodeCertificate(fromDER:)();
  if (v50)
  {
    sub_1000092BC(v124, v96);
    sub_1000092BC(v48, v49);
    return sub_1000092BC(v48, v49);
  }

  v55 = v51;
  sub_1000092BC(v48, v49);
  sub_1000092BC(v48, v49);
  v56 = v55;
  v57 = SecCertificateRef.rawECPublicKeyData()();
  if (v58 >> 60 == 15)
  {
    (*(v16 + 104))(v121, enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:), v95);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v53 = v124;
    v54 = v96;
    return sub_1000092BC(v53, v54);
  }

  v94 = v57;
  v120 = v58;
  v59 = v116;
  SecCertificateRef.publicKeyAlgorithm()();
  v60 = v118;
  if ((*(v119 + 48))(v59, 1, v118) == 1)
  {
    v46 = v96;
    sub_10000A0D4(v59, &qword_100201528, &qword_1001AB900);
    (*(v16 + 104))(v121, enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:), v95);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v94, v120);

    goto LABEL_9;
  }

  v92[0] = v44;
  v92[1] = a1;
  v93 = v56;
  (*(v119 + 32))(v117, v59, v60);
  v61 = type metadata accessor for CBOREncoder();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v64 = CBOREncoder.init()();
  (*(v109 + 104))(v108, enum case for ISO18013PresentmentType.physical(_:), v110);
  CBOREncoder.presentmentType.setter();
  v111(0);
  sub_10004697C(v112, v113);
  v122 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v123 = v65;
  v66 = v122;
  v67 = v65;
  sub_100009708(v122, v65);
  sub_100046428();
  sub_10004647C();

  v68 = v107;
  CBOREncodedCBOR.init(value:tag:encoder:)();
  v113 = v66;
  v114 = v67;
  v115 = v64;
  v109 = v32;
  v69 = v103;
  v112 = 0;
  v116 = CBOREncodedCBOR.dataValue.getter();
  v111 = v70;
  (*(v102 + 8))(v68, v69);
  v71 = *(v16 + 104);
  v72 = v95;
  (v71)(v121, enum case for DIPError.Code.idcsUnknownReaderAuthAlgorithm(_:), v95);
  (v71)(v99, enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:), v72);
  (v71)(v100, enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:), v72);
  v110 = v16 + 104;
  v108 = v71;
  (v71)(v101, enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:), v72);
  v73 = v96;
  v74 = v111;
  COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
  COSE_Sign1.algorithmIdentifier.getter();
  v75 = v124;
  v76 = v94;
  v77 = v120;
  v78 = v116;
  v79 = v112;
  COSESignatureValidator.validateSignature(signature:publicKeyData:publicKeyAlgorithm:algorithmIdentifier:payload:)();
  if (!v79)
  {
    sub_1000092BC(v75, v73);

    sub_10001C120(v76, v77);
    sub_1000092BC(v78, v74);

    sub_1000092BC(v113, v114);
LABEL_21:
    v91 = v117;
    (*(v104 + 8))(v106, v105);
    return (*(v119 + 8))(v91, v118);
  }

  v80 = [objc_opt_self() standardUserDefaults];
  v81._countAndFlagsBits = 0xD00000000000002ALL;
  v81._object = 0x80000001001B3ED0;
  v82 = NSUserDefaults.internalBool(forKey:)(v81);

  if (v82)
  {
    v83 = v97;
    defaultLogger()();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Ignoring reader signature validation error due to user defaults setting", v86, 2u);
    }

    v87 = v83;
    v88 = v109;
    v89 = v92[0];
    (v92[0])(v87, v109);
    v90 = v98;
    defaultLogger()();
    DIPLogError(_:message:log:)();
    sub_1000092BC(v124, v96);

    sub_10001C120(v94, v120);
    sub_1000092BC(v116, v74);

    sub_1000092BC(v113, v114);
    v89(v90, v88);
    goto LABEL_21;
  }

  v112 = "nauthenticated reader";
  (v108)(v121, enum case for DIPError.Code.internalError(_:), v95);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1000092BC(v124, v96);

  sub_10001C120(v94, v120);
  sub_1000092BC(v116, v74);

  sub_1000092BC(v113, v114);
  (*(v104 + 8))(v106, v105);
  return (*(v119 + 8))(v117, v118);
}

uint64_t sub_1000461BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  sub_100004E70(&qword_100201508, &qword_1001AB888);
  sub_1000464D0(&qword_100201500, &qword_100201508, &qword_1001AB888);
  result = Collection.nilIfEmpty.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_100046244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000462A8(uint64_t a1)
{
  v2 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004630C()
{
  result = qword_1002014B8;
  if (!qword_1002014B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002014B8);
  }

  return result;
}

uint64_t sub_100046360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004E70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000463C8@<X0>(uint64_t *a1@<X8>)
{
  result = COSE_Sign1.x509Chain.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100046428()
{
  result = qword_100201538;
  if (!qword_100201538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201538);
  }

  return result;
}

unint64_t sub_10004647C()
{
  result = qword_100201540;
  if (!qword_100201540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201540);
  }

  return result;
}

uint64_t sub_1000464D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100046524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004E70(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004658C()
{
  v1 = type metadata accessor for DIPOIDVerifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for DIPCertUsage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_100046704(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DIPOIDVerifier() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for DIPCertUsage() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000104D4;

  return sub_100044578(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_1000468A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000468AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SecCertificate(0);
  result = Array<A>.base64EncodedStrings.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10004697C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100046A04@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013ReaderRequest.ItemsRequest.docType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100046A30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ISO18013ReaderRequest.ItemsRequest.docType.setter();
}

uint64_t sub_100046A70(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100046A88(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100046AB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_100046AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100046B8C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100046BA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100046BFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100046C68()
{
  if (qword_1001FFFD0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100205C80 + 16);
  os_unfair_lock_lock((v0 + 72));
  sub_10002171C((v0 + 16), v7);
  os_unfair_lock_unlock((v0 + 72));
  v1 = v7[1];
  v2 = v7[3];
  v3 = v7[5];

  sub_10000ED48(v2);
  v4 = sub_10000ED48(v3);
  if (v1)
  {
    v5 = v1(v4);
    sub_10000ED48(v1);
    return v5;
  }

  else
  {
    type metadata accessor for SELegacyKeystore();

    return swift_allocObject();
  }
}

void sub_100046D78(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1;
  if (!a1)
  {
    v49 = 0;
    v18 = SESLegacyKeyGetOccupiedSlots();
    v19 = v49;
    if (v18)
    {
      v20 = v18;
      sub_100048A3C();
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v19;

      if (!v17)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    v17 = v49;
    goto LABEL_19;
  }

  v49 = 0;
  v12 = a1;
  v13 = SESLegacyKeyGetOccupiedSlotsWithListenerEndpoint();
  v14 = v49;
  if (!v13)
  {
    v17 = v49;

LABEL_19:
    v16 = 0;
    if (!v17)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v15 = v13;
  sub_100048A3C();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v14;

  if (!v17)
  {
LABEL_7:
    if (!v16)
    {
      (*(v4 + 104))(v7, enum case for DIPError.Code.sesLegacyKeyGetOccupiedSlotsError(_:), v3);
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v49 = &_swiftEmptySetSingleton;
    if (v16 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (v21)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_10:
        if (v21 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v21; ++i)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v16 + 8 * i + 32);
          }

          v24 = v23;
          sub_100102364(&v48, [v23 integerValue]);
        }
      }
    }

    return;
  }

LABEL_20:
  v46 = v8;

  defaultLogger()();
  v45 = v17;
  v25 = v17;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v44 = v7;
    v29 = v28;
    v30 = swift_slowAlloc();
    v49 = v30;
    *v29 = 136446210;
    v31 = [v25 debugDescription];
    v43 = v25;
    v32 = v31;
    v33 = v3;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v11;
    v35 = v4;
    v37 = v36;

    v38 = v34;
    v3 = v33;
    v39 = sub_10010150C(v38, v37, &v49);
    v4 = v35;

    *(v29 + 4) = v39;
    v25 = v43;
    _os_log_impl(&_mh_execute_header, v26, v27, "Error from SESLegacyKeyGetOccupiedSlots: %{public}s", v29, 0xCu);
    sub_100005090(v30);

    v7 = v44;

    (*(v47 + 8))(v42, v46);
  }

  else
  {

    (*(v47 + 8))(v11, v46);
  }

  (*(v4 + 104))(v7, enum case for DIPError.Code.sesLegacyKeyGetOccupiedSlotsError(_:), v3);
  v40 = v25;
  sub_10002688C(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void sub_1000473B4(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Logger();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v38);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v13, v14, "SELegacyKeystore deleteKey keySlot = %{public}ld", v15, 0xCu);
  }

  v16 = *(v6 + 8);
  v16(v12, v38);
  v17 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v18 = SESLegacyKeyDelete();
  if (v18)
  {
    v33 = v16;
    v34 = v17;
    v35 = v5;
    v19 = v18;
    defaultLogger()();
    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_10010150C(v25, v26, &v39);
      v32 = v10;
      v28 = v20;
      v29 = v27;

      *(v23 + 4) = v29;
      v20 = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error from SESLegacyKeyDelete: %s", v23, 0xCu);
      sub_100005090(v24);

      v30 = v32;
    }

    else
    {

      v30 = v10;
    }

    v33(v30, v38);
    (*(v36 + 104))(v35, enum case for DIPError.Code.sesLegacyKeyDeleteError(_:), v37);
    v17 = v20;
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_100047814(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v88 = a3;
  v11 = type metadata accessor for DIPError.Code();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  __chkstk_darwin(v11);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = *(v89 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v82 = &v75 - v20;
  __chkstk_darwin(v19);
  v22 = &v75 - v21;
  defaultLogger()();
  sub_100009708(a1, a2);
  sub_100009708(a4, a5);
  v83 = a6;
  v23 = a6;
  v24 = a2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  sub_1000092BC(a1, v24);
  sub_1000092BC(a4, a5);
  v78 = v23;

  v27 = os_log_type_enabled(v25, v26);
  v77 = v18;
  v86 = a4;
  v87 = a5;
  v84 = a1;
  v85 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v92 = v76;
    *v28 = 136315906;
    v29 = Data.base16EncodedString()();
    v30 = sub_10010150C(v29._countAndFlagsBits, v29._object, &v92);

    *(v28 + 4) = v30;
    *(v28 + 12) = 2050;
    *(v28 + 14) = v88;
    *(v28 + 22) = 2080;
    v31 = Data.base16EncodedString()();
    v32 = sub_10010150C(v31._countAndFlagsBits, v31._object, &v92);

    *(v28 + 24) = v32;
    *(v28 + 32) = 2080;
    v33 = v83;
    v91 = v83;
    sub_100004E70(&qword_100201658, &qword_1001ABC18);
    v34 = Optional.debugDescription.getter();
    v36 = sub_10010150C(v34, v35, &v92);

    *(v28 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "SELegacyKeystore signDigest digest = %s, keySlot = %{public}ld, externalizedLAContext = %s, seAccessEndpoint = %s", v28, 0x2Au);
    swift_arrayDestroy();

    v37 = *(v89 + 8);
    v37(v22, v90);
  }

  else
  {

    v37 = *(v89 + 8);
    v37(v22, v90);
    v33 = v83;
  }

  v38 = objc_allocWithZone(NSNumber);
  v39 = [v38 initWithInteger:v88];
  if (v33)
  {
    v40 = v78;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v42 = Data._bridgeToObjectiveC()().super.isa;
    v92 = 0;
    v43 = SESLegacyKeySignPrecomputedDigestWithListenerEndpoint();
  }

  else
  {
    v44 = Data._bridgeToObjectiveC()().super.isa;
    v45 = Data._bridgeToObjectiveC()().super.isa;
    v92 = 0;
    v43 = SESLegacyKeySignPrecomputedDigest();
  }

  v46 = v92;
  if (v46)
  {
    v47 = v46;
    v87 = v43;
    v88 = v39;
    v48 = v46;
    v49 = v82;
    defaultLogger()();
    v50 = v48;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v86 = v37;
      v54 = v53;
      v55 = swift_slowAlloc();
      v92 = v55;
      *v54 = 136446210;
      v56 = [v50 debugDescription];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = sub_10010150C(v57, v59, &v92);

      *(v54 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Error from SESLegacyKeySignPrecomputedDigest: %{public}s", v54, 0xCu);
      sub_100005090(v55);

      v86(v82, v90);
    }

    else
    {

      v37(v49, v90);
    }

    (*(v79 + 104))(v81, enum case for DIPError.Code.sesLegacyKeySignError(_:), v80);
    v73 = v50;
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v39 = v87;
    goto LABEL_15;
  }

  if (!v43)
  {
    (*(v79 + 104))(v81, enum case for DIPError.Code.sesLegacyKeySignError(_:), v80);
    v47 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_15:

    return v47;
  }

  v61 = [v43 signature];
  v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = v77;
  defaultLogger()();
  sub_100009708(v47, v63);
  v65 = Logger.logObject.getter();
  v66 = v43;
  v67 = static os_log_type_t.debug.getter();
  sub_1000092BC(v47, v63);
  if (os_log_type_enabled(v65, v67))
  {
    v68 = swift_slowAlloc();
    v86 = v37;
    v69 = v68;
    v70 = swift_slowAlloc();
    v92 = v70;
    *v69 = 136315138;
    v71 = Data.base16EncodedString()();
    v88 = v39;
    v72 = sub_10010150C(v71._countAndFlagsBits, v71._object, &v92);

    *(v69 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v65, v67, "SESLegacyKeySignPrecomputedDigest signature %s", v69, 0xCu);
    sub_100005090(v70);

    v86(v77, v90);
  }

  else
  {

    v37(v64, v90);
  }

  return v47;
}

uint64_t sub_10004816C(void *a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v82 = a3;
  v12 = type metadata accessor for DIPError.Code();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  __chkstk_darwin(v12);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  v17 = __chkstk_darwin(v15);
  v75 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v80 = &v72 - v20;
  __chkstk_darwin(v19);
  v22 = &v72 - v21;
  defaultLogger()();
  sub_100009708(a1, a2);
  sub_100009708(a4, a5);
  v76 = a6;
  v23 = a6;
  v24 = a5;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v83 = a1;
  v84 = a2;
  sub_1000092BC(a1, a2);
  sub_1000092BC(a4, v24);
  v81 = v23;

  v27 = os_log_type_enabled(v25, v26);
  v74 = v6;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v88 = v73;
    *v28 = 136315906;
    v29 = Data.base16EncodedString()();
    v30 = sub_10010150C(v29._countAndFlagsBits, v29._object, &v88);

    *(v28 + 4) = v30;
    *(v28 + 12) = 2050;
    *(v28 + 14) = v82;
    *(v28 + 22) = 2080;
    v31 = Data.base16EncodedString()();
    v32 = sub_10010150C(v31._countAndFlagsBits, v31._object, &v88);

    *(v28 + 24) = v32;
    *(v28 + 32) = 2080;
    v87 = v76;
    sub_100004E70(&qword_100201658, &qword_1001ABC18);
    v33 = Optional.debugDescription.getter();
    v35 = sub_10010150C(v33, v34, &v88);

    *(v28 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "SELegacyKeystore signDigestSidv digest = %s, keySlot = %{public}ld, externalizedLAContext = %s, seAccessEndpoint = %s", v28, 0x2Au);
    swift_arrayDestroy();
  }

  v36 = *(v85 + 8);
  v36(v22, v86);
  v37 = objc_allocWithZone(NSNumber);
  v38 = [v37 initWithInteger:v82];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v40 = Data._bridgeToObjectiveC()().super.isa;
  v88 = 0;
  v41 = SESLegacyKeySignPrecomputedWithIDV();

  v42 = v88;
  if (v88)
  {
    v83 = v41;
    v84 = v36;
    v82 = v38;
    v43 = v88;
    v44 = v80;
    defaultLogger()();
    v45 = v43;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v88 = v49;
      *v48 = 136446210;
      v50 = [v45 debugDescription];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v45;
      v54 = v53;

      v55 = sub_10010150C(v51, v54, &v88);
      v45 = v52;

      *(v48 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "Error from SESLegacyKeySignPrecomputedWithIDV: %{public}s", v48, 0xCu);
      sub_100005090(v49);

      v56 = v80;
    }

    else
    {

      v56 = v44;
    }

    v84(v56, v86);
    (*(v77 + 104))(v79, enum case for DIPError.Code.sesLegacyKeySignError(_:), v78);
    v70 = v45;
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v38 = v82;
    goto LABEL_11;
  }

  if (!v41)
  {
    (*(v77 + 104))(v79, enum case for DIPError.Code.sesLegacyKeySignError(_:), v78);
    v42 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_11:

    return v42;
  }

  v84 = v36;
  v57 = [v41 signature];
  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v41;
  v60 = v59;

  v61 = v75;
  defaultLogger()();
  sub_100009708(v42, v60);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  sub_1000092BC(v42, v60);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v83 = v58;
    v66 = v65;
    v88 = v65;
    *v64 = 136315138;
    v67 = Data.base16EncodedString()();
    v68 = sub_10010150C(v67._countAndFlagsBits, v67._object, &v88);

    *(v64 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "SESLegacyKeySignPrecomputedWithIDV signature %s", v64, 0xCu);
    sub_100005090(v66);

    v69 = v75;
  }

  else
  {

    v69 = v61;
  }

  v84(v69, v86);
  return v42;
}

unint64_t sub_100048A3C()
{
  result = qword_100201660;
  if (!qword_100201660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100201660);
  }

  return result;
}

uint64_t sub_100048A88(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v91 = a5;
  v94 = a3;
  v89 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  __chkstk_darwin(v7);
  v88 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v82 - v15;
  defaultLogger()();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v93 = a2;
  v84 = v11;
  v85 = v10;
  if (v19)
  {
    v20 = v10;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v95 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10010150C(v94, a4, v95);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storing Key in iCloud keychain key with label %s", v21, 0xCu);
    sub_100005090(v22);

    v23 = *(v11 + 8);
    v24 = v20;
    a2 = v93;
    v23(v16, v24);
  }

  else
  {

    v23 = *(v11 + 8);
    v23(v16, v10);
  }

  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ABC20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = inited + 32;
  *(inited + 40) = v26;
  type metadata accessor for CFString(0);
  v28 = v27;
  *(inited + 72) = v27;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v29;
  *(inited + 120) = v28;
  *(inited + 96) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v30;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v94;
  *(inited + 152) = a4;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v31;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v32;
  v33 = a2 >> 62;
  v82 = v23;
  if ((a2 >> 62) <= 1)
  {
    if (!v33)
    {
      *v95 = v89;
      *&v95[8] = a2;
      v95[10] = BYTE2(a2);
      v95[11] = BYTE3(a2);
      v95[12] = BYTE4(a2);
      v95[13] = BYTE5(a2);

      v34 = kSecClassGenericPassword;
      v35 = kSecAttrAccessibleAfterFirstUnlock;
      v36 = CFDataCreateWithBytesNoCopy(0, v95, BYTE6(a2), kCFAllocatorNull);
      if (!v36)
      {
        goto LABEL_29;
      }

LABEL_27:
      v53 = v36;
      v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      goto LABEL_30;
    }

    v46 = v89;
    v47 = (v89 >> 32) - v89;
    if (v89 >> 32 >= v89)
    {

      v48 = kSecClassGenericPassword;
      v49 = kSecAttrAccessibleAfterFirstUnlock;
      v40 = __DataStorage._bytes.getter();
      if (!v40)
      {
        goto LABEL_20;
      }

      v50 = __DataStorage._offset.getter();
      if (!__OFSUB__(v46, v50))
      {
        v40 += v46 - v50;
LABEL_20:
        v51 = __DataStorage._length.getter();
        if (v51 >= v47)
        {
          v45 = v47;
        }

        else
        {
          v45 = v51;
        }

LABEL_23:
        if (v40)
        {
          v52 = v45;
        }

        else
        {
          v52 = 0;
        }

        v36 = CFDataCreateWithBytesNoCopy(0, v40, v52, kCFAllocatorNull);
        if (!v36)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_48:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v33 == 2)
  {
    v37 = *(v89 + 16);
    v94 = *(v89 + 24);

    v38 = kSecClassGenericPassword;
    v39 = kSecAttrAccessibleAfterFirstUnlock;
    v40 = __DataStorage._bytes.getter();
    if (v40)
    {
      v41 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v41))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v40 += v37 - v41;
    }

    v42 = __OFSUB__(v94, v37);
    v43 = v94 - v37;
    if (!v42)
    {
      v44 = __DataStorage._length.getter();
      if (v44 >= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = v44;
      }

      goto LABEL_23;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v95[6] = 0;
  *v95 = 0;

  v57 = kSecClassGenericPassword;
  v58 = kSecAttrAccessibleAfterFirstUnlock;
  v36 = CFDataCreateWithBytesNoCopy(0, v95, 0, kCFAllocatorNull);
  if (v36)
  {
    goto LABEL_27;
  }

LABEL_29:
  v54 = 0;
  v56 = 0xC000000000000000;
LABEL_30:
  v59 = v92;
  v60 = v91;
  *(inited + 264) = &type metadata for Data;
  *(inited + 240) = v54;
  *(inited + 248) = v56;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v61;
  if (v60 > 1u)
  {
    if (v60 == 2)
    {
      v63 = "(key:label:itemService:)";
      v62 = 0xD000000000000024;
    }

    else
    {
      v63 = "Invalid Syncable Key type";
      v62 = 0xD000000000000015;
    }
  }

  else if (v60)
  {
    v63 = "itokencredentiallist";
    v62 = 0xD000000000000018;
  }

  else
  {
    v62 = 0xD000000000000016;
    v63 = "com.apple.idv.accountkak";
  }

  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v62;
  *(inited + 296) = v63 | 0x8000000000000000;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v64;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = 1;
  v65 = sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  sub_100009278((v59 + 16), *(v59 + 40));
  type metadata accessor for GenericPasswordKeychainWrapper();
  v66 = sub_1000340F4(v65, 0);

  if (v66)
  {
    v67 = SecCopyErrorMessageString(v66, 0);
    if (v67)
    {
      v68 = v67;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      *v95 = v66;
      dispatch thunk of CustomStringConvertible.description.getter();
    }

    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v74 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v75 = *(*v74 + 72);
    v76 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1001AA160;
    v78 = v77 + v76;
    v79 = v78 + v74[14];
    v80 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v81 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v81 - 8) + 104))(v78, v80, v81);
    *(v79 + 24) = &type metadata for Int32;
    *(v79 + 32) = &protocol witness table for Int32;
    *v79 = v66;
    sub_10010C6F8(v77);
    swift_setDeallocating();
    sub_100005128(v78);
    swift_deallocClassInstance();
    (*(v86 + 104))(v88, enum case for DIPError.Code.internalError(_:), v87);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  else
  {
    v69 = v83;
    defaultLogger()();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 67109120;
      _os_log_impl(&_mh_execute_header, v70, v71, "Store Syncable Key Status -> %d", v72, 8u);
    }

    return v82(v69, v85);
  }
}

uint64_t sub_10004949C()
{
  sub_100005090((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1000494F8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v44 = v7;
    v15 = v14;
    v16 = a2;
    v17 = a1;
    v18 = swift_slowAlloc();
    v50 = v18;
    *v15 = 136315138;
    *(v15 + 4) = sub_10010150C(v17, v16, &v50);
    _os_log_impl(&_mh_execute_header, v12, v13, "Reading keychain key with label %s", v15, 0xCu);
    sub_100005090(v18);
    a1 = v17;
    a2 = v16;

    (*(v8 + 8))(v11, v44);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AA170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v20;
  type metadata accessor for CFString(0);
  v22 = v21;
  *(inited + 72) = v21;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v23;
  *(inited + 120) = v22;
  *(inited + 96) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v24;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v25;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v26;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v27;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;

  v28 = kSecClassGenericPassword;
  v29 = kSecAttrAccessibleAfterFirstUnlock;
  v30 = sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  v51 = 0;
  sub_100009278((v48 + 16), *(v48 + 40));
  type metadata accessor for GenericPasswordKeychainWrapper();
  v31 = sub_10003414C(v30, &v51);

  if (v31 == -25300)
  {
    v32 = 0;
    goto LABEL_10;
  }

  if (v31)
  {
    v33 = SecCopyErrorMessageString(v31, 0);
    if (v33)
    {
      v34 = v33;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      LODWORD(v50) = v31;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v35 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v36 = *(*v35 + 72);
    v37 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1001AA160;
    v39 = v38 + v37;
    v40 = v39 + v35[14];
    v41 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v42 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v42 - 8) + 104))(v39, v41, v42);
    *(v40 + 24) = &type metadata for Int32;
    *(v40 + 32) = &protocol witness table for Int32;
    *v40 = v31;
    sub_10010C6F8(v38);
    swift_setDeallocating();
    sub_100005128(v39);
    swift_deallocClassInstance();
    (*(v45 + 104))(v47, enum case for DIPError.Code.internalError(_:), v46);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_16;
  }

  if (!v51 || (v49 = v51, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    (*(v45 + 104))(v47, enum case for DIPError.Code.invalidSyncableKeyType(_:), v46);
    v32 = sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
LABEL_16:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    return v32;
  }

  v32 = v50;
LABEL_10:
  swift_unknownObjectRelease();
  return v32;
}

uint64_t sub_100049CB0(uint64_t a1, unint64_t a2)
{
  v44 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v42 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39[1] = v2;
    v16 = v15;
    v45 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10010150C(v44, a2, &v45);
    _os_log_impl(&_mh_execute_header, v12, v13, "Deleting keychain key with label %s", v14, 0xCu);
    sub_100005090(v16);
  }

  (*(v8 + 8))(v11, v7);
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ABC30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v18;
  type metadata accessor for CFString(0);
  v20 = v19;
  *(inited + 72) = v19;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v21;
  *(inited + 120) = v20;
  *(inited + 96) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v22;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v23;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v44;
  *(inited + 200) = a2;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v24;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;

  v25 = kSecClassGenericPassword;
  v26 = kSecAttrAccessibleAfterFirstUnlock;
  sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  sub_100009278((v43 + 16), *(v43 + 40));
  type metadata accessor for GenericPasswordKeychainWrapper();
  v27 = sub_1000341A4();

  if (v27 != -25300 && v27)
  {
    v29 = SecCopyErrorMessageString(v27, 0);
    if (v29)
    {
      v30 = v29;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      LODWORD(v45) = v27;
      dispatch thunk of CustomStringConvertible.description.getter();
    }

    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v31 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v32 = *(*v31 + 72);
    v33 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1001AA160;
    v35 = v34 + v33;
    v36 = v35 + v31[14];
    v37 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v38 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v38 - 8) + 104))(v35, v37, v38);
    *(v36 + 24) = &type metadata for Int32;
    *(v36 + 32) = &protocol witness table for Int32;
    *v36 = v27;
    sub_10010C6F8(v34);
    swift_setDeallocating();
    sub_100005128(v35);
    swift_deallocClassInstance();
    (*(v40 + 104))(v42, enum case for DIPError.Code.internalError(_:), v41);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10004A2C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v68 = a1;
  v69 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v60 = &v58 - v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  defaultLogger()();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v65 = v8;
  v66 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v59 = v12;
    v22 = v8;
    v23 = v21;
    v70 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10010150C(v69, a3, &v70);
    _os_log_impl(&_mh_execute_header, v17, v18, "Updating Key in iCloud keychain key with label %s", v20, 0xCu);
    sub_100005090(v23);

    v24 = v22;
    v12 = v59;
    v64 = *(v24 + 8);
  }

  else
  {

    v64 = *(v8 + 8);
  }

  v64(v16, v7);
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ABC30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v26;
  type metadata accessor for CFString(0);
  v28 = v27;
  *(inited + 72) = v27;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v29;
  *(inited + 120) = v28;
  *(inited + 96) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v30;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v31;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v32;
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v69;
  *(inited + 248) = a3;

  v33 = kSecClassGenericPassword;
  v34 = kSecAttrAccessibleAfterFirstUnlock;
  sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  sub_100009278((v67 + 16), *(v67 + 40));
  type metadata accessor for GenericPasswordKeychainWrapper();
  v35 = sub_1000341F4();

  if (!v35)
  {
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      v39 = "Update Syncable Key Status -> %d";
      v40 = v44;
      v41 = v36;
      v42 = v45;
      v43 = 8;
      goto LABEL_10;
    }

LABEL_11:
    v46 = v64;
    goto LABEL_12;
  }

  if (v35 == -25299)
  {
    v12 = v60;
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Item already exist on iCloud keychain will skip update";
      v40 = v37;
      v41 = v36;
      v42 = v38;
      v43 = 2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v41, v40, v39, v42, v43);
      v46 = v64;

LABEL_12:

      return v46(v12, v66);
    }

    goto LABEL_11;
  }

  v48 = SecCopyErrorMessageString(v35, 0);
  if (v48)
  {
    v49 = v48;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    LODWORD(v70) = v35;
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v50 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v51 = *(*v50 + 72);
  v52 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1001AA160;
  v54 = v53 + v52;
  v55 = v54 + v50[14];
  v56 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v57 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v57 - 8) + 104))(v54, v56, v57);
  *(v55 + 24) = &type metadata for Int32;
  *(v55 + 32) = &protocol witness table for Int32;
  *v55 = v35;
  sub_10010C6F8(v53);
  swift_setDeallocating();
  sub_100005128(v54);
  swift_deallocClassInstance();
  (*(v61 + 104))(v63, enum case for DIPError.Code.internalError(_:), v62);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

void *sub_10004AA70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10010A6B4(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 56) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_10010A6B4((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v23;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
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
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1000468A0(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1000468A0(v6, v24, 0);
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
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_10004ACB4()
{
  v1 = type metadata accessor for DIPError.Code();
  v85 = *(v1 - 8);
  v2 = *(v85 + 64);
  __chkstk_darwin(v1);
  v82 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v77 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v77 - v13;
  __chkstk_darwin(v12);
  v16 = &v77 - v15;
  v17 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v21, enum case for CoreIDVAssetBundle.CertificateType.terminalAuthRoots(_:), v17);
  v22 = sub_10004C2FC(v21, &off_1001F3FE0);
  v86 = v0;
  if (v0)
  {
    (*(v18 + 8))(v21, v17);
  }

  else
  {
    v23 = v22;
    v77 = v16;
    v78 = v8;
    v79 = v14;
    v80 = v1;
    v81 = v11;
    (*(v18 + 8))(v21, v17);
    v88 = v23;
    v24 = objc_opt_self();
    v25 = [v24 standardUserDefaults];
    v26._object = 0x80000001001B4740;
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    v27 = NSUserDefaults.internalBool(forKey:)(v26);

    v28 = v83;
    v29 = v84;
    if (v27)
    {
      v30 = v77;
      defaultLogger()();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Allowing internal reader authentication test roots", v33, 2u);
      }

      (*(v28 + 8))(v30, v29);
      sub_1000FC91C(&off_1001F40B0);
    }

    v34 = [v24 standardUserDefaults];
    v35._object = 0x80000001001B4740;
    v35._countAndFlagsBits = 0xD00000000000001DLL;
    v36 = NSUserDefaults.internalBool(forKey:)(v35);

    v37 = v81;
    if (v36 || (v38 = [v24 standardUserDefaults], v39 = String._bridgeToObjectiveC()(), v40 = objc_msgSend(v38, "BOOLForKey:", v39), v38, v39, v40))
    {
      v41 = v79;
      defaultLogger()();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Allowing external reader authentication test roots", v44, 2u);
        v41 = v79;
      }

      (*(v28 + 8))(v41, v29);
      sub_1000FC91C(&off_1001F40F0);
    }

    v45 = [v24 standardUserDefaults];
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 stringForKey:v46];

    if (v47)
    {
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      defaultLogger()();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Reader auth root cert injected through user defaults", v53, 2u);
        v37 = v81;
      }

      (*(v28 + 8))(v37, v29);
      v54 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_100100418(0, *(v54 + 2) + 1, 1, v54);
      }

      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      if (v56 >= v55 >> 1)
      {
        v54 = sub_100100418((v55 > 1), v56 + 1, 1, v54);
      }

      *(v54 + 2) = v56 + 1;
      v57 = &v54[16 * v56];
      *(v57 + 4) = v48;
      *(v57 + 5) = v50;
      v88 = v54;
    }

    v58 = [v24 standardUserDefaults];
    v59._countAndFlagsBits = 0xD00000000000001BLL;
    v59._object = 0x80000001001B4610;
    v60 = NSUserDefaults.internalBool(forKey:)(v59);

    v61 = v80;
    v62 = v85;
    if (v60)
    {
      v63 = v78;
      defaultLogger()();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v87 = v67;
        *v66 = 136315138;
        swift_beginAccess();

        v68 = v28;
        v69 = v29;
        v70 = Array.description.getter();
        v72 = v71;

        v73 = sub_10010150C(v70, v72, &v87);

        *(v66 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "All trusted reader roots: %s", v66, 0xCu);
        sub_100005090(v67);
        v62 = v85;

        v61 = v80;

        (*(v68 + 8))(v78, v69);
      }

      else
      {

        (*(v28 + 8))(v63, v29);
      }
    }

    swift_beginAccess();

    v74 = v86;
    v75 = decodeCertificateChain(fromBase64DER:)();
    if (v74)
    {

      (*(v62 + 104))(v82, enum case for DIPError.Code.internalError(_:), v61);
      swift_errorRetain();
      v21 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v21 = v75;
      swift_bridgeObjectRelease_n();
    }
  }

  return v21;
}

char *sub_10004B654()
{
  v1 = type metadata accessor for DIPError.Code();
  v51 = *(v1 - 8);
  v2 = *(v51 + 64);
  __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for CoreIDVAssetBundle.CertificateType.appleIssuerRoots(_:), v12);
  v17 = sub_10004C2FC(v16, _swiftEmptyArrayStorage);
  v18 = v0;
  if (v0)
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v19 = v17;
    v48 = v11;
    v49 = v4;
    v50 = v9;
    (*(v13 + 8))(v16, v12);
    v54[4] = v19;
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    v22._countAndFlagsBits = 0xD000000000000023;
    v22._object = 0x80000001001B45E0;
    v23 = NSUserDefaults.internalBool(forKey:)(v22);

    v25 = v52;
    v24 = v53;
    if (v23)
    {
      v26 = v48;
      defaultLogger()();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Adding internal reader authentication test roots as Apple issuer roots", v29, 2u);
      }

      (*(v25 + 8))(v26, v24);
      sub_1000FC91C(&off_1001F40B0);
    }

    v30 = [v20 standardUserDefaults];
    v31._object = 0x80000001001B4610;
    v31._countAndFlagsBits = 0xD00000000000001BLL;
    v32 = NSUserDefaults.internalBool(forKey:)(v31);

    v33 = v1;
    if (v32)
    {
      v34 = v50;
      defaultLogger()();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v48 = 0;
        v38 = v37;
        v54[0] = swift_slowAlloc();
        v39 = v54[0];
        *v38 = 136315138;
        swift_beginAccess();

        v40 = Array.description.getter();
        v42 = v41;

        v43 = v40;
        v33 = v1;
        v44 = sub_10010150C(v43, v42, v54);

        v45 = v38;
        v18 = v48;
        *(v45 + 1) = v44;
        _os_log_impl(&_mh_execute_header, v35, v36, "All trusted Apple issued reader roots: %s", v45, 0xCu);
        sub_100005090(v39);

        (*(v25 + 8))(v50, v53);
      }

      else
      {

        (*(v25 + 8))(v34, v24);
      }
    }

    swift_beginAccess();

    v46 = decodeCertificateChain(fromBase64DER:)();
    if (v18)
    {

      (*(v51 + 104))(v49, enum case for DIPError.Code.internalError(_:), v33);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      v4 = type metadata accessor for DIPError();
      sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v4 = v46;
      swift_bridgeObjectRelease_n();
    }
  }

  return v4;
}

char *sub_10004BCA8()
{
  v1 = type metadata accessor for DIPError.Code();
  v51 = *(v1 - 8);
  v2 = *(v51 + 64);
  __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for CoreIDVAssetBundle.CertificateType.appleIssuerWebPresentmentRoots(_:), v12);
  v17 = sub_10004C2FC(v16, &off_1001F4120);
  v18 = v0;
  if (v0)
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v19 = v17;
    v48 = v11;
    v49 = v4;
    v50 = v9;
    (*(v13 + 8))(v16, v12);
    v54[4] = v19;
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    v22._countAndFlagsBits = 0xD000000000000023;
    v22._object = 0x80000001001B45E0;
    v23 = NSUserDefaults.internalBool(forKey:)(v22);

    v25 = v52;
    v24 = v53;
    if (v23)
    {
      v26 = v48;
      defaultLogger()();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Adding internal reader authentication test roots as Apple issuer roots", v29, 2u);
      }

      (*(v25 + 8))(v26, v24);
      sub_1000FC91C(&off_1001F4160);
    }

    v30 = [v20 standardUserDefaults];
    v31._object = 0x80000001001B4610;
    v31._countAndFlagsBits = 0xD00000000000001BLL;
    v32 = NSUserDefaults.internalBool(forKey:)(v31);

    v33 = v1;
    if (v32)
    {
      v34 = v50;
      defaultLogger()();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v48 = 0;
        v38 = v37;
        v54[0] = swift_slowAlloc();
        v39 = v54[0];
        *v38 = 136315138;
        swift_beginAccess();

        v40 = Array.description.getter();
        v42 = v41;

        v43 = v40;
        v33 = v1;
        v44 = sub_10010150C(v43, v42, v54);

        v45 = v38;
        v18 = v48;
        *(v45 + 1) = v44;
        _os_log_impl(&_mh_execute_header, v35, v36, "All trusted Apple issued web roots: %s", v45, 0xCu);
        sub_100005090(v39);

        (*(v25 + 8))(v50, v53);
      }

      else
      {

        (*(v25 + 8))(v34, v24);
      }
    }

    swift_beginAccess();

    v46 = decodeCertificateChain(fromBase64DER:)();
    if (v18)
    {

      (*(v51 + 104))(v49, enum case for DIPError.Code.internalError(_:), v33);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      v4 = type metadata accessor for DIPError();
      sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v4 = v46;
      swift_bridgeObjectRelease_n();
    }
  }

  return v4;
}

uint64_t *sub_10004C2FC(uint64_t a1, uint64_t *a2)
{
  v79 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  __chkstk_darwin(v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  v12 = __chkstk_darwin(v10);
  v80 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v78 = &v66 - v15;
  __chkstk_darwin(v14);
  v17 = &v66 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v66 - v24;
  v26 = objc_opt_self();

  v27 = [v26 defaultManager];
  v28 = [v27 URLsForDirectory:5 inDomains:1];

  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v29 + 16))
  {

    v39 = 0;
    v40 = 0xF000000000000000;
LABEL_7:
    v42 = a2;
    goto LABEL_8;
  }

  v77 = a2;
  (*(v19 + 16))(v25, v29 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);

  URL.appendingPathComponent(_:)();
  if ((URL.isFileOnDisk.getter() & 1) == 0)
  {
    v41 = *(v19 + 8);
    v41(v23, v18);
    v41(v25, v18);
    v39 = 0;
    v40 = 0xF000000000000000;
    a2 = v77;
    goto LABEL_7;
  }

  v70 = v19;
  v71 = v25;
  defaultLogger()();
  v31 = v75;
  v30 = v76;
  (*(v75 + 16))(v9, v79, v76);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v68 = v34;
    v69 = swift_slowAlloc();
    v84 = v69;
    *v34 = 136315138;
    v67 = CoreIDVAssetBundle.CertificateType.rawValue.getter();
    v36 = v35;
    (*(v31 + 8))(v9, v30);
    v37 = sub_10010150C(v67, v36, &v84);

    v38 = v68;
    *(v68 + 1) = v37;
    _os_log_impl(&_mh_execute_header, v32, v33, "Looking at mobile asset loaded certificates for type : %s", v38, 0xCu);
    sub_100005090(v69);
  }

  else
  {

    (*(v31 + 8))(v9, v30);
  }

  (*(v81 + 8))(v17, v82);
  v61 = v83;
  v62 = Data.init(contentsOf:options:)();
  if (v61)
  {
    v83 = 0xF000000000000000;
    (*(v72 + 104))(v74, enum case for DIPError.Code.internalError(_:), v73);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(0, v83);

    v42 = *(v70 + 8);
    (v42)(v23, v18);
    (v42)(v71, v18);

    return v42;
  }

  v39 = v62;
  v40 = v63;
  a2 = v77;
  v42 = sub_10004CC64(v79, v77, v62, v63);
  v83 = 0;
  v65 = *(v70 + 8);
  v65(v23, v18);
  v65(v71, v18);

LABEL_8:
  if (sub_1000FD564(v42, a2))
  {
    v43 = v78;
    defaultLogger()();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "No new rootCertificates from cached", v46, 2u);
    }

    (*(v81 + 8))(v43, v82);
  }

  v47 = [objc_opt_self() standardUserDefaults];
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  v48._object = 0x80000001001B4610;
  v49 = NSUserDefaults.internalBool(forKey:)(v48);

  if (v49)
  {
    v50 = v80;
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v79 = v39;
      v55 = v54;
      v84 = v54;
      *v53 = 136315138;

      v56 = Array.description.getter();
      v57 = v40;
      v59 = v58;

      v60 = sub_10010150C(v56, v59, &v84);

      *(v53 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "logging root Certs = %s", v53, 0xCu);
      sub_100005090(v55);

      sub_10001C120(v79, v57);

      (*(v81 + 8))(v80, v82);
    }

    else
    {
      sub_10001C120(v39, v40);

      (*(v81 + 8))(v50, v82);
    }
  }

  else
  {
    sub_10001C120(v39, v40);
  }

  return v42;
}

uint64_t *sub_10004CC64(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v97 = a1;
  v8 = type metadata accessor for DIPError.Code();
  v105 = *(v8 - 8);
  v9 = *(v105 + 64);
  __chkstk_darwin(v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E70(&qword_100201708, &qword_1001ABC90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v96 = &v83 - v14;
  v15 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = *(v100 + 64);
  __chkstk_darwin(v15);
  v99 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100004E70(&qword_1002005E8, &qword_1001AB1A8);
  v95 = *(v103 - 8);
  v18 = *(v95 + 64);
  __chkstk_darwin(v103);
  v102 = &v83 - v19;
  v98 = type metadata accessor for Logger();
  v104 = *(v98 - 8);
  v20 = *(v104 + 64);
  v21 = __chkstk_darwin(v98);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v83 - v25;
  __chkstk_darwin(v24);
  v28 = &v83 - v27;
  v29 = type metadata accessor for CoreIDVAssetBundle();
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29);
  v32 = __chkstk_darwin(v31);
  v111 = &v83 - v35;
  if (a4 >> 60 == 15)
  {

    return a2;
  }

  v88 = v34;
  v89 = v33;
  v90 = v32;
  v91 = v8;
  v92 = v11;
  v36 = type metadata accessor for JSONDecoder();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_100009708(a3, a4);
  JSONDecoder.init()();
  type metadata accessor for CoreIDVAsset();
  sub_100020698(&qword_100200518, &type metadata accessor for CoreIDVAsset);
  v93 = a3;
  v94 = a4;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {

    v39 = *(v105 + 104);
    v40 = enum case for DIPError.Code.internalError(_:);
    a2 = 0x80000001001B46C0;
LABEL_5:
    v39(v92, v40, v91);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10001C120(v93, v94);
    return a2;
  }

  v87 = v110[0];
  CoreIDVAsset.base.getter();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v42 = result;
    v43 = MobileGestalt_copy_buildVersion_obj();

    if (v43)
    {
      v86 = a2;
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      defaultLogger()();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v98;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v85 = v46;
        v51 = v50;
        v52 = swift_slowAlloc();
        v110[0] = v52;
        *v51 = 136315138;
        v53 = v84;
        *(v51 + 4) = sub_10010150C(v84, v45, v110);
        v54 = v47;
        v55 = v85;
        _os_log_impl(&_mh_execute_header, v85, v54, "build version = %s", v51, 0xCu);
        sub_100005090(v52);

        v56 = *(v104 + 8);
        v57 = v28;
        v58 = v49;
        v59 = v53;
      }

      else
      {

        v56 = *(v104 + 8);
        v57 = v28;
        v58 = v49;
        v59 = v84;
      }

      v85 = v56;
      (v56)(v57, v58);
      v64 = v49;
      Regex.init(_regexString:version:)();
      v108 = v59;
      v109 = v45;
      v106 = 0;
      v107 = 0xE000000000000000;
      sub_10004FFDC();
      sub_10004630C();
      sub_100021E6C();
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

      v66 = v110[0];
      v65 = v110[1];
      defaultLogger()();

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v110[0] = v70;
        *v69 = 136315138;
        *(v69 + 4) = sub_10010150C(v66, v65, v110);
        _os_log_impl(&_mh_execute_header, v67, v68, "prefix = %s", v69, 0xCu);
        sub_100005090(v70);
      }

      (v85)(v26, v64);
      v63 = v94;
      a2 = v86;
      v71 = v66;
      v72 = v88;
      sub_10004D8F4(v71, v65, v88);

      (*(v95 + 8))(v102, v103);
      v73 = v89;
      v74 = v111;
      v75 = v90;
      (*(v89 + 8))(v111, v90);
      (*(v73 + 32))(v74, v72, v75);
    }

    else
    {
      defaultLogger()();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "build prefix not available, using default", v62, 2u);
      }

      (*(v104 + 8))(v23, v98);
      v63 = v94;
    }

    v77 = v99;
    v76 = v100;
    v78 = v101;
    (*(v100 + 16))(v99, v97, v101);
    v79 = (*(v76 + 88))(v77, v78);
    if (v79 == enum case for CoreIDVAssetBundle.CertificateType.terminalAuthRoots(_:))
    {
      v80 = v96;
      v81 = v111;
      CoreIDVAssetBundle.terminalAuthRoots.getter();
    }

    else if (v79 == enum case for CoreIDVAssetBundle.CertificateType.issuerRoots(_:))
    {
      v80 = v96;
      v81 = v111;
      CoreIDVAssetBundle.issuerRoots.getter();
    }

    else if (v79 == enum case for CoreIDVAssetBundle.CertificateType.appleIssuerRoots(_:))
    {
      v80 = v96;
      v81 = v111;
      CoreIDVAssetBundle.appleIssuerRoots.getter();
    }

    else
    {
      if (v79 != enum case for CoreIDVAssetBundle.CertificateType.appleIssuerWebPresentmentRoots(_:))
      {
        a2 = 0x80000001001B46C0;
        v82 = enum case for DIPError.Code.internalError(_:);
        v39 = *(v105 + 104);
        v39(v92, enum case for DIPError.Code.internalError(_:), v91);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100020698(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v89 + 8))(v111, v90);
        (*(v100 + 8))(v99, v101);
        v40 = v82;
        goto LABEL_5;
      }

      v80 = v96;
      v81 = v111;
      CoreIDVAssetBundle.appleIssuerWebPresentmentRoots.getter();
    }

    a2 = sub_10004EA40(a2, v80);

    sub_10001C120(v93, v63);
    sub_10000A0D4(v80, &qword_100201708, &qword_1001ABC90);
    (*(v89 + 8))(v81, v90);
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004D8F4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v154 = a3;
  v5 = sub_100004E70(&qword_100201718, &qword_1001ABC98);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v148 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v145 = &v139 - v10;
  __chkstk_darwin(v9);
  v12 = &v139 - v11;
  v155 = type metadata accessor for CoreIDVAssetBundle();
  v151 = *(v155 - 8);
  v13 = *(v151 + 64);
  v14 = __chkstk_darwin(v155);
  v152 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v147 = &v139 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v149 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v150 = &v139 - v23;
  v24 = __chkstk_darwin(v22);
  v144 = &v139 - v25;
  v26 = __chkstk_darwin(v24);
  v146 = &v139 - v27;
  __chkstk_darwin(v26);
  v29 = &v139 - v28;
  defaultLogger()();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v153 = v18;
  if (v32)
  {
    v33 = v17;
    v34 = swift_slowAlloc();
    v35 = a1;
    v36 = swift_slowAlloc();
    v156[0] = v36;
    *v34 = 136315138;
    *(v34 + 4) = sub_10010150C(v35, a2, v156);
    _os_log_impl(&_mh_execute_header, v30, v31, "MobileAsset trying to find asset for %s", v34, 0xCu);
    sub_100005090(v36);
    a1 = v35;

    v17 = v33;
    v18 = v153;
  }

  v37 = *(v18 + 8);
  v37(v29, v17);
  v38 = CoreIDVAsset.iOS.getter();
  v39 = v155;
  if (v38)
  {
    v40 = v38;
    if (!*(v38 + 16))
    {
      goto LABEL_15;
    }

    v41 = sub_100099644(a1, a2);
    if (v42)
    {
      v43 = v17;
      v44 = v147;
      (*(v151 + 16))(v147, *(v40 + 7) + *(v151 + 72) * v41, v39);

      v45 = v146;
      defaultLogger()();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "MobileAsset, found an exact match", v48, 2u);
      }

      v37(v45, v43);
      return (*(v151 + 32))(v154, v44, v39);
    }

    if (*(v40 + 2) && (v55 = sub_100099644(0x746C7561666564, 0xE700000000000000), (v56 & 1) != 0))
    {
      v147 = v17;
      v149 = v40;
      v57 = v151;
      (*(v151 + 16))(v12, *(v40 + 7) + *(v151 + 72) * v55, v39);
      (*(v57 + 56))(v12, 0, 1, v39);
      (*(v57 + 32))(v152, v12, v39);
    }

    else
    {
LABEL_15:
      v149 = v40;
      v147 = v17;
      v57 = v151;
      (*(v151 + 56))(v12, 1, 1, v39);
      CoreIDVAsset.base.getter();
      if ((*(v57 + 48))(v12, 1, v39) != 1)
      {
        sub_10000A0D4(v12, &qword_100201718, &qword_1001ABC98);
      }
    }

    v58 = a1;
    sub_100050030(1);

    v59 = static String._fromSubstring(_:)();
    v61 = v60;

    v62 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v62 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {

      v63 = sub_10004EEBC(v59, v61);
      if ((v64 & 1) == 0)
      {
        v65 = v63;
        if (v63 >= 2)
        {
          v66 = sub_10004F1BC(v58, a2);
          if (v67)
          {
            v68 = v66;
            v69 = v67;
            v146 = v59;
            v70 = Character.isUppercase.getter();
            if (v70)
            {
              v156[0] = v68;
              v156[1] = v69;
              __chkstk_darwin(v70);
              *(&v139 - 2) = v156;

              v142 = v68;
              v71 = sub_100120CF8(sub_10000ED28, (&v139 - 4), &off_1001F4010);

              if (v71)
              {
                v143 = v69;
                v141 = v65;
                v150 = v37;
                v72 = 0x746C7561666564;
                v73 = v149;
                v74 = v149 + 64;
                v75 = 1 << v149[32];
                v76 = -1;
                if (v75 < 64)
                {
                  v76 = ~(-1 << v75);
                }

                v77 = v76 & *(v149 + 8);
                v78 = (v75 + 63) >> 6;

                v79 = 0;
                v80 = _swiftEmptyArrayStorage;
                while (v77)
                {
LABEL_34:
                  v83 = __clz(__rbit64(v77));
                  v77 &= v77 - 1;
                  v84 = (*(v73 + 48) + ((v79 << 10) | (16 * v83)));
                  v65 = *v84;
                  v85 = v84[1];
                  if (*v84 != 0x746C7561666564 || v85 != 0xE700000000000000)
                  {
                    v87 = *v84;
                    v88 = v84[1];
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v156[0] = v80;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_10010A6B4(0, v80[2] + 1, 1);
                        v80 = v156[0];
                      }

                      v91 = v80[2];
                      v90 = v80[3];
                      v92 = v91 + 1;
                      if (v91 >= v90 >> 1)
                      {
                        v140 = (v91 + 1);
                        v139 = v91;
                        sub_10010A6B4((v90 > 1), v91 + 1, 1);
                        v92 = v140;
                        v91 = v139;
                        v80 = v156[0];
                      }

                      v80[2] = v92;
                      v93 = &v80[2 * v91];
                      v93[4] = v65;
                      v93[5] = v85;
                    }
                  }
                }

                v81 = v143;
                while (1)
                {
                  v82 = v79 + 1;
                  if (__OFADD__(v79, 1))
                  {
                    __break(1u);
                    goto LABEL_95;
                  }

                  if (v82 >= v78)
                  {
                    break;
                  }

                  v77 = *&v74[8 * v82];
                  ++v79;
                  if (v77)
                  {
                    v79 = v82;
                    goto LABEL_34;
                  }
                }

                v98 = v80[2];
                if (v98)
                {
                  v156[0] = _swiftEmptyArrayStorage;
                  v99 = v80;
                  sub_10010A6B4(0, v98, 0);
                  v100 = v156[0];
                  v140 = v99;
                  v101 = v99 + 5;
                  v79 = v150;
                  do
                  {
                    v102 = *(v101 - 1);
                    v103 = *v101;

                    sub_100050030(1);
                    v104 = static String._fromSubstring(_:)();
                    v106 = v105;

                    v156[0] = v100;
                    v108 = v100[2];
                    v107 = v100[3];
                    if (v108 >= v107 >> 1)
                    {
                      sub_10010A6B4((v107 > 1), v108 + 1, 1);
                      v100 = v156[0];
                    }

                    v100[2] = v108 + 1;
                    v109 = &v100[2 * v108];
                    v109[4] = v104;
                    v109[5] = v106;
                    v101 += 2;
                    --v98;
                  }

                  while (v98);

                  v81 = v143;
                }

                else
                {

                  v100 = _swiftEmptyArrayStorage;
                  v79 = v150;
                }

                v72 = sub_10010D640(v100);

                v110 = sub_1000A0DEC(v146, v61, v72);
                v80 = v155;
                v65 = v151;
                if (v110)
                {
                  if (v142 == 65 && v81 == 0xE100000000000000 || (v111 = v142, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                  {
                    v112 = 0;
                    goto LABEL_60;
                  }

                  if (v111 == 66 && v81 == 0xE100000000000000 || (v138 = v142, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                  {
                    v112 = 1;
                    goto LABEL_60;
                  }

                  if (v138 == 67 && v81 == 0xE100000000000000 || (v77 = v142, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                  {
                    v112 = 2;
                    goto LABEL_60;
                  }

LABEL_95:
                  if (v77 == 68 && v81 == 0xE100000000000000)
                  {
                    v112 = 3;
LABEL_60:

                    v113 = v112;
                    v114 = v145;
                    sub_10004F23C(v113, v146, v61, &off_1001F4010, v73, v145);

                    if ((*(v65 + 48))(v114, 1, v80) != 1)
                    {
                      (*(v65 + 8))(v152, v80);
                      swift_arrayDestroy();

                      return (*(v65 + 32))(v154, v114, v80);
                    }

                    sub_10000A0D4(v114, &qword_100201718, &qword_1001ABC98);
                    goto LABEL_63;
                  }

                  if (_stringCompareWithSmolCheck(_:_:expecting:)())
                  {
                    v112 = 3;
LABEL_104:
                    v80 = v155;
                    v79 = v150;
                    v65 = v151;
                    goto LABEL_60;
                  }

                  if (v142 == 69 && v143 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v112 = 4;
                    goto LABEL_104;
                  }

                  if (v142 == 70 && v143 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v112 = 5;
                    goto LABEL_104;
                  }

                  if (v142 == 71 && v143 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v112 = 6;
                    goto LABEL_104;
                  }

                  if (v142 == 72 && v143 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v112 = 7;
                    goto LABEL_104;
                  }

                  v79 = v150;
                  v65 = v151;
                }

                else
                {
                }

LABEL_63:
                v115 = 0;
                v116 = v141 - 1;
                v117 = v72 + 56;
                v118 = (v65 + 48);
                while (1)
                {
                  v119 = v116 - 1;
                  if (v116 < 1)
                  {
                    if (v115)
                    {

                      v132 = v144;
                      defaultLogger()();
                      v133 = Logger.logObject.getter();
                      v134 = static os_log_type_t.info.getter();
                      if (os_log_type_enabled(v133, v134))
                      {
                        v135 = swift_slowAlloc();
                        *v135 = 0;
                        _os_log_impl(&_mh_execute_header, v133, v134, "MobileAsset, exhausted trying to find a compatible version, returning default", v135, 2u);
                      }

                      (v79)(v132, v147);
                      return (*(v151 + 32))(v154, v152, v155);
                    }

                    v119 = 0;
                    v115 = 1;
                  }

                  v156[0] = v116;
                  v120 = dispatch thunk of CustomStringConvertible.description.getter();
                  v122 = v121;
                  if (*(v72 + 16) && (v123 = v120, v124 = *(v72 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v125 = Hasher._finalize()(), v126 = -1 << *(v72 + 32), v127 = v125 & ~v126, ((*(v117 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) != 0))
                  {
                    v128 = ~v126;
                    while (1)
                    {
                      v129 = (*(v72 + 48) + 16 * v127);
                      v130 = *v129 == v123 && v129[1] == v122;
                      if (v130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        break;
                      }

                      v127 = (v127 + 1) & v128;
                      if (((*(v117 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
                      {
                        goto LABEL_64;
                      }
                    }

                    v131 = v148;
                    sub_10004F23C(7, v123, v122, &off_1001F4010, v73, v148);

                    if ((*v118)(v131, 1, v155) != 1)
                    {
                      v136 = v151;
                      v137 = v155;
                      (*(v151 + 8))(v152, v155);
                      swift_arrayDestroy();

                      return (*(v136 + 32))(v154, v131, v137);
                    }

                    sub_10000A0D4(v131, &qword_100201718, &qword_1001ABC98);
                  }

                  else
                  {
LABEL_64:
                  }

                  v116 = v119;
                  v79 = v150;
                }
              }
            }
          }
        }
      }
    }

    v94 = v150;
    defaultLogger()();
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "MobileAsset, system gave inconsistent buildVersion, using default", v97, 2u);
    }

    v37(v94, v147);
    return (*(v57 + 32))(v154, v152, v39);
  }

  else
  {
    v50 = v17;
    swift_arrayDestroy();
    v51 = v149;
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "MobileAsset, No deviceType mapped, returning default", v54, 2u);
    }

    v37(v51, v50);
    return CoreIDVAsset.base.getter();
  }
}

uint64_t *sub_10004EA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_100201708, &qword_1001ABC90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for CoreIDVAssetCertificates();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  sub_1000500FC(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000A0D4(v11, &qword_100201708, &qword_1001ABC90);
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v20 = [objc_opt_self() standardUserDefaults];
    v21._object = 0x80000001001B4610;
    v21._countAndFlagsBits = 0xD00000000000001BLL;
    v22 = NSUserDefaults.internalBool(forKey:)(v21);

    if (v22)
    {
      defaultLogger()();
      (*(v13 + 16))(v17, v19, v12);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v36 = v25;
        v38 = swift_slowAlloc();
        v40 = v38;
        *v25 = 136315138;
        v37 = v24;
        CoreIDVAssetCertificates.certificates.getter();
        v35 = Dictionary.Keys.description.getter();
        v27 = v26;

        (*(v13 + 8))(v17, v12);
        v28 = sub_10010150C(v35, v27, &v40);

        v29 = v36;
        *(v36 + 1) = v28;
        _os_log_impl(&_mh_execute_header, v23, v37, "MobileAsset has certificates of keys: %s", v29, 0xCu);
        sub_100005090(v38);
      }

      else
      {

        (*(v13 + 8))(v17, v12);
      }

      (*(v39 + 8))(v7, v4);
    }

    v30 = CoreIDVAssetCertificates.certificates.getter();
    v31 = sub_10004AA70(v30);

    v40 = v31;
    if (CoreIDVAssetCertificates.overrideDefault.getter())
    {
      (*(v13 + 8))(v19, v12);
      return v31;
    }

    else
    {

      sub_1000FC91C(v32);
      (*(v13 + 8))(v19, v12);
      return v40;
    }
  }

  return a1;
}

uint64_t sub_10004EEBC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10004F5DC(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10004F1BC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t sub_10004F23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a6;
  v11 = type metadata accessor for Logger();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  __chkstk_darwin(v11);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CoreIDVAssetBundle();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  result = __chkstk_darwin(v14);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = 0;
  while (1)
  {
    if (a1 <= 0)
    {
      v20 = (a1 != 0) | v18;
      v18 = 1;
      if (v20)
      {
        v32 = v48;
        v41 = v49;
        v33 = v47;
        return (*(v33 + 56))(v41, v18, 1, v32);
      }

      v19 = 0;
    }

    else
    {
      v19 = a1 - 1;
    }

    if (a1 >= *(a4 + 16))
    {
      break;
    }

    v21 = (a4 + 32 + 16 * a1);
    v22 = *v21;
    v23 = v21[1];
    v50[0] = a2;
    v50[1] = a3;

    v24._countAndFlagsBits = v22;
    v24._object = v23;
    String.append(_:)(v24);

    v25 = String.init<A>(_:)();
    v27 = v26;
    if (*(a5 + 16))
    {
      v28 = v25;
      v29 = sub_100099644(v25, v26);
      if (v30)
      {
        v31 = *(a5 + 56);
        v33 = v47;
        v32 = v48;
        v34 = v43;
        (*(v47 + 16))(v43, v31 + *(v47 + 72) * v29, v48);
        v35 = v44;
        defaultLogger()();

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v50[0] = v39;
          *v38 = 136315138;
          v40 = sub_10010150C(v28, v27, v50);

          *(v38 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v36, v37, "MobileAsset, choosing asset from %s", v38, 0xCu);
          sub_100005090(v39);
        }

        else
        {
        }

        (*(v45 + 8))(v35, v46);
        v41 = v49;
        (*(v33 + 32))(v49, v34, v32);
        v18 = 0;
        return (*(v33 + 56))(v41, v18, 1, v32);
      }
    }

    a1 = v19;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_10004F5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10004FBE4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10004FB68(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10004FBE4()
{
  v0 = String.subscript.getter();
  v4 = sub_10004FC64(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10004FC64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10010194C(v9, 0);
  v12 = sub_10004FDBC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10004FDBC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10004FB68(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10004FB68(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10004FFDC()
{
  result = qword_100201710;
  if (!qword_100201710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201710);
  }

  return result;
}

uint64_t sub_100050030(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = String.count.getter();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  String.index(_:offsetBy:limitedBy:)();

  return String.subscript.getter();
}

uint64_t sub_1000500FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201708, &qword_1001ABC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10005016C@<X0>(void *a1@<X8>)
{
  result = sub_100058FA8();
  if (!v1)
  {
    v4 = result;
    v5 = [result newBackgroundContext];

    type metadata accessor for IDCSAsyncDataContext();
    result = swift_allocObject();
    result[2] = v5;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000501DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_100050240()
{
  v1 = *(v0 + 16);
  v4 = 0;
  if ([v1 save:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000502E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000503B0, 0, 0);
}

uint64_t sub_1000503B0()
{
  v1 = v0[9];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0[6] + 16);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  v9 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_100050500;
  v11 = v0[9];
  v12 = v0[5];
  v13 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v11, sub_100050894, v6, v12);
}

uint64_t sub_100050500()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_1000506D8, 0, 0);
  }

  else
  {
    v9 = *(v2 + 72);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1000506D8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_10005073C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100050798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000104D4;

  return sub_1000502E8(a1, a2, a3, a4);
}

uint64_t sub_10005085C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100050894()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

unint64_t sub_1000508BC(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for DIPError.Code();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin();
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64);
  __chkstk_darwin();
  v11 = type metadata accessor for DIPSignpost();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  __chkstk_darwin();
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAuthACL.getter();
  DIPSignpost.init(_:)();
  type metadata accessor for StoredAuthACL();
  v15 = static StoredAuthACL.fetchRequest()();
  [v15 setFetchLimit:1];
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v16 = swift_allocObject();
  v39 = xmmword_1001AA160;
  *(v16 + 16) = xmmword_1001AA160;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100050F18();
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  v17 = NSPredicate.init(format:_:)();
  [v15 setPredicate:v17];

  v18 = *(v4 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v20._object = 0x80000001001B4860;
    v20._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v20);
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 8250;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v38[0] = v46;
    v38[1] = v45;
    (*(v40 + 104))(v42, enum case for DIPError.Code.coreDataErrorFetchAuthACLsWithIdentifierFailed(_:), v41);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v23 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v24 = *(*v23 + 72);
    v25 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v39;
    v27 = v26 + v25;
    v28 = (v26 + v25 + v23[14]);
    v29 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v30 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v30 - 8) + 104))(v27, v29, v30);
    swift_getErrorValue();
    swift_errorRetain();
    v31 = dispatch thunk of Error._code.getter();
    v28[3] = &type metadata for Int;
    v28[4] = &protocol witness table for Int;
    *v28 = v31;
    sub_10010C6F8(v26);
    swift_setDeallocating();
    sub_100005128(v27);
    swift_deallocClassInstance();
    v32 = 0x80000001001B48C0;
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v43 + 8))(v14, v44);
    return v32;
  }

  v34 = v43;
  v33 = v44;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v32 = 0;
    goto LABEL_11;
  }

  v36 = result;
  v37 = _CocoaArrayWrapper.endIndex.getter();
  result = v36;
  if (!v37)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(result + 32);
LABEL_8:
    v32 = v35;

LABEL_11:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v34 + 8))(v14, v33);
    return v32;
  }

  __break(1u);
  return result;
}

unint64_t sub_100050ECC()
{
  result = qword_100201870;
  if (!qword_100201870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100201870);
  }

  return result;
}

unint64_t sub_100050F18()
{
  result = qword_100201880;
  if (!qword_100201880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201880);
  }

  return result;
}

uint64_t sub_100050F6C()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v29 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost.Config();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v28 = type metadata accessor for DIPSignpost();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v28);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAllAuthACLs.getter();
  DIPSignpost.init(_:)();
  type metadata accessor for StoredAuthACL();
  v12 = static StoredAuthACL.fetchRequest()();
  v13 = *(v0 + 16);
  v14 = NSManagedObjectContext.fetch<A>(_:)();

  if (v1)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v15._countAndFlagsBits = 0xD00000000000001ELL;
    v15._object = 0x80000001001B4920;
    String.append(_:)(v15);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v26[0] = v31;
    v26[1] = v30;
    (*(v3 + 104))(v29, enum case for DIPError.Code.coreDataErrorFetchAuthACLsFailed(_:), v2);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v16 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v17 = *(*v16 + 72);
    v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001AA160;
    v27 = v14;
    v20 = v19 + v18;
    v21 = (v19 + v18 + v16[14]);
    v22 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v23 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v23 - 8) + 104))(v20, v22, v23);
    swift_getErrorValue();
    swift_errorRetain();
    v24 = dispatch thunk of Error._code.getter();
    v21[3] = &type metadata for Int;
    v21[4] = &protocol witness table for Int;
    *v21 = v24;
    sub_10010C6F8(v19);
    swift_setDeallocating();
    sub_100005128(v20);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v8 + 8))(v11, v28);
    return v27;
  }

  else
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v8 + 8))(v11, v28);
  }

  return v14;
}

uint64_t sub_100051424(unint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPSignpost.Config();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for DIPSignpost();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseDeleteAuthACL.getter();
  DIPSignpost.init(_:)();
  v15 = sub_100050F6C();
  v49 = v11;
  if (v3)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v16._object = 0x80000001001B48E0;
    v16._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v16);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v50 = v53;
    v51 = v52;
    (*(v5 + 104))(v8, enum case for DIPError.Code.coreDataErrorDeleteAuthACLsFailed(_:), v4);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v17 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v18 = *(*v17 + 72);
    v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1001AA160;
    v21 = (v20 + v19 + v17[14]);
    v22 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v23 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v23 - 8) + 104))(v20 + v19, v22, v23);
    swift_getErrorValue();
    swift_errorRetain();
    v24 = dispatch thunk of Error._code.getter();
    v21[3] = &type metadata for Int;
    v21[4] = &protocol witness table for Int;
    *v21 = v24;
    sub_10010C6F8(v20);
    swift_setDeallocating();
    sub_100005128(v20 + v19);
    swift_deallocClassInstance();
    v25 = "error fetching auth ACL ";
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v48 + 8))(v14, v49);
  }

  else
  {
    v26 = v15;
    v44 = v2;
    v45 = 0;
    v46 = v14;
    if (v15 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v28 = 0;
      v47 = v26 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v28 >= *(v47 + 16))
          {
            goto LABEL_22;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v32 = [v29 identifier];
        if (v32)
        {
          v33 = v32;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          if (v34 == v50 && v36 == v51)
          {

LABEL_20:

            [*(v44 + 16) deleteObject:v30];

            LOBYTE(v25) = 1;
            goto LABEL_25;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_20;
          }
        }

        ++v28;
        if (v31 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    LOBYTE(v25) = 0;
LABEL_25:
    v40 = v48;
    v39 = v49;
    v41 = v46;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v40 + 8))(v41, v39);
  }

  return v25 & 1;
}

uint64_t sub_1000519F8(uint64_t a1)
{
  v2 = type metadata accessor for DIPSignpost.Config();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v22 = type metadata accessor for DIPSignpost();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v22);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredentialInStates.getter();
  DIPSignpost.init(_:)();
  v8 = *(a1 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v23 = &_swiftEmptyArrayStorage;
    sub_10010A718(0, v8, 0);
    v9 = v23;
    v10 = (a1 + 32);
    v11 = v23[2];
    do
    {
      v13 = *v10++;
      v12 = v13;
      v23 = v9;
      v14 = v9[3];
      if (v11 >= v14 >> 1)
      {
        sub_10010A718((v14 > 1), v11 + 1, 1);
        v9 = v23;
      }

      v9[2] = v11 + 1;
      v9[v11++ + 4] = v12;
      --v8;
    }

    while (v8);
  }

  type metadata accessor for StoredCredential();
  v15 = static StoredCredential.fetchRequest()();
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001AA160;
  *(v16 + 56) = sub_100004E70(&qword_1002018D8, &qword_1001ABD58);
  *(v16 + 64) = sub_100055454(&unk_1002018E0, &qword_1002018D8, &qword_1001ABD58);
  *(v16 + 32) = v9;
  v17 = NSPredicate.init(format:_:)();
  [v15 setPredicate:v17];

  v18 = *(v21[1] + 16);
  v19 = NSManagedObjectContext.fetch<A>(_:)();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v7, v22);
  return v19;
}

uint64_t sub_100051CD4()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v29 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost.Config();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v28 = type metadata accessor for DIPSignpost();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v28);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAllCredentials.getter();
  DIPSignpost.init(_:)();
  type metadata accessor for StoredCredential();
  v12 = static StoredCredential.fetchRequest()();
  v13 = *(v0 + 16);
  v14 = NSManagedObjectContext.fetch<A>(_:)();

  if (v1)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v15._countAndFlagsBits = 0xD000000000000020;
    v15._object = 0x80000001001B4A10;
    String.append(_:)(v15);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v26[0] = v31;
    v26[1] = v30;
    (*(v3 + 104))(v29, enum case for DIPError.Code.coreDataErrorFetchAllCredentialsFailed(_:), v2);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v16 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v17 = *(*v16 + 72);
    v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001AA160;
    v27 = v14;
    v20 = v19 + v18;
    v21 = (v19 + v18 + v16[14]);
    v22 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v23 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v23 - 8) + 104))(v20, v22, v23);
    swift_getErrorValue();
    swift_errorRetain();
    v24 = dispatch thunk of Error._code.getter();
    v21[3] = &type metadata for Int;
    v21[4] = &protocol witness table for Int;
    *v21 = v24;
    sub_10010C6F8(v19);
    swift_setDeallocating();
    sub_100005128(v20);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v8 + 8))(v11, v28);
    return v27;
  }

  else
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v8 + 8))(v11, v28);
  }

  return v14;
}

unint64_t sub_10005218C(uint64_t a1, void *a2)
{
  v38 = type metadata accessor for DIPError.Code();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost.Config();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for DIPSignpost();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredential.getter();
  DIPSignpost.init(_:)();
  type metadata accessor for StoredCredential();
  v13 = static StoredCredential.fetchRequest()();
  [v13 setFetchLimit:1];
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v14 = swift_allocObject();
  v37 = xmmword_1001AA160;
  *(v14 + 16) = xmmword_1001AA160;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100050F18();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = NSPredicate.init(format:_:)();
  [v13 setPredicate:v15];

  v16 = v41;
  v17 = *(v40 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v16)
  {

    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    v19._object = 0x80000001001B4980;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v40 = v45;
    v41 = v44;
    (*(v4 + 104))(v39, enum case for DIPError.Code.coreDataErrorFetchCredentialFailed(_:), v38);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v22 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v23 = *(*v22 + 72);
    v24 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v37;
    v26 = v25 + v24;
    v27 = (v25 + v24 + v22[14]);
    v28 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v29 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v29 - 8) + 104))(v26, v28, v29);
    swift_getErrorValue();
    swift_errorRetain();
    v30 = dispatch thunk of Error._code.getter();
    v27[3] = &type metadata for Int;
    v27[4] = &protocol witness table for Int;
    *v27 = v30;
    sub_10010C6F8(v25);
    swift_setDeallocating();
    sub_100005128(v26);
    swift_deallocClassInstance();
    v31 = 0x80000001001B49E0;
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v42 + 8))(v12, v43);
    return v31;
  }

  v33 = v42;
  v32 = v43;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v31 = 0;
    goto LABEL_11;
  }

  v35 = result;
  v36 = _CocoaArrayWrapper.endIndex.getter();
  result = v35;
  if (!v36)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(result + 32);
LABEL_8:
    v31 = v34;

LABEL_11:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v33 + 8))(v12, v32);
    return v31;
  }

  __break(1u);
  return result;
}

void *sub_100052798(uint64_t a1)
{
  type metadata accessor for StoredCredential();
  v2 = static StoredCredential.fetchRequest()();
  sub_100004E70(&qword_100200220, &unk_1001AA540);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001ABD30;
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001AA160;
  *(v4 + 56) = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
  *(v4 + 64) = sub_100055454(&qword_1002018A0, &qword_100201D00, &unk_1001ACF10);
  *(v4 + 32) = a1;

  *(v3 + 32) = NSPredicate.init(format:_:)();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001AA160;
  *(v5 + 56) = &type metadata for UInt;
  *(v5 + 64) = &protocol witness table for UInt;
  *(v5 + 32) = 2;
  *(v3 + 40) = NSPredicate.init(format:_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  v8 = v2;
  [v2 setPredicate:v7];

  v9 = *(v29 + 16);
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v30)
  {
    v11 = v10;
    v12 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
LABEL_24:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
LABEL_4:
        v14 = 0;
        v31 = _swiftEmptyArrayStorage;
        do
        {
          v15 = v14;
          while (1)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v15 >= *(v12 + 16))
              {
                goto LABEL_23;
              }

              v16 = *(v11 + 8 * v15 + 32);
              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            v17 = v16;
            v18 = [v17 credentialIdentifier];
            if (v18)
            {
              break;
            }

            ++v15;
            if (v14 == v13)
            {
              goto LABEL_26;
            }
          }

          v28 = v8;
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v21;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v22 = v31;
          }

          else
          {
            v22 = sub_100100418(0, *(v31 + 2) + 1, 1, v31);
          }

          v24 = *(v22 + 2);
          v23 = *(v22 + 3);
          if (v24 >= v23 >> 1)
          {
            v22 = sub_100100418((v23 > 1), v24 + 1, 1, v22);
          }

          *(v22 + 2) = v24 + 1;
          v31 = v22;
          v25 = &v22[16 * v24];
          v8 = v28;
          *(v25 + 4) = v20;
          *(v25 + 5) = v27;
        }

        while (v14 != v13);
        goto LABEL_26;
      }
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_4;
      }
    }

    v31 = _swiftEmptyArrayStorage;
LABEL_26:

    v2 = v31;
  }

  return v2;
}

unint64_t sub_100052B58(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPSignpost.Config();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for DIPSignpost();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredentialIdentifiers.getter();
  v43 = v14;
  DIPSignpost.init(_:)();
  v15 = objc_allocWithZone(NSFetchRequest);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithEntityName:v16];

  [v17 setResultType:2];
  sub_100004E70(&qword_1002018A8, &unk_1001ABD40);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001AAE50;
  *(v18 + 32) = 0xD000000000000014;
  *(v18 + 40) = 0x80000001001B4A60;
  *(v18 + 88) = &type metadata for String;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = 0x6F69746974726170;
  *(v18 + 72) = 0xE90000000000006ELL;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setPropertiesToFetch:isa];

  v41 = a1;
  if (*(a1 + 16))
  {
    v40 = sub_100050ECC();
    sub_100004E70(&qword_100201868, &unk_1001ABDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1001AA160;
    *(v20 + 56) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    *(v20 + 64) = sub_100055454(&qword_1002018C0, &qword_100201580, &qword_1001AB980);
    *(v20 + 32) = v41;

    v21 = NSPredicate.init(format:_:)();
    [v17 setPredicate:v21];
  }

  v22 = *(v3 + 16);
  sub_100004E70(&unk_1002018B0, &qword_1001ABD50);
  v23 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    v41 = v11;

    v39 = 0x80000001001B4AA0;
    v40 = 0x80000001001B49A0;
    v24 = v2;
  }

  else
  {
    v35 = sub_100053340(v23);

    if (v35)
    {
      v24 = sub_100054F10(v35);

      v36 = v43;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v44 + 8))(v36, v11);
      return v24;
    }

    v41 = v11;
    (*(v6 + 104))(v42, enum case for DIPError.Code.coreDataErrorFetchIdentifiersUnexpectedResultType(_:), v5);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    v24 = swift_allocError();
    v39 = 0x80000001001B4AA0;
    v40 = 0x80000001001B49A0;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v25._countAndFlagsBits = 0xD00000000000001CLL;
  v25._object = 0x80000001001B4A80;
  String.append(_:)(v25);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v38 = v45;
  (*(v6 + 104))(v42, enum case for DIPError.Code.coreDataErrorFetchIdentifiersFailed(_:), v5);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v26 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v27 = *(*v26 + 72);
  v28 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001AA160;
  v30 = (v29 + v28 + v26[14]);
  v31 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v32 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v32 - 8) + 104))(v29 + v28, v31, v32);
  swift_getErrorValue();
  swift_errorRetain();
  v33 = dispatch thunk of Error._code.getter();
  v30[3] = &type metadata for Int;
  v30[4] = &protocol witness table for Int;
  *v30 = v33;
  sub_10010C6F8(v29);
  swift_setDeallocating();
  sub_100005128(v29 + v28);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v34 = v43;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v44 + 8))(v34, v41);
  return v24;
}

void *sub_100053340(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_10010A898(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      sub_100004E70(&unk_1002018B0, &qword_1001ABD50);
      sub_100004E70(&qword_1002018D0, &qword_1001AAEA0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_10010A898((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v11;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

unint64_t sub_1000534F4(uint64_t a1, unint64_t a2, const char *a3)
{
  v5 = v4;
  v6 = v3;
  v52 = a2;
  v53 = a3;
  v8 = type metadata accessor for DIPError.Code();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost.Config();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for DIPSignpost();
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredentialIdentifiersByDocType.getter();
  v54 = v16;
  DIPSignpost.init(_:)();
  v17 = objc_allocWithZone(NSFetchRequest);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithEntityName:v18];

  [v19 setResultType:2];
  sub_100004E70(&qword_1002018A8, &unk_1001ABD40);
  v20 = swift_allocObject();
  v48 = xmmword_1001AAE50;
  *(v20 + 16) = xmmword_1001AAE50;
  *(v20 + 32) = 0xD000000000000014;
  *(v20 + 40) = 0x80000001001B4A60;
  *(v20 + 88) = &type metadata for String;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = 0x6F69746974726170;
  *(v20 + 72) = 0xE90000000000006ELL;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setPropertiesToFetch:isa];

  v22 = a1;
  v23 = *(a1 + 16);
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  if (v23)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v48;
    *(v24 + 56) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    *(v24 + 64) = sub_100055454(&qword_1002018C0, &qword_100201580, &qword_1001AB980);
    *(v24 + 32) = v22;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = sub_100050F18();
    v25 = v53;
    *(v24 + 72) = v52;
    *(v24 + 80) = v25;
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1001AA160;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100050F18();
    v27 = v53;
    *(v26 + 32) = v52;
    *(v26 + 40) = v27;
  }

  v28 = NSPredicate.init(format:_:)();
  [v19 setPredicate:v28];

  v29 = *(v6 + 16);
  sub_100004E70(&unk_1002018B0, &qword_1001ABD50);
  v30 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {

    v52 = 0x80000001001B4BB0;
    v53 = 0x80000001001B49A0;
    v32 = v49;
    v31 = v50;
  }

  else
  {
    v45 = sub_100053340(v30);

    if (v45)
    {
      v34 = sub_100054F10(v45);

      v46 = v54;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v55 + 8))(v46, v56);
      return v34;
    }

    v53 = "fetchCredentialIdentifiers(in:)";
    v32 = v49;
    v31 = v50;
    (*(v49 + 104))(v51, enum case for DIPError.Code.coreDataErrorFetchIdentifiersUnexpectedResultType(_:), v50);
    *&v48 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v52 = 0x80000001001B4BB0;
    v53 = 0x80000001001B49A0;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v33._countAndFlagsBits = 0xD00000000000001CLL;
  v33._object = 0x80000001001B4A80;
  String.append(_:)(v33);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v50 = v57;
  v34 = v51;
  (*(v32 + 104))(v51, enum case for DIPError.Code.coreDataErrorFetchIdentifiersFailed(_:), v31);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v35 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v36 = *(*v35 + 72);
  v37 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1001AA160;
  v39 = v38 + v37;
  v40 = (v38 + v37 + v35[14]);
  v41 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v42 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v42 - 8) + 104))(v39, v41, v42);
  swift_getErrorValue();
  swift_errorRetain();
  v43 = dispatch thunk of Error._code.getter();
  v40[3] = &type metadata for Int;
  v40[4] = &protocol witness table for Int;
  *v40 = v43;
  sub_10010C6F8(v38);
  swift_setDeallocating();
  sub_100005128(v39);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v44 = v54;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v55 + 8))(v44, v56);
  return v34;
}