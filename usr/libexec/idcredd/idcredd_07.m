uint64_t sub_1000C2304(char a1)
{
  v2 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 581) = a1;

  return _swift_task_switch(sub_1000C2404, 0, 0);
}

uint64_t sub_1000C2404()
{
  if (*(v0 + 581) == 1)
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    sub_100046360(*(v0 + 24) + *(*(v0 + 496) + 20), v1, &qword_100202370, &qword_1001ACE68);
    v4 = (*(v3 + 48))(v1, 1, v2);
    v5 = *(v0 + 176);
    if (v4 != 1)
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 152);
      v39 = *(v0 + 160);
      v41 = *(v0 + 144);
      v42 = *(v40 + 32);
      v42(v39, *(v0 + 176), v41);
      v42(v38, v39, v41);
      (*(v40 + 56))(v38, 0, 1, v41);
      goto LABEL_11;
    }

    v6 = *(v0 + 432);
    sub_10000A0D4(*(v0 + 176), &qword_100202370, &qword_1001ACE68);
    v7 = [v6 responseEncryptionParameters];
    v8 = DCPresentmentResponseEncryptionParameters.sessionTranscriptData.getter();
    v10 = v9;

    if (v10 >> 60 == 15)
    {
      (*(*(v0 + 152) + 56))(*(v0 + 184), 1, 1, *(v0 + 144));
LABEL_11:
      v43 = swift_task_alloc();
      *(v0 + 512) = v43;
      *v43 = v0;
      v43[1] = sub_1000C2E84;
      v44 = *(v0 + 472);
      v45 = *(v0 + 432);
      v46 = *(v0 + 280);
      v47 = *(v0 + 184);
      v48 = *(v0 + 32);

      return sub_1000CDFB4(v45, v46, v44, v47);
    }

    v73 = *(v0 + 440);
    v74 = *(v0 + 168);
    v75 = *(v0 + 144);
    v76 = *(v0 + 32);
    sub_1000D8304();
    sub_1000DC984(&qword_1002029A0, &type metadata accessor for ISO18013SessionTranscript);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    if (!v73)
    {
      v80 = *(v0 + 184);
      v81 = *(v0 + 168);
      v82 = *(v0 + 144);
      v83 = *(v0 + 152);

      sub_10001C120(v8, v10);
      (*(v83 + 56))(v81, 0, 1, v82);
      sub_100046524(v81, v80, &qword_100202370, &qword_1001ACE68);
      goto LABEL_11;
    }

    v77 = *(v0 + 472);
    v78 = *(v0 + 432);
    v79 = *(v0 + 280);

    sub_10001C120(v8, v10);

    sub_1000DC488(v79, type metadata accessor for PresentmentProposal);
    v103 = *(v0 + 488) != *(v0 + 480);
  }

  else
  {
    v11 = *(v0 + 472);
    v12 = *(v0 + 432);
    v13 = *(v0 + 280);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);

    (*(v17 + 104))(v15, enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:), v16);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000DC488(v13, type metadata accessor for PresentmentProposal);
    v103 = *(v0 + 488) != *(v0 + 480);
  }

  v101 = *(v0 + 448) != 0;
  v109 = *(v0 + 464);
  v110 = *(v0 + 456);
  v107 = *(v0 + 580);
  v18 = *(v0 + 312);
  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 88);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  v24 = swift_allocError();
  v25 = *(v22 + 16);
  v25(v26, v21, v23);
  *v18 = v24;
  (*(v20 + 104))(v18, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v19);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  v29 = *(v0 + 88);
  v30 = *(v0 + 32);
  v105 = *(*(v0 + 296) + 32);
  v105(*(v0 + 336), *(v0 + 312), *(v0 + 288));
  swift_allocError();
  v25(v31, v27, v29);
  swift_willThrow();

  (*(v28 + 8))(v27, v29);
  if (v107 == 1 && !*(v30 + 16))
  {
    v32 = *(v0 + 48);
    v33 = *(v0 + 24);
    v34 = type metadata accessor for PresentmentRequestInterpretation(0);
    sub_100046360(v33 + *(v34 + 24), v32, &qword_100202378, &unk_1001ACE70);
    v35 = type metadata accessor for IdentityReaderAuthenticator(0);
    v36 = (*(*(v35 - 8) + 48))(v32, 1, v35);
    v37 = *(v0 + 48);
    if (v36 == 1)
    {
      sub_10000A0D4(v37, &qword_100202378, &unk_1001ACE70);
      v111 = 0;
    }

    else
    {
      v50 = *(v37 + *(v35 + 32));
      sub_1000DC488(v37, type metadata accessor for IdentityReaderAuthenticator);
      v111 = v50 == 0;
    }

    v51 = *(v0 + 328);
    v52 = *(v0 + 320);
    v54 = *(v0 + 296);
    v53 = *(v0 + 304);
    v55 = *(v0 + 288);
    v56 = *(v0 + 40);
    v57 = *(v54 + 16);
    v57(v51, *(v0 + 336), v55);
    v58 = type metadata accessor for TaskPriority();
    (*(*(v58 - 8) + 56))(v56, 1, 1, v58);
    v57(v52, v51, v55);
    v59 = (*(v54 + 80) + 48) & ~*(v54 + 80);
    v60 = v59 + v53;
    v61 = swift_allocObject();
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    *(v61 + 4) = v110;
    *(v61 + 5) = v109;
    v105(&v61[v59], v52, v55);
    v62 = &v61[v60];
    *v62 = v101;
    v62[1] = v103;
    v62[2] = v111;
    sub_100032EBC(v110, v109);
    sub_1000BDFA8(0, 0, v56, &unk_1001AD1F0, v61);

    (*(v54 + 8))(v51, v55);
  }

  v63 = *(v0 + 400);
  v64 = *(v0 + 408);
  v65 = *(v0 + 392);
  v67 = *(v0 + 360);
  v66 = *(v0 + 368);
  v68 = *(v0 + 352);
  v69 = *(v0 + 336);
  v84 = *(v0 + 344);
  v85 = *(v0 + 328);
  v86 = *(v0 + 320);
  v87 = *(v0 + 312);
  v71 = *(v0 + 288);
  v70 = *(v0 + 296);
  v88 = *(v0 + 280);
  v89 = *(v0 + 272);
  v90 = *(v0 + 264);
  v91 = *(v0 + 248);
  v92 = *(v0 + 224);
  v93 = *(v0 + 200);
  v94 = *(v0 + 192);
  v95 = *(v0 + 184);
  v96 = *(v0 + 176);
  v97 = *(v0 + 168);
  v98 = *(v0 + 160);
  v99 = *(v0 + 136);
  v100 = *(v0 + 112);
  v102 = *(v0 + 104);
  v104 = *(v0 + 80);
  v106 = *(v0 + 56);
  v108 = *(v0 + 48);
  v112 = *(v0 + 40);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(v110, v109);
  (*(v70 + 8))(v69, v71);
  (*(v67 + 8))(v66, v68);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1000C2E84(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 512);
  v5 = *v3;
  v5[65] = a1;
  v5[66] = a2;
  v5[67] = v2;

  if (v2)
  {
    v6 = v5[59];

    return _swift_task_switch(sub_1000C5B38, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v5[68] = v7;
    *v7 = v5;
    v7[1] = sub_1000C300C;
    v8 = v5[35];
    v9 = v5[4];
    v10 = v5[54];

    return sub_1000C054C(v10, v8);
  }
}

uint64_t sub_1000C300C()
{
  v1 = *(*v0 + 544);
  v3 = *v0;

  return _swift_task_switch(sub_1000C3108, 0, 0);
}

uint64_t sub_1000C3108()
{
  v1 = objc_opt_self();
  *(v0 + 552) = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = 0xD000000000000026;
  v3._object = 0x80000001001B9580;
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 400);
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Sleeping for 10 seconds before returning presentment response due to user defaults setting", v8, 2u);
    }

    v9 = *(v0 + 416);
    v10 = *(v0 + 400);
    v11 = *(v0 + 376);
    v12 = *(v0 + 384);
    v13 = *(v0 + 136);

    v9(v10, v11);
    static Clock<>.continuous.getter();
    v14 = swift_task_alloc();
    *(v0 + 560) = v14;
    *v14 = v0;
    v14[1] = sub_1000C4104;
    v15 = *(v0 + 136);

    return (sub_1000D8A28)(0x8AC7230489E80000, 0, 0, 0, 1);
  }

  else
  {
    v17 = [*(v0 + 552) standardUserDefaults];
    v18._object = 0x80000001001B95B0;
    v18._countAndFlagsBits = 0xD000000000000028;
    v19 = NSUserDefaults.internalBool(forKey:)(v18);

    if (v19)
    {
      v20 = *(v0 + 472);
      v21 = *(v0 + 392);

      defaultLogger()();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Throwing error at end of presentment due to internal defaults setting", v24, 2u);
      }

      v157 = *(v0 + 520);
      v161 = *(v0 + 528);
      v165 = *(v0 + 432);
      v25 = *(v0 + 416);
      v27 = *(v0 + 384);
      v26 = *(v0 + 392);
      v28 = *(v0 + 376);
      v144 = *(v0 + 336);
      v147 = *(v0 + 296);
      v150 = *(v0 + 288);
      v179 = *(v0 + 184);
      v184 = *(v0 + 280);
      v29 = *(v0 + 88);
      v138 = *(v0 + 112);
      v141 = *(v0 + 96);
      v30 = *(v0 + 72);
      v31 = *(v0 + 80);
      v32 = *(v0 + 64);

      v25(v26, v28);
      v33 = enum case for DIPError.Code.internalError(_:);
      (*(v30 + 104))(v31, enum case for DIPError.Code.internalError(_:), v32);
      sub_10002688C(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
      v34 = swift_allocError();
      v35 = *(v141 + 16);
      v35(v36, v138, v29);
      *v144 = v34;
      v154 = enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:);
      (*(v147 + 104))(v144, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v150);
      swift_allocError();
      v35(v37, v138, v29);
      swift_willThrow();
      sub_1000092BC(v157, v161);

      (*(v141 + 8))(v138, v29);
      sub_10000A0D4(v179, &qword_100202370, &qword_1001ACE68);
      sub_1000DC488(v184, type metadata accessor for PresentmentProposal);
      LODWORD(v165) = *(v0 + 580);
      v180 = *(v0 + 456);
      v185 = *(v0 + 464);
      v158 = *(v0 + 488) != *(v0 + 480);
      v151 = *(v0 + 448) != 0;
      v38 = *(v0 + 312);
      v39 = *(v0 + 296);
      v162 = *(v0 + 288);
      v41 = *(v0 + 96);
      v40 = *(v0 + 104);
      v42 = *(v0 + 88);
      (*(*(v0 + 72) + 104))(*(v0 + 80), v33, *(v0 + 64));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v43 = swift_allocError();
      v44 = *(v41 + 16);
      v44(v45, v40, v42);
      *v38 = v43;
      (*(v39 + 104))(v38, v154, v162);
      (*(*(v0 + 296) + 8))(*(v0 + 336), *(v0 + 288));
      v47 = *(v0 + 96);
      v46 = *(v0 + 104);
      v48 = *(v0 + 88);
      v49 = *(v0 + 32);
      v170 = *(*(v0 + 296) + 32);
      v170(*(v0 + 336), *(v0 + 312), *(v0 + 288));
      swift_allocError();
      v44(v50, v46, v48);
      swift_willThrow();

      (*(v47 + 8))(v46, v48);
      if (v165 == 1 && !*(v49 + 16))
      {
        v51 = *(v0 + 48);
        v52 = *(v0 + 24);
        v53 = type metadata accessor for PresentmentRequestInterpretation(0);
        sub_100046360(v52 + *(v53 + 24), v51, &qword_100202378, &unk_1001ACE70);
        v54 = type metadata accessor for IdentityReaderAuthenticator(0);
        v55 = (*(*(v54 - 8) + 48))(v51, 1, v54);
        v56 = *(v0 + 48);
        if (v55 == 1)
        {
          sub_10000A0D4(v56, &qword_100202378, &unk_1001ACE70);
          v166 = 0;
        }

        else
        {
          v70 = *(v56 + *(v54 + 32));
          sub_1000DC488(v56, type metadata accessor for IdentityReaderAuthenticator);
          v166 = v70 == 0;
        }

        v71 = *(v0 + 328);
        v72 = *(v0 + 320);
        v74 = *(v0 + 296);
        v73 = *(v0 + 304);
        v75 = *(v0 + 288);
        v76 = *(v0 + 40);
        v77 = *(v74 + 16);
        v77(v71, *(v0 + 336), v75);
        v78 = type metadata accessor for TaskPriority();
        (*(*(v78 - 8) + 56))(v76, 1, 1, v78);
        v77(v72, v71, v75);
        v79 = (*(v74 + 80) + 48) & ~*(v74 + 80);
        v80 = v79 + v73;
        v81 = swift_allocObject();
        *(v81 + 2) = 0;
        *(v81 + 3) = 0;
        *(v81 + 4) = v180;
        *(v81 + 5) = v185;
        v170(&v81[v79], v72, v75);
        v82 = &v81[v80];
        *v82 = v151;
        v82[1] = v158;
        v82[2] = v166;
        sub_100032EBC(v180, v185);
        sub_1000BDFA8(0, 0, v76, &unk_1001AD1F0, v81);

        (*(v74 + 8))(v71, v75);
      }

      v83 = *(v0 + 400);
      v84 = *(v0 + 408);
      v85 = *(v0 + 392);
      v87 = *(v0 + 360);
      v86 = *(v0 + 368);
      v88 = *(v0 + 352);
      v89 = *(v0 + 336);
      v116 = *(v0 + 344);
      v118 = *(v0 + 328);
      v120 = *(v0 + 320);
      v122 = *(v0 + 312);
      v91 = *(v0 + 288);
      v90 = *(v0 + 296);
      v124 = *(v0 + 280);
      v126 = *(v0 + 272);
      v128 = *(v0 + 264);
      v130 = *(v0 + 248);
      v132 = *(v0 + 224);
      v134 = *(v0 + 200);
      v136 = *(v0 + 192);
      v139 = *(v0 + 184);
      v142 = *(v0 + 176);
      v145 = *(v0 + 168);
      v148 = *(v0 + 160);
      v152 = *(v0 + 136);
      v155 = *(v0 + 112);
      v159 = *(v0 + 104);
      v163 = *(v0 + 80);
      v167 = *(v0 + 56);
      v171 = *(v0 + 48);
      v173 = *(v0 + 40);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_10001C120(v180, v185);
      (*(v90 + 8))(v89, v91);
      (*(v87 + 8))(v86, v88);

      v92 = *(v0 + 8);

      return v92();
    }

    else
    {
      v57 = *(v0 + 528);
      v58 = *(v0 + 520);
      v181 = *(v0 + 580);
      v59 = *(v0 + 472);
      v60 = *(v0 + 432);
      v61 = *(v0 + 280);
      v62 = *(v0 + 184);
      v176 = *(v0 + 32);
      (*(*(v0 + 296) + 104))(*(v0 + 336), enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.success(_:), *(v0 + 288));
      sub_100020718(v59);

      v63 = objc_allocWithZone(DCCredentialResponse);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
      v65 = Dictionary._bridgeToObjectiveC()().super.isa;

      v186 = [v63 initWithResponseData:isa elementsByNamespace:v65];
      sub_1000092BC(v58, v57);

      sub_10000A0D4(v62, &qword_100202370, &qword_1001ACE68);
      sub_1000DC488(v61, type metadata accessor for PresentmentProposal);
      if (v181 == 1 && !*(v176 + 16))
      {
        v66 = *(v0 + 56);
        sub_100046360(*(v0 + 24) + *(v0 + 576), v66, &qword_100202378, &unk_1001ACE70);
        v67 = type metadata accessor for IdentityReaderAuthenticator(0);
        v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
        v69 = *(v0 + 56);
        if (v68 == 1)
        {
          sub_10000A0D4(v69, &qword_100202378, &unk_1001ACE70);
          v182 = 0;
        }

        else
        {
          v93 = *(v69 + *(v67 + 32));
          sub_1000DC488(v69, type metadata accessor for IdentityReaderAuthenticator);
          v182 = v93 == 0;
        }

        v95 = *(v0 + 456);
        v94 = *(v0 + 464);
        v96 = *(v0 + 328);
        v97 = *(v0 + 320);
        v98 = *(v0 + 296);
        v99 = *(v0 + 288);
        v100 = *(v0 + 40);
        v168 = *(v0 + 304);
        v177 = *(v0 + 488) != *(v0 + 480);
        v174 = *(v0 + 448) != 0;
        v101 = *(v98 + 16);
        v101(v96, *(v0 + 336), v99);
        v102 = type metadata accessor for TaskPriority();
        (*(*(v102 - 8) + 56))(v100, 1, 1, v102);
        v101(v97, v96, v99);
        v103 = (*(v98 + 80) + 48) & ~*(v98 + 80);
        v104 = swift_allocObject();
        *(v104 + 2) = 0;
        *(v104 + 3) = 0;
        *(v104 + 4) = v95;
        *(v104 + 5) = v94;
        (*(v98 + 32))(&v104[v103], v97, v99);
        v105 = &v104[v103 + v168];
        *v105 = v174;
        v105[1] = v177;
        v105[2] = v182;
        sub_100032EBC(v95, v94);
        sub_1000BDFA8(0, 0, v100, &unk_1001AD200, v104);

        (*(v98 + 8))(v96, v99);
      }

      v107 = *(v0 + 456);
      v106 = *(v0 + 464);
      v108 = *(v0 + 408);
      v117 = *(v0 + 400);
      v119 = *(v0 + 392);
      v109 = *(v0 + 360);
      v110 = *(v0 + 368);
      v111 = *(v0 + 352);
      v112 = *(v0 + 336);
      v121 = *(v0 + 344);
      v123 = *(v0 + 328);
      v125 = *(v0 + 320);
      v127 = *(v0 + 312);
      v114 = *(v0 + 288);
      v113 = *(v0 + 296);
      v129 = *(v0 + 280);
      v131 = *(v0 + 272);
      v133 = *(v0 + 264);
      v135 = *(v0 + 248);
      v137 = *(v0 + 224);
      v140 = *(v0 + 200);
      v143 = *(v0 + 192);
      v146 = *(v0 + 184);
      v149 = *(v0 + 176);
      v153 = *(v0 + 168);
      v156 = *(v0 + 160);
      v160 = *(v0 + 136);
      v164 = *(v0 + 112);
      v169 = *(v0 + 104);
      v172 = *(v0 + 80);
      v175 = *(v0 + 56);
      v178 = *(v0 + 48);
      v183 = *(v0 + 40);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_10001C120(v107, v106);
      (*(v113 + 8))(v112, v114);
      (*(v109 + 8))(v110, v111);

      v115 = *(v0 + 8);

      return v115(v186);
    }
  }
}

uint64_t sub_1000C4104()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v7 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v4 = v2[59];
    (*(v2[16] + 8))(v2[17], v2[15]);

    v5 = sub_1000C50AC;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v5 = sub_1000C4254;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C4254()
{
  v1 = [*(v0 + 552) standardUserDefaults];
  v2._object = 0x80000001001B95B0;
  v2._countAndFlagsBits = 0xD000000000000028;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = *(v0 + 472);
    v5 = *(v0 + 392);

    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Throwing error at end of presentment due to internal defaults setting", v8, 2u);
    }

    v142 = *(v0 + 520);
    v146 = *(v0 + 528);
    v150 = *(v0 + 432);
    v9 = *(v0 + 416);
    v11 = *(v0 + 384);
    v10 = *(v0 + 392);
    v12 = *(v0 + 376);
    v129 = *(v0 + 336);
    v132 = *(v0 + 296);
    v135 = *(v0 + 288);
    v164 = *(v0 + 184);
    v169 = *(v0 + 280);
    v13 = *(v0 + 88);
    v123 = *(v0 + 112);
    v126 = *(v0 + 96);
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);

    v9(v10, v12);
    v17 = enum case for DIPError.Code.internalError(_:);
    (*(v14 + 104))(v15, enum case for DIPError.Code.internalError(_:), v16);
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    v18 = swift_allocError();
    v19 = *(v126 + 16);
    v19(v20, v123, v13);
    *v129 = v18;
    v139 = enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:);
    (*(v132 + 104))(v129, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v135);
    swift_allocError();
    v19(v21, v123, v13);
    swift_willThrow();
    sub_1000092BC(v142, v146);

    (*(v126 + 8))(v123, v13);
    sub_10000A0D4(v164, &qword_100202370, &qword_1001ACE68);
    sub_1000DC488(v169, type metadata accessor for PresentmentProposal);
    LODWORD(v150) = *(v0 + 580);
    v165 = *(v0 + 456);
    v170 = *(v0 + 464);
    v143 = *(v0 + 488) != *(v0 + 480);
    v136 = *(v0 + 448) != 0;
    v22 = *(v0 + 312);
    v23 = *(v0 + 296);
    v147 = *(v0 + 288);
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v26 = *(v0 + 88);
    (*(*(v0 + 72) + 104))(*(v0 + 80), v17, *(v0 + 64));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v27 = swift_allocError();
    v28 = *(v25 + 16);
    v28(v29, v24, v26);
    *v22 = v27;
    (*(v23 + 104))(v22, v139, v147);
    (*(*(v0 + 296) + 8))(*(v0 + 336), *(v0 + 288));
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v32 = *(v0 + 88);
    v33 = *(v0 + 32);
    v155 = *(*(v0 + 296) + 32);
    v155(*(v0 + 336), *(v0 + 312), *(v0 + 288));
    swift_allocError();
    v28(v34, v30, v32);
    swift_willThrow();

    (*(v31 + 8))(v30, v32);
    if (v150 == 1 && !*(v33 + 16))
    {
      v35 = *(v0 + 48);
      v36 = *(v0 + 24);
      v37 = type metadata accessor for PresentmentRequestInterpretation(0);
      sub_100046360(v36 + *(v37 + 24), v35, &qword_100202378, &unk_1001ACE70);
      v38 = type metadata accessor for IdentityReaderAuthenticator(0);
      v39 = (*(*(v38 - 8) + 48))(v35, 1, v38);
      v40 = *(v0 + 48);
      if (v39 == 1)
      {
        sub_10000A0D4(v40, &qword_100202378, &unk_1001ACE70);
        v151 = 0;
      }

      else
      {
        v54 = *(v40 + *(v38 + 32));
        sub_1000DC488(v40, type metadata accessor for IdentityReaderAuthenticator);
        v151 = v54 == 0;
      }

      v55 = *(v0 + 328);
      v56 = *(v0 + 320);
      v58 = *(v0 + 296);
      v57 = *(v0 + 304);
      v59 = *(v0 + 288);
      v60 = *(v0 + 40);
      v61 = *(v58 + 16);
      v61(v55, *(v0 + 336), v59);
      v62 = type metadata accessor for TaskPriority();
      (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
      v61(v56, v55, v59);
      v63 = (*(v58 + 80) + 48) & ~*(v58 + 80);
      v64 = v63 + v57;
      v65 = swift_allocObject();
      *(v65 + 2) = 0;
      *(v65 + 3) = 0;
      *(v65 + 4) = v165;
      *(v65 + 5) = v170;
      v155(&v65[v63], v56, v59);
      v66 = &v65[v64];
      *v66 = v136;
      v66[1] = v143;
      v66[2] = v151;
      sub_100032EBC(v165, v170);
      sub_1000BDFA8(0, 0, v60, &unk_1001AD1F0, v65);

      (*(v58 + 8))(v55, v59);
    }

    v67 = *(v0 + 400);
    v68 = *(v0 + 408);
    v69 = *(v0 + 392);
    v71 = *(v0 + 360);
    v70 = *(v0 + 368);
    v72 = *(v0 + 352);
    v73 = *(v0 + 336);
    v101 = *(v0 + 344);
    v103 = *(v0 + 328);
    v105 = *(v0 + 320);
    v107 = *(v0 + 312);
    v75 = *(v0 + 288);
    v74 = *(v0 + 296);
    v109 = *(v0 + 280);
    v111 = *(v0 + 272);
    v113 = *(v0 + 264);
    v115 = *(v0 + 248);
    v117 = *(v0 + 224);
    v119 = *(v0 + 200);
    v121 = *(v0 + 192);
    v124 = *(v0 + 184);
    v127 = *(v0 + 176);
    v130 = *(v0 + 168);
    v133 = *(v0 + 160);
    v137 = *(v0 + 136);
    v140 = *(v0 + 112);
    v144 = *(v0 + 104);
    v148 = *(v0 + 80);
    v152 = *(v0 + 56);
    v156 = *(v0 + 48);
    v158 = *(v0 + 40);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10001C120(v165, v170);
    (*(v74 + 8))(v73, v75);
    (*(v71 + 8))(v70, v72);

    v76 = *(v0 + 8);

    return v76();
  }

  else
  {
    v41 = *(v0 + 528);
    v42 = *(v0 + 520);
    v166 = *(v0 + 580);
    v43 = *(v0 + 472);
    v44 = *(v0 + 432);
    v45 = *(v0 + 280);
    v46 = *(v0 + 184);
    v161 = *(v0 + 32);
    (*(*(v0 + 296) + 104))(*(v0 + 336), enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.success(_:), *(v0 + 288));
    sub_100020718(v43);

    v47 = objc_allocWithZone(DCCredentialResponse);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
    v49 = Dictionary._bridgeToObjectiveC()().super.isa;

    v171 = [v47 initWithResponseData:isa elementsByNamespace:v49];
    sub_1000092BC(v42, v41);

    sub_10000A0D4(v46, &qword_100202370, &qword_1001ACE68);
    sub_1000DC488(v45, type metadata accessor for PresentmentProposal);
    if (v166 == 1 && !*(v161 + 16))
    {
      v50 = *(v0 + 56);
      sub_100046360(*(v0 + 24) + *(v0 + 576), v50, &qword_100202378, &unk_1001ACE70);
      v51 = type metadata accessor for IdentityReaderAuthenticator(0);
      v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
      v53 = *(v0 + 56);
      if (v52 == 1)
      {
        sub_10000A0D4(v53, &qword_100202378, &unk_1001ACE70);
        v167 = 0;
      }

      else
      {
        v78 = *(v53 + *(v51 + 32));
        sub_1000DC488(v53, type metadata accessor for IdentityReaderAuthenticator);
        v167 = v78 == 0;
      }

      v80 = *(v0 + 456);
      v79 = *(v0 + 464);
      v81 = *(v0 + 328);
      v82 = *(v0 + 320);
      v83 = *(v0 + 296);
      v84 = *(v0 + 288);
      v85 = *(v0 + 40);
      v153 = *(v0 + 304);
      v162 = *(v0 + 488) != *(v0 + 480);
      v159 = *(v0 + 448) != 0;
      v86 = *(v83 + 16);
      v86(v81, *(v0 + 336), v84);
      v87 = type metadata accessor for TaskPriority();
      (*(*(v87 - 8) + 56))(v85, 1, 1, v87);
      v86(v82, v81, v84);
      v88 = (*(v83 + 80) + 48) & ~*(v83 + 80);
      v89 = swift_allocObject();
      *(v89 + 2) = 0;
      *(v89 + 3) = 0;
      *(v89 + 4) = v80;
      *(v89 + 5) = v79;
      (*(v83 + 32))(&v89[v88], v82, v84);
      v90 = &v89[v88 + v153];
      *v90 = v159;
      v90[1] = v162;
      v90[2] = v167;
      sub_100032EBC(v80, v79);
      sub_1000BDFA8(0, 0, v85, &unk_1001AD200, v89);

      (*(v83 + 8))(v81, v84);
    }

    v92 = *(v0 + 456);
    v91 = *(v0 + 464);
    v93 = *(v0 + 408);
    v102 = *(v0 + 400);
    v104 = *(v0 + 392);
    v94 = *(v0 + 360);
    v95 = *(v0 + 368);
    v96 = *(v0 + 352);
    v97 = *(v0 + 336);
    v106 = *(v0 + 344);
    v108 = *(v0 + 328);
    v110 = *(v0 + 320);
    v112 = *(v0 + 312);
    v99 = *(v0 + 288);
    v98 = *(v0 + 296);
    v114 = *(v0 + 280);
    v116 = *(v0 + 272);
    v118 = *(v0 + 264);
    v120 = *(v0 + 248);
    v122 = *(v0 + 224);
    v125 = *(v0 + 200);
    v128 = *(v0 + 192);
    v131 = *(v0 + 184);
    v134 = *(v0 + 176);
    v138 = *(v0 + 168);
    v141 = *(v0 + 160);
    v145 = *(v0 + 136);
    v149 = *(v0 + 112);
    v154 = *(v0 + 104);
    v157 = *(v0 + 80);
    v160 = *(v0 + 56);
    v163 = *(v0 + 48);
    v168 = *(v0 + 40);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10001C120(v92, v91);
    (*(v98 + 8))(v97, v99);
    (*(v94 + 8))(v95, v96);

    v100 = *(v0 + 8);

    return v100(v171);
  }
}

