uint64_t sub_10043E02C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

void sub_10043E22C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10043E2F8()
{
  sub_10000BB78((v0 + 120));
  v1 = *(v0 + 168);
  sub_10001FE8C(*(v0 + 160));
  v2 = *(v0 + 184);
  sub_10001FE8C(*(v0 + 176));
  v3 = *(v0 + 200);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10043E374(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10043E398, v2, 0);
}

uint64_t sub_10043E398()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  sub_10043E8A4(&qword_100844518, v5, type metadata accessor for WebPresentmentCABLEClient);
  v6 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  sub_100007224(&unk_100844520, &unk_1006E2CD8);
  *v7 = v0;
  v7[1] = sub_10043E4E0;
  v8 = v0[5];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1006E2CC8);
}

uint64_t sub_10043E4E0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1003F9BE8;
  }

  else
  {
    v7 = *(v2 + 40);
    v6 = *(v2 + 48);

    v5 = sub_10043CDA4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10043E604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10043D4AC(a1, v4, v5, v6);
}

uint64_t sub_10043E6C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10043DACC(a1, v4, v5, v6);
}

void sub_10043E778(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_10043D61C(a1, v1[2]);
}

uint64_t sub_10043E784()
{
  v1 = sub_100007224(&unk_100844530, &unk_1006E2CF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10043E818(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100007224(&unk_100844530, &unk_1006E2CF8) - 8) + 80);

  return sub_10043D79C(a1, a2);
}

uint64_t sub_10043E8A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10043E8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043E964()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043E9A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10043E9F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_10043DDC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10043EAC8()
{
  v1[16] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v8 = type metadata accessor for WebPresentmentRequest.PresentmentProtocol();
  v1[24] = v8;
  v9 = *(v8 - 8);
  v1[25] = v9;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v1[28] = v11;
  v12 = *(v11 - 8);
  v1[29] = v12;
  v13 = *(v12 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v14 = type metadata accessor for WebPresentmentRequest();
  v1[36] = v14;
  v15 = *(v14 - 8);
  v1[37] = v15;
  v16 = *(v15 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_10043ED7C, v0, 0);
}

uint64_t sub_10043ED7C()
{
  v1 = *(v0 + 128);
  v2 = v1[18];
  v3 = v1[19];
  sub_10000BA08(v1 + 15, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 344) = v6;
  *v6 = v0;
  v6[1] = sub_10043EEA4;

  return v8(v2, v3);
}

uint64_t sub_10043EEA4()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_1004405BC;
  }

  else
  {
    v6 = sub_10043EFD0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10043EFD0()
{
  v1 = v0[16];
  v2 = v1[18];
  v3 = v1[19];
  sub_10000BA08(v1 + 15, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_10043F100;
  v7 = v0[42];

  return v9(v7, v2, v3);
}

uint64_t sub_10043F100()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_100440900;
  }

  else
  {
    v6 = sub_10043F22C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10043F22C()
{
  v224 = v0;
  v1 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];
  defaultLogger()();
  v8 = *(v6 + 16);
  v8(v1, v2, v5);
  v8(v3, v2, v5);
  v204 = v8;
  v8(v4, v2, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[41];
  v13 = v0[39];
  v15 = v0[36];
  v14 = v0[37];
  v16 = v0[35];
  v17 = v0[29];
  v211 = v0[28];
  v218 = v0[40];
  if (v11)
  {
    v172 = v0[39];
    v18 = v0[27];
    v185 = v0[29];
    v192 = v0[35];
    v19 = v0[23];
    v20 = v0[24];
    log = v9;
    v21 = v0[21];
    v170 = v0[20];
    v174 = v10;
    v22 = swift_slowAlloc();
    v223[0] = swift_slowAlloc();
    *v22 = 136315650;
    WebPresentmentRequest.presentmentProtocol.getter();
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v26 = *(v14 + 8);
    v26(v12, v15);
    v27 = sub_100141FE4(v23, v25, v223);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    WebPresentmentRequest.originatingURL.getter();
    v28 = URL.absoluteString.getter();
    v30 = v29;
    (*(v21 + 8))(v19, v170);
    v26(v218, v15);
    v31 = sub_100141FE4(v28, v30, v223);

    *(v22 + 14) = v31;
    *(v22 + 22) = 2080;
    v32 = WebPresentmentRequest.requestData.getter();
    v34 = v33;
    v35 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v32, v34);
    v219 = v26;
    v26(v172, v15);
    v36 = sub_100141FE4(v35._countAndFlagsBits, v35._object, v223);

    *(v22 + 24) = v36;
    _os_log_impl(&_mh_execute_header, log, v174, "Received released request: presentmentProtocol=%s originatingURL=%s requestData=%s", v22, 0x20u);
    swift_arrayDestroy();

    v37 = *(v185 + 8);
    v37(v192, v211);
  }

  else
  {

    v38 = *(v14 + 8);
    v38(v13, v15);
    v38(v218, v15);
    v219 = v38;
    v38(v12, v15);
    v37 = *(v17 + 8);
    v37(v16, v211);
  }

  v39 = v0[42];
  v41 = v0[21];
  v40 = v0[22];
  v42 = v0[20];
  WebPresentmentRequest.originatingURL.getter();
  v43 = URL.serializedOrigin.getter();
  v45 = v44;
  v46 = *(v41 + 8);
  v46(v40, v42);
  v47 = v0[42];
  if (!v45)
  {
    v63 = v0[38];
    v64 = v0[36];
    v65 = v0[31];
    defaultLogger()();
    v204(v63, v47, v64);
    v66 = Logger.logObject.getter();
    v193 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v66, v193);
    v69 = v0[37];
    v68 = v0[38];
    v198 = v0[36];
    v70 = v0[31];
    v71 = v0[28];
    v72 = v0[29];
    if (v67)
    {
      v186 = v0[28];
      v73 = v0[23];
      v207 = v0[20];
      v213 = v37;
      v74 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v223[0] = v175;
      *v74 = 136315138;
      loga = v70;
      WebPresentmentRequest.originatingURL.getter();
      v75 = URL.absoluteString.getter();
      v77 = v76;
      v46(v73, v207);
      v78 = v219;
      v219(v68, v198);
      v79 = sub_100141FE4(v75, v77, v223);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v66, v193, "Failed to get serializedOrigin from request's originatingURL %s", v74, 0xCu);
      sub_10000BB78(v175);

      v213(loga, v186);
    }

    else
    {

      v78 = v219;
      v219(v68, v198);
      v37(v70, v71);
    }

    v86 = v0[42];
    v87 = v0[36];
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v78(v86, v87);
    goto LABEL_13;
  }

  v49 = v0[25];
  v48 = v0[26];
  v50 = v0[24];
  WebPresentmentRequest.presentmentProtocol.getter();
  if ((*(v49 + 88))(v48, v50) != enum case for WebPresentmentRequest.PresentmentProtocol.iso18013RequestForwarding(_:))
  {
    v199 = v0[42];
    v80 = v0[36];
    v81 = v0[37];
    v82 = v0[25];
    v214 = v0[26];
    v208 = v0[24];
    v84 = v0[18];
    v83 = v0[19];
    v85 = v0[17];

    (*(v84 + 104))(v83, enum case for DIPError.Code.webPresentmentUnknownPresentmentProtocol(_:), v85);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v219(v199, v80);
    (*(v82 + 8))(v214, v208);
    goto LABEL_13;
  }

  v205 = v43;
  v51 = v0[46];
  v52 = v0[42];
  v53 = type metadata accessor for JSONDecoder();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v56 = WebPresentmentRequest.requestData.getter();
  v58 = v57;
  sub_100440C44();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v51)
  {
    v212 = v0[42];
    v59 = v0[37];
    v206 = v0[36];
    v61 = v0[18];
    v60 = v0[19];
    v62 = v0[17];

    sub_10000B90C(v56, v58);

    (*(v61 + 104))(v60, enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v62);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v219(v212, v206);
LABEL_13:
    v88 = v0[30];
    defaultLogger()();
    swift_errorRetain();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 138412290;
      swift_errorRetain();
      v93 = _swift_stdlib_bridgeErrorToNSError();
      *(v91 + 4) = v93;
      *v92 = v93;
      _os_log_impl(&_mh_execute_header, v89, v90, "Failed to encode digital credential JSON command for authenticator: %@", v91, 0xCu);
      sub_1004385F4(v92);
    }

    v167 = v0[42];
    v168 = v0[41];
    v169 = v0[40];
    v171 = v0[39];
    v173 = v0[38];
    v176 = v0[35];
    v177 = v0[34];
    logb = v0[33];
    v94 = v0[30];
    v187 = v0[32];
    v194 = v0[31];
    v95 = v0[28];
    v96 = v0[29];
    v200 = v0[27];
    v209 = v0[26];
    v215 = v0[23];
    v220 = v0[22];
    v97 = v0[18];
    v98 = v0[19];
    v99 = v0[17];

    (*(v96 + 8))(v94, v95);
    (*(v97 + 104))(v98, enum case for DIPError.Code.internalError(_:), v99);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v100 = v0[1];

    return v100();
  }

  v216 = v37;
  v102 = v0[34];
  sub_10000B90C(v56, v58);

  v103 = v0[2];
  v104 = v0[3];
  v105 = v0[4];
  v106 = v0[5];
  defaultLogger()();
  sub_10000B8B8(v103, v104);
  sub_10000B8B8(v105, v106);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  sub_10000B90C(v103, v104);
  sub_10000B90C(v105, v106);
  v201 = v108;
  v109 = os_log_type_enabled(v107, v108);
  v110 = v0[34];
  v111 = v0[28];
  v112 = v0[29];
  if (v109)
  {
    v195 = v0[29];
    v113 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v223[0] = v188;
    *v113 = 136315138;
    v0[6] = v103;
    v0[7] = v104;
    v0[8] = v105;
    v0[9] = v106;
    sub_10000B8B8(v103, v104);
    sub_10000B8B8(v105, v106);
    v114 = String.init<A>(describing:)();
    v178 = v110;
    v116 = v103;
    v117 = sub_100141FE4(v114, v115, v223);

    *(v113 + 4) = v117;
    v103 = v116;
    _os_log_impl(&_mh_execute_header, v107, v201, "Decoded ISO18013Request from requestData: %s", v113, 0xCu);
    sub_10000BB78(v188);

    v118 = v178;
    v119 = v111;
  }

  else
  {

    v118 = v110;
    v119 = v111;
  }

  v216(v118, v119);
  v120 = v0[33];
  sub_100007224(&qword_100842920, &qword_1006DFA78);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1006BF520;
  *(v121 + 32) = v103;
  *(v121 + 40) = v104;
  *(v121 + 48) = v105;
  *(v121 + 56) = v106;
  defaultLogger()();

  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.debug.getter();

  v124 = os_log_type_enabled(v122, v123);
  v125 = v0[33];
  v126 = v0[28];
  v127 = v0[29];
  if (v124)
  {
    v128 = swift_slowAlloc();
    v202 = v126;
    v129 = swift_slowAlloc();
    v223[0] = v129;
    *v128 = 136315138;
    v130 = v205;
    v0[13] = v205;
    v0[14] = v45;
    v0[15] = v121;

    v131 = String.init<A>(describing:)();
    v189 = v125;
    v133 = sub_100141FE4(v131, v132, v223);

    *(v128 + 4) = v133;
    _os_log_impl(&_mh_execute_header, v122, v123, "Constructed caBLE command: %s", v128, 0xCu);
    sub_10000BB78(v129);

    v216(v189, v202);
    v134 = v219;
  }

  else
  {

    v216(v125, v126);
    v134 = v219;
    v130 = v205;
  }

  v135 = type metadata accessor for JSONEncoder();
  v136 = *(v135 + 48);
  v137 = *(v135 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[10] = v130;
  v0[11] = v45;
  v0[12] = v121;
  sub_100440C98();
  v138 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v140 = v139;
  v141 = v0[32];

  defaultLogger()();
  sub_10000B8B8(v138, v140);
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.debug.getter();
  sub_10000B90C(v138, v140);
  v144 = os_log_type_enabled(v142, v143);
  v145 = v0[42];
  v146 = v138;
  v147 = v0[37];
  v148 = v0[32];
  v190 = v148;
  v196 = v0[36];
  v149 = v140;
  v151 = v0[28];
  v150 = v0[29];
  v203 = v149;
  v210 = v146;
  if (v144)
  {
    v221 = v134;
    v152 = swift_slowAlloc();
    logc = v145;
    v153 = swift_slowAlloc();
    v223[0] = v153;
    *v152 = 136315138;
    v154 = Data.base64EncodedString(options:)(0);
    v155 = sub_100141FE4(v154._countAndFlagsBits, v154._object, v223);

    *(v152 + 4) = v155;
    _os_log_impl(&_mh_execute_header, v142, v143, "Encoded caBLE command to JSON data %s", v152, 0xCu);
    sub_10000BB78(v153);

    v216(v190, v151);
    v221(logc, v196);
  }

  else
  {

    v216(v190, v151);
    v134(v145, v196);
  }

  v157 = v0[41];
  v156 = v0[42];
  v159 = v0[39];
  v158 = v0[40];
  v160 = v0[38];
  v161 = v0[34];
  v162 = v0[35];
  v163 = v0[32];
  v164 = v0[33];
  v165 = v0[31];
  v179 = v0[30];
  logd = v0[27];
  v191 = v0[26];
  v197 = v0[23];
  v217 = v0[22];
  v222 = v0[19];

  v166 = v0[1];

  return v166(v210, v203);
}

uint64_t sub_1004405BC()
{
  v1 = v0[44];
  v2 = v0[30];
  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to encode digital credential JSON command for authenticator: %@", v5, 0xCu);
    sub_1004385F4(v6);
  }

  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[39];
  v21 = v0[35];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v8 = v0[30];
  v20 = v0[38];
  v9 = v0[28];
  v10 = v0[29];
  v25 = v0[31];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[23];
  v29 = v0[22];
  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[17];

  (*(v10 + 8))(v8, v9);
  (*(v11 + 104))(v12, enum case for DIPError.Code.internalError(_:), v13);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100440900()
{
  v1 = v0[46];
  v2 = v0[30];
  defaultLogger()();
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to encode digital credential JSON command for authenticator: %@", v5, 0xCu);
    sub_1004385F4(v6);
  }

  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[39];
  v21 = v0[35];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v8 = v0[30];
  v20 = v0[38];
  v9 = v0[28];
  v10 = v0[29];
  v25 = v0[31];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[23];
  v29 = v0[22];
  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[17];

  (*(v10 + 8))(v8, v9);
  (*(v11 + 104))(v12, enum case for DIPError.Code.internalError(_:), v13);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10043E8A4(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

unint64_t sub_100440C44()
{
  result = qword_100844550;
  if (!qword_100844550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844550);
  }

  return result;
}

unint64_t sub_100440C98()
{
  result = qword_100844560;
  if (!qword_100844560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844560);
  }

  return result;
}

uint64_t sub_100440CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10043DC14(a1, v4, v5, v6);
}

uint64_t sub_100440DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10043DB64(a1, v4, v5, v6);
}