uint64_t sub_1000C50AC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 280);
  v3 = *(v0 + 184);
  sub_1000092BC(*(v0 + 520), *(v0 + 528));

  sub_10000A0D4(v3, &qword_100202370, &qword_1001ACE68);
  sub_1000DC488(v2, type metadata accessor for PresentmentProposal);
  v4 = *(v0 + 568);
  v72 = *(v0 + 580);
  v76 = *(v0 + 456);
  v77 = *(v0 + 464);
  v70 = *(v0 + 488) != *(v0 + 480);
  v68 = *(v0 + 448) != 0;
  v5 = *(v0 + 312);
  v6 = *(v0 + 296);
  v75 = *(v0 + 288);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  v10 = swift_allocError();
  v11 = *(v8 + 16);
  v11(v12, v7, v9);
  *v5 = v10;
  (*(v6 + 104))(v5, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v75);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 88);
  v16 = *(v0 + 32);
  v66 = *(*(v0 + 296) + 32);
  v66(*(v0 + 336), *(v0 + 312), *(v0 + 288));
  swift_allocError();
  v11(v17, v13, v15);
  swift_willThrow();

  (*(v14 + 8))(v13, v15);
  if (v72 == 1 && !*(v16 + 16))
  {
    v18 = *(v0 + 48);
    v19 = *(v0 + 24);
    v20 = type metadata accessor for PresentmentRequestInterpretation(0);
    sub_100046360(v19 + *(v20 + 24), v18, &qword_100202378, &unk_1001ACE70);
    v21 = type metadata accessor for IdentityReaderAuthenticator(0);
    v22 = (*(*(v21 - 8) + 48))(v18, 1, v21);
    v23 = *(v0 + 48);
    if (v22 == 1)
    {
      sub_10000A0D4(v23, &qword_100202378, &unk_1001ACE70);
      v73 = 0;
    }

    else
    {
      v24 = *(v23 + *(v21 + 32));
      sub_1000DC488(v23, type metadata accessor for IdentityReaderAuthenticator);
      v73 = v24 == 0;
    }

    v25 = *(v0 + 328);
    v26 = *(v0 + 320);
    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v29 = *(v0 + 288);
    v30 = *(v0 + 40);
    v31 = *(v28 + 16);
    v31(v25, *(v0 + 336), v29);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v31(v26, v25, v29);
    v33 = (*(v28 + 80) + 48) & ~*(v28 + 80);
    v34 = v33 + v27;
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    *(v35 + 4) = v76;
    *(v35 + 5) = v77;
    v66(&v35[v33], v26, v29);
    v36 = &v35[v34];
    *v36 = v68;
    v36[1] = v70;
    v36[2] = v73;
    sub_100032EBC(v76, v77);
    sub_1000BDFA8(0, 0, v30, &unk_1001AD1F0, v35);

    (*(v28 + 8))(v25, v29);
  }

  v37 = *(v0 + 400);
  v38 = *(v0 + 408);
  v39 = *(v0 + 392);
  v41 = *(v0 + 360);
  v40 = *(v0 + 368);
  v42 = *(v0 + 352);
  v43 = *(v0 + 336);
  v48 = *(v0 + 344);
  v49 = *(v0 + 328);
  v50 = *(v0 + 320);
  v51 = *(v0 + 312);
  v45 = *(v0 + 288);
  v44 = *(v0 + 296);
  v52 = *(v0 + 280);
  v53 = *(v0 + 272);
  v54 = *(v0 + 264);
  v55 = *(v0 + 248);
  v56 = *(v0 + 224);
  v57 = *(v0 + 200);
  v58 = *(v0 + 192);
  v59 = *(v0 + 184);
  v60 = *(v0 + 176);
  v61 = *(v0 + 168);
  v62 = *(v0 + 160);
  v63 = *(v0 + 136);
  v64 = *(v0 + 112);
  v65 = *(v0 + 104);
  v67 = *(v0 + 80);
  v69 = *(v0 + 56);
  v71 = *(v0 + 48);
  v74 = *(v0 + 40);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(v76, v77);
  (*(v44 + 8))(v43, v45);
  (*(v41 + 8))(v40, v42);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1000C573C()
{
  sub_1000DC488(v0[35], type metadata accessor for PresentmentProposal);
  v1 = v0[55];
  v2 = v0[39];
  v3 = v0[37];
  v47 = v0[36];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  v7 = swift_allocError();
  v8 = *(v5 + 16);
  v8(v9, v4, v6);
  *v2 = v7;
  (*(v3 + 104))(v2, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v47);
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  (*(v0[37] + 32))(v0[42], v0[39], v0[36]);
  swift_allocError();
  v8(v13, v10, v12);
  swift_willThrow();

  (*(v11 + 8))(v10, v12);
  v14 = v0[50];
  v15 = v0[51];
  v16 = v0[49];
  v18 = v0[45];
  v17 = v0[46];
  v19 = v0[44];
  v20 = v0[42];
  v25 = v0[43];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v21 = v0[36];
  v22 = v0[37];
  v29 = v0[35];
  v30 = v0[34];
  v31 = v0[33];
  v32 = v0[31];
  v33 = v0[28];
  v34 = v0[25];
  v35 = v0[24];
  v36 = v0[23];
  v37 = v0[22];
  v38 = v0[21];
  v39 = v0[20];
  v40 = v0[17];
  v41 = v0[14];
  v42 = v0[13];
  v43 = v0[10];
  v44 = v0[7];
  v45 = v0[6];
  v46 = v0[5];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(0, 0xF000000000000000);
  (*(v22 + 8))(v20, v21);
  (*(v18 + 8))(v17, v19);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000C5B38()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);

  sub_10000A0D4(v2, &qword_100202370, &qword_1001ACE68);
  sub_1000DC488(v1, type metadata accessor for PresentmentProposal);
  v3 = *(v0 + 536);
  v71 = *(v0 + 580);
  v75 = *(v0 + 456);
  v76 = *(v0 + 464);
  v69 = *(v0 + 488) != *(v0 + 480);
  v67 = *(v0 + 448) != 0;
  v4 = *(v0 + 312);
  v5 = *(v0 + 296);
  v74 = *(v0 + 288);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  v9 = swift_allocError();
  v10 = *(v7 + 16);
  v10(v11, v6, v8);
  *v4 = v9;
  (*(v5 + 104))(v4, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v74);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = *(v0 + 32);
  v65 = *(*(v0 + 296) + 32);
  v65(*(v0 + 336), *(v0 + 312), *(v0 + 288));
  swift_allocError();
  v10(v16, v12, v14);
  swift_willThrow();

  (*(v13 + 8))(v12, v14);
  if (v71 == 1 && !*(v15 + 16))
  {
    v17 = *(v0 + 48);
    v18 = *(v0 + 24);
    v19 = type metadata accessor for PresentmentRequestInterpretation(0);
    sub_100046360(v18 + *(v19 + 24), v17, &qword_100202378, &unk_1001ACE70);
    v20 = type metadata accessor for IdentityReaderAuthenticator(0);
    v21 = (*(*(v20 - 8) + 48))(v17, 1, v20);
    v22 = *(v0 + 48);
    if (v21 == 1)
    {
      sub_10000A0D4(v22, &qword_100202378, &unk_1001ACE70);
      v72 = 0;
    }

    else
    {
      v23 = *(v22 + *(v20 + 32));
      sub_1000DC488(v22, type metadata accessor for IdentityReaderAuthenticator);
      v72 = v23 == 0;
    }

    v24 = *(v0 + 328);
    v25 = *(v0 + 320);
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v28 = *(v0 + 288);
    v29 = *(v0 + 40);
    v30 = *(v27 + 16);
    v30(v24, *(v0 + 336), v28);
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v30(v25, v24, v28);
    v32 = (*(v27 + 80) + 48) & ~*(v27 + 80);
    v33 = v32 + v26;
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    *(v34 + 4) = v75;
    *(v34 + 5) = v76;
    v65(&v34[v32], v25, v28);
    v35 = &v34[v33];
    *v35 = v67;
    v35[1] = v69;
    v35[2] = v72;
    sub_100032EBC(v75, v76);
    sub_1000BDFA8(0, 0, v29, &unk_1001AD1F0, v34);

    (*(v27 + 8))(v24, v28);
  }

  v36 = *(v0 + 400);
  v37 = *(v0 + 408);
  v38 = *(v0 + 392);
  v40 = *(v0 + 360);
  v39 = *(v0 + 368);
  v41 = *(v0 + 352);
  v42 = *(v0 + 336);
  v47 = *(v0 + 344);
  v48 = *(v0 + 328);
  v49 = *(v0 + 320);
  v50 = *(v0 + 312);
  v44 = *(v0 + 288);
  v43 = *(v0 + 296);
  v51 = *(v0 + 280);
  v52 = *(v0 + 272);
  v53 = *(v0 + 264);
  v54 = *(v0 + 248);
  v55 = *(v0 + 224);
  v56 = *(v0 + 200);
  v57 = *(v0 + 192);
  v58 = *(v0 + 184);
  v59 = *(v0 + 176);
  v60 = *(v0 + 168);
  v61 = *(v0 + 160);
  v62 = *(v0 + 136);
  v63 = *(v0 + 112);
  v64 = *(v0 + 104);
  v66 = *(v0 + 80);
  v68 = *(v0 + 56);
  v70 = *(v0 + 48);
  v73 = *(v0 + 40);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(v75, v76);
  (*(v43 + 8))(v42, v44);
  (*(v40 + 8))(v39, v41);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1000C61BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for ISO18013Version() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for ISO18013Response.Status();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013Response();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  v2[15] = v14;
  v15 = *(v14 - 8);
  v2[16] = v15;
  v16 = *(v15 + 64) + 15;
  v2[17] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v2[18] = v17;
  v18 = *(v17 - 8);
  v2[19] = v18;
  v19 = *(v18 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000C6450, 0, 0);
}

uint64_t sub_1000C6450()
{
  v1 = v0[21];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildErrorResponse", v4, 2u);
  }

  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[3];

  v11 = *(v7 + 8);
  v0[22] = v11;
  v11(v5, v6);
  static IDCSSignposts.presentmentBuildErrorResponse.getter();
  DIPSignpost.init(_:)();
  v12 = *(v10 + 72);
  v0[23] = v12;

  return _swift_task_switch(sub_1000C6588, v12, 0);
}

uint64_t sub_1000C6588()
{
  v1 = *(v0 + 184);
  if (*(v1 + 160))
  {
    v2 = *(v1 + 160);

    *(v0 + 248) = ISO18013SessionCryptarch.isReadyForEncryption.getter() & 1;

    v3 = sub_1000C6980;
  }

  else
  {
    v3 = sub_1000C6620;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C6620()
{
  v1 = v0[20];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Session cryptor is not ready for encryption; skipping error response", v4, 2u);
  }

  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];

  v5(v6, v8);
  (*(v10 + 104))(v9, enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v11);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v18 = v0[21];
  v19 = v0[20];
  v12 = v0[16];
  v13 = v0[17];
  v17 = v0[15];
  v20 = v0[14];
  v21 = v0[10];
  v14 = v0[7];
  v22 = v0[4];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v12 + 8))(v13, v17);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000C6980()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 80);
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = &enum case for ISO18013Response.Status.cborDecodingError(_:);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = &enum case for ISO18013Response.Status.cborValidationError(_:);
    v8 = *(v0 + 16);
    if (v8 != 2)
    {
      v7 = &enum case for ISO18013Response.Status.generalError(_:);
    }

    if (v8 != 1)
    {
      v4 = v7;
    }

    (*(*(v0 + 48) + 104))(*(v0 + 56), *v4, *(v0 + 40));
    static ISO18013Response.supportedVersion.getter();
    ISO18013Response.init(version:documents:documentErrors:status:)();
    *(v0 + 192) = sub_1000D8560();
    sub_1000DC984(&qword_100202920, &type metadata accessor for ISO18013Response);
    v9 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    *(v0 + 200) = 0;
    *(v0 + 208) = v9;
    *(v0 + 216) = v10;
    v28 = *(v0 + 184);

    return _swift_task_switch(sub_1000C6E98, v28, 0);
  }

  else
  {
    v11 = *(v0 + 160);
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Session cryptor is not ready for encryption; skipping error response", v14, 2u);
    }

    v15 = *(v0 + 176);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v18 = *(v0 + 144);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 88);

    v15(v16, v18);
    (*(v20 + 104))(v19, enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v21);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v29 = *(v0 + 168);
    v30 = *(v0 + 160);
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    v24 = *(v0 + 120);
    v31 = *(v0 + 112);
    v32 = *(v0 + 80);
    v25 = *(v0 + 56);
    v33 = *(v0 + 32);
    (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for DIPError.Code.internalError(_:), *(v0 + 88));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v22 + 8))(v23, v24);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1000C6E98()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = sub_1000DEE04(*(v0 + 208), *(v0 + 216));
  *(v0 + 224) = v1;
  if (v1)
  {
    v5 = sub_1000C7068;
  }

  else
  {
    *(v0 + 232) = v4;
    *(v0 + 240) = v3;
    v5 = sub_1000C6F2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C6F2C()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
  v16 = v0[7];
  v17 = v0[4];
  sub_1000092BC(v0[26], v0[27]);

  (*(v7 + 8))(v8, v9);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);

  v10 = v0[1];
  v12 = v0[29];
  v11 = v0[30];

  return v10(v11, v12);
}

uint64_t sub_1000C7068()
{
  v1 = v0[24];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_1000092BC(v0[26], v0[27]);

  (*(v3 + 8))(v2, v4);
  v5 = v0[28];
  v11 = v0[21];
  v12 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v15 = v0[10];
  v13 = v0[14];
  v14 = v0[7];
  v16 = v0[4];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000C72A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000C745C, 0, 0);
}

uint64_t sub_1000C745C()
{
  v1 = v0[15];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildGenericDataResponse", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[4];

  v11 = *(v7 + 8);
  v0[16] = v11;
  v11(v5, v6);
  static IDCSSignposts.presentmentBuildGenericDataResponse.getter();
  DIPSignpost.init(_:)();
  v12 = *(v10 + 72);
  v0[17] = v12;

  return _swift_task_switch(sub_1000C7594, v12, 0);
}

uint64_t sub_1000C7594()
{
  v1 = *(v0 + 136);
  if (*(v1 + 160))
  {
    v2 = *(v1 + 160);

    *(v0 + 168) = ISO18013SessionCryptarch.isReadyForEncryption.getter() & 1;

    v3 = sub_1000C7974;
  }

  else
  {
    v3 = sub_1000C762C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C762C()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Session cryptor is not ready for encryption; skipping error response", v4, 2u);
  }

  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  v5(v6, v8);
  v19 = *(v10 + 104);
  v19(v9, enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v11);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v17 = v0[15];
  v18 = v0[14];
  v13 = v0[10];
  v12 = v0[11];
  v16 = v0[9];
  v20 = v0[8];
  v19(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v13 + 8))(v12, v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000C7974()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 136);

    return _swift_task_switch(sub_1000C7D0C, v1, 0);
  }

  else
  {
    v2 = *(v0 + 112);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Session cryptor is not ready for encryption; skipping error response", v5, 2u);
    }

    v6 = *(v0 + 128);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);

    v6(v7, v9);
    v20 = *(v11 + 104);
    v20(v10, enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v12);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v18 = *(v0 + 120);
    v19 = *(v0 + 112);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v17 = *(v0 + 72);
    v21 = *(v0 + 64);
    v20(*(v0 + 56), enum case for DIPError.Code.internalError(_:), *(v0 + 40));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v14 + 8))(v13, v17);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1000C7D0C()
{
  v1 = *(v0 + 136);
  v2 = sub_1000DEE04(*(v0 + 16), *(v0 + 24));
  *(v0 + 144) = 0;
  *(v0 + 152) = v3;
  *(v0 + 160) = v2;

  return _swift_task_switch(sub_1000C7DA0, 0, 0);
}

uint64_t sub_1000C7DA0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];
  v10 = v0[19];
  v9 = v0[20];

  return v8(v9, v10);
}

uint64_t sub_1000C7E78()
{
  v1 = v0[18];
  v7 = v0[15];
  v8 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v9 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000C805C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for PresentmentProposal();
  v4[19] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v10 = type metadata accessor for PresentmentResponseBuilder.DBResults(0);
  v4[21] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = *(*(sub_100004E70(&qword_1002014D0, &unk_1001AD120) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v4[24] = v13;
  v14 = *(v13 - 8);
  v4[25] = v14;
  v15 = *(v14 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8238, 0, 0);
}

uint64_t sub_1000C8238()
{
  v139 = v0;
  v1 = v0[29];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder loadPayloadDetailsIfNeeded", v4, 2u);
  }

  v5 = v0[29];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[13];

  v9 = *(v7 + 8);
  v9(v5, v6);
  if (*(v8 + 24) && (v10 = v0[23], sub_100046360(v0[13] + *(v0[19] + 32), v10, &qword_1002014D0, &unk_1001AD120), v11 = type metadata accessor for COSE_Sign1(), v12 = (*(*(v11 - 8) + 48))(v10, 1, v11), sub_10000A0D4(v10, &qword_1002014D0, &unk_1001AD120), v12 != 1))
  {
    v84 = v0[28];
    defaultLogger()();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Proposal already contains payload details, no need to load them now", v87, 2u);
    }

    v88 = v0[28];
    v89 = v0[24];
    v90 = v0[25];
    v91 = v0[13];
    v92 = v0[14];
    v93 = v0[12];

    v9(v88, v89);
    sub_1000DC5D0(v91, v93, type metadata accessor for PresentmentProposal);
    v137 = v0[14];
    v95 = v0[28];
    v94 = v0[29];
    v97 = v0[26];
    v96 = v0[27];
    v99 = v0[22];
    v98 = v0[23];
    v100 = v0[20];
    v101 = v0[18];
    v102 = v92;

    v103 = v0[1];

    return v103(v137);
  }

  else
  {
    v13 = v0[27];
    v14 = *v0[13];
    v0[30] = v14;
    v15 = [v14 credentialIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    defaultLogger()();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[27];
    v23 = v0[24];
    v24 = v0[25];
    v124 = v16;
    v135 = v9;
    if (v21)
    {
      v133 = v0[27];
      v25 = v16;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v138[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10010150C(v25, v18, v138);
      _os_log_impl(&_mh_execute_header, v19, v20, "Loading payload details for credential %s", v26, 0xCu);
      sub_100005090(v27);

      v28 = v133;
    }

    else
    {

      v28 = v22;
    }

    v9(v28, v23);
    v29 = v0[26];
    v30 = (v0[13] + *(v0[19] + 40));
    v31 = *v30;
    v0[31] = *v30;
    v32 = v30[1];
    v0[32] = v32;
    v126 = v32;
    v125 = *v31;
    v120 = *(v32 + 16);
    v33 = (v120)(*v31);
    v35 = v34;
    v0[33] = v33;
    v0[34] = v34;
    defaultLogger()();
    sub_100009708(v33, v35);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    sub_1000092BC(v33, v35);
    v38 = os_log_type_enabled(v36, v37);
    v40 = v0[25];
    v39 = v0[26];
    v41 = v0[24];
    v122 = v33;
    v123 = v18;
    v121 = v35;
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v138[0] = v43;
      *v42 = 136315138;
      v44 = Data.base16EncodedString()();
      v45 = sub_10010150C(v44._countAndFlagsBits, v44._object, v138);

      *(v42 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "Using presentment key %s", v42, 0xCu);
      sub_100005090(v43);
    }

    v135(v39, v41);
    v46 = v0[19];
    v47 = v0[13];
    v48 = *(v47 + 32);
    v0[35] = v48;
    v49 = *(v47 + *(v46 + 48));
    v127 = v0;
    v0[36] = v49;
    sub_100004E70(&qword_100202458, &unk_1001ACF20);
    v50 = static _DictionaryStorage.copy(original:)();
    v51 = v50;
    v52 = v49 + 64;
    v53 = 1 << *(v49 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v49 + 64);
    v56 = (v53 + 63) >> 6;
    v129 = v50 + 64;
    v130 = v49;
    v119 = v48;

    v61 = 0;
    v128 = v51;
    if (v55)
    {
      while (1)
      {
        v62 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
LABEL_19:
        v65 = v62 | (v61 << 6);
        v66 = (*(v130 + 48) + 16 * v65);
        v67 = *v66;
        v68 = *(*(v130 + 56) + 8 * v65);
        v69 = *(v68 + 16);
        if (v69)
        {
          v131 = *v66;
          v70 = v66[1];
          sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
          v71 = swift_allocObject();
          v72 = j__malloc_size(v71);
          v73 = v72 - 32;
          if (v72 < 32)
          {
            v73 = v72 - 17;
          }

          v71[2] = v69;
          v71[3] = 2 * (v73 >> 4);
          v136 = sub_100122774(v138, v71 + 4, v69, v68);

          v57 = sub_1000BAE9C();
          if (v136 != v69)
          {
            goto LABEL_49;
          }

          v67 = v131;
          v57 = v70;
          v51 = v128;
        }

        else
        {

          v71 = _swiftEmptyArrayStorage;
        }

        *(v129 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
        v74 = (v51[6] + 16 * v65);
        *v74 = v67;
        v74[1] = v57;
        *(v51[7] + 8 * v65) = v71;
        v75 = v51[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          break;
        }

        v51[2] = v77;
        if (!v55)
        {
          goto LABEL_14;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    else
    {
LABEL_14:
      v63 = v61;
      while (1)
      {
        v61 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v61 >= v56)
        {
          break;
        }

        v64 = *(v52 + 8 * v61);
        ++v63;
        if (v64)
        {
          v62 = __clz(__rbit64(v64));
          v55 = (v64 - 1) & v64;
          goto LABEL_19;
        }
      }

      v78 = v127[14];
      sub_10001A940(v127[15] + 88, (v127 + 2));
      v79 = [v78 authData];
      if (v79)
      {
        v80 = v79;
        v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;
      }

      else
      {
        v81 = 0;
        v83 = 0xF000000000000000;
      }

      v127[37] = v81;
      v127[38] = v83;
      v105 = [v127[14] elementsToPresent];
      if (v105)
      {
        v106 = v105;
        sub_100004E70(&qword_100201580, &qword_1001AB980);
        v134 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v134 = 0;
      }

      v107 = v127[15];
      v108 = *(v107 + 56);
      if (v108)
      {
        v109 = 0;
      }

      else
      {
        v110 = *(v107 + 40);
        if (v110 == 1)
        {
          v109 = 1;
        }

        else
        {
          v109 = 2 * (v110 == 2);
        }
      }

      v111 = v120(v125, v126);
      v113 = v112;
      v127[39] = v111;
      v127[40] = v112;
      v132 = *(v107 + 64);
      sub_10001A940((v127 + 2), (v127 + 7));
      v114 = swift_allocObject();
      v127[41] = v114;
      *(v114 + 16) = v124;
      *(v114 + 24) = v123;
      *(v114 + 32) = v122;
      *(v114 + 40) = v121;
      sub_10001AA08((v127 + 7), v114 + 48);
      *(v114 + 88) = v81;
      *(v114 + 96) = v83;
      *(v114 + 104) = v111;
      *(v114 + 112) = v113;
      *(v114 + 120) = v128;
      *(v114 + 128) = v134;
      *(v114 + 136) = v109;
      *(v114 + 144) = v108;
      *(v114 + 152) = v119;
      sub_100009708(v122, v121);

      sub_100032EBC(v81, v83);
      sub_100009708(v111, v113);
      v115 = *(v132 + 16);
      v116 = swift_allocObject();
      v127[42] = v116;
      *(v116 + 16) = &unk_1001AD168;
      *(v116 + 24) = v114;
      v117 = async function pointer to AsyncCoreDataContainer.read<A>(_:)[1];

      v118 = swift_task_alloc();
      v127[43] = v118;
      *v118 = v127;
      v118[1] = sub_1000C8C74;
      v60 = v127[21];
      v57 = v127[22];
      v58 = &unk_1001AD178;
      v59 = v116;
    }

    return AsyncCoreDataContainer.read<A>(_:)(v57, v58, v59, v60);
  }
}

uint64_t sub_1000C8C74()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v8 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_1000C9050;
  }

  else
  {
    v6 = *(v2 + 328);
    v5 = *(v2 + 336);

    v4 = sub_1000C8D98;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000C8D98()
{
  v37 = *(v0 + 280);
  v38 = *(v0 + 288);
  v40 = *(v0 + 240);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 104);
  v6 = (v1 + v2[6]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v2[5]);
  v36 = *(v0 + 248);
  sub_100046360(v1, v4 + v3[8], &qword_1002014D0, &unk_1001AD120);
  v10 = *(v5 + v3[9]);
  v11 = *(v5 + v3[11]);
  *v4 = v40;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v37;
  *(v4 + v3[9]) = v10;
  *(v4 + v3[10]) = v36;
  *(v4 + v3[11]) = v11;
  *(v4 + v3[12]) = v38;
  v12 = *(v0 + 288);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  if (*(v1 + v2[7]))
  {

    v15 = v14;

    sub_100004E70(&qword_100201580, &qword_1001AB980);
    v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v17 = v14;

    v16.super.isa = 0;
  }

  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v21 = *(v0 + 296);
  v20 = *(v0 + 304);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v24 = *(v0 + 176);
  v39 = *(v0 + 160);
  v25 = *(v0 + 96);
  v41 = [*(v0 + 112) copyWithElementsToPresent:{v16.super.isa, v36, v37}];

  sub_1000092BC(v19, v18);
  sub_10001C120(v21, v20);
  sub_1000092BC(v23, v22);
  sub_100005090((v0 + 16));
  sub_1000DC488(v24, type metadata accessor for PresentmentResponseBuilder.DBResults);
  sub_1000DC9CC(v39, v25, type metadata accessor for PresentmentProposal);
  v27 = *(v0 + 224);
  v26 = *(v0 + 232);
  v29 = *(v0 + 208);
  v28 = *(v0 + 216);
  v31 = *(v0 + 176);
  v30 = *(v0 + 184);
  v32 = *(v0 + 160);
  v33 = *(v0 + 144);

  v34 = *(v0 + 8);

  return v34(v41);
}

uint64_t sub_1000C9050()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[34];
  v8 = v0[35];
  v9 = v0[33];
  v15 = v0[44];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[27];
  v19 = v0[26];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[20];
  v10 = v0[17];
  v13 = v0[18];
  v14 = v0[16];

  sub_1000092BC(v4, v3);
  sub_10001C120(v6, v5);
  sub_1000092BC(v9, v7);
  sub_100005090(v0 + 2);
  (*(v10 + 104))(v13, enum case for DIPError.Code.internalError(_:), v14);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000C9298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 768) = v32;
  *(v8 + 1112) = v31;
  *(v8 + 736) = v29;
  *(v8 + 752) = v30;
  *(v8 + 720) = v28;
  *(v8 + 712) = a8;
  *(v8 + 704) = a7;
  *(v8 + 696) = a6;
  *(v8 + 688) = a5;
  *(v8 + 680) = a4;
  *(v8 + 672) = a3;
  *(v8 + 664) = a2;
  *(v8 + 656) = a1;
  v9 = *(*(sub_100004E70(&qword_1002014D0, &unk_1001AD120) - 8) + 64) + 15;
  *(v8 + 776) = swift_task_alloc();
  v10 = *(*(type metadata accessor for PayloadMetadata() - 8) + 64) + 15;
  *(v8 + 784) = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  *(v8 + 792) = v11;
  v12 = *(v11 - 8);
  *(v8 + 800) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 808) = swift_task_alloc();
  v14 = type metadata accessor for KeyLookupInfo();
  *(v8 + 816) = v14;
  v15 = *(v14 - 8);
  *(v8 + 824) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 832) = swift_task_alloc();
  v17 = *(*(sub_100004E70(&qword_100202498, &unk_1001AD910) - 8) + 64) + 15;
  *(v8 + 840) = swift_task_alloc();
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  *(v8 + 864) = v18;
  v19 = *(v18 - 8);
  *(v8 + 872) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  v21 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 904) = v21;
  v22 = *(v21 - 8);
  *(v8 + 912) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 920) = swift_task_alloc();
  v24 = type metadata accessor for PresentmentResponseBuilder.DBResult(0);
  *(v8 + 928) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v8 + 936) = swift_task_alloc();

  return _swift_task_switch(sub_1000C95A8, 0, 0);
}

uint64_t sub_1000C95A8()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[83];
  v9 = swift_allocObject();
  v0[118] = v9;
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v4;

  sub_100009708(v5, v4);
  v10 = *(v8 + 16);
  v11 = swift_allocObject();
  v0[119] = v11;
  *(v11 + 16) = sub_1000DC550;
  *(v11 + 24) = v9;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v12 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v13 = swift_task_alloc();
  v0[120] = v13;
  *v13 = v0;
  v13[1] = sub_1000C9748;
  v14 = v0[117];
  v15 = v0[116];
  v16 = v0[115];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v16, sub_1000BBAFC, v11, v15);
}