uint64_t sub_100440E84(void *a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008447D8, &qword_1006E43B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100446640();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1004466E8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100441138(uint64_t a1)
{
  v2 = sub_100446640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100441174(uint64_t a1)
{
  v2 = sub_100446640();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004411B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100443874(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100441204(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_1000C31A0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1000C31A0(v2, v3, v4, v5);
}

void sub_1004412E8(uint64_t a1@<X8>)
{
  strcpy(a1, "org-iso-mdoc");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1004413BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = sub_100007224(&qword_1008446B0, &qword_1006E3158);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  v11 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100445890();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = v14[0];
    v16 = 1;
    sub_10044598C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[1] = v12;
    v15 = 2;
    sub_1004459E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

BOOL sub_100441580(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  return (sub_1000C31A0(*a1, a1[1], *a2, a2[1]) & 1) != 0 && (sub_1000C31A0(v2, v3, v4, v5) & 1) != 0;
}

uint64_t sub_1004415E8()
{
  v1 = 0x5474736575716572;
  if (*v0 != 1)
  {
    v1 = 0x74736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t sub_100441648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004439E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100441670(uint64_t a1)
{
  v2 = sub_100445890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004416AC(uint64_t a1)
{
  v2 = sub_100445890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004416E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100443AFC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100441738(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10014DF40(v2, v3);
}

uint64_t sub_100441834@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007FBD30, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10044188C(uint64_t a1)
{
  v2 = sub_100444328();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004418C8(uint64_t a1)
{
  v2 = sub_100444328();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100441904(void *a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008445A8, &qword_1006E30F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100444328();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100007224(&qword_1008445B0, &qword_1006E30F8);
  sub_1004444B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100441A60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100443D24(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100441AB0()
{
  *v0;
  String.hash(into:)();
}

void sub_100441B28(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (!*v1)
  {
    v2 = 0x6C6F636F746F7270;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100441B60()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x6C6F636F746F7270;
  }

  *v0;
  return result;
}

uint64_t sub_100441BA0(uint64_t a1)
{
  v2 = sub_10044476C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100441BDC(uint64_t a1)
{
  v2 = sub_10044476C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100441C18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v9 = sub_100007224(&qword_1008445E0, &qword_1006E3108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10044476C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  sub_100444814();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v18 = a2;
    v19 = a3;
    v20 = v16;
    v21 = v17;
    v22 = 1;
    sub_100410DA4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

void *sub_100441DB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100444590(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100441E04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6974707972636E65;
  }

  else
  {
    v4 = 0x6552656369766564;
  }

  if (v3)
  {
    v5 = 0xED00007473657571;
  }

  else
  {
    v5 = 0xEE006F666E496E6FLL;
  }

  if (*a2)
  {
    v6 = 0x6974707972636E65;
  }

  else
  {
    v6 = 0x6552656369766564;
  }

  if (*a2)
  {
    v7 = 0xEE006F666E496E6FLL;
  }

  else
  {
    v7 = 0xED00007473657571;
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

Swift::Int sub_100441EC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100441F60()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100441FE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10044208C(uint64_t *a1@<X8>)
{
  v2 = 0x6552656369766564;
  if (*v1)
  {
    v2 = 0x6974707972636E65;
  }

  v3 = 0xED00007473657571;
  if (*v1)
  {
    v3 = 0xEE006F666E496E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1004420E4()
{
  if (*v0)
  {
    result = 0x6974707972636E65;
  }

  else
  {
    result = 0x6552656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_100442144(uint64_t a1)
{
  v2 = sub_100444BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100442180(uint64_t a1)
{
  v2 = sub_100444BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004421BC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v24 = a5;
  v22 = a4;
  v8 = type metadata accessor for Base64URLEncodedString();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  v10 = __chkstk_darwin(v8);
  v23 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_100007224(&qword_100844608, &qword_1006E3118);
  v26 = *(v14 - 8);
  v15 = *(v26 + 64);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  v18 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100444BC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10000B8B8(a2, a3);
  Base64URLEncodedString.init(dataValue:)();
  v29 = 0;
  sub_100444C18(&qword_100844610);
  v19 = v25;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v19)
  {
    (*(v27 + 8))(v13, v8);
  }

  else
  {
    v27 = *(v27 + 8);
    (v27)(v13, v8);
    sub_10000B8B8(v22, v24);
    v21 = v23;
    Base64URLEncodedString.init(dataValue:)();
    v28 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (v27)(v21, v8);
  }

  return (*(v26 + 8))(v17, v14);
}

uint64_t sub_1004424C8(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = sub_100007224(&qword_100844828, &qword_1006E4730);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100446A5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = a4 & 1;
  sub_100410C30(a2, a3, a4 & 1);
  sub_100446AB0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100410B88(v16, v17, v18);
  return (*(v9 + 8))(v12, v8);
}

char *sub_100442640@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_100444868(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100442690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C617469676964 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100442718(uint64_t a1)
{
  v2 = sub_100446A5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100442754(uint64_t a1)
{
  v2 = sub_100446A5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100442790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100444C5C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1004427E8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    if ((v8 & 1) == 0)
    {
      return sub_1000C31A0(v4, v5, v6, v7);
    }

    return 0;
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1004428F8(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = sub_100007224(&qword_100844788, &qword_1006E43A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100446448();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = a4 & 1;
  sub_100410C30(a2, a3, a4 & 1);
  sub_10044649C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100410B88(v16, v17, v18);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100442B20(uint64_t a1)
{
  v2 = sub_100446448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100442B5C(uint64_t a1)
{
  v2 = sub_100446448();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100442B98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100444DD8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

BOOL sub_100442BEC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v9 = v4 == v6 && v5 == v7;
    return v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return (v8 & 1) == 0 && (sub_1000C31A0(v4, v5, v6, v7) & 1) != 0;
}

uint64_t sub_100442C60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F727265;
  }

  else
  {
    v4 = 1635017060;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726F727265;
  }

  else
  {
    v6 = 1635017060;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
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

Swift::Int sub_100442CFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100442D74()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100442DD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100442E58(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100442E8C()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_100442EC8(uint64_t a1)
{
  v2 = sub_100445210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100442F04(uint64_t a1)
{
  v2 = sub_100445210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100442F40(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100007224(&qword_100844638, &qword_1006E3128);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100445210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[2] = a2;
  v15[3] = a3;
  if (a4)
  {
    v16 = 1;
    sub_10044530C();
  }

  else
  {
    v16 = 0;
    sub_100445360();
  }

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1004430C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100444F54(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100443118(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1635017060;
  }

  else
  {
    v4 = 0x6C6F636F746F7270;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1635017060;
  }

  else
  {
    v6 = 0x6C6F636F746F7270;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
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

Swift::Int sub_1004431B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100443234()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004432C4(uint64_t a1)
{
  v2 = sub_100445740();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100443300(uint64_t a1)
{
  v2 = sub_100445740();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100443354()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004433D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100443448@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007FBF18, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1004434A0(uint64_t a1)
{
  v2 = sub_1004457E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004434DC(uint64_t a1)
{
  v2 = sub_1004457E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100443518(void *a1, uint64_t a2, unint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v24 = type metadata accessor for Base64URLEncodedString();
  v20 = *(v24 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v24);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100007224(&qword_100844678, &qword_1006E3140);
  v23 = *(v25 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v25);
  v10 = &v20 - v9;
  v11 = sub_100007224(&qword_100844680, &qword_1006E3148);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100445740();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = 0;
  sub_10044583C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v17 = v20;
    v26 = 1;
    sub_1004457E8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10000B8B8(v21, v22);
    Base64URLEncodedString.init(dataValue:)();
    sub_100444C18(&qword_100844610);
    v18 = v24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v17 + 8))(v7, v18);
    (*(v23 + 8))(v10, v25);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10044382C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004453B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_100443874(uint64_t *a1)
{
  v3 = sub_100007224(&qword_1008447C0, &qword_1006E43A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000BA08(a1, a1[3]);
  sub_100446640();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_100446694();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000BB78(a1);
  }

  return v9;
}

uint64_t sub_1004439E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100443AFC(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100844690, &qword_1006E3150);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100445890();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[30] = 1;
    sub_1004458E4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10[15] = 2;
    sub_100445938();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_100443D24(uint64_t *a1)
{
  v50 = type metadata accessor for Logger();
  v62 = *(v50 - 8);
  v2 = *(v62 + 64);
  __chkstk_darwin(v50);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_100844570, &qword_1006E30C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v43 - v7;
  v9 = sub_100007224(&qword_100844578, &qword_1006E30D0);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v12 = v43 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100444328();
  v14 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000BB78(a1);
  }

  v55 = v8;
  v49 = v4;
  sub_100007224(&qword_100844588, &qword_1006E30D8);
  sub_10044437C();
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43[1] = 0;
  v44 = v12;
  v45 = v9;
  v46 = a1;
  v17 = v59;
  v18 = *(v59 + 16);
  v19 = v56;
  if (v18)
  {
    v20 = 0;
    v51 = (v62 + 8);
    v47 = _swiftEmptyArrayStorage;
    v52 = v18;
    v43[0] = v18 - 1;
    *&v16 = 134218242;
    v48 = v16;
    v22 = v49;
    v21 = v50;
    v23 = v55;
    v53 = v59;
    v54 = v5;
    while (v20 < *(v17 + 16))
    {
      v24 = sub_100007224(&qword_1008445A0, &unk_1006E30E0);
      v25 = *(v24 - 8);
      v62 = v20 + 1;
      v26 = *(v25 + 16);
      v27 = v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20;
      v28 = *(v5 + 48);
      *v23 = v20;
      v26(v23 + v28, v27, v24);
      FailableDecodable.result.getter();
      v57 = v59;
      v58 = v60;
      if (v61 == 1)
      {
        v29 = v59;
        defaultLogger()();
        swift_errorRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        v32 = *(&v57 + 1);
        v33 = v58;
        sub_100444464(v29, *(&v57 + 1), v58, *(&v58 + 1), 1);
        if (os_log_type_enabled(v30, v31))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = v48;
          *(v34 + 4) = v20;
          *(v34 + 12) = 2112;
          swift_errorRetain();
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 14) = v36;
          *v35 = v36;
          _os_log_impl(&_mh_execute_header, v30, v31, "DigitalRequest at index %ld failed to decode: %@", v34, 0x16u);
          sub_10000BE18(v35, &unk_100833B50, &unk_1006D8FB0);
          v21 = v50;

          v22 = v49;

          sub_100444464(v29, v32, v33, *(&v33 + 1), 1);
        }

        else
        {
          sub_100444464(v29, v32, v33, *(&v33 + 1), 1);
        }

        (*v51)(v22, v21);
        v23 = v55;
        result = sub_10000BE18(v55, &qword_100844570, &qword_1006E30C8);
        v20 = v62;
        v17 = v53;
        v5 = v54;
        v19 = v56;
        if (v52 == v62)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_10000BE18(v23, &qword_100844570, &qword_1006E30C8);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1003C6668(0, *(v47 + 2) + 1, 1, v47);
          v47 = result;
        }

        v38 = *(v47 + 2);
        v37 = *(v47 + 3);
        v39 = v58;
        if (v38 >= v37 >> 1)
        {
          result = sub_1003C6668((v37 > 1), v38 + 1, 1, v47);
          v39 = v58;
          v47 = result;
        }

        v40 = v47;
        *(v47 + 2) = v38 + 1;
        v41 = &v40[32 * v38];
        *(v41 + 3) = v39;
        *(v41 + 2) = v57;
        v42 = v43[0] == v20;
        v20 = v62;
        if (v42)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
LABEL_20:

    (*(v19 + 8))(v44, v45);
    sub_10000BB78(v46);
    return v47;
  }

  return result;
}

unint64_t sub_100444328()
{
  result = qword_100844580;
  if (!qword_100844580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844580);
  }

  return result;
}

unint64_t sub_10044437C()
{
  result = qword_100844590;
  if (!qword_100844590)
  {
    sub_10000B870(&qword_100844588, &qword_1006E30D8);
    sub_100444400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844590);
  }

  return result;
}

unint64_t sub_100444400()
{
  result = qword_100844598;
  if (!qword_100844598)
  {
    sub_10000B870(&qword_1008445A0, &unk_1006E30E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844598);
  }

  return result;
}

uint64_t sub_100444464(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_10000B90C(a1, a2);

    return sub_10000B90C(a3, a4);
  }
}

unint64_t sub_1004444B8()
{
  result = qword_1008445B8;
  if (!qword_1008445B8)
  {
    sub_10000B870(&qword_1008445B0, &qword_1006E30F8);
    sub_10044453C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445B8);
  }

  return result;
}

unint64_t sub_10044453C()
{
  result = qword_1008445C0;
  if (!qword_1008445C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445C0);
  }

  return result;
}

void *sub_100444590(uint64_t *a1)
{
  v3 = sub_100007224(&qword_1008445C8, &qword_1006E3100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_10000BA08(a1, a1[3]);
  sub_10044476C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v12) = 0;
    sub_1004447C0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11[15] = 1;
    sub_100440C44();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v12;
  }

  sub_10000BB78(a1);
  return v9;
}

unint64_t sub_10044476C()
{
  result = qword_1008445D0;
  if (!qword_1008445D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445D0);
  }

  return result;
}

unint64_t sub_1004447C0()
{
  result = qword_1008445D8;
  if (!qword_1008445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445D8);
  }

  return result;
}

unint64_t sub_100444814()
{
  result = qword_1008445E8;
  if (!qword_1008445E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445E8);
  }

  return result;
}

char *sub_100444868(uint64_t *a1)
{
  v28 = type metadata accessor for Base64URLEncodedString();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  v4 = __chkstk_darwin(v28);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v27 = sub_100007224(&qword_1008445F0, &qword_1006E3110);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v27);
  v12 = &v23 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100444BC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v25 = v9;
    v14 = v26;
    v30 = 0;
    sub_100444C18(&qword_100844600);
    v15 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = Base64URLEncodedString.dataValue.getter();
    v23 = v18;
    v24 = v17;
    v26 = *(v14 + 8);
    (v26)(v8, v28);
    v29 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = Base64URLEncodedString.dataValue.getter();
    v21 = v20;
    (v26)(v6, v28);
    (*(v25 + 8))(v12, v15);
    v22 = v23;
    v6 = v24;
    sub_10000B8B8(v24, v23);
    sub_10000B8B8(v19, v21);
    sub_10000BB78(a1);
    sub_10000B90C(v6, v22);
    sub_10000B90C(v19, v21);
  }

  return v6;
}

unint64_t sub_100444BC4()
{
  result = qword_1008445F8;
  if (!qword_1008445F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008445F8);
  }

  return result;
}

uint64_t sub_100444C18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Base64URLEncodedString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100444C5C(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100844840, &qword_1006E4738);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000BA08(a1, a1[3]);
  sub_100446A5C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_100446B04();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000BB78(a1);
  }

  return v9;
}

void *sub_100444DD8(uint64_t *a1)
{
  v3 = sub_100007224(&qword_1008447E8, &qword_1006E43B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000BA08(a1, a1[3]);
  sub_100446448();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_10044673C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000BB78(a1);
  }

  return v9;
}

uint64_t sub_100444F54(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100844618, &qword_1006E3120);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = a1[4];
  v9 = sub_10000BA08(a1, a1[3]);
  sub_100445210();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v10 = *(KeyedDecodingContainer.allKeys.getter() + 16);

  if (v10 != 1)
  {
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v14;
    v15 = a1[4];
    sub_10000BA08(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    v9 = v17;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v13 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v13);
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
LABEL_9:
    sub_10000BB78(a1);
    return v9;
  }

  result = KeyedDecodingContainer.allKeys.getter();
  if (*(result + 16))
  {
    v12 = *(result + 32);

    if (v12)
    {
      v19 = 1;
      sub_100445264();
    }

    else
    {
      v19 = 0;
      sub_1004452B8();
    }

    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v18;
    sub_10000BB78(a1);
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_100445210()
{
  result = qword_100844620;
  if (!qword_100844620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844620);
  }

  return result;
}

unint64_t sub_100445264()
{
  result = qword_100844628;
  if (!qword_100844628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844628);
  }

  return result;
}

unint64_t sub_1004452B8()
{
  result = qword_100844630;
  if (!qword_100844630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844630);
  }

  return result;
}

unint64_t sub_10044530C()
{
  result = qword_100844640;
  if (!qword_100844640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844640);
  }

  return result;
}

unint64_t sub_100445360()
{
  result = qword_100844648;
  if (!qword_100844648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844648);
  }

  return result;
}

uint64_t sub_1004453B4(uint64_t *a1)
{
  v23 = type metadata accessor for Base64URLEncodedString();
  v20 = *(v23 - 8);
  v2 = *(v20 + 64);
  __chkstk_darwin(v23);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_100844650, &qword_1006E3130);
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100007224(&qword_100844658, &qword_1006E3138);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = a1[4];
  v14 = sub_10000BA08(a1, a1[3]);
  sub_100445740();
  v15 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v24 = a1;
    v16 = v22;
    v17 = v23;
    v26 = 0;
    sub_100445794();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = 1;
    sub_1004457E8();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100444C18(&qword_100844600);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = Base64URLEncodedString.dataValue.getter();
    (*(v20 + 8))(v4, v17);
    (*(v21 + 8))(v8, v5);
    (*(v16 + 8))(v12, v9);
    sub_10000BB78(v24);
  }

  return v14;
}

unint64_t sub_100445740()
{
  result = qword_100844660;
  if (!qword_100844660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844660);
  }

  return result;
}

unint64_t sub_100445794()
{
  result = qword_100844668;
  if (!qword_100844668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844668);
  }

  return result;
}

unint64_t sub_1004457E8()
{
  result = qword_100844670;
  if (!qword_100844670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844670);
  }

  return result;
}

unint64_t sub_10044583C()
{
  result = qword_100844688;
  if (!qword_100844688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844688);
  }

  return result;
}

unint64_t sub_100445890()
{
  result = qword_100844698;
  if (!qword_100844698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844698);
  }

  return result;
}

unint64_t sub_1004458E4()
{
  result = qword_1008446A0;
  if (!qword_1008446A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446A0);
  }

  return result;
}

unint64_t sub_100445938()
{
  result = qword_1008446A8;
  if (!qword_1008446A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446A8);
  }

  return result;
}

unint64_t sub_10044598C()
{
  result = qword_1008446B8;
  if (!qword_1008446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446B8);
  }

  return result;
}

unint64_t sub_1004459E0()
{
  result = qword_1008446C0;
  if (!qword_1008446C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446C0);
  }

  return result;
}

uint64_t sub_100445B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100445BA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100445C0C()
{
  result = qword_1008446C8;
  if (!qword_1008446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446C8);
  }

  return result;
}

unint64_t sub_100445C64()
{
  result = qword_1008446D0;
  if (!qword_1008446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446D0);
  }

  return result;
}

unint64_t sub_100445CBC()
{
  result = qword_1008446D8;
  if (!qword_1008446D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446D8);
  }

  return result;
}

unint64_t sub_100445D14()
{
  result = qword_1008446E0;
  if (!qword_1008446E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446E0);
  }

  return result;
}

unint64_t sub_100445D6C()
{
  result = qword_1008446E8;
  if (!qword_1008446E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446E8);
  }

  return result;
}

unint64_t sub_100445DC4()
{
  result = qword_1008446F0;
  if (!qword_1008446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446F0);
  }

  return result;
}

unint64_t sub_100445E1C()
{
  result = qword_1008446F8;
  if (!qword_1008446F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008446F8);
  }

  return result;
}

unint64_t sub_100445E74()
{
  result = qword_100844700;
  if (!qword_100844700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844700);
  }

  return result;
}

unint64_t sub_100445ECC()
{
  result = qword_100844708;
  if (!qword_100844708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844708);
  }

  return result;
}

unint64_t sub_100445F24()
{
  result = qword_100844710;
  if (!qword_100844710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844710);
  }

  return result;
}

unint64_t sub_100445F7C()
{
  result = qword_100844718;
  if (!qword_100844718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844718);
  }

  return result;
}

unint64_t sub_100445FD4()
{
  result = qword_100844720;
  if (!qword_100844720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844720);
  }

  return result;
}

unint64_t sub_10044602C()
{
  result = qword_100844728;
  if (!qword_100844728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844728);
  }

  return result;
}

unint64_t sub_100446084()
{
  result = qword_100844730;
  if (!qword_100844730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844730);
  }

  return result;
}

unint64_t sub_1004460DC()
{
  result = qword_100844738;
  if (!qword_100844738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844738);
  }

  return result;
}

unint64_t sub_100446134()
{
  result = qword_100844740;
  if (!qword_100844740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844740);
  }

  return result;
}

unint64_t sub_10044618C()
{
  result = qword_100844748;
  if (!qword_100844748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844748);
  }

  return result;
}

unint64_t sub_1004461E4()
{
  result = qword_100844750;
  if (!qword_100844750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844750);
  }

  return result;
}

unint64_t sub_10044623C()
{
  result = qword_100844758;
  if (!qword_100844758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844758);
  }

  return result;
}

unint64_t sub_100446294()
{
  result = qword_100844760;
  if (!qword_100844760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844760);
  }

  return result;
}

unint64_t sub_1004462EC()
{
  result = qword_100844768;
  if (!qword_100844768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844768);
  }

  return result;
}

unint64_t sub_100446344()
{
  result = qword_100844770;
  if (!qword_100844770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844770);
  }

  return result;
}

unint64_t sub_10044639C()
{
  result = qword_100844778;
  if (!qword_100844778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844778);
  }

  return result;
}

unint64_t sub_1004463F4()
{
  result = qword_100844780;
  if (!qword_100844780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844780);
  }

  return result;
}

unint64_t sub_100446448()
{
  result = qword_100844790;
  if (!qword_100844790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844790);
  }

  return result;
}

unint64_t sub_10044649C()
{
  result = qword_100844798;
  if (!qword_100844798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844798);
  }

  return result;
}

unint64_t sub_1004464F0()
{
  result = qword_1008447A0;
  if (!qword_1008447A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447A0);
  }

  return result;
}

unint64_t sub_100446544()
{
  result = qword_1008447A8;
  if (!qword_1008447A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447A8);
  }

  return result;
}

unint64_t sub_100446598()
{
  result = qword_1008447B0;
  if (!qword_1008447B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447B0);
  }

  return result;
}

unint64_t sub_1004465EC()
{
  result = qword_1008447B8;
  if (!qword_1008447B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447B8);
  }

  return result;
}

unint64_t sub_100446640()
{
  result = qword_1008447C8;
  if (!qword_1008447C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447C8);
  }

  return result;
}

unint64_t sub_100446694()
{
  result = qword_1008447D0;
  if (!qword_1008447D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447D0);
  }

  return result;
}

unint64_t sub_1004466E8()
{
  result = qword_1008447E0;
  if (!qword_1008447E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447E0);
  }

  return result;
}

unint64_t sub_10044673C()
{
  result = qword_1008447F0;
  if (!qword_1008447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447F0);
  }

  return result;
}

uint64_t sub_1004467B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004467F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_100446850()
{
  result = qword_1008447F8;
  if (!qword_1008447F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008447F8);
  }

  return result;
}

unint64_t sub_1004468A8()
{
  result = qword_100844800;
  if (!qword_100844800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844800);
  }

  return result;
}

unint64_t sub_100446900()
{
  result = qword_100844808;
  if (!qword_100844808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844808);
  }

  return result;
}

unint64_t sub_100446958()
{
  result = qword_100844810;
  if (!qword_100844810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844810);
  }

  return result;
}

unint64_t sub_1004469B0()
{
  result = qword_100844818;
  if (!qword_100844818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844818);
  }

  return result;
}

unint64_t sub_100446A08()
{
  result = qword_100844820;
  if (!qword_100844820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844820);
  }

  return result;
}

unint64_t sub_100446A5C()
{
  result = qword_100844830;
  if (!qword_100844830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844830);
  }

  return result;
}

unint64_t sub_100446AB0()
{
  result = qword_100844838;
  if (!qword_100844838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844838);
  }

  return result;
}

unint64_t sub_100446B04()
{
  result = qword_100844848;
  if (!qword_100844848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844848);
  }

  return result;
}

unint64_t sub_100446B6C()
{
  result = qword_100844850;
  if (!qword_100844850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844850);
  }

  return result;
}

unint64_t sub_100446BC4()
{
  result = qword_100844858;
  if (!qword_100844858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844858);
  }

  return result;
}

unint64_t sub_100446C1C()
{
  result = qword_100844860;
  if (!qword_100844860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844860);
  }

  return result;
}

uint64_t sub_100446CC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WebPresentmentAnalyticsReporter();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = WebPresentmentAnalyticsReporter.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for WebPresentmentAnalyticsReporter;
  *a1 = result;
  return result;
}

uint64_t sub_100446D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v35 = a1;
  v5 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v6 = *(v5 - 8);
  v39 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v33 = &v32 - v7;
  v9 = type metadata accessor for PartialWebPresentmentRequest();
  v32 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v32 - v15;
  v37 = &v32 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, a3, v9);
  v36 = *(v6 + 16);
  v18 = v5;
  v36(v8, a1, v5);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = *(v6 + 80);
  v21 = (v11 + v20 + v19) & ~v20;
  v34 = v20 | 7;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v38;
  (*(v10 + 32))(&v22[v19], v12, v32);
  v23 = *(v6 + 32);
  v24 = &v22[v21];
  v25 = v33;
  v23(v24, v33, v18);

  v26 = sub_1003E653C(0, 0, v37, &unk_1006E48E8, v22);
  v27 = v25;
  v36(v25, v35, v18);
  v28 = (v20 + 16) & ~v20;
  v29 = (v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v23((v30 + v28), v27, v18);
  *(v30 + v29) = v26;
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t sub_100447098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for WebPresentmentRequestState();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_100007224(&qword_100844960, &qword_1006E48F8);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v6[13] = v13;
  v14 = *(v13 - 8);
  v6[14] = v14;
  v6[15] = *(v14 + 64);
  v6[16] = swift_task_alloc();
  v15 = type metadata accessor for WebPresentmentResponse();
  v6[17] = v15;
  v16 = *(v15 - 8);
  v6[18] = v16;
  v17 = *(v16 + 64) + 15;
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100447290, 0, 0);
}