uint64_t sub_1000C9748()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v12 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v4 = v2[119];
    (*(v2[114] + 8))(v2[115], v2[113]);

    v5 = sub_1000CA120;
  }

  else
  {
    v6 = v2[119];
    v7 = v2[118];
    v8 = v2[115];
    v9 = v2[114];
    v10 = v2[113];

    (*(v9 + 8))(v8, v10);
    v5 = sub_1000C98C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C98C4()
{
  v1 = *(v0 + 936);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0;
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[1];
  *(v0 + 48) = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  v5 = *(v0 + 56);
  switch(v5)
  {
    case 2:
      v47 = *(v0 + 880);
      sub_1000DC574(v0 + 16, v0 + 176);
      defaultLogger()();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Payload protection type is payload encryption key", v50, 2u);
      }

      v51 = *(v0 + 936);
      v52 = *(v0 + 928);
      v53 = *(v0 + 880);
      v54 = *(v0 + 872);
      v55 = *(v0 + 864);
      v56 = *(v0 + 848);
      v57 = *(v0 + 824);
      v58 = *(v0 + 816);

      (*(v54 + 8))(v53, v55);
      sub_100046360(v51 + *(v52 + 20), v56, &qword_100202498, &unk_1001AD910);
      v59 = (*(v57 + 48))(v56, 1, v58);
      v60 = *(v0 + 848);
      if (v59 != 1)
      {
        v76 = *(v0 + 840);
        v77 = *(v0 + 832);
        v78 = *(v0 + 824);
        v79 = *(v0 + 816);
        v80 = *(v0 + 704);
        sub_1000DC9CC(v60, v77, type metadata accessor for KeyLookupInfo);
        v81 = sub_100009278(v80, v80[3]);
        v82 = *(v0 + 40);
        v83 = *(v0 + 48);
        v84 = *(v0 + 16);
        sub_1000DC5D0(v77, v76, type metadata accessor for KeyLookupInfo);
        (*(v78 + 56))(v76, 0, 1, v79);
        v85 = *v81;
        v86 = swift_task_alloc();
        *(v0 + 1008) = v86;
        *v86 = v0;
        v86[1] = sub_1000CAF00;
        v23 = *(v0 + 840);
        v29 = *(v0 + 720);
        v28 = *(v0 + 712);
        v24 = v0 + 456;
        v25 = v82;
        v26 = v83;
        v27 = v84;
LABEL_19:

        return sub_1000F1194(v24, v25, v26, v27, v23, v28, v29);
      }

      v1 = *(v0 + 936);
      v61 = *(v0 + 808);
      v62 = *(v0 + 800);
      v63 = *(v0 + 792);
      sub_10000A0D4(v60, &qword_100202498, &unk_1001AD910);
      (*(v62 + 104))(v61, enum case for DIPError.Code.idcsMissingPayloadProtectionKey(_:), v63);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      break;
    case 1:
      v30 = *(v0 + 888);
      sub_1000DC574(v0 + 16, v0 + 256);
      defaultLogger()();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Payload protection type is device encryption key", v33, 2u);
      }

      v34 = *(v0 + 936);
      v35 = *(v0 + 928);
      v36 = *(v0 + 888);
      v37 = *(v0 + 872);
      v38 = *(v0 + 864);
      v39 = *(v0 + 704);

      (*(v37 + 8))(v36, v38);
      v40 = sub_100009278(v39, v39[3]);
      v42 = *(v0 + 40);
      v41 = *(v0 + 48);
      v43 = *(v0 + 16);
      v44 = *(v35 + 20);
      v45 = *v40;
      v46 = swift_task_alloc();
      *(v0 + 992) = v46;
      *v46 = v0;
      v46[1] = sub_1000CA8B8;
      v29 = *(v0 + 720);
      v28 = *(v0 + 712);
      v24 = v0 + 576;
      v23 = v34 + v44;
      v25 = v42;
      v26 = v41;
      v27 = v43;
      goto LABEL_19;
    case 0:
      v6 = *(v0 + 896);
      sub_1000DC574(v0 + 16, v0 + 336);
      defaultLogger()();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Payload protection type is standard, extracting elements from credential payload", v9, 2u);
      }

      v10 = *(v0 + 896);
      v11 = *(v0 + 872);
      v12 = *(v0 + 864);
      v13 = *(v0 + 856);
      v14 = *(v0 + 824);
      v15 = *(v0 + 816);
      v16 = *(v0 + 704);

      (*(v11 + 8))(v10, v12);
      v17 = sub_100009278(v16, v16[3]);
      v19 = *(v0 + 40);
      v18 = *(v0 + 48);
      v20 = *(v0 + 16);
      v21 = *v17;
      (*(v14 + 56))(v13, 1, 1, v15);
      v22 = swift_task_alloc();
      *(v0 + 976) = v22;
      *v22 = v0;
      v22[1] = sub_1000CA23C;
      v23 = *(v0 + 856);
      v24 = v0 + 616;
      v25 = v19;
      v26 = v18;
      v27 = v20;
      v28 = 0;
      v29 = 0xF000000000000000;
      goto LABEL_19;
    default:
      (*(*(v0 + 800) + 104))(*(v0 + 808), enum case for DIPError.Code.internalError(_:), *(v0 + 792));
      sub_1000DC574(v0 + 16, v0 + 96);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      break;
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1000BCE9C(v0 + 16);
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  v64 = *(v0 + 936);
  v65 = *(v0 + 920);
  v66 = *(v0 + 896);
  v67 = *(v0 + 888);
  v68 = *(v0 + 880);
  v69 = *(v0 + 856);
  v70 = *(v0 + 848);
  v71 = *(v0 + 840);
  v72 = *(v0 + 832);
  v73 = *(v0 + 808);
  v87 = *(v0 + 784);
  v88 = *(v0 + 776);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_1000CA120()
{
  v1 = v0[118];

  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[101];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[121];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CA23C()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *v1;
  *(*v1 + 984) = v0;

  sub_10000A0D4(*(v2 + 856), &qword_100202498, &unk_1001AD910);
  if (v0)
  {
    v5 = sub_1000CA764;
  }

  else
  {
    v5 = sub_1000CA380;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000CA380()
{
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  v1 = *(v0 + 632);
  *(v0 + 416) = *(v0 + 616);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 648);
  sub_100046360(v0 + 416, v0 + 536, &qword_100202460, &unk_1001AD180);
  if (*(v0 + 560))
  {
    sub_10001AA08((v0 + 536), v0 + 496);
    v2 = *(v0 + 520);
    v3 = *(v0 + 528);
    sub_100009278((v0 + 496), v2);
    v4 = *(v3 + 8);
    v26 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 1024) = v6;
    *v6 = v0;
    v6[1] = sub_1000CB5B8;
    v7 = *(v0 + 784);

    return v26(v7, 1, v2, v3);
  }

  else
  {
    v9 = *(v0 + 936);
    v10 = *(v0 + 808);
    v11 = *(v0 + 800);
    v12 = *(v0 + 792);
    sub_10000A0D4(v0 + 536, &qword_100202460, &unk_1001AD180);
    (*(v11 + 104))(v10, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v12);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000BCE9C(v0 + 16);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v9, type metadata accessor for PresentmentResponseBuilder.DBResult);
    v13 = *(v0 + 936);
    v14 = *(v0 + 920);
    v15 = *(v0 + 896);
    v16 = *(v0 + 888);
    v17 = *(v0 + 880);
    v18 = *(v0 + 856);
    v19 = *(v0 + 848);
    v20 = *(v0 + 840);
    v21 = *(v0 + 832);
    v22 = *(v0 + 808);
    v24 = *(v0 + 784);
    v25 = *(v0 + 776);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1000CA764()
{
  v1 = v0[117];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[101];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[123];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CA8B8()
{
  v2 = *(*v1 + 992);
  v5 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = sub_1000CADAC;
  }

  else
  {
    v3 = sub_1000CA9CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CA9CC()
{
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  v1 = *(v0 + 592);
  *(v0 + 416) = *(v0 + 576);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 608);
  sub_100046360(v0 + 416, v0 + 536, &qword_100202460, &unk_1001AD180);
  if (*(v0 + 560))
  {
    sub_10001AA08((v0 + 536), v0 + 496);
    v2 = *(v0 + 520);
    v3 = *(v0 + 528);
    sub_100009278((v0 + 496), v2);
    v4 = *(v3 + 8);
    v26 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 1024) = v6;
    *v6 = v0;
    v6[1] = sub_1000CB5B8;
    v7 = *(v0 + 784);

    return v26(v7, 1, v2, v3);
  }

  else
  {
    v9 = *(v0 + 936);
    v10 = *(v0 + 808);
    v11 = *(v0 + 800);
    v12 = *(v0 + 792);
    sub_10000A0D4(v0 + 536, &qword_100202460, &unk_1001AD180);
    (*(v11 + 104))(v10, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v12);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000BCE9C(v0 + 16);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v9, type metadata accessor for PresentmentResponseBuilder.DBResult);
    v13 = *(v0 + 936);
    v14 = *(v0 + 920);
    v15 = *(v0 + 896);
    v16 = *(v0 + 888);
    v17 = *(v0 + 880);
    v18 = *(v0 + 856);
    v19 = *(v0 + 848);
    v20 = *(v0 + 840);
    v21 = *(v0 + 832);
    v22 = *(v0 + 808);
    v24 = *(v0 + 784);
    v25 = *(v0 + 776);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1000CADAC()
{
  v1 = v0[117];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[101];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[125];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CAF00()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v4 = *v1;
  *(*v1 + 1016) = v0;

  sub_10000A0D4(*(v2 + 840), &qword_100202498, &unk_1001AD910);
  if (v0)
  {
    v5 = sub_1000CB444;
  }

  else
  {
    v5 = sub_1000CB044;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000CB044()
{
  sub_1000DC488(*(v0 + 832), type metadata accessor for KeyLookupInfo);
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  v1 = *(v0 + 472);
  *(v0 + 416) = *(v0 + 456);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 488);
  sub_100046360(v0 + 416, v0 + 536, &qword_100202460, &unk_1001AD180);
  if (*(v0 + 560))
  {
    sub_10001AA08((v0 + 536), v0 + 496);
    v2 = *(v0 + 520);
    v3 = *(v0 + 528);
    sub_100009278((v0 + 496), v2);
    v4 = *(v3 + 8);
    v26 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 1024) = v6;
    *v6 = v0;
    v6[1] = sub_1000CB5B8;
    v7 = *(v0 + 784);

    return v26(v7, 1, v2, v3);
  }

  else
  {
    v9 = *(v0 + 936);
    v10 = *(v0 + 808);
    v11 = *(v0 + 800);
    v12 = *(v0 + 792);
    sub_10000A0D4(v0 + 536, &qword_100202460, &unk_1001AD180);
    (*(v11 + 104))(v10, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v12);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000BCE9C(v0 + 16);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v9, type metadata accessor for PresentmentResponseBuilder.DBResult);
    v13 = *(v0 + 936);
    v14 = *(v0 + 920);
    v15 = *(v0 + 896);
    v16 = *(v0 + 888);
    v17 = *(v0 + 880);
    v18 = *(v0 + 856);
    v19 = *(v0 + 848);
    v20 = *(v0 + 840);
    v21 = *(v0 + 832);
    v22 = *(v0 + 808);
    v24 = *(v0 + 784);
    v25 = *(v0 + 776);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1000CB444()
{
  v1 = v0[117];
  v2 = v0[104];
  sub_1000BCE9C((v0 + 2));
  sub_1000DC488(v2, type metadata accessor for KeyLookupInfo);
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  v3 = v0[117];
  v4 = v0[115];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[110];
  v8 = v0[107];
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[104];
  v12 = v0[101];
  v15 = v0[98];
  v16 = v0[97];
  v17 = v0[127];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000CB5B8()
{
  v2 = *(*v1 + 1024);
  v5 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = sub_1000CC5D8;
  }

  else
  {
    v3 = sub_1000CB6CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CB6CC()
{
  v1 = objc_opt_self();
  v0[130] = v1;
  v2 = [v1 standardUserDefaults];
  v3._object = 0x80000001001B9350;
  v3._countAndFlagsBits = 0xD000000000000027;
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4 || (sub_1000EBB34(v0[91], v0[92], *(v0[98] + 40), *(v0[98] + 48)) & 1) != 0)
  {
    v5 = v0[65];
    v6 = v0[66];
    sub_100009278(v0 + 62, v5);
    v7 = *(v6 + 32);
    v27 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[131] = v9;
    *v9 = v0;
    v9[1] = sub_1000CBAC0;
    v10 = v0[97];

    return v27(v10, v5, v6);
  }

  else
  {
    v12 = v0[117];
    v13 = v0[98];
    (*(v0[100] + 104))(v0[101], enum case for DIPError.Code.idcsPayloadPresentmentKeyMismatch(_:), v0[99]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000BCE9C((v0 + 2));
    sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v12, type metadata accessor for PresentmentResponseBuilder.DBResult);
    sub_1000DC488(v13, type metadata accessor for PayloadMetadata);
    sub_100005090(v0 + 62);
    v14 = v0[117];
    v15 = v0[115];
    v16 = v0[112];
    v17 = v0[111];
    v18 = v0[110];
    v19 = v0[107];
    v20 = v0[106];
    v21 = v0[105];
    v22 = v0[104];
    v23 = v0[101];
    v25 = v0[98];
    v26 = v0[97];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1000CBAC0()
{
  v2 = *(*v1 + 1048);
  v5 = *v1;
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v3 = sub_1000CC734;
  }

  else
  {
    v3 = sub_1000CBBD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CBBD4()
{
  v1 = v0[93];
  v2 = v0[65];
  v3 = v0[66];
  sub_100009278(v0 + 62, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[133] = v6;
  *v6 = v0;
  v6[1] = sub_1000CBD10;

  return v8(v1, v2, v3);
}

uint64_t sub_1000CBD10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1064);
  v7 = *v2;
  *(v3 + 1072) = a1;
  *(v3 + 1080) = v1;

  if (v1)
  {
    v5 = sub_1000CC8B0;
  }

  else
  {
    v5 = sub_1000CBE28;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000CBE28()
{
  if (*(v0 + 1112))
  {
    v1 = *(v0 + 1072);
    v2 = *(v0 + 752);
    v3 = *(v0 + 936);
    v4 = *(v0 + 920);
    v28 = *(v0 + 896);
    v29 = *(v0 + 888);
    v30 = *(v0 + 880);
    v31 = *(v0 + 856);
    v32 = *(v0 + 848);
    v33 = *(v0 + 840);
    v34 = *(v0 + 832);
    v35 = *(v0 + 808);
    v5 = *(v0 + 784);
    v6 = *(v0 + 776);
    v7 = *(v0 + 656);

    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v3, type metadata accessor for PresentmentResponseBuilder.DBResult);
    sub_100046524(v6, v7, &qword_1002014D0, &unk_1001AD120);
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);

    sub_1000BCE9C(v0 + 16);
    v10 = type metadata accessor for PresentmentResponseBuilder.DBResults(0);
    *(v7 + v10[5]) = v1;
    v11 = (v7 + v10[6]);
    *v11 = v8;
    v11[1] = v9;
    *(v7 + v10[7]) = v2;
    sub_1000DC488(v5, type metadata accessor for PayloadMetadata);
    sub_100005090((v0 + 496));

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 760);
    v15 = [*(v0 + 1040) standardUserDefaults];
    v16._object = 0x80000001001B7CD0;
    v16._countAndFlagsBits = 0xD000000000000016;
    v17 = NSUserDefaults.internalBool(forKey:)(v16);

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = v14;
    }

    v19 = *(v0 + 520);
    v20 = *(v0 + 528);
    sub_100009278((v0 + 496), v19);
    v21 = *(v0 + 24);
    v22 = *(v0 + 32);
    v23 = *(v20 + 24);
    v36 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    *(v0 + 1088) = v25;
    *v25 = v0;
    v25[1] = sub_1000CC184;
    v26 = *(v0 + 768);
    v27 = *(v0 + 744);

    return v36(v27, v21, v22, v26, v18, v19, v20);
  }
}

uint64_t sub_1000CC184(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1088);
  v8 = *v2;
  v3[137] = a1;
  v3[138] = v1;

  if (v1)
  {
    v5 = v3[134];

    v6 = sub_1000CCA48;
  }

  else
  {
    v6 = sub_1000CC2A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000CC2A4()
{
  v1 = *(v0 + 1104);
  v3 = sub_1000BE254(*(v0 + 1096), *(v0 + 1072), *(v0 + 752));
  v4 = *(v0 + 1096);
  v5 = *(v0 + 1072);
  if (v1)
  {
    v6 = *(v0 + 936);
    v7 = *(v0 + 784);
    v8 = *(v0 + 776);

    sub_1000BCE9C(v0 + 16);
    sub_10000A0D4(v8, &qword_1002014D0, &unk_1001AD120);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v6, type metadata accessor for PresentmentResponseBuilder.DBResult);
    sub_1000DC488(v7, type metadata accessor for PayloadMetadata);
    sub_100005090((v0 + 496));
    v9 = *(v0 + 936);
    v10 = *(v0 + 920);
    v11 = *(v0 + 896);
    v12 = *(v0 + 888);
    v13 = *(v0 + 880);
    v14 = *(v0 + 856);
    v15 = *(v0 + 848);
    v16 = *(v0 + 840);
    v17 = *(v0 + 832);
    v18 = *(v0 + 808);
    v36 = *(v0 + 784);
    v38 = *(v0 + 776);
  }

  else
  {
    v20 = v2;

    v21 = *(v0 + 936);
    v22 = *(v0 + 920);
    v31 = *(v0 + 896);
    v32 = *(v0 + 888);
    v33 = *(v0 + 880);
    v34 = *(v0 + 856);
    v35 = *(v0 + 848);
    v37 = *(v0 + 840);
    v39 = *(v0 + 832);
    v40 = *(v0 + 808);
    v23 = *(v0 + 784);
    v24 = *(v0 + 776);
    v25 = *(v0 + 656);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v21, type metadata accessor for PresentmentResponseBuilder.DBResult);
    sub_100046524(v24, v25, &qword_1002014D0, &unk_1001AD120);
    v26 = *(v0 + 24);
    v27 = *(v0 + 32);

    sub_1000BCE9C(v0 + 16);
    v28 = type metadata accessor for PresentmentResponseBuilder.DBResults(0);
    *(v25 + v28[5]) = v3;
    v29 = (v25 + v28[6]);
    *v29 = v26;
    v29[1] = v27;
    *(v25 + v28[7]) = v20;
    sub_1000DC488(v23, type metadata accessor for PayloadMetadata);
    sub_100005090((v0 + 496));
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000CC5D8()
{
  v1 = v0[117];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  sub_100005090(v0 + 62);
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[101];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[129];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CC734()
{
  v1 = v0[117];
  v2 = v0[98];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  sub_1000DC488(v2, type metadata accessor for PayloadMetadata);
  sub_100005090(v0 + 62);
  v3 = v0[117];
  v4 = v0[115];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[110];
  v8 = v0[107];
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[104];
  v12 = v0[101];
  v15 = v0[98];
  v16 = v0[97];
  v17 = v0[132];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000CC8B0()
{
  v1 = v0[117];
  v2 = v0[98];
  v3 = v0[97];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4(v3, &qword_1002014D0, &unk_1001AD120);
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  sub_1000DC488(v2, type metadata accessor for PayloadMetadata);
  sub_100005090(v0 + 62);
  v4 = v0[117];
  v5 = v0[115];
  v6 = v0[112];
  v7 = v0[111];
  v8 = v0[110];
  v9 = v0[107];
  v10 = v0[106];
  v11 = v0[105];
  v12 = v0[104];
  v13 = v0[101];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[135];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000CCA48()
{
  v1 = v0[117];
  v2 = v0[98];
  v3 = v0[97];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4(v3, &qword_1002014D0, &unk_1001AD120);
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  sub_1000DC488(v2, type metadata accessor for PayloadMetadata);
  sub_100005090(v0 + 62);
  v4 = v0[117];
  v5 = v0[115];
  v6 = v0[112];
  v7 = v0[111];
  v8 = v0[110];
  v9 = v0[107];
  v10 = v0[106];
  v11 = v0[105];
  v12 = v0[104];
  v13 = v0[101];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[138];

  v14 = v0[1];

  return v14();
}

__n128 sub_1000CCBE0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v146 = a5;
  v147 = a1;
  v143 = a6;
  v144 = a4;
  v148 = a3;
  v7 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v137 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v139 = &v131 - v12;
  __chkstk_darwin(v11);
  v138 = &v131 - v13;
  v141 = type metadata accessor for CredentialKeyType();
  v142 = *(v141 - 8);
  v14 = *(v142 + 64);
  v15 = __chkstk_darwin(v141);
  v140 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v145 = &v131 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v131 - v20;
  __chkstk_darwin(v19);
  v23 = &v131 - v22;
  v24 = sub_100004E70(&qword_100202498, &unk_1001AD910);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v131 - v30;
  __chkstk_darwin(v29);
  v33 = &v131 - v32;
  v34 = type metadata accessor for DIPError.Code();
  v35 = *(v34 - 1);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v158;
  v40 = sub_10005218C(a2, v148);
  if (!v39)
  {
    v147 = v35;
    v148 = v34;
    v134 = v23;
    v135 = v31;
    v158 = v38;
    v42 = v145;
    v136 = v33;
    if (v40)
    {
      v43 = v40;
      sub_10005A0A4(v144, v146);
      v45 = v158;
      v47 = v147;
      v46 = v148;
      if (!v44)
      {
        v149 = 0;
        v150 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v149 = 0xD00000000000002CLL;
        v150 = 0x80000001001B93F0;
        v55 = Data.base16EncodedString()();
        String.append(_:)(v55);

        (*(v47 + 104))(v45, enum case for DIPError.Code.idcsMissingPresentmentKey(_:), v46);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return result;
      }

      v146 = v43;
      v144 = v44;
      v48 = [v44 payload];
      if (!v48)
      {
        (*(v47 + 104))(v45, enum case for DIPError.Code.idcsMissingPayload(_:), v46);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return result;
      }

      v49 = v48;
      v50 = type metadata accessor for KeyLookupInfo();
      v51 = *(v50 - 8);
      v52 = *(v51 + 56);
      v53 = v51 + 56;
      v54 = v136;
      v52(v136, 1, 1, v50);
      sub_10005E914(&v153);
      v133 = v49;
      v131 = v53;
      v132 = v52;
      if (*(&v155 + 1) != 2)
      {
        v56 = v132;
        if (*(&v155 + 1) != 1)
        {
          if (*(&v155 + 1))
          {
            (*(v147 + 104))(v158, enum case for DIPError.Code.internalError(_:), v148);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            sub_1000BCE9C(&v153);
            sub_10000A0D4(v54, &qword_100202498, &unk_1001AD910);
            return result;
          }

          sub_10000A0D4(v54, &qword_100202498, &unk_1001AD910);
          v56(v54, 1, 1, v50);
          goto LABEL_56;
        }

        v158 = v50;
        v151 = &type metadata for CredentialDecryptionKeyIdentifierProvider;
        v152 = &off_1001F4D30;
        v57 = v146;
        v58 = sub_100021FD0(v146, v154.n128_i64[1], v155, v153);
        sub_10001AA20(&v149);
        if (!v58)
        {

LABEL_39:
          v98 = v143;
          v54 = v136;
LABEL_57:
          v129 = type metadata accessor for PresentmentResponseBuilder.DBResult(0);
          sub_100046524(v54, v98 + *(v129 + 20), &qword_100202498, &unk_1001AD910);
          v130 = v156;
          *(v98 + 32) = v155;
          *(v98 + 48) = v130;
          *(v98 + 64) = v157;
          result = v154;
          *v98 = v153;
          *(v98 + 16) = result;
          return result;
        }

        v59 = [v58 identifier];
        v60 = v133;
        if (v59)
        {
          v61 = v59;
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;

          v65 = [v58 publicKeyIdentifier];
          if (v65)
          {
            v147 = v62;
            v66 = v65;
            v145 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v140 = v67;

            v68 = v58;
            v69 = [v68 keyType];
            v148 = v21;
            v70 = v135;
            v71 = v134;
            if (v69)
            {
              v72 = v69;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v73 = v138;
              CredentialKeyType.init(rawValue:)();
              v74 = v142;
              v75 = v141;
              if ((*(v142 + 48))(v73, 1, v141) != 1)
              {
                (*(v74 + 32))(v71, v73, v75);
                goto LABEL_42;
              }

              sub_10000A0D4(v73, &qword_100200510, qword_1001AB070);
            }

            v74 = v142;
            v75 = v141;
            (*(v142 + 104))(v71, enum case for CredentialKeyType.invalid(_:), v141);
LABEL_42:

            (*(v74 + 16))(v148, v71, v75);
            v99 = [v68 keyBlob];
            if (v99)
            {
              v100 = v99;
              v139 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v102 = v101;
            }

            else
            {

              v139 = 0;
              v102 = 0xF000000000000000;
            }

            v103 = v142;
            v104 = v71;
            v105 = v141;
            (*(v142 + 8))(v104, v141);
            v106 = v136;
            sub_10000A0D4(v136, &qword_100202498, &unk_1001AD910);
            v107 = v148;
            *v70 = v147;
            *(v70 + 1) = v64;
            v108 = v140;
            *(v70 + 2) = v145;
            *(v70 + 3) = v108;
            v109 = v158;
            (*(v103 + 32))(&v70[*(v158 + 6)], v107, v105);
            v110 = &v70[*(v109 + 7)];
            *v110 = v139;
            v110[1] = v102;
            v132(v70, 0, 1, v109);
            v111 = v70;
            v112 = v106;
            v54 = v106;
            goto LABEL_55;
          }

          goto LABEL_36;
        }

LABEL_37:
LABEL_38:

        goto LABEL_39;
      }

      v158 = v50;
      v60 = v133;
      v76 = [v133 payloadProtectionKey];
      if (v76)
      {
        v77 = v76;
        v78 = [v76 identifier];

        if (!v78)
        {
          goto LABEL_37;
        }

        v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        v81 = [v60 payloadProtectionKey];
        if (!v81)
        {
LABEL_36:

          goto LABEL_37;
        }

        v82 = v81;
        v83 = [v81 publicKeyIdentifier];

        if (!v83)
        {

          goto LABEL_38;
        }

        v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87 = [v133 payloadProtectionKey];
        v54 = v136;
        if (v87)
        {
          v88 = v87;
          v135 = v84;
          v138 = v86;
          v147 = v80;
          v89 = [v87 keyType];
          v90 = v140;
          v91 = v28;
          v92 = v42;
          if (v89)
          {
            v93 = v89;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v94 = v137;
            CredentialKeyType.init(rawValue:)();
            v95 = v142;
            v96 = v141;
            if ((*(v142 + 48))(v94, 1, v141) != 1)
            {
              v114 = v94;
              v97 = v139;
              (*(v95 + 32))(v139, v114, v96);
LABEL_48:

              (*(v95 + 56))(v97, 0, 1, v96);
              v115 = *(v95 + 32);
              v115(v92, v97, v96);
              (*(v95 + 16))(v90, v92, v96);
              v116 = v133;
              v117 = [v133 payloadProtectionKey];
              if (v117)
              {
                v118 = v117;
                v119 = [v117 keyBlob];

                if (v119)
                {
                  v139 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v137 = v120;

LABEL_54:
                  v121 = v141;
                  (*(v142 + 8))(v92, v141);
                  v122 = v136;
                  sub_10000A0D4(v136, &qword_100202498, &unk_1001AD910);
                  v123 = v147;
                  *v91 = v148;
                  *(v91 + 1) = v123;
                  v124 = v138;
                  *(v91 + 2) = v135;
                  *(v91 + 3) = v124;
                  v125 = v91;
                  v126 = v158;
                  v115(&v125[*(v158 + 6)], v140, v121);
                  v127 = &v125[*(v126 + 7)];
                  v128 = v137;
                  *v127 = v139;
                  v127[1] = v128;
                  v132(v125, 0, 1, v126);
                  v111 = v125;
                  v112 = v122;
                  v54 = v122;
LABEL_55:
                  sub_100046524(v111, v112, &qword_100202498, &unk_1001AD910);
                  goto LABEL_56;
                }
              }

              else
              {
              }

              v139 = 0;
              v137 = 0xF000000000000000;
              goto LABEL_54;
            }

            sub_10000A0D4(v94, &qword_100200510, qword_1001AB070);
          }

          v95 = v142;
          v97 = v139;
          v96 = v141;
          (*(v142 + 104))(v139, enum case for CredentialKeyType.invalid(_:), v141);
          goto LABEL_48;
        }

        sub_1000092BC(v84, v86);
        v113 = v139;
        (*(v142 + 56))(v139, 1, 1, v141);
        sub_10000A0D4(v113, &qword_100200510, qword_1001AB070);
      }

      else
      {
      }

LABEL_56:
      v98 = v143;
      goto LABEL_57;
    }

    (*(v147 + 104))(v158, enum case for DIPError.Code.idcsUnknownCredential(_:), v148);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

unint64_t sub_1000CDF0C()
{
  _StringGuts.grow(_:)(39);

  sub_100004E70(&qword_1002029B8, &qword_1001AD210);
  v0._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000025;
}

uint64_t sub_1000CDFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for DCPresentmentResponseEncryptionParameters.Storage();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = *(*(type metadata accessor for ISO18013Version() - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013Response.Status();
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();
  v16 = type metadata accessor for ISO18013Response();
  v5[20] = v16;
  v17 = *(v16 - 8);
  v5[21] = v17;
  v18 = *(v17 + 64) + 15;
  v5[22] = swift_task_alloc();
  v19 = type metadata accessor for ISO18013Response.Document();
  v5[23] = v19;
  v20 = *(v19 - 8);
  v5[24] = v20;
  v21 = *(v20 + 64) + 15;
  v5[25] = swift_task_alloc();
  v22 = *(*(sub_100004E70(&qword_100202990, &qword_1001AD150) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v23 = type metadata accessor for ISO18013Response.IssuerSigned();
  v5[28] = v23;
  v24 = *(v23 - 8);
  v5[29] = v24;
  v25 = *(v24 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v26 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v27 = type metadata accessor for DIPSignpost();
  v5[33] = v27;
  v28 = *(v27 - 8);
  v5[34] = v28;
  v29 = *(v28 + 64) + 15;
  v5[35] = swift_task_alloc();
  v30 = type metadata accessor for Logger();
  v5[36] = v30;
  v31 = *(v30 - 8);
  v5[37] = v31;
  v32 = *(v31 + 64) + 15;
  v5[38] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE3A8, 0, 0);
}

uint64_t sub_1000CE3A8()
{
  v1 = v0[38];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildResponsePayload", v4, 2u);
  }

  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[6];
  v11 = v0[7];

  (*(v6 + 8))(v5, v7);
  static IDCSSignposts.presentmentBuildResponsePayload.getter();
  DIPSignpost.init(_:)();
  sub_1000CFAF0(v12, v11, v10);
  v13 = swift_task_alloc();
  v0[39] = v13;
  *v13 = v0;
  v13[1] = sub_1000CE74C;
  v14 = v0[27];
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[5];
  v18 = v0[6];

  return sub_1000D0530(v14, v17, v18, v15);
}

uint64_t sub_1000CE74C()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1000CF5C0;
  }

  else
  {
    v3 = sub_1000CE860;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CE860()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[18];
  v88 = v0[23];
  v92 = v0[19];
  v96 = v0[17];
  v100 = v0[16];
  v104 = v0[22];
  v6 = v0[14];
  v115 = v0[13];
  v121 = v0[15];
  v7 = v0[6];
  v109 = v0[5];
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  (*(v0[29] + 16))(v0[30], v0[31], v0[28]);
  sub_100046360(v2, v1, &qword_100202990, &qword_1001AD150);

  ISO18013Response.Document.init(docType:issuerSigned:deviceSigned:errors:)();
  sub_100004E70(&qword_100202998, &qword_1001AD158);
  v10 = *(v3 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001AA160;
  (*(v3 + 16))(v12 + v11, v4, v88);
  (*(v5 + 104))(v92, enum case for ISO18013Response.Status.ok(_:), v96);
  static ISO18013Response.supportedVersion.getter();
  ISO18013Response.init(version:documents:documentErrors:status:)();
  v13._countAndFlagsBits = 0x3334646133663763;
  v14._countAndFlagsBits = 0xD00000000000005BLL;
  v14._object = 0x80000001001B8F40;
  v13._object = 0xE800000000000000;
  logMilestone(tag:description:)(v13, v14);
  v15 = [v109 responseEncryptionParameters];
  v16 = direct field offset for DCPresentmentResponseEncryptionParameters.storage;
  swift_beginAccess();
  (*(v6 + 16))(v121, &v15[v16], v115);

  v17 = (*(v6 + 88))(v121, v115);
  if (v17 == enum case for DCPresentmentResponseEncryptionParameters.Storage.appleHPKE(_:))
  {
    v18 = v0[40];
    v19 = v0[22];
    v20 = v0[15];
    v21 = v0[8];
    (*(v0[14] + 96))(v20, v0[13]);
    v22 = *v20;
    v23 = v20[1];
    v24 = v20[2];
    sub_1000092BC(v22, v23);
    v25 = sub_1000DAC80(v19, v21, v24);
    if (v18)
    {
      v116 = v0[31];
      v27 = v0[29];
      v110 = v0[28];
      v28 = v0[27];
      v29 = v0[24];
      v30 = v0[25];
      v32 = v0[22];
      v31 = v0[23];
      v34 = v0[20];
      v33 = v0[21];

      (*(v33 + 8))(v32, v34);
      (*(v29 + 8))(v30, v31);
      sub_10000A0D4(v28, &qword_100202990, &qword_1001AD150);
      (*(v27 + 8))(v116, v110);
LABEL_13:
      v61 = v0[34];
      v60 = v0[35];
      v62 = v0[33];
      v79 = v0[38];
      v81 = v0[32];
      v83 = v0[31];
      v86 = v0[30];
      v90 = v0[27];
      v94 = v0[26];
      v98 = v0[25];
      v102 = v0[22];
      v107 = v0[19];
      v113 = v0[16];
      v120 = v0[15];
      (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v61 + 8))(v60, v62);

      v63 = v0[1];

      return v63();
    }

    v118 = v25;
    v122 = v26;

LABEL_17:
    v64 = v0[34];
    v65 = v0[35];
    v84 = v0[38];
    v87 = v0[32];
    v78 = v0[31];
    v80 = v0[33];
    v66 = v0[29];
    v76 = v0[27];
    v77 = v0[28];
    v91 = v0[30];
    v95 = v0[26];
    v68 = v0[24];
    v67 = v0[25];
    v69 = v0[22];
    v70 = v0[23];
    v72 = v0[20];
    v71 = v0[21];
    v99 = v0[19];
    v103 = v0[16];
    v114 = v0[15];
    v108 = v0[12];
    v73._countAndFlagsBits = 0x3466373032303261;
    v74._countAndFlagsBits = 0xD000000000000054;
    v74._object = 0x80000001001B8FD0;
    v73._object = 0xE800000000000000;
    logMilestone(tag:description:)(v73, v74);
    (*(v71 + 8))(v69, v72);
    (*(v68 + 8))(v67, v70);
    sub_10000A0D4(v76, &qword_100202990, &qword_1001AD150);
    (*(v66 + 8))(v78, v77);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v64 + 8))(v65, v80);

    v75 = v0[1];

    return v75(v118, v122);
  }

  if (v17 == enum case for DCPresentmentResponseEncryptionParameters.Storage.webProposalHPKE(_:))
  {
    v35 = v0[40];
    v36 = v0[22];
    v37 = v0[15];
    v38 = v0[8];
    (*(v0[14] + 96))(v37, v0[13]);
    v39 = *v37;
    v40 = v37[1];
    v42 = v37[2];
    v41 = v37[3];
    sub_1000092BC(v39, v40);
    v43 = sub_1000DB868(v36, v38, v42, v41);
    if (v35)
    {
      v117 = v0[31];
      v45 = v0[29];
      v111 = v0[28];
      v105 = v0[27];
      v46 = v0[24];
      v47 = v0[25];
      v49 = v0[22];
      v48 = v0[23];
      v50 = v0[20];
      v51 = v0[21];
      sub_1000092BC(v42, v41);
      (*(v51 + 8))(v49, v50);
      (*(v46 + 8))(v47, v48);
      sub_10000A0D4(v105, &qword_100202990, &qword_1001AD150);
      (*(v45 + 8))(v117, v111);
      goto LABEL_13;
    }

    v118 = v43;
    v122 = v44;
    sub_1000092BC(v42, v41);
    goto LABEL_17;
  }

  if (v17 != enum case for DCPresentmentResponseEncryptionParameters.Storage.sessionEncryption(_:))
  {
    v56 = v0[29];
    v112 = v0[28];
    v119 = v0[31];
    v57 = v0[24];
    v93 = v0[25];
    v97 = v0[27];
    v85 = v0[22];
    v89 = v0[23];
    v58 = v0[21];
    v82 = v0[20];
    v59 = v0[14];
    v101 = v0[13];
    v106 = v0[15];
    (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.idcsUnknownResponseEncryptionType(_:), v0[10]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v58 + 8))(v85, v82);
    (*(v57 + 8))(v93, v89);
    sub_10000A0D4(v97, &qword_100202990, &qword_1001AD150);
    (*(v56 + 8))(v119, v112);
    (*(v59 + 8))(v106, v101);
    goto LABEL_13;
  }

  v52 = swift_task_alloc();
  v0[41] = v52;
  *v52 = v0;
  v52[1] = sub_1000CF290;
  v53 = v0[22];
  v54 = v0[9];

  return sub_1000D72F4(v53);
}

uint64_t sub_1000CF290(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 328);
  v8 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v9 = sub_1000CF82C;
  }

  else
  {
    *(v6 + 344) = a2;
    *(v6 + 352) = a1;
    v9 = sub_1000CF3C4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000CF3C4()
{
  v26 = v0[43];
  v27 = v0[44];
  v1 = v0[34];
  v2 = v0[35];
  v18 = v0[38];
  v19 = v0[32];
  v16 = v0[31];
  v17 = v0[33];
  v3 = v0[29];
  v14 = v0[27];
  v15 = v0[28];
  v20 = v0[30];
  v21 = v0[26];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[12];
  v25 = v0[15];
  v10._countAndFlagsBits = 0x3466373032303261;
  v11._object = 0x80000001001B8FD0;
  v10._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0xD000000000000054;
  logMilestone(tag:description:)(v10, v11);
  (*(v8 + 8))(v6, v9);
  (*(v5 + 8))(v4, v7);
  sub_10000A0D4(v14, &qword_100202990, &qword_1001AD150);
  (*(v3 + 8))(v16, v15);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v1 + 8))(v2, v17);

  v12 = v0[1];

  return v12(v27, v26);
}

uint64_t sub_1000CF5C0()
{
  (*(v0[29] + 8))(v0[31], v0[28]);
  v1 = v0[40];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v7 = v0[38];
  v8 = v0[32];
  v9 = v0[31];
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[26];
  v13 = v0[25];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[15];
  (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000CF82C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v5, v7);
  sub_10000A0D4(v4, &qword_100202990, &qword_1001AD150);
  (*(v3 + 8))(v1, v2);
  v8 = v0[42];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v14 = v0[38];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[27];
  v19 = v0[26];
  v20 = v0[25];
  v21 = v0[22];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[15];
  (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CFAF0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v87 = a1;
  v84 = a3;
  v3 = type metadata accessor for DIPError.Code();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  __chkstk_darwin(v3);
  v82 = (&v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v86 = (&v75 - v8);
  v92 = type metadata accessor for COSE_Sign1();
  v9 = *(v92 - 1);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v92);
  v83 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v75 - v14;
  __chkstk_darwin(v13);
  v88 = &v75 - v16;
  v17 = type metadata accessor for DIPSignpost.Config();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for DIPSignpost();
  v89 = *(v19 - 8);
  v90 = v19;
  v20 = *(v89 + 64);
  __chkstk_darwin(v19);
  v93 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v91 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v75 - v28;
  __chkstk_darwin(v27);
  v31 = &v75 - v30;
  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v79 = v23;
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "PresentmentResponseBuilder buildResponsePayloadIssuerSigned", v34, 2u);
    v23 = v79;
  }

  v37 = *(v23 + 8);
  v36 = v23 + 8;
  v35 = v37;
  v37(v31, v22);
  static IDCSSignposts.presentmentBuildResponsePayloadIssuerSigned.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Building response payload issuer signed", v40, 2u);
  }

  v35(v29, v22);
  v41 = type metadata accessor for PresentmentProposal();
  v42 = v86;
  sub_100046360(v87 + *(v41 + 32), v86, &qword_1002014D0, &unk_1001AD120);
  v43 = v92;
  v44 = (*(v9 + 48))(v42, 1, v92);
  v45 = v91;
  if (v44 == 1)
  {
    sub_10000A0D4(v42, &qword_1002014D0, &unk_1001AD120);
    v91 = "ns device namespaces ";
    v46 = v81;
    v92 = *(v80 + 104);
    v47 = v82;
    (v92)(v82, enum case for DIPError.Code.idcsMissingProposalIssuerAuth(_:), v81);
    v88 = "Unencrypted response: ";
    v87 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (v92)(v47, enum case for DIPError.Code.internalError(_:), v46);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v48 = v93;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v89 + 8))(v48, v90);
  }

  else
  {
    v50 = v88;
    (*(v9 + 32))(v88, v42, v43);
    defaultLogger()();
    v86 = *(v9 + 16);
    v87 = v9 + 16;
    (v86)(v15, v50, v43);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      LODWORD(v80) = v52;
      v53 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v95 = v76;
      v81 = v53;
      *v53 = 136446210;
      v54 = COSE_Sign1.x509Chain.getter();
      v77 = v35;
      v78 = v22;
      v82 = v51;
      if (v54)
      {
        v79 = v36;
        v55 = *(v54 + 16);
        if (v55)
        {
          v94 = _swiftEmptyArrayStorage;
          v56 = v54;
          sub_10010A6B4(0, v55, 0);
          v57 = v94;
          v75 = v56;
          v58 = (v56 + 40);
          do
          {
            v59 = *(v58 - 1);
            v60 = *v58;
            sub_100009708(v59, *v58);
            v61 = Data.base64EncodedString(options:)(0);
            sub_1000092BC(v59, v60);
            v94 = v57;
            v63 = v57[2];
            v62 = v57[3];
            if (v63 >= v62 >> 1)
            {
              sub_10010A6B4((v62 > 1), v63 + 1, 1);
              v57 = v94;
            }

            v58 += 2;
            v57[2] = v63 + 1;
            *&v57[2 * v63 + 4] = v61;
            --v55;
          }

          while (v55);

          v45 = v91;
          v43 = v92;
        }

        else
        {
        }
      }

      v65 = Array.description.getter();
      v67 = v66;

      v64 = *(v9 + 8);
      v64(v15, v43);
      v68 = sub_10010150C(v65, v67, &v95);

      v69 = v81;
      *(v81 + 1) = v68;
      v70 = v82;
      _os_log_impl(&_mh_execute_header, v82, v80, "PresentmentResponseBuilder built issuer auth with document signer chain: %{public}s", v69, 0xCu);
      sub_100005090(v76);

      v77(v45, v78);
    }

    else
    {

      v64 = *(v9 + 8);
      v64(v15, v43);
      v35(v45, v22);
    }

    v72 = v89;
    v71 = v90;
    v73 = v88;
    (v86)(v83, v88, v43);

    ISO18013Response.IssuerSigned.init(namespaces:issuerAuth:)();
    v64(v73, v43);
    v74 = v93;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v72 + 8))(v74, v71);
  }
}

uint64_t sub_1000D0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013Response.DeviceAuth();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v12 = *(*(sub_100004E70(&qword_1002014D0, &unk_1001AD120) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v13 = type metadata accessor for COSE_Sign1();
  v5[16] = v13;
  v14 = *(v13 - 8);
  v5[17] = v14;
  v15 = *(v14 + 64) + 15;
  v5[18] = swift_task_alloc();
  v16 = sub_100004E70(&qword_100202930, &qword_1001AD118);
  v5[19] = v16;
  v17 = *(v16 - 8);
  v5[20] = v17;
  v18 = *(v17 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v19 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v20 = type metadata accessor for DIPSignpost();
  v5[24] = v20;
  v21 = *(v20 - 8);
  v5[25] = v21;
  v22 = *(v21 + 64) + 15;
  v5[26] = swift_task_alloc();
  v23 = type metadata accessor for Logger();
  v5[27] = v23;
  v24 = *(v23 - 8);
  v5[28] = v24;
  v25 = *(v24 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0858, 0, 0);
}

uint64_t sub_1000D0858()
{
  v1 = v0[30];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildResponsePayloadDeviceSigned", v4, 2u);
  }

  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[26];
  v10 = v0[23];

  v11 = *(v8 + 8);
  v11(v5, v7);
  static IDCSSignposts.presentmentBuildResponsePayloadDeviceSigned.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Building response payload device signed", v14, 2u);
  }

  v16 = v0[28];
  v15 = v0[29];
  v17 = v0[27];
  v18 = v0[22];
  v19 = v0[7];
  v20 = v0[4];

  v11(v15, v17);
  v0[2] = sub_1000D9F3C(v20);
  sub_1000D8560();
  sub_100004E70(&qword_100202948, &qword_1001AD130);
  sub_1000DAB30(&qword_100202950, sub_1000DAA74);
  sub_1000DAB30(&qword_100202970, sub_1000DABB4);
  CBOREncodedCBOR.init(value:tag:encoder:)();
  v21 = swift_task_alloc();
  v0[31] = v21;
  *v21 = v0;
  v21[1] = sub_1000D0D40;
  v22 = v0[22];
  v23 = v0[15];
  v24 = v0[6];
  v25 = v0[7];
  v26 = v0[4];
  v27 = v0[5];

  return sub_1000D1528(v23, v26, v27, v24, v22);
}

uint64_t sub_1000D0D40()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_1000D1160;
  }

  else
  {
    v3 = sub_1000D0E54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D0E54()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[20] + 8))(v0[22], v0[19]);
    sub_10000A0D4(v3, &qword_1002014D0, &unk_1001AD120);
    v4 = 1;
  }

  else
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[18];
    v8 = v0[14];
    v26 = v0[19];
    v28 = v0[13];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v3;
    v12 = v0[22];
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 16))(v8, v7, v1);
    (*(v9 + 104))(v8, enum case for ISO18013Response.DeviceAuth.deviceSignature(_:), v10);
    (*(v6 + 16))(v5, v12, v26);
    (*(v9 + 16))(v28, v8, v10);
    ISO18013Response.DeviceSigned.init(namespaces:deviceAuth:)();
    (*(v9 + 8))(v8, v10);
    (*(v2 + 8))(v7, v1);
    (*(v6 + 8))(v12, v26);
    v4 = 0;
  }

  v14 = v0[29];
  v13 = v0[30];
  v16 = v0[25];
  v15 = v0[26];
  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[22];
  v24 = v0[21];
  v25 = v0[18];
  v27 = v0[15];
  v29 = v0[14];
  v30 = v0[13];
  v31 = v0[10];
  v20 = v0[3];
  v21 = type metadata accessor for ISO18013Response.DeviceSigned();
  (*(*(v21 - 8) + 56))(v20, v4, 1, v21);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v16 + 8))(v15, v17);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D1160()
{
  (*(v0[20] + 8))(v0[22], v0[19]);
  v1 = v0[32];
  v7 = v0[30];
  v8 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v9 = v0[23];
  v10 = v0[22];
  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

unint64_t sub_1000D13B0()
{
  _StringGuts.grow(_:)(39);

  sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
  v0._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000025;
}

unint64_t sub_1000D1458(uint64_t *a1)
{
  _StringGuts.grow(_:)(26);

  v2 = *a1;

  sub_100004E70(&qword_100202960, &qword_1001AD138);
  v3 = Dictionary.description.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD000000000000018;
}

uint64_t sub_1000D1528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = type metadata accessor for CredentialKeyType();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[17] = v13;
  v14 = *(v13 - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000D16C0, 0, 0);
}

uint64_t sub_1000D16C0()
{
  v1 = v0[20];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder signDeviceSignedData", v4, 2u);
  }

  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[6];

  v12 = *(v7 + 8);
  v12(v5, v6);
  v13 = *(v11 + *(type metadata accessor for PresentmentProposal() + 40));
  v14 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v15 = *(v10 + 16);
  v15(v8, v13 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v9);
  v16 = (*(v10 + 88))(v8, v9);
  if (v16 == enum case for CredentialKeyType.legacySE(_:))
  {
    v17 = swift_task_alloc();
    v0[21] = v17;
    *v17 = v0;
    v17[1] = sub_1000D1C80;
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[6];
    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[5];

    return sub_1000D418C(v22, v23, v20, v21, v18);
  }

  else if (v16 == enum case for CredentialKeyType.ses(_:))
  {
    v25 = swift_task_alloc();
    v0[23] = v25;
    *v25 = v0;
    v25[1] = sub_1000D1E78;
    v26 = v0[8];
    v27 = v0[9];
    v28 = v0[6];
    v29 = v0[7];
    v30 = v0[4];
    v31 = v0[5];

    return sub_1000D20C4(v30, v31, v28, v29, v26);
  }

  else
  {
    if (v16 == enum case for CredentialKeyType.externalSE(_:))
    {
      v32 = v0[19];
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Device signature with external SE key is not supported; skipping signature", v35, 2u);
      }

      v37 = v0[18];
      v36 = v0[19];
      v38 = v0[17];

      v12(v36, v38);
      v39 = v0[19];
      v40 = v0[20];
      v42 = v0[15];
      v41 = v0[16];
      v43 = v0[12];
      v44 = v0[4];
      v45 = type metadata accessor for COSE_Sign1();
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);

      v46 = v0[1];
    }

    else
    {
      v47 = v0[15];
      v62 = v0[16];
      v48 = v0[13];
      v49 = v0[14];
      v50 = v0[11];
      v59 = v0[12];
      v60 = v0[10];
      _StringGuts.grow(_:)(39);
      v0[2] = 0;
      v0[3] = 0xE000000000000000;
      v51._object = 0x80000001001B8D60;
      v51._countAndFlagsBits = 0xD000000000000025;
      String.append(_:)(v51);
      v15(v47, v13 + v14, v48);
      _print_unlocked<A, B>(_:_:)();
      v52 = *(v49 + 8);
      v52(v47, v48);
      v61 = v0[2];
      v53 = v0[3];
      (*(v50 + 104))(v59, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v60);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v52(v62, v48);
      v55 = v0[19];
      v54 = v0[20];
      v57 = v0[15];
      v56 = v0[16];
      v58 = v0[12];

      v46 = v0[1];
    }

    return v46();
  }
}

uint64_t sub_1000D1C80()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1000D1F8C;
  }

  else
  {
    v3 = sub_1000D1D94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D1D94()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[4];
  v7 = type metadata accessor for COSE_Sign1();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D1E78()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1000D2028;
  }

  else
  {
    v3 = sub_1000DD018;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D1F8C()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D2028()
{
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D20C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_100004E70(&qword_1002014D0, &unk_1001AD120) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = type metadata accessor for PresentmentProposal();
  v6[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v16 = *(*(sub_100004E70(&qword_100202370, &qword_1001ACE68) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v17 = type metadata accessor for ISO18013SessionTranscript();
  v6[19] = v17;
  v18 = *(v17 - 8);
  v6[20] = v18;
  v19 = *(v18 + 64) + 15;
  v6[21] = swift_task_alloc();
  v20 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v21 = type metadata accessor for DIPSignpost();
  v6[23] = v21;
  v22 = *(v21 - 8);
  v6[24] = v22;
  v23 = *(v22 + 64) + 15;
  v6[25] = swift_task_alloc();
  v24 = type metadata accessor for Logger();
  v6[26] = v24;
  v25 = *(v24 - 8);
  v6[27] = v25;
  v26 = *(v25 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000D2404, 0, 0);
}

uint64_t sub_1000D2404()
{
  v175 = v0;
  v1 = v0[32];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder signDeviceSignedDataSES", v4, 2u);
  }

  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[22];

  v11 = *(v8 + 8);
  v0[33] = v11;
  v11(v5, v7);
  static IDCSSignposts.presentmentBuildResponseSignDeviceDataSES.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Signing device signed data with SES key", v14, 2u);
  }

  v15 = v0[31];
  v16 = v0[26];
  v17 = v0[27];
  v18 = v0[19];
  v19 = v0[20];
  v20 = v0[18];
  v21 = v0[5];

  v11(v15, v16);
  sub_100046360(v21, v20, &qword_100202370, &qword_1001ACE68);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[9];
    sub_10000A0D4(v0[18], &qword_100202370, &qword_1001ACE68);
    (*(v23 + 104))(v22, enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionTranscript(_:), v24);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_12;
  }

  v25 = v0[3];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  v26 = [v25 authData];
  if (!v26)
  {
    v46 = v0[20];
    v45 = v0[21];
    v47 = v0[19];
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.idcsMissingAuthDataInPresentmentSelection(_:), v0[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v46 + 8))(v45, v47);
    goto LABEL_12;
  }

  v27 = v0[15];
  v28 = v0[4];
  v29 = v26;
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v0[34] = v30;
  v0[35] = v32;
  v0[36] = *(v28 + *(v27 + 40));
  type metadata accessor for SESPresentmentKey(0);
  v33 = swift_dynamicCastClass();
  v34 = v0[21];
  if (!v33)
  {
    v48 = v0[20];
    v161 = v0[19];
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.badLogic(_:), v0[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v30, v32);
    (*(v48 + 8))(v34, v161);
    goto LABEL_12;
  }

  v171 = v27;
  v160 = v32;
  v165 = v30;
  v36 = v0[6];
  v35 = v0[7];
  v37 = v0[4];
  v38 = v33 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob;
  v39 = *(v33 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob);
  v0[37] = v39;
  v40 = *(v38 + 8);
  v0[38] = v40;
  v42 = *(v37 + 8);
  v41 = *(v37 + 16);

  sub_100009708(v39, v40);
  v43 = sub_1000D66BC(v34, v42, v41, v36);
  v0[39] = v43;
  v0[40] = v44;
  v145 = v43;
  v153 = v39;
  v149 = v44;
  v56 = v0[30];
  v58 = v0[16];
  v57 = v0[17];
  v59 = v0[4];
  defaultLogger()();
  sub_1000DC5D0(v59, v57, type metadata accessor for PresentmentProposal);
  sub_1000DC5D0(v59, v58, type metadata accessor for PresentmentProposal);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  v169 = v60;
  v62 = os_log_type_enabled(v60, v61);
  v63 = v0[30];
  v64 = v0[26];
  v65 = v0[27];
  v67 = v0[16];
  v66 = v0[17];
  if (v62)
  {
    v68 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    *v68 = 136315394;
    v69 = *(v66 + *(v171 + 40));
    v131 = v64;
    v134 = v63;
    v70 = *(v69 + 16);
    v71 = *(v69 + 24);

    sub_1000DC488(v66, type metadata accessor for PresentmentProposal);
    v72 = sub_10010150C(v70, v71, &v173);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    v73 = (*(*(v67 + *(v171 + 40) + 8) + 16))(**(v67 + *(v171 + 40)));
    v75 = v74;
    v76 = Data.base16EncodedString()();
    sub_1000092BC(v73, v75);
    sub_1000DC488(v67, type metadata accessor for PresentmentProposal);
    v77 = sub_10010150C(v76._countAndFlagsBits, v76._object, &v173);

    *(v68 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v169, v61, "Signing device authentication with SES key %s, public key identifier %s", v68, 0x16u);
    swift_arrayDestroy();

    v11(v134, v131);
  }

  else
  {

    v11(v63, v64);
    sub_1000DC488(v66, type metadata accessor for PresentmentProposal);
    sub_1000DC488(v67, type metadata accessor for PresentmentProposal);
  }

  v79 = v153;
  v78 = v40;
  v80 = *(v0[4] + *(v0[15] + 44));
  if ((v80 - 1) >= 2)
  {
    if (v80)
    {
      v116 = v0[20];
      v155 = v0[21];
      v139 = v0[19];
      (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000092BC(v145, v149);
      sub_1000092BC(v79, v40);
      sub_1000092BC(v165, v160);

      (*(v116 + 8))(v155, v139);
    }

    else
    {
      v91 = v0[29];
      defaultLogger()();
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "Auth policy is not required; using empty signature", v94, 2u);
      }

      v95 = v0[29];
      v96 = v0[26];
      v97 = v0[27];

      v11(v95, v96);
      v98 = type metadata accessor for __DataStorage();
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      swift_allocObject();
      v101 = __DataStorage.init(length:)();
      v173 = 0x2000000000;
      v174 = v101;
      sub_1000D8EE8(&v173, 0);
      v102 = v173;
      v103 = v174 | 0x4000000000000000;
      v104 = v0[33];
      v106 = v0[27];
      v105 = v0[28];
      v107 = v0[26];
      v108 = v0[8];
      defaultLogger()();
      v109 = swift_task_alloc();
      *(v109 + 16) = v102;
      *(v109 + 24) = v103;
      Logger.cryptoParam(_:)();

      v104(v105, v107);
      sub_100009708(v102, v103);
      COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
      v110 = type metadata accessor for COSE_Sign1();
      v111 = *(v110 - 8);
      if ((*(v111 + 48))(v108, 1, v110) != 1)
      {
        v117 = v0[39];
        v118 = v0[40];
        v126 = v0[38];
        v127 = v0[35];
        v124 = v0[37];
        v125 = v0[34];
        v132 = v0[32];
        v136 = v0[31];
        v143 = v0[30];
        v147 = v0[29];
        v120 = v0[24];
        v119 = v0[25];
        v128 = v0[36];
        v129 = v0[23];
        v151 = v0[28];
        v156 = v0[22];
        v140 = v0[21];
        v121 = v0[19];
        v159 = v0[18];
        v164 = v0[17];
        v168 = v0[16];
        v170 = v0[14];
        v172 = v0[11];
        v122 = v0[8];
        v123 = v0[2];
        (*(v0[20] + 8))();
        sub_1000092BC(v117, v118);
        sub_1000092BC(v124, v126);
        sub_1000092BC(v125, v127);

        sub_1000092BC(v102, v103);
        (*(v111 + 32))(v123, v122, v110);
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v120 + 8))(v119, v129);

        v54 = v0[1];
        goto LABEL_13;
      }

      v135 = v0[39];
      v138 = v0[40];
      v158 = v0[36];
      v150 = v0[38];
      v154 = v0[35];
      v142 = v0[37];
      v146 = v0[34];
      v112 = v0[20];
      v163 = v0[19];
      v167 = v0[21];
      v114 = v0[10];
      v113 = v0[11];
      v115 = v0[9];
      sub_10000A0D4(v0[8], &qword_1002014D0, &unk_1001AD120);
      (*(v114 + 104))(v113, enum case for DIPError.Code.idcsCOSECreationFailed(_:), v115);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000092BC(v135, v138);
      sub_1000092BC(v142, v150);
      sub_1000092BC(v146, v154);

      sub_1000092BC(v102, v103);
      (*(v112 + 8))(v167, v163);
    }

LABEL_12:
    v50 = v0[31];
    v49 = v0[32];
    v130 = v0[30];
    v133 = v0[29];
    v52 = v0[24];
    v51 = v0[25];
    v53 = v0[23];
    v137 = v0[28];
    v141 = v0[22];
    v144 = v0[21];
    v148 = v0[18];
    v152 = v0[17];
    v157 = v0[16];
    v162 = v0[14];
    v166 = v0[8];
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v52 + 8))(v51, v53);

    v54 = v0[1];
LABEL_13:

    return v54();
  }

  v82 = v0[13];
  v81 = v0[14];
  v83 = v0[12];
  v84 = v0[7];
  v85 = v0[3];
  v86 = *(v84 + 136);
  v0[41] = v86;
  v87 = *(v84 + 128);
  v0[42] = v87;

  v88 = [v85 seAccessEndpoint];
  v0[43] = v88;
  (*(v82 + 104))(v81, enum case for SESKeystore.SignatureOutputFormat.raw(_:), v83);
  v89 = swift_task_alloc();
  v0[44] = v89;
  *v89 = v0;
  v89[1] = sub_1000D36E8;
  v90 = v0[14];
  v177 = v86;
  v178 = v87;

  return sub_1000E9668(v145, v149, v153, v78, v165, v160, v90, v88);
}