uint64_t sub_100447290()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v3 + 16))(v1, v0[6], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1004473BC;
  v7 = v0[19];
  v9 = v0[4];
  v8 = v0[5];

  return sub_1004478F0(v7, v8, &unk_1006E4908, v5);
}

uint64_t sub_1004473BC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_100447628;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_1004474D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004474D8()
{
  v1 = v0[18];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v16 = v0[10];
  v17 = v0[19];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  (*(v1 + 16))(v7);
  (*(v6 + 104))(v7, enum case for WebPresentmentRequestState.success(_:), v9);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v5 + 8))(v4, v16);
  v0[3] = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  (*(v1 + 8))(v17, v2);
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[12];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100447628()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[6];

  v0[2] = v1;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004476D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for WebPresentmentRequestState();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_100007224(&qword_100844960, &qword_1006E48F8);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100447800, 0, 0);
}

uint64_t sub_100447800()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  *v4 = v8;
  (*(v6 + 104))(v4, enum case for WebPresentmentRequestState.listenerReady(_:), v5);
  v9 = v8;
  sub_100007224(&qword_100844950, &unk_1006E48D0);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004478F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for PartialWebPresentmentRequest();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100447A7C, 0, 0);
}

uint64_t sub_100447A7C()
{
  v35 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[3];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[14];
  if (v9)
  {
    v31 = v8;
    v15 = v0[11];
    v14 = v0[12];
    v33 = v0[14];
    v16 = v0[10];
    v32 = v0[16];
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100141FE4(0xD00000000000001ELL, 0x80000001007170C0, &v34);
    *(v17 + 12) = 2080;
    v6(v14, v12, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v15 + 8))(v12, v16);
    v21 = sub_100141FE4(v18, v20, &v34);

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v31, "WebPresentmentManager %s %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v32, v33);
  }

  else
  {
    v22 = v0[10];
    v23 = v0[11];

    (*(v23 + 8))(v12, v22);
    (*(v10 + 8))(v11, v13);
  }

  v24 = swift_task_alloc();
  v0[17] = v24;
  *v24 = v0;
  v24[1] = sub_100447D14;
  v25 = v0[5];
  v26 = v0[6];
  v27 = v0[3];
  v28 = v0[4];
  v29 = v0[2];

  return sub_100448424(v29, v27, v28, v25);
}

uint64_t sub_100447D14()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100447E80, 0, 0);
  }

  else
  {
    v4 = v3[16];
    v6 = v3[12];
    v5 = v3[13];
    v7 = v3[9];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_100447E80()
{
  v1 = sub_10000BA08((*(v0 + 48) + 56), *(*(v0 + 48) + 80));
  *(v0 + 152) = v1;
  v2 = *v1;

  return _swift_task_switch(sub_100447EF4, v2, 0);
}

uint64_t sub_100447EF4()
{
  v1 = **(v0 + 152);
  sub_10042C604();

  return _swift_task_switch(sub_100447F60, 0, 0);
}

uint64_t sub_100447F60()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];
  v6 = v0[12];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_10044811C(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100844958, &qword_1006E48F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  (*(v8 + 16))(v14 - v10, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for AsyncThrowingStream.Continuation.Termination.finished<A, B>(_:) || v12 != enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:))
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.cancelled(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    v13 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v14[1] = v13;
    sub_100007224(&qword_100844950, &unk_1006E48D0);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    Task.cancel()();
  }
}

uint64_t sub_100448424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v5[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  v5[25] = v12;
  v13 = *(v12 - 8);
  v5[26] = v13;
  v14 = *(v13 + 64) + 15;
  v5[27] = swift_task_alloc();
  v15 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v5[28] = v15;
  v16 = *(v15 - 8);
  v5[29] = v16;
  v5[30] = *(v16 + 64);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v17 = type metadata accessor for WebPresentmentResponse();
  v5[33] = v17;
  v18 = *(v17 - 8);
  v5[34] = v18;
  v19 = *(v18 + 64) + 15;
  v5[35] = swift_task_alloc();
  v20 = *(*(sub_100007224(&qword_10083ACF8, &qword_1006D8FC0) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v21 = type metadata accessor for MobileDocumentProviderUserSelection();
  v5[37] = v21;
  v22 = *(v21 - 8);
  v5[38] = v22;
  v23 = *(v22 + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v24 = type metadata accessor for WebPresentmentAnalyticsReporter.ThirdPartyAppResult();
  v5[41] = v24;
  v25 = *(v24 - 8);
  v5[42] = v25;
  v26 = *(v25 + 64) + 15;
  v5[43] = swift_task_alloc();
  v27 = type metadata accessor for MobileDocumentProviderRequestState();
  v5[44] = v27;
  v28 = *(v27 - 8);
  v5[45] = v28;
  v29 = *(v28 + 64) + 15;
  v5[46] = swift_task_alloc();
  v30 = *(*(sub_100007224(&qword_100844968, &qword_1006E4E80) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v31 = sub_100007224(&qword_100844970, &qword_1006E4920);
  v5[48] = v31;
  v32 = *(v31 - 8);
  v5[49] = v32;
  v33 = *(v32 + 64) + 15;
  v5[50] = swift_task_alloc();
  v34 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  v5[51] = v34;
  v35 = *(v34 - 8);
  v5[52] = v35;
  v36 = *(v35 + 64) + 15;
  v5[53] = swift_task_alloc();
  v37 = type metadata accessor for Logger();
  v5[54] = v37;
  v38 = *(v37 - 8);
  v5[55] = v38;
  v39 = *(v38 + 64) + 15;
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v40 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v5[58] = v40;
  v41 = *(*(v40 - 8) + 64) + 15;
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v42 = type metadata accessor for MobileDocumentProviderRecord(0);
  v5[62] = v42;
  v43 = *(v42 - 8);
  v5[63] = v43;
  v44 = *(v43 + 64) + 15;
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v45 = *(*(sub_100007224(&qword_1008437B0, &unk_1006E1720) - 8) + 64) + 15;
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();

  return _swift_task_switch(sub_100448A80, 0, 0);
}

uint64_t sub_100448A80()
{
  v1 = v0[16];
  v2 = *(v1 + 304);
  (*(v1 + 296))();
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  sub_10000BA08((v1 + 96), v3);
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[71] = v7;
  *v7 = v0;
  v7[1] = sub_100448BC8;
  v8 = v0[13];

  return v10(v8, v3, v4);
}

uint64_t sub_100448BC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v7 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v5 = sub_10044D18C;
  }

  else
  {
    v5 = sub_100448CE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100448CE0()
{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[62];
  v5 = v0[63];
  v6 = *sub_10000BA08((v0[16] + 216), *(v0[16] + 240));
  sub_100473D74(v1, v2);
  sub_10000BBC4(v2, v3, &qword_1008437B0, &unk_1006E1720);
  v7 = *(v5 + 48);
  v0[74] = v7;
  v0[75] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v8 = v7(v3, 1, v4);
  v9 = v0[69];
  if (v8 == 1)
  {
    sub_10000BE18(v9, &qword_1008437B0, &unk_1006E1720);
LABEL_10:
    v30 = swift_task_alloc();
    v0[79] = v30;
    *v30 = v0;
    v30[1] = sub_10044938C;
    v31 = v0[72];
    v32 = v0[70];
    v33 = v0[53];
    v34 = v0[16];
    v35 = v0[13];

    return sub_10044EFC8(v33, v35, v31, v32);
  }

  v10 = v0[66];
  v11 = v0[61];
  v12 = v0[58];
  sub_100450050(v9, v10, type metadata accessor for MobileDocumentProviderRecord);
  sub_100407B04(v10, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[61];
  if (EnumCaseMultiPayload != 1)
  {
    sub_100407B84(v0[66], type metadata accessor for MobileDocumentProviderRecord);
    sub_100407B84(v14, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
    goto LABEL_10;
  }

  v15 = v0[72];
  v16 = v0[57];

  v17 = *(v14 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
  v0[76] = v17;
  v18 = type metadata accessor for BundleRecord();
  (*(*(v18 - 8) + 8))(v14, v18);
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Bypass record is Apple Wallet, bypassing selection sheet to 1st party consent sheet", v21, 2u);
  }

  v22 = v0[57];
  v23 = v0[54];
  v24 = v0[55];

  (*(v24 + 8))(v22, v23);
  v25 = swift_task_alloc();
  v0[77] = v25;
  *v25 = v0;
  v25[1] = sub_100449034;
  v26 = v0[16];
  v27 = v0[12];
  v28 = v0[13];

  return sub_10044E3CC(v27, v28, v17, (v0 + 2));
}

uint64_t sub_100449034()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 624) = v0;

  v5 = *(v2 + 608);

  if (v0)
  {
    v6 = sub_10044D37C;
  }

  else
  {
    v6 = sub_100449168;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100449168()
{
  v1 = v0[70];
  sub_100407B84(v0[66], type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[60];
  v10 = v0[61];
  v13 = v0[59];
  v14 = v0[57];
  v15 = v0[56];
  v16 = v0[53];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[36];
  v24 = v0[35];
  v25 = v0[32];
  v26 = v0[31];
  v27 = v0[27];
  v28 = v0[24];
  v29 = v0[21];
  v30 = v0[20];
  v31 = v0[19];
  v32 = v0[18];
  sub_10000BB78(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10044938C()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  v5 = *(v2 + 576);

  if (v0)
  {
    v6 = sub_10044D5A4;
  }

  else
  {
    v6 = sub_1004494C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004494C0()
{
  v1 = *(v0 + 424);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  AsyncThrowingStream.makeAsyncIterator()();
  *(v0 + 992) = enum case for DIPError.Code.webPresentmentCancelled(_:);
  *(v0 + 996) = enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:);
  *(v0 + 1000) = enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.cancelled(_:);
  *(v0 + 1004) = enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:);
  v4 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v5 = swift_task_alloc();
  *(v0 + 648) = v5;
  *v5 = v0;
  v5[1] = sub_1004495B4;
  v6 = *(v0 + 400);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v7, 0, 0, v8, v0 + 80);
}

uint64_t sub_1004495B4()
{
  v2 = *(*v1 + 648);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10044D7AC;
  }

  else
  {
    v3 = sub_1004496C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004496C4()
{
  v1 = *(v0 + 376);
  if ((*(*(v0 + 360) + 48))(v1, 1, *(v0 + 352)) == 1)
  {
    v100 = *(v0 + 560);
    v3 = *(v0 + 416);
    v2 = *(v0 + 424);
    v4 = *(v0 + 408);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 200);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    (*(v6 + 104))(v5, enum case for DIPError.Code.unexpectedDaemonState(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
    sub_10000BE18(v100, &qword_1008437B0, &unk_1006E1720);
    v8 = *(v0 + 560);
    v9 = *(v0 + 552);
    v10 = *(v0 + 544);
    v11 = *(v0 + 536);
    v12 = *(v0 + 528);
    v13 = *(v0 + 520);
    v14 = *(v0 + 512);
    v16 = *(v0 + 480);
    v15 = *(v0 + 488);
    v81 = *(v0 + 472);
    v82 = *(v0 + 456);
    v83 = *(v0 + 448);
    v84 = *(v0 + 424);
    v85 = *(v0 + 400);
    v86 = *(v0 + 376);
    v87 = *(v0 + 368);
    v88 = *(v0 + 344);
    v89 = *(v0 + 320);
    v90 = *(v0 + 312);
    v91 = *(v0 + 288);
    v92 = *(v0 + 280);
    v93 = *(v0 + 256);
    v94 = *(v0 + 248);
    v95 = *(v0 + 216);
    v96 = *(v0 + 192);
    v97 = *(v0 + 168);
    v98 = *(v0 + 160);
    v99 = *(v0 + 152);
    v101 = *(v0 + 144);
    sub_10000BB78((v0 + 16));

    v17 = *(v0 + 8);

    return v17();
  }

  sub_100450050(v1, *(v0 + 368), type metadata accessor for MobileDocumentProviderRequestState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 6) < 2)
    {
LABEL_34:
      v76 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v77 = swift_task_alloc();
      *(v0 + 648) = v77;
      *v77 = v0;
      v77[1] = sub_1004495B4;
      v78 = *(v0 + 400);
      v79 = *(v0 + 376);
      v80 = *(v0 + 384);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v79, 0, 0, v80, v0 + 80);
    }

    if (EnumCaseMultiPayload != 4)
    {
      v61 = *(v0 + 336);
      v60 = *(v0 + 344);
      v62 = *(v0 + 328);
      (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 368), *(v0 + 176));
      v63 = *(v0 + 40);
      v64 = *(v0 + 48);
      sub_10000BA08((v0 + 16), v63);
      (*(v61 + 104))(v60, enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.success(_:), v62);
      v65 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)[1];
      v66 = swift_task_alloc();
      *(v0 + 984) = v66;
      *v66 = v0;
      v66[1] = sub_10044CDBC;
      v49 = *(v0 + 344);
      v50 = v63;
      v51 = v64;
LABEL_22:

      return dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)(v49, v50, v51);
    }

    v26 = *(v0 + 128);
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 368), *(v0 + 296));
    v27 = v26[15];
    v28 = v26[16];
    sub_10000BA08(v26 + 12, v27);
    v29 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v31 = v30;
    *(v0 + 816) = v30;
    v32 = *(v28 + 16);
    v103 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    *(v0 + 824) = v34;
    *v34 = v0;
    v34[1] = sub_10044B1F4;
    v35 = *(v0 + 536);
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v20 = *(v0 + 368);
        v21 = *(v0 + 112);
        v22 = *v20;
        *(v0 + 656) = *v20;
        v102 = (v21 + *v21);
        v23 = v21[1];
        v24 = swift_task_alloc();
        *(v0 + 664) = v24;
        *v24 = v0;
        v24[1] = sub_10044A294;
        v25 = *(v0 + 120);

        return v102(v22);
      }

      v52 = *(v0 + 1004);
      v53 = *(v0 + 368);
      v38 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
      *(v0 + 680) = v38;
      v54 = *(v38 - 8);
      v40 = v54;
      *(v0 + 688) = v54;
      v55 = (*(v54 + 88))(v53, v38);
      if (v55 == v52)
      {
        v56 = *(v0 + 40);
        v57 = *(v0 + 48);
        sub_10000BA08((v0 + 16), v56);
        v58 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()[1];
        v59 = swift_task_alloc();
        *(v0 + 696) = v59;
        *v59 = v0;
        v59[1] = sub_10044A458;

        return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()(v56, v57);
      }

      if (v55 == *(v0 + 996))
      {
        v72 = *(*(v0 + 128) + 312);
        *(v0 + 736) = v72;
        sub_100007224(&qword_10083C008, &qword_1006DA4E0);
        v73 = type metadata accessor for DIPSignpost.Config();
        *(v0 + 744) = v73;
        v74 = *(*(v73 - 8) + 72);
        *(v0 + 1012) = *(*(v73 - 8) + 80);
        v75 = swift_allocObject();
        *(v0 + 752) = v75;
        *(v75 + 16) = xmmword_1006BF740;
        static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
        static DaemonSignposts.WebPresentment.thirdPartySelection.getter();

        return _swift_task_switch(sub_10044A7F4, v72, 0);
      }

      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v36 = *(v0 + 996);
      v37 = *(v0 + 368);
      v38 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
      *(v0 + 760) = v38;
      v39 = *(v38 - 8);
      v40 = v39;
      *(v0 + 768) = v39;
      if ((*(v39 + 88))(v37, v38) != v36)
      {
LABEL_33:
        (*(v40 + 8))(*(v0 + 368), v38);
        goto LABEL_34;
      }

      v41 = *(v0 + 1000);
      v43 = *(v0 + 336);
      v42 = *(v0 + 344);
      v44 = *(v0 + 328);
      v45 = *(v0 + 40);
      v46 = *(v0 + 48);
      sub_10000BA08((v0 + 16), v45);
      (*(v43 + 104))(v42, v41, v44);
      v47 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)[1];
      v48 = swift_task_alloc();
      *(v0 + 776) = v48;
      *v48 = v0;
      v48[1] = sub_10044A8A4;
      v49 = *(v0 + 344);
      v50 = v45;
      v51 = v46;
      goto LABEL_22;
    }

    v67 = *(v0 + 128);
    (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 368), *(v0 + 296));
    v27 = v67[15];
    v28 = v67[16];
    sub_10000BA08(v67 + 12, v27);
    v29 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v31 = v68;
    *(v0 + 784) = v68;
    v69 = *(v28 + 16);
    v103 = (v69 + *v69);
    v70 = v69[1];
    v71 = swift_task_alloc();
    *(v0 + 792) = v71;
    *v71 = v0;
    v71[1] = sub_10044AAC0;
    v35 = *(v0 + 544);
  }

  return v103(v35, v29, v31, v27, v28);
}

uint64_t sub_10044A294()
{
  v2 = *(*v1 + 664);
  v5 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = sub_10044D9EC;
  }

  else
  {
    v3 = sub_10044A3A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10044A3A8()
{
  v1 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v2 = swift_task_alloc();
  *(v0 + 648) = v2;
  *v2 = v0;
  v2[1] = sub_1004495B4;
  v3 = *(v0 + 400);
  v4 = *(v0 + 376);
  v5 = *(v0 + 384);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v4, 0, 0, v5, v0 + 80);
}

uint64_t sub_10044A458()
{
  v1 = *(*v0 + 696);
  v3 = *v0;

  return _swift_task_switch(sub_10044A554, 0, 0);
}

uint64_t sub_10044A554()
{
  v1 = *(*(v0 + 128) + 312);
  *(v0 + 704) = v1;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v2 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 712) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 720) = v3;
  v5 = *(v3 + 72);
  *(v0 + 1008) = *(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 728) = v6;
  *(v6 + 16) = xmmword_1006BF520;
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_10044A66C, v1, 0);
}

uint64_t sub_10044A66C()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = (*(v0 + 1008) + 32) & ~*(v0 + 1008);
  sub_10051B0E0(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10044A730, 0, 0);
}

uint64_t sub_10044A730()
{
  (*(v0[86] + 8))(v0[46], v0[85]);
  v1 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v2 = swift_task_alloc();
  v0[81] = v2;
  *v2 = v0;
  v2[1] = sub_1004495B4;
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[48];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v4, 0, 0, v5, v0 + 10);
}

uint64_t sub_10044A7F4()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = (*(v0 + 1012) + 32) & ~*(v0 + 1012);
  sub_10051B0E0(*(v0 + 752));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100450218, 0, 0);
}

uint64_t sub_10044A8A4()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10044A9FC, 0, 0);
}

uint64_t sub_10044A9FC()
{
  (*(v0[96] + 8))(v0[46], v0[95]);
  v1 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v2 = swift_task_alloc();
  v0[81] = v2;
  *v2 = v0;
  v2[1] = sub_1004495B4;
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[48];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v4, 0, 0, v5, v0 + 10);
}

uint64_t sub_10044AAC0()
{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 784);
  v4 = *v0;

  return _swift_task_switch(sub_10044ABD8, 0, 0);
}

uint64_t sub_10044ABD8()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 544);
  if ((*(v0 + 592))(v2, 1, *(v0 + 496)) == 1)
  {
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    v3 = &qword_1008437B0;
    v4 = &unk_1006E1720;
LABEL_8:
    sub_10000BE18(v2, v3, v4);
LABEL_9:
    v19 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v20 = swift_task_alloc();
    *(v0 + 648) = v20;
    *v20 = v0;
    v20[1] = sub_1004495B4;
    v21 = *(v0 + 400);
    v22 = *(v0 + 376);
    v23 = *(v0 + 384);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v22, 0, 0, v23, v0 + 80);
  }

  v5 = *(v0 + 520);
  v6 = *(v0 + 480);
  v7 = *(v0 + 464);
  sub_100450050(v2, v5, type metadata accessor for MobileDocumentProviderRecord);
  sub_100407B04(v5, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 480);
  v10 = *(v0 + 288);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v9 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));

    v12 = type metadata accessor for BundleRecord();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v10, v9, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
  }

  else
  {
    v14 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(v9 + *(v14 + 48), v10);
    v12 = type metadata accessor for BundleRecord();
    (*(*(v12 - 8) + 8))(v9, v12);
  }

  v2 = *(v0 + 288);
  type metadata accessor for BundleRecord();
  v15 = *(v12 - 8);
  if ((*(v15 + 48))(v2, 1, v12) == 1)
  {
    v16 = *(v0 + 320);
    v17 = *(v0 + 296);
    v18 = *(v0 + 304);
    sub_100407B84(*(v0 + 520), type metadata accessor for MobileDocumentProviderRecord);
    (*(v18 + 8))(v16, v17);
    v3 = &qword_10083ACF8;
    v4 = &qword_1006D8FC0;
    goto LABEL_8;
  }

  v24 = BundleRecord.bundleIdentifier.getter();
  v26 = v25;
  *(v0 + 800) = v25;
  (*(v15 + 8))(v2, v12);
  if (!v26)
  {
    v31 = *(v0 + 320);
    v32 = *(v0 + 296);
    v33 = *(v0 + 304);
    sub_100407B84(*(v0 + 520), type metadata accessor for MobileDocumentProviderRecord);
    (*(v33 + 8))(v31, v32);
    goto LABEL_9;
  }

  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  sub_10000BA08((v0 + 16), v27);
  v29 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)[1];
  v30 = swift_task_alloc();
  *(v0 + 808) = v30;
  *v30 = v0;
  v30[1] = sub_10044AFF0;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)(v24, v26, v27, v28);
}