uint64_t sub_1000D36E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 352);
  v8 = *v3;
  v6[45] = v2;

  v9 = v6[43];
  v10 = v6[14];
  v11 = v6[13];
  v12 = v6[12];
  if (v2)
  {
    (*(v11 + 8))(v10, v12);

    v13 = sub_1000D3EC4;
  }

  else
  {
    v6[46] = a2;
    v6[47] = a1;
    (*(v11 + 8))(v10, v12);

    v13 = sub_1000D3898;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1000D3898()
{
  v1 = v0[41];
  v2 = v0[42];

  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[33];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[8];
  defaultLogger()();
  v10 = swift_task_alloc();
  *(v10 + 16) = v3;
  *(v10 + 24) = v4;
  Logger.cryptoParam(_:)();

  v5(v6, v8);
  sub_100009708(v3, v4);
  COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
  v11 = type metadata accessor for COSE_Sign1();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    v45 = v0[40];
    v40 = v0[39];
    v54 = v0[38];
    v48 = v0[37];
    v57 = v0[35];
    v60 = v0[36];
    v51 = v0[34];
    v13 = v0[20];
    v63 = v0[19];
    v66 = v0[21];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];
    sub_10000A0D4(v0[8], &qword_1002014D0, &unk_1001AD120);
    (*(v15 + 104))(v14, enum case for DIPError.Code.idcsCOSECreationFailed(_:), v16);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v40, v45);
    sub_1000092BC(v48, v54);
    sub_1000092BC(v51, v57);

    sub_1000092BC(v3, v4);
    (*(v13 + 8))(v66, v63);
    v17 = v0[32];
    v35 = v0[31];
    v41 = v0[30];
    v46 = v0[29];
    v49 = v0[28];
    v18 = v0[24];
    v19 = v0[25];
    v20 = v0[23];
    v52 = v0[22];
    v55 = v0[21];
    v58 = v0[18];
    v61 = v0[17];
    v64 = v0[16];
    v67 = v0[14];
    v21 = v0[8];
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v18 + 8))(v19, v20);
  }

  else
  {
    v24 = v0[39];
    v23 = v0[40];
    v34 = v0[38];
    v36 = v0[35];
    v32 = v0[37];
    v33 = v0[34];
    v39 = v0[32];
    v42 = v0[31];
    v44 = v0[30];
    v47 = v0[29];
    v26 = v0[24];
    v25 = v0[25];
    v37 = v0[36];
    v38 = v0[23];
    v50 = v0[28];
    v53 = v0[22];
    v43 = v0[21];
    v27 = v0[19];
    v56 = v0[18];
    v59 = v0[17];
    v62 = v0[16];
    v65 = v0[14];
    v68 = v0[11];
    v28 = v3;
    v29 = v0[8];
    v31 = v0[2];
    (*(v0[20] + 8))();
    sub_1000092BC(v24, v23);
    sub_1000092BC(v32, v34);
    sub_1000092BC(v33, v36);

    sub_1000092BC(v28, v4);
    (*(v12 + 32))(v31, v29, v11);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v26 + 8))(v25, v38);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000D3EC4()
{
  v1 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  v10 = v0[20];
  v27 = v0[19];
  v29 = v0[21];

  sub_1000092BC(v4, v3);
  sub_1000092BC(v6, v5);
  sub_1000092BC(v9, v8);

  (*(v10 + 8))(v29, v27);
  v11 = v0[45];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[23];
  v21 = v0[28];
  v22 = v0[22];
  v23 = v0[21];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[16];
  v28 = v0[14];
  v30 = v0[8];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v13 + 8))(v12, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = *(*(sub_100004E70(&qword_1002014D0, &unk_1001AD120) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[14] = v8;
  v9 = *(v8 - 8);
  v6[15] = v9;
  v10 = *(v9 + 64) + 15;
  v6[16] = swift_task_alloc();
  v11 = type metadata accessor for PresentmentProposal();
  v6[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v13 = *(*(sub_100004E70(&qword_100202370, &qword_1001ACE68) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v14 = type metadata accessor for ISO18013SessionTranscript();
  v6[20] = v14;
  v15 = *(v14 - 8);
  v6[21] = v15;
  v16 = *(v15 + 64) + 15;
  v6[22] = swift_task_alloc();
  v17 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v18 = type metadata accessor for DIPSignpost();
  v6[24] = v18;
  v19 = *(v18 - 8);
  v6[25] = v19;
  v20 = *(v19 + 64) + 15;
  v6[26] = swift_task_alloc();
  v21 = type metadata accessor for Logger();
  v6[27] = v21;
  v22 = *(v21 - 8);
  v6[28] = v22;
  v23 = *(v22 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000D447C, 0, 0);
}

uint64_t sub_1000D447C()
{
  v171 = v0;
  v1 = v0[35];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder signDeviceSignedDataLegacySE", v4, 2u);
  }

  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[26];
  v10 = v0[23];

  v11 = *(v8 + 8);
  v0[36] = v11;
  v11(v5, v7);
  static IDCSSignposts.presentmentBuildResponseSignDeviceDataLegacySE.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Signing device signed data with legacy SE key", v14, 2u);
  }

  v15 = v0[34];
  v16 = v0[27];
  v17 = v0[28];
  v18 = v0[20];
  v19 = v0[21];
  v20 = v0[19];
  v21 = v0[10];

  v11(v15, v16);
  sub_100046360(v21, v20, &qword_100202370, &qword_1001ACE68);
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[14];
    sub_10000A0D4(v0[19], &qword_100202370, &qword_1001ACE68);
    (*(v23 + 104))(v22, enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionTranscript(_:), v24);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_14;
  }

  v25 = v0[8];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  v26 = [v25 authData];
  if (!v26)
  {
    v39 = v0[21];
    v38 = v0[22];
    v40 = v0[20];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsMissingAuthDataInPresentmentSelection(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v39 + 8))(v38, v40);
    goto LABEL_14;
  }

  v27 = v0[17];
  v28 = v0[9];
  v29 = v26;
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v0[37] = v30;
  v0[38] = v32;
  v0[39] = *(v28 + *(v27 + 40));
  type metadata accessor for LegacySEPresentmentKey(0);
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    v41 = v0[21];
    v161 = v0[20];
    v166 = v0[22];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.badLogic(_:), v0[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v30, v32);
    (*(v41 + 8))(v166, v161);
    goto LABEL_14;
  }

  v165 = v30;
  v34 = v33 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_keySlot;
  v35 = *(v33 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_keySlot);
  v0[40] = v35;
  v36 = v0[22];
  if (*(v34 + 8))
  {
    v37 = v0[21];
    v156 = v0[20];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v0[14]);

    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v165, v32);

    (*(v37 + 8))(v36, v156);
    goto LABEL_14;
  }

  v162 = v35;
  v43 = v0[11];
  v42 = v0[12];
  v44 = v0[9];
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);

  v47 = sub_1000D66BC(v36, v45, v46, v43);
  v0[41] = v47;
  v0[42] = v48;
  v151 = v47;
  v154 = v48;
  v54 = v0[33];
  v55 = v0[18];
  v56 = v0[9];
  defaultLogger()();
  sub_1000DC5D0(v56, v55, type metadata accessor for PresentmentProposal);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  v158 = v57;
  v59 = os_log_type_enabled(v57, v58);
  v60 = v0[33];
  v61 = v0[27];
  v62 = v0[18];
  if (v59)
  {
    v147 = v0[28];
    v63 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v169 = v139;
    *v63 = 134349314;
    *(v63 + 4) = v162;
    *(v63 + 12) = 2080;
    v143 = v60;
    v64 = (*(*(v62 + *(v27 + 40) + 8) + 16))(**(v62 + *(v27 + 40)));
    v65 = v58;
    v67 = v66;
    v68 = Data.base16EncodedString()();
    sub_1000092BC(v64, v67);
    sub_1000DC488(v62, type metadata accessor for PresentmentProposal);
    v69 = sub_10010150C(v68._countAndFlagsBits, v68._object, &v169);

    *(v63 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v158, v65, "Signing device authentication with legacy SE key slot %{public}ld, public key identifier %s", v63, 0x16u);
    sub_100005090(v139);

    v11(v143, v61);
  }

  else
  {

    v11(v60, v61);
    sub_1000DC488(v62, type metadata accessor for PresentmentProposal);
  }

  v70 = v0[17];
  v71 = v0[9];
  v0[43] = sub_100046C68();
  v72 = *(v71 + *(v70 + 44));
  if (!v72)
  {
    v92 = v0[30];
    defaultLogger()();
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Auth policy is not required; using empty signature", v95, 2u);
    }

    v96 = v0[30];
    v97 = v0[27];
    v98 = v0[28];

    v11(v96, v97);
    v99 = type metadata accessor for __DataStorage();
    v100 = *(v99 + 48);
    v101 = *(v99 + 52);
    swift_allocObject();
    v102 = __DataStorage.init(length:)();
    v169 = 0x2000000000;
    v170 = v102;
    sub_1000D8EE8(&v169, 0);
    v104 = v169;
    v106 = v170 | 0x4000000000000000;
LABEL_36:
    v107 = v0[36];
    v109 = v0[28];
    v108 = v0[29];
    v110 = v0[27];
    v111 = v0[13];
    defaultLogger()();
    v112 = swift_task_alloc();
    *(v112 + 16) = v104;
    *(v112 + 24) = v106;
    Logger.cryptoParam(_:)();

    v107(v108, v110);
    sub_100009708(v104, v106);
    COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
    v113 = type metadata accessor for COSE_Sign1();
    v114 = *(v113 - 8);
    v115 = (*(v114 + 48))(v111, 1, v113);
    v152 = v0[43];
    v160 = v0[41];
    v164 = v0[42];
    v168 = v0[39];
    v155 = v0[38];
    v149 = v0[37];
    if (v115 != 1)
    {
      v126 = v0[35];
      v127 = v0[34];
      v128 = v0[33];
      v129 = v0[32];
      v130 = v0[31];
      v132 = v0[30];
      v120 = v0[25];
      v121 = v0[26];
      v125 = v0[24];
      v134 = v0[29];
      v136 = v0[23];
      v122 = v0[19];
      v141 = v0[18];
      v145 = v0[16];
      v123 = v0[13];
      v124 = v0[7];
      (*(v0[21] + 8))(v0[22], v0[20]);

      sub_1000092BC(v149, v155);
      sub_1000092BC(v160, v164);

      sub_1000092BC(v104, v106);
      (*(v114 + 32))(v124, v123, v113);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v120 + 8))(v121, v125);

      v52 = v0[1];
      goto LABEL_15;
    }

    v116 = v0[21];
    v140 = v0[20];
    v144 = v0[22];
    v117 = v0[15];
    v118 = v0[16];
    v119 = v0[14];
    sub_10000A0D4(v0[13], &qword_1002014D0, &unk_1001AD120);
    (*(v117 + 104))(v118, enum case for DIPError.Code.idcsCOSECreationFailed(_:), v119);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v149, v155);
    sub_1000092BC(v160, v164);

    sub_1000092BC(v104, v106);
    (*(v116 + 8))(v144, v140);
LABEL_14:
    v131 = v0[35];
    v133 = v0[34];
    v135 = v0[33];
    v137 = v0[32];
    v138 = v0[31];
    v142 = v0[30];
    v49 = v0[25];
    v50 = v0[26];
    v51 = v0[24];
    v146 = v0[29];
    v150 = v0[23];
    v153 = v0[22];
    v157 = v0[19];
    v163 = v0[18];
    v167 = v0[13];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v49 + 8))(v50, v51);

    v52 = v0[1];
LABEL_15:

    return v52();
  }

  if (v72 != 2)
  {
    if (v72 != 1)
    {
      v103 = v0[21];
      v159 = v0[22];
      v148 = v0[20];
      (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_1000092BC(v165, v32);
      sub_1000092BC(v151, v154);

      (*(v103 + 8))(v159, v148);
      goto LABEL_14;
    }

    v73 = v0[32];
    defaultLogger()();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Auth policy is biometric or passcode, performing non-bound signature", v76, 2u);
    }

    v77 = v0[32];
    v79 = v0[27];
    v78 = v0[28];
    v80 = v0[8];

    v11(v77, v79);
    v81 = [v80 seAccessEndpoint];
    v104 = sub_100047814(v151, v154, v162, v165, v32, v81);
    v106 = v105;

    goto LABEL_36;
  }

  v82 = v0[31];
  defaultLogger()();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "Auth policy is global binding, performing bound signature", v85, 2u);
  }

  v86 = v0[31];
  v87 = v0[27];
  v88 = v0[28];
  v89 = v0[12];

  v11(v86, v87);
  v90 = *(v89 + 80);
  v91 = swift_task_alloc();
  v0[44] = v91;
  *v91 = v0;
  v91[1] = sub_1000D58F0;

  return sub_100006750(2);
}

uint64_t sub_1000D58F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 352);
  v8 = *v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;

  if (v2)
  {
    v6 = sub_1000D6380;
  }

  else
  {
    v6 = sub_1000D5A08;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000D5A08()
{
  if (*(v0 + 368) >> 60 == 15)
  {
    v1 = *(v0 + 344);
    v81 = *(v0 + 328);
    v84 = *(v0 + 336);
    v87 = *(v0 + 312);
    v77 = *(v0 + 304);
    v2 = *(v0 + 296);
    v3 = *(v0 + 168);
    v90 = *(v0 + 160);
    v94 = *(v0 + 176);
    (*(*(v0 + 120) + 104))(*(v0 + 128), enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), *(v0 + 112));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v2, v77);
    sub_1000092BC(v81, v84);

    (*(v3 + 8))(v94, v90);
LABEL_6:
    v65 = *(v0 + 280);
    v67 = *(v0 + 272);
    v69 = *(v0 + 264);
    v71 = *(v0 + 256);
    v73 = *(v0 + 248);
    v75 = *(v0 + 240);
    v78 = *(v0 + 232);
    v28 = *(v0 + 200);
    v29 = *(v0 + 208);
    v30 = *(v0 + 192);
    v82 = *(v0 + 184);
    v85 = *(v0 + 176);
    v88 = *(v0 + 152);
    v92 = *(v0 + 144);
    v96 = *(v0 + 104);
    (*(*(v0 + 120) + 104))(*(v0 + 128), enum case for DIPError.Code.internalError(_:), *(v0 + 112));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v28 + 8))(v29, v30);

    v31 = *(v0 + 8);
    goto LABEL_7;
  }

  v4 = *(v0 + 360);
  v5 = *(v0 + 328);
  v91 = *(v0 + 336);
  v95 = *(v0 + 376);
  v6 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  type metadata accessor for AppleIDVManager();
  sub_1000215BC((v0 + 16));
  v9 = *(v0 + 48);
  sub_100009278((v0 + 16), *(v0 + 40));
  v58 = v9;
  dispatch thunk of AppleIDVManaging.authorizePresentmentForSignature(aclBlob:externalizedLAContext:seSlot:payloadDigest:)();
  if (v95)
  {
    v11 = *(v0 + 360);
    v10 = *(v0 + 368);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 328);
    v16 = *(v0 + 304);
    v15 = *(v0 + 312);
    v17 = *(v0 + 296);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    sub_10001C120(v11, v10);

    sub_1000092BC(v17, v16);
    sub_1000092BC(v14, v13);

    sub_100005090((v0 + 16));
    goto LABEL_6;
  }

  v19 = *(v0 + 328);
  v18 = *(v0 + 336);
  v20 = *(v0 + 320);
  v22 = *(v0 + 296);
  v21 = *(v0 + 304);
  v23 = [*(v0 + 64) seAccessEndpoint];
  v24 = sub_10004816C(v19, v18, v20, v22, v21, v23);
  v27 = *(v0 + 360);
  v26 = *(v0 + 368);
  v33 = v24;
  v34 = v25;
  v35 = *(v0 + 96);

  type metadata accessor for IDCSAnalytics();
  v36 = *(v35 + 16);
  static IDCSAnalytics.sendLegacyACLUsageEvent(presentmentType:)();
  sub_10001C120(v27, v26);
  sub_100005090((v0 + 16));
  v37 = *(v0 + 288);
  v39 = *(v0 + 224);
  v38 = *(v0 + 232);
  v40 = *(v0 + 216);
  v41 = *(v0 + 104);
  defaultLogger()();
  v42 = swift_task_alloc();
  *(v42 + 16) = v33;
  *(v42 + 24) = v34;
  Logger.cryptoParam(_:)();

  v37(v38, v40);
  sub_100009708(v33, v34);
  COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
  v43 = type metadata accessor for COSE_Sign1();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v41, 1, v43);
  v89 = *(v0 + 328);
  v93 = *(v0 + 336);
  v97 = *(v0 + 312);
  v83 = *(v0 + 344);
  v86 = *(v0 + 304);
  v46 = *(v0 + 296);
  if (v45 == 1)
  {
    v47 = *(v0 + 168);
    v76 = *(v0 + 160);
    v79 = *(v0 + 176);
    v49 = *(v0 + 120);
    v48 = *(v0 + 128);
    v50 = *(v0 + 112);
    sub_10000A0D4(*(v0 + 104), &qword_1002014D0, &unk_1001AD120);
    (*(v49 + 104))(v48, enum case for DIPError.Code.idcsCOSECreationFailed(_:), v50);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v46, v86);
    sub_1000092BC(v89, v93);

    sub_1000092BC(v33, v34);
    (*(v47 + 8))(v79, v76);
    goto LABEL_6;
  }

  v60 = *(v0 + 280);
  v61 = *(v0 + 272);
  v62 = *(v0 + 264);
  v63 = *(v0 + 256);
  v68 = *(v0 + 240);
  v70 = *(v0 + 232);
  v52 = *(v0 + 200);
  v51 = *(v0 + 208);
  v59 = *(v0 + 192);
  v64 = *(v0 + 248);
  v66 = *(v0 + 176);
  v53 = *(v0 + 160);
  v72 = *(v0 + 184);
  v74 = *(v0 + 152);
  v54 = *(v0 + 144);
  v80 = *(v0 + 128);
  v55 = v34;
  v56 = *(v0 + 104);
  v57 = *(v0 + 56);
  (*(*(v0 + 168) + 8))();

  sub_1000092BC(v46, v86);
  sub_1000092BC(v89, v93);

  sub_1000092BC(v33, v55);
  (*(v44 + 32))(v57, v56, v43);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v52 + 8))(v51, v59);

  v31 = *(v0 + 8);
LABEL_7:

  return v31();
}

uint64_t sub_1000D6380()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];

  sub_1000092BC(v6, v5);
  sub_1000092BC(v3, v2);

  (*(v8 + 8))(v7, v9);
  v10 = v0[47];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[33];
  v19 = v0[32];
  v20 = v0[31];
  v21 = v0[30];
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[24];
  v22 = v0[29];
  v23 = v0[23];
  v24 = v0[22];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[13];
  (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v12 + 8))(v11, v13);

  v14 = v0[1];

  return v14();
}

unint64_t sub_1000D662C()
{
  _StringGuts.grow(_:)(34);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000020;
}

uint64_t sub_1000D66BC(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v82 = a2;
  v80 = a4;
  v81 = a3;
  v79 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  __chkstk_darwin(v4);
  v78 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SHA256();
  v64 = *(v62 - 8);
  v10 = *(v64 + 64);
  __chkstk_darwin(v62);
  v61 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  __chkstk_darwin(v12);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RFC8152SigStructure();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  __chkstk_darwin(v15);
  v74 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004E70(&qword_100201520, &qword_1001AD110);
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  __chkstk_darwin(v18);
  v75 = &v61 - v20;
  v21 = sub_100004E70(&qword_100202930, &qword_1001AD118);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v61 - v24;
  v26 = type metadata accessor for ISO18013SessionTranscript();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ISO18013DeviceAuthentication();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30, v79, v26);
  (*(v22 + 16))(v25, v80, v21);

  ISO18013DeviceAuthentication.init(sessionTranscript:docType:deviceNamespaceBytes:)();
  sub_1000D8560();
  sub_1000DC984(&qword_100202938, &type metadata accessor for ISO18013DeviceAuthentication);
  v36 = v86;
  v37 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v39 = v36;
  if (v36)
  {
    (*(v32 + 8))(v35, v31);

    (*(v76 + 104))(v78, enum case for DIPError.Code.internalError(_:), v77);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v41 = v72;
    v40 = v73;
    v82 = v35;
    v83 = v37;
    v42 = v32;
    v86 = v31;
    v84 = v37;
    v85 = v38;
    v43 = v38;
    sub_100009708(v37, v38);
    sub_100046428();
    sub_10004647C();

    CBOREncodedCBOR.init(value:tag:encoder:)();
    v81 = v43;
    v45 = v75;
    v46 = CBOREncodedCBOR.dataValue.getter();
    v48 = v47;
    (*(v41 + 8))(v45, v40);

    sub_100009708(v46, v48);
    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v80 = v48;
    sub_1000DC984(&qword_100202940, &type metadata accessor for RFC8152SigStructure);
    v49 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v51 = v50;
    v78 = sub_1000DC984(&qword_100200608, &type metadata accessor for SHA256);
    v52 = v61;
    v79 = v46;
    v53 = v62;
    dispatch thunk of HashFunction.init()();
    sub_100009708(v49, v51);
    v75 = v51;
    sub_1000D8FBC(v49, v51);
    v73 = v49;
    sub_1000092BC(v49, v51);
    v54 = v63;
    dispatch thunk of HashFunction.finalize()();
    (*(v64 + 8))(v52, v53);
    sub_1000DC984(&qword_100200610, &type metadata accessor for SHA256Digest);
    v55 = v66;
    v39 = Digest.data.getter();
    (*(v65 + 8))(v54, v55);
    v56 = v67;
    v57 = defaultLogger()();
    __chkstk_darwin(v57);
    v58 = v75;
    Logger.cryptoParam(_:)();
    v59 = *(v68 + 8);
    v59(v56, v69);
    v60 = defaultLogger()();
    v78 = &v61;
    __chkstk_darwin(v60);
    Logger.cryptoParam(_:)();
    sub_1000092BC(v73, v58);
    sub_1000092BC(v79, v80);

    sub_1000092BC(v83, v81);
    v59(v56, v69);
    (*(v70 + 8))(v74, v71);
    (*(v42 + 8))(v82, v86);
  }

  return v39;
}

unint64_t sub_1000D71D4()
{
  _StringGuts.grow(_:)(37);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000023;
}

unint64_t sub_1000D7264()
{
  _StringGuts.grow(_:)(31);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001DLL;
}

uint64_t sub_1000D72F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_100004E70(&qword_100202918, &qword_1001AD108) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for ISO18013SessionData();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7448, 0, 0);
}

uint64_t sub_1000D7448()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[11] = sub_1000D8560();
  type metadata accessor for ISO18013Response();
  sub_1000DC984(&qword_100202920, &type metadata accessor for ISO18013Response);
  v3 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v0[12] = 0;
  v0[13] = v3;
  v0[14] = v4;
  v5 = v3;
  v6 = v4;
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  v10 = v0[3];
  defaultLogger()();
  v11 = swift_task_alloc();
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  Logger.sensitive(_:)();

  (*(v8 + 8))(v7, v9);
  v12._countAndFlagsBits = 0x6661363535363661;
  v13._object = 0x80000001001B89A0;
  v12._object = 0xE800000000000000;
  v13._countAndFlagsBits = 0xD000000000000058;
  logMilestone(tag:description:)(v12, v13);
  v14 = *(v10 + 72);
  v0[15] = v14;

  return _swift_task_switch(sub_1000D7638, v14, 0);
}

uint64_t sub_1000D7638()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = sub_1000DEE04(*(v0 + 104), *(v0 + 112));
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 144) = v4;
  if (v2)
  {
    v5 = sub_1000D7910;
  }

  else
  {
    v5 = sub_1000D76C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000D76C8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = type metadata accessor for ISO18013SessionData.Status();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100009708(v1, v2);
  ISO18013SessionData.init(data:status:)();
  sub_1000DC984(&qword_100202928, &type metadata accessor for ISO18013SessionData);
  v9 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v3)
  {
    v11 = v0[13];
    v12 = v0[14];
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_1000092BC(v11, v12);
    sub_1000092BC(v0[17], v0[18]);
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[7];
    v16 = v0[4];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[17];
    v20 = v0[18];
    v22 = v0[13];
    v21 = v0[14];
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[4];
    v26 = v9;
    v28 = v10;
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_1000092BC(v22, v21);
    sub_1000092BC(v19, v20);

    v27 = v0[1];

    return v27(v26, v28);
  }
}

uint64_t sub_1000D7910()
{
  v1 = v0[16];
  sub_1000092BC(v0[13], v0[14]);
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

unint64_t sub_1000D79A4()
{
  _StringGuts.grow(_:)(25);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000016;
}

uint64_t sub_1000D7A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 154) = v23;
  *(v8 + 153) = a8;
  *(v8 + 152) = a7;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for NWInterface.InterfaceType();
  *(v8 + 40) = v9;
  v10 = *(v9 - 8);
  *(v8 + 48) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  v12 = type metadata accessor for NWPath.Status();
  *(v8 + 64) = v12;
  v13 = *(v12 - 8);
  *(v8 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v15 = *(*(sub_100004E70(&qword_1002029C0, &qword_1001AD218) - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v16 = type metadata accessor for NWPath();
  *(v8 + 104) = v16;
  v17 = *(v16 - 8);
  *(v8 + 112) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v19 = *(*(sub_100004E70(&qword_1002029C8, &qword_1001AD220) - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v20 = *(*(sub_100004E70(&qword_1002029D0, &qword_1001AD228) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000D7C94, 0, 0);
}

uint64_t sub_1000D7C94()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = type metadata accessor for IDCSAnalytics.NetworkStatus();
  v7 = *(v6 - 8);
  v54 = *(v7 + 56);
  v54(v1, 1, 1, v6);
  v8 = type metadata accessor for IDCSAnalytics.ConnectionType();
  v55 = *(v8 - 8);
  v57 = *(v55 + 56);
  v57(v2, 1, 1, v8);
  type metadata accessor for NetworkMonitor();
  static NetworkMonitor.shared.getter();
  NetworkMonitor.currentPath.getter();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10000A0D4(*(v0 + 96), &qword_1002029C0, &qword_1001AD218);
  }

  else
  {
    v53 = v8;
    v48 = *(v0 + 144);
    v49 = v6;
    v50 = *(v0 + 136);
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = v7;
    v14 = *(v0 + 48);
    v51 = *(v0 + 40);
    v52 = *(v0 + 56);
    (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 96), *(v0 + 104));
    NWPath.status.getter();
    (*(v10 + 104))(v11, enum case for NWPath.Status.satisfied(_:), v12);
    v15 = static NWPath.Status.== infix(_:_:)();
    v16 = *(v10 + 8);
    v16(v11, v12);
    v16(v9, v12);
    sub_10000A0D4(v48, &qword_1002029D0, &qword_1001AD228);
    v17 = &enum case for IDCSAnalytics.NetworkStatus.online(_:);
    if ((v15 & 1) == 0)
    {
      v17 = &enum case for IDCSAnalytics.NetworkStatus.offline(_:);
    }

    (*(v13 + 104))(v50, *v17, v49);
    v54(v50, 0, 1, v49);
    sub_100046524(v50, v48, &qword_1002029D0, &qword_1001AD228);
    v18 = *(v14 + 104);
    v18(v52, enum case for NWInterface.InterfaceType.cellular(_:), v51);
    v19 = NWPath.usesInterfaceType(_:)();
    v20 = *(v14 + 8);
    v20(v52, v51);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    if (v19)
    {
      (*(v24 + 8))(*(v0 + 120), *(v0 + 104));
      sub_10000A0D4(v22, &qword_1002029C8, &qword_1001AD220);
      v25 = v53;
      (*(v55 + 104))(v22, enum case for IDCSAnalytics.ConnectionType.cellular(_:), v53);
    }

    else
    {
      v26 = *(v0 + 56);
      v27 = *(v0 + 40);
      v18(v26, enum case for NWInterface.InterfaceType.wifi(_:), v27);
      v28 = NWPath.usesInterfaceType(_:)();
      v20(v26, v27);
      (*(v24 + 8))(v21, v23);
      sub_10000A0D4(v22, &qword_1002029C8, &qword_1001AD220);
      if (v28)
      {
        v29 = &enum case for IDCSAnalytics.ConnectionType.wifi(_:);
      }

      else
      {
        v29 = &enum case for IDCSAnalytics.ConnectionType.other(_:);
      }

      v25 = v53;
      (*(v55 + 104))(*(v0 + 128), *v29, v53);
    }

    v57(*(v0 + 128), 0, 1, v25);
  }

  v30 = *(v0 + 24);
  if (v30 >> 60 != 15)
  {
    v31 = *(v0 + 16);
    type metadata accessor for SecAccessControl(0);
    sub_100009708(v31, v30);
    v32 = static SecAccessControlRef.fromData(_:)();
    v33 = *(v0 + 144);
    v34 = *(v0 + 128);
    v35 = *(v0 + 32);
    v58 = *(v0 + 16);
    v59 = *(v0 + 24);
    v36 = *(v0 + 152);
    v37 = *(v0 + 153);
    v38 = *(v0 + 154);
    v56 = v32;
    SecAccessControlRef.isBiometricAuth.getter();
    type metadata accessor for IDCSAnalytics();
    IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.description.getter();
    static IDCSAnalytics.sendPhysicalPresentmentEvent(networkStatus:connectionType:presentmentResult:biometricAuthMethod:terminalAuthPerformed:portraitWasRequested:isAppleReader:)();

    sub_10001C120(v58, v59);
  }

  v39 = *(v0 + 136);
  v40 = *(v0 + 144);
  v41 = *(v0 + 120);
  v43 = *(v0 + 88);
  v42 = *(v0 + 96);
  v44 = *(v0 + 80);
  v45 = *(v0 + 56);
  sub_10000A0D4(*(v0 + 128), &qword_1002029C8, &qword_1001AD220);
  sub_10000A0D4(v40, &qword_1002029D0, &qword_1001AD228);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1000D8304()
{
  v1 = v0;
  v2 = type metadata accessor for ISO18013CodingKeyFormat();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for ISO18013PresentmentType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CBORDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = CBORDecoder.init()();
  v22 = &enum case for ISO18013PresentmentType.digital(_:);
  v23 = &enum case for ISO18013PresentmentType.webRequestForwarding(_:);
  v24 = *(v1 + 16);
  if (v24 != 2)
  {
    v23 = &enum case for ISO18013PresentmentType.physical(_:);
  }

  if (v24 != 1)
  {
    v22 = v23;
  }

  (*(v14 + 104))(v17, *v22, v13);
  CBORDecoder.presentmentType.setter();
  if ((*(v1 + 56) & 1) == 0)
  {
    sub_1000E1028(*(v1 + 48), v10);
    (*(v3 + 32))(v12, v10, v2);
    (*(v3 + 16))(v7, v12, v2);
    CBORDecoder.codingKeyFormat.setter();
    (*(v3 + 8))(v12, v2);
  }

  return v21;
}

uint64_t sub_1000D8560()
{
  v1 = type metadata accessor for CBOREncoder.DictionaryEncodingStrategy();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ISO18013DictionaryEncodingStrategy();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ISO18013CodingKeyFormat();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ISO18013PresentmentType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CBOREncoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = CBOREncoder.init()();
  v25 = &enum case for ISO18013PresentmentType.digital(_:);
  v26 = &enum case for ISO18013PresentmentType.webRequestForwarding(_:);
  v27 = *(v0 + 16);
  if (v27 != 2)
  {
    v26 = &enum case for ISO18013PresentmentType.physical(_:);
  }

  if (v27 != 1)
  {
    v25 = v26;
  }

  (*(v17 + 104))(v20, *v25, v16);
  CBOREncoder.presentmentType.setter();
  if ((*(v0 + 56) & 1) == 0)
  {
    v28 = *(v0 + 48);
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43 = v5;
      v32 = v31;
      v42 = swift_slowAlloc();
      v49 = v42;
      *v32 = 136315138;
      v33 = DCPresentmentMessageEncodingFormatToString();
      v44 = v4;
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v8;
      v37 = v28;
      v39 = v38;

      v40 = sub_10010150C(v35, v39, &v49);
      v28 = v37;
      v8 = v36;

      *(v32 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Configuring CBOREncoder for message encoding format %s", v32, 0xCu);
      sub_100005090(v42);

      v5 = v43;
    }

    (*(v45 + 8))(v15, v46);
    sub_1000E1028(v28, v47);
    CBOREncoder.codingKeyFormat.setter();
    sub_1000E12CC(v28, v8);
    ISO18013DictionaryEncodingStrategy.cborEncoderStrategy.getter();
    (*(v48 + 8))(v8, v5);
    dispatch thunk of CBOREncoder.dictionaryEncodingStrategy.setter();
  }

  return v24;
}

uint64_t sub_1000D89A4()
{
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  sub_100005090(v0 + 11);
  v4 = v0[16];

  v5 = v0[17];

  return swift_deallocClassInstance();
}

uint64_t sub_1000D8A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000D8B28, 0, 0);
}

uint64_t sub_1000D8B28()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000DC984(&qword_1002029A8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000DC984(&qword_1002029B0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000D8CB8;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000D8CB8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000D8E74, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000D8E74()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_1000D8EE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000D79A4();
}

void sub_1000D8EE8(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t sub_1000D8FBC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_1000DC984(&qword_100200608, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000D919C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000D919C(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_1000DC984(&qword_100200608, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000D919C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000DC984(&qword_100200608, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D927C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000D71D4();
}

unint64_t sub_1000D9284()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000D7264();
}

unint64_t sub_1000D928C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000D662C();
}

uint64_t sub_1000D92A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "PresentmentResponseBuilder determineElementsToPresent", v14, 2u);
  }

  v15 = *(v5 + 8);
  v15(v11, v4);
  v16 = defaultLogger()();
  __chkstk_darwin(v16);
  *(&v19 - 2) = a2;
  Logger.sensitive(_:)();
  v15(v9, v4);
  if (a2)
  {
    a1 = sub_100020C3C(a2, a1);
  }

  else
  {
  }

  v17 = defaultLogger()();
  __chkstk_darwin(v17);
  *(&v19 - 2) = a1;
  Logger.sensitive(_:)();

  v15(v9, v4);
  return a1;
}

uint64_t sub_1000D9510(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100004E70(&qword_100202378, &unk_1001ACE70) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for IdentityReaderAuthenticator(0);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9694, 0, 0);
}

uint64_t sub_1000D9694()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if the credential is valid after network check", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  v12 = *(v7 + 8);
  v0[14] = v12;
  v12(v5, v6);
  sub_100046360(v11, v10, &qword_100202378, &unk_1001ACE70);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_10000A0D4(v0[3], &qword_100202378, &unk_1001ACE70);
LABEL_10:
    v19 = v0[10];
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[10];
    v24 = v0[7];
    v25 = v0[8];
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No server promise, meaning this passed using the cache, so success", v26, 2u);
    }

    v12(v23, v24);
    v28 = v0[12];
    v27 = v0[13];
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[3];

    v34 = v0[1];

    return v34(1);
  }

  v13 = v0[6];
  v14 = v0[4];
  sub_1000DC9CC(v0[3], v13, type metadata accessor for IdentityReaderAuthenticator);
  v15 = *(v13 + *(v14 + 28));
  v0[15] = v15;
  if (!v15)
  {
    sub_1000DC488(v0[6], type metadata accessor for IdentityReaderAuthenticator);
    goto LABEL_10;
  }

  v16 = async function pointer to Task.value.getter[1];

  v17 = swift_task_alloc();
  v0[16] = v17;
  v18 = sub_100004E70(&qword_100200208, &qword_1001AA530);
  *v17 = v0;
  v17[1] = sub_1000D99F8;

  return Task.value.getter(v0 + 18, v15, &type metadata for ServerRevocationResponse, v18, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000D99F8()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1000D9D4C;
  }

  else
  {
    v3 = sub_1000D9B0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D9B0C()
{
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 96);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "After online revocation checking, the certificate might still be revoked", v4, 2u);
    }

    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    v5(v6, v7);
  }

  v9 = *(v0 + 88);
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 88);
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = *(v0 + 48);
  if (v12)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "No errors were thrown during revocation checking, there is a valid credential", v19, 2u);
  }

  else
  {
  }

  v14(v15, v16);
  sub_1000DC488(v18, type metadata accessor for IdentityReaderAuthenticator);
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = *(v0 + 72);
  v25 = *(v0 + 48);
  v26 = *(v0 + 24);

  v27 = *(v0 + 8);

  return v27(1);
}

uint64_t sub_1000D9D4C()
{
  v1 = v0[17];
  v2 = v0[9];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Validating server promise failed with reason %@", v6, 0xCu);
    sub_10000A0D4(v7, &qword_1002003B8, &unk_1001AB850);
  }

  v9 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[8];
  v12 = v0[9];
  v15 = v0[6];
  v14 = v0[7];

  v11(v12, v14);
  sub_1000DC488(v15, type metadata accessor for IdentityReaderAuthenticator);
  v17 = v0[12];
  v16 = v0[13];
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[9];
  v21 = v0[6];
  v22 = v0[3];

  v23 = v0[1];

  return v23(0);
}

unint64_t sub_1000D9F3C(void *a1)
{
  v2 = sub_100004E70(&qword_100202988, &unk_1001AD140);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v104 - v4;
  v6 = type metadata accessor for AnyCodable();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v126 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v125 = &v104 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v104 - v19;
  __chkstk_darwin(v18);
  v22 = &v104 - v21;
  v23 = [a1 deviceNamespaces];
  v127 = v12;
  if (!v23)
  {
    defaultLogger()();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "No device namespaces were provided", v103, 2u);
      v12 = v127;
    }

    (*(v13 + 8))(v17, v12);
    return sub_10010D428(_swiftEmptyArrayStorage);
  }

  v24 = v23;
  sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = defaultLogger()();
  __chkstk_darwin(v26);
  *(&v104 - 2) = v25;
  Logger.sensitive(_:)();
  v28 = *(v13 + 8);
  v27 = v13 + 8;
  v118 = v28;
  v28(v22, v12);
  v29 = sub_10010D428(_swiftEmptyArrayStorage);
  v31 = 0;
  v33 = v25 + 64;
  v32 = *(v25 + 64);
  v108 = v25;
  v34 = 1 << *(v25 + 32);
  v134 = v29;
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v37 = (v34 + 63) >> 6;
  v124 = (v7 + 48);
  v122 = (v7 + 32);
  v116 = v7;
  v117 = (v7 + 16);
  v115 = v7 + 8;
  v111 = v7 + 40;
  *&v30 = 136315394;
  v112 = v30;
  v121 = v5;
  v123 = v6;
  v38 = v12;
  v106 = v25 + 64;
  v105 = v37;
  v119 = v27;
  v107 = v22;
  while (1)
  {
    if (v36)
    {
      v42 = v31;
    }

    else
    {
      do
      {
        v42 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_56;
        }

        if (v42 >= v37)
        {

          v99 = defaultLogger()();
          __chkstk_darwin(v99);
          *(&v104 - 2) = &v134;
          Logger.sensitive(_:)();
          v118(v22, v38);
          return v134;
        }

        v36 = *(v33 + 8 * v42);
        ++v31;
      }

      while (!v36);
    }

    v110 = v36;
    v109 = v42;
    v43 = __clz(__rbit64(v36)) | (v42 << 6);
    v44 = *(v108 + 56);
    v45 = (*(v108 + 48) + 16 * v43);
    v47 = *v45;
    v46 = v45[1];
    v113 = v47;
    v120 = v46;
    v48 = *(v44 + 8 * v43);
    if (v48 >> 62)
    {
      break;
    }

    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49)
    {
      goto LABEL_14;
    }

LABEL_40:
    v83 = v120;

    v131 = &_swiftEmptyDictionarySingleton;
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v134;
    v133 = v134;
    v86 = sub_100099644(v113, v83);
    v88 = *(v85 + 16);
    v89 = (v87 & 1) == 0;
    v81 = __OFADD__(v88, v89);
    v90 = v88 + v89;
    if (v81)
    {
      goto LABEL_59;
    }

    v91 = v87;
    if (*(v85 + 24) >= v90)
    {
      v93 = v110;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v98 = v86;
        sub_10010A3BC();
        v93 = v110;
        v86 = v98;
        v83 = v120;
      }
    }

    else
    {
      sub_100109168(v90, isUniquelyReferenced_nonNull_native);
      v86 = sub_100099644(v113, v83);
      if ((v91 & 1) != (v92 & 1))
      {
        goto LABEL_61;
      }

      v93 = v110;
    }

    v36 = (v93 - 1) & v93;
    v94 = v133;
    if (v91)
    {
      v39 = v133[7];
      v40 = *(v39 + 8 * v86);
      *(v39 + 8 * v86) = v131;
      v41 = v36;

      v36 = v41;
    }

    else
    {
      v133[(v86 >> 6) + 8] |= 1 << v86;
      v95 = (v94[6] + 16 * v86);
      *v95 = v113;
      v95[1] = v83;
      *(v94[7] + 8 * v86) = v131;
      v96 = v94[2];
      v81 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v81)
      {
        goto LABEL_60;
      }

      v94[2] = v97;
    }

    v134 = v94;
    v31 = v109;
    v6 = v123;
    v22 = v107;
    v33 = v106;
    v37 = v105;
  }

  v49 = _CocoaArrayWrapper.endIndex.getter();
  if (!v49)
  {
    goto LABEL_40;
  }