uint64_t sub_10044AFF0()
{
  v1 = *(*v0 + 808);
  v2 = *(*v0 + 800);
  v4 = *v0;

  return _swift_task_switch(sub_10044B108, 0, 0);
}

uint64_t sub_10044B108()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  sub_100407B84(v0[65], type metadata accessor for MobileDocumentProviderRecord);
  (*(v3 + 8))(v1, v2);
  v4 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v5 = swift_task_alloc();
  v0[81] = v5;
  *v5 = v0;
  v5[1] = sub_1004495B4;
  v6 = v0[50];
  v7 = v0[47];
  v8 = v0[48];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v7, 0, 0, v8, v0 + 10);
}

uint64_t sub_10044B1F4()
{
  v1 = *(*v0 + 824);
  v2 = *(*v0 + 816);
  v4 = *v0;

  return _swift_task_switch(sub_10044B30C, 0, 0);
}

uint64_t sub_10044B30C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 536);
  if ((*(v0 + 592))(v2, 1, *(v0 + 496)) == 1)
  {
    v3 = *(v0 + 416);
    v47 = *(v0 + 424);
    v49 = *(v0 + 560);
    v43 = *(v0 + 400);
    v45 = *(v0 + 408);
    v4 = *(v0 + 392);
    v41 = *(v0 + 384);
    v5 = *(v0 + 304);
    v37 = *(v0 + 296);
    v39 = *(v0 + 312);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = *(v0 + 200);
    sub_10000BE18(v2, &qword_1008437B0, &unk_1006E1720);
    (*(v7 + 104))(v6, enum case for DIPError.Code.webPresentmentMissingRecord(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v5 + 8))(v39, v37);
    (*(v4 + 8))(v43, v41);
    (*(v3 + 8))(v47, v45);
    sub_10000BE18(v49, &qword_1008437B0, &unk_1006E1720);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    v12 = *(v0 + 536);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    v15 = *(v0 + 512);
    v17 = *(v0 + 480);
    v16 = *(v0 + 488);
    v24 = *(v0 + 472);
    v25 = *(v0 + 456);
    v26 = *(v0 + 448);
    v27 = *(v0 + 424);
    v28 = *(v0 + 400);
    v29 = *(v0 + 376);
    v30 = *(v0 + 368);
    v31 = *(v0 + 344);
    v32 = *(v0 + 320);
    v33 = *(v0 + 312);
    v34 = *(v0 + 288);
    v35 = *(v0 + 280);
    v36 = *(v0 + 256);
    v38 = *(v0 + 248);
    v40 = *(v0 + 216);
    v42 = *(v0 + 192);
    v44 = *(v0 + 168);
    v46 = *(v0 + 160);
    v48 = *(v0 + 152);
    v50 = *(v0 + 144);
    sub_10000BB78((v0 + 16));

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    sub_100450050(v2, *(v0 + 512), type metadata accessor for MobileDocumentProviderRecord);
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v20);
    v22 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()[1];
    v23 = swift_task_alloc();
    *(v0 + 832) = v23;
    *v23 = v0;
    v23[1] = sub_10044B76C;

    return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()(v20, v21);
  }
}

uint64_t sub_10044B76C()
{
  v1 = *(*v0 + 832);
  v3 = *v0;

  return _swift_task_switch(sub_10044B868, 0, 0);
}

uint64_t sub_10044B868()
{
  v1 = *(v0 + 464);
  sub_100407B04(*(v0 + 512), *(v0 + 472));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 472);
    v3 = *(v0 + 128);
    *(v0 + 840) = *(v2 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
    v4 = *(v3 + 312);
    *(v0 + 848) = v4;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v5 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 856) = v5;
    v6 = *(v5 - 8);
    v7 = v6;
    *(v0 + 864) = v6;
    v8 = *(v6 + 72);
    *(v0 + 1016) = *(v7 + 80);
    v9 = swift_allocObject();
    *(v0 + 872) = v9;
    *(v9 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.firstPartySelection.getter();
    v10 = sub_10044BAA4;
  }

  else
  {
    v11 = *(v0 + 128);
    *(v0 + 1020) = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    v4 = *(v11 + 312);
    *(v0 + 904) = v4;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v12 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 912) = v12;
    v13 = *(v12 - 8);
    v14 = v13;
    *(v0 + 920) = v13;
    v15 = *(v13 + 72);
    *(v0 + 1024) = *(v14 + 80);
    v16 = swift_allocObject();
    *(v0 + 928) = v16;
    *(v16 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.thirdPartySelection.getter();
    v10 = sub_10044C0B0;
  }

  return _swift_task_switch(v10, v4, 0);
}

uint64_t sub_10044BAA4()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  v5 = (*(v0 + 1016) + 32) & ~*(v0 + 1016);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10044BB68, 0, 0);
}

uint64_t sub_10044BB68()
{
  v1 = sub_10000BA08((*(v0 + 128) + 56), *(*(v0 + 128) + 80));
  *(v0 + 880) = v1;
  v2 = *v1;

  return _swift_task_switch(sub_10044BBDC, v2, 0);
}

uint64_t sub_10044BBDC()
{
  v1 = **(v0 + 880);
  sub_10042C604();
  v2 = swift_task_alloc();
  *(v0 + 888) = v2;
  *v2 = v0;
  v2[1] = sub_10044BC8C;
  v3 = *(v0 + 840);
  v4 = *(v0 + 280);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  return sub_10044E3CC(v4, v6, v3, v0 + 16);
}

uint64_t sub_10044BC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = v0;

  v5 = *(v2 + 840);

  if (v0)
  {
    v6 = sub_10044DC3C;
  }

  else
  {
    v6 = sub_10044BDC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10044BDC0()
{
  v44 = v0[70];
  v46 = v0[59];
  v1 = v0[52];
  v36 = v0[53];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[37];
  v9 = v0[34];
  v40 = v0[33];
  v42 = v0[35];
  v38 = v0[12];
  sub_100407B84(v0[64], type metadata accessor for MobileDocumentProviderRecord);
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v36, v2);
  sub_10000BE18(v44, &qword_1008437B0, &unk_1006E1720);
  (*(v9 + 32))(v38, v42, v40);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v46, v10);
  v11 = v0[70];
  v12 = v0[69];
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[64];
  v18 = v0[60];
  v19 = v0[61];
  v22 = v0[59];
  v23 = v0[57];
  v24 = v0[56];
  v25 = v0[53];
  v26 = v0[50];
  v27 = v0[47];
  v28 = v0[46];
  v29 = v0[43];
  v30 = v0[40];
  v31 = v0[39];
  v32 = v0[36];
  v33 = v0[35];
  v34 = v0[32];
  v35 = v0[31];
  v37 = v0[27];
  v39 = v0[24];
  v41 = v0[21];
  v43 = v0[20];
  v45 = v0[19];
  v47 = v0[18];
  sub_10000BB78(v0 + 2);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10044C0B0()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = *(v0 + 904);
  v5 = (*(v0 + 1024) + 32) & ~*(v0 + 1024);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10044C174, 0, 0);
}

uint64_t sub_10044C174()
{
  v1 = *sub_10000BA08((v0[16] + 176), *(v0[16] + 200));
  v2 = swift_task_alloc();
  v0[117] = v2;
  *v2 = v0;
  v2[1] = sub_10044C228;
  v3 = v0[64];
  v4 = v0[32];
  v5 = v0[13];

  return sub_10032DCBC(v4, v3, v5, v1);
}

uint64_t sub_10044C228()
{
  v2 = *(*v1 + 936);
  v5 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v3 = sub_10044C60C;
  }

  else
  {
    v3 = sub_10044C33C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10044C33C()
{
  v1 = sub_10000BA08((*(v0 + 128) + 56), *(*(v0 + 128) + 80));
  v2 = *v1;
  *(v0 + 952) = *v1;

  return _swift_task_switch(sub_10044C3B0, v2, 0);
}

uint64_t sub_10044C3B0()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[28];
  (*(v2 + 16))(v1, v0[32], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[120] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[121] = v6;
  *v6 = v0;
  v6[1] = sub_10044C4E8;
  v7 = v0[119];

  return sub_10042B4BC("presentAuthorizationViewFromSelectionView(presentmentRequest:)", 62, 2, &unk_1006E4930, v5);
}

uint64_t sub_10044C4E8()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v8 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v4 = *(v2 + 952);
    v5 = sub_10044CA58;
  }

  else
  {
    v6 = *(v2 + 960);

    v5 = sub_10044C8F0;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10044C60C()
{
  v43 = *(v0 + 1020);
  v45 = *(v0 + 944);
  v39 = *(v0 + 560);
  v41 = *(v0 + 472);
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);
  v9 = *(v0 + 296);
  sub_100407B84(*(v0 + 512), type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v39, &qword_1008437B0, &unk_1006E1720);
  sub_10000BE18(v41 + v43, &qword_10083ACF8, &qword_1006D8FC0);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v41, v10);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);
  v16 = *(v0 + 520);
  v17 = *(v0 + 512);
  v19 = *(v0 + 480);
  v18 = *(v0 + 488);
  v22 = *(v0 + 472);
  v23 = *(v0 + 456);
  v24 = *(v0 + 448);
  v25 = *(v0 + 424);
  v26 = *(v0 + 400);
  v27 = *(v0 + 376);
  v28 = *(v0 + 368);
  v29 = *(v0 + 344);
  v30 = *(v0 + 320);
  v31 = *(v0 + 312);
  v32 = *(v0 + 288);
  v33 = *(v0 + 280);
  v34 = *(v0 + 256);
  v35 = *(v0 + 248);
  v36 = *(v0 + 216);
  v37 = *(v0 + 192);
  v38 = *(v0 + 168);
  v40 = *(v0 + 160);
  v42 = *(v0 + 152);
  v44 = *(v0 + 144);
  sub_10000BB78((v0 + 16));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10044C8F0()
{
  v1 = *(v0 + 1020);
  v2 = *(v0 + 512);
  v3 = *(v0 + 472);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 296);
  (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
  sub_100407B84(v2, type metadata accessor for MobileDocumentProviderRecord);
  (*(v5 + 8))(v4, v6);
  sub_10000BE18(v3 + v1, &qword_10083ACF8, &qword_1006D8FC0);
  v7 = type metadata accessor for BundleRecord();
  (*(*(v7 - 8) + 8))(v3, v7);
  v8 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v9 = swift_task_alloc();
  *(v0 + 648) = v9;
  *v9 = v0;
  v9[1] = sub_1004495B4;
  v10 = *(v0 + 400);
  v11 = *(v0 + 376);
  v12 = *(v0 + 384);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v11, 0, 0, v12, v0 + 80);
}

uint64_t sub_10044CA58()
{
  v1 = *(v0 + 960);

  return _swift_task_switch(sub_10044CAC0, 0, 0);
}

uint64_t sub_10044CAC0()
{
  (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
  v43 = *(v0 + 1020);
  v45 = *(v0 + 976);
  v39 = *(v0 + 560);
  v41 = *(v0 + 472);
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);
  v9 = *(v0 + 296);
  sub_100407B84(*(v0 + 512), type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v39, &qword_1008437B0, &unk_1006E1720);
  sub_10000BE18(v41 + v43, &qword_10083ACF8, &qword_1006D8FC0);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v41, v10);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);
  v16 = *(v0 + 520);
  v17 = *(v0 + 512);
  v19 = *(v0 + 480);
  v18 = *(v0 + 488);
  v22 = *(v0 + 472);
  v23 = *(v0 + 456);
  v24 = *(v0 + 448);
  v25 = *(v0 + 424);
  v26 = *(v0 + 400);
  v27 = *(v0 + 376);
  v28 = *(v0 + 368);
  v29 = *(v0 + 344);
  v30 = *(v0 + 320);
  v31 = *(v0 + 312);
  v32 = *(v0 + 288);
  v33 = *(v0 + 280);
  v34 = *(v0 + 256);
  v35 = *(v0 + 248);
  v36 = *(v0 + 216);
  v37 = *(v0 + 192);
  v38 = *(v0 + 168);
  v40 = *(v0 + 160);
  v42 = *(v0 + 152);
  v44 = *(v0 + 144);
  sub_10000BB78((v0 + 16));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10044CDBC()
{
  v1 = *(*v0 + 984);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10044CF14, 0, 0);
}