LABEL_14:
  v130 = v48 & 0xC000000000000001;
  v114 = v48 & 0xFFFFFFFFFFFFFF8;

  v50 = 0;
  v131 = &_swiftEmptyDictionarySingleton;
  v128 = v49;
  v129 = v48;
  while (1)
  {
    if (v130)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v50 >= *(v114 + 16))
      {
        goto LABEL_57;
      }

      v51 = *(v48 + 8 * v50 + 32);
    }

    v52 = v51;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    v132 = v50 + 1;
    v53 = [v51 elementIdentifier];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    sub_10019CC78(v5);
    if ((*v124)(v5, 1, v6) == 1)
    {
      sub_10000A0D4(v5, &qword_100202988, &unk_1001AD140);
      defaultLogger()();
      v57 = v120;

      v58 = Logger.logObject.getter();
      v59 = v20;
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v60))
      {
        v61 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *v61 = v112;
        v62 = sub_10010150C(v54, v56, &v133);

        *(v61 + 4) = v62;
        *(v61 + 12) = 2080;
        *(v61 + 14) = sub_10010150C(v113, v57, &v133);
        _os_log_impl(&_mh_execute_header, v58, v60, "Could not convert element %s in namespace %s to codable value", v61, 0x16u);
        swift_arrayDestroy();
        v6 = v123;

        v5 = v121;
      }

      else
      {
      }

      v38 = v127;
      v118(v59, v127);
      v20 = v59;
      goto LABEL_17;
    }

    v63 = v20;
    v64 = *v122;
    v65 = v125;
    (*v122)(v125, v5, v6);
    (*v117)(v126, v65, v6);
    v66 = v131;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v66;
    v69 = sub_100099644(v54, v56);
    v70 = *(v66 + 16);
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_55;
    }

    v73 = v68;
    if (*(v66 + 24) >= v72)
    {
      if (v67)
      {
        v6 = v123;
        if ((v68 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_10010A13C();
        v6 = v123;
        if ((v73 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_100108DE8(v72, v67);
      v74 = sub_100099644(v54, v56);
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_61;
      }

      v69 = v74;
      v6 = v123;
      if ((v73 & 1) == 0)
      {
LABEL_35:
        v77 = v133;
        v133[(v69 >> 6) + 8] |= 1 << v69;
        v78 = (v77[6] + 16 * v69);
        *v78 = v54;
        v78[1] = v56;
        v79 = v116;
        v64((v77[7] + *(v116 + 72) * v69), v126, v6);

        (*(v79 + 8))(v125, v6);
        v80 = v77[2];
        v81 = __OFADD__(v80, 1);
        v82 = v80 + 1;
        if (v81)
        {
          goto LABEL_58;
        }

        v131 = v77;
        v77[2] = v82;
        goto LABEL_37;
      }
    }

    v131 = v133;
    v76 = v116;
    (*(v116 + 40))(v133[7] + *(v116 + 72) * v69, v126, v6);

    (*(v76 + 8))(v125, v6);
LABEL_37:
    v5 = v121;
    v20 = v63;
    v38 = v127;
LABEL_17:
    v48 = v129;
    ++v50;
    if (v132 == v128)
    {

      v83 = v120;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000DAA74()
{
  result = qword_100202958;
  if (!qword_100202958)
  {
    sub_100021ED0(&qword_100202960, &qword_1001AD138);
    sub_1000DC984(&qword_100202968, &type metadata accessor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202958);
  }

  return result;
}

uint64_t sub_1000DAB30(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(&qword_100202948, &qword_1001AD130);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DABB4()
{
  result = qword_100202978;
  if (!qword_100202978)
  {
    sub_100021ED0(&qword_100202960, &qword_1001AD138);
    sub_1000DC984(&qword_100202980, &type metadata accessor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202978);
  }

  return result;
}

unint64_t sub_1000DAC80(unint64_t a1, uint64_t a2, const char *a3)
{
  v64 = a3;
  v63 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013PresentmentType();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DigitalPresentmentResponseCryptor();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v62 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004E70(&qword_100202370, &qword_1001ACE68);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v50 - v16;
  v18 = type metadata accessor for ISO18013SessionTranscript();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v58 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v50 - v23;
  __chkstk_darwin(v22);
  v26 = &v50 - v25;
  v28 = v27;
  sub_100046360(a2, v17, &qword_100202370, &qword_1001ACE68);
  if ((*(v28 + 48))(v17, 1, v18) == 1)
  {
    sub_10000A0D4(v17, &qword_100202370, &qword_1001ACE68);
    (*(v66 + 104))(v7, enum case for DIPError.Code.idcsInvalidAppleSessionTranscript(_:), v4);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v29 = v4;
LABEL_7:
    (*(v66 + 104))(v7, enum case for DIPError.Code.internalError(_:), v29);
    swift_errorRetain();
    v40 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v40;
  }

  v54 = v7;
  v55 = v4;
  (*(v28 + 32))(v26, v17, v18);
  v30 = *(v28 + 16);
  v30(v24, v26, v18);
  v31 = (*(v28 + 88))(v24, v18);
  v32 = enum case for ISO18013SessionTranscript.apple(_:);
  v35 = *(v28 + 8);
  v34 = v28 + 8;
  v33 = v35;
  v35(v24, v18);
  if (v31 != v32)
  {
    v65 = "onCertificateChain:)";
    v7 = v54;
    v29 = v55;
    (*(v66 + 104))(v54, enum case for DIPError.Code.idcsInvalidAppleSessionTranscript(_:), v55);
    v64 = "Unencrypted response: ";
    v63 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v33(v26, v18);
    goto LABEL_7;
  }

  v52 = v26;
  v53 = v33;
  v50 = v34;
  v51 = v18;
  v36 = v65;
  result = decodeCertificateChain(fromDER:)();
  v38 = v66;
  if (v36)
  {
    v65 = "n Apple session transcript";
    v7 = v54;
    v39 = v55;
    (*(v66 + 104))(v54, enum case for DIPError.Code.idcsMisformattedResponseEncryptionCertificate(_:), v55);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v29 = v39;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v53(v52, v51);
    goto LABEL_7;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_16:

    v65 = "tion certificate chain";
    v7 = v54;
    v49 = v55;
    (*(v38 + 104))(v54, enum case for DIPError.Code.idcsMissingResponseEncryptionCertificate(_:), v55);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    v29 = v49;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v53(v52, v51);
    goto LABEL_7;
  }

  v47 = result;
  v48 = _CocoaArrayWrapper.endIndex.getter();
  result = v47;
  if (!v48)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((result & 0xC000000000000001) != 0)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v41 = v51;
    v42 = v52;
    goto LABEL_14;
  }

  v41 = v51;
  v42 = v52;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(result + 32);
LABEL_14:

    type metadata accessor for SecTrust(0);
    v44 = static SecTrustRef.newFromUnverifiedCertificate(_:)();
    v65 = v43;
    v45 = v41;
    v30(v58, v42, v41);
    (*(v60 + 104))(v59, enum case for ISO18013PresentmentType.digital(_:), v61);
    v46 = v62;
    DigitalPresentmentResponseCryptor.init(sessionTranscript:presentmentType:)();
    v40 = DigitalPresentmentResponseCryptor.encrypt(_:to:)();

    (*(v56 + 8))(v46, v57);
    v53(v42, v45);
    return v40;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DB868(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v56 = a4;
  v55 = a3;
  v53 = a1;
  v61 = type metadata accessor for DIPError.Code();
  v58 = *(v61 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v61);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ISO18013PresentmentType();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  __chkstk_darwin(v49);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DigitalPresentmentResponseCryptor();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v48 = *(v50 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v50);
  v54 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004E70(&qword_100202370, &qword_1001ACE68);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v41 - v17;
  v19 = type metadata accessor for ISO18013SessionTranscript();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v44 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v41 - v25;
  __chkstk_darwin(v24);
  v28 = &v41 - v27;
  sub_100046360(a2, v18, &qword_100202370, &qword_1001ACE68);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000A0D4(v18, &qword_100202370, &qword_1001ACE68);
    v29 = v58;
    v30 = v61;
    (*(v58 + 104))(v7, enum case for DIPError.Code.idcsInvalidAppleSessionTranscript(_:), v61);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v31 = v29;
LABEL_8:
    (*(v31 + 104))(v7, enum case for DIPError.Code.internalError(_:), v30);
    swift_errorRetain();
    v40 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v40;
  }

  v42 = v7;
  (*(v20 + 32))(v28, v18, v19);
  v32 = *(v20 + 16);
  v32(v26, v28, v19);
  v33 = (*(v20 + 88))(v26, v19);
  v34 = enum case for ISO18013SessionTranscript.digitalCredentialAPI(_:);
  v35 = *(v20 + 8);
  v35(v26, v19);
  v43 = v35;
  if (v33 != v34)
  {
    v57 = "wEncryptionKey:)";
    v31 = v58;
    v7 = v42;
    v30 = v61;
    (*(v58 + 104))(v42, enum case for DIPError.Code.idcsInvalidAppleSessionTranscript(_:), v61);
    v56 = "Unencrypted response: ";
    v55 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v43(v28, v19);
    goto LABEL_8;
  }

  v59 = v55;
  v60 = v56;
  sub_100009708(v55, v56);
  v36 = v54;
  v37 = v57;
  P256.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
  v30 = v61;
  v31 = v58;
  if (v37)
  {
    v43(v28, v19);
    v7 = v42;
    goto LABEL_8;
  }

  v32(v44, v28, v19);
  (*(v47 + 104))(v45, enum case for ISO18013PresentmentType.webRequestForwarding(_:), v49);
  v38 = v46;
  DigitalPresentmentResponseCryptor.init(sessionTranscript:presentmentType:)();
  v40 = DigitalPresentmentResponseCryptor.encrypt(_:to:)();
  (*(v51 + 8))(v38, v52);
  (*(v48 + 8))(v36, v50);
  v43(v28, v19);
  return v40;
}

uint64_t sub_1000DC1F0()
{
  v1 = v0[3];

  sub_1000092BC(v0[4], v0[5]);
  sub_100005090(v0 + 6);
  v2 = v0[12];
  if (v2 >> 60 != 15)
  {
    sub_1000092BC(v0[11], v2);
  }

  sub_1000092BC(v0[13], v0[14]);
  v3 = v0[15];

  v4 = v0[16];

  v5 = v0[19];

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000DC270(uint64_t a1, uint64_t a2)
{
  v17 = *(v2 + 16);
  v16 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 88);
  v14 = *(v2 + 112);
  v15 = *(v2 + 96);
  v9 = *(v2 + 128);
  v8 = *(v2 + 136);
  v10 = *(v2 + 144);
  v11 = *(v2 + 152);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000105C8;

  return sub_1000C9298(a1, a2, v17, v16, v5, v6, v2 + 48, v7);
}

uint64_t sub_1000DC388()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DC3C0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000104D4;

  return sub_1000BACE0(a1, a2, v7);
}

uint64_t sub_1000DC488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DC508()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1000092BC(v0[5], v0[6]);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000DC5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DC708@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013IssuerSignedItem.elementIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000DC758(uint64_t a1)
{
  v4 = *(type metadata accessor for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  v10 = (v9 + *(v4 + 64));
  v11 = v10[2];
  v12 = v10[1];
  v13 = *v10;
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1000105C8;

  return sub_1000D7A44(a1, v5, v6, v7, v8, v9, v13, v12);
}

uint64_t sub_1000DC8A4()
{
  v1 = type metadata accessor for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 5);
  if (v6 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + 4), v6);
  }

  v7 = (v3 + 48) & ~v3;
  v8 = v4 + v7;
  (*(v2 + 8))(&v0[v7], v1);

  return _swift_deallocObject(v0, v8 + 3, v3 | 7);
}

uint64_t sub_1000DC984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DC9CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DCA44()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000DCAB0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000DCAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DCBC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000DCC70()
{
  sub_1000DCFB4(319, &qword_100202A40, type metadata accessor for KeyLookupInfo);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000DCD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000DCDFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000DCEC4()
{
  sub_1000DCFB4(319, &qword_100202AD8, &type metadata accessor for COSE_Sign1);
  if (v0 <= 0x3F)
  {
    sub_1000BDC4C(319, &qword_100202AE0, &unk_100202AE8, &qword_1001AD248);
    if (v1 <= 0x3F)
    {
      sub_1000BDC4C(319, &qword_100202648, &qword_1002019B8, &qword_1001AD020);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000DCFB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000DD01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v110 = a5;
  v103 = a4;
  v112 = a2;
  v113 = a3;
  v114 = a1;
  v119 = type metadata accessor for DIPError.Code();
  v7 = *(v119 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v119);
  v120 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004E70(&qword_100202BD8, &qword_1001AD2C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v93 - v12;
  v98 = type metadata accessor for COSEKey();
  v97 = *(v98 - 8);
  v14 = *(v97 + 64);
  v15 = __chkstk_darwin(v98);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v93 - v18;
  v19 = type metadata accessor for DIPSignpost.Config();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v111 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DIPSignpost();
  v115 = *(v22 - 8);
  v116 = v22;
  v23 = *(v115 + 64);
  v24 = __chkstk_darwin(v22);
  v100 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v95 = &v93 - v27;
  __chkstk_darwin(v26);
  v118 = &v93 - v28;
  v109 = type metadata accessor for ISO18013SessionCryptarch.Curve();
  v108 = *(v109 - 8);
  v29 = *(v108 + 64);
  __chkstk_darwin(v109);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ISO18013SessionCryptarch.Variant();
  v105 = *(v106 - 8);
  v32 = *(v105 + 64);
  __chkstk_darwin(v106);
  v107 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ISO18013SessionCryptarch.Role();
  v101 = *(v102 - 8);
  v34 = *(v101 + 64);
  __chkstk_darwin(v102);
  v104 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Logger();
  v121 = *(v36 - 8);
  v122 = v36;
  v37 = *(v121 + 64);
  v38 = __chkstk_darwin(v36);
  v99 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v93 - v40;
  defaultLogger()();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v94 = v31;
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "PresentmentSessionCryptor decryptReaderRequest", v44, 2u);
    v31 = v94;
  }

  v45 = v122;
  v46 = *(v121 + 8);
  v46(v41, v122);
  v47 = sub_1000DF3C0();
  v48 = v47;
  if ((v47 - 2) < 2)
  {
    (*(v101 + 104))(v104, enum case for ISO18013SessionCryptarch.Role.device(_:), v102);
    v54 = &enum case for ISO18013SessionCryptarch.Variant.UA(_:);
    if (v48 != 2)
    {
      v54 = &enum case for ISO18013SessionCryptarch.Variant.ACWG(_:);
    }

    (*(v105 + 104))(v107, *v54, v106);
    (*(v108 + 104))(v31, enum case for ISO18013SessionCryptarch.Curve.P256(_:), v109);
    v55 = type metadata accessor for ISO18013SessionCryptarch();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v58 = ISO18013SessionCryptarch.init(role:variant:curve:)();
    v59 = *(v6 + 160);
    *(v6 + 160) = v58;
    swift_retain_n();

    static IDCSSignposts.presentmentDeriveSessionKey.getter();
    v60 = v118;
    DIPSignpost.init(_:)();
    v61 = v117;
    ISO18013SessionCryptarch.deriveSessionKeys(sessionTranscript:ikm:)();
    if (v61)
    {

      (*(v7 + 104))(v120, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v119);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return (*(v115 + 8))(v118, v116);
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v66 = *(v115 + 8);
    v66(v60, v116);
    goto LABEL_18;
  }

  if (!v47)
  {
    if (!*(v6 + 160))
    {
      (*(v7 + 104))(v120, enum case for DIPError.Code.idcsPreconditionNotMet(_:), v119);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_20;
    }

    v62 = *(v6 + 160);
    v63 = v7;

    ISO18013SessionEstablishment.readerKey.getter();
    v64 = sub_100004E70(&qword_100202BE0, &qword_1001AD2C8);
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v13, 1, v64) == 1)
    {
      sub_10000A0D4(v13, &qword_100202BD8, &qword_1001AD2C0);
      (*(v63 + 104))(v120, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v119);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    CBOREncodedCBOR.value.getter();
    (*(v65 + 8))(v13, v64);
    v71 = v97;
    v72 = v96;
    v73 = v98;
    (*(v97 + 32))(v96, v17, v98);
    if (COSEKey.type.getter() == 2)
    {
      COSEKey.ec2.getter();
      v74 = v127;
      if (v127 >> 60 != 15)
      {
        v76 = v128;
        v75 = v129;
        v78 = v125;
        v77 = v126;
        sub_1000092BC(v130, v131);
        v79 = v76;
        v71 = v97;
        sub_1000092BC(v79, v75);
        sub_1000092BC(v77, v74);
        if (v78 == 1)
        {
          v80 = COSEKey.publicKeyData.getter();
          if (v81 >> 60 == 15)
          {
            v122 = "invalid reader key algorithm ";
            (*(v63 + 104))(v120, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v119);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            return (*(v71 + 8))(v72, v73);
          }

          v118 = v80;
          v121 = v81;
          v91 = v117;
          ISO18013SessionCryptarch.setRemoteKey(_:)();
          if (v91)
          {
            (*(v63 + 104))(v120, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v119);
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_10001C120(v118, v121);

            v89 = *(v71 + 8);
            v90 = v96;
            return v89(v90, v98);
          }

          static IDCSSignposts.presentmentDeriveSessionKey.getter();
          v92 = v95;
          DIPSignpost.init(_:)();
          ISO18013SessionCryptarch.deriveSessionKeys(sessionTranscript:ikm:)();
          DIPSignpost.end(workflowID:isBackground:)(0, 2);
          sub_10001C120(v118, v121);
          v66 = *(v115 + 8);
          v66(v92, v116);
          (*(v97 + 8))(v72, v98);
LABEL_18:
          static IDCSSignposts.presentmentDecryptReaderRequest.getter();
          v67 = v100;
          DIPSignpost.init(_:)();
          v68 = ISO18013SessionEstablishment.data.getter();
          v70 = v69;
          v82 = ISO18013SessionCryptarch.decrypt(data:)();
          sub_1000092BC(v68, v70);
          DIPSignpost.end(workflowID:isBackground:)(0, 2);

          v66(v67, v116);
          return v82;
        }
      }

      v123 = 0;
      v124 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v87._countAndFlagsBits = 0xD00000000000001DLL;
      v87._object = 0x80000001001B98F0;
      String.append(_:)(v87);
      v132 = COSEKey.algorithm.getter();
      type metadata accessor for COSEAlgorithm(0);
      _print_unlocked<A, B>(_:_:)();
      v88 = *(v63 + 104);
      v122 = v62;
      v88(v120, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v119);
      v85 = v71;
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      v86 = v72;
      swift_allocError();
    }

    else
    {
      v123 = 0;
      v124 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      v83._countAndFlagsBits = 0xD000000000000018;
      v83._object = 0x80000001001B98D0;
      String.append(_:)(v83);
      v132 = COSEKey.type.getter();
      type metadata accessor for COSEKeyKTYType(0);
      _print_unlocked<A, B>(_:_:)();
      v84 = *(v63 + 104);
      v122 = v62;
      v84(v120, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v119);
      v85 = v71;
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      v86 = v72;
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v89 = *(v85 + 8);
    v90 = v86;
    return v89(v90, v98);
  }

  if (v47 != 1)
  {
    (*(v7 + 104))(v120, enum case for DIPError.Code.unexpectedDaemonState(_:), v119);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_20:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v49 = v99;
  defaultLogger()();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Session encryption is disabled; no need to decrypt reader request", v52, 2u);
    v45 = v122;
  }

  v46(v49, v45);
  return ISO18013SessionEstablishment.data.getter();
}

uint64_t sub_1000DE724(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000DE850, v2, 0);
}

uint64_t sub_1000DE850()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionCryptor decryptGenericDataRequest", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[4];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = sub_1000DF3C0();
  if ((v10 - 2) < 2 || v10 == 0)
  {
    v12 = v0[4];
    if (*(v12 + 160))
    {
      v13 = *(v12 + 160);

      if (ISO18013SessionCryptarch.isReadyForDecryption.getter())
      {
        v14 = v0[2];
        v15 = v0[3];
        v16 = ISO18013SessionCryptarch.decrypt(data:)();
        v18 = v17;

LABEL_15:
        v29 = v0[10];
        v28 = v0[11];
        v30 = v0[7];

        v31 = v0[1];

        return v31(v16, v18);
      }
    }

    v33 = *(v0[6] + 104);
    v33(v0[7], enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
  }

  else
  {
    if (v10 == 1)
    {
      v19 = v0[10];
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Session encryption is disabled; no need to decrypt reader request", v22, 2u);
      }

      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      v27 = v0[2];
      v26 = v0[3];

      v9(v23, v25);
      sub_100009708(v27, v26);
      v16 = v0[2];
      v18 = v0[3];
      goto LABEL_15;
    }

    v33 = *(v0[6] + 104);
    v33(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v34 = v0[10];
  v35 = v0[11];
  v33(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v36 = v0[1];

  return v36();
}

char *sub_1000DEE04(uint64_t a1, uint64_t *a2)
{
  v47 = a2;
  v46 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPSignpost.Config();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for DIPSignpost();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v37 - v17;
  __chkstk_darwin(v16);
  v20 = &v37 - v19;
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "PresentmentSessionCryptor encryptResponsePayload", v23, 2u);
  }

  v24 = *(v11 + 8);
  v24(v20, v10);
  v25 = v44;
  if (sub_1000DF3C0() == 1)
  {
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v47;
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Session encryption is disabled; no need to encrypt response payload", v30, 2u);
    }

    v24(v18, v10);
    v18 = v46;
    sub_100009708(v46, v29);
  }

  else
  {
    static IDCSSignposts.presentmentEncryptResponse.getter();
    DIPSignpost.init(_:)();
    if (*(v25 + 160))
    {

      v31 = v43;
      v32 = ISO18013SessionCryptarch.encrypt(data:)();
      if (!v31)
      {
        v18 = v32;
        v34 = defaultLogger()();
        v47 = &v37;
        __chkstk_darwin(v34);
        Logger.sensitive(_:)();

        v24(v15, v10);
        v35 = v45;
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v41 + 8))(v35, v42);
        return v18;
      }
    }

    else
    {
      (*(v38 + 104))(v40, enum case for DIPError.Code.idcsPreconditionNotMet(_:), v39);
      v18 = "h is not available";
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    v33 = v45;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v41 + 8))(v33, v42);
  }

  return v18;
}

uint64_t sub_1000DF3C0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v32 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v32 - v14;
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  if ((*(v0 + 152) & 1) == 0)
  {
    v22 = *(v0 + 120);
    if (v22 == 3)
    {
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v18, v29))
      {
        v21 = 3;
        v17 = v12;
        goto LABEL_19;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v18, v29, "Presentment session is using ACWG session encryption", v30, 2u);
      v21 = 3;
      v17 = v12;
    }

    else if (v22 == 2)
    {
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      v21 = 2;
      if (!os_log_type_enabled(v18, v27))
      {
        v17 = v15;
        goto LABEL_19;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v18, v27, "Presentment session is using UA session encryption", v28, 2u);
      v17 = v15;
    }

    else if (v22 == 1 && ((_isInternalBuild.getter() & 1) != 0 || *(v0 + 112) == 1))
    {
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v18, v23))
      {
        v21 = 1;
        goto LABEL_19;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v23, "Presentment session has disabled session encryption", v24, 2u);
      v21 = 1;
    }

    else
    {
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v18, v25))
      {
        v21 = 0;
        v17 = v9;
        goto LABEL_19;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v18, v25, "Presentment session is using default session encryption", v26, 2u);
      v21 = 0;
      v17 = v9;
    }

    goto LABEL_18;
  }

  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "No presentment options set; using default session encryption", v20, 2u);
    v21 = 0;
    v17 = v6;
LABEL_18:

    goto LABEL_19;
  }

  v21 = 0;
  v17 = v6;
LABEL_19:

  (*(v2 + 8))(v17, v1);
  return v21;
}

uint64_t sub_1000DF7BC(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 4)
  {
    return 1u >> (a1 & 0xF);
  }

  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unknown session encryption mode %lu", v10, 0xCu);
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

unint64_t sub_1000DF924()
{
  _StringGuts.grow(_:)(23);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000014;
}

uint64_t sub_1000DF9C4()
{
  v1 = *(v0 + 160);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1000DFA2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000DF924();
}

char *sub_1000DFA34(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v95 = a2;
  v88 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v99 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ISO18013PresentmentType();
  v78 = *(v79 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v80 = &v75 - v12;
  v81 = type metadata accessor for COSEKey();
  v96 = *(v81 - 8);
  v13 = *(v96 + 64);
  __chkstk_darwin(v81);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ISO18013SessionCryptarch.Curve();
  v92 = *(v94 - 8);
  v15 = *(v92 + 64);
  v16 = __chkstk_darwin(v94);
  v87 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v75 - v18;
  v93 = type metadata accessor for ISO18013SessionCryptarch.Variant();
  v89 = *(v93 - 8);
  v19 = *(v89 + 64);
  v20 = __chkstk_darwin(v93);
  v84 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v85 = &v75 - v22;
  v23 = type metadata accessor for ISO18013SessionCryptarch.Role();
  v90 = *(v23 - 8);
  v91 = v23;
  v24 = *(v90 + 64);
  v25 = __chkstk_darwin(v23);
  v83 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v82 = &v75 - v27;
  v28 = type metadata accessor for DIPSignpost.Config();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v30 = type metadata accessor for DIPSignpost();
  v100 = *(v30 - 8);
  v101 = v30;
  v31 = *(v100 + 64);
  __chkstk_darwin(v30);
  v102 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Logger();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v98 = v5;
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "PresentmentSessionCryptor generateTransportKey", v40, 2u);
    v5 = v98;
  }

  (*(v34 + 8))(v37, v33);
  static IDCSSignposts.presentmentGenerateTransportKey.getter();
  v41 = v102;
  DIPSignpost.init(_:)();
  v42 = sub_1000DF3C0();
  if ((sub_1000DF7BC(v42) & 1) != 0 && !*(v3 + 160))
  {
    v98 = v5;
    v44 = *(v90 + 104);
    v45 = &enum case for ISO18013SessionCryptarch.Variant.standard(_:);
    v46 = (v89 + 104);
    if (v42 == 3)
    {
      v45 = &enum case for ISO18013SessionCryptarch.Variant.ACWG(_:);
    }

    if (v42 == 2)
    {
      v47 = &enum case for ISO18013SessionCryptarch.Variant.UA(_:);
    }

    else
    {
      v47 = v45;
    }

    v48 = (v92 + 104);
    v49 = v95;
    if (v95 >> 60 == 15)
    {
      v44(v83, enum case for ISO18013SessionCryptarch.Role.device(_:), v91);
      (*v46)(v84, *v47, v93);
      (*v48)(v87, enum case for ISO18013SessionCryptarch.Curve.P256(_:), v94);
      v50 = type metadata accessor for ISO18013SessionCryptarch();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      v53 = ISO18013SessionCryptarch.init(role:variant:curve:)();
      v55 = v96;
      v54 = v97;
    }

    else
    {
      v44(v82, enum case for ISO18013SessionCryptarch.Role.device(_:), v91);
      (*v46)(v85, *v47, v93);
      (*v48)(v86, enum case for ISO18013SessionCryptarch.Curve.P256(_:), v94);
      v56 = type metadata accessor for ISO18013SessionCryptarch();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      sub_100009708(v88, v49);
      v59 = v97;
      v60 = ISO18013SessionCryptarch.init(role:curve:variant:localKey:)();
      v54 = v59;
      v55 = v96;
      if (v59)
      {
        goto LABEL_6;
      }

      v53 = v60;
    }

    v61 = ISO18013SessionCryptarch.publicKey.getter();
    v63 = v62;

    if (v63 >> 60 == 15)
    {
      (*(v98 + 104))(v99, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v4);
      v4 = "h is not available";
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v64 = *(v3 + 160);
      *(v3 + 160) = v53;

      sub_100009708(v61, v63);
      v97 = v53;
      v65 = v80;
      COSEKey.init(ec2CurveIdentifier:publicKey:)();
      v66 = v81;
      if ((*(v55 + 48))(v65, 1, v81) == 1)
      {
        sub_10000A0D4(v65, &qword_100201070, &unk_1001AD2D0);
        (*(v98 + 104))(v99, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v4);
        sub_10002688C(_swiftEmptyArrayStorage);
        v4 = type metadata accessor for DIPError();
        sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        v41 = v102;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_10001C120(v61, v63);
        goto LABEL_6;
      }

      v99 = v61;
      v67 = v76;
      (*(v55 + 32))(v76, v65, v66);
      v68 = type metadata accessor for CBOREncoder();
      v69 = *(v68 + 48);
      v70 = *(v68 + 52);
      swift_allocObject();
      CBOREncoder.init()();
      v71 = &enum case for ISO18013PresentmentType.digital(_:);
      v72 = &enum case for ISO18013PresentmentType.webRequestForwarding(_:);
      v73 = *(v3 + 112);
      if (v73 != 2)
      {
        v72 = &enum case for ISO18013PresentmentType.physical(_:);
      }

      if (v73 != 1)
      {
        v71 = v72;
      }

      v4 = v77;
      (*(v78 + 104))(v77, *v71, v79);
      CBOREncoder.presentmentType.setter();
      sub_1000E08AC(&qword_100202BE8, &type metadata accessor for COSEKey);
      v74 = dispatch thunk of CBOREncoder.encode<A>(_:)();
      if (!v54)
      {
        v4 = v74;
        (*(v55 + 8))(v67, v66);

        sub_10001C120(v99, v63);

        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v100 + 8))(v41, v101);
        return v4;
      }

      (*(v55 + 8))(v67, v66);

      sub_10001C120(v99, v63);
    }

    goto LABEL_6;
  }

  (*(v5 + 104))(v99, enum case for DIPError.Code.idcsPreconditionNotMet(_:), v4);
  v4 = "h is not available";
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_6:
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v100 + 8))(v41, v101);
  return v4;
}

uint64_t sub_1000E08AC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000E08F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000E0900(uint64_t a1, int a2)
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

uint64_t sub_1000E0920(uint64_t result, int a2, int a3)
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

uint64_t sub_1000E095C()
{
  _StringGuts.grow(_:)(140);
  v0._countAndFlagsBits = 0xD000000000000032;
  v0._object = 0x80000001001B9A80;
  String.append(_:)(v0);
  v1 = DCPresentmentSessionEncryptionModeToString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v6._object = 0x80000001001B9AC0;
  String.append(_:)(v6);
  v7 = DCCredentialReaderAuthenticationPolicyToString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._object = 0x80000001001B9AE0;
  v12._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v12);
  v13 = DCPresentmentElementFallbackModeToString();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x80000001001B9B00;
  String.append(_:)(v18);
  v19 = DCPresentmentMessageEncodingFormatToString();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  return 0;
}

uint64_t sub_1000E0B34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1000E095C();
}

uint64_t sub_1000E0B54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E0C24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PresentmentProposal()
{
  result = qword_100202C48;
  if (!qword_100202C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E0D20()
{
  sub_1000E0E6C();
  if (v0 <= 0x3F)
  {
    sub_1000E0EB8();
    if (v1 <= 0x3F)
    {
      sub_1000E0FC4(319, &qword_100202C58, &qword_100202C60, &qword_1001AD370);
      if (v2 <= 0x3F)
      {
        sub_1000E0F1C();
        if (v3 <= 0x3F)
        {
          sub_1000E0F74();
          if (v4 <= 0x3F)
          {
            sub_1000BD8E8();
            if (v5 <= 0x3F)
            {
              type metadata accessor for DCCredentialPresentmentAuthPolicy(319);
              if (v6 <= 0x3F)
              {
                sub_1000E0FC4(319, &qword_100202C68, &unk_100202C70, &qword_1001AD378);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000E0E6C()
{
  result = qword_100201DA0;
  if (!qword_100201DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100201DA0);
  }

  return result;
}

void sub_1000E0EB8()
{
  if (!qword_100202AE0)
  {
    sub_100021ED0(&unk_100202AE8, &qword_1001AD248);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100202AE0);
    }
  }
}

void sub_1000E0F1C()
{
  if (!qword_100202AD8)
  {
    type metadata accessor for COSE_Sign1();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100202AD8);
    }
  }
}

void sub_1000E0F74()
{
  if (!qword_100202650)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100202650);
    }
  }
}