uint64_t sub_10044CF14()
{
  v1 = v0[52];
  v39 = v0[53];
  v41 = v0[70];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v0[12];
  MobileDocumentProviderPresentmentResponse.encryptedResponseData.getter();
  WebPresentmentResponse.init(responseData:)();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v39, v2);
  sub_10000BE18(v41, &qword_1008437B0, &unk_1006E1720);
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[64];
  v17 = v0[60];
  v18 = v0[61];
  v21 = v0[59];
  v22 = v0[57];
  v23 = v0[56];
  v24 = v0[53];
  v25 = v0[50];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[43];
  v29 = v0[40];
  v30 = v0[39];
  v31 = v0[36];
  v32 = v0[35];
  v33 = v0[32];
  v34 = v0[31];
  v35 = v0[27];
  v36 = v0[24];
  v37 = v0[21];
  v38 = v0[20];
  v40 = v0[19];
  v42 = v0[18];
  sub_10000BB78(v0 + 2);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10044D18C()
{
  v32 = v0[73];
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
  v13 = v0[57];
  v14 = v0[56];
  v15 = v0[53];
  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[46];
  v19 = v0[43];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[27];
  v27 = v0[24];
  v28 = v0[21];
  v29 = v0[20];
  v30 = v0[19];
  v31 = v0[18];
  sub_10000BB78(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10044D37C()
{
  v1 = v0[70];
  sub_100407B84(v0[66], type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v33 = v0[78];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v10 = v0[60];
  v9 = v0[61];
  v13 = v0[59];
  v14 = v0[57];
  v15 = v0[56];
  v16 = v0[53];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[36];
  v24 = v0[35];
  v25 = v0[32];
  v26 = v0[31];
  v27 = v0[27];
  v28 = v0[24];
  v29 = v0[21];
  v30 = v0[20];
  v31 = v0[19];
  v32 = v0[18];
  sub_10000BB78(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10044D5A4()
{
  sub_10000BE18(v0[70], &qword_1008437B0, &unk_1006E1720);
  v32 = v0[80];
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
  v13 = v0[57];
  v14 = v0[56];
  v15 = v0[53];
  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[46];
  v19 = v0[43];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[27];
  v27 = v0[24];
  v28 = v0[21];
  v29 = v0[20];
  v30 = v0[19];
  v31 = v0[18];
  sub_10000BB78(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10044D7AC()
{
  v1 = v0[70];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  (*(v0[49] + 8))(v0[50], v0[48]);
  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v36 = v0[10];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[65];
  v11 = v0[64];
  v13 = v0[60];
  v12 = v0[61];
  v16 = v0[59];
  v17 = v0[57];
  v18 = v0[56];
  v19 = v0[53];
  v20 = v0[50];
  v21 = v0[47];
  v22 = v0[46];
  v23 = v0[43];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[36];
  v27 = v0[35];
  v28 = v0[32];
  v29 = v0[31];
  v30 = v0[27];
  v31 = v0[24];
  v32 = v0[21];
  v33 = v0[20];
  v34 = v0[19];
  v35 = v0[18];
  sub_10000BB78(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10044D9EC()
{
  v1 = *(v0 + 560);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v39 = *(v0 + 672);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 512);
  v16 = *(v0 + 480);
  v15 = *(v0 + 488);
  v19 = *(v0 + 472);
  v20 = *(v0 + 456);
  v21 = *(v0 + 448);
  v22 = *(v0 + 424);
  v23 = *(v0 + 400);
  v24 = *(v0 + 376);
  v25 = *(v0 + 368);
  v26 = *(v0 + 344);
  v27 = *(v0 + 320);
  v28 = *(v0 + 312);
  v29 = *(v0 + 288);
  v30 = *(v0 + 280);
  v31 = *(v0 + 256);
  v32 = *(v0 + 248);
  v33 = *(v0 + 216);
  v34 = *(v0 + 192);
  v35 = *(v0 + 168);
  v36 = *(v0 + 160);
  v37 = *(v0 + 152);
  v38 = *(v0 + 144);
  sub_10000BB78((v0 + 16));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10044DC3C()
{
  v1 = *(v0 + 896);
  v88 = *(v0 + 992);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v92 = *(v0 + 136);
  swift_getErrorValue();
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v2 + 104))(v5, v88, v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v10 = *(v92 + 48);
  sub_10000BBC4(v4, v6, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v5, v6 + v10, &qword_10083B020, &unk_1006D8ED0);
  v11 = *(v2 + 48);
  v12 = v11(v6, 1, v3);
  v13 = *(v0 + 200);
  if (v12 == 1)
  {
    v14 = *(v0 + 168);
    sub_10000BE18(*(v0 + 160), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
    if (v11(v6 + v10, 1, v13) == 1)
    {
      v15 = *(v0 + 896);
      sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);

LABEL_11:
      v50 = *(v0 + 448);
      defaultLogger()();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Wallet presentment cancelled by user, allowing user to make another selection", v53, 2u);
      }

      v54 = *(v0 + 896);
      v55 = *(v0 + 512);
      v56 = *(v0 + 472);
      v58 = *(v0 + 440);
      v57 = *(v0 + 448);
      v59 = *(v0 + 432);
      v61 = *(v0 + 304);
      v60 = *(v0 + 312);
      v62 = *(v0 + 296);

      (*(v58 + 8))(v57, v59);
      sub_100407B84(v55, type metadata accessor for MobileDocumentProviderRecord);
      (*(v61 + 8))(v60, v62);
      v63 = type metadata accessor for BundleRecord();
      (*(*(v63 - 8) + 8))(v56, v63);
      v64 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v65 = swift_task_alloc();
      *(v0 + 648) = v65;
      *v65 = v0;
      v65[1] = sub_1004495B4;
      v66 = *(v0 + 400);
      v67 = *(v0 + 376);
      v68 = *(v0 + 384);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v67, 0, 0, v68, v0 + 80);
    }

    goto LABEL_6;
  }

  sub_10000BBC4(*(v0 + 144), *(v0 + 152), &qword_10083B020, &unk_1006D8ED0);
  if (v11(v6 + v10, 1, v13) == 1)
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    v18 = *(v0 + 168);
    v19 = *(v0 + 152);
    sub_10000BE18(*(v0 + 160), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);
    (*(v17 + 8))(v19, v16);
LABEL_6:
    v20 = *(v0 + 896);
    sub_10000BE18(*(v0 + 144), &qword_100834B60, &qword_1006C0310);

    goto LABEL_7;
  }

  v42 = *(v0 + 208);
  v43 = *(v0 + 216);
  v44 = *(v0 + 200);
  v46 = *(v0 + 160);
  v45 = *(v0 + 168);
  v47 = *(v0 + 152);
  v91 = *(v0 + 144);
  v95 = *(v0 + 896);
  (*(v42 + 32))(v43, v6 + v10, v44);
  sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v42 + 8);
  v49(v43, v44);
  sub_10000BE18(v46, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v45, &qword_10083B020, &unk_1006D8ED0);
  v49(v47, v44);
  sub_10000BE18(v91, &qword_10083B020, &unk_1006D8ED0);

  if (v48)
  {
    goto LABEL_11;
  }

LABEL_7:
  v89 = *(v0 + 560);
  v93 = *(v0 + 472);
  v22 = *(v0 + 416);
  v21 = *(v0 + 424);
  v24 = *(v0 + 400);
  v23 = *(v0 + 408);
  v26 = *(v0 + 384);
  v25 = *(v0 + 392);
  v27 = *(v0 + 304);
  v28 = *(v0 + 312);
  v29 = *(v0 + 296);
  sub_100407B84(*(v0 + 512), type metadata accessor for MobileDocumentProviderRecord);
  (*(v27 + 8))(v28, v29);
  (*(v25 + 8))(v24, v26);
  (*(v22 + 8))(v21, v23);
  sub_10000BE18(v89, &qword_1008437B0, &unk_1006E1720);
  v30 = type metadata accessor for BundleRecord();
  (*(*(v30 - 8) + 8))(v93, v30);
  v94 = *(v0 + 896);
  v31 = *(v0 + 560);
  v32 = *(v0 + 552);
  v33 = *(v0 + 544);
  v34 = *(v0 + 536);
  v35 = *(v0 + 528);
  v36 = *(v0 + 520);
  v37 = *(v0 + 512);
  v39 = *(v0 + 480);
  v38 = *(v0 + 488);
  v69 = *(v0 + 472);
  v70 = *(v0 + 456);
  v71 = *(v0 + 448);
  v72 = *(v0 + 424);
  v73 = *(v0 + 400);
  v74 = *(v0 + 376);
  v75 = *(v0 + 368);
  v76 = *(v0 + 344);
  v77 = *(v0 + 320);
  v78 = *(v0 + 312);
  v79 = *(v0 + 288);
  v80 = *(v0 + 280);
  v81 = *(v0 + 256);
  v82 = *(v0 + 248);
  v83 = *(v0 + 216);
  v84 = *(v0 + 192);
  v85 = *(v0 + 168);
  v86 = *(v0 + 160);
  v87 = *(v0 + 152);
  v90 = *(v0 + 144);
  sub_10000BB78((v0 + 16));

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10044E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v10 = type metadata accessor for PartialWebPresentmentRequest();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v5[20] = v13;
  v14 = *(v13 - 8);
  v5[21] = v14;
  v15 = *(v14 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10044E5A8, 0, 0);
}

uint64_t sub_10044E5A8()
{
  v1 = v0[23];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentManager handling first party selection", v4, 2u);
  }

  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[9];
  v9 = v0[10];

  v10 = *(v7 + 8);
  v0[24] = v10;
  v10(v5, v6);
  v0[25] = sub_10000BA08((v9 + 136), *(v9 + 160));
  v11 = v8[3];
  v12 = v8[4];
  sub_10000BA08(v8, v11);
  v13 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter[1];
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_10044E714;

  return dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter(v11, v12);
}

uint64_t sub_10044E714(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v6 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  return _swift_task_switch(sub_10044E814, 0, 0);
}

uint64_t sub_10044E814()
{
  v40 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[7];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[24];
  v11 = v0[22];
  v38 = v0[21];
  v12 = v0[19];
  v13 = v0[20];
  if (v9)
  {
    v36 = v0[22];
    v37 = v0[24];
    v14 = v0[17];
    v15 = v0[18];
    v35 = v0[20];
    v16 = v0[16];
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136315138;
    v6(v15, v12, v16);
    v18 = String.init<A>(describing:)();
    v19 = v8;
    v21 = v20;
    (*(v14 + 8))(v12, v16);
    v22 = sub_100141FE4(v18, v21, &v39);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v7, v19, "WebPresentmentWalletPassPresenter presenting authorization sheet for request: %s", v17, 0xCu);
    sub_10000BB78(v34);

    v37(v36, v35);
  }

  else
  {
    v24 = v0[16];
    v23 = v0[17];

    (*(v23 + 8))(v12, v24);
    v10(v11, v13);
  }

  v25 = v0[10];
  v26 = swift_task_alloc();
  v0[29] = v26;
  *v26 = v0;
  v26[1] = sub_10044EA94;
  v27 = v0[27];
  v28 = v0[28];
  v29 = v0[25];
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];

  return sub_1004743C0(v32, v30, v31, v25 + 16, v27, v28);
}

uint64_t sub_10044EA94()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10044EC40, 0, 0);
  }

  else
  {
    v5 = v3[22];
    v4 = v3[23];
    v7 = v3[18];
    v6 = v3[19];
    v9 = v3[14];
    v8 = v3[15];
    v10 = v3[13];
    sub_10000BD94(v3[27], v3[28]);

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_10044EC40()
{
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  swift_getErrorValue();
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  Error.dipErrorCode.getter();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[12];
    sub_10000BBC4(v0[15], v8, &qword_10083B020, &unk_1006D8ED0);
    if ((*(v10 + 88))(v8, v9) == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:))
    {
      v11 = v0[30];
      (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[11]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_6;
    }

    (*(v0[12] + 8))(v0[14], v0[11]);
  }

  v12 = v0[30];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v13 = v0[30];
  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[18];
  v16 = v0[19];
  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[13];
  sub_10000BD94(v0[27], v0[28]);

  sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10044EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v5[16] = v15;
  v16 = *(v15 - 8);
  v5[17] = v16;
  v17 = *(v16 + 64) + 15;
  v5[18] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v5[19] = v18;
  v19 = *(v18 - 8);
  v5[20] = v19;
  v20 = *(v19 + 64) + 15;
  v5[21] = swift_task_alloc();
  v21 = *(*(sub_100007224(&qword_1008437B0, &unk_1006E1720) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v22 = type metadata accessor for MobileDocumentProviderRecord(0);
  v5[23] = v22;
  v23 = *(v22 - 8);
  v5[24] = v23;
  v24 = *(v23 + 64) + 15;
  v5[25] = swift_task_alloc();
  v25 = type metadata accessor for URL();
  v5[26] = v25;
  v26 = *(v25 - 8);
  v5[27] = v26;
  v27 = *(v26 + 64) + 15;
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_10044F2F0, 0, 0);
}

uint64_t sub_10044F2F0()
{
  v59 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[3];
  PartialWebPresentmentRequest.originatingURL.getter();
  v5 = URL.host.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (!v7)
  {
    v11 = v0[28];
    v12 = v0[25];
    v13 = v0[22];
    v50 = v0[21];
    v52 = v0[18];
    v54 = v0[15];
    v56 = v0[12];
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.webPresentmentMissingHost(_:), v0[7]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v14 = v0[1];
    goto LABEL_12;
  }

  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[22];
  sub_10000BBC4(v0[5], v10, &qword_1008437B0, &unk_1006E1720);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_10000BE18(v0[22], &qword_1008437B0, &unk_1006E1720);
  }

  else
  {
    sub_100450050(v0[22], v0[25], type metadata accessor for MobileDocumentProviderRecord);
    v15 = sub_100330370();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = v0[21];

      defaultLogger()();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[20];
      v24 = v0[21];
      v25 = v0[19];
      if (v22)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v58 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_100141FE4(v17, v18, &v58);
        _os_log_impl(&_mh_execute_header, v20, v21, "WebPresentmentManager using a bypassed third party credential provider: %s.", v26, 0xCu);
        sub_10000BB78(v27);
      }

      (*(v23 + 8))(v24, v25);
      v28 = v0[17];
      v55 = v0[18];
      v57 = v0[25];
      v29 = v0[15];
      v30 = v0[13];
      v31 = v0[14];
      v32 = v0[11];
      v33 = v0[12];
      v49 = v0[16];
      v51 = v0[10];
      v34 = v0[6];
      v35 = v0[3];
      v53 = v0[2];
      v36 = type metadata accessor for PartialWebPresentmentRequest();
      (*(*(v36 - 8) + 16))(v29, v35, v36);
      (*(v31 + 104))(v29, enum case for MobileDocumentProviderSceneConfiguration.iso18013MobileDocumentRequest(_:), v30);
      sub_100330648();
      MobileDocumentProviderPresentmentRequest.init(applicationExtensionBundleIdentifier:sceneConfiguration:localizedDisplayName:)();
      sub_10000BA08((v34 + 56), *(v34 + 80));
      (*(v28 + 16))(v33, v55, v49);
      (*(v32 + 104))(v33, enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:), v51);
      type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
      sub_1004333B0(v33);
      (*(v32 + 8))(v33, v51);
      (*(v28 + 8))(v55, v49);
      sub_100407B84(v57, type metadata accessor for MobileDocumentProviderRecord);
      goto LABEL_11;
    }

    sub_100407B84(v0[25], type metadata accessor for MobileDocumentProviderRecord);
  }

  v37 = v0[4];
  v38 = v0[2];
  v39 = *sub_10000BA08((v0[6] + 56), *(v0[6] + 80));
  sub_10042972C(v37, v5, v7, v38);

LABEL_11:
  v40 = v0[28];
  v41 = v0[25];
  v43 = v0[21];
  v42 = v0[22];
  v44 = v0[18];
  v45 = v0[15];
  v46 = v0[12];
  v47 = v0[9];

  v14 = v0[1];
LABEL_12:

  return v14();
}

uint64_t sub_10044F8F4()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 12);
  sub_10000BB78(v0 + 17);
  sub_10000BB78(v0 + 22);
  sub_10000BB78(v0 + 27);
  sub_10000BB78(v0 + 32);
  v1 = v0[38];

  v2 = v0[39];

  return swift_deallocClassInstance();
}

uint64_t sub_10044F990(uint64_t a1)
{
  v3 = sub_100007224(&qword_100844948, &qword_1006E48C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  v10 = *v1;
  v11 = a1;
  type metadata accessor for WebPresentmentRequestState();
  (*(v4 + 104))(v7, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_10044FAB8()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10044FC1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027B9C;

  return sub_100447098(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10044FD88()
{
  v1 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10044FE30(uint64_t a1)
{
  v3 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10044811C(a1);
}

uint64_t sub_10044FED8()
{
  v1 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10044FF6C(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1004476D8(a1, v1 + v5);
}

uint64_t sub_100450050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004500B8()
{
  v1 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100450140(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderPresentmentRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_10042BF04(a1, v1 + v5);
}

void sub_10045021C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v217 = a1;
  v218 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v213 = *(v4 - 8);
  Kind = v213[4].Kind;
  __chkstk_darwin(v4);
  v214 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateProvider();
  v219 = *(v7 - 8);
  v220 = v7;
  v8 = v219[8];
  v9 = __chkstk_darwin(v7);
  v215 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v195 - v11;
  v221 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider();
  v13 = *(v221[-1].Description + 8);
  __chkstk_darwin(v221);
  v291 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WebPresentmentMobileDocumentSource();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v195 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2[4];
  sub_10000BA08(a2, a2[3]);
  dispatch thunk of WebPresentmentDeviceSupportProviding.mobileDocumentSource.getter();
  v21 = (*(v16 + 88))(v19, v15);
  if (v21 == enum case for WebPresentmentMobileDocumentSource.local(_:))
  {
    v22 = type metadata accessor for DeviceInformationProvider();
    v270 = v22;
    v271 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(v269);
    DeviceInformationProvider.init()();
    v212 = type metadata accessor for UserDefaultsConfiguration();
    v272 = static UserDefaultsConfiguration.standard.getter();
    v23 = sub_100134AD0();
    if (sub_100134AD0())
    {
      v24 = 0xED0000747365742DLL;
    }

    else
    {
      v24 = 0xE800000000000000;
    }

    v25 = type metadata accessor for DigitalPresentmentSessionManager();
    swift_allocObject();
    v26 = sub_10015D65C(v23 & 1, 0x797469746E656469, v24, 2);
    v201 = type metadata accessor for PassManager();
    v208 = swift_allocObject();
    v211 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
    v210 = type metadata accessor for DigitalPresentmentUIPresenter();

    v27 = v291;
    DeviceInformationProvider.init()();
    v213 = v22;
    *(&v252 + 1) = v22;
    *&v253 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(&v251);
    DeviceInformationProvider.init()();
    v28 = type metadata accessor for KRLTrustValidator();
    v240 = 0u;
    v241 = 0u;
    *&v242[0] = 0;
    v198 = v28;
    swift_allocObject();
    v29 = sub_10010F338();

    DateProvider.init()();
    v31 = v219;
    v30 = v220;
    v32 = v215;
    v196 = v219[2];
    v197 = (v219 + 2);
    (v196)(v215, v12, v220);
    v33 = sub_1003A0748(&v240, v29, v32);

    v34 = v31[1];
    v203 = v12;
    v219 = (v31 + 1);
    v195 = v34;
    v34(v12, v30);
    *(&v241 + 1) = v25;
    *&v242[0] = &off_100809E48;
    v214 = v26;
    *&v240 = v26;
    *(&v264 + 1) = v221;
    v265 = &off_100810218;
    v35 = sub_100032DBC(&v263);
    sub_1003EADF0(v27, v35);
    v36 = type metadata accessor for PresentmentKeyRevocationValidator();
    v248 = &off_100809510;
    *(&v247 + 1) = v36;
    *&v246 = v33;
    v37 = type metadata accessor for WalletPassPresentmentManager();
    v38 = swift_allocObject();
    v39 = sub_10001F370(&v240, v25);
    v207 = &v195;
    v40 = *(v25[-1].Description + 8);
    __chkstk_darwin(v39);
    v42 = (&v195 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v44 = *(v43 + 16);
    v202 = v43 + 16;
    v199 = v44;
    v200 = v41;
    v44(v42);
    v45 = *(&v264 + 1);
    v46 = sub_10001F370(&v263, *(&v264 + 1));
    v206 = &v195;
    v47 = *(*(v45 - 8) + 64);
    __chkstk_darwin(v46);
    v49 = (&v195 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = *(&v247 + 1);
    v52 = sub_10001F370(&v246, *(&v247 + 1));
    v205 = &v195;
    v53 = *(*(v51 - 8) + 64);
    __chkstk_darwin(v52);
    v55 = (&v195 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v57 = *v42;
    v58 = *v55;
    v289 = v25;
    v290 = &off_100809E48;
    v209 = v25;
    *&v288 = v57;
    *(&v286 + 1) = v221;
    v287 = &off_100810218;
    v59 = sub_100032DBC(&v285);
    sub_1003EAE54(v49, v59);
    *(&v283 + 1) = v36;
    v284 = &off_100809510;
    v204 = v36;
    *&v282 = v58;
    swift_defaultActor_initialize();
    sub_1003EAEB8(v291);
    *(v38 + 272) = 0u;
    *(v38 + 288) = 0u;
    *(v38 + 304) = 0;
    sub_10001F358(&v288, v38 + 112);
    v60 = v211;
    *(v38 + 152) = v208;
    *(v38 + 160) = v60;
    v61 = v210;
    *(v38 + 168) = &off_100809DF0;
    *(v38 + 176) = v61;
    *(v38 + 184) = &off_100809F18;
    sub_10001F358(&v285, v38 + 192);
    sub_10001F358(&v251, v38 + 232);
    sub_10001F358(&v282, v38 + 312);
    sub_10000BB78(&v246);
    sub_10000BB78(&v263);
    sub_10000BB78(&v240);
    v268[9] = &off_100810230;
    v206 = v37;
    v268[8] = v37;
    v268[5] = v38;
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v62 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v62 + 54);
    v63 = v216;
    sub_1000318FC(&v62[4], &v251);
    v216 = v63;
    v64 = v62 + 54;
    if (v63)
    {
      os_unfair_lock_unlock(v64);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v64);
      v65 = *(&v255 + 1);

      sub_100031918(&v251);
      *(&v241 + 1) = type metadata accessor for MobileDocumentRegistrationDataContainer();
      *&v242[0] = sub_100452308(&qword_100843228, type metadata accessor for MobileDocumentRegistrationDataContainer);
      *&v240 = v65;
      *(&v252 + 1) = type metadata accessor for MobileDocumentProviderRegistrationValidator();
      *&v253 = &protocol witness table for MobileDocumentProviderRegistrationValidator;
      sub_100032DBC(&v251);
      MobileDocumentProviderRegistrationValidator.init()();
      v66 = type metadata accessor for MobileDocumentProviderRegistrationStorage();
      v67 = swift_allocObject();
      sub_10001F358(&v240, v67 + 16);
      sub_10001F358(&v251, v67 + 56);
      v265 = &off_10080DE08;
      *(&v264 + 1) = v66;
      *&v263 = v67;
      v68 = type metadata accessor for MobileDocumentProviderRegistrationEntitlementChecker();
      v268[3] = v220;
      v268[4] = &protocol witness table for DateProvider;
      sub_100032DBC(v268);
      DateProvider.init()();
      v266 = v68;
      v267 = &protocol witness table for MobileDocumentProviderRegistrationEntitlementChecker;
      static MobileDocumentProvider.extensionPointIdentifier.getter();
      v69 = type metadata accessor for ExtensionPointManager();
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      swift_allocObject();
      v72 = ExtensionPointManager.init(extensionPointIdentifier:)();
      *&v253 = &protocol witness table for ExtensionPointManager;
      *(&v252 + 1) = v69;
      *&v251 = v72;
      *(&v241 + 1) = type metadata accessor for BundleRecordFetcher();
      *&v242[0] = &protocol witness table for BundleRecordFetcher;
      sub_100032DBC(&v240);
      BundleRecordFetcher.init()();
      v289 = v213;
      v290 = &protocol witness table for DeviceInformationProvider;
      sub_100032DBC(&v288);
      DeviceInformationProvider.init()();
      static UserDefaultsConfiguration.standard.getter();
      *(&v247 + 1) = type metadata accessor for WebPresentmentDeviceSupportProvider();
      v248 = &protocol witness table for WebPresentmentDeviceSupportProvider;
      sub_100032DBC(&v246);
      WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)();
      PartyDocumentProviderPreferencesManager = type metadata accessor for FirstPartyDocumentProviderPreferencesManager();
      v74 = *(PartyDocumentProviderPreferencesManager + 48);
      v75 = *(PartyDocumentProviderPreferencesManager + 52);
      swift_allocObject();
      v76 = FirstPartyDocumentProviderPreferencesManager.init(userDefaults:)();
      v289 = &type metadata for MobileDocumentProviderFilter;
      v290 = &off_10080DCC8;
      *&v288 = swift_allocObject();
      sub_1003EAFA4(&v263, v288 + 16);
      v208 = type metadata accessor for MobileDocumentProviderDataSource();
      v77 = swift_allocObject();
      v78 = sub_10001F370(&v288, &type metadata for MobileDocumentProviderFilter);
      __chkstk_darwin(v78);
      v80 = &v195 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v81 + 16))(v80);
      *(&v286 + 1) = &type metadata for MobileDocumentProviderFilter;
      v287 = &off_10080DCC8;
      v82 = swift_allocObject();
      *&v285 = v82;
      v83 = *(v80 + 7);
      *(v82 + 112) = *(v80 + 6);
      *(v82 + 128) = v83;
      *(v82 + 144) = *(v80 + 16);
      v84 = *(v80 + 3);
      *(v82 + 48) = *(v80 + 2);
      *(v82 + 64) = v84;
      v85 = *(v80 + 5);
      *(v82 + 80) = *(v80 + 4);
      *(v82 + 96) = v85;
      v86 = *(v80 + 1);
      *(v82 + 16) = *v80;
      *(v82 + 32) = v86;
      swift_defaultActor_initialize();
      *(v77 + 280) = 0;
      sub_10001F358(&v251, v77 + 112);
      sub_10001F358(&v240, v77 + 152);
      sub_10001F358(&v246, v77 + 192);
      sub_10001F358(&v285, v77 + 232);
      *(v77 + 272) = v76;
      sub_10000BB78(&v288);
      LOBYTE(v69) = sub_100134AD0();
      v87 = type metadata accessor for WebPresentmentBrandStore();
      v88 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v88 + 112) = [objc_allocWithZone(DIWebPresentmentBrandStore) init];
      *(&v247 + 1) = v87;
      *&v246 = v88;
      v89 = v213;
      v248 = &off_1008109F0;
      v250[3] = v213;
      v250[4] = &protocol witness table for DeviceInformationProvider;
      sub_100032DBC(v250);
      DeviceInformationProvider.init()();
      v90 = static UserDefaultsConfiguration.standard.getter();
      v249 = v69 & 1;
      v250[5] = v90;
      v91 = v209;
      v289 = v209;
      v290 = &off_100809E48;
      v287 = 0;
      *&v288 = v214;
      v285 = 0u;
      v286 = 0u;
      *(&v283 + 1) = &type metadata for WebPresentmentBrandConfigurationManager;
      v284 = &off_1008109C8;
      *&v282 = swift_allocObject();
      sub_1003EB048(&v246, v282 + 16);
      v207 = type metadata accessor for WebPresentmentResponseBuilder();
      v279 = 0u;
      v280 = 0u;
      v281 = 0;

      v92 = static UserDefaultsConfiguration.standard.getter();
      sub_100020260(&v288, &v240);
      sub_10000BBC4(&v285, &v276, &qword_100843230, &qword_1006E0DC0);
      if (v277)
      {
        sub_10001F358(&v276, &v251);
      }

      else
      {
        sub_100020260(&v288, &v251);
        v205 = swift_allocObject();
        v113 = v291;
        DeviceInformationProvider.init()();
        v274 = v89;
        v275 = &protocol witness table for DeviceInformationProvider;
        sub_100032DBC(&v273);
        DeviceInformationProvider.init()();
        v239 = 0;
        v237 = 0u;
        v238 = 0u;
        swift_allocObject();
        v114 = sub_10010F338();

        v115 = v203;
        DateProvider.init()();
        v116 = v215;
        v117 = v220;
        (v196)(v215, v115, v220);
        v118 = sub_1003A0748(&v237, v114, v116);

        v195(v115, v117);
        v119 = *(&v252 + 1);
        v120 = sub_10001F370(&v251, *(&v252 + 1));
        v220 = &v195;
        v121 = *(*(v119 - 8) + 64);
        __chkstk_darwin(v120);
        v123 = (&v195 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v124 + 16))(v123);
        v125 = *v123;
        *(&v238 + 1) = v91;
        v239 = &off_100809E48;
        *&v237 = v125;
        v235 = v221;
        v236 = &off_100810218;
        v126 = sub_100032DBC(&v234);
        sub_1003EADF0(v113, v126);
        v232 = v204;
        v233 = &off_100809510;
        v231[0] = v118;
        v127 = swift_allocObject();
        v128 = sub_10001F370(&v237, v91);
        v219 = &v195;
        __chkstk_darwin(v128);
        v130 = (&v195 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0));
        v199(v130);
        v131 = v235;
        v132 = sub_10001F370(&v234, v235);
        v215 = &v195;
        v133 = *(v131[-1].Description + 8);
        __chkstk_darwin(v132);
        v135 = &v195 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v136 + 16))(v135);
        v137 = v232;
        v138 = sub_10001F370(v231, v232);
        v213 = &v195;
        v139 = *(v137[-1].Description + 8);
        __chkstk_darwin(v138);
        v141 = v77;
        v142 = (&v195 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v143 + 16))(v142);
        v144 = *v130;
        v145 = *v142;
        v77 = v141;
        v229 = v91;
        v230 = &off_100809E48;
        *&v228 = v144;
        v226 = v221;
        v227 = &off_100810218;
        v146 = sub_100032DBC(&v225);
        sub_1003EAE54(v135, v146);
        v223 = v204;
        v224 = &off_100809510;
        *&v222 = v145;
        swift_defaultActor_initialize();
        sub_1003EAEB8(v291);
        *(v127 + 272) = 0u;
        *(v127 + 288) = 0u;
        *(v127 + 304) = 0;
        sub_10001F358(&v228, v127 + 112);
        v147 = v211;
        *(v127 + 152) = v205;
        *(v127 + 160) = v147;
        v148 = v210;
        *(v127 + 168) = &off_100809DF0;
        *(v127 + 176) = v148;
        *(v127 + 184) = &off_100809F18;
        sub_10001F358(&v225, v127 + 192);
        sub_10001F358(&v273, v127 + 232);
        sub_10001F358(&v222, v127 + 312);
        sub_10000BB78(v231);
        sub_10000BB78(&v234);
        sub_10000BB78(&v237);
        sub_10000BB78(&v251);
        *&v253 = &off_100810230;
        *(&v252 + 1) = v206;
        *&v251 = v127;
        if (v277)
        {
          sub_10000BE18(&v276, &qword_100843230, &qword_1006E0DC0);
        }
      }

      sub_10001F358(&v251, v242 + 8);
      *&v243 = v207;
      *(&v243 + 1) = &off_100811FB0;
      sub_100020260(&v282, v244);
      sub_10000BBC4(&v279, &v276, &qword_100843238, &qword_1006E0DC8);
      if (v277)
      {
        sub_10000BE18(&v279, &qword_100843238, &qword_1006E0DC8);
        sub_10000BE18(&v285, &qword_100843230, &qword_1006E0DC0);
        sub_10000BB78(&v282);
        sub_10000BB78(&v288);
        sub_10001F358(&v276, &v251);
      }

      else
      {
        sub_100020260(&v282, &v273);
        v149 = static UserDefaultsConfiguration.standard.getter();
        *(&v252 + 1) = &type metadata for WebPresentmentResponsePermissionsFilter;
        *&v253 = &off_100812070;
        *&v251 = swift_allocObject();
        sub_10046D410(&v273, v149, v251 + 16);
        sub_10000BE18(&v279, &qword_100843238, &qword_1006E0DC8);
        sub_10000BE18(&v285, &qword_100843230, &qword_1006E0DC0);
        sub_10000BB78(&v282);
        sub_10000BB78(&v288);
        if (v277)
        {
          sub_10000BE18(&v276, &qword_100843238, &qword_1006E0DC8);
        }
      }

      sub_10001F358(&v251, v245 + 8);
      v262 = v92;
      v259 = v245[0];
      v260 = v245[1];
      v261 = v245[2];
      v255 = v242[2];
      v256 = v243;
      v257 = v244[0];
      v258 = v244[1];
      v251 = v240;
      v252 = v241;
      v253 = v242[0];
      v254 = v242[1];
      sub_100020260(v217, &v288);
      v287 = 0;
      v285 = 0u;
      v286 = 0u;
      sub_1003EB13C(&v251, &v240);
      v284 = 0;
      v282 = 0u;
      v283 = 0u;
      sub_100007224(&qword_100843240, &qword_1006E0DD0);
      v150 = swift_allocObject();
      *(v150 + 56) = 0;
      sub_10000BBC4(&v282, &v279, &qword_100841378, &qword_1006E12F0);

      sub_10000BE18(&v282, &qword_100841378, &qword_1006E12F0);
      v151 = v280;
      *(v150 + 16) = v279;
      *(v150 + 32) = v151;
      *(v150 + 48) = v281;
      v152 = type metadata accessor for WebPresentmentSelectionBypasser();
      v153 = swift_allocObject();
      *(&v283 + 1) = type metadata accessor for AlertPresenter();
      v284 = &protocol witness table for AlertPresenter;
      sub_100032DBC(&v282);
      AlertPresenter.init()();
      if (qword_100832C78 != -1)
      {
        swift_once();
      }

      v217 = qword_100882378;
      v281 = &off_10080DC28;
      *(&v280 + 1) = v208;
      *&v279 = v77;
      v215 = v77;
      v277 = &type metadata for WebPresentmentWalletPassPresenter;
      v278 = &off_100812298;
      *&v276 = swift_allocObject();
      sub_1003EB13C(&v240, v276 + 16);
      v275 = &off_10080DD00;
      v274 = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
      *&v273 = v150;
      *(&v238 + 1) = v152;
      v239 = &off_100812108;
      *&v237 = v153;
      v291 = type metadata accessor for WebPresentmentManager();
      v154 = swift_allocObject();
      v155 = sub_10001F370(&v276, &type metadata for WebPresentmentWalletPassPresenter);
      v221 = &v195;
      __chkstk_darwin(v155);
      v157 = &v195 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v158 + 16))(v157);
      v159 = sub_10001F370(&v273, &type metadata for MobileDocumentProviderPresentmentSceneDecider);
      v220 = &v195;
      v160 = value witness table for Builtin.NativeObject[8];
      __chkstk_darwin(v159);
      v162 = (&v195 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v163 + 16))(v162);
      v164 = sub_10001F370(&v237, v152);
      v219 = &v195;
      v165 = *(*(v152 - 8) + 64);
      __chkstk_darwin(v164);
      v167 = (&v195 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v168 + 16))(v167);
      v169 = *v162;
      v170 = *v167;
      v235 = &type metadata for WebPresentmentWalletPassPresenter;
      v236 = &off_100812298;
      v171 = swift_allocObject();
      *&v234 = v171;
      v172 = *(v157 + 9);
      *(v171 + 144) = *(v157 + 8);
      *(v171 + 160) = v172;
      *(v171 + 176) = *(v157 + 10);
      *(v171 + 192) = *(v157 + 22);
      v173 = *(v157 + 5);
      *(v171 + 80) = *(v157 + 4);
      *(v171 + 96) = v173;
      v174 = *(v157 + 7);
      *(v171 + 112) = *(v157 + 6);
      *(v171 + 128) = v174;
      v175 = *(v157 + 1);
      *(v171 + 16) = *v157;
      *(v171 + 32) = v175;
      v176 = *(v157 + 3);
      *(v171 + 48) = *(v157 + 2);
      *(v171 + 64) = v176;
      v232 = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
      v233 = &off_10080DD00;
      v231[0] = v169;
      v229 = v152;
      v230 = &off_100812108;
      *&v228 = v170;
      sub_10000BBC4(&v285, &v222, &qword_100844988, &qword_1006E4998);
      if (v223)
      {
        sub_10001F358(&v222, &v225);

        v177 = v217;
      }

      else
      {
        sub_100020260(&v288, &v225);
        v178 = type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
        v179 = *(v178 + 48);
        v180 = *(v178 + 52);
        swift_allocObject();

        v177 = v217;

        v181 = sub_1004292D0(&v225);
        v226 = v178;
        v227 = &off_100810250;
        *&v225 = v181;
        if (v223)
        {
          sub_10000BE18(&v222, &qword_100844988, &qword_1006E4998);
        }
      }

      v182 = sub_10000BA08(v231, &type metadata for MobileDocumentProviderPresentmentSceneDecider);
      v49 = *v182;
      __chkstk_darwin(v182);
      os_unfair_lock_lock(v49 + 14);
      v183 = v216;
      sub_100407B68(&v49[4]);
      if (!v183)
      {
        os_unfair_lock_unlock(v49 + 14);

        sub_1003EB198(&v240);
        sub_10000BE18(&v285, &qword_100844988, &qword_1006E4998);
        sub_10001F358(&v288, (v154 + 2));
        sub_10001F358(&v225, (v154 + 7));
        sub_10001F358(&v279, (v154 + 12));
        sub_10001F358(&v234, (v154 + 17));
        sub_100020260(v231, (v154 + 22));
        sub_10001F358(&v228, (v154 + 27));
        sub_10001F358(&v282, (v154 + 32));
        v154[37] = sub_100446CC4;
        v154[38] = 0;
        v154[39] = v177;
        sub_10000BB78(v231);
        sub_10000BB78(&v237);
        sub_10000BB78(&v273);
        sub_10000BB78(&v276);
        v184 = v218;
        v218[3] = v291;
        v184[4] = &off_1008119E0;

        *v184 = v154;
        sub_1003EB198(&v251);
        sub_1003EB1EC(&v246);
        sub_1003EB240(&v263);
        sub_100108074(v269);
        return;
      }
    }

    os_unfair_lock_unlock(v49 + 14);
    __break(1u);
  }

  else if (v21 == enum case for WebPresentmentMobileDocumentSource.remote(_:))
  {
    sub_100020260(v217, &v251);
    *&v242[0] = 0;
    v240 = 0u;
    v241 = 0u;
    v265 = 0;
    v263 = 0u;
    v264 = 0u;
    v93 = type metadata accessor for AppleAccountDeviceMonitor();
    v246 = 0u;
    v247 = 0u;
    v248 = 0;
    swift_allocObject();
    sub_100501F7C();
    v95 = v94;
    v96 = type metadata accessor for BluetoothManager();
    v97 = swift_allocObject();
    v270 = v93;
    v98 = sub_100452308(&qword_100844980, type metadata accessor for AppleAccountDeviceMonitor);
    v271 = v98;
    v269[0] = v95;
    v289 = v96;
    v290 = &off_1008157E8;
    *&v288 = v97;
    v291 = type metadata accessor for WebPresentmentRemoteDispatchingManager();
    v99 = swift_allocObject();
    v100 = sub_10001F370(v269, v93);
    v221 = &v195;
    v101 = *(*(v93 - 8) + 64);
    __chkstk_darwin(v100);
    v103 = (&v195 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v104 + 16))(v103);
    v105 = v289;
    v106 = sub_10001F370(&v288, v289);
    v220 = &v195;
    v107 = *(v105[-1].Description + 8);
    __chkstk_darwin(v106);
    v109 = (&v195 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v110 + 16))(v109);
    v111 = *v103;
    v112 = *v109;
    *(&v286 + 1) = v93;
    v287 = v98;
    *&v285 = v111;
    *(&v283 + 1) = v96;
    v284 = &off_1008157E8;
    *&v282 = v112;
    sub_10000BBC4(&v240, &v276, &qword_100844988, &qword_1006E4998);
    if (v277)
    {
      sub_10001F358(&v276, &v279);
    }

    else
    {
      sub_100020260(&v251, &v279);
      v185 = type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
      v186 = *(v185 + 48);
      v187 = *(v185 + 52);
      swift_allocObject();

      v188 = sub_1004292D0(&v279);
      v281 = &off_100810250;
      *(&v280 + 1) = v185;
      *&v279 = v188;
      if (v277)
      {
        sub_10000BE18(&v276, &qword_100844988, &qword_1006E4998);
      }
    }

    sub_100020260(&v251, v99 + 16);
    sub_100020260(&v279, v99 + 56);
    sub_10000BBC4(&v263, &v273, &qword_100844990, &qword_1006E49A0);
    if (v274)
    {
      sub_10001F358(&v273, &v276);
    }

    else
    {
      sub_100020260(&v251, &v276);
      v189 = type metadata accessor for RemoteDocumentProviderRequestDispatcher();
      v190 = swift_allocObject();
      sub_10001F358(&v276, v190 + 16);
      v278 = &off_10080F2F8;
      v277 = v189;
      *&v276 = v190;
      if (v274)
      {
        sub_10000BE18(&v273, &qword_100844990, &qword_1006E49A0);
      }
    }

    sub_10001F358(&v276, v99 + 96);
    sub_100020260(&v285, v99 + 176);
    sub_10000BBC4(&v246, &v273, &qword_100844998, &qword_1006E49A8);
    if (v274)
    {

      sub_10000BE18(&v246, &qword_100844998, &qword_1006E49A8);
      sub_10000BE18(&v263, &qword_100844990, &qword_1006E49A0);
      sub_10000BE18(&v240, &qword_100844988, &qword_1006E4998);
      sub_10000BB78(&v251);
      sub_10000BB78(&v285);
      sub_10001F358(&v273, &v276);
    }

    else
    {
      sub_100020260(&v251, &v276);
      type metadata accessor for UserDefaultsConfiguration();
      v191 = static UserDefaultsConfiguration.standard.getter();
      v192 = type metadata accessor for WebPresentmentScannableCodeManager();
      v193 = swift_allocObject();
      swift_defaultActor_initialize();
      v193[21] = 0;
      v193[22] = 0;
      sub_10001F358(&v276, (v193 + 14));
      v193[19] = sub_10046EB20;
      v193[20] = 0;
      v193[23] = v191;
      v277 = v192;
      v278 = &off_100812080;

      *&v276 = v193;
      sub_10000BE18(&v246, &qword_100844998, &qword_1006E49A8);
      sub_10000BE18(&v263, &qword_100844990, &qword_1006E49A0);
      sub_10000BE18(&v240, &qword_100844988, &qword_1006E4998);
      sub_10000BB78(&v251);
      sub_10000BB78(&v285);
      if (v274)
      {
        sub_10000BE18(&v273, &qword_100844998, &qword_1006E49A8);
      }
    }

    sub_10000BB78(&v279);
    sub_10001F358(&v276, v99 + 136);
    sub_10001F358(&v282, v99 + 216);
    sub_10000BB78(&v288);
    sub_10000BB78(v269);
    v194 = v218;
    v218[3] = v291;
    v194[4] = &off_100811C38;
    *v194 = v99;
  }

  else
  {
    v291 = "s:bypassRecord:)";
    (v213[6].Description)(v214, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100452308(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_100452308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100452350()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 14);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100452398()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 8);
  v1 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1004523E0()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100452420()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  v1 = v0[24];

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_100452498(uint64_t a1)
{
  v3 = sub_100007224(&qword_10083C258, &qword_1006DA850);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v31 = v1;
  v39 = _swiftEmptyArrayStorage;
  sub_100173514(0, v7, 0);
  v8 = v39;
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = 0;
  v38 = *(a1 + 36);
  v32 = a1 + 72;
  v33 = v7;
  v34 = a1 + 64;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v38 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v37 = v13;
    v16 = (*(a1 + 48) + 16 * v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(a1 + 56) + 8 * v12);
    v20 = a1;
    v21 = *(v36 + 48);

    Locale.Region.init(_:)();
    *&v6[v21] = v19;
    v39 = v8;
    v23 = v8[2];
    v22 = v8[3];
    if (v23 >= v22 >> 1)
    {
      sub_100173514(v22 > 1, v23 + 1, 1);
      v8 = v39;
    }

    v8[2] = v23 + 1;
    result = sub_100453C74(v6, v8 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23);
    v14 = 1 << *(v20 + 32);
    if (v12 >= v14)
    {
      goto LABEL_24;
    }

    a1 = v20;
    v9 = v34;
    v24 = *(v34 + 8 * v15);
    if ((v24 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (v38 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v12 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_100316220(v12, v38, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_100316220(v12, v38, 0);
    }

LABEL_4:
    v13 = v37 + 1;
    v12 = v14;
    if (v37 + 1 == v33)
    {
      return v8;
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

void *sub_1004527AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100453210(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1004527D8(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5[6] = v2;
  sub_10001F370(v5, v5[3]);
  sub_100007224(&qword_1008449A8, &qword_1006E4AD8);
  sub_10045338C(&qword_1008449C0, sub_100453410);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_10000BB78(v5);
}

Swift::Int sub_1004528CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10015ADA8(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10045291C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10015ADA8(v3, v1);
  return Hasher._finalize()();
}

unint64_t sub_100452970()
{
  result = qword_1008449A0;
  if (!qword_1008449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449A0);
  }

  return result;
}

uint64_t sub_1004529C4(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v54 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
  v5 = *(*(v54 - 8) + 64);
  v6 = __chkstk_darwin(v54);
  v53 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = v46 - v8;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v59 = _swiftEmptyArrayStorage;
    sub_100173554(0, v10, 0);
    v57 = v59;
    v12 = a3 + 64;
    v13 = -1 << *(a3 + 32);
    v14 = _HashTable.startBucket.getter();
    v15 = 0;
    v16 = *(a3 + 36);
    v48 = a3 + 72;
    v49 = v10;
    v50 = v16;
    v51 = a3 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a3 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      if (v16 != *(a3 + 36))
      {
        goto LABEL_28;
      }

      v55 = v15;
      v19 = *(a3 + 48);
      v20 = type metadata accessor for Locale.Region();
      v21 = *(v20 - 8);
      v22 = v52;
      (*(v21 + 16))(v52, v19 + *(v21 + 72) * v14, v20);
      v23 = *(*(a3 + 56) + 8 * v14);
      v24 = v53;
      (*(v21 + 32))(v53, v22, v20);
      *(v24 + *(v54 + 48)) = v23;

      v25 = Locale.Region.identifier.getter();
      v56 = v26;

      sub_100453CE4(v24);
      v27 = v57;
      v59 = v57;
      v28 = a3;
      v30 = v57[2];
      v29 = v57[3];
      if (v30 >= v29 >> 1)
      {
        sub_100173554((v29 > 1), v30 + 1, 1);
        v27 = v59;
      }

      v27[2] = v30 + 1;
      v31 = &v27[3 * v30];
      v32 = v56;
      v31[4] = v25;
      v31[5] = v32;
      v31[6] = v23;
      v17 = 1 << *(v28 + 32);
      if (v14 >= v17)
      {
        goto LABEL_29;
      }

      v12 = v51;
      v33 = *(v51 + 8 * v18);
      if ((v33 & (1 << v14)) == 0)
      {
        goto LABEL_30;
      }

      a3 = v28;
      v57 = v27;
      LODWORD(v16) = v50;
      if (v50 != *(v28 + 36))
      {
        goto LABEL_31;
      }

      v34 = v33 & (-2 << (v14 & 0x3F));
      if (v34)
      {
        v17 = __clz(__rbit64(v34)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v18 << 6;
        v36 = v18 + 1;
        v37 = (v48 + 8 * v18);
        while (v36 < (v17 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_100316220(v14, v50, 0);
            v17 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        sub_100316220(v14, v50, 0);
      }

LABEL_4:
      v15 = v55 + 1;
      v14 = v17;
      if (v55 + 1 == v49)
      {
        v11 = v57;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (v11[2])
    {
      sub_100007224(&qword_100834970, &qword_1006DA7E0);
      v40 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v40 = &_swiftEmptyDictionarySingleton;
    }

    v59 = v40;
    v41 = v46[1];
    sub_100453D4C(v11, 1, &v59);
    if (!v41)
    {

      v42 = v59;
      v43 = v47;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v42;
      sub_10016D5CC(v43, 0x746C7561666564, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      sub_10001F370(v58, v58[3]);
      sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
      sub_100453FC4();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

      return sub_10000BB78(v58);
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100452EB8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      String.hash(into:)();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  sub_10015AF7C(v9, a2);
  return Hasher._finalize()();
}

uint64_t sub_100452F5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100453928(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_100452FAC(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  Hasher._combine(_:)(*(*v1 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      String.hash(into:)();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  sub_10015AF7C(a1, v3);
}

Swift::Int sub_100453040()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      String.hash(into:)();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  sub_10015AF7C(v8, v1);
  return Hasher._finalize()();
}

uint64_t sub_1004530DC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10014DEB0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_10014D57C(v2, v3);
}

uint64_t sub_100453138(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_1001705CC();
    *v4 = v10;
  }

  if (a2 < 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = (*(v10 + 48) + 16 * a2);
    v12 = *v11;
    v13 = v11[1];
    *a1 = *(*(v10 + 56) + 8 * a2);
    sub_10015D658(a2, v10);
    *v4 = v10;
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_100453210(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000BA08(v7, v7[3]);
    sub_100007224(&qword_1008449A8, &qword_1006E4AD8);
    sub_10045338C(&qword_1008449B0, sub_100453338);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v4 = v6;
    sub_10000BB78(v7);
  }

  sub_10000BB78(a1);
  return v4;
}

unint64_t sub_100453338()
{
  result = qword_1008449B8;
  if (!qword_1008449B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449B8);
  }

  return result;
}

uint64_t sub_10045338C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_1008449A8, &qword_1006E4AD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100453410()
{
  result = qword_1008449C8;
  if (!qword_1008449C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449C8);
  }

  return result;
}

unint64_t sub_100453478()
{
  result = qword_1008449D0;
  if (!qword_1008449D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449D0);
  }

  return result;
}

uint64_t sub_1004534CC(void (*a1)(char *, uint64_t, uint64_t), char a2, uint64_t *a3)
{
  v64 = a3;
  v6 = type metadata accessor for Locale.Region();
  v57 = *(v6 - 8);
  v7 = v57[8];
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_10083C258, &qword_1006DA850);
  v11 = *(*(v10 - 8) + 64);
  result = __chkstk_darwin(v10);
  v63 = &v55 - v14;
  v15 = *(a1 + 2);
  if (!v15)
  {
    return result;
  }

  v16 = *(result + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v55 = v17;
  v18 = v63;
  sub_100453C04(a1 + v17, v63);
  v19 = v57[4];
  v61 = (v57 + 4);
  v62 = v6;
  v19(v9, v18, v6);
  v59 = v16;
  v20 = *(v18 + v16);
  v21 = *v64;
  v23 = sub_10003ADF8(v9);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_23;
  }

  LOBYTE(v3) = v22;
  v27 = v21[3];
  v56 = v20;
  if (v27 >= v26)
  {
    v20 = v61;
    if ((a2 & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
LABEL_7:
      v32 = *v64;
      v58 = (v20 - 3);
      if (v3)
      {
        v3 = v62;
        (*(v20 - 3))(v9, v62);
        v33 = v32[7];
        v34 = *(v33 + 8 * v23);
        *(v33 + 8 * v23) = v56;

        v19 = (v15 - 1);
        if (v15 == 1)
        {
          return result;
        }
      }

      else
      {
        v32[(v23 >> 6) + 8] |= 1 << v23;
        v3 = v62;
        result = (v19)(v32[6] + v57[9] * v23, v9, v62);
        *(v32[7] + 8 * v23) = v56;
        v35 = v32[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_24;
        }

        v32[2] = v37;
        v19 = (v15 - 1);
        if (v15 == 1)
        {
          return result;
        }
      }

      v15 = a1 + v60 + v55;
      while (1)
      {
        v40 = v63;
        sub_100453C04(v15, v63);
        a1 = *v20;
        (*v20)(v9, v40, v3);
        v41 = *(v40 + v59);
        v42 = *v64;
        v23 = sub_10003ADF8(v9);
        v44 = v42[2];
        v45 = (v43 & 1) == 0;
        v46 = v44 + v45;
        if (__OFADD__(v44, v45))
        {
          break;
        }

        v47 = v43;
        if (v42[3] < v46)
        {
          v48 = v64;
          sub_10016B0F4(v46, 1);
          v49 = *v48;
          v50 = sub_10003ADF8(v9);
          if ((v47 & 1) != (v51 & 1))
          {
            goto LABEL_26;
          }

          v23 = v50;
        }

        v52 = *v64;
        if (v47)
        {
          v3 = v62;
          (*v58)(v9, v62);
          v38 = v52[7];
          v39 = *(v38 + 8 * v23);
          *(v38 + 8 * v23) = v41;

          v20 = v61;
        }

        else
        {
          v52[(v23 >> 6) + 8] |= 1 << v23;
          v20 = v61;
          v3 = v62;
          result = (a1)(v52[6] + v57[9] * v23, v9, v62);
          *(v52[7] + 8 * v23) = v41;
          v53 = v52[2];
          v36 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v36)
          {
            goto LABEL_24;
          }

          v52[2] = v54;
        }

        v15 += v60;
        v19 = (v19 - 1);
        if (!v19)
        {
          return result;
        }
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_1001721E8();
    }
  }

  v28 = v64;
  sub_10016B0F4(v26, a2 & 1);
  v29 = *v28;
  v30 = sub_10003ADF8(v9);
  if ((v3 & 1) == (v31 & 1))
  {
    v23 = v30;
    v20 = v61;
    goto LABEL_7;
  }

LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100453928(uint64_t *a1)
{
  v3 = a1[3];
  sub_10000BA08(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_7;
  }

  v3 = v12;
  sub_10000BA08(v11, v12);
  sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
  sub_100453B58();
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  if (!*(v10 + 16) || (v4 = sub_10003ADCC(0x746C7561666564, 0xE700000000000000), (v5 & 1) == 0))
  {

    type metadata accessor for DecodingError();
    swift_allocError();
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    swift_willThrow();
    sub_10000BB78(v11);
LABEL_7:
    sub_10000BB78(a1);
    return v3;
  }

  sub_100453138(&v9, v4, *(v10 + 36));

  v3 = v9;
  v6 = sub_100452498(v10);
  if (*(v6 + 16))
  {
    sub_100007224(&qword_10083C248, &qword_1006DA840);
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v9 = v7;
  sub_1004534CC(v6, 1, &v9);

  sub_10000BB78(v11);
  sub_10000BB78(a1);
  return v3;
}

unint64_t sub_100453B58()
{
  result = qword_1008449D8;
  if (!qword_1008449D8)
  {
    sub_10000B870(&qword_10083B1F8, &unk_1006E4BD0);
    sub_1000C3C40(&qword_100839860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449D8);
  }

  return result;
}

uint64_t sub_100453C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C258, &qword_1006DA850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100453C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C258, &qword_1006DA850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100453CE4(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100453D4C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_10003ADCC(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_100167CF4(v15, v5 & 1);
    v17 = *a3;
    result = sub_10003ADCC(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v24 = (v19[6] + 16 * result);
    *v24 = v8;
    v24[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v25 = v19[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v26;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  sub_1001705CC();
  result = v23;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  v21 = v19[7];
  v22 = *(v21 + 8 * v20);
  *(v21 + 8 * v20) = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v9 = *(v5 - 1);
      v6 = *v5;
      v30 = *a3;

      result = sub_10003ADCC(v7, v9);
      v32 = v30[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v31;
      if (v30[3] < v34)
      {
        sub_100167CF4(v34, 1);
        v35 = *a3;
        result = sub_10003ADCC(v7, v9);
        if ((v8 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v8)
      {
        v27 = result;

        v28 = v37[7];
        v29 = *(v28 + 8 * v27);
        *(v28 + 8 * v27) = v6;
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        v38 = (v37[6] + 16 * result);
        *v38 = v7;
        v38[1] = v9;
        *(v37[7] + 8 * result) = v6;
        v39 = v37[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v37[2] = v40;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_100453FC4()
{
  result = qword_1008449E0;
  if (!qword_1008449E0)
  {
    sub_10000B870(&qword_10083B1F8, &unk_1006E4BD0);
    sub_1000C3C40(&qword_100835690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449E0);
  }

  return result;
}

uint64_t sub_100454080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100027B9C;

  return (sub_1004549AC)(a1, a2, a3, a4);
}

uint64_t sub_10045414C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10045420C, 0, 0);
}

uint64_t sub_10045420C()
{
  v22 = v0;
  v1 = v0[6];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "WebPresentmentProviderOptInAlertPresenter user has opted in allowing %s to become an authorized document provider", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v13 = type metadata accessor for ExtensionPointManager();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[7] = ExtensionPointManager.init(extensionPointIdentifier:)();
  v16 = async function pointer to ExtensionPointManager.setEnablement(for:to:)[1];
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_1004543FC;
  v19 = v0[2];
  v18 = v0[3];

  return ExtensionPointManager.setEnablement(for:to:)(v19, v18, 1);
}

uint64_t sub_1004543FC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10045566C;
  }

  else
  {
    v3 = sub_100455668;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100454510(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1004545D0, 0, 0);
}

uint64_t sub_1004545D0()
{
  v22 = v0;
  v1 = v0[6];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "WebPresentmentProviderOptInAlertPresenter user has opted out of allowing %s to become an authorized document provider", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v13 = type metadata accessor for ExtensionPointManager();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[7] = ExtensionPointManager.init(extensionPointIdentifier:)();
  v16 = async function pointer to ExtensionPointManager.setEnablement(for:to:)[1];
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_1004547C0;
  v19 = v0[2];
  v18 = v0[3];

  return ExtensionPointManager.setEnablement(for:to:)(v19, v18, 0);
}

uint64_t sub_1004547C0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100454940;
  }

  else
  {
    v3 = sub_1004548D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004548D4()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100454940()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1004549AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for AlertPresenter();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for AlertPresentationOutcome();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v14 = type metadata accessor for AlertConfiguration();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100454B90, 0, 0);
}

uint64_t sub_100454B90()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[4];
  v4 = v0[5];
  static AlertConfiguration.webPresentmentProviderOptInAlertDisplayConfiguration(appName:)();
  AlertPresenter.init()();
  v5 = async function pointer to AlertPresenter.present(with:)[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_100454C48;
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[11];

  return AlertPresenter.present(with:)(v8, v7);
}

uint64_t sub_100454C48()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1004555A8;
  }

  else
  {
    v6 = sub_100454DB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100454DB8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  (*(v3 + 16))(v1, v0[15], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for AlertPresentationOutcome.defaultButtonTapped(_:))
  {
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1004550E4;
    v7 = v0[2];
    v6 = v0[3];

    return sub_10045414C(v7, v6);
  }

  else if (v4 == enum case for AlertPresentationOutcome.alternateButtonTapped(_:))
  {
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_1004553B4;
    v11 = v0[2];
    v10 = v0[3];

    return sub_100454510(v11, v10);
  }

  else
  {
    v12 = v0[17];
    v13 = v0[16];
    v23 = v13;
    v24 = v0[18];
    v22 = v0[15];
    v14 = v0[12];
    v15 = v0[13];
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = *(v15 + 8);
    v16(v22, v14);
    (*(v12 + 8))(v24, v23);
    v17 = v0[18];
    v18 = v0[15];
    v19 = v0[11];
    v20 = v0[8];
    v16(v0[14], v0[12]);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1004550E4()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1004552D4;
  }

  else
  {
    v3 = sub_1004551F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004551F8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  (*(v0[13] + 8))(v0[15], v0[12]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004552D4()
{
  v1 = v0[17];
  (*(v0[13] + 8))(v0[15], v0[12]);
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  (*(v1 + 8))(v0[18], v0[16]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004553B4()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1004554C8;
  }

  else
  {
    v3 = sub_100455664;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004554C8()
{
  v1 = v0[17];
  (*(v0[13] + 8))(v0[15], v0[12]);
  v2 = v0[24];
  v3 = v0[15];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  (*(v1 + 8))(v0[18], v0[16]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004555A8()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];
  v5 = v0[8];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100455670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  sub_10000BBC4(a1, v22 - v10, &unk_100845860, &unk_1006BF9D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000BE18(v11, &unk_100845860, &unk_1006BF9D0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_100455888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v35 = a1;
  v5 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v6 = *(v5 - 8);
  v39 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v33 = &v32 - v7;
  v9 = type metadata accessor for PartialWebPresentmentRequest();
  v32 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v32 - v15;
  v37 = &v32 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, a3, v9);
  v36 = *(v6 + 16);
  v18 = v5;
  v36(v8, a1, v5);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = *(v6 + 80);
  v21 = (v11 + v20 + v19) & ~v20;
  v34 = v20 | 7;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v38;
  (*(v10 + 32))(&v22[v19], v12, v32);
  v23 = *(v6 + 32);
  v24 = &v22[v21];
  v25 = v33;
  v23(v24, v33, v18);

  v26 = sub_1003E653C(0, 0, v37, &unk_1006E4D18, v22);
  v27 = v25;
  v36(v25, v35, v18);
  v28 = (v20 + 16) & ~v20;
  v29 = (v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v23((v30 + v28), v27, v18);
  *(v30 + v29) = v26;
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t sub_100455C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for WebPresentmentRequestState();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_100007224(&qword_100844960, &qword_1006E48F8);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v6[13] = v13;
  v14 = *(v13 - 8);
  v6[14] = v14;
  v6[15] = *(v14 + 64);
  v6[16] = swift_task_alloc();
  v15 = type metadata accessor for WebPresentmentResponse();
  v6[17] = v15;
  v16 = *(v15 - 8);
  v6[18] = v16;
  v17 = *(v16 + 64) + 15;
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100455DFC, 0, 0);
}

uint64_t sub_100455DFC()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v3 + 16))(v1, v0[6], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1004473BC;
  v7 = v0[19];
  v9 = v0[4];
  v8 = v0[5];

  return sub_100455F28(v7, v8, &unk_1006E4D28, v5);
}

uint64_t sub_100455F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[11] = v8;
  *v8 = v5;
  v8[1] = sub_100456008;

  return sub_1004567E0();
}

uint64_t sub_100456008(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v8 = *(v4 + 72);
    v7 = *(v4 + 80);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 112) = a1;

    return _swift_task_switch(sub_100456164, 0, 0);
  }
}

uint64_t sub_100456164()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  v6 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_100456258;
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  return withDiscardingTaskGroup<A>(returning:isolation:body:)(v8);
}

uint64_t sub_100456258()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100456370, 0, 0);
}

uint64_t sub_100456370()
{
  v1 = v0[8];
  sub_10000BBC4(v0[10], v0[9], &qword_100843BC8, &qword_1006E21F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[9];
  v4 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v0[2] = *v3;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    swift_willThrowTypedImpl();
    sub_10000BE18(v4, &qword_100843BC8, &qword_1006E21F0);
    v6 = v0[9];
    v5 = v0[10];
  }

  else
  {
    v8 = v0[3];
    sub_10000BE18(v0[10], &qword_100843BC8, &qword_1006E21F0);
    v9 = type metadata accessor for WebPresentmentResponse();
    (*(*(v9 - 8) + 32))(v8, v3, v9);
  }

  v7 = v0[1];

  return v7();
}

void sub_1004564D8(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100844958, &qword_1006E48F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  (*(v8 + 16))(v14 - v10, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for AsyncThrowingStream.Continuation.Termination.finished<A, B>(_:) || v12 != enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:))
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.cancelled(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    v13 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v14[1] = v13;
    sub_100007224(&qword_100844950, &unk_1006E48D0);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    Task.cancel()();
  }
}

uint64_t sub_1004567E0()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100456914, 0, 0);
}

uint64_t sub_100456914()
{
  v1 = sub_10000BA08((*(v0 + 40) + 176), *(*(v0 + 40) + 200));
  *(v0 + 112) = v1;
  v2 = *v1;

  return _swift_task_switch(sub_100456988, v2, 0);
}

uint64_t sub_100456988()
{
  v1 = **(v0 + 112);
  *(v0 + 120) = sub_100502254();
  *(v0 + 128) = 0;

  return _swift_task_switch(sub_100456A18, 0, 0);
}

uint64_t sub_100456A18()
{
  v1 = 0;
  result = v0[15];
  v3 = -1;
  v4 = -1 << *(result + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(result + 56);
  while (v5)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v8 = *(result + 48) + 104 * (v7 | (v6 << 6));
    v9 = *(v8 + 16);
    v10 = *(v8 + 96);
    if (v9 == 2 && v10 >= 26)
    {

      v13 = v0[12];
      v12 = v0[13];
      v15 = v0[8];
      v14 = v0[9];

      v16 = v0[1];

      return v16(0);
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return result;
    }

    if (v6 >= ((63 - v4) >> 6))
    {
      break;
    }

    v5 = *(result + 56 + 8 * v6);
    ++v1;
    if (v5)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_100456E64;

  return sub_100504E08();
}

uint64_t sub_100456BC8()
{
  v0[2] = v0[16];
  v1 = v0[13];
  v2 = v0[10];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  (*(v5 + 32))(v3, v0[13], v4);
  DIPError.code.getter();
  (*(v9 + 104))(v7, enum case for DIPError.Code.invalidAppleAccount(_:), v8);
  sub_100044DA8(&qword_10083B4D0, &type metadata accessor for DIPError.Code);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);
  (*(v5 + 8))(v3, v4);
  if (v0[3] == v0[4])
  {
    v11 = v0[16];

    v12 = v0[2];

    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    v13[1] = sub_100456E64;

    return sub_100504E08();
  }

  else
  {
LABEL_6:
    v15 = v0[12];
    v16 = v0[13];
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[2];

    v20 = v0[1];
    v21 = v0[16];

    return v20();
  }
}

uint64_t sub_100456E64(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[9];
  v9 = v3[8];

  v10 = *(v5 + 8);
  if (a1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  return v10(v11);
}

uint64_t sub_100456FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 224) = a6;
  *(v7 + 232) = a7;
  *(v7 + 576) = a5;
  *(v7 + 208) = a3;
  *(v7 + 216) = a4;
  *(v7 + 192) = a1;
  *(v7 + 200) = a2;
  v8 = type metadata accessor for URL();
  *(v7 + 240) = v8;
  v9 = *(v8 - 8);
  *(v7 + 248) = v9;
  *(v7 + 256) = *(v9 + 64);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  v10 = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition();
  *(v7 + 280) = v10;
  v11 = *(v10 - 8);
  *(v7 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  *(v7 + 304) = v13;
  v14 = *(v13 - 8);
  *(v7 + 312) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v16 = *(*(sub_100007224(&qword_100844AB0, &qword_1006E4D60) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  v17 = sub_100007224(&qword_100844AB8, &qword_1006E4D68);
  *(v7 + 336) = v17;
  v18 = *(v17 - 8);
  *(v7 + 344) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v20 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  *(v7 + 360) = v20;
  v21 = *(v20 - 8);
  *(v7 + 368) = v21;
  *(v7 + 376) = *(v21 + 64);
  *(v7 + 384) = swift_task_alloc();
  v22 = type metadata accessor for PartialWebPresentmentRequest();
  *(v7 + 392) = v22;
  v23 = *(v22 - 8);
  *(v7 + 400) = v23;
  *(v7 + 408) = *(v23 + 64);
  *(v7 + 416) = swift_task_alloc();
  *(v7 + 424) = swift_task_alloc();
  v24 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  v25 = sub_100007224(&qword_100844AC8, &qword_1006E4D78);
  *(v7 + 488) = v25;
  v26 = *(v25 - 8);
  *(v7 + 496) = v26;
  v27 = *(v26 + 64) + 15;
  *(v7 + 504) = swift_task_alloc();
  v28 = sub_100007224(&qword_100844AD0, &qword_1006E4D80);
  *(v7 + 512) = v28;
  v29 = *(v28 - 8);
  *(v7 + 520) = v29;
  *(v7 + 528) = *(v29 + 64);
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 560) = swift_task_alloc();

  return _swift_task_switch(sub_100457480, 0, 0);
}

uint64_t sub_100457480()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);
  v6 = *(v0 + 280);
  v7 = *(v0 + 576);
  v8 = *(*(v0 + 512) + 48);
  (*(v4 + 104))(v2, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v4 + 8))(v2, v3);
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  v83 = *(v0 + 480);
  if (v7)
  {
    v11 = v8;
    if (v7 == 1)
    {
      v12 = *(v0 + 424);
      v14 = *(v0 + 400);
      v13 = *(v0 + 408);
      v15 = *(v0 + 384);
      v16 = *(v0 + 392);
      v17 = *(v0 + 368);
      v74 = v15;
      v18 = *(v0 + 360);
      v78 = *(v0 + 208);
      v82 = *(v0 + 200);
      (*(v14 + 16))(v12, *(v0 + 216), v16);
      (*(v17 + 16))(v15, v1 + v11, v18);
      v19 = (*(v14 + 80) + 40) & ~*(v14 + 80);
      v20 = (v13 + *(v17 + 80) + v19) & ~*(v17 + 80);
      v21 = swift_allocObject();
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 4) = v78;
      (*(v14 + 32))(&v21[v19], v12, v16);
      (*(v17 + 32))(&v21[v20], v74, v18);

      v22 = &unk_1006E4E08;
    }

    else
    {
      v40 = *(v0 + 376);
      v41 = *(v0 + 360);
      v42 = *(v0 + 368);
      v63 = *(v0 + 384);
      v66 = *(v0 + 232);
      v59 = v41;
      v61 = *(v0 + 224);
      v43 = *(v0 + 208);
      v68 = *(v0 + 200);
      v73 = *(v42 + 16);
      v77 = v8;
      v73();
      v44 = (*(v42 + 80) + 40) & ~*(v42 + 80);
      v81 = v10;
      v45 = (v44 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      *(v46 + 2) = 0;
      *(v46 + 3) = 0;
      *(v46 + 4) = v43;
      v47 = *(v42 + 32);
      v47(&v46[v44], v63, v59);
      v48 = &v46[v45];
      *v48 = v61;
      *(v48 + 1) = v66;

      sub_100455670(v83, &unk_1006E4D90, v46);
      sub_10000BE18(v83, &unk_100845860, &unk_1006BF9D0);
      v81(v83, 1, 1, v9);
      (v73)(v63, v1 + v77, v59);
      v21 = swift_allocObject();
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 4) = v43;
      v47(&v21[v44], v63, v59);

      v22 = &unk_1006E4DA0;
    }

    v39 = v83;
    v38 = v21;
  }

  else
  {
    v64 = *(v0 + 424);
    v23 = *(v0 + 400);
    v79 = *(v0 + 408);
    v24 = *(v0 + 384);
    v60 = *(v0 + 392);
    v57 = v24;
    v72 = *(v0 + 376);
    v26 = *(v0 + 360);
    v25 = *(v0 + 368);
    v58 = v26;
    v69 = *(v0 + 224);
    v70 = *(v0 + 232);
    v75 = v9;
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v71 = *(v0 + 200);
    (*(v23 + 16))();
    v67 = *(v25 + 16);
    v67(v24, v1 + v8, v26);
    v76 = v8;
    v29 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v30 = *(v25 + 80);
    v31 = v79 + v30 + v29;
    v80 = v10;
    v32 = v31 & ~v30;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v62 = v28;
    *(v33 + 4) = v28;
    (*(v23 + 32))(&v33[v29], v64, v60);
    v65 = *(v25 + 32);
    v65(&v33[v32], v57, v58);

    v34 = sub_1003E653C(0, 0, v83, &unk_1006E4E18, v33);
    v80(v83, 1, 1, v75);
    v67(v57, v1 + v76, v58);
    v35 = (v30 + 48) & ~v30;
    v36 = swift_allocObject();
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    *(v36 + 4) = v62;
    *(v36 + 5) = v34;
    v65(&v36[v35], v57, v58);
    v37 = &v36[(v72 + v35 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v37 = v69;
    *(v37 + 1) = v70;

    sub_100455670(v83, &unk_1006E4E28, v36);
    sub_10000BE18(v83, &unk_100845860, &unk_1006BF9D0);
    v80(v83, 1, 1, v75);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v34;
    v22 = &unk_1006E4E38;
    v39 = v83;
  }

  sub_100455670(v39, v22, v38);
  v49 = *(v0 + 560);
  v50 = *(v0 + 352);
  sub_10000BE18(*(v0 + 480), &unk_100845860, &unk_1006BF9D0);
  sub_100007224(&qword_100844AD8, &qword_1006E4DA8);
  AsyncThrowingStream.makeAsyncIterator()();
  v51 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v52 = swift_task_alloc();
  *(v0 + 568) = v52;
  *v52 = v0;
  v52[1] = sub_100457BC4;
  v53 = *(v0 + 352);
  v54 = *(v0 + 328);
  v55 = *(v0 + 336);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v54, 0, 0, v55, v0 + 184);
}

uint64_t sub_100457BC4()
{
  v2 = *(*v1 + 568);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1004589D8;
  }

  else
  {
    v3 = sub_100457CD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100457CD4()
{
  v1 = *(v0 + 328);
  if ((*(*(v0 + 288) + 48))(v1, 1, *(v0 + 280)) == 1)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 304);
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
    (*(v3 + 104))(v2, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    v5 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    **(v0 + 192) = v5;
    sub_100007224(&qword_100843BC8, &qword_1006E21F0);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    v6 = *(v0 + 560);
    v7 = *(v0 + 552);
    v8 = *(v0 + 544);
    v9 = *(v0 + 536);
    v10 = *(v0 + 504);
    v11 = *(v0 + 472);
    v12 = *(v0 + 480);
    v14 = *(v0 + 456);
    v13 = *(v0 + 464);
    v95 = *(v0 + 448);
    v96 = *(v0 + 440);
    v98 = *(v0 + 432);
    v100 = *(v0 + 424);
    v102 = *(v0 + 416);
    v104 = *(v0 + 384);
    v107 = *(v0 + 352);
    v110 = *(v0 + 328);
    v113 = *(v0 + 320);
    v116 = *(v0 + 296);
    v119 = *(v0 + 272);
    v122 = *(v0 + 264);
    v15 = **(v0 + 200);
    DiscardingTaskGroup.cancelAll()();
    sub_10000BE18(v6, &qword_100844AD0, &qword_1006E4D80);

    v16 = *(v0 + 8);

    return v16();
  }

  sub_100461A88(v1, *(v0 + 296), type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v54 = *(v0 + 296);
      v55 = *(v0 + 192);
      (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
      v56 = type metadata accessor for WebPresentmentResponse();
      (*(*(v56 - 8) + 32))(v55, v54, v56);
      sub_100007224(&qword_100843BC8, &qword_1006E21F0);
      goto LABEL_3;
    }

    v19 = *(v0 + 560);
    v20 = *(v0 + 536);
    v94 = v20;
    v99 = *(v0 + 520);
    v21 = *(v0 + 440);
    v105 = *(v0 + 528);
    v123 = *(v0 + 432);
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = *(v0 + 248);
    v97 = *(v0 + 256);
    v25 = *(v0 + 240);
    v120 = *(v0 + 232);
    v117 = *(v0 + 224);
    v114 = *(v0 + 576);
    v108 = *(v24 + 32);
    v111 = *(v0 + 208);
    v108(v22, *(v0 + 296), v25);
    v26 = type metadata accessor for TaskPriority();
    v101 = *(v26 - 8);
    (*(v101 + 56))(v21, 1, 1, v26);
    (*(v24 + 16))(v23, v22, v25);
    sub_10000BBC4(v19, v20, &qword_100844AD0, &qword_1006E4D80);
    v27 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v28 = (v97 + *(v99 + 80) + v27) & ~*(v99 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = (v29 + 16);
    *(v29 + 24) = 0;
    *(v29 + 32) = v114;
    *(v29 + 40) = v111;
    v108(v29 + v27, v23, v25);
    sub_10045E3CC(v94, v29 + v28);
    v31 = (v29 + ((v105 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = v117;
    v31[1] = v120;
    sub_10000BBC4(v21, v123, &unk_100845860, &unk_1006BF9D0);
    LODWORD(v28) = (*(v101 + 48))(v123, 1, v26);

    v32 = *(v0 + 432);
    if (v28 == 1)
    {
      sub_10000BE18(*(v0 + 432), &unk_100845860, &unk_1006BF9D0);
      if (*v30)
      {
LABEL_10:
        v33 = *(v29 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = dispatch thunk of Actor.unownedExecutor.getter();
        v36 = v35;
        swift_unknownObjectRelease();
LABEL_21:
        v75 = **(v0 + 200);
        v76 = swift_allocObject();
        *(v76 + 16) = &unk_1006E4DB8;
        *(v76 + 24) = v29;

        if (v36 | v34)
        {
          v77 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v34;
          *(v0 + 40) = v36;
        }

        else
        {
          v77 = 0;
        }

        v84 = *(v0 + 440);
        v85 = *(v0 + 272);
        v86 = *(v0 + 240);
        v87 = *(v0 + 248);
        *(v0 + 112) = 1;
        *(v0 + 120) = v77;
        *(v0 + 128) = v75;
        swift_task_create();

        sub_10000BE18(v84, &unk_100845860, &unk_1006BF9D0);
        (*(v87 + 8))(v85, v86);
        goto LABEL_38;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v101 + 8))(v32, v26);
      if (*v30)
      {
        goto LABEL_10;
      }
    }

    v34 = 0;
    v36 = 0;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v57 = *(v0 + 560);
    v58 = *(v0 + 552);
    v103 = v58;
    v118 = *(v0 + 528);
    v112 = *(v0 + 520);
    v59 = *(v0 + 472);
    v121 = v59;
    v124 = *(v0 + 464);
    v60 = *(v0 + 416);
    v106 = v60;
    v109 = *(v0 + 408);
    v62 = *(v0 + 392);
    v61 = *(v0 + 400);
    v63 = *(v0 + 216);
    v115 = *(v0 + 208);
    v64 = type metadata accessor for TaskPriority();
    v65 = *(v64 - 8);
    (*(v65 + 56))(v59, 1, 1, v64);
    (*(v61 + 16))(v60, v63, v62);
    sub_10000BBC4(v57, v58, &qword_100844AD0, &qword_1006E4D80);
    v66 = (*(v61 + 80) + 40) & ~*(v61 + 80);
    v67 = (v109 + *(v112 + 80) + v66) & ~*(v112 + 80);
    v68 = swift_allocObject();
    v68[2] = 0;
    v69 = v68 + 2;
    v68[3] = 0;
    v68[4] = v115;
    (*(v61 + 32))(v68 + v66, v106, v62);
    sub_10045E3CC(v103, v68 + v67);
    sub_10000BBC4(v121, v124, &unk_100845860, &unk_1006BF9D0);
    LODWORD(v61) = (*(v65 + 48))(v124, 1, v64);

    v70 = *(v0 + 464);
    if (v61 == 1)
    {
      sub_10000BE18(*(v0 + 464), &unk_100845860, &unk_1006BF9D0);
      if (*v69)
      {
LABEL_18:
        v71 = v68[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v72 = dispatch thunk of Actor.unownedExecutor.getter();
        v74 = v73;
        swift_unknownObjectRelease();
LABEL_29:
        v81 = **(v0 + 200);
        v82 = swift_allocObject();
        *(v82 + 16) = &unk_1006E4DF0;
        *(v82 + 24) = v68;

        if (v74 | v72)
        {
          v83 = v0 + 80;
          *(v0 + 80) = 0;
          *(v0 + 88) = 0;
          *(v0 + 96) = v72;
          *(v0 + 104) = v74;
        }

        else
        {
          v83 = 0;
        }

        v88 = *(v0 + 472);
        *(v0 + 160) = 1;
        *(v0 + 168) = v83;
        *(v0 + 176) = v81;
        goto LABEL_37;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v65 + 8))(v70, v64);
      if (*v69)
      {
        goto LABEL_18;
      }
    }

    v72 = 0;
    v74 = 0;
    goto LABEL_29;
  }

  v37 = *(v0 + 560);
  v38 = *(v0 + 544);
  v39 = *(v0 + 528);
  v40 = *(v0 + 520);
  v41 = *(v0 + 448);
  v42 = *(v0 + 456);
  v43 = *(v0 + 208);
  v44 = type metadata accessor for TaskPriority();
  v45 = *(v44 - 8);
  (*(v45 + 56))(v42, 1, 1, v44);
  sub_10000BBC4(v37, v38, &qword_100844AD0, &qword_1006E4D80);
  v46 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v47 = swift_allocObject();
  v47[2] = 0;
  v48 = v47 + 2;
  v47[3] = 0;
  v47[4] = v43;
  sub_10045E3CC(v38, v47 + v46);
  sub_10000BBC4(v42, v41, &unk_100845860, &unk_1006BF9D0);
  LODWORD(v41) = (*(v45 + 48))(v41, 1, v44);

  v49 = *(v0 + 448);
  if (v41 != 1)
  {
    TaskPriority.rawValue.getter();
    (*(v45 + 8))(v49, v44);
    if (*v48)
    {
      goto LABEL_14;
    }

LABEL_24:
    v51 = 0;
    v53 = 0;
    goto LABEL_25;
  }

  sub_10000BE18(*(v0 + 448), &unk_100845860, &unk_1006BF9D0);
  if (!*v48)
  {
    goto LABEL_24;
  }

LABEL_14:
  v50 = v47[3];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v51 = dispatch thunk of Actor.unownedExecutor.getter();
  v53 = v52;
  swift_unknownObjectRelease();
LABEL_25:
  v78 = **(v0 + 200);
  v79 = swift_allocObject();
  *(v79 + 16) = &unk_1006E4DD8;
  *(v79 + 24) = v47;

  if (v53 | v51)
  {
    v80 = v0 + 48;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = v51;
    *(v0 + 72) = v53;
  }

  else
  {
    v80 = 0;
  }

  v88 = *(v0 + 456);
  *(v0 + 136) = 1;
  *(v0 + 144) = v80;
  *(v0 + 152) = v78;
LABEL_37:
  swift_task_create();

  sub_10000BE18(v88, &unk_100845860, &unk_1006BF9D0);
LABEL_38:
  v89 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v90 = swift_task_alloc();
  *(v0 + 568) = v90;
  *v90 = v0;
  v90[1] = sub_100457BC4;
  v91 = *(v0 + 352);
  v92 = *(v0 + 328);
  v93 = *(v0 + 336);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v92, 0, 0, v93, v0 + 184);
}

uint64_t sub_1004589D8()
{
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  **(v0 + 192) = *(v0 + 184);
  sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 504);
  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  v13 = *(v0 + 448);
  v14 = *(v0 + 440);
  v15 = *(v0 + 432);
  v16 = *(v0 + 424);
  v17 = *(v0 + 416);
  v18 = *(v0 + 384);
  v19 = *(v0 + 352);
  v20 = *(v0 + 328);
  v21 = *(v0 + 320);
  v22 = *(v0 + 296);
  v23 = *(v0 + 272);
  v24 = *(v0 + 264);
  v10 = **(v0 + 200);
  DiscardingTaskGroup.cancelAll()();
  sub_10000BE18(v1, &qword_100844AD0, &qword_1006E4D80);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100458BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v8 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) + 48);
  *(v5 + 48) = v8;
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_100458C84;

  return sub_100458E50(a4, a5 + v8);
}

uint64_t sub_100458C84()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100458DB8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_100458DB8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 40);
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100458E50(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for WebPresentmentResponse();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v3[14] = *(v11 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v12 = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition();
  v3[19] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v14 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v3[21] = v14;
  v15 = *(v14 - 8);
  v3[22] = v15;
  v16 = *(v15 + 64) + 15;
  v3[23] = swift_task_alloc();
  v17 = type metadata accessor for URL();
  v3[24] = v17;
  v18 = *(v17 - 8);
  v3[25] = v18;
  v19 = *(v18 + 64) + 15;
  v3[26] = swift_task_alloc();
  v20 = type metadata accessor for WebPresentmentScannableCodeState();
  v3[27] = v20;
  v21 = *(v20 - 8);
  v3[28] = v21;
  v22 = *(v21 + 64) + 15;
  v3[29] = swift_task_alloc();
  v23 = *(*(sub_100007224(&qword_100844B10, &qword_1006E4E98) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v24 = sub_100007224(&qword_100844B18, &qword_1006E4EA0);
  v3[31] = v24;
  v25 = *(v24 - 8);
  v3[32] = v25;
  v26 = *(v25 + 64) + 15;
  v3[33] = swift_task_alloc();
  v27 = sub_100007224(&qword_100844B20, &qword_1006E4EA8);
  v3[34] = v27;
  v28 = *(v27 - 8);
  v3[35] = v28;
  v29 = *(v28 + 64) + 15;
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_100459250, 0, 0);
}

uint64_t sub_100459250()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = v5[20];
  v8 = v5[21];
  sub_10000BA08(v5 + 17, v7);
  (*(v8 + 8))(v6, v7, v8);
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  *(v0 + 368) = enum case for MobileDocumentProviderAuxiliaryView.waitingForResponse(_:);
  *(v0 + 372) = enum case for MobileDocumentProviderAuxiliaryView.connecting(_:);
  v9 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = sub_1004593AC;
  v11 = *(v0 + 288);
  v12 = *(v0 + 272);
  v13 = *(v0 + 240);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v13, 0, 0, v12, v0 + 16);
}

uint64_t sub_1004593AC()
{
  v2 = *(*v1 + 296);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10045A37C;
  }

  else
  {
    v3 = sub_1004594BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004594BC()
{
  v1 = *(v0 + 240);
  if ((*(*(v0 + 224) + 48))(v1, 1, *(v0 + 216)) == 1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v3 + 104))(v2, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v5 = *(v0 + 288);
    v6 = *(v0 + 264);
    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 208);
    v10 = *(v0 + 184);
    v11 = *(v0 + 160);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);
    v53 = *(v0 + 120);
    v54 = *(v0 + 88);
    v55 = *(v0 + 64);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    sub_100461A88(v1, *(v0 + 232), type metadata accessor for WebPresentmentScannableCodeState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v27 = *(v0 + 372);
        v28 = *(v0 + 144);
        v29 = *(v0 + 96);
        v30 = *(v0 + 104);
        v31 = sub_10000BA08((*(v0 + 40) + 56), *(*(v0 + 40) + 80));
        (*(v30 + 104))(v28, v27, v29);
        v32 = *v31;
        *(v0 + 304) = *v31;
        v33 = sub_100459A48;
      }

      else
      {
        v48 = *(v0 + 368);
        v49 = *(v0 + 128);
        v50 = *(v0 + 96);
        v51 = *(v0 + 104);
        v52 = sub_10000BA08((*(v0 + 40) + 56), *(*(v0 + 40) + 80));
        (*(v51 + 104))(v49, v48, v50);
        v32 = *v52;
        *(v0 + 336) = *v52;
        v33 = sub_100459E8C;
      }

      return _swift_task_switch(v33, v32, 0);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v35 = *(v0 + 176);
        v34 = *(v0 + 184);
        v37 = *(v0 + 160);
        v36 = *(v0 + 168);
        v38 = *(v0 + 152);
        v40 = *(v0 + 80);
        v39 = *(v0 + 88);
        v41 = *(v0 + 72);
        v42 = *(v0 + 32);
        (*(v40 + 32))(v39, *(v0 + 232), v41);
        (*(v40 + 16))(v37, v39, v41);
        swift_storeEnumTagMultiPayload();
        sub_100007224(&qword_100844AC0, &qword_1006E4D70);
        AsyncThrowingStream.Continuation.yield(_:)();
        (*(v35 + 8))(v34, v36);
        (*(v40 + 8))(v39, v41);
      }

      else
      {
        v19 = *(v0 + 200);
        v18 = *(v0 + 208);
        v21 = *(v0 + 184);
        v20 = *(v0 + 192);
        v22 = *(v0 + 168);
        v23 = *(v0 + 176);
        v24 = *(v0 + 152);
        v25 = *(v0 + 160);
        v26 = *(v0 + 32);
        (*(v19 + 32))(v18, *(v0 + 232), v20);
        (*(v19 + 16))(v25, v18, v20);
        swift_storeEnumTagMultiPayload();
        sub_100007224(&qword_100844AC0, &qword_1006E4D70);
        AsyncThrowingStream.Continuation.yield(_:)();
        (*(v23 + 8))(v21, v22);
        (*(v19 + 8))(v18, v20);
      }

      v43 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v44 = swift_task_alloc();
      *(v0 + 296) = v44;
      *v44 = v0;
      v44[1] = sub_1004593AC;
      v45 = *(v0 + 288);
      v46 = *(v0 + 272);
      v47 = *(v0 + 240);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v47, 0, 0, v46, v0 + 16);
    }
  }
}